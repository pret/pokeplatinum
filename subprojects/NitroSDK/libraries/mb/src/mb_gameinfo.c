#include <nitro.h>

#include "mb_gameinfo.h"
#include "mb_common.h"
#include "mb_private.h"

#define MB_GAME_INFO_LIFETIME_SEC 60
#define MB_SCAN_LOCK_SEC 8
#define MB_SAME_BEACON_RECV_MAX_COUNT 3

#define MB_BEACON_DATA_SIZE (WM_SIZE_USER_GAMEINFO - 8)
#define MB_BEACON_FIXED_DATA_SIZE (MB_BEACON_DATA_SIZE - 6)
#define MB_BEACON_VOLAT_DATA_SIZE (MB_BEACON_DATA_SIZE - 8)
#define MB_SEND_MEMBER_MAX_NUM (MB_BEACON_VOLAT_DATA_SIZE / sizeof(MBUserInfo))

#define FIXED_NORMAL_SIZE sizeof(MBGameInfoFixed)
#define FIXED_NO_ICON_SIZE (sizeof(MBGameInfoFixed) - sizeof(MBIconInfo))
#define FIXED_FLAGMENT_MAX(size) ((size / MB_BEACON_FIXED_DATA_SIZE) + (size % MB_BEACON_FIXED_DATA_SIZE ? 1 : 0))

#define MB_LIFETIME_MAX_COUNT (MB_GAME_INFO_LIFETIME_SEC * 1000 / MB_SCAN_TIME_NORMAL + 1)
#define MB_LOCKTIME_MAX_COUNT (MB_SCAN_LOCK_SEC * 1000 / MB_SCAN_TIME_NORMAL + 1)

#define MB_SCAN_COUNT_UNIT_NORMAL (1)
#define MB_SCAN_COUNT_UNIT_LOCKING (MB_SCAN_TIME_LOCKING / MB_SCAN_TIME_NORMAL)

typedef enum MbBeaconState {
    MB_BEACON_STATE_STOP = 0,
    MB_BEACON_STATE_READY,
    MB_BEACON_STATE_FIXED_START,
    MB_BEACON_STATE_FIXED,
    MB_BEACON_STATE_VOLAT_START,
    MB_BEACON_STATE_VOLAT,
    MB_BEACON_STATE_NEXT_GAME
} MbBeaconState;

typedef struct MbBeacon {
    u32 ggid;
    u8 dataAttr : 2;
    u8 fileNo : 6;
    u8 seqNoFixed;
    u8 seqNoVolat;
    u8 beaconNo;

    union {
        struct {
            u16 sum;
            u8 flagmentNo;
            u8 flagmentMaxNum;
            u8 size;
            u8 rsv;
            u8 data[MB_BEACON_FIXED_DATA_SIZE];
        } fixed;
        struct {
            u16 sum;
            u8 nowPlayerNum;
            u8 pad[1];
            u16 nowPlayerFlag;
            u16 changePlayerFlag;
            MBUserInfo member[MB_SEND_MEMBER_MAX_NUM];
            u8 userVolatData[MB_USER_VOLAT_DATA_SIZE];
        } volat;
    } data;
} MbBeacon;

typedef struct MbBeaconSendStatus {
    MBGameInfo * gameInfoListTop;
    MBGameInfo * nowGameInfop;
    u8 * srcp;
    u8 state;
    u8 seqNoFixed;
    u8 seqNoVolat;
    u8 flagmentNo;
    u8 flagmentMaxNum;
    u8 beaconNo;
    u8 pad[2];
} MbBeaconSendStatus;

static BOOL MBi_ReadIconInfo(const char * filePathp, MBIconInfo * iconp, BOOL char_flag);
static void MBi_ClearSendStatus(void);
static BOOL MBi_ReadyBeaconSendStatus(void);
static void MBi_InitSendFixedBeacon(void);
static void MBi_SendFixedBeacon(u32 ggid, u16 tgid, u8 attribute);
static void MBi_InitSendVolatBeacon(void);
static void MBi_SendVolatBeacon(u32 ggid, u16 tgid, u8 attribute);

static BOOL MBi_CheckMBParent(WMBssDesc * bssDescp);
static void MBi_SetSSIDToBssDesc(WMBssDesc * bssDescp, u32 ggid);
static int MBi_GetStoreElement(WMBssDesc * bssDescp, MBBeaconMsgCallback Callbackp);
static void MBi_CheckCompleteGameInfoFlagments(int index, MBBeaconMsgCallback Callbackp);
static void MBi_AnalyzeBeacon(WMBssDesc * bssDescp, int index, u16 linkLevel);
static void MBi_CheckTGID(WMBssDesc * bssDescp, int inex);
static void MBi_CheckSeqNoFixed(int index);
static void MBi_CheckSeqNoVolat(int index);
static void MBi_InvalidateGameInfoBssID(u8 * bssidp);
static void MBi_RecvFixedBeacon(int index);
static void MBi_RecvVolatBeacon(int index);

static void MBi_LockScanTarget(int index);
static void MBi_UnlockScanTarget(void);
static int mystrlen(u16 * str);

static MbBeaconSendStatus mbss;

static MbBeaconRecvStatus mbrs;
static MbBeaconRecvStatus * mbrsp = NULL;

static MbScanLockFunc sLockFunc = NULL;
static MbScanUnlockFunc sUnlockFunc = NULL;

static MbBeacon bsendBuff ATTRIBUTE_ALIGN(32);
static MbBeacon * brecvBuffp;
static WMBssDesc bssDescbuf ATTRIBUTE_ALIGN(32);

static MBSendVolatCallbackFunc sSendVolatCallback = NULL;
static u32 sSendVolatCallbackTimming;

const MbBeaconRecvStatus * MB_GetBeaconRecvStatus (void) {
    return mbrsp;
}

void MBi_SetBeaconRecvStatusBufferDefault (void) {
    mbrsp = &mbrs;
}

void MBi_SetBeaconRecvStatusBuffer (MbBeaconRecvStatus * buf) {
    mbrsp = buf;
}

void MBi_SetScanLockFunc (MbScanLockFunc lock, MbScanUnlockFunc unlock) {
    sLockFunc = lock;
    sUnlockFunc = unlock;
}

void MBi_MakeGameInfo (MBGameInfo * gameInfop, const MBGameRegistry * mbGameRegp, const MBUserInfo * parent) {
    BOOL icon_disable;

    MI_CpuClear16(gameInfop, sizeof(MBGameInfo));

    gameInfop->dataAttr = MB_BEACON_DATA_ATTR_FIXED_NORMAL;
    icon_disable = !MBi_ReadIconInfo(mbGameRegp->iconCharPathp, &gameInfop->fixed.icon, TRUE);
    icon_disable |= !MBi_ReadIconInfo(mbGameRegp->iconPalettePathp, &gameInfop->fixed.icon, FALSE);

    if (icon_disable) {
        gameInfop->dataAttr = MB_BEACON_DATA_ATTR_FIXED_NO_ICON;
        MI_CpuClearFast(&gameInfop->fixed.icon, sizeof(MBIconInfo));
    }

    gameInfop->ggid = mbGameRegp->ggid;

    if (parent != NULL) {
        MI_CpuCopy16(parent, &gameInfop->fixed.parent, sizeof(MBUserInfo));
    }

    gameInfop->fixed.maxPlayerNum = mbGameRegp->maxPlayerNum;

    {
        int len;

#if defined(MB_CHANGE_TO_UNICODE)
#define COPY_GAME_INFO_STRING MBi_ExSJIS_BEtoUTF16_LE
#else
#define COPY_GAME_INFO_STRING MI_CpuCopy16
#endif

        len = mystrlen(mbGameRegp->gameNamep) << 1;
        COPY_GAME_INFO_STRING((u8 *)mbGameRegp->gameNamep, gameInfop->fixed.gameName, (u16)len);

        len = MB_GAME_INTRO_LENGTH * 2;
        COPY_GAME_INFO_STRING(
            (u8 *)mbGameRegp->gameIntroductionp,
            gameInfop->fixed.gameIntroduction, (u16)len
        );
    }

    gameInfop->volat.nowPlayerNum = 1;
    gameInfop->volat.nowPlayerFlag = 0x0001;
    gameInfop->broadcastedPlayerFlag = 0x0001;
}

