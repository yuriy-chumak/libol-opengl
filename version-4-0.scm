; OpenGL 4.0 (11 Mar 2010) GLSL 4.40
(define-library (OpenGL version-4-0)
(export

   GL_VERSION_4_0

   (exports (OpenGL version-3-3)))

(import (scheme core)
   (OpenGL version-3-3))

(begin
   (define GL_VERSION_4_0 1)


))