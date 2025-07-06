(define-library (OpenGL ARB compatibility 3.0)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_3_0_DEPRECATED

   GL_DEPTH_BUFFER
   GL_STENCIL_BUFFER
   GL_CLAMP_VERTEX_COLOR
   GL_CLAMP_FRAGMENT_COLOR
   GL_TEXTURE_LUMINANCE_TYPE
   GL_TEXTURE_INTENSITY_TYPE
   GL_ALPHA_INTEGER

   GL_INDEX
)

(begin

   (define GL_VERSION_3_0_DEPRECATED 1)

   (define GL_DEPTH_BUFFER                   #x8223)
   (define GL_STENCIL_BUFFER                 #x8224)
   (define GL_CLAMP_VERTEX_COLOR             #x891A)
   (define GL_CLAMP_FRAGMENT_COLOR           #x891B)
   (define GL_TEXTURE_LUMINANCE_TYPE         #x8C14)
   (define GL_TEXTURE_INTENSITY_TYPE         #x8C15)
   (define GL_ALPHA_INTEGER                  #x8D97)

   (define GL_INDEX                          #x8222)

))
