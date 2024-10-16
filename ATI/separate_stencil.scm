; https://registry.khronos.org/OpenGL/extensions/ATI/ATI_separate_stencil.txt

; ATI_separate_stencil                               (included in OpenGL 2.0)
;
; Version
;  Date: 11/04/2006
;  Revision: 1.1
;
; Number
;  289

(define-library (OpenGL ATI separate_stencil)

(import (scheme core)
   (OpenGL platform))

(export  ATI_separate_stencil

; ----------------------------
; New Procedures and Functions
;
   glStencilOpSeparate  ;( GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)
   glStencilFuncSeparate;( GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)

; ----------
; New Tokens
;
;  Accepted by the <fail>, <zfail>, and <zpass> parameters of
;  StencilOpSeparateATI:
;  KEEP
;  ZERO
;  REPLACE
;  INCR
;  DECR
;  INVERT

;  Accepted by the <frontfunc> and <backfunc> parameters of
;  StencilFuncSeparateATI:
;  NEVER
;  LESS
;  LEQUAL
;  GREATER
;  GEQUAL
;  EQUAL
;  NOTEQUAL
;  ALWAYS

;  Accepted by the <face> parameter of StencilOpSeparateATI:
;  FRONT
;  BACK
;  FRONT_AND_BACK

;  Accepted by the <pname> parameter of GetIntegerv:
   STENCIL_BACK_FUNC
   STENCIL_BACK_FAIL
   STENCIL_BACK_PASS_DEPTH_FAIL
   STENCIL_BACK_PASS_DEPTH_PASS
)

; ---------------------------------------------------------------------------
(begin
   (define ATI_separate_stencil (gl:QueryExtension "GL_ATI_separate_stencil"))

   (setq GL gl:GetProcAddress)
   (define glStencilOpSeparate   (GL GLvoid "glStencilOpSeparate" GLenum GLenum GLenum GLenum))
   (define glStencilFuncSeparate (GL GLvoid "glStencilFuncSeparate" GLenum GLenum GLint GLuint))

   (define STENCIL_BACK_FUNC                            #x8800)
   (define STENCIL_BACK_FAIL                            #x8801)
   (define STENCIL_BACK_PASS_DEPTH_FAIL                 #x8802)
   (define STENCIL_BACK_PASS_DEPTH_PASS                 #x8803)

))
