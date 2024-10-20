#include "overlay020/ov20_021D4728.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"

typedef struct {
    void *unk_00;
    NNSG2dCellDataBank *unk_04;
    void *unk_08;
    NNSG2dAnimBankData *unk_0C;
} UnkStruct_ov20_021D4B2C;

typedef struct UnkStruct_ov20_021D4AD4_t {
    UnkStruct_ov20_021D2128 *unk_00;
    const UnkStruct_ov20_021D16E8 *unk_04;
    const UnkStruct_020998EC *unk_08;
    BGL *unk_0C;
    CellActorCollection *unk_10;
    CellActor *unk_14;
    CellActor *unk_18;
    UnkStruct_ov20_021D4B2C unk_1C;
    u16 unk_2C[8][77];
    SysTask *unk_4FC;
} UnkStruct_ov20_021D4AD4;

typedef struct {
    UnkStruct_ov20_021D4AD4 *unk_00;
    int unk_04;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_ov20_021D4BA4;

static void ov20_021D4874(UnkStruct_ov20_021D4AD4 *param0, NARC *param1);
static void ov20_021D48C4(UnkStruct_ov20_021D4AD4 *param0, NARC *param1);
static void ov20_021D498C(Window *param0, BGL *param1, const Strbuf *param2, int param3);
static void ov20_021D4A24(UnkStruct_ov20_021D4AD4 *param0, NARC *param1);
static void ov20_021D4AD4(UnkStruct_ov20_021D4AD4 *param0);
static void ov20_021D4AF8(UnkStruct_ov20_021D4B2C *param0, NARC *param1, u32 param2, u32 param3);
static void ov20_021D4B2C(UnkStruct_ov20_021D4B2C *param0);
static void ov20_021D4C40(SysTask *param0, void *param1);
static CellActor *ov20_021D4B40(UnkStruct_ov20_021D4AD4 *param0, NNSG2dImageProxy *param1, NNSG2dImagePaletteProxy *param2, UnkStruct_ov20_021D4B2C *param3, int param4, int param5, int param6, int param7);

UnkStruct_ov20_021D4AD4 *ov20_021D4728(UnkStruct_ov20_021D2128 *param0, const UnkStruct_ov20_021D16E8 *param1, const UnkStruct_020998EC *param2)
{
    UnkStruct_ov20_021D4AD4 *v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D4AD4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov20_021D2E04(param0);
    v0->unk_10 = ov20_021D2E08(param0);
    v0->unk_14 = NULL;
    v0->unk_18 = NULL;
    v0->unk_4FC = NULL;

    return v0;
}

void ov20_021D4764(UnkStruct_ov20_021D4AD4 *param0)
{
    ov20_021D4AD4(param0);
    Heap_FreeToHeap(param0);
}

void ov20_021D4774(UnkStruct_ov20_021D4AD4 *param0, NARC *param1)
{
    sub_02007130(param1, 21, 4, 0, 0x40, 35);
    sub_0200710C(param1, 11, param0->unk_0C, 4, 0, 0, 1, 35);

    ov20_021D4874(param0, param1);
    ov20_021D48C4(param0, param1);

    if (ov20_021D1F94(param0->unk_04) == 0) {
        sub_020198E8(param0->unk_0C, 4, 3, 3, 11, 7, param0->unk_2C[3], 0, 0, 11, 7);
        sub_020198E8(param0->unk_0C, 4, 3, 14, 11, 7, param0->unk_2C[4], 0, 0, 11, 7);
    } else {
        sub_020198E8(param0->unk_0C, 4, 3, 3, 11, 7, param0->unk_2C[0], 0, 0, 11, 7);
        sub_020198E8(param0->unk_0C, 4, 3, 14, 11, 7, param0->unk_2C[7], 0, 0, 11, 7);
    }

    ov20_021D4A24(param0, param1);
    sub_02019448(param0->unk_0C, 4);
}

static void ov20_021D4874(UnkStruct_ov20_021D4AD4 *param0, NARC *param1)
{
    static const u16 v0[] = {
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
    };
    int v1;
    void *v2;
    NNSG2dScreenData *v3;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        v2 = sub_020071D0(param1, v0[v1], 1, &v3, 35);

        if (v2) {
            MI_CpuCopy16(v3->rawData, param0->unk_2C[v1], 77 * 2);
            DC_FlushRange(param0->unk_2C[v1], 77 * 2);
            Heap_FreeToHeap(v2);
        }
    }
}

