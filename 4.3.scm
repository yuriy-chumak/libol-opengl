; OpenGL 4.3 (6 Aug 2012), GLSL 4.30
;  + ARB_arrays_of_arrays
;  + ARB_ES3_compatibility
;  + ARB_clear_buffer_object
;  + ARB_compute_shader
;  + ARB_copy_image
;  + KHR_debug
;  + ARB_explicit_uniform_location
;  + ARB_fragment_layer_viewport
;  + ARB_framebuffer_no_attachments
;  + ARB_internalformat_query2
;  + ARB_invalidate_subdata
;  + ARB_multi_draw_indirect
;  + ARB_program_interface_query
;  + ARB_robust_buffer_access_behavior
;  + ARB_shader_image_size
;  + ARB_shader_storage_buffer_object
;  + ARB_stencil_texturing
;  + ARB_texture_buffer_range
;  + ARB_texture_query_levels
;  + ARB_texture_storage_multisample
;  + ARB_texture_view
;  + ARB_vertex_attrib_binding

(define-library (OpenGL 4.3)
(export
      (exports (OpenGL 4.2))

   GL_VERSION_4_3

   GL_NUM_SHADING_LANGUAGE_VERSIONS
   GL_VERTEX_ATTRIB_ARRAY_LONG

;; ARB_arrays_of_arrays
GL_ARB_arrays_of_arrays
   ; none

;; ARB_ES3_compatibility
GL_ARB_ES3_compatibility
   GL_COMPRESSED_RGB8_ETC2
   GL_COMPRESSED_SRGB8_ETC2
   GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
   GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
   GL_COMPRESSED_RGBA8_ETC2_EAC
   GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
   GL_COMPRESSED_R11_EAC
   GL_COMPRESSED_SIGNED_R11_EAC
   GL_COMPRESSED_RG11_EAC
   GL_COMPRESSED_SIGNED_RG11_EAC
   GL_PRIMITIVE_RESTART_FIXED_INDEX
   GL_ANY_SAMPLES_PASSED_CONSERVATIVE
   GL_MAX_ELEMENT_INDEX

;; ARB_clear_buffer_object
GL_ARB_clear_buffer_object
   glClearBufferData
   glClearBufferSubData

;; ARB_compute_shader
GL_ARB_compute_shader
   GL_COMPUTE_SHADER
   GL_MAX_COMPUTE_UNIFORM_BLOCKS
   GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
   GL_MAX_COMPUTE_IMAGE_UNIFORMS
   GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
   GL_MAX_COMPUTE_UNIFORM_COMPONENTS
   GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
   GL_MAX_COMPUTE_ATOMIC_COUNTERS
   GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
   GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
   GL_MAX_COMPUTE_WORK_GROUP_COUNT
   GL_MAX_COMPUTE_WORK_GROUP_SIZE
   GL_COMPUTE_WORK_GROUP_SIZE
   GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
   GL_DISPATCH_INDIRECT_BUFFER
   GL_DISPATCH_INDIRECT_BUFFER_BINDING
   GL_COMPUTE_SHADER_BIT
   glDispatchCompute
   glDispatchComputeIndirect

;; ARB_copy_image
GL_ARB_copy_image
   glCopyImageSubData

;; KHR_debug
GL_KHR_debug
   GL_DEBUG_OUTPUT_SYNCHRONOUS
   GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
   GL_DEBUG_CALLBACK_FUNCTION
   GL_DEBUG_CALLBACK_USER_PARAM
   GL_DEBUG_SOURCE_API
   GL_DEBUG_SOURCE_WINDOW_SYSTEM
   GL_DEBUG_SOURCE_SHADER_COMPILER
   GL_DEBUG_SOURCE_THIRD_PARTY
   GL_DEBUG_SOURCE_APPLICATION
   GL_DEBUG_SOURCE_OTHER
   GL_DEBUG_TYPE_ERROR
   GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
   GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
   GL_DEBUG_TYPE_PORTABILITY
   GL_DEBUG_TYPE_PERFORMANCE
   GL_DEBUG_TYPE_OTHER
   GL_DEBUG_TYPE_MARKER
   GL_DEBUG_TYPE_PUSH_GROUP
   GL_DEBUG_TYPE_POP_GROUP
   GL_DEBUG_SEVERITY_NOTIFICATION
   GL_MAX_DEBUG_GROUP_STACK_DEPTH
   GL_DEBUG_GROUP_STACK_DEPTH
   GL_BUFFER
   GL_SHADER
   GL_PROGRAM
   GL_VERTEX_ARRAY
   GL_QUERY
   GL_PROGRAM_PIPELINE
   GL_SAMPLER
   GL_MAX_LABEL_LENGTH
   GL_MAX_DEBUG_MESSAGE_LENGTH
   GL_MAX_DEBUG_LOGGED_MESSAGES
   GL_DEBUG_LOGGED_MESSAGES
   GL_DEBUG_SEVERITY_HIGH
   GL_DEBUG_SEVERITY_MEDIUM
   GL_DEBUG_SEVERITY_LOW
   GL_DEBUG_OUTPUT
   GL_CONTEXT_FLAG_DEBUG_BIT
   glDebugMessageControl
   glDebugMessageInsert
   glDebugMessageCallback
   glGetDebugMessageLog
   glPushDebugGroup
   glPopDebugGroup
   glObjectLabel
   glGetObjectLabel
   glObjectPtrLabel
   glGetObjectPtrLabel
   glGetPointerv

;; KHR_debug functionality not supported in core profile
   GL_DISPLAY_LIST

;; ARB_explicit_uniform_location
GL_ARB_explicit_uniform_location
   GL_MAX_UNIFORM_LOCATIONS

;; ARB_fragment_layer_viewport
GL_ARB_fragment_layer_viewport
   ; none

;; ARB_framebuffer_no_attachments
GL_ARB_framebuffer_no_attachments
   GL_FRAMEBUFFER_DEFAULT_WIDTH
   GL_FRAMEBUFFER_DEFAULT_HEIGHT
   GL_FRAMEBUFFER_DEFAULT_LAYERS
   GL_FRAMEBUFFER_DEFAULT_SAMPLES
   GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
   GL_MAX_FRAMEBUFFER_WIDTH
   GL_MAX_FRAMEBUFFER_HEIGHT
   GL_MAX_FRAMEBUFFER_LAYERS
   GL_MAX_FRAMEBUFFER_SAMPLES
   glFramebufferParameteri
   glGetFramebufferParameteriv

;; ARB_internalformat_query2
GL_ARB_internalformat_query2
   GL_INTERNALFORMAT_SUPPORTED
   GL_INTERNALFORMAT_PREFERRED
   GL_INTERNALFORMAT_RED_SIZE
   GL_INTERNALFORMAT_GREEN_SIZE
   GL_INTERNALFORMAT_BLUE_SIZE
   GL_INTERNALFORMAT_ALPHA_SIZE
   GL_INTERNALFORMAT_DEPTH_SIZE
   GL_INTERNALFORMAT_STENCIL_SIZE
   GL_INTERNALFORMAT_SHARED_SIZE
   GL_INTERNALFORMAT_RED_TYPE
   GL_INTERNALFORMAT_GREEN_TYPE
   GL_INTERNALFORMAT_BLUE_TYPE
   GL_INTERNALFORMAT_ALPHA_TYPE
   GL_INTERNALFORMAT_DEPTH_TYPE
   GL_INTERNALFORMAT_STENCIL_TYPE
   GL_MAX_WIDTH
   GL_MAX_HEIGHT
   GL_MAX_DEPTH
   GL_MAX_LAYERS
   GL_MAX_COMBINED_DIMENSIONS
   GL_COLOR_COMPONENTS
   GL_DEPTH_COMPONENTS
   GL_STENCIL_COMPONENTS
   GL_COLOR_RENDERABLE
   GL_DEPTH_RENDERABLE
   GL_STENCIL_RENDERABLE
   GL_FRAMEBUFFER_RENDERABLE
   GL_FRAMEBUFFER_RENDERABLE_LAYERED
   GL_FRAMEBUFFER_BLEND
   GL_READ_PIXELS
   GL_READ_PIXELS_FORMAT
   GL_READ_PIXELS_TYPE
   GL_TEXTURE_IMAGE_FORMAT
   GL_TEXTURE_IMAGE_TYPE
   GL_GET_TEXTURE_IMAGE_FORMAT
   GL_GET_TEXTURE_IMAGE_TYPE
   GL_MIPMAP
   GL_MANUAL_GENERATE_MIPMAP
   GL_AUTO_GENERATE_MIPMAP
   GL_COLOR_ENCODING
   GL_SRGB_READ
   GL_SRGB_WRITE
   GL_FILTER
   GL_VERTEX_TEXTURE
   GL_TESS_CONTROL_TEXTURE
   GL_TESS_EVALUATION_TEXTURE
   GL_GEOMETRY_TEXTURE
   GL_FRAGMENT_TEXTURE
   GL_COMPUTE_TEXTURE
   GL_TEXTURE_SHADOW
   GL_TEXTURE_GATHER
   GL_TEXTURE_GATHER_SHADOW
   GL_SHADER_IMAGE_LOAD
   GL_SHADER_IMAGE_STORE
   GL_SHADER_IMAGE_ATOMIC
   GL_IMAGE_TEXEL_SIZE
   GL_IMAGE_COMPATIBILITY_CLASS
   GL_IMAGE_PIXEL_FORMAT
   GL_IMAGE_PIXEL_TYPE
   GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
   GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
   GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
   GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
   GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
   GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
   GL_TEXTURE_COMPRESSED_BLOCK_SIZE
   GL_CLEAR_BUFFER
   GL_TEXTURE_VIEW
   GL_VIEW_COMPATIBILITY_CLASS
   GL_FULL_SUPPORT
   GL_CAVEAT_SUPPORT
   GL_IMAGE_CLASS_4_X_32
   GL_IMAGE_CLASS_2_X_32
   GL_IMAGE_CLASS_1_X_32
   GL_IMAGE_CLASS_4_X_16
   GL_IMAGE_CLASS_2_X_16
   GL_IMAGE_CLASS_1_X_16
   GL_IMAGE_CLASS_4_X_8
   GL_IMAGE_CLASS_2_X_8
   GL_IMAGE_CLASS_1_X_8
   GL_IMAGE_CLASS_11_11_10
   GL_IMAGE_CLASS_10_10_10_2
   GL_VIEW_CLASS_128_BITS
   GL_VIEW_CLASS_96_BITS
   GL_VIEW_CLASS_64_BITS
   GL_VIEW_CLASS_48_BITS
   GL_VIEW_CLASS_32_BITS
   GL_VIEW_CLASS_24_BITS
   GL_VIEW_CLASS_16_BITS
   GL_VIEW_CLASS_8_BITS
   GL_VIEW_CLASS_S3TC_DXT1_RGB
   GL_VIEW_CLASS_S3TC_DXT1_RGBA
   GL_VIEW_CLASS_S3TC_DXT3_RGBA
   GL_VIEW_CLASS_S3TC_DXT5_RGBA
   GL_VIEW_CLASS_RGTC1_RED
   GL_VIEW_CLASS_RGTC2_RG
   GL_VIEW_CLASS_BPTC_UNORM
   GL_VIEW_CLASS_BPTC_FLOAT
   glGetInternalformati64v

;; ARB_invalidate_subdata
GL_ARB_invalidate_subdata
   glInvalidateTexSubImage
   glInvalidateTexImage
   glInvalidateBufferSubData
   glInvalidateBufferData
   glInvalidateFramebuffer
   glInvalidateSubFramebuffer

;; ARB_multi_draw_indirect
GL_ARB_multi_draw_indirect
   glMultiDrawArraysIndirect
   glMultiDrawElementsIndirect

;; ARB_program_interface_query
GL_ARB_program_interface_query
   GL_UNIFORM
   GL_UNIFORM_BLOCK
   GL_PROGRAM_INPUT
   GL_PROGRAM_OUTPUT
   GL_BUFFER_VARIABLE
   GL_SHADER_STORAGE_BLOCK
   GL_IS_PER_PATCH
   GL_VERTEX_SUBROUTINE
   GL_TESS_CONTROL_SUBROUTINE
   GL_TESS_EVALUATION_SUBROUTINE
   GL_GEOMETRY_SUBROUTINE
   GL_FRAGMENT_SUBROUTINE
   GL_COMPUTE_SUBROUTINE
   GL_VERTEX_SUBROUTINE_UNIFORM
   GL_TESS_CONTROL_SUBROUTINE_UNIFORM
   GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
   GL_GEOMETRY_SUBROUTINE_UNIFORM
   GL_FRAGMENT_SUBROUTINE_UNIFORM
   GL_COMPUTE_SUBROUTINE_UNIFORM
   GL_TRANSFORM_FEEDBACK_VARYING
   GL_ACTIVE_RESOURCES
   GL_MAX_NAME_LENGTH
   GL_MAX_NUM_ACTIVE_VARIABLES
   GL_MAX_NUM_COMPATIBLE_SUBROUTINES
   GL_NAME_LENGTH
   GL_TYPE
   GL_ARRAY_SIZE
   GL_OFFSET
   GL_BLOCK_INDEX
   GL_ARRAY_STRIDE
   GL_MATRIX_STRIDE
   GL_IS_ROW_MAJOR
   GL_ATOMIC_COUNTER_BUFFER_INDEX
   GL_BUFFER_BINDING
   GL_BUFFER_DATA_SIZE
   GL_NUM_ACTIVE_VARIABLES
   GL_ACTIVE_VARIABLES
   GL_REFERENCED_BY_VERTEX_SHADER
   GL_REFERENCED_BY_TESS_CONTROL_SHADER
   GL_REFERENCED_BY_TESS_EVALUATION_SHADER
   GL_REFERENCED_BY_GEOMETRY_SHADER
   GL_REFERENCED_BY_FRAGMENT_SHADER
   GL_REFERENCED_BY_COMPUTE_SHADER
   GL_TOP_LEVEL_ARRAY_SIZE
   GL_TOP_LEVEL_ARRAY_STRIDE
   GL_LOCATION
   GL_LOCATION_INDEX
   glGetProgramInterfaceiv
   glGetProgramResourceIndex
   glGetProgramResourceName
   glGetProgramResourceiv
   glGetProgramResourceLocation
   glGetProgramResourceLocationIndex

;; ARB_robust_buffer_access_behavior
GL_ARB_robust_buffer_access_behavior
   ; none

;; ARB_shader_image_size
GL_ARB_shader_image_size
   ; none

;; ARB_shader_storage_buffer_object
GL_ARB_shader_storage_buffer_object
   GL_SHADER_STORAGE_BUFFER
   GL_SHADER_STORAGE_BUFFER_BINDING
   GL_SHADER_STORAGE_BUFFER_START
   GL_SHADER_STORAGE_BUFFER_SIZE
   GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
   GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
   GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
   GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
   GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
   GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
   GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
   GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
   GL_MAX_SHADER_STORAGE_BLOCK_SIZE
   GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
   GL_SHADER_STORAGE_BARRIER_BIT
   GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
   glShaderStorageBlockBinding

;; ARB_stencil_texturing
GL_ARB_stencil_texturing
   GL_DEPTH_STENCIL_TEXTURE_MODE

;; ARB_texture_buffer_range
GL_ARB_texture_buffer_range
   GL_TEXTURE_BUFFER_OFFSET
   GL_TEXTURE_BUFFER_SIZE
   GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
   glTexBufferRange

;; ARB_texture_query_levels
GL_ARB_texture_query_levels
   ; none

;; ARB_texture_storage_multisample
GL_ARB_texture_storage_multisample
   glTexStorage2DMultisample
   glTexStorage3DMultisample

;; ARB_texture_view
GL_ARB_texture_view
   GL_TEXTURE_VIEW_MIN_LEVEL
   GL_TEXTURE_VIEW_NUM_LEVELS
   GL_TEXTURE_VIEW_MIN_LAYER
   GL_TEXTURE_VIEW_NUM_LAYERS
   GL_TEXTURE_IMMUTABLE_LEVELS
   glTextureView

;; ARB_vertex_attrib_binding
GL_ARB_vertex_attrib_binding
   GL_VERTEX_ATTRIB_BINDING
   GL_VERTEX_ATTRIB_RELATIVE_OFFSET
   GL_VERTEX_BINDING_DIVISOR
   GL_VERTEX_BINDING_OFFSET
   GL_VERTEX_BINDING_STRIDE
   GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
   GL_MAX_VERTEX_ATTRIB_BINDINGS
   glBindVertexBuffer
   glVertexAttribFormat
   glVertexAttribIFormat
   glVertexAttribLFormat
   glVertexAttribBinding
   glVertexBindingDivisor

;; Restore functionality removed in GL 3.2 core to GL 4.3.
   GL_STACK_UNDERFLOW
   GL_STACK_OVERFLOW
)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 4.2))

