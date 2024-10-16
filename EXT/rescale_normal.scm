; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_rescale_normal.txt

; EXT_rescale_normal                               (included in OpenGL 1.2)
;
; Version
;  $Date: 1997/07/02 23:38:17 $ $Revision: 1.7 $
;
; Number
;  27

(define-library (OpenGL EXT rescale_normal)

(import (scheme core)
   (OpenGL platform))

(export  EXT_rescale_normal

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_RESCALE_NORMAL
)

; ------------------------------------------------------------------------
(begin
   (define EXT_rescale_normal (gl:QueryExtension "GL_EXT_rescale_normal"))

   (define GL_RESCALE_NORMAL #x803A)

))
