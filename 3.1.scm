; OpenGL 3.1 (24 Mar 2009), GLSL 1.4
; Is not upward compatible with earlier versions!
;  * GL_ARB_compatibility
;  * GL_ARB_draw_instanced
;  * GL_ARB_copy_buffer
;  * GL_NV_primitive_restart
;  * At least 16 texture image units
;  * GL_ARB_texture_buffer_object
;  * GL_ARB_texture_rectangle
;  * GL_ARB_uniform_buffer_object
;  * Signed normalized texture component formats.

;  * SNORM texture component formats
;  + ARB_uniform_buffer_object
(define-library (OpenGL 3.1)
(export
   (exports (OpenGL platform))
   ; no earlier OpenGL exports

   GL_VERSION_3_1

   ; -- 1.0 ------------------------------
   GL_VERSION_1_0
   GL_DEPTH_BUFFER_BIT
   GL_STENCIL_BUFFER_BIT
   GL_COLOR_BUFFER_BIT
   GL_FALSE
   GL_TRUE
   GL_POINTS
   GL_LINES
   GL_LINE_LOOP
   GL_LINE_STRIP
   GL_TRIANGLES
   GL_TRIANGLE_STRIP
   GL_TRIANGLE_FAN
   GL_QUADS
   GL_NEVER
   GL_LESS
   GL_EQUAL
   GL_LEQUAL
   GL_GREATER
   GL_NOTEQUAL
   GL_GEQUAL
   GL_ALWAYS
   GL_ZERO
   GL_ONE
   GL_SRC_COLOR
   GL_ONE_MINUS_SRC_COLOR
   GL_SRC_ALPHA
   GL_ONE_MINUS_SRC_ALPHA
   GL_DST_ALPHA
   GL_ONE_MINUS_DST_ALPHA
   GL_DST_COLOR
   GL_ONE_MINUS_DST_COLOR
   GL_SRC_ALPHA_SATURATE
   GL_NONE
   GL_FRONT_LEFT
   GL_FRONT_RIGHT
   GL_BACK_LEFT
   GL_BACK_RIGHT
   GL_FRONT
   GL_BACK
   GL_LEFT
   GL_RIGHT
   GL_FRONT_AND_BACK
   GL_NO_ERROR
   GL_INVALID_ENUM
   GL_INVALID_VALUE
   GL_INVALID_OPERATION
   GL_OUT_OF_MEMORY
   GL_CW
   GL_CCW
   GL_POINT_SIZE
   GL_POINT_SIZE_RANGE
   GL_POINT_SIZE_GRANULARITY
   GL_LINE_SMOOTH
   GL_LINE_WIDTH
   GL_LINE_WIDTH_RANGE
   GL_LINE_WIDTH_GRANULARITY
   GL_POLYGON_MODE
   GL_POLYGON_SMOOTH
   GL_CULL_FACE
   GL_CULL_FACE_MODE
   GL_FRONT_FACE
   GL_DEPTH_RANGE
   GL_DEPTH_TEST
   GL_DEPTH_WRITEMASK
   GL_DEPTH_CLEAR_VALUE
   GL_DEPTH_FUNC
   GL_STENCIL_TEST
   GL_STENCIL_CLEAR_VALUE
   GL_STENCIL_FUNC
   GL_STENCIL_VALUE_MASK
   GL_STENCIL_FAIL
   GL_STENCIL_PASS_DEPTH_FAIL
   GL_STENCIL_PASS_DEPTH_PASS
   GL_STENCIL_REF
   GL_STENCIL_WRITEMASK
   GL_VIEWPORT
   GL_DITHER
   GL_BLEND_DST
   GL_BLEND_SRC
   GL_BLEND
   GL_LOGIC_OP_MODE
   GL_DRAW_BUFFER
   GL_READ_BUFFER
   GL_SCISSOR_BOX
   GL_SCISSOR_TEST
   GL_COLOR_CLEAR_VALUE
   GL_COLOR_WRITEMASK
   GL_DOUBLEBUFFER
   GL_STEREO
   GL_LINE_SMOOTH_HINT
   GL_POLYGON_SMOOTH_HINT
   GL_UNPACK_SWAP_BYTES
   GL_UNPACK_LSB_FIRST
   GL_UNPACK_ROW_LENGTH
   GL_UNPACK_SKIP_ROWS
   GL_UNPACK_SKIP_PIXELS
   GL_UNPACK_ALIGNMENT
   GL_PACK_SWAP_BYTES
   GL_PACK_LSB_FIRST
   GL_PACK_ROW_LENGTH
   GL_PACK_SKIP_ROWS
   GL_PACK_SKIP_PIXELS
   GL_PACK_ALIGNMENT
   GL_MAX_TEXTURE_SIZE
   GL_MAX_VIEWPORT_DIMS
   GL_SUBPIXEL_BITS
   GL_TEXTURE_1D
   GL_TEXTURE_2D
   GL_TEXTURE_WIDTH
   GL_TEXTURE_HEIGHT
   GL_TEXTURE_BORDER_COLOR
   GL_DONT_CARE
   GL_FASTEST
   GL_NICEST
   GL_BYTE
   GL_UNSIGNED_BYTE
   GL_SHORT
   GL_UNSIGNED_SHORT
   GL_INT
   GL_UNSIGNED_INT
   GL_FLOAT
   GL_STACK_OVERFLOW
   GL_STACK_UNDERFLOW
   GL_CLEAR
   GL_AND
   GL_AND_REVERSE
   GL_COPY
   GL_AND_INVERTED
   GL_NOOP
   GL_XOR
   GL_OR
   GL_NOR
   GL_EQUIV
   GL_INVERT
   GL_OR_REVERSE
   GL_COPY_INVERTED
   GL_OR_INVERTED
   GL_NAND
   GL_SET
   GL_TEXTURE
   GL_COLOR
   GL_DEPTH
   GL_STENCIL
   GL_STENCIL_INDEX
   GL_DEPTH_COMPONENT
   GL_RED
   GL_GREEN
   GL_BLUE
   GL_ALPHA
   GL_RGB
   GL_RGBA
   GL_POINT
   GL_LINE
   GL_FILL
   GL_KEEP
   GL_REPLACE
   GL_INCR
   GL_DECR
   GL_VENDOR
   GL_RENDERER
   GL_VERSION
   GL_EXTENSIONS
   GL_NEAREST
   GL_LINEAR
   GL_NEAREST_MIPMAP_NEAREST
   GL_LINEAR_MIPMAP_NEAREST
   GL_NEAREST_MIPMAP_LINEAR
   GL_LINEAR_MIPMAP_LINEAR
   GL_TEXTURE_MAG_FILTER
   GL_TEXTURE_MIN_FILTER
   GL_TEXTURE_WRAP_S
   GL_TEXTURE_WRAP_T
   GL_REPEAT

   ; -- 1.1 ------------------------------
   GL_VERSION_1_1
   GL_COLOR_LOGIC_OP
   GL_POLYGON_OFFSET_UNITS
   GL_POLYGON_OFFSET_POINT
   GL_POLYGON_OFFSET_LINE
   GL_POLYGON_OFFSET_FILL
   GL_POLYGON_OFFSET_FACTOR
   GL_TEXTURE_BINDING_1D
   GL_TEXTURE_BINDING_2D
   GL_TEXTURE_INTERNAL_FORMAT
   GL_TEXTURE_RED_SIZE
   GL_TEXTURE_GREEN_SIZE
   GL_TEXTURE_BLUE_SIZE
   GL_TEXTURE_ALPHA_SIZE
   GL_DOUBLE
   GL_PROXY_TEXTURE_1D
   GL_PROXY_TEXTURE_2D
   GL_R3_G3_B2
   GL_RGB4
   GL_RGB5
   GL_RGB8
   GL_RGB10
   GL_RGB12
   GL_RGB16
   GL_RGBA2
   GL_RGBA4
   GL_RGB5_A1
   GL_RGBA8
   GL_RGB10_A2
   GL_RGBA12
   GL_RGBA16
   GL_VERTEX_ARRAY

   glDrawArrays
   glDrawElements
   glGetPointerv
   glPolygonOffset
   glCopyTexImage1D
   glCopyTexImage2D
   glCopyTexSubImage1D
   glCopyTexSubImage2D
   glTexSubImage1D
   glTexSubImage2D
   glBindTexture
   glDeleteTextures
   glGenTextures
   glIsTexture

   ; -- 1.2 ------------------------------
   GL_VERSION_1_2
   GL_UNSIGNED_BYTE_3_3_2
   GL_UNSIGNED_SHORT_4_4_4_4
   GL_UNSIGNED_SHORT_5_5_5_1
   GL_UNSIGNED_INT_8_8_8_8
   GL_UNSIGNED_INT_10_10_10_2
   GL_TEXTURE_BINDING_3D
   GL_PACK_SKIP_IMAGES
   GL_PACK_IMAGE_HEIGHT
   GL_UNPACK_SKIP_IMAGES
   GL_UNPACK_IMAGE_HEIGHT
   GL_TEXTURE_3D
   GL_PROXY_TEXTURE_3D
   GL_TEXTURE_DEPTH
   GL_TEXTURE_WRAP_R
   GL_MAX_3D_TEXTURE_SIZE
   GL_UNSIGNED_BYTE_2_3_3_REV
   GL_UNSIGNED_SHORT_5_6_5
   GL_UNSIGNED_SHORT_5_6_5_REV
   GL_UNSIGNED_SHORT_4_4_4_4_REV
   GL_UNSIGNED_SHORT_1_5_5_5_REV
   GL_UNSIGNED_INT_8_8_8_8_REV
   GL_UNSIGNED_INT_2_10_10_10_REV
   GL_BGR
   GL_BGRA
   GL_MAX_ELEMENTS_VERTICES
   GL_MAX_ELEMENTS_INDICES
   GL_CLAMP_TO_EDGE
   GL_TEXTURE_MIN_LOD
   GL_TEXTURE_MAX_LOD
   GL_TEXTURE_BASE_LEVEL
   GL_TEXTURE_MAX_LEVEL
   GL_SMOOTH_POINT_SIZE_RANGE
   GL_SMOOTH_POINT_SIZE_GRANULARITY
   GL_SMOOTH_LINE_WIDTH_RANGE
   GL_SMOOTH_LINE_WIDTH_GRANULARITY
   GL_ALIASED_LINE_WIDTH_RANGE

   glDrawRangeElements
   glTexImage3D
   glTexSubImage3D
   glCopyTexSubImage3D

   ; -- 1.3 ------------------------------
   GL_VERSION_1_3
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
   GL_ACTIVE_TEXTURE
   GL_MULTISAMPLE
   GL_SAMPLE_ALPHA_TO_COVERAGE
   GL_SAMPLE_ALPHA_TO_ONE
   GL_SAMPLE_COVERAGE
   GL_SAMPLE_BUFFERS
   GL_SAMPLES
   GL_SAMPLE_COVERAGE_VALUE
   GL_SAMPLE_COVERAGE_INVERT
   GL_TEXTURE_CUBE_MAP
   GL_TEXTURE_BINDING_CUBE_MAP
   GL_TEXTURE_CUBE_MAP_POSITIVE_X
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
   GL_PROXY_TEXTURE_CUBE_MAP
   GL_MAX_CUBE_MAP_TEXTURE_SIZE
   GL_COMPRESSED_RGB
   GL_COMPRESSED_RGBA
   GL_TEXTURE_COMPRESSION_HINT
   GL_TEXTURE_COMPRESSED_IMAGE_SIZE
   GL_TEXTURE_COMPRESSED
   GL_NUM_COMPRESSED_TEXTURE_FORMATS
   GL_COMPRESSED_TEXTURE_FORMATS
   GL_CLAMP_TO_BORDER

   glActiveTexture
   glSampleCoverage
   glCompressedTexImage3D
   glCompressedTexImage2D
   glCompressedTexImage1D
   glCompressedTexSubImage3D
   glCompressedTexSubImage2D
   glCompressedTexSubImage1D
   glGetCompressedTexImage

   ; -- 1.4 ------------------------------
   GL_VERSION_1_4
   GL_BLEND_DST_RGB
   GL_BLEND_SRC_RGB
   GL_BLEND_DST_ALPHA
   GL_BLEND_SRC_ALPHA
   GL_POINT_FADE_THRESHOLD_SIZE
   GL_DEPTH_COMPONENT16
   GL_DEPTH_COMPONENT24
   GL_DEPTH_COMPONENT32
   GL_MIRRORED_REPEAT
   GL_MAX_TEXTURE_LOD_BIAS
   GL_TEXTURE_LOD_BIAS
   GL_INCR_WRAP
   GL_DECR_WRAP
   GL_TEXTURE_DEPTH_SIZE
   GL_TEXTURE_COMPARE_MODE
   GL_TEXTURE_COMPARE_FUNC
   GL_BLEND_COLOR
   GL_BLEND_EQUATION
   GL_CONSTANT_COLOR
   GL_ONE_MINUS_CONSTANT_COLOR
   GL_CONSTANT_ALPHA
   GL_ONE_MINUS_CONSTANT_ALPHA
   GL_FUNC_ADD
   GL_FUNC_REVERSE_SUBTRACT
   GL_FUNC_SUBTRACT
   GL_MIN
   GL_MAX

   glBlendFuncSeparate
   glMultiDrawArrays
   glMultiDrawElements
   glPointParameterf
   glPointParameterfv
   glPointParameteri
   glPointParameteriv
   glBlendColor
   glBlendEquation

   ; -- 1.5 ------------------------------
   GL_VERSION_1_5
   GL_BUFFER_SIZE
   GL_BUFFER_USAGE
   GL_QUERY_COUNTER_BITS
   GL_CURRENT_QUERY
   GL_QUERY_RESULT
   GL_QUERY_RESULT_AVAILABLE
   GL_ARRAY_BUFFER
   GL_ELEMENT_ARRAY_BUFFER
   GL_ARRAY_BUFFER_BINDING
   GL_ELEMENT_ARRAY_BUFFER_BINDING
   GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
   GL_READ_ONLY
   GL_WRITE_ONLY
   GL_READ_WRITE
   GL_BUFFER_ACCESS
   GL_BUFFER_MAPPED
   GL_BUFFER_MAP_POINTER
   GL_STREAM_DRAW
   GL_STREAM_READ
   GL_STREAM_COPY
   GL_STATIC_DRAW
   GL_STATIC_READ
   GL_STATIC_COPY
   GL_DYNAMIC_DRAW
   GL_DYNAMIC_READ
   GL_DYNAMIC_COPY
   GL_SAMPLES_PASSED
   GL_SRC1_ALPHA

   glGenQueries
   glDeleteQueries
   glIsQuery
   glBeginQuery
   glEndQuery
   glGetQueryiv
   glGetQueryObjectiv
   glGetQueryObjectuiv
   glBindBuffer
   glDeleteBuffers
   glGenBuffers
   glIsBuffer
   glBufferData
   glBufferSubData
   glGetBufferSubData
   glMapBuffer
   glUnmapBuffer
   glGetBufferParameteriv
   glGetBufferPointerv

   ; -- 2.0 ------------------------------
   GL_VERSION_2_0
   GL_BLEND_EQUATION_RGB
   GL_VERTEX_ATTRIB_ARRAY_ENABLED
   GL_VERTEX_ATTRIB_ARRAY_SIZE
   GL_VERTEX_ATTRIB_ARRAY_STRIDE
   GL_VERTEX_ATTRIB_ARRAY_TYPE
   GL_CURRENT_VERTEX_ATTRIB
   GL_VERTEX_PROGRAM_POINT_SIZE
   GL_VERTEX_ATTRIB_ARRAY_POINTER
   GL_STENCIL_BACK_FUNC
   GL_STENCIL_BACK_FAIL
   GL_STENCIL_BACK_PASS_DEPTH_FAIL
   GL_STENCIL_BACK_PASS_DEPTH_PASS
   GL_MAX_DRAW_BUFFERS
   GL_DRAW_BUFFER0
   GL_DRAW_BUFFER1
   GL_DRAW_BUFFER2
   GL_DRAW_BUFFER3
   GL_DRAW_BUFFER4
   GL_DRAW_BUFFER5
   GL_DRAW_BUFFER6
   GL_DRAW_BUFFER7
   GL_DRAW_BUFFER8
   GL_DRAW_BUFFER9
   GL_DRAW_BUFFER10
   GL_DRAW_BUFFER11
   GL_DRAW_BUFFER12
   GL_DRAW_BUFFER13
   GL_DRAW_BUFFER14
   GL_DRAW_BUFFER15
   GL_BLEND_EQUATION_ALPHA
   GL_MAX_VERTEX_ATTRIBS
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
   GL_MAX_TEXTURE_IMAGE_UNITS
   GL_FRAGMENT_SHADER
   GL_VERTEX_SHADER
   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
   GL_MAX_VERTEX_UNIFORM_COMPONENTS
   GL_MAX_VARYING_FLOATS
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
   GL_SHADER_TYPE
   GL_FLOAT_VEC2
   GL_FLOAT_VEC3
   GL_FLOAT_VEC4
   GL_INT_VEC2
   GL_INT_VEC3
   GL_INT_VEC4
   GL_BOOL
   GL_BOOL_VEC2
   GL_BOOL_VEC3
   GL_BOOL_VEC4
   GL_FLOAT_MAT2
   GL_FLOAT_MAT3
   GL_FLOAT_MAT4
   GL_SAMPLER_1D
   GL_SAMPLER_2D
   GL_SAMPLER_3D
   GL_SAMPLER_CUBE
   GL_SAMPLER_1D_SHADOW
   GL_SAMPLER_2D_SHADOW
   GL_DELETE_STATUS
   GL_COMPILE_STATUS
   GL_LINK_STATUS
   GL_VALIDATE_STATUS
   GL_INFO_LOG_LENGTH
   GL_ATTACHED_SHADERS
   GL_ACTIVE_UNIFORMS
   GL_ACTIVE_UNIFORM_MAX_LENGTH
   GL_SHADER_SOURCE_LENGTH
   GL_ACTIVE_ATTRIBUTES
   GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
   GL_FRAGMENT_SHADER_DERIVATIVE_HINT
   GL_SHADING_LANGUAGE_VERSION
   GL_CURRENT_PROGRAM
   GL_POINT_SPRITE_COORD_ORIGIN
   GL_LOWER_LEFT
   GL_UPPER_LEFT
   GL_STENCIL_BACK_REF
   GL_STENCIL_BACK_VALUE_MASK
   GL_STENCIL_BACK_WRITEMASK

   glBlendEquationSeparate
   glDrawBuffers
   glStencilOpSeparate
   glStencilFuncSeparate
   glStencilMaskSeparate
   glAttachShader
   glBindAttribLocation
   glCompileShader
   glCreateProgram
   glCreateShader
   glDeleteProgram
   glDeleteShader
   glDetachShader
   glDisableVertexAttribArray
   glEnableVertexAttribArray
   glGetActiveAttrib
   glGetActiveUniform
   glGetAttachedShaders
   glGetAttribLocation
   glGetProgramiv
   glGetProgramInfoLog
   glGetShaderiv
   glGetShaderInfoLog
   glGetShaderSource
   glGetUniformLocation
   glGetUniformfv
   glGetUniformiv
   glGetVertexAttribdv
   glGetVertexAttribfv
   glGetVertexAttribiv
   glGetVertexAttribPointerv
   glIsProgram
   glIsShader
   glLinkProgram
   glShaderSource
   glUseProgram
   glUniform1f
   glUniform2f
   glUniform3f
   glUniform4f
   glUniform1i
   glUniform2i
   glUniform3i
   glUniform4i
   glUniform1fv
   glUniform2fv
   glUniform3fv
   glUniform4fv
   glUniform1iv
   glUniform2iv
   glUniform3iv
   glUniform4iv
   glUniformMatrix2fv
   glUniformMatrix3fv
   glUniformMatrix4fv
   glValidateProgram
   ;; glVertexAttrib1d ; TODO
   ;; glVertexAttrib1dv
   ;; glVertexAttrib1f
   ;; glVertexAttrib1fv
   ;; glVertexAttrib1s
   ;; glVertexAttrib1sv
   ;; glVertexAttrib2d
   ;; glVertexAttrib2dv
   ;; glVertexAttrib2f
   ;; glVertexAttrib2fv
   ;; glVertexAttrib2s
   ;; glVertexAttrib2sv
   ;; glVertexAttrib3d
   ;; glVertexAttrib3dv
   ;; glVertexAttrib3f
   ;; glVertexAttrib3fv
   ;; glVertexAttrib3s
   ;; glVertexAttrib3sv
   ;; glVertexAttrib4Nbv
   ;; glVertexAttrib4Niv
   ;; glVertexAttrib4Nsv
   ;; glVertexAttrib4Nub
   ;; glVertexAttrib4Nubv
   ;; glVertexAttrib4Nuiv
   ;; glVertexAttrib4Nusv
   ;; glVertexAttrib4bv
   ;; glVertexAttrib4d
   ;; glVertexAttrib4dv
   ;; glVertexAttrib4f
   ;; glVertexAttrib4fv
   ;; glVertexAttrib4iv
   ;; glVertexAttrib4s
   ;; glVertexAttrib4sv
   ;; glVertexAttrib4ubv
   ;; glVertexAttrib4uiv
   ;; glVertexAttrib4usv
   glVertexAttribPointer

   ; -- 2.1 ------------------------------
   GL_VERSION_2_1
   GL_PIXEL_PACK_BUFFER
   GL_PIXEL_UNPACK_BUFFER
   GL_PIXEL_PACK_BUFFER_BINDING
   GL_PIXEL_UNPACK_BUFFER_BINDING
   GL_FLOAT_MAT2x3
   GL_FLOAT_MAT2x4
   GL_FLOAT_MAT3x2
   GL_FLOAT_MAT3x4
   GL_FLOAT_MAT4x2
   GL_FLOAT_MAT4x3
   GL_SRGB
   GL_SRGB8
   GL_SRGB_ALPHA
   GL_SRGB8_ALPHA8
   GL_COMPRESSED_SRGB
   GL_COMPRESSED_SRGB_ALPHA

   glUniformMatrix2x3fv
   glUniformMatrix3x2fv
   glUniformMatrix2x4fv
   glUniformMatrix4x2fv
   glUniformMatrix3x4fv
   glUniformMatrix4x3fv

   ; -- 3.0 ------------------------------
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
   GL_DEPTH_COMPONENT32F
   GL_DEPTH32F_STENCIL8
   GL_FLOAT_32_UNSIGNED_INT_24_8_REV
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
   GL_FRAMEBUFFER_SRGB
   GL_HALF_FLOAT
   GL_MAP_READ_BIT
   GL_MAP_WRITE_BIT
   GL_MAP_INVALIDATE_RANGE_BIT
   GL_MAP_INVALIDATE_BUFFER_BIT
   GL_MAP_FLUSH_EXPLICIT_BIT
   GL_MAP_UNSYNCHRONIZED_BIT
   GL_COMPRESSED_RED_RGTC1
   GL_COMPRESSED_SIGNED_RED_RGTC1
   GL_COMPRESSED_RG_RGTC2
   GL_COMPRESSED_SIGNED_RG_RGTC2
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
   GL_VERTEX_ARRAY_BINDING

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
   glMapBufferRange
   glFlushMappedBufferRange
   glBindVertexArray
   glDeleteVertexArrays
   glGenVertexArrays
   glIsVertexArray

   ; -- 3.1 ------------------------------
   GL_SAMPLER_2D_RECT
   GL_SAMPLER_2D_RECT_SHADOW
   GL_SAMPLER_BUFFER
   GL_INT_SAMPLER_2D_RECT
   GL_INT_SAMPLER_BUFFER
   GL_UNSIGNED_INT_SAMPLER_2D_RECT
   GL_UNSIGNED_INT_SAMPLER_BUFFER
   GL_TEXTURE_BUFFER
   GL_MAX_TEXTURE_BUFFER_SIZE
   GL_TEXTURE_BINDING_BUFFER
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING
   GL_TEXTURE_RECTANGLE
   GL_TEXTURE_BINDING_RECTANGLE
   GL_PROXY_TEXTURE_RECTANGLE
   GL_MAX_RECTANGLE_TEXTURE_SIZE
   GL_R8_SNORM
   GL_RG8_SNORM
   GL_RGB8_SNORM
   GL_RGBA8_SNORM
   GL_R16_SNORM
   GL_RG16_SNORM
   GL_RGB16_SNORM
   GL_RGBA16_SNORM
   GL_SIGNED_NORMALIZED
   GL_PRIMITIVE_RESTART
   GL_PRIMITIVE_RESTART_INDEX
   GL_COPY_READ_BUFFER
   GL_COPY_WRITE_BUFFER
   GL_UNIFORM_BUFFER
   GL_UNIFORM_BUFFER_BINDING
   GL_UNIFORM_BUFFER_START
   GL_UNIFORM_BUFFER_SIZE
   GL_MAX_VERTEX_UNIFORM_BLOCKS
   GL_MAX_GEOMETRY_UNIFORM_BLOCKS
   GL_MAX_FRAGMENT_UNIFORM_BLOCKS
   GL_MAX_COMBINED_UNIFORM_BLOCKS
   GL_MAX_UNIFORM_BUFFER_BINDINGS
   GL_MAX_UNIFORM_BLOCK_SIZE
   GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
   GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
   GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
   GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
   GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
   GL_ACTIVE_UNIFORM_BLOCKS
   GL_UNIFORM_TYPE
   GL_UNIFORM_SIZE
   GL_UNIFORM_NAME_LENGTH
   GL_UNIFORM_BLOCK_INDEX
   GL_UNIFORM_OFFSET
   GL_UNIFORM_ARRAY_STRIDE
   GL_UNIFORM_MATRIX_STRIDE
   GL_UNIFORM_IS_ROW_MAJOR
   GL_UNIFORM_BLOCK_BINDING
   GL_UNIFORM_BLOCK_DATA_SIZE
   GL_UNIFORM_BLOCK_NAME_LENGTH
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
   GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
   GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
   GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
   GL_INVALID_INDEX

   glCullFace
   glFrontFace
   glHint
   glLineWidth
   glPointSize
   glPolygonMode
   glScissor
   glTexParameterf
   glTexParameterfv
   glTexParameteri
   glTexParameteriv
   glTexImage1D
   glTexImage2D
   glDrawBuffer
   glClear
   glClearColor
   glClearStencil
   glClearDepth
   glStencilMask
   glColorMask
   glDepthMask
   glDisable
   glEnable
   glFinish
   glFlush
   glBlendFunc
   glLogicOp
   glStencilFunc
   glStencilOp
   glDepthFunc
   glPixelStoref
   glPixelStorei
   glReadBuffer
   glReadPixels
   glGetBooleanv
   glGetDoublev
   glGetError
   glGetFloatv
   glGetIntegerv
   glGetString
   glGetTexImage
   glGetTexParameteriv
   glGetTexParameterfv
   glGetTexLevelParameterfv
   glGetTexLevelParameteriv
   glIsEnabled
   glDepthRange
   glViewport


   ; GL_ARB_draw_instanced
   glDrawArraysInstanced
   glDrawElementsInstanced

   ; GL_ARB_copy_buffer
   GL_COPY_READ_BUFFER
   GL_COPY_WRITE_BUFFER
   glCopyBufferSubData

   ; GL_NV_primitive_restart
   GL_PRIMITIVE_RESTART
   GL_PRIMITIVE_RESTART_INDEX
   glPrimitiveRestart
   glPrimitiveRestartIndex

   ; GL_ARB_texture_buffer_object
   GL_TEXTURE_BUFFER
   GL_MAX_TEXTURE_BUFFER_SIZE
   GL_TEXTURE_BINDING_BUFFER
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING
   GL_TEXTURE_BUFFER_FORMAT
   glTexBuffer

   ; GL_ARB_texture_rectangle
   GL_TEXTURE_RECTANGLE
   GL_TEXTURE_BINDING_RECTANGLE
   GL_PROXY_TEXTURE_RECTANGLE
   GL_MAX_RECTANGLE_TEXTURE_SIZE
   GL_SAMPLER_2D_RECT
   GL_SAMPLER_2D_RECT_SHADOW

   ; GL_ARB_uniform_buffer_object
   GL_UNIFORM_BUFFER
   GL_UNIFORM_BUFFER_BINDING
   GL_UNIFORM_BUFFER_START
   GL_UNIFORM_BUFFER_SIZE
   GL_MAX_VERTEX_UNIFORM_BLOCKS
   GL_MAX_GEOMETRY_UNIFORM_BLOCKS
   GL_MAX_FRAGMENT_UNIFORM_BLOCKS
   GL_MAX_COMBINED_UNIFORM_BLOCKS
   GL_MAX_UNIFORM_BUFFER_BINDINGS
   GL_MAX_UNIFORM_BLOCK_SIZE
   GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
   GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
   GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
   GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
   GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
   GL_ACTIVE_UNIFORM_BLOCKS
   GL_UNIFORM_TYPE
   GL_UNIFORM_SIZE
   GL_UNIFORM_NAME_LENGTH
   GL_UNIFORM_BLOCK_INDEX
   GL_UNIFORM_OFFSET
   GL_UNIFORM_ARRAY_STRIDE
   GL_UNIFORM_MATRIX_STRIDE
   GL_UNIFORM_IS_ROW_MAJOR
   GL_UNIFORM_BLOCK_BINDING
   GL_UNIFORM_BLOCK_DATA_SIZE
   GL_UNIFORM_BLOCK_NAME_LENGTH
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
   GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
   GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
   GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
   GL_INVALID_INDEX
   glGetUniformIndices
   glGetActiveUniformsiv
   glGetActiveUniformName
   glGetUniformBlockIndex
   glGetActiveUniformBlockiv
   glGetActiveUniformBlockName
   glBindBufferRange
   glBindBufferBase
   glGetIntegeri_v
   glUniformBlockBinding

   ; Signed normalized texture component formats
   GL_RED_SNORM
   GL_RG_SNORM
   GL_RGB_SNORM
   GL_RGBA_SNORM
   GL_R8_SNORM
   GL_RG8_SNORM
   GL_RGB8_SNORM
   GL_RGBA8_SNORM
   GL_R16_SNORM
   GL_RG16_SNORM
   GL_RGB16_SNORM
   GL_RGBA16_SNORM
   GL_SIGNED_NORMALIZED
   GL_PRIMITIVE_RESTART
   GL_PRIMITIVE_RESTART_INDEX

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL platform))

