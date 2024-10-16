; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_depth_texture.txt

; ARB_depth_texture                               (included in OpenGL 1.4)
;
; Version
;   Last Modified Date: November 29, 2004
;
; Number
;  ARB Extension #22

(define-library (OpenGL ARB depth_texture)

(import (scheme core)
   (OpenGL platform))

(export  ARB_depth_texture

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
;  Accepted by the <internalFormat> parameter of TexImage1D, TexImage2D,
;  CopyTexImage1D and CopyTexImage2D:
;  GL_DEPTH_COMPONENT
   GL_DEPTH_COMPONENT16
   GL_DEPTH_COMPONENT24
   GL_DEPTH_COMPONENT32

;  Accepted by the <format> parameter of GetTexImage, TexImage1D,
;  TexImage2D, TexSubImage1D, and TexSubImage2D:
;  GL_DEPTH_COMPONENT

;  Accepted by the <pname> parameter of GetTexLevelParameterfv and
;  GetTexLevelParameteriv:
   GL_TEXTURE_DEPTH_SIZE
   GL_DEPTH_TEXTURE_MODE

;  Accepted by the <pname> parameter of TexParameterf, TexParameteri,
;  TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv:
   GL_DEPTH_TEXTURE_MODE
)

; ----------------------------------------------------------------------
(begin
   (define ARB_depth_texture (gl:QueryExtension "GL_ARB_depth_texture"))

   (define GL_DEPTH_COMPONENT16   #x81A5) ;(same as DEPTH_COMPONENT16_SGIX)
   (define GL_DEPTH_COMPONENT24   #x81A6) ;(same as DEPTH_COMPONENT24_SGIX)
   (define GL_DEPTH_COMPONENT32   #x81A7) ;(same as DEPTH_COMPONENT32_SGIX)
   (define GL_TEXTURE_DEPTH_SIZE  #x884A)
   (define GL_DEPTH_TEXTURE_MODE  #x884B)

))
