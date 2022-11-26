# vxworks.mak - for curl
#
# Copyright 2022  Wind River Systems, Inc.
#
include $(VSB_DIR)/h/config/auto.conf

RTP_BASE_DIR = curl

EXE= $(VXE).vxe

include $(VSB_DIR)/mk/cmake.mk

# 3rd party code minimal warning level
#
#CC_WARNINGS = $(CC_WARNINGS_3PP)
