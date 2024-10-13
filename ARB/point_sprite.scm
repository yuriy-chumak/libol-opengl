; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_point_sprite.txt

; ARB_point_sprite                               (included in OpenGL 2.0)
;
; Version
;  Last Modified Date:  July 22, 2003
;  Revision:            7
;
; Overview
;  ARB Extension #35

(define-library (OpenGL ARB point_sprite)

(import (scheme core)
   (OpenGL platform))

(export  ARB_point_sprite

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_POINT_SPRITE
   GL_COORD_REPLACE
)

; ---------------------------------------------------------------------------
(begin
   (define ARB_point_sprite (gl:QueryExtension "GL_ARB_point_sprite"))

   (define POINT_SPRITE   #x8861)
   (define COORD_REPLACE  #x8862)
))
