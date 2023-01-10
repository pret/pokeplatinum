#include <nitro.h>
#include <nitro/spi/ARM9/tp.h>
#include <nitro/spi/common/config.h>

#include "include/spi.h"

#define TP_RAW_MAX 0x1000
#define TP_CALIBRATE_DOT_INV_SCALE_SHIFT (28 - TP_CALIBRATE_DOT_SCALE_SHIFT)
#define TP_CALIBRATE_DOT2ORIGIN_SCALE_SHIFT (TP_CALIBRATE_DOT_SCALE_SHIFT - TP_CALIBRATE_ORIGIN_SCALE_SHIFT)

static void TPi_TpCallback(PXIFifoTag tag, u32 data, BOOL err);

typedef struct {
    s32 x0;
    s32 xDotSize;
    s32 xDotSizeInv;

    s32 y0;
    s32 yDotSize;
    s32 yDotSizeInv;
} TPiCalibrateParam;

#pragma warn_padding off
static struct {
    TPRecvCallback callback;
    TPData buf;
    u16 index;
    u16 frequence;
    TPData * samplingBufs;
    u16 bufSize;

    TPiCalibrateParam calibrate;
    u16 calibrate_flg;

    vu16 state;
    vu16 err_flg;
    vu16 command_flg;
} tpState;
#pragma warn_padding reset

