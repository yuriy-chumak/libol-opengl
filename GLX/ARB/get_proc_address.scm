; https://registry.khronos.org/OpenGL/extensions/ARB/GLX_ARB_get_proc_address.txt

; GLX_ARB_get_proc_address
;
; Version
;  Last Modified Date: January 3, 2000;
;
; Number
;  ARB Extension #2

(define-library (OpenGL GLX ARB get_proc_address)

(import (scheme core)
   (OpenGL platform))

(export  GLX_ARB_get_proc_address

; ----------------------------
; New Procedures and Functions
;
   glXGetProcAddress

; ----------
; New Tokens
;
;  none

; ------
; Issues
;
; * There's a recursion problem with this feature. The purpose of
;   GetProcAddressARB is to return pointers to extension functions and
;   GetProcAddressARB is itself such a function! This presents a
;   puzzle to the application developer.
;
;   Implementations must export the glXGetProcAddressARB entry point
;   statically.
)

; ---------------------------------------------------------------------------------
(begin
   (define GLX_ARB_get_proc_address (gl:QueryExtension "GLX_ARB_get_proc_address"))

   (setq GLX (or
      (load-dynamic-library "libGL.so")
      (load-dynamic-library "libGL.so.1")))
   (setq GetProcAddress (GLX type-vptr "glXGetProcAddressARB" type-string))

   (define (glXGetProcAddress type name . prototype)
      (let ((rtty (cons type prototype))
            (function (GetProcAddress name)))
         (if function
         (lambda args
            (ffi function rtty args)))))

))
