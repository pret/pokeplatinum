#include <nitro.h>
#include <string.h>
#include <vct.h>
#include <dwc.h>
#include <ppwlobby/ppw_lobby.h>

#include "unk_020244AC.h"

#include "overlay004/funcptr_ov4_021D1104.h"
#include "overlay004/funcptr_ov4_021D1120.h"
#include "overlay004/funcptr_ov4_021D113C.h"
#include "overlay004/funcptr_ov4_021D1150.h"

#include "heap.h"
#include "unk_0202ACE0.h"
#include "unk_0203061C.h"
#include "unk_0203266C.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay004/ov4_021D2808.h"

typedef struct {
    u8 unk_00[256];
    DWCFriendData * unk_100;
    DWCFriendsMatchControl unk_104;
    DWCUserData * unk_F08;
    DWCInetControl unk_F0C;
    SaveData * unk_F6C;
    void * unk_F70;
    void * unk_F74[4];
    void * unk_F84;
    NNSFndHeapHandle unk_F88;
    void * unk_F8C;
    NNSFndHeapHandle unk_F90;
    u32 unk_F94;
    UnkFuncPtr_ov4_021D1104 unk_F98;
    UnkFuncPtr_ov4_021D1104 unk_F9C;
    UnkFuncPtr_ov4_021D1120 unk_FA0;
    void * unk_FA4;
    UnkFuncPtr_ov4_021D1150 unk_FA8;
    void * unk_FAC;
    UnkFuncPtr_ov4_021D113C unk_FB0;
    void (* unk_FB4)(int param0);
    u8 unk_FB8[128];
    u8 unk_1038[32];
    void * unk_1058;
    int unk_105C;
    u32 unk_1060;
    int unk_1064;
    int unk_1068;
    int unk_106C;
    int unk_1070;
    u32 unk_1074;
    int unk_1078;
    int unk_107C;
    int unk_1080;
    int unk_1084;
    int unk_1088;
    int unk_108C;
    BOOL unk_1090;
    BOOL unk_1094;
    int unk_1098;
    int unk_109C;
    int unk_10A0[8];
    int unk_10C0;
    int unk_10C4;
    u16 unk_10C8;
    u16 unk_10CA;
    u32 unk_10CC;
    u8 unk_10D0;
    u8 unk_10D1;
    u8 unk_10D2;
    u8 unk_10D3;
    u8 unk_10D4;
    u8 unk_10D5[4];
    u8 unk_10D9;
    u8 unk_10DA;
} UnkStruct_ov4_0221A400;

static void ov4_021D1650(DWCError param0, int param1, void * param2);
static void ov4_021D171C(DWCError param0, BOOL param1, void * param2);
static void ov4_021D1740(int param0, u8 param1, const char * param2, void * param3);
static void ov4_021D1744(int param0, int param1, void * param2);
static void ov4_021D17A0(int param0, void * param1);
static void ov4_021D1898(DWCError param0, BOOL param1, void * param2);
static void ov4_021D18F4(int param0, u8 param1);
static void ov4_021D1950(u8 param0, u8 * param1, int param2);
static void ov4_021D1A20(DWCError param0, BOOL param1, BOOL param2, u8 param3, int param4, void * param5);
static int ov4_021D18F0(int param0, void * param1);
static int ov4_021D1D1C(void);
static void ov4_021D16E8(u8 param0);
static BOOL ov4_021D1C5C(void);
static void ov4_021D2700(int param0);
static void ov4_021D27CC(void);
static void ov4_021D2748(int param0);
static void ov4_021D21B4(void);
static void ov4_021D23A4(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void * param5);
static void ov4_021D2488(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void * param5);
static void ov4_021D24AC(int param0, void * param1);

static UnkStruct_ov4_0221A400 * Unk_ov4_0221A400 = NULL;

int ov4_021D0D80 (SaveData * param0, int param1, int param2, int param3)
{
    void * v0;

    GF_ASSERT(Unk_ov4_0221A400 == NULL);

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov4_0221A400) + 32);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov4_0221A400) + 32);

    Unk_ov4_0221A400 = (UnkStruct_ov4_0221A400 *)(((u32)v0 + 31) / 32 * 32);
    Unk_ov4_0221A400->unk_F70 = v0;
    Unk_ov4_0221A400->unk_F6C = param0;
    Unk_ov4_0221A400->unk_F98 = NULL;
    Unk_ov4_0221A400->unk_F9C = NULL;
    Unk_ov4_0221A400->unk_FB4 = NULL;
    Unk_ov4_0221A400->unk_1064 = 0;
    Unk_ov4_0221A400->unk_1078 = param1;
    Unk_ov4_0221A400->unk_107C = param1;
    Unk_ov4_0221A400->unk_1080 = param2;
    Unk_ov4_0221A400->unk_F84 = Heap_AllocFromHeap(param1, param2 + ((4 * 1024) * 3) + 32);
    Unk_ov4_0221A400->unk_F8C = NULL;
    Unk_ov4_0221A400->unk_F88 = NNS_FndCreateExpHeap((void *)(((u32)Unk_ov4_0221A400->unk_F84 + 31) / 32 * 32), param2);
    Unk_ov4_0221A400->unk_F90 = NULL;
    Unk_ov4_0221A400->unk_1098 = 0;
    Unk_ov4_0221A400->unk_1088 = -1;
    Unk_ov4_0221A400->unk_1060 = 0;
    Unk_ov4_0221A400->unk_1070 = param3;
    Unk_ov4_0221A400->unk_1074 = 0;
    Unk_ov4_0221A400->unk_10CC = 0;
    Unk_ov4_0221A400->unk_108C = -1;
    Unk_ov4_0221A400->unk_1090 = 1;
    Unk_ov4_0221A400->unk_10D2 = 0;
    Unk_ov4_0221A400->unk_10C0 = 0;
    Unk_ov4_0221A400->unk_10D0 = 0;
    Unk_ov4_0221A400->unk_10D1 = 0;
    Unk_ov4_0221A400->unk_10C8 = 1;
    Unk_ov4_0221A400->unk_10C4 = 1;
    Unk_ov4_0221A400->unk_10CA = 1;

    if (param0 != NULL) {
        Unk_ov4_0221A400->unk_F08 = sub_0202AD28(sub_0202B370(Unk_ov4_0221A400->unk_F6C));
        Unk_ov4_0221A400->unk_100 = (DWCFriendData *)sub_0202AED8(sub_0202B370(Unk_ov4_0221A400->unk_F6C), 0);
    }

    Unk_ov4_0221A400->unk_10D9 = 1;
    Unk_ov4_0221A400->unk_1058 = NULL;

    {
        int v1;

        for (v1 = 0; v1 < 32; v1++) {
            Unk_ov4_0221A400->unk_1038[v1] = DWC_STATUS_OFFLINE;
        }
    }

    ov4_021D24D8();

    if (!DWC_CheckHasProfile(Unk_ov4_0221A400->unk_F08)) {
        return 1;
    }

    if (!DWC_CheckValidConsole(Unk_ov4_0221A400->unk_F08)) {
        return 2;
    }

    return 0;
}

