; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_multitexture.txt

; ARB_multitexture                               (included in OpenGL 1.3)
;
; Version
;  
; Number
;

(define-library (OpenGL ARB multitexture)

(import (scheme core)
   (OpenGL platform))

(export  ARB_multitexture

; ----------------------------
; New Procedures and Functions
;
	glActiveTexture ; void GLenum texture)
	glClientActiveTexture ; void GLenum texture)

	glMultiTexCoord1d ; void GLenum GLdouble s)
	glMultiTexCoord1dv ; void GLenum GLdouble*)
	glMultiTexCoord1f ; void GLenum GLfloat s)
	glMultiTexCoord1fv ; void GLenum GLfloat*)
	glMultiTexCoord1i ; void GLenum GLint s)
	glMultiTexCoord1iv ; void GLenum GLint*)
	glMultiTexCoord1s ; void GLenum GLshort s)
	glMultiTexCoord1sv ; void GLenum GLshort*)
	glMultiTexCoord2d ; void GLenum GLdouble GLdouble t)
	glMultiTexCoord2dv ; void GLenum GLdouble*)
	glMultiTexCoord2f ; void GLenum GLfloat GLfloat t)
	glMultiTexCoord2fv ; void GLenum GLfloat*)
	glMultiTexCoord2i ; void GLenum GLint GLint t)
	glMultiTexCoord2iv ; void GLenum GLint*)
	glMultiTexCoord2s ; void GLenum GLshort GLshort t)
	glMultiTexCoord2sv ; void GLenum GLshort*)
	glMultiTexCoord3d ; void GLenum GLdouble GLdouble GLdouble))
	glMultiTexCoord3dv ; void GLenum GLdouble*)
	glMultiTexCoord3f ; void GLenum GLfloat GLfloat GLfloat))
	glMultiTexCoord3fv ; void GLenum GLfloat*)
	glMultiTexCoord3i ; void GLenum GLint GLint GLint))
	glMultiTexCoord3iv ; void GLenum GLint*)
	glMultiTexCoord3s ; void GLenum GLshort GLshort GLshort))
	glMultiTexCoord3sv ; void GLenum GLshort*)
	glMultiTexCoord4d ; void GLenum GLdouble GLdouble GLdouble GLdouble
	glMultiTexCoord4dv ; void GLenum GLdouble*)
	glMultiTexCoord4f ; void GLenum GLfloat GLfloat GLfloat GLfloat
	glMultiTexCoord4fv ; void GLenum GLfloat*)
	glMultiTexCoord4i ; void GLenum GLint GLint GLint GLint
	glMultiTexCoord4iv ; void GLenum GLint*)
	glMultiTexCoord4s ; void GLenum GLshort GLshort GLshort GLshort
	glMultiTexCoord4sv ; void GLenum GLshort*)

; ----------
; New Tokens
;
	GL_ACTIVE_TEXTURE
	GL_CLIENT_ACTIVE_TEXTURE
	GL_MAX_TEXTURE_UNITS

	GL_TEXTURE0
	GL_TEXTURE1
	GL_TEXTURE2
	GL_TEXTURE3
	GL_TEXTURE4
	GL_TEXTURE5
	GL_TEXTURE6
	GL_TEXTURE7
	GL_TEXTURE8
	GL_TEXTURE9
	GL_TEXTURE10
	GL_TEXTURE11
	GL_TEXTURE12
	GL_TEXTURE13
	GL_TEXTURE14
	GL_TEXTURE15
	GL_TEXTURE16
	GL_TEXTURE17
	GL_TEXTURE18
	GL_TEXTURE19
	GL_TEXTURE20
	GL_TEXTURE21
	GL_TEXTURE22
	GL_TEXTURE23
	GL_TEXTURE24
	GL_TEXTURE25
	GL_TEXTURE26
	GL_TEXTURE27
	GL_TEXTURE28
	GL_TEXTURE29
	GL_TEXTURE30
	GL_TEXTURE31
)

