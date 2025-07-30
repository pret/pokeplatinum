#include "overlay097/ov97_0222D04C.h"

#include <nitro.h>
#include <string.h>

#include "overlay097/mystery_gift_app.h"
#include "overlay097/ov97_0222D2F8.h"

#include "communication_information.h"
#include "communication_system.h"
#include "heap.h"
#include "main.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"

typedef void (*UnkFuncPtr_ov97_0222D0A4)(void);

typedef struct {
    MysteryGiftAppData *unk_00;
    MATHRandContext32 unk_04;
    SysTask *unk_1C;
    UnkFuncPtr_ov97_0222D0A4 unk_20;
    u16 unk_24;
    u8 unk_26;
    u8 unk_27;
    TrainerInfo *unk_28[16];
    WonderCard unk_68;
    u8 unk_3C0;
    u8 unk_3C1[16];
} UnkStruct_ov97_0223F1A4;

static void ov97_0222D19C(SysTask *param0, void *param1);
static void ov97_0222D0B4(void);
static void ov97_0222D0F0(void);
static void ov97_0222D128(void);
static void ov97_0222D140(void);
static void ov97_0222D144(void);
static void ov97_0222D164(void);
static void ov97_0222D198(void);

static UnkStruct_ov97_0223F1A4 *Unk_ov97_0223F1A4 = NULL;

static void ov97_0222D04C(MysteryGiftAppData *param0)
{
    void *v0;

    if (Unk_ov97_0223F1A4 != NULL) {
        return;
    }

    ov97_0222D2F8((void *)param0);

    Unk_ov97_0223F1A4 = (UnkStruct_ov97_0223F1A4 *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(UnkStruct_ov97_0223F1A4));
    MI_CpuFill8(Unk_ov97_0223F1A4, 0, sizeof(UnkStruct_ov97_0223F1A4));

    Unk_ov97_0223F1A4->unk_24 = 50;
    Unk_ov97_0223F1A4->unk_1C = SysTask_Start(ov97_0222D19C, NULL, 10);
    Unk_ov97_0223F1A4->unk_00 = param0;

    CommSys_Seed(&Unk_ov97_0223F1A4->unk_04);
}

static void ov97_0222D0A4(UnkFuncPtr_ov97_0222D0A4 param0, int param1)
{
    Unk_ov97_0223F1A4->unk_20 = param0;
    Unk_ov97_0223F1A4->unk_24 = param1;
}

static void ov97_0222D0B4(void)
{
    int v0;

    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        Unk_ov97_0223F1A4->unk_3C1[v0] = 0;
    }

    CommInfo_SendBattleRegulation();
    ov97_0222D0A4(ov97_0222D0F0, 0);
}

static void ov97_0222D0F0(void)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if ((Unk_ov97_0223F1A4->unk_28[v0] == NULL) && (CommSys_IsPlayerConnected(v0) == 1)) {
            Unk_ov97_0223F1A4->unk_28[v0] = CommInfo_TrainerInfo(v0);

            if (Unk_ov97_0223F1A4->unk_28[v0]) {
                (void)0;
            }
        }
    }
}

static void ov97_0222D128(void)
{
    if (!sub_020334A4()) {
        return;
    }

    ov97_0222D0A4(ov97_0222D140, 0);
}

static void ov97_0222D140(void)
{
    (void)0;
}

static void ov97_0222D144(void)
{
    sub_02036948(Unk_ov97_0223F1A4->unk_27);
    ov97_0222D0A4(ov97_0222D164, 0);
}

static void ov97_0222D164(void)
{
    if (!sub_0203699C()) {
        return;
    }

    Unk_ov97_0223F1A4->unk_3C0 = 0;

    CommInfo_SendBattleRegulation();
    CommTiming_StartSync(0xAB);

    ov97_0222D0A4(ov97_0222D198, 0);
}

static void ov97_0222D198(void)
{
    return;
}

void ov97_0222D19C(SysTask *param0, void *param1)
{
    if (Unk_ov97_0223F1A4 == NULL) {
        SysTask_Done(param0);
    } else {
        if (Unk_ov97_0223F1A4->unk_20 != NULL) {
            UnkFuncPtr_ov97_0222D0A4 v0 = Unk_ov97_0223F1A4->unk_20;

            if (!Unk_ov97_0223F1A4->unk_26) {
                v0();
            }
        }
    }
}

void ov97_0222D1C4(MysteryGiftAppData *param0, SaveData *saveData, int param2)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    sub_02036BE8(saveData, param2);

    ov97_0222D04C(param0);
    ov97_0222D0A4(ov97_0222D0B4, 0);
}

void ov97_0222D1F0(const void *param0, int param1)
{
    sub_02035A3C(22, param0, param1);
}

void ov97_0222D200(MysteryGiftAppData *param0, int param1)
{
    SaveData *saveData;

    if (CommSys_IsInitialized()) {
        return;
    }

    saveData = ((ApplicationArgs *)ApplicationManager_Args(MysteryGiftApp_GetApplicationManager()))->saveData;
    sub_02036C1C(saveData, param1);

    ov97_0222D04C(param0);
    ov97_0222D0A4(ov97_0222D128, 0);
}

void ov97_0222D234(int param0)
{
    Unk_ov97_0223F1A4->unk_27 = param0;
    ov97_0222D0A4(ov97_0222D144, 0);
}

int ov97_0222D250(MysteryGiftAppData *param0)
{
    int v0;
    MysteryGiftEventHeader *v1;

    for (v0 = 0; v0 < 16; v0++) {
        v1 = (MysteryGiftEventHeader *)sub_02034168(v0);

        if (v1) {
            if (v1->id) {
                memcpy(&param0->eventData.header, v1, sizeof(MysteryGiftEventHeader));
                return v0;
            }
        }
    }

    return -1;
}

void ov97_0222D284(int param0, int param1, void *param2, void *param3)
{
    if (Unk_ov97_0223F1A4->unk_27 != param0) {
        return;
    }

    Unk_ov97_0223F1A4->unk_3C0 = 1;
}

int ov97_0222D2A0(void)
{
    return Unk_ov97_0223F1A4->unk_3C0;
}

int ov97_0222D2B0(void)
{
    return sizeof(WonderCard);
}

u8 *ov97_0222D2B8(int param0, void *param1, int param2)
{
    return (u8 *)&Unk_ov97_0223F1A4->unk_68;
}

void ov97_0222D2C4(int param0, int param1, void *param2, void *param3)
{
    Unk_ov97_0223F1A4->unk_3C1[param0] = 1;
}

void ov97_0222D2DC(void)
{
    Heap_FreeExplicit(HEAP_ID_COMMUNICATION, Unk_ov97_0223F1A4);
    Unk_ov97_0223F1A4 = NULL;
    sub_02036978();
}
