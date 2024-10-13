; https://registry.khronos.org/OpenGL/extensions/ARB/WGL_ARB_create_context.txt

; WGL_ARB_create_context
; WGL_ARB_create_context_profile
;
; Version
;  Version 20, 2009/07/28
;
; Number
;  ARB Extension #55 (WGL_ARB_create_context)
;  ARB Extension #74 (WGL_ARB_create_context_profile)

(define-library (OpenGL WGL ARB create_context)

(import (scheme core)
   (OpenGL platform))

; --------------------------------------------------------------------------
(export  WGL_ARB_create_context

; --------------------------------------------------------------------------
; New Procedures and Functions
;
   wglCreateContextAttribs

; --------------------------------------------------------------------------
; New Tokens
;
;  Accepted as an attribute name in <*attribList>:
   WGL_CONTEXT_MAJOR_VERSION
   WGL_CONTEXT_MINOR_VERSION
   WGL_CONTEXT_LAYER_PLANE
   WGL_CONTEXT_FLAGS
   WGL_CONTEXT_PROFILE_MASK

;  Accepted as bits in the attribute value for WGL_CONTEXT_FLAGS in
;  <*attribList>:
   WGL_CONTEXT_DEBUG_BIT
   WGL_CONTEXT_FORWARD_COMPATIBLE_BIT

;  Accepted as bits in the attribute value for
;  WGL_CONTEXT_PROFILE_MASK_ARB in <*attribList>:
   WGL_CONTEXT_CORE_PROFILE_BIT
   WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT

;  New errors returned by GetLastError:
   ERROR_INVALID_VERSION
   ERROR_INVALID_PROFILE
)

; --------------------------------------------------------------------------
(begin
   (define WGL_ARB_create_context (gl:QueryExtension "WGL_ARB_create_context"))
   (setq GL gl:GetProcAddress)

   (setq HDC fft-void*)
   (setq HGLRC fft-void*)

   (define wglCreateContextAttribs (GL HGLRC "wglCreateContextAttribsARB" HDC HGLRC fft-int*))

   (define WGL_CONTEXT_MAJOR_VERSION           #x2091)
   (define WGL_CONTEXT_MINOR_VERSION           #x2092)
   (define WGL_CONTEXT_LAYER_PLANE             #x2093)
   (define WGL_CONTEXT_FLAGS                   #x2094)
   (define WGL_CONTEXT_PROFILE_MASK            #x9126)

   (define WGL_CONTEXT_DEBUG_BIT               #x0001)
   (define WGL_CONTEXT_FORWARD_COMPATIBLE_BIT  #x0002)

   (define WGL_CONTEXT_CORE_PROFILE_BIT          #x00000001)
   (define WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT #x00000002)

   (define ERROR_INVALID_VERSION               #x2095)
   (define ERROR_INVALID_PROFILE               #x2096)

))
