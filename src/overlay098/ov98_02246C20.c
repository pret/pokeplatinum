#include "overlay098/ov98_02246C20.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02089438.h"

#include "overlay065/ov65_0222DCE0.h"
#include "overlay077/const_ov77_021D742C.h"
#include "overlay094/networking.h"
#include "overlay098/ov98_022471C8.h"
#include "overlay098/ov98_022499C8.h"
#include "overlay098/struct_ov98_02246E88.h"
#include "overlay098/struct_ov98_02247168.h"

#include "error_handling.h"
#include "game_overlay.h"
#include "heap.h"
#include "main.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "sound.h"
#include "strbuf.h"
#include "system.h"
#include "system_flags.h"
#include "unk_02030CE8.h"
#include "unk_02033200.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"
#include "unk_020890F4.h"
#include "unk_02099550.h"
#include "vars_flags.h"

#include "constdata/const_020F2DBC.h"

FS_EXTERN_OVERLAY(overlay65);
FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay94);
FS_EXTERN_OVERLAY(overlay98);

typedef void *(*UnkFuncPtr_ov98_02249B4C)(UnkStruct_ov98_02246E88 *);
typedef void (*UnkFuncPtr_ov98_02249B4C_1)(UnkStruct_ov98_02246E88 *);

static void ov98_02246E08(UnkStruct_ov98_02246E88 *param0);
static void ov98_02246E54(UnkStruct_ov98_02246E88 *param0);
static void *ov98_02246EAC(DWCAllocType param0, u32 param1, int param2);
static void ov98_02246ED4(DWCAllocType param0, void *param1, u32 param2);
static void *ov98_02246FBC(UnkStruct_ov98_02246E88 *param0);
static void ov98_02246FC0(UnkStruct_ov98_02246E88 *param0);
static void *ov98_02247168(UnkStruct_ov98_02246E88 *param0);
static void ov98_02247198(UnkStruct_ov98_02246E88 *param0);
static void *ov98_02246FC4(UnkStruct_ov98_02246E88 *param0);
static void ov98_02246FFC(UnkStruct_ov98_02246E88 *param0);
static void *ov98_02247070(UnkStruct_ov98_02246E88 *param0);
static void ov98_022470B8(UnkStruct_ov98_02246E88 *param0);
static void *ov98_022470F8(UnkStruct_ov98_02246E88 *param0);
static void ov98_02247134(UnkStruct_ov98_02246E88 *param0);

static NNSFndHeapHandle Unk_ov98_02249E20;

const ApplicationManagerTemplate gWiiMessageAppTemplate = {
    ov98_02246C20,
    ov98_02246C98,
    ov98_02246DC0,
    0xFFFFFFFF
};

static const ApplicationManagerTemplate Unk_ov98_02249B3C = {
    ov98_022471C8,
    ov98_022473D8,
    ov98_02247440,
    0xFFFFFFFF
};

static const ApplicationManagerTemplate Unk_ov98_02249B2C = {
    ov65_0222E2A8,
    ov65_0222E3FC,
    ov65_0222E548,
    FS_OVERLAY_ID(overlay65)
};

static const struct {
    UnkFuncPtr_ov98_02249B4C unk_00;
    UnkFuncPtr_ov98_02249B4C_1 unk_04;
    const ApplicationManagerTemplate *unk_08;
    int unk_0C;
} Unk_ov98_02249B4C[] = {
    { ov98_02246FBC, ov98_02246FC0, &Unk_ov98_02249B3C, 0x0 },
    { ov98_02246FC4, ov98_02246FFC, &Unk_020F2DBC, 0x0 },
    { ov98_02247070, ov98_022470B8, &Unk_020F2DBC, 0x0 },
    { ov98_022470F8, ov98_02247134, &Unk_020F2DBC, 0x0 },
    { ov98_022470F8, ov98_02247134, &Unk_020F2DBC, 0x0 },
    { ov98_02247168, ov98_02247198, &Unk_ov98_02249B2C, 0x1 }
};

int ov98_02246C20(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov98_02246E88 *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_108, 0x28000);
    Heap_Create(HEAP_ID_SYSTEM, HEAP_ID_91, 0x300);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov98_02246E88), HEAP_ID_108);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02246E88));
    v0->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    v0->options = SaveData_GetOptions(v0->saveData);
    v0->unk_114 = Strbuf_Init(100, HEAP_ID_108);
    v0->unk_118 = Strbuf_Init(100, HEAP_ID_108);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_17, SEQ_WIFILOBBY, 1);
    v0->unk_8C = 0;

    return 1;
}

