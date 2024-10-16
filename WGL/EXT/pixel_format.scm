; https://registry.khronos.org/OpenGL/extensions/EXT/WGL_EXT_pixel_format.txt

; EXT_pixel_format
;
; Version
;  $Date: 1999/04/03 08:41:17 $ $Revision: 1.4 $
;
; Number
;  170

(define-library (OpenGL WGL EXT pixel_format)

(import (scheme core)
   (OpenGL platform))

(export  EXT_pixel_format

; ----------------------------
; New Procedures and Functions
;
   wglGetPixelFormatAttribiv
   wglGetPixelFormatAttribfv
   wglChoosePixelFormat

; ----------
; New Tokens
;
;  Accepted in the <piAttributes> parameter array of
;  wglGetPixelFormatAttribivEXT, and wglGetPixelFormatAttribfvEXT:
   WGL_NUMBER_PIXEL_FORMATS

;  Accepted in the <piAttributes> parameter array of
;  wglGetPixelFormatAttribivEXT, and wglGetPixelFormatAttribfvEXT,
;  and in the <piAttribIList> and <pfAttribFList> parameter arrays
;  of wglChoosePixelFormatEXT:
   WGL_DRAW_TO_WINDOW
   WGL_DRAW_TO_BITMAP
   WGL_ACCELERATION
   WGL_NEED_PALETTE
   WGL_NEED_SYSTEM_PALETTE
   WGL_SWAP_LAYER_BUFFERS
   WGL_SWAP_METHOD
   WGL_NUMBER_OVERLAYS
   WGL_NUMBER_UNDERLAYS
   WGL_TRANSPARENT
   WGL_TRANSPARENT_VALUE
   WGL_SHARE_DEPTH
   WGL_SHARE_STENCIL
   WGL_SHARE_ACCUM
   WGL_SUPPORT_GDI
   WGL_SUPPORT_OPENGL
   WGL_DOUBLE_BUFFER
   WGL_STEREO
   WGL_PIXEL_TYPE
   WGL_COLOR_BITS
   WGL_RED_BITS
   WGL_RED_SHIFT
   WGL_GREEN_BITS
   WGL_GREEN_SHIFT
   WGL_BLUE_BITS
   WGL_BLUE_SHIFT
   WGL_ALPHA_BITS
   WGL_ALPHA_SHIFT
   WGL_ACCUM_BITS
   WGL_ACCUM_RED_BITS
   WGL_ACCUM_GREEN_BITS
   WGL_ACCUM_BLUE_BITS
   WGL_ACCUM_ALPHA_BITS
   WGL_DEPTH_BITS
   WGL_STENCIL_BITS
   WGL_AUX_BUFFERS

;  Accepted in the <piAttribIList> and <pfAttribFList> parameter arrays
;  of wglChoosePixelFormatEXT.  And returned in the <piValues> parameter
;  array of wglGetPixelFormatAttribivEXT, and the <pfValues> parameter
;  array of wglGetPixelFormatAttribfvEXT,
   WGL_NO_ACCELERATION
   WGL_GENERIC_ACCELERATION
   WGL_FULL_ACCELERATION

   WGL_SWAP_EXCHANGE
   WGL_SWAP_COPY
   WGL_SWAP_UNDEFINED

   WGL_TYPE_RGBA
   WGL_TYPE_COLORINDEX

)

; ---------------------------------------------------------------------
(begin
   (define EXT_pixel_format (gl:QueryExtension "WGL_EXT_pixel_format"))
   (setq GL gl:GetProcAddress)

   (setq int fft-int) (setq int* (fft* int))
   (setq HDC type-vptr)
   (setq BOOL fft-int)
   (setq UINT fft-unsigned-int) (setq UINT* (fft* UINT))
   (setq FLOAT fft-float) (setq FLOAT* (fft* FLOAT))

   (define wglGetPixelFormatAttribiv (GL BOOL "wglGetPixelFormatAttribivEXT" HDC int int UINT int* int*))
   (define wglGetPixelFormatAttribfv (GL BOOL "wglGetPixelFormatAttribfvEXT" HDC int int UINT int* FLOAT*))
   (define wglChoosePixelFormat (GL BOOL "wglChoosePixelFormatEXT" HDC int FLOAT* UINT int* UINT*))

   (define WGL_NUMBER_PIXEL_FORMATS         #x2000)

;  Accepted in the <piAttributes> parameter array of
;  wglGetPixelFormatAttribivEXT, and wglGetPixelFormatAttribfvEXT,
;  and in the <piAttribIList> and <pfAttribFList> parameter arrays
;  of wglChoosePixelFormatEXT:
   (define WGL_DRAW_TO_WINDOW               #x2001)
   (define WGL_DRAW_TO_BITMAP               #x2002)
   (define WGL_ACCELERATION                 #x2003)
   (define WGL_NEED_PALETTE                 #x2004)
   (define WGL_NEED_SYSTEM_PALETTE          #x2005)
   (define WGL_SWAP_LAYER_BUFFERS           #x2006)
   (define WGL_SWAP_METHOD                  #x2007)
   (define WGL_NUMBER_OVERLAYS              #x2008)
   (define WGL_NUMBER_UNDERLAYS             #x2009)
   (define WGL_TRANSPARENT                  #x200A)
   (define WGL_TRANSPARENT_VALUE            #x200B)
   (define WGL_SHARE_DEPTH                  #x200C)
   (define WGL_SHARE_STENCIL                #x200D)
   (define WGL_SHARE_ACCUM                  #x200E)
   (define WGL_SUPPORT_GDI                  #x200F)
   (define WGL_SUPPORT_OPENGL               #x2010)
   (define WGL_DOUBLE_BUFFER                #x2011)
   (define WGL_STEREO                       #x2012)
   (define WGL_PIXEL_TYPE                   #x2013)
   (define WGL_COLOR_BITS                   #x2014)
   (define WGL_RED_BITS                     #x2015)
   (define WGL_RED_SHIFT                    #x2016)
   (define WGL_GREEN_BITS                   #x2017)
   (define WGL_GREEN_SHIFT                  #x2018)
   (define WGL_BLUE_BITS                    #x2019)
   (define WGL_BLUE_SHIFT                   #x201A)
   (define WGL_ALPHA_BITS                   #x201B)
   (define WGL_ALPHA_SHIFT                  #x201C)
   (define WGL_ACCUM_BITS                   #x201D)
   (define WGL_ACCUM_RED_BITS               #x201E)
   (define WGL_ACCUM_GREEN_BITS             #x201F)
   (define WGL_ACCUM_BLUE_BITS              #x2020)
   (define WGL_ACCUM_ALPHA_BITS             #x2021)
   (define WGL_DEPTH_BITS                   #x2022)
   (define WGL_STENCIL_BITS                 #x2023)
   (define WGL_AUX_BUFFERS                  #x2024)

;  Accepted in the <piAttribIList> and <pfAttribFList> parameter arrays
;  of wglChoosePixelFormatEXT.  And returned in the <piValues> parameter
;  array of wglGetPixelFormatAttribivEXT, and the <pfValues> parameter
;  array of wglGetPixelFormatAttribfvEXT,
   (define WGL_NO_ACCELERATION              #x2025)
   (define WGL_GENERIC_ACCELERATION         #x2026)
   (define WGL_FULL_ACCELERATION            #x2027)

   (define WGL_SWAP_EXCHANGE                #x2028)
   (define WGL_SWAP_COPY                    #x2029)
   (define WGL_SWAP_UNDEFINED               #x202A)

   (define WGL_TYPE_RGBA                    #x202B)
   (define WGL_TYPE_COLORINDEX              #x202C)

))
