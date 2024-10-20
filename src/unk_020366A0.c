#include "unk_020366A0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202610C.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay065/struct_ov65_0222F6EC.h"
#include "overlay066/ov66_022324F0.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "heap.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_02017728.h"
#include "unk_02030EE0.h"
#include "unk_0203266C.h"
#include "unk_02032798.h"
#include "unk_02033200.h"
#include "unk_020393C8.h"
#include "unk_02039814.h"

typedef void (*UnkFuncPtr_02036C94)(void);

typedef struct {
    void *unk_00;
    u8 unk_04[6];
    MATHRandContext32 unk_0C;
    UnkFuncPtr_02036C94 unk_24;
    SaveData *unk_28;
    TrainerInfo *unk_2C;
    const BattleRegulation *unk_30;
    UnkStruct_ov65_0222F6EC unk_34;
    int unk_40;
    u16 unk_44;
    u8 unk_46;
    u8 unk_47;
    u8 unk_48;
    u8 unk_49;
    u8 unk_4A;
    u8 unk_4B;
    u8 unk_4C;
    s8 unk_4D;
    u8 unk_4E;
    u8 unk_4F;
    u8 unk_50;
    u8 unk_51;
    u8 unk_52;
    u8 unk_53;
    u8 unk_54;
    u8 unk_55;
    u8 unk_56;
    u8 unk_57;
    u8 unk_58;
    u8 unk_59;
    u8 unk_5A;
    const void *unk_5C;
    u8 unk_60;
    u8 unk_61[3];
} UnkStruct_021C07D4;

static void sub_02036C94(UnkFuncPtr_02036C94 param0, int param1);
static void sub_02036CA4(void);
static void sub_02036E08(void);
static void sub_02036D80(void);
static void sub_02036E5C(void);
static void sub_02036EDC(void);
static void sub_02036F44(void);
static void sub_020370B8(void);
static void sub_0203712C(void);
static void sub_02036FA4(void);
static void sub_02036FBC(void);
static void sub_02036FD4(void);
static void sub_02037040(void);
static void sub_02037094(void);
static void sub_020370B4(void);
static void sub_02037344(void);
static void sub_020370EC(void);
static void sub_02037144(void);
static void sub_020371A8(void);
static void sub_0203718C(void);
static void sub_020371C0(void);
static void sub_02037208(void);
static void sub_02037210(void);
static void sub_02037238(void);
static void sub_020372C4(void);
static void sub_020372DC(void);
static void sub_020372F0(void);
static void sub_02037270(void);
static void sub_02037284(void);
static void sub_02037108(void);
static void sub_020373F0(void);
static void sub_02037444(void);
static void sub_02037474(void);
static void sub_0203748C(void);
static void sub_020374F4(void);
static void sub_0203754C(void);
static void sub_020376A8(void);
static void sub_020375A4(void);
static void sub_020375BC(void);
static void sub_020375E8(void);
static void sub_0203764C(void);
static void sub_02037724(void);
static void sub_0203773C(void);
static void sub_02037740(void);
static void sub_02037790(void);
static void sub_020377E4(void);
static void sub_02037E20(void);
static void sub_02037E68(void);
static void sub_02037330(void);
static void sub_02037334(void);
static void sub_02037354(void);
static void sub_0203739C(void);
static void sub_020373B8(void);
static void sub_02038164(void);
static void sub_02038314(void);
static void sub_02038BA8(void);
static void sub_02038C1C(void);
static void sub_02038C68(void);
static void sub_02038D80(void);
static void sub_02038D94(void);
static void sub_02038DC8(void);
static void sub_02038DCC(void);
static void sub_02038DEC(void);
static void sub_02038E38(void);
static void sub_02038E84(void);
static BOOL sub_02038C74(int param0);
static BOOL sub_02038D10(void);
static BOOL sub_02038D44(void);
static BOOL sub_02038D5C(u32 *param0);
static void sub_020378F8(void);
static void sub_02037910(void);
static void sub_0203794C(void);
static void sub_020379D0(void);

static UnkStruct_021C07D4 *Unk_021C07D4 = NULL;
static u8 Unk_02100A20[] = { "FREAK" };
static u8 Unk_02100A30[] = { " GAME" };
static u8 Unk_02100A28[] = { " FULL" };

static void sub_020366A0(SaveData *param0, int param1)
{
    void *v0;

    if (Unk_021C07D4 != NULL) {
        return;
    }

    GF_ASSERT(param0);
    sub_02033478();

    Unk_021C07D4 = (UnkStruct_021C07D4 *)Heap_AllocFromHeap(15, sizeof(UnkStruct_021C07D4));
    MI_CpuFill8(Unk_021C07D4, 0, sizeof(UnkStruct_021C07D4));

    Unk_021C07D4->unk_40 = 50;
    Unk_021C07D4->unk_4E = 1;
    Unk_021C07D4->unk_28 = param0;
    Unk_021C07D4->unk_2C = SaveData_GetTrainerInfo(param0);
    Unk_021C07D4->unk_46 = 1 + 1;
    Unk_021C07D4->unk_48 = 0;
    Unk_021C07D4->unk_53 = 0;
    Unk_021C07D4->unk_4A = param1;

    CommSys_Seed(&Unk_021C07D4->unk_0C);
    CommCmd_Init(NULL, 0, NULL);

    if ((param1 != 9) && (param1 != 17) && (param1 != 15)) {
        sub_02039734();
    }
}

static void sub_02036734(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    sub_020327E0();

    if (Unk_021C07D4->unk_00) {
        Heap_FreeToHeap(Unk_021C07D4->unk_00);
    }

    if (sub_020389B8()) {
        Heap_Destroy(49);
    }

    sub_02039794();
    sub_020334CC();
    Heap_FreeToHeap(Unk_021C07D4);
    Heap_Destroy(15);

    Unk_021C07D4 = NULL;
}

BOOL CommMan_IsInitialized(void)
{
    if (Unk_021C07D4) {
        return 1;
    }

    return 0;
}

void sub_02036794(SaveData *param0)
{
    if (Unk_021C07D4 != NULL) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0xF000);
    sub_020366A0(param0, 10);

    Unk_021C07D4->unk_4B = 0;

    sub_02036C94(sub_02036CA4, 50);
}

void sub_020367D0(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    CommSys_StartShutdown();
    sub_02036C94(sub_02037344, 0);
}

void sub_020367F0(void)
{
    CommSys_Reset();
    Unk_021C07D4->unk_44 = CommSys_CurNetId();
    sub_02036C94(sub_0203712C, 0);
}

void sub_02036814(BOOL param0)
{
    Unk_021C07D4->unk_5A = param0;
}

void sub_02036824(void)
{
    sub_02036C94(sub_02036FA4, 0);
}

BOOL sub_02036834(void)
{
    int v0;
    u32 v1[] = {
        (u32)sub_020370B8, (u32)sub_020370B4, 0
    };
    u32 v2 = (u32)Unk_021C07D4->unk_24;

    if (Unk_021C07D4 == NULL) {
        return 0;
    }

    for (v0 = 0; v1[v0] != 0; v0++) {
        if (v2 == v1[v0]) {
            return 1;
        }
    }

    return 0;
}

void sub_02036884(void)
{
    sub_02036C94(sub_020370EC, 0);
}

void sub_02036894(void)
{
    Unk_021C07D4->unk_57 = 1;
}

void sub_020368A4(void)
{
    sub_02033478();
    sub_02036C94(sub_02037108, 0);
}

