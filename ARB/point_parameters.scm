; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_point_parameters.txt

; ARB_point_parameters                               (included in OpenGL 1.3)
;
; Version
;  Revision Date: September 23, 2010
;  Version: 0.6
;  Based on:  EXT_point_parameters
;             $Date: 1997/08/21 21:26:36 $ $Revision: 1.6 $
;
; Number
;  ARB Extension #14

(define-library (OpenGL ARB point_parameters)

(import (scheme core)
   (OpenGL platform))

(export  ARB_point_parameters

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
   (define ARB_point_parameters (gl:QueryExtension "GL_ARB_point_parameters"))

   (setq GL gl:GetProcAddress)
   (define glPointParameterf (GL GLvoid "glPointParameterfARB" GLenum GLfloat))
   (define glPointParameterfv (GL GLvoid "glPointParameterfvARB" GLenum GLfloat*))

   (define GL_POINT_SIZE_MIN              #x8126)
   (define GL_POINT_SIZE_MAX              #x8127)
   (define GL_POINT_FADE_THRESHOLD_SIZE   #x8128)
   (define GL_POINT_DISTANCE_ATTENUATION  #x8129)

))
