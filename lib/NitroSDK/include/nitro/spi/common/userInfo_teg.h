#ifndef NITRO_SPI_COMMON_USERINFO_TEG_H_
#define NITRO_SPI_COMMON_USERINFO_TEG_H_

#ifdef __cplusplus
extern "C" {
#endif

#define NVRAM_CONFIG_DATA_VERSION 0

#define NVRAM_CONFIG_BOOT_GAME_LOG_NUM 8
#define NVRAM_CONFIG_NICKNAME_LENGTH 8

#define NVRAM_CONFIG_LANG_JAPANESE 0
#define NVRAM_CONFIG_LANG_ENGLISH 1
#define NVRAM_CONFIG_LANG_FRENCH 2
#define NVRAM_CONFIG_LANG_GERMAN 3
#define NVRAM_CONFIG_LANG_ITALIAN 4
#define NVRAM_CONFIG_LANG_SPANISH 5
#define NVRAM_CONFIG_LANG_CODE_MAX 6

typedef struct NVRAMConfigNickname {
    u16 name[NVRAM_CONFIG_NICKNAME_LENGTH];
    u16 length;
    u16 padding;
} NVRAMConfigNickname;

typedef enum NVRAMConfigSexCode {
    NVRAM_CONFIG_SEX_MALE = 0,
    NVRAM_CONFIG_SEX_FEMALE,
    NVRAM_CONFIG_SEX_CODE_MAX
} NVRAMConfigSexCode;

typedef enum NVRAMConfigBloodType {
    NVRAM_CONFIG_BLOOD_A = 0,
    NVRAM_CONFIG_BLOOD_B,
    NVRAM_CONFIG_BLOOD_AB,
    NVRAM_CONFIG_BLOOD_O,
    NVRAM_CONFIG_BLOOD_TYPE_MAX
} NVRAMConfigBloodType;

typedef struct NVRAMConfigDate {
    u16 year;
    u8 month;
    u8 day;
} NVRAMConfigDate;

typedef struct NVRAMConfigOwnerInfo {
    NVRAMConfigNickname nickname;
    NVRAMConfigSexCode sex;
    NVRAMConfigBloodType bloodType;
    NVRAMConfigDate birthday;
} NVRAMConfigOwnerInfo;

typedef struct NVRAMConfigBootGameLog {
    u32 gameCode[NVRAM_CONFIG_BOOT_GAME_LOG_NUM];
    u16 top;
    u16 num;
} NVRAMConfigBootGameLog;

typedef struct NVRAMConfigTpCData {
    u16 calib_data[6];
} NVRAMConfigTpCData;

typedef struct NVRAMConfigData {
    u8 version;
    u8 timezone;
    u16 agbLcd;
    u32 rtcOffset;
    u32 language;
    NVRAMConfigOwnerInfo owner;
    NVRAMConfigTpCData tp;
    NVRAMConfigBootGameLog bootGameLog;
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
