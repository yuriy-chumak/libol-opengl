; OpenGL 4.4 (22 Jul 2013), GLSL 4.40
;  + ARB_buffer_storage
;  + ARB_clear_texture
;  + ARB_enhanced_layouts
;  + ARB_multi_bind
;  + ARB_query_buffer_object
;  + ARB_texture_mirror_clamp_to_edge
;  + ARB_texture_stencil8
;  + ARB_vertex_type_10f_11f_11f_rev

(define-library (OpenGL 4.4)
(export
      (exports (OpenGL 4.3))

   GL_VERSION_4_4

   GL_MAX_VERTEX_ATTRIB_STRIDE
   GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
   GL_TEXTURE_BUFFER_BINDING

;; ARB_buffer_storage
GL_ARB_buffer_storage
   GL_MAP_READ_BIT
   GL_MAP_WRITE_BIT
   GL_MAP_PERSISTENT_BIT
   GL_MAP_COHERENT_BIT
   GL_DYNAMIC_STORAGE_BIT
   GL_CLIENT_STORAGE_BIT
   GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
   GL_BUFFER_IMMUTABLE_STORAGE
   GL_BUFFER_STORAGE_FLAGS
   glBufferStorage

;; ARB_clear_texture
GL_ARB_clear_texture
   GL_CLEAR_TEXTURE
   glClearTexImage
   glClearTexSubImage

;; ARB_enhanced_layouts
GL_ARB_enhanced_layouts
   GL_LOCATION_COMPONENT
   GL_TRANSFORM_FEEDBACK_BUFFER
   GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
   GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE

;; ARB_multi_bind
GL_ARB_multi_bind
   glBindBuffersBase
   glBindBuffersRange
   glBindTextures
   glBindSamplers
   glBindImageTextures
   glBindVertexBuffers

;; ARB_query_buffer_object
GL_ARB_query_buffer_object
   GL_QUERY_BUFFER
   GL_QUERY_BUFFER_BARRIER_BIT
   GL_QUERY_BUFFER_BINDING
   GL_QUERY_RESULT_NO_WAIT

;; ARB_texture_mirror_clamp_to_edge
GL_ARB_texture_mirror_clamp_to_edge
   GL_MIRROR_CLAMP_TO_EDGE

;; ARB_texture_stencil8
GL_ARB_texture_stencil8
   GL_STENCIL_INDEX
   GL_STENCIL_INDEX8

;; ARB_vertex_type_10f_11f_11f_rev
GL_ARB_vertex_type_10f_11f_11f_rev
   GL_UNSIGNED_INT_10F_11F_11F_REV

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 4.3))

(begin
   (define GL_VERSION_4_4 1)

   (setq GL gl:GetProcAddress)
   (setq GLintptr* (fft* GLintptr))
   (setq GLsizeiptr* (fft* GLsizeiptr))

 ; OpenGL 4.4
   (define GL_MAX_VERTEX_ATTRIB_STRIDE                      #x82E5)
   (define GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED       #x8221)
   (define GL_TEXTURE_BUFFER_BINDING                        #x8C2A)

 ; ARB_buffer_storage
   (define GL_ARB_buffer_storage 1)

   (define GL_MAP_READ_BIT                                  GL_MAP_READ_BIT)  ; since 3.1
   (define GL_MAP_WRITE_BIT                                 GL_MAP_WRITE_BIT)  ; since 3.1
   (define GL_MAP_PERSISTENT_BIT                            #x0040)
   (define GL_MAP_COHERENT_BIT                              #x0080)
   (define GL_DYNAMIC_STORAGE_BIT                           #x0100)
   (define GL_CLIENT_STORAGE_BIT                            #x0200)
   (define GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT              #x00004000)
   (define GL_BUFFER_IMMUTABLE_STORAGE                      #x821F)
   (define GL_BUFFER_STORAGE_FLAGS                          #x8220)

   (define glBufferStorage                                  (GL GLvoid "glBufferStorage" GLenum GLsizeiptr GLvoid* GLbitfield))

 ; ARB_clear_texture
   (define GL_ARB_clear_texture 1)

   (define GL_CLEAR_TEXTURE                                 #x9365)

   (define glClearTexImage                                  (GL GLvoid "glClearTexImage" GLuint GLint GLenum GLenum GLvoid*))
   (define glClearTexSubImage                               (GL GLvoid "glClearTexSubImage" GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum GLvoid*))

 ; ARB_enhanced_layouts
   (define GL_ARB_enhanced_layouts 1)

   (define GL_LOCATION_COMPONENT                            #x934A)
   (define GL_TRANSFORM_FEEDBACK_BUFFER                     GL_TRANSFORM_FEEDBACK_BUFFER)  ; since 3.1
   (define GL_TRANSFORM_FEEDBACK_BUFFER_INDEX               #x934B)
   (define GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE              #x934C)

;; ARB_multi_bind
   (define GL_ARB_multi_bind 1)

   (define glBindBuffersBase                                (GL GLvoid "glBindBuffersBase" GLenum GLuint GLsizei GLuint*))
   (define glBindBuffersRange                               (GL GLvoid "glBindBuffersRange" GLenum GLuint GLsizei GLuint* GLintptr* GLsizeiptr*))
   (define glBindTextures                                   (GL GLvoid "glBindTextures" GLuint GLsizei GLuint*))
   (define glBindSamplers                                   (GL GLvoid "glBindSamplers" GLuint GLsizei GLuint*))
   (define glBindImageTextures                              (GL GLvoid "glBindImageTextures" GLuint GLsizei GLuint*))
   (define glBindVertexBuffers                              (GL GLvoid "glBindVertexBuffers" GLuint GLsizei GLuint* GLintptr* GLsizei*))

;; ARB_query_buffer_object
   (define GL_ARB_query_buffer_object 1)

   (define GL_QUERY_BUFFER                                  #x9192)
   (define GL_QUERY_BUFFER_BARRIER_BIT                      #x00008000)
   (define GL_QUERY_BUFFER_BINDING                          #x9193)
   (define GL_QUERY_RESULT_NO_WAIT                          #x9194)

;; ARB_texture_mirror_clamp_to_edge
   (define GL_ARB_texture_mirror_clamp_to_edge 1)

   (define GL_MIRROR_CLAMP_TO_EDGE                          #x8743)

;; ARB_texture_stencil8
   (define GL_ARB_texture_stencil8 1)

   (define GL_STENCIL_INDEX                                 GL_STENCIL_INDEX)  ; since 3.1
   (define GL_STENCIL_INDEX8                                GL_STENCIL_INDEX8)  ; since 3.1
   ; none

;; ARB_vertex_type_10f_11f_11f_rev
   (define GL_ARB_vertex_type_10f_11f_11f_rev 1)

   (define GL_UNSIGNED_INT_10F_11F_11F_REV                  GL_UNSIGNED_INT_10F_11F_11F_REV)  ; since 3.1

))
