; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_blend_logic_op.txt

; EXT_blend_logic_op                               (included in OpenGL 1.1)
;
; Version
;  $Date: 1995/03/31 04:40:24 $ $Revision: 1.4 $
;
; Number
;  39

(define-library (OpenGL EXT blend_logic_op)

(import (scheme core)
   (OpenGL platform))

(export  EXT_blend_logic_op

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
;  none
)

; -----------------------------------------------------------------------
(begin
   (define EXT_blend_logic_op (gl:QueryExtension "GL_EXT_blend_logic_op"))

))
