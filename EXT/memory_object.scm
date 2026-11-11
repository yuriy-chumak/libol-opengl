(define-library (OpenGL EXT memory_object)

(import (scheme core)
   (OpenGL platform))

(export  EXT_memory_object

   GL_TEXTURE_TILING_EXT
   GL_DEDICATED_MEMORY_OBJECT_EXT
   GL_PROTECTED_MEMORY_OBJECT_EXT
   GL_NUM_TILING_TYPES_EXT
   GL_TILING_TYPES_EXT
   GL_OPTIMAL_TILING_EXT
   GL_LINEAR_TILING_EXT
   GL_NUM_DEVICE_UUIDS_EXT
   GL_DEVICE_UUID_EXT
   GL_DRIVER_UUID_EXT
   GL_UUID_SIZE_EXT

   ; glGetUnsignedBytevEXT
   ; glGetUnsignedBytei_vEXT
   ; glDeleteMemoryObjectsEXT
   ; glIsMemoryObjectEXT
   glCreateMemoryObjectsEXT
   ; glMemoryObjectParameterivEXT
   ; glGetMemoryObjectParameterivEXT
   ; glTexStorageMem2DEXT
   ; glTexStorageMem2DMultisampleEXT
   ; glTexStorageMem3DEXT
   ; glTexStorageMem3DMultisampleEXT
   ; glBufferStorageMemEXT
   glTextureStorageMem2DEXT
   ; glTextureStorageMem2DMultisampleEXT
   ; glTextureStorageMem3DEXT
   ; glTextureStorageMem3DMultisampleEXT
   ; glNamedBufferStorageMemEXT
   ; glTexStorageMem1DEXT
   ; glTextureStorageMem1DEXT
)

; -----------------------------------------------------------------------------
(begin   ;; TODO: change to glGetStringi ...
   (define EXT_memory_object (gl:QueryExtension "GL_EXT_memory_object"))

   (define GL_TEXTURE_TILING_EXT             #x9580)
   (define GL_DEDICATED_MEMORY_OBJECT_EXT    #x9581)
   (define GL_PROTECTED_MEMORY_OBJECT_EXT    #x959B)
   (define GL_NUM_TILING_TYPES_EXT           #x9582)
   (define GL_TILING_TYPES_EXT               #x9583)
   (define GL_OPTIMAL_TILING_EXT             #x9584)
   (define GL_LINEAR_TILING_EXT              #x9585)
   (define GL_NUM_DEVICE_UUIDS_EXT           #x9596)
   (define GL_DEVICE_UUID_EXT                #x9597)
   (define GL_DRIVER_UUID_EXT                #x9598)
   (define GL_UUID_SIZE_EXT                  16)

   (setq GL gl:GetProcAddress)
   ;; GLAPI void APIENTRY glGetUnsignedBytevEXT (GLenum pname, GLubyte *data);
   ;; GLAPI void APIENTRY glGetUnsignedBytei_vEXT (GLenum target, GLuint index, GLubyte *data);
   ;; GLAPI void APIENTRY glDeleteMemoryObjectsEXT (GLsizei n, const GLuint *memoryObjects);
   ;; GLAPI GLboolean APIENTRY glIsMemoryObjectEXT (GLuint memoryObject);
   (define glCreateMemoryObjectsEXT (GL fft-void "glCreateMemoryObjectsEXT" GLsizei (fft& GLuint)))
   ;; GLAPI void APIENTRY glMemoryObjectParameterivEXT (GLuint memoryObject, GLenum pname, const GLint *params);
   ;; GLAPI void APIENTRY glGetMemoryObjectParameterivEXT (GLuint memoryObject, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glTexStorageMem2DEXT (GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTexStorageMem2DMultisampleEXT (GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTexStorageMem3DEXT (GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTexStorageMem3DMultisampleEXT (GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glBufferStorageMemEXT (GLenum target, GLsizeiptr size, GLuint memory, GLuint64 offset);
   (define glTextureStorageMem2DEXT (GL fft-void "glTextureStorageMem2DEXT" GLuint GLsizei GLenum GLsizei GLsizei GLuint GLuint64))
   ;; GLAPI void APIENTRY glTextureStorageMem2DMultisampleEXT (GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTextureStorageMem3DEXT (GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTextureStorageMem3DMultisampleEXT (GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glNamedBufferStorageMemEXT (GLuint buffer, GLsizeiptr size, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTexStorageMem1DEXT (GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset);
   ;; GLAPI void APIENTRY glTextureStorageMem1DEXT (GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset);

))
