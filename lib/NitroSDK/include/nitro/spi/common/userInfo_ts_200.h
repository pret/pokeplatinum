#ifndef NITRO_SPI_COMMON_USERINFO_TS_200_H_
#define NITRO_SPI_COMMON_USERINFO_TS_200_H_

#ifdef __cplusplus
extern "C" {
#endif

#define NVRAM_CONFIG_DATA_VERSION 5

#define NVRAM_CONFIG_NICKNAME_LENGTH 10
#define NVRAM_CONFIG_COMMENT_LENGTH 26
#define NVRAM_CONFIG_FAVORITE_COLOR_MAX 16

#define NVRAM_CONFIG_LANG_JAPANESE 0
#define NVRAM_CONFIG_LANG_ENGLISH 1
#define NVRAM_CONFIG_LANG_FRENCH 2
#define NVRAM_CONFIG_LANG_GERMAN 3
#define NVRAM_CONFIG_LANG_ITALIAN 4
#define NVRAM_CONFIG_LANG_SPANISH 5
#define NVRAM_CONFIG_LANG_CODE_MAX 6

typedef struct NVRAMConfigDate {
    u8 month;
    u8 day;
} NVRAMConfigDate;

typedef struct NVRAMConfigNickname {
    u16 str[NVRAM_CONFIG_NICKNAME_LENGTH];
    u8 length;
    u8 rsv;
} NVRAMConfigNickname;

typedef struct NVRAMConfigComment {
    u16 str[NVRAM_CONFIG_COMMENT_LENGTH];
    u8 length;
    u8 rsv;
} NVRAMConfigComment;

typedef struct NVRAMConfigOwnerInfo {
    u8 favoriteColor : 4;
    u8 rsv : 4;
    NVRAMConfigDate birthday;
    u8 pad;
    NVRAMConfigNickname nickname;
    NVRAMConfigComment comment;
} NVRAMConfigOwnerInfo;

typedef struct NVRAMConfigAlarm {
    u8 hour;
    u8 minute;
    u8 second;
    u8 pad;
    u16 enableWeek : 7;
    u16 alarmOn : 1;
    u16 rsv : 8;
} NVRAMConfigAlarm;

typedef struct NVRAMConfigTpCalibData {
    u16 raw_x1;
    u16 raw_y1;
    u8 dx1;
    u8 dy1;
    u16 raw_x2;
    u16 raw_y2;
    u8 dx2;
    u8 dy2;
} NVRAMConfigTpCalibData;

typedef struct NVRAMConfigOption {
    u16 language : 3;
    u16 agbLcd : 1;
    u16 detectPullOutCardFlag : 1;
    u16 detectPullOutCtrdgFlag : 1;
    u16 autoBootFlag : 1;
    u16 rsv : 4;
    u16 input_favoriteColor : 1;
    u16 input_tp : 1;
    u16 input_language : 1;
    u16 input_rtc : 1;
    u16 input_nickname : 1;
    u8 timezone;
    u8 rtcClockAdjust;
    s64 rtcOffset;
} NVRAMConfigOption;

typedef struct NVRAMConfigData {
    u8 version;
    u8 pad;
    NVRAMConfigOwnerInfo owner;
    NVRAMConfigAlarm alarm;
    NVRAMConfigTpCalibData tp;
    NVRAMConfigOption option;
} NVRAMConfigData;

typedef struct NVRAMConfig {
    NVRAMConfigData ncd;
    u16 saveCount;
    u16 crc16;
} NVRAMConfig;

#ifdef __cplusplus
}
#endif

#endif
