; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_blend_color.txt

; EXT_blend_color                               (included in OpenGL 1.4)
;
; Version
;  $Date: 1995/03/31 04:40:19 $ $Revision: 1.7 $
;
; Number
;  2

(define-library (OpenGL EXT blend_color)

(import (scheme core)
   (OpenGL platform))

(export  EXT_blend_color

; ----------------------------
; New Procedures and Functions
;
   glBlendColor

; ----------
; New Tokens
;
   GL_CONSTANT_COLOR
   GL_ONE_MINUS_CONSTANT_COLOR
   GL_CONSTANT_ALPHA
   GL_ONE_MINUS_CONSTANT_ALPHA
   GL_BLEND_COLOR
)

; ------------------------------------------------------------------
(begin
   (define EXT_blend_color (gl:QueryExtension "GL_EXT_blend_color"))

   (setq GL gl:GetProcAddress)
   (define glBlendColor (GL GLvoid "glBlendColorEXT" GLclampf GLclampf GLclampf GLclampf))

   (define GL_CONSTANT_COLOR               #x8001)
   (define GL_ONE_MINUS_CONSTANT_COLOR     #x8002)
   (define GL_CONSTANT_ALPHA               #x8003)
   (define GL_ONE_MINUS_CONSTANT_ALPHA     #x8004)
   (define GL_BLEND_COLOR                  #x8005)

))
