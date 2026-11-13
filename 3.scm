; OpenGL 3.0 (11 Aug 2008), GLSL 1.3
; Provides new functionality on top of old, OpenGL 1.0 - 2.1 are still available.
;  + ARB_depth_buffer_float
;  + ARB_framebuffer_object
;  + ARB_texture_float
;  + ARB_framebuffer_sRGB
;  + ARB_half_float_vertex
;  + ARB_map_buffer_range
;  + ARB_texture_compression_rgtc
;  + ARB_texture_rg
;  + ARB_vertex_array_object
;  + EXT gpu_shader4 (core subset)

; ? NV_conditional_render
; ? ARB_color_buffer_float,
; ? EXT_packed_float,
; ? EXT_texture_shared_exponent
; ? NV_half_float,
; ? EXT_half_float_pixel
; ? EXT_texture_integer
; ? EXT_texture_array
; ? EXT_draw_buffers2
; ? EXT_texture_compression_rgtc
; ? ARB_transform_feedback

(define-library (OpenGL 3.0)
(export
      (exports (OpenGL 2.1))

   GL_VERSION_3_0

   GL_COMPARE_REF_TO_TEXTURE
   GL_CLIP_DISTANCE0
   GL_CLIP_DISTANCE1
   GL_CLIP_DISTANCE2
   GL_CLIP_DISTANCE3
   GL_CLIP_DISTANCE4
   GL_CLIP_DISTANCE5
   GL_CLIP_DISTANCE6
   GL_CLIP_DISTANCE7
   GL_MAX_CLIP_DISTANCES
   GL_MAJOR_VERSION
   GL_MINOR_VERSION
   GL_NUM_EXTENSIONS
   GL_CONTEXT_FLAGS
   GL_COMPRESSED_RED
   GL_COMPRESSED_RG
   GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
   GL_RGBA32F
   GL_RGB32F
   GL_RGBA16F
   GL_RGB16F
   GL_VERTEX_ATTRIB_ARRAY_INTEGER
   GL_MAX_ARRAY_TEXTURE_LAYERS
   GL_MIN_PROGRAM_TEXEL_OFFSET
   GL_MAX_PROGRAM_TEXEL_OFFSET
   GL_CLAMP_READ_COLOR
   GL_FIXED_ONLY
   GL_MAX_VARYING_COMPONENTS
   GL_TEXTURE_1D_ARRAY
   GL_PROXY_TEXTURE_1D_ARRAY
   GL_TEXTURE_2D_ARRAY
   GL_PROXY_TEXTURE_2D_ARRAY
   GL_TEXTURE_BINDING_1D_ARRAY
   GL_TEXTURE_BINDING_2D_ARRAY
   GL_R11F_G11F_B10F
   GL_UNSIGNED_INT_10F_11F_11F_REV
   GL_RGB9_E5
   GL_UNSIGNED_INT_5_9_9_9_REV
   GL_TEXTURE_SHARED_SIZE
   GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
   GL_TRANSFORM_FEEDBACK_VARYINGS
   GL_TRANSFORM_FEEDBACK_BUFFER_START
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
   GL_PRIMITIVES_GENERATED
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
   GL_RASTERIZER_DISCARD
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
   GL_INTERLEAVED_ATTRIBS
   GL_SEPARATE_ATTRIBS
   GL_TRANSFORM_FEEDBACK_BUFFER
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
   GL_RGBA32UI
   GL_RGB32UI
   GL_RGBA16UI
   GL_RGB16UI
   GL_RGBA8UI
   GL_RGB8UI
   GL_RGBA32I
   GL_RGB32I
   GL_RGBA16I
   GL_RGB16I
   GL_RGBA8I
   GL_RGB8I
   GL_RED_INTEGER
   GL_GREEN_INTEGER
   GL_BLUE_INTEGER
   GL_RGB_INTEGER
   GL_RGBA_INTEGER
   GL_BGR_INTEGER
   GL_BGRA_INTEGER
   GL_SAMPLER_1D_ARRAY
   GL_SAMPLER_2D_ARRAY
   GL_SAMPLER_1D_ARRAY_SHADOW
   GL_SAMPLER_2D_ARRAY_SHADOW
   GL_SAMPLER_CUBE_SHADOW
   GL_UNSIGNED_INT_VEC2
   GL_UNSIGNED_INT_VEC3
   GL_UNSIGNED_INT_VEC4
   GL_INT_SAMPLER_1D
   GL_INT_SAMPLER_2D
   GL_INT_SAMPLER_3D
   GL_INT_SAMPLER_CUBE
   GL_INT_SAMPLER_1D_ARRAY
   GL_INT_SAMPLER_2D_ARRAY
   GL_UNSIGNED_INT_SAMPLER_1D
   GL_UNSIGNED_INT_SAMPLER_2D
   GL_UNSIGNED_INT_SAMPLER_3D
   GL_UNSIGNED_INT_SAMPLER_CUBE
   GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
   GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
   GL_QUERY_WAIT
   GL_QUERY_NO_WAIT
   GL_QUERY_BY_REGION_WAIT
   GL_QUERY_BY_REGION_NO_WAIT
   GL_BUFFER_ACCESS_FLAGS
   GL_BUFFER_MAP_LENGTH
   GL_BUFFER_MAP_OFFSET

   glColorMaski
   glGetBooleani_v
   glGetIntegeri_v
   glEnablei
   glDisablei
   glIsEnabledi
   glBeginTransformFeedback
   glEndTransformFeedback
   glBindBufferRange
   glBindBufferBase
   glTransformFeedbackVaryings
   glGetTransformFeedbackVarying
   glClampColor
   glBeginConditionalRender
   glEndConditionalRender
   glVertexAttribIPointer
   glGetVertexAttribIiv
   glGetVertexAttribIuiv
   glVertexAttribI1i
   glVertexAttribI2i
   glVertexAttribI3i
   glVertexAttribI4i
   glVertexAttribI1ui
   glVertexAttribI2ui
   glVertexAttribI3ui
   glVertexAttribI4ui
   glVertexAttribI1iv
   glVertexAttribI2iv
   glVertexAttribI3iv
   glVertexAttribI4iv
   glVertexAttribI1uiv
   glVertexAttribI2uiv
   glVertexAttribI3uiv
   glVertexAttribI4uiv
   glVertexAttribI4bv
   glVertexAttribI4sv
   glVertexAttribI4ubv
   glVertexAttribI4usv
   glGetUniformuiv
   glBindFragDataLocation
   glGetFragDataLocation
   glUniform1ui
   glUniform2ui
   glUniform3ui
   glUniform4ui
   glUniform1uiv
   glUniform2uiv
   glUniform3uiv
   glUniform4uiv
   glTexParameterIiv
   glTexParameterIuiv
   glGetTexParameterIiv
   glGetTexParameterIuiv
   glClearBufferiv
   glClearBufferuiv
   glClearBufferfv
   glClearBufferfi
   glGetStringi

;; ARB_depth_buffer_float
   GL_ARB_depth_buffer_float
   GL_DEPTH_COMPONENT32F
   GL_DEPTH32F_STENCIL8
   GL_FLOAT_32_UNSIGNED_INT_24_8_REV

;; ARB_framebuffer_object
   GL_ARB_framebuffer_object
   GL_INVALID_FRAMEBUFFER_OPERATION
   GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
   GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
   GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
   GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
   GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
   GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
   GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
   GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
   GL_FRAMEBUFFER_DEFAULT
   GL_FRAMEBUFFER_UNDEFINED
   GL_DEPTH_STENCIL_ATTACHMENT
   GL_MAX_RENDERBUFFER_SIZE
   GL_DEPTH_STENCIL
   GL_UNSIGNED_INT_24_8
   GL_DEPTH24_STENCIL8
   GL_TEXTURE_STENCIL_SIZE
   GL_TEXTURE_RED_TYPE
   GL_TEXTURE_GREEN_TYPE
   GL_TEXTURE_BLUE_TYPE
   GL_TEXTURE_ALPHA_TYPE
   GL_TEXTURE_DEPTH_TYPE
   GL_UNSIGNED_NORMALIZED
   GL_FRAMEBUFFER_BINDING
   GL_DRAW_FRAMEBUFFER_BINDING
   GL_RENDERBUFFER_BINDING
   GL_READ_FRAMEBUFFER
   GL_DRAW_FRAMEBUFFER
   GL_READ_FRAMEBUFFER_BINDING
   GL_RENDERBUFFER_SAMPLES
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
   GL_FRAMEBUFFER_COMPLETE
   GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
   GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
   GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
   GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
   GL_FRAMEBUFFER_UNSUPPORTED
   GL_MAX_COLOR_ATTACHMENTS
   GL_COLOR_ATTACHMENT0
   GL_COLOR_ATTACHMENT1
   GL_COLOR_ATTACHMENT2
   GL_COLOR_ATTACHMENT3
   GL_COLOR_ATTACHMENT4
   GL_COLOR_ATTACHMENT5
   GL_COLOR_ATTACHMENT6
   GL_COLOR_ATTACHMENT7
   GL_COLOR_ATTACHMENT8
   GL_COLOR_ATTACHMENT9
   GL_COLOR_ATTACHMENT10
   GL_COLOR_ATTACHMENT11
   GL_COLOR_ATTACHMENT12
   GL_COLOR_ATTACHMENT13
   GL_COLOR_ATTACHMENT14
   GL_COLOR_ATTACHMENT15
   GL_COLOR_ATTACHMENT16
   GL_COLOR_ATTACHMENT17
   GL_COLOR_ATTACHMENT18
   GL_COLOR_ATTACHMENT19
   GL_COLOR_ATTACHMENT20
   GL_COLOR_ATTACHMENT21
   GL_COLOR_ATTACHMENT22
   GL_COLOR_ATTACHMENT23
   GL_COLOR_ATTACHMENT24
   GL_COLOR_ATTACHMENT25
   GL_COLOR_ATTACHMENT26
   GL_COLOR_ATTACHMENT27
   GL_COLOR_ATTACHMENT28
   GL_COLOR_ATTACHMENT29
   GL_COLOR_ATTACHMENT30
   GL_COLOR_ATTACHMENT31
   GL_DEPTH_ATTACHMENT
   GL_STENCIL_ATTACHMENT
   GL_FRAMEBUFFER
   GL_RENDERBUFFER
   GL_RENDERBUFFER_WIDTH
   GL_RENDERBUFFER_HEIGHT
   GL_RENDERBUFFER_INTERNAL_FORMAT
   GL_STENCIL_INDEX1
   GL_STENCIL_INDEX4
   GL_STENCIL_INDEX8
   GL_STENCIL_INDEX16
   GL_RENDERBUFFER_RED_SIZE
   GL_RENDERBUFFER_GREEN_SIZE
   GL_RENDERBUFFER_BLUE_SIZE
   GL_RENDERBUFFER_ALPHA_SIZE
   GL_RENDERBUFFER_DEPTH_SIZE
   GL_RENDERBUFFER_STENCIL_SIZE
   GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
   GL_MAX_SAMPLES
   GL_INDEX

   glIsRenderbuffer
   glBindRenderbuffer
   glDeleteRenderbuffers
   glGenRenderbuffers
   glRenderbufferStorage
   glGetRenderbufferParameteriv
   glIsFramebuffer
   glBindFramebuffer
   glDeleteFramebuffers
   glGenFramebuffers
   glCheckFramebufferStatus
   glFramebufferTexture1D
   glFramebufferTexture2D
   glFramebufferTexture3D
   glFramebufferRenderbuffer
   glGetFramebufferAttachmentParameteriv
   glGenerateMipmap
   glBlitFramebuffer
   glRenderbufferStorageMultisample
   glFramebufferTextureLayer

;; ARB_texture_float
   GL_ARB_texture_float
   GL_TEXTURE_LUMINANCE_TYPE
   GL_TEXTURE_INTENSITY_TYPE

;; ARB_texture_float
   GL_ARB_texture_float
   GL_TEXTURE_LUMINANCE_TYPE
   GL_TEXTURE_INTENSITY_TYPE

;; ARB_framebuffer_sRGB
   GL_ARB_framebuffer_sRGB
   GL_FRAMEBUFFER_SRGB

;; ARB_half_float_vertex
   GL_ARB_half_float_vertex
   GLhalf
   GL_HALF_FLOAT

;; ARB_map_buffer_range
   GL_ARB_map_buffer_range
   GL_MAP_READ_BIT
   GL_MAP_WRITE_BIT
   GL_MAP_INVALIDATE_RANGE_BIT
   GL_MAP_INVALIDATE_BUFFER_BIT
   GL_MAP_FLUSH_EXPLICIT_BIT
   GL_MAP_UNSYNCHRONIZED_BIT

   glMapBufferRange
   glFlushMappedBufferRange

;; ARB_texture_compression_rgtc
   GL_ARB_texture_compression_rgtc
   GL_COMPRESSED_RED_RGTC1
   GL_COMPRESSED_SIGNED_RED_RGTC1
   GL_COMPRESSED_RG_RGTC2
   GL_COMPRESSED_SIGNED_RG_RGTC2

;; ARB_texture_rg
   GL_ARB_texture_rg
   GL_RG
   GL_RG_INTEGER
   GL_R8
   GL_R16
   GL_RG8
   GL_RG16
   GL_R16F
   GL_R32F
   GL_RG16F
   GL_RG32F
   GL_R8I
   GL_R8UI
   GL_R16I
   GL_R16UI
   GL_R32I
   GL_R32UI
   GL_RG8I
   GL_RG8UI
   GL_RG16I
   GL_RG16UI
   GL_RG32I
   GL_RG32UI

;; ARB_vertex_array_object
   GL_ARB_vertex_array_object
   GL_VERTEX_ARRAY_BINDING

   glBindVertexArray
   glDeleteVertexArrays
   glGenVertexArrays
   glIsVertexArray
)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 2.1))