static void ov20_021D48C4(UnkStruct_ov20_021D4AD4 *param0, NARC *param1)
{
    Strbuf *v0, *v1;
    void *v2;
    NNSG2dCharacterData *v3;

    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_SYSTEM);
    v0 = MessageBank_GetNewStrbufFromNARC(0x1A, 0x1B5, 0xB, 0x23);
    v1 = MessageBank_GetNewStrbufFromNARC(0x1A, 0x1B5, 0xC, 0x23);
    v2 = sub_020071B4(param1, 20, 1, &v3, 0x23);
    if (v2) {
        Window v4;

        Window_Init(&v4);
        v4.unk_00 = param0->unk_0C;
        v4.unk_07 = 11;
        v4.unk_08 = 57;
        v4.unk_0A_15 = 0;
        v4.unk_0C = v3->pRawData;
        ov20_021D498C(&v4, param0->unk_0C, v0, 0);
        v4.unk_0C = (u8 *)(v3->pRawData) + (11 * 7 * 4 * 0x20);
        ov20_021D498C(&v4, param0->unk_0C, v1, 0);
        DC_FlushRange(v3->pRawData, v3->szByte);
        sub_0201958C(param0->unk_0C, 4, v3->pRawData, v3->szByte, 0);
        Heap_FreeToHeap(v2);
    }

    Strbuf_Free(v1);
    Strbuf_Free(v0);
    Font_Free(FONT_SUBSCREEN);
}

static const s16 Unk_ov20_021D52EC[] = {
    22,
    (22 + 56 * 1) - 1,
    (22 + 56 * 2) - 2,
    (22 + 56 * 3) - 1,
};

static void ov20_021D498C(Window *param0, BGL *param1, const Strbuf *param2, int param3)
{
    int v0, v1, v2, v3;
    u32 v4;
    Strbuf *v5;

    v4 = Strbuf_NumLines(param2);
    v5 = Strbuf_Init(32, 35);
    param3 += ((2 - v4) * 16) / 2;

    for (v1 = 0; v1 < v4; v1++) {
        Strbuf_CopyLineNum(v5, param2, v1);
        v2 = Font_CalcCenterAlignment(2, v5, 0, 88);
        for (v0 = 0; v0 < NELEMS(Unk_ov20_021D52EC); v0++) {
            v3 = Unk_ov20_021D52EC[v0] + param3;
            Text_AddPrinterWithParamsAndColor(param0, FONT_SUBSCREEN, v5, v2, v3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 3), NULL);
        }
        param3 += 16;
    }
    Strbuf_Free(v5);
}

static void ov20_021D4A24(UnkStruct_ov20_021D4AD4 *param0, NARC *param1)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dImageProxy v1;

    NNS_G2dInitImagePaletteProxy(&v0);
    NNS_G2dInitImageProxy(&v1);

    sub_0200716C(param1, 25, NNS_G2D_VRAM_TYPE_2DSUB, 0, 35, &v0);
    sub_0200718C(param1, 24, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, 35, &v1);

    ov20_021D4AF8(&(param0->unk_1C), param1, 22, 23);

    param0->unk_14 = ov20_021D4B40(param0, &v1, &v0, &param0->unk_1C, 192, 56, 0, 0);
    CellActor_SetAnim(param0->unk_14, 0);
    CellActor_SetDrawFlag(param0->unk_14, 0);

    param0->unk_18 = ov20_021D4B40(param0, &v1, &v0, &param0->unk_1C, 192, 136, 0, 0);
    CellActor_SetAnim(param0->unk_18, 2);
    CellActor_SetDrawFlag(param0->unk_18, 0);
}

static void ov20_021D4AD4(UnkStruct_ov20_021D4AD4 *param0)
{
    if (param0->unk_14) {
        CellActor_Delete(param0->unk_14);
    }

    if (param0->unk_18) {
        CellActor_Delete(param0->unk_18);
    }

    ov20_021D4B2C(&param0->unk_1C);
}

static void ov20_021D4AF8(UnkStruct_ov20_021D4B2C *param0, NARC *param1, u32 param2, u32 param3)
{
    param0->unk_00 = sub_02007204(param1, param2, 1, &(param0->unk_04), 35);
    param0->unk_08 = sub_02007220(param1, param3, 1, &(param0->unk_0C), 35);
}

static void ov20_021D4B2C(UnkStruct_ov20_021D4B2C *param0)
{
    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0->unk_08);
}

