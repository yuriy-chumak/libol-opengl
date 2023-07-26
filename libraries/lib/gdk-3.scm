(define-library (lib gdk-3)
   (export
      GSourceFunc
      gdk_threads_add_idle
      gdk_threads_add_timeout

      gdk_x11_display_get_xdisplay
      gdk_x11_window_get_xid

      GdkGLContext*
      GdkDisplay*
      GdkWindow*

      ; todo: move to standalone library "gdk-pixbuf-2.0"
      GdkPixbuf*
      gdk_pixbuf_loader_new
      gdk_pixbuf_loader_write
      gdk_pixbuf_loader_get_pixbuf
   )
   (import
      (scheme core)
      (otus ffi)
      (lib glib-2))

(cond-expand
   (Linux
      (begin
         (define GDK (load-dynamic-library "libgdk-3.so"))
      ))
   (Windows
      (begin
         (define GDK (load-dynamic-library "libgdk-3-0.dll"))
         (unless GDK (runtime-error "Can't load libgdk-3-0.dll"
            "try installing dlls from https://github.com/yuriy-chumak/libol-gtk-3/releases/"))
      )) )

(begin
   (define GdkDisplay* type-vptr)
   (define GdkWindow* type-vptr)

   (define GSourceFunc type-callable)

   (define gdk_threads_add_idle (GDK guint "gdk_threads_add_idle" GSourceFunc gpointer))
   (define gdk_threads_add_timeout (GDK guint "gdk_threads_add_timeout" guint GSourceFunc gpointer))

   (define gdk_x11_display_get_xdisplay (GDK type-vptr "gdk_x11_display_get_xdisplay" type-vptr))
   (define gdk_x11_window_get_xid (GDK type-vptr "gdk_x11_window_get_xid" GdkWindow*))

   (define GdkGLContext* fft-void*)

   ; Gdk Pixbuf Loader
   (define GdkPixbuf* fft-void*)
   (define GdkPixbufLoader* fft-void*)
   (define gdk_pixbuf_loader_new (GDK GdkPixbufLoader* "gdk_pixbuf_loader_new"))
   (define gdk_pixbuf_loader_write (GDK gboolean "gdk_pixbuf_loader_write" GdkPixbufLoader* type-bytevector gsize (fft& GError*)))
   (define gdk_pixbuf_loader_get_pixbuf (GDK GdkPixbuf* "gdk_pixbuf_loader_get_pixbuf" GdkPixbufLoader*))
))