void CommMan_StartBattleServer(SaveData *param0, int param1, int param2, const BattleRegulation *param3, BOOL param4)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0x7080);
    sub_020366A0(param0, param1);

    Unk_021C07D4->unk_4B = param2;
    Unk_021C07D4->unk_30 = param3;

    sub_02036C94(sub_02037144, 0);
}

void CommMan_StartBattleClient(SaveData *param0, int param1, int param2, const BattleRegulation *param3, BOOL param4)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0x7080);
    sub_020366A0(param0, param1);

    Unk_021C07D4->unk_4B = param2;
    Unk_021C07D4->unk_30 = param3;

    sub_02036C94(sub_020371C0, 0);
}

void sub_02036948(int param0)
{
    Unk_021C07D4->unk_49 = param0;
    sub_02036C94(sub_02037210, 0);
}

void sub_02036964(void)
{
    CommSys_ResetBattleClient();
    sub_02036C94(sub_020372DC, 0);
}

void sub_02036978(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    sub_02036C94(sub_020373B8, 5);
}

void sub_02036994(BOOL param0)
{
    sub_0203208C(param0);
}

BOOL sub_0203699C(void)
{
    int v0;
    u32 v1[] = {
        (u32)sub_020371A8,
        (u32)sub_020372C4,
        0,
    };
    u32 v2 = (u32)Unk_021C07D4->unk_24;

    if (Unk_021C07D4 == NULL) {
        return 0;
    }

    for (v0 = 0; v1[v0] != 0; v0++) {
        if (v2 == v1[v0]) {
            return 1;
        }
    }

    return 0;
}

void sub_020369EC(SaveData *param0)
{
    if (Unk_021C07D4 != NULL) {
        return;
    }

    if (Heap_CreateAtEnd(3, 15, 0x7080) == 0) {
        sub_02038A0C();
    }

    sub_020366A0(param0, 9);

    Unk_021C07D4->unk_4A = 9;
    Unk_021C07D4->unk_4B = 0;

    sub_02036C94(sub_020373F0, 0);
}

void sub_02036A38(int param0)
{
    Unk_021C07D4->unk_49 = param0;
    Unk_021C07D4->unk_44 = 3;

    sub_02032138(1);
    sub_02039734();
    sub_02036C94(sub_020375A4, 0);
}

int sub_02036A68(void)
{
    u32 v0;

    if (Unk_021C07D4 == NULL) {
        return -1;
    }

    v0 = (u32)Unk_021C07D4->unk_24;

    if (v0 == (u32)sub_02037724) {
        return 1;
    }

    if (v0 == (u32)sub_0203773C) {
        return -1;
    }

    return 0;
}

BOOL sub_02036AA0(void)
{
    u32 v0;

    if (Unk_021C07D4 == NULL) {
        return 0;
    }

    v0 = (u32)Unk_021C07D4->unk_24;

    if (v0 == (u32)sub_02037790) {
        return 1;
    }

    return 0;
}

void sub_02036AC4(void)
{
    sub_02032138(0);

    if (!((Unk_021C07D4->unk_4F == 1) && (Unk_021C07D4->unk_50 == 1)) || (Unk_021C07D4->unk_4A == 9)) {
        CommMan_SetErrorHandling(0, 0);
    }

    sub_02039794();

    Unk_021C07D4->unk_4A = 9;
    Unk_021C07D4->unk_53 = 0;

    sub_02031FA4(Unk_021C07D4->unk_46);

    if (CommSys_CurNetId() == 0) {
        sub_02032160(1);
        sub_02036C94(sub_02037354, 15);
    } else {
        sub_02036C94(sub_0203739C, 5);
    }
}

BOOL sub_02036B44(void)
{
    u32 v0;

    if (Unk_021C07D4 == NULL) {
        return 1;
    }

    v0 = (u32)Unk_021C07D4->unk_24;

    if (v0 == (u32)sub_02037474) {
        return 0;
    }

    return 1;
}

void sub_02036B68(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    sub_02036C94(sub_020373B8, 5);
}

void sub_02036B84(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    Unk_021C07D4->unk_53 = 1;
    sub_02032138(1);
}

void sub_02036BA0(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    Unk_021C07D4->unk_53 = 1;

    sub_02032138(1);
    sub_02036C94(sub_020377E4, 0);
}

void sub_02036BC8(void)
{
    Unk_021C07D4->unk_4A = 18;
}

void sub_02036BD8(void)
{
    Unk_021C07D4->unk_4A = 9;
}

void sub_02036BE8(SaveData *param0, int param1)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0x7080);
    sub_020366A0(param0, param1);
    sub_02036C94(sub_02037E20, 0);
}

void sub_02036C1C(SaveData *param0, int param1)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0x7080);
    sub_020366A0(param0, param1);
    sub_02036C94(sub_02037E68, 0);
}

