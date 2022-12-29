#ifndef NITRO_SPI_ARM9_MIC_H_
#define NITRO_SPI_ARM9_MIC_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/spi/common/type.h>
#include <nitro/pxi.h>

typedef enum MICResult {
    MIC_RESULT_SUCCESS = 0,
    MIC_RESULT_BUSY,
    MIC_RESULT_ILLEGAL_PARAMETER,
    MIC_RESULT_SEND_ERROR,
    MIC_RESULT_INVALID_COMMAND,
    MIC_RESULT_ILLEGAL_STATUS,
    MIC_RESULT_FATAL_ERROR,
    MIC_RESULT_MAX
} MICResult;

typedef enum MICSamplingType {
    MIC_SAMPLING_TYPE_8BIT = 0,
    MIC_SAMPLING_TYPE_12BIT,
    MIC_SAMPLING_TYPE_SIGNED_8BIT,
    MIC_SAMPLING_TYPE_SIGNED_12BIT,
    MIC_SAMPLING_TYPE_12BIT_FILTER_OFF,
    MIC_SAMPLING_TYPE_SIGNED_12BIT_FILTER_OFF,
    MIC_SAMPLING_TYPE_MAX
} MICSamplingType;

typedef enum MICSamplingRate {
    MIC_SAMPLING_RATE_8K = (HW_CPU_CLOCK_ARM7 / 8000),
    MIC_SAMPLING_RATE_11K = (HW_CPU_CLOCK_ARM7 / 11025),
    MIC_SAMPLING_RATE_16K = (HW_CPU_CLOCK_ARM7 / 16000),
    MIC_SAMPLING_RATE_22K = (HW_CPU_CLOCK_ARM7 / 22050),
    MIC_SAMPLING_RATE_32K = (HW_CPU_CLOCK_ARM7 / 32000),
    MIC_SAMPLING_RATE_LIMIT = 1024
} MICSamplingRate;

typedef void (* MICCallback) (MICResult result, void * arg);

typedef struct MICAutoParam {
    MICSamplingType type;
    void * buffer;
    u32 size;
    u32 rate;
    BOOL loop_enable;
    MICCallback full_callback;
    void * full_arg;
} MICAutoParam;

void MIC_Init(void);

MICResult MIC_DoSamplingAsync(MICSamplingType type, void * buf, MICCallback callback, void * arg);

MICResult MIC_StartAutoSamplingAsync(const MICAutoParam * param, MICCallback callback, void * arg);

MICResult MIC_StopAutoSamplingAsync(MICCallback callback, void * arg);

MICResult MIC_AdjustAutoSamplingAsync(u32 rate, MICCallback callback, void * arg);

void * MIC_GetLastSamplingAddress(void);

MICResult MIC_DoSampling(MICSamplingType type, void * buf);

MICResult MIC_StartAutoSampling(const MICAutoParam * param);

MICResult MIC_StopAutoSampling(void);

MICResult MIC_AdjustAutoSampling(u32 rate);

#ifdef __cplusplus
}
#endif

#endif
