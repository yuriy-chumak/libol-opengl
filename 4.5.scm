; OpenGL 4.5 (11 Aug 2014), GLSL 4.50
;  + ARB_clip_control
;  + ARB_conditional_render_inverted
;  + ARB_cull_distance
;  + ARB_derivative_control
;  + ARB_direct_state_access
;  + ARB_ES3_1_compatibility
;  + ARB_get_texture_sub_image
;  + ARB_shader_texture_image_samples
;  + ARB_texture_barrier
;  + KHR_context_flush_control
;  + KHR_robustness

(define-library (OpenGL 4.5)
(export
      (exports (OpenGL 4.4))

   GL_VERSION_4_5

;; ARB_clip_control
GL_ARB_clip_control
   GL_LOWER_LEFT
   GL_UPPER_LEFT
   GL_NEGATIVE_ONE_TO_ONE
   GL_ZERO_TO_ONE
   GL_CLIP_ORIGIN
   GL_CLIP_DEPTH_MODE

   glClipControl

;; ARB_conditional_render_inverted
GL_ARB_conditional_render_inverted
   GL_QUERY_WAIT_INVERTED
   GL_QUERY_NO_WAIT_INVERTED
   GL_QUERY_BY_REGION_WAIT_INVERTED
   GL_QUERY_BY_REGION_NO_WAIT_INVERTED

;; ARB_cull_distance
GL_ARB_cull_distance
   GL_MAX_CULL_DISTANCES
   GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES

;; ARB_derivative_control
GL_ARB_derivative_control
   ; none

;; ARB_direct_state_access
GL_ARB_direct_state_access
   GL_TEXTURE_TARGET
   GL_QUERY_TARGET
   GL_TEXTURE_BINDING_1D
   GL_TEXTURE_BINDING_1D_ARRAY
   GL_TEXTURE_BINDING_2D
   GL_TEXTURE_BINDING_2D_ARRAY
   GL_TEXTURE_BINDING_2D_MULTISAMPLE
   GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
   GL_TEXTURE_BINDING_3D
   GL_TEXTURE_BINDING_BUFFER
   GL_TEXTURE_BINDING_CUBE_MAP
   GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
   GL_TEXTURE_BINDING_RECTANGLE

   glCreateTransformFeedbacks
   glTransformFeedbackBufferBase
   glTransformFeedbackBufferRange
   glGetTransformFeedbackiv
   glGetTransformFeedbacki_v
   glGetTransformFeedbacki64_v
   glCreateBuffers
   glNamedBufferStorage
   glNamedBufferData
   glNamedBufferSubData
   glCopyNamedBufferSubData
   glClearNamedBufferData
   glClearNamedBufferSubData
   glMapNamedBuffer
   glMapNamedBufferRange
   glUnmapNamedBuffer
   glFlushMappedNamedBufferRange
   glGetNamedBufferParameteriv
   glGetNamedBufferParameteri64v
   glGetNamedBufferPointerv
   glGetNamedBufferSubData
   glCreateFramebuffers
   glNamedFramebufferRenderbuffer
   glNamedFramebufferParameteri
   glNamedFramebufferTexture
   glNamedFramebufferTextureLayer
   glNamedFramebufferDrawBuffer
   glNamedFramebufferDrawBuffers
   glNamedFramebufferReadBuffer
   glInvalidateNamedFramebufferData
   glInvalidateNamedFramebufferSubData
   glClearNamedFramebufferiv
   glClearNamedFramebufferuiv
   glClearNamedFramebufferfv
   glClearNamedFramebufferfi
   glBlitNamedFramebuffer
   glCheckNamedFramebufferStatus
   glGetNamedFramebufferParameteriv
   glGetNamedFramebufferAttachmentParameteriv
   glCreateRenderbuffers
   glNamedRenderbufferStorage
   glNamedRenderbufferStorageMultisample
   glGetNamedRenderbufferParameteriv
   glCreateTextures
   glTextureBuffer
   glTextureBufferRange
   glTextureStorage1D
   glTextureStorage2D
   glTextureStorage3D
   glTextureStorage2DMultisample
   glTextureStorage3DMultisample
   glTextureSubImage1D
   glTextureSubImage2D
   glTextureSubImage3D
   glCompressedTextureSubImage1D
   glCompressedTextureSubImage2D
   glCompressedTextureSubImage3D
   glCopyTextureSubImage1D
   glCopyTextureSubImage2D
   glCopyTextureSubImage3D
   glTextureParameterf
   glTextureParameterfv
   glTextureParameteri
   glTextureParameterIiv
   glTextureParameterIuiv
   glTextureParameteriv
   glGenerateTextureMipmap
   glBindTextureUnit
   glGetTextureImage
   glGetCompressedTextureImage
   glGetTextureLevelParameterfv
   glGetTextureLevelParameteriv
   glGetTextureParameterfv
   glGetTextureParameterIiv
   glGetTextureParameterIuiv
   glGetTextureParameteriv
   glCreateVertexArrays
   glDisableVertexArrayAttrib
   glEnableVertexArrayAttrib
   glVertexArrayElementBuffer
   glVertexArrayVertexBuffer
   glVertexArrayVertexBuffers
   glVertexArrayAttribBinding
   glVertexArrayAttribFormat
   glVertexArrayAttribIFormat
   glVertexArrayAttribLFormat
   glVertexArrayBindingDivisor
   glGetVertexArrayiv
   glGetVertexArrayIndexediv
   glGetVertexArrayIndexed64iv
   glCreateSamplers
   glCreateProgramPipelines
   glCreateQueries
   glGetQueryBufferObjecti64v
   glGetQueryBufferObjectiv
   glGetQueryBufferObjectui64v
   glGetQueryBufferObjectuiv

;; ARB_ES3_1_compatibility
GL_ARB_ES3_1_compatibility
   GL_BACK
   glMemoryBarrierByRegion

;; ARB_get_texture_sub_image
GL_ARB_get_texture_sub_image
   glGetTextureSubImage
   glGetCompressedTextureSubImage

;; ARB_shader_texture_image_samples
GL_ARB_shader_texture_image_samples
   ; none

;; ARB_texture_barrier
GL_ARB_texture_barrier
   glTextureBarrier

;; KHR_context_flush_control
GL_KHR_context_flush_control
   GL_NONE
   GL_CONTEXT_RELEASE_BEHAVIOR
   GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH

;; ARB_robustness
GL_ARB_robustness
   GL_NO_ERROR
   GL_CONTEXT_LOST
   GL_GUILTY_CONTEXT_RESET
   GL_INNOCENT_CONTEXT_RESET
   GL_UNKNOWN_CONTEXT_RESET
   GL_RESET_NOTIFICATION_STRATEGY
   GL_LOSE_CONTEXT_ON_RESET
   GL_NO_RESET_NOTIFICATION
   GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT

   glGetGraphicsResetStatus
   glGetnCompressedTexImage
   glGetnTexImage
   glGetnUniformdv
   glGetnUniformfv
   glGetnUniformiv
   glGetnUniformuiv
   glReadnPixels

;; KHR_robustness (compatibility profile)
   GL_COLOR_TABLE
   GL_POST_CONVOLUTION_COLOR_TABLE
   GL_POST_COLOR_MATRIX_COLOR_TABLE
   GL_PROXY_COLOR_TABLE
   GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
   GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
   GL_CONVOLUTION_1D
   GL_CONVOLUTION_2D
   GL_SEPARABLE_2D
   GL_HISTOGRAM
   GL_PROXY_HISTOGRAM
   GL_MINMAX

   glGetnMapdv
   glGetnMapfv
   glGetnMapiv
   glGetnPixelMapfv
   glGetnPixelMapuiv
   glGetnPixelMapusv
   glGetnPolygonStipple
   glGetnColorTable
   glGetnConvolutionFilter
   glGetnSeparableFilter
   glGetnHistogram
   glGetnMinmax

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 4.4))

