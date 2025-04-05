(define-library (OpenGL 1.2 deprecated)

(import (scheme core)
   (OpenGL platform))

(export  GL_VERSION_1_2_DEPRECATED


)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_1_2_DEPRECATED 1)

   (setq GL gl:GetProcAddress)


))