static CellActor *ov20_021D4B40(UnkStruct_ov20_021D4AD4 *param0, NNSG2dImageProxy *param1, NNSG2dImagePaletteProxy *param2, UnkStruct_ov20_021D4B2C *param3, int param4, int param5, int param6, int param7)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    CellActor *v2;

    v0.imageProxy = param1;
    v0.paletteProxy = param2;
    v0.cellBank = param3->unk_04;
    v0.cellAnimBank = param3->unk_0C;
    v0.priority = param6;
    v0.charData = NULL;
    v0.multiCellBank = NULL;
    v0.multiCellAnimBank = NULL;
    v0.isVRamTransfer = 0;

    v1.collection = param0->unk_10;
    v1.resourceData = &v0;
    v1.position.x = param4 * FX32_ONE;
    v1.position.y = (param5 + 192) * FX32_ONE;
    v1.position.z = 0;
    v1.priority = param7;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = 35;

    v2 = CellActorCollection_Add(&v1);

    if (v2) {
        CellActor_SetAnimateFlag(v2, 1);
        CellActor_SetAnimSpeed(v2, ((FX32_ONE * 2) / 2));
    }

    return v2;
}

void ov20_021D4BA4(UnkStruct_ov20_021D4AD4 *param0)
{
    UnkStruct_ov20_021D4BA4 *v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D4BA4));

    if (v0) {
        static const struct {
            u16 unk_00;
            u16 unk_02;
            u16 unk_04;
            u16 unk_06;
            u16 unk_08;
            u16 unk_0A;
            u16 unk_0C;
        } v1[] = {
            { 0x1, 0x3, 0x3, 0x3, 0x4, 0x3, 0xE },
            { 0x5, 0x7, 0x3, 0xE, 0x0, 0x3, 0x3 }
        };
        int v2 = ov20_021D1F94(param0->unk_04);

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_08 = 0;
        v0->unk_0A = v1[v2].unk_00;
        v0->unk_0C = v1[v2].unk_02;
        v0->unk_0E = v1[v2].unk_04;
        v0->unk_10 = v1[v2].unk_06;
        v0->unk_12 = v1[v2].unk_08;
        v0->unk_14 = v1[v2].unk_0A;
        v0->unk_16 = v1[v2].unk_0C;

        param0->unk_4FC = SysTask_Start(ov20_021D4C40, v0, 1);
    } else {
        param0->unk_4FC = NULL;
    }
}

BOOL ov20_021D4C2C(UnkStruct_ov20_021D4AD4 *param0)
{
    return param0->unk_4FC == NULL;
}

static void ov20_021D4C40(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D4BA4 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_0E, v0->unk_10, 11, 7, v0->unk_00->unk_2C[v0->unk_0A], 0, 0, 11, 7);
        sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_14, v0->unk_16, 11, 7, v0->unk_00->unk_2C[v0->unk_12], 0, 0, 11, 7);
        sub_02019448(v0->unk_00->unk_0C, 4);

        v0->unk_0A++;
        v0->unk_04++;
        break;
    case 1:
        if (++(v0->unk_08) >= 2) {
            sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_0E, v0->unk_10, 11, 7, v0->unk_00->unk_2C[v0->unk_0A], 0, 0, 11, 7);
            sub_02019448(v0->unk_00->unk_0C, 4);

            v0->unk_08 = 0;
            v0->unk_0A++;
            v0->unk_04++;
        }
        break;
    case 2:
        if (++(v0->unk_08) >= 4) {
            sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_0E, v0->unk_10, 11, 7, v0->unk_00->unk_2C[v0->unk_0A], 0, 0, 11, 7);
            sub_02019448(v0->unk_00->unk_0C, 4);
            v0->unk_04++;
        }
        break;
    case 3:
        v0->unk_00->unk_4FC = NULL;
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
    }
}

void ov20_021D4DBC(UnkStruct_ov20_021D4AD4 *param0, BOOL param1)
{
    if (param1) {
        CellActor_SetDrawFlag(param0->unk_14, ov20_021D204C(param0->unk_04));
        CellActor_SetDrawFlag(param0->unk_18, ov20_021D2060(param0->unk_04));
    } else {
        CellActor_SetDrawFlag(param0->unk_14, 0);
        CellActor_SetDrawFlag(param0->unk_18, 0);
    }
}

void ov20_021D4DF4(UnkStruct_ov20_021D4AD4 *param0, int param1, int param2)
{
    switch (param1) {
    case 0:
        switch (param2) {
        case 1:
            CellActor_SetAnim(param0->unk_14, 1);
            break;
        case 0:
            CellActor_SetAnim(param0->unk_14, 0);
            break;
        }
        break;
    case 1:
        switch (param2) {
        case 1:
            CellActor_SetAnim(param0->unk_18, 3);
            break;
        case 0:
            CellActor_SetAnim(param0->unk_18, 2);
            break;
        }
        break;
    }
}
