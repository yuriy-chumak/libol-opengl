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

   (exports (OpenGL ARB compatibility 1.0))
   (exports (OpenGL ARB compatibility 1.1))
   (exports (OpenGL ARB compatibility 1.2))
   (exports (OpenGL ARB compatibility 1.3))
   (exports (OpenGL ARB compatibility 1.4))
   (exports (OpenGL ARB compatibility 1.5))
   (exports (OpenGL ARB compatibility 2.0))
   (exports (OpenGL ARB compatibility 2.1))
   (exports (OpenGL ARB compatibility 3.0))

;   (exports (OpenGL ARB imaging deprecated)) ;?
;   (exports (OpenGL ARB framebuffer_object deprecated)) ;?
)

; ----------------------------------------------------------------------
(begin
   (define ARB_compatibility #true)

   (import (OpenGL ARB compatibility 1.0))
   (import (OpenGL ARB compatibility 1.1))
   (import (OpenGL ARB compatibility 1.2))
   (import (OpenGL ARB compatibility 1.3))
   (import (OpenGL ARB compatibility 1.4))
   (import (OpenGL ARB compatibility 1.5))
   (import (OpenGL ARB compatibility 2.0))
   (import (OpenGL ARB compatibility 2.1))
   (import (OpenGL ARB compatibility 3.0))

))