void sub_02036C50(void)
{
    if (Unk_021C07D4) {
        if (Unk_021C07D4->unk_24 != NULL) {
            UnkFuncPtr_02036C94 v0 = Unk_021C07D4->unk_24;
            v0();
        }
    }

    if (sub_020389B8()) {
        sub_020397B0(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    } else if (CommServerClient_IsInitialized()) {
        sub_020397B0(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }
}

static void sub_02036C94(UnkFuncPtr_02036C94 param0, int param1)
{
    Unk_021C07D4->unk_24 = param0;
    Unk_021C07D4->unk_40 = param1;
}

static void sub_02036CA4(void)
{
    void *v0;

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    CommInfo_Init(Unk_021C07D4->unk_28, NULL);
    CommSys_SetAlone(1);
    CommSys_EnableSendMovementData();

    if (Unk_021C07D4->unk_55) {
        if (CommSys_InitServer(1, Unk_021C07D4->unk_4E, 500, 1)) {
            u32 v1 = MATH_Rand32(&Unk_021C07D4->unk_0C, 40 / 2);

            Unk_021C07D4->unk_4E = 0;
            sub_02036C94(sub_02037040, 40 / 2 + v1);
        }
    } else {
        if (CommSys_InitClient(1, 1, 500)) {
            if (Unk_021C07D4->unk_57) {
                sub_02036C94(sub_02037330, 0);
            } else {
                sub_02036C94(sub_02036E5C, 32 * 2);
            }
        }
    }
}

static void sub_02036D80(void)
{
    BOOL v0;

    if (!sub_02033E30()) {
        return;
    }

    CommSys_SetAlone(1);
    CommSys_EnableSendMovementData();

    if (Unk_021C07D4->unk_55) {
        sub_02036C94(sub_02036FD4, 0);
    } else {
        v0 = CommSys_InitClient(0, 1, 500);

        if (v0) {
            u32 v1 = MATH_Rand32(&Unk_021C07D4->unk_0C, 32 * 2);

            if (Unk_021C07D4->unk_44 > 0) {
                v1 = 2 * 32 * Unk_021C07D4->unk_44;
                Unk_021C07D4->unk_44 = 0;
            }

            sub_02036C94(sub_02036E5C, v1);
        }
    }
}

static void sub_02036E08(void)
{
    BOOL v0;

    if (!sub_02033E30()) {
        return;
    }

    v0 = CommSys_InitClient(0, 0, 500);

    if (v0) {
        u32 v1 = MATH_Rand32(&Unk_021C07D4->unk_0C, 32);
        sub_02036C94(sub_02036E5C, 32 / 2 + v1);
    }
}

static void sub_02036E5C(void)
{
    int v0;

    sub_02033A5C();

    if (Unk_021C07D4->unk_5A || Unk_021C07D4->unk_56) {
        return;
    }

    v0 = sub_020338EC();

    if (v0 != -1) {
        Unk_021C07D4->unk_49 = v0;
        sub_02036C94(sub_02036EDC, 32);
        return;
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    v0 = sub_0203394C();

    if (v0 != -1) {
        Unk_021C07D4->unk_49 = v0;
        sub_02036C94(sub_02036EDC, 32);
        return;
    }

    sub_02036C94(sub_02036FA4, 0);
}

static void sub_02036EDC(void)
{
    sub_02033A5C();

    if (sub_02033898(Unk_021C07D4->unk_49) != 0) {
        if (sub_02034984(Unk_021C07D4->unk_49)) {
            sub_02036C94(sub_02036F44, 100);
            return;
        }
    }

    if (CommSys_CheckError()) {
        sub_02036C94(sub_02036FA4, 0);
    } else if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
    } else {
        sub_02036C94(sub_02036FA4, 0);
    }
}

static void sub_02036F44(void)
{
    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        CommSys_Reset();
        CommSys_SetAlone(0);
        CommSys_EnableSendMovementData();
        sub_02036C94(sub_020370B8, 0);
        return;
    }

    if (CommSys_CheckError()) {
        sub_02036C94(sub_02036FA4, 0);
        return;
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    sub_02036C94(sub_02036FA4, 0);
}

static void sub_02036FA4(void)
{
    if (!sub_020336D4()) {
        return;
    }

    sub_02036C94(sub_02036FD4, 0);
}

static void sub_02036FBC(void)
{
    if (!sub_020336D4()) {
        return;
    }

    sub_02036C94(sub_02036E08, 0);
}

static void sub_02036FD4(void)
{
    TrainerInfo *v0;

    if (!sub_02033E30()) {
        return;
    }

    CommSys_SetAlone(1);

    if (CommSys_InitServer(0, Unk_021C07D4->unk_4E, 500, 1)) {
        u32 v1 = MATH_Rand32(&Unk_021C07D4->unk_0C, 40 / 2);

        Unk_021C07D4->unk_4E = 0;
        sub_02036C94(sub_02037040, 40 / 2 + v1);
    }
}

static void sub_02037040(void)
{
    if (sub_020360E8()) {
        Unk_021C07D4->unk_4E = 1;
        sub_02036C94(sub_02037094, 0);
        return;
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    if (Unk_021C07D4->unk_55) {
        return;
    }

    if (sub_020336D4()) {
        sub_02036C94(sub_02036FBC, 2);
    }
}

static void sub_02037094(void)
{
    CommSys_SetAlone(0);
    sub_02033EA8(1);
    CommSys_EnableSendMovementData();
    sub_02036C94(sub_020370B4, 0);
}

static void sub_020370B4(void)
{
    return;
}

static void sub_020370B8(void)
{
    return;
}

static void sub_020370BC(void)
{
    if (!sub_020389B8()) {
        if (!sub_02033E30()) {
            return;
        }

        CommSys_SetAlone(1);
        CommSys_EnableSendMovementData();
        sub_02033794(1);
    } else {
        (void)0;
    }

    sub_02036C94(sub_02037330, 0);
}

static void sub_020370EC(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommSys_Reset();
    sub_02036C94(sub_020370BC, 0);
}

static void sub_02037108(void)
{
    if (!sub_020334A4()) {
        return;
    }

    sub_02033794(0);
    CommSys_Reset();
    sub_02036C94(sub_02036D80, 0);
}

static void sub_0203712C(void)
{
    if (!sub_020336D4()) {
        return;
    }

    sub_02036C94(sub_02036D80, 0);
}

static void sub_02037144(void)
{
    TrainerInfo *v0;

    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    CommInfo_Init(Unk_021C07D4->unk_28, Unk_021C07D4->unk_30);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_0203718C, 0);
    }
}

static void sub_0203718C(void)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return;
    }

    sub_02036C94(sub_020371A8, 0);
}

static void sub_020371A8(void)
{
    if (!CommSys_IsInitialized()) {
        sub_02036C94(sub_02037334, 0);
    }
}

static void sub_020371C0(void)
{
    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    CommInfo_Init(Unk_021C07D4->unk_28, Unk_021C07D4->unk_30);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037208, 0);
    }
}

static void sub_02037208(void)
{
    sub_02033A5C();
}

static void sub_02037210(void)
{
    sub_02033A5C();

    if (sub_02034984(Unk_021C07D4->unk_49)) {
        sub_02036C94(sub_02037238, 10);
    }
}

static void sub_02037238(void)
{
    if (CommSys_CheckError()) {
        sub_02036C94(sub_02037270, 0);
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId()) && (0 != CommSys_CurNetId())) {
        sub_02036C94(sub_020372C4, 0);
    }
}

static void sub_02037270(void)
{
    sub_020336D4();
    sub_02036C94(sub_02037284, 2);
}

static void sub_02037284(void)
{
    TrainerInfo *v0;

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037210, 10);
    }
}

static void sub_020372C4(void)
{
    if (!CommSys_IsInitialized()) {
        sub_02036C94(sub_02037334, 0);
    }
}

static void sub_020372DC(void)
{
    sub_020336D4();
    sub_02036C94(sub_020372F0, 2);
}

static void sub_020372F0(void)
{
    TrainerInfo *v0;

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037208, 10);
    }
}

static void sub_02037330(void)
{
    return;
}

static void sub_02037334(void)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    sub_02036734();
}

static void sub_02037344(void)
{
    sub_02036C94(sub_020373B8, 5);
}

static void sub_02037354(void)
{
    if (CommSys_ConnectedCount() <= 1) {
        sub_02032160(0);
        CommSys_ResetDS();
        sub_02036C94(sub_02037474, 0);
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    sub_02032160(0);
    CommSys_ResetDS();
    sub_02036C94(sub_02037474, 0);
}

static void sub_0203739C(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommSys_Reset();
    sub_02036C94(sub_02037474, 0);
}

static void sub_020373B8(void)
{
    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
    }

    if (!sub_020336D4()) {
        return;
    }

    if (Unk_021C07D4->unk_40 != 0) {
        return;
    }

    CommSys_Delete();
    sub_02036C94(sub_02037334, 0);
}

static void sub_020373F0(void)
{
    void *v0;

    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    sub_02031FA4(Unk_021C07D4->unk_46);
    CommInfo_Init(Unk_021C07D4->unk_28, NULL);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037444, 32 * 2);
    }
}

static void sub_02037444(void)
{
    int v0;

    sub_02033A5C();

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    if (!sub_020336D4()) {
        return;
    }

    sub_02036C94(sub_0203748C, 0);
}

static void sub_02037474(void)
{
    if (!sub_020336D4()) {
        return;
    }

    sub_02036C94(sub_0203748C, 0);
}

static void sub_0203748C(void)
{
    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitServer(0, Unk_021C07D4->unk_4E, 512, 1)) {
        u32 v1 = MATH_Rand32(&Unk_021C07D4->unk_0C, 40 * 2);

        CommSys_SwitchTransitionTypeToParallel();
        Unk_021C07D4->unk_4E = 0;
        sub_02036C94(sub_020374F4, 10000);
    }
}

static void sub_020374F4(void)
{
    if (sub_02034148()) {
        (void)0;
    } else {
        if (sub_020360E8()) {
            Unk_021C07D4->unk_4E = 1;
            sub_02039734();
            sub_02036C94(sub_02037790, 0);
            return;
        }

        if (Unk_021C07D4->unk_40 != 0) {
            Unk_021C07D4->unk_40--;
            return;
        }
    }

    if (sub_020336D4()) {
        sub_02036C94(sub_0203754C, 0);
    }
}

