; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_framebuffer_object.txt

; EXT_framebuffer_object                               (included in OpenGL 3.0)
;
; Version
;  Last Modified Date: October 6, 2016
;  Revision: #123
;
; Number
;  310

(define-library (OpenGL EXT framebuffer_object)

(import (scheme core)
   (OpenGL platform))

(export  EXT_framebuffer_object

; ----------------------------
; New Procedures and Functions
;
   glIsRenderbuffer
   glBindRenderbuffer
   glDeleteRenderbuffers
   glGenRenderbuffers

   glRenderbufferStorage

   glGetRenderbufferParameteriv

   glIsFramebuffer
   glBindFramebuffer
   glDeleteFramebuffers
   glGenFramebuffers

   glCheckFramebufferStatus

   glFramebufferTexture1D
   glFramebufferTexture2D
   glFramebufferTexture3D

   glFramebufferRenderbuffer

   glGetFramebufferAttachmentParameteriv

   glGenerateMipmap

; ----------
; New Tokens
;
   GL_FRAMEBUFFER
   GL_RENDERBUFFER

   GL_STENCIL_INDEX1
   GL_STENCIL_INDEX4
   GL_STENCIL_INDEX8
   GL_STENCIL_INDEX16

   GL_RENDERBUFFER_WIDTH
   GL_RENDERBUFFER_HEIGHT
   GL_RENDERBUFFER_INTERNAL_FORMAT
   GL_RENDERBUFFER_RED_SIZE
   GL_RENDERBUFFER_GREEN_SIZE
   GL_RENDERBUFFER_BLUE_SIZE
   GL_RENDERBUFFER_ALPHA_SIZE
   GL_RENDERBUFFER_DEPTH_SIZE
   GL_RENDERBUFFER_STENCIL_SIZE

   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET

   GL_COLOR_ATTACHMENT0
   GL_COLOR_ATTACHMENT1
   GL_COLOR_ATTACHMENT2
   GL_COLOR_ATTACHMENT3
   GL_COLOR_ATTACHMENT4
   GL_COLOR_ATTACHMENT5
   GL_COLOR_ATTACHMENT6
   GL_COLOR_ATTACHMENT7
   GL_COLOR_ATTACHMENT8
   GL_COLOR_ATTACHMENT9
   GL_COLOR_ATTACHMENT10
   GL_COLOR_ATTACHMENT11
   GL_COLOR_ATTACHMENT12
   GL_COLOR_ATTACHMENT13
   GL_COLOR_ATTACHMENT14
   GL_COLOR_ATTACHMENT15
   GL_DEPTH_ATTACHMENT
   GL_STENCIL_ATTACHMENT

   GL_FRAMEBUFFER_COMPLETE
   GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
   GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
   GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS
   GL_FRAMEBUFFER_INCOMPLETE_FORMATS
   GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
   GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
   GL_FRAMEBUFFER_UNSUPPORTED

   GL_FRAMEBUFFER_BINDING
   GL_RENDERBUFFER_BINDING
   GL_MAX_COLOR_ATTACHMENTS
   GL_MAX_RENDERBUFFER_SIZE

   GL_INVALID_FRAMEBUFFER_OPERATION
)

; -------------------------------------------------------------------------------
(begin
   (define EXT_framebuffer_object (gl:QueryExtension "GL_EXT_framebuffer_object"))
   (setq GL gl:GetProcAddress)

   (define glIsRenderbuffer (GL GLboolean "glIsRenderbufferEXT" GLuint))
   (define glBindRenderbuffer (GL GLvoid "glBindRenderbufferEXT" GLenum GLuint))
   (define glDeleteRenderbuffers (GL GLvoid "glDeleteRenderbuffersEXT" GLsizei GLuint*))
   (define glGenRenderbuffers (GL GLvoid "glGenRenderbuffersEXT" GLsizei GLuint*))

   (define glRenderbufferStorage (GL GLvoid "glRenderbufferStorageEXT" GLenum GLenum GLsizei GLsizei))
   (define glGetRenderbufferParameteriv (GL GLvoid "glGetRenderbufferParameterivEXT" GLenum GLenum GLint*))

   (define glIsFramebuffer (GL GLboolean "glIsFramebufferEXT" GLuint))
   (define glBindFramebuffer (GL GLvoid "glBindFramebufferEXT" GLenum GLuint))
   (define glDeleteFramebuffers (GL GLvoid "glDeleteFramebuffersEXT" GLsizei GLuint*))
   (define glGenFramebuffers (GL GLvoid "glGenFramebuffersEXT" GLsizei GLuint&))

   (define glCheckFramebufferStatus (GL GLenum "glCheckFramebufferStatusEXT" GLenum))

   (define glFramebufferTexture1D (GL GLvoid "glFramebufferTexture1DEXT" GLenum GLenum GLenum GLuint GLint))
   (define glFramebufferTexture2D (GL GLvoid "glFramebufferTexture2DEXT" GLenum GLenum GLenum GLuint GLint))
   (define glFramebufferTexture3D (GL GLvoid "glFramebufferTexture3DEXT" GLenum GLenum GLenum GLuint GLint GLint))

   (define glFramebufferRenderbuffer (GL GLvoid "glFramebufferRenderbufferEXT" GLenum GLenum GLenum GLuint))

   (define glGetFramebufferAttachmentParameteriv (GL GLvoid "glGetFramebufferAttachmentParameterivEXT" GLenum GLenum GLenum GLint*))

   (define glGenerateMipmap (GL GLvoid "glGenerateMipmapEXT" GLenum))


   (define GL_FRAMEBUFFER                     #x8D40)
   (define GL_RENDERBUFFER                    #x8D41)
   (define GL_STENCIL_INDEX1                  #x8D46)
   (define GL_STENCIL_INDEX4                  #x8D47)
   (define GL_STENCIL_INDEX8                  #x8D48)
   (define GL_STENCIL_INDEX16                 #x8D49)
   (define GL_RENDERBUFFER_WIDTH              #x8D42)
   (define GL_RENDERBUFFER_HEIGHT             #x8D43)
   (define GL_RENDERBUFFER_INTERNAL_FORMAT    #x8D44)
   (define GL_RENDERBUFFER_RED_SIZE           #x8D50)
   (define GL_RENDERBUFFER_GREEN_SIZE         #x8D51)
   (define GL_RENDERBUFFER_BLUE_SIZE          #x8D52)
   (define GL_RENDERBUFFER_ALPHA_SIZE         #x8D53)
   (define GL_RENDERBUFFER_DEPTH_SIZE         #x8D54)
   (define GL_RENDERBUFFER_STENCIL_SIZE       #x8D55)
   (define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE            #x8CD0)
   (define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME            #x8CD1)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL          #x8CD2)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE  #x8CD3)
   (define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET     #x8CD4)
   (define GL_COLOR_ATTACHMENT0                #x8CE0)
   (define GL_COLOR_ATTACHMENT1                #x8CE1)
   (define GL_COLOR_ATTACHMENT2                #x8CE2)
   (define GL_COLOR_ATTACHMENT3                #x8CE3)
   (define GL_COLOR_ATTACHMENT4                #x8CE4)
   (define GL_COLOR_ATTACHMENT5                #x8CE5)
   (define GL_COLOR_ATTACHMENT6                #x8CE6)
   (define GL_COLOR_ATTACHMENT7                #x8CE7)
   (define GL_COLOR_ATTACHMENT8                #x8CE8)
   (define GL_COLOR_ATTACHMENT9                #x8CE9)
   (define GL_COLOR_ATTACHMENT10               #x8CEA)
   (define GL_COLOR_ATTACHMENT11               #x8CEB)
   (define GL_COLOR_ATTACHMENT12               #x8CEC)
   (define GL_COLOR_ATTACHMENT13               #x8CED)
   (define GL_COLOR_ATTACHMENT14               #x8CEE)
   (define GL_COLOR_ATTACHMENT15               #x8CEF)
   (define GL_DEPTH_ATTACHMENT                 #x8D00)
   (define GL_STENCIL_ATTACHMENT               #x8D20)
   (define GL_FRAMEBUFFER_COMPLETE                          #x8CD5)
   (define GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT             #x8CD6)
   (define GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT     #x8CD7)
   (define GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS             #x8CD9)
   (define GL_FRAMEBUFFER_INCOMPLETE_FORMATS                #x8CDA)
   (define GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER            #x8CDB)
   (define GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER            #x8CDC)
   (define GL_FRAMEBUFFER_UNSUPPORTED                       #x8CDD)
   (define GL_FRAMEBUFFER_BINDING             #x8CA6)
   (define GL_RENDERBUFFER_BINDING            #x8CA7)
   (define GL_MAX_COLOR_ATTACHMENTS           #x8CDF)
   (define GL_MAX_RENDERBUFFER_SIZE           #x84E8)
   (define GL_INVALID_FRAMEBUFFER_OPERATION   #x0506)

))
