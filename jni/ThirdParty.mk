LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

MY_ROOT := ../..

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/thirdparty/jbig2dec \
	$(LOCAL_PATH)/thirdparty/openjpeg-1.5.0/libopenjpeg \
	$(LOCAL_PATH)/thirdparty/jpeg-8d \
	$(LOCAL_PATH)/thirdparty/zlib-1.2.5 \
	$(LOCAL_PATH)/thirdparty/freetype-2.4.9/include \
	$(LOCAL_PATH)/scripts

LOCAL_CFLAGS := \
	-DFT2_BUILD_LIBRARY -DDARWIN_NO_CARBON -DHAVE_STDINT_H \
	'-DFT_CONFIG_MODULES_H="slimftmodules.h"' \
	'-DFT_CONFIG_OPTIONS_H="slimftoptions.h"'

LOCAL_MODULE := mupdfthirdparty
LOCAL_SRC_FILES := \
	thirdparty/jbig2dec/jbig2.c \
	thirdparty/jbig2dec/jbig2_arith.c \
	thirdparty/jbig2dec/jbig2_arith_iaid.c \
	thirdparty/jbig2dec/jbig2_arith_int.c \
	/thirdparty/jbig2dec/jbig2_generic.c \
	thirdparty/jbig2dec/jbig2_halftone.c \
	thirdparty/jbig2dec/jbig2_huffman.c \
	thirdparty/jbig2dec/jbig2_image.c \
	thirdparty/jbig2dec/jbig2_metadata.c \
	thirdparty/jbig2dec/jbig2_mmr.c \
	thirdparty/jbig2dec/jbig2_page.c \
	thirdparty/jbig2dec/jbig2_refinement.c \
	thirdparty/jbig2dec/jbig2_segment.c \
	thirdparty/jbig2dec/jbig2_symbol_dict.c \
	thirdparty/jbig2dec/jbig2_text.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/bio.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/cidx_manager.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/cio.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/dwt.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/event.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/image.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/j2k.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/j2k_lib.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/jp2.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/jpt.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/mct.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/mqc.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/openjpeg.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/phix_manager.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/pi.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/ppix_manager.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/raw.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/t1.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/t2.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/tcd.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/tgt.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/thix_manager.c \
	thirdparty/openjpeg-1.5.0/libopenjpeg/tpix_manager.c \
	thirdparty/jpeg-8d/jaricom.c \
	thirdparty/jpeg-8d/jcomapi.c \
	thirdparty/jpeg-8d/jdapimin.c \
	thirdparty/jpeg-8d/jdapistd.c \
	thirdparty/jpeg-8d/jdarith.c \
	thirdparty/jpeg-8d/jdatadst.c \
	thirdparty/jpeg-8d/jdatasrc.c \
	thirdparty/jpeg-8d/jdcoefct.c \
	thirdparty/jpeg-8d/jdcolor.c \
	thirdparty/jpeg-8d/jddctmgr.c \
	thirdparty/jpeg-8d/jdhuff.c \
	thirdparty/jpeg-8d/jdinput.c \
	thirdparty/jpeg-8d/jdmainct.c \
	thirdparty/jpeg-8d/jdmarker.c \
	thirdparty/jpeg-8d/jdmaster.c \
	thirdparty/jpeg-8d/jdmerge.c \
	thirdparty/jpeg-8d/jdpostct.c \
	thirdparty/jpeg-8d/jdsample.c \
	thirdparty/jpeg-8d/jdtrans.c \
	thirdparty/jpeg-8d/jerror.c \
	thirdparty/jpeg-8d/jfdctflt.c \
	thirdparty/jpeg-8d/jfdctfst.c \
	thirdparty/jpeg-8d/jfdctint.c \
	thirdparty/jpeg-8d/jidctflt.c \
	thirdparty/jpeg-8d/jidctfst.c \
	thirdparty/jpeg-8d/jidctint.c \
	thirdparty/jpeg-8d/jmemmgr.c \
	thirdparty/jpeg-8d/jmemnobs.c \
	thirdparty/jpeg-8d/jquant1.c \
	thirdparty/jpeg-8d/jquant2.c \
	thirdparty/jpeg-8d/jutils.c \
	thirdparty/zlib-1.2.5/adler32.c \
	thirdparty/zlib-1.2.5/compress.c \
	thirdparty/zlib-1.2.5/crc32.c \
	thirdparty/zlib-1.2.5/deflate.c \
	thirdparty/zlib-1.2.5/inffast.c \
	thirdparty/zlib-1.2.5/inflate.c \
	thirdparty/zlib-1.2.5/inftrees.c \
	thirdparty/zlib-1.2.5/trees.c \
	thirdparty/zlib-1.2.5/uncompr.c \
	thirdparty/zlib-1.2.5/zutil.c \
	thirdparty/freetype-2.4.9/src/base/ftbase.c \
	thirdparty/freetype-2.4.9/src/base/ftbbox.c \
	thirdparty/freetype-2.4.9/src/base/ftbitmap.c \
	thirdparty/freetype-2.4.9/src/base/ftgasp.c \
	thirdparty/freetype-2.4.9/src/base/ftglyph.c \
	thirdparty/freetype-2.4.9/src/base/ftinit.c \
	thirdparty/freetype-2.4.9/src/base/ftstroke.c \
	thirdparty/freetype-2.4.9/src/base/ftsynth.c \
	thirdparty/freetype-2.4.9/src/base/ftsystem.c \
	thirdparty/freetype-2.4.9/src/base/fttype1.c \
	thirdparty/freetype-2.4.9/src/base/ftxf86.c \
	thirdparty/freetype-2.4.9/src/cff/cff.c \
	thirdparty/freetype-2.4.9/src/cid/type1cid.c \
	thirdparty/freetype-2.4.9/src/psaux/psaux.c \
	thirdparty/freetype-2.4.9/src/pshinter/pshinter.c \
	thirdparty/freetype-2.4.9/src/psnames/psnames.c \
	thirdparty/freetype-2.4.9/src/raster/raster.c \
	thirdparty/freetype-2.4.9/src/smooth/smooth.c \
	thirdparty/freetype-2.4.9/src/sfnt/sfnt.c \
	thirdparty/freetype-2.4.9/src/truetype/truetype.c \
	thirdparty/freetype-2.4.9/src/type1/type1.c

include $(BUILD_STATIC_LIBRARY)
