; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_subtexture.txt

; EXT_subtexture                               (included in OpenGL 1.1)
;
; Version
;  $Date: 1995/10/03 05:39:55 $ $Revision: 1.17 $
;
; Number
;  9

(define-library (OpenGL EXT subtexture)

(import (scheme core)
   (OpenGL platform))

(export  EXT_subtexture

; ---------------------------------------------------------------------------
; New Procedures and Functions
;
   glTexSubImage1D
   glTexSubImage2D
   glTexSubImage3D

; ---------------------------------------------------------------------------
; New Tokens
;
;  none
)

; ----------------------------------------------------------------
(begin
   (define EXT_subtexture (gl:QueryExtension "GL_EXT_subtexture"))

   (setq GL gl:GetProcAddress)
   (define glTexSubImage1D (GL GLvoid "glTexSubImage1DEXT" GLenum GLint GLint GLsizei GLenum GLenum fft-any))
   (define glTexSubImage2D (GL GLvoid "glTexSubImage2DEXT" GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum fft-any))
   (define glTexSubImage3D (GL GLvoid "glTexSubImage3DEXT" GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum fft-any))

))
