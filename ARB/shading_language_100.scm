; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_shading_language_100.txt

; ARB_shading_language_100                               (included in OpenGL 2.0)
;
; Version
;  Last Modified Date: April 6, 2004
;  Revision: 8
;
; Number
;  ARB Extension #33

(define-library (OpenGL ARB shading_language_100)

(import (scheme base)
   (OpenGL platform))

(export  ARB_shading_language_100

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_SHADING_LANGUAGE_VERSION

   gl:link-shaders
   gl:create-program
)

(import
   (OpenGL ARB shader_objects)
   (OpenGL ARB vertex_shader)
   (OpenGL ARB fragment_shader))
; ------------------------------------------------------------------------------------
(begin
   (define ARB_shading_language_100 (gl:QueryExtension "GL_ARB_shading_language_100"))

   (define GL_SHADING_LANGUAGE_VERSION #x8B8C)

   (define (gl:link-shaders program . shaders)
      (for-each (lambda (shader)
            (glAttachObject program shader))
         shaders)
      (for-each (lambda (shader)
            (glDeleteObject shader))
         shaders)

      (glLinkProgram program)
      (let ((isLinked (box 0)))
         (glGetObjectParameteriv program GL_OBJECT_LINK_STATUS isLinked)
         (if (eq? (unbox isLinked) 0)
            ;; the maxLength includes the NULL character
            (let*((maxLength (box 0))
                  (_ (glGetObjectParameteriv program GL_OBJECT_INFO_LOG_LENGTH maxLength))
                  (maxLengthValue (unbox maxLength))
                  (errorLog (make-bytevector maxLengthValue 0))
                  (_ (glGetInfoLog program maxLengthValue maxLength errorLog)))

               ;; we don't need the program anymore.
               (glDeleteObject program)
               ;; throw error
               (raise (utf8->string errorLog)))))

      (for-each (lambda (shader)
            ;; always detach shaders after a successful link.
            (glDetachObject program shader))
         shaders))

   (define (gl:create-program vstext fstext)
      (let ((po (glCreateProgramObject))
            (vs (glCreateShaderObject GL_VERTEX_SHADER))
            (fs (glCreateShaderObject GL_FRAGMENT_SHADER)))
         (if (eq? po 0)
            (raise "Can't create shader program."))

         (gl:compile-shader vs (list vstext))
         (gl:compile-shader fs (list fstext))

         (gl:link-shaders po vs fs)
         po))

))
