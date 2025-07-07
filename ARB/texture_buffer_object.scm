; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_buffer_object.txt

; ARB_texture_buffer_object                               (included in OpenGL 3.1)
;
; Number
;  ARB Extension #51

(define-library (OpenGL ARB texture_buffer_object)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_buffer_object

; ----------------------------
; New Procedures and Functions
;
   glTexBuffer

; ----------
; New Tokens
;
   GL_TEXTURE_BUFFER
   GL_MAX_TEXTURE_BUFFER_SIZE
   GL_TEXTURE_BINDING_BUFFER
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING
   GL_TEXTURE_BUFFER_FORMAT
)

; --------------------------------------------------------------------
(begin
   (define ARB_texture_buffer_object (gl:QueryExtension "GL_ARB_texture_buffer_object"))

   (setq GL gl:GetProcAddress)
   (define glTexBuffer (GL GLvoid "glTexBufferARB" GLenum GLenum GLuint))

   (define GL_TEXTURE_BUFFER                              #x8C2A)
   (define GL_MAX_TEXTURE_BUFFER_SIZE                     #x8C2B)
   (define GL_TEXTURE_BINDING_BUFFER                      #x8C2C)
   (define GL_TEXTURE_BUFFER_DATA_STORE_BINDING           #x8C2D)
   (define GL_TEXTURE_BUFFER_FORMAT                       #x8C2E)

))
