; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_point_parameters.txt

; EXT_point_parameters                               (included in OpenGL 1.3)
;
; Version
;  Revision Date: September 23, 2010
;  Version: 1.8
;
; Number
;  EXT Extension #54

(define-library (OpenGL EXT point_parameters)

(import (scheme core)
   (OpenGL platform))

(export  EXT_point_parameters

; ----------------------------
; New Procedures and Functions
;
   glPointParameterf
   glPointParameterfv

; ----------
; New Tokens
;
   GL_POINT_SIZE_MIN
   GL_POINT_SIZE_MAX
   GL_POINT_FADE_THRESHOLD_SIZE
   GL_POINT_DISTANCE_ATTENUATION
)

; ---------------------------------------------------------------------------
(begin
   (define EXT_point_parameters (gl:QueryExtension "GL_EXT_point_parameters"))

   (setq GL gl:GetProcAddress)
   (define glPointParameterf (GL GLvoid "glPointParameterfEXT" GLenum GLfloat))
   (define glPointParameterfv (GL GLvoid "glPointParameterfvEXT" GLenum GLfloat*))

   (define GL_POINT_SIZE_MIN              #x8126)
   (define GL_POINT_SIZE_MAX              #x8127)
   (define GL_POINT_FADE_THRESHOLD_SIZE   #x8128)
   (define GL_POINT_DISTANCE_ATTENUATION  #x8129)

))
