; OpenGL 4.6 (31 Jul 2017), GLSL 4.60
;  + KHR_context_flush_control
;  + ARB_gl_spirv
;  + ARB_indirect_parameters
;  + KHR_no_error
;  + ARB_pipeline_statistics_query
;  + ARB_polygon_offset_clamp
;  + ARB_shader_atomic_counter_ops
;  + ARB_shader_draw_parameters
;  + ARB_shader_group_vote
;  + ARB_spirv_extensions
;  + ARB_texture_filter_anisotropic
;  + ARB_transform_feedback_overflow_query

(define-library (OpenGL 4.6)
(export
      (exports (OpenGL 4.5))

   GL_VERSION_4_6

;; KHR_context_flush_control
GL_KHR_context_flush_control
   GL_CONTEXT_RELEASE_BEHAVIOR
   GL_NONE
   GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH

;; ARB_gl_spirv
GL_ARB_gl_spirv
   GL_SHADER_BINARY_FORMAT_SPIR_V
   GL_SPIR_V_BINARY

   glSpecializeShader

;; ARB_indirect_parameters
GL_ARB_indirect_parameters
   GL_PARAMETER_BUFFER
   GL_PARAMETER_BUFFER_BINDING

   glMultiDrawArraysIndirectCount
   glMultiDrawElementsIndirectCount

;; KHR_no_error
GL_KHR_no_error
   GL_CONTEXT_FLAG_NO_ERROR_BIT

;; ARB_pipeline_statistics_query
GL_ARB_pipeline_statistics_query
   GL_VERTICES_SUBMITTED
   GL_PRIMITIVES_SUBMITTED
   GL_VERTEX_SHADER_INVOCATIONS
   GL_TESS_CONTROL_SHADER_PATCHES
   GL_TESS_EVALUATION_SHADER_INVOCATIONS
   GL_GEOMETRY_SHADER_INVOCATIONS
   GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED
   GL_FRAGMENT_SHADER_INVOCATIONS
   GL_COMPUTE_SHADER_INVOCATIONS
   GL_CLIPPING_INPUT_PRIMITIVES
   GL_CLIPPING_OUTPUT_PRIMITIVES

;; ARB_polygon_offset_clamp
GL_ARB_polygon_offset_clamp
   GL_POLYGON_OFFSET_CLAMP
   glPolygonOffsetClamp

;; ARB_shader_atomic_counter_ops
GL_ARB_shader_atomic_counter_ops
   ; none

;; ARB_shader_draw_parameters
GL_ARB_shader_draw_parameters
   ; none

;; ARB_shader_group_vote
GL_ARB_shader_group_vote
   ; none

;; ARB_spirv_extensions
GL_ARB_spirv_extensions
   GL_SPIR_V_EXTENSIONS
   GL_NUM_SPIR_V_EXTENSIONS

;; ARB_texture_filter_anisotropic
GL_ARB_texture_filter_anisotropic
   GL_TEXTURE_MAX_ANISOTROPY
   GL_MAX_TEXTURE_MAX_ANISOTROPY

;; ARB_transform_feedback_overflow_query
GL_ARB_transform_feedback_overflow_query
   GL_TRANSFORM_FEEDBACK_OVERFLOW
   GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 4.5))

(begin
   (define GL_VERSION_4_6 1)

   (setq GL gl:GetProcAddress)

 ; KHR_context_flush_control
   (define GL_KHR_context_flush_control 1)

   (define GL_CONTEXT_RELEASE_BEHAVIOR                      GL_CONTEXT_RELEASE_BEHAVIOR)  ; since 4.5
   (define GL_NONE                                          GL_NONE)  ; since 3.1
   (define GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH                GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH)  ; since 4.5

 ; ARB_gl_spirv
   (define GL_ARB_gl_spirv 1)

   (define GL_SHADER_BINARY_FORMAT_SPIR_V                   #x9551)
   (define GL_SPIR_V_BINARY                                 #x9552)

   (define glSpecializeShader                               (GL GLvoid "glSpecializeShader" GLuint GLchar* GLuint GLuint* GLuint*))

 ; ARB_indirect_parameters
   (define GL_ARB_indirect_parameters 1)

   (define GL_PARAMETER_BUFFER                              #x80EE)
   (define GL_PARAMETER_BUFFER_BINDING                      #x80EF)

   (define glMultiDrawArraysIndirectCount                   (GL GLvoid "glMultiDrawArraysIndirectCount" GLenum GLvoid* GLintptr GLsizei GLsizei))
   (define glMultiDrawElementsIndirectCount                 (GL GLvoid "glMultiDrawElementsIndirectCount" GLenum GLenum GLvoid* GLintptr GLsizei GLsizei))

 ; KHR_no_error
   (define GL_KHR_no_error 1)

   (define GL_CONTEXT_FLAG_NO_ERROR_BIT                     #x00000008)

 ; ARB_pipeline_statistics_query
   (define GL_ARB_pipeline_statistics_query 1)

   (define GL_VERTICES_SUBMITTED                            #x82EE)
   (define GL_PRIMITIVES_SUBMITTED                          #x82EF)
   (define GL_VERTEX_SHADER_INVOCATIONS                     #x82F0)
   (define GL_TESS_CONTROL_SHADER_PATCHES                   #x82F1)
   (define GL_TESS_EVALUATION_SHADER_INVOCATIONS            #x82F2)
   (define GL_GEOMETRY_SHADER_INVOCATIONS                   GL_GEOMETRY_SHADER_INVOCATIONS)  ; since 4.0
   (define GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED            #x82F3)
   (define GL_FRAGMENT_SHADER_INVOCATIONS                   #x82F4)
   (define GL_COMPUTE_SHADER_INVOCATIONS                    #x82F5)
   (define GL_CLIPPING_INPUT_PRIMITIVES                     #x82F6)
   (define GL_CLIPPING_OUTPUT_PRIMITIVES                    #x82F7)

 ; ARB_polygon_offset_clamp
   (define GL_ARB_polygon_offset_clamp 1)

   (define GL_POLYGON_OFFSET_CLAMP                          #x8E1B)

   (define glPolygonOffsetClamp                             (GL GLvoid "glPolygonOffsetClamp" GLfloat GLfloat GLfloat))

 ; ARB_shader_atomic_counter_ops
   (define GL_ARB_shader_atomic_counter_ops 1)

 ; ARB_shader_draw_parameters
   (define GL_ARB_shader_draw_parameters 1)

 ; ARB_shader_group_vote
   (define GL_ARB_shader_group_vote 1)

 ; ARB_spirv_extensions
   (define GL_ARB_spirv_extensions 1)

   (define GL_SPIR_V_EXTENSIONS                             #x9553)
   (define GL_NUM_SPIR_V_EXTENSIONS                         #x9554)

 ; ARB_texture_filter_anisotropic
   (define GL_ARB_texture_filter_anisotropic 1)

   (define GL_TEXTURE_MAX_ANISOTROPY                        #x84FE)
   (define GL_MAX_TEXTURE_MAX_ANISOTROPY                    #x84FF)

 ; ARB_transform_feedback_overflow_query
   (define GL_ARB_transform_feedback_overflow_query 1)

   (define GL_TRANSFORM_FEEDBACK_OVERFLOW                   #x82EC)
   (define GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW            #x82ED)

))
