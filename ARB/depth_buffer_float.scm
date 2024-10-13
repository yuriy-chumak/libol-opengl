; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_depth_buffer_float.txt

; ARB_depth_buffer_float
;
; Version
;  Last Modified Date: October 18, 2012
;  Revision: 7
;
; Number
;  ARB Extension #43

(define-library (OpenGL ARB depth_buffer_float)

(import (scheme core)
   (OpenGL platform))

(export  ARB_depth_buffer_float

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
;  Accepted by the <internalformat> parameter of TexImage1D, TexImage2D,
;  TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorageEXT,
;  and returned in the <data> parameter of GetTexLevelParameter and
;  GetRenderbufferParameterivEXT:
   DEPTH_COMPONENT32F
   DEPTH32F_STENCIL8

;  Accepted by the <type> parameter of DrawPixels, ReadPixels, TexImage1D,
;  TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and
;  GetTexImage:
   FLOAT_32_UNSIGNED_INT_24_8_REV
)

; --------------------------------------------------------------------------------
(begin
   (define ARB_depth_buffer_float (gl:QueryExtension "GL_ARB_depth_buffer_float"))

   (define DEPTH_COMPONENT32F              #x8CAC)
   (define DEPTH32F_STENCIL8               #x8CAD)
   (define FLOAT_32_UNSIGNED_INT_24_8_REV  #x8DAD)

))
