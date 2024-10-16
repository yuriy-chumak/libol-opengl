; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_non_power_of_two.txt

; ARB_texture_non_power_of_two                               (included in OpenGL 2.0)
;
; Version
;  Date: November 4, 2006
;  Revision: 1.0
;
; Number
;  ARB Extension #34

(define-library (OpenGL ARB texture_non_power_of_two)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_non_power_of_two

; ---------------------------------------------------------------------------
; New Procedures and Functions
;
;  none

; ---------------------------------------------------------------------------
; New Tokens
;
;  none
)

; --------------------------------------------------------------------------------------------
(begin
   (define ARB_texture_non_power_of_two (gl:QueryExtension "GL_ARB_texture_non_power_of_two"))

))
