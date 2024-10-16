; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_border_clamp.txt

; ARB_texture_border_clamp                               (included in OpenGL 1.3)
;
; Version
;  1.0, 22 June 2000
;
; Number
;  ARB Extension #13

(define-library (OpenGL ARB texture_border_clamp)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_border_clamp

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_CLAMP_TO_BORDER
)

; -----------------------------------------------------------------------------------
(begin
   (define ARB_texture_border_clamp (gl:QueryExtension "GL_ARB_texture_border_clamp"))

   (define GL_CLAMP_TO_BORDER                             #x812D)

))
