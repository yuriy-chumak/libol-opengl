(define-library (OpenGL GLX ARB multisample)

(import (scheme core)
   (OpenGL platform))

(export  GLX_ARB_multisample

   GLX_SAMPLE_BUFFERS
   GLX_SAMPLES
)

(import (OpenGL ARB multisample))
; -----------------------------------------------------------------------
(begin
   (define GLX_ARB_multisample (gl:QueryExtension "GLX_ARB_multisample"))

))
