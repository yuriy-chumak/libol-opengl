; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_bgra.txt

; EXT_bgra                               (included in OpenGL 1.2)
;
; Version
;  Microsoft revision 1.0, May 19, 1997 (drewb)
;  $Date: 1999/04/03 08:40:34 $ $Revision: 1.4 $
;
; Number
;  129

(define-library (OpenGL EXT bgra)

(import (scheme core)
   (OpenGL platform))

(export  EXT_bgra

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_BGR
   GL_BGRA
)

; ----------------------------------------------------
(begin
   (define EXT_bgra (gl:QueryExtension "GL_EXT_bgra"))

   (define GL_BGR                 #x80E0)
   (define GL_BGRA                #x80E1)

))
