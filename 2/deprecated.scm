(define-library (OpenGL 2.0 deprecated)

(import (scheme core)
   (OpenGL platform))

(export  GL_VERSION_2_0_DEPRECATED


)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_2_0_DEPRECATED 1)

   (setq GL gl:GetProcAddress)


))
