; OpenGL 4.2 (8 Aug 2011), GLSL 4.20
;  + ARB_base_instance
;  + ARB_transform_feedback_instanced
;  + ARB_compressed_texture_pixel_storage
;  + ARB_conservative_depth
;  + ARB_internalformat_query
;  + ARB_map_buffer_alignment
;  + ARB_shader_atomic_counters
;  + ARB_shader_image_load_store
;  + ARB_shading_language_420pack
;  + ARB_shading_language_packing
;  + ARB_texture_compression_bptc
;  + ARB_texture_storage

(define-library (OpenGL 4.2)
(export
      (exports (OpenGL 4.1))

   GL_VERSION_4_2

;; New aliases for old tokens
   GL_COPY_READ_BUFFER_BINDING
   GL_COPY_WRITE_BUFFER_BINDING
   GL_TRANSFORM_FEEDBACK_ACTIVE
   GL_TRANSFORM_FEEDBACK_PAUSED

;; ARB_base_instance
GL_ARB_base_instance
   glDrawArraysInstancedBaseInstance
   glDrawElementsInstancedBaseInstance
   glDrawElementsInstancedBaseVertexBaseInstance

;; ARB_transform_feedback_instanced
GL_ARB_transform_feedback_instanced
   glDrawTransformFeedbackInstanced
   glDrawTransformFeedbackStreamInstanced

;; ARB_compressed_texture_pixel_storage
GL_ARB_compressed_texture_pixel_storage
   GL_UNPACK_COMPRESSED_BLOCK_WIDTH
   GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
   GL_UNPACK_COMPRESSED_BLOCK_DEPTH
   GL_UNPACK_COMPRESSED_BLOCK_SIZE
   GL_PACK_COMPRESSED_BLOCK_WIDTH
   GL_PACK_COMPRESSED_BLOCK_HEIGHT
   GL_PACK_COMPRESSED_BLOCK_DEPTH
   GL_PACK_COMPRESSED_BLOCK_SIZE

;; ARB_conservative_depth
GL_ARB_conservative_depth
   ; none

;; ARB_internalformat_query
GL_ARB_internalformat_query
   GL_NUM_SAMPLE_COUNTS
   glGetInternalformativ

;; ARB_map_buffer_alignment
GL_ARB_map_buffer_alignment
   GL_MIN_MAP_BUFFER_ALIGNMENT

;; ARB_shader_atomic_counters
GL_ARB_shader_atomic_counters
   GL_ATOMIC_COUNTER_BUFFER
   GL_ATOMIC_COUNTER_BUFFER_BINDING
   GL_ATOMIC_COUNTER_BUFFER_START
   GL_ATOMIC_COUNTER_BUFFER_SIZE
   GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
   GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
   GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
   GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
   GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
   GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
   GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
   GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
   GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
   GL_MAX_VERTEX_ATOMIC_COUNTERS
   GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
   GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
   GL_MAX_GEOMETRY_ATOMIC_COUNTERS
   GL_MAX_FRAGMENT_ATOMIC_COUNTERS
   GL_MAX_COMBINED_ATOMIC_COUNTERS
   GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
   GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
   GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
   GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
   GL_UNSIGNED_INT_ATOMIC_COUNTER
   glGetActiveAtomicCounterBufferiv

;; ARB_shader_image_load_store
GL_ARB_shader_image_load_store
   GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
   GL_ELEMENT_ARRAY_BARRIER_BIT
   GL_UNIFORM_BARRIER_BIT
   GL_TEXTURE_FETCH_BARRIER_BIT
   GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
   GL_COMMAND_BARRIER_BIT
   GL_PIXEL_BUFFER_BARRIER_BIT
   GL_TEXTURE_UPDATE_BARRIER_BIT
   GL_BUFFER_UPDATE_BARRIER_BIT
   GL_FRAMEBUFFER_BARRIER_BIT
   GL_TRANSFORM_FEEDBACK_BARRIER_BIT
   GL_ATOMIC_COUNTER_BARRIER_BIT
   GL_ALL_BARRIER_BITS
   GL_MAX_IMAGE_UNITS
   GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
   GL_IMAGE_BINDING_NAME
   GL_IMAGE_BINDING_LEVEL
   GL_IMAGE_BINDING_LAYERED
   GL_IMAGE_BINDING_LAYER
   GL_IMAGE_BINDING_ACCESS
   GL_IMAGE_1D
   GL_IMAGE_2D
   GL_IMAGE_3D
   GL_IMAGE_2D_RECT
   GL_IMAGE_CUBE
   GL_IMAGE_BUFFER
   GL_IMAGE_1D_ARRAY
   GL_IMAGE_2D_ARRAY
   GL_IMAGE_CUBE_MAP_ARRAY
   GL_IMAGE_2D_MULTISAMPLE
   GL_IMAGE_2D_MULTISAMPLE_ARRAY
   GL_INT_IMAGE_1D
   GL_INT_IMAGE_2D
   GL_INT_IMAGE_3D
   GL_INT_IMAGE_2D_RECT
   GL_INT_IMAGE_CUBE
   GL_INT_IMAGE_BUFFER
   GL_INT_IMAGE_1D_ARRAY
   GL_INT_IMAGE_2D_ARRAY
   GL_INT_IMAGE_CUBE_MAP_ARRAY
   GL_INT_IMAGE_2D_MULTISAMPLE
   GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
   GL_UNSIGNED_INT_IMAGE_1D
   GL_UNSIGNED_INT_IMAGE_2D
   GL_UNSIGNED_INT_IMAGE_3D
   GL_UNSIGNED_INT_IMAGE_2D_RECT
   GL_UNSIGNED_INT_IMAGE_CUBE
   GL_UNSIGNED_INT_IMAGE_BUFFER
   GL_UNSIGNED_INT_IMAGE_1D_ARRAY
   GL_UNSIGNED_INT_IMAGE_2D_ARRAY
   GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
   GL_MAX_IMAGE_SAMPLES
   GL_IMAGE_BINDING_FORMAT
   GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
   GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
   GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
   GL_MAX_VERTEX_IMAGE_UNIFORMS
   GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
   GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
   GL_MAX_GEOMETRY_IMAGE_UNIFORMS
   GL_MAX_FRAGMENT_IMAGE_UNIFORMS
   GL_MAX_COMBINED_IMAGE_UNIFORMS
   glBindImageTexture
   glMemoryBarrier

;; ARB_shading_language_420pack
GL_ARB_shading_language_420pack
   ; none

;; ARB_shading_language_packing
GL_ARB_shading_language_packing
   ; none

;; ARB_texture_compression_bptc
GL_ARB_texture_compression_bptc
   GL_COMPRESSED_RGBA_BPTC_UNORM
   GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
   GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
   GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT

;; ARB_texture_storage
GL_ARB_texture_storage
   GL_TEXTURE_IMMUTABLE_FORMAT
   glTexStorage1D
   glTexStorage2D
   glTexStorage3D

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 4.1))