void ov4_021D0F68 ()
{
    if (Unk_ov4_0221A400) {
        ov4_021D27CC();

        if (Unk_ov4_0221A400->unk_F8C != NULL) {
            NNS_FndDestroyExpHeap(Unk_ov4_0221A400->unk_F90);
            Heap_FreeToHeap(Unk_ov4_0221A400->unk_F8C);
            Unk_ov4_0221A400->unk_F8C = NULL;
        }

        NNS_FndDestroyExpHeap(Unk_ov4_0221A400->unk_F88);

        Heap_FreeToHeapExplicit(Unk_ov4_0221A400->unk_1078, Unk_ov4_0221A400->unk_F84);
        Heap_FreeToHeapExplicit(Unk_ov4_0221A400->unk_1078, Unk_ov4_0221A400->unk_F70);

        Unk_ov4_0221A400 = NULL;
    }

    DWC_ClearError();
}

int ov4_021D0FEC ()
{
    switch (Unk_ov4_0221A400->unk_1064) {
    case 0:
    {
        DWC_SetMemFunc(ov4_021D1AA0, ov4_021D1B04);
        DWC_InitInetEx(&Unk_ov4_0221A400->unk_F0C, 2, 1, 20);
        DWC_SetAuthServer((DWC_CONNECTINET_AUTH_RELEASE));
        DWC_ConnectInetAsync();

        Unk_ov4_0221A400->unk_1064 = 1;
        Unk_ov4_0221A400->unk_1084 = 0;
    }
    case 1:
    {
        if (DWC_CheckInet()) {
            if (DWC_GetInetStatus() == DWC_CONNECTINET_STATE_CONNECTED) {
                Unk_ov4_0221A400->unk_1064 = 2;
            } else {
                Unk_ov4_0221A400->unk_1064 = 12;
            }
        } else {
            DWC_ProcessInet();
            break;
        }
    }
    case 2:
    {
        int v0 = ov4_021D1B5C();

        if (v0 != 0) {
            return v0;
        }
    }

        DWC_InitFriendsMatch(&(Unk_ov4_0221A400->unk_104), (Unk_ov4_0221A400->unk_F08), 10727, "pokemondpds", "1vTlwb", 0, 0, Unk_ov4_0221A400->unk_100, 32);

        {
            OSOwnerInfo v1;
            OS_GetOwnerInfo(&v1);
            DWC_LoginAsync(&(v1.nickName[0]), NULL, ov4_021D1650, NULL);
        }

        Unk_ov4_0221A400->unk_1064 = 3;
    case 3:
        DWC_ProcessFriendsMatch();
        break;
    case 4:
        DWC_ProcessFriendsMatch();
        return (DWC_ERROR_NUM)+7;
    }

    return ov4_021D1B5C();
}

void ov4_021D1104 (UnkFuncPtr_ov4_021D1104 param0, UnkFuncPtr_ov4_021D1104 param1)
{
    Unk_ov4_0221A400->unk_F98 = param0;
    Unk_ov4_0221A400->unk_F9C = param1;
}

void ov4_021D1120 (UnkFuncPtr_ov4_021D1120 param0, void * param1)
{
    Unk_ov4_0221A400->unk_FA0 = param0;
    Unk_ov4_0221A400->unk_FA4 = param1;
}

void ov4_021D113C (UnkFuncPtr_ov4_021D113C param0)
{
    Unk_ov4_0221A400->unk_FB0 = param0;
}

void ov4_021D1150 (UnkFuncPtr_ov4_021D1150 param0, void * param1)
{
    Unk_ov4_0221A400->unk_FA8 = param0;
    Unk_ov4_0221A400->unk_FAC = param1;
}

const static char Unk_ov4_02215870[] = "%s = \'%s\'";

int ov4_021D116C (u8 * param0, int param1, BOOL param2, u32 param3)
{
    GF_ASSERT(Unk_ov4_0221A400 != NULL);

    if (Unk_ov4_0221A400->unk_1064 != 4) {
        return 0;
    }

    ov4_021D27CC();

    {
        int v0;
        DWCMatchOptMinComplete v1 = {1, 2, {0, 0}, 0};

        v1.timeout = param3 * 1000;
        v0 = DWC_SetMatchingOption(DWC_MATCH_OPTION_MIN_COMPLETE, &v1, sizeof(v1));

        GF_ASSERT(v0 == DWC_SET_MATCH_OPT_RESULT_SUCCESS);
    }

    GF_ASSERT(DWC_AddMatchKeyString(0, PPW_LOBBY_MATCHMAKING_KEY, (const char *)param0) != 0);

    {
        MI_CpuClear8(Unk_ov4_0221A400->unk_FB8, 128);
        sprintf((char *)Unk_ov4_0221A400->unk_FB8, Unk_ov4_02215870, PPW_LOBBY_MATCHMAKING_KEY, param0);
        GF_ASSERT(strlen((const char *)Unk_ov4_0221A400->unk_FB8) < 128);
    }

    if (param2) {
        DWC_AddMatchKeyString(1, (const char *)Unk_ov4_0221A400->unk_FB8, (const char *)Unk_ov4_0221A400->unk_FB8);
    }

    Unk_ov4_0221A400->unk_1064 = 5;
    Unk_ov4_0221A400->unk_1070 = param1;
    DWC_ConnectToAnybodyAsync(param1, (const char *)Unk_ov4_0221A400->unk_FB8, ov4_021D1898, NULL, ov4_021D18F0, NULL);
    Unk_ov4_0221A400->unk_1068 = 0;

    DWC_SetUserSendCallback(ov4_021D18F4);
    DWC_SetUserRecvCallback(ov4_021D1950);
    DWC_SetConnectionClosedCallback(ov4_021D1A20, NULL);
    DWC_SetUserRecvTimeoutCallback(ov4_021D16E8);

    Unk_ov4_0221A400->unk_106C = 0;
    Unk_ov4_0221A400->unk_10D9 = 1;

    return 1;
}

