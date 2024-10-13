; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_fragment_shader.txt

; ARB_fragment_shader                               (included in OpenGL 2.0)
;
; Version
;  Last Modified Date: December 12, 2006
;  Author Revision: 0.80
;
; Number
;  ARB Extension #32

(define-library (OpenGL ARB fragment_shader)

(import (scheme core)
   (OpenGL platform))

(export  ARB_fragment_shader

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_FRAGMENT_SHADER

   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
   GL_MAX_TEXTURE_COORDS
   GL_MAX_TEXTURE_IMAGE_UNITS

   GL_FRAGMENT_SHADER_DERIVATIVE_HINT
)

(import (OpenGL ARB shader_objects))
; --------------------------------------------------------------------------
(begin
   (define ARB_fragment_shader (gl:QueryExtension "GL_ARB_fragment_shader"))

   (define GL_FRAGMENT_SHADER                  #x8B30)
   (define GL_MAX_FRAGMENT_UNIFORM_COMPONENTS  #x8B49)
   (define GL_MAX_TEXTURE_COORDS               #x8871)
   (define GL_MAX_TEXTURE_IMAGE_UNITS          #x8872)
   (define GL_FRAGMENT_SHADER_DERIVATIVE_HINT  #x8B8B)

))
