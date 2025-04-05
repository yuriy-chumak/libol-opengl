; OpenGL 3.1 (24 Mar 2009) GLSL 1.4
;            Is not upward compatible with earlier versions!
;  * GL_ARB_compatibility
;GL_ARB_draw_instanced
;GL_ARB_copy_buffer
;GL_NV_primitive_restart
; At least 16 texture image units
;GL_ARB_texture_buffer_object
;GL_ARB_texture_rectangle
;GL_ARB_uniform_buffer_object
; Signed normalized texture component formats.

;  * SNORM texture component formats
;  + ARB_uniform_buffer_object
(define-library (OpenGL 3.1)
(export
   (exports (OpenGL platform))
   ; no earlier OpenGL exports

   GL_VERSION_3_1

   ; -- 1.0 ------------------------------
   GL_TRUE GL_FALSE

   glGetError
   glDepthRange
   glViewport
   glEnable
   glDisable
   glFrontFace
   glPointSize
   glLineWidth
   glCullFace
   glPolygonMode
   glPixelStoref
   glPixelStorei
   glTexImage1D
   glTexImage2D
   glTexParameterf
   glTexParameterfv
   glTexParameteri
   glTexParameteriv
   glScissor
   glStencilFunc
   glStencilOp
   glDepthFunc
   glBlendFunc
   glLogicOp
   glDrawBuffer
   glColorMask
   glDepthMask
   glStencilMask
   glClear
   glClearColor
   glClearDepth
   glClearStencil
   glReadPixels
   glReadBuffer
   glFlush
   glFinish
   glHint
   glGetBooleanv
   glGetIntegerv
   glGetFloatv
   glGetDoublev
   glIsEnabled
   glGetTexParameterfv
   glGetTexParameteriv
   glGetTexLevelParameterfv
   glGetTexLevelParameteriv
   glGetTexImage
   glGetString

   ; -------------------------------------------------------------------------
   GL_NEVER
   GL_LESS
   GL_EQUAL
   GL_LEQUAL
   GL_GREATER
   GL_NOTEQUAL
   GL_GEQUAL
   GL_ALWAYS
   GL_DEPTH_BUFFER_BIT
   GL_STENCIL_BUFFER_BIT
   GL_COLOR_BUFFER_BIT
   GL_POINTS
   GL_LINES
   GL_LINE_LOOP
   GL_LINE_STRIP
   GL_TRIANGLES
   GL_TRIANGLE_STRIP
   GL_TRIANGLE_FAN
   GL_QUADS
   GL_ZERO
   GL_ONE
   GL_SRC_COLOR
   GL_ONE_MINUS_SRC_COLOR
   GL_SRC_ALPHA
   GL_ONE_MINUS_SRC_ALPHA
   GL_DST_ALPHA
   GL_ONE_MINUS_DST_ALPHA
   GL_DST_COLOR
   GL_ONE_MINUS_DST_COLOR
   GL_SRC_ALPHA_SATURATE
   GL_BYTE
   GL_UNSIGNED_BYTE
   GL_SHORT
   GL_UNSIGNED_SHORT
   GL_INT
   GL_UNSIGNED_INT
   GL_FLOAT
   GL_NONE
   GL_FRONT_LEFT
   GL_FRONT_RIGHT
   GL_BACK_LEFT
   GL_BACK_RIGHT
   GL_FRONT
   GL_BACK
   GL_LEFT
   GL_RIGHT
   GL_FRONT_AND_BACK
   GL_NO_ERROR
   GL_INVALID_ENUM
   GL_INVALID_VALUE
   GL_INVALID_OPERATION
   GL_STACK_OVERFLOW
   GL_STACK_UNDERFLOW
   GL_OUT_OF_MEMORY
   GL_CW
   GL_CCW
   GL_POINT_SIZE
   GL_POINT_SIZE_RANGE
   GL_POINT_SIZE_GRANULARITY
   GL_LINE_SMOOTH
   GL_LINE_WIDTH
   GL_LINE_WIDTH_RANGE
   GL_LINE_WIDTH_GRANULARITY
   GL_POLYGON_MODE
   GL_POLYGON_SMOOTH
   GL_CULL_FACE
   GL_CULL_FACE_MODE
   GL_FRONT_FACE
   GL_DEPTH_RANGE
   GL_DEPTH_TEST
   GL_DEPTH_WRITEMASK
   GL_DEPTH_CLEAR_VALUE
   GL_DEPTH_FUNC
   GL_STENCIL_TEST
   GL_STENCIL_CLEAR_VALUE
   GL_STENCIL_FUNC
   GL_STENCIL_VALUE_MASK
   GL_STENCIL_FAIL
   GL_STENCIL_PASS_DEPTH_FAIL
   GL_STENCIL_PASS_DEPTH_PASS
   GL_STENCIL_REF
   GL_STENCIL_WRITEMASK
   GL_VIEWPORT
   GL_DITHER
   GL_BLEND_DST
   GL_BLEND_SRC
   GL_BLEND
   GL_LOGIC_OP_MODE
   GL_COLOR_LOGIC_OP
   GL_DRAW_BUFFER
   GL_READ_BUFFER
   GL_SCISSOR_BOX
   GL_SCISSOR_TEST
   GL_COLOR_CLEAR_VALUE
   GL_COLOR_WRITEMASK
   GL_DOUBLEBUFFER
   GL_STEREO
   GL_LINE_SMOOTH_HINT
   GL_POLYGON_SMOOTH_HINT
   GL_UNPACK_SWAP_BYTES
   GL_UNPACK_LSB_FIRST
   GL_UNPACK_ROW_LENGTH
   GL_UNPACK_SKIP_ROWS
   GL_UNPACK_SKIP_PIXELS
   GL_UNPACK_ALIGNMENT
   GL_PACK_SWAP_BYTES
   GL_PACK_LSB_FIRST
   GL_PACK_ROW_LENGTH
   GL_PACK_SKIP_ROWS
   GL_PACK_SKIP_PIXELS
   GL_PACK_ALIGNMENT
   GL_MAX_TEXTURE_SIZE
   GL_MAX_VIEWPORT_DIMS
   GL_SUBPIXEL_BITS
   GL_TEXTURE_1D
   GL_TEXTURE_2D
   GL_TEXTURE_WIDTH
   GL_TEXTURE_HEIGHT
   GL_TEXTURE_BORDER_COLOR
   GL_DONT_CARE
   GL_FASTEST
   GL_NICEST
   GL_CLEAR
   GL_AND
   GL_AND_REVERSE
   GL_COPY
   GL_AND_INVERTED
   GL_NOOP
   GL_XOR
   GL_OR
   GL_NOR
   GL_EQUIV
   GL_INVERT
   GL_OR_REVERSE
   GL_COPY_INVERTED
   GL_OR_INVERTED
   GL_NAND
   GL_SET
   GL_TEXTURE
   GL_COLOR
   GL_DEPTH
   GL_STENCIL
   GL_STENCIL_INDEX
   GL_DEPTH_COMPONENT
   GL_RED
   GL_GREEN
   GL_BLUE
   GL_ALPHA
   GL_RGB
   GL_RGBA
   GL_POINT
   GL_LINE
   GL_FILL
   GL_KEEP
   GL_REPLACE
   GL_INCR
   GL_DECR
   GL_VENDOR
   GL_RENDERER
   GL_VERSION
   GL_EXTENSIONS
   GL_NEAREST
   GL_LINEAR
   GL_NEAREST_MIPMAP_NEAREST
   GL_LINEAR_MIPMAP_NEAREST
   GL_NEAREST_MIPMAP_LINEAR
   GL_LINEAR_MIPMAP_LINEAR
   GL_TEXTURE_MAG_FILTER
   GL_TEXTURE_MIN_FILTER
   GL_TEXTURE_WRAP_S
   GL_TEXTURE_WRAP_T
   GL_REPEAT

; ==========================================
; others. to check =========================
   ;; GL_RED_SNORM
   ;; GL_RG_SNORM
   ;; GL_RGB_SNORM
   ;; GL_RGBA_SNORM
   ;; GL_R8_SNORM
   ;; GL_RG8_SNORM
   ;; GL_RGB8_SNORM
   ;; GL_RGBA8_SNORM
   ;; GL_R16_SNORM
   ;; GL_RG16_SNORM
   ;; GL_RGB16_SNORM
   ;; GL_RGBA16_SNORM
   ;; GL_SIGNED_NORMALIZED
   ;; GL_PRIMITIVE_RESTART
   ;; GL_PRIMITIVE_RESTART_INDEX
)

; ============================================================================
; == implementation ==========================================================
(import (scheme core)
        (OpenGL platform))

(begin
   (define GL_VERSION_3_1 1)

   (setq GL gl:GetProcAddress)

   ; -- 1.0 ------------------------------
   (define glGetError    (GL GLenum "glGetError"))
   (define glDepthRange  (GL GLvoid "glDepthRange" GLclampd GLclampd))
   (define glViewport    (GL GLvoid "glViewport" GLint GLint GLsizei GLsizei))
   (define glEnable      (GL GLvoid "glEnable"     GLenum))
   (define glDisable     (GL GLvoid "glDisable"    GLenum))
   (define glFrontFace   (GL GLvoid "glFrontFace" GLenum))
   (define glPointSize   (GL GLvoid "glPointSize" GLfloat))
   (define glLineWidth   (GL GLvoid "glLineWidth" GLfloat))
   (define glCullFace    (GL GLvoid "glCullFace"   GLenum))
   (define glPolygonMode (GL GLvoid "glPolygonMode" GLenum GLenum))
   (define glPixelStoref (GL GLvoid "glPixelStoref" GLenum GLfloat))
   (define glPixelStorei (GL GLvoid "glPixelStorei" GLenum GLint))
   (define glTexImage1D  (GL GLvoid "glTexImage1D" GLenum GLint GLint GLsizei GLint GLenum GLenum fft-any))
   (define glTexImage2D  (GL GLvoid "glTexImage2D" GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum fft-any))
   (define glTexParameterf (GL GLvoid "glTexParameterf" GLenum GLenum GLfloat))
   (define glTexParameterfv (GL GLvoid "glTexParameterfv" GLenum GLenum GLfloat*))
   (define glTexParameteri (GL GLvoid "glTexParameteri" GLenum GLenum GLint))
   (define glTexParameteriv (GL GLvoid "glTexParameteriv" GLenum GLenum GLint*))
   (define glScissor     (GL GLvoid "glScissor" GLint GLint GLsizei GLsizei))
   (define glStencilFunc (GL GLvoid "glStencilFunc" GLenum GLint GLuint))
   (define glStencilOp   (GL GLvoid "glStencilOp" GLenum GLenum GLenum))
   (define glDepthFunc   (GL GLvoid "glDepthFunc"  GLenum))
   (define glBlendFunc   (GL GLvoid "glBlendFunc"  GLenum GLenum))
   (define glLogicOp     (GL GLvoid "glLogicOp" GLenum))
   (define glDrawBuffer  (GL GLvoid "glDrawBuffer" GLenum))
   (define glColorMask   (GL GLvoid "glColorMask"  GLboolean GLboolean GLboolean GLboolean))
   (define glDepthMask   (GL GLvoid "glDepthMask"  GLboolean))
   (define glStencilMask (GL GLvoid "glStencilMask" GLuint))
   (define glClear       (GL GLvoid "glClear"      GLbitfield))
   (define glClearColor  (GL GLvoid "glClearColor" GLfloat GLfloat GLfloat GLfloat))
   (define glClearDepth  (GL GLvoid "glClearDepth" GLclampd))
   (define glClearStencil(GL GLvoid "glClearStencil" GLint))
   (define glReadPixels  (GL GLvoid "glReadPixels" GLint GLint GLsizei GLsizei GLenum GLenum GLvoid*))
   (define glReadBuffer  (GL GLvoid "glReadBuffer" GLenum))
   (define glFlush       (GL GLvoid "glFlush"))
   (define glFinish      (GL GLvoid "glFinish"))
   (define glHint        (GL GLvoid "glHint" GLenum GLenum))
   (define glGetBooleanv (GL GLvoid "glGetBooleanv" GLenum (fft& GLboolean)))
   (define glGetIntegerv (GL GLvoid "glGetIntegerv" GLenum GLint&))
   (define glGetFloatv   (GL GLvoid "glGetFloatv"   GLenum (fft& GLfloat)))
   (define glGetDoublev  (GL GLvoid "glGetDoublev"  GLenum (fft& GLdouble)))
   (define glIsEnabled   (GL GLboolean "glIsEnabled" GLenum))
   (define glGetTexParameteriv (GL GLvoid "glGetTexParameteriv" GLenum GLenum GLint*))
   (define glGetTexParameterfv (GL GLvoid "glGetTexParameteriv" GLenum GLenum GLfloat*))
   (define glGetTexLevelParameterfv (GL GLvoid "glGetTexLevelParameterfv" GLenum GLint GLenum GLfloat*))
   (define glGetTexLevelParameteriv (GL GLvoid "glGetTexLevelParameteriv" GLenum GLint GLenum GLint*))
   (define glGetTexImage (GL GLvoid "glGetTexImage" GLenum GLint GLenum GLenum GLvoid*))
   (define glGetString   (GL GLubyte* "glGetString" GLenum))

   (define GL_TRUE  1)
   (define GL_FALSE 0)

   (define GL_NEVER               #x0200)
   (define GL_LESS                #x0201)
   (define GL_EQUAL               #x0202)
   (define GL_LEQUAL              #x0203)
   (define GL_GREATER             #x0204)
   (define GL_NOTEQUAL            #x0205)
   (define GL_GEQUAL              #x0206)
   (define GL_ALWAYS              #x0207)
   (define GL_DEPTH_BUFFER_BIT    #x00100)
   (define GL_STENCIL_BUFFER_BIT  #x00400)
   (define GL_COLOR_BUFFER_BIT    #x04000)
   (define GL_POINTS              #x0000)
   (define GL_LINES               #x0001)
   (define GL_LINE_LOOP           #x0002)
   (define GL_LINE_STRIP          #x0003)
   (define GL_TRIANGLES           #x0004)
   (define GL_TRIANGLE_STRIP      #x0005)
   (define GL_TRIANGLE_FAN        #x0006)
   (define GL_QUADS               #x0007)
   (define GL_ZERO                0)
   (define GL_ONE                 1)
   (define GL_SRC_COLOR           #x0300)
   (define GL_ONE_MINUS_SRC_COLOR #x0301)
   (define GL_SRC_ALPHA           #x0302)
   (define GL_ONE_MINUS_SRC_ALPHA #x0303)
   (define GL_DST_ALPHA           #x0304)
   (define GL_ONE_MINUS_DST_ALPHA #x0305)
   (define GL_DST_COLOR           #x0306)
   (define GL_ONE_MINUS_DST_COLOR #x0307)
   (define GL_SRC_ALPHA_SATURATE  #x0308)
   (define GL_BYTE                #x1400)
   (define GL_UNSIGNED_BYTE       #x1401)
   (define GL_SHORT               #x1402)
   (define GL_UNSIGNED_SHORT      #x1403)
   (define GL_INT                 #x1404)
   (define GL_UNSIGNED_INT        #x1405)
   (define GL_FLOAT               #x1406)
   (define GL_NONE 0)
   (define GL_FRONT_LEFT     #x0400)
   (define GL_FRONT_RIGHT    #x0401)
   (define GL_BACK_LEFT      #x0402)
   (define GL_BACK_RIGHT     #x0403)
   (define GL_FRONT          #x0404)
   (define GL_BACK           #x0405)
   (define GL_LEFT           #x0406)
   (define GL_RIGHT          #x0407)
   (define GL_FRONT_AND_BACK #x0408)
   (define GL_NO_ERROR 0)
   (define GL_INVALID_ENUM      #x0500)
   (define GL_INVALID_VALUE     #x0501)
   (define GL_INVALID_OPERATION #x0502)
   (define GL_STACK_OVERFLOW    #x0503)
   (define GL_STACK_UNDERFLOW   #x0504)
   (define GL_OUT_OF_MEMORY     #x0505)
   (define GL_CW #x0900)
   (define GL_CCW #x0901)
   (define GL_POINT_SIZE #x0B11)
   (define GL_POINT_SIZE_RANGE #x0B12)
   (define GL_POINT_SIZE_GRANULARITY #x0B13)
   (define GL_LINE_SMOOTH #x0B20)
   (define GL_LINE_WIDTH #x0B21)
   (define GL_LINE_WIDTH_RANGE #x0B22)
   (define GL_LINE_WIDTH_GRANULARITY #x0B23)
   (define GL_POLYGON_MODE #x0B40)
   (define GL_POLYGON_SMOOTH #x0B41)
   (define GL_CULL_FACE #x0B44)
   (define GL_CULL_FACE_MODE #x0B45)
   (define GL_FRONT_FACE #x0B46)
   (define GL_DEPTH_RANGE #x0B70)
   (define GL_DEPTH_TEST #x0B71)
   (define GL_DEPTH_WRITEMASK #x0B72)
   (define GL_DEPTH_CLEAR_VALUE #x0B73)
   (define GL_DEPTH_FUNC #x0B74)
   (define GL_STENCIL_TEST #x0B90)
   (define GL_STENCIL_CLEAR_VALUE #x0B91)
   (define GL_STENCIL_FUNC #x0B92)
   (define GL_STENCIL_VALUE_MASK #x0B93)
   (define GL_STENCIL_FAIL #x0B94)
   (define GL_STENCIL_PASS_DEPTH_FAIL #x0B95)
   (define GL_STENCIL_PASS_DEPTH_PASS #x0B96)
   (define GL_STENCIL_REF #x0B97)
   (define GL_STENCIL_WRITEMASK #x0B98)
   (define GL_VIEWPORT #x0BA2)
   (define GL_DITHER #x0BD0)
   (define GL_BLEND_DST #x0BE0)
   (define GL_BLEND_SRC #x0BE1)
   (define GL_BLEND #x0BE2)
   (define GL_LOGIC_OP_MODE #x0BF0)
   (define GL_COLOR_LOGIC_OP #x0BF2)
   (define GL_DRAW_BUFFER #x0C01)
   (define GL_READ_BUFFER #x0C02)
   (define GL_SCISSOR_BOX #x0C10)
   (define GL_SCISSOR_TEST #x0C11)
   (define GL_COLOR_CLEAR_VALUE #x0C22)
   (define GL_COLOR_WRITEMASK #x0C23)
   (define GL_DOUBLEBUFFER #x0C32)
   (define GL_STEREO #x0C33)
   (define GL_LINE_SMOOTH_HINT #x0C52)
   (define GL_POLYGON_SMOOTH_HINT #x0C53)
   (define GL_UNPACK_SWAP_BYTES #x0CF0)
   (define GL_UNPACK_LSB_FIRST #x0CF1)
   (define GL_UNPACK_ROW_LENGTH #x0CF2)
   (define GL_UNPACK_SKIP_ROWS #x0CF3)
   (define GL_UNPACK_SKIP_PIXELS #x0CF4)
   (define GL_UNPACK_ALIGNMENT #x0CF5)
   (define GL_PACK_SWAP_BYTES #x0D00)
   (define GL_PACK_LSB_FIRST #x0D01)
   (define GL_PACK_ROW_LENGTH #x0D02)
   (define GL_PACK_SKIP_ROWS #x0D03)
   (define GL_PACK_SKIP_PIXELS #x0D04)
   (define GL_PACK_ALIGNMENT #x0D05)
   (define GL_MAX_TEXTURE_SIZE #x0D33)
   (define GL_MAX_VIEWPORT_DIMS #x0D3A)
   (define GL_SUBPIXEL_BITS #x0D50)
   (define GL_TEXTURE_1D #x0DE0)
   (define GL_TEXTURE_2D #x0DE1)
   (define GL_TEXTURE_WIDTH #x1000)
   (define GL_TEXTURE_HEIGHT #x1001)
   (define GL_TEXTURE_BORDER_COLOR #x1004)
   (define GL_DONT_CARE #x1100)
   (define GL_FASTEST #x1101)
   (define GL_NICEST #x1102)
   (define GL_CLEAR #x1500)
   (define GL_AND #x1501)
   (define GL_AND_REVERSE #x1502)
   (define GL_COPY #x1503)
   (define GL_AND_INVERTED #x1504)
   (define GL_NOOP #x1505)
   (define GL_XOR #x1506)
   (define GL_OR #x1507)
   (define GL_NOR #x1508)
   (define GL_EQUIV #x1509)
   (define GL_INVERT #x150A)
   (define GL_OR_REVERSE #x150B)
   (define GL_COPY_INVERTED #x150C)
   (define GL_OR_INVERTED #x150D)
   (define GL_NAND #x150E)
   (define GL_SET #x150F)
   (define GL_TEXTURE #x1702)
   (define GL_COLOR #x1800)
   (define GL_DEPTH #x1801)
   (define GL_STENCIL #x1802)
   (define GL_STENCIL_INDEX #x1901)
   (define GL_DEPTH_COMPONENT #x1902)
   (define GL_RED #x1903)
   (define GL_GREEN #x1904)
   (define GL_BLUE #x1905)
   (define GL_ALPHA #x1906)
   (define GL_RGB #x1907)
   (define GL_RGBA #x1908)
   (define GL_POINT #x1B00)
   (define GL_LINE #x1B01)
   (define GL_FILL #x1B02)
   (define GL_KEEP #x1E00)
   (define GL_REPLACE #x1E01)
   (define GL_INCR #x1E02)
   (define GL_DECR #x1E03)
   (define GL_VENDOR #x1F00)
   (define GL_RENDERER #x1F01)
   (define GL_VERSION #x1F02)
   (define GL_EXTENSIONS #x1F03)
   (define GL_NEAREST #x2600)
   (define GL_LINEAR #x2601)
   (define GL_NEAREST_MIPMAP_NEAREST #x2700)
   (define GL_LINEAR_MIPMAP_NEAREST #x2701)
   (define GL_NEAREST_MIPMAP_LINEAR #x2702)
   (define GL_LINEAR_MIPMAP_LINEAR #x2703)
   (define GL_TEXTURE_MAG_FILTER #x2800)
   (define GL_TEXTURE_MIN_FILTER #x2801)
   (define GL_TEXTURE_WRAP_S #x2802)
   (define GL_TEXTURE_WRAP_T #x2803)
   (define GL_REPEAT #x2901)

   ;; (define GL_RED_SNORM                      #x8F90)
   ;; (define GL_RG_SNORM                       #x8F91)
   ;; (define GL_RGB_SNORM                      #x8F92)
   ;; (define GL_RGBA_SNORM                     #x8F93)
   ;; (define GL_R8_SNORM                       #x8F94)
   ;; (define GL_RG8_SNORM                      #x8F95)
   ;; (define GL_RGB8_SNORM                     #x8F96)
   ;; (define GL_RGBA8_SNORM                    #x8F97)
   ;; (define GL_R16_SNORM                      #x8F98)
   ;; (define GL_RG16_SNORM                     #x8F99)
   ;; (define GL_RGB16_SNORM                    #x8F9A)
   ;; (define GL_RGBA16_SNORM                   #x8F9B)
   ;; (define GL_SIGNED_NORMALIZED              #x8F9C)
   ;; (define GL_PRIMITIVE_RESTART              #x8F9D)
   ;; (define GL_PRIMITIVE_RESTART_INDEX        #x8F9E)

))