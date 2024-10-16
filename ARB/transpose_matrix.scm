; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_transpose_matrix.txt

; ARB_transpose_matrix                               (included in OpenGL 1.3)
;
; Version
;  Last Modified Date: January 3, 2000
;  Author Revision: 1.3
;
; Number
;  ARB Extension #3

(define-library (OpenGL ARB transpose_matrix)

(import (scheme core)
   (OpenGL platform))

(export  ARB_transpose_matrix

; ----------------------------
; New Procedures and Functions
;
   glLoadTransposeMatrixf
   glLoadTransposeMatrixd
   glMultTransposeMatrixf
   glMultTransposeMatrixd

; ----------
; New Tokens
;
   GL_TRANSPOSE_MODELVIEW_MATRIX
   GL_TRANSPOSE_PROJECTION_MATRIX
   GL_TRANSPOSE_TEXTURE_MATRIX
   GL_TRANSPOSE_COLOR_MATRIX

)

; ---------------------------------------------------------------------------
(begin
   (define ARB_transpose_matrix (gl:QueryExtension "GL_ARB_transpose_matrix"))

   (setq GL gl:GetProcAddress)
   (define glLoadTransposeMatrixf (GL GLvoid "glLoadTransposeMatrixfARB" (fft* fft-float)))
   (define glLoadTransposeMatrixd (GL GLvoid "glLoadTransposeMatrixdARB" (fft* fft-double)))
   (define glMultTransposeMatrixf (GL GLvoid "glMultTransposeMatrixfARB" (fft* fft-float)))
   (define glMultTransposeMatrixd (GL GLvoid "glMultTransposeMatrixdARB" (fft* fft-double)))

   (define GL_TRANSPOSE_MODELVIEW_MATRIX  #x84E3)
   (define GL_TRANSPOSE_PROJECTION_MATRIX #x84E4)
   (define GL_TRANSPOSE_TEXTURE_MATRIX    #x84E5)
   (define GL_TRANSPOSE_COLOR_MATRIX      #x84E6)

))
