;
; EXT_copy_texture (included in OpenGL 1.1)
;	Various methods to alter texture images, including image copying and sub-image replacement.
;
;	https://www.opengl.org/registry/specs/EXT/copy_texture.txt
;
; Version
;	$Date: 1995/06/17 03:33:42 $ $Revision: 1.21 $
;
; Overview
;	This extension defines methods to load texture images directly from the
;	framebuffer.  Methods are defined for both complete and partial
;	replacement of a texture image.  Because it is not possible to define
;	an entire 3D texture using a 2D framebuffer image, 3D textures are
;	supported only for partial replacement.
(define-library (OpenGL EXT copy_texture)

; ---------------------------------------------------------------------------
; Dependencies
;	EXT_texture3D affects the definition of this extension.
;	SGIS_texture_filter4 affects the definition of this extension.
;	EXT_subtexture affects the definition of this extension.
   (import
      (scheme core) (owl io)
      (OpenGL version-1-0))

;	EXT_texture is required.
   (import
      (OpenGL EXT texture))

; ---------------------------------------------------------------------------
   (export
    EXT_copy_texture
    
; ---------------------------------------------------------------------------
; New Procedures and Functions

   ;CopyTexImage1DEXT
   ;CopyTexImage2DEXT
   ;CopyTexSubImage1DEXT
   ;CopyTexSubImage2DEXT
   ;CopyTexSubImage3DEXT
   
; ---------------------------------------------------------------------------
; New Tokens

   ;none
    
)
  
; ---------------------------------------------------------------------------
(begin
   (define EXT_copy_texture (gl:ExtensionSupported? "GL_EXT_copy_texture"))

))
