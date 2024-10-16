; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_blend_func_separate.txt

; EXT_blend_func_separate                               (included in OpenGL 1.4)
;
; Version
;  Date: 04/06/1999  Version 1.3
;
; Number
;  173

(define-library (OpenGL EXT blend_func_separate)

(import (scheme core)
   (OpenGL platform))

(export  EXT_blend_func_separate

; ----------------------------
; New Procedures and Functions
;
   glBlendFuncSeparate

; ----------
; New Tokens
;
   GL_BLEND_DST_RGB
   GL_BLEND_SRC_RGB
   GL_BLEND_DST_ALPHA
   GL_BLEND_SRC_ALPHA
)

; ---------------------------------------------------------------------------------
(begin
   (define EXT_blend_func_separate (gl:QueryExtension "GL_EXT_blend_func_separate"))

   (setq GL gl:GetProcAddress)
   (define glBlendFuncSeparate (GL GLvoid "BlendFuncSeparateEXT" GLenum GLenum GLenum GLenum))

   (define GL_BLEND_DST_RGB                  #x80C8)
   (define GL_BLEND_SRC_RGB                  #x80C9)
   (define GL_BLEND_DST_ALPHA                #x80CA)
   (define GL_BLEND_SRC_ALPHA                #x80CB)

))
