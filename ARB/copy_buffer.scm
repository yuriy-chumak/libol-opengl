; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_copy_buffer.txt

; ARB_copy_buffer                               (included in OpenGL 3.1)
;
; Version
;  Last Modified Date: September 6, 2017
;  Author Revision: 7
;
; Number
;  ARB Extension #59

(define-library (OpenGL ARB copy_buffer)

(import (scheme core)
   (OpenGL platform))

(export  ARB_copy_buffer

; ----------------------------
; New Procedures and Functions
;
   glCopyBufferSubData

; ----------
; New Tokens
;
   GL_COPY_READ_BUFFER
   GL_COPY_WRITE_BUFFER
)

; --------------------------------------------------------------------------
(begin
   (define ARB_copy_buffer (gl:QueryExtension "GL_ARB_copy_buffer"))

   (setq GL gl:GetProcAddress)
   (define glCopyBufferSubData (GL GLvoid "glCopyBufferSubData" GLenum GLenum GLintptr GLintptr GLsizeiptr))

   (define GL_COPY_READ_BUFFER                    #x8F36)
   (define GL_COPY_WRITE_BUFFER                   #x8F37)

))