(begin
   (define GL_VERSION_4_5 1)

   (setq GL gl:GetProcAddress)
   (setq GLint64& (fft& GLint64))
   (setq GLvoid*& (fft& GLvoid*))
   (setq GLintptr* (fft* GLintptr))
   (setq GLushort& (fft& GLushort))
   (setq GLubyte& (fft& GLubyte))


 ; ARB_clip_control
   (define GL_ARB_clip_control 1)

   (define GL_NEGATIVE_ONE_TO_ONE                           #x935E)
   (define GL_ZERO_TO_ONE                                   #x935F)
   (define GL_CLIP_ORIGIN                                   #x935C)
   (define GL_CLIP_DEPTH_MODE                               #x935D)
   (define GL_LOWER_LEFT                                    GL_LOWER_LEFT)  ; since 3.1
   (define GL_UPPER_LEFT                                    GL_UPPER_LEFT)  ; since 3.1

   (define glClipControl                                    (GL GLvoid "glClipControl" GLenum GLenum))

 ; ARB_conditional_render_inverted
   (define GL_ARB_conditional_render_inverted 1)

   (define GL_QUERY_WAIT_INVERTED                           #x8E17)
   (define GL_QUERY_NO_WAIT_INVERTED                        #x8E18)
   (define GL_QUERY_BY_REGION_WAIT_INVERTED                 #x8E19)
   (define GL_QUERY_BY_REGION_NO_WAIT_INVERTED              #x8E1A)

 ; ARB_cull_distance
   (define GL_ARB_cull_distance 1)

   (define GL_MAX_CULL_DISTANCES                            #x82F9)
   (define GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES          #x82FA)

 ; ARB_derivative_control
   (define GL_ARB_derivative_control 1)

 ; ARB_direct_state_access
   (define GL_ARB_direct_state_access 1)

   (define GL_TEXTURE_TARGET                                #x1006)
   (define GL_QUERY_TARGET                                  #x82EA)
   (define GL_TEXTURE_BINDING_1D                            GL_TEXTURE_BINDING_1D)  ; since 3.1
   (define GL_TEXTURE_BINDING_1D_ARRAY                      GL_TEXTURE_BINDING_1D_ARRAY)  ; since 3.1
   (define GL_TEXTURE_BINDING_2D                            GL_TEXTURE_BINDING_2D)  ; since 3.1
   (define GL_TEXTURE_BINDING_2D_ARRAY                      GL_TEXTURE_BINDING_2D_ARRAY)  ; since 3.1
   (define GL_TEXTURE_BINDING_2D_MULTISAMPLE                GL_TEXTURE_BINDING_2D_MULTISAMPLE)  ; since 3.2
   (define GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY          GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY)  ; since 3.2
   (define GL_TEXTURE_BINDING_3D                            GL_TEXTURE_BINDING_3D)  ; since 3.1
   (define GL_TEXTURE_BINDING_BUFFER                        GL_TEXTURE_BINDING_BUFFER)  ; since 3.1
   (define GL_TEXTURE_BINDING_CUBE_MAP                      GL_TEXTURE_BINDING_CUBE_MAP)  ; since 3.1
   (define GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                GL_TEXTURE_BINDING_CUBE_MAP_ARRAY)  ; since 4.0
   (define GL_TEXTURE_BINDING_RECTANGLE                     GL_TEXTURE_BINDING_RECTANGLE)  ; since 3.1

   (define glCreateTransformFeedbacks                       (GL GLvoid "glCreateTransformFeedbacks" GLsizei GLuint&))
   (define glTransformFeedbackBufferBase                    (GL GLvoid "glTransformFeedbackBufferBase" GLuint GLuint GLuint))
   (define glTransformFeedbackBufferRange                   (GL GLvoid "glTransformFeedbackBufferRange" GLuint GLuint GLuint GLintptr GLsizeiptr))
   (define glGetTransformFeedbackiv                         (GL GLvoid "glGetTransformFeedbackiv" GLuint GLenum GLint&))
   (define glGetTransformFeedbacki_v                        (GL GLvoid "glGetTransformFeedbacki_v" GLuint GLenum GLuint GLint&))
   (define glGetTransformFeedbacki64_v                      (GL GLvoid "glGetTransformFeedbacki64_v" GLuint GLenum GLuint GLint64&))
   (define glCreateBuffers                                  (GL GLvoid "glCreateBuffers" GLsizei GLuint&))
   (define glNamedBufferStorage                             (GL GLvoid "glNamedBufferStorage" GLuint GLsizeiptr GLvoid* GLbitfield))
   (define glNamedBufferData                                (GL GLvoid "glNamedBufferData" GLuint GLsizeiptr GLvoid* GLenum))
   (define glNamedBufferSubData                             (GL GLvoid "glNamedBufferSubData" GLuint GLintptr GLsizeiptr GLvoid*))
   (define glCopyNamedBufferSubData                         (GL GLvoid "glCopyNamedBufferSubData" GLuint GLuint GLintptr GLintptr GLsizeiptr))
   (define glClearNamedBufferData                           (GL GLvoid "glClearNamedBufferData" GLuint GLenum GLenum GLenum GLvoid*))
   (define glClearNamedBufferSubData                        (GL GLvoid "glClearNamedBufferSubData" GLuint GLenum GLintptr GLsizeiptr GLenum GLenum GLvoid*))
   (define glMapNamedBuffer                                 (GL GLvoid* "glMapNamedBuffer" GLuint GLenum))
   (define glMapNamedBufferRange                            (GL GLvoid* "glMapNamedBufferRange" GLuint GLintptr GLsizeiptr GLbitfield))
   (define glUnmapNamedBuffer                               (GL GLboolean "glUnmapNamedBuffer" GLuint))
   (define glFlushMappedNamedBufferRange                    (GL GLvoid "glFlushMappedNamedBufferRange" GLuint GLintptr GLsizeiptr))
   (define glGetNamedBufferParameteriv                      (GL GLvoid "glGetNamedBufferParameteriv" GLuint GLenum GLint&))
   (define glGetNamedBufferParameteri64v                    (GL GLvoid "glGetNamedBufferParameteri64v" GLuint GLenum GLint64&))
   (define glGetNamedBufferPointerv                         (GL GLvoid "glGetNamedBufferPointerv" GLuint GLenum GLvoid*&))
   (define glGetNamedBufferSubData                          (GL GLvoid "glGetNamedBufferSubData" GLuint GLintptr GLsizeiptr type-bytevector))
   (define glCreateFramebuffers                             (GL GLvoid "glCreateFramebuffers" GLsizei GLuint&))
   (define glNamedFramebufferRenderbuffer                   (GL GLvoid "glNamedFramebufferRenderbuffer" GLuint GLenum GLenum GLuint))
   (define glNamedFramebufferParameteri                     (GL GLvoid "glNamedFramebufferParameteri" GLuint GLenum GLint))
   (define glNamedFramebufferTexture                        (GL GLvoid "glNamedFramebufferTexture" GLuint GLenum GLuint GLint))
   (define glNamedFramebufferTextureLayer                   (GL GLvoid "glNamedFramebufferTextureLayer" GLuint GLenum GLuint GLint GLint))
   (define glNamedFramebufferDrawBuffer                     (GL GLvoid "glNamedFramebufferDrawBuffer" GLuint GLenum))
   (define glNamedFramebufferDrawBuffers                    (GL GLvoid "glNamedFramebufferDrawBuffers" GLuint GLsizei GLenum*))
   (define glNamedFramebufferReadBuffer                     (GL GLvoid "glNamedFramebufferReadBuffer" GLuint GLenum))
   (define glInvalidateNamedFramebufferData                 (GL GLvoid "glInvalidateNamedFramebufferData" GLuint GLsizei GLenum*))
   (define glInvalidateNamedFramebufferSubData              (GL GLvoid "glInvalidateNamedFramebufferSubData" GLuint GLsizei GLenum* GLint GLint GLsizei GLsizei))
   (define glClearNamedFramebufferiv                        (GL GLvoid "glClearNamedFramebufferiv" GLuint GLenum GLint GLint*))
   (define glClearNamedFramebufferuiv                       (GL GLvoid "glClearNamedFramebufferuiv" GLuint GLenum GLint GLuint*))
   (define glClearNamedFramebufferfv                        (GL GLvoid "glClearNamedFramebufferfv" GLuint GLenum GLint GLfloat*))
   (define glClearNamedFramebufferfi                        (GL GLvoid "glClearNamedFramebufferfi" GLuint GLenum GLint GLfloat GLint))
   (define glBlitNamedFramebuffer                           (GL GLvoid "glBlitNamedFramebuffer" GLuint GLuint GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum))
   (define glCheckNamedFramebufferStatus                    (GL GLenum "glCheckNamedFramebufferStatus" GLuint GLenum))
   (define glGetNamedFramebufferParameteriv                 (GL GLvoid "glGetNamedFramebufferParameteriv" GLuint GLenum GLint&))
   (define glGetNamedFramebufferAttachmentParameteriv       (GL GLvoid "glGetNamedFramebufferAttachmentParameteriv" GLuint GLenum GLenum GLint&))
   (define glCreateRenderbuffers                            (GL GLvoid "glCreateRenderbuffers" GLsizei GLuint&))
   (define glNamedRenderbufferStorage                       (GL GLvoid "glNamedRenderbufferStorage" GLuint GLenum GLsizei GLsizei))
   (define glNamedRenderbufferStorageMultisample            (GL GLvoid "glNamedRenderbufferStorageMultisample" GLuint GLsizei GLenum GLsizei GLsizei))
   (define glGetNamedRenderbufferParameteriv                (GL GLvoid "glGetNamedRenderbufferParameteriv" GLuint GLenum GLint&))
   (define glCreateTextures                                 (GL GLvoid "glCreateTextures" GLenum GLsizei GLuint&))
   (define glTextureBuffer                                  (GL GLvoid "glTextureBuffer" GLuint GLenum GLuint))
   (define glTextureBufferRange                             (GL GLvoid "glTextureBufferRange" GLuint GLenum GLuint GLintptr GLsizeiptr))
   (define glTextureStorage1D                               (GL GLvoid "glTextureStorage1D" GLuint GLsizei GLenum GLsizei))
   (define glTextureStorage2D                               (GL GLvoid "glTextureStorage2D" GLuint GLsizei GLenum GLsizei GLsizei))
   (define glTextureStorage3D                               (GL GLvoid "glTextureStorage3D" GLuint GLsizei GLenum GLsizei GLsizei GLsizei))
   (define glTextureStorage2DMultisample                    (GL GLvoid "glTextureStorage2DMultisample" GLuint GLsizei GLenum GLsizei GLsizei GLboolean))
   (define glTextureStorage3DMultisample                    (GL GLvoid "glTextureStorage3DMultisample" GLuint GLsizei GLenum GLsizei GLsizei GLsizei GLboolean))
   (define glTextureSubImage1D                              (GL GLvoid "glTextureSubImage1D" GLuint GLint GLint GLsizei GLenum GLenum GLvoid*))
   (define glTextureSubImage2D                              (GL GLvoid "glTextureSubImage2D" GLuint GLint GLint GLint GLsizei GLsizei GLenum GLenum GLvoid*))
   (define glTextureSubImage3D                              (GL GLvoid "glTextureSubImage3D" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum GLvoid*))
   (define glCompressedTextureSubImage1D                    (GL GLvoid "glCompressedTextureSubImage1D" GLuint GLint GLint GLsizei GLenum GLsizei GLvoid*))
   (define glCompressedTextureSubImage2D                    (GL GLvoid "glCompressedTextureSubImage2D" GLuint GLint GLint GLint GLsizei GLsizei GLenum GLsizei GLvoid*))
   (define glCompressedTextureSubImage3D                    (GL GLvoid "glCompressedTextureSubImage3D" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei GLvoid*))
   (define glCopyTextureSubImage1D                          (GL GLvoid "glCopyTextureSubImage1D" GLuint GLint GLint GLint GLint GLsizei))
   (define glCopyTextureSubImage2D                          (GL GLvoid "glCopyTextureSubImage2D" GLuint GLint GLint GLint GLint GLint GLsizei GLsizei))
   (define glCopyTextureSubImage3D                          (GL GLvoid "glCopyTextureSubImage3D" GLuint GLint GLint GLint GLint GLint GLint GLsizei GLsizei))
   (define glTextureParameterf                              (GL GLvoid "glTextureParameterf" GLuint GLenum GLfloat))
   (define glTextureParameterfv                             (GL GLvoid "glTextureParameterfv" GLuint GLenum GLfloat*))
   (define glTextureParameteri                              (GL GLvoid "glTextureParameteri" GLuint GLenum GLint))
   (define glTextureParameterIiv                            (GL GLvoid "glTextureParameterIiv" GLuint GLenum GLint*))
   (define glTextureParameterIuiv                           (GL GLvoid "glTextureParameterIuiv" GLuint GLenum GLuint*))
   (define glTextureParameteriv                             (GL GLvoid "glTextureParameteriv" GLuint GLenum GLint*))
   (define glGenerateTextureMipmap                          (GL GLvoid "glGenerateTextureMipmap" GLuint))
   (define glBindTextureUnit                                (GL GLvoid "glBindTextureUnit" GLuint GLuint))
   (define glGetTextureImage                                (GL GLvoid "glGetTextureImage" GLuint GLint GLenum GLenum GLsizei type-bytevector))
   (define glGetCompressedTextureImage                      (GL GLvoid "glGetCompressedTextureImage" GLuint GLint GLsizei type-bytevector))
   (define glGetTextureLevelParameterfv                     (GL GLvoid "glGetTextureLevelParameterfv" GLuint GLint GLenum GLfloat&))
   (define glGetTextureLevelParameteriv                     (GL GLvoid "glGetTextureLevelParameteriv" GLuint GLint GLenum GLint&))
   (define glGetTextureParameterfv                          (GL GLvoid "glGetTextureParameterfv" GLuint GLenum GLfloat&))
   (define glGetTextureParameterIiv                         (GL GLvoid "glGetTextureParameterIiv" GLuint GLenum GLint&))
   (define glGetTextureParameterIuiv                        (GL GLvoid "glGetTextureParameterIuiv" GLuint GLenum GLuint&))
   (define glGetTextureParameteriv                          (GL GLvoid "glGetTextureParameteriv" GLuint GLenum GLint&))
   (define glCreateVertexArrays                             (GL GLvoid "glCreateVertexArrays" GLsizei GLuint&))
   (define glDisableVertexArrayAttrib                       (GL GLvoid "glDisableVertexArrayAttrib" GLuint GLuint))
   (define glEnableVertexArrayAttrib                        (GL GLvoid "glEnableVertexArrayAttrib" GLuint GLuint))
   (define glVertexArrayElementBuffer                       (GL GLvoid "glVertexArrayElementBuffer" GLuint GLuint))
   (define glVertexArrayVertexBuffer                        (GL GLvoid "glVertexArrayVertexBuffer" GLuint GLuint GLuint GLintptr GLsizei))
   (define glVertexArrayVertexBuffers                       (GL GLvoid "glVertexArrayVertexBuffers" GLuint GLuint GLsizei GLuint* GLintptr* GLsizei*))
   (define glVertexArrayAttribBinding                       (GL GLvoid "glVertexArrayAttribBinding" GLuint GLuint GLuint))
   (define glVertexArrayAttribFormat                        (GL GLvoid "glVertexArrayAttribFormat" GLuint GLuint GLint GLenum GLboolean GLuint))
   (define glVertexArrayAttribIFormat                       (GL GLvoid "glVertexArrayAttribIFormat" GLuint GLuint GLint GLenum GLuint))
   (define glVertexArrayAttribLFormat                       (GL GLvoid "glVertexArrayAttribLFormat" GLuint GLuint GLint GLenum GLuint))
   (define glVertexArrayBindingDivisor                      (GL GLvoid "glVertexArrayBindingDivisor" GLuint GLuint GLuint))
   (define glGetVertexArrayiv                               (GL GLvoid "glGetVertexArrayiv" GLuint GLenum GLint&))
   (define glGetVertexArrayIndexediv                        (GL GLvoid "glGetVertexArrayIndexediv" GLuint GLuint GLenum GLint&))
   (define glGetVertexArrayIndexed64iv                      (GL GLvoid "glGetVertexArrayIndexed64iv" GLuint GLuint GLenum GLint64&))
   (define glCreateSamplers                                 (GL GLvoid "glCreateSamplers" GLsizei GLuint&))
   (define glCreateProgramPipelines                         (GL GLvoid "glCreateProgramPipelines" GLsizei GLuint&))
   (define glCreateQueries                                  (GL GLvoid "glCreateQueries" GLenum GLsizei GLuint&))
   (define glGetQueryBufferObjecti64v                       (GL GLvoid "glGetQueryBufferObjecti64v" GLuint GLuint GLenum GLintptr))
   (define glGetQueryBufferObjectiv                         (GL GLvoid "glGetQueryBufferObjectiv" GLuint GLuint GLenum GLintptr))
   (define glGetQueryBufferObjectui64v                      (GL GLvoid "glGetQueryBufferObjectui64v" GLuint GLuint GLenum GLintptr))
   (define glGetQueryBufferObjectuiv                        (GL GLvoid "glGetQueryBufferObjectuiv" GLuint GLuint GLenum GLintptr))

 ; ARB_ES3_1_compatibility
   (define GL_ARB_ES3_1_compatibility 1)

   (define GL_BACK                                 GL_BACK)  ; since 3.1
   (define glMemoryBarrierByRegion     (GL GLvoid "glMemoryBarrierByRegion" GLbitfield))

 ; ARB_get_texture_sub_image
   (define GL_ARB_get_texture_sub_image 1)

   (define glGetTextureSubImage        (GL GLvoid "glGetTextureSubImage" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum GLsizei type-bytevector))
   (define glGetCompressedTextureSubImage (GL GLvoid "glGetCompressedTextureSubImage" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLsizei type-bytevector))

 ; ARB_shader_texture_image_samples
   (define GL_ARB_shader_texture_image_samples 1)

 ; ARB_texture_barrier
   (define GL_ARB_texture_barrier 1)

   (define glTextureBarrier            (GL GLvoid "glTextureBarrier"))

 ; KHR_context_flush_control
   (define GL_KHR_context_flush_control 1)

   (define GL_NONE                                 GL_NONE)  ; since 3.1
   (define GL_CONTEXT_RELEASE_BEHAVIOR             #x82FB)
   (define GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH       #x82FC)

 ; ARB_robustness
   (define GL_ARB_robustness 1)

   (define GL_NO_ERROR                             GL_NO_ERROR)  ; since 3.1
   (define GL_CONTEXT_LOST                         #x0507)
   (define GL_GUILTY_CONTEXT_RESET                 #x8253)
   (define GL_INNOCENT_CONTEXT_RESET               #x8254)
   (define GL_UNKNOWN_CONTEXT_RESET                #x8255)
   (define GL_RESET_NOTIFICATION_STRATEGY          #x8256)
   (define GL_LOSE_CONTEXT_ON_RESET                #x8252)
   (define GL_NO_RESET_NOTIFICATION                #x8261)
   (define GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT       #x00000004)

   (define glGetGraphicsResetStatus    (GL GLenum "glGetGraphicsResetStatus"))
   (define glGetnCompressedTexImage    (GL GLvoid "glGetnCompressedTexImage" GLenum GLint GLsizei type-bytevector))
   (define glGetnTexImage              (GL GLvoid "glGetnTexImage" GLenum GLint GLenum GLenum GLsizei type-bytevector))
   (define glGetnUniformdv             (GL GLvoid "glGetnUniformdv" GLuint GLint GLsizei GLdouble&))
   (define glGetnUniformfv             (GL GLvoid "glGetnUniformfv" GLuint GLint GLsizei GLfloat&))
   (define glGetnUniformiv             (GL GLvoid "glGetnUniformiv" GLuint GLint GLsizei GLint&))
   (define glGetnUniformuiv            (GL GLvoid "glGetnUniformuiv" GLuint GLint GLsizei GLuint&))
   (define glReadnPixels               (GL GLvoid "glReadnPixels" GLint GLint GLsizei GLsizei GLenum GLenum GLsizei type-bytevector))

 ; KHR_robustness (compatibility profile)
   (define GL_COLOR_TABLE                          #x80D0)
   (define GL_POST_CONVOLUTION_COLOR_TABLE         #x80D1)
   (define GL_POST_COLOR_MATRIX_COLOR_TABLE        #x80D2)
   (define GL_PROXY_COLOR_TABLE                    #x80D3)
   (define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE   #x80D4)
   (define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE  #x80D5)
   (define GL_CONVOLUTION_1D                       #x8010)
   (define GL_CONVOLUTION_2D                       #x8011)
   (define GL_SEPARABLE_2D                         #x8012)
   (define GL_HISTOGRAM                            #x8024)
   (define GL_PROXY_HISTOGRAM                      #x8025)
   (define GL_MINMAX                               #x802E)

   (define glGetnMapdv                 (GL GLvoid "glGetnMapdv" GLenum GLenum GLsizei GLdouble&))
   (define glGetnMapfv                 (GL GLvoid "glGetnMapfv" GLenum GLenum GLsizei GLfloat&))
   (define glGetnMapiv                 (GL GLvoid "glGetnMapiv" GLenum GLenum GLsizei GLint&))
   (define glGetnPixelMapfv            (GL GLvoid "glGetnPixelMapfv" GLenum GLsizei GLfloat&))
   (define glGetnPixelMapuiv           (GL GLvoid "glGetnPixelMapuiv" GLenum GLsizei GLuint&))
   (define glGetnPixelMapusv           (GL GLvoid "glGetnPixelMapusv" GLenum GLsizei GLushort&))
   (define glGetnPolygonStipple        (GL GLvoid "glGetnPolygonStipple" GLsizei GLubyte&))
   (define glGetnColorTable            (GL GLvoid "glGetnColorTable" GLenum GLenum GLenum GLsizei type-bytevector))
   (define glGetnConvolutionFilter     (GL GLvoid "glGetnConvolutionFilter" GLenum GLenum GLenum GLsizei type-bytevector))
   (define glGetnSeparableFilter       (GL GLvoid "glGetnSeparableFilter" GLenum GLenum GLenum GLsizei type-bytevector GLsizei type-bytevector type-bytevector))
   (define glGetnHistogram             (GL GLvoid "glGetnHistogram" GLenum GLboolean GLenum GLenum GLsizei type-bytevector))
   (define glGetnMinmax                (GL GLvoid "glGetnMinmax" GLenum GLboolean GLenum GLenum GLsizei type-bytevector))

))
