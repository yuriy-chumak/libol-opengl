; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_shadow.txt
; ARB_shadow                               (included in OpenGL 1.4)
;
; Version
;  Last Modified Date: 21 January 2002
;
; Number
;  ARB Extension #23

(define-library (OpenGL ARB shadow)

(import (scheme core)
   (OpenGL platform))

(export  ARB_shadow

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_TEXTURE_COMPARE_MODE
   GL_TEXTURE_COMPARE_FUNC

   GL_COMPARE_R_TO_TEXTURE
)

(import (OpenGL ARB depth_texture))
; ---------------------------------------------------------------------------
(begin
   (define ARB_shadow (gl:QueryExtension "GL_ARB_shadow"))

   (define GL_TEXTURE_COMPARE_MODE    #x884C)
   (define GL_TEXTURE_COMPARE_FUNC    #x884D)
   (define GL_COMPARE_R_TO_TEXTURE    #x884E)

))
