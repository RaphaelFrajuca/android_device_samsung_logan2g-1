# Assert
TARGET_OTA_ASSERT_DEVICE := logan2g

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
ARCH_ARM_HAVE_ARMV7A := true
ARCH_ARM_HAVE_TLS_REGISTER := true
#ARCH_ARM_HAVE_VFP := true
#ARCH_ARM_HAVE_NEON := true
#TARGET_CPU_SMP := true 

# For low memory targets only (~512MB RAM & hdpi resolution)
TARGET_ARCH_LOWMEM := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := logan
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := sc6820i
COMMON_GLOBAL_CFLAGS += -DSPRD_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
TARGET_BOARD_PLATFORM_GPU := mali-400 MP

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_PREBUILT_KERNEL := device/samsung/logan2g/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/logan2g
TARGET_KERNEL_CONFIG := recovery-logan2g_defconfig
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 941621248
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2630614016
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_INITRC := device/samsung/logan2g/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/logan2g/recovery/twrp.fstab
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/logan2g/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HDPI_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"

# Philz
#TARGET_COMMON_NAME := GT-S7262
#BOOTLOADER_CMD_ARG := "download"
#BOARD_HAS_LOW_RESOLUTION := true
#BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"
#BOARD_USE_B_SLOT_PROTOCOL := true

# TWRP Specific
RECOVERY_GRAPHICS_USE_LINELENGTH := true
DEVICE_RESOLUTION := 480x800
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := /data/media
TW_INTERNAL_STORAGE_MOUNT_POINT := sdcard
TW_EXTERNAL_STORAGE_PATH := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_CPU_TEMP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_SUPERSU := true

# GPU
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/logan2g/egl/egl.cfg
BOARD_EGL_NEEDS_FNW := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
BOARD_USES_HWCOMPOSER := true
BOARD_USE_RGBX_8888 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := TRUE

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-logan2g

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/logan2g/cmhw/

# Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB  

# Audio
#HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY = true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/logan2g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/logan2g/bluetooth/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_NO_APSME_ATTR := true

# Ril
#BOARD_RIL_CLASS := ../../../device/samsung/logan2g/ril/

# Bootanimation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Font Footprint
SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/logan2g/sepolicy

BOARD_SEPOLICY_UNION += \
       file_contexts 
