; OpenGL 3.3 (11 Mar 2010), GLSL 3.30
;  + ARB_blend_func_extended
;  + ARB_explicit_attrib_location
;  + ARB_occlusion_query2
;  + ARB_sampler_objects
;  + ARB_shader_bit_encoding
;  + ARB_texture_rgb10_a2ui
;  + ARB_texture_swizzle
;  + ARB_timer_query
;  + ARB_vertex_type_2_10_10_10_rev
;  + ARB_vertex_type_2_10_10_10_rev compatibility profile

(define-library (OpenGL 3.3)
(export
      (exports (OpenGL 3.2))

   GL_VERSION_3_3

   GL_VERTEX_ATTRIB_ARRAY_DIVISOR

;; ARB_blend_func_extended
   GL_ARB_blend_func_extended
   GL_SRC1_COLOR
   GL_ONE_MINUS_SRC1_COLOR
   GL_ONE_MINUS_SRC1_ALPHA
   GL_MAX_DUAL_SOURCE_DRAW_BUFFERS

   glBindFragDataLocationIndexed
   glGetFragDataIndex

;; ARB_explicit_attrib_location
   GL_ARB_explicit_attrib_location
   ; none

;; ARB_occlusion_query2
   GL_ARB_occlusion_query2
   GL_ANY_SAMPLES_PASSED

;; ARB_sampler_objects
   GL_ARB_sampler_objects
   GL_SAMPLER_BINDING

   glGenSamplers
   glDeleteSamplers
   glIsSampler
   glBindSampler
   glSamplerParameteri
   glSamplerParameteriv
   glSamplerParameterf
   glSamplerParameterfv
   glSamplerParameterIiv
   glSamplerParameterIuiv
   glGetSamplerParameteriv
   glGetSamplerParameterIiv
   glGetSamplerParameterfv
   glGetSamplerParameterIuiv

;; ARB_shader_bit_encoding
   GL_ARB_shader_bit_encoding
   ; none

;; ARB_texture_rgb10_a2ui
   GL_ARB_texture_rgb10_a2ui
   GL_RGB10_A2UI

;; ARB_texture_swizzle
   GL_ARB_texture_swizzle
   GL_TEXTURE_SWIZZLE_R
   GL_TEXTURE_SWIZZLE_G
   GL_TEXTURE_SWIZZLE_B
   GL_TEXTURE_SWIZZLE_A
   GL_TEXTURE_SWIZZLE_RGBA

;; ARB_timer_query
   GL_ARB_timer_query
   GL_TIME_ELAPSED
   GL_TIMESTAMP

   glQueryCounter
   glGetQueryObjecti64v
   glGetQueryObjectui64v

;; ARB_vertex_type_2_10_10_10_rev
   GL_ARB_vertex_type_2_10_10_10_rev
   GL_INT_2_10_10_10_REV

   glVertexAttribDivisor
   glVertexAttribP1ui
   glVertexAttribP1uiv
   glVertexAttribP2ui
   glVertexAttribP2uiv
   glVertexAttribP3ui
   glVertexAttribP3uiv
   glVertexAttribP4ui
   glVertexAttribP4uiv

;; ARB_vertex_type_2_10_10_10_rev compatibility profile
   glVertexP2ui
   glVertexP2uiv
   glVertexP3ui
   glVertexP3uiv
   glVertexP4ui
   glVertexP4uiv
   glTexCoordP1ui
   glTexCoordP1uiv
   glTexCoordP2ui
   glTexCoordP2uiv
   glTexCoordP3ui
   glTexCoordP3uiv
   glTexCoordP4ui
   glTexCoordP4uiv
   glMultiTexCoordP1ui
   glMultiTexCoordP1uiv
   glMultiTexCoordP2ui
   glMultiTexCoordP2uiv
   glMultiTexCoordP3ui
   glMultiTexCoordP3uiv
   glMultiTexCoordP4ui
   glMultiTexCoordP4uiv
   glNormalP3ui
   glNormalP3uiv
   glColorP3ui
   glColorP3uiv
   glColorP4ui
   glColorP4uiv
   glSecondaryColorP3ui
   glSecondaryColorP3uiv

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 3.2))

