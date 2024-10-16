; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_stencil_wrap.txt

; EXT_stencil_wrap                               (included in OpenGL 1.4)
;
; Version
;  Date: 4/4/2002  Version 1.2
;
; Number
;  176

(define-library (OpenGL EXT stencil_wrap)

(import (scheme core)
   (OpenGL platform))

(export  EXT_stencil_wrap

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_INCR_WRAP
   GL_DECR_WRAP
)

; --------------------------------------------------------------------
(begin
   (define EXT_stencil_wrap (gl:QueryExtension "GL_EXT_stencil_wrap"))

   (define GL_INCR_WRAP             #x8507)
   (define GL_DECR_WRAP             #x8508)

))
