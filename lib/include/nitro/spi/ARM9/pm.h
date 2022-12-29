#ifndef NITRO_PM_ARM9_H_
#define NITRO_PM_ARM9_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/spi/common/pm_common.h>
#include <nitro/spi/common/type.h>
#include <nitro/pxi/common/fifo.h>

typedef void (* PMCallback) (u32 result, void * arg);

typedef struct {
    u16 flag;
    u16 padding;
    u16 * buffer;
} PMData16;

typedef enum {
    PM_LCD_TOP = 0,
    PM_LCD_BOTTOM = 1,
    PM_LCD_ALL = 2
} PMLCDTarget;

typedef enum {
    PM_BACKLIGHT_OFF = 0,
    PM_BACKLIGHT_ON = 1
} PMBackLightSwitch;

typedef enum {
    PM_BATTERY_HIGH = 0,
    PM_BATTERY_LOW = 1
} PMBattery;

typedef enum {
    PM_AMP_OFF = 0,
    PM_AMP_ON = 1
} PMAmpSwitch;

typedef enum {
    PM_AMPGAIN_20 = 0,
    PM_AMPGAIN_40 = 1,
    PM_AMPGAIN_80 = 2,
    PM_AMPGAIN_160 = 3,
    PM_AMPGAIN_DEFAULT = PM_AMPGAIN_40
} PMAmpGain;

#define PM_GAINAMP_DEFAULT PM_AMPGAIN_DEFAULT

typedef enum {
    PM_LCD_POWER_OFF = 0,
    PM_LCD_POWER_ON = 1
} PMLCDPower;

typedef void (* PMSleepCallback) (void *);

typedef struct PMiSleepCallbackInfo PMSleepCallbackInfo;
struct PMiSleepCallbackInfo {
    PMSleepCallback callback;
    void * arg;
    PMSleepCallbackInfo * next;
};

void PM_Init(void);

u32 PM_SendUtilityCommandAsync(u32 number, PMCallback callback, void * arg);
u32 PM_SendUtilityCommand(u32 number);

u32 PM_SetBackLightAsync(PMLCDTarget target, PMBackLightSwitch sw, PMCallback callback,
                         void * arg);
u32 PM_SetBackLight(PMLCDTarget target, PMBackLightSwitch status);

u32 PM_ForceToPowerOffAsync(PMCallback callback, void * arg);
u32 PM_ForceToPowerOff(void);

u32 PM_SetAmpAsync(PMAmpSwitch sw, PMCallback callback, void * arg);
u32 PM_SetAmp(PMAmpSwitch sw);

u32 PM_SetAmpGainAsync(PMAmpGain gain, PMCallback callback, void * arg);
u32 PM_SetAmpGain(PMAmpGain gain);

u32 PM_GetBattery(PMBattery * batteryBuf);

u32 PM_GetBackLight(PMBackLightSwitch * top, PMBackLightSwitch * bottom);

u32 PM_GetAmp(PMAmpSwitch * swBuf);

u32 PM_GetAmpGain(PMAmpGain * gainBuf);

void PM_GoSleepMode(PMWakeUpTrigger trigger, PMLogic logic, u16 keyPattern);

static inline void PM_SetSleepCallbackInfo (PMSleepCallbackInfo * info, PMSleepCallback callback,
                                            void * arg)
{
    info->callback = callback;
    info->arg = arg;
}

void PM_AppendPreSleepCallback(PMSleepCallbackInfo * info);

void PM_PrependPreSleepCallback(PMSleepCallbackInfo * info);

void PM_AppendPostSleepCallback(PMSleepCallbackInfo * info);

void PM_PrependPostSleepCallback(PMSleepCallbackInfo * info);

void PM_DeletePreSleepCallback(PMSleepCallbackInfo * info);

void PM_DeletePostSleepCallback(PMSleepCallbackInfo * info);

BOOL PM_SetLCDPower(PMLCDPower sw);

PMLCDPower PM_GetLCDPower(void);

u32 PMi_SendLEDPatternCommandAsync(PMLEDPattern pattern, PMCallback callback, void * arg);
u32 PMi_SendLEDPatternCommand(PMLEDPattern pattern);

inline u32 PM_SetLEDPatternAsync (PMLEDPattern pattern, PMCallback callback, void * arg)
{
    return PMi_SendLEDPatternCommandAsync(pattern, callback, arg);
}
inline u32 PM_SetLEDPattern (PMLEDPattern pattern)
{
    return PMi_SendLEDPatternCommand(pattern);
}

u32 PM_GetLEDPatternAsync(PMLEDPattern * patternBuf, PMCallback callback, void * arg);
u32 PM_GetLEDPattern(PMLEDPattern * patternBuf);

typedef enum {
    PM_SOUND_POWER_OFF = 0,
    PM_SOUND_POWER_ON = 1
} PMSoundPowerSwitch;

typedef enum {
    PM_SOUND_VOLUME_OFF = 0,
    PM_SOUND_VOLUME_ON = 1
} PMSoundVolumeSwitch;

BOOL PMi_SetLCDPower(PMLCDPower sw, PMLEDStatus led, BOOL skip, BOOL isSync);

u32 PMi_SetSoundPowerAsync(PMSoundPowerSwitch sw, PMCallback callback, void * arg);
u32 PMi_SetSoundPower(PMSoundPowerSwitch sw);

u32 PMi_SetSoundVolumeAsync(PMSoundVolumeSwitch sw, PMCallback callback, void * arg);
u32 PMi_SetSoundVolume(PMSoundVolumeSwitch sw);

u32 PMi_GetSoundPower(PMSoundPowerSwitch * swBuf);

u32 PMi_GetSoundVolume(PMSoundVolumeSwitch * swBuf);

void PMi_SendPxiData(u32 data);

void PMi_CommonCallback(PXIFifoTag tag, u32 data, BOOL err);

u32 PMi_SendSleepStart(u16 trigger, u16 keyIntrData);
u32 PMi_DisposeSleepEnd(void);

u32 PMi_ReadRegisterAsync(u16 registerAddr, u16 * buffer, PMCallback callback, void * arg);
u32 PMi_ReadRegister(u16 registerAddr, u16 * buffer);

u32 PMi_WriteRegisterAsync(u16 registerAddr, u16 data, PMCallback callback, void * arg);
u32 PMi_WriteRegister(u16 registerAddr, u16 data);

u32 PMi_SetLEDAsync(PMLEDStatus status, PMCallback callback, void * arg);
u32 PMi_SetLED(PMLEDStatus status);

u32 PMi_GetLCDOffCount(void);

#ifdef __cplusplus
}
#endif

#endif
