################################################################################
#									       #
#     Shared variables:							       #
#	- PROJECT							       #
#	- DRIVERS							       #
#	- INCLUDE							       #
#	- PLATFORM_DRIVERS						       #
#	- NO-OS								       #
#									       #
################################################################################

SRCS := $(PROJECT)/src/main.c
SRCS += $(DRIVERS)/spi/spi.c						\
	$(DRIVERS)/frequency/hmc7044/hmc7044.c				\
	$(DRIVERS)/dac/ad917x/ad9172.c					\
	$(DRIVERS)/dac/ad917x/ad917x_api/ad917x_api.c			\
	$(DRIVERS)/dac/ad917x/ad917x_api/ad917x_jesd_api.c		\
	$(DRIVERS)/dac/ad917x/ad917x_api/ad917x_nco_api.c		\
	$(DRIVERS)/dac/ad917x/ad917x_api/ad917x_reg.c
SRCS += $(DRIVERS)/axi_core/axi_dac_core/axi_dac_core.c			\
	$(DRIVERS)/axi_core/axi_dmac/axi_dmac.c				\
	$(DRIVERS)/axi_core/clk_axi_clkgen/clk_axi_clkgen.c		\
	$(DRIVERS)/axi_core/jesd204/axi_adxcvr.c			\
	$(DRIVERS)/axi_core/jesd204/axi_jesd204_rx.c			\
	$(DRIVERS)/axi_core/jesd204/axi_jesd204_tx.c			\
	$(DRIVERS)/axi_core/jesd204/xilinx_transceiver.c		\
	$(NO-OS)/util/util.c
SRCS +=	$(PLATFORM_DRIVERS)/axi_io.c					\
	$(PLATFORM_DRIVERS)/xilinx_spi.c				\
	$(PLATFORM_DRIVERS)/gpio.c					\
	$(PLATFORM_DRIVERS)/delay.c
INCS := $(PROJECT)/src/parameters.h					\
	$(PROJECT)/src/app_config.h
INCS += $(DRIVERS)/frequency/hmc7044/hmc7044.h				\
	$(DRIVERS)/dac/ad917x/ad9172.h					\
	$(DRIVERS)/dac/ad917x/ad917x_api/ad917x_reg.h			\
	$(DRIVERS)/dac/ad917x/ad917x_api/AD917x.h			\
	$(DRIVERS)/dac/ad917x/ad917x_api/api_def.h			\
	$(DRIVERS)/dac/ad917x/ad917x_api/api_errors.h		
INCS += $(DRIVERS)/axi_core/axi_dac_core/axi_dac_core.h			\
	$(DRIVERS)/axi_core/axi_dmac/axi_dmac.h				\
	$(DRIVERS)/axi_core/clk_axi_clkgen/clk_axi_clkgen.h		\
	$(DRIVERS)/axi_core/jesd204/axi_adxcvr.h			\
	$(DRIVERS)/axi_core/jesd204/axi_jesd204_rx.h			\
	$(DRIVERS)/axi_core/jesd204/axi_jesd204_tx.h			\
	$(DRIVERS)/axi_core/jesd204/xilinx_transceiver.h
INCS +=	$(PLATFORM_DRIVERS)/spi_extra.h					\
	$(PLATFORM_DRIVERS)/gpio_extra.h
INCS +=	$(INCLUDE)/axi_io.h						\
	$(INCLUDE)/spi.h						\
	$(INCLUDE)/gpio.h						\
	$(INCLUDE)/error.h						\
	$(INCLUDE)/delay.h						\
	$(INCLUDE)/util.h
