; OpenGL 4.1 (26 Jul 2010), GLSL 4.10
;  + ARB_ES2_compatibility
;  + ARB_get_program_binary
;  + ARB_separate_shader_objects
;  + ARB_shader_precision
;  + ARB_vertex_attrib_64bit
;  + ARB_viewport_array

(define-library (OpenGL 4.1)
(export
      (exports (OpenGL 4.0))

   GL_VERSION_4_1

;; ARB_ES2_compatibility
GL_ARB_ES2_compatibility
   GL_FIXED
   GL_IMPLEMENTATION_COLOR_READ_TYPE
   GL_IMPLEMENTATION_COLOR_READ_FORMAT
   GL_LOW_FLOAT
   GL_MEDIUM_FLOAT
   GL_HIGH_FLOAT
   GL_LOW_INT
   GL_MEDIUM_INT
   GL_HIGH_INT
   GL_SHADER_COMPILER
   GL_SHADER_BINARY_FORMATS
   GL_NUM_SHADER_BINARY_FORMATS
   GL_MAX_VERTEX_UNIFORM_VECTORS
   GL_MAX_VARYING_VECTORS
   GL_MAX_FRAGMENT_UNIFORM_VECTORS
   GL_RGB565

   glReleaseShaderCompiler
   glShaderBinary
   glGetShaderPrecisionFormat
   glDepthRangef
   glClearDepthf

;; ARB_get_program_binary
GL_ARB_get_program_binary
   GL_PROGRAM_BINARY_RETRIEVABLE_HINT
   GL_PROGRAM_BINARY_LENGTH
   GL_NUM_PROGRAM_BINARY_FORMATS
   GL_PROGRAM_BINARY_FORMATS

   glGetProgramBinary
   glProgramBinary
   glProgramParameteri

;; ARB_separate_shader_objects
GL_ARB_separate_shader_objects
   GL_VERTEX_SHADER_BIT
   GL_FRAGMENT_SHADER_BIT
   GL_GEOMETRY_SHADER_BIT
   GL_TESS_CONTROL_SHADER_BIT
   GL_TESS_EVALUATION_SHADER_BIT
   GL_ALL_SHADER_BITS
   GL_PROGRAM_SEPARABLE
   GL_ACTIVE_PROGRAM
   GL_PROGRAM_PIPELINE_BINDING

   glUseProgramStages
   glActiveShaderProgram
   glCreateShaderProgramv
   glBindProgramPipeline
   glDeleteProgramPipelines
   glGenProgramPipelines
   glIsProgramPipeline
   glGetProgramPipelineiv
   glProgramUniform1i
   glProgramUniform1iv
   glProgramUniform1f
   glProgramUniform1fv
   glProgramUniform1d
   glProgramUniform1dv
   glProgramUniform1ui
   glProgramUniform1uiv
   glProgramUniform2i
   glProgramUniform2iv
   glProgramUniform2f
   glProgramUniform2fv
   glProgramUniform2d
   glProgramUniform2dv
   glProgramUniform2ui
   glProgramUniform2uiv
   glProgramUniform3i
   glProgramUniform3iv
   glProgramUniform3f
   glProgramUniform3fv
   glProgramUniform3d
   glProgramUniform3dv
   glProgramUniform3ui
   glProgramUniform3uiv
   glProgramUniform4i
   glProgramUniform4iv
   glProgramUniform4f
   glProgramUniform4fv
   glProgramUniform4d
   glProgramUniform4dv
   glProgramUniform4ui
   glProgramUniform4uiv
   glProgramUniformMatrix2fv
   glProgramUniformMatrix2dv
   glProgramUniformMatrix3fv
   glProgramUniformMatrix3dv
   glProgramUniformMatrix4fv
   glProgramUniformMatrix4dv
   glProgramUniformMatrix2x3fv
   glProgramUniformMatrix2x3dv
   glProgramUniformMatrix3x2fv
   glProgramUniformMatrix3x2dv
   glProgramUniformMatrix2x4fv
   glProgramUniformMatrix2x4dv
   glProgramUniformMatrix4x2fv
   glProgramUniformMatrix4x2dv
   glProgramUniformMatrix3x4fv
   glProgramUniformMatrix3x4dv
   glProgramUniformMatrix4x3fv
   glProgramUniformMatrix4x3dv
   glValidateProgramPipeline
   glGetProgramPipelineInfoLog

;; ARB_shader_precision
GL_ARB_shader_precision
   ; none

;; ARB_vertex_attrib_64bit
GL_ARB_vertex_attrib_64bit
   glVertexAttribL1d
   glVertexAttribL2d
   glVertexAttribL3d
   glVertexAttribL4d
   glVertexAttribL1dv
   glVertexAttribL2dv
   glVertexAttribL3dv
   glVertexAttribL4dv
   glVertexAttribLPointer
   glGetVertexAttribLdv

;; ARB_viewport_array
GL_ARB_viewport_array
   GL_MAX_VIEWPORTS
   GL_VIEWPORT_SUBPIXEL_BITS
   GL_VIEWPORT_BOUNDS_RANGE
   GL_LAYER_PROVOKING_VERTEX
   GL_VIEWPORT_INDEX_PROVOKING_VERTEX
   GL_UNDEFINED_VERTEX

   glViewportArrayv
   glViewportIndexedf
   glViewportIndexedfv
   glScissorArrayv
   glScissorIndexed
   glScissorIndexedv
   glDepthRangeArrayv
   glDepthRangeIndexed
   glGetFloati_v
   glGetDoublei_v

)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL 4.0))

