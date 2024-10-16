; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_multi_draw_arrays.txt

; EXT_multi_drtaw_arrays                              (included in OpenGL 1.4)
;
; Version
;  Version 4, June 18, 2013
;
; Number
;  148
;  OpenGL ES Extension #69

(define-library (OpenGL EXT multi_draw_arrays)

(import (scheme core)
   (OpenGL platform))

(export  EXT_multi_draw_arrays

; ----------------------------
; New Procedures and Functions
;
   glMultiDrawArrays
   glMultiDrawElements

; ----------
; New Tokens
;
;  none
)

; -----------------------------------------------------------------------------
(begin
   (define EXT_multi_draw_arrays (gl:QueryExtension "GL_EXT_multi_draw_arrays"))

   (setq GL gl:GetProcAddress)
   (define glMultiDrawArrays (GL GLvoid "glMultiDrawArraysEXT" GLenum GLint* (fft* GLsizei) GLsizei))
   (define glMultiDrawElements (GL GLvoid "glMultiDrawElementsEXT" GLenum (fft* GLsizei) GLenum fft-any GLsizei))

))
