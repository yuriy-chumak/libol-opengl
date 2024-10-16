; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_copy_texture.txt

; EXT_copy_texture                               (included in OpenGL 1.1)
;
; Version
;  $Date: 1995/06/17 03:33:42 $ $Revision: 1.21 $
;
; Number
;  10

(define-library (OpenGL EXT copy_texture)

(import (scheme core)
   (OpenGL platform))

(export  EXT_copy_texture

; ----------------------------
; New Procedures and Functions
;
   glCopyTexImage1D
   glCopyTexImage2D
   glCopyTexSubImage1D
   glCopyTexSubImage2D
   glCopyTexSubImage3D

; ----------
; New Tokens
;
;  none
)

; -------------------------------------------------------------------
(begin
   (define EXT_copy_texture (gl:QueryExtension "GL_EXT_copy_texture"))

   (setq GL gl:GetProcAddress)
   (define glCopyTexImage1D (GL GLvoid "glCopyTexImage1DEXT" GLenum GLint GLenum GLint GLint GLsizei GLint))
   (define glCopyTexImage2D (GL GLvoid "glCopyTexImage2DEXT" GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint))
   (define glCopyTexSubImage1D (GL GLvoid "glCopyTexSubImage1DEXT" GLenum GLint GLint GLint GLint GLsizei))
   (define glCopyTexSubImage2D (GL GLvoid "glCopyTexSubImage2DEXT" GLenum GLint GLint GLint GLint GLint GLsizei GLsizei))
   (define glCopyTexSubImage3D (GL GLvoid "glCopyTexSubImage3DEXT" GLenum GLint GLint GLint GLint GLint GLint GLsizei GLsizei))

))
