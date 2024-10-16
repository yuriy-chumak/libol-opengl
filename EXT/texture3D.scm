; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_texture3D.txt

; EXT_texture3D                               (included in OpenGL 1.2)
;
; Version
;  $Date: 1996/04/05 19:17:05 $ $Revision: 1.22 $
;
; Number
;  6

(define-library (OpenGL EXT texture3D)

(import (scheme core)
   (OpenGL platform))

(export  EXT_texture3D

; ----------------------------
; New Procedures and Functions
;
   glTexImage3D

; ----------
; New Tokens
;
   GL_PACK_SKIP_IMAGES
   GL_PACK_IMAGE_HEIGHT
   GL_UNPACK_SKIP_IMAGES
   GL_UNPACK_IMAGE_HEIGHT
   GL_TEXTURE_3D
   GL_PROXY_TEXTURE_3D
   GL_TEXTURE_DEPTH
   GL_TEXTURE_WRAP_R
   GL_MAX_3D_TEXTURE_SIZE
)

; ---------------------------------------------------------------------------
(begin
   (define EXT_texture3D (gl:QueryExtension "GL_EXT_texture3D"))

   (setq GL gl:GetProcAddress)
   (define glTexImage3D (GL GLvoid "glTexImage3DEXT" GLenum GLint GLenum GLsizei GLsizei GLsizei GLint GLenum GLenum fft-any))

   (define GL_PACK_SKIP_IMAGES             #x806B)
   (define GL_PACK_IMAGE_HEIGHT            #x806C)
   (define GL_UNPACK_SKIP_IMAGES           #x806D)
   (define GL_UNPACK_IMAGE_HEIGHT          #x806E)
   (define GL_TEXTURE_3D                   #x806F)
   (define GL_PROXY_TEXTURE_3D             #x8070)
   (define GL_TEXTURE_DEPTH                #x8071)
   (define GL_TEXTURE_WRAP_R               #x8072)
   (define GL_MAX_3D_TEXTURE_SIZE          #x8073)

))