int ov98_02246C98(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov98_02246E88 *v0 = ApplicationManager_Data(appMan);
    BOOL v1;

    if (v0->unk_80 == 1) {
        DWC_UpdateConnection();
        GTSNetworking_ProcessCurrentRequest();
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    }

    switch (*param1) {
    case 0:
        ov98_02246E08(v0);
        *param1 = 1;
        break;
    case 1:
        if (WirelessDriver_IsReady()) {
            Unk_ov98_02249E20 = v0->unk_10;
            DWC_SetMemFunc(ov98_02246EAC, ov98_02246ED4);
            v0->unk_80 = 1;
            *param1 = 2;
        }
        break;
    case 2:
        v0->appMan = ApplicationManager_New(Unk_ov98_02249B4C[v0->unk_8C].unk_08, Unk_ov98_02249B4C[v0->unk_8C].unk_00(v0), HEAP_ID_108);
        v0->unk_84 = v0->unk_8C;
        v0->unk_8C = 6;
        *param1 = 3;
        break;
    case 3:
        if (ApplicationManager_Exec(v0->appMan) == 1) {
            Unk_ov98_02249B4C[v0->unk_84].unk_04(v0);
            ApplicationManager_Free(v0->appMan);

            if (v0->unk_8C == 6) {
                *param1 = 4;
            } else {
                if (Unk_ov98_02249B4C[v0->unk_8C].unk_0C == 1) {
                    ov98_02246E54(v0);
                    *param1 = 2;
                } else if (v0->unk_80 == 1) {
                    *param1 = 2;
                } else {
                    *param1 = 0;
                }
            }
        }
        break;
    case 4:
        return 1;
    }

    return 0;
}

int ov98_02246DC0(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov98_02246E88 *v0 = ApplicationManager_Data(appMan);

    ov98_02246E54(v0);

    Strbuf_Free(v0->unk_118);
    Strbuf_Free(v0->unk_114);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_108);
    Heap_Destroy(HEAP_ID_91);
    EnqueueApplication(FS_OVERLAY_ID(overlay77), &gTitleScreenAppTemplate);

    return 1;
}

static void ov98_02246E08(UnkStruct_ov98_02246E88 *param0)
{
    if (param0->unk_80 == 0) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay94), 2);

        param0->unk_0C = Heap_AllocFromHeap(HEAP_ID_108, 0x20000 + 32);
        param0->unk_10 = NNS_FndCreateExpHeap((void *)(((u32)param0->unk_0C + 31) / 32 * 32), 0x20000);

        sub_02099550();
        Overlay_LoadHttpOverlay();
        WirelessDriver_Init();
        SleepUnlock(4);
    }
}

static void ov98_02246E54(UnkStruct_ov98_02246E88 *param0)
{
    if (param0->unk_80 == 1) {
        NNS_FndDestroyExpHeap(param0->unk_10);

        Heap_Free(param0->unk_0C);
        Overlay_UnloadHttpOverlay();
        sub_02099560();
        WirelessDriver_Shutdown();
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay94));

        param0->unk_80 = 0;
    }
}

void ov98_02246E88(UnkStruct_ov98_02246E88 *param0, int param1, int param2)
{
    param0->unk_8C = param1;
    param0->unk_90 = param2;
}

void ov98_02246E94(UnkStruct_ov98_02246E88 *param0)
{
    param0->unk_8C = 6;
}

void ov98_02246E9C(UnkStruct_ov98_02246E88 *param0, int param1)
{
    param0->unk_7E = param1;
}

int ov98_02246EA4(UnkStruct_ov98_02246E88 *param0)
{
    return param0->unk_7E;
}

