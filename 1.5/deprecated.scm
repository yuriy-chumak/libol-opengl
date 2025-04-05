(define-library (OpenGL 1.5 deprecated)

(import (scheme core)
   (OpenGL platform))

(export  GL_VERSION_1_5_DEPRECATED


)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_1_5_DEPRECATED 1)

   (setq GL gl:GetProcAddress)


))
