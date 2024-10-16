; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_polygon_offset.txt

; EXT_polygon_offset                               (included in OpenGL 1.1)
;
; Version
;  $Date: 1995/06/17 03:34:49 $ $Revision: 1.12 $
;
; Number
;  3

(define-library (OpenGL EXT polygon_offset)

(import (scheme core)
   (OpenGL platform))

(export  EXT_polygon_offset

; ----------------------------
; New Procedures and Functions
;
   glPolygonOffset

; ----------
; New Tokens
;
   GL_POLYGON_OFFSET
   GL_POLYGON_OFFSET_FACTOR
   GL_POLYGON_OFFSET_BIAS
)

; ------------------------------------------------------------------------
(begin
   (define EXT_polygon_offset (gl:QueryExtension "GL_EXT_polygon_offset"))

   (setq GL gl:GetProcAddress)
   (define glPolygonOffset (GL GLvoid "glPolygonOffsetEXT" GLfloat GLfloat))

   (define GL_POLYGON_OFFSET               #x8037)
   (define GL_POLYGON_OFFSET_FACTOR        #x8038)
   (define GL_POLYGON_OFFSET_BIAS          #x8039)

))