static void ov4_021D12B4 ()
{
    if (Unk_ov4_0221A400->unk_1064 == 10) {
        Unk_ov4_0221A400->unk_1064 = 11;
    } else {
        Unk_ov4_0221A400->unk_1064 = 9;
    }
}

int ov4_021D12D4 (int param0)
{
    switch (Unk_ov4_0221A400->unk_1064) {
    case 5:
        if (param0) {
            Unk_ov4_0221A400->unk_1064 = 6;
        }

        if (Unk_ov4_0221A400->unk_1068 == 2) {
            if (Unk_ov4_0221A400->unk_1088 >= 0) {
                if (Unk_ov4_0221A400->unk_1038[Unk_ov4_0221A400->unk_1088] != DWC_STATUS_MATCH_SC_SV) {
                    Unk_ov4_0221A400->unk_1064 = 10;
                }
            }
        }
        break;
    case 6:
    case 10:
        if (Unk_ov4_0221A400->unk_1068 == 0) {
            if (!DWC_CancelMatching()) {
                (void)0;
            }
            break;
        } else {
            int v0;

            v0 = DWC_CloseAllConnectionsHard();
            ov4_021D12B4();
        }
        break;
    case 7:
    {
        if (!sub_0203272C(sub_0203895C())) {
            ov4_021D1E74(Unk_ov4_0221A400->unk_1078);
        }

        if (Unk_ov4_0221A400->unk_1090) {
            Unk_ov4_0221A400->unk_10C8 = 1;
        } else {
            Unk_ov4_0221A400->unk_10C8 = 0;
        }

        Unk_ov4_0221A400->unk_1064 = 8;
        return DWC_ERROR_NUM;
    }
    break;
    case 9:
        Unk_ov4_0221A400->unk_1064 = 4;
        Unk_ov4_0221A400->unk_106C = 0;
        Unk_ov4_0221A400->unk_108C = -1;
        return (DWC_ERROR_NUM)+1;
    case 11:
        Unk_ov4_0221A400->unk_1064 = 4;
        Unk_ov4_0221A400->unk_106C = 0;
        Unk_ov4_0221A400->unk_108C = -1;
        return (DWC_ERROR_NUM)+2;
    case 12:
        return ov4_021D1B5C();
    case 16:
        if (Unk_ov4_0221A400->unk_1084 == 0) {
            DWC_CloseAllConnectionsHard( );
            Unk_ov4_0221A400->unk_1064 = 17;
            break;
        }
    default:
        break;
    }

    return ov4_021D1D1C();
}

BOOL ov4_021D1404 ()
{
    return (Unk_ov4_0221A400->unk_106C == 0) && ov4_021D1C5C();
}

int ov4_021D142C (void * param0, int param1)
{
    if (!(param1 < 256)) {
        return 0;
    }

    if (DWC_GetMyAID() == 0) {
        if (Unk_ov4_0221A400->unk_F98 != NULL) {
            Unk_ov4_0221A400->unk_F98(0, param0, param1);
        }

        return 1;
    } else {
        if (Unk_ov4_0221A400->unk_106C || !ov4_021D1C5C()) {
            return 0;
        }

        *((u32 *)&(Unk_ov4_0221A400->unk_00[0])) = 0x1 | (Unk_ov4_0221A400->unk_10C8 << 8);
        Unk_ov4_0221A400->unk_00[2] = ++Unk_ov4_0221A400->unk_10D0;

        MI_CpuCopy8(param0, &(Unk_ov4_0221A400->unk_00[4]), param1);
        Unk_ov4_0221A400->unk_106C = 1;

        DWC_SendReliableBitmap(0x1, &(Unk_ov4_0221A400->unk_00[0]), param1 + 4);

        return 1;
    }
}

int ov4_021D14D4 (void * param0, int param1)
{
    if (!(param1 < 256)) {
        return 0;
    }

    if (!(DWC_GetMyAID() == 0)) {
        return 0;
    }

    {
        if (Unk_ov4_0221A400->unk_106C || !ov4_021D1C5C()) {
            return 0;
        }

        *((u32 *)&(Unk_ov4_0221A400->unk_00[0])) = 0x1 | (Unk_ov4_0221A400->unk_10C8 << 8);
        Unk_ov4_0221A400->unk_00[2] = ++Unk_ov4_0221A400->unk_10D0;
        MI_CpuCopy8(param0, &(Unk_ov4_0221A400->unk_00[4]), param1);
        Unk_ov4_0221A400->unk_106C = 1;

        if (!DWC_SendReliableBitmap(DWC_GetAIDBitmap(), &(Unk_ov4_0221A400->unk_00[0]), param1 + 4)) {
            Unk_ov4_0221A400->unk_106C = 0;
            return 0;
        }
    }

    if (Unk_ov4_0221A400->unk_F9C != NULL) {
        Unk_ov4_0221A400->unk_F9C(0, param0, param1);
    }

    return 1;
}

int ov4_021D1590 (void * param0, int param1)
{
    u16 v0;

    if (!(param1 < 256)) {
        return 0;
    }

    {
        if (Unk_ov4_0221A400->unk_106C || !ov4_021D1C5C()) {
            return 0;
        }

        *((u32 *)&(Unk_ov4_0221A400->unk_00[0])) = 0x1 | (Unk_ov4_0221A400->unk_10C8 << 8);
        Unk_ov4_0221A400->unk_00[2] = ++Unk_ov4_0221A400->unk_10D0;
        MI_CpuCopy8(param0, &(Unk_ov4_0221A400->unk_00[4]), param1);
        Unk_ov4_0221A400->unk_106C = 1;

        v0 = DWC_GetAIDBitmap();

        if (v0 != DWC_SendReliableBitmap(v0, &(Unk_ov4_0221A400->unk_00[0]), param1 + 4)) {
            Unk_ov4_0221A400->unk_106C = 0;
            return 0;
        }
    }

    {
        if (Unk_ov4_0221A400->unk_F9C != NULL) {
            Unk_ov4_0221A400->unk_F9C(DWC_GetMyAID(), param0, param1);
        }
    }

    return 1;
}

