#include <nitro.h>
#include <string.h>
#include <dwc.h>


#include "overlay077/const_ov77_021D742C.h"
#include "constdata/const_020F2DBC.h"

#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_02089438.h"
#include "overlay098/struct_ov98_02246E88.h"
#include "overlay098/struct_ov98_02247168.h"

#include "unk_02000C88.h"
#include "unk_020041CC.h"
#include "game_overlay.h"
#include "overlay_manager.h"
#include "unk_02017728.h"
#include "heap.h"
#include "error_handling.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_02030CE8.h"
#include "unk_02033200.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"
#include "unk_020890F4.h"
#include "unk_02099550.h"
#include "overlay065/ov65_0222DCE0.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay098/ov98_02246C20.h"
#include "overlay098/ov98_022471C8.h"
#include "overlay098/ov98_022499C8.h"

FS_EXTERN_OVERLAY(overlay65);
FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay94);
FS_EXTERN_OVERLAY(overlay98);

typedef void *(* UnkFuncPtr_ov98_02249B4C)(UnkStruct_ov98_02246E88 *);
typedef void (* UnkFuncPtr_ov98_02249B4C_1)(UnkStruct_ov98_02246E88 *);

static void ov98_02246E08(UnkStruct_ov98_02246E88 * param0);
static void ov98_02246E54(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02246EAC(DWCAllocType param0, u32 param1, int param2);
static void ov98_02246ED4(DWCAllocType param0, void * param1, u32 param2);
static void * ov98_02246FBC(UnkStruct_ov98_02246E88 * param0);
static void ov98_02246FC0(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02247168(UnkStruct_ov98_02246E88 * param0);
static void ov98_02247198(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02246FC4(UnkStruct_ov98_02246E88 * param0);
static void ov98_02246FFC(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02247070(UnkStruct_ov98_02246E88 * param0);
static void ov98_022470B8(UnkStruct_ov98_02246E88 * param0);
static void * ov98_022470F8(UnkStruct_ov98_02246E88 * param0);
static void ov98_02247134(UnkStruct_ov98_02246E88 * param0);

static NNSFndHeapHandle Unk_ov98_02249E20;

const OverlayManagerTemplate Unk_ov98_02249BAC = {
    ov98_02246C20,
    ov98_02246C98,
    ov98_02246DC0,
    0xFFFFFFFF
};

static const OverlayManagerTemplate Unk_ov98_02249B3C = {
    ov98_022471C8,
    ov98_022473D8,
    ov98_02247440,
    0xFFFFFFFF
};

static const OverlayManagerTemplate Unk_ov98_02249B2C = {
    ov65_0222E2A8,
    ov65_0222E3FC,
    ov65_0222E548,
    FS_OVERLAY_ID(overlay65)
};

static const struct {
    UnkFuncPtr_ov98_02249B4C unk_00;
    UnkFuncPtr_ov98_02249B4C_1 unk_04;
    const OverlayManagerTemplate * unk_08;
    int unk_0C;
} Unk_ov98_02249B4C[] = {
    {ov98_02246FBC, ov98_02246FC0, &Unk_ov98_02249B3C, 0x0},
    {ov98_02246FC4, ov98_02246FFC, &Unk_020F2DBC, 0x0},
    {ov98_02247070, ov98_022470B8, &Unk_020F2DBC, 0x0},
    {ov98_022470F8, ov98_02247134, &Unk_020F2DBC, 0x0},
    {ov98_022470F8, ov98_02247134, &Unk_020F2DBC, 0x0},
    {ov98_02247168, ov98_02247198, &Unk_ov98_02249B2C, 0x1}
};

int ov98_02246C20 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov98_02246E88 * v0;

    Heap_Create(3, 108, 0x28000);
    Heap_Create(0, 91, 0x300);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov98_02246E88), 108);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02246E88));
    v0->unk_04 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    v0->unk_08 = SaveData_Options(v0->unk_04);
    v0->unk_114 = Strbuf_Init(100, 108);
    v0->unk_118 = Strbuf_Init(100, 108);
    sub_02004550(17, 1175, 1);
    v0->unk_8C = 0;

    return 1;
}

