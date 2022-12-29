#ifndef NITRO_SPI_COMMON_CONFIG_H_
#define NITRO_SPI_COMMON_CONFIG_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/memorymap.h>
#include <nitro/spec.h>

#ifdef SDK_TS
#if (SDK_TS_VERSION >= 200 || SDK_NVRAM_FORMAT >= 100)
#if (SDK_NVRAM_FORMAT >= 300)
#include <nitro/spi/common/userInfo_ts_300.h>
#else
#include <nitro/spi/common/userInfo_ts_200.h>
#endif
#else
#include <nitro/spi/common/userInfo_ts_0.h>
#endif
#else
#include <nitro/spi/common/userInfo_teg.h>
#endif

#ifdef SDK_TS
#undef NVRAM_CONFIG_CONST_ADDRESS
#else
#define NVRAM_CONFIG_CONST_ADDRESS
#endif

#ifdef NVRAM_CONFIG_CONST_ADDRESS
#define NVRAM_CONFIG_DATA_ADDRESS_DUMMY 0x3fe00
#else
#define NVRAM_CONFIG_DATA_OFFSET_ADDRESS 0x0020
#define NVRAM_CONFIG_DATA_OFFSET_SIZE 2
#define NVRAM_CONFIG_DATA_OFFSET_SHIFT 3
#endif

#define NVRAM_CONFIG_SAVE_COUNT_MAX 0x0080
#define NVRAM_CONFIG_SAVE_COUNT_MASK 0x007f

#define NVRAM_CONFIG_MACADDRESS_ADDRESS 0x00036
#define NVRAM_CONFIG_ENABLECHANNEL_ADDRESS 0x0003c

#ifdef __cplusplus
}
#endif

#endif
