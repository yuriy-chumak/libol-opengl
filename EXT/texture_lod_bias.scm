; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_texture_lod_bias.txt

; EXT_texture_lod_bias                               (included in OpenGL 1.4)
;
; Version
;  Last Modified Date: June 23, 2009
;
; Number
;  OpenGL Extension #186
;  OpenGL ES Extension #60

(define-library (OpenGL EXT texture_lod_bias)

(import (scheme core)
   (OpenGL platform))

(export  EXT_texture_lod_bias

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_TEXTURE_FILTER_CONTROL
   GL_TEXTURE_LOD_BIAS
   GL_MAX_TEXTURE_LOD_BIAS
)

; ----------------------------------------------------------------------------
(begin
   (define EXT_texture_lod_bias (gl:QueryExtension "GL_EXT_texture_lod_bias"))

   (define GL_TEXTURE_FILTER_CONTROL          #x8500)
   (define GL_TEXTURE_LOD_BIAS                #x8501)
   (define GL_MAX_TEXTURE_LOD_BIAS            #x84FD)
))
