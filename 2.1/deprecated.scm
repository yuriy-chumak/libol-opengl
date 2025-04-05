(define-library (OpenGL 2.1 deprecated)

(import (scheme core)
   (OpenGL platform))

(export  GL_VERSION_2_1_DEPRECATED


)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_2_1_DEPRECATED 1)

   (setq GL gl:GetProcAddress)


))
