#include <nitro/rtc/ARM9/api.h>
#include <nitro/pxi.h>

static BOOL RtcSendPxiCommand(u32 command);

BOOL RTCi_ResetAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_RESET);
}

BOOL RTCi_SetHourFormatAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_SET_HOUR_FORMAT);
}

BOOL RTCi_ReadRawDateTimeAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_DATETIME);
}

BOOL RTCi_WriteRawDateTimeAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_DATETIME);
}

BOOL RTCi_ReadRawDateAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_DATE);
}

BOOL RTCi_WriteRawDateAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_DATE);
}

BOOL RTCi_ReadRawTimeAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_TIME);
}

BOOL RTCi_WriteRawTimeAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_TIME);
}

BOOL RTCi_ReadRawPulseAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_PULSE);
}

BOOL RTCi_WriteRawPulseAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_PULSE);
}

BOOL RTCi_ReadRawAlarm1Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_ALARM1);
}

BOOL RTCi_WriteRawAlarm1Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_ALARM1);
}

BOOL RTCi_ReadRawAlarm2Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_ALARM2);
}

BOOL RTCi_WriteRawAlarm2Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_ALARM2);
}

BOOL RTCi_ReadRawStatus1Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_STATUS1);
}

BOOL RTCi_WriteRawStatus1Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_STATUS1);
}

BOOL RTCi_ReadRawStatus2Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_STATUS2);
}

BOOL RTCi_WriteRawStatus2Async (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_STATUS2);
}

BOOL RTCi_ReadRawAdjustAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_ADJUST);
}

BOOL RTCi_WriteRawAdjustAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_ADJUST);
}

BOOL RTCi_ReadRawFreeAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_READ_FREE);
}

BOOL RTCi_WriteRawFreeAsync (void) {
    return RtcSendPxiCommand(RTC_PXI_COMMAND_WRITE_FREE);
}

static BOOL RtcSendPxiCommand (u32 command) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_RTC,
            ((command << RTC_PXI_COMMAND_SHIFT) & RTC_PXI_COMMAND_MASK), 0
        )) {
        return FALSE;
    }
    return TRUE;
}
