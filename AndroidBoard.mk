LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#include kernel/xiaomi/libra/AndroidKernel.mk

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/xiaomi/libra/AndroidBoardVendor.mk

# Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
        ln -sf /data/misc/wifi/test.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin )

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#include kernel/xiaomi/libra/AndroidKernel.mk

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/xiaomi/libra/AndroidBoardVendor.mk

# Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
        ln -sf /data/misc/wifi/test.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin )

# alterbang
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
#64 bit
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libqminvapi_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libqminvapi_intermediates/export_includes)
#32 bit
$(shell mkdir -p $(OUT)/obj_arm/SHARED_LIBRARIES/libqminvapi_intermediates)
$(shell touch $(OUT)/obj_arm/SHARED_LIBRARIES/libqminvapi_intermediates/export_includes)
#iproute2 patch
$(shell cp device/xiaomi/libra/alterbang/pkt_sched.h external/iproute2/include/linux)
