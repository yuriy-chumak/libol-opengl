; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_blend_subtract.txt

; EXT_blend_subtract                               (included in OpenGL 1.4)
;
; Version
;  $Date: 1995/03/31 04:40:39 $ $Revision: 1.4 $
;
; Number
;  38

(define-library (OpenGL EXT blend_subtract)

(import (scheme core)
   (OpenGL platform))

(export  EXT_blend_subtract

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_FUNC_SUBTRACT
   GL_FUNC_REVERSE_SUBTRACT
)

; ---------------------------------------------------------------------------
(begin
   (define EXT_blend_subtract (gl:QueryExtension "GL_EXT_blend_subtract"))

   (define GL_FUNC_SUBTRACT                #x800A)
   (define GL_FUNC_REVERSE_SUBTRACT        #x800B)

))
