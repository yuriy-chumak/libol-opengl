(define-library (OpenGL version-2-1)
(import
   (scheme core)
   (OpenGL 2.1))
(export
   (exports (OpenGL 2.1)))
   
(begin
   (import (owl io))
   (print-to stderr "(OpenGL version-2-1) is deprecated. Use (OpenGL 2.1) instead!")
))