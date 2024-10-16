; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_packed_pixels.txt

; EXT_packed_pixels                               (included in OpenGL 1.2)
;
; Version
;  $Date: 1997/09/22 23:23:58 $ $Revision: 1.21 $
;
; Number
;  23

(define-library (OpenGL EXT packed_pixels)

(import (scheme core)
   (OpenGL platform))

(export  EXT_packed_pixels

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_UNSIGNED_BYTE_3_3_2
   GL_UNSIGNED_SHORT_4_4_4_4
   GL_UNSIGNED_SHORT_5_5_5_1
   GL_UNSIGNED_INT_8_8_8_8
   GL_UNSIGNED_INT_10_10_10_2
)

; ----------------------------------------------------------------------
(begin
   (define EXT_packed_pixels (gl:QueryExtension "GL_EXT_packed_pixels"))

   (define GL_UNSIGNED_BYTE_3_3_2         #x8032)
   (define GL_UNSIGNED_SHORT_4_4_4_4      #x8033)
   (define GL_UNSIGNED_SHORT_5_5_5_1      #x8034)
   (define GL_UNSIGNED_INT_8_8_8_8        #x8035)
   (define GL_UNSIGNED_INT_10_10_10_2     #x8036)

))
