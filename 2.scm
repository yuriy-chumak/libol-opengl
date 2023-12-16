; OpenGL 2.0 (7 Sep 2004), GLSL 1.1
(define-library (OpenGL 2.0)
(export
      (exports (OpenGL 1.5))
; + ARB_shader_objects, heavily modified
; + ARB_vertex_shader, heavily modified
; + ARB_fragment_shader, heavily modified
; + ARB_shading_language_100, heavily modified
; + ARB_draw_buffers
; + ARB_texture_non_power_of_two
; + ARB_point_sprite
; + ATI_separate_stencil
; + EXT_stencil_two_side

   GL_VERSION_2_0

glCreateShader
GL_VERTEX_SHADER
GL_FRAGMENT_SHADER
glShaderSource
glCompileShader
glCreateProgram
glDeleteProgram
glAttachShader
glDetachShader
glDeleteShader
glLinkProgram
glUseProgram
glGetShaderiv
glGetProgramiv
GL_COMPILE_STATUS
GL_LINK_STATUS
GL_VALIDATE_STATUS
GL_INFO_LOG_LENGTH
glGetShaderInfoLog
glGetProgramInfoLog
glGetUniformLocation
glUniform1i
glUniform1f
glUniform2f
glUniform2fv
glUniform3f
glUniform3fv
glUniform4f
glUniform4fv
glUniform1fv
glUniformMatrix4fv
glEnableVertexAttribArray
glVertexAttribPointer
GL_FLOAT
glDrawArrays

glGetAttribLocation

GL_CURRENT_PROGRAM

   gl:create-program)

   (import (scheme base)
      (scheme bytevector)
      (OpenGL 1.5))

(begin
   (define GL_VERSION_2_0 1)

   (setq GL gl:GetProcAddress)

(define GLchar* type-string)
(define GLchar** (fft* GLchar*))
;(define GLchar** type-vector)?

(define GLint* (fft* GLint))
(define GLsizei* (fft* GLsizei))
(define void* fft-void*)
(define GLsizei& (fft& GLsizei))

  (define glCreateShader    (GL GLuint "glCreateShader" GLenum))
    (define GL_VERTEX_SHADER   #x8B31)
    (define GL_FRAGMENT_SHADER #x8B30)
  (define glShaderSource    (GL GLvoid "glShaderSource" GLuint GLsizei GLchar** GLint*))
  (define glCompileShader   (GL GLvoid "glCompileShader" GLuint))
  (define glCreateProgram   (GL GLuint "glCreateProgram"))
  (define glDeleteProgram   (GL GLvoid "glDeleteProgram" GLuint))
  (define glAttachShader    (GL GLvoid "glAttachShader" GLuint GLuint))
  (define glDetachShader    (GL GLvoid "glDetachShader" GLuint GLuint))
  (define glDeleteShader    (GL GLvoid "glDeleteShader" GLuint))
  (define glLinkProgram     (GL GLvoid "glLinkProgram" GLuint))
  (define glUseProgram      (GL GLvoid "glUseProgram" GLuint))
  (define glGetShaderiv     (GL GLvoid "glGetShaderiv" GLuint GLenum GLint&))
    (define GL_COMPILE_STATUS  #x8B81)
    (define GL_LINK_STATUS     #x8B82)
    (define GL_VALIDATE_STATUS #x8B83)
    (define GL_INFO_LOG_LENGTH #x8B84)
   (define glGetProgramiv     (GL GLvoid "glGetProgramiv" GLuint GLenum GLint&))
  (define glGetShaderInfoLog (GL GLvoid "glGetShaderInfoLog" GLuint GLsizei GLsizei& type-bytevector))
  (define glGetProgramInfoLog (GL GLvoid "glGetProgramInfoLog" GLuint GLsizei GLsizei& type-bytevector))
  (define glGetUniformLocation (GL GLint "glGetUniformLocation" GLuint GLchar*))
    (define glUniform1i     (GL GLvoid "glUniform1i" GLint GLint))
    (define glUniform1f     (GL GLvoid "glUniform1f" GLint GLfloat))
    (define glUniform2f     (GL GLvoid "glUniform2f" GLint GLfloat GLfloat))
    (define glUniform2fv    (GL GLvoid "glUniform2fv" GLint GLsizei GLfloat*))
    (define glUniform3f     (GL GLvoid "glUniform3f" GLint GLfloat GLfloat GLfloat))
    (define glUniform3fv    (GL GLvoid "glUniform3fv" GLint GLsizei GLfloat*))
    (define glUniform4f     (GL GLvoid "glUniform4f" GLint GLfloat GLfloat GLfloat GLfloat))
    (define glUniform4fv    (GL GLvoid "glUniform4fv" GLint GLsizei GLfloat*))
    (define glUniform1fv    (GL GLvoid "glUniform1fv" GLint GLsizei GLfloat*))
    (define glUniformMatrix4fv (GL GLvoid "glUniformMatrix4fv" GLint GLsizei GLboolean GLfloat*))
  (define glEnableVertexAttribArray (GL GLvoid "glEnableVertexAttribArray" GLuint))
  (define glVertexAttribPointer (GL GLvoid "glVertexAttribPointer" GLuint GLint GLenum GLboolean GLsizei fft-any))
    (define GL_FLOAT #x1406)
  (define glDrawArrays         (GL GLvoid "glDrawArrays" GLenum GLint GLsizei))

   (define glGetAttribLocation (GL GLint "glGetAttribLocation" GLuint type-string))

   (define GL_CURRENT_PROGRAM #x8B8D))


; -=( native functions )=-------------------------------------
; todo: move "#version" from the source to the top
; note:
;  no GL_VERTEX_PROGRAM_TWO_SIDE
(cond-expand
   (Android
      (include "lib/gl-2/GL2ES.scm"))
   (else
      (include "lib/gl-2/GL2.scm")))

(begin
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

   (define (link program . shaders)
      (for-each (lambda (shader)
            (glAttachShader program shader))
         shaders)

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

   (define gl:create-program (case-lambda
      ((vstext fstext)
               (let ((po (glCreateProgram))
                     (vs (glCreateShader GL_VERTEX_SHADER))
                     (fs (glCreateShader GL_FRAGMENT_SHADER)))
                  (if (eq? po 0)
                     (raise "Can't create shader program."))

                  (compile vs (vertex-preprocessor vstext))
                  (compile fs (fragment-preprocessor fstext))

                  (link po vs fs)
                  po))
      ((vstext
        inputType outputType outputCount gstext
        fstext)
               (let ((program (glCreateProgram))
                     (gs (glCreateShader GL_GEOMETRY_SHADER))
                     (vs (glCreateShader GL_VERTEX_SHADER))
                     (fs (glCreateShader GL_FRAGMENT_SHADER)))
                  (if (eq? program 0)
                     (raise "Can't create shader program."))

                  (compile vs (vertex-preprocessor vstext))
                  (compile gs (geometry-preprocessor gstext inputType outputType outputCount))
                  (compile fs (fragment-preprocessor fstext))

                  (glProgramParameteri program GL_GEOMETRY_INPUT_TYPE inputType)
                  (glProgramParameteri program GL_GEOMETRY_OUTPUT_TYPE outputType) ; only POINTS, LINE_STRIP and TRIANGLE_STRIP is allowed:
                  (glProgramParameteri program GL_GEOMETRY_VERTICES_OUT outputCount)

                  (link program gs vs fs)
                  program))))
))
