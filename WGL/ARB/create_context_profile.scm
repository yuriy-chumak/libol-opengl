(define-library (OpenGL WGL ARB create_context_profile)

(import (scheme core)
   (OpenGL platform))

(export WGL_ARB_create_context_profile)

(import (OpenGL WGL ARB create_context))
; ---------------------------------------------------------------------------------------------
(begin
   (define WGL_ARB_create_context_profile (gl:QueryExtension "WGL_ARB_create_context_profile"))
))
