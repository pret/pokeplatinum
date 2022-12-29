#ifndef NITRO_SPI_COMMON_USERINFO_TS_300_H_
#define NITRO_SPI_COMMON_USERINFO_TS_300_H_

#ifdef __cplusplus
extern "C" {
#endif

#define NVRAM_CONFIG_DATA_VERSION 5
#define NVRAM_CONFIG_DATA_EX_VERSION 1

#define NVRAM_CONFIG_NICKNAME_LENGTH 10
#define NVRAM_CONFIG_COMMENT_LENGTH 26
#define NVRAM_CONFIG_FAVORITE_COLOR_MAX 16

#define NVRAM_CONFIG_IPL2_TYPE_ADDRESS 0x001d
#define NVRAM_CONFIG_IPL2_TYPE_SIZE 1
#define NVRAM_CONFIG_IPL2_TYPE_NORMAL 0xff
#define NVRAM_CONFIG_IPL2_TYPE_EX_MASK 0x50

#define NVRAM_CONFIG_LANG_JAPANESE 0
#define NVRAM_CONFIG_LANG_ENGLISH 1
#define NVRAM_CONFIG_LANG_FRENCH 2
#define NVRAM_CONFIG_LANG_GERMAN 3
#define NVRAM_CONFIG_LANG_ITALIAN 4
#define NVRAM_CONFIG_LANG_SPANISH 5
#define NVRAM_CONFIG_LANG_CHINESE 6
#define NVRAM_CONFIG_LANG_HANGUL 7
#define NVRAM_CONFIG_LANG_CODE_MAX 8

#define NVRAM_CONFIG_LANG_BITMAP_NORMAL ((0x0001 << NVRAM_CONFIG_LANG_JAPANESE) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_ENGLISH) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_FRENCH) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_GERMAN) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_ITALIAN) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_SPANISH))

#define NVRAM_CONFIG_LANG_BITMAP_CHINESE ((0x0001 << NVRAM_CONFIG_LANG_ENGLISH) \
                                          | (0x0001 << NVRAM_CONFIG_LANG_FRENCH) \
                                          | (0x0001 << NVRAM_CONFIG_LANG_GERMAN) \
                                          | (0x0001 << NVRAM_CONFIG_LANG_ITALIAN) \
                                          | (0x0001 << NVRAM_CONFIG_LANG_SPANISH) \
                                          | (0x0001 << NVRAM_CONFIG_LANG_CHINESE))

#define NVRAM_CONFIG_LANG_BITMAP_HANGUL ((0x0001 << NVRAM_CONFIG_LANG_JAPANESE) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_ENGLISH) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_FRENCH) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_GERMAN) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_SPANISH) \
                                         | (0x0001 << NVRAM_CONFIG_LANG_HANGUL))

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

typedef struct NVRAMConfigDataEx {
    u8 version;
    u8 language;
    u16 valid_language_bitmap;
    u8 padding[256 - sizeof(NVRAMConfigData) - 4 - 4 - 2];
} NVRAMConfigDataEx;

typedef struct NVRAMConfigEx {
    NVRAMConfigData ncd;
    u16 saveCount;
    u16 crc16;
    NVRAMConfigDataEx ncd_ex;
    u16 crc16_ex;
} NVRAMConfigEx;

#ifdef __cplusplus
}
#endif

#endif
