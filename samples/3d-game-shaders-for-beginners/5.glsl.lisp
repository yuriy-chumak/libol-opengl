#!/usr/bin/env ol

; initialize OpenGL
(import (lib gl-2))
(gl:set-window-title "5.glsl.lisp")

; gl global init
(glShadeModel GL_SMOOTH)
(glEnable GL_DEPTH_TEST)

(glEnable GL_CULL_FACE)
(glCullFace GL_BACK)

; scene
(import (scene))

; load (and create if no one) a models cache
(define models (prepare-models "cache.bin"))

; load a scene
(import (file json))
(define scene (read-json-file "scene.json"))

; scene lights
(define Lights (vector->list (scene 'Lights)))
(print "Lights: " Lights)

; scene objects
(define Objects (scene 'Objects))
(print "Objects: " Objects)

; We are moving away from the fixed OpenGL pipeline, in which
; Model and View matrices are combined into one.
; As a Model matrix we will use gl_TextureMatrix[7].

; simple glsl shader program (greenify)
(define greenify (gl:create-program
"#version 120 // OpenGL 2.1
   #define gl_ModelMatrix gl_TextureMatrix[7] //project specific model matrix
   #define gl_WorldViewProjectionMatrix gl_ModelViewProjectionMatrix

   void main() {
      gl_Position = gl_WorldViewProjectionMatrix * gl_ModelMatrix * gl_Vertex;
   }"
"#version 120 // OpenGL 2.1
   void main() {
      gl_FragColor = vec4(0, 1, 0, 1);
   }"))

; draw
(gl:set-renderer (lambda ()
   (glClearColor 0.1 0.1 0.1 1)
   (glClear (vm:ior GL_COLOR_BUFFER_BIT GL_DEPTH_BUFFER_BIT))

   (glUseProgram greenify)

   ; camera setup
   (begin
      (define Camera (ref (scene 'Cameras) 1))

      (glMatrixMode GL_PROJECTION)
      (glLoadIdentity)
      (gluPerspective
         (Camera 'angle)
         (/ (gl:get-window-width) (gl:get-window-height))
         (Camera 'clip_start) (Camera 'clip_end))

      (define target (vector->list (Camera 'target)))
      (define location (vector->list (Camera 'location)))
      (define up (vector->list [0 0 1]))

      (glMatrixMode GL_MODELVIEW)
      (glLoadIdentity)
      (apply gluLookAt (append location target up)))

   ; draw a geometry with colors
   (for-each (lambda (entity)
         (define model (entity 'model))

         (glActiveTexture GL_TEXTURE7)  ; gl_ModelMatrix
         (glMatrixMode GL_TEXTURE)
         (glLoadIdentity) ; let's prepare my_WorldMatrix
         ; transformations
         (let ((xyz (entity 'location)))
            (glTranslatef (ref xyz 1) (ref xyz 2) (ref xyz 3)))
         ;  blender rotation mode is "XYZ": yaw, pitch, roll
         (let ((ypr (entity 'rotation)))
            (glRotatef (ref ypr 1) 1 0 0)
            (glRotatef (ref ypr 2) 0 1 0)
            (glRotatef (ref ypr 3) 0 0 1))
         ; precompiled geometry
         (for-each glCallList
            (models (string->symbol model))))
      Objects)

   ; Draw a light bulbs
   (draw-lightbulbs Lights)
))
