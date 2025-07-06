(define-library (OpenGL ARB compatibility 1.5)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_1_5_DEPRECATED

   GL_VERTEX_ARRAY_BUFFER_BINDING
   GL_NORMAL_ARRAY_BUFFER_BINDING
   GL_COLOR_ARRAY_BUFFER_BINDING
   GL_INDEX_ARRAY_BUFFER_BINDING
   GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
   GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
   GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
   GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
   GL_WEIGHT_ARRAY_BUFFER_BINDING

   GL_FOG_COORD_SRC
   GL_FOG_COORD
   GL_CURRENT_FOG_COORD
   GL_FOG_COORD_ARRAY_TYPE
   GL_FOG_COORD_ARRAY_STRIDE
   GL_FOG_COORD_ARRAY_POINTER
   GL_FOG_COORD_ARRAY
   GL_SRC0_RGB
   GL_SRC1_RGB
   GL_SRC2_RGB
   GL_SRC0_ALPHA
   GL_SRC2_ALPHA

)

; ============================================================================
(begin
   (define GL_VERSION_1_5_DEPRECATED 1)

   (setq GL gl:GetProcAddress)

   (define GL_VERTEX_ARRAY_BUFFER_BINDING               #x8896)
   (define GL_NORMAL_ARRAY_BUFFER_BINDING               #x8897)
   (define GL_COLOR_ARRAY_BUFFER_BINDING                #x8898)
   (define GL_INDEX_ARRAY_BUFFER_BINDING                #x8899)
   (define GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING        #x889A)
   (define GL_EDGE_FLAG_ARRAY_BUFFER_BINDING            #x889B)
   (define GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING      #x889C)
   (define GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING       #x889D)
   (define GL_WEIGHT_ARRAY_BUFFER_BINDING               #x889E)

   (define GL_FOG_COORD_SRC           #x8450)
   (define GL_FOG_COORD               #x8451)
   (define GL_CURRENT_FOG_COORD       #x8453)
   (define GL_FOG_COORD_ARRAY_TYPE    #x8454)
   (define GL_FOG_COORD_ARRAY_STRIDE  #x8455)
   (define GL_FOG_COORD_ARRAY_POINTER #x8456)
   (define GL_FOG_COORD_ARRAY         #x8457)
   (define GL_SRC0_RGB                #x8580)
   (define GL_SRC1_RGB                #x8581)
   (define GL_SRC2_RGB                #x8582)
   (define GL_SRC0_ALPHA              #x8588)
   (define GL_SRC2_ALPHA              #x858A)

))
