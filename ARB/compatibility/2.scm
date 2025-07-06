(define-library (OpenGL ARB compatibility 2.0)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_2_0_DEPRECATED

   GL_POINT_SPRITE
   GL_COORD_REPLACE
   GL_FOG_COORD_ARRAY_BUFFER_BINDING
   GL_VERTEX_PROGRAM_TWO_SIDE
   GL_MAX_TEXTURE_COORDS
)

; ============================================================================
(begin
   (define GL_VERSION_2_0_DEPRECATED 1)

   (setq GL gl:GetProcAddress)

   (define GL_POINT_SPRITE                   #x8861)
   (define GL_COORD_REPLACE                  #x8862)
   (define GL_FOG_COORD_ARRAY_BUFFER_BINDING #x889D)
   (define GL_VERTEX_PROGRAM_TWO_SIDE        #x8643)
   (define GL_MAX_TEXTURE_COORDS             #x8871)

))