(begin
   (define GL_VERSION_3_0 1)

   (setq GL gl:GetProcAddress)

   (define GL_COMPARE_REF_TO_TEXTURE         #x884E) ; GL_COMPARE_R_TO_TEXTURE_ARB (GL_ARB_shadow)
   (define GL_CLIP_DISTANCE0                 #x3000)
   (define GL_CLIP_DISTANCE1                 #x3001)
   (define GL_CLIP_DISTANCE2                 #x3002)
   (define GL_CLIP_DISTANCE3                 #x3003)
   (define GL_CLIP_DISTANCE4                 #x3004)
   (define GL_CLIP_DISTANCE5                 #x3005)
   (define GL_CLIP_DISTANCE6                 #x3006)
   (define GL_CLIP_DISTANCE7                 #x3007)
   (define GL_MAX_CLIP_DISTANCES             #x0D32)
   (define GL_MAJOR_VERSION                  #x821B)
   (define GL_MINOR_VERSION                  #x821C)
   (define GL_NUM_EXTENSIONS                 #x821D)
   (define GL_CONTEXT_FLAGS                  #x821E)
   (define GL_COMPRESSED_RED                 #x8225)
   (define GL_COMPRESSED_RG                  #x8226)
   (define GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT #x00000001)
   (define GL_RGBA32F                        #x8814)
   (define GL_RGB32F                         #x8815)
   (define GL_RGBA16F                        #x881A)
   (define GL_RGB16F                         #x881B)
   (define GL_VERTEX_ATTRIB_ARRAY_INTEGER    #x88FD)
   (define GL_MAX_ARRAY_TEXTURE_LAYERS       #x88FF)
   (define GL_MIN_PROGRAM_TEXEL_OFFSET       #x8904)
   (define GL_MAX_PROGRAM_TEXEL_OFFSET       #x8905)
   (define GL_CLAMP_READ_COLOR               #x891C)
   (define GL_FIXED_ONLY                     #x891D)
   (define GL_MAX_VARYING_COMPONENTS         #x8B4B) ; GL_MAX_VARYING_FLOATS
   (define GL_TEXTURE_1D_ARRAY               #x8C18)
   (define GL_PROXY_TEXTURE_1D_ARRAY         #x8C19)
   (define GL_TEXTURE_2D_ARRAY               #x8C1A)
   (define GL_PROXY_TEXTURE_2D_ARRAY         #x8C1B)
   (define GL_TEXTURE_BINDING_1D_ARRAY       #x8C1C)
   (define GL_TEXTURE_BINDING_2D_ARRAY       #x8C1D)
   (define GL_R11F_G11F_B10F                 #x8C3A)
   (define GL_UNSIGNED_INT_10F_11F_11F_REV   #x8C3B)
   (define GL_RGB9_E5                        #x8C3D)
   (define GL_UNSIGNED_INT_5_9_9_9_REV       #x8C3E)
   (define GL_TEXTURE_SHARED_SIZE            #x8C3F)
   (define GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH #x8C76)
   (define GL_TRANSFORM_FEEDBACK_BUFFER_MODE #x8C7F)
   (define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS #x8C80)
   (define GL_TRANSFORM_FEEDBACK_VARYINGS    #x8C83)
   (define GL_TRANSFORM_FEEDBACK_BUFFER_START #x8C84)
   (define GL_TRANSFORM_FEEDBACK_BUFFER_SIZE #x8C85)
   (define GL_PRIMITIVES_GENERATED           #x8C87)
   (define GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN #x8C88)
   (define GL_RASTERIZER_DISCARD             #x8C89)
   (define GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS #x8C8A)
   (define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS #x8C8B)
   (define GL_INTERLEAVED_ATTRIBS            #x8C8C)
   (define GL_SEPARATE_ATTRIBS               #x8C8D)
   (define GL_TRANSFORM_FEEDBACK_BUFFER      #x8C8E)
   (define GL_TRANSFORM_FEEDBACK_BUFFER_BINDING #x8C8F)
   (define GL_RGBA32UI                       #x8D70)
   (define GL_RGB32UI                        #x8D71)
   (define GL_RGBA16UI                       #x8D76)
   (define GL_RGB16UI                        #x8D77)
   (define GL_RGBA8UI                        #x8D7C)
   (define GL_RGB8UI                         #x8D7D)
   (define GL_RGBA32I                        #x8D82)
   (define GL_RGB32I                         #x8D83)
   (define GL_RGBA16I                        #x8D88)
   (define GL_RGB16I                         #x8D89)
   (define GL_RGBA8I                         #x8D8E)
   (define GL_RGB8I                          #x8D8F)
   (define GL_RED_INTEGER                    #x8D94)
   (define GL_GREEN_INTEGER                  #x8D95)
   (define GL_BLUE_INTEGER                   #x8D96)
   (define GL_RGB_INTEGER                    #x8D98)
   (define GL_RGBA_INTEGER                   #x8D99)
   (define GL_BGR_INTEGER                    #x8D9A)
   (define GL_BGRA_INTEGER                   #x8D9B)
   (define GL_SAMPLER_1D_ARRAY               #x8DC0)
   (define GL_SAMPLER_2D_ARRAY               #x8DC1)
   (define GL_SAMPLER_1D_ARRAY_SHADOW        #x8DC3)
   (define GL_SAMPLER_2D_ARRAY_SHADOW        #x8DC4)
   (define GL_SAMPLER_CUBE_SHADOW            #x8DC5)
   (define GL_UNSIGNED_INT_VEC2              #x8DC6)
   (define GL_UNSIGNED_INT_VEC3              #x8DC7)
   (define GL_UNSIGNED_INT_VEC4              #x8DC8)
   (define GL_INT_SAMPLER_1D                 #x8DC9)
   (define GL_INT_SAMPLER_2D                 #x8DCA)
   (define GL_INT_SAMPLER_3D                 #x8DCB)
   (define GL_INT_SAMPLER_CUBE               #x8DCC)
   (define GL_INT_SAMPLER_1D_ARRAY           #x8DCE)
   (define GL_INT_SAMPLER_2D_ARRAY           #x8DCF)
   (define GL_UNSIGNED_INT_SAMPLER_1D        #x8DD1)
   (define GL_UNSIGNED_INT_SAMPLER_2D        #x8DD2)
   (define GL_UNSIGNED_INT_SAMPLER_3D        #x8DD3)
   (define GL_UNSIGNED_INT_SAMPLER_CUBE      #x8DD4)
   (define GL_UNSIGNED_INT_SAMPLER_1D_ARRAY  #x8DD6)
   (define GL_UNSIGNED_INT_SAMPLER_2D_ARRAY  #x8DD7)
   (define GL_QUERY_WAIT                     #x8E13)
   (define GL_QUERY_NO_WAIT                  #x8E14)
   (define GL_QUERY_BY_REGION_WAIT           #x8E15)
   (define GL_QUERY_BY_REGION_NO_WAIT        #x8E16)
   (define GL_BUFFER_ACCESS_FLAGS            #x911F)
   (define GL_BUFFER_MAP_LENGTH              #x9120)
   (define GL_BUFFER_MAP_OFFSET              #x9121)

   (define glColorMaski                      (GL GLvoid "glColorMaski" GLuint GLboolean GLboolean GLboolean GLboolean))
   (define glGetBooleani_v                   (GL GLvoid "glGetBooleani_v" GLenum GLuint GLboolean*))
   (define glGetIntegeri_v                   (GL GLvoid "glGetIntegeri_v" GLenum GLuint GLint*))
   (define glEnablei                         (GL GLvoid "glEnablei" GLenum GLuint))
   (define glDisablei                        (GL GLvoid "glDisablei" GLenum GLuint))
   (define glIsEnabledi                      (GL GLboolean "glIsEnabledi" GLenum GLuint))
   (define glBeginTransformFeedback          (GL GLvoid "glBeginTransformFeedback" GLenum))
   (define glEndTransformFeedback            (GL GLvoid "glEndTransformFeedback"))
   (define glBindBufferRange                 (GL GLvoid "glBindBufferRange" GLenum GLuint GLuint GLintptr GLsizeiptr))
   (define glBindBufferBase                  (GL GLvoid "glBindBufferBase" GLenum GLuint GLuint))
   (define glTransformFeedbackVaryings       (GL GLvoid "glTransformFeedbackVaryings" GLuint GLsizei (fft* GLchar*) GLenum))
   (define glGetTransformFeedbackVarying     (GL GLvoid "glGetTransformFeedbackVarying" GLuint GLuint GLsizei (fft& GLsizei) (fft& GLsizei) (fft& GLenum) type-string))
   (define glClampColor                      (GL GLvoid "glClampColor" GLenum GLenum))
   (define glBeginConditionalRender          (GL GLvoid "glBeginConditionalRender" GLuint GLenum))
   (define glEndConditionalRender            (GL GLvoid "glEndConditionalRender"))
   (define glVertexAttribIPointer            (GL GLvoid "glVertexAttribIPointer" GLuint GLint GLenum GLsizei GLvoid*))
   (define glGetVertexAttribIiv              (GL GLvoid "glGetVertexAttribIiv" GLuint GLenum GLint*))
   (define glGetVertexAttribIuiv             (GL GLvoid "glGetVertexAttribIuiv" GLuint GLenum GLuint*))
   (define glVertexAttribI1i                 (GL GLvoid "glVertexAttribI1i" GLuint GLint))
   (define glVertexAttribI2i                 (GL GLvoid "glVertexAttribI2i" GLuint GLint GLint))
   (define glVertexAttribI3i                 (GL GLvoid "glVertexAttribI3i" GLuint GLint GLint GLint))
   (define glVertexAttribI4i                 (GL GLvoid "glVertexAttribI4i" GLuint GLint GLint GLint GLint))
   (define glVertexAttribI1ui                (GL GLvoid "glVertexAttribI1ui" GLuint GLuint))
   (define glVertexAttribI2ui                (GL GLvoid "glVertexAttribI2ui" GLuint GLuint GLuint))
   (define glVertexAttribI3ui                (GL GLvoid "glVertexAttribI3ui" GLuint GLuint GLuint GLuint))
   (define glVertexAttribI4ui                (GL GLvoid "glVertexAttribI4ui" GLuint GLuint GLuint GLuint GLuint))
   (define glVertexAttribI1iv                (GL GLvoid "glVertexAttribI1iv" GLuint GLint*))
   (define glVertexAttribI2iv                (GL GLvoid "glVertexAttribI2iv" GLuint GLint*))
   (define glVertexAttribI3iv                (GL GLvoid "glVertexAttribI3iv" GLuint GLint*))
   (define glVertexAttribI4iv                (GL GLvoid "glVertexAttribI4iv" GLuint GLint*))
   (define glVertexAttribI1uiv               (GL GLvoid "glVertexAttribI1uiv" GLuint GLuint*))
   (define glVertexAttribI2uiv               (GL GLvoid "glVertexAttribI2uiv" GLuint GLuint*))
   (define glVertexAttribI3uiv               (GL GLvoid "glVertexAttribI3uiv" GLuint GLuint*))
   (define glVertexAttribI4uiv               (GL GLvoid "glVertexAttribI4uiv" GLuint GLuint*))
   (define glVertexAttribI4bv                (GL GLvoid "glVertexAttribI4bv" GLuint GLbyte*))
   (define glVertexAttribI4sv                (GL GLvoid "glVertexAttribI4sv" GLuint GLshort*))
   (define glVertexAttribI4ubv               (GL GLvoid "glVertexAttribI4ubv" GLuint GLubyte*))
   (define glVertexAttribI4usv               (GL GLvoid "glVertexAttribI4usv" GLuint GLushort*))
   (define glGetUniformuiv                   (GL GLvoid "glGetUniformuiv" GLuint GLint GLuint*))
   (define glBindFragDataLocation            (GL GLvoid "glBindFragDataLocation" GLuint GLuint GLchar*))
   (define glGetFragDataLocation             (GL GLint "glGetFragDataLocation" GLuint GLchar*))
   (define glUniform1ui                      (GL GLvoid "glUniform1ui" GLint GLuint))
   (define glUniform2ui                      (GL GLvoid "glUniform2ui" GLint GLuint GLuint))
   (define glUniform3ui                      (GL GLvoid "glUniform3ui" GLint GLuint GLuint GLuint))
   (define glUniform4ui                      (GL GLvoid "glUniform4ui" GLint GLuint GLuint GLuint GLuint))
   (define glUniform1uiv                     (GL GLvoid "glUniform1uiv" GLint GLsizei GLuint*))
   (define glUniform2uiv                     (GL GLvoid "glUniform2uiv" GLint GLsizei GLuint*))
   (define glUniform3uiv                     (GL GLvoid "glUniform3uiv" GLint GLsizei GLuint*))
   (define glUniform4uiv                     (GL GLvoid "glUniform4uiv" GLint GLsizei GLuint*))
   (define glTexParameterIiv                 (GL GLvoid "glTexParameterIiv" GLenum GLenum GLint*))
   (define glTexParameterIuiv                (GL GLvoid "glTexParameterIuiv" GLenum GLenum GLuint*))
   (define glGetTexParameterIiv              (GL GLvoid "glGetTexParameterIiv" GLenum GLenum GLint*))
   (define glGetTexParameterIuiv             (GL GLvoid "glGetTexParameterIuiv" GLenum GLenum GLuint*))
   (define glClearBufferiv                   (GL GLvoid "glClearBufferiv" GLenum GLint GLint*))
   (define glClearBufferuiv                  (GL GLvoid "glClearBufferuiv" GLenum GLint GLuint*))
   (define glClearBufferfv                   (GL GLvoid "glClearBufferfv" GLenum GLint GLfloat*))
   (define glClearBufferfi                   (GL GLvoid "glClearBufferfi" GLenum GLint GLfloat GLint))
   (define glGetStringi                      (GL GLubyte* "glGetStringi" GLenum GLuint))

 ; ARB_depth_buffer_float
   (define GL_ARB_depth_buffer_float 1)

   (define GL_DEPTH_COMPONENT32F             #x8CAC)
   (define GL_DEPTH32F_STENCIL8              #x8CAD)
   (define GL_FLOAT_32_UNSIGNED_INT_24_8_REV #x8DAD)

 ; ARB_framebuffer_object
   (define GL_ARB_framebuffer_object 1)

   (define GL_INVALID_FRAMEBUFFER_OPERATION  #x0506)
   (define GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING #x8210)
   (define GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE #x8211)
   (define GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE #x8212)
   (define GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE #x8213)
   (define GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE #x8214)
   (define GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE #x8215)
   (define GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE #x8216)
   (define GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE #x8217)
   (define GL_FRAMEBUFFER_DEFAULT            #x8218)
   (define GL_FRAMEBUFFER_UNDEFINED          #x8219)
   (define GL_DEPTH_STENCIL_ATTACHMENT       #x821A)
   (define GL_MAX_RENDERBUFFER_SIZE          #x84E8)
   (define GL_DEPTH_STENCIL                  #x84F9)
   (define GL_UNSIGNED_INT_24_8              #x84FA)
   (define GL_DEPTH24_STENCIL8               #x88F0)
   (define GL_TEXTURE_STENCIL_SIZE           #x88F1)
   (define GL_TEXTURE_RED_TYPE               #x8C10)
   (define GL_TEXTURE_GREEN_TYPE             #x8C11)
   (define GL_TEXTURE_BLUE_TYPE              #x8C12)
   (define GL_TEXTURE_ALPHA_TYPE             #x8C13)
   (define GL_TEXTURE_DEPTH_TYPE             #x8C16)
   (define GL_UNSIGNED_NORMALIZED            #x8C17)
   (define GL_FRAMEBUFFER_BINDING            #x8CA6)
   (define GL_DRAW_FRAMEBUFFER_BINDING       #x8CA6)
   (define GL_RENDERBUFFER_BINDING           #x8CA7)
   (define GL_READ_FRAMEBUFFER               #x8CA8)
   (define GL_DRAW_FRAMEBUFFER               #x8CA9)
   (define GL_READ_FRAMEBUFFER_BINDING       #x8CAA)
   (define GL_RENDERBUFFER_SAMPLES           #x8CAB)
   (define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE #x8CD0)
   (define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME #x8CD1)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL #x8CD2)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE #x8CD3)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER #x8CD4)
   (define GL_FRAMEBUFFER_COMPLETE           #x8CD5)
   (define GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT #x8CD6)
   (define GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT #x8CD7)
   (define GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER #x8CDB)
   (define GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER #x8CDC)
   (define GL_FRAMEBUFFER_UNSUPPORTED        #x8CDD)
   (define GL_MAX_COLOR_ATTACHMENTS          #x8CDF)
   (define GL_COLOR_ATTACHMENT0              #x8CE0)
   (define GL_COLOR_ATTACHMENT1              #x8CE1)
   (define GL_COLOR_ATTACHMENT2              #x8CE2)
   (define GL_COLOR_ATTACHMENT3              #x8CE3)
   (define GL_COLOR_ATTACHMENT4              #x8CE4)
   (define GL_COLOR_ATTACHMENT5              #x8CE5)
   (define GL_COLOR_ATTACHMENT6              #x8CE6)
   (define GL_COLOR_ATTACHMENT7              #x8CE7)
   (define GL_COLOR_ATTACHMENT8              #x8CE8)
   (define GL_COLOR_ATTACHMENT9              #x8CE9)
   (define GL_COLOR_ATTACHMENT10             #x8CEA)
   (define GL_COLOR_ATTACHMENT11             #x8CEB)
   (define GL_COLOR_ATTACHMENT12             #x8CEC)
   (define GL_COLOR_ATTACHMENT13             #x8CED)
   (define GL_COLOR_ATTACHMENT14             #x8CEE)
   (define GL_COLOR_ATTACHMENT15             #x8CEF)
   (define GL_COLOR_ATTACHMENT16             #x8CF0)
   (define GL_COLOR_ATTACHMENT17             #x8CF1)
   (define GL_COLOR_ATTACHMENT18             #x8CF2)
   (define GL_COLOR_ATTACHMENT19             #x8CF3)
   (define GL_COLOR_ATTACHMENT20             #x8CF4)
   (define GL_COLOR_ATTACHMENT21             #x8CF5)
   (define GL_COLOR_ATTACHMENT22             #x8CF6)
   (define GL_COLOR_ATTACHMENT23             #x8CF7)
   (define GL_COLOR_ATTACHMENT24             #x8CF8)
   (define GL_COLOR_ATTACHMENT25             #x8CF9)
   (define GL_COLOR_ATTACHMENT26             #x8CFA)
   (define GL_COLOR_ATTACHMENT27             #x8CFB)
   (define GL_COLOR_ATTACHMENT28             #x8CFC)
   (define GL_COLOR_ATTACHMENT29             #x8CFD)
   (define GL_COLOR_ATTACHMENT30             #x8CFE)
   (define GL_COLOR_ATTACHMENT31             #x8CFF)
   (define GL_DEPTH_ATTACHMENT               #x8D00)
   (define GL_STENCIL_ATTACHMENT             #x8D20)
   (define GL_FRAMEBUFFER                    #x8D40)
   (define GL_RENDERBUFFER                   #x8D41)
   (define GL_RENDERBUFFER_WIDTH             #x8D42)
   (define GL_RENDERBUFFER_HEIGHT            #x8D43)
   (define GL_RENDERBUFFER_INTERNAL_FORMAT   #x8D44)
   (define GL_STENCIL_INDEX1                 #x8D46)
   (define GL_STENCIL_INDEX4                 #x8D47)
   (define GL_STENCIL_INDEX8                 #x8D48)
   (define GL_STENCIL_INDEX16                #x8D49)
   (define GL_RENDERBUFFER_RED_SIZE          #x8D50)
   (define GL_RENDERBUFFER_GREEN_SIZE        #x8D51)
   (define GL_RENDERBUFFER_BLUE_SIZE         #x8D52)
   (define GL_RENDERBUFFER_ALPHA_SIZE        #x8D53)
   (define GL_RENDERBUFFER_DEPTH_SIZE        #x8D54)
   (define GL_RENDERBUFFER_STENCIL_SIZE      #x8D55)
   (define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE #x8D56)
   (define GL_MAX_SAMPLES                    #x8D57)
   (define GL_INDEX                          #x8222)

   (define glIsRenderbuffer                  (GL GLboolean "glIsRenderbuffer" GLuint))
   (define glBindRenderbuffer                (GL GLvoid "glBindRenderbuffer" GLenum GLuint))
   (define glDeleteRenderbuffers             (GL GLvoid "glDeleteRenderbuffers" GLsizei GLuint*))
   (define glGenRenderbuffers                (GL GLvoid "glGenRenderbuffers" GLsizei GLuint&))
   (define glRenderbufferStorage             (GL GLvoid "glRenderbufferStorage" GLenum GLenum GLsizei GLsizei))
   (define glGetRenderbufferParameteriv      (GL GLvoid "glGetRenderbufferParameteriv" GLenum GLenum GLint*))
   (define glIsFramebuffer                   (GL GLboolean "glIsFramebuffer" GLuint))
   (define glBindFramebuffer                 (GL GLvoid "glBindFramebuffer" GLenum GLuint))
   (define glDeleteFramebuffers              (GL GLvoid "glDeleteFramebuffers" GLsizei GLuint*))
   (define glGenFramebuffers                 (GL GLvoid "glGenFramebuffers" GLsizei GLuint&))
   (define glCheckFramebufferStatus          (GL GLenum "glCheckFramebufferStatus" GLenum))
   (define glFramebufferTexture1D            (GL GLvoid "glFramebufferTexture1D" GLenum GLenum GLenum GLuint GLint))
   (define glFramebufferTexture2D            (GL GLvoid "glFramebufferTexture2D" GLenum GLenum GLenum GLuint GLint))
   (define glFramebufferTexture3D            (GL GLvoid "glFramebufferTexture3D" GLenum GLenum GLenum GLuint GLint GLint))
   (define glFramebufferRenderbuffer         (GL GLvoid "glFramebufferRenderbuffer" GLenum GLenum GLenum GLuint))
   (define glGetFramebufferAttachmentParameteriv (GL GLvoid "glGetFramebufferAttachmentParameteriv" GLenum GLenum GLenum GLint*))
   (define glGenerateMipmap                  (GL GLvoid "glGenerateMipmap" GLenum))
   (define glBlitFramebuffer                 (GL GLvoid "glBlitFramebuffer" GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum))
   (define glRenderbufferStorageMultisample  (GL GLvoid "glRenderbufferStorageMultisample" GLenum GLsizei GLenum GLsizei GLsizei))
   (define glFramebufferTextureLayer         (GL GLvoid "glFramebufferTextureLayer" GLenum GLenum GLuint GLint GLint))

 ; ARB_texture_float
   (define GL_ARB_texture_float 1)

   (define GL_TEXTURE_LUMINANCE_TYPE         #x8C14)
   (define GL_TEXTURE_INTENSITY_TYPE         #x8C15)

 ; ARB_framebuffer_sRGB
   (define GL_ARB_framebuffer_sRGB 1)

   (define GL_FRAMEBUFFER_SRGB               #x8DB9)

 ; ARB_half_float_vertex
   (define GL_ARB_half_float_vertex 1)

   (define GLhalf fft-uint16)
   (define GL_HALF_FLOAT                     #x140B)

 ; ARB_map_buffer_range
   (define GL_ARB_map_buffer_range 1)

   (define GL_MAP_READ_BIT                   #x0001)
   (define GL_MAP_WRITE_BIT                  #x0002)
   (define GL_MAP_INVALIDATE_RANGE_BIT       #x0004)
   (define GL_MAP_INVALIDATE_BUFFER_BIT      #x0008)
   (define GL_MAP_FLUSH_EXPLICIT_BIT         #x0010)
   (define GL_MAP_UNSYNCHRONIZED_BIT         #x0020)

   (define glMapBufferRange (GL GLvoid* "glMapBufferRange" GLenum GLintptr GLsizeiptr GLbitfield))
   (define glFlushMappedBufferRange (GL GLvoid "glFlushMappedBufferRange" GLenum GLintptr GLsizeiptr))

 ; ARB_texture_compression_rgtc
   (define GL_ARB_texture_compression_rgtc 1)

   (define GL_COMPRESSED_RED_RGTC1           #x8DBB)
   (define GL_COMPRESSED_SIGNED_RED_RGTC1    #x8DBC)
   (define GL_COMPRESSED_RG_RGTC2            #x8DBD)
   (define GL_COMPRESSED_SIGNED_RG_RGTC2     #x8DBE)

 ; ARB_texture_rg
   (define GL_ARB_texture_rg 1)

   (define GL_RG                             #x8227)
   (define GL_RG_INTEGER                     #x8228)
   (define GL_R8                             #x8229)
   (define GL_R16                            #x822A)
   (define GL_RG8                            #x822B)
   (define GL_RG16                           #x822C)
   (define GL_R16F                           #x822D)
   (define GL_R32F                           #x822E)
   (define GL_RG16F                          #x822F)
   (define GL_RG32F                          #x8230)
   (define GL_R8I                            #x8231)
   (define GL_R8UI                           #x8232)
   (define GL_R16I                           #x8233)
   (define GL_R16UI                          #x8234)
   (define GL_R32I                           #x8235)
   (define GL_R32UI                          #x8236)
   (define GL_RG8I                           #x8237)
   (define GL_RG8UI                          #x8238)
   (define GL_RG16I                          #x8239)
   (define GL_RG16UI                         #x823A)
   (define GL_RG32I                          #x823B)
   (define GL_RG32UI                         #x823C)

 ; ARB_vertex_array_object
   (define GL_ARB_vertex_array_object 1)

   (define GL_VERTEX_ARRAY_BINDING           #x85B5)

   (define glBindVertexArray                 (GL GLvoid "glBindVertexArray" GLuint))
   (define glDeleteVertexArrays              (GL GLvoid "glDeleteVertexArrays" GLsizei GLuint*))
   (define glGenVertexArrays                 (GL GLvoid "glGenVertexArrays" GLsizei GLuint&))
   (define glIsVertexArray                   (GL GLboolean "glIsVertexArray" GLuint))

))
