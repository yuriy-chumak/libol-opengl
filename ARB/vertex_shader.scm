; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_vertex_shader.txt

; ARB_vertex_shader                               (included in OpenGL 2.0)
;
; Version
;  Last Modified Date: December 14, 2009
;  Author Revision: 0.83
;
; Number
;  ARB Extension #31

(define-library (OpenGL ARB vertex_shader)

(import (scheme core)
   (OpenGL platform))

(export  ARB_vertex_shader

; ----------------------------
; New Procedures and Functions
;
   glVertexAttrib1f
   glVertexAttrib1s
   glVertexAttrib1d
   glVertexAttrib2f
   glVertexAttrib2s
   glVertexAttrib2d
   glVertexAttrib3f
   glVertexAttrib3s
   glVertexAttrib3d
   glVertexAttrib4f
   glVertexAttrib4s
   glVertexAttrib4d
   glVertexAttrib4Nub
   glVertexAttrib1fv
   glVertexAttrib1sv
   glVertexAttrib1dv
   glVertexAttrib2fv
   glVertexAttrib2sv
   glVertexAttrib2dv
   glVertexAttrib3fv
   glVertexAttrib3sv
   glVertexAttrib3dv
   glVertexAttrib4fv
   glVertexAttrib4sv
   glVertexAttrib4dv
   glVertexAttrib4iv
   glVertexAttrib4bv
   glVertexAttrib4ubv
   glVertexAttrib4usv
   glVertexAttrib4uiv
   glVertexAttrib4Nbv
   glVertexAttrib4Nsv
   glVertexAttrib4Niv
   glVertexAttrib4Nubv
   glVertexAttrib4Nusv
   glVertexAttrib4Nuiv
   glVertexAttribPointer

   glEnableVertexAttribArray
   glDisableVertexAttribArray

   glBindAttribLocation
   glGetActiveAttrib
   glGetAttribLocation

   glGetVertexAttribdv
   glGetVertexAttribfv
   glGetVertexAttribiv
   glGetVertexAttribPointerv

; ----------
; New Tokens
;
   GL_VERTEX_SHADER

   GL_MAX_VERTEX_UNIFORM_COMPONENTS
   GL_MAX_VARYING_FLOATS
   GL_MAX_VERTEX_ATTRIBS
   GL_MAX_TEXTURE_IMAGE_UNITS
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
   GL_MAX_TEXTURE_COORDS

   GL_VERTEX_PROGRAM_POINT_SIZE
   GL_VERTEX_PROGRAM_TWO_SIDE

   GL_OBJECT_ACTIVE_ATTRIBUTES
   GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH

   GL_VERTEX_ATTRIB_ARRAY_ENABLED
   GL_VERTEX_ATTRIB_ARRAY_SIZE
   GL_VERTEX_ATTRIB_ARRAY_STRIDE
   GL_VERTEX_ATTRIB_ARRAY_TYPE
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
   GL_CURRENT_VERTEX_ATTRIB
   GL_VERTEX_ATTRIB_ARRAY_POINTER

   GL_FLOAT
   GL_FLOAT_VEC2
   GL_FLOAT_VEC3
   GL_FLOAT_VEC4
   GL_FLOAT_MAT2
   GL_FLOAT_MAT3
   GL_FLOAT_MAT4
)

(import (OpenGL ARB shader_objects))
; ----------------------------------------------------------------------
(begin
   (define ARB_vertex_shader (gl:QueryExtension "GL_ARB_vertex_shader"))
   (setq GL gl:GetProcAddress)

   (define glVertexAttrib1f (GL GLvoid "glVertexAttrib1fARB" GLuint GLfloat))
   (define glVertexAttrib1s (GL GLvoid "glVertexAttrib1sARB" GLuint GLshort))
   (define glVertexAttrib1d (GL GLvoid "glVertexAttrib1dARB" GLuint GLdouble))
   (define glVertexAttrib2f (GL GLvoid "glVertexAttrib2fARB" GLuint GLfloat GLfloat))
   (define glVertexAttrib2s (GL GLvoid "glVertexAttrib2sARB" GLuint GLshort GLshort))
   (define glVertexAttrib2d (GL GLvoid "glVertexAttrib2dARB" GLuint GLdouble GLdouble))
   (define glVertexAttrib3f (GL GLvoid "glVertexAttrib3fARB" GLuint GLfloat GLfloat GLfloat))
   (define glVertexAttrib3s (GL GLvoid "glVertexAttrib3sARB" GLuint GLshort GLshort GLshort))
   (define glVertexAttrib3d (GL GLvoid "glVertexAttrib3dARB" GLuint GLdouble GLdouble GLdouble))
   (define glVertexAttrib4f (GL GLvoid "glVertexAttrib4fARB" GLuint GLfloat GLfloat GLfloat GLfloat))
   (define glVertexAttrib4s (GL GLvoid "glVertexAttrib4sARB" GLuint GLshort GLshort GLshort GLshort))
   (define glVertexAttrib4d (GL GLvoid "glVertexAttrib4dARB" GLuint GLdouble GLdouble GLdouble GLdouble))
   (define glVertexAttrib4Nub (GL GLvoid "glVertexAttrib4NubARB" GLuint GLubyte GLubyte GLubyte GLubyte))
   (define glVertexAttrib1fv (GL GLvoid "glVertexAttrib1fvARB" GLuint GLfloat*))
   (define glVertexAttrib1sv (GL GLvoid "glVertexAttrib1svARB" GLuint GLshort*))
   (define glVertexAttrib1dv (GL GLvoid "glVertexAttrib1dvARB" GLuint GLdouble*))
   (define glVertexAttrib2fv (GL GLvoid "glVertexAttrib2fvARB" GLuint GLfloat*))
   (define glVertexAttrib2sv (GL GLvoid "glVertexAttrib2svARB" GLuint GLshort*))
   (define glVertexAttrib2dv (GL GLvoid "glVertexAttrib2dvARB" GLuint GLdouble*))
   (define glVertexAttrib3fv (GL GLvoid "glVertexAttrib3fvARB" GLuint GLfloat*))
   (define glVertexAttrib3sv (GL GLvoid "glVertexAttrib3svARB" GLuint GLshort*))
   (define glVertexAttrib3dv (GL GLvoid "glVertexAttrib3dvARB" GLuint GLdouble*))
   (define glVertexAttrib4fv (GL GLvoid "glVertexAttrib4fvARB" GLuint GLfloat*))
   (define glVertexAttrib4sv (GL GLvoid "glVertexAttrib4svARB" GLuint GLshort*))
   (define glVertexAttrib4dv (GL GLvoid "glVertexAttrib4dvARB" GLuint GLdouble*))
   (define glVertexAttrib4iv (GL GLvoid "glVertexAttrib4ivARB" GLuint GLint*))
   (define glVertexAttrib4bv (GL GLvoid "glVertexAttrib4bvARB" GLuint GLbyte*))
   (define glVertexAttrib4ubv (GL GLvoid "glVertexAttrib4ubvARB" GLuint GLubyte*))
   (define glVertexAttrib4usv (GL GLvoid "glVertexAttrib4usvARB" GLuint GLushort*))
   (define glVertexAttrib4uiv (GL GLvoid "glVertexAttrib4uivARB" GLuint GLuint*))
   (define glVertexAttrib4Nbv (GL GLvoid "glVertexAttrib4NbvARB" GLuint GLbyte*))
   (define glVertexAttrib4Nsv (GL GLvoid "glVertexAttrib4NsvARB" GLuint GLshort*))
   (define glVertexAttrib4Niv (GL GLvoid "glVertexAttrib4NivARB" GLuint GLint*))
   (define glVertexAttrib4Nubv (GL GLvoid "glVertexAttrib4NubvARB" GLuint GLubyte*))
   (define glVertexAttrib4Nusv (GL GLvoid "glVertexAttrib4NusvARB" GLuint GLushort*))
   (define glVertexAttrib4Nuiv (GL GLvoid "glVertexAttrib4NuivARB" GLuint GLuint*))

   (define glVertexAttribPointer (GL GLvoid "glVertexAttribPointerARB" GLuint GLint GLenum GLboolean GLsizei GLvoid*))

   (define glEnableVertexAttribArray (GL GLvoid "glEnableVertexAttribArrayARB" GLuint))
   (define glDisableVertexAttribArray (GL GLvoid "glDisableVertexAttribArrayARB" GLuint))

   (define glBindAttribLocation (GL GLvoid "glBindAttribLocationARB" GLhandle GLuint GLchar*))
   (define glGetActiveAttrib (GL GLvoid "glGetActiveAttribARB" GLhandle GLuint GLsizei GLsizei* GLint* GLenum* GLchar*))
   (define glGetAttribLocation (GL GLint "glGetAttribLocationARB" GLhandle GLchar*))

   (define glGetVertexAttribdv (GL GLvoid "glGetVertexAttribdvARB" GLuint GLenum GLdouble*))
   (define glGetVertexAttribfv (GL GLvoid "glGetVertexAttribfvARB" GLuint GLenum GLfloat*))
   (define glGetVertexAttribiv (GL GLvoid "glGetVertexAttribivARB" GLuint GLenum GLint*))
   (define glGetVertexAttribPointerv (GL GLvoid "glGetVertexAttribPointervARB" GLuint GLenum GLvoid*))


   (define GL_VERTEX_SHADER                               #x8B31)

   (define GL_MAX_VERTEX_UNIFORM_COMPONENTS               #x8B4A)
   (define GL_MAX_VARYING_FLOATS                          #x8B4B)
   (define GL_MAX_VERTEX_ATTRIBS                          #x8869)
   (define GL_MAX_TEXTURE_IMAGE_UNITS                     #x8872)
   (define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS              #x8B4C)
   (define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS            #x8B4D)
   (define GL_MAX_TEXTURE_COORDS                          #x8871)

   (define GL_VERTEX_PROGRAM_POINT_SIZE                   #x8642)
   (define GL_VERTEX_PROGRAM_TWO_SIDE                     #x8643)

   (define GL_OBJECT_ACTIVE_ATTRIBUTES                    #x8B89)
   (define GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH          #x8B8A)

   (define GL_VERTEX_ATTRIB_ARRAY_ENABLED                 #x8622)
   (define GL_VERTEX_ATTRIB_ARRAY_SIZE                    #x8623)
   (define GL_VERTEX_ATTRIB_ARRAY_STRIDE                  #x8624)
   (define GL_VERTEX_ATTRIB_ARRAY_TYPE                    #x8625)
   (define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED              #x886A)
   (define GL_CURRENT_VERTEX_ATTRIB                       #x8626)
   (define GL_VERTEX_ATTRIB_ARRAY_POINTER                 #x8645)

   (define GL_FLOAT                                       #x1406)
   (define GL_FLOAT_VEC2                                  #x8B50)
   (define GL_FLOAT_VEC3                                  #x8B51)
   (define GL_FLOAT_VEC4                                  #x8B52)
   (define GL_FLOAT_MAT2                                  #x8B5A)
   (define GL_FLOAT_MAT3                                  #x8B5B)
   (define GL_FLOAT_MAT4                                  #x8B5C)

))