static inline BOOL TPi_SamplingNow (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT
            | SPI_PXI_END_BIT
            | (0 << SPI_PXI_INDEX_SHIFT)
            | (SPI_PXI_COMMAND_TP_SAMPLING << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL TPi_AutoSamplingOn (u16 vCount, u8 frequency) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT
            | (0 << SPI_PXI_INDEX_SHIFT)
            | (SPI_PXI_COMMAND_TP_AUTO_ON << 8) | (u32)frequency, 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_END_BIT | (1 << SPI_PXI_INDEX_SHIFT) | (u32)vCount, 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL TPi_AutoSamplingOff (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT
            | SPI_PXI_END_BIT
            | (0 << SPI_PXI_INDEX_SHIFT)
            | (SPI_PXI_COMMAND_TP_AUTO_OFF << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL TPi_SetupStability (u16 range) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT
            | SPI_PXI_END_BIT
            | (0 << SPI_PXI_INDEX_SHIFT)
            | (SPI_PXI_COMMAND_TP_SETUP_STABILITY << 8) | (u32)range, 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline void TPi_CopyTpFromSystemWork (TPData * result) {
    SPITpData spi_tp;

    spi_tp.halfs[0] = *(u16 *)(&(OS_GetSystemWork()->touch_panel[0]));
    spi_tp.halfs[1] = *(u16 *)(&(OS_GetSystemWork()->touch_panel[2]));

    result->x = (u16)spi_tp.e.x;
    result->y = (u16)spi_tp.e.y;
    result->touch = (u8)spi_tp.e.touch;
    result->validity = (u8)spi_tp.e.validity;
}

static inline void TPi_ErrorAtPxi (TPRequestCommand command) {
    tpState.err_flg |= (1 << command);

    if (tpState.callback) {
        (tpState.callback) (command, TP_RESULT_PXI_BUSY, 0);
    }
}

static void TPi_TpCallback (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused(tag)

    u16 result;
    u16 command;

    result = (u16)(data & SPI_PXI_DATA_MASK);
    command = (u16)((result & 0x7f00) >> 8);

    if (err) {
        TPi_ErrorAtPxi((TPRequestCommand)command);
        return;
    }

    if (command == SPI_PXI_COMMAND_TP_AUTO_SAMPLING) {
        tpState.index++;
        if (tpState.index >= tpState.bufSize) {
            tpState.index = 0;
        }

        TPi_CopyTpFromSystemWork(&tpState.samplingBufs[tpState.index]);

        if (tpState.callback) {
            (tpState.callback) ((TPRequestCommand)command, TP_RESULT_SUCCESS, (u8)tpState.index);
        }
        return;
    }

    if (!(data & SPI_PXI_END_BIT)) {
        return;
    }

    SDK_ASSERT(result & 0x8000);

    switch ((u8)(result & 0x00ff)) {
    case SPI_PXI_RESULT_SUCCESS:

        switch (command) {
        case SPI_PXI_COMMAND_TP_SAMPLING:

            TPi_CopyTpFromSystemWork(&tpState.buf);
            tpState.state = TP_STATE_READY;
            break;

        case SPI_PXI_COMMAND_TP_AUTO_ON:
            tpState.state = TP_STATE_AUTO_SAMPLING;
            break;

        case SPI_PXI_COMMAND_TP_AUTO_OFF:
            tpState.state = TP_STATE_READY;
            break;
        }

        tpState.command_flg &= ~(1 << command);

        if (tpState.callback) {
            (tpState.callback) ((TPRequestCommand)command, TP_RESULT_SUCCESS, 0);
        }
        break;

    case SPI_PXI_RESULT_EXCLUSIVE:
        result = TP_RESULT_EXCLUSIVE;
        goto common;

    case SPI_PXI_RESULT_INVALID_PARAMETER:
        result = TP_RESULT_INVALID_PARAMETER;
        goto common;

    case SPI_PXI_RESULT_ILLEGAL_STATUS:
        result = TP_RESULT_ILLEGAL_STATUS;

 common:

        tpState.err_flg |= (1 << command);
        tpState.command_flg &= ~(1 << command);

        if (tpState.callback) {
            (tpState.callback) ((TPRequestCommand)command, (TPRequestResult)(result & 0xff), 0);
        }
        break;

    case SPI_PXI_RESULT_INVALID_COMMAND:
    default:

        OS_Panic("Get illegal TP command from ARM7!\n");
        return;
    }
}

void TP_Init (void) {
    static u16 initial = FALSE;

    if (initial) {
        return;
    }
    initial = TRUE;

    PXI_Init();

    tpState.index = 0;
    tpState.callback = NULL;
    tpState.samplingBufs = NULL;
    tpState.state = TP_STATE_READY;
    tpState.calibrate_flg = FALSE;
    tpState.command_flg = 0;
    tpState.err_flg = 0;

    while (!PXI_IsCallbackReady(PXI_FIFO_TAG_TOUCHPANEL, PXI_PROC_ARM7)) {
    }

    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_TOUCHPANEL, TPi_TpCallback);
}

BOOL TP_GetUserInfo (TPCalibrateParam * calibrate) {
    NVRAMConfig * info = (NVRAMConfig *)(OS_GetSystemWork()->nvramUserInfo);

    u16 x1, y1, x2, y2, dx1, dy1, dx2, dy2;

    SDK_NULL_ASSERT(calibrate);

#if (defined(SDK_TS) && (SDK_TS_VERSION >= 200 || SDK_NVRAM_FORMAT >= 100))
    x1 = info->ncd.tp.raw_x1;
    y1 = info->ncd.tp.raw_y1;
    dx1 = (u16)(info->ncd.tp.dx1);
    dy1 = (u16)(info->ncd.tp.dy1);
    x2 = info->ncd.tp.raw_x2;
    y2 = info->ncd.tp.raw_y2;
    dx2 = (u16)(info->ncd.tp.dx2);
    dy2 = (u16)(info->ncd.tp.dy2);
#else
    x1 = *(u16 *)(&(info->ncd.tp.calib_data[0]));
    y1 = *(u16 *)(&(info->ncd.tp.calib_data[1]));
    dy1 = (u16)(*(u16 *)(&(info->ncd.tp.calib_data[2])) >> 8);
    dx1 = MI_ReadByte((u8 *)(&(info->ncd.tp.calib_data[2])));
    x2 = *(u16 *)(&(info->ncd.tp.calib_data[3]));
    y2 = *(u16 *)(&(info->ncd.tp.calib_data[4]));
    dy2 = (u16)(*(u16 *)(&(info->ncd.tp.calib_data[5])) >> 8);
    dx2 = MI_ReadByte((u8 *)(&(info->ncd.tp.calib_data[5])));
#endif

    if ((x1 == 0 && x2 == 0 && y1 == 0 && y2 == 0) ||
        (TP_CalcCalibrateParam(calibrate, x1, y1, dx1, dy1, x2, y2, dx2, dy2) != 0)) {
        calibrate->x0 = 0;
        calibrate->y0 = 0;
        calibrate->xDotSize = 0;
        calibrate->yDotSize = 0;
        return TRUE;
    }
    return TRUE;
}

void TP_SetCalibrateParam (const TPCalibrateParam * param) {
    OSIntrMode enabled;

    if (param == NULL) {
        tpState.calibrate_flg = FALSE;
        return;
    }

    enabled = OS_DisableInterrupts();

    if (param->xDotSize != 0) {
        CP_SetDiv32_32(0x10000000, (u32)param->xDotSize);

        tpState.calibrate.x0 = param->x0;
        tpState.calibrate.xDotSize = param->xDotSize;
        tpState.calibrate.xDotSizeInv = (s32)CP_GetDivResult32();
    } else {
        tpState.calibrate.x0 = 0;
        tpState.calibrate.xDotSize = 0;
        tpState.calibrate.xDotSizeInv = 0;
    }

    if (param->yDotSize != 0) {
        CP_SetDiv32_32(0x10000000, (u32)param->yDotSize);

        tpState.calibrate.y0 = param->y0;
        tpState.calibrate.yDotSize = param->yDotSize;
        tpState.calibrate.yDotSizeInv = (s32)CP_GetDivResult32();
    } else {
        tpState.calibrate.y0 = 0;
        tpState.calibrate.yDotSize = 0;
        tpState.calibrate.yDotSizeInv = 0;
    }

    (void)OS_RestoreInterrupts(enabled);

    tpState.calibrate_flg = TRUE;
}

void TP_SetCallback (TPRecvCallback callback) {
    OSIntrMode enabled;

    enabled = OS_DisableInterrupts();
    tpState.callback = callback;
    (void)OS_RestoreInterrupts(enabled);
}

void TP_RequestSamplingAsync (void) {
    OSIntrMode enabled;

    SDK_ASSERT(!(tpState.command_flg & TP_REQUEST_COMMAND_FLAG_SAMPLING));

    enabled = OS_DisableInterrupts();

    if (TPi_SamplingNow() == FALSE) {
        (void)OS_RestoreInterrupts(enabled);
        TPi_ErrorAtPxi(TP_REQUEST_COMMAND_SAMPLING);
        return;
    }
    tpState.command_flg |= TP_REQUEST_COMMAND_FLAG_SAMPLING;
    tpState.err_flg &= ~TP_REQUEST_COMMAND_FLAG_SAMPLING;

    (void)OS_RestoreInterrupts(enabled);
}

u32 TP_WaitRawResult (TPData * result) {
    SDK_NULL_ASSERT(result);

    TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_SAMPLING);

    if (tpState.err_flg & TP_REQUEST_COMMAND_FLAG_SAMPLING) {
        return 1;
    }

    *result = tpState.buf;
    return 0;
}

u32 TP_GetCalibratedResult (TPData * result) {
    SDK_NULL_ASSERT(result);

    if (tpState.err_flg & TP_REQUEST_COMMAND_FLAG_SAMPLING) {
        return 1;
    }

    *result = tpState.buf;
    TP_GetCalibratedPoint(result, result);
    return 0;
}

u32 TP_WaitCalibratedResult (TPData * result) {
    TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_SAMPLING);
    return TP_GetCalibratedResult(result);
}

void TP_RequestAutoSamplingStartAsync (u16 vcount, u16 frequence, TPData samplingBufs[], u16 bufSize) {
    u32 i;
    OSIntrMode enabled;

    SDK_NULL_ASSERT(samplingBufs);
    SDK_ASSERT(vcount < HW_LCD_LINES);
    SDK_ASSERT(frequence != 0 && frequence <= SPI_TP_SAMPLING_FREQUENCY_MAX);
    SDK_ASSERT(tpState.state == TP_STATE_READY);
    SDK_ASSERT(!(tpState.command_flg & TP_REQUEST_COMMAND_FLAG_AUTO_ON));
    SDK_ASSERT(bufSize != 0);

    tpState.samplingBufs = samplingBufs;
    tpState.index = 0;
    tpState.frequence = frequence;
    tpState.bufSize = bufSize;

    for (i = 0; i < bufSize; i++) {
        tpState.samplingBufs[i].touch = TP_TOUCH_OFF;
    }

    enabled = OS_DisableInterrupts();

    if ((u8)TPi_AutoSamplingOn(vcount, (u8)frequence) == FALSE) {
        (void)OS_RestoreInterrupts(enabled);
        TPi_ErrorAtPxi(TP_REQUEST_COMMAND_AUTO_ON);
        return;
    }
    tpState.command_flg |= TP_REQUEST_COMMAND_FLAG_AUTO_ON;
    tpState.err_flg &= ~TP_REQUEST_COMMAND_FLAG_AUTO_ON;

    (void)OS_RestoreInterrupts(enabled);
}

void TP_RequestAutoSamplingStopAsync (void) {
    OSIntrMode enabled;

    SDK_ASSERT(tpState.state == TP_STATE_AUTO_SAMPLING);
    SDK_ASSERT(!(tpState.command_flg & TP_REQUEST_COMMAND_FLAG_AUTO_OFF));

    enabled = OS_DisableInterrupts();

    if (TPi_AutoSamplingOff() == FALSE) {
        (void)OS_RestoreInterrupts(enabled);
        TPi_ErrorAtPxi(TP_REQUEST_COMMAND_AUTO_OFF);
        return;
    }

    tpState.command_flg |= TP_REQUEST_COMMAND_FLAG_AUTO_OFF;
    tpState.err_flg &= ~TP_REQUEST_COMMAND_FLAG_AUTO_OFF;

    (void)OS_RestoreInterrupts(enabled);
}

void TP_RequestSetStabilityAsync (u8 retry, u16 range) {
#pragma unused( retry )
    OSIntrMode enabled;

    SDK_ASSERT(range != 0);
    SDK_ASSERT(range < 255);

    enabled = OS_DisableInterrupts();

    if (TPi_SetupStability(range) == FALSE) {
        (void)OS_RestoreInterrupts(enabled);
        TPi_ErrorAtPxi(TP_REQUEST_COMMAND_SET_STABILITY);
        return;
    }
    tpState.command_flg |= TP_REQUEST_COMMAND_FLAG_SET_STABILITY;
    tpState.err_flg &= ~TP_REQUEST_COMMAND_FLAG_SET_STABILITY;

    (void)OS_RestoreInterrupts(enabled);
}

void TP_GetLatestRawPointInAuto (TPData * result) {
    s32 i, curr_index;
    TPData * tp;

    SDK_NULL_ASSERT(result);
    SDK_NULL_ASSERT(tpState.samplingBufs);

    result->validity = TP_VALIDITY_INVALID_XY;

    curr_index = tpState.index;

    if (tpState.frequence == 1 || tpState.bufSize == 1) {
        *result = tpState.samplingBufs[curr_index];
        return;
    }

    for (i = 0; i < tpState.frequence && i < tpState.bufSize - 1; i++) {
        s32 index;

        index = curr_index - i;
        if (index < 0) {
            index += tpState.bufSize;
        }

        tp = &tpState.samplingBufs[index];

        if (!tp->touch) {
            *result = *tp;
            return;
        }

        if (result->validity & TP_VALIDITY_INVALID_X) {
            if (!(tp->validity & TP_VALIDITY_INVALID_X)) {
                result->x = tp->x;
                if (i != 0) {
                    result->validity &= ~TP_VALIDITY_INVALID_X;
                }
            }
        }

        if (result->validity & TP_VALIDITY_INVALID_Y) {
            if (!(tp->validity & TP_VALIDITY_INVALID_Y)) {
                result->y = tp->y;
                if (i != 0) {
                    result->validity &= ~TP_VALIDITY_INVALID_Y;
                }
            }
        }

        if (result->validity == TP_VALIDITY_VALID) {
            result->touch = TP_TOUCH_ON;
            return;
        }
    }

    result->touch = TP_TOUCH_ON;
    return;
}

void TP_GetLatestCalibratedPointInAuto (TPData * result) {
    SDK_NULL_ASSERT(result);

    TP_GetLatestRawPointInAuto(result);

    TP_GetCalibratedPoint(result, result);
}

u16 TP_GetLatestIndexInAuto (void) {
    return tpState.index;
}

u32 TP_CalcCalibrateParam (TPCalibrateParam * calibrate, u16 raw_x1, u16 raw_y1, u16 dx1, u16 dy1, u16 raw_x2, u16 raw_y2, u16 dx2, u16 dy2) {
    s32 rx_width, dx_width, ry_width, dy_width;
    s32 tmp32;
    OSIntrMode enabled;

#define IN_S16_RANGE(x) ((x) < 0x8000 && (x) >= -0x8000)

    SDK_NULL_ASSERT(calibrate);

    if (raw_x1 >= TP_RAW_MAX || raw_y1 >= TP_RAW_MAX || raw_x2 >= TP_RAW_MAX
        || raw_y2 >= TP_RAW_MAX) {
        return 1;
    }
    if (dx1 >= GX_LCD_SIZE_X || dx2 >= GX_LCD_SIZE_X || dy1 >= GX_LCD_SIZE_Y
        || dy2 >= GX_LCD_SIZE_Y) {
        return 1;
    }
    if (dx1 == dx2 || dy1 == dy2 || raw_x1 == raw_x2 || raw_y1 == raw_y2) {
        return 1;
    }

    rx_width = raw_x1 - raw_x2;
    dx_width = dx1 - dx2;

    enabled = OS_DisableInterrupts();

    CP_SetDiv32_32(((u32)rx_width) << TP_CALIBRATE_DOT_SCALE_SHIFT, (u32)dx_width);

    ry_width = raw_y1 - raw_y2;
    dy_width = dy1 - dy2;

    tmp32 = CP_GetDivResult32();
    CP_SetDiv32_32(((u32)ry_width) << TP_CALIBRATE_DOT_SCALE_SHIFT, (u32)dy_width);

    if (!IN_S16_RANGE(tmp32)) {
        (void)OS_RestoreInterrupts(enabled);
        return 1;
    }
    calibrate->xDotSize = (s16)tmp32;
    tmp32 = (s16)((((s32)(raw_x1 + raw_x2) << TP_CALIBRATE_DOT_SCALE_SHIFT)
                   - ((s32)(dx1 + dx2) * calibrate->xDotSize)) >> (TP_CALIBRATE_DOT_SCALE_SHIFT -
                                                                   TP_CALIBRATE_ORIGIN_SCALE_SHIFT +
                                                                   1));
    if (!IN_S16_RANGE(tmp32)) {
        (void)OS_RestoreInterrupts(enabled);
        return 1;
    }
    calibrate->x0 = (s16)tmp32;

    tmp32 = CP_GetDivResult32();
    (void)OS_RestoreInterrupts(enabled);

    if (!IN_S16_RANGE(tmp32)) {
        return 1;
    }
    calibrate->yDotSize = (s16)tmp32;
    tmp32 = (s16)((((s32)(raw_y1 + raw_y2) << TP_CALIBRATE_DOT_SCALE_SHIFT)
                   - ((s32)(dy1 + dy2) * calibrate->yDotSize)) >> (TP_CALIBRATE_DOT_SCALE_SHIFT -
                                                                   TP_CALIBRATE_ORIGIN_SCALE_SHIFT +
                                                                   1));
    if (!IN_S16_RANGE(tmp32)) {
        return 1;
    }
    calibrate->y0 = (s16)tmp32;

    return 0;
}

void TP_GetCalibratedPoint (TPData * disp, const TPData * raw) {
    TPiCalibrateParam * cal;

    enum
    { MAX_X = GX_LCD_SIZE_X - 1, MAX_Y = GX_LCD_SIZE_Y - 1 };

    SDK_NULL_ASSERT(disp);
    SDK_NULL_ASSERT(raw);
    SDK_NULL_ASSERT(tpState.calibrate_flg);

    if (!tpState.calibrate_flg) {
        *disp = *raw;
        return;
    }

    cal = &tpState.calibrate;

    disp->touch = raw->touch;
    disp->validity = raw->validity;

    if (raw->touch == 0) {
        disp->x = 0;
        disp->y = 0;
        return;
    }

    disp->x =
        (u16)((((u64)(raw->x << TP_CALIBRATE_ORIGIN_SCALE_SHIFT) -
                cal->x0) * cal->xDotSizeInv) >> (TP_CALIBRATE_DOT_INV_SCALE_SHIFT +
                                                 TP_CALIBRATE_ORIGIN_SCALE_SHIFT));

    if ((s16)disp->x < 0) {
        disp->x = 0;
    } else if ((s16)disp->x > MAX_X) {
        disp->x = MAX_X;
    }

    disp->y =
        (u16)((((u64)(raw->y << TP_CALIBRATE_ORIGIN_SCALE_SHIFT) -
                cal->y0) * cal->yDotSizeInv) >> (TP_CALIBRATE_DOT_INV_SCALE_SHIFT +
                                                 TP_CALIBRATE_ORIGIN_SCALE_SHIFT));

    if ((s16)disp->y < 0) {
        disp->y = 0;
    } else if ((s16)disp->y > MAX_Y) {
        disp->y = MAX_Y;
    }
}

void TP_GetUnCalibratedPoint (u16 * raw_x, u16 * raw_y, u16 dx, u16 dy) {
    TPiCalibrateParam * cal;

    SDK_NULL_ASSERT(raw_x);
    SDK_NULL_ASSERT(raw_y);
    SDK_ASSERT(tpState.calibrate_flg);

    if (!tpState.calibrate_flg) {
        *raw_x = dx;
        *raw_y = dy;
        return;
    }

    cal = &tpState.calibrate;

    *raw_x =
        (u16)((((s32)(dx * cal->xDotSize) >> TP_CALIBRATE_DOT2ORIGIN_SCALE_SHIFT) +
               (s32)cal->x0) >> TP_CALIBRATE_ORIGIN_SCALE_SHIFT);
    *raw_y =
        (u16)((((s32)(dy * cal->yDotSize) >> TP_CALIBRATE_DOT2ORIGIN_SCALE_SHIFT) +
               (s32)cal->y0) >> TP_CALIBRATE_ORIGIN_SCALE_SHIFT);
}

void TP_WaitBusy (TPRequestCommandFlag command_flgs) {
#ifdef  SDK_DEBUG
    if (!(tpState.command_flg & command_flgs)) {
        return;
    }
#endif

    SDK_ASSERT(OS_GetCpsrIrq() == OS_INTRMODE_IRQ_ENABLE);
    SDK_ASSERT(reg_OS_IME == 1);
    SDK_ASSERT(OS_GetIrqMask() & OS_IE_SPFIFO_RECV);

    while (tpState.command_flg & command_flgs) {
    }

    return;
}

void TP_WaitAllBusy (void) {
#ifdef  SDK_DEBUG
    if (!tpState.command_flg) {
        return;
    }
#endif

    SDK_ASSERT(OS_GetCpsrIrq() == OS_INTRMODE_IRQ_ENABLE);
    SDK_ASSERT(reg_OS_IME == 1);
    SDK_ASSERT(OS_GetIrqMask() & OS_IE_SPFIFO_RECV);

    while (tpState.command_flg) {
    }

    return;
}

u32 TP_CheckBusy (TPRequestCommandFlag command_flgs) {
    return (u32)(tpState.command_flg & command_flgs);
}

u32 TP_CheckError (TPRequestCommandFlag command_flgs) {
    return (u32)(tpState.err_flg & command_flgs);
}