static void sub_0203754C(void)
{
    u32 v1;

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        v1 = MATH_Rand32(&Unk_021C07D4->unk_0C, 32);
        sub_02036C94(sub_02037444, v1);
    }
}

static void sub_020375A4(void)
{
    if (!sub_020336D4()) {
        return;
    }

    sub_02036C94(sub_020375BC, 0);
}

static void sub_020375BC(void)
{
    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_020375E8, 100);
    }
}

static void sub_020375E8(void)
{
    if (sub_02033898(Unk_021C07D4->unk_49) != 0) {
        if (sub_02034984(Unk_021C07D4->unk_49)) {
            sub_02036C94(sub_0203764C, 100);
            return;
        }
    }

    if (CommSys_CheckError()) {
        sub_02036C94(sub_02037740, 0);
    } else if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
    } else {
        sub_02036C94(sub_02037740, 0);
    }
}

static void sub_0203764C(void)
{
    if (CommSys_CheckError()) {
        sub_02036C94(sub_02037740, 0);
        return;
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        Unk_021C07D4->unk_48 = 0;
        sub_02036C94(sub_020376A8, 120);
        return;
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    sub_02036C94(sub_02037740, 0);
}

static void sub_020376A8(void)
{
    if (CommSys_CheckError()) {
        sub_02036C94(sub_02037740, 0);
        return;
    }

    if (Unk_021C07D4->unk_48 == 2) {
        sub_02036C94(sub_0203773C, 0);
        return;
    }

    if (Unk_021C07D4->unk_48 == 1) {
        CommInfo_SendBattleRegulation();
        sub_02036C94(sub_02037724, 0);
        return;
    }

    if (Unk_021C07D4->unk_40 > (120 - 10)) {
        CommSys_SendDataFixedSize(6, Unk_02100A20);
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    sub_02036C94(sub_02037740, 0);
}

static void sub_02037724(void)
{
    if (CommSys_CheckError()) {
        sub_02036C94(sub_02037740, 0);
        return;
    }
}

static void sub_0203773C(void)
{
    return;
}

static void sub_02037740(void)
{
    Unk_021C07D4->unk_48 = 0;

    if (!sub_020336D4()) {
        return;
    }

    if (Unk_021C07D4->unk_44 != 0) {
        Unk_021C07D4->unk_44--;
        sub_02036C94(sub_020375BC, 0);
    } else {
        sub_02036C94(sub_0203773C, 0);
    }
}

static void sub_02037790(void)
{
    if (!sub_020360E8()) {
        if (!sub_02038938()) {
            if (sub_020336D4()) {
                sub_02036C94(sub_0203754C, 0);
            }
        }
    } else {
        if (CommSys_CurNetId() == 0) {
            CommInfo_ServerSendArray();
        }
    }

    if (CommSys_CheckError()) {
        if (!sub_02038938()) {
            sub_02036C94(sub_02037740, 0);
            return;
        }
    }
}

static void sub_020377E4(void)
{
    u32 v1;

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitServer(0, Unk_021C07D4->unk_4E, 512, 0)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037330, 0);
    }
}

void sub_0203781C(void)
{
    Unk_021C07D4->unk_4A = 13;

    if (CommSys_CurNetId() == 0) {
        u8 v0 = 0;
        CommSys_SendDataFixedSize(10, &v0);
    } else {
        u8 v0 = 0;
        CommSys_SendDataFixedSize(10, &v0);
    }
}

void sub_02037854(int param0)
{
    Unk_021C07D4->unk_49 = param0;
    Unk_021C07D4->unk_44 = 3;
    sub_02036C94(sub_020378F8, 0);
}

void sub_02037878(void)
{
    Unk_021C07D4->unk_4A = 7;
}

void sub_02037888(int param0)
{
    Unk_021C07D4->unk_49 = param0;
    Unk_021C07D4->unk_4A = 7;
    Unk_021C07D4->unk_44 = 3;

    sub_02039734();
    sub_02036C94(sub_020375A4, 0);
}

void sub_020378B8(void)
{
    Unk_021C07D4->unk_4A = 26;
}

void sub_020378C8(int param0)
{
    Unk_021C07D4->unk_49 = param0;
    Unk_021C07D4->unk_4A = 26;
    Unk_021C07D4->unk_44 = 3;

    sub_02039734();
    sub_02036C94(sub_020375A4, 0);
}

static void sub_020378F8(void)
{
    if (sub_020336D4()) {
        sub_02036C94(sub_02037910, 0);
    }
}

static void sub_02037910(void)
{
    if (!sub_02033E30()) {
        return;
    }

    Unk_021C07D4->unk_4A = 13;

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToServerClient();
        sub_02036C94(sub_0203794C, 100);
    }
}

static void sub_0203794C(void)
{
    if (sub_02033898(Unk_021C07D4->unk_49) != 0) {
        if (sub_02034984(Unk_021C07D4->unk_49)) {
            sub_02036C94(sub_020379D0, 100);
            return;
        }
    }

    if (CommSys_CheckError() || (Unk_021C07D4->unk_40 == 0)) {
        Unk_021C07D4->unk_44--;

        if (Unk_021C07D4->unk_44 == 0) {
            sub_02036C94(sub_0203773C, 0);
        } else {
            sub_02036C94(sub_020378F8, 0);
        }
    } else if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
    }
}

static void sub_020379D0(void)
{
    if (Unk_021C07D4->unk_40 > 90) {
        Unk_021C07D4->unk_40--;
        return;
    }

    if (CommSys_CheckError()) {
        Unk_021C07D4->unk_44--;

        if (Unk_021C07D4->unk_44 == 0) {
            sub_02036C94(sub_0203773C, 0);
        } else {
            sub_02036C94(sub_020378F8, 0);
        }

        return;
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        sub_02036C94(sub_02037724, 0);
        return;
    }

    if (Unk_021C07D4->unk_40 != 0) {
        Unk_021C07D4->unk_40--;
        return;
    }

    Unk_021C07D4->unk_44--;

    if (Unk_021C07D4->unk_44 == 0) {
        sub_02036C94(sub_0203773C, 0);
    } else {
        sub_02036C94(sub_020378F8, 0);
    }
}

void sub_02037A78(int param0, int param1, void *param2, void *param3)
{
    int v0;
    u8 *v1 = param2;
    BOOL v2 = 1;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    v2 = 1;

    for (v0 = 0; v0 < sizeof(Unk_02100A20); v0++) {
        if (v1[v0] != Unk_02100A20[v0]) {
            v2 = 0;
            break;
        }
    }

    if (v2 && (!Unk_021C07D4->unk_53)) {
        Unk_02100A30[0] = param0;
        sub_02035B48(7, Unk_02100A30);
        return;
    }

    Unk_02100A28[0] = param0;
    sub_02035B48(7, Unk_02100A28);
}

void sub_02037AD8(int param0, int param1, void *param2, void *param3)
{
    u8 v0;
    int v1;
    u8 *v2 = param2;
    BOOL v3 = 1;

    for (v1 = 1; v1 < sizeof(Unk_02100A30); v1++) {
        if (v2[v1] != Unk_02100A30[v1]) {
            v3 = 0;
            break;
        }
    }

    if (v3) {
        v0 = v2[0];

        if (v0 == CommSys_CurNetId()) {
            Unk_021C07D4->unk_48 = 1;
        }

        return;
    }

    v3 = 1;

    for (v1 = 1; v1 < sizeof(Unk_02100A28); v1++) {
        if (v2[v1] != Unk_02100A28[v1]) {
            v3 = 0;
            break;
        }
    }

    if (v3) {
        v0 = v2[0];

        if (v0 == (u8)CommSys_CurNetId()) {
            Unk_021C07D4->unk_48 = 2;
        }

        return;
    }
}

