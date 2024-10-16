; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_fog_coord.txt

; EXT_fog_coord                               (included in OpenGL 1.4)
;
; Version
;  $Date: 1999/06/21 19:57:19 $ $Revision: 1.11 $
;
; Number
;  149

(define-library (OpenGL EXT fog_coord)

(import (scheme core)
   (OpenGL platform))

(export  EXT_fog_coord

; ----------------------------
; New Procedures and Functions
;
   glFogCoordf
   glFogCoordd
   glFogCoordfv
   glFogCoorddv
   glFogCoordPointer

; ----------
; New Tokens
;
   GL_FOG_COORDINATE_SOURCE
   GL_FOG_COORDINATE
   GL_FRAGMENT_DEPTH
   GL_CURRENT_FOG_COORDINATE
   GL_FOG_COORDINATE_ARRAY_TYPE
   GL_FOG_COORDINATE_ARRAY_STRIDE
   GL_FOG_COORDINATE_ARRAY_POINTER
   GL_FOG_COORDINATE_ARRAY
)

; -------------------------------------------------------------
(begin
   (define EXT_fog_coord (gl:QueryExtension "GL_EXT_fog_coord"))

   (setq GL gl:GetProcAddress)
   (define glFogCoordf (GL GLvoid "glFogCoordfEXT" GLfloat))
   (define glFogCoordd (GL GLvoid "glFogCoorddEXT" GLdouble))
   (define glFogCoordfv (GL GLvoid "glFogCoordfvEXT" GLfloat*))
   (define glFogCoorddv (GL GLvoid "glFogCoorddvEXT" GLdouble*))
   (define glFogCoordPointer (GL GLvoid "glFogCoordPointerEXT" GLenum GLsizei fft-any))

   (define GL_FOG_COORDINATE_SOURCE           #x8450)
   (define GL_FOG_COORDINATE                  #x8451)
   (define GL_FRAGMENT_DEPTH                  #x8452)
   (define GL_CURRENT_FOG_COORDINATE          #x8453)
   (define GL_FOG_COORDINATE_ARRAY_TYPE       #x8454)
   (define GL_FOG_COORDINATE_ARRAY_STRIDE     #x8455)
   (define GL_FOG_COORDINATE_ARRAY_POINTER    #x8456)
   (define GL_FOG_COORDINATE_ARRAY            #x8457)

))
