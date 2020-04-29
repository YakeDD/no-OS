
CFLAGS += -Ilibraries/mbedtls

all: ... mbedtls

mbedtls:
	//addsomehout to make CFALGS += -DMBEDTLS_CONFIG_FILE="""noos_mbedtls_config.h"""
 	$(MAKE) -C libraries/mbedtls