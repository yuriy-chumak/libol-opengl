(define-library (OpenGL ARB compatibility 1.1)
(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_1_1_DEPRECATED

   GL_INDEX_LOGIC_OP

   glIndexub
   glIndexubv

   glEnableClientState
   glDisableClientState

   GL_V2F
   GL_V3F
   GL_C4UB_V2F
   GL_C4UB_V3F
   GL_C3F_V3F
   GL_N3F_V3F
   GL_C4F_N3F_V3F
   GL_T2F_V3F
   GL_T4F_V4F
   GL_T2F_C4UB_V3F
   GL_T2F_C3F_V3F
   GL_T2F_N3F_V3F
   GL_T2F_C4F_N3F_V3F
   GL_T4F_C4F_N3F_V4F

   glPushClientAttrib
   glPopClientAttrib

   GL_CLIENT_PIXEL_STORE_BIT
   GL_CLIENT_VERTEX_ARRAY_BIT
   GL_CLIENT_ALL_ATTRIB_BITS

   GL_CLIENT_ATTRIB_STACK_DEPTH
   GL_MAX_CLIENT_ATTRIB_STACK_DEPTH

   glInterleavedArrays

;; C.1 EXT_vertex_array, except that static array data
   ; are not supported (because they complicated the interface, and were not
   ; being used), and the pre-defined configurations are added (both to reduce
   ; subroutine count even further, and to allow for efficient transfer of array
   ; data)

   GL_NORMAL_ARRAY
   GL_COLOR_ARRAY
   GL_INDEX_ARRAY
   GL_TEXTURE_COORD_ARRAY
   GL_EDGE_FLAG_ARRAY

;  VERTEX_ARRAY_COUNT_EXT  excluded by 1.1
   GL_NORMAL_ARRAY_TYPE
   GL_NORMAL_ARRAY_STRIDE
;  NORMAL_ARRAY_COUNT_EXT  excluded by 1.1
   GL_COLOR_ARRAY_SIZE
   GL_COLOR_ARRAY_TYPE
   GL_COLOR_ARRAY_STRIDE
;  COLOR_ARRAY_COUNT_EXT  excluded by 1.1
   GL_INDEX_ARRAY_TYPE
   GL_INDEX_ARRAY_STRIDE
;  INDEX_ARRAY_COUNT_EXT  excluded by 1.1
   GL_TEXTURE_COORD_ARRAY_SIZE
   GL_TEXTURE_COORD_ARRAY_TYPE
   GL_TEXTURE_COORD_ARRAY_STRIDE
;  TEXTURE_COORD_ARRAY_COUNT_EXT  excluded by 1.1
   GL_EDGE_FLAG_ARRAY_STRIDE
;  EDGE_FLAG_ARRAY_COUNT_EXT  excluded by 1.1

   GL_NORMAL_ARRAY_POINTER
   GL_COLOR_ARRAY_POINTER
   GL_INDEX_ARRAY_POINTER
   GL_TEXTURE_COORD_ARRAY_POINTER
   GL_EDGE_FLAG_ARRAY_POINTER

   glArrayElement
   glVertexPointer
   glNormalPointer
   glColorPointer
   glIndexPointer
   glTexCoordPointer
   glEdgeFlagPointer


;; C.2 EXT_polygon_offset

;  GL_POLYGON_OFFSET_BIAS  ; excluded by 1.1


;; C.3 EXT_blend_logic_op
   ; none


;; C.4, C.5, C.6 EXT_texture
   GL_ALPHA4
   GL_ALPHA8
   GL_ALPHA12
   GL_ALPHA16
   GL_LUMINANCE4
   GL_LUMINANCE8
   GL_LUMINANCE12
   GL_LUMINANCE16
   GL_LUMINANCE4_ALPHA4
   GL_LUMINANCE6_ALPHA2
   GL_LUMINANCE8_ALPHA8
   GL_LUMINANCE12_ALPHA4
   GL_LUMINANCE12_ALPHA12
   GL_LUMINANCE16_ALPHA16
   GL_INTENSITY
   GL_INTENSITY4
   GL_INTENSITY8
   GL_INTENSITY12
   GL_INTENSITY16
;  GL_RGB2     ; excluded by 1.1

   GL_TEXTURE_LUMINANCE_SIZE
   GL_TEXTURE_INTENSITY_SIZE

;  GL_REPLACE  ; excluded by 1.1 as duplicate


;  GL_TEXTURE_TOO_LARGE ; excluded by 1.1


;; C.7 EXT_copy_texture AND EXT_subtexture
;  glCopyTexSubImage3D ; excluded by 1.1 (btw, introduced back in 1.2)
;  glTexSubImage3D     ; excluded by 1.1 (btw, introduced back in 1.2)


;; C.8 EXT_texture_object
   glPrioritizeTextures
   glAreTexturesResident

   GL_TEXTURE_PRIORITY
   GL_TEXTURE_RESIDENT
;  GL_TEXTURE_3D_BINDING ; excluded by 1.1
)

; ============================================================================
(begin
   (define GL_VERSION_1_1_DEPRECATED 1)

   (setq GL gl:GetProcAddress)

   (define GL_INDEX_LOGIC_OP #x0BF1)


   (define glIndexub (GL GLvoid "glIndexub" GLubyte))
   (define glIndexubv (GL GLvoid "glIndexubv" GLubyte*))

   (define glEnableClientState (GL GLvoid "glEnableClientState" GLenum))
   (define glDisableClientState (GL GLvoid "glDisableClientState" GLenum))

   ; glInterleavedArrays:
   (define GL_V2F                            #x2A20)
   (define GL_V3F                            #x2A21)
   (define GL_C4UB_V2F                       #x2A22)
   (define GL_C4UB_V3F                       #x2A23)
   (define GL_C3F_V3F                        #x2A24)
   (define GL_N3F_V3F                        #x2A25)
   (define GL_C4F_N3F_V3F                    #x2A26)
   (define GL_T2F_V3F                        #x2A27)
   (define GL_T4F_V4F                        #x2A28)
   (define GL_T2F_C4UB_V3F                   #x2A29)
   (define GL_T2F_C3F_V3F                    #x2A2A)
   (define GL_T2F_N3F_V3F                    #x2A2B)
   (define GL_T2F_C4F_N3F_V3F                #x2A2C)
   (define GL_T4F_C4F_N3F_V4F                #x2A2D)

   ; 6 State and State Requests (TBD.)

   (define glPushClientAttrib (GL GLvoid "glPushClientAttrib" GLbitfield))
   (define glPopClientAttrib (GL GLvoid "glPopClientAttrib"))

   (define GL_CLIENT_PIXEL_STORE_BIT         #x00000001)
   (define GL_CLIENT_VERTEX_ARRAY_BIT        #x00000002)
   (define GL_CLIENT_ALL_ATTRIB_BITS         #xffffffff)

   (define GL_CLIENT_ATTRIB_STACK_DEPTH      #x0BB1)
   (define GL_MAX_CLIENT_ATTRIB_STACK_DEPTH  #x0D3B)

   (define glInterleavedArrays (GL GLvoid "glInterleavedArrays" GLenum GLsizei fft-any))


 ; C.1 EXT_vertex_array

   (define GL_NORMAL_ARRAY                   #x8075)
   (define GL_COLOR_ARRAY                    #x8076)
   (define GL_INDEX_ARRAY                    #x8077)
   (define GL_TEXTURE_COORD_ARRAY            #x8078)
   (define GL_EDGE_FLAG_ARRAY                #x8079)

   (define GL_NORMAL_ARRAY_TYPE              #x807E)
   (define GL_NORMAL_ARRAY_STRIDE            #x807F)
   (define GL_COLOR_ARRAY_SIZE               #x8081)
   (define GL_COLOR_ARRAY_TYPE               #x8082)
   (define GL_COLOR_ARRAY_STRIDE             #x8083)
   (define GL_INDEX_ARRAY_TYPE               #x8085)
   (define GL_INDEX_ARRAY_STRIDE             #x8086)
   (define GL_TEXTURE_COORD_ARRAY_SIZE       #x8088)
   (define GL_TEXTURE_COORD_ARRAY_TYPE       #x8089)
   (define GL_TEXTURE_COORD_ARRAY_STRIDE     #x808A)
   (define GL_EDGE_FLAG_ARRAY_STRIDE         #x808C)

   (define GL_NORMAL_ARRAY_POINTER           #x808F)
   (define GL_COLOR_ARRAY_POINTER            #x8090)
   (define GL_INDEX_ARRAY_POINTER            #x8091)
   (define GL_TEXTURE_COORD_ARRAY_POINTER    #x8092)
   (define GL_EDGE_FLAG_ARRAY_POINTER        #x8093)

   (define glArrayElement (GL GLvoid "glArrayElement" GLint))
   (define glVertexPointer (GL GLvoid "glVertexPointer" GLint GLenum GLsizei fft-any))
   (define glNormalPointer (GL GLvoid "glNormalPointer" GLenum GLsizei fft-any))
   (define glColorPointer  (GL GLvoid "glColorPointer" GLint GLenum GLsizei fft-any))
   (define glIndexPointer  (GL GLvoid "glIndexPointer" GLenum GLsizei fft-any))
   (define glTexCoordPointer (GL GLvoid "glTexCoordPointer" GLint GLenum GLsizei fft-any))
   (define glEdgeFlagPointer (GL GLvoid "glEdgeFlagPointer" GLsizei fft-any))

 ; C.2 EXT_polygon_offset

 ; C.3 EXT_blend_logic_op
   ; none

 ; C.4, C.5, C.6 EXT_texture
   (define GL_ALPHA4                         #x803B)
   (define GL_ALPHA8                         #x803C)
   (define GL_ALPHA12                        #x803D)
   (define GL_ALPHA16                        #x803E)
   (define GL_LUMINANCE4                     #x803F)
   (define GL_LUMINANCE8                     #x8040)
   (define GL_LUMINANCE12                    #x8041)
   (define GL_LUMINANCE16                    #x8042)
   (define GL_LUMINANCE4_ALPHA4              #x8043)
   (define GL_LUMINANCE6_ALPHA2              #x8044)
   (define GL_LUMINANCE8_ALPHA8              #x8045)
   (define GL_LUMINANCE12_ALPHA4             #x8046)
   (define GL_LUMINANCE12_ALPHA12            #x8047)
   (define GL_LUMINANCE16_ALPHA16            #x8048)
   (define GL_INTENSITY                      #x8049)
   (define GL_INTENSITY4                     #x804A)
   (define GL_INTENSITY8                     #x804B)
   (define GL_INTENSITY12                    #x804C)
   (define GL_INTENSITY16                    #x804D)

   (define GL_TEXTURE_LUMINANCE_SIZE         #x8060)
   (define GL_TEXTURE_INTENSITY_SIZE         #x8061)

 ; C.7 EXT_copy_texture

 ; C.7 EXT_subtexture

 ; C.8 EXT_texture_object
   (define glPrioritizeTextures (GL GLvoid "glPrioritizeTextures" GLsizei GLuint* (fft* GLclampf)))
   (define glAreTexturesResident (GL GLboolean "glAreTexturesResident" GLsizei GLuint* GLboolean*))

   (define GL_TEXTURE_PRIORITY   #x8066)
   (define GL_TEXTURE_RESIDENT   #x8067)

))
