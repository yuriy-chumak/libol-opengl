; https://registry.khronos.org/OpenGL/extensions/ARB/GLX_ARB_create_context.txt

; GLX_ARB_create_context
; GLX_ARB_create_context_profile
;
; Version
;  Version 10, 2012/03/28
;
; Number
;  ARB Extension #56 (GLX_ARB_create_context)
;  ARB Extension #75 (GLX_ARB_create_context_profile)

(define-library (OpenGL GLX ARB create_context)

(import (scheme core)
   (OpenGL platform)
   (OpenGL GLX ARB get_proc_address))

(export  GLX_ARB_create_context

; ----------------------------
; New Procedures and Functions
;
   glXCreateContextAttribs

; ----------
; New Tokens
;
;  Accepted as an attribute name in <*attrib_list>:
   GLX_CONTEXT_MAJOR_VERSION
   GLX_CONTEXT_MINOR_VERSION
   GLX_CONTEXT_FLAGS
   GLX_CONTEXT_PROFILE_MASK

;  Accepted as bits in the attribute value for GLX_CONTEXT_FLAGS_ARB in
;  <*attrib_list>:
   GLX_CONTEXT_DEBUG_BIT
   GLX_CONTEXT_FORWARD_COMPATIBLE_BIT

;  Accepted as bits in the attribute value for
;  GLX_CONTEXT_PROFILE_MASK_ARB in <*attrib_list>:
   GLX_CONTEXT_CORE_PROFILE_BIT
   GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT
)

; -----------------------------------------------------------------------------
(begin
   (define GLX_ARB_create_context (gl:QueryExtension "GLX_ARB_create_context"))
   (setq GLX glXGetProcAddress)

   (setq Display* fft-void*) ; X11
   (setq GLXContext fft-void*)
   (setq GLXFBConfig fft-void*)

   (define glXCreateContextAttribs (GLX GLXContext "glXCreateContextAttribsARB" Display* GLXFBConfig GLXContext fft-int fft-int*))

   (define GLX_CONTEXT_MAJOR_VERSION           #x2091)
   (define GLX_CONTEXT_MINOR_VERSION           #x2092)
   (define GLX_CONTEXT_FLAGS                   #x2094)
   (define GLX_CONTEXT_PROFILE_MASK            #x9126)

   (define GLX_CONTEXT_DEBUG_BIT               #x0001)
   (define GLX_CONTEXT_FORWARD_COMPATIBLE_BIT  #x0002)

   (define GLX_CONTEXT_CORE_PROFILE_BIT           #x00000001)
   (define GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT  #x00000002)

))
