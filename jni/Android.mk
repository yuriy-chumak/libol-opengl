LOCAL_PATH := $(call my-dir)
# REPL

# elf object formats for supported architectures
elf_format=$(or \
   $(if $(findstring $(1),armeabi),    -B armv5te              -O elf32-littlearm),\
   $(if $(findstring $(1),armeabi-v7a),-B arm                  -O elf32-littlearm),\
   $(if $(findstring $(1),x86),        -B i386                 -O elf32-i386),\
   $(if $(findstring $(1),x86_64),     -B i386:x86-64          -O elf64-x86-64),\
   $(if $(findstring $(1),arm64-v8a),  -B aarch64              -O elf64-littleaarch64),\
   $(if $(findstring $(1),mips),       -B mips:isa32           -O elf32-tradlittlemips),\
   $(if $(findstring $(1),mips64),     -B mips:isa64r6         -O elf64-tradlittlemips)\
)
filename=$(lastword $(subst /, ,$(1)))

# https://balau82.wordpress.com/2012/02/19/linking-a-binary-blob-with-gcc
.PHONY: $(TOOLCHAIN_PREFIX)objcopy
jni/../obj/local/$(TARGET_ARCH_ABI)/repl.o: $(TOOLCHAIN_PREFIX)objcopy jni/../obj/local/$(TARGET_ARCH_ABI)
	@$(word 1,$^) -I binary $(call elf_format,$(call filename,$(word 2,$^))) repl $@
jni/../obj/local/$(TARGET_ARCH_ABI)/repl.c: jni/../obj/local/$(TARGET_ARCH_ABI)/repl.o
	@echo // This empty file required by the stupid Android build system >$@


# # -----------------------------------------------------------------------
# # default FreeType build for Android ------------------------------------
# #
include $(CLEAR_VARS)
LOCAL_MODULE := libfreetype

# compile in ARM mode, since the glyph loader/renderer is a hotspot
# when loading complex pages in the browser
#
# LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
	src/base/ftbbox.c \
	src/base/ftbitmap.c \
	src/base/ftglyph.c \
	src/base/ftstroke.c \
	src/base/ftxf86.c \
	src/base/ftbase.c \
	src/base/ftsystem.c \
	src/base/ftinit.c \
	src/base/ftgasp.c \
	src/raster/raster.c \
	src/sfnt/sfnt.c \
	src/smooth/smooth.c \
	src/autofit/autofit.c \
	src/truetype/truetype.c \
	src/cff/cff.c \
	src/psnames/psnames.c \
	src/pshinter/pshinter.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/builds \
	$(LOCAL_PATH)/include

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC
LOCAL_CFLAGS += "-DDARWIN_NO_CARBON"
LOCAL_CFLAGS += "-DFT2_BUILD_LIBRARY"

LOCAL_CFLAGS += -O2

include $(BUILD_SHARED_LIBRARY)


# OL -----------------------------------------------------------------------------
#
include $(CLEAR_VARS)
LOCAL_MODULE    := ol

LOCAL_SRC_FILES += ../src/olvm.c ../obj/local/$(TARGET_ARCH_ABI)/repl.c
LOCAL_SRC_FILES += olji.c
LOCAL_CFLAGS    += -std=c99 -O2 -s -Iinclude -DNAKED_VM
LOCAL_LDFLAGS   := -Xlinker --export-dynamic
LOCAL_LDFLAGS   += -Xlinker obj/local/$(TARGET_ARCH_ABI)/repl.o

LOCAL_CFLAGS    += -DOLVM_LIBRARY_SO_NAME='"lib$(LOCAL_MODULE).so"'
LOCAL_LDLIBS    += -llog -landroid

LOCAL_CFLAGS    += -Ijni/include

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_EXECUTABLE)

# NOTES:
#
# mips PIC:
# https://clang.llvm.org/doxygen/Mips_8cpp_source.html
# Historically, PIC code for MIPS was associated with -mabicalls, a.k.a
# SVR4 abicalls. Static code does not use SVR4 calling sequences. An ABI
# extension was developed by Richard Sandiford & Code Sourcery to support
# static code calling PIC code (CPIC). For O32 and N32 this means we have
# several combinations of PIC/static and abicalls. Pure static, static
# with the CPIC extension, and pure PIC code.
#
# mips64
# I have not found the way to set the repl.o [nan2008] private flag. So still
# got an error "linking -mnan=legacy module with previous -mnan=2008 modules"
