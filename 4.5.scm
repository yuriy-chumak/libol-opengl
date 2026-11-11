; OpenGL 4.5 (11 Aug 2014) GLSL 4.50
(define-library (OpenGL 4.5)
(export
      (exports (OpenGL 4.4))

   GL_VERSION_4_4

   ;; #define GL_CONTEXT_LOST                   0x0507
   ;; #define GL_NEGATIVE_ONE_TO_ONE            0x935E
   ;; #define GL_ZERO_TO_ONE                    0x935F
   ;; #define GL_CLIP_ORIGIN                    0x935C
   ;; #define GL_CLIP_DEPTH_MODE                0x935D
   ;; #define GL_QUERY_WAIT_INVERTED            0x8E17
   ;; #define GL_QUERY_NO_WAIT_INVERTED         0x8E18
   ;; #define GL_QUERY_BY_REGION_WAIT_INVERTED  0x8E19
   ;; #define GL_QUERY_BY_REGION_NO_WAIT_INVERTED 0x8E1A
   ;; #define GL_MAX_CULL_DISTANCES             0x82F9
   ;; #define GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES 0x82FA
   ;; #define GL_TEXTURE_TARGET                 0x1006
   ;; #define GL_QUERY_TARGET                   0x82EA
   ;; #define GL_GUILTY_CONTEXT_RESET           0x8253
   ;; #define GL_INNOCENT_CONTEXT_RESET         0x8254
   ;; #define GL_UNKNOWN_CONTEXT_RESET          0x8255
   ;; #define GL_RESET_NOTIFICATION_STRATEGY    0x8256
   ;; #define GL_LOSE_CONTEXT_ON_RESET          0x8252
   ;; #define GL_NO_RESET_NOTIFICATION          0x8261
   ;; #define GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT 0x00000004
   ;; #define GL_COLOR_TABLE                    0x80D0
   ;; #define GL_POST_CONVOLUTION_COLOR_TABLE   0x80D1
   ;; #define GL_POST_COLOR_MATRIX_COLOR_TABLE  0x80D2
   ;; #define GL_PROXY_COLOR_TABLE              0x80D3
   ;; #define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE 0x80D4
   ;; #define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE 0x80D5
   ;; #define GL_CONVOLUTION_1D                 0x8010
   ;; #define GL_CONVOLUTION_2D                 0x8011
   ;; #define GL_SEPARABLE_2D                   0x8012
   ;; #define GL_HISTOGRAM                      0x8024
   ;; #define GL_PROXY_HISTOGRAM                0x8025
   ;; #define GL_MINMAX                         0x802E
   ;; #define GL_CONTEXT_RELEASE_BEHAVIOR       0x82FB
   ;; #define GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH 0x82FC
   ;; #ifdef GL_GLEXT_PROTOTYPES
   ;; GLAPI void APIENTRY glClipControl (GLenum origin, GLenum depth);
   ;; GLAPI void APIENTRY glCreateTransformFeedbacks (GLsizei n, GLuint *ids);
   ;; GLAPI void APIENTRY glTransformFeedbackBufferBase (GLuint xfb, GLuint index, GLuint buffer);
   ;; GLAPI void APIENTRY glTransformFeedbackBufferRange (GLuint xfb, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glGetTransformFeedbackiv (GLuint xfb, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetTransformFeedbacki_v (GLuint xfb, GLenum pname, GLuint index, GLint *param);
   ;; GLAPI void APIENTRY glGetTransformFeedbacki64_v (GLuint xfb, GLenum pname, GLuint index, GLint64 *param);
   ;; GLAPI void APIENTRY glCreateBuffers (GLsizei n, GLuint *buffers);
   ;; GLAPI void APIENTRY glNamedBufferStorage (GLuint buffer, GLsizeiptr size, const void *data, GLbitfield flags);
   ;; GLAPI void APIENTRY glNamedBufferData (GLuint buffer, GLsizeiptr size, const void *data, GLenum usage);
   ;; GLAPI void APIENTRY glNamedBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr size, const void *data);
   ;; GLAPI void APIENTRY glCopyNamedBufferSubData (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glClearNamedBufferData (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void *data);
   ;; GLAPI void APIENTRY glClearNamedBufferSubData (GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void *data);
   ;; GLAPI void *APIENTRY glMapNamedBuffer (GLuint buffer, GLenum access);
   ;; GLAPI void *APIENTRY glMapNamedBufferRange (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
   ;; GLAPI GLboolean APIENTRY glUnmapNamedBuffer (GLuint buffer);
   ;; GLAPI void APIENTRY glFlushMappedNamedBufferRange (GLuint buffer, GLintptr offset, GLsizeiptr length);
   ;; GLAPI void APIENTRY glGetNamedBufferParameteriv (GLuint buffer, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetNamedBufferParameteri64v (GLuint buffer, GLenum pname, GLint64 *params);
   ;; GLAPI void APIENTRY glGetNamedBufferPointerv (GLuint buffer, GLenum pname, void **params);
   ;; GLAPI void APIENTRY glGetNamedBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr size, void *data);
   ;; GLAPI void APIENTRY glCreateFramebuffers (GLsizei n, GLuint *framebuffers);
   ;; GLAPI void APIENTRY glNamedFramebufferRenderbuffer (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
   ;; GLAPI void APIENTRY glNamedFramebufferParameteri (GLuint framebuffer, GLenum pname, GLint param);
   ;; GLAPI void APIENTRY glNamedFramebufferTexture (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
   ;; GLAPI void APIENTRY glNamedFramebufferTextureLayer (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
   ;; GLAPI void APIENTRY glNamedFramebufferDrawBuffer (GLuint framebuffer, GLenum buf);
   ;; GLAPI void APIENTRY glNamedFramebufferDrawBuffers (GLuint framebuffer, GLsizei n, const GLenum *bufs);
   ;; GLAPI void APIENTRY glNamedFramebufferReadBuffer (GLuint framebuffer, GLenum src);
   ;; GLAPI void APIENTRY glInvalidateNamedFramebufferData (GLuint framebuffer, GLsizei numAttachments, const GLenum *attachments);
   ;; GLAPI void APIENTRY glInvalidateNamedFramebufferSubData (GLuint framebuffer, GLsizei numAttachments, const GLenum *attachments, GLint x, GLint y, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glClearNamedFramebufferiv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLint *value);
   ;; GLAPI void APIENTRY glClearNamedFramebufferuiv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLuint *value);
   ;; GLAPI void APIENTRY glClearNamedFramebufferfv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLfloat *value);
   ;; GLAPI void APIENTRY glClearNamedFramebufferfi (GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
   ;; GLAPI void APIENTRY glBlitNamedFramebuffer (GLuint readFramebuffer, GLuint drawFramebuffer, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
   ;; GLAPI GLenum APIENTRY glCheckNamedFramebufferStatus (GLuint framebuffer, GLenum target);
   ;; GLAPI void APIENTRY glGetNamedFramebufferParameteriv (GLuint framebuffer, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetNamedFramebufferAttachmentParameteriv (GLuint framebuffer, GLenum attachment, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glCreateRenderbuffers (GLsizei n, GLuint *renderbuffers);
   ;; GLAPI void APIENTRY glNamedRenderbufferStorage (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glNamedRenderbufferStorageMultisample (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glGetNamedRenderbufferParameteriv (GLuint renderbuffer, GLenum pname, GLint *params);
   glCreateTextures
   ;; GLAPI void APIENTRY glTextureBuffer (GLuint texture, GLenum internalformat, GLuint buffer);
   ;; GLAPI void APIENTRY glTextureBufferRange (GLuint texture, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glTextureStorage1D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width);
   ;; GLAPI void APIENTRY glTextureStorage2D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glTextureStorage3D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
   ;; GLAPI void APIENTRY glTextureStorage2DMultisample (GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
   ;; GLAPI void APIENTRY glTextureStorage3DMultisample (GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
   ;; GLAPI void APIENTRY glTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
   ;; GLAPI void APIENTRY glTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
   ;; GLAPI void APIENTRY glTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
   ;; GLAPI void APIENTRY glCompressedTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
   ;; GLAPI void APIENTRY glCompressedTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
   ;; GLAPI void APIENTRY glCompressedTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
   ;; GLAPI void APIENTRY glCopyTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
   ;; GLAPI void APIENTRY glCopyTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glCopyTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glTextureParameterf (GLuint texture, GLenum pname, GLfloat param);
   ;; GLAPI void APIENTRY glTextureParameterfv (GLuint texture, GLenum pname, const GLfloat *param);
   glTextureParameteri
   ;; GLAPI void APIENTRY glTextureParameterIiv (GLuint texture, GLenum pname, const GLint *params);
   ;; GLAPI void APIENTRY glTextureParameterIuiv (GLuint texture, GLenum pname, const GLuint *params);
   ;; GLAPI void APIENTRY glTextureParameteriv (GLuint texture, GLenum pname, const GLint *param);
   ;; GLAPI void APIENTRY glGenerateTextureMipmap (GLuint texture);
   ;; GLAPI void APIENTRY glBindTextureUnit (GLuint unit, GLuint texture);
   ;; GLAPI void APIENTRY glGetTextureImage (GLuint texture, GLint level, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetCompressedTextureImage (GLuint texture, GLint level, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetTextureLevelParameterfv (GLuint texture, GLint level, GLenum pname, GLfloat *params);
   ;; GLAPI void APIENTRY glGetTextureLevelParameteriv (GLuint texture, GLint level, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetTextureParameterfv (GLuint texture, GLenum pname, GLfloat *params);
   ;; GLAPI void APIENTRY glGetTextureParameterIiv (GLuint texture, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetTextureParameterIuiv (GLuint texture, GLenum pname, GLuint *params);
   ;; GLAPI void APIENTRY glGetTextureParameteriv (GLuint texture, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glCreateVertexArrays (GLsizei n, GLuint *arrays);
   ;; GLAPI void APIENTRY glDisableVertexArrayAttrib (GLuint vaobj, GLuint index);
   ;; GLAPI void APIENTRY glEnableVertexArrayAttrib (GLuint vaobj, GLuint index);
   ;; GLAPI void APIENTRY glVertexArrayElementBuffer (GLuint vaobj, GLuint buffer);
   ;; GLAPI void APIENTRY glVertexArrayVertexBuffer (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
   ;; GLAPI void APIENTRY glVertexArrayVertexBuffers (GLuint vaobj, GLuint first, GLsizei count, const GLuint *buffers, const GLintptr *offsets, const GLsizei *strides);
   ;; GLAPI void APIENTRY glVertexArrayAttribBinding (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
   ;; GLAPI void APIENTRY glVertexArrayAttribFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
   ;; GLAPI void APIENTRY glVertexArrayAttribIFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
   ;; GLAPI void APIENTRY glVertexArrayAttribLFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
   ;; GLAPI void APIENTRY glVertexArrayBindingDivisor (GLuint vaobj, GLuint bindingindex, GLuint divisor);
   ;; GLAPI void APIENTRY glGetVertexArrayiv (GLuint vaobj, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetVertexArrayIndexediv (GLuint vaobj, GLuint index, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetVertexArrayIndexed64iv (GLuint vaobj, GLuint index, GLenum pname, GLint64 *param);
   ;; GLAPI void APIENTRY glCreateSamplers (GLsizei n, GLuint *samplers);
   ;; GLAPI void APIENTRY glCreateProgramPipelines (GLsizei n, GLuint *pipelines);
   ;; GLAPI void APIENTRY glCreateQueries (GLenum target, GLsizei n, GLuint *ids);
   ;; GLAPI void APIENTRY glGetQueryBufferObjecti64v (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glGetQueryBufferObjectiv (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glGetQueryBufferObjectui64v (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glGetQueryBufferObjectuiv (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glMemoryBarrierByRegion (GLbitfield barriers);
   ;; GLAPI void APIENTRY glGetTextureSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetCompressedTextureSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei bufSize, void *pixels);
   ;; GLAPI GLenum APIENTRY glGetGraphicsResetStatus (void);
   ;; GLAPI void APIENTRY glGetnCompressedTexImage (GLenum target, GLint lod, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetnTexImage (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetnUniformdv (GLuint program, GLint location, GLsizei bufSize, GLdouble *params);
   ;; GLAPI void APIENTRY glGetnUniformfv (GLuint program, GLint location, GLsizei bufSize, GLfloat *params);
   ;; GLAPI void APIENTRY glGetnUniformiv (GLuint program, GLint location, GLsizei bufSize, GLint *params);
   ;; GLAPI void APIENTRY glGetnUniformuiv (GLuint program, GLint location, GLsizei bufSize, GLuint *params);
   ;; GLAPI void APIENTRY glReadnPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void *data);
   ;; GLAPI void APIENTRY glGetnMapdv (GLenum target, GLenum query, GLsizei bufSize, GLdouble *v);
   ;; GLAPI void APIENTRY glGetnMapfv (GLenum target, GLenum query, GLsizei bufSize, GLfloat *v);
   ;; GLAPI void APIENTRY glGetnMapiv (GLenum target, GLenum query, GLsizei bufSize, GLint *v);
   ;; GLAPI void APIENTRY glGetnPixelMapfv (GLenum map, GLsizei bufSize, GLfloat *values);
   ;; GLAPI void APIENTRY glGetnPixelMapuiv (GLenum map, GLsizei bufSize, GLuint *values);
   ;; GLAPI void APIENTRY glGetnPixelMapusv (GLenum map, GLsizei bufSize, GLushort *values);
   ;; GLAPI void APIENTRY glGetnPolygonStipple (GLsizei bufSize, GLubyte *pattern);
   ;; GLAPI void APIENTRY glGetnColorTable (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void *table);
   ;; GLAPI void APIENTRY glGetnConvolutionFilter (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void *image);
   ;; GLAPI void APIENTRY glGetnSeparableFilter (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void *row, GLsizei columnBufSize, void *column, void *span);
   ;; GLAPI void APIENTRY glGetnHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void *values);
   ;; GLAPI void APIENTRY glGetnMinmax (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void *values);
   ;; GLAPI void APIENTRY glTextureBarrier (void);
)

(import (scheme core)
        (OpenGL 4.4))

(begin
   (define GL_VERSION_4_5 1)

   ;; #define GL_CONTEXT_LOST                   0x0507
   ;; #define GL_NEGATIVE_ONE_TO_ONE            0x935E
   ;; #define GL_ZERO_TO_ONE                    0x935F
   ;; #define GL_CLIP_ORIGIN                    0x935C
   ;; #define GL_CLIP_DEPTH_MODE                0x935D
   ;; #define GL_QUERY_WAIT_INVERTED            0x8E17
   ;; #define GL_QUERY_NO_WAIT_INVERTED         0x8E18
   ;; #define GL_QUERY_BY_REGION_WAIT_INVERTED  0x8E19
   ;; #define GL_QUERY_BY_REGION_NO_WAIT_INVERTED 0x8E1A
   ;; #define GL_MAX_CULL_DISTANCES             0x82F9
   ;; #define GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES 0x82FA
   ;; #define GL_TEXTURE_TARGET                 0x1006
   ;; #define GL_QUERY_TARGET                   0x82EA
   ;; #define GL_GUILTY_CONTEXT_RESET           0x8253
   ;; #define GL_INNOCENT_CONTEXT_RESET         0x8254
   ;; #define GL_UNKNOWN_CONTEXT_RESET          0x8255
   ;; #define GL_RESET_NOTIFICATION_STRATEGY    0x8256
   ;; #define GL_LOSE_CONTEXT_ON_RESET          0x8252
   ;; #define GL_NO_RESET_NOTIFICATION          0x8261
   ;; #define GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT 0x00000004
   ;; #define GL_COLOR_TABLE                    0x80D0
   ;; #define GL_POST_CONVOLUTION_COLOR_TABLE   0x80D1
   ;; #define GL_POST_COLOR_MATRIX_COLOR_TABLE  0x80D2
   ;; #define GL_PROXY_COLOR_TABLE              0x80D3
   ;; #define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE 0x80D4
   ;; #define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE 0x80D5
   ;; #define GL_CONVOLUTION_1D                 0x8010
   ;; #define GL_CONVOLUTION_2D                 0x8011
   ;; #define GL_SEPARABLE_2D                   0x8012
   ;; #define GL_HISTOGRAM                      0x8024
   ;; #define GL_PROXY_HISTOGRAM                0x8025
   ;; #define GL_MINMAX                         0x802E
   ;; #define GL_CONTEXT_RELEASE_BEHAVIOR       0x82FB
   ;; #define GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH 0x82FC

   (define GL gl:GetProcAddress)
   (setq void GLvoid)
   ;; GLAPI void APIENTRY glClipControl (GLenum origin, GLenum depth);
   ;; GLAPI void APIENTRY glCreateTransformFeedbacks (GLsizei n, GLuint *ids);
   ;; GLAPI void APIENTRY glTransformFeedbackBufferBase (GLuint xfb, GLuint index, GLuint buffer);
   ;; GLAPI void APIENTRY glTransformFeedbackBufferRange (GLuint xfb, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glGetTransformFeedbackiv (GLuint xfb, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetTransformFeedbacki_v (GLuint xfb, GLenum pname, GLuint index, GLint *param);
   ;; GLAPI void APIENTRY glGetTransformFeedbacki64_v (GLuint xfb, GLenum pname, GLuint index, GLint64 *param);
   ;; GLAPI void APIENTRY glCreateBuffers (GLsizei n, GLuint *buffers);
   ;; GLAPI void APIENTRY glNamedBufferStorage (GLuint buffer, GLsizeiptr size, const void *data, GLbitfield flags);
   ;; GLAPI void APIENTRY glNamedBufferData (GLuint buffer, GLsizeiptr size, const void *data, GLenum usage);
   ;; GLAPI void APIENTRY glNamedBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr size, const void *data);
   ;; GLAPI void APIENTRY glCopyNamedBufferSubData (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glClearNamedBufferData (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void *data);
   ;; GLAPI void APIENTRY glClearNamedBufferSubData (GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void *data);
   ;; GLAPI void *APIENTRY glMapNamedBuffer (GLuint buffer, GLenum access);
   ;; GLAPI void *APIENTRY glMapNamedBufferRange (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
   ;; GLAPI GLboolean APIENTRY glUnmapNamedBuffer (GLuint buffer);
   ;; GLAPI void APIENTRY glFlushMappedNamedBufferRange (GLuint buffer, GLintptr offset, GLsizeiptr length);
   ;; GLAPI void APIENTRY glGetNamedBufferParameteriv (GLuint buffer, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetNamedBufferParameteri64v (GLuint buffer, GLenum pname, GLint64 *params);
   ;; GLAPI void APIENTRY glGetNamedBufferPointerv (GLuint buffer, GLenum pname, void **params);
   ;; GLAPI void APIENTRY glGetNamedBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr size, void *data);
   ;; GLAPI void APIENTRY glCreateFramebuffers (GLsizei n, GLuint *framebuffers);
   ;; GLAPI void APIENTRY glNamedFramebufferRenderbuffer (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
   ;; GLAPI void APIENTRY glNamedFramebufferParameteri (GLuint framebuffer, GLenum pname, GLint param);
   ;; GLAPI void APIENTRY glNamedFramebufferTexture (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
   ;; GLAPI void APIENTRY glNamedFramebufferTextureLayer (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
   ;; GLAPI void APIENTRY glNamedFramebufferDrawBuffer (GLuint framebuffer, GLenum buf);
   ;; GLAPI void APIENTRY glNamedFramebufferDrawBuffers (GLuint framebuffer, GLsizei n, const GLenum *bufs);
   ;; GLAPI void APIENTRY glNamedFramebufferReadBuffer (GLuint framebuffer, GLenum src);
   ;; GLAPI void APIENTRY glInvalidateNamedFramebufferData (GLuint framebuffer, GLsizei numAttachments, const GLenum *attachments);
   ;; GLAPI void APIENTRY glInvalidateNamedFramebufferSubData (GLuint framebuffer, GLsizei numAttachments, const GLenum *attachments, GLint x, GLint y, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glClearNamedFramebufferiv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLint *value);
   ;; GLAPI void APIENTRY glClearNamedFramebufferuiv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLuint *value);
   ;; GLAPI void APIENTRY glClearNamedFramebufferfv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLfloat *value);
   ;; GLAPI void APIENTRY glClearNamedFramebufferfi (GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
   ;; GLAPI void APIENTRY glBlitNamedFramebuffer (GLuint readFramebuffer, GLuint drawFramebuffer, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
   ;; GLAPI GLenum APIENTRY glCheckNamedFramebufferStatus (GLuint framebuffer, GLenum target);
   ;; GLAPI void APIENTRY glGetNamedFramebufferParameteriv (GLuint framebuffer, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetNamedFramebufferAttachmentParameteriv (GLuint framebuffer, GLenum attachment, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glCreateRenderbuffers (GLsizei n, GLuint *renderbuffers);
   ;; GLAPI void APIENTRY glNamedRenderbufferStorage (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glNamedRenderbufferStorageMultisample (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glGetNamedRenderbufferParameteriv (GLuint renderbuffer, GLenum pname, GLint *params);
   (define glCreateTextures (GL void "glCreateTextures" GLenum GLsizei (fft& GLuint)))
   ;; GLAPI void APIENTRY glTextureBuffer (GLuint texture, GLenum internalformat, GLuint buffer);
   ;; GLAPI void APIENTRY glTextureBufferRange (GLuint texture, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
   ;; GLAPI void APIENTRY glTextureStorage1D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width);
   ;; GLAPI void APIENTRY glTextureStorage2D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glTextureStorage3D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
   ;; GLAPI void APIENTRY glTextureStorage2DMultisample (GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
   ;; GLAPI void APIENTRY glTextureStorage3DMultisample (GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
   ;; GLAPI void APIENTRY glTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
   ;; GLAPI void APIENTRY glTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
   ;; GLAPI void APIENTRY glTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
   ;; GLAPI void APIENTRY glCompressedTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
   ;; GLAPI void APIENTRY glCompressedTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
   ;; GLAPI void APIENTRY glCompressedTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
   ;; GLAPI void APIENTRY glCopyTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
   ;; GLAPI void APIENTRY glCopyTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glCopyTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
   ;; GLAPI void APIENTRY glTextureParameterf (GLuint texture, GLenum pname, GLfloat param);
   ;; GLAPI void APIENTRY glTextureParameterfv (GLuint texture, GLenum pname, const GLfloat *param);
   (define glTextureParameteri (GL void "glTextureParameteri" GLuint GLenum GLint))
   ;; GLAPI void APIENTRY glTextureParameterIiv (GLuint texture, GLenum pname, const GLint *params);
   ;; GLAPI void APIENTRY glTextureParameterIuiv (GLuint texture, GLenum pname, const GLuint *params);
   ;; GLAPI void APIENTRY glTextureParameteriv (GLuint texture, GLenum pname, const GLint *param);
   ;; GLAPI void APIENTRY glGenerateTextureMipmap (GLuint texture);
   ;; GLAPI void APIENTRY glBindTextureUnit (GLuint unit, GLuint texture);
   ;; GLAPI void APIENTRY glGetTextureImage (GLuint texture, GLint level, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetCompressedTextureImage (GLuint texture, GLint level, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetTextureLevelParameterfv (GLuint texture, GLint level, GLenum pname, GLfloat *params);
   ;; GLAPI void APIENTRY glGetTextureLevelParameteriv (GLuint texture, GLint level, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetTextureParameterfv (GLuint texture, GLenum pname, GLfloat *params);
   ;; GLAPI void APIENTRY glGetTextureParameterIiv (GLuint texture, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glGetTextureParameterIuiv (GLuint texture, GLenum pname, GLuint *params);
   ;; GLAPI void APIENTRY glGetTextureParameteriv (GLuint texture, GLenum pname, GLint *params);
   ;; GLAPI void APIENTRY glCreateVertexArrays (GLsizei n, GLuint *arrays);
   ;; GLAPI void APIENTRY glDisableVertexArrayAttrib (GLuint vaobj, GLuint index);
   ;; GLAPI void APIENTRY glEnableVertexArrayAttrib (GLuint vaobj, GLuint index);
   ;; GLAPI void APIENTRY glVertexArrayElementBuffer (GLuint vaobj, GLuint buffer);
   ;; GLAPI void APIENTRY glVertexArrayVertexBuffer (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
   ;; GLAPI void APIENTRY glVertexArrayVertexBuffers (GLuint vaobj, GLuint first, GLsizei count, const GLuint *buffers, const GLintptr *offsets, const GLsizei *strides);
   ;; GLAPI void APIENTRY glVertexArrayAttribBinding (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
   ;; GLAPI void APIENTRY glVertexArrayAttribFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
   ;; GLAPI void APIENTRY glVertexArrayAttribIFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
   ;; GLAPI void APIENTRY glVertexArrayAttribLFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
   ;; GLAPI void APIENTRY glVertexArrayBindingDivisor (GLuint vaobj, GLuint bindingindex, GLuint divisor);
   ;; GLAPI void APIENTRY glGetVertexArrayiv (GLuint vaobj, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetVertexArrayIndexediv (GLuint vaobj, GLuint index, GLenum pname, GLint *param);
   ;; GLAPI void APIENTRY glGetVertexArrayIndexed64iv (GLuint vaobj, GLuint index, GLenum pname, GLint64 *param);
   ;; GLAPI void APIENTRY glCreateSamplers (GLsizei n, GLuint *samplers);
   ;; GLAPI void APIENTRY glCreateProgramPipelines (GLsizei n, GLuint *pipelines);
   ;; GLAPI void APIENTRY glCreateQueries (GLenum target, GLsizei n, GLuint *ids);
   ;; GLAPI void APIENTRY glGetQueryBufferObjecti64v (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glGetQueryBufferObjectiv (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glGetQueryBufferObjectui64v (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glGetQueryBufferObjectuiv (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
   ;; GLAPI void APIENTRY glMemoryBarrierByRegion (GLbitfield barriers);
   ;; GLAPI void APIENTRY glGetTextureSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetCompressedTextureSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei bufSize, void *pixels);
   ;; GLAPI GLenum APIENTRY glGetGraphicsResetStatus (void);
   ;; GLAPI void APIENTRY glGetnCompressedTexImage (GLenum target, GLint lod, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetnTexImage (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
   ;; GLAPI void APIENTRY glGetnUniformdv (GLuint program, GLint location, GLsizei bufSize, GLdouble *params);
   ;; GLAPI void APIENTRY glGetnUniformfv (GLuint program, GLint location, GLsizei bufSize, GLfloat *params);
   ;; GLAPI void APIENTRY glGetnUniformiv (GLuint program, GLint location, GLsizei bufSize, GLint *params);
   ;; GLAPI void APIENTRY glGetnUniformuiv (GLuint program, GLint location, GLsizei bufSize, GLuint *params);
   ;; GLAPI void APIENTRY glReadnPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void *data);
   ;; GLAPI void APIENTRY glGetnMapdv (GLenum target, GLenum query, GLsizei bufSize, GLdouble *v);
   ;; GLAPI void APIENTRY glGetnMapfv (GLenum target, GLenum query, GLsizei bufSize, GLfloat *v);
   ;; GLAPI void APIENTRY glGetnMapiv (GLenum target, GLenum query, GLsizei bufSize, GLint *v);
   ;; GLAPI void APIENTRY glGetnPixelMapfv (GLenum map, GLsizei bufSize, GLfloat *values);
   ;; GLAPI void APIENTRY glGetnPixelMapuiv (GLenum map, GLsizei bufSize, GLuint *values);
   ;; GLAPI void APIENTRY glGetnPixelMapusv (GLenum map, GLsizei bufSize, GLushort *values);
   ;; GLAPI void APIENTRY glGetnPolygonStipple (GLsizei bufSize, GLubyte *pattern);
   ;; GLAPI void APIENTRY glGetnColorTable (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void *table);
   ;; GLAPI void APIENTRY glGetnConvolutionFilter (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void *image);
   ;; GLAPI void APIENTRY glGetnSeparableFilter (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void *row, GLsizei columnBufSize, void *column, void *span);
   ;; GLAPI void APIENTRY glGetnHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void *values);
   ;; GLAPI void APIENTRY glGetnMinmax (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void *values);
   ;; GLAPI void APIENTRY glTextureBarrier (void);


))
