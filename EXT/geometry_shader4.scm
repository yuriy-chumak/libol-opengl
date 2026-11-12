; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_geometry_shader4.txt

; EXT_geometry_shader4                               (included in OpenGL 3.2)
;
; Version
;  Last Modified Date:         12/14/2009
;  NVIDIA Revision:            22
;
; Number
;  324
;
; Overview
;  This extension defines methods to load texture images directly from the
;  framebuffer.  Methods are defined for both complete and partial
;  replacement of a texture image.  Because it is not possible to define
;  an entire 3D texture using a 2D framebuffer image, 3D textures are
;  supported only for partial replacement.

(define-library (OpenGL EXT geometry_shader4)

(import (scheme base)
        (OpenGL platform))

(export  EXT_geometry_shader4

; ----------------------------
; New Procedures and Functions
;
   glProgramParameteri
   glFramebufferTexture
   glFramebufferTextureLayer
   glFramebufferTextureFace

; ----------
; New Tokens
;
;  Accepted by the <type> parameter of CreateShader and returned by the
;  <params> parameter of GetShaderiv:

   GL_GEOMETRY_SHADER

;  Accepted by the <pname> parameter of ProgramParameteriEXT and
;  GetProgramiv:

   GL_GEOMETRY_VERTICES_OUT
   GL_GEOMETRY_INPUT_TYPE
   GL_GEOMETRY_OUTPUT_TYPE

;  Accepted by the <pname> parameter of GetBooleanv, GetIntegerv,
;  GetFloatv, and GetDoublev:

   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
   GL_MAX_GEOMETRY_VARYING_COMPONENTS
   GL_MAX_VERTEX_VARYING_COMPONENTS
   GL_MAX_VARYING_COMPONENTS
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
   GL_MAX_GEOMETRY_OUTPUT_VERTICES
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS

;  Accepted by the <mode> parameter of Begin, DrawArrays,
;  MultiDrawArrays, DrawElements, MultiDrawElements, and
;  DrawRangeElements:

   GL_LINES_ADJACENCY
   GL_LINE_STRIP_ADJACENCY
   GL_TRIANGLES_ADJACENCY
   GL_TRIANGLE_STRIP_ADJACENCY

;  Returned by CheckFramebufferStatusEXT:

   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT

;  Accepted by the <pname> parameter of GetFramebufferAttachment-
;  ParameterivEXT:

   GL_FRAMEBUFFER_ATTACHMENT_LAYERED
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER

;  Accepted by the <cap> parameter of Enable, Disable, and IsEnabled,
;  and by the <pname> parameter of GetIntegerv, GetFloatv, GetDoublev,
;  and GetBooleanv:

   GL_PROGRAM_POINT_SIZE

   gl:create-program
)

(import (OpenGL 2.0))
(import (lib gl 2. shading))
; ---------------------------------------------------------------------------
(begin
   (define EXT_geometry_shader4 (gl:QueryExtension "GL_EXT_geometry_shader4"))

   (setq GL gl:GetProcAddress)
   (define glProgramParameteri (GL fft-void "glProgramParameteri" GLuint GLenum GLint))
   (define glFramebufferTexture (GL GLvoid "glFramebufferTextureEXT" GLenum GLenum GLuint GLint))
   (define glFramebufferTextureLayer (GL GLvoid "glFramebufferTextureLayer" GLenum GLenum GLuint GLint GLint))
   (define glFramebufferTextureFace (GL GLvoid "glFramebufferTextureFace" GLenum GLenum GLuint GLint GLenum))

   (define GL_GEOMETRY_SHADER                              #x8DD9)

   (define GL_GEOMETRY_VERTICES_OUT                        #x8DDA)
   (define GL_GEOMETRY_INPUT_TYPE                          #x8DDB)
   (define GL_GEOMETRY_OUTPUT_TYPE                         #x8DDC)

   (define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS             #x8C29)
   (define GL_MAX_GEOMETRY_VARYING_COMPONENTS              #x8DDD)
   (define GL_MAX_VERTEX_VARYING_COMPONENTS                #x8DDE)
   (define GL_MAX_VARYING_COMPONENTS                       #x8B4B)
   (define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS              #x8DDF)
   (define GL_MAX_GEOMETRY_OUTPUT_VERTICES                 #x8DE0)
   (define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS         #x8DE1)

   (define GL_LINES_ADJACENCY                              #xA)
   (define GL_LINE_STRIP_ADJACENCY                         #xB)
   (define GL_TRIANGLES_ADJACENCY                          #xC)
   (define GL_TRIANGLE_STRIP_ADJACENCY                     #xD)

   (define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS         #x8DA8)
   (define GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT           #x8DA9)

   (define GL_FRAMEBUFFER_ATTACHMENT_LAYERED               #x8DA7)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER         #x8CD4)

   (define GL_PROGRAM_POINT_SIZE                           #x8642)

   (define (preprocessor source)
      (if (pair? source) source (list source)))
   (define vertex-preprocessor preprocessor)
   (define geometry-preprocessor preprocessor)
   (define fragment-preprocessor preprocessor)

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

   (define gl:create-program
   (case-lambda
      ; vertex and fragment shaders
      ((vstext fstext)
            (let ((program (glCreateProgram))
                  (vs (glCreateShader GL_VERTEX_SHADER))
                  (fs (glCreateShader GL_FRAGMENT_SHADER)))
               (if (eq? program 0)
                  (raise "Can't create shader program."))

               (compile vs (vertex-preprocessor vstext))
               (compile fs (fragment-preprocessor fstext))

               (link program vs fs)
               program))
         

      ; vertex, geometry, and fragment shaders
      ; todo: add automatic extraction of inputType outputType outputCount from gstext
      ((vstext
        inputType outputType outputCount gstext
        fstext)
            (let ((program (glCreateProgram))
                  (vs (glCreateShader GL_VERTEX_SHADER))
                  (gs (glCreateShader GL_GEOMETRY_SHADER))
                  (fs (glCreateShader GL_FRAGMENT_SHADER)))
               (if (eq? program 0)
                  (raise "Can't create shader program."))

               (compile vs (vertex-preprocessor vstext))
               (compile gs (geometry-preprocessor gstext))
               (compile fs (fragment-preprocessor fstext))

               (glProgramParameteri program GL_GEOMETRY_INPUT_TYPE inputType)
               ; only POINTS, LINE_STRIP and TRIANGLE_STRIP is allowed
               (glProgramParameteri program GL_GEOMETRY_OUTPUT_TYPE outputType)
               (glProgramParameteri program GL_GEOMETRY_VERTICES_OUT outputCount)

               (link program vs gs fs)
               program))
      ))

))
