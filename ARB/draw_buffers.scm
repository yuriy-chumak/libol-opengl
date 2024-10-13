; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_draw_buffers.txt

; ARB_draw_buffers                               (included in OpenGL 2.0)
;
; Version
;  Last Modified Date: February 19, 2008
;  Revision: 17
;
; Number
;  ARB Extension #37

(define-library (OpenGL ARB draw_buffers)

(import (scheme core)
   (OpenGL platform))

(export  ARB_draw_buffers

; ----------------------------
; New Procedures and Functions
;
   glDrawBuffers

; ----------
; New Tokens
;
   GL_MAX_DRAW_BUFFERS
   GL_DRAW_BUFFER0
   GL_DRAW_BUFFER1
   GL_DRAW_BUFFER2
   GL_DRAW_BUFFER3
   GL_DRAW_BUFFER4
   GL_DRAW_BUFFER5
   GL_DRAW_BUFFER6
   GL_DRAW_BUFFER7
   GL_DRAW_BUFFER8
   GL_DRAW_BUFFER9
   GL_DRAW_BUFFER10
   GL_DRAW_BUFFER11
   GL_DRAW_BUFFER12
   GL_DRAW_BUFFER13
   GL_DRAW_BUFFER14
   GL_DRAW_BUFFER15
)

; --------------------------------------------------------------------
(begin
   (define ARB_draw_buffers (gl:QueryExtension "GL_ARB_draw_buffers"))
   (setq GL gl:GetProcAddress)

   (define glDrawBuffers (GL GLvoid "glDrawBuffers" GLsizei (fft* GLenum)))

   (define GL_MAX_DRAW_BUFFERS  #x8824)
   (define GL_DRAW_BUFFER0      #x8825)
   (define GL_DRAW_BUFFER1      #x8826)
   (define GL_DRAW_BUFFER2      #x8827)
   (define GL_DRAW_BUFFER3      #x8828)
   (define GL_DRAW_BUFFER4      #x8829)
   (define GL_DRAW_BUFFER5      #x882A)
   (define GL_DRAW_BUFFER6      #x882B)
   (define GL_DRAW_BUFFER7      #x882C)
   (define GL_DRAW_BUFFER8      #x882D)
   (define GL_DRAW_BUFFER9      #x882E)
   (define GL_DRAW_BUFFER10     #x882F)
   (define GL_DRAW_BUFFER11     #x8830)
   (define GL_DRAW_BUFFER12     #x8831)
   (define GL_DRAW_BUFFER13     #x8832)
   (define GL_DRAW_BUFFER14     #x8833)
   (define GL_DRAW_BUFFER15     #x8834)

))
