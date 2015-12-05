USE_CAMERA_STUB := true
LOCAL_PATH := device/amazon/soho

# inherit from the proprietary version
-include vendor/amazon/soho/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := soho

BOARD_KERNEL_CMDLINE := console=tty0 mem=1G vmalloc=496M init=/init androidboot.console=tty0 androidboot.hardware=bowser omap_wdt.timer_margin=30 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 83886080
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_SOURCE := kernel/amazon/soho
TARGET_KERNEL_CONFIG := android_soho_defconfig
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

DEVICE_RESOLUTION := 800x1280
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXCLUDE_MTP := true