static BOOL MBi_ReadIconInfo (const char * filePathp, MBIconInfo * iconp, BOOL char_flag) {
    FSFile file;
    s32 size = char_flag ? MB_ICON_DATA_SIZE : MB_ICON_PALETTE_SIZE;
    u16 * dstp = char_flag ? iconp->data : iconp->palette;

    if (filePathp == NULL) {
        return FALSE;
    }

    FS_InitFile(&file);

    if (FS_OpenFile(&file, filePathp) == FALSE) {
        MB_DEBUG_OUTPUT("\t%s : file open error.\n", filePathp);
        return FALSE;
    } else if ((u32)size != FS_GetLength(&file)) {
        MB_DEBUG_OUTPUT("\t%s : different file size.\n", filePathp);
        (void)FS_CloseFile(&file);
        return FALSE;
    }

    (void)FS_ReadFile(&file, dstp, size);
    (void)FS_CloseFile(&file);
    return TRUE;
}

void MB_UpdateGameInfoMember (MBGameInfo * gameInfop, const MBUserInfo * member, u16 nowPlayerFlag, u16 changePlayerFlag) {
    int i;
    u8 playerNum = 1;

    MI_CpuCopy16(member, &gameInfop->volat.member[0], sizeof(MBUserInfo) * MB_MEMBER_MAX_NUM);

    for (i = 0; i < MB_MEMBER_MAX_NUM; i++) {
        if (nowPlayerFlag & (0x0002 << i)) {
            playerNum++;
        }
    }
    gameInfop->volat.nowPlayerNum = playerNum;
    gameInfop->volat.nowPlayerFlag = (u16)(nowPlayerFlag | 0x0001);
    gameInfop->volat.changePlayerFlag = changePlayerFlag;
    gameInfop->seqNoVolat++;
}

static int mystrlen (u16 * str) {
    int len = 0;
    while (*str++) {
        len++;
    }
    return len;
}

void MB_AddGameInfo (MBGameInfo * newGameInfop) {
    MBGameInfo * gInfop = mbss.gameInfoListTop;

    if (!gInfop) {
        mbss.gameInfoListTop = newGameInfop;
    } else {
        while (gInfop->nextp != NULL) {
            gInfop = gInfop->nextp;
        }
        gInfop->nextp = newGameInfop;
    }
    newGameInfop->nextp = NULL;
}

BOOL MB_DeleteGameInfo (MBGameInfo * gameInfop) {
    MBGameInfo * gInfop = mbss.gameInfoListTop;
    MBGameInfo * before;

    while (gInfop != NULL) {
        if (gInfop != gameInfop) {
            before = gInfop;
            gInfop = gInfop->nextp;
            continue;
        }

        if ((u32)gInfop == (u32)mbss.gameInfoListTop) {
            mbss.gameInfoListTop = mbss.gameInfoListTop->nextp;
        } else {
            before->nextp = gInfop->nextp;
        }

        if ((u32)gameInfop == (u32)mbss.nowGameInfop) {
            mbss.nowGameInfop = NULL;
            if (!MBi_ReadyBeaconSendStatus()) {
                mbss.state = MB_BEACON_STATE_READY;
            }
        }
        return TRUE;
    }

    return FALSE;
}

void MB_InitSendGameInfoStatus (void) {
    mbss.gameInfoListTop = NULL;
    mbss.nowGameInfop = NULL;
    mbss.state = MB_BEACON_STATE_READY;
    sSendVolatCallback = NULL;
    MBi_ClearSendStatus();
}

static void MBi_ClearSendStatus (void) {
    mbss.seqNoFixed = 0;
    mbss.seqNoVolat = 0;
    mbss.flagmentNo = 0;
    mbss.flagmentMaxNum = 0;
    mbss.beaconNo = 0;
}

void MB_SendGameInfoBeacon (u32 ggid, u16 tgid, u8 attribute) {
    while (1) {
        switch (mbss.state) {
        case MB_BEACON_STATE_STOP:
        case MB_BEACON_STATE_READY:
            if (!MBi_ReadyBeaconSendStatus()) {
                return;
            }
            break;
        case MB_BEACON_STATE_FIXED_START:
            MBi_InitSendFixedBeacon();
            break;
        case MB_BEACON_STATE_FIXED:
            MBi_SendFixedBeacon(ggid, tgid, attribute);
            return;
        case MB_BEACON_STATE_VOLAT_START:
            MBi_InitSendVolatBeacon();
            break;
        case MB_BEACON_STATE_VOLAT:
            MBi_SendVolatBeacon(ggid, tgid, attribute);
            return;
        case MB_BEACON_STATE_NEXT_GAME:
            break;
        }
    }
}

static BOOL MBi_ReadyBeaconSendStatus (void) {
    MBGameInfo * nextGameInfop;

    if (!mbss.gameInfoListTop) {
        (void)WM_SetGameInfo(
            NULL, (u16 *)&bsendBuff, WM_SIZE_USER_GAMEINFO, MBi_GetGgid(),
            MBi_GetTgid(), WM_ATTR_FLAG_CS
        );
        return FALSE;
    }

    if (!mbss.nowGameInfop || !mbss.nowGameInfop->nextp) {
        nextGameInfop = mbss.gameInfoListTop;
    } else {
        nextGameInfop = mbss.nowGameInfop->nextp;
    }

    mbss.nowGameInfop = nextGameInfop;

    MBi_ClearSendStatus();
    mbss.seqNoVolat = mbss.nowGameInfop->seqNoVolat;

    mbss.state = MB_BEACON_STATE_FIXED_START;

    return TRUE;
}

static void MBi_InitSendFixedBeacon (void) {
    if (mbss.state != MB_BEACON_STATE_FIXED_START) {
        return;
    }

    if (mbss.nowGameInfop->dataAttr == MB_BEACON_DATA_ATTR_FIXED_NORMAL) {
        mbss.flagmentMaxNum = FIXED_FLAGMENT_MAX(FIXED_NORMAL_SIZE);
        mbss.srcp = (u8 *)&mbss.nowGameInfop->fixed;
    } else {
        mbss.flagmentMaxNum = FIXED_FLAGMENT_MAX(FIXED_NO_ICON_SIZE);
        mbss.srcp = (u8 *)&mbss.nowGameInfop->fixed.parent;
    }
    mbss.state = MB_BEACON_STATE_FIXED;
}

