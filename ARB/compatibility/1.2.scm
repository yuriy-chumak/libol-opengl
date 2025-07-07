(define-library (OpenGL ARB compatibility 1.2)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_1_2_DEPRECATED

   GL_ALIASED_POINT_SIZE_RANGE
   GL_RESCALE_NORMAL
   GL_LIGHT_MODEL_COLOR_CONTROL
   GL_SINGLE_COLOR
   GL_SEPARATE_SPECULAR_COLOR
)

; ============================================================================
(begin
   (define GL_VERSION_1_2_DEPRECATED 1)

   (define GL_ALIASED_POINT_SIZE_RANGE       #x846D)
   (define GL_RESCALE_NORMAL                 #x803A)
   (define GL_LIGHT_MODEL_COLOR_CONTROL      #x81F8)
   (define GL_SINGLE_COLOR                   #x81F9)
   (define GL_SEPARATE_SPECULAR_COLOR        #x81FA)
))
