# $(info 'in MaliT860.mk')
# $(info TARGET_BOARD_PLATFORM_GPU:$(TARGET_BOARD_PLATFORM_GPU) )
# $(info TARGET_ARCH:$(TARGET_ARCH) )

ifeq ($(strip $(TARGET_BOARD_PLATFORM_GPU)), mali-t860)
ifeq ($(strip $(TARGET_ARCH)), arm64)
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/gpu/MaliT860/lib64/arm/libGLES_mali.so:system/vendor/lib64/egl/libGLES_mali.so \
    vendor/rockchip/common/gpu/MaliT860/lib/arm/libGLES_mali.so:system/vendor/lib/egl/libGLES_mali.so
endif
endif

ifeq ($(strip $(ENABLE_STEREO_DEFORM)), true)
PRODUCT_COPY_FILES += \
	vendor/rockchip/common/gpu/libs/libGLES.so:system/lib/egl/libGLES.so
endif