int sub_02037B54(void)
{
    return sizeof(Unk_02100A20);
}

void sub_02037B58(int param0)
{
    if (Unk_021C07D4) {
        Unk_021C07D4->unk_46 = param0;
        sub_02031FA4(param0);
    }
}

static void sub_02037B70(void)
{
    sub_02033A5C();
}

static void sub_02037B78(void)
{
    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    CommInfo_Init(Unk_021C07D4->unk_28, NULL);

    if (CommSys_InitClient(1, 1, 32)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037B70, 0);
    }
}

void sub_02037BC0(SaveData *param0)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0x7000);
    sub_020366A0(param0, 14);

    Unk_021C07D4->unk_4B = 0;

    sub_02036C94(sub_02037B78, 0);
}

void sub_02037BFC(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    sub_02036C94(sub_020373B8, 5);
}

BOOL sub_02037C18(void)
{
    int v0;
    u32 v1[] = {
        (u32)sub_02037B70, 0
    };
    u32 v2 = (u32)Unk_021C07D4->unk_24;

    if (Unk_021C07D4 == NULL) {
        return 0;
    }

    for (v0 = 0; v1[v0] != 0; v0++) {
        if (v2 == v1[v0]) {
            return 1;
        }
    }

    return 0;
}

static void sub_02037C5C(u32 param0, int param1)
{
    switch (param0) {
    case 0x333:
        if (param1 == 15) {
            Unk_021C07D4->unk_54 |= 0x1;
        }
        break;
    case 0x400318:
        Unk_021C07D4->unk_54 |= 0x1;
        break;
    case 0x400131:
        Unk_021C07D4->unk_54 |= 0x2;
        break;
    case 0x400286:
        Unk_021C07D4->unk_54 |= 0x4;
        break;
    }
}

static void sub_02037CE4(void)
{
    if (CommSys_InitClient(1, 1, 32)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037B70, 0);
    }
}

static void sub_02037D08(void)
{
    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 0);
    CommInfo_Init(Unk_021C07D4->unk_28, NULL);
    sub_020320FC(sub_02037C5C);
    sub_02036C94(sub_02037CE4, 0);
}

void sub_02037D48(SaveData *param0)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(3, 15, 0x7000);
    sub_020366A0(param0, 17);
    Unk_021C07D4->unk_4B = 0;
    sub_02036C94(sub_02037D08, 0);
}

void sub_02037D84(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    sub_02036C94(sub_020373B8, 5);
}

u8 sub_02037DA0(void)
{
    return Unk_021C07D4->unk_54;
}

BOOL sub_02037DB0(void)
{
    CommSys_StartShutdown();

    if (Unk_021C07D4 == NULL) {
        return 1;
    }

    if ((Unk_021C07D4->unk_4A == 24) || (Unk_021C07D4->unk_4A == 25) || (Unk_021C07D4->unk_4A == 36)) {
        ov4_021D2184();
        return 1;
    } else if (sub_020389B8()) {
        if (Unk_021C07D4->unk_4A == 33) {
            sub_02036C94(sub_02038D80, 0);
        } else {
            sub_02036C94(sub_02038314, 0);
        }
    } else {
        sub_02036C94(sub_020370EC, 0);
    }

    return 0;
}

static void sub_02037E20(void)
{
    TrainerInfo *v0;

    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    CommInfo_Init(Unk_021C07D4->unk_28, NULL);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_0203718C, 0);
    }
}

static void sub_02037E68(void)
{
    if (!sub_020334A4()) {
        return;
    }

    CommServerClient_Init(Unk_021C07D4->unk_2C, 1);
    CommInfo_Init(Unk_021C07D4->unk_28, NULL);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_02037208, 0);
    }
}

static void sub_02037EB0(void)
{
    return;
}

static void sub_02037EB4(void)
{
    int v0;

    v0 = ov4_021D12D4(0);

    if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 3)) {
        (void)0;
    }
}

static void sub_02037ED0(void)
{
    return;
}

static void sub_02037ED4(void)
{
    return;
}

static void sub_02037ED8(void)
{
    int v0, v1;

    CommSys_SetWifiConnected(1);

    v0 = ov4_021D12D4(0);

    if ((v0 >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > v0)) {
        sub_02036C94(sub_02037ED4, 0);
    } else if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 3)) {
        sub_02036C94(sub_02037EB4, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 4)) {
        if (Unk_021C07D4->unk_4F) {
            sub_02036C94(sub_02037EB0, 0);
        } else {
            sub_02036C94(sub_02037ED0, 0);
        }
    } else if (v0 == ((DWC_ERROR_NUM) + 1)) {
        if (Unk_021C07D4->unk_4F) {
            sub_02036C94(sub_02037EB0, 0);
        } else {
            sub_02036C94(sub_02037ED0, 0);
        }
    }

    if (Unk_021C07D4->unk_4F) {
        if (Unk_021C07D4->unk_47 != CommSys_ConnectedCount()) {
            sub_02036C94(sub_02037EB0, 0);
        }
    }
}

void sub_02037F94(int param0, int param1, int param2)
{
    int v0;

    if (Unk_021C07D4) {
        if ((param0 == ((DWC_ERROR_NUM) + 6)) || (param0 == ((DWC_ERROR_NUM) + 5))) {
            v0 = param0;
        } else {
            v0 = -param0;
        }

        Unk_021C07D4->unk_34.unk_00 = v0;
        Unk_021C07D4->unk_34.unk_04 = param1;
        Unk_021C07D4->unk_34.unk_08 = param2;
    }
}

static void sub_02037FBC(void)
{
    int v0 = ov4_021D12D4(0);

    if ((v0 >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > v0)) {
        sub_02036C94(sub_02037ED4, 0);
    } else if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    } else if (v0 == (DWC_ERROR_NUM)) {
        sub_02036C94(sub_02037ED8, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 1)) {
        sub_02036C94(sub_02037ED0, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 2)) {
        sub_02036C94(sub_02037ED4, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 4)) {
        sub_02036C94(sub_02037ED0, 0);
    }
}

static void sub_0203802C(void)
{
    int v0 = ov4_021D12D4(1);

    if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    } else {
        int v1 = ov4_021D2248(Unk_021C07D4->unk_4D, CommLocal_MaxMachines(Unk_021C07D4->unk_4A) + 1, 0);

        switch (v1) {
        case 0:
            CommSys_Reset();

            if (Unk_021C07D4->unk_4D < 0) {
                (void)0;
            } else {
                (void)0;
            }

            sub_02036C94(sub_02037FBC, 0);
            break;
        case -1:
        case -2:
            break;
        case -3:
            sub_02036C94(sub_02037EB0, 0);
            break;
        }
    }
}

int sub_020380A0(int param0)
{
    if (Unk_021C07D4->unk_24 != sub_02037FBC) {
        return 0;
    }

    ov4_021D1104(sub_020351F8, sub_0203509C);
    Unk_021C07D4->unk_4D = param0;
    sub_02036C94(sub_0203802C, 0);
    return 1;
}