(begin
   (define GL_VERSION_3_3 1)

   (setq GL gl:GetProcAddress)

   (define GL_VERTEX_ATTRIB_ARRAY_DIVISOR           #x88FE)

 ; ARB_blend_func_extended
   (define GL_ARB_blend_func_extended 1)

   (define GL_SRC1_COLOR                            #x88F9)
   (define GL_ONE_MINUS_SRC1_COLOR                  #x88FA)
   (define GL_ONE_MINUS_SRC1_ALPHA                  #x88FB)
   (define GL_MAX_DUAL_SOURCE_DRAW_BUFFERS          #x88FC)

   (define glBindFragDataLocationIndexed            (GL GLvoid "glBindFragDataLocationIndexed" GLuint GLuint GLuint GLchar*))
   (define glGetFragDataIndex                       (GL GLint "glGetFragDataIndex" GLuint GLchar*))

 ; ARB_explicit_attrib_location
   (define GL_ARB_explicit_attrib_location 1)

 ; ARB_occlusion_query2
   (define GL_ARB_occlusion_query2 1)

   (define GL_ANY_SAMPLES_PASSED                    #x8C2F)

 ; ARB_sampler_objects
   (define GL_ARB_sampler_objects 1)

   (define GL_SAMPLER_BINDING                       #x8919)

   (define glGenSamplers                            (GL GLvoid "glGenSamplers" GLsizei GLuint&))
   (define glDeleteSamplers                         (GL GLvoid "glDeleteSamplers" GLsizei GLuint*))
   (define glIsSampler                              (GL GLboolean "glIsSampler" GLuint))
   (define glBindSampler                            (GL GLvoid "glBindSampler" GLuint GLuint))
   (define glSamplerParameteri                      (GL GLvoid "glSamplerParameteri" GLuint GLenum GLint))
   (define glSamplerParameteriv                     (GL GLvoid "glSamplerParameteriv" GLuint GLenum GLint*))
   (define glSamplerParameterf                      (GL GLvoid "glSamplerParameterf" GLuint GLenum GLfloat))
   (define glSamplerParameterfv                     (GL GLvoid "glSamplerParameterfv" GLuint GLenum GLfloat*))
   (define glSamplerParameterIiv                    (GL GLvoid "glSamplerParameterIiv" GLuint GLenum GLint*))
   (define glSamplerParameterIuiv                   (GL GLvoid "glSamplerParameterIuiv" GLuint GLenum GLuint*))
   (define glGetSamplerParameteriv                  (GL GLvoid "glGetSamplerParameteriv" GLuint GLenum GLint&))
   (define glGetSamplerParameterIiv                 (GL GLvoid "glGetSamplerParameterIiv" GLuint GLenum GLint&))
   (define glGetSamplerParameterfv                  (GL GLvoid "glGetSamplerParameterfv" GLuint GLenum GLfloat&))
   (define glGetSamplerParameterIuiv                (GL GLvoid "glGetSamplerParameterIuiv" GLuint GLenum GLuint&))

 ; ARB_shader_bit_encoding
   (define GL_ARB_shader_bit_encoding 1)

 ; ARB_texture_rgb10_a2ui
   (define GL_ARB_texture_rgb10_a2ui 1)

   (define GL_RGB10_A2UI                            #x906F)

 ; ARB_texture_swizzle
   (define GL_ARB_texture_swizzle 1)

   (define GL_TEXTURE_SWIZZLE_R                     #x8E42)
   (define GL_TEXTURE_SWIZZLE_G                     #x8E43)
   (define GL_TEXTURE_SWIZZLE_B                     #x8E44)
   (define GL_TEXTURE_SWIZZLE_A                     #x8E45)
   (define GL_TEXTURE_SWIZZLE_RGBA                  #x8E46)

 ; ARB_timer_query
   (define GL_ARB_timer_query 1)

   (define GL_TIME_ELAPSED                          #x88BF)
   (define GL_TIMESTAMP                             #x8E28)

   (define glQueryCounter                           (GL GLvoid "glQueryCounter" GLuint GLenum))
   (define glGetQueryObjecti64v                     (GL GLvoid "glGetQueryObjecti64v" GLuint GLenum (fft& GLint64)))
   (define glGetQueryObjectui64v                    (GL GLvoid "glGetQueryObjectui64v" GLuint GLenum (fft& GLuint64)))

 ; ARB_vertex_type_2_10_10_10_rev
   (define GL_ARB_vertex_type_2_10_10_10_rev 1)

   (define GL_INT_2_10_10_10_REV                    #x8D9F)

   (define glVertexAttribDivisor                    (GL GLvoid "glVertexAttribDivisor" GLuint GLuint))
   (define glVertexAttribP1ui                       (GL GLvoid "glVertexAttribP1ui" GLuint GLenum GLboolean GLuint))
   (define glVertexAttribP1uiv                      (GL GLvoid "glVertexAttribP1uiv" GLuint GLenum GLboolean GLuint*))
   (define glVertexAttribP2ui                       (GL GLvoid "glVertexAttribP2ui" GLuint GLenum GLboolean GLuint))
   (define glVertexAttribP2uiv                      (GL GLvoid "glVertexAttribP2uiv" GLuint GLenum GLboolean GLuint*))
   (define glVertexAttribP3ui                       (GL GLvoid "glVertexAttribP3ui" GLuint GLenum GLboolean GLuint))
   (define glVertexAttribP3uiv                      (GL GLvoid "glVertexAttribP3uiv" GLuint GLenum GLboolean GLuint*))
   (define glVertexAttribP4ui                       (GL GLvoid "glVertexAttribP4ui" GLuint GLenum GLboolean GLuint))
   (define glVertexAttribP4uiv                      (GL GLvoid "glVertexAttribP4uiv" GLuint GLenum GLboolean GLuint*))

 ; ARB_vertex_type_2_10_10_10_rev compatibility profile
   (define glVertexP2ui                             (GL GLvoid "glVertexP2ui" GLenum GLuint))
   (define glVertexP2uiv                            (GL GLvoid "glVertexP2uiv" GLenum GLuint*))
   (define glVertexP3ui                             (GL GLvoid "glVertexP3ui" GLenum GLuint))
   (define glVertexP3uiv                            (GL GLvoid "glVertexP3uiv" GLenum GLuint*))
   (define glVertexP4ui                             (GL GLvoid "glVertexP4ui" GLenum GLuint))
   (define glVertexP4uiv                            (GL GLvoid "glVertexP4uiv" GLenum GLuint*))
   (define glTexCoordP1ui                           (GL GLvoid "glTexCoordP1ui" GLenum GLuint))
   (define glTexCoordP1uiv                          (GL GLvoid "glTexCoordP1uiv" GLenum GLuint*))
   (define glTexCoordP2ui                           (GL GLvoid "glTexCoordP2ui" GLenum GLuint))
   (define glTexCoordP2uiv                          (GL GLvoid "glTexCoordP2uiv" GLenum GLuint*))
   (define glTexCoordP3ui                           (GL GLvoid "glTexCoordP3ui" GLenum GLuint))
   (define glTexCoordP3uiv                          (GL GLvoid "glTexCoordP3uiv" GLenum GLuint*))
   (define glTexCoordP4ui                           (GL GLvoid "glTexCoordP4ui" GLenum GLuint))
   (define glTexCoordP4uiv                          (GL GLvoid "glTexCoordP4uiv" GLenum GLuint*))
   (define glMultiTexCoordP1ui                      (GL GLvoid "glMultiTexCoordP1ui" GLenum GLenum GLuint))
   (define glMultiTexCoordP1uiv                     (GL GLvoid "glMultiTexCoordP1uiv" GLenum GLenum GLuint*))
   (define glMultiTexCoordP2ui                      (GL GLvoid "glMultiTexCoordP2ui" GLenum GLenum GLuint))
   (define glMultiTexCoordP2uiv                     (GL GLvoid "glMultiTexCoordP2uiv" GLenum GLenum GLuint*))
   (define glMultiTexCoordP3ui                      (GL GLvoid "glMultiTexCoordP3ui" GLenum GLenum GLuint))
   (define glMultiTexCoordP3uiv                     (GL GLvoid "glMultiTexCoordP3uiv" GLenum GLenum GLuint*))
   (define glMultiTexCoordP4ui                      (GL GLvoid "glMultiTexCoordP4ui" GLenum GLenum GLuint))
   (define glMultiTexCoordP4uiv                     (GL GLvoid "glMultiTexCoordP4uiv" GLenum GLenum GLuint*))
   (define glNormalP3ui                             (GL GLvoid "glNormalP3ui" GLenum GLuint))
   (define glNormalP3uiv                            (GL GLvoid "glNormalP3uiv" GLenum GLuint*))
   (define glColorP3ui                              (GL GLvoid "glColorP3ui" GLenum GLuint))
   (define glColorP3uiv                             (GL GLvoid "glColorP3uiv" GLenum GLuint*))
   (define glColorP4ui                              (GL GLvoid "glColorP4ui" GLenum GLuint))
   (define glColorP4uiv                             (GL GLvoid "glColorP4uiv" GLenum GLuint*))
   (define glSecondaryColorP3ui                     (GL GLvoid "glSecondaryColorP3ui" GLenum GLuint))
   (define glSecondaryColorP3uiv                    (GL GLvoid "glSecondaryColorP3uiv" GLenum GLuint*))

))
