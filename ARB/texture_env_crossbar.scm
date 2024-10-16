; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_env_crossbar.txt

; ARB_texture_env_crossbar                               (included in OpenGL 1.4)
;
; Version
;  Last modified date: 2006/11/04
;
; Number
;  ARB Extension #18

(define-library (OpenGL ARB texture_env_crossbar)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_env_crossbar

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
	GL_TEXTURE0
;  TEXTURE<n>_ARB, where <n> is in the range 0 to MAX_TEXTURE_UNITS_ARB.

)

; ------------------------------------------------------------------------------------
(begin
   (define ARB_texture_env_crossbar (gl:QueryExtension "GL_ARB_texture_env_crossbar"))

	(define GL_TEXTURE0                        #x84C0)
))