int sub_020380E4(void)
{
    if (Unk_021C07D4->unk_24 == sub_02037FBC) {
        return 0;
    }

    if (Unk_021C07D4->unk_24 == sub_02037ED8) {
        return 1;
    }

    if (Unk_021C07D4->unk_24 == sub_02037EB4) {
        return 3;
    }

    if (Unk_021C07D4->unk_24 == sub_02037ED0) {
        return 4;
    }

    if (Unk_021C07D4->unk_24 == sub_02037ED4) {
        return 5;
    }

    if (Unk_021C07D4->unk_24 == sub_02038DEC) {
        return 0;
    }

    if (Unk_021C07D4->unk_24 == sub_02038DCC) {
        return 1;
    }

    if (Unk_021C07D4->unk_24 == sub_02038E84) {
        return 3;
    }

    return 2;
}

static void sub_02038164(void)
{
    int v0;
    int v1;

    ov4_021D1104(sub_020351F8, sub_0203509C);

    v0 = ov4_021D2248(-1, 4, 1);

    switch (v0) {
    case 0:
        Unk_021C07D4->unk_58 = 0;
        CommSys_Reset();
        sub_02036C94(sub_02037FBC, 0);
        break;
    case -1:
    case -2:
        break;
    case -3:
        sub_02036C94(sub_02037EB0, 0);
        break;
    case -4:
        return;
    }

    v1 = ov4_021D1B5C();

    if (v1 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    } else if (v1 == ((DWC_ERROR_NUM) + 6)) {
        sub_02036C94(sub_02037EB0, 0);
    }
}

static void sub_020381F0(void)
{
    int v0;

    CommSys_SetWifiConnected(0);

    if (ov4_021D20B0(Unk_021C07D4->unk_4C)) {
        if (ov4_021D2134()) {
            CommInfo_Delete();

            sub_02036C94(sub_02038164, 0);
            return;
        }
    }

    v0 = ov4_021D12D4(0);

    if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    }
}

void sub_02038240(int param0, int param1, void *param2, void *param3)
{
    if (CommSys_CurNetId() == 0) {
        Unk_021C07D4->unk_4C = 0;
        sub_02036C94(sub_020381F0, 0);
    } else {
        Unk_021C07D4->unk_4C = 1;
        sub_02036C94(sub_020381F0, 0);
    }

    Unk_021C07D4->unk_58 = 1;
}

BOOL sub_02038284(void)
{
    return Unk_021C07D4->unk_58;
}

BOOL sub_02038294(void)
{
    u32 v0 = (u32)Unk_021C07D4->unk_24;

    if (v0 == (u32)sub_02038164) {
        return 1;
    }

    if (v0 == (u32)sub_02038C68) {
        return 1;
    }

    return 0;
}

BOOL sub_020382C0(void)
{
    u32 v0 = (u32)Unk_021C07D4->unk_24;

    if (v0 == (u32)sub_02037FBC) {
        return 1;
    }

    if (v0 == (u32)sub_02038164) {
        return 1;
    }

    if (v0 == (u32)sub_02038C68) {
        return 1;
    }

    return 0;
}

UnkStruct_ov65_0222F6EC *sub_020382F8(void)
{
    GF_ASSERT(Unk_021C07D4);
    return &Unk_021C07D4->unk_34;
}

static void sub_02038314(void)
{
    int v0;

    CommSys_SetWifiConnected(0);

    if (ov4_021D20B0(0)) {
        ov4_021D2134();
        sub_02036C94(sub_020373B8, 0);
    }

    v0 = ov4_021D12D4(0);

    if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    }
}

void sub_02038350(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    ResetUnlock(1);
    CommInfo_Delete();
    sub_02036C94(sub_020373B8, 5);
}

void sub_02038378(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    Unk_021C07D4->unk_4C = 0;
    sub_02036C94(sub_020381F0, 0);
}

void sub_02038398(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    CommMan_SetErrorHandling(0, 1);

    if (CommSys_CurNetId() == 0) {
        Unk_021C07D4->unk_4C = 0;
    } else {
        Unk_021C07D4->unk_4C = 1;
    }

    sub_02036C94(sub_020381F0, 0);
}

void sub_020383D4(void)
{
    u8 v0 = CommSys_CurNetId();

    CommSys_SendDataFixedSize(21, &v0);
}

BOOL sub_020383E8(void)
{
    if (Unk_021C07D4) {
        u32 v0 = (u32)Unk_021C07D4->unk_24;

        if (v0 == (u32)sub_02037EB0) {
            return 1;
        }

        if ((v0 == (u32)sub_02037EB4) && Unk_021C07D4->unk_4F) {
            return 1;
        }

        if ((v0 == (u32)sub_02038E84) && Unk_021C07D4->unk_4F) {
            return 1;
        }
    }

    return 0;
}

void sub_02038438(SaveData *param0)
{
    if (!Unk_021C07D4) {
        Heap_CreateAtEnd(3, 15, 0x100);
        Unk_021C07D4 = (UnkStruct_021C07D4 *)Heap_AllocFromHeap(15, sizeof(UnkStruct_021C07D4));
        MI_CpuFill8(Unk_021C07D4, 0, sizeof(UnkStruct_021C07D4));
        Unk_021C07D4->unk_4A = 24;
        Unk_021C07D4->unk_51 = 1;
        Unk_021C07D4->unk_28 = param0;
        CommMan_SetErrorHandling(0, 1);
        ResetLock(1);
    }
}

void sub_0203848C(void)
{
    if (Unk_021C07D4) {
        ResetUnlock(1);
        CommMan_SetErrorHandling(0, 0);
        Heap_FreeToHeap(Unk_021C07D4);
        Unk_021C07D4 = NULL;
        Heap_Destroy(15);
    }
}

void sub_020384C0(SaveData *param0)
{
    if (!Unk_021C07D4) {
        Heap_CreateAtEnd(3, 15, 0x100);
        Unk_021C07D4 = (UnkStruct_021C07D4 *)Heap_AllocFromHeap(15, sizeof(UnkStruct_021C07D4));
        MI_CpuFill8(Unk_021C07D4, 0, sizeof(UnkStruct_021C07D4));
        Unk_021C07D4->unk_4A = 25;
        Unk_021C07D4->unk_51 = 1;
        Unk_021C07D4->unk_28 = param0;
        CommMan_SetErrorHandling(0, 1);
        ResetLock(1);
    }
}

void sub_02038514(void)
{
    if (Unk_021C07D4) {
        ResetUnlock(1);
        CommMan_SetErrorHandling(0, 0);
        Heap_FreeToHeap(Unk_021C07D4);
        Unk_021C07D4 = NULL;
        Heap_Destroy(15);
    }
}

void sub_02038548(SaveData *param0)
{
    if (!Unk_021C07D4) {
        Heap_CreateAtEnd(3, 15, 0x100);
        Unk_021C07D4 = (UnkStruct_021C07D4 *)Heap_AllocFromHeap(15, sizeof(UnkStruct_021C07D4));
        MI_CpuFill8(Unk_021C07D4, 0, sizeof(UnkStruct_021C07D4));
        Unk_021C07D4->unk_4A = 36;
        Unk_021C07D4->unk_51 = 1;
        Unk_021C07D4->unk_28 = param0;
        CommMan_SetErrorHandling(0, 1);
        ResetLock(1);
    }
}

void sub_0203859C(void)
{
    if (Unk_021C07D4) {
        ResetUnlock(1);
        CommMan_SetErrorHandling(0, 0);
        Heap_FreeToHeap(Unk_021C07D4);
        Unk_021C07D4 = NULL;
        Heap_Destroy(15);
    }
}

