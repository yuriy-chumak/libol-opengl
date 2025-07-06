(define-library (OpenGL ARB compatibility 2.1)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_2_1_DEPRECATED

   GL_SLUMINANCE_ALPHA
   GL_SLUMINANCE8_ALPHA8
   GL_SLUMINANCE
   GL_SLUMINANCE8
   GL_COMPRESSED_SLUMINANCE
   GL_COMPRESSED_SLUMINANCE_ALPHA

   GL_CURRENT_RASTER_SECONDARY_COLOR

)

; ============================================================================
(begin
   (define GL_VERSION_2_1_DEPRECATED 1)

   (setq GL gl:GetProcAddress)

   (define GL_SLUMINANCE_ALPHA               #x8C44)
   (define GL_SLUMINANCE8_ALPHA8             #x8C45)
   (define GL_SLUMINANCE                     #x8C46)
   (define GL_SLUMINANCE8                    #x8C47)
   (define GL_COMPRESSED_SLUMINANCE          #x8C4A)
   (define GL_COMPRESSED_SLUMINANCE_ALPHA    #x8C4B)
   (define GL_CURRENT_RASTER_SECONDARY_COLOR #x845F)
))
