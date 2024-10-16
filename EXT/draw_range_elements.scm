; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_polygon_offset.txt

; EXT_draw_range_elements                          (included in OpenGL 1.2)
;
; Version
;  $Date: 1995/06/17 03:34:49 $ $Revision: 1.12 $
;
; Number
;  3

(define-library (OpenGL EXT draw_range_elements)

(import (scheme core)
   (OpenGL platform))

(export  EXT_draw_range_elements

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

; ---------------------------------------------------------------------------------
(begin
   (define EXT_draw_range_elements (gl:QueryExtension "GL_EXT_draw_range_elements"))

   (setq GL gl:GetProcAddress)
   (define glPolygonOffset (GL GLvoid "glPolygonOffsetEXT" GLfloat GLfloat))

   (define GL_POLYGON_OFFSET               #x8037)
   (define GL_POLYGON_OFFSET_FACTOR        #x8038)
   (define GL_POLYGON_OFFSET_BIAS          #x8039)

))