int ov98_02246C98 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov98_02246E88 * v0 = OverlayManager_Data(param0);
    BOOL v1;

    if (v0->unk_80 == 1) {
        DWC_UpdateConnection();
        ov94_0223B15C();
        sub_020397B0(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    }

    switch (*param1) {
    case 0:
        ov98_02246E08(v0);
        *param1 = 1;
        break;
    case 1:
        if (sub_020334A4()) {
            Unk_ov98_02249E20 = v0->unk_10;
            DWC_SetMemFunc(ov98_02246EAC, ov98_02246ED4);
            v0->unk_80 = 1;
            *param1 = 2;
        }
        break;
    case 2:
        v0->unk_00 = OverlayManager_New(Unk_ov98_02249B4C[v0->unk_8C].unk_08, Unk_ov98_02249B4C[v0->unk_8C].unk_00(v0), 108);
        v0->unk_84 = v0->unk_8C;
        v0->unk_8C = 6;
        *param1 = 3;
        break;
    case 3:
        if (OverlayManager_Exec(v0->unk_00) == 1) {
            Unk_ov98_02249B4C[v0->unk_84].unk_04(v0);
            OverlayManager_Free(v0->unk_00);

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

int ov98_02246DC0 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov98_02246E88 * v0 = OverlayManager_Data(param0);

    ov98_02246E54(v0);

    Strbuf_Free(v0->unk_118);
    Strbuf_Free(v0->unk_114);
    OverlayManager_FreeData(param0);
    Heap_Destroy(108);
    Heap_Destroy(91);
    sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);

    return 1;
}

static void ov98_02246E08 (UnkStruct_ov98_02246E88 * param0)
{
    if (param0->unk_80 == 0) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay94), 2);

        param0->unk_0C = Heap_AllocFromHeap(108, 0x20000 + 32);
        param0->unk_10 = NNS_FndCreateExpHeap((void *)(((u32)param0->unk_0C + 31) / 32 * 32), 0x20000);

        sub_02099550();
        sub_020995B4();
        sub_02033478();
        SleepUnlock(4);
    }
}

static void ov98_02246E54 (UnkStruct_ov98_02246E88 * param0)
{
    if (param0->unk_80 == 1) {
        NNS_FndDestroyExpHeap(param0->unk_10);

        Heap_FreeToHeap(param0->unk_0C);
        sub_020995C4();
        sub_02099560();
        sub_020334CC();
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay94));

        param0->unk_80 = 0;
    }
}

void ov98_02246E88 (UnkStruct_ov98_02246E88 * param0, int param1, int param2)
{
    param0->unk_8C = param1;
    param0->unk_90 = param2;
}

void ov98_02246E94 (UnkStruct_ov98_02246E88 * param0)
{
    param0->unk_8C = 6;
}

void ov98_02246E9C (UnkStruct_ov98_02246E88 * param0, int param1)
{
    param0->unk_7E = param1;
}

int ov98_02246EA4 (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_7E;
}