; --------------------------------------------------------------------
(begin
   (define ARB_multitexture (gl:QueryExtension "GL_ARB_multitexture"))
   (setq GL gl:GetProcAddress)

	(define glActiveTexture (GL GLvoid "glActiveTextureARB" GLenum))
	(define glClientActiveTexture (GL GLvoid "glClientActiveTextureARB" GLenum))
	(define glMultiTexCoord1d (GL GLvoid "glMultiTexCoord1dARB" GLenum GLdouble))
	(define glMultiTexCoord1dv (GL GLvoid "glMultiTexCoord1dvARB" GLenum GLdouble*))
	(define glMultiTexCoord1f (GL GLvoid "glMultiTexCoord1fARB" GLenum GLfloat))
	(define glMultiTexCoord1fv (GL GLvoid "glMultiTexCoord1fvARB" GLenum GLfloat*))
	(define glMultiTexCoord1i (GL GLvoid "glMultiTexCoord1iARB" GLenum GLint))
	(define glMultiTexCoord1iv (GL GLvoid "glMultiTexCoord1ivARB" GLenum GLint*))
	(define glMultiTexCoord1s (GL GLvoid "glMultiTexCoord1sARB" GLenum GLshort))
	(define glMultiTexCoord1sv (GL GLvoid "glMultiTexCoord1svARB" GLenum GLshort*))
	(define glMultiTexCoord2d (GL GLvoid "glMultiTexCoord2dARB" GLenum GLdouble GLdouble))
	(define glMultiTexCoord2dv (GL GLvoid "glMultiTexCoord2dvARB" GLenum GLdouble*))
	(define glMultiTexCoord2f (GL GLvoid "glMultiTexCoord2fARB" GLenum GLfloat GLfloat))
	(define glMultiTexCoord2fv (GL GLvoid "glMultiTexCoord2fvARB" GLenum GLfloat*))
	(define glMultiTexCoord2i (GL GLvoid "glMultiTexCoord2iARB" GLenum GLint GLint))
	(define glMultiTexCoord2iv (GL GLvoid "glMultiTexCoord2ivARB" GLenum GLint*))
	(define glMultiTexCoord2s (GL GLvoid "glMultiTexCoord2sARB" GLenum GLshort GLshort))
	(define glMultiTexCoord2sv (GL GLvoid "glMultiTexCoord2svARB" GLenum GLshort*))
	(define glMultiTexCoord3d (GL GLvoid "glMultiTexCoord3dARB" GLenum GLdouble GLdouble GLdouble))
	(define glMultiTexCoord3dv (GL GLvoid "glMultiTexCoord3dvARB" GLenum GLdouble*))
	(define glMultiTexCoord3f (GL GLvoid "glMultiTexCoord3fARB" GLenum GLfloat GLfloat GLfloat))
	(define glMultiTexCoord3fv (GL GLvoid "glMultiTexCoord3fvARB" GLenum GLfloat*))
	(define glMultiTexCoord3i (GL GLvoid "glMultiTexCoord3iARB" GLenum GLint GLint GLint))
	(define glMultiTexCoord3iv (GL GLvoid "glMultiTexCoord3ivARB" GLenum GLint*))
	(define glMultiTexCoord3s (GL GLvoid "glMultiTexCoord3sARB" GLenum GLshort GLshort GLshort))
	(define glMultiTexCoord3sv (GL GLvoid "glMultiTexCoord3svARB" GLenum GLshort*))
	(define glMultiTexCoord4d (GL GLvoid "glMultiTexCoord4dARB" GLenum GLdouble GLdouble GLdouble GLdouble))
	(define glMultiTexCoord4dv (GL GLvoid "glMultiTexCoord4dvARB" GLenum GLdouble*))
	(define glMultiTexCoord4f (GL GLvoid "glMultiTexCoord4fARB" GLenum GLfloat GLfloat GLfloat GLfloat))
	(define glMultiTexCoord4fv (GL GLvoid "glMultiTexCoord4fvARB" GLenum GLfloat*))
	(define glMultiTexCoord4i (GL GLvoid "glMultiTexCoord4iARB" GLenum GLint GLint GLint GLint))
	(define glMultiTexCoord4iv (GL GLvoid "glMultiTexCoord4ivARB" GLenum GLint*))
	(define glMultiTexCoord4s (GL GLvoid "glMultiTexCoord4sARB" GLenum GLshort GLshort GLshort GLshort))
	(define glMultiTexCoord4sv (GL GLvoid "glMultiTexCoord4svARB" GLenum GLshort*))

	(define GL_ACTIVE_TEXTURE #x84E0)
	(define GL_CLIENT_ACTIVE_TEXTURE #x84E1)
	(define GL_MAX_TEXTURE_UNITS #x84E2)
	(define GL_TEXTURE0 #x84C0)
	(define GL_TEXTURE1 #x84C1)
	(define GL_TEXTURE2 #x84C2)
	(define GL_TEXTURE3 #x84C3)
	(define GL_TEXTURE4 #x84C4)
	(define GL_TEXTURE5 #x84C5)
	(define GL_TEXTURE6 #x84C6)
	(define GL_TEXTURE7 #x84C7)
	(define GL_TEXTURE8 #x84C8)
	(define GL_TEXTURE9 #x84C9)
	(define GL_TEXTURE10 #x84CA)
	(define GL_TEXTURE11 #x84CB)
	(define GL_TEXTURE12 #x84CC)
	(define GL_TEXTURE13 #x84CD)
	(define GL_TEXTURE14 #x84CE)
	(define GL_TEXTURE15 #x84CF)
	(define GL_TEXTURE16 #x84D0)
	(define GL_TEXTURE17 #x84D1)
	(define GL_TEXTURE18 #x84D2)
	(define GL_TEXTURE19 #x84D3)
	(define GL_TEXTURE20 #x84D4)
	(define GL_TEXTURE21 #x84D5)
	(define GL_TEXTURE22 #x84D6)
	(define GL_TEXTURE23 #x84D7)
	(define GL_TEXTURE24 #x84D8)
	(define GL_TEXTURE25 #x84D9)
	(define GL_TEXTURE26 #x84DA)
	(define GL_TEXTURE27 #x84DB)
	(define GL_TEXTURE28 #x84DC)
	(define GL_TEXTURE29 #x84DD)
	(define GL_TEXTURE30 #x84DE)
	(define GL_TEXTURE31 #x84DF)

))
