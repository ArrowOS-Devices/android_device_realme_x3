LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.biometrics.fingerprint@2.1-service.qti-x3
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INSTALLED_MODULE_STEM := android.hardware.biometrics.fingerprint@2.1-service.qti


LOCAL_REQUIRED_MODULES := \
    android.hardware.biometrics.fingerprint@2.1-service.x3.rc

LOCAL_SHARED_LIBRARIES := \
        libcutils \
        liblog \
        libhidlbase \
        libhardware \
        libutils \
        libbase \
        android.hardware.biometrics.fingerprint@2.1 \
        vendor.oplus.hardware.biometrics.fingerprint@2.1

LOCAL_SRC_FILES := \
       BiometricsFingerprint.cpp \
       service.cpp

LOCAL_CFLAGS := \
      -Wno-unused-parameter

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.biometrics.fingerprint@2.1-service.x3.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.biometrics.fingerprint@2.1-service.qti.rc

LOCAL_SRC_FILES := android.hardware.biometrics.fingerprint@2.1-service.x3.rc

include $(BUILD_PREBUILT)
