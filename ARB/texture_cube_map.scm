; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_cube_map.txt

; ARB_texture_cube_map                               (included in OpenGL 1.3)
;
; Version
;  Last Modified Date: December 14, 1999
;
; Overview
;  ARB Extension #7

(define-library (OpenGL ARB texture_cube_map)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_cube_map

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_NORMAL_MAP
   GL_REFLECTION_MAP

   GL_TEXTURE_CUBE_MAP
   GL_TEXTURE_BINDING_CUBE_MAP

   GL_TEXTURE_CUBE_MAP_POSITIVE_X
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z

   GL_PROXY_TEXTURE_CUBE_MAP

   GL_MAX_CUBE_MAP_TEXTURE_SIZE
)

; ---------------------------------------------------------------------------
(begin
   (define ARB_texture_cube_map (gl:QueryExtension "GL_ARB_texture_cube_map"))

   (define GL_NORMAL_MAP                      #x8511)
   (define GL_REFLECTION_MAP                  #x8512)
   (define GL_TEXTURE_CUBE_MAP                #x8513)
   (define GL_TEXTURE_BINDING_CUBE_MAP        #x8514)
   (define GL_TEXTURE_CUBE_MAP_POSITIVE_X     #x8515)
   (define GL_TEXTURE_CUBE_MAP_NEGATIVE_X     #x8516)
   (define GL_TEXTURE_CUBE_MAP_POSITIVE_Y     #x8517)
   (define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y     #x8518)
   (define GL_TEXTURE_CUBE_MAP_POSITIVE_Z     #x8519)
   (define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z     #x851A)
   (define GL_PROXY_TEXTURE_CUBE_MAP          #x851B)
   (define GL_MAX_CUBE_MAP_TEXTURE_SIZE       #x851C)

))
