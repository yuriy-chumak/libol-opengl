; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_separate_specular_color.txt

; EXT_separate_specular_color                               (included in OpenGL 1.2)
;
; Version
;  $Date: 1997/10/05 00:16:23 $ $Revision: 1.3 $
;
; Number
;  144

(define-library (OpenGL EXT separate_specular_color)

(import (scheme core)
   (OpenGL platform))

(export  EXT_separate_specular_color

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_LIGHT_MODEL_COLOR_CONTROL
   GL_SINGLE_COLOR
   GL_SEPARATE_SPECULAR_COLOR
)

; ------------------------------------------------------------------------------------------
(begin
   (define EXT_separate_specular_color (gl:QueryExtension "GL_EXT_separate_specular_color"))

   (define GL_LIGHT_MODEL_COLOR_CONTROL  #x81F8)
   (define GL_SINGLE_COLOR               #x81F9)
   (define GL_SEPARATE_SPECULAR_COLOR    #x81FA)

))
