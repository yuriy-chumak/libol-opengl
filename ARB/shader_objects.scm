; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_shader_objects.txt

; ARB_shader_objects
;
; Version
;  Last Modified Date: December 14, 2009
;  Author Revision: 0.90
;
; Number
;  ARB Extension #30

(define-library (OpenGL ARB shader_objects)

(import (scheme base)
   (OpenGL platform))

(export  ARB_shader_objects

   GLchar* GLchar**
   GLhandle GLhandle*

; ----------------------------
; New Procedures and Functions
;
   glDeleteObject
   glGetHandle
   glDetachObject
   glCreateShaderObject

   glShaderSource
   glCompileShader

   glCreateProgramObject
   glAttachObject
   glLinkProgram
   glUseProgramObject
   glValidateProgram

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

   glGetObjectParameterfv
   glGetObjectParameteriv

   glGetInfoLog
   glGetAttachedObjects
   glGetUniformLocation
   glGetActiveUniform
   glGetUniformfv
   glGetUniformiv
   glGetShaderSource

; ----------
; New Tokens
;
   GL_PROGRAM_OBJECT

   GL_OBJECT_TYPE
   GL_OBJECT_SUBTYPE
   GL_OBJECT_DELETE_STATUS
   GL_OBJECT_COMPILE_STATUS
   GL_OBJECT_LINK_STATUS
   GL_OBJECT_VALIDATE_STATUS
   GL_OBJECT_INFO_LOG_LENGTH
   GL_OBJECT_ATTACHED_OBJECTS
   GL_OBJECT_ACTIVE_UNIFORMS
   GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH
   GL_OBJECT_SHADER_SOURCE_LENGTH

   GL_SHADER_OBJECT

   GL_FLOAT
   GL_FLOAT_VEC2
   GL_FLOAT_VEC3
   GL_FLOAT_VEC4
   GL_INT
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
   GL_SAMPLER_2D_RECT
   GL_SAMPLER_2D_RECT_SHADOW

   ; * ol internal
   gl:compile-shader
)

; ------------------------------------------------------------------------
(begin
   (define ARB_shader_objects (gl:QueryExtension "GL_ARB_shader_objects"))
   (setq GL gl:GetProcAddress)

   (define GLchar* type-string)
   (define GLchar** (fft* GLchar*))
   (define GLhandle type-vptr)
   (define GLhandle* (fft* GLhandle)) ;?
   (define GLhandle& (fft& GLhandle)) ;?
   (define GLfloat& (fft& GLfloat))
   (define GLsizei& (fft& GLsizei))
   (define GLsizei* (fft* GLsizei))
   (define GLenum* (fft* GLenum))

   (define glDeleteObject (GL GLvoid "glDeleteObjectARB" GLhandle))
   (define glGetHandle (GL GLhandle "glGetHandleARB" GLenum))
   (define glDetachObject (GL GLvoid "glDetachObjectARB" GLhandle GLhandle))
   (define glCreateShaderObject (GL GLhandle "glCreateShaderObjectARB" GLenum))
   (define glShaderSource (GL GLvoid "glShaderSourceARB" GLhandle GLsizei GLchar** GLint*))
   (define glCompileShader (GL GLvoid "glCompileShaderARB" GLhandle))
   (define glCreateProgramObject (GL GLhandle "glCreateProgramObjectARB"))
   (define glAttachObject (GL GLvoid "glAttachObjectARB" GLhandle GLhandle))
   (define glLinkProgram (GL GLvoid "glLinkProgramARB" GLhandle))
   (define glUseProgramObject (GL GLvoid "glUseProgramObjectARB" GLhandle))
   (define glValidateProgram (GL GLvoid "glValidateProgramARB" GLhandle))
   (define glUniform1f (GL GLvoid "glUniform1fARB" GLint GLfloat))
   (define glUniform2f (GL GLvoid "glUniform2fARB" GLint GLfloat GLfloat))
   (define glUniform3f (GL GLvoid "glUniform3fARB" GLint GLfloat GLfloat GLfloat))
   (define glUniform4f (GL GLvoid "glUniform4fARB" GLint GLfloat GLfloat GLfloat GLfloat))
   (define glUniform1i (GL GLvoid "glUniform1iARB" GLint GLint))
   (define glUniform2i (GL GLvoid "glUniform2iARB" GLint GLint GLint))
   (define glUniform3i (GL GLvoid "glUniform3iARB" GLint GLint GLint GLint))
   (define glUniform4i (GL GLvoid "glUniform4iARB" GLint GLint GLint GLint GLint))
   (define glUniform1fv (GL GLvoid "glUniform1fvARB" GLint GLsizei GLfloat*))
   (define glUniform2fv (GL GLvoid "glUniform2fvARB" GLint GLsizei GLfloat*))
   (define glUniform3fv (GL GLvoid "glUniform3fvARB" GLint GLsizei GLfloat*))
   (define glUniform4fv (GL GLvoid "glUniform4fvARB" GLint GLsizei GLfloat*))
   (define glUniform1iv (GL GLvoid "glUniform1ivARB" GLint GLsizei GLint*))
   (define glUniform2iv (GL GLvoid "glUniform2ivARB" GLint GLsizei GLint*))
   (define glUniform3iv (GL GLvoid "glUniform3ivARB" GLint GLsizei GLint*))
   (define glUniform4iv (GL GLvoid "glUniform4ivARB" GLint GLsizei GLint*))
   (define glUniformMatrix2fv (GL GLvoid "glUniformMatrix2fvARB" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix3fv (GL GLvoid "glUniformMatrix3fvARB" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix4fv (GL GLvoid "glUniformMatrix4fvARB" GLint GLsizei GLboolean GLfloat*))

   (define glGetObjectParameterfv (GL GLvoid "glGetObjectParameterfvARB" GLhandle GLenum GLfloat&))
   (define glGetObjectParameteriv (GL GLvoid "glGetObjectParameterivARB" GLhandle GLenum GLint&))

   (define glGetInfoLog (GL GLvoid "glGetInfoLogARB" GLhandle GLsizei GLsizei& type-bytevector))
   (define glGetAttachedObjects (GL GLvoid "glGetAttachedObjectsARB" GLhandle GLsizei GLsizei& GLhandle&)) ;?

   (define glGetUniformLocation (GL GLint "glGetUniformLocationARB" GLhandle GLchar*))

   (define glGetActiveUniform (GL GLvoid "glGetActiveUniformARB" GLhandle GLuint GLsizei GLsizei* GLint* GLenum* GLchar*))
   (define glGetUniformfv (GL GLvoid "glGetUniformfvARB" GLhandle GLint GLfloat*))
   (define glGetUniformiv (GL GLvoid "glGetUniformivARB" GLhandle GLint GLint*))
   (define glGetShaderSource (GL GLvoid "glGetShaderSourceARB" GLhandle GLsizei GLsizei* GLchar*))

   (define GL_PROGRAM_OBJECT                              #x8B40)

   (define GL_OBJECT_TYPE                                 #x8B4E)
   (define GL_OBJECT_SUBTYPE                              #x8B4F)
   (define GL_OBJECT_DELETE_STATUS                        #x8B80)
   (define GL_OBJECT_COMPILE_STATUS                       #x8B81)
   (define GL_OBJECT_LINK_STATUS                          #x8B82)
   (define GL_OBJECT_VALIDATE_STATUS                      #x8B83)
   (define GL_OBJECT_INFO_LOG_LENGTH                      #x8B84)
   (define GL_OBJECT_ATTACHED_OBJECTS                     #x8B85)
   (define GL_OBJECT_ACTIVE_UNIFORMS                      #x8B86)
   (define GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH            #x8B87)
   (define GL_OBJECT_SHADER_SOURCE_LENGTH                 #x8B88)

   (define GL_SHADER_OBJECT                               #x8B48)

   (define GL_FLOAT                                           #x1406)
   (define GL_FLOAT_VEC2                                  #x8B50)
   (define GL_FLOAT_VEC3                                  #x8B51)
   (define GL_FLOAT_VEC4                                  #x8B52)
   (define GL_INT                                             #x1404)
   (define GL_INT_VEC2                                    #x8B53)
   (define GL_INT_VEC3                                    #x8B54)
   (define GL_INT_VEC4                                    #x8B55)
   (define GL_BOOL                                        #x8B56)
   (define GL_BOOL_VEC2                                   #x8B57)
   (define GL_BOOL_VEC3                                   #x8B58)
   (define GL_BOOL_VEC4                                   #x8B59)
   (define GL_FLOAT_MAT2                                  #x8B5A)
   (define GL_FLOAT_MAT3                                  #x8B5B)
   (define GL_FLOAT_MAT4                                  #x8B5C)
   (define GL_SAMPLER_1D                                  #x8B5D)
   (define GL_SAMPLER_2D                                  #x8B5E)
   (define GL_SAMPLER_3D                                  #x8B5F)
   (define GL_SAMPLER_CUBE                                #x8B60)
   (define GL_SAMPLER_1D_SHADOW                           #x8B61)
   (define GL_SAMPLER_2D_SHADOW                           #x8B62)
   (define GL_SAMPLER_2D_RECT                             #x8B63)
   (define GL_SAMPLER_2D_RECT_SHADOW                      #x8B64)

   ; * ol internal
   (define (gl:compile-shader shader sources)
      (glShaderSource shader (length sources) sources #false)
      (glCompileShader shader)
      (let ((isCompiled (list 0)))
         (glGetObjectParameteriv shader GL_OBJECT_COMPILE_STATUS isCompiled)

         (if (eq? (car isCompiled) 0)
            (let*((maxLength (list 0))
                  (_ (glGetObjectParameteriv shader GL_OBJECT_INFO_LOG_LENGTH maxLength))
                  (maxLengthValue (unbox maxLength))
                  (errorLog (make-bytevector maxLengthValue 0))
                  (_ (glGetInfoLog shader maxLengthValue maxLength errorLog)))
               (raise (utf8->string errorLog))))))
))
