; https://registry.khronos.org/OpenGL/extensions/NV/NV_primitive_restart.txt

; NV_primitive_restart                              (included in OpenGL 3.1)
;
; Number
;  285

(define-library (OpenGL NV primitive_restart)

(import (scheme core)
   (OpenGL platform))

(export  NV_primitive_restart

; ----------------------------
; New Procedures and Functions
;
   glPrimitiveRestart
   glPrimitiveRestartIndex

; ----------
; New Tokens
;
   GL_PRIMITIVE_RESTART
   GL_PRIMITIVE_RESTART_INDEX
)

; --------------------------------------------------------------------
(begin
   (define NV_primitive_restart (gl:QueryExtension "GL_NV_primitive_restart"))

   (setq GL gl:GetProcAddress)
   (define glPrimitiveRestart (GL GLvoid "glPrimitiveRestartNV"))
   (define glPrimitiveRestartIndex (GL GLvoid "glPrimitiveRestartIndexNV" GLuint))

   (define GL_PRIMITIVE_RESTART                           #x8558)
   (define GL_PRIMITIVE_RESTART_INDEX                     #x8559)

))
