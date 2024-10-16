; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_texture.txt

; EXT_texture                               (included in OpenGL 1.1)
;
; Version
;  $Date: 1996/04/05 19:17:03 $ $Revision: 1.21 $
;
; Number
;  4

(define-library (OpenGL EXT texture)

(import (scheme core)
   (OpenGL platform))

(export  EXT_texture

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_ALPHA4
   GL_ALPHA8
   GL_ALPHA12
   GL_ALPHA16
   GL_LUMINANCE4
   GL_LUMINANCE8
   GL_LUMINANCE12
   GL_LUMINANCE16
   GL_LUMINANCE4_ALPHA4
   GL_LUMINANCE6_ALPHA2
   GL_LUMINANCE8_ALPHA8
   GL_LUMINANCE12_ALPHA4
   GL_LUMINANCE12_ALPHA12
   GL_LUMINANCE16_ALPHA16
   GL_INTENSITY
   GL_INTENSITY4
   GL_INTENSITY8
   GL_INTENSITY12
   GL_INTENSITY16
   GL_RGB2
   GL_RGB4
   GL_RGB5
   GL_RGB8
   GL_RGB10
   GL_RGB12
   GL_RGB16
   GL_RGBA2
   GL_RGBA4
   GL_RGB5_A1
   GL_RGBA8
   GL_RGB10_A2
   GL_RGBA12
   GL_RGBA16

   GL_TEXTURE_RED_SIZE
   GL_TEXTURE_GREEN_SIZE
   GL_TEXTURE_BLUE_SIZE
   GL_TEXTURE_ALPHA_SIZE
   GL_TEXTURE_LUMINANCE_SIZE
   GL_TEXTURE_INTENSITY_SIZE

   GL_REPLACE
   GL_PROXY_TEXTURE_1D
   GL_PROXY_TEXTURE_2D
   GL_TEXTURE_TOO_LARGE
)

; ----------------------------------------------------------
(begin
   (define EXT_texture (gl:QueryExtension "GL_EXT_texture"))

   (define GL_ALPHA4                       #x803B)
   (define GL_ALPHA8                       #x803C)
   (define GL_ALPHA12                      #x803D)
   (define GL_ALPHA16                      #x803E)
   (define GL_LUMINANCE4                   #x803F)
   (define GL_LUMINANCE8                   #x8040)
   (define GL_LUMINANCE12                  #x8041)
   (define GL_LUMINANCE16                  #x8042)
   (define GL_LUMINANCE4_ALPHA4            #x8043)
   (define GL_LUMINANCE6_ALPHA2            #x8044)
   (define GL_LUMINANCE8_ALPHA8            #x8045)
   (define GL_LUMINANCE12_ALPHA4           #x8046)
   (define GL_LUMINANCE12_ALPHA12          #x8047)
   (define GL_LUMINANCE16_ALPHA16          #x8048)
   (define GL_INTENSITY                    #x8049)
   (define GL_INTENSITY4                   #x804A)
   (define GL_INTENSITY8                   #x804B)
   (define GL_INTENSITY12                  #x804C)
   (define GL_INTENSITY16                  #x804D)
   (define GL_RGB2                         #x804E)
   (define GL_RGB4                         #x804F)
   (define GL_RGB5                         #x8050)
   (define GL_RGB8                         #x8051)
   (define GL_RGB10                        #x8052)
   (define GL_RGB12                        #x8053)
   (define GL_RGB16                        #x8054)
   (define GL_RGBA2                        #x8055)
   (define GL_RGBA4                        #x8056)
   (define GL_RGB5_A1                      #x8057)
   (define GL_RGBA8                        #x8058)
   (define GL_RGB10_A2                     #x8059)
   (define GL_RGBA12                       #x805A)
   (define GL_RGBA16                       #x805B)

   (define GL_TEXTURE_RED_SIZE             #x805C)
   (define GL_TEXTURE_GREEN_SIZE           #x805D)
   (define GL_TEXTURE_BLUE_SIZE            #x805E)
   (define GL_TEXTURE_ALPHA_SIZE           #x805F)
   (define GL_TEXTURE_LUMINANCE_SIZE       #x8060)
   (define GL_TEXTURE_INTENSITY_SIZE       #x8061)

   (define GL_REPLACE                      #x8062)
   (define GL_PROXY_TEXTURE_1D             #x8063)
   (define GL_PROXY_TEXTURE_2D             #x8064)
   (define GL_TEXTURE_TOO_LARGE            #x8065)

))
