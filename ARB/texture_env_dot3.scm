; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_env_dot3.txt

; ARB_texture_env_dot3                               (included in OpenGL 1.3)
;
; Version
;  Last modified date: 2006/11/04
;
; Number
;  ARB Extension #19

(define-library (OpenGL ARB texture_env_dot3)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_env_dot3

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_DOT3_RGB
   GL_DOT3_RGBA
)

; ---------------------------------------------------------------------------
(begin
   (define ARB_texture_env_dot3 (gl:QueryExtension "GL_ARB_texture_env_dot3"))

   (define GL_DOT3_RGB                                    #x86AE)
   (define GL_DOT3_RGBA                                   #x86AF)

))
