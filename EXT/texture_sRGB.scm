; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_texture_sRGB.txt

; EXT_texture_sRGB                               (included in OpenGL 2.1)
;
; Version
;  Date: January 24, 2007
;  Revision: 0.8
;
; Number
;  315

(define-library (OpenGL EXT texture_sRGB)

(import (scheme core)
   (OpenGL platform))

(export  EXT_texture_sRGB

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
;  none
)

; ---------------------------------------------------------------------------
(begin
   (define EXT_texture_sRGB (gl:QueryExtension "GL_EXT_texture_sRGB"))

))
