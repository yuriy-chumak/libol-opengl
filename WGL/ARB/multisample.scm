(define-library (OpenGL WGL ARB multisample)

(import (scheme core)
   (OpenGL platform))

(export WGL_ARB_multisample

   WGL_SAMPLE_BUFFERS
   WGL_SAMPLES
)

(import (OpenGL ARB multisample))
; -----------------------------------------------------------------------
(begin
   (define WGL_ARB_multisample (gl:QueryExtension "WGL_ARB_multisample"))

))