static void ov4_021D1650 (DWCError param0, int param1, void * param2)
{
    BOOL v0;

    if (DWC_CheckDirtyFlag((Unk_ov4_0221A400->unk_F08))) {
        DWCUserData * v1 = NULL;

        DWC_ClearDirtyFlag(Unk_ov4_0221A400->unk_F08);
        Unk_ov4_0221A400->unk_10DA = 1;
    }

    if (param0 == DWC_ERROR_NONE) {
        v0 = DWC_UpdateServersAsync(NULL, ov4_021D171C, Unk_ov4_0221A400->unk_F08, ov4_021D1740, param2, ov4_021D1744, param2);

        if (v0 == 0) {
            Link_SetErrorState(1);
            return;
        }

        DWC_SetBuddyFriendCallback(ov4_021D17A0, NULL);
    } else {
        Unk_ov4_0221A400->unk_1064 = 12;
    }
}

static void ov4_021D16E8 (u8 param0)
{
    if (Unk_ov4_0221A400->unk_109C) {
        DWC_CloseAllConnectionsHard( );
        Unk_ov4_0221A400->unk_108C = -1;
        Unk_ov4_0221A400->unk_1064 = 18;
    }
}

static void ov4_021D171C (DWCError param0, BOOL param1, void * param2)
{
#pragma unused(param2)
    if (param0 == DWC_ERROR_NONE) {
        if (param1) {
            (void)0;
        }

        Unk_ov4_0221A400->unk_1064 = 4;
    } else {
        Unk_ov4_0221A400->unk_1064 = 12;
    }
}

static void ov4_021D1740 (int param0, u8 param1, const char * param2, void * param3)
{
#pragma unused(param3)
    return;
}

static void ov4_021D1744 (int param0, int param1, void * param2)
{
#pragma unused(param2)

    MI_CpuCopy8(Unk_ov4_0221A400->unk_100, sub_0202AED8(sub_0202B370(Unk_ov4_0221A400->unk_F6C), 0), 32 * sizeof(DWCFriendData));

    sub_0202B270(sub_0202B370(Unk_ov4_0221A400->unk_F6C), param0, param1);
    sub_020307F0(sub_0203068C(Unk_ov4_0221A400->unk_F6C), param0, param1);
}

static void ov4_021D17A0 (int param0, void * param1)
{
#pragma unused(param1)
    return;
}

static void ov4_021D17A4 (void)
{
    MI_CpuClear8(Unk_ov4_0221A400->unk_10A0, sizeof(Unk_ov4_0221A400->unk_10A0));
}

static void ov4_021D17C0 (void)
{
    int v0;

    for (v0 = 0; v0 < 3 + 1; v0++) {
        DWC_SetRecvTimeoutTime(v0, 0);
    }

    if (DWC_GetMyAID() == 0) {
        for (v0 = 0; v0 < Unk_ov4_0221A400->unk_1070; v0++) {
            if (DWC_GetMyAID() != v0) {
                if (DWC_GetAIDBitmap() & (0x1 << v0)) {
                    GF_ASSERT(DWC_SetRecvTimeoutTime(v0, 10 * 1000));
                }
            }
        }
    } else {
        GF_ASSERT(DWC_SetRecvTimeoutTime(0, 10 * 1000));
    }

    Unk_ov4_0221A400->unk_109C = 1;
    ov4_021D17A4();
}

static void ov4_021D1854 (int param0)
{
    int v0, v1;

    Unk_ov4_0221A400->unk_1064 = 7;

    for (v0 = 0, v1 = 0; v0 < Unk_ov4_0221A400->unk_1070; v0++) {
        if (DWC_GetMyAID() != v0) {
            ov4_021D2748(v0);
        }
    }

    ov4_021D17C0();
}

static void ov4_021D1898 (DWCError param0, BOOL param1, void * param2)
{
#pragma unused(param2)

    if (param0 == DWC_ERROR_NONE) {
        if (!param1) {
            ov4_021D1854(1 - DWC_GetMyAID());
        } else {
            ov4_021D12B4();
        }
    } else {
        Unk_ov4_0221A400->unk_1064 = 12;
    }

    if (Unk_ov4_0221A400->unk_FA8) {
        Unk_ov4_0221A400->unk_FA8(DWC_GetMyAID(), Unk_ov4_0221A400->unk_FAC);
    }
}

static int ov4_021D18F0 (int param0, void * param1)
{
#pragma unused(param0,param1)
    return 1;
}

static void ov4_021D18F4 (int param0, u8 param1)
{
#pragma unused(param0)
    Unk_ov4_0221A400->unk_106C = 0;
    Unk_ov4_0221A400->unk_10A0[param1] = 0;
}

static void ov4_021D1918 (u32 param0)
{
    if (!sub_0203272C(sub_0203895C())) {
        if (param0 & 0x100) {
            Unk_ov4_0221A400->unk_10C4 = 1;
        } else {
            Unk_ov4_0221A400->unk_10C4 = 0;
        }
    }
}

static void ov4_021D1950 (u8 param0, u8 * param1, int param2)
{
#pragma unused( param0, param1, param2 )

    u32 v0;
    v0 = (param1[3] << 24) | (param1[2] << 16) | (param1[1] << 8) | param1[0];

    Unk_ov4_0221A400->unk_109C = 1;

    if ((v0 & 0xff) == 0x1) {
        ov4_021D1918(v0);
        Unk_ov4_0221A400->unk_10D1 = param1[2];
    } else {
        if (ov4_021D2C70(param0, param1, param2)) {
            return;
        }

        ov4_021D1918(v0);
        return;
    }

    {
        u16 * v1 = (u16 *)ov4_021D1AA0(NULL, param2 - 4, 4);

        if (v1 == NULL) {
            return;
        }

        MI_CpuCopy8(param1 + 4, (void *)v1, param2 - 4);

        if (DWC_GetMyAID() == 0) {
            if (Unk_ov4_0221A400->unk_F98 != NULL) {
                Unk_ov4_0221A400->unk_F98(param0, v1, param2 - 4);
            }
        } else {
            if (Unk_ov4_0221A400->unk_F9C != NULL) {
                Unk_ov4_0221A400->unk_F9C(param0, v1, param2 - 4);
            }
        }

        ov4_021D1B04(NULL, v1, param2 - 4);
    }
}

