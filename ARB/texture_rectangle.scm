; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_rectangle.txt

; ARB_texture_rectangle                               (included in OpenGL 3.1)
;
; Number
;  ARB Extension #38

(define-library (OpenGL ARB texture_rectangle)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_rectangle

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_TEXTURE_RECTANGLE
   GL_TEXTURE_BINDING_RECTANGLE
   GL_PROXY_TEXTURE_RECTANGLE
   GL_MAX_RECTANGLE_TEXTURE_SIZE
   GL_SAMPLER_2D_RECT
   GL_SAMPLER_2D_RECT_SHADOW
)

; --------------------------------------------------------------------
(begin
   (define ARB_texture_rectangle (gl:QueryExtension "GL_ARB_texture_rectangle"))

   (define GL_TEXTURE_RECTANGLE            #x84F5)
   (define GL_TEXTURE_BINDING_RECTANGLE    #x84F6)
   (define GL_PROXY_TEXTURE_RECTANGLE      #x84F7)
   (define GL_MAX_RECTANGLE_TEXTURE_SIZE   #x84F8)
   (define GL_SAMPLER_2D_RECT              #x8B63)
   (define GL_SAMPLER_2D_RECT_SHADOW       #x8B64)

))