static void MBi_SendFixedBeacon (u32 ggid, u16 tgid, u8 attribute) {
    u32 lastAddr = (u32)mbss.nowGameInfop + sizeof(MBGameInfoFixed);

    if ((u32)mbss.srcp + MB_BEACON_FIXED_DATA_SIZE <= lastAddr) {
        bsendBuff.data.fixed.size = MB_BEACON_FIXED_DATA_SIZE;
    } else {
        bsendBuff.data.fixed.size = (u8)(lastAddr - (u32)mbss.srcp);
        MI_CpuClear16(
            (void *)((u8 *)bsendBuff.data.fixed.data + bsendBuff.data.fixed.size),
            (u32)(MB_BEACON_FIXED_DATA_SIZE - bsendBuff.data.fixed.size)
        );
    }

    MB_DEBUG_OUTPUT("send flagment= %2d  adr = 0x%x\n", mbss.flagmentNo, mbss.srcp);
    MI_CpuCopy16(mbss.srcp, bsendBuff.data.fixed.data, bsendBuff.data.fixed.size);
    bsendBuff.data.fixed.flagmentNo = mbss.flagmentNo;
    bsendBuff.data.fixed.flagmentMaxNum = mbss.flagmentMaxNum;
    bsendBuff.dataAttr = mbss.nowGameInfop->dataAttr;
    bsendBuff.seqNoFixed = mbss.nowGameInfop->seqNoFixed;
    bsendBuff.seqNoVolat = mbss.seqNoVolat;
    bsendBuff.ggid = mbss.nowGameInfop->ggid;
    bsendBuff.fileNo = mbss.nowGameInfop->fileNo;
    bsendBuff.beaconNo = mbss.beaconNo++;
    bsendBuff.data.fixed.sum = 0;
    bsendBuff.data.fixed.sum = MBi_calc_cksum((u16 *)&bsendBuff.data, MB_BEACON_DATA_SIZE);

    mbss.flagmentNo++;
    if (mbss.flagmentNo < mbss.flagmentMaxNum) {
        mbss.srcp += MB_BEACON_FIXED_DATA_SIZE;
    } else {
        mbss.state = MB_BEACON_STATE_VOLAT_START;
    }

    (void)WM_SetGameInfo(
        NULL, (u16 *)&bsendBuff, WM_SIZE_USER_GAMEINFO, ggid, tgid,
        (u8)(attribute | WM_ATTR_FLAG_MB | WM_ATTR_FLAG_ENTRY)
    );
}

static void MBi_InitSendVolatBeacon (void) {
    mbss.nowGameInfop->broadcastedPlayerFlag = 0x0001;
    mbss.seqNoVolat = mbss.nowGameInfop->seqNoVolat;
    mbss.state = MB_BEACON_STATE_VOLAT;
}

static void MBi_SendVolatBeacon (u32 ggid, u16 tgid, u8 attribute) {
    int i;
    int setPlayerNum;
    u16 remainPlayerFlag;

    if (mbss.seqNoVolat != mbss.nowGameInfop->seqNoVolat) {
        MBi_InitSendVolatBeacon();
    }

    bsendBuff.dataAttr = MB_BEACON_DATA_ATTR_VOLAT;
    bsendBuff.seqNoFixed = mbss.nowGameInfop->seqNoFixed;
    bsendBuff.seqNoVolat = mbss.seqNoVolat;
    bsendBuff.ggid = mbss.nowGameInfop->ggid;
    bsendBuff.fileNo = mbss.nowGameInfop->fileNo;
    bsendBuff.beaconNo = mbss.beaconNo++;

    bsendBuff.data.volat.nowPlayerNum = mbss.nowGameInfop->volat.nowPlayerNum;
    bsendBuff.data.volat.nowPlayerFlag = mbss.nowGameInfop->volat.nowPlayerFlag;
    bsendBuff.data.volat.changePlayerFlag = mbss.nowGameInfop->volat.changePlayerFlag;

    if (sSendVolatCallbackTimming == MB_SEND_VOLAT_CALLBACK_TIMMING_BEFORE
        && sSendVolatCallback != NULL) {
        sSendVolatCallback(mbss.nowGameInfop->ggid);
    }

    for (i = 0; i < MB_USER_VOLAT_DATA_SIZE; i++) {
        bsendBuff.data.volat.userVolatData[i] = mbss.nowGameInfop->volat.userVolatData[i];
    }

    MB_DEBUG_OUTPUT("send PlayerFlag = %x\n", mbss.nowGameInfop->volat.nowPlayerFlag);

    MI_CpuClear16(&bsendBuff.data.volat.member[0], sizeof(MBUserInfo) * MB_SEND_MEMBER_MAX_NUM);
    setPlayerNum = 0;
    remainPlayerFlag =
        (u16)(mbss.nowGameInfop->broadcastedPlayerFlag ^ mbss.nowGameInfop->volat.nowPlayerFlag);
    for (i = 0; i < MB_MEMBER_MAX_NUM; i++) {
        if ((remainPlayerFlag & (0x0002 << i)) == 0) {
            continue;
        }

        MB_DEBUG_OUTPUT("  member %d set.\n", i);

        MI_CpuCopy16(
            &mbss.nowGameInfop->volat.member[i],
            &bsendBuff.data.volat.member[setPlayerNum], sizeof(MBUserInfo)
        );
        mbss.nowGameInfop->broadcastedPlayerFlag |= 0x0002 << i;
        if (++setPlayerNum == MB_SEND_MEMBER_MAX_NUM) {
            break;
        }
    }
    if (setPlayerNum < MB_SEND_MEMBER_MAX_NUM) {
        bsendBuff.data.volat.member[setPlayerNum].playerNo = 0;
    }

    bsendBuff.data.volat.sum = 0;
    bsendBuff.data.volat.sum = MBi_calc_cksum((u16 *)&bsendBuff.data, MB_BEACON_DATA_SIZE);

    if (mbss.nowGameInfop->broadcastedPlayerFlag == mbss.nowGameInfop->volat.nowPlayerFlag) {
        mbss.state = MB_BEACON_STATE_READY;
    }

    (void)WM_SetGameInfo(
        NULL, (u16 *)&bsendBuff, WM_SIZE_USER_GAMEINFO, ggid, tgid,
        (u8)(attribute | WM_ATTR_FLAG_MB | WM_ATTR_FLAG_ENTRY)
    );

    if (sSendVolatCallbackTimming == MB_SEND_VOLAT_CALLBACK_TIMMING_AFTER
        && sSendVolatCallback != NULL) {
        sSendVolatCallback(mbss.nowGameInfop->ggid);
    }
}

void MB_InitRecvGameInfoStatus (void) {
    MI_CpuClearFast(mbrsp, sizeof(MbBeaconRecvStatus));

    mbrsp->scanCountUnit = MB_SCAN_COUNT_UNIT_NORMAL;
}

BOOL MB_RecvGameInfoBeacon (MBBeaconMsgCallback Callbackp, u16 linkLevel, WMBssDesc * bssDescp) {
    int index;

    if (!MBi_CheckMBParent(bssDescp)) {
        return FALSE;
    }

    MI_CpuCopy16(bssDescp, &bssDescbuf, sizeof(WMBssDesc));

    bssDescp = &bssDescbuf;

    brecvBuffp = (MbBeacon *)bssDescp->gameInfo.userGameInfo;

    if (MBi_calc_cksum((u16 *)&brecvBuffp->data, MB_BEACON_DATA_SIZE)) {
        MB_DEBUG_OUTPUT("Beacon checksum error!\n");
        return FALSE;
    }

    index = MBi_GetStoreElement(bssDescp, Callbackp);
    if (index < 0) {
        return FALSE;
    }
    MB_DEBUG_OUTPUT("GameInfo Index:%6d\n", index);

    MBi_AnalyzeBeacon(bssDescp, index, linkLevel);

    MBi_CheckCompleteGameInfoFlagments(index, Callbackp);

    return TRUE;
}

