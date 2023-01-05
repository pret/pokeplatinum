#ifndef NITRO_MB_MB_GAMEINFO_H_
#define NITRO_MB_MB_GAMEINFO_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/mb/mb.h>

#define MB_USER_VOLAT_DATA_SIZE 8

typedef void (* MBSendVolatCallbackFunc) (u32 ggid);

typedef struct MBGameInfoFixed {
    MBIconInfo icon;
    MBUserInfo parent;
    u8 maxPlayerNum;
    u8 pad[1];
    u16 gameName[MB_GAME_NAME_LENGTH];
    u16 gameIntroduction[MB_GAME_INTRO_LENGTH];
} MBGameInfoFixed, MbGameInfoFixed;

typedef struct MBGameInfoVolatile {
    u8 nowPlayerNum;
    u8 pad[1];
    u16 nowPlayerFlag;
    u16 changePlayerFlag;
    MBUserInfo member[MB_MEMBER_MAX_NUM];
    u8 userVolatData[MB_USER_VOLAT_DATA_SIZE];
} MBGameInfoVolatile, MbGameInfoVolatile;

typedef enum MbBeaconDataAttr {
    MB_BEACON_DATA_ATTR_FIXED_NORMAL = 0,
    MB_BEACON_DATA_ATTR_FIXED_NO_ICON,
    MB_BEACON_DATA_ATTR_VOLAT
} MBBeaconDataAttr, MbBeaconDataAttr;

typedef struct MBGameInfo {
    MBGameInfoFixed fixed;
    MBGameInfoVolatile volat;
    u16 broadcastedPlayerFlag;
    u8 dataAttr;
    u8 seqNoFixed;
    u8 seqNoVolat;
    u8 fileNo;
    u8 pad[2];
    u32 ggid;
    struct MBGameInfo * nextp;
} MBGameInfo, MbGameInfo;

enum {
    MB_SEND_VOLAT_CALLBACK_TIMMING_BEFORE,
    MB_SEND_VOLAT_CALLBACK_TIMMING_AFTER
};

void MB_SetSendVolatCallback(MBSendVolatCallbackFunc callback, u32 timming);
void MB_SetUserVolatData(u32 ggid, const u8 * userData, u32 size);
void * MB_GetUserVolatData(const WMGameInfo * gameInfo);

#ifdef __cplusplus
}
#endif

#endif
