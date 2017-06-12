include(nuttx/px4_impl_nuttx)

px4_nuttx_configure(HWCLASS m3 CONFIG bootloader)

set(px4_bootloader_base ${PX4_SOURCE_DIR}/src/drivers/bootloaders/)
set(px4_module_base ${PX4_SOURCE_DIR}/src/modules/)

#
# UAVCAN boot loadable Module ID

#
# Bring in common uavcan hardware identity definitions
#
include(configs/uavcan_board_ident/px4cannode-v1)

set(config_module_list
	drivers/boards/px4cannode-v1/bootloader
)