static BOOL MBi_CheckMBParent (WMBssDesc * bssDescp) {
    if ((bssDescp->gameInfo.magicNumber != WM_GAMEINFO_MAGIC_NUMBER)
        || !(bssDescp->gameInfo.attribute & WM_ATTR_FLAG_MB)) {
        MB_DEBUG_OUTPUT(
            "not MB parent : %x%x\n",
            *(u16 *)(&bssDescp->bssid[4]), *(u32 *)bssDescp->bssid
        );
        return FALSE;
    } else {
        MB_DEBUG_OUTPUT(
            "MB parent     : %x%x",
            *(u16 *)(&bssDescp->bssid[4]), *(u32 *)bssDescp->bssid
        );
        return TRUE;
    }
}

static void MBi_SetSSIDToBssDesc (WMBssDesc * bssDescp, u32 ggid) {
    bssDescp->ssidLength = 32;
    ((u16 *)bssDescp->ssid)[0] = (u16)(ggid & 0x0000ffff);
    ((u16 *)bssDescp->ssid)[1] = (u16)((ggid & 0xffff0000) >> 16);
    ((u16 *)bssDescp->ssid)[2] = bssDescp->gameInfo.tgid;
}

static int MBi_GetStoreElement (WMBssDesc * bssDescp, MBBeaconMsgCallback Callbackp) {
    int i;

    for (i = 0; i < MB_GAME_INFO_RECV_LIST_NUM; i++) {
        MBGameInfoRecvList * info = &mbrsp->list[i];

        if ((mbrsp->usingGameInfoFlag & (0x01 << i)) == 0) {
            continue;
        }

        if (info->gameInfo.ggid != brecvBuffp->ggid) {
            continue;
        }

        if (!WM_IsBssidEqual(info->bssDesc.bssid, bssDescp->bssid)) {
            continue;
        }

        if (mbrsp->list[i].gameInfo.fileNo != brecvBuffp->fileNo) {
            continue;
        }

        if (!(mbrsp->validGameInfoFlag & (0x01 << i))) {
            MBi_LockScanTarget(i);
        }
        return i;
    }

    for (i = 0; i < MB_GAME_INFO_RECV_LIST_NUM; i++) {
        if (mbrsp->usingGameInfoFlag & (0x01 << i)) {
            continue;
        }

        MI_CpuCopy16(bssDescp, &mbrsp->list[i].bssDesc, sizeof(WMBssDesc));

        mbrsp->list[i].gameInfo.seqNoFixed = brecvBuffp->seqNoFixed;
        mbrsp->usingGameInfoFlag |= (u16)(0x01 << i);

        MB_DEBUG_OUTPUT("\n");

        MBi_LockScanTarget(i);
        return i;
    }

    if (Callbackp != NULL) {
        Callbackp(MB_BC_MSG_GINFO_LIST_FULL, NULL, 0);
    }
    return -1;
}

static void MBi_CheckCompleteGameInfoFlagments (int index, MBBeaconMsgCallback Callbackp) {
    MBGameInfoRecvList * info = &mbrsp->list[index];

    if (Callbackp != NULL) {
        Callbackp(MB_BC_MSG_GINFO_BEACON, info, index);
    }
    if ((info->getFlagmentFlag == info->allFlagmentFlag) && (info->getFlagmentFlag)
        && (info->gameInfo.volat.nowPlayerFlag)
        && (info->getPlayerFlag == info->gameInfo.volat.nowPlayerFlag)) {
        if (mbrsp->validGameInfoFlag & (0x01 << index)) {
            return;
        }
        mbrsp->validGameInfoFlag |= 0x01 << index;
        mbrsp->usefulGameInfoFlag |= 0x01 << index;
        MBi_UnlockScanTarget();
        MB_DEBUG_OUTPUT("validated ParentInfo = %d\n", index);
        if (Callbackp != NULL) {
            Callbackp(MB_BC_MSG_GINFO_VALIDATED, info, index);
        }
    } else {
        if ((mbrsp->validGameInfoFlag & (0x01 << index)) == 0) {
            return;
        }
        mbrsp->validGameInfoFlag ^= (0x01 << index);
        MB_DEBUG_OUTPUT("Invaldated ParentInfo = %d\n", index);
        if (Callbackp != NULL) {
            Callbackp(MB_BC_MSG_GINFO_INVALIDATED, info, index);
        }
    }
}

void MB_CountGameInfoLifetime (MBBeaconMsgCallback Callbackp, BOOL found_parent) {
    int i;
    BOOL unlock = FALSE;

    for (i = 0; i < MB_GAME_INFO_RECV_LIST_NUM; i++) {
        MBGameInfoRecvList * info = &mbrsp->list[i];
        u16 mask = (u16)(0x0001 << i);
        if ((mbrsp->usingGameInfoFlag & mask) == 0) {
            continue;
        }

        info->lifetimeCount -= mbrsp->scanCountUnit;
        if (info->lifetimeCount >= 0) {
            continue;
        }
        info->lifetimeCount = 0;
        if (mbrsp->validGameInfoFlag & mask) {
            if (Callbackp != NULL) {
                Callbackp(MB_BC_MSG_GINFO_LOST, info, i);
            }
        }
        if (mbrsp->nowScanTargetFlag & mask) {
            unlock = TRUE;
        }
        mbrsp->usingGameInfoFlag &= ~mask;
        MB_DeleteRecvGameInfo(i);
        MB_DEBUG_OUTPUT("gameInfo %2d : lifetime end.\n", i);
    }

    if (mbrsp->nowScanTargetFlag && mbrsp->nowLockTimeCount > 0) {
        mbrsp->nowLockTimeCount -= mbrsp->scanCountUnit;
        if (mbrsp->nowLockTimeCount < 0) {
            MB_DEBUG_OUTPUT("scan lock time up!\n");
            unlock = TRUE;
        } else if (!found_parent) {
            if (++mbrsp->notFoundLockTargetCount > 4) {
                MB_DEBUG_OUTPUT("scan lock target not found!\n");
                unlock = TRUE;
            }
        } else {
            mbrsp->notFoundLockTargetCount = 0;
        }
    }

    if (unlock) {
        mbrsp->nowLockTimeCount = 0;
        MBi_UnlockScanTarget();
    }
}

static void MBi_AnalyzeBeacon (WMBssDesc * bssDescp, int index, u16 linkLevel) {
    MBi_CheckTGID(bssDescp, index);
    MBi_CheckSeqNoFixed(index);
    MBi_CheckSeqNoVolat(index);

    {
        MBGameInfoRecvList * info = &mbrsp->list[index];

        if (info->beaconNo == brecvBuffp->beaconNo) {
            if (++info->sameBeaconRecvCount > MB_SAME_BEACON_RECV_MAX_COUNT) {
                info->lifetimeCount = 0;
                MB_OUTPUT("The parent broadcast same beacon.: %d\n", index);
                MBi_InvalidateGameInfoBssID(&info->bssDesc.bssid[0]);
                return;
            }
        } else {
            info->sameBeaconRecvCount = 0;
        }

        info->beaconNo = brecvBuffp->beaconNo;
        info->lifetimeCount = MB_LIFETIME_MAX_COUNT;
        info->gameInfo.ggid = brecvBuffp->ggid;
        info->gameInfo.fileNo = brecvBuffp->fileNo;
        info->linkLevel = linkLevel;

        MBi_SetSSIDToBssDesc(&info->bssDesc, info->gameInfo.ggid);
    }

    if (brecvBuffp->dataAttr == MB_BEACON_DATA_ATTR_VOLAT) {
        MBi_RecvVolatBeacon(index);
    } else {
        MBi_RecvFixedBeacon(index);
    }
}