static void * ov98_02246EAC (DWCAllocType param0, u32 param1, int param2)
{
#pragma unused( param0 )
    void * v0;
    OSIntrMode v1;
    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov98_02249E20, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void ov98_02246ED4 (DWCAllocType param0, void * param1, u32 param2)
{
#pragma unused( param0, param2 )
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(Unk_ov98_02249E20, param1);
    OS_RestoreInterrupts(v0);
}

void ov98_02246EF8 (UnkStruct_ov98_02246E88 * param0)
{
    char * v0;

    v0 = Heap_AllocFromHeap(108, sizeof(char) * 100);

    ov98_022499C8(param0->unk_114, v0, 108);
    sub_02030D38(param0->unk_04, v0);
    Heap_FreeToHeap(v0);
}

void ov98_02246F24 (UnkStruct_ov98_02246E88 * param0)
{
    sub_02030D5C(param0->unk_04, 1, param0->unk_7C);
    sub_02030D5C(param0->unk_04, 2, param0->unk_10C);
}

void ov98_02246F48 (UnkStruct_ov98_02246E88 * param0)
{
    sub_02030D5C(param0->unk_04, 3, param0->unk_108);
}

void ov98_02246F5C (UnkStruct_ov98_02246E88 * param0)
{
    u32 v0;

    v0 = sub_02030E48(param0->unk_04, &param0->unk_9C);
    ov98_02246F94(param0, v0);
}

void ov98_02246F74 (UnkStruct_ov98_02246E88 * param0)
{
    ov98_022499C8(param0->unk_114, param0->unk_9C.unk_1C, 108);
}

void ov98_02246F88 (UnkStruct_ov98_02246E88 * param0)
{
    param0->unk_9C.unk_5A = param0->unk_10C;
}

void ov98_02246F94 (UnkStruct_ov98_02246E88 * param0, u32 param1)
{
    param0->unk_7C = param1;
}

u32 ov98_02246F9C (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_10C;
}

u32 ov98_02246FA4 (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_108;
}

void ov98_02246FAC (UnkStruct_ov98_02246E88 * param0, int param1)
{
    param0->unk_110 = param1;
}

int ov98_02246FB4 (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_110;
}

static void * ov98_02246FBC (UnkStruct_ov98_02246E88 * param0)
{
    return param0;
}

static void ov98_02246FC0 (UnkStruct_ov98_02246E88 * param0)
{
    return;
}

void * ov98_02246FC4 (UnkStruct_ov98_02246E88 * param0)
{    
    int v0[4];
    
    v0[0] = 4;
    v0[1] = 4;
    v0[2] = 4;
    v0[3] = 4;
    
    param0->unk_98 = sub_02089400(108, 16, v0, SaveData_Options(param0->unk_04), 4, 0);
    return param0->unk_98;
}

void ov98_02246FFC (UnkStruct_ov98_02246E88 * param0)
{    
    UnkStruct_02089438 * v0 = param0->unk_98;
    if (ov98_02249A80(v0->unk_1C, 108)) {
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

void * ov98_02247070 (UnkStruct_ov98_02246E88 * param0)
{    
    int v0[4];
    
    v0[0] = 3;
    v0[1] = 4;
    v0[2] = 0;
    v0[3] = 0;
    
    param0->unk_98 = sub_0208941C(108, 7, v0, SaveData_Options(param0->unk_04), 5, 1, 1, param0->unk_7C);
    return param0->unk_98;
}

void ov98_022470B8 (UnkStruct_ov98_02246E88 * param0)
{
    UnkStruct_02089438 * v0 = param0->unk_98;
    BOOL v1;
    param0->unk_10C = Strbuf_AtoI(v0->unk_1C, &v1) % 10000;
    GF_ASSERT(v1);
    sub_02089438(v0);
    ov98_02246E88(param0, 0, 0);
}

void * ov98_022470F8 (UnkStruct_ov98_02246E88 * param0)
{    
    int v0[4];
    
    v0[0] = 4;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 0;
    
    param0->unk_98 = sub_02089400(108, 4, v0, SaveData_Options(param0->unk_04), 6, 0);
    return param0->unk_98;
}

void ov98_02247134 (UnkStruct_ov98_02246E88 * param0)
{
    UnkStruct_02089438 * v0 = param0->unk_98;
    BOOL v1;
    param0->unk_108 = Strbuf_AtoI(v0->unk_1C, &v1);
    GF_ASSERT(v1);
    sub_02089438(v0);
    ov98_02246E88(param0, 0, 0);
}

static void * ov98_02247168 (UnkStruct_ov98_02246E88 * param0)
{
    UnkStruct_ov98_02247168 * v0;

    v0 = Heap_AllocFromHeap(108, sizeof(UnkStruct_ov98_02247168));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02247168));

    v0->unk_00 = param0->unk_04;
    v0->unk_04 = 1;

    param0->unk_80 = 0;
    param0->unk_98 = v0;

    return param0->unk_98;
}

static void ov98_02247198 (UnkStruct_ov98_02246E88 * param0)
{
    UnkStruct_ov98_02247168 * v0;

    v0 = param0->unk_98;

    if (sub_02039074(param0->unk_04)) {
        sub_0206AF5C(SaveData_GetVarsFlags(param0->unk_04));
    }

    Heap_FreeToHeap(param0->unk_98);
    ov98_02246E88(param0, 0, 0);
}