BOOL sub_020385D0(void)
{
    int v0, v1;
    DWCErrorType v2;

    if (!Unk_021C07D4) {
        return 0;
    }

    if ((Unk_021C07D4->unk_4A == 24) || (Unk_021C07D4->unk_4A == 36)) {
        v1 = DWC_GetLastErrorEx(&v0, &v2);

        if (v1 != 0) {
            DWC_ClearError();
            return 1;
        }
    } else if (Unk_021C07D4->unk_4A == 25) {
        v1 = DWC_GetLastErrorEx(&v0, &v2);

        if (v1 != 0) {
            if (v2 == DWC_ETYPE_FATAL) {
                return 1;
            }
        }
    }

    return 0;
}

static void sub_0203862C(void)
{
    int v0 = ov4_021D0FEC();

    Unk_021C07D4->unk_40--;

    if (v0 == ((DWC_ERROR_NUM) + 7)) {
        if (Unk_021C07D4->unk_4A == 33) {
            BOOL v1;

            v1 = ov66_02232714(Unk_021C07D4->unk_5C);

            if (v1 == TRUE) {
                Unk_021C07D4->unk_60 = 1;
                sub_02036C94(sub_02038C1C, Unk_021C07D4->unk_40);
                return;
            } else {
                sub_02036C94(sub_02038DC8, 0);
                return;
            }
        } else {
            sub_02036C94(sub_02038164, 0);
            return;
        }
    } else if (v0 != 0) {
        sub_02036C94(sub_02037EB0, 0);
    }

    if (Unk_021C07D4->unk_40 <= 0) {
        sub_02036C94(sub_02037EB0, 0);
    }
}

static void sub_020386B4(void)
{
    TrainerInfo *v0;

    if (!sub_020334A4()) {
        return;
    }

    {
        Heap_CreateAtEnd(3, 49, (0x2A000 + 0xA000 + 0x1400));
    }

    if (CommSys_InitServer(1, 1, 512, 1)) {
        ov4_021D0D80(Unk_021C07D4->unk_28, 49, (0x2B000 + 0x1400), CommLocal_MaxMachines(Unk_021C07D4->unk_4A) + 1);
        ov4_021D2170(sub_020389FC);
        CommSys_SwitchTransitionTypeToParallel();
        sub_02036C94(sub_0203862C, (30 * 60 * 2));
    }
}

void *sub_0203871C(SaveData *param0, int param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param0);

    if (CommSys_IsInitialized()) {
        return NULL;
    }

    ResetLock(1);
    Heap_CreateAtEnd(3, 15, 0x7080);
    sub_020366A0(param0, 23);
    Unk_021C07D4->unk_00 = Heap_AllocFromHeap(15, param1);
    MI_CpuFill8(Unk_021C07D4->unk_00, 0, param1);

    Unk_021C07D4->unk_4B = 0;
    Unk_021C07D4->unk_28 = param0;

    sub_02036C94(sub_020386B4, 0);

    return Unk_021C07D4->unk_00;
}

void sub_0203878C(SaveData *param0, const void *param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param0);

    if (CommSys_IsInitialized()) {
        return;
    }

    ResetLock(1);
    Heap_CreateAtEnd(3, 15, 0x7080);
    sub_020366A0(param0, 33);

    Unk_021C07D4->unk_00 = NULL;
    Unk_021C07D4->unk_5C = param1;
    Unk_021C07D4->unk_60 = 0;
    Unk_021C07D4->unk_4B = 0;
    Unk_021C07D4->unk_28 = param0;

    sub_02036C94(sub_02038BA8, 0);
}

void sub_020387E8(void)
{
    if (Unk_021C07D4 == NULL) {
        return;
    }

    sub_02036C94(sub_02038D80, 0);
}

BOOL sub_02038804(void)
{
    if (Unk_021C07D4 == NULL) {
        return 0;
    }

    return Unk_021C07D4->unk_60;
}

BOOL sub_0203881C(void)
{
    if (Unk_021C07D4) {
        u32 v0 = (u32)Unk_021C07D4->unk_24;

        if (v0 == (u32)sub_02038DC8) {
            return 1;
        }
    }

    return 0;
}

void sub_0203883C(UnkEnum_ov66_02232F38 param0)
{
    GF_ASSERT(Unk_021C07D4);
    GF_ASSERT(sub_020382C0() == 1);

    if (ov66_02233184(param0) == 0) {
        ov66_02232F38(param0, 4);
        sub_02036C94(sub_02038DEC, 0);
    } else {
        ov66_02233260(param0);
        sub_02036C94(sub_02038DEC, 0);
    }
}

void sub_0203888C(void)
{
    u32 v0;

    if (ov66_02233374() == 1) {
        ov66_02233064();
    }

    ov66_0223361C();
    sub_02036C94(sub_02038E38, 0);
}

u32 sub_020388AC(void)
{
    if (Unk_021C07D4) {
        u32 v0 = (u32)Unk_021C07D4->unk_24;

        if (v0 == (u32)sub_02038DCC) {
            return 2;
        } else if (v0 == (u32)sub_02038DEC) {
            return 1;
        } else if (v0 == (u32)sub_02038E38) {
            return 3;
        }
    }

    return 0;
}

void *sub_020388E8(void)
{
    return Unk_021C07D4->unk_00;
}

void CommMan_SetErrorHandling(BOOL param0, BOOL param1)
{
    if (Unk_021C07D4) {
        Unk_021C07D4->unk_4F = param0;
        Unk_021C07D4->unk_50 = param1;

        if (param0) {
            Unk_021C07D4->unk_47 = CommSys_ConnectedCount();
        } else {
            Unk_021C07D4->unk_47 = 0;
        }
    }

    sub_02033EA8(param0);
    sub_02033ED4(param0);
}

BOOL sub_02038938(void)
{
    if (Unk_021C07D4) {
        if (Unk_021C07D4->unk_59 != 0) {
            return 1;
        }

        return Unk_021C07D4->unk_50;
    }

    return 0;
}

int sub_0203895C(void)
{
    if (Unk_021C07D4) {
        return Unk_021C07D4->unk_4A;
    }

    return 1;
}

int sub_02038974(void)
{
    if (Unk_021C07D4) {
        return Unk_021C07D4->unk_4B;
    }

    return 0;
}

void sub_0203898C(u8 *param0)
{
    MI_CpuCopy8(param0, Unk_021C07D4->unk_04, NELEMS(Unk_021C07D4->unk_04));
}

void sub_020389A0(u8 *param0)
{
    MI_CpuCopy8(Unk_021C07D4->unk_04, param0, NELEMS(Unk_021C07D4->unk_04));
}

BOOL sub_020389B8(void)
{
    return CommLocal_IsWifiGroup(sub_0203895C());
}

void sub_020389C4(u8 param0)
{
    if (Unk_021C07D4) {
        Unk_021C07D4->unk_52 = param0;
    }
}

u8 sub_020389D8(void)
{
    if (HeapCanaryOK()) {
        return 0;
    }

    if (Unk_021C07D4) {
        return Unk_021C07D4->unk_52;
    }

    return 0;
}

void sub_020389FC(int param0)
{
    int v0 = 0;

    sub_02039834(0, 1, param0);

    while (TRUE) {
        v0++;
    }
}

void sub_02038A0C(void)
{
    int v0 = 0;

    sub_02039834(0, 4, 0);

    while (TRUE) {
        v0++;
    }
}

void sub_02038A1C(int param0, BGL *param1)
{
    return;
}