static void ov4_021D1A20 (DWCError param0, BOOL param1, BOOL param2, u8 param3, int param4, void * param5)
{
#pragma unused(param5, param4)

    Unk_ov4_0221A400->unk_106C = 0;
    Unk_ov4_0221A400->unk_10C0 = 0;
    Unk_ov4_0221A400->unk_1094 = 0;

    if (param0 == DWC_ERROR_NONE) {
        if (((Unk_ov4_0221A400->unk_10D9 == 1) && (DWC_GetNumConnectionHost() == 1))) {
            if (Unk_ov4_0221A400->unk_1064 == 6) {
                (void)0;
            } else {
                Unk_ov4_0221A400->unk_1064 = 16;
            }

            if (Unk_ov4_0221A400->unk_1084) {
                ov4_021D1F18();
            }
        }

        if (param1) {
            (void)0;
        } else {
            (void)0;
        }
    } else {
        (void)0;
    }

    if (Unk_ov4_0221A400->unk_FA0) {
        Unk_ov4_0221A400->unk_FA0(param3, Unk_ov4_0221A400->unk_FA4);
    }
}

void * ov4_021D1AA0 (DWCAllocType param0, u32 param1, int param2)
{
#pragma unused( param0 )
    void * v0;
    OSIntrMode v1;

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov4_0221A400->unk_F88, param1, param2);

    if (v0 == NULL) {
        if (Unk_ov4_0221A400->unk_F8C != NULL) {
            v0 = NNS_FndAllocFromExpHeapEx(Unk_ov4_0221A400->unk_F90, param1, param2);
        }
    }

    if (v0 == NULL) {
        Link_SetErrorState(1);
        OS_RestoreInterrupts(v1);

        return NULL;
    }

    OS_RestoreInterrupts(v1);

    return v0;
}

void ov4_021D1B04 (DWCAllocType param0, void * param1, u32 param2)
{
#pragma unused( param0, param2 )
    OSIntrMode v0;
    u16 v1;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();
    v1 = NNS_FndGetGroupIDForMBlockExpHeap(param1);

    if (v1 == 16) {
        if (Unk_ov4_0221A400->unk_F8C == NULL) {
            Link_SetErrorState(1);
            return;
        }

        NNS_FndFreeToExpHeap(Unk_ov4_0221A400->unk_F90, param1);
    } else {
        NNS_FndFreeToExpHeap(Unk_ov4_0221A400->unk_F88, param1);
    }

    OS_RestoreInterrupts(v0);
}

int ov4_021D1B5C (void)
{
    int v0;
    DWCErrorType v1;
    int v2;
    int v3 = 0;

    v2 = DWC_GetLastErrorEx(&v0, &v1);

    if (v2 != 0) {
        v3 = v0;

        if ((v0 == 0) || (v1 == DWC_ETYPE_LIGHT)) {
            v3 = v2;
        }

        switch (v1) {
        case DWC_ETYPE_LIGHT:
            DWC_ClearError();
            break;
        case DWC_ETYPE_SHOW_ERROR:
            DWC_ClearError();
            break;
        case DWC_ETYPE_SHUTDOWN_FM:
        case DWC_ETYPE_SHUTDOWN_GHTTP:
        case DWC_ETYPE_SHUTDOWN_ND:
        case DWC_ETYPE_DISCONNECT:
            if (Unk_ov4_0221A400) {
                switch (Unk_ov4_0221A400->unk_1064) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 12:
                case 18:
                case 16:
                case 17:
                    DWC_ShutdownFriendsMatch(  );
                case 0:
                case 1:
                case 2:
                    if (sub_0203895C() != 33) {
                        DWC_CleanupInet( );
                    }
                }

                DWC_ClearError();
            }

            if (Unk_ov4_0221A400) {
                Unk_ov4_0221A400->unk_1064 = 14;
            }
            break;
        case DWC_ETYPE_FATAL:
            if (Unk_ov4_0221A400) {
                Unk_ov4_0221A400->unk_1064 = 15;

                if (Unk_ov4_0221A400->unk_FB4 != NULL) {
                    Unk_ov4_0221A400->unk_FB4(-v0);
                }
            }
            break;
        }
    }

    if (Unk_ov4_0221A400->unk_10D2) {
        v3 = ((DWC_ERROR_NUM)+6);
    }

    if (v2 != 0) {
        sub_02037F94(v0, v1, v2);
    }

    return v3;
}

static BOOL ov4_021D1C5C (void)
{
    int v0;
    BOOL v1 = 0;

    for (v0 = 0; v0 < Unk_ov4_0221A400->unk_1070; v0++) {
        if (DWC_GetMyAID() == v0) {
            continue;
        }

        if (DWC_IsValidAID(v0)) {
            v1 = 1;

            if (!DWC_IsSendableReliable(v0)) {
                return 0;
            }
        }
    }

    return v1;
}

static BOOL ov4_021D1CAC (int param0)
{
    if ((Unk_ov4_0221A400->unk_106C == 0) && ov4_021D1C5C() && (0xfffe & DWC_GetAIDBitmap())) {
        Unk_ov4_0221A400->unk_106C = 1;
        *((u32 *)&(Unk_ov4_0221A400->unk_00[0])) = 0x2 | (Unk_ov4_0221A400->unk_10C8 << 8);

        DWC_SendReliableBitmap(DWC_GetAIDBitmap(), &(Unk_ov4_0221A400->unk_00[0]), 4);

        Unk_ov4_0221A400->unk_10A0[param0] = 0;

        return 1;
    }

    return 0;
}

