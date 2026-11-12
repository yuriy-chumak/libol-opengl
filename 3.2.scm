; OpenGL 3.2 (3 Aug 2009)  GLSL 1.5
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
   GL_DEPTH_CLAMP

;; ARB_draw_elements_base_vertex
   ;; glDrawElementsBaseVertex
   ;; glDrawRangeElementsBaseVertex
   ;; glDrawElementsInstancedBaseVertex
   ;; glMultiDrawElementsBaseVertex

;; ARB_fragment_coord_conventions
   ; none

;; ARB_provoking_vertex
   GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
   GL_FIRST_VERTEX_CONVENTION
   GL_LAST_VERTEX_CONVENTION
   GL_PROVOKING_VERTEX
   ;; glProvokingVertex

;; ARB_seamless_cube_map
   GL_TEXTURE_CUBE_MAP_SEAMLESS

;; ARB_sync
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
   ;; glFenceSync
   ;; glIsSync
   ;; glDeleteSync
   ;; glClientWaitSync
   ;; glWaitSync
   ;; glGetInteger64v
   ;; glGetSynciv

;; ARB_texture_multisample
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
            ; Don't need to reuse tokens from ARB_vertex_array_bgra since they're already in 1.2 core
   ;; glGetInteger64i_v
   ;; glGetBufferParameteri64v
   ;; glFramebufferTexture
   ;; glTexImage2DMultisample
   ;; glTexImage3DMultisample
   ;; glGetMultisamplefv
   ;; glSampleMaski

)

; ============================================================================
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

;; ARB_depth_clamp
   (define GL_DEPTH_CLAMP #x864F)

;; ARB_draw_elements_base_vertex
            ;; <command name="glDrawElementsBaseVertex"/> GLAPI void APIENTRY glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, const void *indices, GLint basevertex);
            ;; <command name="glDrawRangeElementsBaseVertex"/> GLAPI void APIENTRY glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices, GLint basevertex);
            ;; <command name="glDrawElementsInstancedBaseVertex"/> GLAPI void APIENTRY glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex);
            ;; <command name="glMultiDrawElementsBaseVertex"/> GLAPI void APIENTRY glMultiDrawElementsBaseVertex (GLenum mode, const GLsizei *count, GLenum type, const void *const*indices, GLsizei drawcount, const GLint *basevertex);

;; ARB_fragment_coord_conventions
   ; none

;; ARB_provoking_vertex
   (define GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION #x8E4C)
   (define GL_FIRST_VERTEX_CONVENTION #x8E4D)
   (define GL_LAST_VERTEX_CONVENTION #x8E4E)
   (define GL_PROVOKING_VERTEX #x8E4F)
            ;; <command name="glProvokingVertex"/> GLAPI void APIENTRY glProvokingVertex (GLenum mode);

;; ARB_seamless_cube_map
   (define GL_TEXTURE_CUBE_MAP_SEAMLESS #x884F)

;; ARB_sync
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
            ;; <command name="glFenceSync"/> GLAPI GLsync APIENTRY glFenceSync (GLenum condition, GLbitfield flags);
            ;; <command name="glIsSync"/> GLAPI GLboolean APIENTRY glIsSync (GLsync sync);
            ;; <command name="glDeleteSync"/> GLAPI void APIENTRY glDeleteSync (GLsync sync);
            ;; <command name="glClientWaitSync"/> GLAPI GLenum APIENTRY glClientWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
            ;; <command name="glWaitSync"/> GLAPI void APIENTRY glWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
            ;; <command name="glGetInteger64v"/> GLAPI void APIENTRY glGetInteger64v (GLenum pname, GLint64 *data);
            ;; <command name="glGetSynciv"/> GLAPI void APIENTRY glGetSynciv (GLsync sync, GLenum pname, GLsizei count, GLsizei *length, GLint *values);

;; ARB_texture_multisample
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
            ;; <command name="glGetInteger64i_v"/> GLAPI void APIENTRY glGetInteger64i_v (GLenum target, GLuint index, GLint64 *data);
            ;; <command name="glGetBufferParameteri64v"/> GLAPI void APIENTRY glGetBufferParameteri64v (GLenum target, GLenum pname, GLint64 *params);
            ;; <command name="glFramebufferTexture"/> GLAPI void APIENTRY glFramebufferTexture (GLenum target, GLenum attachment, GLuint texture, GLint level);
            ;; <command name="glTexImage2DMultisample"/> GLAPI void APIENTRY glTexImage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
            ;; <command name="glTexImage3DMultisample"/> GLAPI void APIENTRY glTexImage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
            ;; <command name="glGetMultisamplefv"/> GLAPI void APIENTRY glGetMultisamplefv (GLenum pname, GLuint index, GLfloat *val);
            ;; <command name="glSampleMaski"/> GLAPI void APIENTRY glSampleMaski (GLuint maskNumber, GLbitfield mask);

))
