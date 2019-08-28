LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        hypv_intercept.cpp
LOCAL_C_INCLUDES = $(QCOM_MEDIA_ROOT)/mm-video-v4l2/vidc/common/inc

LOCAL_SHARED_LIBRARIES := liblog libdl

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := libhypv_intercept

LOCAL_MODULE_PATH_32      := $(TARGET_OUT_VENDOR)/lib
LOCAL_MODULE_PATH_64      := $(TARGET_OUT_VENDOR)/lib64

ifeq ($(TARGET_COMPILE_WITH_MSM_KERNEL),true)
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
endif

include $(BUILD_SHARED_LIBRARY)
