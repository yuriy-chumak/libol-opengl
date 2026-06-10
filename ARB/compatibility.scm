; https://registry.khronos.org/OpenGL/extensions/ARB/ARB_compatibility.txt

; ARB_compatibility
;
; Status
;  Complete. Approved by the ARB on 2009/02/17.
;
; Number
;  ARB Extension #58

(define-library (OpenGL ARB compatibility)

(import (scheme core)
   (OpenGL platform))

(export  ARB_compatibility

   (exports (OpenGL 1.0))  GL_VERSION_1_0_DEPRECATED
   (exports (OpenGL 1.1))  GL_VERSION_1_1_DEPRECATED
   (exports (OpenGL 1.2))  GL_VERSION_1_2_DEPRECATED
   (exports (OpenGL 1.3))  GL_VERSION_1_3_DEPRECATED
   (exports (OpenGL 1.4))  GL_VERSION_1_4_DEPRECATED
   (exports (OpenGL 1.5))  GL_VERSION_1_5_DEPRECATED
   (exports (OpenGL 2.0))  GL_VERSION_2_0_DEPRECATED
   (exports (OpenGL 2.1))  GL_VERSION_2_1_DEPRECATED
   (exports (OpenGL 3.0))  GL_VERSION_3_0_DEPRECATED

;   (exports (OpenGL ARB imaging deprecated)) ;?
;   (exports (OpenGL ARB framebuffer_object deprecated)) ;?
)

; ----------------------------------------------------------------------
(begin
   (define ARB_compatibility #true)

   (import (OpenGL 1.0))  (define GL_VERSION_1_0_DEPRECATED #T)
   (import (OpenGL 1.1))  (define GL_VERSION_1_1_DEPRECATED #T)
   (import (OpenGL 1.2))  (define GL_VERSION_1_2_DEPRECATED #T)
   (import (OpenGL 1.3))  (define GL_VERSION_1_3_DEPRECATED #T)
   (import (OpenGL 1.4))  (define GL_VERSION_1_4_DEPRECATED #T)
   (import (OpenGL 1.5))  (define GL_VERSION_1_5_DEPRECATED #T)
   (import (OpenGL 2.0))  (define GL_VERSION_2_0_DEPRECATED #T)
   (import (OpenGL 2.1))  (define GL_VERSION_2_1_DEPRECATED #T)
   (import (OpenGL 3.0))  (define GL_VERSION_3_0_DEPRECATED #T)

))
