; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_gpu_shader4.txt

; EXT_gpu_shader4                               (included in OpenGL 3.0)
;
; Number
;  326

(define-library (OpenGL EXT gpu_shader4)

(import (scheme core)
   (OpenGL platform))

(export  EXT_gpu_shader4

; ----------------------------
; New Procedures and Functions
;
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
   glVertexAttribIPointer
   glGetVertexAttribIiv
   glGetVertexAttribIuiv
   glUniform1ui
   glUniform2ui
   glUniform3ui
   glUniform4ui
   glUniform1uiv
   glUniform2uiv
   glUniform3uiv
   glUniform4uiv
   glGetUniformuiv
   glBindFragDataLocation
   glGetFragDataLocation

; ----------
; New Tokens
;
   GL_VERTEX_ATTRIB_ARRAY_INTEGER

   GL_SAMPLER_1D_ARRAY
   GL_SAMPLER_2D_ARRAY
   GL_SAMPLER_BUFFER
   GL_SAMPLER_1D_ARRAY_SHADOW
   GL_SAMPLER_2D_ARRAY_SHADOW
   GL_SAMPLER_CUBE_SHADOW
   GL_UNSIGNED
   GL_UNSIGNED_INT_VEC2
   GL_UNSIGNED_INT_VEC3
   GL_UNSIGNED_INT_VEC4
   GL_INT_SAMPLER_1D
   GL_INT_SAMPLER_2D
   GL_INT_SAMPLER_3D
   GL_INT_SAMPLER_CUBE
   GL_INT_SAMPLER_2D_RECT
   GL_INT_SAMPLER_1D_ARRAY
   GL_INT_SAMPLER_2D_ARRAY
   GL_INT_SAMPLER_BUFFER
   GL_UNSIGNED_INT_SAMPLER_1D
   GL_UNSIGNED_INT_SAMPLER_2D
   GL_UNSIGNED_INT_SAMPLER_3D
   GL_UNSIGNED_INT_SAMPLER_CUBE
   GL_UNSIGNED_INT_SAMPLER_2D_RECT
   GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
   GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
   GL_UNSIGNED_INT_SAMPLER_BUFFER

   GL_MIN_PROGRAM_TEXEL_OFFSET
   GL_MAX_PROGRAM_TEXEL_OFFSET

)

; ------------------------------------------------------------------
(begin
   (define EXT_gpu_shader4 (gl:QueryExtension "GL_EXT_gpu_shader4"))

   (setq GL gl:GetProcAddress)
   (setq GLchar* type-string)

   (define glVertexAttribI1i (gl:GetProcAddress GLvoid "glVertexAttribI1iEXT" GLuint GLint))
   (define glVertexAttribI2i (gl:GetProcAddress GLvoid "glVertexAttribI2iEXT" GLuint GLint GLint))
   (define glVertexAttribI3i (gl:GetProcAddress GLvoid "glVertexAttribI3iEXT" GLuint GLint GLint GLint))
   (define glVertexAttribI4i (gl:GetProcAddress GLvoid "glVertexAttribI4iEXT" GLuint GLint GLint GLint GLint))
   (define glVertexAttribI1ui (gl:GetProcAddress GLvoid "glVertexAttribI1uiEXT" GLuint GLuint))
   (define glVertexAttribI2ui (gl:GetProcAddress GLvoid "glVertexAttribI2uiEXT" GLuint GLuint GLuint))
   (define glVertexAttribI3ui (gl:GetProcAddress GLvoid "glVertexAttribI3uiEXT" GLuint GLuint GLuint GLuint))
   (define glVertexAttribI4ui (gl:GetProcAddress GLvoid "glVertexAttribI4uiEXT" GLuint GLuint GLuint GLuint GLuint))
   (define glVertexAttribI1iv (gl:GetProcAddress GLvoid "glVertexAttribI1ivEXT" GLuint GLint*))
   (define glVertexAttribI2iv (gl:GetProcAddress GLvoid "glVertexAttribI2ivEXT" GLuint GLint*))
   (define glVertexAttribI3iv (gl:GetProcAddress GLvoid "glVertexAttribI3ivEXT" GLuint GLint*))
   (define glVertexAttribI4iv (gl:GetProcAddress GLvoid "glVertexAttribI4ivEXT" GLuint GLint*))
   (define glVertexAttribI1uiv (gl:GetProcAddress GLvoid "glVertexAttribI1uivEXT" GLuint GLuint*))
   (define glVertexAttribI2uiv (gl:GetProcAddress GLvoid "glVertexAttribI2uivEXT" GLuint GLuint*))
   (define glVertexAttribI3uiv (gl:GetProcAddress GLvoid "glVertexAttribI3uivEXT" GLuint GLuint*))
   (define glVertexAttribI4uiv (gl:GetProcAddress GLvoid "glVertexAttribI4uivEXT" GLuint GLuint*))
   (define glVertexAttribI4bv (gl:GetProcAddress GLvoid "glVertexAttribI4bvEXT" GLuint GLbyte*))
   (define glVertexAttribI4sv (gl:GetProcAddress GLvoid "glVertexAttribI4svEXT" GLuint GLshort*))
   (define glVertexAttribI4ubv (gl:GetProcAddress GLvoid "glVertexAttribI4ubvEXT" GLuint GLubyte*))
   (define glVertexAttribI4usv (gl:GetProcAddress GLvoid "glVertexAttribI4usvEXT" GLuint GLushort*))
   (define glVertexAttribIPointer (gl:GetProcAddress GLvoid "glVertexAttribIPointerEXT" GLuint GLint GLenum GLsizei GLvoid*))
   (define glGetVertexAttribIiv (gl:GetProcAddress GLvoid "glGetVertexAttribIivEXT" GLuint GLenum GLint*))
   (define glGetVertexAttribIuiv (gl:GetProcAddress GLvoid "glGetVertexAttribIuivEXT" GLuint GLenum GLuint*))
   (define glUniform1ui (gl:GetProcAddress GLvoid "glUniform1uiEXT" GLint GLuint))
   (define glUniform2ui (gl:GetProcAddress GLvoid "glUniform2uiEXT" GLint GLuint GLuint))
   (define glUniform3ui (gl:GetProcAddress GLvoid "glUniform3uiEXT" GLint GLuint GLuint GLuint))
   (define glUniform4ui (gl:GetProcAddress GLvoid "glUniform4uiEXT" GLint GLuint GLuint GLuint GLuint))
   (define glUniform1uiv (gl:GetProcAddress GLvoid "glUniform1uivEXT" GLint GLsizei GLuint*))
   (define glUniform2uiv (gl:GetProcAddress GLvoid "glUniform2uivEXT" GLint GLsizei GLuint*))
   (define glUniform3uiv (gl:GetProcAddress GLvoid "glUniform3uivEXT" GLint GLsizei GLuint*))
   (define glUniform4uiv (gl:GetProcAddress GLvoid "glUniform4uivEXT" GLint GLsizei GLuint*))
   (define glGetUniformuiv (gl:GetProcAddress GLvoid "glGetUniformuivEXT" GLuint GLint GLuint*))
   (define glBindFragDataLocation (gl:GetProcAddress GLvoid "glBindFragDataLocationEXT" GLuint GLuint GLchar*))
   (define glGetFragDataLocation (gl:GetProcAddress GLint "glGetFragDataLocationEXT" GLuint GLchar*))

   (define GL_VERTEX_ATTRIB_ARRAY_INTEGER                    #x88FD)

   (define GL_SAMPLER_1D_ARRAY                               #x8DC0)
   (define GL_SAMPLER_2D_ARRAY                               #x8DC1)
   (define GL_SAMPLER_BUFFER                                 #x8DC2)
   (define GL_SAMPLER_1D_ARRAY_SHADOW                        #x8DC3)
   (define GL_SAMPLER_2D_ARRAY_SHADOW                        #x8DC4)
   (define GL_SAMPLER_CUBE_SHADOW                            #x8DC5)
   (define GL_UNSIGNED                                       #x1405)
   (define GL_UNSIGNED_INT_VEC2                              #x8DC6)
   (define GL_UNSIGNED_INT_VEC3                              #x8DC7)
   (define GL_UNSIGNED_INT_VEC4                              #x8DC8)
   (define GL_INT_SAMPLER_1D                                 #x8DC9)
   (define GL_INT_SAMPLER_2D                                 #x8DCA)
   (define GL_INT_SAMPLER_3D                                 #x8DCB)
   (define GL_INT_SAMPLER_CUBE                               #x8DCC)
   (define GL_INT_SAMPLER_2D_RECT                            #x8DCD)
   (define GL_INT_SAMPLER_1D_ARRAY                           #x8DCE)
   (define GL_INT_SAMPLER_2D_ARRAY                           #x8DCF)
   (define GL_INT_SAMPLER_BUFFER                             #x8DD0)
   (define GL_UNSIGNED_INT_SAMPLER_1D                        #x8DD1)
   (define GL_UNSIGNED_INT_SAMPLER_2D                        #x8DD2)
   (define GL_UNSIGNED_INT_SAMPLER_3D                        #x8DD3)
   (define GL_UNSIGNED_INT_SAMPLER_CUBE                      #x8DD4)
   (define GL_UNSIGNED_INT_SAMPLER_2D_RECT                   #x8DD5)
   (define GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                  #x8DD6)
   (define GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                  #x8DD7)
   (define GL_UNSIGNED_INT_SAMPLER_BUFFER                    #x8DD8)

   (define GL_MIN_PROGRAM_TEXEL_OFFSET                       #x8904)
   (define GL_MAX_PROGRAM_TEXEL_OFFSET                       #x8905)

))
