; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_blend_equation_separate.txt

; EXT_blend_squation_separate                               (included in OpenGL 2.0)
;
; Version
;  Date: 12/23/2003  Version 1.0
;
; Number
;  299

(define-library (OpenGL EXT blend_squation_separate)

(import (scheme core)
   (OpenGL platform))

(export  EXT_blend_squation_separate

; ----------------------------
; New Procedures and Functions
;
   glBlendEquationSeparate

; ----------
; New Tokens
;
   GL_BLEND_EQUATION_RGB
   GL_BLEND_EQUATION_ALPHA
)

; ---------------------------------------------------------------------------
(begin
   (define EXT_blend_squation_separate (gl:QueryExtension "GL_EXT_blend_squation_separate"))

   (setq GL gl:GetProcAddress)
   (define glBlendEquationSeparate (GL GLvoid "glBlendEquationSeparateEXT" GLenum GLenum))

   (define GL_BLEND_EQUATION_RGB    #x8009) ; same as BLEND_EQUATION
   (define GL_BLEND_EQUATION_ALPHA  #x883D)

))