void sub_02038A20(int param0)
{
    if (sub_02038938()) {
        if (CommSys_CheckError() || sub_020383E8() || sub_020385D0()
            || (Unk_021C07D4->unk_59 != 0) || sub_0203881C()) {
            if (!HeapCanaryOK()) {
                if (!sub_020389D8()) {
                    sub_0200569C();
                    SaveData_SaveStateCancel(Unk_021C07D4->unk_28);
                    gCoreSys.unk_64 = 1;

                    if (Unk_021C07D4->unk_59 == 3) {
                        sub_020389C4(3);
                    } else if ((Unk_021C07D4->unk_4A == 25) || (Unk_021C07D4->unk_4A == 15) || (Unk_021C07D4->unk_4A == 36)) {
                        sub_020389C4(2);
                    } else {
                        sub_020389C4(1);
                    }
                }
            }
        }
    }
}

BOOL sub_02038AB8(void)
{
    if (sub_02033DFC() || !CommMan_IsInitialized()) {
        return 1;
    }

    if (!sub_020332D0()) {
        return 1;
    }

    return 0;
}

BOOL Link_SetErrorState(int param0)
{
    if (Unk_021C07D4) {
        Unk_021C07D4->unk_59 = param0;
        CommSys_StartShutdown();
        return 1;
    }

    return 0;
}

void sub_02038B00(void)
{
    Unk_021C07D4->unk_4A = 29;
    ov4_021D1104(sub_020352C0, sub_020352C0);
}

void sub_02038B20(void)
{
    Unk_021C07D4->unk_4A = 35;
    ov4_021D1104(sub_020352C0, sub_020352C0);
}

void sub_02038B40(void)
{
    Unk_021C07D4->unk_4A = 33;
    ov4_021D1104(sub_020352C0, sub_020352C0);
}

void sub_02038B60(void)
{
    Unk_021C07D4->unk_4A = 23;
    ov4_021D1104(sub_020351F8, sub_0203509C);
}

void sub_02038B84(void)
{
    Unk_021C07D4->unk_4A = 19;
    ov4_021D1104(sub_020351F8, sub_0203509C);
}

static void sub_02038BA8(void)
{
    if (!sub_020334A4()) {
        return;
    }

    {
        Heap_CreateAtEnd(3, 49, 0x60000);
    }

    if (CommSys_InitServer(1, 1, 512, 1)) {
        ov4_021D0D80(Unk_021C07D4->unk_28, 49, 0x58000, CommLocal_MaxMachines(Unk_021C07D4->unk_4A) + 1);
        ov4_021D2170(sub_020389FC);
        CommSys_SwitchTransitionTypeToParallel();
        ov4_021D2584(0);
        sub_0203632C(0);
        sub_02036C94(sub_0203862C, (30 * 60 * 2));
    }
}

static void sub_02038C1C(void)
{
    BOOL v0;

    Unk_021C07D4->unk_40--;

    if (Unk_021C07D4->unk_40 <= 0) {
        sub_02036C94(sub_02037EB0, 0);
        return;
    }

    CommSys_SetWifiConnected(1);

    v0 = sub_02038D44();

    if (v0 == 0) {
        return;
    }

    v0 = ov66_02232804();

    if (v0) {
        sub_02036C94(sub_02038C68, 0);
    }
}

static void sub_02038C68(void)
{
    BOOL v0;

    v0 = sub_02038D44();

    if (v0 == 0) {
        return;
    }
}

static BOOL sub_02038C74(int param0)
{
    BOOL v0 = 1;

    if ((param0 >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > param0)) {
        sub_02036C94(sub_02037ED4, 0);
        v0 = 0;
    } else if (param0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
        v0 = 0;
    } else if (param0 == ((DWC_ERROR_NUM) + 3)) {
        sub_02036C94(sub_02038E84, 0);
        v0 = 0;
    } else if (param0 == ((DWC_ERROR_NUM) + 4)) {
        v0 = 0;

        if (Unk_021C07D4->unk_4F) {
            sub_02036C94(sub_02037EB0, 0);
        } else {
            sub_02036C94(sub_02037ED0, 0);
        }
    }

    if (Unk_021C07D4->unk_4F) {
        if (Unk_021C07D4->unk_47 != CommSys_ConnectedCount()) {
            sub_02036C94(sub_02037EB0, 0);
            v0 = 0;
        }
    }

    return v0;
}

static BOOL sub_02038D10(void)
{
    UnkEnum_ov66_0223287C v0;
    BOOL v1 = 1;

    v0 = ov66_022325D8();

    switch (v0) {
    case UnkEnum_ov66_0223287C_00:
    case UnkEnum_ov66_0223287C_01:
    case UnkEnum_ov66_0223287C_02:
    case UnkEnum_ov66_0223287C_03:
        break;

    case UnkEnum_ov66_0223287C_04:
        sub_02036C94(sub_02038DC8, 0);
        v1 = 0;
        break;
    }

    return v1;
}

static BOOL sub_02038D44(void)
{
    int v0;
    BOOL v1;

    v0 = ov4_021D12D4(0);

    v1 = sub_02038C74(v0);

    if (v1 == 0) {
        return v1;
    }

    v1 = sub_02038D10();
    return v1;
}

static BOOL sub_02038D5C(u32 *param0)
{
    int v0;
    BOOL v1;

    v0 = ov4_021D12D4(0);

    if (v0 >= (DWC_ERROR_NUM)) {
        *param0 = v0;
    } else {
        *param0 = 0;

        v1 = sub_02038C74(v0);

        if (v1 == 0) {
            return v1;
        }
    }

    v1 = sub_02038D10();
    return v1;
}

static void sub_02038D80(void)
{
    ov66_0223282C();
    sub_02036C94(sub_02038D94, 0);
}

static void sub_02038D94(void)
{
    BOOL v0;

    ov4_021D12D4(0);
    sub_02038D10();

    v0 = ov66_02232854();

    if (v0) {
        ResetUnlock(1);
        CommInfo_Delete();
        sub_02036C94(sub_020373B8, 5);
        CommSys_SetWifiConnected(0);
    }
}

static void sub_02038DC8(void)
{
    return;
}

static void sub_02038DCC(void)
{
    BOOL v0;

    sub_02038D44();

    v0 = ov66_02233164();

    if (v0 == 1) {
        ov66_0223361C();
        sub_02036C94(sub_02038E38, 0);
    }
}

static void sub_02038DEC(void)
{
    BOOL v0;
    u32 v1;

    v0 = ov66_02233164();

    if (v0 == 1) {
        ov66_0223361C();
        sub_02036C94(sub_02038E38, 0);
        return;
    }

    sub_02038D5C(&v1);

    switch (v1) {
    case 0:
        break;
    case (DWC_ERROR_NUM):
        sub_02036C94(sub_02038DCC, 0);
        break;
    default:
        ov66_0223361C();
        sub_02036C94(sub_02038C68, 0);
        break;
    }
}

static void sub_02038E38(void)
{
    BOOL v0;
    int v1;

    v1 = ov4_021D12D4(1);

    if (v1 < 0) {
        sub_02036C94(sub_02037EB0, 0);
        return;
    }

    v0 = sub_02038D10();

    if (v0 == 0) {
        return;
    }

    if (ov4_021D20B0(0)) {
        v1 = ov4_021D2134();

        if (v1) {
            CommSys_Reset();
            sub_0203632C(0);
            sub_02036C94(sub_02038C68, 0);
        }
    }
}

static void sub_02038E84(void)
{
    int v0;

    v0 = ov4_021D12D4(0);

    if (v0 < 0) {
        sub_02036C94(sub_02037EB0, 0);
    }

    sub_02038D10();
}

void sub_02038EA4(void)
{
    Unk_021C07D4->unk_4A = 34;
}

BOOL sub_02038EB4(void)
{
    if (Unk_021C07D4 && (Unk_021C07D4->unk_4A == 14)) {
        return 0;
    }

    return CommSys_IsInitialized();
}
