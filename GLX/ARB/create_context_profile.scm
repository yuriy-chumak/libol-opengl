(define-library (OpenGL GLX ARB create_context_profile)

(import (scheme core)
   (OpenGL platform))

(export GLX_ARB_create_context_profile)

(import (OpenGL GLX ARB create_context))
; ---------------------------------------------------------------------------------------------
(begin
   (define GLX_ARB_create_context_profile (gl:QueryExtension "GLX_ARB_create_context_profile"))

))
