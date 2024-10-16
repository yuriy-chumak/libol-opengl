; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_mirrored_repeat.txt

; ARB_texture_mirrored_repeat                               (included in OpenGL 1.4)
;
; Version
;  Last modified date: 2001/09/20
;
; Number
;  ARB Extension #21

(define-library (OpenGL ARB texture_mirrored_repeat)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_mirrored_repeat

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;

   GL_MIRRORED_REPEAT
)

; ------------------------------------------------------------------------------------------
(begin
   (define ARB_texture_mirrored_repeat (gl:QueryExtension "GL_ARB_texture_mirrored_repeat"))

   (define GL_MIRRORED_REPEAT                    #x8370)

))
