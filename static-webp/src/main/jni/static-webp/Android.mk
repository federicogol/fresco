# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := static-webp
LOCAL_SRC_FILES := \
	webp_bitmapfactory.cpp \
	decoded_image.cpp \
	exceptions.cpp \
	jpeg/jpeg_codec.cpp \
	jpeg/jpeg_error_handler.cpp \
	jpeg/jpeg_memory_io.cpp \
	jpeg/jpeg_stream_wrappers.cpp \
	png/png_codec.cpp \
	png/png_stream_wrappers.cpp \
	streams.cpp \
	transformations.cpp \
	webp/webp_codec.cpp \
	WebpTranscoder.cpp \
  jni_helpers.cpp \
  webp.cpp \


CXX11_FLAGS := -std=c++11
LOCAL_CFLAGS += $(CXX11_FLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"libstatic-webp\"
LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_CFLAGS += $(FRESCO_CPP_CFLAGS)
LOCAL_EXPORT_CPPFLAGS := $(CXX11_FLAGS)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)
LOCAL_LDLIBS := -latomic -llog -ljnigraphics
LOCAL_LDFLAGS += $(FRESCO_CPP_LDFLAGS)

LOCAL_SHARED_LIBRARIES += webp
LOCAL_SHARED_LIBRARIES += webpdemux
LOCAL_SHARED_LIBRARIES += webpmux

LOCAL_STATIC_LIBRARIES += fb_jpegturbo
LOCAL_LDFLAGS += -Wl,--exclude-libs,libfb_jpegturbo.a

LOCAL_LDLIBS += -lz

LOCAL_STATIC_LIBRARIES += fb_png
LOCAL_LDFLAGS += -Wl,--exclude-libs,libfb_png.a

include $(BUILD_SHARED_LIBRARY)
$(call import-module,libpng-1.6.37)
$(call import-module,libwebp-1.3.2)
$(call import-module,libjpeg-turbo-2.0.4)
