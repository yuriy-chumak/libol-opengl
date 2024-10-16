; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_shadow_funcs.txt

; EXT_shadow_func                                (included in OpenGL 1.5)
;
; Version
;  Last Modified Date:  $Date: 2002/03/22 $
;  NVIDIA Revision:  $Revision: #5 $
;
; Number
;  267

(define-library (OpenGL EXT shadow_funcs)

(import (scheme core)
   (OpenGL platform))

(export  EXT_shadow_funcs

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
;  none
)

; --------------------------------------------------------------------
(begin
   (define EXT_shadow_funcs (gl:QueryExtension "GL_EXT_shadow_funcs"))

))
