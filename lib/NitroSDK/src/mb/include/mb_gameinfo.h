#ifndef MB_GAME_INFO_H_
#define MB_GAME_INFO_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/wm.h>
#include <nitro/mb/mb_gameinfo.h>

#define MB_GAMEINFO_PARENT_FLAG (0x0001)
#define MB_GAMEINFO_CHILD_FLAG(__child_aid__) (1 << (__child_aid__))

typedef struct MBGameInfoRecvList {
    MBGameInfo gameInfo;
    WMBssDesc bssDesc;
    u32 getFlagmentFlag;
    u32 allFlagmentFlag;
    u16 getPlayerFlag;
    s16 lifetimeCount;
    u16 linkLevel;
    u8 beaconNo;
    u8 sameBeaconRecvCount;
} MBGameInfoRecvList, MbGameInfoRecvList;

typedef struct MbBeaconRecvStatus {
    u16 usingGameInfoFlag;
    u16 usefulGameInfoFlag;

    u16 validGameInfoFlag;
    u16 nowScanTargetFlag;
    s16 nowLockTimeCount;
    s16 notFoundLockTargetCount;
    u16 scanCountUnit;
    u8 pad[2];
    MBGameInfoRecvList list[MB_GAME_INFO_RECV_LIST_NUM];
} MbBeaconRecvStatus;

typedef enum MbBeaconMsg {
    MB_BC_MSG_GINFO_VALIDATED = 1,
    MB_BC_MSG_GINFO_INVALIDATED,
    MB_BC_MSG_GINFO_LOST,
    MB_BC_MSG_GINFO_LIST_FULL,
    MB_BC_MSG_GINFO_BEACON
} MbBeaconMsg;

typedef void (* MBBeaconMsgCallback) (MbBeaconMsg msg, MBGameInfoRecvList * gInfop, int index);

typedef void (* MbScanLockFunc) (u8 * macAddress);
typedef void (* MbScanUnlockFunc) (void);

void MB_InitSendGameInfoStatus(void);
void MBi_MakeGameInfo(MBGameInfo * gameInfop, const MBGameRegistry * mbGameRegp, const MBUserInfo * parent);
void MB_UpdateGameInfoMember(MBGameInfo * gameInfop, const MBUserInfo * member, u16 nowPlayerFlag, u16 changePlayerFlag);
void MB_AddGameInfo(MBGameInfo * newGameInfop);
BOOL MB_DeleteGameInfo(MBGameInfo * gameInfop);
void MB_SendGameInfoBeacon(u32 ggid, u16 tgid, u8 attribute);
void MBi_SetBeaconRecvStatusBufferDefault(void);
void MBi_SetBeaconRecvStatusBuffer(MbBeaconRecvStatus * buf);
void MB_InitRecvGameInfoStatus(void);
BOOL MB_RecvGameInfoBeacon(MBBeaconMsgCallback Callbackp, u16 linkLevel, WMBssDesc * bssDescp);
void MB_CountGameInfoLifetime(MBBeaconMsgCallback Callbackp, BOOL found_parent);
void MBi_SetScanLockFunc(MbScanLockFunc lockFunc, MbScanUnlockFunc unlockFunc);
MBGameInfoRecvList * MB_GetGameInfoRecvList(int index);
const MbBeaconRecvStatus * MB_GetBeaconRecvStatus(void);
void MB_DeleteRecvGameInfo(int index);
void MB_DeleteRecvGameInfoWithoutBssdesc(int index);

#if defined(MB_CHANGE_TO_UNICODE)

void MBi_ExSJIS_BEtoUTF16_LE(u8 * sjisp, u16 * unip, u16 length);
void MBi_ExUTF16_LEtoSJIS_BE(u8 * sjisp, u16 * unip, u16 length);
void MBi_CheckSJIS_BEtoUTF16_LE(void);

#endif

#ifdef __cplusplus
}
#endif

#endif
