; https://registry.khronos.org/OpenGL/extensions/EXT/EXT_vertex_array.txt

; EXT_vertex_array                               (included in OpenGL 1.1)
;
; Multiple vertices may be passed to the GL with a single function call.
;
; Version
;  $Date: 1995/10/03 05:39:58 $ $Revision: 1.16 $  FINAL
;
; Number
;  30

(define-library (OpenGL EXT vertex_array)

(import (scheme core)
   (OpenGL platform))

(export  EXT_vertex_array

; ----------------------------
; New Procedures and Functions
;
   glArrayElement
   glDrawArrays
   glVertexPointer
   glNormalPointer
   glColorPointer
   glIndexPointer
   glTexCoordPointer
   glEdgeFlagPointer
   glGetPointerv

; ----------
; New Tokens
;
   GL_VERTEX_ARRAY
   GL_NORMAL_ARRAY
   GL_COLOR_ARRAY
   GL_INDEX_ARRAY
   GL_TEXTURE_COORD_ARRAY
   GL_EDGE_FLAG_ARRAY
   GL_DOUBLE
   GL_VERTEX_ARRAY_SIZE
   GL_VERTEX_ARRAY_TYPE
   GL_VERTEX_ARRAY_STRIDE
   GL_VERTEX_ARRAY_COUNT
   GL_NORMAL_ARRAY_TYPE
   GL_NORMAL_ARRAY_STRIDE
   GL_NORMAL_ARRAY_COUNT
   GL_COLOR_ARRAY_SIZE
   GL_COLOR_ARRAY_TYPE
   GL_COLOR_ARRAY_STRIDE
   GL_COLOR_ARRAY_COUNT
   GL_INDEX_ARRAY_TYPE
   GL_INDEX_ARRAY_STRIDE
   GL_INDEX_ARRAY_COUNT
   GL_TEXTURE_COORD_ARRAY_SIZE
   GL_TEXTURE_COORD_ARRAY_TYPE
   GL_TEXTURE_COORD_ARRAY_STRIDE
   GL_TEXTURE_COORD_ARRAY_COUNT
   GL_EDGE_FLAG_ARRAY_STRIDE
   GL_EDGE_FLAG_ARRAY_COUNT
   GL_VERTEX_ARRAY_POINTER
   GL_NORMAL_ARRAY_POINTER
   GL_COLOR_ARRAY_POINTER
   GL_INDEX_ARRAY_POINTER
   GL_TEXTURE_COORD_ARRAY_POINTER
   GL_EDGE_FLAG_ARRAY_POINTER
)

; --------------------------------------------------------------------
(begin
   (define EXT_vertex_array (gl:QueryExtension "GL_EXT_vertex_array"))

   (setq GL gl:GetProcAddress)
   (define glArrayElement (GL GLvoid "glArrayElementEXT" GLint))
   (define glDrawArrays (GL GLvoid "glDrawArraysEXT" GLenum GLint GLsizei))
   (define glVertexPointer (GL GLvoid "glVertexPointerEXT" GLint GLenum GLsizei GLsizei fft-any))
   (define glNormalPointer (GL GLvoid "glNormalPointerEXT" GLenum GLsizei GLsizei fft-any))
   (define glColorPointer (GL GLvoid "glColorPointerEXT" GLint GLenum GLsizei GLsizei fft-any))
   (define glIndexPointer (GL GLvoid "glIndexPointerEXT" GLenum GLsizei GLsizei fft-any))
   (define glTexCoordPointer (GL GLvoid "glTexCoordPointerEXT" GLint GLenum GLsizei GLsizei fft-any))
   (define glEdgeFlagPointer (GL GLvoid "glEdgeFlagPointerEXT" GLsizei GLsizei GLboolean*))
   (define glGetPointerv (GL GLvoid "glGetPointervEXT" GLenum (fft& type-vptr)))

   (define GL_VERTEX_ARRAY                #x8074)
   (define GL_NORMAL_ARRAY                #x8075)
   (define GL_COLOR_ARRAY                 #x8076)
   (define GL_INDEX_ARRAY                 #x8077)
   (define GL_TEXTURE_COORD_ARRAY         #x8078)
   (define GL_EDGE_FLAG_ARRAY             #x8079)
   (define GL_DOUBLE                      #x140A)
   (define GL_VERTEX_ARRAY_SIZE           #x807A)
   (define GL_VERTEX_ARRAY_TYPE           #x807B)
   (define GL_VERTEX_ARRAY_STRIDE         #x807C)
   (define GL_VERTEX_ARRAY_COUNT          #x807D)
   (define GL_NORMAL_ARRAY_TYPE           #x807E)
   (define GL_NORMAL_ARRAY_STRIDE         #x807F)
   (define GL_NORMAL_ARRAY_COUNT          #x8080)
   (define GL_COLOR_ARRAY_SIZE            #x8081)
   (define GL_COLOR_ARRAY_TYPE            #x8082)
   (define GL_COLOR_ARRAY_STRIDE          #x8083)
   (define GL_COLOR_ARRAY_COUNT           #x8084)
   (define GL_INDEX_ARRAY_TYPE            #x8085)
   (define GL_INDEX_ARRAY_STRIDE          #x8086)
   (define GL_INDEX_ARRAY_COUNT           #x8087)
   (define GL_TEXTURE_COORD_ARRAY_SIZE    #x8088)
   (define GL_TEXTURE_COORD_ARRAY_TYPE    #x8089)
   (define GL_TEXTURE_COORD_ARRAY_STRIDE  #x808A)
   (define GL_TEXTURE_COORD_ARRAY_COUNT   #x808B)
   (define GL_EDGE_FLAG_ARRAY_STRIDE      #x808C)
   (define GL_EDGE_FLAG_ARRAY_COUNT       #x808D)
   (define GL_VERTEX_ARRAY_POINTER        #x808E)
   (define GL_NORMAL_ARRAY_POINTER        #x808F)
   (define GL_COLOR_ARRAY_POINTER         #x8090)
   (define GL_INDEX_ARRAY_POINTER         #x8091)
   (define GL_TEXTURE_COORD_ARRAY_POINTER #x8092)
   (define GL_EDGE_FLAG_ARRAY_POINTER     #x8093)

))