static void *ov98_02246EAC(DWCAllocType param0, u32 param1, int param2)
{
#pragma unused(param0)
    void *v0;
    OSIntrMode v1;
    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov98_02249E20, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void ov98_02246ED4(DWCAllocType param0, void *param1, u32 param2)
{
#pragma unused(param0, param2)
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(Unk_ov98_02249E20, param1);
    OS_RestoreInterrupts(v0);
}

void ov98_02246EF8(UnkStruct_ov98_02246E88 *param0)
{
    char *v0 = Heap_AllocFromHeap(HEAP_ID_108, sizeof(char) * 100);

    ov98_022499C8(param0->unk_114, v0, HEAP_ID_108);
    sub_02030D38(param0->saveData, v0);
    Heap_Free(v0);
}

void ov98_02246F24(UnkStruct_ov98_02246E88 *param0)
{
    sub_02030D5C(param0->saveData, 1, param0->unk_7C);
    sub_02030D5C(param0->saveData, 2, param0->unk_10C);
}

void ov98_02246F48(UnkStruct_ov98_02246E88 *param0)
{
    sub_02030D5C(param0->saveData, 3, param0->unk_108);
}

void ov98_02246F5C(UnkStruct_ov98_02246E88 *param0)
{
    u32 v0 = sub_02030E48(param0->saveData, &param0->unk_9C);
    ov98_02246F94(param0, v0);
}

void ov98_02246F74(UnkStruct_ov98_02246E88 *param0)
{
    ov98_022499C8(param0->unk_114, param0->unk_9C.email, HEAP_ID_108);
}

void ov98_02246F88(UnkStruct_ov98_02246E88 *param0)
{
    param0->unk_9C.unk_5A = param0->unk_10C;
}

void ov98_02246F94(UnkStruct_ov98_02246E88 *param0, u32 param1)
{
    param0->unk_7C = param1;
}

u32 ov98_02246F9C(UnkStruct_ov98_02246E88 *param0)
{
    return param0->unk_10C;
}

u32 ov98_02246FA4(UnkStruct_ov98_02246E88 *param0)
{
    return param0->unk_108;
}

void ov98_02246FAC(UnkStruct_ov98_02246E88 *param0, int param1)
{
    param0->unk_110 = param1;
}

int ov98_02246FB4(UnkStruct_ov98_02246E88 *param0)
{
    return param0->unk_110;
}

static void *ov98_02246FBC(UnkStruct_ov98_02246E88 *param0)
{
    return param0;
}

static void ov98_02246FC0(UnkStruct_ov98_02246E88 *param0)
{
    return;
}

void *ov98_02246FC4(UnkStruct_ov98_02246E88 *param0)
{
    int v0[4];

    v0[0] = 4;
    v0[1] = 4;
    v0[2] = 4;
    v0[3] = 4;

    param0->unk_98 = sub_02089400(HEAP_ID_108, 16, v0, SaveData_GetOptions(param0->saveData), 4, 0);
    return param0->unk_98;
}

void ov98_02246FFC(UnkStruct_ov98_02246E88 *param0)
{
    UnkStruct_02089438 *v0 = param0->unk_98;
    if (ov98_02249A80(v0->unk_1C, HEAP_ID_108)) {
        ov98_02246FAC(param0, 1);
    } else if (ov98_02246FB4(param0) == 2) {
        if (Strbuf_Compare(param0->unk_114, v0->unk_1C) != 0) {
            ov98_02246FAC(param0, 3);
        } else {
            ov98_02246FAC(param0, 0);
        }
    } else {
        Strbuf_Copy(param0->unk_114, v0->unk_1C);
        ov98_02246FAC(param0, 2);
    }

    sub_02089438(v0);
    ov98_02246E88(param0, 0, 0);
}

void *ov98_02247070(UnkStruct_ov98_02246E88 *param0)
{
    int v0[4];

    v0[0] = 3;
    v0[1] = 4;
    v0[2] = 0;
    v0[3] = 0;

    param0->unk_98 = sub_0208941C(HEAP_ID_108, 7, v0, SaveData_GetOptions(param0->saveData), 5, 1, 1, param0->unk_7C);
    return param0->unk_98;
}

void ov98_022470B8(UnkStruct_ov98_02246E88 *param0)
{
    UnkStruct_02089438 *v0 = param0->unk_98;
    BOOL v1;
    param0->unk_10C = Strbuf_AtoI(v0->unk_1C, &v1) % 10000;
    GF_ASSERT(v1);
    sub_02089438(v0);
    ov98_02246E88(param0, 0, 0);
}

void *ov98_022470F8(UnkStruct_ov98_02246E88 *param0)
{
    int v0[4];

    v0[0] = 4;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 0;

    param0->unk_98 = sub_02089400(HEAP_ID_108, 4, v0, SaveData_GetOptions(param0->saveData), 6, 0);
    return param0->unk_98;
}

void ov98_02247134(UnkStruct_ov98_02246E88 *param0)
{
    UnkStruct_02089438 *v0 = param0->unk_98;
    BOOL v1;
    param0->unk_108 = Strbuf_AtoI(v0->unk_1C, &v1);
    GF_ASSERT(v1);
    sub_02089438(v0);
    ov98_02246E88(param0, 0, 0);
}

static void *ov98_02247168(UnkStruct_ov98_02246E88 *param0)
{
    UnkStruct_ov98_02247168 *v0 = Heap_AllocFromHeap(HEAP_ID_108, sizeof(UnkStruct_ov98_02247168));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02247168));

    v0->saveData = param0->saveData;
    v0->unk_04 = 1;

    param0->unk_80 = 0;
    param0->unk_98 = v0;

    return param0->unk_98;
}

static void ov98_02247198(UnkStruct_ov98_02246E88 *param0)
{
    UnkStruct_ov98_02247168 *v0 = param0->unk_98;

    if (WiFiList_HasValidLogin(param0->saveData)) {
        SystemFlag_SetConnectedToWiFi(SaveData_GetVarsFlags(param0->saveData));
    }

    Heap_Free(param0->unk_98);
    ov98_02246E88(param0, 0, 0);
}
