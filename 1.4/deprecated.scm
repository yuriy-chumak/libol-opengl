(define-library (OpenGL 1.4 deprecated)

(import (scheme core)
   (OpenGL platform))

(export  GL_VERSION_1_4_DEPRECATED


)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_1_4_DEPRECATED 1)

   (setq GL gl:GetProcAddress)


))
