; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_occlusion_query.txt

; ARB_occlusion_query                               (included in OpenGL 1.5)
;
; Version
;  Date: April 21, 2007
;  Revision: 7
;
; Number
;  ARB Extension #29

(define-library (OpenGL ARB occlusion_query)

(import (scheme core)
   (OpenGL platform))

(export  ARB_occlusion_query

; ----------------------------
; New Procedures and Functions
;
   glGenQueries
   glDeleteQueries
   glIsQuery
   glBeginQuery
   glEndQuery
   glGetQueryiv
   glGetQueryObjectiv
   glGetQueryObjectuiv

; ----------
; New Tokens
;
   GL_SAMPLES_PASSED

   GL_QUERY_COUNTER_BITS
   GL_CURRENT_QUERY

   GL_QUERY_RESULT
   GL_QUERY_RESULT_AVAILABLE
)

; --------------------------------------------------------------------------
(begin
   (define ARB_occlusion_query (gl:QueryExtension "GL_ARB_occlusion_query"))

   (setq GL gl:GetProcAddress)
   (define glGenQueries (GL GLvoid "GenQueriesARB" GLsizei GLuint*))
   (define glDeleteQueries (GL GLvoid "DeleteQueriesARB" GLsizei GLuint*))
   (define glIsQuery (GL GLboolean "IsQueryARB" GLuint))
   (define glBeginQuery (GL GLvoid "BeginQueryARB" GLenum GLuint))
   (define glEndQuery (GL GLvoid "EndQueryARB" GLenum))
   (define glGetQueryiv (GL GLvoid "GetQueryivARB" GLenum GLenum GLint*))
   (define glGetQueryObjectiv (GL GLvoid "GetQueryObjectivARB" GLuint GLenum GLint*))
   (define glGetQueryObjectuiv (GL GLvoid "GetQueryObjectuivARB" GLuint GLenum GLuint*))

   (define GL_SAMPLES_PASSED #x8914)
   (define GL_QUERY_COUNTER_BITS #x8864)
   (define GL_CURRENT_QUERY #x8865)
   (define GL_QUERY_RESULT #x8866)
   (define GL_QUERY_RESULT_AVAILABLE #x8867)

))
