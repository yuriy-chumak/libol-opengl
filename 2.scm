; OpenGL 2.0 (7 Sep 2004), GLSL 1.1
;  + ARB_shader_objects, heavily modified
;  + ARB_vertex_shader, heavily modified
;  + ARB_fragment_shader, heavily modified
;  + ARB_shading_language_100, heavily modified
;  + ARB_draw_buffers
;  + ARB_texture_non_power_of_two
;  + ARB_point_sprite
;  + ATI_separate_stencil
;  + EXT_stencil_two_side

(define-library (OpenGL 2.0)
(export
      (exports (OpenGL 1.5))

   GL_VERSION_2_0

;; I.1.1 ARB_shader_objects (heavily modified)
   glCreateShader
   glDeleteShader
   glAttachShader
   glDetachShader

   glShaderSource
   glCompileShader
   glGetShaderiv
   glIsShader

   glCreateProgram
   glDeleteProgram
   glLinkProgram
   glUseProgram
   glValidateProgram

   glGetProgramiv
   glGetProgramInfoLog
   glIsProgram

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

   glGetShaderInfoLog
   glGetAttachedShaders
   glGetUniformLocation
   glGetActiveUniform
   glGetUniformfv
   glGetUniformiv
   glGetShaderSource

;; I.1.2 ARB_vertex_shader and ARB_fragment_shader (heavily modified both)
   glVertexAttrib1d
   glVertexAttrib1dv
   glVertexAttrib1f
   glVertexAttrib1fv
   glVertexAttrib1s
   glVertexAttrib1sv
   glVertexAttrib2d
   glVertexAttrib2dv
   glVertexAttrib2f
   glVertexAttrib2fv
   glVertexAttrib2s
   glVertexAttrib2sv
   glVertexAttrib3d
   glVertexAttrib3dv
   glVertexAttrib3f
   glVertexAttrib3fv
   glVertexAttrib3s
   glVertexAttrib3sv
   glVertexAttrib4Nbv
   glVertexAttrib4Niv
   glVertexAttrib4Nsv
   glVertexAttrib4Nub
   glVertexAttrib4Nubv
   glVertexAttrib4Nuiv
   glVertexAttrib4Nusv
   glVertexAttrib4bv
   glVertexAttrib4d
   glVertexAttrib4dv
   glVertexAttrib4f
   glVertexAttrib4fv
   glVertexAttrib4iv
   glVertexAttrib4s
   glVertexAttrib4sv
   glVertexAttrib4ubv
   glVertexAttrib4uiv
   glVertexAttrib4usv
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

;; I.1.3 ARB_shading_language_100 (heavily modified)
   GL_SHADING_LANGUAGE_VERSION

;; I.2 ARB_draw_buffers
   glDrawBuffers

;; I.3 ARB_texture_non_power_of_two
   ; none

;; I.4 ARB_point_sprite
   GL_POINT_SPRITE
   GL_COORD_REPLACE

;; I.5 ATI_separate_stencil and EXT_stencil_two_side
   glStencilOpSeparate
   glStencilFuncSeparate

   GL_STENCIL_BACK_FUNC
   GL_STENCIL_BACK_FAIL
   GL_STENCIL_BACK_PASS_DEPTH_FAIL
   GL_STENCIL_BACK_PASS_DEPTH_PASS

;; I.6 Changed Tokens
   GL_FOG_COORD_ARRAY_BUFFER_BINDING

;; 2.0 Features
   glBlendEquationSeparate
   glStencilMaskSeparate

;; NEW CONSTANTS
   GL_BLEND_EQUATION_RGB
   GL_VERTEX_ATTRIB_ARRAY_ENABLED
   GL_VERTEX_ATTRIB_ARRAY_SIZE
   GL_VERTEX_ATTRIB_ARRAY_STRIDE
   GL_VERTEX_ATTRIB_ARRAY_TYPE
   GL_CURRENT_VERTEX_ATTRIB
   GL_VERTEX_PROGRAM_POINT_SIZE
   GL_VERTEX_ATTRIB_ARRAY_POINTER
   GL_MAX_DRAW_BUFFERS
   GL_DRAW_BUFFER0
   GL_DRAW_BUFFER1
   GL_DRAW_BUFFER2
   GL_DRAW_BUFFER3
   GL_DRAW_BUFFER4
   GL_DRAW_BUFFER5
   GL_DRAW_BUFFER6
   GL_DRAW_BUFFER7
   GL_DRAW_BUFFER8
   GL_DRAW_BUFFER9
   GL_DRAW_BUFFER10
   GL_DRAW_BUFFER11
   GL_DRAW_BUFFER12
   GL_DRAW_BUFFER13
   GL_DRAW_BUFFER14
   GL_DRAW_BUFFER15
   GL_BLEND_EQUATION_ALPHA
   GL_MAX_VERTEX_ATTRIBS
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
   GL_MAX_TEXTURE_IMAGE_UNITS
   GL_FRAGMENT_SHADER
   GL_VERTEX_SHADER
   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
   GL_MAX_VERTEX_UNIFORM_COMPONENTS
   GL_MAX_VARYING_FLOATS
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
   GL_SHADER_TYPE
   GL_FLOAT_VEC2
   GL_FLOAT_VEC3
   GL_FLOAT_VEC4
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
   GL_DELETE_STATUS
   GL_COMPILE_STATUS
   GL_LINK_STATUS
   GL_VALIDATE_STATUS
   GL_INFO_LOG_LENGTH
   GL_ATTACHED_SHADERS
   GL_ACTIVE_UNIFORMS
   GL_ACTIVE_UNIFORM_MAX_LENGTH
   GL_SHADER_SOURCE_LENGTH
   GL_ACTIVE_ATTRIBUTES
   GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
   GL_FRAGMENT_SHADER_DERIVATIVE_HINT
   GL_CURRENT_PROGRAM
   GL_POINT_SPRITE_COORD_ORIGIN
   GL_LOWER_LEFT
   GL_UPPER_LEFT
   GL_STENCIL_BACK_REF
   GL_STENCIL_BACK_VALUE_MASK
   GL_STENCIL_BACK_WRITEMASK
   GL_VERTEX_PROGRAM_TWO_SIDE
   GL_MAX_TEXTURE_COORDS

   gl:compile-shader
   gl:link-shaders
   gl:create-program
   gl:vertex-preprocessor
   gl:geometry-preprocessor
   gl:fragment-preprocessor
)

; ============================================================================
; == implementation ==========================================================
(import (scheme base)
        (scheme bytevector)
        (OpenGL 1.5))

(begin
   (define GL_VERSION_2_0 1)

   (setq GL gl:GetProcAddress)

   (define GLchar* type-string)
   (define GLchar** (fft* GLchar*))
   (define GLint* (fft* GLint))
   (define GLsizei* (fft* GLsizei))
   (define void* fft-void*)
   (define GLsizei& (fft& GLsizei))
   (define GLenum& (fft& GLenum))

 ; I.1.1 ARB_shader_objects
   (define glCreateShader    (GL GLuint "glCreateShader" GLenum))
      (define GL_VERTEX_SHADER   #x8B31)
      (define GL_FRAGMENT_SHADER #x8B30)
   (define glDeleteShader    (GL GLvoid "glDeleteShader" GLuint))
   (define glDetachShader    (GL GLvoid "glDetachShader" GLuint GLuint))
   (define glAttachShader    (GL GLvoid "glAttachShader" GLuint GLuint))

   (define glShaderSource    (GL GLvoid "glShaderSource" GLuint GLsizei GLchar** GLint*))
   (define glCompileShader   (GL GLvoid "glCompileShader" GLuint))
   (define glGetShaderiv     (GL GLvoid "glGetShaderiv" GLuint GLenum GLint&))
      (define GL_COMPILE_STATUS  #x8B81)
      (define GL_LINK_STATUS     #x8B82)
      (define GL_VALIDATE_STATUS #x8B83)
      (define GL_INFO_LOG_LENGTH #x8B84)

   (define glIsShader        (GL GLboolean "glIsShader" GLuint))

   (define glCreateProgram   (GL GLuint "glCreateProgram"))
   (define glDeleteProgram   (GL GLvoid "glDeleteProgram" GLuint))
   (define glLinkProgram     (GL GLvoid "glLinkProgram" GLuint))
   (define glUseProgram      (GL GLvoid "glUseProgram" GLuint))
   (define glValidateProgram (GL GLvoid "glValidateProgram" GLuint))

   (define glGetProgramiv    (GL GLvoid "glGetProgramiv" GLuint GLenum GLint&))
   (define glGetProgramInfoLog (GL GLvoid "glGetProgramInfoLog" GLuint GLsizei GLsizei& type-bytevector))
   (define glIsProgram       (GL GLboolean "glIsProgram" GLuint))

   (define glUniform1f       (GL GLvoid "glUniform1f" GLint GLfloat))
   (define glUniform2f       (GL GLvoid "glUniform2f" GLint GLfloat GLfloat))
   (define glUniform3f       (GL GLvoid "glUniform3f" GLint GLfloat GLfloat GLfloat))
   (define glUniform4f       (GL GLvoid "glUniform4f" GLint GLfloat GLfloat GLfloat GLfloat))
   (define glUniform1i       (GL GLvoid "glUniform1i" GLint GLint))
   (define glUniform2i       (GL GLvoid "glUniform2i" GLint GLint GLint))
   (define glUniform3i       (GL GLvoid "glUniform3i" GLint GLint GLint GLint))
   (define glUniform4i       (GL GLvoid "glUniform4i" GLint GLint GLint GLint GLint))
   (define glUniform1fv      (GL GLvoid "glUniform1fv" GLint GLsizei GLfloat*))
   (define glUniform2fv      (GL GLvoid "glUniform2fv" GLint GLsizei GLfloat*))
   (define glUniform3fv      (GL GLvoid "glUniform3fv" GLint GLsizei GLfloat*))
   (define glUniform4fv      (GL GLvoid "glUniform4fv" GLint GLsizei GLfloat*))
   (define glUniform1iv      (GL GLvoid "glUniform1iv" GLint GLsizei GLint*))
   (define glUniform2iv      (GL GLvoid "glUniform2iv" GLint GLsizei GLint*))
   (define glUniform3iv      (GL GLvoid "glUniform3iv" GLint GLsizei GLint*))
   (define glUniform4iv      (GL GLvoid "glUniform4iv" GLint GLsizei GLint*))
   (define glUniformMatrix2fv (GL GLvoid "glUniformMatrix2fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix3fv (GL GLvoid "glUniformMatrix3fv" GLint GLsizei GLboolean GLfloat*))
   (define glUniformMatrix4fv (GL GLvoid "glUniformMatrix4fv" GLint GLsizei GLboolean GLfloat*))

   (define glGetShaderInfoLog (GL GLvoid "glGetShaderInfoLog" GLuint GLsizei GLsizei& type-bytevector))
   (define glGetAttachedShaders (GL GLvoid "glGetAttachedShaders" GLuint GLsizei GLsizei& GLuint&))
   (define glGetUniformLocation (GL GLint "glGetUniformLocation" GLuint GLchar*))
   (define glGetActiveUniform (GL GLvoid "glGetActiveUniform" GLuint GLuint GLsizei GLsizei& GLint& GLenum& type-bytevector))
   (define glGetUniformfv    (GL GLvoid "glGetUniformfv" GLuint GLint (fft& GLfloat)))
   (define glGetUniformiv    (GL GLvoid "glGetUniformiv" GLuint GLint (fft& GLint)))
   (define glGetShaderSource (GL GLvoid "glGetShaderSource" GLuint GLsizei GLsizei& type-bytevector))

 ; I.1.2 ARB_vertex_shader and ARB_fragment_shader
   (define glVertexAttrib1d  (GL GLvoid "glVertexAttrib1d" GLuint GLdouble))
   (define glVertexAttrib1f  (GL GLvoid "glVertexAttrib1f" GLuint GLfloat))
   (define glVertexAttrib1s  (GL GLvoid "glVertexAttrib1s" GLuint GLshort))
   (define glVertexAttrib1dv (GL GLvoid "glVertexAttrib1dv" GLuint GLdouble*))
   (define glVertexAttrib1fv (GL GLvoid "glVertexAttrib1fv" GLuint GLfloat*))
   (define glVertexAttrib1sv (GL GLvoid "glVertexAttrib1sv" GLuint GLshort*))

   (define glVertexAttrib2d  (GL GLvoid "glVertexAttrib2d" GLuint GLdouble GLdouble))
   (define glVertexAttrib2dv (GL GLvoid "glVertexAttrib2dv" GLuint GLdouble*))
   (define glVertexAttrib2f  (GL GLvoid "glVertexAttrib2f" GLuint GLfloat GLfloat))
   (define glVertexAttrib2fv (GL GLvoid "glVertexAttrib2fv" GLuint GLfloat*))
   (define glVertexAttrib2s  (GL GLvoid "glVertexAttrib2s" GLuint GLshort GLshort))
   (define glVertexAttrib2sv (GL GLvoid "glVertexAttrib2sv" GLuint GLshort*))

   (define glVertexAttrib3d (GL GLvoid "glVertexAttrib3d" GLuint GLdouble GLdouble GLdouble))
   (define glVertexAttrib3dv (GL GLvoid "glVertexAttrib3dv" GLuint GLdouble*))
   (define glVertexAttrib3f (GL GLvoid "glVertexAttrib3f" GLuint GLfloat GLfloat GLfloat))
   (define glVertexAttrib3fv (GL GLvoid "glVertexAttrib3fv" GLuint GLfloat*))
   (define glVertexAttrib3s (GL GLvoid "glVertexAttrib3s" GLuint GLshort GLshort GLshort))
   (define glVertexAttrib3sv (GL GLvoid "glVertexAttrib3sv" GLuint GLshort*))

   (define glVertexAttrib4Nbv (GL GLvoid "glVertexAttrib4Nbv" GLuint GLbyte*))
   (define glVertexAttrib4Niv (GL GLvoid "glVertexAttrib4Niv" GLuint GLint*))
   (define glVertexAttrib4Nsv (GL GLvoid "glVertexAttrib4Nsv" GLuint GLshort*))
   (define glVertexAttrib4Nub (GL GLvoid "glVertexAttrib4Nub" GLuint GLubyte GLubyte GLubyte GLubyte))
   (define glVertexAttrib4Nubv (GL GLvoid "glVertexAttrib4Nubv" GLuint GLubyte*))
   (define glVertexAttrib4Nuiv (GL GLvoid "glVertexAttrib4Nuiv" GLuint GLuint*))
   (define glVertexAttrib4Nusv (GL GLvoid "glVertexAttrib4Nusv" GLuint GLushort*))
   (define glVertexAttrib4bv (GL GLvoid "glVertexAttrib4bv" GLuint GLbyte*))
   (define glVertexAttrib4d (GL GLvoid "glVertexAttrib4d" GLuint GLdouble GLdouble GLdouble GLdouble))
   (define glVertexAttrib4dv (GL GLvoid "glVertexAttrib4dv" GLuint GLdouble*))
   (define glVertexAttrib4f (GL GLvoid "glVertexAttrib4f" GLuint GLfloat GLfloat GLfloat GLfloat))
   (define glVertexAttrib4fv (GL GLvoid "glVertexAttrib4fv" GLuint GLfloat*))
   (define glVertexAttrib4iv (GL GLvoid "glVertexAttrib4iv" GLuint GLint*))
   (define glVertexAttrib4s (GL GLvoid "glVertexAttrib4s" GLuint GLshort GLshort GLshort GLshort))
   (define glVertexAttrib4sv (GL GLvoid "glVertexAttrib4sv" GLuint GLshort*))

   (define glVertexAttrib4ubv (GL GLvoid "glVertexAttrib4ubv" GLuint GLubyte*))
   (define glVertexAttrib4uiv (GL GLvoid "glVertexAttrib4uiv" GLuint GLuint*))
   (define glVertexAttrib4usv (GL GLvoid "glVertexAttrib4usv" GLuint GLushort*))

   (define glVertexAttribPointer (GL GLvoid "glVertexAttribPointer" GLuint GLint GLenum GLboolean GLsizei fft-any))

   (define glEnableVertexAttribArray (GL GLvoid "glEnableVertexAttribArray" GLuint))
   (define glDisableVertexAttribArray (GL GLvoid "glDisableVertexAttribArray" GLuint))
   (define glBindAttribLocation (GL GLvoid "glBindAttribLocation" GLuint GLuint GLchar*))
   (define glGetActiveAttrib (GL GLvoid "glGetActiveAttrib" GLuint GLuint GLsizei GLsizei& GLint& GLenum& type-bytevector))
   (define glGetAttribLocation (GL GLint "glGetAttribLocation" GLuint GLchar*))

   (define glGetVertexAttribdv (GL GLvoid "glGetVertexAttribdv" GLuint GLenum (fft& GLdouble)))
   (define glGetVertexAttribfv (GL GLvoid "glGetVertexAttribfv" GLuint GLenum (fft& GLfloat)))
   (define glGetVertexAttribiv (GL GLvoid "glGetVertexAttribiv" GLuint GLenum (fft& GLint)))
   (define glGetVertexAttribPointerv (GL GLvoid "glGetVertexAttribPointerv" GLuint GLenum (fft& type-vptr)))

 ; I.1.3 ARB_shading_language_100
   (define GL_SHADING_LANGUAGE_VERSION       #x8B8C)

 ; I.2 ARB_draw_buffers
   (define glDrawBuffers     (GL GLvoid "glDrawBuffers" GLsizei GLenum*))

 ; I.3 ARB_texture_non_power_of_two
   ; none

 ; I.4 ARB_point_sprite
   (define GL_POINT_SPRITE                   #x8861)
   (define GL_COORD_REPLACE                  #x8862)

 ; I.5 ATI_separate_stencil and EXT_stencil_two_side
   (define glStencilOpSeparate (GL GLvoid "glStencilOpSeparate" GLenum GLenum GLenum GLenum))
   (define glStencilFuncSeparate (GL GLvoid "glStencilFuncSeparate" GLenum GLenum GLint GLuint))

   (define GL_STENCIL_BACK_FUNC              #x8800)
   (define GL_STENCIL_BACK_FAIL              #x8801)
   (define GL_STENCIL_BACK_PASS_DEPTH_FAIL   #x8802)
   (define GL_STENCIL_BACK_PASS_DEPTH_PASS   #x8803)

 ; I.6 Changed Tokens
   (define GL_FOG_COORD_ARRAY_BUFFER_BINDING GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING)

 ; 2.0 Functions
   (define glBlendEquationSeparate (GL GLvoid "glBlendEquationSeparate" GLenum GLenum))
   (define glStencilMaskSeparate (GL GLvoid "glStencilMaskSeparate" GLenum GLuint))

 ; NEW CONSTANTS
   (define GL_BLEND_EQUATION_RGB             #x8009)
   (define GL_VERTEX_ATTRIB_ARRAY_ENABLED    #x8622)
   (define GL_VERTEX_ATTRIB_ARRAY_SIZE       #x8623)
   (define GL_VERTEX_ATTRIB_ARRAY_STRIDE     #x8624)
   (define GL_VERTEX_ATTRIB_ARRAY_TYPE       #x8625)
   (define GL_CURRENT_VERTEX_ATTRIB          #x8626)
   (define GL_VERTEX_PROGRAM_POINT_SIZE      #x8642)
   (define GL_VERTEX_ATTRIB_ARRAY_POINTER    #x8645)

   (define GL_MAX_DRAW_BUFFERS               #x8824)
   (define GL_DRAW_BUFFER0                   #x8825)
   (define GL_DRAW_BUFFER1                   #x8826)
   (define GL_DRAW_BUFFER2                   #x8827)
   (define GL_DRAW_BUFFER3                   #x8828)
   (define GL_DRAW_BUFFER4                   #x8829)
   (define GL_DRAW_BUFFER5                   #x882A)
   (define GL_DRAW_BUFFER6                   #x882B)
   (define GL_DRAW_BUFFER7                   #x882C)
   (define GL_DRAW_BUFFER8                   #x882D)
   (define GL_DRAW_BUFFER9                   #x882E)
   (define GL_DRAW_BUFFER10                  #x882F)
   (define GL_DRAW_BUFFER11                  #x8830)
   (define GL_DRAW_BUFFER12                  #x8831)
   (define GL_DRAW_BUFFER13                  #x8832)
   (define GL_DRAW_BUFFER14                  #x8833)
   (define GL_DRAW_BUFFER15                  #x8834)
   (define GL_BLEND_EQUATION_ALPHA           #x883D)
   (define GL_MAX_VERTEX_ATTRIBS             #x8869)
   (define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED #x886A)
   (define GL_MAX_TEXTURE_IMAGE_UNITS        #x8872)
   (define GL_FRAGMENT_SHADER                #x8B30)
   (define GL_VERTEX_SHADER                  #x8B31)
   (define GL_MAX_FRAGMENT_UNIFORM_COMPONENTS #x8B49)
   (define GL_MAX_VERTEX_UNIFORM_COMPONENTS  #x8B4A)
   (define GL_MAX_VARYING_FLOATS             #x8B4B)
   (define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS #x8B4C)
   (define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS #x8B4D)
   (define GL_SHADER_TYPE                    #x8B4F)
   (define GL_FLOAT_VEC2                     #x8B50)
   (define GL_FLOAT_VEC3                     #x8B51)
   (define GL_FLOAT_VEC4                     #x8B52)
   (define GL_INT_VEC2                       #x8B53)
   (define GL_INT_VEC3                       #x8B54)
   (define GL_INT_VEC4                       #x8B55)
   (define GL_BOOL                           #x8B56)
   (define GL_BOOL_VEC2                      #x8B57)
   (define GL_BOOL_VEC3                      #x8B58)
   (define GL_BOOL_VEC4                      #x8B59)
   (define GL_FLOAT_MAT2                     #x8B5A)
   (define GL_FLOAT_MAT3                     #x8B5B)
   (define GL_FLOAT_MAT4                     #x8B5C)
   (define GL_SAMPLER_1D                     #x8B5D)
   (define GL_SAMPLER_2D                     #x8B5E)
   (define GL_SAMPLER_3D                     #x8B5F)
   (define GL_SAMPLER_CUBE                   #x8B60)
   (define GL_SAMPLER_1D_SHADOW              #x8B61)
   (define GL_SAMPLER_2D_SHADOW              #x8B62)
   (define GL_DELETE_STATUS                  #x8B80)
   (define GL_COMPILE_STATUS                 #x8B81)
   (define GL_LINK_STATUS                    #x8B82)
   (define GL_VALIDATE_STATUS                #x8B83)
   (define GL_INFO_LOG_LENGTH                #x8B84)
   (define GL_ATTACHED_SHADERS               #x8B85)
   (define GL_ACTIVE_UNIFORMS                #x8B86)
   (define GL_ACTIVE_UNIFORM_MAX_LENGTH      #x8B87)
   (define GL_SHADER_SOURCE_LENGTH           #x8B88)
   (define GL_ACTIVE_ATTRIBUTES              #x8B89)
   (define GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    #x8B8A)
   (define GL_FRAGMENT_SHADER_DERIVATIVE_HINT #x8B8B)
   (define GL_CURRENT_PROGRAM                #x8B8D)
   (define GL_POINT_SPRITE_COORD_ORIGIN      #x8CA0)
   (define GL_LOWER_LEFT                     #x8CA1)
   (define GL_UPPER_LEFT                     #x8CA2)
   (define GL_STENCIL_BACK_REF               #x8CA3)
   (define GL_STENCIL_BACK_VALUE_MASK        #x8CA4)
   (define GL_STENCIL_BACK_WRITEMASK         #x8CA5)
   (define GL_VERTEX_PROGRAM_TWO_SIDE        #x8643)
   (define GL_MAX_TEXTURE_COORDS             #x8871)
)
; -=( * ol functions )=-------------------------------------
; todo: move "#version" from the source to the top
; note:
;  no GL_VERTEX_PROGRAM_TWO_SIDE
(cond-expand
   (Android
      (include "lib/gl/gl2es.lisp"))
   (else
      ; nothing special for PC
      (begin
         (define (preprocessor source)
            (if (list? source) source (list source)))
         (define vertex-preprocessor preprocessor)
         (define geometry-preprocessor preprocessor)
         (define fragment-preprocessor preprocessor))
))

; TODO: move to ol lib folder, like
; (include "lib/gl/shading.lisp")
(begin
   ; * internal
   (define (compile shader sources)
      (glShaderSource shader (length sources) sources #false)
      (glCompileShader shader)
      (let ((isCompiled (box 0)))
         (glGetShaderiv shader GL_COMPILE_STATUS isCompiled)

         (if (eq? (unbox isCompiled) 0)
            (let*((maxLength (box 0))
                  (_ (glGetShaderiv shader GL_INFO_LOG_LENGTH maxLength))
                  (maxLengthValue (unbox maxLength))
                  (errorLog (make-bytevector maxLengthValue 0))
                  (_ (glGetShaderInfoLog shader maxLengthValue maxLength errorLog)))
               (raise (utf8->string errorLog))))))

   ; * internal
   (define (link program . shaders)
      (for-each (lambda (shader)
            (glAttachShader program shader))
         shaders)
      ;; todo: check this!
      ;; (for-each (lambda (shader)
      ;;       (glDeleteShader shader))
      ;;    shaders)

      (glLinkProgram program)
      (let ((isLinked (box 0)))
         (glGetProgramiv program GL_LINK_STATUS isLinked)
         (if (eq? (unbox isLinked) 0)
            ;; the maxLength includes the NULL character
            (let*((maxLength (box 0))
                  (_ (glGetProgramiv program GL_INFO_LOG_LENGTH maxLength))
                  (maxLengthValue (unbox maxLength))
                  (errorLog (make-bytevector maxLengthValue 0))
                  (_ (glGetProgramInfoLog program maxLengthValue maxLength errorLog)))

               ;; we don't need the program anymore.
               (glDeleteProgram program)
               ;; don't leak shaders either.
               (for-each (lambda (shader)
                     (glDeleteShader shader))
                  shaders)
               ;; throw error
               (raise (utf8->string errorLog)))))

      (for-each (lambda (shader)
            ;; always detach shaders after a successful link.
            (glDetachShader program shader))
         shaders))

   (define (gl:create-program vstext fstext)
      (let ((po (glCreateProgram))
            (vs (glCreateShader GL_VERTEX_SHADER))
            (fs (glCreateShader GL_FRAGMENT_SHADER)))
         (if (eq? po 0)
            (raise "Can't create shader program."))

         (compile vs (vertex-preprocessor vstext))
         (compile fs (fragment-preprocessor fstext))

         (link po vs fs)
         po))

   ; publicly available names
   (define gl:compile-shader compile)
   (define gl:link-shaders link)
   (define gl:vertex-preprocessor vertex-preprocessor)
   (define gl:geometry-preprocessor geometry-preprocessor)
   (define gl:fragment-preprocessor fragment-preprocessor)

))
