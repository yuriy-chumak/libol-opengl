; OpenGL 4.0 (11 Mar 2010), GLSL 4.00
;  + ARB_draw_buffers_blend
;  + ARB_draw_indirect
;  + ARB_gpu_shader5
;  + ARB_gpu_shader_fp64
;  + ARB_sample_shading
;  + ARB_shader_subroutine
;  + ARB_tessellation_shader
;  + ARB_texture_buffer_object_rgb32
;  + ARB_texture_cube_map_array
;  + ARB_texture_gather
;  + ARB_texture_query_lod
;  + ARB_transform_feedback2
;  + ARB_transform_feedback3

(define-library (OpenGL 4.0)
(export
      (exports (OpenGL 3.3))

   GL_VERSION_4_0

;; ARB_draw_buffers_blend
   GL_ARB_draw_buffers_blend
   glBlendEquationi
   glBlendEquationSeparatei
   glBlendFunci
   glBlendFuncSeparatei

;; ARB_draw_indirect
   GL_DRAW_INDIRECT_BUFFER
   GL_DRAW_INDIRECT_BUFFER_BINDING
   glDrawArraysIndirect
   glDrawElementsIndirect

;; ARB_gpu_shader5
   GL_ARB_gpu_shader5
   GL_GEOMETRY_SHADER_INVOCATIONS
   GL_MAX_GEOMETRY_SHADER_INVOCATIONS
   GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
   GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
   GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
   GL_MAX_VERTEX_STREAMS

;; ARB_gpu_shader_fp64
   GL_ARB_gpu_shader_fp64
   GL_DOUBLE_VEC2
   GL_DOUBLE_VEC3
   GL_DOUBLE_VEC4
   GL_DOUBLE_MAT2
   GL_DOUBLE_MAT3
   GL_DOUBLE_MAT4
   GL_DOUBLE_MAT2x3
   GL_DOUBLE_MAT2x4
   GL_DOUBLE_MAT3x2
   GL_DOUBLE_MAT3x4
   GL_DOUBLE_MAT4x2
   GL_DOUBLE_MAT4x3
   glUniform1d
   glUniform2d
   glUniform3d
   glUniform4d
   glUniform1dv
   glUniform2dv
   glUniform3dv
   glUniform4dv
   glUniformMatrix2dv
   glUniformMatrix3dv
   glUniformMatrix4dv
   glUniformMatrix2x3dv
   glUniformMatrix2x4dv
   glUniformMatrix3x2dv
   glUniformMatrix3x4dv
   glUniformMatrix4x2dv
   glUniformMatrix4x3dv
   glGetUniformdv

;; ARB_shader_subroutine
   GL_ARB_shader_subroutine
   GL_ACTIVE_SUBROUTINES
   GL_ACTIVE_SUBROUTINE_UNIFORMS
   GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
   GL_ACTIVE_SUBROUTINE_MAX_LENGTH
   GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
   GL_MAX_SUBROUTINES
   GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
   GL_NUM_COMPATIBLE_SUBROUTINES
   GL_COMPATIBLE_SUBROUTINES
   glGetSubroutineUniformLocation
   glGetSubroutineIndex
   glGetActiveSubroutineUniformiv
   glGetActiveSubroutineUniformName
   glGetActiveSubroutineName
   glUniformSubroutinesuiv
   glGetUniformSubroutineuiv
   glGetProgramStageiv

;; ARB_tessellation_shader
   GL_ARB_tessellation_shader
   GL_PATCHES
   GL_PATCH_VERTICES
   GL_PATCH_DEFAULT_INNER_LEVEL
   GL_PATCH_DEFAULT_OUTER_LEVEL
   GL_TESS_CONTROL_OUTPUT_VERTICES
   GL_TESS_GEN_MODE
   GL_TESS_GEN_SPACING
   GL_TESS_GEN_VERTEX_ORDER
   GL_TESS_GEN_POINT_MODE
   GL_ISOLINES
   GL_QUADS
   GL_FRACTIONAL_ODD
   GL_FRACTIONAL_EVEN
   GL_MAX_PATCH_VERTICES
   GL_MAX_TESS_GEN_LEVEL
   GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
   GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
   GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
   GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
   GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
   GL_MAX_TESS_PATCH_COMPONENTS
   GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
   GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
   GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
   GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
   GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
   GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
   GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
   GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
   GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
   GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
   GL_TESS_EVALUATION_SHADER
   GL_TESS_CONTROL_SHADER

   glPatchParameteri
   glPatchParameterfv

;; ARB_texture_buffer_object_rgb32
   GL_ARB_texture_buffer_object_rgb32
   ; none

;; ARB_texture_cube_map_array
   GL_ARB_texture_cube_map_array
   GL_TEXTURE_CUBE_MAP_ARRAY
   GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
   GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
   GL_SAMPLER_CUBE_MAP_ARRAY
   GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
   GL_INT_SAMPLER_CUBE_MAP_ARRAY
   GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY

;; ARB_texture_gather
   GL_ARB_texture_gather
   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET

;; ARB_texture_query_lod
   GL_ARB_texture_query_lod
   ; none

;; ARB_transform_feedback2
   GL_ARB_transform_feedback2
   GL_TRANSFORM_FEEDBACK
   GL_TRANSFORM_FEEDBACK_PAUSED
   GL_TRANSFORM_FEEDBACK_ACTIVE
   GL_TRANSFORM_FEEDBACK_BINDING

   glBindTransformFeedback
   glDeleteTransformFeedbacks
   glGenTransformFeedbacks
   glIsTransformFeedback
   glPauseTransformFeedback
   glResumeTransformFeedback
   glDrawTransformFeedback

;; ARB_transform_feedback3
   GL_ARB_transform_feedback3
   GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
   GL_MAX_VERTEX_STREAMS

   glDrawTransformFeedbackStream
   glBeginQueryIndexed
   glEndQueryIndexed
   glGetQueryIndexediv

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 3.3))