static void MBi_CheckTGID (WMBssDesc * bssDescp, int index) {
    if (mbrsp->list[index].bssDesc.gameInfo.tgid == bssDescp->gameInfo.tgid) {
        return;
    }

    MB_DEBUG_OUTPUT(
        "\ntgid updated! : %x%x", *(u16 *)(&bssDescp->bssid[4]),
        *(u32 *)bssDescp->bssid
    );
    MB_DeleteRecvGameInfoWithoutBssdesc(index);
    MI_CpuCopy16(bssDescp, &mbrsp->list[index].bssDesc, sizeof(WMBssDesc));

    MBi_LockScanTarget(index);
}

static void MBi_CheckSeqNoFixed (int index) {
    if (mbrsp->list[index].gameInfo.seqNoFixed == brecvBuffp->seqNoFixed) {
        return;
    }

    MB_DEBUG_OUTPUT("\n seqNoFixed updated!");
    MB_DeleteRecvGameInfoWithoutBssdesc(index);
    MBi_LockScanTarget(index);
    mbrsp->list[index].gameInfo.seqNoFixed = brecvBuffp->seqNoFixed;
}

static void MBi_CheckSeqNoVolat (int index) {
    MBGameInfoRecvList * grecvp = &mbrsp->list[index];

    if (mbrsp->list[index].gameInfo.seqNoVolat != brecvBuffp->seqNoVolat) {
        MB_DEBUG_OUTPUT("\n seqNoVolat updated!");
        MBi_LockScanTarget(index);
    }
}

static void MBi_InvalidateGameInfoBssID (u8 * bssidp) {
    int i;
    for (i = 0; i < MB_GAME_INFO_RECV_LIST_NUM; i++) {
        if ((mbrsp->usingGameInfoFlag & (0x01 << i)) == 0) {
            continue;
        }

        if (!WM_IsBssidEqual(bssidp, mbrsp->list[i].bssDesc.bssid)) {
            continue;
        }

        mbrsp->list[i].lifetimeCount = 0;
        MB_OUTPUT("The parent broadcast same beacon.: %d\n", i);
    }
}

static void MBi_RecvFixedBeacon (int index) {
    MBGameInfoRecvList * grecvp = &mbrsp->list[index];
    u32 lastAddr = (u32) & grecvp->gameInfo + sizeof(MBGameInfoFixed);
    u8 * dstp;

    if (grecvp->gameInfo.seqNoFixed == brecvBuffp->seqNoFixed) {
        if (grecvp->getFlagmentFlag & (0x01 << brecvBuffp->data.fixed.flagmentNo)) {
            return;
        }
    }

    if (brecvBuffp->dataAttr == MB_BEACON_DATA_ATTR_FIXED_NORMAL) {
        dstp = (u8 *)&grecvp->gameInfo.fixed;
    } else {
        dstp = (u8 *)&grecvp->gameInfo.fixed.parent;
    }
    dstp += MB_BEACON_FIXED_DATA_SIZE * brecvBuffp->data.fixed.flagmentNo;

    if ((u32)dstp + brecvBuffp->data.fixed.size > lastAddr) {
        MB_DEBUG_OUTPUT("recv beacon gInfoFixed Buffer over!\n");

        return;
    }

    MB_DEBUG_OUTPUT("recv flagment= %2d  adr = 0x%x", brecvBuffp->data.fixed.flagmentNo, dstp);
    MI_CpuCopy16(brecvBuffp->data.fixed.data, dstp, brecvBuffp->data.fixed.size);
    grecvp->gameInfo.dataAttr = brecvBuffp->dataAttr;
    grecvp->getFlagmentFlag |= 0x01 << brecvBuffp->data.fixed.flagmentNo;
    grecvp->allFlagmentFlag = (u32)((0x01 << brecvBuffp->data.fixed.flagmentMaxNum) - 1);
    MB_DEBUG_OUTPUT(
        "\t now flagment = 0x%x \t all flagment = 0x%x\n",
        grecvp->getFlagmentFlag, grecvp->allFlagmentFlag
    );
}

static void MBi_RecvVolatBeacon (int index) {
    int i;
    MBGameInfoRecvList * grecvp = &mbrsp->list[index];

    for (i = 0; i < MB_USER_VOLAT_DATA_SIZE; i++) {
        grecvp->gameInfo.volat.userVolatData[i] = brecvBuffp->data.volat.userVolatData[i];
    }
    MI_CpuCopy16(brecvBuffp, &grecvp->bssDesc.gameInfo.userGameInfo, WM_SIZE_USER_GAMEINFO);

    if (grecvp->gameInfo.seqNoVolat != brecvBuffp->seqNoVolat) {
        if ((u8)(grecvp->gameInfo.seqNoVolat + 1) == brecvBuffp->seqNoVolat) {
            for (i = 0; i < MB_MEMBER_MAX_NUM; i++) {
                if (brecvBuffp->data.volat.changePlayerFlag & (0x02 << i)) {
                    MI_CpuClear16(&grecvp->gameInfo.volat.member[i], sizeof(MBUserInfo));
                }
            }
            grecvp->getPlayerFlag &= ~brecvBuffp->data.volat.changePlayerFlag;
            mbrsp->validGameInfoFlag &= ~(0x0001 << index);
        } else {
            MI_CpuClear16(
                &grecvp->gameInfo.volat.member[0],
                sizeof(MBUserInfo) * MB_MEMBER_MAX_NUM
            );
            grecvp->getPlayerFlag = 0;
            mbrsp->validGameInfoFlag &= ~(0x0001 << index);
        }
        grecvp->gameInfo.seqNoVolat = brecvBuffp->seqNoVolat;
    } else if (grecvp->getPlayerFlag == brecvBuffp->data.volat.nowPlayerFlag) {
        return;
    }

    grecvp->gameInfo.volat.nowPlayerNum = brecvBuffp->data.volat.nowPlayerNum;
    grecvp->gameInfo.volat.nowPlayerFlag = brecvBuffp->data.volat.nowPlayerFlag;
    grecvp->gameInfo.volat.changePlayerFlag = brecvBuffp->data.volat.changePlayerFlag;
    grecvp->getPlayerFlag |= 0x0001;

    for (i = 0; i < MB_SEND_MEMBER_MAX_NUM; i++) {
        int playerNo = (int)brecvBuffp->data.volat.member[i].playerNo;
        if (playerNo == 0) {
            continue;
        }
        MB_DEBUG_OUTPUT("member %d recv.\n", playerNo);
        MI_CpuCopy16(
            &brecvBuffp->data.volat.member[i],
            &grecvp->gameInfo.volat.member[playerNo - 1], sizeof(MBUserInfo)
        );
        grecvp->getPlayerFlag |= 0x01 << playerNo;
    }
}

static void MBi_LockScanTarget (int index) {
    if (mbrsp->nowScanTargetFlag) {
        return;
    }

    if (sLockFunc != NULL) {
        sLockFunc(mbrsp->list[index].bssDesc.bssid);
    }
    mbrsp->scanCountUnit = MB_SCAN_COUNT_UNIT_LOCKING;

    mbrsp->nowScanTargetFlag = (u16)(0x01 << index);
    mbrsp->nowLockTimeCount = MB_LOCKTIME_MAX_COUNT;
    MB_DEBUG_OUTPUT(
        "scan target locked. : %x %x %x %x %x %x\n",
        mbrsp->list[index].bssDesc.bssid[0],
        mbrsp->list[index].bssDesc.bssid[1],
        mbrsp->list[index].bssDesc.bssid[2],
        mbrsp->list[index].bssDesc.bssid[3],
        mbrsp->list[index].bssDesc.bssid[4], mbrsp->list[index].bssDesc.bssid[5]
    );
}

