; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_pixel_buffer_object.txt

; ARB_pixel_buffer_object                               (included in OpenGL 2.1)
;
; Version
;  Last Modified Date: October 8, 2013
;  Revision: 1.2
;
; Overview
;  ARB Extension #42

(define-library (OpenGL ARB pixel_buffer_object)

(import (scheme core)
   (OpenGL platform))

(export  ARB_pixel_buffer_object

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_PIXEL_PACK_BUFFER
   GL_PIXEL_UNPACK_BUFFER

   GL_PIXEL_PACK_BUFFER_BINDING
   GL_PIXEL_UNPACK_BUFFER_BINDING
)

; ----------------------------------------------------------------------------------
(begin
   (define ARB_pixel_buffer_object (gl:QueryExtension "GL_ARB_pixel_buffer_object"))

   (define GL_PIXEL_PACK_BUFFER                        #x88EB)
   (define GL_PIXEL_UNPACK_BUFFER                      #x88EC)

   (define GL_PIXEL_PACK_BUFFER_BINDING                #x88ED)
   (define GL_PIXEL_UNPACK_BUFFER_BINDING              #x88EF)

))