(begin
   (define GL_VERSION_4_3 1)

   (setq GL gl:GetProcAddress)
   (setq GLenum& (fft& GLenum))
   (setq GLsizei& (fft& GLsizei))
   (setq GLint64& (fft& GLint64))

   (define GL_NUM_SHADING_LANGUAGE_VERSIONS  #x82E9)
   (define GL_VERTEX_ATTRIB_ARRAY_LONG       #x874E)

 ; ARB_arrays_of_arrays
   (define GL_ARB_arrays_of_arrays 1)

 ; ARB_ES3_compatibility
   (define GL_ARB_ES3_compatibility 1)

   (define GL_COMPRESSED_RGB8_ETC2                                    #x9274)
   (define GL_COMPRESSED_SRGB8_ETC2                                   #x9275)
   (define GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2                #x9276)
   (define GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2               #x9277)
   (define GL_COMPRESSED_RGBA8_ETC2_EAC                               #x9278)
   (define GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                        #x9279)
   (define GL_COMPRESSED_R11_EAC                                      #x9270)
   (define GL_COMPRESSED_SIGNED_R11_EAC                               #x9271)
   (define GL_COMPRESSED_RG11_EAC                                     #x9272)
   (define GL_COMPRESSED_SIGNED_RG11_EAC                              #x9273)
   (define GL_PRIMITIVE_RESTART_FIXED_INDEX                           #x8D69)
   (define GL_ANY_SAMPLES_PASSED_CONSERVATIVE                         #x8D6A)
   (define GL_MAX_ELEMENT_INDEX                                       #x8D6B)

 ; ARB_clear_buffer_object
   (define GL_ARB_clear_buffer_object 1)

   (define glClearBufferData                                          (GL GLvoid "glClearBufferData" GLenum GLenum GLenum GLenum GLvoid*))
   (define glClearBufferSubData                                       (GL GLvoid "glClearBufferSubData" GLenum GLenum GLintptr GLsizeiptr GLenum GLenum GLvoid*))

 ; ARB_compute_shader
   (define GL_ARB_compute_shader 1)

   (define GL_COMPUTE_SHADER                                          #x91B9)
   (define GL_MAX_COMPUTE_UNIFORM_BLOCKS                              #x91BB)
   (define GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS                         #x91BC)
   (define GL_MAX_COMPUTE_IMAGE_UNIFORMS                              #x91BD)
   (define GL_MAX_COMPUTE_SHARED_MEMORY_SIZE                          #x8262)
   (define GL_MAX_COMPUTE_UNIFORM_COMPONENTS                          #x8263)
   (define GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                      #x8264)
   (define GL_MAX_COMPUTE_ATOMIC_COUNTERS                             #x8265)
   (define GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS                 #x8266)
   (define GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS                      #x90EB)
   (define GL_MAX_COMPUTE_WORK_GROUP_COUNT                            #x91BE)
   (define GL_MAX_COMPUTE_WORK_GROUP_SIZE                             #x91BF)
   (define GL_COMPUTE_WORK_GROUP_SIZE                                 #x8267)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER              #x90EC)
   (define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER      #x90ED)
   (define GL_DISPATCH_INDIRECT_BUFFER                                #x90EE)
   (define GL_DISPATCH_INDIRECT_BUFFER_BINDING                        #x90EF)
   (define GL_COMPUTE_SHADER_BIT                                      #x00000020)

   (define glDispatchCompute                                          (GL GLvoid "glDispatchCompute" GLuint GLuint GLuint))
   (define glDispatchComputeIndirect                                  (GL GLvoid "glDispatchComputeIndirect" GLintptr))

 ; ARB_copy_image
   (define GL_ARB_copy_image 1)

   (define glCopyImageSubData                                         (GL GLvoid "glCopyImageSubData" GLuint GLenum GLint GLint GLint GLint GLuint GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei))

 ; KHR_debug
   (define GL_KHR_debug 1)

   (define GL_DEBUG_OUTPUT_SYNCHRONOUS                                #x8242)
   (define GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                        #x8243)
   (define GL_DEBUG_CALLBACK_FUNCTION                                 #x8244)
   (define GL_DEBUG_CALLBACK_USER_PARAM                               #x8245)
   (define GL_DEBUG_SOURCE_API                                        #x8246)
   (define GL_DEBUG_SOURCE_WINDOW_SYSTEM                              #x8247)
   (define GL_DEBUG_SOURCE_SHADER_COMPILER                            #x8248)
   (define GL_DEBUG_SOURCE_THIRD_PARTY                                #x8249)
   (define GL_DEBUG_SOURCE_APPLICATION                                #x824A)
   (define GL_DEBUG_SOURCE_OTHER                                      #x824B)
   (define GL_DEBUG_TYPE_ERROR                                        #x824C)
   (define GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR                          #x824D)
   (define GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR                           #x824E)
   (define GL_DEBUG_TYPE_PORTABILITY                                  #x824F)
   (define GL_DEBUG_TYPE_PERFORMANCE                                  #x8250)
   (define GL_DEBUG_TYPE_OTHER                                        #x8251)
   (define GL_DEBUG_TYPE_MARKER                                       #x8268)
   (define GL_DEBUG_TYPE_PUSH_GROUP                                   #x8269)
   (define GL_DEBUG_TYPE_POP_GROUP                                    #x826A)
   (define GL_DEBUG_SEVERITY_NOTIFICATION                             #x826B)
   (define GL_MAX_DEBUG_GROUP_STACK_DEPTH                             #x826C)
   (define GL_DEBUG_GROUP_STACK_DEPTH                                 #x826D)
   (define GL_BUFFER                                                  #x82E0)
   (define GL_SHADER                                                  #x82E1)
   (define GL_PROGRAM                                                 #x82E2)
   (define GL_VERTEX_ARRAY                                            GL_VERTEX_ARRAY)
   (define GL_QUERY                                                   #x82E3)
   (define GL_PROGRAM_PIPELINE                                        #x82E4)
   (define GL_SAMPLER                                                 #x82E6)
   (define GL_MAX_LABEL_LENGTH                                        #x82E8)
   (define GL_MAX_DEBUG_MESSAGE_LENGTH                                #x9143)
   (define GL_MAX_DEBUG_LOGGED_MESSAGES                               #x9144)
   (define GL_DEBUG_LOGGED_MESSAGES                                   #x9145)
   (define GL_DEBUG_SEVERITY_HIGH                                     #x9146)
   (define GL_DEBUG_SEVERITY_MEDIUM                                   #x9147)
   (define GL_DEBUG_SEVERITY_LOW                                      #x9148)
   (define GL_DEBUG_OUTPUT                                            #x92E0)
   (define GL_CONTEXT_FLAG_DEBUG_BIT                                  #x00000002)

   (define glDebugMessageControl                                      (GL GLvoid "glDebugMessageControl" GLenum GLenum GLenum GLsizei GLuint* GLboolean))
   (define glDebugMessageInsert                                       (GL GLvoid "glDebugMessageInsert" GLenum GLenum GLuint GLenum GLsizei GLchar*))
   (define glDebugMessageCallback                                     (GL GLvoid "glDebugMessageCallback" GLvoid* GLvoid*))
   (define glGetDebugMessageLog                                       (GL GLuint "glGetDebugMessageLog" GLuint GLsizei GLenum& GLenum& GLuint& GLenum& GLsizei& type-bytevector))
   (define glPushDebugGroup                                           (GL GLvoid "glPushDebugGroup" GLenum GLuint GLsizei GLchar*))
   (define glPopDebugGroup                                            (GL GLvoid "glPopDebugGroup"))
   (define glObjectLabel                                              (GL GLvoid "glObjectLabel" GLenum GLuint GLsizei GLchar*))
   (define glGetObjectLabel                                           (GL GLvoid "glGetObjectLabel" GLenum GLuint GLsizei GLsizei& type-bytevector))
   (define glObjectPtrLabel                                           (GL GLvoid "glObjectPtrLabel" GLvoid* GLsizei GLchar*))
   (define glGetObjectPtrLabel                                        (GL GLvoid "glGetObjectPtrLabel" GLvoid* GLsizei GLsizei& type-bytevector))
   (define glGetPointerv                                              glGetPointerv)

 ; KHR_debug functionality not supported in core profile
   (define GL_DISPLAY_LIST                   #x82E7)

 ; ARB_explicit_uniform_location
   (define GL_ARB_explicit_uniform_location 1)

   (define GL_MAX_UNIFORM_LOCATIONS                                   #x826E)

 ; ARB_fragment_layer_viewport
   (define GL_ARB_fragment_layer_viewport 1)

 ; ARB_framebuffer_no_attachments
   (define GL_ARB_framebuffer_no_attachments 1)

   (define GL_FRAMEBUFFER_DEFAULT_WIDTH                               #x9310)
   (define GL_FRAMEBUFFER_DEFAULT_HEIGHT                              #x9311)
   (define GL_FRAMEBUFFER_DEFAULT_LAYERS                              #x9312)
   (define GL_FRAMEBUFFER_DEFAULT_SAMPLES                             #x9313)
   (define GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS              #x9314)
   (define GL_MAX_FRAMEBUFFER_WIDTH                                   #x9315)
   (define GL_MAX_FRAMEBUFFER_HEIGHT                                  #x9316)
   (define GL_MAX_FRAMEBUFFER_LAYERS                                  #x9317)
   (define GL_MAX_FRAMEBUFFER_SAMPLES                                 #x9318)

   (define glFramebufferParameteri                                    (GL GLvoid "glFramebufferParameteri" GLenum GLenum GLint))
   (define glGetFramebufferParameteriv                                (GL GLvoid "glGetFramebufferParameteriv" GLenum GLenum GLint&))

 ; ARB_internalformat_query2
   (define GL_ARB_internalformat_query2 1)

   (define GL_INTERNALFORMAT_SUPPORTED                                #x826F)
   (define GL_INTERNALFORMAT_PREFERRED                                #x8270)
   (define GL_INTERNALFORMAT_RED_SIZE                                 #x8271)
   (define GL_INTERNALFORMAT_GREEN_SIZE                               #x8272)
   (define GL_INTERNALFORMAT_BLUE_SIZE                                #x8273)
   (define GL_INTERNALFORMAT_ALPHA_SIZE                               #x8274)
   (define GL_INTERNALFORMAT_DEPTH_SIZE                               #x8275)
   (define GL_INTERNALFORMAT_STENCIL_SIZE                             #x8276)
   (define GL_INTERNALFORMAT_SHARED_SIZE                              #x8277)
   (define GL_INTERNALFORMAT_RED_TYPE                                 #x8278)
   (define GL_INTERNALFORMAT_GREEN_TYPE                               #x8279)
   (define GL_INTERNALFORMAT_BLUE_TYPE                                #x827A)
   (define GL_INTERNALFORMAT_ALPHA_TYPE                               #x827B)
   (define GL_INTERNALFORMAT_DEPTH_TYPE                               #x827C)
   (define GL_INTERNALFORMAT_STENCIL_TYPE                             #x827D)
   (define GL_MAX_WIDTH                                               #x827E)
   (define GL_MAX_HEIGHT                                              #x827F)
   (define GL_MAX_DEPTH                                               #x8280)
   (define GL_MAX_LAYERS                                              #x8281)
   (define GL_MAX_COMBINED_DIMENSIONS                                 #x8282)
   (define GL_COLOR_COMPONENTS                                        #x8283)
   (define GL_DEPTH_COMPONENTS                                        #x8284)
   (define GL_STENCIL_COMPONENTS                                      #x8285)
   (define GL_COLOR_RENDERABLE                                        #x8286)
   (define GL_DEPTH_RENDERABLE                                        #x8287)
   (define GL_STENCIL_RENDERABLE                                      #x8288)
   (define GL_FRAMEBUFFER_RENDERABLE                                  #x8289)
   (define GL_FRAMEBUFFER_RENDERABLE_LAYERED                          #x828A)
   (define GL_FRAMEBUFFER_BLEND                                       #x828B)
   (define GL_READ_PIXELS                                             #x828C)
   (define GL_READ_PIXELS_FORMAT                                      #x828D)
   (define GL_READ_PIXELS_TYPE                                        #x828E)
   (define GL_TEXTURE_IMAGE_FORMAT                                    #x828F)
   (define GL_TEXTURE_IMAGE_TYPE                                      #x8290)
   (define GL_GET_TEXTURE_IMAGE_FORMAT                                #x8291)
   (define GL_GET_TEXTURE_IMAGE_TYPE                                  #x8292)
   (define GL_MIPMAP                                                  #x8293)
   (define GL_MANUAL_GENERATE_MIPMAP                                  #x8294)
   (define GL_AUTO_GENERATE_MIPMAP                                    #x8295)
   (define GL_COLOR_ENCODING                                          #x8296)
   (define GL_SRGB_READ                                               #x8297)
   (define GL_SRGB_WRITE                                              #x8298)
   (define GL_FILTER                                                  #x829A)
   (define GL_VERTEX_TEXTURE                                          #x829B)
   (define GL_TESS_CONTROL_TEXTURE                                    #x829C)
   (define GL_TESS_EVALUATION_TEXTURE                                 #x829D)
   (define GL_GEOMETRY_TEXTURE                                        #x829E)
   (define GL_FRAGMENT_TEXTURE                                        #x829F)
   (define GL_COMPUTE_TEXTURE                                         #x82A0)
   (define GL_TEXTURE_SHADOW                                          #x82A1)
   (define GL_TEXTURE_GATHER                                          #x82A2)
   (define GL_TEXTURE_GATHER_SHADOW                                   #x82A3)
   (define GL_SHADER_IMAGE_LOAD                                       #x82A4)
   (define GL_SHADER_IMAGE_STORE                                      #x82A5)
   (define GL_SHADER_IMAGE_ATOMIC                                     #x82A6)
   (define GL_IMAGE_TEXEL_SIZE                                        #x82A7)
   (define GL_IMAGE_COMPATIBILITY_CLASS                               #x82A8)
   (define GL_IMAGE_PIXEL_FORMAT                                      #x82A9)
   (define GL_IMAGE_PIXEL_TYPE                                        #x82AA)
   (define GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                     #x82AC)
   (define GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST                   #x82AD)
   (define GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE                    #x82AE)
   (define GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE                  #x82AF)
   (define GL_TEXTURE_COMPRESSED_BLOCK_WIDTH                          #x82B1)
   (define GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT                         #x82B2)
   (define GL_TEXTURE_COMPRESSED_BLOCK_SIZE                           #x82B3)
   (define GL_CLEAR_BUFFER                                            #x82B4)
   (define GL_TEXTURE_VIEW                                            #x82B5)
   (define GL_VIEW_COMPATIBILITY_CLASS                                #x82B6)
   (define GL_FULL_SUPPORT                                            #x82B7)
   (define GL_CAVEAT_SUPPORT                                          #x82B8)
   (define GL_IMAGE_CLASS_4_X_32                                      #x82B9)
   (define GL_IMAGE_CLASS_2_X_32                                      #x82BA)
   (define GL_IMAGE_CLASS_1_X_32                                      #x82BB)
   (define GL_IMAGE_CLASS_4_X_16                                      #x82BC)
   (define GL_IMAGE_CLASS_2_X_16                                      #x82BD)
   (define GL_IMAGE_CLASS_1_X_16                                      #x82BE)
   (define GL_IMAGE_CLASS_4_X_8                                       #x82BF)
   (define GL_IMAGE_CLASS_2_X_8                                       #x82C0)
   (define GL_IMAGE_CLASS_1_X_8                                       #x82C1)
   (define GL_IMAGE_CLASS_11_11_10                                    #x82C2)
   (define GL_IMAGE_CLASS_10_10_10_2                                  #x82C3)
   (define GL_VIEW_CLASS_128_BITS                                     #x82C4)
   (define GL_VIEW_CLASS_96_BITS                                      #x82C5)
   (define GL_VIEW_CLASS_64_BITS                                      #x82C6)
   (define GL_VIEW_CLASS_48_BITS                                      #x82C7)
   (define GL_VIEW_CLASS_32_BITS                                      #x82C8)
   (define GL_VIEW_CLASS_24_BITS                                      #x82C9)
   (define GL_VIEW_CLASS_16_BITS                                      #x82CA)
   (define GL_VIEW_CLASS_8_BITS                                       #x82CB)
   (define GL_VIEW_CLASS_S3TC_DXT1_RGB                                #x82CC)
   (define GL_VIEW_CLASS_S3TC_DXT1_RGBA                               #x82CD)
   (define GL_VIEW_CLASS_S3TC_DXT3_RGBA                               #x82CE)
   (define GL_VIEW_CLASS_S3TC_DXT5_RGBA                               #x82CF)
   (define GL_VIEW_CLASS_RGTC1_RED                                    #x82D0)
   (define GL_VIEW_CLASS_RGTC2_RG                                     #x82D1)
   (define GL_VIEW_CLASS_BPTC_UNORM                                   #x82D2)
   (define GL_VIEW_CLASS_BPTC_FLOAT                                   #x82D3)

   (define glGetInternalformati64v                                    (GL GLvoid "glGetInternalformati64v" GLenum GLenum GLenum GLsizei GLint64&))

 ; ARB_invalidate_subdata
   (define GL_ARB_invalidate_subdata 1)

   (define glInvalidateTexSubImage                                    (GL GLvoid "glInvalidateTexSubImage" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei))
   (define glInvalidateTexImage                                       (GL GLvoid "glInvalidateTexImage" GLuint GLint))
   (define glInvalidateBufferSubData                                  (GL GLvoid "glInvalidateBufferSubData" GLuint GLintptr GLsizeiptr))
   (define glInvalidateBufferData                                     (GL GLvoid "glInvalidateBufferData" GLuint))
   (define glInvalidateFramebuffer                                    (GL GLvoid "glInvalidateFramebuffer" GLenum GLsizei GLenum*))
   (define glInvalidateSubFramebuffer                                 (GL GLvoid "glInvalidateSubFramebuffer" GLenum GLsizei GLenum* GLint GLint GLsizei GLsizei))

 ; ARB_multi_draw_indirect
   (define GL_ARB_multi_draw_indirect 1)

   (define glMultiDrawArraysIndirect                                  (GL GLvoid "glMultiDrawArraysIndirect" GLenum GLvoid* GLsizei GLsizei))
   (define glMultiDrawElementsIndirect                                (GL GLvoid "glMultiDrawElementsIndirect" GLenum GLenum GLvoid* GLsizei GLsizei))

 ; ARB_program_interface_query
   (define GL_ARB_program_interface_query 1)

   (define GL_UNIFORM                                                 #x92E1)
   (define GL_UNIFORM_BLOCK                                           #x92E2)
   (define GL_PROGRAM_INPUT                                           #x92E3)
   (define GL_PROGRAM_OUTPUT                                          #x92E4)
   (define GL_BUFFER_VARIABLE                                         #x92E5)
   (define GL_SHADER_STORAGE_BLOCK                                    #x92E6)
   (define GL_IS_PER_PATCH                                            #x92E7)
   (define GL_VERTEX_SUBROUTINE                                       #x92E8)
   (define GL_TESS_CONTROL_SUBROUTINE                                 #x92E9)
   (define GL_TESS_EVALUATION_SUBROUTINE                              #x92EA)
   (define GL_GEOMETRY_SUBROUTINE                                     #x92EB)
   (define GL_FRAGMENT_SUBROUTINE                                     #x92EC)
   (define GL_COMPUTE_SUBROUTINE                                      #x92ED)
   (define GL_VERTEX_SUBROUTINE_UNIFORM                               #x92EE)
   (define GL_TESS_CONTROL_SUBROUTINE_UNIFORM                         #x92EF)
   (define GL_TESS_EVALUATION_SUBROUTINE_UNIFORM                      #x92F0)
   (define GL_GEOMETRY_SUBROUTINE_UNIFORM                             #x92F1)
   (define GL_FRAGMENT_SUBROUTINE_UNIFORM                             #x92F2)
   (define GL_COMPUTE_SUBROUTINE_UNIFORM                              #x92F3)
   (define GL_TRANSFORM_FEEDBACK_VARYING                              #x92F4)
   (define GL_ACTIVE_RESOURCES                                        #x92F5)
   (define GL_MAX_NAME_LENGTH                                         #x92F6)
   (define GL_MAX_NUM_ACTIVE_VARIABLES                                #x92F7)
   (define GL_MAX_NUM_COMPATIBLE_SUBROUTINES                          #x92F8)
   (define GL_NAME_LENGTH                                             #x92F9)
   (define GL_TYPE                                                    #x92FA)
   (define GL_ARRAY_SIZE                                              #x92FB)
   (define GL_OFFSET                                                  #x92FC)
   (define GL_BLOCK_INDEX                                             #x92FD)
   (define GL_ARRAY_STRIDE                                            #x92FE)
   (define GL_MATRIX_STRIDE                                           #x92FF)
   (define GL_IS_ROW_MAJOR                                            #x9300)
   (define GL_ATOMIC_COUNTER_BUFFER_INDEX                             #x9301)
   (define GL_BUFFER_BINDING                                          #x9302)
   (define GL_BUFFER_DATA_SIZE                                        #x9303)
   (define GL_NUM_ACTIVE_VARIABLES                                    #x9304)
   (define GL_ACTIVE_VARIABLES                                        #x9305)
   (define GL_REFERENCED_BY_VERTEX_SHADER                             #x9306)
   (define GL_REFERENCED_BY_TESS_CONTROL_SHADER                       #x9307)
   (define GL_REFERENCED_BY_TESS_EVALUATION_SHADER                    #x9308)
   (define GL_REFERENCED_BY_GEOMETRY_SHADER                           #x9309)
   (define GL_REFERENCED_BY_FRAGMENT_SHADER                           #x930A)
   (define GL_REFERENCED_BY_COMPUTE_SHADER                            #x930B)
   (define GL_TOP_LEVEL_ARRAY_SIZE                                    #x930C)
   (define GL_TOP_LEVEL_ARRAY_STRIDE                                  #x930D)
   (define GL_LOCATION                                                #x930E)
   (define GL_LOCATION_INDEX                                          #x930F)

   (define glGetProgramInterfaceiv                                    (GL GLvoid "glGetProgramInterfaceiv" GLuint GLenum GLenum GLint&))
   (define glGetProgramResourceIndex                                  (GL GLuint "glGetProgramResourceIndex" GLuint GLenum GLchar*))
   (define glGetProgramResourceName                                   (GL GLvoid "glGetProgramResourceName" GLuint GLenum GLuint GLsizei GLsizei& type-bytevector))
   (define glGetProgramResourceiv                                     (GL GLvoid "glGetProgramResourceiv" GLuint GLenum GLuint GLsizei GLenum* GLsizei GLsizei& GLint&))
   (define glGetProgramResourceLocation                               (GL GLint "glGetProgramResourceLocation" GLuint GLenum GLchar*))
   (define glGetProgramResourceLocationIndex                          (GL GLint "glGetProgramResourceLocationIndex" GLuint GLenum GLchar*))

 ; ARB_robust_buffer_access_behavior
   (define GL_ARB_robust_buffer_access_behavior 1)

 ; ARB_shader_image_size
   (define GL_ARB_shader_image_size 1)

 ; ARB_shader_storage_buffer_object
   (define GL_ARB_shader_storage_buffer_object 1)

   (define GL_SHADER_STORAGE_BUFFER                                   #x90D2)
   (define GL_SHADER_STORAGE_BUFFER_BINDING                           #x90D3)
   (define GL_SHADER_STORAGE_BUFFER_START                             #x90D4)
   (define GL_SHADER_STORAGE_BUFFER_SIZE                              #x90D5)
   (define GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS                        #x90D6)
   (define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                      #x90D7)
   (define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS                  #x90D8)
   (define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS               #x90D9)
   (define GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                      #x90DA)
   (define GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS                       #x90DB)
   (define GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS                      #x90DC)
   (define GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS                      #x90DD)
   (define GL_MAX_SHADER_STORAGE_BLOCK_SIZE                           #x90DE)
   (define GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT                  #x90DF)
   (define GL_SHADER_STORAGE_BARRIER_BIT                              #x00002000)
   (define GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES                    #x8F39)

   (define glShaderStorageBlockBinding                                (GL GLvoid "glShaderStorageBlockBinding" GLuint GLuint GLuint))

 ; ARB_stencil_texturing
   (define GL_ARB_stencil_texturing 1)

   (define GL_DEPTH_STENCIL_TEXTURE_MODE                              #x90EA)

 ; ARB_texture_buffer_range
   (define GL_ARB_texture_buffer_range 1)

   (define GL_TEXTURE_BUFFER_OFFSET                                   #x919D)
   (define GL_TEXTURE_BUFFER_SIZE                                     #x919E)
   (define GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                         #x919F)

   (define glTexBufferRange                                           (GL GLvoid "glTexBufferRange" GLenum GLenum GLuint GLintptr GLsizeiptr))

 ; ARB_texture_query_levels
   (define GL_ARB_texture_query_levels 1)

 ; ARB_texture_storage_multisample
   (define GL_ARB_texture_storage_multisample 1)

   (define glTexStorage2DMultisample                                  (GL GLvoid "glTexStorage2DMultisample" GLenum GLsizei GLenum GLsizei GLsizei GLboolean))
   (define glTexStorage3DMultisample                                  (GL GLvoid "glTexStorage3DMultisample" GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean))

 ; ARB_texture_view
   (define GL_ARB_texture_view 1)

   (define GL_TEXTURE_VIEW_MIN_LEVEL                                  #x82DB)
   (define GL_TEXTURE_VIEW_NUM_LEVELS                                 #x82DC)
   (define GL_TEXTURE_VIEW_MIN_LAYER                                  #x82DD)
   (define GL_TEXTURE_VIEW_NUM_LAYERS                                 #x82DE)
   (define GL_TEXTURE_IMMUTABLE_LEVELS                                #x82DF)

   (define glTextureView                                              (GL GLvoid "glTextureView" GLuint GLenum GLuint GLenum GLuint GLuint GLuint GLuint))

 ; ARB_vertex_attrib_binding
   (define GL_ARB_vertex_attrib_binding 1)

   (define GL_VERTEX_ATTRIB_BINDING                                   #x82D4)
   (define GL_VERTEX_ATTRIB_RELATIVE_OFFSET                           #x82D5)
   (define GL_VERTEX_BINDING_DIVISOR                                  #x82D6)
   (define GL_VERTEX_BINDING_OFFSET                                   #x82D7)
   (define GL_VERTEX_BINDING_STRIDE                                   #x82D8)
   (define GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                       #x82D9)
   (define GL_MAX_VERTEX_ATTRIB_BINDINGS                              #x82DA)

   (define glBindVertexBuffer                                         (GL GLvoid "glBindVertexBuffer" GLuint GLuint GLintptr GLsizei))
   (define glVertexAttribFormat                                       (GL GLvoid "glVertexAttribFormat" GLuint GLint GLenum GLboolean GLuint))
   (define glVertexAttribIFormat                                      (GL GLvoid "glVertexAttribIFormat" GLuint GLint GLenum GLuint))
   (define glVertexAttribLFormat                                      (GL GLvoid "glVertexAttribLFormat" GLuint GLint GLenum GLuint))
   (define glVertexAttribBinding                                      (GL GLvoid "glVertexAttribBinding" GLuint GLuint))
   (define glVertexBindingDivisor                                     (GL GLvoid "glVertexBindingDivisor" GLuint GLuint))

 ; Restore functionality removed in GL 3.2 core to GL 4.3.
   (define GL_STACK_OVERFLOW                 #x0503)
   (define GL_STACK_UNDERFLOW                #x0504)

))