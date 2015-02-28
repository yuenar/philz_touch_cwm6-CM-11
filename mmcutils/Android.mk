ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

BOARD_RECOVERY_DEFINES := BOARD_USE_MTK_LAYOUT BOARD_MTK_BOOT_LABEL

$(foreach board_define,$(BOARD_RECOVERY_DEFINES), \
  $(if $($(board_define)), \
    $(eval LOCAL_CFLAGS += -D$(board_define)=\"$($(board_define))\") \
  ) \
  )

ifeq ($(BOARD_RECOVERY_MTK),true)
LOCAL_SRC_FILES := \
	mmcutils_mtk.c
else
LOCAL_SRC_FILES := \
	mmcutils_mtk.c
endif

LOCAL_MODULE := libmmcutils
LOCAL_MODULE_TAGS := eng

include $(BUILD_STATIC_LIBRARY)

endif	# !TARGET_SIMULATOR
