; OpenGL 1.4 (2002)

(define-library (OpenGL version-1-4)
(export

   GL_VERSION_1_4

   glWindowPos2iv

   ;...

   (exports (OpenGL version-1-3)))

(import (scheme core)
   (OpenGL version-1-3))

(begin
   (define GL_VERSION_1_4 1)

   (define glWindowPos2iv (GL GLvoid "glWindowPos2iv" (fft* GLint)))

))