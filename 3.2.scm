; OpenGL 3.2 (3 Aug 2009)  GLSL 1.5
; Introduced "deprecation" model

(define-library (OpenGL 3.2)
(export
      (exports (OpenGL 3.1))

   GL_VERSION_3_2

   GL_VERSION_1_0_DEPRECATED
   GL_VERSION_1_1_DEPRECATED
   GL_VERSION_1_2_DEPRECATED
   GL_VERSION_1_3_DEPRECATED
   GL_VERSION_1_4_DEPRECATED
   GL_VERSION_1_5_DEPRECATED
   GL_VERSION_2_0_DEPRECATED
   GL_VERSION_2_1_DEPRECATED
   GL_VERSION_3_0_DEPRECATED
)

(import (scheme core))
(cond-expand
   (GL_VERSION_1_0_DEPRECATED (import (OpenGL ARB compatibility 1.0)))
   (GL_VERSION_1_1_DEPRECATED (import (OpenGL ARB compatibility 1.1)))
   (GL_VERSION_1_2_DEPRECATED (import (OpenGL ARB compatibility 1.2)))
   (GL_VERSION_1_3_DEPRECATED (import (OpenGL ARB compatibility 1.3)))
   (GL_VERSION_1_4_DEPRECATED (import (OpenGL ARB compatibility 1.4)))
   (GL_VERSION_1_5_DEPRECATED (import (OpenGL ARB compatibility 1.5)))
   (GL_VERSION_2_0_DEPRECATED (import (OpenGL ARB compatibility 2.0)))
   (GL_VERSION_2_1_DEPRECATED (import (OpenGL ARB compatibility 2.1)))
   (GL_VERSION_3_0_DEPRECATED (import (OpenGL ARB compatibility 3.0)))
)

   ;; GL_ARB_imaging_DEPRECATED
   ;; GL_ARB_framebuffer_object_DEP

; ============================================================================
(import (scheme core)
        (OpenGL 3.1))

(begin
   (define GL_VERSION_3_2 1)

   (define GL_VERSION_1_0_DEPRECATED (if (member 'GL_VERSION_1_0_DEPRECATED *features*) #true))
   (define GL_VERSION_1_1_DEPRECATED (if (member 'GL_VERSION_1_1_DEPRECATED *features*) #true))
   (define GL_VERSION_1_2_DEPRECATED (if (member 'GL_VERSION_1_2_DEPRECATED *features*) #true))
   (define GL_VERSION_1_3_DEPRECATED (if (member 'GL_VERSION_1_3_DEPRECATED *features*) #true))
   (define GL_VERSION_1_4_DEPRECATED (if (member 'GL_VERSION_1_4_DEPRECATED *features*) #true))
   (define GL_VERSION_1_5_DEPRECATED (if (member 'GL_VERSION_1_5_DEPRECATED *features*) #true))
   (define GL_VERSION_2_0_DEPRECATED (if (member 'GL_VERSION_2_0_DEPRECATED *features*) #true))
   (define GL_VERSION_2_1_DEPRECATED (if (member 'GL_VERSION_2_1_DEPRECATED *features*) #true))
   (define GL_VERSION_3_0_DEPRECATED (if (member 'GL_VERSION_3_0_DEPRECATED *features*) #true))

))