static void MBi_UnlockScanTarget (void) {
    if (mbrsp->nowScanTargetFlag == 0) {
        return;
    }

    if (sUnlockFunc != NULL) {
        sUnlockFunc();
    }
    mbrsp->scanCountUnit = MB_SCAN_COUNT_UNIT_NORMAL;
    mbrsp->nowScanTargetFlag = 0;
    mbrsp->notFoundLockTargetCount = 0;

    MB_DEBUG_OUTPUT(" unlock target\n");
}

void MB_DeleteRecvGameInfo (int index) {
    mbrsp->usefulGameInfoFlag &= ~(0x0001 << index);
    mbrsp->validGameInfoFlag &= ~(0x0001 << index);
    MI_CpuClear16(&mbrsp->list[index], sizeof(MBGameInfoRecvList));
}

void MB_DeleteRecvGameInfoWithoutBssdesc (int index) {
    mbrsp->usefulGameInfoFlag &= ~(0x0001 << index);
    mbrsp->validGameInfoFlag &= ~(0x0001 << index);
    mbrsp->list[index].getFlagmentFlag = 0;
    mbrsp->list[index].allFlagmentFlag = 0;
    mbrsp->list[index].getPlayerFlag = 0;
    mbrsp->list[index].linkLevel = 0;
    MI_CpuClear16(&(mbrsp->list[index].gameInfo), sizeof(MBGameInfo));
}

MBGameInfoRecvList * MB_GetGameInfoRecvList (int index) {
    if ((mbrsp->usefulGameInfoFlag & (0x01 << index)) == 0) {
        return NULL;
    }

    return &mbrsp->list[index];
}

void MB_SetSendVolatCallback (MBSendVolatCallbackFunc callback, u32 timming) {
    OSIntrMode enabled = OS_DisableInterrupts();

    sSendVolatCallback = callback;
    sSendVolatCallbackTimming = timming;

    (void)OS_RestoreInterrupts(enabled);
}

void MB_SetUserVolatData (u32 ggid, const u8 * userData, u32 size) {
    MBGameInfo * gameInfo;

    SDK_ASSERT(size <= MB_USER_VOLAT_DATA_SIZE);
    SDK_NULL_ASSERT(userData);

    gameInfo = mbss.gameInfoListTop;
    if (gameInfo == NULL) {
        return;
    }

    while (gameInfo->ggid != ggid) {
        if (gameInfo == NULL) {
            return;
        }
        gameInfo = gameInfo->nextp;
    }

    {
        u32 i;

        OSIntrMode enabled = OS_DisableInterrupts();

        for (i = 0; i < size; i++) {
            gameInfo->volat.userVolatData[i] = userData[i];
        }

        (void)OS_RestoreInterrupts(enabled);
    }
}

void * MB_GetUserVolatData (const WMGameInfo * gameInfo) {
    MbBeacon * beacon;

    SDK_NULL_ASSERT(gameInfo);

    if (!(gameInfo->attribute & WM_ATTR_FLAG_MB)) {
        return NULL;
    }

    beacon = (MbBeacon *)(gameInfo->userGameInfo);

    if (beacon->dataAttr != MB_BEACON_DATA_ATTR_VOLAT) {
        return NULL;
    }

    return beacon->data.volat.userVolatData;
}

#if defined(MB_CHANGE_TO_UNICODE)

#define SJIS_HIGHER_CODE1_MIN 0x81
#define SJIS_HIGHER_CODE1_MAX 0x9F
#define SJIS_HIGHER_CODE2_MIN 0xE0
#define SJIS_HIGHER_CODE2_MAX 0xFC

#define TBL8140_ELEM_NUM 0xbd
#define TBL849f_ELEM_NUM 0x20

typedef struct SjisUtf16Pare {
    u16 sjis;
    u16 unicode;
} SjisUtf16Pare;

static u16 SearchUnicodeTable(u16 unicode, SjisUtf16Pare * tblp, int elem_num);

static const SjisUtf16Pare tblSJIS_UTF16_8140[TBL8140_ELEM_NUM];
static const SjisUtf16Pare tblSJIS_UTF16_849f[TBL849f_ELEM_NUM];

void MBi_ExSJIS_BEtoUTF16_LE (u8 * sjisp, u16 * unip, u16 length) {
    u16 code;

    while ((*sjisp) && (length-- > 0)) {
        if (((*sjisp >= SJIS_HIGHER_CODE1_MIN) && (*sjisp <= SJIS_HIGHER_CODE1_MAX))
            || ((*sjisp >= SJIS_HIGHER_CODE2_MIN) && (*sjisp <= SJIS_HIGHER_CODE2_MAX))) {
            code = (u16)((u16) * sjisp++ << 8);
            code |= (u16) * sjisp++;
        } else {
            code = (u16) * sjisp++;
        }

        if (code == 0x005c) {
            *unip = 0x00a5;
        } else if (code == 0x007e) {
            *unip = 0x203e;
        } else if ((code == 0x000d) || (code == 0x000a)) {
            *unip = code;
        } else if ((code >= 0x0020) && (code < 0x007e)) {
            *unip = code;
        } else if ((code >= 0x00a1) && (code <= 0x00df)) {
            *unip = (u16)((code - 0x00a1) + 0xff61);
        } else if ((code >= 0x8140) && (code <= 0x81fc)) {
            *unip = tblSJIS_UTF16_8140[code - 0x8140].unicode;
        } else if ((code >= 0x824f) && (code <= 0x8258)) {
            *unip = (u16)((code - 0x824f) + 0xff10);
        } else if ((code >= 0x8260) && (code <= 0x8279)) {
            *unip = (u16)((code - 0x8260) + 0xff21);
        } else if ((code >= 0x8281) && (code <= 0x829a)) {
            *unip = (u16)((code - 0x8281) + 0xff41);
        } else if ((code >= 0x829f) && (code <= 0x82f1)) {
            *unip = (u16)((code - 0x829f) + 0x3041);
        } else if ((code >= 0x8340) && (code <= 0x8396)) {
            *unip = (u16)((code - 0x8340) + 0x30a1);
            if (code == 0x837f) {
                *unip = 0x3000;
            } else if (code > 0x837f) {
                (*unip)--;
            }
        } else if ((code >= 0x839f) && (code <= 0x83b6)) {
            *unip = (u16)((code - 0x839f) + 0x0391);
            if (code >= 0x83b0) {
                (*unip)++;
            }
        } else if ((code >= 0x83bf) && (code <= 0x83d6)) {
            *unip = (u16)((code - 0x83bf) + 0x03b1);
            if (code >= 0x83d0) {
                (*unip)++;
            }
        } else if ((code >= 0x8440) && (code <= 0x8460)) {
            *unip = (u16)((code - 0x8440) + 0x0410);
            if (code == 0x8446) {
                *unip = 0x0401;
            } else if (code > 0x8446) {
                (*unip)--;
            }
        } else if ((code >= 0x8470) && (code <= 0x8491)) {
            *unip = (u16)((code - 0x8470) + 0x0430);
            if (code == 0x8476) {
                *unip = 0x0451;
            } else if (code == 0x847f) {
                *unip = 0x3000;
            } else if (code > 0x8476) {
                (*unip)--;
                if (code > 0x847f) {
                    (*unip)--;
                }
            }
        } else if ((code >= 0x849f) && (code <= 0x84be)) {
            *unip = tblSJIS_UTF16_849f[code - 0x849f].unicode;
        } else {
            *unip = 0x3000;
        }

        unip++;
    }
}

