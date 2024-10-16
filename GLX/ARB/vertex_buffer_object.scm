(define-library (OpenGL GLX ARB vertex_buffer_object)

(import (scheme core)
   (OpenGL platform))

(export GLX_ARB_vertex_buffer_object)

(import (OpenGL ARB vertex_buffer_object))
; ---------------------------------------------------------------------------------------------
(begin
   (define GLX_ARB_vertex_buffer_object (gl:QueryExtension "GLX_ARB_vertex_buffer_object"))

))
