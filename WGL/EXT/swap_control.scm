; https://registry.khronos.org/OpenGL/extensions/EXT/WGL_EXT_swap_control.txt

; EXT_swap_control
;
; Version
;  Date: 9/23/1999   Revision: 1.5
;
; Number
;  172

(define-library (OpenGL WGL EXT swap_control)

(import (scheme core)
   (OpenGL platform))

(export  EXT_swap_control

; ----------------------------
; New Procedures and Functions
;
   wglSwapInterval
   wglGetSwapInterval

; ----------
; New Tokens
;
;  none
)

; -------------------------------------------------------------------------
(begin
   (define EXT_swap_control (gl:QueryExtension "WGL_EXT_swap_control"))
   (setq GL gl:GetProcAddress)

   (setq BOOL fft-int)

   (define wglSwapInterval (GL BOOL "wglSwapIntervalEXT" fft-int))
   (define wglGetSwapInterval (GL fft-int "wglGetSwapIntervalEXT"))

))
