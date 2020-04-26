; ===========================================================================
; SGIS_generate_mipmap                                (included in OpenGL 1.4)
;
;	https://www.khronos.org/registry/OpenGL/extensions/SGIS/SGIS_generate_mipmap.txt
;
; Version
;
; Overview
;
(define-library (OpenGL SGIS generate_mipmap)

; ---------------------------------------------------------------------------
; Dependencies
(import (scheme core)
        (OpenGL platform))

;(import (OpenGL EXT texture)) ; note: fully integrated into OpenGL 1.1
; ---------------------------------------------------------------------------
(export SGIS_generate_mipmap

; ---------------------------------------------------------------------------
; New Procedures and Functions

; ---------------------------------------------------------------------------
; New Tokens
   GL_GENERATE_MIPMAP_SGIS
   GL_GENERATE_MIPMAP_HINT_SGIS
)

; ---------------------------------------------------------------------------
(begin
   (define SGIS_generate_mipmap (gl:QueryExtension "GL_SGIS_generate_mipmap"))

   (define GL_GENERATE_MIPMAP_SGIS      #x8191)
   (define GL_GENERATE_MIPMAP_HINT_SGIS #x8192)

))
