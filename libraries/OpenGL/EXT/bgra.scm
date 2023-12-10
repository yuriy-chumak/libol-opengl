; ===========================================================================
; EXT_bgra                                           (included in OpenGL 1.2)
;
;  Pixel data may be specified in BGR or BGRA order,
;  to match the pixel format of Windows bitmaps.
;
;  https://www.khronos.org/registry/OpenGL/extensions/EXT/EXT_bgra.txt
;
; Version
;  Microsoft revision 1.0, May 19, 1997 (drewb)
;  $Date: 1999/04/03 08:40:34 $ $Revision: 1.4 $
;
; Overview
;  EXT_bgra extends the list of host-memory color formats.
;  Specifically, it provides formats which match the memory layout of
;  Windows DIBs so that applications can use the same data in both
;  Windows API calls and OpenGL pixel API calls.
(define-library (OpenGL EXT bgra)

(import (scheme core)
   (OpenGL platform))

; ---------------------------------------------------------------------------
; Dependencies
;  None

; ---------------------------------------------------------------------------
(export EXT_bgra

; ---------------------------------------------------------------------------
; New Procedures and Functions
;  None

; ---------------------------------------------------------------------------
; New Tokens

   GL_BGR
   GL_BGRA

)

; ---------------------------------------------------------------------------
(begin
   (define EXT_bgra (gl:QueryExtension "GL_EXT_bgra"))

   (define GL_BGR                 #x80E0)
   (define GL_BGRA                #x80E1)

))
