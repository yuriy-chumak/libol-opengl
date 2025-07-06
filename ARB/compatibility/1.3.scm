(define-library (OpenGL ARB compatibility 1.3)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_1_3_DEPRECATED

;; F.1 ARB_texture_compression
   GL_COMPRESSED_ALPHA
   GL_COMPRESSED_LUMINANCE
   GL_COMPRESSED_LUMINANCE_ALPHA
   GL_COMPRESSED_INTENSITY


;; F.2 ARB_texture_cube_map
   GL_NORMAL_MAP
   GL_REFLECTION_MAP

;; F.3 ARB_multisample

   GLX_SAMPLE_BUFFERS
   GLX_SAMPLES

;; F.4 ARB_multitexture
   glClientActiveTexture
   glMultiTexCoord1d
   glMultiTexCoord1dv
   glMultiTexCoord1f
   glMultiTexCoord1fv
   glMultiTexCoord1i
   glMultiTexCoord1iv
   glMultiTexCoord1s
   glMultiTexCoord1sv
   glMultiTexCoord2d
   glMultiTexCoord2dv
   glMultiTexCoord2f
   glMultiTexCoord2fv
   glMultiTexCoord2i
   glMultiTexCoord2iv
   glMultiTexCoord2s
   glMultiTexCoord2sv
   glMultiTexCoord3d
   glMultiTexCoord3dv
   glMultiTexCoord3f
   glMultiTexCoord3fv
   glMultiTexCoord3i
   glMultiTexCoord3iv
   glMultiTexCoord3s
   glMultiTexCoord3sv
   glMultiTexCoord4d
   glMultiTexCoord4dv
   glMultiTexCoord4f
   glMultiTexCoord4fv
   glMultiTexCoord4i
   glMultiTexCoord4iv
   glMultiTexCoord4s
   glMultiTexCoord4sv

   GL_CLIENT_ACTIVE_TEXTURE
   GL_MAX_TEXTURE_UNITS

;; F.5 ARB_texture_env_add
   ; None

;; F.6 ARB_texture_env_combine
   GL_COMBINE_RGB
   GL_COMBINE_ALPHA
   GL_SOURCE0_RGB
   GL_SOURCE1_RGB
   GL_SOURCE2_RGB
   GL_SOURCE0_ALPHA
   GL_SOURCE1_ALPHA
   GL_SOURCE2_ALPHA
   GL_OPERAND0_RGB
   GL_OPERAND1_RGB
   GL_OPERAND2_RGB
   GL_OPERAND0_ALPHA
   GL_OPERAND1_ALPHA
   GL_OPERAND2_ALPHA
   GL_RGB_SCALE
   GL_ADD_SIGNED
   GL_INTERPOLATE
   GL_SUBTRACT
   GL_CONSTANT
   GL_PRIMARY_COLOR
   GL_PREVIOUS

;; F.7 ARB_texture_env_dot3
   GL_DOT3_RGB
   GL_DOT3_RGBA

;; F.8 ARB_texture_border_clamp

;; F.9 ARB_transpose_matrix
   glLoadTransposeMatrixf
   glLoadTransposeMatrixd
   glMultTransposeMatrixf
   glMultTransposeMatrixd

   GL_TRANSPOSE_MODELVIEW_MATRIX
   GL_TRANSPOSE_PROJECTION_MATRIX
   GL_TRANSPOSE_TEXTURE_MATRIX
   GL_TRANSPOSE_COLOR_MATRIX
)