(begin
   (define GL_VERSION_3_1 1)

   (setq GL gl:GetProcAddress)

   ; -- 1.0 ------------------------------
   (define GL_VERSION_1_0 1)
   (define GL_DEPTH_BUFFER_BIT               #x00000100)
   (define GL_STENCIL_BUFFER_BIT             #x00000400)
   (define GL_COLOR_BUFFER_BIT               #x00004000)
   (define GL_FALSE                          0)
   (define GL_TRUE                           1)
   (define GL_POINTS                         #x0000)
   (define GL_LINES                          #x0001)
   (define GL_LINE_LOOP                      #x0002)
   (define GL_LINE_STRIP                     #x0003)
   (define GL_TRIANGLES                      #x0004)
   (define GL_TRIANGLE_STRIP                 #x0005)
   (define GL_TRIANGLE_FAN                   #x0006)
   (define GL_QUADS                          #x0007)
   (define GL_NEVER                          #x0200)
   (define GL_LESS                           #x0201)
   (define GL_EQUAL                          #x0202)
   (define GL_LEQUAL                         #x0203)
   (define GL_GREATER                        #x0204)
   (define GL_NOTEQUAL                       #x0205)
   (define GL_GEQUAL                         #x0206)
   (define GL_ALWAYS                         #x0207)
   (define GL_ZERO                           0)
   (define GL_ONE                            1)
   (define GL_SRC_COLOR                      #x0300)
   (define GL_ONE_MINUS_SRC_COLOR            #x0301)
   (define GL_SRC_ALPHA                      #x0302)
   (define GL_ONE_MINUS_SRC_ALPHA            #x0303)
   (define GL_DST_ALPHA                      #x0304)
   (define GL_ONE_MINUS_DST_ALPHA            #x0305)
   (define GL_DST_COLOR                      #x0306)
   (define GL_ONE_MINUS_DST_COLOR            #x0307)
   (define GL_SRC_ALPHA_SATURATE             #x0308)
   (define GL_NONE                           0)
   (define GL_FRONT_LEFT                     #x0400)
   (define GL_FRONT_RIGHT                    #x0401)
   (define GL_BACK_LEFT                      #x0402)
   (define GL_BACK_RIGHT                     #x0403)
   (define GL_FRONT                          #x0404)
   (define GL_BACK                           #x0405)
   (define GL_LEFT                           #x0406)
   (define GL_RIGHT                          #x0407)
   (define GL_FRONT_AND_BACK                 #x0408)
   (define GL_NO_ERROR                       0)
   (define GL_INVALID_ENUM                   #x0500)
   (define GL_INVALID_VALUE                  #x0501)
   (define GL_INVALID_OPERATION              #x0502)
   (define GL_OUT_OF_MEMORY                  #x0505)
   (define GL_CW                             #x0900)
   (define GL_CCW                            #x0901)
   (define GL_POINT_SIZE                     #x0B11)
   (define GL_POINT_SIZE_RANGE               #x0B12)
   (define GL_POINT_SIZE_GRANULARITY         #x0B13)
   (define GL_LINE_SMOOTH                    #x0B20)
   (define GL_LINE_WIDTH                     #x0B21)
   (define GL_LINE_WIDTH_RANGE               #x0B22)
   (define GL_LINE_WIDTH_GRANULARITY         #x0B23)
   (define GL_POLYGON_MODE                   #x0B40)
   (define GL_POLYGON_SMOOTH                 #x0B41)
   (define GL_CULL_FACE                      #x0B44)
   (define GL_CULL_FACE_MODE                 #x0B45)
   (define GL_FRONT_FACE                     #x0B46)
   (define GL_DEPTH_RANGE                    #x0B70)
   (define GL_DEPTH_TEST                     #x0B71)
   (define GL_DEPTH_WRITEMASK                #x0B72)
   (define GL_DEPTH_CLEAR_VALUE              #x0B73)
   (define GL_DEPTH_FUNC                     #x0B74)
   (define GL_STENCIL_TEST                   #x0B90)
   (define GL_STENCIL_CLEAR_VALUE            #x0B91)
   (define GL_STENCIL_FUNC                   #x0B92)
   (define GL_STENCIL_VALUE_MASK             #x0B93)
   (define GL_STENCIL_FAIL                   #x0B94)
   (define GL_STENCIL_PASS_DEPTH_FAIL        #x0B95)
   (define GL_STENCIL_PASS_DEPTH_PASS        #x0B96)
   (define GL_STENCIL_REF                    #x0B97)
   (define GL_STENCIL_WRITEMASK              #x0B98)
   (define GL_VIEWPORT                       #x0BA2)
   (define GL_DITHER                         #x0BD0)
   (define GL_BLEND_DST                      #x0BE0)
   (define GL_BLEND_SRC                      #x0BE1)
   (define GL_BLEND                          #x0BE2)
   (define GL_LOGIC_OP_MODE                  #x0BF0)
   (define GL_DRAW_BUFFER                    #x0C01)
   (define GL_READ_BUFFER                    #x0C02)
   (define GL_SCISSOR_BOX                    #x0C10)
   (define GL_SCISSOR_TEST                   #x0C11)
   (define GL_COLOR_CLEAR_VALUE              #x0C22)
   (define GL_COLOR_WRITEMASK                #x0C23)
   (define GL_DOUBLEBUFFER                   #x0C32)
   (define GL_STEREO                         #x0C33)
   (define GL_LINE_SMOOTH_HINT               #x0C52)
   (define GL_POLYGON_SMOOTH_HINT            #x0C53)
   (define GL_UNPACK_SWAP_BYTES              #x0CF0)
   (define GL_UNPACK_LSB_FIRST               #x0CF1)
   (define GL_UNPACK_ROW_LENGTH              #x0CF2)
   (define GL_UNPACK_SKIP_ROWS               #x0CF3)
   (define GL_UNPACK_SKIP_PIXELS             #x0CF4)
   (define GL_UNPACK_ALIGNMENT               #x0CF5)
   (define GL_PACK_SWAP_BYTES                #x0D00)
   (define GL_PACK_LSB_FIRST                 #x0D01)
   (define GL_PACK_ROW_LENGTH                #x0D02)
   (define GL_PACK_SKIP_ROWS                 #x0D03)
   (define GL_PACK_SKIP_PIXELS               #x0D04)
   (define GL_PACK_ALIGNMENT                 #x0D05)
   (define GL_MAX_TEXTURE_SIZE               #x0D33)
   (define GL_MAX_VIEWPORT_DIMS              #x0D3A)
   (define GL_SUBPIXEL_BITS                  #x0D50)
   (define GL_TEXTURE_1D                     #x0DE0)
   (define GL_TEXTURE_2D                     #x0DE1)
   (define GL_TEXTURE_WIDTH                  #x1000)
   (define GL_TEXTURE_HEIGHT                 #x1001)
   (define GL_TEXTURE_BORDER_COLOR           #x1004)
   (define GL_DONT_CARE                      #x1100)
   (define GL_FASTEST                        #x1101)
   (define GL_NICEST                         #x1102)
   (define GL_BYTE                           #x1400)
   (define GL_UNSIGNED_BYTE                  #x1401)
   (define GL_SHORT                          #x1402)
   (define GL_UNSIGNED_SHORT                 #x1403)
   (define GL_INT                            #x1404)
   (define GL_UNSIGNED_INT                   #x1405)
   (define GL_FLOAT                          #x1406)
   (define GL_STACK_OVERFLOW                 #x0503)
   (define GL_STACK_UNDERFLOW                #x0504)
   (define GL_CLEAR                          #x1500)
   (define GL_AND                            #x1501)
   (define GL_AND_REVERSE                    #x1502)
   (define GL_COPY                           #x1503)
   (define GL_AND_INVERTED                   #x1504)
   (define GL_NOOP                           #x1505)
   (define GL_XOR                            #x1506)
   (define GL_OR                             #x1507)
   (define GL_NOR                            #x1508)
   (define GL_EQUIV                          #x1509)
   (define GL_INVERT                         #x150A)
   (define GL_OR_REVERSE                     #x150B)
   (define GL_COPY_INVERTED                  #x150C)
   (define GL_OR_INVERTED                    #x150D)
   (define GL_NAND                           #x150E)
   (define GL_SET                            #x150F)
   (define GL_TEXTURE                        #x1702)
   (define GL_COLOR                          #x1800)
   (define GL_DEPTH                          #x1801)
   (define GL_STENCIL                        #x1802)
   (define GL_STENCIL_INDEX                  #x1901)
   (define GL_DEPTH_COMPONENT                #x1902)
   (define GL_RED                            #x1903)
   (define GL_GREEN                          #x1904)
   (define GL_BLUE                           #x1905)
   (define GL_ALPHA                          #x1906)
   (define GL_RGB                            #x1907)
   (define GL_RGBA                           #x1908)
   (define GL_POINT                          #x1B00)
   (define GL_LINE                           #x1B01)
   (define GL_FILL                           #x1B02)
   (define GL_KEEP                           #x1E00)
   (define GL_REPLACE                        #x1E01)
   (define GL_INCR                           #x1E02)
   (define GL_DECR                           #x1E03)
   (define GL_VENDOR                         #x1F00)
   (define GL_RENDERER                       #x1F01)
   (define GL_VERSION                        #x1F02)
   (define GL_EXTENSIONS                     #x1F03)
   (define GL_NEAREST                        #x2600)
   (define GL_LINEAR                         #x2601)
   (define GL_NEAREST_MIPMAP_NEAREST         #x2700)
   (define GL_LINEAR_MIPMAP_NEAREST          #x2701)
   (define GL_NEAREST_MIPMAP_LINEAR          #x2702)
   (define GL_LINEAR_MIPMAP_LINEAR           #x2703)
   (define GL_TEXTURE_MAG_FILTER             #x2800)
   (define GL_TEXTURE_MIN_FILTER             #x2801)
   (define GL_TEXTURE_WRAP_S                 #x2802)
   (define GL_TEXTURE_WRAP_T                 #x2803)
   (define GL_REPEAT                         #x2901)

   (define glCullFace    (GL GLvoid "glCullFace" GLenum))
   (define glFrontFace   (GL GLvoid "glFrontFace" GLenum))
   (define glHint        (GL GLvoid "glHint" GLenum GLenum))
   (define glLineWidth   (GL GLvoid "glLineWidth" GLfloat))
   (define glPointSize   (GL GLvoid "glPointSize" GLfloat))
   (define glPolygonMode (GL GLvoid "glPolygonMode" GLenum GLenum))
   (define glScissor     (GL GLvoid "glScissor" GLint GLint GLsizei GLsizei))
   (define glTexParameterf (GL GLvoid "glTexParameterf" GLenum GLenum GLfloat))
   (define glTexParameterfv (GL GLvoid "glTexParameterfv" GLenum GLenum GLfloat*))
   (define glTexParameteri (GL GLvoid "glTexParameteri" GLenum GLenum GLint))
   (define glTexParameteriv (GL GLvoid "glTexParameteriv" GLenum GLenum GLint*))
   (define glTexImage1D  (GL GLvoid "glTexImage1D" GLenum GLint GLint GLsizei GLint GLenum GLenum fft-any))
   (define glTexImage2D  (GL GLvoid "glTexImage2D" GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum fft-any))
   (define glDrawBuffer  (GL GLvoid "glDrawBuffer" GLenum))
   (define glClear       (GL GLvoid "glClear"      GLbitfield))
   (define glClearColor  (GL GLvoid "glClearColor" GLfloat GLfloat GLfloat GLfloat))
   (define glClearStencil(GL GLvoid "glClearStencil" GLint))
   (define glClearDepth  (GL GLvoid "glClearDepth" GLclampd))
   (define glStencilMask (GL GLvoid "glStencilMask" GLuint))
   (define glColorMask   (GL GLvoid "glColorMask"  GLboolean GLboolean GLboolean GLboolean))
   (define glDepthMask   (GL GLvoid "glDepthMask"  GLboolean))
   (define glDisable     (GL GLvoid "glDisable"    GLenum))
   (define glEnable      (GL GLvoid "glEnable"     GLenum))
   (define glFinish      (GL GLvoid "glFinish"))
   (define glFlush       (GL GLvoid "glFlush"))
   (define glBlendFunc   (GL GLvoid "glBlendFunc"  GLenum GLenum))
   (define glLogicOp     (GL GLvoid "glLogicOp" GLenum))
   (define glStencilFunc (GL GLvoid "glStencilFunc" GLenum GLint GLuint))
   (define glStencilOp   (GL GLvoid "glStencilOp" GLenum GLenum GLenum))
   (define glDepthFunc   (GL GLvoid "glDepthFunc"  GLenum))
   (define glPixelStoref (GL GLvoid "glPixelStoref" GLenum GLfloat))
   (define glPixelStorei (GL GLvoid "glPixelStorei" GLenum GLint))
   (define glReadBuffer  (GL GLvoid "glReadBuffer" GLenum))
   (define glReadPixels  (GL GLvoid "glReadPixels" GLint GLint GLsizei GLsizei GLenum GLenum GLvoid*))
   (define glGetBooleanv (GL GLvoid "glGetBooleanv" GLenum (fft& GLboolean)))
   (define glGetDoublev  (GL GLvoid "glGetDoublev"  GLenum (fft& GLdouble)))
   (define glGetError    (GL GLenum "glGetError"))
   (define glGetFloatv   (GL GLvoid "glGetFloatv"   GLenum (fft& GLfloat)))
   (define glGetIntegerv (GL GLvoid "glGetIntegerv" GLenum GLint&))
   (define glGetString   (GL GLubyte* "glGetString" GLenum))
   (define glGetTexImage (GL GLvoid "glGetTexImage" GLenum GLint GLenum GLenum GLvoid*))
   (define glGetTexParameteriv (GL GLvoid "glGetTexParameteriv" GLenum GLenum GLint*))
   (define glGetTexParameterfv (GL GLvoid "glGetTexParameteriv" GLenum GLenum GLfloat*))
   (define glGetTexLevelParameterfv (GL GLvoid "glGetTexLevelParameterfv" GLenum GLint GLenum GLfloat*))
   (define glGetTexLevelParameteriv (GL GLvoid "glGetTexLevelParameteriv" GLenum GLint GLenum GLint*))
   (define glIsEnabled   (GL GLboolean "glIsEnabled" GLenum))
   (define glDepthRange  (GL GLvoid "glDepthRange" GLclampd GLclampd))
   (define glViewport    (GL GLvoid "glViewport" GLint GLint GLsizei GLsizei))

   ; -- 1.1 ------------------------------
   (define GL_VERSION_1_1 1)
   (define GL_COLOR_LOGIC_OP                 #x0BF2)
   (define GL_POLYGON_OFFSET_UNITS           #x2A00)
   (define GL_POLYGON_OFFSET_POINT           #x2A01)
   (define GL_POLYGON_OFFSET_LINE            #x2A02)
   (define GL_POLYGON_OFFSET_FILL            #x8037)
   (define GL_POLYGON_OFFSET_FACTOR          #x8038)
   (define GL_TEXTURE_BINDING_1D             #x8068)
   (define GL_TEXTURE_BINDING_2D             #x8069)
   (define GL_TEXTURE_INTERNAL_FORMAT        #x1003)
   (define GL_TEXTURE_RED_SIZE               #x805C)
   (define GL_TEXTURE_GREEN_SIZE             #x805D)
   (define GL_TEXTURE_BLUE_SIZE              #x805E)
   (define GL_TEXTURE_ALPHA_SIZE             #x805F)
   (define GL_DOUBLE                         #x140A)
   (define GL_PROXY_TEXTURE_1D               #x8063)
   (define GL_PROXY_TEXTURE_2D               #x8064)
   (define GL_R3_G3_B2                       #x2A10)
   (define GL_RGB4                           #x804F)
   (define GL_RGB5                           #x8050)
   (define GL_RGB8                           #x8051)
   (define GL_RGB10                          #x8052)
   (define GL_RGB12                          #x8053)
   (define GL_RGB16                          #x8054)
   (define GL_RGBA2                          #x8055)
   (define GL_RGBA4                          #x8056)
   (define GL_RGB5_A1                        #x8057)
   (define GL_RGBA8                          #x8058)
   (define GL_RGB10_A2                       #x8059)
   (define GL_RGBA12                         #x805A)
   (define GL_RGBA16                         #x805B)
   (define GL_VERTEX_ARRAY                   #x8074)

   (define glDrawArrays (GL GLvoid "glDrawArrays" GLenum GLint GLsizei))
   (define glDrawElements (GL GLvoid "glDrawElements" GLenum GLsizei GLenum fft-any))
   (define glGetPointerv (GL GLvoid "glGetPointerv" GLenum (fft& type-vptr))) ;GLvoid**
   (define glPolygonOffset (GL GLvoid "glPolygonOffset" GLfloat GLfloat))
   (define glCopyTexImage1D (GL GLvoid "glCopyTexImage1D" GLenum GLint GLenum GLint GLint GLsizei GLint))
   (define glCopyTexImage2D (GL GLvoid "glCopyTexImage2D" GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint))
   (define glCopyTexSubImage1D (GL GLvoid "glCopyTexSubImage1D" GLenum GLint GLint GLint GLint GLsizei))
   (define glCopyTexSubImage2D (GL GLvoid "glCopyTexSubImage2D" GLenum GLint GLint GLint GLint GLint GLsizei GLsizei))
   (define glTexSubImage1D (GL GLvoid "glTexSubImage1D" GLenum GLint GLint GLsizei GLenum GLenum fft-any))
   (define glTexSubImage2D (GL GLvoid "glTexSubImage2D" GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum fft-any))
   (define glBindTexture (GL GLvoid "glBindTexture" GLenum GLuint))
   (define glDeleteTextures (GL GLvoid "glDeleteTextures" GLsizei GLuint*))
   (define glGenTextures (GL GLvoid "glGenTextures" GLsizei GLuint&))
   (define glIsTexture (GL GLboolean "glIsTexture" GLuint))

   ; -- 1.2 ------------------------------
   (define GL_VERSION_1_2 1)
   (define GL_UNSIGNED_BYTE_3_3_2            #x8032)
   (define GL_UNSIGNED_SHORT_4_4_4_4         #x8033)
   (define GL_UNSIGNED_SHORT_5_5_5_1         #x8034)
   (define GL_UNSIGNED_INT_8_8_8_8           #x8035)
   (define GL_UNSIGNED_INT_10_10_10_2        #x8036)
   (define GL_TEXTURE_BINDING_3D             #x806A)
   (define GL_PACK_SKIP_IMAGES               #x806B)
   (define GL_PACK_IMAGE_HEIGHT              #x806C)
   (define GL_UNPACK_SKIP_IMAGES             #x806D)
   (define GL_UNPACK_IMAGE_HEIGHT            #x806E)
   (define GL_TEXTURE_3D                     #x806F)
   (define GL_PROXY_TEXTURE_3D               #x8070)
   (define GL_TEXTURE_DEPTH                  #x8071)
   (define GL_TEXTURE_WRAP_R                 #x8072)
   (define GL_MAX_3D_TEXTURE_SIZE            #x8073)
   (define GL_UNSIGNED_BYTE_2_3_3_REV        #x8362)
   (define GL_UNSIGNED_SHORT_5_6_5           #x8363)
   (define GL_UNSIGNED_SHORT_5_6_5_REV       #x8364)
   (define GL_UNSIGNED_SHORT_4_4_4_4_REV     #x8365)
   (define GL_UNSIGNED_SHORT_1_5_5_5_REV     #x8366)
   (define GL_UNSIGNED_INT_8_8_8_8_REV       #x8367)
   (define GL_UNSIGNED_INT_2_10_10_10_REV    #x8368)
   (define GL_BGR                            #x80E0)
   (define GL_BGRA                           #x80E1)
   (define GL_MAX_ELEMENTS_VERTICES          #x80E8)
   (define GL_MAX_ELEMENTS_INDICES           #x80E9)
   (define GL_CLAMP_TO_EDGE                  #x812F)
   (define GL_TEXTURE_MIN_LOD                #x813A)
   (define GL_TEXTURE_MAX_LOD                #x813B)
   (define GL_TEXTURE_BASE_LEVEL             #x813C)
   (define GL_TEXTURE_MAX_LEVEL              #x813D)
   (define GL_SMOOTH_POINT_SIZE_RANGE        #x0B12)
   (define GL_SMOOTH_POINT_SIZE_GRANULARITY  #x0B13)
   (define GL_SMOOTH_LINE_WIDTH_RANGE        #x0B22)
   (define GL_SMOOTH_LINE_WIDTH_GRANULARITY  #x0B23)
   (define GL_ALIASED_LINE_WIDTH_RANGE       #x846E)

   (define glDrawRangeElements (GL GLvoid "glDrawRangeElements" GLenum GLuint GLuint GLsizei GLenum fft-any))
   (define glTexImage3D (GL GLvoid "glTexImage3D" GLenum GLint GLint GLsizei GLsizei GLsizei GLint GLenum GLenum fft-any))
   (define glTexSubImage3D (GL GLvoid "glTexSubImage3D" GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum fft-any))
   (define glCopyTexSubImage3D (GL GLvoid "glCopyTexSubImage3D" GLenum GLint GLint GLint GLint GLint GLint GLsizei GLsizei))

   ; -- 1.3 ------------------------------
   (define GL_VERSION_1_3 1)
   (define GL_TEXTURE0                       #x84C0)
   (define GL_TEXTURE1                       #x84C1)
   (define GL_TEXTURE2                       #x84C2)
   (define GL_TEXTURE3                       #x84C3)
   (define GL_TEXTURE4                       #x84C4)
   (define GL_TEXTURE5                       #x84C5)
   (define GL_TEXTURE6                       #x84C6)
   (define GL_TEXTURE7                       #x84C7)
   (define GL_TEXTURE8                       #x84C8)
   (define GL_TEXTURE9                       #x84C9)
   (define GL_TEXTURE10                      #x84CA)
   (define GL_TEXTURE11                      #x84CB)
   (define GL_TEXTURE12                      #x84CC)
   (define GL_TEXTURE13                      #x84CD)
   (define GL_TEXTURE14                      #x84CE)
   (define GL_TEXTURE15                      #x84CF)
   (define GL_TEXTURE16                      #x84D0)
   (define GL_TEXTURE17                      #x84D1)
   (define GL_TEXTURE18                      #x84D2)
   (define GL_TEXTURE19                      #x84D3)
   (define GL_TEXTURE20                      #x84D4)
   (define GL_TEXTURE21                      #x84D5)
   (define GL_TEXTURE22                      #x84D6)
   (define GL_TEXTURE23                      #x84D7)
   (define GL_TEXTURE24                      #x84D8)
   (define GL_TEXTURE25                      #x84D9)
   (define GL_TEXTURE26                      #x84DA)
   (define GL_TEXTURE27                      #x84DB)
   (define GL_TEXTURE28                      #x84DC)
   (define GL_TEXTURE29                      #x84DD)
   (define GL_TEXTURE30                      #x84DE)
   (define GL_TEXTURE31                      #x84DF)
   (define GL_ACTIVE_TEXTURE                 #x84E0)
   (define GL_MULTISAMPLE                    #x809D)
   (define GL_SAMPLE_ALPHA_TO_COVERAGE       #x809E)
   (define GL_SAMPLE_ALPHA_TO_ONE            #x809F)
   (define GL_SAMPLE_COVERAGE                #x80A0)
   (define GL_SAMPLE_BUFFERS                 #x80A8)
   (define GL_SAMPLES                        #x80A9)
   (define GL_SAMPLE_COVERAGE_VALUE          #x80AA)
   (define GL_SAMPLE_COVERAGE_INVERT         #x80AB)
   (define GL_TEXTURE_CUBE_MAP               #x8513)
   (define GL_TEXTURE_BINDING_CUBE_MAP       #x8514)
   (define GL_TEXTURE_CUBE_MAP_POSITIVE_X    #x8515)
   (define GL_TEXTURE_CUBE_MAP_NEGATIVE_X    #x8516)
   (define GL_TEXTURE_CUBE_MAP_POSITIVE_Y    #x8517)
   (define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    #x8518)
   (define GL_TEXTURE_CUBE_MAP_POSITIVE_Z    #x8519)
   (define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    #x851A)
   (define GL_PROXY_TEXTURE_CUBE_MAP         #x851B)
   (define GL_MAX_CUBE_MAP_TEXTURE_SIZE      #x851C)
   (define GL_COMPRESSED_RGB                 #x84ED)
   (define GL_COMPRESSED_RGBA                #x84EE)
   (define GL_TEXTURE_COMPRESSION_HINT       #x84EF)
   (define GL_TEXTURE_COMPRESSED_IMAGE_SIZE  #x86A0)
   (define GL_TEXTURE_COMPRESSED             #x86A1)
   (define GL_NUM_COMPRESSED_TEXTURE_FORMATS #x86A2)
   (define GL_COMPRESSED_TEXTURE_FORMATS     #x86A3)
   (define GL_CLAMP_TO_BORDER                #x812D)

   (define glActiveTexture (GL GLvoid "glActiveTexture" GLenum))
   (define glSampleCoverage (GL GLvoid "SampleCoverage" GLclampf GLboolean))
   (define glCompressedTexImage3D (GL GLvoid "glCompressedTexImage3D" GLenum GLint GLenum GLsizei GLsizei GLsizei GLint GLsizei fft-any))
   (define glCompressedTexImage2D (GL GLvoid "glCompressedTexImage2D" GLenum GLint GLenum GLsizei GLsizei GLint GLsizei fft-any))
   (define glCompressedTexImage1D (GL GLvoid "glCompressedTexImage1D" GLenum GLint GLenum GLsizei GLint GLsizei fft-any))
   (define glCompressedTexSubImage3D (GL GLvoid "glCompressedTexSubImage3D" GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei fft-any))
   (define glCompressedTexSubImage2D (GL GLvoid "glCompressedTexSubImage2D" GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei fft-any))
   (define glCompressedTexSubImage1D (GL GLvoid "glCompressedTexSubImage1D" GLenum GLint GLint GLsizei GLenum GLsizei fft-any))
   (define glGetCompressedTexImage (GL GLvoid "glGetCompressedTexImage" GLenum GLint fft-any))

   ; -- 1.4 ------------------------------
   (define GL_VERSION_1_4 1)
   (define GL_BLEND_DST_RGB                  #x80C8)
   (define GL_BLEND_SRC_RGB                  #x80C9)
   (define GL_BLEND_DST_ALPHA                #x80CA)
   (define GL_BLEND_SRC_ALPHA                #x80CB)
   (define GL_POINT_FADE_THRESHOLD_SIZE      #x8128)
   (define GL_DEPTH_COMPONENT16              #x81A5)
   (define GL_DEPTH_COMPONENT24              #x81A6)
   (define GL_DEPTH_COMPONENT32              #x81A7)
   (define GL_MIRRORED_REPEAT                #x8370)
   (define GL_MAX_TEXTURE_LOD_BIAS           #x84FD)
   (define GL_TEXTURE_LOD_BIAS               #x8501)
   (define GL_INCR_WRAP                      #x8507)
   (define GL_DECR_WRAP                      #x8508)
   (define GL_TEXTURE_DEPTH_SIZE             #x884A)
   (define GL_TEXTURE_COMPARE_MODE           #x884C)
   (define GL_TEXTURE_COMPARE_FUNC           #x884D)
   (define GL_BLEND_COLOR                    #x8005)
   (define GL_BLEND_EQUATION                 #x8009)
   (define GL_CONSTANT_COLOR                 #x8001)
   (define GL_ONE_MINUS_CONSTANT_COLOR       #x8002)
   (define GL_CONSTANT_ALPHA                 #x8003)
   (define GL_ONE_MINUS_CONSTANT_ALPHA       #x8004)
   (define GL_FUNC_ADD                       #x8006)
   (define GL_FUNC_REVERSE_SUBTRACT          #x800B)
   (define GL_FUNC_SUBTRACT                  #x800A)
   (define GL_MIN                            #x8007)
   (define GL_MAX                            #x8008)

   (define glBlendFuncSeparate (GL GLvoid "BlendFuncSeparate" GLenum GLenum GLenum GLenum))
   (define glMultiDrawArrays (GL GLvoid "glMultiDrawArrays" GLenum GLint* (fft* GLsizei) GLsizei))
   (define glMultiDrawElements (GL GLvoid "glMultiDrawElements" GLenum (fft* GLsizei) GLenum fft-any GLsizei))
   (define glPointParameterf (GL GLvoid "glPointParameterf" GLenum GLfloat))
   (define glPointParameterfv (GL GLvoid "glPointParameterfv" GLenum GLfloat*))
   (define glPointParameteri (GL GLvoid "glPointParameteri" GLenum GLint))
   (define glPointParameteriv (GL GLvoid "glPointParameteifv" GLenum GLint*))
   (define glBlendColor (GL GLvoid "glBlendColor" GLclampf GLclampf GLclampf GLclampf))
   (define glBlendEquation (GL GLvoid "glBlendEquation" GLenum))

   ; -- 1.5 ------------------------------
   (define GL_VERSION_1_5 1)
   (define GL_BUFFER_SIZE                    #x8764)
   (define GL_BUFFER_USAGE                   #x8765)
   (define GL_QUERY_COUNTER_BITS             #x8864)
   (define GL_CURRENT_QUERY                  #x8865)
   (define GL_QUERY_RESULT                   #x8866)
   (define GL_QUERY_RESULT_AVAILABLE         #x8867)
   (define GL_ARRAY_BUFFER                   #x8892)
   (define GL_ELEMENT_ARRAY_BUFFER           #x8893)
   (define GL_ARRAY_BUFFER_BINDING           #x8894)
   (define GL_ELEMENT_ARRAY_BUFFER_BINDING   #x8895)
   (define GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING #x889F)
   (define GL_READ_ONLY                      #x88B8)
   (define GL_WRITE_ONLY                     #x88B9)
   (define GL_READ_WRITE                     #x88BA)
   (define GL_BUFFER_ACCESS                  #x88BB)
   (define GL_BUFFER_MAPPED                  #x88BC)
   (define GL_BUFFER_MAP_POINTER             #x88BD)
   (define GL_STREAM_DRAW                    #x88E0)
   (define GL_STREAM_READ                    #x88E1)
   (define GL_STREAM_COPY                    #x88E2)
   (define GL_STATIC_DRAW                    #x88E4)
   (define GL_STATIC_READ                    #x88E5)
   (define GL_STATIC_COPY                    #x88E6)
   (define GL_DYNAMIC_DRAW                   #x88E8)
   (define GL_DYNAMIC_READ                   #x88E9)
   (define GL_DYNAMIC_COPY                   #x88EA)
   (define GL_SAMPLES_PASSED                 #x8914)
   (define GL_SRC1_ALPHA                     #x8589)

   (define glGenQueries (GL GLvoid "GenQueries" GLsizei GLuint*))
   (define glDeleteQueries (GL GLvoid "DeleteQueries" GLsizei GLuint*))
   (define glIsQuery (GL GLboolean "IsQuery" GLuint))
   (define glBeginQuery (GL GLvoid "BeginQuery" GLenum GLuint))
   (define glEndQuery (GL GLvoid "EndQuery" GLenum))
   (define glGetQueryiv (GL GLvoid "GetQueryiv" GLenum GLenum GLint*))
   (define glGetQueryObjectiv (GL GLvoid "GetQueryObjectiv" GLuint GLenum GLint*))
   (define glGetQueryObjectuiv (GL GLvoid "GetQueryObjectuiv" GLuint GLenum GLuint*))
   (define glBindBuffer (GL GLvoid "glBindBuffer" GLenum GLuint))
   (define glDeleteBuffers (GL GLvoid "glDeleteBuffers" GLsizei GLuint*))
   (define glGenBuffers (GL GLvoid "glGenBuffers" GLsizei GLuint&))
   (define glIsBuffer (GL GLboolean "glIsBuffer" GLuint))
   (define glBufferData (GL GLvoid "glBufferData" GLenum GLsizeiptr fft-any GLenum))
   (define glBufferSubData (GL GLvoid "glBufferSubData" GLenum GLintptr GLsizeiptr fft-any))
   (define glGetBufferSubData (GL GLvoid "glGetBufferSubData" GLenum GLintptr GLsizeiptr fft-any))
   (define glMapBuffer (GL type-vptr "glMapBufferARB" GLenum GLenum))
   (define glUnmapBuffer (GL GLboolean "glUnmapBuffer" GLenum))
   (define glGetBufferParameteriv (GL GLvoid "glGetBufferParameteriv" GLenum GLenum GLint*))
   (define glGetBufferPointerv (GL GLvoid "glGetBufferPointerv" GLenum GLenum fft-any))

   ; -- 2.0 ------------------------------
   (define GL_VERSION_2_0 1)
   (define GL_BLEND_EQUATION_RGB             #x8009)
   (define GL_VERTEX_ATTRIB_ARRAY_ENABLED    #x8622)
   (define GL_VERTEX_ATTRIB_ARRAY_SIZE       #x8623)
   (define GL_VERTEX_ATTRIB_ARRAY_STRIDE     #x8624)
   (define GL_VERTEX_ATTRIB_ARRAY_TYPE       #x8625)
   (define GL_CURRENT_VERTEX_ATTRIB          #x8626)
   (define GL_VERTEX_PROGRAM_POINT_SIZE      #x8642)
   (define GL_VERTEX_ATTRIB_ARRAY_POINTER    #x8645)
   (define GL_STENCIL_BACK_FUNC              #x8800)
   (define GL_STENCIL_BACK_FAIL              #x8801)
   (define GL_STENCIL_BACK_PASS_DEPTH_FAIL   #x8802)
   (define GL_STENCIL_BACK_PASS_DEPTH_PASS   #x8803)
   (define GL_MAX_DRAW_BUFFERS               #x8824)
   (define GL_DRAW_BUFFER0                   #x8825)
   (define GL_DRAW_BUFFER1                   #x8826)
   (define GL_DRAW_BUFFER2                   #x8827)
   (define GL_DRAW_BUFFER3                   #x8828)
   (define GL_DRAW_BUFFER4                   #x8829)
   (define GL_DRAW_BUFFER5                   #x882A)
   (define GL_DRAW_BUFFER6                   #x882B)
   (define GL_DRAW_BUFFER7                   #x882C)
   (define GL_DRAW_BUFFER8                   #x882D)
   (define GL_DRAW_BUFFER9                   #x882E)
   (define GL_DRAW_BUFFER10                  #x882F)
   (define GL_DRAW_BUFFER11                  #x8830)
   (define GL_DRAW_BUFFER12                  #x8831)
   (define GL_DRAW_BUFFER13                  #x8832)
   (define GL_DRAW_BUFFER14                  #x8833)
   (define GL_DRAW_BUFFER15                  #x8834)
   (define GL_BLEND_EQUATION_ALPHA           #x883D)
   (define GL_MAX_VERTEX_ATTRIBS             #x8869)
   (define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED #x886A)
   (define GL_MAX_TEXTURE_IMAGE_UNITS        #x8872)
   (define GL_FRAGMENT_SHADER                #x8B30)
   (define GL_VERTEX_SHADER                  #x8B31)
   (define GL_MAX_FRAGMENT_UNIFORM_COMPONENTS #x8B49)
   (define GL_MAX_VERTEX_UNIFORM_COMPONENTS  #x8B4A)
   (define GL_MAX_VARYING_FLOATS             #x8B4B)
   (define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS #x8B4C)
   (define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS #x8B4D)
   (define GL_SHADER_TYPE                    #x8B4F)
   (define GL_FLOAT_VEC2                     #x8B50)
   (define GL_FLOAT_VEC3                     #x8B51)
   (define GL_FLOAT_VEC4                     #x8B52)
   (define GL_INT_VEC2                       #x8B53)
   (define GL_INT_VEC3                       #x8B54)
   (define GL_INT_VEC4                       #x8B55)
   (define GL_BOOL                           #x8B56)
   (define GL_BOOL_VEC2                      #x8B57)
   (define GL_BOOL_VEC3                      #x8B58)
   (define GL_BOOL_VEC4                      #x8B59)
   (define GL_FLOAT_MAT2                     #x8B5A)
   (define GL_FLOAT_MAT3                     #x8B5B)
   (define GL_FLOAT_MAT4                     #x8B5C)
   (define GL_SAMPLER_1D                     #x8B5D)
   (define GL_SAMPLER_2D                     #x8B5E)
   (define GL_SAMPLER_3D                     #x8B5F)
   (define GL_SAMPLER_CUBE                   #x8B60)
   (define GL_SAMPLER_1D_SHADOW              #x8B61)
   (define GL_SAMPLER_2D_SHADOW              #x8B62)
   (define GL_DELETE_STATUS                  #x8B80)
   (define GL_COMPILE_STATUS                 #x8B81)
   (define GL_LINK_STATUS                    #x8B82)
   (define GL_VALIDATE_STATUS                #x8B83)
   (define GL_INFO_LOG_LENGTH                #x8B84)
   (define GL_ATTACHED_SHADERS               #x8B85)
   (define GL_ACTIVE_UNIFORMS                #x8B86)
   (define GL_ACTIVE_UNIFORM_MAX_LENGTH      #x8B87)
   (define GL_SHADER_SOURCE_LENGTH           #x8B88)
   (define GL_ACTIVE_ATTRIBUTES              #x8B89)
   (define GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    #x8B8A)
   (define GL_FRAGMENT_SHADER_DERIVATIVE_HINT #x8B8B)
   (define GL_SHADING_LANGUAGE_VERSION       #x8B8C)
   (define GL_CURRENT_PROGRAM                #x8B8D)
   (define GL_POINT_SPRITE_COORD_ORIGIN      #x8CA0)
   (define GL_LOWER_LEFT                     #x8CA1)
   (define GL_UPPER_LEFT                     #x8CA2)
   (define GL_STENCIL_BACK_REF               #x8CA3)
   (define GL_STENCIL_BACK_VALUE_MASK        #x8CA4)
   (define GL_STENCIL_BACK_WRITEMASK         #x8CA5)

   (define GLchar* type-string)
   (define GLchar** (fft* GLchar*))
   (define GLint* (fft* GLint))
   (define GLsizei* (fft* GLsizei))
   (define void* fft-void*)
   (define GLsizei& (fft& GLsizei))
   (define GLenum& (fft& GLenum))

   (define glBlendEquationSeparate (GL GLvoid "glBlendEquationSeparate" GLenum GLenum))
   (define glDrawBuffers     (GL GLvoid "glDrawBuffers" GLsizei GLenum*))
   (define glStencilOpSeparate (GL GLvoid "glStencilOpSeparate" GLenum GLenum GLenum GLenum))
   (define glStencilFuncSeparate (GL GLvoid "glStencilFuncSeparate" GLenum GLenum GLint GLuint))
   (define glStencilMaskSeparate (GL GLvoid "glStencilMaskSeparate" GLenum GLuint))
   (define glAttachShader    (GL GLvoid "glAttachShader" GLuint GLuint))
   (define glBindAttribLocation (GL GLvoid "glBindAttribLocation" GLuint GLuint GLchar*))
   (define glCompileShader   (GL GLvoid "glCompileShader" GLuint))
   (define glCreateProgram   (GL GLuint "glCreateProgram"))
   (define glCreateShader    (GL GLuint "glCreateShader" GLenum))
   (define glDeleteProgram   (GL GLvoid "glDeleteProgram" GLuint))
   (define glDeleteShader    (GL GLvoid "glDeleteShader" GLuint))
   (define glDetachShader    (GL GLvoid "glDetachShader" GLuint GLuint))
   (define glDisableVertexAttribArray (GL GLvoid "glDisableVertexAttribArray" GLuint))
   (define glEnableVertexAttribArray (GL GLvoid "glEnableVertexAttribArray" GLuint))
   (define glGetActiveAttrib (GL GLvoid "glGetActiveAttrib" GLuint GLuint GLsizei GLsizei& GLint& GLenum& type-bytevector))
   (define glGetActiveUniform (GL GLvoid "glGetActiveUniform" GLuint GLuint GLsizei GLsizei& GLint& GLenum& type-bytevector))
   (define glGetAttachedShaders (GL GLvoid "glGetAttachedShaders" GLuint GLsizei GLsizei& GLuint&))
   (define glGetAttribLocation (GL GLint "glGetAttribLocation" GLuint GLchar*))
   (define glGetProgramiv    (GL GLvoid "glGetProgramiv" GLuint GLenum GLint&))
   (define glGetProgramInfoLog (GL GLvoid "glGetProgramInfoLog" GLuint GLsizei GLsizei& type-bytevector))
   (define glGetShaderiv     (GL GLvoid "glGetShaderiv" GLuint GLenum GLint&))
   (define glGetShaderInfoLog (GL GLvoid "glGetShaderInfoLog" GLuint GLsizei GLsizei& type-bytevector))
   (define glGetShaderSource (GL GLvoid "glGetShaderSource" GLuint GLsizei GLsizei& type-bytevector))
   (define glGetUniformLocation (GL GLint "glGetUniformLocation" GLuint GLchar*))
   (define glGetUniformfv    (GL GLvoid "glGetUniformfv" GLuint GLint (fft& GLfloat)))
   (define glGetUniformiv    (GL GLvoid "glGetUniformiv" GLuint GLint (fft& GLint)))
   (define glGetVertexAttribdv (GL GLvoid "glGetVertexAttribdv" GLuint GLenum (fft& GLdouble)))
   (define glGetVertexAttribfv (GL GLvoid "glGetVertexAttribfv" GLuint GLenum (fft& GLfloat)))
   (define glGetVertexAttribiv (GL GLvoid "glGetVertexAttribiv" GLuint GLenum (fft& GLint)))
   (define glGetVertexAttribPointerv (GL GLvoid "glGetVertexAttribPointerv" GLuint GLenum (fft& type-vptr)))
   (define glIsProgram       (GL GLboolean "glIsProgram" GLuint))
   (define glIsShader        (GL GLboolean "glIsShader" GLuint))
   (define glLinkProgram     (GL GLvoid "glLinkProgram" GLuint))
   (define glShaderSource    (GL GLvoid "glShaderSource" GLuint GLsizei GLchar** GLint*))
   (define glUseProgram      (GL GLvoid "glUseProgram" GLuint))
   (define glUniform1f       (GL GLvoid "glUniform1f" GLint GLfloat))
   (define glUniform2f       (GL GLvoid "glUniform2f" GLint GLfloat GLfloat))
   (define glUniform3f       (GL GLvoid "glUniform3f" GLint GLfloat GLfloat GLfloat))
   (define glUniform4f       (GL GLvoid "glUniform4f" GLint GLfloat GLfloat GLfloat GLfloat))
   (define glUniform1i       (GL GLvoid "glUniform1i" GLint GLint))
   (define glUniform2i       (GL GLvoid "glUniform2i" GLint GLint GLint))
   (define glUniform3i       (GL GLvoid "glUniform3i" GLint GLint GLint GLint))
   (define glUniform4i       (GL GLvoid "glUniform4i" GLint GLint GLint GLint GLint))
   (define glUniform1fv      (GL GLvoid "glUniform1fv" GLint GLsizei GLfloat*))
   (define glUniform2fv      (GL GLvoid "glUniform2fv" GLint GLsizei GLfloat*))
   (define glUniform3fv      (GL GLvoid "glUniform3fv" GLint GLsizei GLfloat*))
   (define glUniform4fv      (GL GLvoid "glUniform4fv" GLint GLsizei GLfloat*))
   (define glUniform1iv      (GL GLvoid "glUniform1iv" GLint GLsizei GLint*))
   (define glUniform2iv      (GL GLvoid "glUniform2iv" GLint GLsizei GLint*))
   (define glUniform3iv      (GL GLvoid "glUniform3iv" GLint GLsizei GLint*))
   (define glUniform4iv      (GL GLvoid "glUniform4iv" GLint GLsizei GLint*))
   (define glUniformMatrix2fv (GL GLvoid "glUniformMatrix2fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix3fv (GL GLvoid "glUniformMatrix3fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix4fv (GL GLvoid "glUniformMatrix4fv" GLint GLsizei GLboolean GLfloat*))
   (define glValidateProgram (GL GLvoid "glValidateProgram" GLuint))
;; GLAPI void APIENTRY glVertexAttrib1d (GLuint index, GLdouble x);
;; GLAPI void APIENTRY glVertexAttrib1dv (GLuint index, const GLdouble *v);
;; GLAPI void APIENTRY glVertexAttrib1f (GLuint index, GLfloat x);
;; GLAPI void APIENTRY glVertexAttrib1fv (GLuint index, const GLfloat *v);
;; GLAPI void APIENTRY glVertexAttrib1s (GLuint index, GLshort x);
;; GLAPI void APIENTRY glVertexAttrib1sv (GLuint index, const GLshort *v);
;; GLAPI void APIENTRY glVertexAttrib2d (GLuint index, GLdouble x, GLdouble y);
;; GLAPI void APIENTRY glVertexAttrib2dv (GLuint index, const GLdouble *v);
;; GLAPI void APIENTRY glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y);
;; GLAPI void APIENTRY glVertexAttrib2fv (GLuint index, const GLfloat *v);
;; GLAPI void APIENTRY glVertexAttrib2s (GLuint index, GLshort x, GLshort y);
;; GLAPI void APIENTRY glVertexAttrib2sv (GLuint index, const GLshort *v);
;; GLAPI void APIENTRY glVertexAttrib3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
;; GLAPI void APIENTRY glVertexAttrib3dv (GLuint index, const GLdouble *v);
;; GLAPI void APIENTRY glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z);
;; GLAPI void APIENTRY glVertexAttrib3fv (GLuint index, const GLfloat *v);
;; GLAPI void APIENTRY glVertexAttrib3s (GLuint index, GLshort x, GLshort y, GLshort z);
;; GLAPI void APIENTRY glVertexAttrib3sv (GLuint index, const GLshort *v);
;; GLAPI void APIENTRY glVertexAttrib4Nbv (GLuint index, const GLbyte *v);
;; GLAPI void APIENTRY glVertexAttrib4Niv (GLuint index, const GLint *v);
;; GLAPI void APIENTRY glVertexAttrib4Nsv (GLuint index, const GLshort *v);
;; GLAPI void APIENTRY glVertexAttrib4Nub (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
;; GLAPI void APIENTRY glVertexAttrib4Nubv (GLuint index, const GLubyte *v);
;; GLAPI void APIENTRY glVertexAttrib4Nuiv (GLuint index, const GLuint *v);
;; GLAPI void APIENTRY glVertexAttrib4Nusv (GLuint index, const GLushort *v);
;; GLAPI void APIENTRY glVertexAttrib4bv (GLuint index, const GLbyte *v);
;; GLAPI void APIENTRY glVertexAttrib4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
;; GLAPI void APIENTRY glVertexAttrib4dv (GLuint index, const GLdouble *v);
;; GLAPI void APIENTRY glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
;; GLAPI void APIENTRY glVertexAttrib4fv (GLuint index, const GLfloat *v);
;; GLAPI void APIENTRY glVertexAttrib4iv (GLuint index, const GLint *v);
;; GLAPI void APIENTRY glVertexAttrib4s (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
;; GLAPI void APIENTRY glVertexAttrib4sv (GLuint index, const GLshort *v);
;; GLAPI void APIENTRY glVertexAttrib4ubv (GLuint index, const GLubyte *v);
;; GLAPI void APIENTRY glVertexAttrib4uiv (GLuint index, const GLuint *v);
;; GLAPI void APIENTRY glVertexAttrib4usv (GLuint index, const GLushort *v);
   (define glVertexAttribPointer (GL GLvoid "glVertexAttribPointer" GLuint GLint GLenum GLboolean GLsizei fft-any))

   ; -- 2.1 ------------------------------
   (define GL_VERSION_2_1 1)
   (define GL_PIXEL_PACK_BUFFER              #x88EB)
   (define GL_PIXEL_UNPACK_BUFFER            #x88EC)
   (define GL_PIXEL_PACK_BUFFER_BINDING      #x88ED)
   (define GL_PIXEL_UNPACK_BUFFER_BINDING    #x88EF)
   (define GL_FLOAT_MAT2x3                   #x8B65)
   (define GL_FLOAT_MAT2x4                   #x8B66)
   (define GL_FLOAT_MAT3x2                   #x8B67)
   (define GL_FLOAT_MAT3x4                   #x8B68)
   (define GL_FLOAT_MAT4x2                   #x8B69)
   (define GL_FLOAT_MAT4x3                   #x8B6A)
   (define GL_SRGB                           #x8C40)
   (define GL_SRGB8                          #x8C41)
   (define GL_SRGB_ALPHA                     #x8C42)
   (define GL_SRGB8_ALPHA8                   #x8C43)
   (define GL_COMPRESSED_SRGB                #x8C48)
   (define GL_COMPRESSED_SRGB_ALPHA          #x8C49)

   (define glUniformMatrix2x3fv (GL GLvoid "glUniformMatrix2x3fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix3x2fv (GL GLvoid "glUniformMatrix3x2fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix2x4fv (GL GLvoid "glUniformMatrix2x4fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix4x2fv (GL GLvoid "glUniformMatrix4x2fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix3x4fv (GL GLvoid "glUniformMatrix3x4fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix4x3fv (GL GLvoid "glUniformMatrix4x3fv" GLint GLsizei GLboolean GLfloat*))

   ; -- 3.0 ------------------------------
   (define GL_VERSION_3_0 1)
   (define GL_COMPARE_REF_TO_TEXTURE         #x884E)
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
   (define GL_MAX_VARYING_COMPONENTS         #x8B4B)
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
   (define GL_DEPTH_COMPONENT32F             #x8CAC)
   (define GL_DEPTH32F_STENCIL8              #x8CAD)
   (define GL_FLOAT_32_UNSIGNED_INT_24_8_REV #x8DAD)
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
   (define GL_FRAMEBUFFER_SRGB               #x8DB9)
   (define GL_HALF_FLOAT                     #x140B)
   (define GL_MAP_READ_BIT                   #x0001)
   (define GL_MAP_WRITE_BIT                  #x0002)
   (define GL_MAP_INVALIDATE_RANGE_BIT       #x0004)
   (define GL_MAP_INVALIDATE_BUFFER_BIT      #x0008)
   (define GL_MAP_FLUSH_EXPLICIT_BIT         #x0010)
   (define GL_MAP_UNSYNCHRONIZED_BIT         #x0020)
   (define GL_COMPRESSED_RED_RGTC1           #x8DBB)
   (define GL_COMPRESSED_SIGNED_RED_RGTC1    #x8DBC)
   (define GL_COMPRESSED_RG_RGTC2            #x8DBD)
   (define GL_COMPRESSED_SIGNED_RG_RGTC2     #x8DBE)
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
   (define GL_VERTEX_ARRAY_BINDING           #x85B5)

   (define GLbyte* (fft* GLbyte))
   (define GLushort* (fft* GLushort))
   (define GLchar* type-string)

   (define glColorMaski (GL GLvoid "glColorMaski" GLuint GLboolean GLboolean GLboolean GLboolean))
   (define glGetBooleani_v (GL GLvoid "glGetBooleani_v" GLenum GLuint GLboolean*))
   (define glGetIntegeri_v (GL GLvoid "glGetIntegeri_v" GLenum GLuint GLint*))
   (define glEnablei (GL GLvoid "glEnablei" GLenum GLuint))
   (define glDisablei (GL GLvoid "glDisablei" GLenum GLuint))
   (define glIsEnabledi (GL GLboolean "glIsEnabledi" GLenum GLuint))
   (define glBeginTransformFeedback (GL GLvoid "glBeginTransformFeedback" GLenum))
   (define glEndTransformFeedback (GL GLvoid "glEndTransformFeedback"))
   (define glBindBufferRange (GL GLvoid "glBindBufferRange" GLenum GLuint GLuint GLintptr GLsizeiptr))
   (define glBindBufferBase (GL GLvoid "glBindBufferBase" GLenum GLuint GLuint))
   (define glTransformFeedbackVaryings (GL GLvoid "glTransformFeedbackVaryings" GLuint GLsizei (fft* GLchar*) GLenum)) ; todo: check this
   (define glGetTransformFeedbackVarying (GL GLvoid "glGetTransformFeedbackVarying" GLuint GLuint GLsizei (fft& GLsizei) (fft& GLsizei) (fft& GLenum) type-string)) ; todo: check this
   (define glClampColor (GL GLvoid "glClampColor" GLenum GLenum))
   (define glBeginConditionalRender (GL GLvoid "glBeginConditionalRender" GLuint GLenum))
   (define glEndConditionalRender (GL GLvoid "glEndConditionalRender"))
   (define glVertexAttribIPointer (GL GLvoid "glVertexAttribIPointer" GLuint GLint GLenum GLsizei GLvoid*))
   (define glGetVertexAttribIiv (GL GLvoid "glGetVertexAttribIiv" GLuint GLenum GLint*))
   (define glGetVertexAttribIuiv (GL GLvoid "glGetVertexAttribIuiv" GLuint GLenum GLuint*))
   (define glVertexAttribI1i (GL GLvoid "glVertexAttribI1i" GLuint GLint))
   (define glVertexAttribI2i (GL GLvoid "glVertexAttribI2i" GLuint GLint GLint))
   (define glVertexAttribI3i (GL GLvoid "glVertexAttribI3i" GLuint GLint GLint GLint))
   (define glVertexAttribI4i (GL GLvoid "glVertexAttribI4i" GLuint GLint GLint GLint GLint))
   (define glVertexAttribI1ui (GL GLvoid "glVertexAttribI1ui" GLuint GLuint))
   (define glVertexAttribI2ui (GL GLvoid "glVertexAttribI2ui" GLuint GLuint GLuint))
   (define glVertexAttribI3ui (GL GLvoid "glVertexAttribI3ui" GLuint GLuint GLuint GLuint))
   (define glVertexAttribI4ui (GL GLvoid "glVertexAttribI4ui" GLuint GLuint GLuint GLuint GLuint))
   (define glVertexAttribI1iv (GL GLvoid "glVertexAttribI1iv" GLuint GLint*))
   (define glVertexAttribI2iv (GL GLvoid "glVertexAttribI2iv" GLuint GLint*))
   (define glVertexAttribI3iv (GL GLvoid "glVertexAttribI3iv" GLuint GLint*))
   (define glVertexAttribI4iv (GL GLvoid "glVertexAttribI4iv" GLuint GLint*))
   (define glVertexAttribI1uiv (GL GLvoid "glVertexAttribI1uiv" GLuint GLuint*))
   (define glVertexAttribI2uiv (GL GLvoid "glVertexAttribI2uiv" GLuint GLuint*))
   (define glVertexAttribI3uiv (GL GLvoid "glVertexAttribI3uiv" GLuint GLuint*))
   (define glVertexAttribI4uiv (GL GLvoid "glVertexAttribI4uiv" GLuint GLuint*))
   (define glVertexAttribI4bv (GL GLvoid "glVertexAttribI4bv" GLuint GLbyte*))
   (define glVertexAttribI4sv (GL GLvoid "glVertexAttribI4sv" GLuint GLshort*))
   (define glVertexAttribI4ubv (GL GLvoid "glVertexAttribI4ubv" GLuint GLubyte*))
   (define glVertexAttribI4usv (GL GLvoid "glVertexAttribI4usv" GLuint GLushort*))
   (define glGetUniformuiv (GL GLvoid "glGetUniformuiv" GLuint GLint GLuint*))
   (define glBindFragDataLocation (GL GLvoid "glBindFragDataLocation" GLuint GLuint GLchar*))
   (define glGetFragDataLocation (GL GLint "glGetFragDataLocation" GLuint GLchar*))
   (define glUniform1ui (GL GLvoid "glUniform1ui" GLint GLuint))
   (define glUniform2ui (GL GLvoid "glUniform2ui" GLint GLuint GLuint))
   (define glUniform3ui (GL GLvoid "glUniform3ui" GLint GLuint GLuint GLuint))
   (define glUniform4ui (GL GLvoid "glUniform4ui" GLint GLuint GLuint GLuint GLuint))
   (define glUniform1uiv (GL GLvoid "glUniform1uiv" GLint GLsizei GLuint*))
   (define glUniform2uiv (GL GLvoid "glUniform2uiv" GLint GLsizei GLuint*))
   (define glUniform3uiv (GL GLvoid "glUniform3uiv" GLint GLsizei GLuint*))
   (define glUniform4uiv (GL GLvoid "glUniform4uiv" GLint GLsizei GLuint*))
   (define glTexParameterIiv (GL GLvoid "glTexParameterIiv" GLenum GLenum GLint*))
   (define glTexParameterIuiv (GL GLvoid "glTexParameterIuiv" GLenum GLenum GLuint*))
   (define glGetTexParameterIiv (GL GLvoid "glGetTexParameterIiv" GLenum GLenum GLint*))
   (define glGetTexParameterIuiv (GL GLvoid "glGetTexParameterIuiv" GLenum GLenum GLuint*))
   (define glClearBufferiv (GL GLvoid "glClearBufferiv" GLenum GLint GLint*))
   (define glClearBufferuiv (GL GLvoid "glClearBufferuiv" GLenum GLint GLuint*))
   (define glClearBufferfv (GL GLvoid "glClearBufferfv" GLenum GLint GLfloat*))
   (define glClearBufferfi (GL GLvoid "glClearBufferfi" GLenum GLint GLfloat GLint))
   (define glGetStringi (GL GLubyte* "glGetStringi" GLenum GLuint))
   (define glIsRenderbuffer (GL GLboolean "glIsRenderbuffer" GLuint))
   (define glBindRenderbuffer (GL GLvoid "glBindRenderbuffer" GLenum GLuint))
   (define glDeleteRenderbuffers (GL GLvoid "glDeleteRenderbuffers" GLsizei GLuint*))
   (define glGenRenderbuffers (GL GLvoid "glGenRenderbuffers" GLsizei GLuint*))
   (define glRenderbufferStorage (GL GLvoid "glRenderbufferStorage" GLenum GLenum GLsizei GLsizei))
   (define glGetRenderbufferParameteriv (GL GLvoid "glGetRenderbufferParameteriv" GLenum GLenum GLint*))
   (define glIsFramebuffer (GL GLboolean "glIsFramebuffer" GLuint))
   (define glBindFramebuffer (GL GLvoid "glBindFramebuffer" GLenum GLuint))
   (define glDeleteFramebuffers (GL GLvoid "glDeleteFramebuffers" GLsizei GLuint*))
   (define glGenFramebuffers (GL GLvoid "glGenFramebuffers" GLsizei GLuint*))
   (define glCheckFramebufferStatus (GL GLenum "glCheckFramebufferStatus" GLenum))
   (define glFramebufferTexture1D (GL GLvoid "glFramebufferTexture1D" GLenum GLenum GLenum GLuint GLint))
   (define glFramebufferTexture2D (GL GLvoid "glFramebufferTexture2D" GLenum GLenum GLenum GLuint GLint))
   (define glFramebufferTexture3D (GL GLvoid "glFramebufferTexture3D" GLenum GLenum GLenum GLuint GLint GLint))
   (define glFramebufferRenderbuffer (GL GLvoid "glFramebufferRenderbuffer" GLenum GLenum GLenum GLuint))
   (define glGetFramebufferAttachmentParameteriv (GL GLvoid "glGetFramebufferAttachmentParameteriv" GLenum GLenum GLenum GLint*))
   (define glGenerateMipmap (GL GLvoid "glGenerateMipmap" GLenum))
   (define glBlitFramebuffer (GL GLvoid "glBlitFramebuffer" GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum))
   (define glRenderbufferStorageMultisample (GL GLvoid "glRenderbufferStorageMultisample" GLenum GLsizei GLenum GLsizei GLsizei))
   (define glFramebufferTextureLayer (GL GLvoid "glFramebufferTextureLayer" GLenum GLenum GLuint GLint GLint))
   (define glMapBufferRange (GL GLvoid* "glMapBufferRange" GLenum  GLintptr GLsizeiptr GLbitfield))    ; not in 3.0 spec
   (define glFlushMappedBufferRange (GL GLvoid "glFlushMappedBufferRange" GLenum GLintptr GLsizeiptr)) ; not in 3.0 spec
   (define glBindVertexArray (GL GLvoid "glBindVertexArray" GLuint))
   (define glDeleteVertexArrays (GL GLvoid "glDeleteVertexArrays" GLsizei GLuint*))
   (define glGenVertexArrays (GL GLvoid "glGenVertexArrays" GLsizei GLuint&))
   (define glIsVertexArray (GL GLboolean "glIsVertexArray" GLuint))

   ; -- 3.1 ------------------------------
   (define GL_SAMPLER_2D_RECT                #x8B63)
   (define GL_SAMPLER_2D_RECT_SHADOW         #x8B64)
   (define GL_SAMPLER_BUFFER                 #x8DC2)
   (define GL_INT_SAMPLER_2D_RECT            #x8DCD)
   (define GL_INT_SAMPLER_BUFFER             #x8DD0)
   (define GL_UNSIGNED_INT_SAMPLER_2D_RECT   #x8DD5)
   (define GL_UNSIGNED_INT_SAMPLER_BUFFER    #x8DD8)
   (define GL_TEXTURE_BUFFER                 #x8C2A)
   (define GL_MAX_TEXTURE_BUFFER_SIZE        #x8C2B)
   (define GL_TEXTURE_BINDING_BUFFER         #x8C2C)
   (define GL_TEXTURE_BUFFER_DATA_STORE_BINDING #x8C2D)
   (define GL_TEXTURE_RECTANGLE              #x84F5)
   (define GL_TEXTURE_BINDING_RECTANGLE      #x84F6)
   (define GL_PROXY_TEXTURE_RECTANGLE        #x84F7)
   (define GL_MAX_RECTANGLE_TEXTURE_SIZE     #x84F8)
   (define GL_R8_SNORM                       #x8F94)
   (define GL_RG8_SNORM                      #x8F95)
   (define GL_RGB8_SNORM                     #x8F96)
   (define GL_RGBA8_SNORM                    #x8F97)
   (define GL_R16_SNORM                      #x8F98)
   (define GL_RG16_SNORM                     #x8F99)
   (define GL_RGB16_SNORM                    #x8F9A)
   (define GL_RGBA16_SNORM                   #x8F9B)
   (define GL_SIGNED_NORMALIZED              #x8F9C)
   (define GL_PRIMITIVE_RESTART              #x8F9D)
   (define GL_PRIMITIVE_RESTART_INDEX        #x8F9E)
   (define GL_COPY_READ_BUFFER               #x8F36)
   (define GL_COPY_WRITE_BUFFER              #x8F37)
   (define GL_UNIFORM_BUFFER                 #x8A11)
   (define GL_UNIFORM_BUFFER_BINDING         #x8A28)
   (define GL_UNIFORM_BUFFER_START           #x8A29)
   (define GL_UNIFORM_BUFFER_SIZE            #x8A2A)
   (define GL_MAX_VERTEX_UNIFORM_BLOCKS      #x8A2B)
   (define GL_MAX_GEOMETRY_UNIFORM_BLOCKS    #x8A2C)
   (define GL_MAX_FRAGMENT_UNIFORM_BLOCKS    #x8A2D)
   (define GL_MAX_COMBINED_UNIFORM_BLOCKS    #x8A2E)
   (define GL_MAX_UNIFORM_BUFFER_BINDINGS    #x8A2F)
   (define GL_MAX_UNIFORM_BLOCK_SIZE         #x8A30)
   (define GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS #x8A31)
   (define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS #x8A32)
   (define GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS #x8A33)
   (define GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT #x8A34)
   (define GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH #x8A35)
   (define GL_ACTIVE_UNIFORM_BLOCKS          #x8A36)
   (define GL_UNIFORM_TYPE                   #x8A37)
   (define GL_UNIFORM_SIZE                   #x8A38)
   (define GL_UNIFORM_NAME_LENGTH            #x8A39)
   (define GL_UNIFORM_BLOCK_INDEX            #x8A3A)
   (define GL_UNIFORM_OFFSET                 #x8A3B)
   (define GL_UNIFORM_ARRAY_STRIDE           #x8A3C)
   (define GL_UNIFORM_MATRIX_STRIDE          #x8A3D)
   (define GL_UNIFORM_IS_ROW_MAJOR           #x8A3E)
   (define GL_UNIFORM_BLOCK_BINDING          #x8A3F)
   (define GL_UNIFORM_BLOCK_DATA_SIZE        #x8A40)
   (define GL_UNIFORM_BLOCK_NAME_LENGTH      #x8A41)
   (define GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS  #x8A42)
   (define GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES #x8A43)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER #x8A44)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER #x8A45)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER #x8A46)
   (define GL_INVALID_INDEX                  #xFFFFFFFF)

   ; GL_ARB_draw_instanced
   (define glDrawArraysInstanced (GL GLvoid "glDrawArraysInstanced" GLenum GLint GLsizei GLsizei))
   (define glDrawElementsInstanced (GL GLvoid "glDrawElementsInstanced" GLenum GLsizei GLenum GLvoid* GLsizei))

   ; GL_ARB_copy_buffer
   (define GL_COPY_READ_BUFFER                    #x8F36)
   (define GL_COPY_WRITE_BUFFER                   #x8F37)
   (define glCopyBufferSubData (GL GLvoid "glCopyBufferSubData" GLenum GLenum GLintptr GLintptr GLsizeiptr))

   ; GL_NV_primitive_restart
   (define GL_PRIMITIVE_RESTART                           #x8558)
   (define GL_PRIMITIVE_RESTART_INDEX                     #x8559)
   (define glPrimitiveRestart (GL GLvoid "glPrimitiveRestartNV"))
   (define glPrimitiveRestartIndex (GL GLvoid "glPrimitiveRestartIndexNV" GLuint))

   ; GL_ARB_texture_buffer_object
   (define GL_TEXTURE_BUFFER                              #x8C2A)
   (define GL_MAX_TEXTURE_BUFFER_SIZE                     #x8C2B)
   (define GL_TEXTURE_BINDING_BUFFER                      #x8C2C)
   (define GL_TEXTURE_BUFFER_DATA_STORE_BINDING           #x8C2D)
   (define GL_TEXTURE_BUFFER_FORMAT                       #x8C2E)
   (define glTexBuffer (GL GLvoid "glTexBufferARB" GLenum GLenum GLuint))

   ; GL_ARB_texture_rectangle
   (define GL_TEXTURE_RECTANGLE            #x84F5)
   (define GL_TEXTURE_BINDING_RECTANGLE    #x84F6)
   (define GL_PROXY_TEXTURE_RECTANGLE      #x84F7)
   (define GL_MAX_RECTANGLE_TEXTURE_SIZE   #x84F8)
   (define GL_SAMPLER_2D_RECT              #x8B63)
   (define GL_SAMPLER_2D_RECT_SHADOW       #x8B64)

   ; GL_ARB_uniform_buffer_object
   (define glGetUniformIndices (GL GLvoid "GetUniformIndices" GLuint GLsizei (fft* GLchar*) GLuint&))
   (define glGetActiveUniformsiv (GL GLvoid "GetActiveUniformsiv" GLuint GLsizei GLuint* GLenum GLint&))
   (define glGetActiveUniformName (GL GLvoid "GetActiveUniformName" GLuint GLuint GLsizei GLsizei* GLchar*))
   (define glGetUniformBlockIndex (GL GLuint "GetUniformBlockIndex" GLuint GLchar*))
   (define glGetActiveUniformBlockiv (GL GLvoid "GetActiveUniformBlockiv" GLuint GLuint GLenum GLint*))
   (define glGetActiveUniformBlockName (GL GLvoid "GetActiveUniformBlockName" GLuint GLuint GLsizei GLsizei* GLchar*))
   (define glBindBufferRange (GL GLvoid "BindBufferRange" GLenum GLuint GLuint GLintptr GLsizeiptr))
   (define glBindBufferBase (GL GLvoid "BindBufferBase" GLenum GLuint GLuint))
   (define glGetIntegeri_v (GL GLvoid "GetIntegeri_v" GLenum GLuint GLint*))
   (define glUniformBlockBinding (GL GLvoid "UniformBlockBinding" GLuint GLuint GLuint))

   (define GL_UNIFORM_BUFFER                                  #x8A11)
   (define GL_UNIFORM_BUFFER_BINDING                          #x8A28)
   (define GL_UNIFORM_BUFFER_START                            #x8A29)
   (define GL_UNIFORM_BUFFER_SIZE                             #x8A2A)
   (define GL_MAX_VERTEX_UNIFORM_BLOCKS                       #x8A2B)
   (define GL_MAX_GEOMETRY_UNIFORM_BLOCKS                     #x8A2C)
   (define GL_MAX_FRAGMENT_UNIFORM_BLOCKS                     #x8A2D)
   (define GL_MAX_COMBINED_UNIFORM_BLOCKS                     #x8A2E)
   (define GL_MAX_UNIFORM_BUFFER_BINDINGS                     #x8A2F)
   (define GL_MAX_UNIFORM_BLOCK_SIZE                          #x8A30)
   (define GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS          #x8A31)
   (define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS        #x8A32)
   (define GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS        #x8A33)
   (define GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT                 #x8A34)
   (define GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH            #x8A35)
   (define GL_ACTIVE_UNIFORM_BLOCKS                           #x8A36)
   (define GL_UNIFORM_TYPE                                    #x8A37)
   (define GL_UNIFORM_SIZE                                    #x8A38)
   (define GL_UNIFORM_NAME_LENGTH                             #x8A39)
   (define GL_UNIFORM_BLOCK_INDEX                             #x8A3A)
   (define GL_UNIFORM_OFFSET                                  #x8A3B)
   (define GL_UNIFORM_ARRAY_STRIDE                            #x8A3C)
   (define GL_UNIFORM_MATRIX_STRIDE                           #x8A3D)
   (define GL_UNIFORM_IS_ROW_MAJOR                            #x8A3E)
   (define GL_UNIFORM_BLOCK_BINDING                           #x8A3F)
   (define GL_UNIFORM_BLOCK_DATA_SIZE                         #x8A40)
   (define GL_UNIFORM_BLOCK_NAME_LENGTH                       #x8A41)
   (define GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS                   #x8A42)
   (define GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES            #x8A43)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER       #x8A44)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER     #x8A45)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER     #x8A46)
   (define GL_INVALID_INDEX                                   #xFFFFFFFF)

   ; Signed normalized texture component formats
   (define GL_RED_SNORM                      #x8F90)
   (define GL_RG_SNORM                       #x8F91)
   (define GL_RGB_SNORM                      #x8F92)
   (define GL_RGBA_SNORM                     #x8F93)
   (define GL_R8_SNORM                       #x8F94)
   (define GL_RG8_SNORM                      #x8F95)
   (define GL_RGB8_SNORM                     #x8F96)
   (define GL_RGBA8_SNORM                    #x8F97)
   (define GL_R16_SNORM                      #x8F98)
   (define GL_RG16_SNORM                     #x8F99)
   (define GL_RGB16_SNORM                    #x8F9A)
   (define GL_RGBA16_SNORM                   #x8F9B)
   (define GL_SIGNED_NORMALIZED              #x8F9C)
   (define GL_PRIMITIVE_RESTART              #x8F9D)
   (define GL_PRIMITIVE_RESTART_INDEX        #x8F9E)

   ;; GLAPI void APIENTRY glDrawArraysInstanced (GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
   ;; GLAPI void APIENTRY glDrawElementsInstanced (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount);
   ;; GLAPI void APIENTRY glTexBuffer (GLenum target, GLenum internalformat, GLuint buffer);
   ;; GLAPI void APIENTRY glPrimitiveRestartIndex (GLuint index);
   ;; GLAPI void APIENTRY glCopyBufferSubData (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glGetUniformIndices (GLuint program, GLsizei uniformCount, const GLchar *const*uniformNames, GLuint *uniformIndices);
   ;; GLAPI void APIENTRY glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, const GLuint *uniformIndices, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformName);
   ;; GLAPI GLuint APIENTRY glGetUniformBlockIndex (GLuint program, const GLchar *uniformBlockName);
   ;; GLAPI void APIENTRY glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformBlockName);
   ;; GLAPI void APIENTRY glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);


))