void MBi_ExUTF16_LEtoSJIS_BE (u8 * sjisp, u16 * unip, u16 length) {
    u16 code, sjis_le;

    while ((*unip) && (length-- > 0)) {
        code = *unip++;
        sjis_le = 0;

        if (code == 0x00a5) {
            sjis_le = 0x005c;
        } else if (code == 0x005c) {
            sjis_le = 0x815f;
        } else if (code == 0x203e) {
            sjis_le = 0x007e;
        } else if ((code == 0x000d) || (code == 0x000a)) {
            sjis_le = code;
        } else if ((code >= 0x0020) && (code < 0x007e)) {
            sjis_le = code;
        } else if ((code >= 0x00a2) && (code <= 0x00f7)) {
            sjis_le =
                SearchUnicodeTable(
                    code, (SjisUtf16Pare *)&tblSJIS_UTF16_8140[0xc],
                    0x81f7 - 0x814c
                );
        } else if ((code >= 0xff61) && (code <= 0xff9f)) {
            sjis_le = (u16)((code - 0xff61) + 0x00a1);
        } else if (code == 0x4edd) {
            sjis_le = 0x8157;
        } else if ((code >= 0xff01) && (code <= 0xffe5)) {
            if ((code >= 0xff10) && (code <= 0xff19)) {
                sjis_le = (u16)((code - 0xff10) + 0x824f);
            } else if ((code >= 0xff21) && (code <= 0xff3a)) {
                sjis_le = (u16)((code - 0xff21) + 0x8260);
            } else if ((code >= 0xff41) && (code <= 0xff5a)) {
                sjis_le = (u16)((code - 0xff41) + 0x8281);
            } else {
                sjis_le =
                    SearchUnicodeTable(
                        code, (SjisUtf16Pare *)&tblSJIS_UTF16_8140[3],
                        0x8197 - 0x8143
                    );
            }
        } else if ((code >= 0x3000) && (code <= 0x30fe)) {
            if ((code >= 0x3041) && (code <= 0x3093)) {
                sjis_le = (u16)((code - 0x3041) + 0x829f);
            } else if ((code >= 0x30a1) && (code <= 0x30f6)) {
                sjis_le = (u16)((code - 0x30a1) + 0x8340);
                if (code >= 0x30e0) {
                    (sjis_le)++;
                }
            } else {
                sjis_le =
                    SearchUnicodeTable(
                        code, (SjisUtf16Pare *)&tblSJIS_UTF16_8140[0],
                        0x81ac - 0x8140
                    );
            }
        } else if ((code >= 0x0391) && (code <= 0x03a9)) {
            sjis_le = (u16)((code - 0x0391) + 0x839f);
            if (code >= 0x03a3) {
                (sjis_le)--;
            }
        } else if ((code >= 0x03b1) && (code <= 0x03c9)) {
            sjis_le = (u16)((code - 0x03b1) + 0x83bf);
            if (code >= 0x03c3) {
                (sjis_le)--;
            }
        } else if (code == 0x0401) {
            sjis_le = 0x8446;
        } else if ((code >= 0x0410) && (code <= 0x042f)) {
            sjis_le = (u16)((code - 0x0410) + 0x8440);
            if (code >= 0x0416) {
                (sjis_le)++;
            }
        } else if ((code >= 0x0430) && (code <= 0x044f)) {
            sjis_le = (u16)((code - 0x0430) + 0x8470);
            if (code >= 0x0436) {
                (sjis_le)++;
                if (code >= 0x043e) {
                    (sjis_le)++;
                }
            }
        } else if (code == 0x0451) {
            sjis_le = 0x8476;
        } else if ((code >= 0x2500) && (code <= 0x254b)) {
            sjis_le =
                SearchUnicodeTable(code, (SjisUtf16Pare *)&tblSJIS_UTF16_849f, TBL849f_ELEM_NUM);
        } else if (((code >= 0x2010) && (code <= 0x2312)) || ((code >= 0x25a0) && (code <= 0x266f))) {
            sjis_le =
                SearchUnicodeTable(
                    code, (SjisUtf16Pare *)&tblSJIS_UTF16_8140[0x815c - 0x8140],
                    0x81fc - 0x815c
                );
        } else {
            sjis_le = 0x8140;
        }

        if (sjis_le & 0xff00) {
            *sjisp++ = (u8)(sjis_le >> 8);
        }
        *sjisp++ = (u8)(sjis_le);
    }
}

static u16 SearchUnicodeTable (u16 unicode, SjisUtf16Pare * tblp, int elem_num) {
    elem_num++;
    while (elem_num--) {
        if (tblp->unicode == unicode) {
            return tblp->sjis;
        }
        tblp++;
    }
    return 0x8140;
}

void MBi_CheckSJIS_BEtoUTF16_LE (void) {
    u16 sjis, sjis_be, rev_sjis, sjis_le;
    u16 unicode;

    for (sjis = 0; sjis < 0x00ff; sjis++) {
        unicode = 0;
        rev_sjis = 0;
        MBi_ExSJIS_BEtoUTF16_LE((u8 *)&sjis, &unicode, 1);
        MBi_ExUTF16_LEtoSJIS_BE((u8 *)&rev_sjis, &unicode, 1);
        sjis_le = (u16)((rev_sjis >> 8) | (rev_sjis << 8));
        MB_DEBUG_OUTPUT("0x%x\t-> 0x%x\t-> 0x%x\n", sjis, unicode, sjis_le);
    }

    for (sjis = 0x8140; sjis < 0x84ff; sjis++) {
        unicode = 0;
        rev_sjis = 0;
        sjis_be = (u16)((sjis >> 8) | (sjis << 8));
        MBi_ExSJIS_BEtoUTF16_LE((u8 *)&sjis_be, &unicode, 1);
        MBi_ExUTF16_LEtoSJIS_BE((u8 *)&rev_sjis, &unicode, 1);
        sjis_le = (u16)((rev_sjis >> 8) | (rev_sjis << 8));
        MB_DEBUG_OUTPUT("0x%x\t-> 0x%x\t-> 0x%x\n", sjis, unicode, sjis_le);
    }
}