(begin
   (define GL_VERSION_4_2 1)

   (setq GL gl:GetProcAddress)

   (define GL_COPY_READ_BUFFER_BINDING              #x8F36)
   (define GL_COPY_WRITE_BUFFER_BINDING             #x8F37)
   (define GL_TRANSFORM_FEEDBACK_ACTIVE             #x8E24)
   (define GL_TRANSFORM_FEEDBACK_PAUSED             #x8E23)

 ; ARB_base_instance
   (define GL_ARB_base_instance 1)

   (define glDrawArraysInstancedBaseInstance        (GL GLvoid "glDrawArraysInstancedBaseInstance" GLenum GLint GLsizei GLsizei GLuint))
   (define glDrawElementsInstancedBaseInstance      (GL GLvoid "glDrawElementsInstancedBaseInstance" GLenum GLsizei GLenum GLvoid* GLsizei GLuint))
   (define glDrawElementsInstancedBaseVertexBaseInstance (GL GLvoid "glDrawElementsInstancedBaseVertexBaseInstance" GLenum GLsizei GLenum GLvoid* GLsizei GLint GLuint))

 ; ARB_transform_feedback_instanced
   (define GL_ARB_transform_feedback_instanced 1)

   (define glDrawTransformFeedbackInstanced         (GL GLvoid "glDrawTransformFeedbackInstanced" GLenum GLuint GLsizei))
   (define glDrawTransformFeedbackStreamInstanced   (GL GLvoid "glDrawTransformFeedbackStreamInstanced" GLenum GLuint GLuint GLsizei))

 ; ARB_compressed_texture_pixel_storage
   (define GL_ARB_compressed_texture_pixel_storage 1)

   (define GL_UNPACK_COMPRESSED_BLOCK_WIDTH         #x9127)
   (define GL_UNPACK_COMPRESSED_BLOCK_HEIGHT        #x9128)
   (define GL_UNPACK_COMPRESSED_BLOCK_DEPTH         #x9129)
   (define GL_UNPACK_COMPRESSED_BLOCK_SIZE          #x912A)
   (define GL_PACK_COMPRESSED_BLOCK_WIDTH           #x912B)
   (define GL_PACK_COMPRESSED_BLOCK_HEIGHT          #x912C)
   (define GL_PACK_COMPRESSED_BLOCK_DEPTH           #x912D)
   (define GL_PACK_COMPRESSED_BLOCK_SIZE            #x912E)

 ; ARB_conservative_depth
   (define GL_ARB_conservative_depth 1)

 ; ARB_internalformat_query
   (define GL_ARB_internalformat_query 1)

   (define GL_NUM_SAMPLE_COUNTS                     #x9380)

   (define glGetInternalformativ                    (GL GLvoid "glGetInternalformativ" GLenum GLenum GLenum GLsizei GLint&))

 ; ARB_map_buffer_alignment
   (define GL_ARB_map_buffer_alignment 1)

   (define GL_MIN_MAP_BUFFER_ALIGNMENT              #x90BC)

 ; ARB_shader_atomic_counters
   (define GL_ARB_shader_atomic_counters 1)

   (define GL_ATOMIC_COUNTER_BUFFER                 #x92C0)
   (define GL_ATOMIC_COUNTER_BUFFER_BINDING         #x92C1)
   (define GL_ATOMIC_COUNTER_BUFFER_START           #x92C2)
   (define GL_ATOMIC_COUNTER_BUFFER_SIZE            #x92C3)
   (define GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE       #x92C4)
   (define GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS #x92C5)
   (define GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES #x92C6)
   (define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER #x92C7)
   (define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER #x92C8)
   (define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER #x92C9)
   (define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER #x92CA)
   (define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER #x92CB)
   (define GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS     #x92CC)
   (define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS #x92CD)
   (define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS #x92CE)
   (define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS   #x92CF)
   (define GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS   #x92D0)
   (define GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS   #x92D1)
   (define GL_MAX_VERTEX_ATOMIC_COUNTERS            #x92D2)
   (define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS      #x92D3)
   (define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS   #x92D4)
   (define GL_MAX_GEOMETRY_ATOMIC_COUNTERS          #x92D5)
   (define GL_MAX_FRAGMENT_ATOMIC_COUNTERS          #x92D6)
   (define GL_MAX_COMBINED_ATOMIC_COUNTERS          #x92D7)
   (define GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE        #x92D8)
   (define GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS    #x92DC)
   (define GL_ACTIVE_ATOMIC_COUNTER_BUFFERS         #x92D9)
   (define GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX   #x92DA)
   (define GL_UNSIGNED_INT_ATOMIC_COUNTER           #x92DB)

   (define glGetActiveAtomicCounterBufferiv         (GL GLvoid "glGetActiveAtomicCounterBufferiv" GLuint GLuint GLenum GLint&))

 ; ARB_shader_image_load_store
   (define GL_ARB_shader_image_load_store 1)

   (define GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT       #x00000001)
   (define GL_ELEMENT_ARRAY_BARRIER_BIT             #x00000002)
   (define GL_UNIFORM_BARRIER_BIT                   #x00000004)
   (define GL_TEXTURE_FETCH_BARRIER_BIT             #x00000008)
   (define GL_SHADER_IMAGE_ACCESS_BARRIER_BIT       #x00000020)
   (define GL_COMMAND_BARRIER_BIT                   #x00000040)
   (define GL_PIXEL_BUFFER_BARRIER_BIT              #x00000080)
   (define GL_TEXTURE_UPDATE_BARRIER_BIT            #x00000100)
   (define GL_BUFFER_UPDATE_BARRIER_BIT             #x00000200)
   (define GL_FRAMEBUFFER_BARRIER_BIT               #x00000400)
   (define GL_TRANSFORM_FEEDBACK_BARRIER_BIT        #x00000800)
   (define GL_ATOMIC_COUNTER_BARRIER_BIT            #x00001000)
   (define GL_ALL_BARRIER_BITS                      #xFFFFFFFF)
   (define GL_MAX_IMAGE_UNITS                       #x8F38)
   (define GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS #x8F39)
   (define GL_IMAGE_BINDING_NAME                    #x8F3A)
   (define GL_IMAGE_BINDING_LEVEL                   #x8F3B)
   (define GL_IMAGE_BINDING_LAYERED                 #x8F3C)
   (define GL_IMAGE_BINDING_LAYER                   #x8F3D)
   (define GL_IMAGE_BINDING_ACCESS                  #x8F3E)
   (define GL_IMAGE_1D                              #x904C)
   (define GL_IMAGE_2D                              #x904D)
   (define GL_IMAGE_3D                              #x904E)
   (define GL_IMAGE_2D_RECT                         #x904F)
   (define GL_IMAGE_CUBE                            #x9050)
   (define GL_IMAGE_BUFFER                          #x9051)
   (define GL_IMAGE_1D_ARRAY                        #x9052)
   (define GL_IMAGE_2D_ARRAY                        #x9053)
   (define GL_IMAGE_CUBE_MAP_ARRAY                  #x9054)
   (define GL_IMAGE_2D_MULTISAMPLE                  #x9055)
   (define GL_IMAGE_2D_MULTISAMPLE_ARRAY            #x9056)
   (define GL_INT_IMAGE_1D                          #x9057)
   (define GL_INT_IMAGE_2D                          #x9058)
   (define GL_INT_IMAGE_3D                          #x9059)
   (define GL_INT_IMAGE_2D_RECT                     #x905A)
   (define GL_INT_IMAGE_CUBE                        #x905B)
   (define GL_INT_IMAGE_BUFFER                      #x905C)
   (define GL_INT_IMAGE_1D_ARRAY                    #x905D)
   (define GL_INT_IMAGE_2D_ARRAY                    #x905E)
   (define GL_INT_IMAGE_CUBE_MAP_ARRAY              #x905F)
   (define GL_INT_IMAGE_2D_MULTISAMPLE              #x9060)
   (define GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY        #x9061)
   (define GL_UNSIGNED_INT_IMAGE_1D                 #x9062)
   (define GL_UNSIGNED_INT_IMAGE_2D                 #x9063)
   (define GL_UNSIGNED_INT_IMAGE_3D                 #x9064)
   (define GL_UNSIGNED_INT_IMAGE_2D_RECT            #x9065)
   (define GL_UNSIGNED_INT_IMAGE_CUBE               #x9066)
   (define GL_UNSIGNED_INT_IMAGE_BUFFER             #x9067)
   (define GL_UNSIGNED_INT_IMAGE_1D_ARRAY           #x9068)
   (define GL_UNSIGNED_INT_IMAGE_2D_ARRAY           #x9069)
   (define GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY     #x906A)
   (define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE     #x906B)
   (define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY #x906C)
   (define GL_MAX_IMAGE_SAMPLES                     #x906D)
   (define GL_IMAGE_BINDING_FORMAT                  #x906E)
   (define GL_IMAGE_FORMAT_COMPATIBILITY_TYPE       #x90C7)
   (define GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE    #x90C8)
   (define GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS   #x90C9)
   (define GL_MAX_VERTEX_IMAGE_UNIFORMS             #x90CA)
   (define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS       #x90CB)
   (define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS    #x90CC)
   (define GL_MAX_GEOMETRY_IMAGE_UNIFORMS           #x90CD)
   (define GL_MAX_FRAGMENT_IMAGE_UNIFORMS           #x90CE)
   (define GL_MAX_COMBINED_IMAGE_UNIFORMS           #x90CF)

   (define glBindImageTexture                       (GL GLvoid "glBindImageTexture" GLuint GLuint GLint GLboolean GLint GLenum GLenum))
   (define glMemoryBarrier                          (GL GLvoid "glMemoryBarrier" GLbitfield))

 ; ARB_shading_language_420pack
   (define GL_ARB_shading_language_420pack 1)

 ; ARB_shading_language_packing
   (define GL_ARB_shading_language_packing 1)

 ; ARB_texture_compression_bptc
   (define GL_ARB_texture_compression_bptc 1)

   (define GL_COMPRESSED_RGBA_BPTC_UNORM            #x8E8C)
   (define GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM      #x8E8D)
   (define GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT      #x8E8E)
   (define GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT    #x8E8F)

 ; ARB_texture_storage
   (define GL_ARB_texture_storage 1)

   (define GL_TEXTURE_IMMUTABLE_FORMAT              #x912F)

   (define glTexStorage1D                           (GL GLvoid "glTexStorage1D" GLenum GLsizei GLenum GLsizei))
   (define glTexStorage2D                           (GL GLvoid "glTexStorage2D" GLenum GLsizei GLenum GLsizei GLsizei))
   (define glTexStorage3D                           (GL GLvoid "glTexStorage3D" GLenum GLsizei GLenum GLsizei GLsizei GLsizei))

))