; https://registry.khronos.org/OpenGL/extensions/EXT/WGL_EXT_pixel_format.txt

; EXT_extensions_string
;
; Version
;  $Date: 1999/04/03 08:41:12 $ $Revision: 1.3 $
;
; Number
;  168

(define-library (OpenGL WGL EXT extensions_string)

(import (scheme core)
   (OpenGL platform))

(export  EXT_extensions_string

; ----------------------------
; New Procedures and Functions
;
   wglGetExtensionsString

; ----------
; New Tokens
;
;  none
)

; ---------------------------------------------------------------------
(begin
   (define EXT_extensions_string (gl:QueryExtension "WGL_EXT_extensions_string"))
   (setq GL gl:GetProcAddress)

   (define wglGetExtensionsString (GL type-string "wglGetExtensionsStringEXT"))

))
