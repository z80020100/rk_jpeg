# Copyright 2006 The Android Open Source Project
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_DIR := $(LOCAL_PATH)/../../src_enc
LOCAL_INC_DIR := $(LOCAL_PATH)/../inc
LOCAL_VPU_DIR := $(LOCAL_PATH)/../../../libon2

LOCAL_MODULE := libon2jpegenc
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := 

LOCAL_ARM_MODE := arm

LOCAL_STATIC_LIBRARIES := 	

LOCAL_SHARED_LIBRARIES := 

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_INC_DIR)\
                    $(LOCAL_VPU_DIR)\
					$(LOCAL_SRC_DIR)/jpeg \
					$(LOCAL_SRC_DIR)/common \
					
LOCAL_SRC_FILES :=  JpegEncApi.c \
										EncJpegPutBits.c \
										EncJpegInit.c \
										EncJpegCodeFrame.c \
										EncJpeg.c \
 

include $(BUILD_STATIC_LIBRARY)
