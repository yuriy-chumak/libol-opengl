; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_texture_object.txt

; EXT_texture_object                               (included in OpenGL 1.1)
;
; Texture state may be stored in a GL object, for greater efficiency.
;
; Version
;  $Date: 1995/10/03 05:39:56 $ $Revision: 1.27 $
;
; Number
;  20

(define-library (OpenGL EXT texture_object)

(import (scheme core)
   (OpenGL platform))

(export  EXT_texture_object

; ----------------------------
; New Procedures and Functions
;
   glGenTextures
   glDeleteTextures
   glBindTexture
   glPrioritizeTextures
   glAreTexturesResident
   glIsTexture

; ----------
; New Tokens
;
   GL_TEXTURE_PRIORITY
   GL_TEXTURE_RESIDENT
   GL_TEXTURE_1D_BINDING
   GL_TEXTURE_2D_BINDING
   GL_TEXTURE_3D_BINDING
)

; ------------------------------------------------------------------------
(begin
   (define EXT_texture_object (gl:QueryExtension "GL_EXT_texture_object"))

   (setq GL gl:GetProcAddress)
   (define glGenTextures (GL GLvoid "glGenTexturesEXT" GLsizei GLuint*))
   (define glDeleteTextures (GL GLvoid "glDeleteTexturesEXT" GLsizei GLuint*))
   (define glBindTexture (GL GLvoid "glBindTextureEXT" GLenum GLuint))
   (define glPrioritizeTextures (GL GLvoid "glPrioritizeTexturesEXT" GLsizei GLuint* (fft* GLclampf)))
   (define glAreTexturesResident (GL GLboolean "glAreTexturesResidentEXT" GLsizei GLuint* GLboolean*))
   (define glIsTexture (GL GLboolean "glIsTextureEXT" GLuint))

   (define GL_TEXTURE_PRIORITY            #x8066)
   (define GL_TEXTURE_RESIDENT            #x8067)
   (define GL_TEXTURE_1D_BINDING          #x8068)
   (define GL_TEXTURE_2D_BINDING          #x8069)
   (define GL_TEXTURE_3D_BINDING          #x806A)

))
