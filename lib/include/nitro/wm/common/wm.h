#ifndef NITRO_WM_COMMON_WM_H_
#define NITRO_WM_COMMON_WM_H_

#ifdef __cplusplus
extern "C" {
#endif

#define WM_SIZE_USER_GAMEINFO   112
#define WM_SIZE_USERNAME        8
#define WM_SIZE_GAMENAME        16

#define WM_SIZE_BSSID           6
#define WM_SIZE_SSID            32

typedef struct WMGameInfo {
    u16 magicNumber;
    u8 ver;
    u8 platform;
    u32 ggid;
    u16 tgid;
    u8 userGameInfoLength;
    union {
        u8 gameNameCount_attribute;
        u8 attribute;
    };
    u16 parentMaxSize;
    u16 childMaxSize;
    union {
        u16 userGameInfo[WM_SIZE_USER_GAMEINFO / sizeof(u16)];
        struct {
            u16 userName[WM_SIZE_USERNAME / sizeof(u16)];
            u16 gameName[WM_SIZE_GAMENAME / sizeof(u16)];
            u16 padd1[44];
        } old_type;
    };
} WMGameInfo, WMgameInfo;

typedef struct WMBssDesc {
    u16 length;
    u16 rssi;
    u8 bssid[WM_SIZE_BSSID];
    u16 ssidLength;
    u8 ssid[WM_SIZE_SSID];
    u16 capaInfo;
    struct {
        u16 basic;
        u16 support;
    } rateSet;
    u16 beaconPeriod;
    u16 dtimPeriod;
    u16 channel;
    u16 cfpPeriod;
    u16 cfpMaxDuration;
    u16 gameInfoLength;
    u16 otherElementCount;
    WMGameInfo gameInfo;
} WMBssDesc, WMbssDesc;

#ifdef  __cplusplus
}
#endif

#endif
