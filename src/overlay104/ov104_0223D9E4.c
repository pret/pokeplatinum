#include "overlay104/ov104_0223D9E4.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    SysTask *unk_00;
    BgConfig *unk_04;
    u16 unk_08[2][2048];
    u8 unk_2008[2][65536];
    u8 unk_22008;
    u8 unk_22009;
} UnkStruct_ov104_0223DB34;

typedef struct {
    SysTask *unk_00;
    PaletteData *unk_04;
    u16 unk_08[3][16];
    u8 unk_68;
    u8 unk_69;
} UnkStruct_ov104_0223DC04;

typedef struct {
    SysTask *unk_00;
    SysTask *unk_04;
    BgConfig *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
} UnkStruct_ov104_0223DA28_sub1;

typedef struct UnkStruct_ov104_0223DA28_t {
    UnkStruct_ov104_0223DB34 *unk_00;
    UnkStruct_ov104_0223DC04 *unk_04;
    UnkStruct_ov104_0223DA28_sub1 *unk_08;
} UnkStruct_ov104_0223DA28;

static UnkStruct_ov104_0223DB34 *ov104_0223DA40(BgConfig *param0);
static void ov104_0223DB34(UnkStruct_ov104_0223DB34 *param0);
static void ov104_0223DB48(SysTask *param0, void *param1);
static UnkStruct_ov104_0223DC04 *ov104_0223DBB8(PaletteData *param0);
static void ov104_0223DC04(UnkStruct_ov104_0223DC04 *param0);
static void ov104_0223DC18(SysTask *param0, void *param1);

static const u16 Unk_ov104_022418B0[] = {
    0x14,
    0x15
};

UnkStruct_ov104_0223DA28 *ov104_0223D9E4(BgConfig *param0, PaletteData *param1)
{
    UnkStruct_ov104_0223DA28 *v0 = Heap_AllocFromHeap(HEAP_ID_94, sizeof(UnkStruct_ov104_0223DA28));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223DA28));

    v0->unk_00 = ov104_0223DA40(param0);
    v0->unk_04 = ov104_0223DBB8(param1);

    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_BGALL | GX_BLEND_PLANEMASK_OBJ), 8, 9);

    return v0;
}

void ov104_0223DA28(UnkStruct_ov104_0223DA28 *param0)
{
    ov104_0223DB34(param0->unk_00);
    ov104_0223DC04(param0->unk_04);
    Heap_FreeToHeap(param0);
}

static UnkStruct_ov104_0223DB34 *ov104_0223DA40(BgConfig *param0)
{
    UnkStruct_ov104_0223DB34 *v0;

    GF_ASSERT(2 == NELEMS(Unk_ov104_022418B0));

    v0 = Heap_AllocFromHeap(HEAP_ID_94, sizeof(UnkStruct_ov104_0223DB34));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223DB34));
    v0->unk_04 = param0;

    {
        NARC *v1;
        void *v2;
        NNSG2dScreenData *v3;
        int v4;

        v1 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_94);

        for (v4 = 0; v4 < 2; v4++) {
            v2 = Graphics_GetScrnDataFromOpenNARC(v1, Unk_ov104_022418B0[v4], 1, &v3, HEAP_ID_94);
            MI_CpuCopy32(v3->rawData, v0->unk_08[v4], 0x1000);
            Heap_FreeToHeap(v2);
        }

        NARC_dtor(v1);
    }

    {
        NARC *v5;
        void *v6;
        NNSG2dCharacterData *v7;

        v5 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_94);

        v6 = Graphics_GetCharDataFromOpenNARC(v5, 14, 1, &v7, HEAP_ID_94);
        MI_CpuCopy32(v7->pRawData, v0->unk_2008[0], v7->szByte);

        Heap_FreeToHeap(v6);

        v6 = Graphics_GetCharDataFromOpenNARC(v5, 15, 1, &v7, HEAP_ID_94);
        MI_CpuCopy32(v7->pRawData, v0->unk_2008[1], v7->szByte);

        Heap_FreeToHeap(v6);
        NARC_dtor(v5);
    }

    v0->unk_00 = SysTask_Start(ov104_0223DB48, v0, (80000 - 500));

    return v0;
}

static void ov104_0223DB34(UnkStruct_ov104_0223DB34 *param0)
{
    SysTask_Done(param0->unk_00);
    Heap_FreeToHeap(param0);
}

static void ov104_0223DB48(SysTask *param0, void *param1)
{
    u32 v0;
    UnkStruct_ov104_0223DB34 *v1 = param1;

    if (v1->unk_22008 < 12) {
        v1->unk_22008++;
        return;
    }

    v1->unk_22008 = 0;

    {
        Bg_LoadTiles(v1->unk_04, 3, v1->unk_2008[v1->unk_22009], 0x10000, 0);
    }

    Bg_LoadTilemapBuffer(v1->unk_04, 3, v1->unk_08[v1->unk_22009], 0x1000);
    Bg_ScheduleTilemapTransfer(v1->unk_04, 3);

    v1->unk_22009 ^= 1;
}

static UnkStruct_ov104_0223DC04 *ov104_0223DBB8(PaletteData *param0)
{
    UnkStruct_ov104_0223DC04 *v0 = Heap_AllocFromHeap(HEAP_ID_94, sizeof(UnkStruct_ov104_0223DC04));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223DC04));

    v0->unk_04 = param0;
    v0->unk_68 = 2;

    {
        u16 *v1;

        v1 = PaletteData_GetUnfadedBuffer(param0, 0);
        MI_CpuCopy16(&v1[16 * 5], v0->unk_08, 3 * 16 * sizeof(u16));
    }

    v0->unk_00 = SysTask_Start(ov104_0223DC18, v0, ((80000 - 500) + 1));

    return v0;
}

static void ov104_0223DC04(UnkStruct_ov104_0223DC04 *param0)
{
    SysTask_Done(param0->unk_00);
    Heap_FreeToHeap(param0);
}

static void ov104_0223DC18(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DC04 *v0 = param1;

    if (v0->unk_69 < 8) {
        v0->unk_69++;
        return;
    }

    v0->unk_69 = 0;
    PaletteData_LoadBuffer(v0->unk_04, v0->unk_08[v0->unk_68], 0, 6 * 16, 0x20);
    v0->unk_68++;

    if (v0->unk_68 >= 3) {
        v0->unk_68 = 0;
    }
}