(begin
   (define GL_VERSION_4_0 1)

   (define GL gl:GetProcAddress)

;; ARB_draw_buffers_blend
   (define GL_ARB_draw_buffers_blend 1)

   (define glBlendEquationi                                     (GL GLvoid "glBlendEquationi" GLuint GLenum))
   (define glBlendEquationSeparatei                             (GL GLvoid "glBlendEquationSeparatei" GLuint GLenum GLenum))
   (define glBlendFunci                                         (GL GLvoid "glBlendFunci" GLuint GLenum GLenum))
   (define glBlendFuncSeparatei                                 (GL GLvoid "glBlendFuncSeparatei" GLuint GLenum GLenum GLenum GLenum))

;; ARB_draw_indirect
   (define GL_ARB_draw_indirect 1)

   (define GL_DRAW_INDIRECT_BUFFER                              #x8F3F)
   (define GL_DRAW_INDIRECT_BUFFER_BINDING                      #x8F43)

   (define glDrawArraysIndirect                                 (GL GLvoid "glDrawArraysIndirect" GLenum GLvoid*))
   (define glDrawElementsIndirect                               (GL GLvoid "glDrawElementsIndirect" GLenum GLenum GLvoid*))

;; ARB_gpu_shader5
   (define GL_ARB_gpu_shader5 1)

   (define GL_GEOMETRY_SHADER_INVOCATIONS                       #x887F)
   (define GL_MAX_GEOMETRY_SHADER_INVOCATIONS                   #x8E5A)
   (define GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                 #x8E5B)
   (define GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                 #x8E5C)
   (define GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                #x8E5D)
   (define GL_MAX_VERTEX_STREAMS                                #x8E71)

;; ARB_gpu_shader_fp64
   (define GL_ARB_gpu_shader_fp64 1)

   (define GL_DOUBLE_VEC2                                       #x8FFC)
   (define GL_DOUBLE_VEC3                                       #x8FFD)
   (define GL_DOUBLE_VEC4                                       #x8FFE)
   (define GL_DOUBLE_MAT2                                       #x8F46)
   (define GL_DOUBLE_MAT3                                       #x8F47)
   (define GL_DOUBLE_MAT4                                       #x8F48)
   (define GL_DOUBLE_MAT2x3                                     #x8F49)
   (define GL_DOUBLE_MAT2x4                                     #x8F4A)
   (define GL_DOUBLE_MAT3x2                                     #x8F4B)
   (define GL_DOUBLE_MAT3x4                                     #x8F4C)
   (define GL_DOUBLE_MAT4x2                                     #x8F4D)
   (define GL_DOUBLE_MAT4x3                                     #x8F4E)

   (define glUniform1d                                          (GL GLvoid "glUniform1d" GLint GLdouble))
   (define glUniform2d                                          (GL GLvoid "glUniform2d" GLint GLdouble GLdouble))
   (define glUniform3d                                          (GL GLvoid "glUniform3d" GLint GLdouble GLdouble GLdouble))
   (define glUniform4d                                          (GL GLvoid "glUniform4d" GLint GLdouble GLdouble GLdouble GLdouble))
   (define glUniform1dv                                         (GL GLvoid "glUniform1dv" GLint GLsizei GLdouble*))
   (define glUniform2dv                                         (GL GLvoid "glUniform2dv" GLint GLsizei GLdouble*))
   (define glUniform3dv                                         (GL GLvoid "glUniform3dv" GLint GLsizei GLdouble*))
   (define glUniform4dv                                         (GL GLvoid "glUniform4dv" GLint GLsizei GLdouble*))
   (define glUniformMatrix2dv                                   (GL GLvoid "glUniformMatrix2dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix3dv                                   (GL GLvoid "glUniformMatrix3dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix4dv                                   (GL GLvoid "glUniformMatrix4dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix2x3dv                                 (GL GLvoid "glUniformMatrix2x3dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix2x4dv                                 (GL GLvoid "glUniformMatrix2x4dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix3x2dv                                 (GL GLvoid "glUniformMatrix3x2dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix3x4dv                                 (GL GLvoid "glUniformMatrix3x4dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix4x2dv                                 (GL GLvoid "glUniformMatrix4x2dv" GLint GLsizei GLboolean GLdouble*))
   (define glUniformMatrix4x3dv                                 (GL GLvoid "glUniformMatrix4x3dv" GLint GLsizei GLboolean GLdouble*))
   (define glGetUniformdv                                       (GL GLvoid "glGetUniformdv" GLuint GLint GLdouble&))

;; ARB_sample_shading
   (define GL_ARB_sample_shading 1)
   (define GL_SAMPLE_SHADING                                    #x8C36)
   (define GL_MIN_SAMPLE_SHADING_VALUE                          #x8C37)
   (define glMinSampleShading                                   (GL GLvoid "glMinSampleShading" GLfloat))

;; ARB_shader_subroutine
   (define GL_ARB_shader_subroutine 1)

   (define GL_ACTIVE_SUBROUTINES                                #x8DE5)
   (define GL_ACTIVE_SUBROUTINE_UNIFORMS                        #x8DE6)
   (define GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS               #x8E47)
   (define GL_ACTIVE_SUBROUTINE_MAX_LENGTH                      #x8E48)
   (define GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH              #x8E49)
   (define GL_MAX_SUBROUTINES                                   #x8DE7)
   (define GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS                  #x8DE8)
   (define GL_NUM_COMPATIBLE_SUBROUTINES                        #x8E4A)
   (define GL_COMPATIBLE_SUBROUTINES                            #x8E4B)

   (define glGetSubroutineUniformLocation                       (GL GLint "glGetSubroutineUniformLocation" GLuint GLenum GLchar*))
   (define glGetSubroutineIndex                                 (GL GLuint "glGetSubroutineIndex" GLuint GLenum GLchar*))
   (define glGetActiveSubroutineUniformiv                       (GL GLvoid "glGetActiveSubroutineUniformiv" GLuint GLenum GLuint GLenum GLint&))
   (define glGetActiveSubroutineUniformName                     (GL GLvoid "glGetActiveSubroutineUniformName" GLuint GLenum GLuint GLsizei (fft& GLsizei) type-bytevector)) ; TODO: make handler
   (define glGetActiveSubroutineName                            (GL GLvoid "glGetActiveSubroutineName" GLuint GLenum GLuint GLsizei (fft& GLsizei) type-bytevector)) ; TODO: make handler
   (define glUniformSubroutinesuiv                              (GL GLvoid "glUniformSubroutinesuiv" GLenum GLsizei GLuint*))
   (define glGetUniformSubroutineuiv                            (GL GLvoid "glGetUniformSubroutineuiv" GLenum GLint GLuint&))
   (define glGetProgramStageiv                                  (GL GLvoid "glGetProgramStageiv" GLuint GLenum GLenum GLint&))

;; ARB_tessellation_shader
   (define GL_ARB_tessellation_shader 1)

   (define GL_PATCHES                                           #x000E)
   (define GL_PATCH_VERTICES                                    #x8E72)
   (define GL_PATCH_DEFAULT_INNER_LEVEL                         #x8E73)
   (define GL_PATCH_DEFAULT_OUTER_LEVEL                         #x8E74)
   (define GL_TESS_CONTROL_OUTPUT_VERTICES                      #x8E75)
   (define GL_TESS_GEN_MODE                                     #x8E76)
   (define GL_TESS_GEN_SPACING                                  #x8E77)
   (define GL_TESS_GEN_VERTEX_ORDER                             #x8E78)
   (define GL_TESS_GEN_POINT_MODE                               #x8E79)
   (define GL_ISOLINES                                          #x8E7A)
   (define GL_QUADS                                             #x0007)
   (define GL_FRACTIONAL_ODD                                    #x8E7B)
   (define GL_FRACTIONAL_EVEN                                   #x8E7C)
   (define GL_MAX_PATCH_VERTICES                                #x8E7D)
   (define GL_MAX_TESS_GEN_LEVEL                                #x8E7E)
   (define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS               #x8E7F)
   (define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS           #x8E80)
   (define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS             #x8E81)
   (define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS          #x8E82)
   (define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS               #x8E83)
   (define GL_MAX_TESS_PATCH_COMPONENTS                        #x8E84)
   (define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS         #x8E85)
   (define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS            #x8E86)
   (define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS                  #x8E89)
   (define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS               #x8E8A)
   (define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS                #x886C)
   (define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS             #x886D)
   (define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS     #x8E1E)
   (define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS  #x8E1F)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER  #x84F0)
   (define GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER #x84F1)
   (define GL_TESS_EVALUATION_SHADER                           #x8E87)
   (define GL_TESS_CONTROL_SHADER                              #x8E88)

   (define glPatchParameteri                                    (GL GLvoid "glPatchParameteri" GLenum GLint))
   (define glPatchParameterfv                                   (GL GLvoid "glPatchParameterfv" GLenum GLfloat*))

;; ARB_texture_buffer_object_rgb32
   (define GL_ARB_texture_buffer_object_rgb32 1)
   ; none

;; ARB_texture_cube_map_array
   (define GL_ARB_texture_cube_map_array 1)

   (define GL_TEXTURE_CUBE_MAP_ARRAY                           #x9009)
   (define GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                   #x900A)
   (define GL_PROXY_TEXTURE_CUBE_MAP_ARRAY                     #x900B)
   (define GL_SAMPLER_CUBE_MAP_ARRAY                           #x900C)
   (define GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW                    #x900D)
   (define GL_INT_SAMPLER_CUBE_MAP_ARRAY                       #x900E)
   (define GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY              #x900F)

;; ARB_texture_gather
   (define GL_ARB_texture_gather 1)

   (define GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET                #x8E5E)
   (define GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET                #x8E5F)

;; ARB_texture_query_lod
   (define GL_ARB_texture_query_lod 1)

   ; none

;; ARB_transform_feedback2
   (define GL_ARB_transform_feedback2 1)

   (define GL_TRANSFORM_FEEDBACK                                #x8E22)
   (define GL_TRANSFORM_FEEDBACK_PAUSED                         #x8E23)
   (define GL_TRANSFORM_FEEDBACK_ACTIVE                         #x8E24)
   (define GL_TRANSFORM_FEEDBACK_BINDING                        #x8E25)

   (define glBindTransformFeedback                              (GL GLvoid "glBindTransformFeedback" GLenum GLuint))
   (define glDeleteTransformFeedbacks                           (GL GLvoid "glDeleteTransformFeedbacks" GLsizei GLuint*))
   (define glGenTransformFeedbacks                              (GL GLvoid "glGenTransformFeedbacks" GLsizei GLuint&))
   (define glIsTransformFeedback                                (GL GLboolean "glIsTransformFeedback" GLuint))
   (define glPauseTransformFeedback                             (GL GLvoid "glPauseTransformFeedback"))
   (define glResumeTransformFeedback                            (GL GLvoid "glResumeTransformFeedback"))
   (define glDrawTransformFeedback                              (GL GLvoid "glDrawTransformFeedback" GLenum GLuint))

;; ARB_transform_feedback3
   (define GL_ARB_transform_feedback3 1)

   (define GL_MAX_TRANSFORM_FEEDBACK_BUFFERS                    #x8E70)
   (define GL_MAX_VERTEX_STREAMS                                #x8E71)

   (define glDrawTransformFeedbackStream                        (GL GLvoid "glDrawTransformFeedbackStream" GLenum GLuint GLuint))
   (define glBeginQueryIndexed                                  (GL GLvoid "glBeginQueryIndexed" GLenum GLuint GLuint))
   (define glEndQueryIndexed                                    (GL GLvoid "glEndQueryIndexed" GLenum GLuint))
   (define glGetQueryIndexediv                                  (GL GLvoid "glGetQueryIndexediv" GLenum GLuint GLenum GLint&))

))
