; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_draw_instanced.txt

; ARB_draw_instanced                               (included in OpenGL 3.1)
;
; Version
;   Last Modified Date:  April 8, 2011
;
; Number
;  ARB Extension #44

(define-library (OpenGL ARB draw_instanced)

(import (scheme core)
   (OpenGL platform))

(export  ARB_draw_instanced

; ----------------------------
; New Procedures and Functions
;
   glDrawArraysInstanced
   glDrawElementsInstanced

; ----------
; New Tokens
;
;  none
)

; ----------------------------------------------------------------------
(begin
   (define ARB_draw_instanced (gl:QueryExtension "GL_ARB_draw_instanced"))

   (setq GL gl:GetProcAddress)

   (define glDrawArraysInstanced (GL GLvoid "glDrawArraysInstancedARB" GLenum GLint GLsizei GLsizei))
   (define glDrawElementsInstanced (GL GLvoid "glDrawElementsInstancedARB" GLenum GLsizei GLenum GLvoid* GLsizei))

))