static const SjisUtf16Pare tblSJIS_UTF16_8140[TBL8140_ELEM_NUM] = {
    {0x8140, 0x3000},
    {0x8141, 0x3001},
    {0x8142, 0x3002},
    {0x8143, 0xFF0C},
    {0x8144, 0xFF0E},
    {0x8145, 0x30FB},
    {0x8146, 0xFF1A},
    {0x8147, 0xFF1B},
    {0x8148, 0xFF1F},
    {0x8149, 0xFF01},
    {0x814A, 0x309B},
    {0x814B, 0x309C},
    {0x814C, 0x00B4},
    {0x814D, 0xFF40},
    {0x814E, 0x00A8},
    {0x814F, 0xFF3E},
    {0x8150, 0xFFE3},
    {0x8151, 0xFF3F},
    {0x8152, 0x30FD},
    {0x8153, 0x30FE},
    {0x8154, 0x309D},
    {0x8155, 0x309E},
    {0x8156, 0x3003},
    {0x8157, 0x4EDD},
    {0x8158, 0x3005},
    {0x8159, 0x3006},
    {0x815A, 0x3007},
    {0x815B, 0x30FC},
    {0x815C, 0x2015},
    {0x815D, 0x2010},
    {0x815E, 0xFF0F},
    {0x815F, 0x005C},
    {0x8160, 0x301C},
    {0x8161, 0x2016},
    {0x8162, 0xFF5C},
    {0x8163, 0x2026},
    {0x8164, 0x2025},
    {0x8165, 0x2018},
    {0x8166, 0x2019},
    {0x8167, 0x201C},
    {0x8168, 0x201D},
    {0x8169, 0xFF08},
    {0x816A, 0xFF09},
    {0x816B, 0x3014},
    {0x816C, 0x3015},
    {0x816D, 0xFF3B},
    {0x816E, 0xFF3D},
    {0x816F, 0xFF5B},
    {0x8170, 0xFF5D},
    {0x8171, 0x3008},
    {0x8172, 0x3009},
    {0x8173, 0x300A},
    {0x8174, 0x300B},
    {0x8175, 0x300C},
    {0x8176, 0x300D},
    {0x8177, 0x300E},
    {0x8178, 0x300F},
    {0x8179, 0x3010},
    {0x817A, 0x3011},
    {0x817B, 0xFF0B},
    {0x817C, 0x2212},
    {0x817D, 0x00B1},
    {0x817E, 0x00D7},
    {0x817F, 0x3000},
    {0x8180, 0x00F7},
    {0x8181, 0xFF1D},
    {0x8182, 0x2260},
    {0x8183, 0xFF1C},
    {0x8184, 0xFF1E},
    {0x8185, 0x2266},
    {0x8186, 0x2267},
    {0x8187, 0x221E},
    {0x8188, 0x2234},
    {0x8189, 0x2642},
    {0x818A, 0x2640},
    {0x818B, 0x00B0},
    {0x818C, 0x2032},
    {0x818D, 0x2033},
    {0x818E, 0x2103},
    {0x818F, 0xFFE5},
    {0x8190, 0xFF04},
    {0x8191, 0x00A2},
    {0x8192, 0x00A3},
    {0x8193, 0xFF05},
    {0x8194, 0xFF03},
    {0x8195, 0xFF06},
    {0x8196, 0xFF0A},
    {0x8197, 0xFF20},
    {0x8198, 0x00A7},
    {0x8199, 0x2606},
    {0x819A, 0x2605},
    {0x819B, 0x25CB},
    {0x819C, 0x25CF},
    {0x819D, 0x25CE},
    {0x819E, 0x25C7},
    {0x819F, 0x25C6},
    {0x81A0, 0x25A1},
    {0x81A1, 0x25A0},
    {0x81A2, 0x25B3},
    {0x81A3, 0x25B2},
    {0x81A4, 0x25BD},
    {0x81A5, 0x25BC},
    {0x81A6, 0x203B},
    {0x81A7, 0x3012},
    {0x81A8, 0x2192},
    {0x81A9, 0x2190},
    {0x81AA, 0x2191},
    {0x81AB, 0x2193},
    {0x81AC, 0x3013},
    {0x81AD, 0x3000},
    {0x81AE, 0x3000},
    {0x81AF, 0x3000},
    {0x81B0, 0x3000},
    {0x81B1, 0x3000},
    {0x81B2, 0x3000},
    {0x81B3, 0x3000},
    {0x81B4, 0x3000},
    {0x81B5, 0x3000},
    {0x81B6, 0x3000},
    {0x81B7, 0x3000},
    {0x81B8, 0x2208},
    {0x81B9, 0x220B},
    {0x81BA, 0x2286},
    {0x81BB, 0x2287},
    {0x81BC, 0x2282},
    {0x81BD, 0x2283},
    {0x81BE, 0x222A},
    {0x81BF, 0x2229},
    {0x81C0, 0x3000},
    {0x81C1, 0x3000},
    {0x81C2, 0x3000},
    {0x81C3, 0x3000},
    {0x81C4, 0x3000},
    {0x81C5, 0x3000},
    {0x81C6, 0x3000},
    {0x81C7, 0x3000},
    {0x81C8, 0x2227},
    {0x81C9, 0x2228},
    {0x81CA, 0x00AC},
    {0x81CB, 0x21D2},
    {0x81CC, 0x21D4},
    {0x81CD, 0x2200},
    {0x81CE, 0x2203},
    {0x81CF, 0x3000},
    {0x81D0, 0x3000},
    {0x81D1, 0x3000},
    {0x81D2, 0x3000},
    {0x81D3, 0x3000},
    {0x81D4, 0x3000},
    {0x81D5, 0x3000},
    {0x81D6, 0x3000},
    {0x81D7, 0x3000},
    {0x81D8, 0x3000},
    {0x81D9, 0x3000},
    {0x81DA, 0x2220},
    {0x81DB, 0x22A5},
    {0x81DC, 0x2312},
    {0x81DD, 0x2202},
    {0x81DE, 0x2207},
    {0x81DF, 0x2261},
    {0x81E0, 0x2252},
    {0x81E1, 0x226A},
    {0x81E2, 0x226B},
    {0x81E3, 0x221A},
    {0x81E4, 0x223D},
    {0x81E5, 0x221D},
    {0x81E6, 0x2235},
    {0x81E7, 0x222B},
    {0x81E8, 0x222C},
    {0x81E9, 0x3000},
    {0x81EA, 0x3000},
    {0x81EB, 0x3000},
    {0x81EC, 0x3000},
    {0x81EE, 0x3000},
    {0x81EE, 0x3000},
    {0x81EF, 0x3000},
    {0x81F0, 0x212B},
    {0x81F1, 0x2030},
    {0x81F2, 0x266F},
    {0x81F3, 0x266D},
    {0x81F4, 0x266A},
    {0x81F5, 0x2020},
    {0x81F6, 0x2021},
    {0x81F7, 0x00B6},
    {0x81F8, 0x3000},
    {0x81F9, 0x3000},
    {0x81FA, 0x3000},
    {0x81FB, 0x3000},
    {0x81FC, 0x25EF},
};

static const SjisUtf16Pare tblSJIS_UTF16_849f[TBL849f_ELEM_NUM] = {
    {0x849F, 0x2500},
    {0x84A0, 0x2502},
    {0x84A1, 0x250C},
    {0x84A2, 0x2510},
    {0x84A3, 0x2518},
    {0x84A4, 0x2514},
    {0x84A5, 0x251C},
    {0x84A6, 0x252C},
    {0x84A7, 0x2524},
    {0x84A8, 0x2534},
    {0x84A9, 0x253C},
    {0x84AA, 0x2501},
    {0x84AB, 0x2503},
    {0x84AC, 0x250F},
    {0x84AD, 0x2513},
    {0x84AE, 0x251B},
    {0x84AF, 0x2517},
    {0x84B0, 0x2523},
    {0x84B1, 0x2533},
    {0x84B2, 0x252B},
    {0x84B3, 0x253B},
    {0x84B4, 0x254B},
    {0x84B5, 0x2520},
    {0x84B6, 0x252F},
    {0x84B7, 0x2528},
    {0x84B8, 0x2537},
    {0x84B9, 0x253F},
    {0x84BA, 0x251D},
    {0x84BB, 0x2530},
    {0x84BC, 0x2525},
    {0x84BD, 0x2538},
    {0x84BE, 0x2542},
};

#endif