(begin
   (define GL_VERSION_4_1 1)

   (define GL gl:GetProcAddress)

 ; ARB_ES2_compatibility
   (define GL_ARB_ES2_compatibility 1)

   (define GL_FIXED                                         #x140C)
   (define GL_IMPLEMENTATION_COLOR_READ_TYPE                #x8B9A)
   (define GL_IMPLEMENTATION_COLOR_READ_FORMAT              #x8B9B)
   (define GL_LOW_FLOAT                                     #x8DF0)
   (define GL_MEDIUM_FLOAT                                  #x8DF1)
   (define GL_HIGH_FLOAT                                    #x8DF2)
   (define GL_LOW_INT                                       #x8DF3)
   (define GL_MEDIUM_INT                                    #x8DF4)
   (define GL_HIGH_INT                                      #x8DF5)
   (define GL_SHADER_COMPILER                               #x8DFA)
   (define GL_SHADER_BINARY_FORMATS                         #x8DF8)
   (define GL_NUM_SHADER_BINARY_FORMATS                     #x8DF9)
   (define GL_MAX_VERTEX_UNIFORM_VECTORS                    #x8DFB)
   (define GL_MAX_VARYING_VECTORS                           #x8DFC)
   (define GL_MAX_FRAGMENT_UNIFORM_VECTORS                  #x8DFD)
   (define GL_RGB565                                        #x8D62)
   (define glReleaseShaderCompiler                          (GL GLvoid "glReleaseShaderCompiler"))
   (define glShaderBinary                                   (GL GLvoid "glShaderBinary" GLsizei GLuint* GLenum GLvoid* GLsizei))
   (define glGetShaderPrecisionFormat                       (GL GLvoid "glGetShaderPrecisionFormat" GLenum GLenum GLint& GLint&))
   (define glDepthRangef                                    (GL GLvoid "glDepthRangef" GLfloat GLfloat))
   (define glClearDepthf                                    (GL GLvoid "glClearDepthf" GLfloat))

 ; ARB_get_program_binary
   (define GL_ARB_get_program_binary 1)

   (define GL_PROGRAM_BINARY_RETRIEVABLE_HINT               #x8257)
   (define GL_PROGRAM_BINARY_LENGTH                         #x8741)
   (define GL_NUM_PROGRAM_BINARY_FORMATS                    #x87FE)
   (define GL_PROGRAM_BINARY_FORMATS                        #x87FF)

   (define glGetProgramBinary                               (GL GLvoid "glGetProgramBinary" GLuint GLsizei (fft& GLsizei) (fft& GLenum) type-vptr))
   (define glProgramBinary                                  (GL GLvoid "glProgramBinary" GLuint GLenum GLvoid* GLsizei))
   (define glProgramParameteri                              (GL GLvoid "glProgramParameteri" GLuint GLenum GLint))

 ; ARB_separate_shader_objects
   (define GL_ARB_separate_shader_objects 1)

   (define GL_VERTEX_SHADER_BIT                             #x00000001)
   (define GL_FRAGMENT_SHADER_BIT                           #x00000002)
   (define GL_GEOMETRY_SHADER_BIT                           #x00000004)
   (define GL_TESS_CONTROL_SHADER_BIT                       #x00000008)
   (define GL_TESS_EVALUATION_SHADER_BIT                    #x00000010)
   (define GL_ALL_SHADER_BITS                               #xFFFFFFFF)
   (define GL_PROGRAM_SEPARABLE                             #x8258)
   (define GL_ACTIVE_PROGRAM                                #x8259)
   (define GL_PROGRAM_PIPELINE_BINDING                      #x825A)

   (define glUseProgramStages                               (GL GLvoid "glUseProgramStages" GLuint GLbitfield GLuint))
   (define glActiveShaderProgram                            (GL GLvoid "glActiveShaderProgram" GLuint GLuint))
   (define glCreateShaderProgramv                           (GL GLuint "glCreateShaderProgramv" GLenum GLsizei GLvoid*))
   (define glBindProgramPipeline                            (GL GLvoid "glBindProgramPipeline" GLuint))
   (define glDeleteProgramPipelines                         (GL GLvoid "glDeleteProgramPipelines" GLsizei GLuint*))
   (define glGenProgramPipelines                            (GL GLvoid "glGenProgramPipelines" GLsizei GLuint&))
   (define glIsProgramPipeline                              (GL GLboolean "glIsProgramPipeline" GLuint))
   (define glGetProgramPipelineiv                           (GL GLvoid "glGetProgramPipelineiv" GLuint GLenum GLint&))
   (define glProgramUniform1i                               (GL GLvoid "glProgramUniform1i" GLuint GLint GLint))
   (define glProgramUniform1iv                              (GL GLvoid "glProgramUniform1iv" GLuint GLint GLsizei GLint*))
   (define glProgramUniform1f                               (GL GLvoid "glProgramUniform1f" GLuint GLint GLfloat))
   (define glProgramUniform1fv                              (GL GLvoid "glProgramUniform1fv" GLuint GLint GLsizei GLfloat*))
   (define glProgramUniform1d                               (GL GLvoid "glProgramUniform1d" GLuint GLint GLdouble))
   (define glProgramUniform1dv                              (GL GLvoid "glProgramUniform1dv" GLuint GLint GLsizei GLdouble*))
   (define glProgramUniform1ui                              (GL GLvoid "glProgramUniform1ui" GLuint GLint GLuint))
   (define glProgramUniform1uiv                             (GL GLvoid "glProgramUniform1uiv" GLuint GLint GLsizei GLuint*))
   (define glProgramUniform2i                               (GL GLvoid "glProgramUniform2i" GLuint GLint GLint GLint))
   (define glProgramUniform2iv                              (GL GLvoid "glProgramUniform2iv" GLuint GLint GLsizei GLint*))
   (define glProgramUniform2f                               (GL GLvoid "glProgramUniform2f" GLuint GLint GLfloat GLfloat))
   (define glProgramUniform2fv                              (GL GLvoid "glProgramUniform2fv" GLuint GLint GLsizei GLfloat*))
   (define glProgramUniform2d                               (GL GLvoid "glProgramUniform2d" GLuint GLint GLdouble GLdouble))
   (define glProgramUniform2dv                              (GL GLvoid "glProgramUniform2dv" GLuint GLint GLsizei GLdouble*))
   (define glProgramUniform2ui                              (GL GLvoid "glProgramUniform2ui" GLuint GLint GLuint GLuint))
   (define glProgramUniform2uiv                             (GL GLvoid "glProgramUniform2uiv" GLuint GLint GLsizei GLuint*))
   (define glProgramUniform3i                               (GL GLvoid "glProgramUniform3i" GLuint GLint GLint GLint GLint))
   (define glProgramUniform3iv                              (GL GLvoid "glProgramUniform3iv" GLuint GLint GLsizei GLint*))
   (define glProgramUniform3f                               (GL GLvoid "glProgramUniform3f" GLuint GLint GLfloat GLfloat GLfloat))
   (define glProgramUniform3fv                              (GL GLvoid "glProgramUniform3fv" GLuint GLint GLsizei GLfloat*))
   (define glProgramUniform3d                               (GL GLvoid "glProgramUniform3d" GLuint GLint GLdouble GLdouble GLdouble))
   (define glProgramUniform3dv                              (GL GLvoid "glProgramUniform3dv" GLuint GLint GLsizei GLdouble*))
   (define glProgramUniform3ui                              (GL GLvoid "glProgramUniform3ui" GLuint GLint GLuint GLuint GLuint))
   (define glProgramUniform3uiv                             (GL GLvoid "glProgramUniform3uiv" GLuint GLint GLsizei GLuint*))
   (define glProgramUniform4i                               (GL GLvoid "glProgramUniform4i" GLuint GLint GLint GLint GLint GLint))
   (define glProgramUniform4iv                              (GL GLvoid "glProgramUniform4iv" GLuint GLint GLsizei GLint*))
   (define glProgramUniform4f                               (GL GLvoid "glProgramUniform4f" GLuint GLint GLfloat GLfloat GLfloat GLfloat))
   (define glProgramUniform4fv                              (GL GLvoid "glProgramUniform4fv" GLuint GLint GLsizei GLfloat*))
   (define glProgramUniform4d                               (GL GLvoid "glProgramUniform4d" GLuint GLint GLdouble GLdouble GLdouble GLdouble))
   (define glProgramUniform4dv                              (GL GLvoid "glProgramUniform4dv" GLuint GLint GLsizei GLdouble*))
   (define glProgramUniform4ui                              (GL GLvoid "glProgramUniform4ui" GLuint GLint GLuint GLuint GLuint GLuint))
   (define glProgramUniform4uiv                             (GL GLvoid "glProgramUniform4uiv" GLuint GLint GLsizei GLuint*))
   (define glProgramUniformMatrix2fv                        (GL GLvoid "glProgramUniformMatrix2fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix2dv                        (GL GLvoid "glProgramUniformMatrix2dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix3fv                        (GL GLvoid "glProgramUniformMatrix3fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix3dv                        (GL GLvoid "glProgramUniformMatrix3dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix4fv                        (GL GLvoid "glProgramUniformMatrix4fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix4dv                        (GL GLvoid "glProgramUniformMatrix4dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix2x3fv                      (GL GLvoid "glProgramUniformMatrix2x3fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix2x3dv                      (GL GLvoid "glProgramUniformMatrix2x3dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix3x2fv                      (GL GLvoid "glProgramUniformMatrix3x2fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix3x2dv                      (GL GLvoid "glProgramUniformMatrix3x2dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix2x4fv                      (GL GLvoid "glProgramUniformMatrix2x4fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix2x4dv                      (GL GLvoid "glProgramUniformMatrix2x4dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix4x2fv                      (GL GLvoid "glProgramUniformMatrix4x2fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix4x2dv                      (GL GLvoid "glProgramUniformMatrix4x2dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix3x4fv                      (GL GLvoid "glProgramUniformMatrix3x4fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix3x4dv                      (GL GLvoid "glProgramUniformMatrix3x4dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glProgramUniformMatrix4x3fv                      (GL GLvoid "glProgramUniformMatrix4x3fv" GLuint GLint GLsizei GLboolean GLfloat*))
   (define glProgramUniformMatrix4x3dv                      (GL GLvoid "glProgramUniformMatrix4x3dv" GLuint GLint GLsizei GLboolean GLdouble*))
   (define glValidateProgramPipeline                        (GL GLvoid "glValidateProgramPipeline" GLuint))
   (define glGetProgramPipelineInfoLog                      (GL GLvoid "glGetProgramPipelineInfoLog" GLuint GLsizei (fft& GLsizei) type-bytevector))

 ; ARB_shader_precision
   (define GL_ARB_shader_precision 1)

   ; none

 ; ARB_vertex_attrib_64bit
   (define GL_ARB_vertex_attrib_64bit 1)

   (define glVertexAttribL1d                                (GL GLvoid "glVertexAttribL1d" GLuint GLdouble))
   (define glVertexAttribL2d                                (GL GLvoid "glVertexAttribL2d" GLuint GLdouble GLdouble))
   (define glVertexAttribL3d                                (GL GLvoid "glVertexAttribL3d" GLuint GLdouble GLdouble GLdouble))
   (define glVertexAttribL4d                                (GL GLvoid "glVertexAttribL4d" GLuint GLdouble GLdouble GLdouble GLdouble))
   (define glVertexAttribL1dv                               (GL GLvoid "glVertexAttribL1dv" GLuint GLdouble*))
   (define glVertexAttribL2dv                               (GL GLvoid "glVertexAttribL2dv" GLuint GLdouble*))
   (define glVertexAttribL3dv                               (GL GLvoid "glVertexAttribL3dv" GLuint GLdouble*))
   (define glVertexAttribL4dv                               (GL GLvoid "glVertexAttribL4dv" GLuint GLdouble*))
   (define glVertexAttribLPointer                           (GL GLvoid "glVertexAttribLPointer" GLuint GLint GLenum GLsizei GLvoid*))
   (define glGetVertexAttribLdv                             (GL GLvoid "glGetVertexAttribLdv" GLuint GLenum GLdouble&))

 ; ARB_viewport_array
   (define GL_ARB_viewport_array 1)

   (define GL_MAX_VIEWPORTS                                 #x825B)
   (define GL_VIEWPORT_SUBPIXEL_BITS                        #x825C)
   (define GL_VIEWPORT_BOUNDS_RANGE                         #x825D)
   (define GL_LAYER_PROVOKING_VERTEX                        #x825E)
   (define GL_VIEWPORT_INDEX_PROVOKING_VERTEX               #x825F)
   (define GL_UNDEFINED_VERTEX                              #x8260)

   (define glViewportArrayv                                 (GL GLvoid "glViewportArrayv" GLuint GLsizei GLfloat*))
   (define glViewportIndexedf                               (GL GLvoid "glViewportIndexedf" GLuint GLfloat GLfloat GLfloat GLfloat))
   (define glViewportIndexedfv                              (GL GLvoid "glViewportIndexedfv" GLuint GLfloat*))
   (define glScissorArrayv                                  (GL GLvoid "glScissorArrayv" GLuint GLsizei GLint*))
   (define glScissorIndexed                                 (GL GLvoid "glScissorIndexed" GLuint GLint GLint GLsizei GLsizei))
   (define glScissorIndexedv                                (GL GLvoid "glScissorIndexedv" GLuint GLint*))
   (define glDepthRangeArrayv                               (GL GLvoid "glDepthRangeArrayv" GLuint GLsizei GLdouble*))
   (define glDepthRangeIndexed                              (GL GLvoid "glDepthRangeIndexed" GLuint GLdouble GLdouble))
   (define glGetFloati_v                                    (GL GLvoid "glGetFloati_v" GLenum GLuint GLfloat&))
   (define glGetDoublei_v                                   (GL GLvoid "glGetDoublei_v" GLenum GLuint GLdouble&))

))
