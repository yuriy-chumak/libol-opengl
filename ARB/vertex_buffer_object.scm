; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_vertex_buffer_object.txt

; ARB_vertex_buffer_object                               (included in OpenGL 1.5)
; GLX_ARB_vertex_buffer_object
;
; Version
;  Last Modified Date: October 25, 2010
;  Revision: 0.99.6
;
; Number
;  ARB Extension #28

(define-library (OpenGL ARB vertex_buffer_object)

(import (scheme core)
   (OpenGL platform))

(export  ARB_vertex_buffer_object

; ---------------------------------------------------------------------------
; New Procedures and Functions
;
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

; ---------------------------------------------------------------------------
; New Tokens
;
   GLX_CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH

   GL_ARRAY_BUFFER
   GL_ELEMENT_ARRAY_BUFFER

   GL_ARRAY_BUFFER_BINDING
   GL_ELEMENT_ARRAY_BUFFER_BINDING
   GL_VERTEX_ARRAY_BUFFER_BINDING
   GL_NORMAL_ARRAY_BUFFER_BINDING
   GL_COLOR_ARRAY_BUFFER_BINDING
   GL_INDEX_ARRAY_BUFFER_BINDING
   GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
   GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
   GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
   GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
   GL_WEIGHT_ARRAY_BUFFER_BINDING

   GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING

   GL_STREAM_DRAW
   GL_STREAM_READ
   GL_STREAM_COPY
   GL_STATIC_DRAW
   GL_STATIC_READ
   GL_STATIC_COPY
   GL_DYNAMIC_DRAW
   GL_DYNAMIC_READ
   GL_DYNAMIC_COPY

   GL_READ_ONLY
   GL_WRITE_ONLY
   GL_READ_WRITE

   GL_BUFFER_SIZE
   GL_BUFFER_USAGE
   GL_BUFFER_ACCESS
   GL_BUFFER_MAPPED
   GL_BUFFER_MAP_POINTER
)

; ------------------------------------------------------------------------------------
(begin
   (define ARB_vertex_buffer_object (gl:QueryExtension "GL_ARB_vertex_buffer_object"))

   (define GLintptrARB fft-signed-long) ;ptrdiff_t
   (define GLsizeiptrARB fft-unsigned-long) ;ptrdiff_t

   (setq GL gl:GetProcAddress)
   (define glBindBuffer (GL GLvoid "glBindBufferARB" GLenum GLuint))
   (define glDeleteBuffers (GL GLvoid "glDeleteBuffersARB" GLsizei GLuint*))
   (define glGenBuffers (GL GLvoid "glGenBuffersARB" GLsizei GLuint*))
   (define glIsBuffer (GL GLboolean "glIsBufferARB" GLuint))
   (define glBufferData (GL GLvoid "glBufferDataARB" GLenum GLsizeiptrARB fft-any GLenum))
   (define glBufferSubData (GL GLvoid "glBufferSubDataARB" GLenum GLintptrARB GLsizeiptrARB fft-any))
   (define glGetBufferSubData (GL GLvoid "glGetBufferSubDataARB" GLenum GLintptrARB GLsizeiptrARB fft-any))
   (define glMapBuffer (GL type-vptr "glMapBufferARB" GLenum GLenum))
   (define glUnmapBuffer (GL GLboolean "glUnmapBufferARB" GLenum))
   (define glGetBufferParameteriv (GL GLvoid "glGetBufferParameterivARB" GLenum GLenum GLint*))
   (define glGetBufferPointerv (GL GLvoid "glGetBufferPointervARB" GLenum GLenum fft-any))

   (define GLX_CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH #x2095)
   (define GL_ARRAY_BUFFER                              #x8892)
   (define GL_ELEMENT_ARRAY_BUFFER                      #x8893)
   (define GL_ARRAY_BUFFER_BINDING                      #x8894)
   (define GL_ELEMENT_ARRAY_BUFFER_BINDING              #x8895)
   (define GL_VERTEX_ARRAY_BUFFER_BINDING               #x8896)
   (define GL_NORMAL_ARRAY_BUFFER_BINDING               #x8897)
   (define GL_COLOR_ARRAY_BUFFER_BINDING                #x8898)
   (define GL_INDEX_ARRAY_BUFFER_BINDING                #x8899)
   (define GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING        #x889A)
   (define GL_EDGE_FLAG_ARRAY_BUFFER_BINDING            #x889B)
   (define GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING      #x889C)
   (define GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING       #x889D)
   (define GL_WEIGHT_ARRAY_BUFFER_BINDING               #x889E)
   (define GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING        #x889F)
   (define GL_STREAM_DRAW                               #x88E0)
   (define GL_STREAM_READ                               #x88E1)
   (define GL_STREAM_COPY                               #x88E2)
   (define GL_STATIC_DRAW                               #x88E4)
   (define GL_STATIC_READ                               #x88E5)
   (define GL_STATIC_COPY                               #x88E6)
   (define GL_DYNAMIC_DRAW                              #x88E8)
   (define GL_DYNAMIC_READ                              #x88E9)
   (define GL_DYNAMIC_COPY                              #x88EA)
   (define GL_READ_ONLY                                 #x88B8)
   (define GL_WRITE_ONLY                                #x88B9)
   (define GL_READ_WRITE                                #x88BA)
   (define GL_BUFFER_SIZE                               #x8764)
   (define GL_BUFFER_USAGE                              #x8765)
   (define GL_BUFFER_ACCESS                             #x88BB)
   (define GL_BUFFER_MAPPED                             #x88BC)
   (define GL_BUFFER_MAP_POINTER                        #x88BD)

))
