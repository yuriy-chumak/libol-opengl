; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_env_add.txt

; ARB_texture_env_add                               (included in OpenGL 1.3)
;
; Version
;  Last Modified Date: June 22, 2000
;  Author Revision: 0.3
;  Based on:  EXT_texture_env_add
;             Date: 1999/03/22 Revision: 1.1
;
; Number
;  ARB Extension #6

(define-library (OpenGL ARB texture_env_add)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_env_add

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
;  GL_ADD

)

; ---------------------------------------------------------------------------
(begin
   (define ARB_texture_env_add (gl:QueryExtension "GL_ARB_texture_env_add"))

))
