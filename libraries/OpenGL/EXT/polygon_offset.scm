; ===========================================================================
; EXT_polygon_offset                                 (included in OpenGL 1.1)
;
;	Depth values may be offset on a per-primitive basis.
;
;	https://www.khronos.org/registry/OpenGL/extensions/EXT/EXT_polygon_offset.txt
;
; Version
;	$Date: 1995/06/17 03:34:49 $ $Revision: 1.12 $
;
; Overview
;	The depth values of fragments generated by rendering polygons are
;	displaced by an amount that is proportional to the maximum absolute
;	value of the depth slope of the polygon, measured and applied in window
;	coordinates.  This displacement allows lines (or points) and polygons
;	in the same plane to be rendered without interaction -- the lines
;	rendered either completely in front of or behind the polygons
;	(depending on the sign of the offset factor).  It also allows multiple
;	coplanar polygons to be rendered without interaction, if different
;	offset factors are used for each polygon.  Applications include
;	rendering hidden-line images, rendering solids with highlighted edges,
;	and applying `decals' to surfaces.
(define-library (OpenGL EXT polygon_offset)

; ---------------------------------------------------------------------------
; Dependencies
;	None
(import (scheme core) (OpenGL))

; ---------------------------------------------------------------------------
(export EXT_polygon_offset
    
; ---------------------------------------------------------------------------
; New Procedures and Functions
   ;PolygonOffsetEXT

; ---------------------------------------------------------------------------
; New Tokens
   ;POLYGON_OFFSET_EXT
   ;POLYGON_OFFSET_FACTOR_EXT
   ;POLYGON_OFFSET_BIAS_EXT
    
)
   
; ---------------------------------------------------------------------------
(begin
   (define EXT_polygon_offset (gl:QueryExtension "GL_EXT_polygon_offset"))

))
