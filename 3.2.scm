; OpenGL 3.2 (3 Aug 2009), GLSL 1.5
;  + ARB_depth_clamp
;  + ARB_draw_elements_base_vertex
;  + ARB_fragment_coord_conventions
;  + ARB_provoking_vertex
;  + ARB_seamless_cube_map
;  + ARB_sync
;  + ARB_texture_multisample
;  + ARB_geometry_shader4 (core subset)
;  + ARB_vertex_array_bgra (already in 1.2 core)

(define-library (OpenGL 3.2)
(export
      (exports (OpenGL 3.1))

   GL_VERSION_3_2

   GL_CONTEXT_CORE_PROFILE_BIT
   GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
   GL_LINES_ADJACENCY
   GL_LINE_STRIP_ADJACENCY
   GL_TRIANGLES_ADJACENCY
   GL_TRIANGLE_STRIP_ADJACENCY
   GL_PROGRAM_POINT_SIZE
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
   GL_GEOMETRY_SHADER
   GL_GEOMETRY_VERTICES_OUT
   GL_GEOMETRY_INPUT_TYPE
   GL_GEOMETRY_OUTPUT_TYPE
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
   GL_MAX_GEOMETRY_OUTPUT_VERTICES
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
   GL_MAX_VERTEX_OUTPUT_COMPONENTS
   GL_MAX_GEOMETRY_INPUT_COMPONENTS
   GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
   GL_MAX_FRAGMENT_INPUT_COMPONENTS
   GL_CONTEXT_PROFILE_MASK

;; ARB_depth_clamp
   GL_ARB_depth_clamp
   GL_DEPTH_CLAMP

;; ARB_draw_elements_base_vertex
   GL_ARB_draw_elements_base_vertex

   glDrawElementsBaseVertex
   glDrawRangeElementsBaseVertex
   glDrawElementsInstancedBaseVertex
   glMultiDrawElementsBaseVertex

;; ARB_fragment_coord_conventions
   GL_ARB_fragment_coord_conventions

   ; none

;; ARB_provoking_vertex
   GL_ARB_provoking_vertex
   GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
   GL_FIRST_VERTEX_CONVENTION
   GL_LAST_VERTEX_CONVENTION
   GL_PROVOKING_VERTEX

   glProvokingVertex

;; ARB_seamless_cube_map
   GL_ARB_seamless_cube_map
   GL_TEXTURE_CUBE_MAP_SEAMLESS

;; ARB_sync
   GL_ARB_sync
   GLsync
   GL_MAX_SERVER_WAIT_TIMEOUT
   GL_OBJECT_TYPE
   GL_SYNC_CONDITION
   GL_SYNC_STATUS
   GL_SYNC_FLAGS
   GL_SYNC_FENCE
   GL_SYNC_GPU_COMMANDS_COMPLETE
   GL_UNSIGNALED
   GL_SIGNALED
   GL_ALREADY_SIGNALED
   GL_TIMEOUT_EXPIRED
   GL_CONDITION_SATISFIED
   GL_WAIT_FAILED
   GL_TIMEOUT_IGNORED
   GL_SYNC_FLUSH_COMMANDS_BIT

   glFenceSync
   glIsSync
   glDeleteSync
   glClientWaitSync
   glWaitSync
   glGetInteger64v
   glGetSynciv

;; ARB_texture_multisample
   GL_ARB_texture_multisample
   GL_SAMPLE_POSITION
   GL_SAMPLE_MASK
   GL_SAMPLE_MASK_VALUE
   GL_MAX_SAMPLE_MASK_WORDS
   GL_TEXTURE_2D_MULTISAMPLE
   GL_PROXY_TEXTURE_2D_MULTISAMPLE
   GL_TEXTURE_2D_MULTISAMPLE_ARRAY
   GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
   GL_TEXTURE_BINDING_2D_MULTISAMPLE
   GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
   GL_TEXTURE_SAMPLES
   GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
   GL_SAMPLER_2D_MULTISAMPLE
   GL_INT_SAMPLER_2D_MULTISAMPLE
   GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
   GL_SAMPLER_2D_MULTISAMPLE_ARRAY
   GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
   GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
   GL_MAX_COLOR_TEXTURE_SAMPLES
   GL_MAX_DEPTH_TEXTURE_SAMPLES
   GL_MAX_INTEGER_SAMPLES

   glGetInteger64i_v
   glGetBufferParameteri64v
   glFramebufferTexture
   glTexImage2DMultisample
   glTexImage3DMultisample
   glGetMultisamplefv
   glSampleMaski

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 3.1))