; ============================================================================
(begin
   (define GL_VERSION_1_3_DEPRECATED 1)

   (setq GL gl:GetProcAddress)

 ; F.1 ARB_texture_compression

   (define GL_COMPRESSED_ALPHA                #x84E9)
   (define GL_COMPRESSED_LUMINANCE            #x84EA)
   (define GL_COMPRESSED_LUMINANCE_ALPHA      #x84EB)
   (define GL_COMPRESSED_INTENSITY            #x84EC)

 ; F.2 ARB_texture_cube_map
   (define GL_NORMAL_MAP                      #x8511)
   (define GL_REFLECTION_MAP                  #x8512)

 ; F.3 ARB_multisample

   (define GLX_SAMPLE_BUFFERS                 100000)
   (define GLX_SAMPLES                        100001)

 ; F.4 ARB_multitexture
   (define glClientActiveTexture (GL GLvoid "glClientActiveTexture" GLenum))
   (define glMultiTexCoord1d (GL GLvoid "glMultiTexCoord1d" GLenum GLdouble))
   (define glMultiTexCoord1dv (GL GLvoid "glMultiTexCoord1dv" GLenum GLdouble*))
   (define glMultiTexCoord1f (GL GLvoid "glMultiTexCoord1f" GLenum GLfloat))
   (define glMultiTexCoord1fv (GL GLvoid "glMultiTexCoord1fv" GLenum GLfloat*))
   (define glMultiTexCoord1i (GL GLvoid "glMultiTexCoord1i" GLenum GLint))
   (define glMultiTexCoord1iv (GL GLvoid "glMultiTexCoord1iv" GLenum GLint*))
   (define glMultiTexCoord1s (GL GLvoid "glMultiTexCoord1s" GLenum GLshort))
   (define glMultiTexCoord1sv (GL GLvoid "glMultiTexCoord1sv" GLenum GLshort*))
   (define glMultiTexCoord2d (GL GLvoid "glMultiTexCoord2d" GLenum GLdouble GLdouble))
   (define glMultiTexCoord2dv (GL GLvoid "glMultiTexCoord2dv" GLenum GLdouble*))
   (define glMultiTexCoord2f (GL GLvoid "glMultiTexCoord2f" GLenum GLfloat GLfloat))
   (define glMultiTexCoord2fv (GL GLvoid "glMultiTexCoord2fv" GLenum GLfloat*))
   (define glMultiTexCoord2i (GL GLvoid "glMultiTexCoord2i" GLenum GLint GLint))
   (define glMultiTexCoord2iv (GL GLvoid "glMultiTexCoord2iv" GLenum GLint*))
   (define glMultiTexCoord2s (GL GLvoid "glMultiTexCoord2s" GLenum GLshort GLshort))
   (define glMultiTexCoord2sv (GL GLvoid "glMultiTexCoord2sv" GLenum GLshort*))
   (define glMultiTexCoord3d (GL GLvoid "glMultiTexCoord3d" GLenum GLdouble GLdouble GLdouble))
   (define glMultiTexCoord3dv (GL GLvoid "glMultiTexCoord3dv" GLenum GLdouble*))
   (define glMultiTexCoord3f (GL GLvoid "glMultiTexCoord3f" GLenum GLfloat GLfloat GLfloat))
   (define glMultiTexCoord3fv (GL GLvoid "glMultiTexCoord3fv" GLenum GLfloat*))
   (define glMultiTexCoord3i (GL GLvoid "glMultiTexCoord3i" GLenum GLint GLint GLint))
   (define glMultiTexCoord3iv (GL GLvoid "glMultiTexCoord3iv" GLenum GLint*))
   (define glMultiTexCoord3s (GL GLvoid "glMultiTexCoord3s" GLenum GLshort GLshort GLshort))
   (define glMultiTexCoord3sv (GL GLvoid "glMultiTexCoord3sv" GLenum GLshort*))
   (define glMultiTexCoord4d (GL GLvoid "glMultiTexCoord4d" GLenum GLdouble GLdouble GLdouble GLdouble))
   (define glMultiTexCoord4dv (GL GLvoid "glMultiTexCoord4dv" GLenum GLdouble*))
   (define glMultiTexCoord4f (GL GLvoid "glMultiTexCoord4f" GLenum GLfloat GLfloat GLfloat GLfloat))
   (define glMultiTexCoord4fv (GL GLvoid "glMultiTexCoord4fv" GLenum GLfloat*))
   (define glMultiTexCoord4i (GL GLvoid "glMultiTexCoord4i" GLenum GLint GLint GLint GLint))
   (define glMultiTexCoord4iv (GL GLvoid "glMultiTexCoord4iv" GLenum GLint*))
   (define glMultiTexCoord4s (GL GLvoid "glMultiTexCoord4s" GLenum GLshort GLshort GLshort GLshort))
   (define glMultiTexCoord4sv (GL GLvoid "glMultiTexCoord4sv" GLenum GLshort*))

   (define GL_CLIENT_ACTIVE_TEXTURE           #x84E1)
   (define GL_MAX_TEXTURE_UNITS               #x84E2)

 ; F.5 ARB_texture_env_add
   ; None

 ; F.6 ARB_texture_env_combine
   (define GL_COMBINE_RGB                     #x8571)
   (define GL_COMBINE_ALPHA                   #x8572)
   (define GL_SOURCE0_RGB                     #x8580)
   (define GL_SOURCE1_RGB                     #x8581)
   (define GL_SOURCE2_RGB                     #x8582)
   (define GL_SOURCE0_ALPHA                   #x8588)
   (define GL_SOURCE1_ALPHA                   #x8589)
   (define GL_SOURCE2_ALPHA                   #x858A)
   (define GL_OPERAND0_RGB                    #x8590)
   (define GL_OPERAND1_RGB                    #x8591)
   (define GL_OPERAND2_RGB                    #x8592)
   (define GL_OPERAND0_ALPHA                  #x8598)
   (define GL_OPERAND1_ALPHA                  #x8599)
   (define GL_OPERAND2_ALPHA                  #x859A)
   (define GL_RGB_SCALE                       #x8573)
   (define GL_ADD_SIGNED                      #x8574)
   (define GL_INTERPOLATE                     #x8575)
   (define GL_SUBTRACT                        #x84E7)
   (define GL_CONSTANT                        #x8576)
   (define GL_PRIMARY_COLOR                   #x8577)
   (define GL_PREVIOUS                        #x8578)

 ; F.7 ARB_texture_env_dot3
   (define GL_DOT3_RGB                        #x86AE)
   (define GL_DOT3_RGBA                       #x86AF)

 ; F.8 ARB_texture_border_clamp

 ; F.9 ARB_transpose_matrix
   (define glLoadTransposeMatrixf (GL GLvoid "glLoadTransposeMatrixf" (fft* fft-float)))
   (define glLoadTransposeMatrixd (GL GLvoid "glLoadTransposeMatrixd" (fft* fft-double)))
   (define glMultTransposeMatrixf (GL GLvoid "glMultTransposeMatrixf" (fft* fft-float)))
   (define glMultTransposeMatrixd (GL GLvoid "glMultTransposeMatrixd" (fft* fft-double)))

   (define GL_TRANSPOSE_MODELVIEW_MATRIX      #x84E3)
   (define GL_TRANSPOSE_PROJECTION_MATRIX     #x84E4)
   (define GL_TRANSPOSE_TEXTURE_MATRIX        #x84E5)
   (define GL_TRANSPOSE_COLOR_MATRIX          #x84E6)

))
