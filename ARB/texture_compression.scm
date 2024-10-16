; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_compression.txt

; ARB_texture_compression                               (included in OpenGL 1.3)
;
; Version
;  Last Modified Date: May 23, 2000
;  Author Revision: 1.03
;
; Number
;  ARB Extension #12

(define-library (OpenGL ARB texture_compression)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_compression

; ----------------------------
; New Procedures and Functions
;
   glCompressedTexImage3D
   glCompressedTexImage2D
   glCompressedTexImage1D
   glCompressedTexSubImage3D
   glCompressedTexSubImage2D
   glCompressedTexSubImage1D
   glGetCompressedTexImage

; ----------
; New Tokens
;
   GL_COMPRESSED_ALPHA
   GL_COMPRESSED_LUMINANCE
   GL_COMPRESSED_LUMINANCE_ALPHA
   GL_COMPRESSED_INTENSITY
   GL_COMPRESSED_RGB
   GL_COMPRESSED_RGBA

   GL_TEXTURE_COMPRESSION_HINT

   GL_TEXTURE_COMPRESSED_IMAGE_SIZE
   GL_TEXTURE_COMPRESSED

   GL_NUM_COMPRESSED_TEXTURE_FORMATS
   GL_COMPRESSED_TEXTURE_FORMATS
)

; ---------------------------------------------------------------------------------
(begin
   (define ARB_texture_compression (gl:QueryExtension "GL_ARB_texture_compression"))

   (setq GL gl:GetProcAddress)
   (define glCompressedTexImage3D (GL GLvoid "glCompressedTexImage3DARB" GLenum GLint GLenum GLsizei GLsizei GLsizei GLint GLsizei fft-any))
   (define glCompressedTexImage2D (GL GLvoid "glCompressedTexImage2DARB" GLenum GLint GLenum GLsizei GLsizei GLint GLsizei fft-any))
   (define glCompressedTexImage1D (GL GLvoid "glCompressedTexImage1DARB" GLenum GLint GLenum GLsizei GLint GLsizei fft-any))
   (define glCompressedTexSubImage3D (GL GLvoid "glCompressedTexSubImage3DARB" GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei fft-any))
   (define glCompressedTexSubImage2D (GL GLvoid "glCompressedTexSubImage2DARB" GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei fft-any))
   (define glCompressedTexSubImage1D (GL GLvoid "glCompressedTexSubImage1DARB" GLenum GLint GLint GLsizei GLenum GLsizei fft-any))
   (define glGetCompressedTexImage (GL GLvoid "glGetCompressedTexImageARB" GLenum GLint fft-any))

   (define GL_COMPRESSED_ALPHA                            #x84E9)
   (define GL_COMPRESSED_LUMINANCE                        #x84EA)
   (define GL_COMPRESSED_LUMINANCE_ALPHA                  #x84EB)
   (define GL_COMPRESSED_INTENSITY                        #x84EC)
   (define GL_COMPRESSED_RGB                              #x84ED)
   (define GL_COMPRESSED_RGBA                             #x84EE)
   (define GL_TEXTURE_COMPRESSION_HINT                    #x84EF)
   (define GL_TEXTURE_COMPRESSED_IMAGE_SIZE               #x86A0)
   (define GL_TEXTURE_COMPRESSED                          #x86A1)
   (define GL_NUM_COMPRESSED_TEXTURE_FORMATS              #x86A2)
   (define GL_COMPRESSED_TEXTURE_FORMATS                  #x86A3)

))