(begin
   (define GL_VERSION_3_2 1)

   (setq GL gl:GetProcAddress)

   (define GL_CONTEXT_CORE_PROFILE_BIT #x00000001)
   (define GL_CONTEXT_COMPATIBILITY_PROFILE_BIT #x00000002)
   (define GL_LINES_ADJACENCY #x000A)
   (define GL_LINE_STRIP_ADJACENCY #x000B)
   (define GL_TRIANGLES_ADJACENCY #x000C)
   (define GL_TRIANGLE_STRIP_ADJACENCY #x000D)
   (define GL_PROGRAM_POINT_SIZE #x8642)
   (define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS #x8C29)
   (define GL_FRAMEBUFFER_ATTACHMENT_LAYERED #x8DA7)
   (define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS #x8DA8)
   (define GL_GEOMETRY_SHADER #x8DD9)
   (define GL_GEOMETRY_VERTICES_OUT #x8916)
   (define GL_GEOMETRY_INPUT_TYPE #x8917)
   (define GL_GEOMETRY_OUTPUT_TYPE #x8918)
   (define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS #x8DDF)
   (define GL_MAX_GEOMETRY_OUTPUT_VERTICES #x8DE0)
   (define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS #x8DE1)
   (define GL_MAX_VERTEX_OUTPUT_COMPONENTS #x9122)
   (define GL_MAX_GEOMETRY_INPUT_COMPONENTS #x9123)
   (define GL_MAX_GEOMETRY_OUTPUT_COMPONENTS #x9124)
   (define GL_MAX_FRAGMENT_INPUT_COMPONENTS #x9125)
   (define GL_CONTEXT_PROFILE_MASK #x9126)

 ; ARB_depth_clamp
   (define GL_ARB_depth_clamp 1)

   (define GL_DEPTH_CLAMP #x864F)

 ; ARB_draw_elements_base_vertex
   (define GL_ARB_draw_elements_base_vertex 1)

   (define glDrawElementsBaseVertex           (GL GLvoid "glDrawElementsBaseVertex" GLenum GLsizei GLenum GLvoid* GLint))
   (define glDrawRangeElementsBaseVertex      (GL GLvoid "glDrawRangeElementsBaseVertex" GLenum GLuint GLuint GLsizei GLenum GLvoid* GLint))
   (define glDrawElementsInstancedBaseVertex  (GL GLvoid "glDrawElementsInstancedBaseVertex" GLenum GLsizei GLenum GLvoid* GLsizei GLint))
   (define glMultiDrawElementsBaseVertex      (GL GLvoid "glMultiDrawElementsBaseVertex" GLenum GLsizei* GLenum GLvoid* GLsizei GLint*))

 ; ARB_fragment_coord_conventions
   (define GL_ARB_fragment_coord_conventions 1)

 ; ARB_provoking_vertex
   (define GL_ARB_provoking_vertex 1)

   (define GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION #x8E4C)
   (define GL_FIRST_VERTEX_CONVENTION #x8E4D)
   (define GL_LAST_VERTEX_CONVENTION #x8E4E)
   (define GL_PROVOKING_VERTEX #x8E4F)

   (define glProvokingVertex                  (GL GLvoid "glProvokingVertex" GLenum))

 ; ARB_seamless_cube_map
   (define GL_ARB_seamless_cube_map 1)

   (define GL_TEXTURE_CUBE_MAP_SEAMLESS #x884F)

 ; ARB_sync
   (define GL_ARB_sync 1)

   (define GLsync type-vptr) ; struct __GLsync*

   (define GL_MAX_SERVER_WAIT_TIMEOUT #x9111)
   (define GL_OBJECT_TYPE #x9112)
   (define GL_SYNC_CONDITION #x9113)
   (define GL_SYNC_STATUS #x9114)
   (define GL_SYNC_FLAGS #x9115)
   (define GL_SYNC_FENCE #x9116)
   (define GL_SYNC_GPU_COMMANDS_COMPLETE #x9117)
   (define GL_UNSIGNALED #x9118)
   (define GL_SIGNALED #x9119)
   (define GL_ALREADY_SIGNALED #x911A)
   (define GL_TIMEOUT_EXPIRED #x911B)
   (define GL_CONDITION_SATISFIED #x911C)
   (define GL_WAIT_FAILED #x911D)
   (define GL_TIMEOUT_IGNORED #xFFFFFFFFFFFFFFFF)
   (define GL_SYNC_FLUSH_COMMANDS_BIT #x00000001)

   (define glFenceSync                        (GL GLsync "glFenceSync" GLenum GLbitfield))
   (define glIsSync                           (GL GLboolean "glIsSync" GLsync))
   (define glDeleteSync                       (GL GLvoid "glDeleteSync" GLsync))
   (define glClientWaitSync                   (GL GLenum "glClientWaitSync" GLsync GLbitfield GLuint64))
   (define glWaitSync                         (GL GLvoid "glWaitSync" GLsync GLbitfield GLuint64))
   (define glGetInteger64v                    (GL GLvoid "glGetInteger64v" GLenum (fft& GLint64)))
   (define glGetSynciv                        (GL GLvoid "glGetSynciv" GLsync GLenum GLsizei (fft& GLsizei) GLint&))

 ; ARB_texture_multisample
   (define GL_ARB_texture_multisample 1)

   (define GL_SAMPLE_POSITION #x8E50)
   (define GL_SAMPLE_MASK #x8E51)
   (define GL_SAMPLE_MASK_VALUE #x8E52)
   (define GL_MAX_SAMPLE_MASK_WORDS #x8E59)
   (define GL_TEXTURE_2D_MULTISAMPLE #x9100)
   (define GL_PROXY_TEXTURE_2D_MULTISAMPLE #x9101)
   (define GL_TEXTURE_2D_MULTISAMPLE_ARRAY #x9102)
   (define GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY #x9103)
   (define GL_TEXTURE_BINDING_2D_MULTISAMPLE #x9104)
   (define GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY #x9105)
   (define GL_TEXTURE_SAMPLES #x9106)
   (define GL_TEXTURE_FIXED_SAMPLE_LOCATIONS #x9107)
   (define GL_SAMPLER_2D_MULTISAMPLE #x9108)
   (define GL_INT_SAMPLER_2D_MULTISAMPLE #x9109)
   (define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE #x910A)
   (define GL_SAMPLER_2D_MULTISAMPLE_ARRAY #x910B)
   (define GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY #x910C)
   (define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY #x910D)
   (define GL_MAX_COLOR_TEXTURE_SAMPLES #x910E)
   (define GL_MAX_DEPTH_TEXTURE_SAMPLES #x910F)
   (define GL_MAX_INTEGER_SAMPLES #x9110)

   (define glGetInteger64i_v                  (GL GLvoid "glGetInteger64i_v" GLenum GLuint (fft& GLint64)))
   (define glGetBufferParameteri64v           (GL GLvoid "glGetBufferParameteri64v" GLenum GLenum (fft& GLint64)))
   (define glFramebufferTexture               (GL GLvoid "glFramebufferTexture" GLenum GLenum GLuint GLint))
   (define glTexImage2DMultisample            (GL GLvoid "glTexImage2DMultisample" GLenum GLsizei GLenum GLsizei GLsizei GLboolean))
   (define glTexImage3DMultisample            (GL GLvoid "glTexImage3DMultisample" GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean))
   (define glGetMultisamplefv                 (GL GLvoid "glGetMultisamplefv" GLenum GLuint GLfloat&))
   (define glSampleMaski                      (GL GLvoid "glSampleMaski" GLuint GLbitfield))

))
