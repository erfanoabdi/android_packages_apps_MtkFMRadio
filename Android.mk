LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_PACKAGE_NAME := FM
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_JNI_SHARED_LIBRARIES := libfmjni

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_PRIVILEGED_MODULE := true

LOCAL_STATIC_ANDROID_LIBRARIES := \
    android-support-v7-cardview

LOCAL_RESOURCE_DIR = $(LOCAL_PATH)/res

LOCAL_USE_AAPT2 := true

LOCAL_AAPT_FLAGS := --auto-add-overlay

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
