LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    fmr_core.cpp \
    fmr_err.cpp \
    libfm_jni.cpp \
    common.cpp \
    custom.cpp

LOCAL_C_INCLUDES := $(JNI_H_INCLUDE) \
    frameworks/base/include/media

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    libmedia \
    liblog

LOCAL_MODULE := libfmjni
LOCAL_SYSTEM_EXT_MODULE := true
include $(BUILD_SHARED_LIBRARY)
