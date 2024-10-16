(define-library (OpenGL EXT geometry_point_size)

(import (scheme core)
   (OpenGL platform))

(export EXT_geometry_point_size)

(import (OpenGL EXT geometry_shader))
; ---------------------------------------------------------------------------------
(begin
   (define EXT_geometry_point_size (gl:QueryExtension "GL_EXT_geometry_point_size"))
))
