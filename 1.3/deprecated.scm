(define-library (OpenGL 1.3 deprecated)

(import (scheme core)
   (OpenGL platform))

(export  GL_VERSION_1_3_DEPRECATED


)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_1_3_DEPRECATED 1)

   (setq GL gl:GetProcAddress)


))