static int ov4_021D1D1C (void)
{
    int v0, v1;

    DWC_ProcessFriendsMatch();
    ov4_021D21B4();

    if (Unk_ov4_0221A400->unk_1084) {
        if ((Unk_ov4_0221A400->unk_10C8 == 1) && (Unk_ov4_0221A400->unk_10C4 == 1) && (Unk_ov4_0221A400->unk_10CA == 1)) {
            ov4_021D2FB8();
        } else {
            ov4_021D2FA4();
        }

        ov4_021D2B28();

        if (Unk_ov4_0221A400->unk_1074 != DWC_GetAIDBitmap()) {
            if (!Unk_ov4_0221A400->unk_10D3 && Unk_ov4_0221A400->unk_1090) {
                if (ov4_021D2FCC(DWC_GetAIDBitmap(), DWC_GetMyAID())) {
                    Unk_ov4_0221A400->unk_1074 = DWC_GetAIDBitmap();
                }
            }
        }
    }

    if (Unk_ov4_0221A400->unk_1064 == 18) {
        v1 = ov4_021D1B5C();

        if (v1 != 0) {
            return v1;
        }

        return (DWC_ERROR_NUM)+3;
    }

    if (Unk_ov4_0221A400->unk_1064 == 17) {
        return (DWC_ERROR_NUM)+4;
    }

    if ((Unk_ov4_0221A400->unk_1064 == 7) || (Unk_ov4_0221A400->unk_1064 == 8)) {
        for (v0 = 0; v0 < Unk_ov4_0221A400->unk_1070; v0++) {
            if ((Unk_ov4_0221A400->unk_10A0[v0]++ >= 120) && (Unk_ov4_0221A400->unk_106C == 0)) {
                if (ov4_021D1CAC(v0)) {
                    ov4_021D17A4();
                    break;
                }
            }
        }
    }

    return ov4_021D1B5C();
}

int ov4_021D1E30 ()
{
    if (Unk_ov4_0221A400) {
        if ((Unk_ov4_0221A400->unk_1064 == 7) || (Unk_ov4_0221A400->unk_1064 == 8) || (Unk_ov4_0221A400->unk_1064 == 16)) {
            return DWC_GetMyAID();
        }
    }

    return -1;
}

static void ov4_021D1E60 ()
{
    Unk_ov4_0221A400->unk_1084 = 0;
}

void ov4_021D1E74 (int param0)
{
    int v0;
    int v1 = 1;
    BOOL v2 = sub_0203272C(sub_0203895C());

    if (v2) {
        v1 = sub_02035E18() - 1;

        if (v1 < 1) {
            v1 = 1;
        }

        Unk_ov4_0221A400->unk_10C8 = 1;
        Unk_ov4_0221A400->unk_10C4 = 1;
        Unk_ov4_0221A400->unk_10CA = 1;
    }

    if (Unk_ov4_0221A400->unk_1084 == 0) {
        switch (Unk_ov4_0221A400->unk_1098) {
        case 2:
            v0 = VCT_CODEC_G711_ULAW;
            break;
        case 3:
            v0 = VCT_CODEC_2BIT_ADPCM;
            break;
        case 4:
            v0 = VCT_CODEC_3BIT_ADPCM;
            break;
        case 5:
            v0 = VCT_CODEC_4BIT_ADPCM;
            break;
        default:
            if (!v2) {
                v0 = VCT_CODEC_4BIT_ADPCM;
            } else {
                v0 = VCT_CODEC_3BIT_ADPCM;
            }
            break;
        }

        ov4_021D2CC0(param0, v0, v1);
        ov4_021D2EF4(ov4_021D1E60);

        Unk_ov4_0221A400->unk_1084 = 1;
    }
}

void ov4_021D1F18 (void)
{
    ov4_021D2F08();

    if (Unk_ov4_0221A400 != NULL) {
        Unk_ov4_0221A400->unk_1084 = 0;
        Unk_ov4_0221A400->unk_1074 = 0;
    }
}

int ov4_021D1F3C (int param0, int param1)
{
    int v0 = param0 / 100;
    int v1 = param0 / 1000;

    if (param0 == 20101) {
        return 1;
    }

    if (v1 == 23) {
        return 1;
    }

    if (param0 == 20108) {
        return 2;
    }

    if (param0 == 20110) {
        return 3;
    }

    if (v0 == 512) {
        return 4;
    }

    if (v0 == 500) {
        return 5;
    }

    if (param0 == 51103) {
        return 7;
    }

    if (v0 == 510) {
        return 6;
    }

    if (v0 == 511) {
        return 6;
    }

    if (v0 == 513) {
        return 6;
    }

    if ((param0 >= 52000) && (param0 <= 52003)) {
        return 8;
    }

    if ((param0 >= 52100) && (param0 <= 52103)) {
        return 8;
    }

    if ((param0 >= 52200) && (param0 <= 52203)) {
        return 8;
    }

    if (param0 == 80430) {
        return 9;
    }

    if (v1 == 20) {
        return 0;
    }

    if (v0 == 520) {
        return 0;
    }

    if (v0 == 521) {
        return 0;
    }

    if (v0 == 522) {
        return 0;
    }

    if (v0 == 523) {
        return 0;
    }

    if (v0 == 530) {
        return 0;
    }

    if (v0 == 531) {
        return 0;
    }

    if (v0 == 532) {
        return 0;
    }

    if (param0 < 10000) {
        return 14;
    }

    if (v1 == 31) {
        return 12;
    }

    switch (param1) {
    case DWC_ETYPE_NO_ERROR:
    case DWC_ETYPE_LIGHT:
    case DWC_ETYPE_SHOW_ERROR:
        return 11;
    case DWC_ETYPE_SHUTDOWN_FM:
    case DWC_ETYPE_SHUTDOWN_GHTTP:
    case DWC_ETYPE_SHUTDOWN_ND:
    case DWC_ETYPE_DISCONNECT:
        return 10;
    default:
        GF_ASSERT(0);
        break;
    case DWC_ETYPE_FATAL:
        return 15;
    }

    return -1;
}

int ov4_021D20B0 (int param0)
{
    if (param0 == 0) {
        switch (Unk_ov4_0221A400->unk_1064) {
        case 5:
        case 7:
        case 8:
            if (Unk_ov4_0221A400->unk_1084) {
                ov4_021D2EA4();
            }

            Unk_ov4_0221A400->unk_1064 = 16;
            break;
        case 4:
        case 14:
        case 17:
        case 18:
            return 1;
        }
    } else {
        switch (Unk_ov4_0221A400->unk_1064) {
        case 4:
        case 17:
        case 18:
            return 1;
        }
    }

    return 0;
}

int ov4_021D2134 ()
{
    if ((Unk_ov4_0221A400->unk_1064 == 17) || (Unk_ov4_0221A400->unk_1064 == 18) || (Unk_ov4_0221A400->unk_1064 == 4)) {
        Unk_ov4_0221A400->unk_1064 = 4;
        Unk_ov4_0221A400->unk_108C = -1;
        ov4_021D25FC();
        return 1;
    }

    return 0;
}

