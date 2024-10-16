; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_window_pos.txt

; ARB_window_pos                               (included in OpenGL 1.4)
;
; Version
;  Last Modified Date: June 11, 2002
;
; Number
;  ARB Extension #25

(define-library (OpenGL ARB window_pos)

(import (scheme core)
   (OpenGL platform))

(export  ARB_window_pos

; ----------------------------
; New Procedures and Functions
;
   glWindowPos2d
   glWindowPos2f
   glWindowPos2i
   glWindowPos2s
   glWindowPos2dv
   glWindowPos2fv
   glWindowPos2iv
   glWindowPos2sv
   glWindowPos3d
   glWindowPos3f
   glWindowPos3i
   glWindowPos3s
   glWindowPos3dv
   glWindowPos3fv
   glWindowPos3iv
   glWindowPos3sv

; ----------
; New Tokens
;
;  none
)

; ----------------------------------------------------------------
(begin
   (define ARB_window_pos (gl:QueryExtension "GL_ARB_window_pos"))

   (setq GL gl:GetProcAddress)
   (define glWindowPos2d (GL GLvoid "glWindowPos2dARB" GLdouble GLdouble))
   (define glWindowPos2f (GL GLvoid "glWindowPos2fARB" GLfloat GLfloat))
   (define glWindowPos2i (GL GLvoid "glWindowPos2iARB" GLint GLint))
   (define glWindowPos2s (GL GLvoid "glWindowPos2sARB" GLshort GLshort))
   (define glWindowPos2dv (GL GLvoid "glWindowPos2dvARB" GLdouble*))
   (define glWindowPos2fv (GL GLvoid "glWindowPos2fvARB" GLfloat*))
   (define glWindowPos2iv (GL GLvoid "glWindowPos2ivARB" GLint*))
   (define glWindowPos2sv (GL GLvoid "glWindowPos2svARB" GLshort*))
   (define glWindowPos3d (GL GLvoid "glWindowPos3dARB" GLdouble GLdouble GLdouble))
   (define glWindowPos3f (GL GLvoid "glWindowPos3fARB" GLfloat GLfloat GLfloat))
   (define glWindowPos3i (GL GLvoid "glWindowPos3iARB" GLint GLint GLint))
   (define glWindowPos3s (GL GLvoid "glWindowPos3sARB" GLshort GLshort GLshort))
   (define glWindowPos3dv (GL GLvoid "glWindowPos3dvARB" GLdouble*))
   (define glWindowPos3fv (GL GLvoid "glWindowPos3fvARB" GLfloat*))
   (define glWindowPos3iv (GL GLvoid "glWindowPos3ivARB" GLint*))
   (define glWindowPos3sv (GL GLvoid "glWindowPos3svARB" GLshort*))

))
