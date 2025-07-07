; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_uniform_buffer_object.txt

; ARB_uniform_buffer_object                               (included in OpenGL 3.1)
;
; Number
;  ARB Extension #57

(define-library (OpenGL ARB uniform_buffer_object)

(import (scheme core)
   (OpenGL platform))

(export  ARB_uniform_buffer_object

; ----------------------------
; New Procedures and Functions
;
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

; ----------
; New Tokens
;
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

)

; --------------------------------------------------------------------
(begin
   (define ARB_uniform_buffer_object (gl:QueryExtension "GL_ARB_uniform_buffer_object"))

   (setq GL gl:GetProcAddress)
   (setq GLchar* type-string)

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

))