void ov4_021D2170 (void (* func)(int))
{
    if (Unk_ov4_0221A400) {
        Unk_ov4_0221A400->unk_FB4 = func;
    }
}

void ov4_021D2184 (void)
{
    DWC_ShutdownFriendsMatch();
    DWC_CleanupInet();

    ov4_021D1F18();
    ov4_021D0F68();
}

void ov4_021D2198 (void * param0, int param1)
{
    Unk_ov4_0221A400->unk_1058 = param0;
    Unk_ov4_0221A400->unk_105C = param1;
}

static void ov4_021D21B4 (void)
{
    int v0;

    if (Unk_ov4_0221A400->unk_1058 == NULL) {
        return;
    }

    for (v0 = 0; v0 < 1; v0++) {
        int v1 = Unk_ov4_0221A400->unk_1060 % 32;
        int v2;

        if (DWC_IsBuddyFriendData(&(Unk_ov4_0221A400->unk_100[v1]))) {
            Unk_ov4_0221A400->unk_1038[v1] = DWC_GetFriendStatusData(&Unk_ov4_0221A400->unk_100[v1], (void *)(((u32)Unk_ov4_0221A400->unk_1058) + Unk_ov4_0221A400->unk_105C * v1), &v2);

            if (v2 > Unk_ov4_0221A400->unk_105C) {
                (void)0;
            }
        }

        Unk_ov4_0221A400->unk_1060 = (Unk_ov4_0221A400->unk_1060 + 1) % 32;
    }
}

BOOL ov4_021D222C (const void * param0, int param1)
{
    return DWC_SetOwnStatusData(param0, param1);
}

u8 ov4_021D2234 (int param0)
{
    return Unk_ov4_0221A400->unk_1038[param0];
}

int ov4_021D2248 (int param0, int param1, BOOL param2)
{
    int v0, v1 = param1;

    if (ov4_021D27E0()) {
        return -4;
    }

    if (Unk_ov4_0221A400->unk_1064 != 4) {
        Unk_ov4_0221A400->unk_10C0++;

        if (Unk_ov4_0221A400->unk_10C0 > 120) {
            return -3;
        }

        return -1;
    }

    ov4_021D27CC();

    Unk_ov4_0221A400->unk_10CC = 0;
    Unk_ov4_0221A400->unk_10D9 = 1;
    Unk_ov4_0221A400->unk_1088 = param0;
    Unk_ov4_0221A400->unk_1070 = param1;

    if (param2) {
        v1 = 2;
    }

    Unk_ov4_0221A400->unk_1094 = 1;

    if (param0 < 0) {
        v0 = DWC_SetupGameServer((u8)v1, ov4_021D23A4, NULL, ov4_021D24AC, NULL);
        Unk_ov4_0221A400->unk_1068 = 1;
    } else {
        v0 = DWC_ConnectToGameServerAsync(param0, ov4_021D2488, NULL, ov4_021D24AC, NULL);
        Unk_ov4_0221A400->unk_1068 = 2;
    }

    if (!v0) {
        Unk_ov4_0221A400->unk_10C0++;

        if (Unk_ov4_0221A400->unk_10C0 > 120) {
            return -3;
        }

        return -2;
    }

    Unk_ov4_0221A400->unk_10C0 = 0;
    Unk_ov4_0221A400->unk_1064 = 5;

    DWC_SetUserSendCallback(ov4_021D18F4);
    DWC_SetUserRecvCallback(ov4_021D1950);
    DWC_SetConnectionClosedCallback(ov4_021D1A20, NULL);
    DWC_SetUserRecvTimeoutCallback(ov4_021D16E8);

    Unk_ov4_0221A400->unk_106C = 0;

    return 0;
}

int ov4_021D2388 ()
{
    if (Unk_ov4_0221A400) {
        return Unk_ov4_0221A400->unk_1088;
    }

    return -1;
}

static void ov4_021D23A4 (DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void * param5)
{
#pragma unused(param3, param5)
    BOOL v0 = 0;

    Unk_ov4_0221A400->unk_1094 = 0;

    if (param0 == DWC_ERROR_NONE) {
        if (!param1) {
            if (sub_02032740(sub_0203895C()) && (param4 == -1)) {
                v0 = 1;
            }

            if (Unk_ov4_0221A400->unk_FB0) {
                if (0 == Unk_ov4_0221A400->unk_FB0(param4)) {
                    v0 = 1;
                }
            }

            if (Unk_ov4_0221A400->unk_10D4 || v0) {
                u32 v1 = ~Unk_ov4_0221A400->unk_10CC & DWC_GetAIDBitmap();
                u32 v2 = DWC_GetAIDBitmap();

                if (v1) {
                    DWC_CloseConnectionHardBitmap(&v1);

                    if ((v1 ^ v2) == 0x1) {
                        Unk_ov4_0221A400->unk_1064 = 6;
                    }

                    return;
                }
            }

            Unk_ov4_0221A400->unk_1088 = param4;
            Unk_ov4_0221A400->unk_10CC = DWC_GetAIDBitmap();

            if (Unk_ov4_0221A400->unk_10CC == 0x1) {
                Unk_ov4_0221A400->unk_1064 = 6;
            } else {
                ov4_021D1854(param4);
            }
        } else {
            if (param2) {
                (void)0;
            } else {
                Unk_ov4_0221A400->unk_108C = -1;
            }
        }
    } else {
        (void)0;
    }
}

static void ov4_021D2488 (DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void * param5)
{
#pragma unused(param5)
    Unk_ov4_0221A400->unk_1094 = 0;

    if (param0 == DWC_ERROR_NONE) {
        if (!param1) {
            if (param2) {
                (void)0;
            } else {
                (void)0;
            }

            ov4_021D1854(param4);
        } else {
            if (param2) {
                (void)0;
            } else {
                if (param3) {
                    (void)0;
                } else {
                    (void)0;
                }
            }
        }
    }
}

static void ov4_021D24AC (int param0, void * param1)
{
#pragma unused(param1)

    Unk_ov4_0221A400->unk_108C = param0;

    if (param0 != -1) {
        (void)0;
    } else {
        (void)0;
    }

    if (Unk_ov4_0221A400->unk_FA8) {
        Unk_ov4_0221A400->unk_FA8(param0, Unk_ov4_0221A400->unk_FAC);
    }
}

