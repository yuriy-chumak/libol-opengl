; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_stencil_two_side.txt

; EXT_stencil_two_side                               (included in OpenGL 2.0)
;
; Version
;  Last Modified Date:  09/15/2005
;  Revision:            2
;
; Number
;  268

(define-library (OpenGL EXT stencil_two_side)

(import (scheme core)
   (OpenGL platform))

(export  EXT_stencil_two_side

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
   (define EXT_stencil_two_side (gl:QueryExtension "GL_EXT_stencil_two_side"))

))
