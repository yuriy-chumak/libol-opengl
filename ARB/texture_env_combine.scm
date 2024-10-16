; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_texture_env_combine.txt

; ARB_texture_env_combine                               (included in OpenGL 1.3)
;
; Version
;  Last modified date: 2006/11/04
;
; Number
;  ARB Extension #17

(define-library (OpenGL ARB texture_env_combine)

(import (scheme core)
   (OpenGL platform))

(export  ARB_texture_env_combine

; ----------------------------
; New Procedures and Functions
;
;  none

; ----------
; New Tokens
;
   GL_COMBINE
   GL_COMBINE_RGB
   GL_COMBINE_ALPHA
   GL_SOURCE0_RGB
   GL_SOURCE1_RGB
   GL_SOURCE2_RGB
   GL_SOURCE0_ALPHA
   GL_SOURCE1_ALPHA
   GL_SOURCE2_ALPHA
   GL_OPERAND0_RGB
   GL_OPERAND1_RGB
   GL_OPERAND2_RGB
   GL_OPERAND0_ALPHA
   GL_OPERAND1_ALPHA
   GL_OPERAND2_ALPHA
   GL_RGB_SCALE
;  GL_ALPHA_SCALE

;  GL_REPLACE
;  GL_MODULATE
;  GL_ADD
   GL_ADD_SIGNED
   GL_INTERPOLATE
   GL_SUBTRACT

;  GL_TEXTURE
   GL_CONSTANT
   GL_PRIMARY_COLOR
   GL_PREVIOUS

;  GL_SRC_COLOR
;  GL_ONE_MINUS_SRC_COLOR
;  GL_SRC_ALPHA
;  GL_ONE_MINUS_SRC_ALPHA     

;  GL_SRC_ALPHA
;  GL_ONE_MINUS_SRC_ALPHA

)

; ----------------------------------------------------------------------------------
(begin
   (define ARB_texture_env_combine (gl:QueryExtension "GL_ARB_texture_env_combine"))

   (define GL_COMBINE                                     #x8570)
   (define GL_COMBINE_RGB                                 #x8571)
   (define GL_COMBINE_ALPHA                               #x8572)
   (define GL_SOURCE0_RGB                                 #x8580)
   (define GL_SOURCE1_RGB                                 #x8581)
   (define GL_SOURCE2_RGB                                 #x8582)
   (define GL_SOURCE0_ALPHA                               #x8588)
   (define GL_SOURCE1_ALPHA                               #x8589)
   (define GL_SOURCE2_ALPHA                               #x858A)
   (define GL_OPERAND0_RGB                                #x8590)
   (define GL_OPERAND1_RGB                                #x8591)
   (define GL_OPERAND2_RGB                                #x8592)
   (define GL_OPERAND0_ALPHA                              #x8598)
   (define GL_OPERAND1_ALPHA                              #x8599)
   (define GL_OPERAND2_ALPHA                              #x859A)
   (define GL_RGB_SCALE                                   #x8573)
   (define GL_ADD_SIGNED                                  #x8574)
   (define GL_INTERPOLATE                                 #x8575)
   (define GL_SUBTRACT                                    #x84E7)
   (define GL_CONSTANT                                    #x8576)
   (define GL_PRIMARY_COLOR                               #x8577)
   (define GL_PREVIOUS                                    #x8578)

))