void ov4_021D24D8 ()
{
    int v0;

    if (!DWC_CheckHasProfile(Unk_ov4_0221A400->unk_F08)) {
        DWCFriendData v1;
        u32 * v2;

        DWC_CreateExchangeToken(Unk_ov4_0221A400->unk_F08, &v1);
        v2 = (u32 *)&v1;
    } else {
        DWCFriendData v3;

        DWC_CreateExchangeToken(Unk_ov4_0221A400->unk_F08, &v3);
    }

    for (v0 = 0; v0 < 32; v0++) {
        int v4 = DWC_GetFriendDataType(&(Unk_ov4_0221A400->unk_100[v0]));
        u32 * v5 = (u32 *)(&Unk_ov4_0221A400->unk_100[v0]);

        switch (v4) {
        case DWC_FRIENDDATA_LOGIN_ID:
            break;
        case DWC_FRIENDDATA_FRIEND_KEY:
            break;
        case DWC_FRIENDDATA_GS_PROFILE_ID:
            break;
        case DWC_FRIENDDATA_NODATA:
        default:
            break;
        }

        if (DWC_IsBuddyFriendData(&(Unk_ov4_0221A400->unk_100[v0]))) {
            (void)0;
        }
    }
}

BOOL ov4_021D2544 (void)
{
    return ov4_021D2F7C();
}

BOOL ov4_021D254C (void)
{
    if (Unk_ov4_0221A400) {
        return Unk_ov4_0221A400->unk_1090;
    }

    return 0;
}

BOOL ov4_021D2568 (void)
{
    if (Unk_ov4_0221A400) {
        return Unk_ov4_0221A400->unk_108C;
    }

    return 0;
}

void ov4_021D2584 (BOOL param0)
{
    Unk_ov4_0221A400->unk_1090 = param0;
}

static void sendPacket ()
{
    int v0;

    if (Unk_ov4_0221A400->unk_106C || !ov4_021D1C5C()) {
        Unk_ov4_0221A400->unk_106C = 1;
        *((u32 *)&(Unk_ov4_0221A400->unk_00[0])) = 0x2 | (Unk_ov4_0221A400->unk_10C8 << 8);

        DWC_SendReliableBitmap(DWC_GetAIDBitmap(), &(Unk_ov4_0221A400->unk_00[0]), 4);
        ov4_021D17A4();
    }
}

void ov4_021D2598 (BOOL param0)
{
    Unk_ov4_0221A400->unk_10CA = param0;
}

static void ov4_021D25AC (void * param0)
{
    Unk_ov4_0221A400->unk_10D4 = 2;
}

int ov4_021D25C0 (void)
{
    if (Unk_ov4_0221A400->unk_10D4 == 0) {
        Unk_ov4_0221A400->unk_10D4 = 1;
        DWC_StopSCMatchingAsync(ov4_021D25AC, NULL);
    }

    return Unk_ov4_0221A400->unk_10D4 == 2;
}

void ov4_021D25FC (void)
{
    Unk_ov4_0221A400->unk_10D4 = 0;
}

int ov4_021D2610 (void)
{
    return DWC_GetNumConnectionHost();
}

void ov4_021D2618 (BOOL param0, int param1)
{
    if (param0) {
        Unk_ov4_0221A400->unk_107C = 11;

        if (Unk_ov4_0221A400->unk_F8C == NULL) {
            Unk_ov4_0221A400->unk_F8C = Heap_AllocFromHeap(param1, 0xf000 + 32);
            Unk_ov4_0221A400->unk_F90 = NNS_FndCreateExpHeap((void *)(((u32)Unk_ov4_0221A400->unk_F8C + 31) / 32 * 32), 0xf000);
            NNS_FndSetGroupIDForExpHeap(Unk_ov4_0221A400->unk_F90, 16);
            Unk_ov4_0221A400->unk_F94 = NNS_FndGetTotalFreeSizeForExpHeap(Unk_ov4_0221A400->unk_F90);
        }
    } else {
        Unk_ov4_0221A400->unk_107C = Unk_ov4_0221A400->unk_1078;

        if (Unk_ov4_0221A400->unk_F8C != NULL) {
            if (NNS_FndGetTotalFreeSizeForExpHeap(Unk_ov4_0221A400->unk_F90) != Unk_ov4_0221A400->unk_F94) {
                Link_SetErrorState(1);
                return;
            }

            NNS_FndDestroyExpHeap(Unk_ov4_0221A400->unk_F90);
            Heap_FreeToHeap(Unk_ov4_0221A400->unk_F8C);

            Unk_ov4_0221A400->unk_F8C = NULL;
        }
    }
}

void ov4_021D26EC (BOOL param0)
{
    Unk_ov4_0221A400->unk_10D9 = param0;
}

void ov4_021D2700 (int param0)
{
    if (Unk_ov4_0221A400->unk_F74[param0] != NULL) {
        if (Unk_ov4_0221A400->unk_10D5[param0] == 1) {
            Heap_FreeToHeap(Unk_ov4_0221A400->unk_F74[param0]);
        } else {
            ov4_021D1B04(0, Unk_ov4_0221A400->unk_F74[param0], 0);
        }

        Unk_ov4_0221A400->unk_F74[param0] = NULL;
    }
}

void ov4_021D2748 (int param0)
{
    ov4_021D2700(param0);

    if (Unk_ov4_0221A400->unk_F74[param0] == NULL) {
        if (Unk_ov4_0221A400->unk_107C == 11) {
            Unk_ov4_0221A400->unk_F74[param0] = Heap_AllocFromHeap(Unk_ov4_0221A400->unk_107C, (4 * 1024) + 32);
            Unk_ov4_0221A400->unk_10D5[param0] = 1;
        } else {
            Unk_ov4_0221A400->unk_F74[param0] = ov4_021D1AA0(0, (4 * 1024), 32);
            Unk_ov4_0221A400->unk_10D5[param0] = 0;
        }

        DWC_SetRecvBuffer(param0, (u8 *)(((u32)Unk_ov4_0221A400->unk_F74[param0] + 31) / 32 * 32), (4 * 1024));
    }
}

void ov4_021D27CC (void)
{
    int v0;

    for (v0 = 0; v0 < 3 + 1; v0++) {
        ov4_021D2700(v0);
    }
}

u8 ov4_021D27E0 (void)
{
    return Unk_ov4_0221A400->unk_10DA;
}

void ov4_021D27F4 (void)
{
    Unk_ov4_0221A400->unk_10DA = 0;
}
