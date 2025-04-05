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
   (exports (OpenGL 1.0 deprecated))
   (exports (OpenGL 1.1 deprecated))
   (exports (OpenGL 1.2 deprecated))
   (exports (OpenGL 1.3 deprecated))
   (exports (OpenGL 1.4 deprecated))
   (exports (OpenGL 1.5 deprecated))
   (exports (OpenGL 2.0 deprecated))
   (exports (OpenGL 2.1 deprecated))
   (exports (OpenGL 3.0 deprecated))

;   (exports (OpenGL ARB imaging deprecated)) ;?
;   (exports (OpenGL ARB framebuffer_object deprecated)) ;?
)

; ----------------------------------------------------------------------
(begin
   (define ARB_compatibility (gl:QueryExtension "GL_ARB_compatibility"))

   (import (OpenGL 1.0 deprecated))
   (import (OpenGL 1.1 deprecated))
   (import (OpenGL 1.2 deprecated))
   (import (OpenGL 1.3 deprecated))
   (import (OpenGL 1.4 deprecated))
   (import (OpenGL 1.5 deprecated))
   (import (OpenGL 2.0 deprecated))
   (import (OpenGL 2.1 deprecated))
   (import (OpenGL 3.0 deprecated))

))
