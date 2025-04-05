(define-library (OpenGL 1.0 deprecated)

(import (scheme core)
   (OpenGL platform))

(export

   GL_VERSION_1_0_DEPRECATED

   glBegin
   glEnd
   glEdgeFlag
   glEdgeFlagv
   glVertex2d
   glVertex2dv
   glVertex2f
   glVertex2fv
   glVertex2i
   glVertex2iv
   glVertex2s
   glVertex2sv
   glVertex3d
   glVertex3dv
   glVertex3f
   glVertex3fv
   glVertex3i
   glVertex3iv
   glVertex3s
   glVertex3sv
   glVertex4d
   glVertex4dv
   glVertex4f
   glVertex4fv
   glVertex4i
   glVertex4iv
   glVertex4s
   glVertex4sv
   glTexCoord1d
   glTexCoord1dv
   glTexCoord1f
   glTexCoord1fv
   glTexCoord1i
   glTexCoord1iv
   glTexCoord1s
   glTexCoord1sv
   glTexCoord2d
   glTexCoord2dv
   glTexCoord2f
   glTexCoord2fv
   glTexCoord2i
   glTexCoord2iv
   glTexCoord2s
   glTexCoord2sv
   glTexCoord3d
   glTexCoord3dv
   glTexCoord3f
   glTexCoord3fv
   glTexCoord3i
   glTexCoord3iv
   glTexCoord3s
   glTexCoord3sv
   glTexCoord4d
   glTexCoord4dv
   glTexCoord4f
   glTexCoord4fv
   glTexCoord4i
   glTexCoord4iv
   glTexCoord4s
   glTexCoord4sv
   glNormal3b
   glNormal3bv
   glNormal3d
   glNormal3dv
   glNormal3f
   glNormal3fv
   glNormal3i
   glNormal3iv
   glNormal3s
   glNormal3sv
   glColor3b
   glColor3bv
   glColor3d
   glColor3dv
   glColor3f
   glColor3fv
   glColor3i
   glColor3iv
   glColor3s
   glColor3sv
   glColor3ub
   glColor3ubv
   glColor3ui
   glColor3uiv
   glColor3us
   glColor3usv
   glColor4b
   glColor4bv
   glColor4d
   glColor4dv
   glColor4f
   glColor4fv
   glColor4i
   glColor4iv
   glColor4s
   glColor4sv
   glColor4ub
   glColor4ubv
   glColor4ui
   glColor4uiv
   glColor4us
   glColor4usv
   glIndexd
   glIndexdv
   glIndexf
   glIndexfv
   glIndexi
   glIndexiv
   glIndexs
   glIndexsv
   glRectd
   glRectdv
   glRectf
   glRectfv
   glRecti
   glRectiv
   glRects
   glRectsv
   glMatrixMode
   glLoadMatrixd
   glLoadMatrixf
   glMultMatrixd
   glMultMatrixf
   glLoadIdentity
   glRotated
   glRotatef
   glTranslated
   glTranslatef
   glScaled
   glScalef
   glFrustum
   glOrtho
   glPushMatrix
   glPopMatrix
   glTexGend
   glTexGendv
   glTexGenf
   glTexGenfv
   glTexGeni
   glTexGeniv
   glClipPlane
   glRasterPos2d
   glRasterPos2dv
   glRasterPos2f
   glRasterPos2fv
   glRasterPos2i
   glRasterPos2iv
   glRasterPos2s
   glRasterPos2sv
   glRasterPos3d
   glRasterPos3dv
   glRasterPos3f
   glRasterPos3fv
   glRasterPos3i
   glRasterPos3iv
   glRasterPos3s
   glRasterPos3sv
   glRasterPos4d
   glRasterPos4dv
   glRasterPos4f
   glRasterPos4fv
   glRasterPos4i
   glRasterPos4iv
   glRasterPos4s
   glRasterPos4sv
   glMaterialf
   glMaterialfv
   glMateriali
   glMaterialiv
   glLightf
   glLightfv
   glLighti
   glLightiv
   glLightModelf
   glLightModelfv
   glLightModeli
   glLightModeliv
   glColorMaterial
   glShadeModel
   glLineStipple
   glPolygonStipple
   glPixelTransferf
   glPixelTransferi
   glPixelMapfv
   glPixelMapuiv
   glPixelMapusv
   glDrawPixels
   glPixelZoom
   glBitmap
   glTexEnvf
   glTexEnvfv
   glTexEnvi
   glTexEnviv
   glFogf
   glFogfv
   glFogi
   glFogiv
   glAlphaFunc
   glIndexMask
   glClearIndex
   glClearAccum
   glAccum
   glCopyPixels
   glMap1d
   glMap1f
   glMap2d
   glMap2f
   glEvalCoord1d
   glEvalCoord1dv
   glEvalCoord1f
   glEvalCoord1fv
   glEvalCoord2d
   glEvalCoord2dv
   glEvalCoord2f
   glEvalCoord2fv
   glMapGrid1d
   glMapGrid1f
   glMapGrid2d
   glMapGrid2f
   glEvalMesh1
   glEvalMesh2
   glEvalPoint1
   glEvalPoint2
   glInitNames
   glPopName
   glPushName
   glLoadName
   glRenderMode
   glSelectBuffer
   glFeedbackBuffer
   glPassThrough
   glNewList
   glEndList
   glCallList
   glCallLists
   glListBase
   glGenLists
   glIsList
   glDeleteLists
   glGetClipPlane
   glGetLightfv
   glGetLightiv
   glGetMaterialfv
   glGetMaterialiv
   glGetTexEnvfv
   glGetTexEnviv
   glGetTexGenfv
   glGetTexGeniv
   glGetPixelMapfv
   glGetPixelMapuiv
   glGetPixelMapusv
   glGetMapdv
   glGetMapfv
   glGetMapiv
   glGetPolygonStipple
   glPushAttrib
   glPopAttrib

   ; -------------------------------------------------------------------------
   GL_ACCUM
   GL_LOAD
   GL_RETURN
   GL_MULT
   GL_ADD
   GL_CURRENT_BIT
   GL_POINT_BIT
   GL_LINE_BIT
   GL_POLYGON_BIT
   GL_POLYGON_STIPPLE_BIT
   GL_PIXEL_MODE_BIT
   GL_LIGHTING_BIT
   GL_FOG_BIT
   GL_ACCUM_BUFFER_BIT
   GL_VIEWPORT_BIT
   GL_TRANSFORM_BIT
   GL_ENABLE_BIT
   GL_HINT_BIT
   GL_EVAL_BIT
   GL_LIST_BIT
   GL_TEXTURE_BIT
   GL_SCISSOR_BIT
   GL_ALL_ATTRIB_BITS
   GL_POINTS
   GL_LINES
   GL_LINE_LOOP
   GL_LINE_STRIP
   GL_TRIANGLES
   GL_TRIANGLE_STRIP
   GL_TRIANGLE_FAN
   GL_QUADS
   GL_QUAD_STRIP
   GL_POLYGON
   GL_QUAD_STRIP
   GL_POLYGON
   GL_CLIP_PLANE0
   GL_CLIP_PLANE1
   GL_CLIP_PLANE2
   GL_CLIP_PLANE3
   GL_CLIP_PLANE4
   GL_CLIP_PLANE5
   GL_2_BYTES
   GL_3_BYTES
   GL_4_BYTES
   GL_AUX0
   GL_AUX1
   GL_AUX2
   GL_AUX3
   GL_2D
   GL_3D
   GL_3D_COLOR
   GL_3D_COLOR_TEXTURE
   GL_4D_COLOR_TEXTURE
   GL_PASS_THROUGH_TOKEN
   GL_POINT_TOKEN
   GL_LINE_TOKEN
   GL_POLYGON_TOKEN
   GL_BITMAP_TOKEN
   GL_DRAW_PIXEL_TOKEN
   GL_COPY_PIXEL_TOKEN
   GL_LINE_RESET_TOKEN
   GL_EXP
   GL_EXP2
   GL_COEFF
   GL_ORDER
   GL_DOMAIN
   GL_CURRENT_COLOR
   GL_CURRENT_INDEX
   GL_CURRENT_NORMAL
   GL_CURRENT_TEXTURE_COORDS
   GL_CURRENT_RASTER_COLOR
   GL_CURRENT_RASTER_INDEX
   GL_CURRENT_RASTER_TEXTURE_COORDS
   GL_CURRENT_RASTER_POSITION
   GL_CURRENT_RASTER_POSITION_VALID
   GL_CURRENT_RASTER_DISTANCE
   GL_POINT_SMOOTH
   GL_LINE_STIPPLE
   GL_LINE_STIPPLE_PATTERN
   GL_LINE_STIPPLE_REPEAT
   GL_LIST_MODE
   GL_MAX_LIST_NESTING
   GL_LIST_BASE
   GL_LIST_INDEX
   GL_POLYGON_STIPPLE
   GL_EDGE_FLAG
   GL_LIGHTING
   GL_LIGHT_MODEL_LOCAL_VIEWER
   GL_LIGHT_MODEL_TWO_SIDE
   GL_LIGHT_MODEL_AMBIENT
   GL_SHADE_MODEL
   GL_COLOR_MATERIAL_FACE
   GL_COLOR_MATERIAL_PARAMETER
   GL_COLOR_MATERIAL
   GL_FOG
   GL_FOG_INDEX
   GL_FOG_DENSITY
   GL_FOG_START
   GL_FOG_END
   GL_FOG_MODE
   GL_FOG_COLOR
   GL_ACCUM_CLEAR_VALUE
   GL_MATRIX_MODE
   GL_NORMALIZE
   GL_MODELVIEW_STACK_DEPTH
   GL_PROJECTION_STACK_DEPTH
   GL_TEXTURE_STACK_DEPTH
   GL_MODELVIEW_MATRIX
   GL_PROJECTION_MATRIX
   GL_TEXTURE_MATRIX
   GL_ATTRIB_STACK_DEPTH
   GL_ALPHA_TEST
   GL_ALPHA_TEST_FUNC
   GL_ALPHA_TEST_REF
   GL_LOGIC_OP
   GL_AUX_BUFFERS
   GL_INDEX_CLEAR_VALUE
   GL_INDEX_WRITEMASK
   GL_INDEX_MODE
   GL_RGBA_MODE
   GL_RENDER_MODE
   GL_PERSPECTIVE_CORRECTION_HINT
   GL_POINT_SMOOTH_HINT
   GL_FOG_HINT
   GL_TEXTURE_GEN_S
   GL_TEXTURE_GEN_T
   GL_TEXTURE_GEN_R
   GL_TEXTURE_GEN_Q
   GL_PIXEL_MAP_I_TO_I
   GL_PIXEL_MAP_S_TO_S
   GL_PIXEL_MAP_I_TO_R
   GL_PIXEL_MAP_I_TO_G
   GL_PIXEL_MAP_I_TO_B
   GL_PIXEL_MAP_I_TO_A
   GL_PIXEL_MAP_R_TO_R
   GL_PIXEL_MAP_G_TO_G
   GL_PIXEL_MAP_B_TO_B
   GL_PIXEL_MAP_A_TO_A
   GL_PIXEL_MAP_I_TO_I_SIZE
   GL_PIXEL_MAP_S_TO_S_SIZE
   GL_PIXEL_MAP_I_TO_R_SIZE
   GL_PIXEL_MAP_I_TO_G_SIZE
   GL_PIXEL_MAP_I_TO_B_SIZE
   GL_PIXEL_MAP_I_TO_A_SIZE
   GL_PIXEL_MAP_R_TO_R_SIZE
   GL_PIXEL_MAP_G_TO_G_SIZE
   GL_PIXEL_MAP_B_TO_B_SIZE
   GL_PIXEL_MAP_A_TO_A_SIZE
   GL_MAP_COLOR
   GL_MAP_STENCIL
   GL_INDEX_SHIFT
   GL_INDEX_OFFSET
   GL_RED_SCALE
   GL_RED_BIAS
   GL_ZOOM_X
   GL_ZOOM_Y
   GL_GREEN_SCALE
   GL_GREEN_BIAS
   GL_BLUE_SCALE
   GL_BLUE_BIAS
   GL_ALPHA_SCALE
   GL_ALPHA_BIAS
   GL_DEPTH_SCALE
   GL_DEPTH_BIAS
   GL_MAX_EVAL_ORDER
   GL_MAX_LIGHTS
   GL_MAX_CLIP_PLANES
   GL_MAX_PIXEL_MAP_TABLE
   GL_MAX_ATTRIB_STACK_DEPTH
   GL_MAX_MODELVIEW_STACK_DEPTH
   GL_MAX_NAME_STACK_DEPTH
   GL_MAX_PROJECTION_STACK_DEPTH
   GL_MAX_TEXTURE_STACK_DEPTH
   GL_INDEX_BITS
   GL_RED_BITS
   GL_GREEN_BITS
   GL_BLUE_BITS
   GL_ALPHA_BITS
   GL_DEPTH_BITS
   GL_STENCIL_BITS
   GL_ACCUM_RED_BITS
   GL_ACCUM_GREEN_BITS
   GL_ACCUM_BLUE_BITS
   GL_ACCUM_ALPHA_BITS
   GL_NAME_STACK_DEPTH
   GL_AUTO_NORMAL
   GL_MAP1_COLOR_4
   GL_MAP1_INDEX
   GL_MAP1_NORMAL
   GL_MAP1_TEXTURE_COORD_1
   GL_MAP1_TEXTURE_COORD_2
   GL_MAP1_TEXTURE_COORD_3
   GL_MAP1_TEXTURE_COORD_4
   GL_MAP1_VERTEX_3
   GL_MAP1_VERTEX_4
   GL_MAP2_COLOR_4
   GL_MAP2_INDEX
   GL_MAP2_NORMAL
   GL_MAP2_TEXTURE_COORD_1
   GL_MAP2_TEXTURE_COORD_2
   GL_MAP2_TEXTURE_COORD_3
   GL_MAP2_TEXTURE_COORD_4
   GL_MAP2_VERTEX_3
   GL_MAP2_VERTEX_4
   GL_MAP1_GRID_DOMAIN
   GL_MAP1_GRID_SEGMENTS
   GL_MAP2_GRID_DOMAIN
   GL_MAP2_GRID_SEGMENTS
   GL_FEEDBACK_BUFFER_POINTER
   GL_FEEDBACK_BUFFER_SIZE
   GL_FEEDBACK_BUFFER_TYPE
   GL_SELECTION_BUFFER_POINTER
   GL_SELECTION_BUFFER_SIZE
   GL_TEXTURE_COMPONENTS
   GL_TEXTURE_BORDER
   GL_LIGHT0
   GL_LIGHT1
   GL_LIGHT2
   GL_LIGHT3
   GL_LIGHT4
   GL_LIGHT5
   GL_LIGHT6
   GL_LIGHT7
   GL_AMBIENT
   GL_DIFFUSE
   GL_SPECULAR
   GL_POSITION
   GL_SPOT_DIRECTION
   GL_SPOT_EXPONENT
   GL_SPOT_CUTOFF
   GL_CONSTANT_ATTENUATION
   GL_LINEAR_ATTENUATION
   GL_QUADRATIC_ATTENUATION
   GL_COMPILE
   GL_COMPILE_AND_EXECUTE
   GL_EMISSION
   GL_SHININESS
   GL_AMBIENT_AND_DIFFUSE
   GL_COLOR_INDEXES
   GL_MODELVIEW
   GL_PROJECTION
   GL_COLOR_INDEX
   GL_LUMINANCE
   GL_LUMINANCE_ALPHA
   GL_BITMAP
   GL_RENDER
   GL_FEEDBACK
   GL_SELECT
   GL_FLAT
   GL_SMOOTH
   GL_S
   GL_T
   GL_R
   GL_Q
   GL_MODULATE
   GL_DECAL
   GL_TEXTURE_ENV_MODE
   GL_TEXTURE_ENV_COLOR
   GL_TEXTURE_ENV
   GL_EYE_LINEAR
   GL_OBJECT_LINEAR
   GL_SPHERE_MAP
   GL_TEXTURE_GEN_MODE
   GL_OBJECT_PLANE
   GL_EYE_PLANE
   GL_CLAMP

)

; ----------------------------------------------------------------------
(begin
   (define GL_VERSION_1_0_DEPRECATED 1)

   (setq GL gl:GetProcAddress)

   (define glBegin       (GL GLvoid "glBegin"      GLenum))
   (define glEnd         (GL GLvoid "glEnd"))
   (define glEdgeFlag    (GL GLvoid "glEdgeFlag"   GLboolean))
   (define glEdgeFlagv   (GL GLvoid "glEdgeFlagv"  GLboolean*))
   (define glVertex2d    (GL GLvoid "glVertex2d"  GLdouble GLdouble))
   (define glVertex2dv   (GL GLvoid "glVertex2dv" GLdouble*))
   (define glVertex2f    (GL GLvoid "glVertex2f"  GLfloat GLfloat))
   (define glVertex2fv   (GL GLvoid "glVertex2fv" GLfloat*))
   (define glVertex2i    (GL GLvoid "glVertex2i"  GLint GLint))
   (define glVertex2iv   (GL GLvoid "glVertex2iv" GLint*))
   (define glVertex2s    (GL GLvoid "glVertex2s"  GLshort GLshort))
   (define glVertex2sv   (GL GLvoid "glVertex2sv" GLshort*))
   (define glVertex3d    (GL GLvoid "glVertex3d"  GLdouble GLdouble GLdouble))
   (define glVertex3dv   (GL GLvoid "glVertex3dv" GLdouble*))
   (define glVertex3f    (GL GLvoid "glVertex3f"  GLfloat GLfloat GLfloat))
   (define glVertex3fv   (GL GLvoid "glVertex3fv" GLfloat*))
   (define glVertex3i    (GL GLvoid "glVertex3i"  GLint GLint GLint))
   (define glVertex3iv   (GL GLvoid "glVertex3iv" GLint*))
   (define glVertex3s    (GL GLvoid "glVertex3s"  GLshort GLshort GLshort))
   (define glVertex3sv   (GL GLvoid "glVertex3sv" GLshort*))
   (define glVertex4d    (GL GLvoid "glVertex4d"  GLdouble GLdouble GLdouble GLdouble))
   (define glVertex4dv   (GL GLvoid "glVertex4dv" GLdouble*))
   (define glVertex4f    (GL GLvoid "glVertex4f"  GLfloat GLfloat GLfloat GLfloat))
   (define glVertex4fv   (GL GLvoid "glVertex4fv" GLfloat*))
   (define glVertex4i    (GL GLvoid "glVertex4i"  GLint GLint GLint GLint))
   (define glVertex4iv   (GL GLvoid "glVertex4iv" GLint*))
   (define glVertex4s    (GL GLvoid "glVertex4s"  GLshort GLshort GLshort GLshort))
   (define glVertex4sv   (GL GLvoid "glVertex4sv" GLshort*))
   (define glTexCoord1d  (GL GLvoid "glTexCoord1d" GLdouble))
   (define glTexCoord1dv (GL GLvoid "glTexCoord1dv" GLdouble*))
   (define glTexCoord1f  (GL GLvoid "glTexCoord1f" GLfloat))
   (define glTexCoord1fv (GL GLvoid "glTexCoord1fv" GLfloat*))
   (define glTexCoord1i  (GL GLvoid "glTexCoord1i" GLint))
   (define glTexCoord1iv (GL GLvoid "glTexCoord1iv" GLint*))
   (define glTexCoord1s  (GL GLvoid "glTexCoord1s" GLshort))
   (define glTexCoord1sv (GL GLvoid "glTexCoord1sv" GLshort*))
   (define glTexCoord2d  (GL GLvoid "glTexCoord2d" GLdouble GLdouble))
   (define glTexCoord2dv (GL GLvoid "glTexCoord2dv" GLdouble*))
   (define glTexCoord2f  (GL GLvoid "glTexCoord2f" GLfloat GLfloat))
   (define glTexCoord2fv (GL GLvoid "glTexCoord2fv" GLfloat*))
   (define glTexCoord2i  (GL GLvoid "glTexCoord2i" GLint GLint))
   (define glTexCoord2iv (GL GLvoid "glTexCoord2iv" GLint*))
   (define glTexCoord2s  (GL GLvoid "glTexCoord2s" GLshort GLshort))
   (define glTexCoord2sv (GL GLvoid "glTexCoord2sv" GLshort*))
   (define glTexCoord3d  (GL GLvoid "glTexCoord3d" GLdouble GLdouble GLdouble))
   (define glTexCoord3dv (GL GLvoid "glTexCoord3dv" GLdouble*))
   (define glTexCoord3f  (GL GLvoid "glTexCoord3f" GLfloat GLfloat GLfloat))
   (define glTexCoord3fv (GL GLvoid "glTexCoord3fv" GLfloat*))
   (define glTexCoord3i  (GL GLvoid "glTexCoord3i" GLint GLint GLint))
   (define glTexCoord3iv (GL GLvoid "glTexCoord3iv" GLint*))
   (define glTexCoord3s  (GL GLvoid "glTexCoord3s" GLshort GLshort GLshort))
   (define glTexCoord3sv (GL GLvoid "glTexCoord3sv" GLshort*))
   (define glTexCoord4d  (GL GLvoid "glTexCoord4d" GLdouble GLdouble GLdouble GLdouble))
   (define glTexCoord4dv (GL GLvoid "glTexCoord4dv" GLdouble*))
   (define glTexCoord4f  (GL GLvoid "glTexCoord4f" GLfloat GLfloat GLfloat GLfloat))
   (define glTexCoord4fv (GL GLvoid "glTexCoord4fv" GLfloat*))
   (define glTexCoord4i  (GL GLvoid "glTexCoord4i" GLint GLint GLint GLint))
   (define glTexCoord4iv (GL GLvoid "glTexCoord4iv" GLint*))
   (define glTexCoord4s  (GL GLvoid "glTexCoord4s" GLshort GLshort GLshort GLshort))
   (define glTexCoord4sv (GL GLvoid "glTexCoord4sv" GLshort*))
   (define glNormal3b    (GL GLvoid "glNormal3b" GLbyte GLbyte GLbyte))
   (define glNormal3bv   (GL GLvoid "glNormal3bv" GLbyte*))
   (define glNormal3d    (GL GLvoid "glNormal3d" GLdouble GLdouble GLdouble))
   (define glNormal3dv   (GL GLvoid "glNormal3dv" GLdouble*))
   (define glNormal3f    (GL GLvoid "glNormal3f"  GLfloat GLfloat GLfloat))
   (define glNormal3fv   (GL GLvoid "glNormal3fv" GLfloat*))
   (define glNormal3i    (GL GLvoid "glNormal3i" GLint GLint GLint))
   (define glNormal3iv   (GL GLvoid "glNormal3iv" GLint*))
   (define glNormal3s    (GL GLvoid "glNormal3s" GLshort GLshort GLshort))
   (define glNormal3sv   (GL GLvoid "glNormal3sv" GLshort*))
   (define glColor3b     (GL GLvoid "glColor3b"    GLbyte GLbyte GLbyte))
   (define glColor3bv    (GL GLvoid "glColor3bv"   GLbyte*))
   (define glColor3d     (GL GLvoid "glColor3d"    GLdouble GLdouble GLdouble))
   (define glColor3dv    (GL GLvoid "glColor3dv"   GLdouble*))
   (define glColor3f     (GL GLvoid "glColor3f"    GLfloat GLfloat GLfloat))
   (define glColor3fv    (GL GLvoid "glColor3fv"   GLfloat*))
   (define glColor3i     (GL GLvoid "glColor3i"    GLint GLint GLint))
   (define glColor3iv    (GL GLvoid "glColor3iv"   GLint*))
   (define glColor3s     (GL GLvoid "glColor3s"    GLshort GLshort GLshort))
   (define glColor3sv    (GL GLvoid "glColor3sv"   GLshort*))
   (define glColor3ub    (GL GLvoid "glColor3ub"   GLubyte GLubyte GLubyte))
   (define glColor3ubv   (GL GLvoid "glColor3ubv"  GLubyte*))
   (define glColor3ui    (GL GLvoid "glColor3ui"   GLuint GLuint GLuint))
   (define glColor3uiv   (GL GLvoid "glColor3uiv"  GLuint*))
   (define glColor3us    (GL GLvoid "glColor3us"   GLushort GLushort GLushort))
   (define glColor3usv   (GL GLvoid "glColor3usv"  GLushort*))
   (define glColor4b     (GL GLvoid "glColor4b"    GLbyte GLbyte GLbyte GLbyte))
   (define glColor4bv    (GL GLvoid "glColor4bv"   GLbyte*))
   (define glColor4d     (GL GLvoid "glColor4d"    GLdouble GLdouble GLdouble GLdouble))
   (define glColor4dv    (GL GLvoid "glColor4dv"   GLdouble*))
   (define glColor4f     (GL GLvoid "glColor4f"    GLfloat GLfloat GLfloat GLfloat))
   (define glColor4fv    (GL GLvoid "glColor4fv"   GLfloat*))
   (define glColor4i     (GL GLvoid "glColor4i"    GLint GLint GLint GLint))
   (define glColor4iv    (GL GLvoid "glColor4iv"   GLint*))
   (define glColor4s     (GL GLvoid "glColor4s"    GLshort GLshort GLshort GLshort))
   (define glColor4sv    (GL GLvoid "glColor4sv"   GLshort*))
   (define glColor4ub    (GL GLvoid "glColor4ub"   GLubyte GLubyte GLubyte GLubyte))
   (define glColor4ubv   (GL GLvoid "glColor4ubv"  GLubyte*))
   (define glColor4ui    (GL GLvoid "glColor4ui"   GLuint GLuint GLuint GLuint))
   (define glColor4uiv   (GL GLvoid "glColor4uiv"  GLuint*))
   (define glColor4us    (GL GLvoid "glColor4us"   GLushort GLushort GLushort GLushort))
   (define glColor4usv   (GL GLvoid "glColor4usv"  GLushort*))
   (define glIndexd      (GL GLvoid "glIndexd" GLdouble))
   (define glIndexdv     (GL GLvoid "glIndexdv" GLdouble*))
   (define glIndexf      (GL GLvoid "glIndexf" GLfloat))
   (define glIndexfv     (GL GLvoid "glIndexfv" GLfloat*))
   (define glIndexi      (GL GLvoid "glIndexi" GLint))
   (define glIndexiv     (GL GLvoid "glIndexiv" GLint*))
   (define glIndexs      (GL GLvoid "glIndexs" GLshort))
   (define glIndexsv     (GL GLvoid "glIndexsv" GLshort*))
   (define glRectd       (GL GLvoid "glRectd"  GLdouble GLdouble GLdouble GLdouble))
   (define glRectdv      (GL GLvoid "glRectdv" GLdouble* GLdouble*))
   (define glRectf       (GL GLvoid "glRectf"  GLfloat GLfloat GLfloat GLfloat))
   (define glRectfv      (GL GLvoid "glRectfv" GLfloat* GLfloat*))
   (define glRecti       (GL GLvoid "glRecti"  GLint GLint GLint GLint))
   (define glRectiv      (GL GLvoid "glRectiv" GLint* GLint*))
   (define glRects       (GL GLvoid "glRects"  GLshort GLshort GLshort GLshort))
   (define glRectsv      (GL GLvoid "glRectsv" GLshort* GLshort*))
   (define glMatrixMode  (GL GLvoid "glMatrixMode" GLenum))
   (define glLoadMatrixd (GL GLvoid "glLoadMatrixd" GLdouble*))
   (define glLoadMatrixf (GL GLvoid "glLoadMatrixf" GLfloat*))
   (define glMultMatrixd (GL GLvoid "glMultMatrixd" GLdouble*))
   (define glMultMatrixf (GL GLvoid "glMultMatrixf" GLfloat*))
   (define glLoadIdentity(GL GLvoid "glLoadIdentity"))
   (define glRotated     (GL GLvoid "glRotated" GLdouble GLdouble GLdouble GLdouble))
   (define glRotatef     (GL GLvoid "glRotatef" GLfloat GLfloat GLfloat GLfloat))
   (define glTranslated  (GL GLvoid "glTranslated" GLdouble GLdouble GLdouble))
   (define glTranslatef  (GL GLvoid "glTranslatef" GLfloat GLfloat GLfloat))
   (define glScaled      (GL GLvoid "glScaled" GLdouble GLdouble GLdouble))
   (define glScalef      (GL GLvoid "glScalef" GLfloat GLfloat GLfloat))
   (define glFrustum     (GL GLvoid "glFrustum" GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble))
   (define glOrtho       (GL GLvoid "glOrtho" GLdouble GLdouble  GLdouble GLdouble  GLdouble GLdouble))
   (define glPushMatrix  (GL GLvoid "glPushMatrix"))
   (define glPopMatrix   (GL GLvoid "glPopMatrix"))
   (define glTexGend     (GL GLvoid "glTexGend" GLenum GLenum GLdouble))
   (define glTexGendv    (GL GLvoid "glTexGendv" GLenum GLenum GLdouble*))
   (define glTexGenf     (GL GLvoid "glTexGenf" GLenum GLenum GLfloat))
   (define glTexGenfv    (GL GLvoid "glTexGenfv" GLenum GLenum GLfloat*))
   (define glTexGeni     (GL GLvoid "glTexGeni" GLenum GLenum GLint))
   (define glTexGeniv    (GL GLvoid "glTexGeniv" GLenum GLenum GLint*))
   (define glClipPlane   (GL GLvoid "glClipPlane"  GLenum GLdouble*))
   (define glRasterPos2d (GL GLvoid "glRasterPos2d" GLdouble GLdouble))
   (define glRasterPos2dv(GL GLvoid "glRasterPos2dv" GLdouble*))
   (define glRasterPos2f (GL GLvoid "glRasterPos2f" GLfloat GLfloat))
   (define glRasterPos2fv(GL GLvoid "glRasterPos2fv" GLfloat*))
   (define glRasterPos2i (GL GLvoid "glRasterPos2i" GLint GLint))
   (define glRasterPos2iv(GL GLvoid "glRasterPos2iv" GLint*))
   (define glRasterPos2s (GL GLvoid "glRasterPos2s" GLshort GLshort))
   (define glRasterPos2sv(GL GLvoid "glRasterPos2sv" GLshort*))
   (define glRasterPos3d (GL GLvoid "glRasterPos3d" GLdouble GLdouble GLdouble))
   (define glRasterPos3dv(GL GLvoid "glRasterPos3dv" GLdouble*))
   (define glRasterPos3f (GL GLvoid "glRasterPos3f" GLfloat GLfloat GLfloat))
   (define glRasterPos3fv(GL GLvoid "glRasterPos3fv" GLfloat*))
   (define glRasterPos3i (GL GLvoid "glRasterPos3i" GLint GLint GLint))
   (define glRasterPos3iv(GL GLvoid "glRasterPos3iv" GLint*))
   (define glRasterPos3s (GL GLvoid "glRasterPos3s" GLshort GLshort GLshort))
   (define glRasterPos3sv(GL GLvoid "glRasterPos3sv" GLshort*))
   (define glRasterPos4d (GL GLvoid "glRasterPos4d" GLdouble GLdouble GLdouble GLdouble))
   (define glRasterPos4dv(GL GLvoid "glRasterPos4dv" GLdouble*))
   (define glRasterPos4f (GL GLvoid "glRasterPos4f" GLfloat GLfloat GLfloat GLfloat))
   (define glRasterPos4fv(GL GLvoid "glRasterPos4fv" GLfloat*))
   (define glRasterPos4i (GL GLvoid "glRasterPos4i" GLint GLint GLint GLint))
   (define glRasterPos4iv(GL GLvoid "glRasterPos4iv" GLint*))
   (define glRasterPos4s (GL GLvoid "glRasterPos4s" GLshort GLshort GLshort GLshort))
   (define glRasterPos4sv(GL GLvoid "glRasterPos4sv" GLshort*))
   (define glMaterialf   (GL GLvoid "glMaterialf"  GLenum GLenum GLfloat))
   (define glMaterialfv  (GL GLvoid "glMaterialfv" GLenum GLenum GLfloat*))
   (define glMateriali   (GL GLvoid "glMateriali"  GLenum GLenum GLint))
   (define glMaterialiv  (GL GLvoid "glMaterialiv" GLenum GLenum GLint*))
   (define glLightf      (GL GLvoid "glLightf" GLenum GLenum GLfloat))
   (define glLightfv     (GL GLvoid "glLightfv" GLenum GLenum GLfloat*))
   (define glLighti      (GL GLvoid "glLighti" GLenum GLenum GLint))
   (define glLightiv     (GL GLvoid "glLightiv" GLenum GLenum GLint*))
   (define glLightModelf (GL GLvoid "glLightModelf" GLenum GLfloat))
   (define glLightModelfv(GL GLvoid "glLightModelfv" GLenum GLfloat*))
   (define glLightModeli (GL GLvoid "glLightModeli" GLenum GLint))
   (define glLightModeliv(GL GLvoid "glLightModeliv" GLenum GLint*))
   (define glColorMaterial (GL GLvoid "glColorMaterial" GLenum GLenum))
   (define glShadeModel  (GL GLvoid "glShadeModel" GLenum))
   (define glLineStipple (GL GLvoid "glLineStipple" GLint GLushort))
   (define glPolygonStipple (GL GLvoid "glPolygonStipple" GLubyte*))
   (define glPixelTransferf (GL GLvoid "glPixelTransferf" GLenum GLfloat))
   (define glPixelTransferi (GL GLvoid "glPixelTransferi" GLenum GLint))
   (define glPixelMapfv  (GL GLvoid "glPixelMapfv" GLenum GLsizei GLfloat*))
   (define glPixelMapuiv (GL GLvoid "glPixelMapuiv" GLenum GLsizei GLuint*))
   (define glPixelMapusv (GL GLvoid "glPixelMapusv" GLenum GLsizei GLushort*))
   (define glDrawPixels  (GL GLvoid "glDrawPixels" GLsizei GLsizei GLenum GLenum GLvoid*))
   (define glPixelZoom   (GL GLvoid "glPixelZoom" GLfloat GLfloat))
   (define glBitmap      (GL GLvoid "glBitmap"     GLsizei GLsizei GLfloat GLfloat GLfloat GLfloat GLubyte*))
   (define glTexEnvf     (GL GLvoid "glTexEnvf" GLenum GLenum GLfloat))
   (define glTexEnvfv    (GL GLvoid "glTexEnvfv" GLenum GLenum GLfloat*))
   (define glTexEnvi     (GL GLvoid "glTexEnvi" GLenum GLenum GLint))
   (define glTexEnviv    (GL GLvoid "glTexEnviv" GLenum GLenum GLint*))
   (define glFogf        (GL GLvoid "glFogf" GLenum GLfloat))
   (define glFogfv       (GL GLvoid "glFogfv" GLenum GLfloat*))
   (define glFogi        (GL GLvoid "glFogi" GLenum GLint))
   (define glFogiv       (GL GLvoid "glFogiv" GLenum GLint*))
   (define glAlphaFunc   (GL GLvoid "glAlphaFunc"  GLenum GLclampf))
   (define glIndexMask   (GL GLvoid "glIndexMask" GLuint))
   (define glClearIndex  (GL GLvoid "glClearIndex" GLfloat))
   (define glClearAccum  (GL GLvoid "glClearAccum" GLfloat GLfloat GLfloat GLfloat))
   (define glAccum       (GL GLvoid "glAccum"      GLenum GLfloat))
   (define glCopyPixels  (GL GLvoid "glCopyPixels" GLint GLint GLsizei GLsizei GLenum))
   (define glMap1d       (GL GLvoid "glMap1d" GLenum GLdouble GLdouble GLint GLint GLdouble*))
   (define glMap1f       (GL GLvoid "glMap1f" GLenum GLfloat GLfloat GLint GLint GLfloat*))
   (define glMap2d       (GL GLvoid "glMap2d" GLenum GLdouble GLdouble GLint GLint GLdouble GLdouble GLint GLint GLdouble*))
   (define glMap2f       (GL GLvoid "glMap2f" GLenum GLfloat GLfloat GLint GLint GLfloat GLfloat GLint GLint GLfloat*))
   (define glEvalCoord1d (GL GLvoid "glEvalCoord1d" GLdouble))
   (define glEvalCoord1dv(GL GLvoid "glEvalCoord1dv" GLdouble*))
   (define glEvalCoord1f (GL GLvoid "glEvalCoord1f" GLfloat))
   (define glEvalCoord1fv(GL GLvoid "glEvalCoord1fv" GLfloat*))
   (define glEvalCoord2d (GL GLvoid "glEvalCoord2d" GLdouble GLdouble))
   (define glEvalCoord2dv(GL GLvoid "glEvalCoord2dv" GLdouble*))
   (define glEvalCoord2f (GL GLvoid "glEvalCoord2f" GLfloat GLfloat))
   (define glEvalCoord2fv(GL GLvoid "glEvalCoord2fv" GLfloat*))
   (define glMapGrid1d   (GL GLvoid "glMapGrid1d" GLint GLdouble GLdouble))
   (define glMapGrid1f   (GL GLvoid "glMapGrid1f" GLint GLfloat GLfloat))
   (define glMapGrid2d   (GL GLvoid "glMapGrid2d" GLint GLdouble GLdouble GLint GLdouble GLdouble))
   (define glMapGrid2f   (GL GLvoid "glMapGrid2f" GLint GLfloat GLfloat GLint GLfloat GLfloat))
   (define glEvalMesh1   (GL GLvoid "glEvalMesh1" GLenum GLint GLint))
   (define glEvalMesh2   (GL GLvoid "glEvalMesh2" GLenum GLint GLint GLint GLint))
   (define glEvalPoint1  (GL GLvoid "glEvalPoint1" GLint))
   (define glEvalPoint2  (GL GLvoid "glEvalPoint2" GLint GLint))
   (define glInitNames   (GL GLvoid "glInitNames"))
   (define glPopName     (GL GLvoid "glPopName"))
   (define glPushName    (GL GLvoid "glPushName" GLuint))
   (define glLoadName    (GL GLvoid "glLoadName" GLuint))
   (define glRenderMode  (GL GLint "glRenderMode" GLenum))
   (define glSelectBuffer(GL GLvoid "glSelectBuffer" GLsizei GLuint*))
   (define glFeedbackBuffer (GL GLvoid "glFeedbackBuffer" GLsizei GLenum GLfloat*))
   (define glPassThrough (GL GLvoid "glPassThrough" GLfloat))
   (define glNewList     (GL GLvoid "glNewList" GLuint GLenum))
   (define glEndList     (GL GLvoid "glEndList"))
   (define glCallList    (GL GLvoid "glCallList"   GLuint))
   (define glCallLists   (GL GLvoid "glCallLists"  GLsizei GLenum GLvoid*))
   (define glListBase    (GL GLvoid "glListBase" GLuint))
   (define glGenLists    (GL GLuint "glGenLists" GLsizei))
   (define glIsList      (GL GLboolean "glIsList" GLuint))
   (define glDeleteLists (GL GLvoid "glDeleteLists" GLuint GLsizei))
   (define glGetClipPlane(GL GLvoid "glGetClipPlane" GLenum GLdouble*))
   (define glGetLightfv  (GL GLvoid "glGetLightfv" GLenum GLenum GLfloat*))
   (define glGetLightiv  (GL GLvoid "glGetLightiv" GLenum GLenum GLint*))
   (define glGetMaterialfv (GL GLvoid "glGetMaterialfv" GLenum GLenum GLfloat*))
   (define glGetMaterialiv (GL GLvoid "glGetMaterialiv" GLenum GLenum GLint*))
   (define glGetTexEnvfv (GL GLvoid "glGetTexEnvfv" GLenum GLenum GLfloat*))
   (define glGetTexEnviv (GL GLvoid "glGetTexEnviv" GLenum GLenum GLint*))
   (define glGetTexGenfv (GL GLvoid "glGetTexGenfv" GLenum GLenum GLfloat*))
   (define glGetTexGeniv (GL GLvoid "glGetTexGeniv" GLenum GLenum GLint*))
   (define glGetPixelMapfv (GL GLvoid "glGetPixelMapfv" GLenum GLfloat*))
   (define glGetPixelMapuiv(GL GLvoid "glGetPixelMapuiv" GLenum GLuint*))
   (define glGetPixelMapusv(GL GLvoid "glGetPixelMapusv" GLenum GLushort*))
   (define glGetMapdv    (GL GLvoid "glGetMapdv" GLenum GLenum GLdouble*))
   (define glGetMapfv    (GL GLvoid "glGetMapfv" GLenum GLenum GLfloat*))
   (define glGetMapiv    (GL GLvoid "glGetMapiv" GLenum GLenum GLint*))
   (define glGetPolygonStipple (GL GLvoid "glGetPolygonStipple" GLubyte*))
   (define glPushAttrib  (GL GLvoid "glPushAttrib" GLbitfield))
   (define glPopAttrib   (GL GLvoid "glPopAttrib"))

   (define GL_ACCUM               #x0100)
   (define GL_LOAD                #x0101)
   (define GL_RETURN              #x0102)
   (define GL_MULT                #x0103)
   (define GL_ADD                 #x0104)
   (define GL_CURRENT_BIT         #x00001)
   (define GL_POINT_BIT           #x00002)
   (define GL_LINE_BIT            #x00004)
   (define GL_POLYGON_BIT         #x00008)
   (define GL_POLYGON_STIPPLE_BIT #x00010)
   (define GL_PIXEL_MODE_BIT      #x00020)
   (define GL_LIGHTING_BIT        #x00040)
   (define GL_FOG_BIT             #x00080)
   (define GL_ACCUM_BUFFER_BIT    #x00200)
   (define GL_VIEWPORT_BIT        #x00800)
   (define GL_TRANSFORM_BIT       #x01000)
   (define GL_ENABLE_BIT          #x02000)
   (define GL_HINT_BIT            #x08000)
   (define GL_EVAL_BIT            #x10000)
   (define GL_LIST_BIT            #x20000)
   (define GL_TEXTURE_BIT         #x40000)
   (define GL_SCISSOR_BIT         #x80000)
   (define GL_ALL_ATTRIB_BITS     #xFFFFF)
   (define GL_POINTS              #x0000)
   (define GL_LINES               #x0001)
   (define GL_LINE_LOOP           #x0002)
   (define GL_LINE_STRIP          #x0003)
   (define GL_TRIANGLES           #x0004)
   (define GL_TRIANGLE_STRIP      #x0005)
   (define GL_TRIANGLE_FAN        #x0006)
   (define GL_QUADS               #x0007)
   (define GL_QUAD_STRIP          #x0008)
   (define GL_POLYGON             #x0009)
   (define GL_QUAD_STRIP          #x0008)
   (define GL_POLYGON             #x0009)
   (define GL_CLIP_PLANE0 #x3000)
   (define GL_CLIP_PLANE1 #x3001)
   (define GL_CLIP_PLANE2 #x3002)
   (define GL_CLIP_PLANE3 #x3003)
   (define GL_CLIP_PLANE4 #x3004)
   (define GL_CLIP_PLANE5 #x3005)
   (define GL_2_BYTES             #x1407)
   (define GL_3_BYTES             #x1408)
   (define GL_4_BYTES             #x1409)
   (define GL_AUX0           #x0409)
   (define GL_AUX1           #x040A)
   (define GL_AUX2           #x040B)
   (define GL_AUX3           #x040C)
   (define GL_2D #x0600)
   (define GL_3D #x0601)
   (define GL_3D_COLOR #x0602)
   (define GL_3D_COLOR_TEXTURE #x0603)
   (define GL_4D_COLOR_TEXTURE #x0604)
   (define GL_PASS_THROUGH_TOKEN #x0700)
   (define GL_POINT_TOKEN #x0701)
   (define GL_LINE_TOKEN #x0702)
   (define GL_POLYGON_TOKEN #x0703)
   (define GL_BITMAP_TOKEN #x0704)
   (define GL_DRAW_PIXEL_TOKEN #x0705)
   (define GL_COPY_PIXEL_TOKEN #x0706)
   (define GL_LINE_RESET_TOKEN #x0707)
   (define GL_EXP #x0800)
   (define GL_EXP2 #x0801)
   (define GL_COEFF #x0A00)
   (define GL_ORDER #x0A01)
   (define GL_DOMAIN #x0A02)
   (define GL_CURRENT_COLOR #x0B00)
   (define GL_CURRENT_INDEX #x0B01)
   (define GL_CURRENT_NORMAL #x0B02)
   (define GL_CURRENT_TEXTURE_COORDS #x0B03)
   (define GL_CURRENT_RASTER_COLOR #x0B04)
   (define GL_CURRENT_RASTER_INDEX #x0B05)
   (define GL_CURRENT_RASTER_TEXTURE_COORDS #x0B06)
   (define GL_CURRENT_RASTER_POSITION #x0B07)
   (define GL_CURRENT_RASTER_POSITION_VALID #x0B08)
   (define GL_CURRENT_RASTER_DISTANCE #x0B09)
   (define GL_POINT_SMOOTH #x0B10)
   (define GL_LINE_STIPPLE #x0B24)
   (define GL_LINE_STIPPLE_PATTERN #x0B25)
   (define GL_LINE_STIPPLE_REPEAT #x0B26)
   (define GL_LIST_MODE #x0B30)
   (define GL_MAX_LIST_NESTING #x0B31)
   (define GL_LIST_BASE #x0B32)
   (define GL_LIST_INDEX #x0B33)
   (define GL_POLYGON_STIPPLE #x0B42)
   (define GL_EDGE_FLAG #x0B43)
   (define GL_LIGHTING #x0B50)
   (define GL_LIGHT_MODEL_LOCAL_VIEWER #x0B51)
   (define GL_LIGHT_MODEL_TWO_SIDE #x0B52)
   (define GL_LIGHT_MODEL_AMBIENT #x0B53)
   (define GL_SHADE_MODEL #x0B54)
   (define GL_COLOR_MATERIAL_FACE #x0B55)
   (define GL_COLOR_MATERIAL_PARAMETER #x0B56)
   (define GL_COLOR_MATERIAL #x0B57)
   (define GL_FOG #x0B60)
   (define GL_FOG_INDEX #x0B61)
   (define GL_FOG_DENSITY #x0B62)
   (define GL_FOG_START #x0B63)
   (define GL_FOG_END #x0B64)
   (define GL_FOG_MODE #x0B65)
   (define GL_FOG_COLOR #x0B66)
   (define GL_ACCUM_CLEAR_VALUE #x0B80)
   (define GL_MATRIX_MODE #x0BA0)
   (define GL_NORMALIZE #x0BA1)
   (define GL_MODELVIEW_STACK_DEPTH #x0BA3)
   (define GL_PROJECTION_STACK_DEPTH #x0BA4)
   (define GL_TEXTURE_STACK_DEPTH #x0BA5)
   (define GL_MODELVIEW_MATRIX #x0BA6)
   (define GL_PROJECTION_MATRIX #x0BA7)
   (define GL_TEXTURE_MATRIX #x0BA8)
   (define GL_ATTRIB_STACK_DEPTH #x0BB0)
   (define GL_ALPHA_TEST #x0BC0)
   (define GL_ALPHA_TEST_FUNC #x0BC1)
   (define GL_ALPHA_TEST_REF #x0BC2)
   (define GL_LOGIC_OP #x0BF1)
   (define GL_AUX_BUFFERS #x0C00)
   (define GL_INDEX_CLEAR_VALUE #x0C20)
   (define GL_INDEX_WRITEMASK #x0C21)
   (define GL_INDEX_MODE #x0C30)
   (define GL_RGBA_MODE #x0C31)
   (define GL_RENDER_MODE #x0C40)
   (define GL_PERSPECTIVE_CORRECTION_HINT #x0C50)
   (define GL_POINT_SMOOTH_HINT #x0C51)
   (define GL_FOG_HINT #x0C54)
   (define GL_TEXTURE_GEN_S #x0C60)
   (define GL_TEXTURE_GEN_T #x0C61)
   (define GL_TEXTURE_GEN_R #x0C62)
   (define GL_TEXTURE_GEN_Q #x0C63)
   (define GL_PIXEL_MAP_I_TO_I #x0C70)
   (define GL_PIXEL_MAP_S_TO_S #x0C71)
   (define GL_PIXEL_MAP_I_TO_R #x0C72)
   (define GL_PIXEL_MAP_I_TO_G #x0C73)
   (define GL_PIXEL_MAP_I_TO_B #x0C74)
   (define GL_PIXEL_MAP_I_TO_A #x0C75)
   (define GL_PIXEL_MAP_R_TO_R #x0C76)
   (define GL_PIXEL_MAP_G_TO_G #x0C77)
   (define GL_PIXEL_MAP_B_TO_B #x0C78)
   (define GL_PIXEL_MAP_A_TO_A #x0C79)
   (define GL_PIXEL_MAP_I_TO_I_SIZE #x0CB0)
   (define GL_PIXEL_MAP_S_TO_S_SIZE #x0CB1)
   (define GL_PIXEL_MAP_I_TO_R_SIZE #x0CB2)
   (define GL_PIXEL_MAP_I_TO_G_SIZE #x0CB3)
   (define GL_PIXEL_MAP_I_TO_B_SIZE #x0CB4)
   (define GL_PIXEL_MAP_I_TO_A_SIZE #x0CB5)
   (define GL_PIXEL_MAP_R_TO_R_SIZE #x0CB6)
   (define GL_PIXEL_MAP_G_TO_G_SIZE #x0CB7)
   (define GL_PIXEL_MAP_B_TO_B_SIZE #x0CB8)
   (define GL_PIXEL_MAP_A_TO_A_SIZE #x0CB9)
   (define GL_MAP_COLOR #x0D10)
   (define GL_MAP_STENCIL #x0D11)
   (define GL_INDEX_SHIFT #x0D12)
   (define GL_INDEX_OFFSET #x0D13)
   (define GL_RED_SCALE #x0D14)
   (define GL_RED_BIAS #x0D15)
   (define GL_ZOOM_X #x0D16)
   (define GL_ZOOM_Y #x0D17)
   (define GL_GREEN_SCALE #x0D18)
   (define GL_GREEN_BIAS #x0D19)
   (define GL_BLUE_SCALE #x0D1A)
   (define GL_BLUE_BIAS #x0D1B)
   (define GL_ALPHA_SCALE #x0D1C)
   (define GL_ALPHA_BIAS #x0D1D)
   (define GL_DEPTH_SCALE #x0D1E)
   (define GL_DEPTH_BIAS #x0D1F)
   (define GL_MAX_EVAL_ORDER #x0D30)
   (define GL_MAX_LIGHTS #x0D31)
   (define GL_MAX_CLIP_PLANES #x0D32)
   (define GL_MAX_PIXEL_MAP_TABLE #x0D34)
   (define GL_MAX_ATTRIB_STACK_DEPTH #x0D35)
   (define GL_MAX_MODELVIEW_STACK_DEPTH #x0D36)
   (define GL_MAX_NAME_STACK_DEPTH #x0D37)
   (define GL_MAX_PROJECTION_STACK_DEPTH #x0D38)
   (define GL_MAX_TEXTURE_STACK_DEPTH #x0D39)
   (define GL_INDEX_BITS #x0D51)
   (define GL_RED_BITS #x0D52)
   (define GL_GREEN_BITS #x0D53)
   (define GL_BLUE_BITS #x0D54)
   (define GL_ALPHA_BITS #x0D55)
   (define GL_DEPTH_BITS #x0D56)
   (define GL_STENCIL_BITS #x0D57)
   (define GL_ACCUM_RED_BITS #x0D58)
   (define GL_ACCUM_GREEN_BITS #x0D59)
   (define GL_ACCUM_BLUE_BITS #x0D5A)
   (define GL_ACCUM_ALPHA_BITS #x0D5B)
   (define GL_NAME_STACK_DEPTH #x0D70)
   (define GL_AUTO_NORMAL #x0D80)
   (define GL_MAP1_COLOR_4 #x0D90)
   (define GL_MAP1_INDEX #x0D91)
   (define GL_MAP1_NORMAL #x0D92)
   (define GL_MAP1_TEXTURE_COORD_1 #x0D93)
   (define GL_MAP1_TEXTURE_COORD_2 #x0D94)
   (define GL_MAP1_TEXTURE_COORD_3 #x0D95)
   (define GL_MAP1_TEXTURE_COORD_4 #x0D96)
   (define GL_MAP1_VERTEX_3 #x0D97)
   (define GL_MAP1_VERTEX_4 #x0D98)
   (define GL_MAP2_COLOR_4 #x0DB0)
   (define GL_MAP2_INDEX #x0DB1)
   (define GL_MAP2_NORMAL #x0DB2)
   (define GL_MAP2_TEXTURE_COORD_1 #x0DB3)
   (define GL_MAP2_TEXTURE_COORD_2 #x0DB4)
   (define GL_MAP2_TEXTURE_COORD_3 #x0DB5)
   (define GL_MAP2_TEXTURE_COORD_4 #x0DB6)
   (define GL_MAP2_VERTEX_3 #x0DB7)
   (define GL_MAP2_VERTEX_4 #x0DB8)
   (define GL_MAP1_GRID_DOMAIN #x0DD0)
   (define GL_MAP1_GRID_SEGMENTS #x0DD1)
   (define GL_MAP2_GRID_DOMAIN #x0DD2)
   (define GL_MAP2_GRID_SEGMENTS #x0DD3)
   (define GL_FEEDBACK_BUFFER_POINTER #x0DF0)
   (define GL_FEEDBACK_BUFFER_SIZE #x0DF1)
   (define GL_FEEDBACK_BUFFER_TYPE #x0DF2)
   (define GL_SELECTION_BUFFER_POINTER #x0DF3)
   (define GL_SELECTION_BUFFER_SIZE #x0DF4)
   (define GL_TEXTURE_COMPONENTS #x1003)
   (define GL_TEXTURE_BORDER #x1005)
   (define GL_LIGHT0 #x4000)
   (define GL_LIGHT1 #x4001)
   (define GL_LIGHT2 #x4002)
   (define GL_LIGHT3 #x4003)
   (define GL_LIGHT4 #x4004)
   (define GL_LIGHT5 #x4005)
   (define GL_LIGHT6 #x4006)
   (define GL_LIGHT7 #x4007)
   (define GL_AMBIENT #x1200)
   (define GL_DIFFUSE #x1201)
   (define GL_SPECULAR #x1202)
   (define GL_POSITION #x1203)
   (define GL_SPOT_DIRECTION #x1204)
   (define GL_SPOT_EXPONENT #x1205)
   (define GL_SPOT_CUTOFF #x1206)
   (define GL_CONSTANT_ATTENUATION #x1207)
   (define GL_LINEAR_ATTENUATION #x1208)
   (define GL_QUADRATIC_ATTENUATION #x1209)
   (define GL_COMPILE #x1300)
   (define GL_COMPILE_AND_EXECUTE #x1301)
   (define GL_EMISSION #x1600)
   (define GL_SHININESS #x1601)
   (define GL_AMBIENT_AND_DIFFUSE #x1602)
   (define GL_COLOR_INDEXES #x1603)
   (define GL_MODELVIEW #x1700)
   (define GL_PROJECTION #x1701)
   (define GL_COLOR_INDEX #x1900)
   (define GL_LUMINANCE #x1909)
   (define GL_LUMINANCE_ALPHA #x190A)
   (define GL_BITMAP #x1A00)
   (define GL_RENDER #x1C00)
   (define GL_FEEDBACK #x1C01)
   (define GL_SELECT #x1C02)
   (define GL_FLAT #x1D00)
   (define GL_SMOOTH #x1D01)
   (define GL_S #x2000)
   (define GL_T #x2001)
   (define GL_R #x2002)
   (define GL_Q #x2003)
   (define GL_MODULATE #x2100)
   (define GL_DECAL #x2101)
   (define GL_TEXTURE_ENV_MODE #x2200)
   (define GL_TEXTURE_ENV_COLOR #x2201)
   (define GL_TEXTURE_ENV #x2300)
   (define GL_EYE_LINEAR #x2400)
   (define GL_OBJECT_LINEAR #x2401)
   (define GL_SPHERE_MAP #x2402)
   (define GL_TEXTURE_GEN_MODE #x2500)
   (define GL_OBJECT_PLANE #x2501)
   (define GL_EYE_PLANE #x2502)
   (define GL_CLAMP #x2900)

))
