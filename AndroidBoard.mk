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

##alterbang
$(shell cp device/xiaomi/libra/alterbang/qfintverify vendor/xiaomi/libra/proprietary/bin)
$(shell cp device/xiaomi/libra/alterbang/amploader vendor/xiaomi/libra/proprietary/bin)
$(shell cp device/xiaomi/libra/alterbang/mmi vendor/xiaomi/libra/proprietary/bin)

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell cp device/xiaomi/libra/dt.img $(OUT)/dt.img)

$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libqminvapi_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libqminvapi_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj/lib)
$(shell cp device/xiaomi/libra/alterbang/lib64/libqminvapi.so $(OUT)/obj/lib)

$(shell mkdir -p $(OUT)/obj_arm/SHARED_LIBRARIES/libqminvapi_intermediates)
$(shell touch $(OUT)/obj_arm/SHARED_LIBRARIES/libqminvapi_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj_arm/lib)
$(shell cp device/xiaomi/libra/alterbang/lib/libqminvapi.so $(OUT)/obj_arm/lib)

$(shell cp device/xiaomi/libra/alterbang/pkt_sched.h external/iproute2/include/linux)
$(shell cp device/xiaomi/libra/alterbang/devdep_params.h device/xiaomi/libra/include/sound)
$(shell cp device/xiaomi/libra/alterbang/msm_mdp.h device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/compress_params.h device/xiaomi/libra/include/sound)
$(shell cp device/xiaomi/libra/alterbang/msm_audio_calibration.h device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/msm_media_info.h device/xiaomi/libra/include/media)
$(shell cp device/xiaomi/libra/alterbang/ion.h device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/msm_ion.h device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/msm_hdmi_modes.h device/xiaomi/libra/include/video)
$(shell cp device/xiaomi/libra/alterbang/msm_hdmi_hdcp_mgr.h device/xiaomi/libra/include/video)
$(shell cp device/xiaomi/libra/alterbang/msm-audio-effects-q6-v2.h device/xiaomi/libra/include/sound)
$(shell cp device/xiaomi/libra/alterbang/msm_vidc.h device/xiaomi/libra/include/media)
$(shell cp device/xiaomi/libra/alterbang/videodev2.h device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/v4l2-controls.h device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/msm_vidc_dec.h  device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/msm_vidc_enc.h  device/xiaomi/libra/include/linux)
$(shell cp device/xiaomi/libra/alterbang/audio_effects.h device/xiaomi/libra/include/sound)
$(shell cp device/xiaomi/libra/alterbang/msm_audio* device/xiaomi/libra/include/linux)
