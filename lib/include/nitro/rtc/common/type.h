#ifndef NITRO_RTC_COMMON_TYPE_H_
#define NITRO_RTC_COMMON_TYPE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>

#define RTC_INTERRUPT_MODE_NONE 0x0
#define RTC_INTERRUPT_MODE_32kHz 0x8
#define RTC_INTERRUPT_MODE_PULSE 0x1
#define RTC_INTERRUPT_MODE_MINUTE_EDGE 0x2
#define RTC_INTERRUPT_MODE_MINUTE_PULSE1 0x3
#define RTC_INTERRUPT_MODE_ALARM 0x4
#define RTC_INTERRUPT_MODE_MINUTE_PULSE2 0x7

#define RTC_INTERRUPT_MASK_32kHz 0x8
#define RTC_INTERRUPT_MASK_PULSE 0xb
#define RTC_INTERRUPT_MASK_MINUTE_EDGE 0xb

#define RTC_PULSE_DUTY_1HZ 0x01
#define RTC_PULSE_DUTY_2HZ 0x02
#define RTC_PULSE_DUTY_4HZ 0x04
#define RTC_PULSE_DUTY_8HZ 0x08
#define RTC_PULSE_DUTY_16HZ 0x10

typedef struct RTCRawDate {
    u32 year : 8;
    u32 month : 5;
    u32 dummy0 : 3;
    u32 day : 6;
    u32 dummy1 : 2;
    u32 week : 3;
    u32 dummy2 : 5;
} RTCRawDate;

typedef struct RTCRawTime {
    u32 hour : 6;
    u32 afternoon : 1;
    u32 dummy0 : 1;
    u32 minute : 7;
    u32 dummy1 : 1;
    u32 second : 7;
    u32 dummy2 : 9;
} RTCRawTime;

typedef struct RTCRawStatus1 {
    u16 reset : 1;
    u16 format : 1;
    u16 dummy0 : 2;
    u16 intr1 : 1;
    u16 intr2 : 1;
    u16 bld : 1;
    u16 poc : 1;
    u16 dummy1 : 8;
} RTCRawStatus1;

typedef struct RTCRawStatus2 {
    u16 intr_mode : 4;
    u16 dummy0 : 2;
    u16 intr2_mode : 1;
    u16 test : 1;
    u16 dummy1 : 8;
} RTCRawStatus2;

typedef struct RTCRawAlarm {
    u32 week : 3;
    u32 dummy0 : 4;
    u32 we : 1;
    u32 hour : 6;
    u32 afternoon : 1;
    u32 he : 1;
    u32 minute : 7;
    u32 me : 1;
    u32 dummy2 : 8;
} RTCRawAlarm;

typedef struct RTCRawPulse {
    u32 pulse : 5;
    u32 dummy : 27;
} RTCRawPulse;

typedef struct RTCRawAdjust {
    u32 adjust : 8;
    u32 dummy : 24;
} RTCRawAdjust;

typedef struct RTCRawFree {
    u32 free : 8;
    u32 dummy : 24;
} RTCRawFree;

typedef union RTCRawData {
    struct {
        RTCRawDate date;
        RTCRawTime time;
    } t;

    struct {
        RTCRawStatus1 status1;
        RTCRawStatus2 status2;
        union {
            RTCRawPulse pulse;
            RTCRawAlarm alarm;
            RTCRawAdjust adjust;
            RTCRawFree free;
        };
    } a;

    u32 words[2];

    u16 halfs[4];

    u8 bytes[8];
} RTCRawData;

#ifdef __cplusplus
}
#endif

#endif
