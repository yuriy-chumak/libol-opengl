(define-library (OpenGL EXT memory_object_fd)

(import (scheme core)
   (OpenGL platform))

(export  EXT_memory_object_fd

   GL_HANDLE_TYPE_OPAQUE_FD_EXT

   glImportMemoryFdEXT

)

; -----------------------------------------------------------------------------
(begin   ;; TODO: change to glGetStringi ...
   (define EXT_memory_object_fd (gl:QueryExtension "GL_EXT_memory_object_fd"))

   (define GL_HANDLE_TYPE_OPAQUE_FD_EXT      #x9586)

   (setq GL gl:GetProcAddress)
   (define glImportMemoryFdEXT (GL fft-void "glImportMemoryFdEXT" GLuint GLuint64 GLenum GLint))

))
