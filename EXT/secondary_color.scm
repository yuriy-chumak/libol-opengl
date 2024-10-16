; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_secondary_color.txt

; EXT_secondary_color                               (included in OpenGL 1.4)
;
; Version
;  NVIDIA Date: February 24, 2000
;  $Date: 1999/06/21 19:57:47 $ $Revision: 1.8 $
;
; Number
;  145

(define-library (OpenGL EXT secondary_color)

(import (scheme core)
   (OpenGL platform))

(export  EXT_secondary_color

; ----------------------------
; New Procedures and Functions
;
   glSecondaryColor3b
   glSecondaryColor3bv
   glSecondaryColor3d
   glSecondaryColor3dv
   glSecondaryColor3f
   glSecondaryColor3fv
   glSecondaryColor3i
   glSecondaryColor3iv
   glSecondaryColor3s
   glSecondaryColor3sv
   glSecondaryColor3ub
   glSecondaryColor3ubv
   glSecondaryColor3ui
   glSecondaryColor3uiv
   glSecondaryColor3us
   glSecondaryColor3usv
   glSecondaryColorPointer

; ----------
; New Tokens
;
   GL_COLOR_SUM
   GL_CURRENT_SECONDARY_COLOR
   GL_SECONDARY_COLOR_ARRAY_SIZE
   GL_SECONDARY_COLOR_ARRAY_TYPE
   GL_SECONDARY_COLOR_ARRAY_STRIDE
   GL_SECONDARY_COLOR_ARRAY_POINTER
   GL_SECONDARY_COLOR_ARRAY
)

; -------------------------------------------------------------------------
(begin
   (define EXT_secondary_color (gl:QueryExtension "GL_EXT_secondary_color"))

   (setq GL gl:GetProcAddress)
   (define glSecondaryColor3b (GL GLvoid "glSecondaryColor3bEXT" GLbyte GLbyte GLbyte))
   (define glSecondaryColor3bv (GL GLvoid "glSecondaryColor3bvEXT" GLbyte*))
   (define glSecondaryColor3d (GL GLvoid "glSecondaryColor3dEXT" GLdouble GLdouble GLdouble))
   (define glSecondaryColor3dv (GL GLvoid "glSecondaryColor3dvEXT" GLdouble*))
   (define glSecondaryColor3f (GL GLvoid "glSecondaryColor3fEXT" GLfloat GLfloat GLfloat))
   (define glSecondaryColor3fv (GL GLvoid "glSecondaryColor3fvEXT" GLfloat*))
   (define glSecondaryColor3i (GL GLvoid "glSecondaryColor3iEXT" GLint GLint GLint))
   (define glSecondaryColor3iv (GL GLvoid "glSecondaryColor3ivEXT" GLint*))
   (define glSecondaryColor3s (GL GLvoid "glSecondaryColor3sEXT" GLshort GLshort GLshort))
   (define glSecondaryColor3sv (GL GLvoid "glSecondaryColor3svEXT" GLshort*))
   (define glSecondaryColor3ub (GL GLvoid "glSecondaryColor3ubEXT" GLubyte GLubyte GLubyte))
   (define glSecondaryColor3ubv (GL GLvoid "glSecondaryColor3ubvEXT" GLubyte*))
   (define glSecondaryColor3ui (GL GLvoid "glSecondaryColor3uiEXT" GLuint GLuint GLuint))
   (define glSecondaryColor3uiv (GL GLvoid "glSecondaryColor3uivEXT" GLuint*))
   (define glSecondaryColor3us (GL GLvoid "glSecondaryColor3usEXT" GLushort GLushort GLushort))
   (define glSecondaryColor3usv (GL GLvoid "glSecondaryColor3usvEXT" GLushort*))
   (define glSecondaryColorPointer (GL GLvoid "glSecondaryColorPointerEXT" GLint GLenum GLsizei fft-any))

   (define GL_COLOR_SUM                       #x8458)
   (define GL_CURRENT_SECONDARY_COLOR         #x8459)
   (define GL_SECONDARY_COLOR_ARRAY_SIZE      #x845A)
   (define GL_SECONDARY_COLOR_ARRAY_TYPE      #x845B)
   (define GL_SECONDARY_COLOR_ARRAY_STRIDE    #x845C)
   (define GL_SECONDARY_COLOR_ARRAY_POINTER   #x845D)
   (define GL_SECONDARY_COLOR_ARRAY           #x845E)

))
