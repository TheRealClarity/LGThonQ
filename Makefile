ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:15.0

THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lgthonq

lgthonq_FILES = Tweak.x
lgthonq_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
