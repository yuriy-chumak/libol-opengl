; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_blend_minmax.txt

; EXT_blend_minmax                               (included in OpenGL 1.4)
;
; Version
;  Last Modified Date: September 17, 2009
;  Version:            1.5
;
; Number
;  OpenGL Extension #37
;  OpenGL ES Extension #65

(define-library (OpenGL EXT blend_minmax)

(import (scheme core)
   (OpenGL platform))

(export  EXT_blend_minmax

; ----------------------------
; New Procedures and Functions
;
   glBlendEquation

; ----------
; New Tokens
;
   GL_FUNC_ADD
   GL_MIN
   GL_MAX
   GL_BLEND_EQUATION
)

; ---------------------------------------------------------------------------
(begin
   (define EXT_blend_minmax (gl:QueryExtension "GL_EXT_blend_minmax"))

   (setq GL gl:GetProcAddress)
   (define glBlendEquation (GL GLvoid "glBlendEquationEXT" GLenum))

   (define GL_FUNC_ADD                     #x8006)
   (define GL_MIN                          #x8007)
   (define GL_MAX                          #x8008)
   (define GL_BLEND_EQUATION               #x8009)

))
