#ifndef NITRO_SPI_ARM9_TP_H_
#define NITRO_SPI_ARM9_TP_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define TP_SAMPLING_FREQUENCY_MAX 16

#define TP_TOUCH_OFF 0
#define TP_TOUCH_ON 1

#define TP_VALIDITY_VALID 0
#define TP_VALIDITY_INVALID_X 1
#define TP_VALIDITY_INVALID_Y 2
#define TP_VALIDITY_INVALID_XY (TP_VALIDITY_INVALID_X | TP_VALIDITY_INVALID_Y)

typedef enum {
    TP_REQUEST_COMMAND_SAMPLING = 0x0,
    TP_REQUEST_COMMAND_AUTO_ON = 0x1,
    TP_REQUEST_COMMAND_AUTO_OFF = 0x2,
    TP_REQUEST_COMMAND_SET_STABILITY = 0x3,
    TP_REQUEST_COMMAND_AUTO_SAMPLING = 0x10
} TPRequestCommand;

typedef enum {
    TP_REQUEST_COMMAND_FLAG_SAMPLING = 1 << TP_REQUEST_COMMAND_SAMPLING,
    TP_REQUEST_COMMAND_FLAG_AUTO_ON = 1 << TP_REQUEST_COMMAND_AUTO_ON,
    TP_REQUEST_COMMAND_FLAG_AUTO_OFF = 1 << TP_REQUEST_COMMAND_AUTO_OFF,
    TP_REQUEST_COMMAND_FLAG_SET_STABILITY = 1 << TP_REQUEST_COMMAND_SET_STABILITY
} TPRequestCommandFlag;

typedef enum {
    TP_RESULT_SUCCESS = 0,
    TP_RESULT_INVALID_PARAMETER,
    TP_RESULT_ILLEGAL_STATUS,
    TP_RESULT_EXCLUSIVE,
    TP_RESULT_PXI_BUSY
} TPRequestResult;

typedef enum {
    TP_STATE_READY = 0,
    TP_STATE_SAMPLING,
    TP_STATE_AUTO_SAMPLING,
    TP_STATE_AUTO_WAIT_END
} TPState;

typedef struct {
    u16 x;
    u16 y;
    u16 touch;
    u16 validity;
} TPData;

#define TP_CALIBRATE_DOT_SCALE_SHIFT 8
#define TP_CALIBRATE_ORIGIN_SCALE_SHIFT 2

typedef struct NvTpData {
    s16 x0;
    s16 y0;
    s16 xDotSize;
    s16 yDotSize;
} TPCalibrateParam;

typedef void (* TPRecvCallback) (TPRequestCommand command, TPRequestResult result, u16 index);

void TP_Init(void);
void TP_SetCallback(TPRecvCallback callback);
void TP_SetCalibrateParam(const TPCalibrateParam * param);

void TP_RequestSamplingAsync(void);
u32 TP_WaitRawResult(TPData * result);
u32 TP_WaitCalibratedResult(TPData * result);
u32 TP_GetCalibratedResult(TPData * result);
void TP_RequestAutoSamplingStartAsync(u16 vcount, u16 frequence, TPData samplingBufs[],
                                      u16 bufSize);
void TP_RequestAutoSamplingStopAsync(void);
void TP_RequestSetStabilityAsync(u8 retry, u16 range);
void TP_WaitBusy(TPRequestCommandFlag command_flgs);
void TP_WaitAllBusy(void);
u32 TP_CheckBusy(TPRequestCommandFlag command_flgs);
u32 TP_CheckError(TPRequestCommandFlag command);

void TP_GetLatestRawPointInAuto(TPData * result);
void TP_GetLatestCalibratedPointInAuto(TPData * result);
u16 TP_GetLatestIndexInAuto(void);
u32 TP_CalcCalibrateParam(TPCalibrateParam * calibrate,
                          u16 raw_x1, u16 raw_y1,
                          u16 dx1, u16 dy1, u16 raw_x2, u16 raw_y2, u16 dx2, u16 dy2);
BOOL TP_GetUserInfo(TPCalibrateParam * calibrate);
void TP_GetCalibratedPoint(TPData * disp, const TPData * raw);
void TP_GetUnCalibratedPoint(u16 * raw_x, u16 * raw_y, u16 dx, u16 dy);

static inline u32 TP_RequestSetStability (u8 retry, u16 range)
{
    TP_RequestSetStabilityAsync(retry, range);
    TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_SET_STABILITY);
    return TP_CheckError(TP_REQUEST_COMMAND_FLAG_SET_STABILITY);
}

static inline u32 TP_RequestAutoSamplingStart (u16 vcount, u16 frequence, TPData samplingBufs[],
                                               u16 bufSize)
{
    TP_RequestAutoSamplingStartAsync(vcount, frequence, samplingBufs, bufSize);
    TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_AUTO_ON);
    return TP_CheckError(TP_REQUEST_COMMAND_FLAG_AUTO_ON);
}

static inline u32 TP_RequestAutoSamplingStop (void)
{
    TP_RequestAutoSamplingStopAsync();
    TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_AUTO_OFF);
    return TP_CheckError(TP_REQUEST_COMMAND_FLAG_AUTO_OFF);
}

static inline u32 TP_RequestRawSampling (TPData * result)
{
    TP_RequestSamplingAsync();
    return TP_WaitRawResult(result);
}

static inline u32 TP_RequestCalibratedSampling (TPData * result)
{
    TP_RequestSamplingAsync();
    return TP_WaitCalibratedResult(result);
}

#ifdef __cplusplus
}
#endif

#endif
