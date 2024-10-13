; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_swap_control.txt

; GLX_EXT_swap_control
;
; Version
;  Version 8 (November 8, 2011)
;
; Number
;  375

(define-library (OpenGL GLX EXT swap_control)

(import (scheme core)
   (OpenGL platform)
   (OpenGL GLX ARB get_proc_address))

(export  GLX_EXT_swap_control

; ----------------------------
; New Procedures and Functions
;
   glXSwapInterval

; ----------
; New Tokens
;
   GLX_SWAP_INTERVAL
   GLX_MAX_SWAP_INTERVAL
)

; -------------------------------------------------------------------------
(begin
   (define GLX_EXT_swap_control (gl:QueryExtension "GLX_EXT_swap_control"))
   (setq GLX glXGetProcAddress)

   (setq Display* fft-void*)
   (setq GLXDrawable fft-void*)

   (define glXSwapInterval (GLX fft-void "glXSwapIntervalEXT" Display* GLXDrawable fft-int))

   (define GLX_SWAP_INTERVAL               #x20F1)
   (define GLX_MAX_SWAP_INTERVAL           #x20F2)

))
