(define-library (OpenGL version-2-0)
(import
   (scheme core)
   (OpenGL 2.0))
(export
   (exports (OpenGL 2.0)))
   
(begin
   (import (owl io))
   (print-to stderr "(OpenGL version-2-0) is deprecated. Use (OpenGL 2.0) instead!")
))