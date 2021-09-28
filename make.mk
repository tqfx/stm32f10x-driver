CURRENT_DIR = $(lastword $(dir $(MAKEFILE_LIST)))
# C defines
C_DEFS += -DUSE_STDPERIPH_DRIVER
# C sources
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/CM3/CoreSupport/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/CM3/DeviceSupport/ST/STM32F10x/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)STM32F10x_StdPeriph_Driver/src/*.c)
# C includes
C_INCLUDES += -I$(CURRENT_DIR)CMSIS/CM3/CoreSupport
C_INCLUDES += -I$(CURRENT_DIR)CMSIS/CM3/DeviceSupport/ST/STM32F10x
C_INCLUDES += -I$(CURRENT_DIR)STM32F10x_StdPeriph_Driver/inc
