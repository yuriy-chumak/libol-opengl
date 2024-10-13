; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_multisample.txt

; ARB_multisample                               (included in OpenGL 1.3)
;
; Version
;  Last Modified Date: March 12, 2002
;  Author Revision: 0.6
;  Based on:  SGIS_Multisample Specification
;             Date: 1994/11/22 Revision: 1.14
;
; Number
;  ARB Extension #5

(define-library (OpenGL ARB multisample)

(import (scheme core)
   (OpenGL platform))

(export  ARB_multisample
   ; GLX ARB_multisample
   ; WGL ARB_multisample

; ----------------------------
; New Procedures and Functions
;
   glSampleCoverage

; ----------
; New Tokens
;
   GLX_SAMPLE_BUFFERS
   GLX_SAMPLES

   WGL_SAMPLE_BUFFERS
   WGL_SAMPLES

   GL_MULTISAMPLE
   GL_SAMPLE_ALPHA_TO_COVERAGE
   GL_SAMPLE_ALPHA_TO_ONE
   GL_SAMPLE_COVERAGE

   GL_MULTISAMPLE_BIT

   GL_SAMPLE_BUFFERS
   GL_SAMPLES
   GL_SAMPLE_COVERAGE_VALUE
   GL_SAMPLE_COVERAGE_INVERT
)

; ------------------------------------------------------------------
(begin
   (define ARB_multisample (gl:QueryExtension "GL_ARB_multisample"))
   (setq GL gl:GetProcAddress)

   (define glSampleCoverage (GL GLvoid "SampleCoverage" GLclampf GLboolean))

   (define GLX_SAMPLE_BUFFERS                  100000)
   (define GLX_SAMPLES                         100001)
   (define WGL_SAMPLE_BUFFERS                  #x2041)
   (define WGL_SAMPLES                         #x2042)

   (define GL_MULTISAMPLE                      #x809D)
   (define GL_SAMPLE_ALPHA_TO_COVERAGE         #x809E)
   (define GL_SAMPLE_ALPHA_TO_ONE              #x809F)
   (define GL_SAMPLE_COVERAGE                  #x80A0)
   (define GL_MULTISAMPLE_BIT                  #x20000000)
   (define GL_SAMPLE_BUFFERS                   #x80A8)
   (define GL_SAMPLES                          #x80A9)
   (define GL_SAMPLE_COVERAGE_VALUE            #x80AA)
   (define GL_SAMPLE_COVERAGE_INVERT           #x80AB)
))
