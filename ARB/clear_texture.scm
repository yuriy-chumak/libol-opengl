; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_clear_texture.txt

; ARB_clear_texture                                  (required OpenGL 1.3)
;
; Version
;  Last Modified Date: August 12, 2013
;  Revision: 16
;
; Number
;  ARB Extension #145

(define-library (OpenGL ARB clear_texture)

(import (scheme core)
   (OpenGL platform))

(export  ARB_clear_texture

; ----------------------------
; New Procedures and Functions
;
   glClearTexImage
   glClearTexSubImage

; ----------
; New Tokens
;
   GL_CLEAR_TEXTURE
)

; ----------------------------------------------------------------------
(begin
   (define ARB_clear_texture (gl:QueryExtension "GL_ARB_clear_texture"))

   (setq GL gl:GetProcAddress)
   (define glClearTexImage (GL GLvoid "glClearTexImage" GLuint GLint GLenum GLenum fft-any))
   (define glClearTexSubImage (GL GLvoid "ARB_clear_texture" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum fft-any))

   (define GL_CLEAR_TEXTURE #x9365)

))
