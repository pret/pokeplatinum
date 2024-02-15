#include <nitro.h>
#include <string.h>

#include "enums.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"

#include "unk_02002F38.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "overlay104/ov104_0223D9E4.h"

typedef struct {
    SysTask * unk_00;
    BGL * unk_04;
    u16 unk_08[2][2048];
    u8 unk_2008[2][65536];
    u8 unk_22008;
    u8 unk_22009;
} UnkStruct_ov104_0223DB34;

typedef struct {
    SysTask * unk_00;
    PaletteData * unk_04;
    u16 unk_08[3][16];
    u8 unk_68;
    u8 unk_69;
} UnkStruct_ov104_0223DC04;

typedef struct {
    SysTask * unk_00;
    SysTask * unk_04;
    BGL * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
} UnkStruct_ov104_0223DA28_sub1;

typedef struct UnkStruct_ov104_0223DA28_t {
    UnkStruct_ov104_0223DB34 * unk_00;
    UnkStruct_ov104_0223DC04 * unk_04;
    UnkStruct_ov104_0223DA28_sub1 * unk_08;
} UnkStruct_ov104_0223DA28;

static UnkStruct_ov104_0223DB34 * ov104_0223DA40(BGL * param0);
static void ov104_0223DB34(UnkStruct_ov104_0223DB34 * param0);
static void ov104_0223DB48(SysTask * param0, void * param1);
static UnkStruct_ov104_0223DC04 * ov104_0223DBB8(PaletteData * param0);
static void ov104_0223DC04(UnkStruct_ov104_0223DC04 * param0);
static void ov104_0223DC18(SysTask * param0, void * param1);

static const u16 Unk_ov104_022418B0[] = {
    0x14,
    0x15
};

UnkStruct_ov104_0223DA28 * ov104_0223D9E4 (BGL * param0, PaletteData * param1)
{
    UnkStruct_ov104_0223DA28 * v0;

    v0 = Heap_AllocFromHeap(94, sizeof(UnkStruct_ov104_0223DA28));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223DA28));

    v0->unk_00 = ov104_0223DA40(param0);
    v0->unk_04 = ov104_0223DBB8(param1);

    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_BGALL | GX_BLEND_PLANEMASK_OBJ), 8, 9);

    return v0;
}

void ov104_0223DA28 (UnkStruct_ov104_0223DA28 * param0)
{
    ov104_0223DB34(param0->unk_00);
    ov104_0223DC04(param0->unk_04);
    Heap_FreeToHeap(param0);
}

static UnkStruct_ov104_0223DB34 * ov104_0223DA40 (BGL * param0)
{
    UnkStruct_ov104_0223DB34 * v0;

    GF_ASSERT(2 == NELEMS(Unk_ov104_022418B0));

    v0 = Heap_AllocFromHeap(94, sizeof(UnkStruct_ov104_0223DB34));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223DB34));
    v0->unk_04 = param0;

    {
        NARC * v1;
        void * v2;
        NNSG2dScreenData * v3;
        int v4;

        v1 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 94);

        for (v4 = 0; v4 < 2; v4++) {
            v2 = sub_020071D0(v1, Unk_ov104_022418B0[v4], 1, &v3, 94);
            MI_CpuCopy32(v3->rawData, v0->unk_08[v4], 0x1000);
            Heap_FreeToHeap(v2);
        }

        NARC_dtor(v1);
    }

    {
        NARC * v5;
        void * v6;
        NNSG2dCharacterData * v7;

        v5 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 94);

        v6 = sub_020071B4(v5, 14, 1, &v7, 94);
        MI_CpuCopy32(v7->pRawData, v0->unk_2008[0], v7->szByte);

        Heap_FreeToHeap(v6);

        v6 = sub_020071B4(v5, 15, 1, &v7, 94);
        MI_CpuCopy32(v7->pRawData, v0->unk_2008[1], v7->szByte);

        Heap_FreeToHeap(v6);
        NARC_dtor(v5);
    }

    v0->unk_00 = SysTask_Start(ov104_0223DB48, v0, (80000 - 500));

    return v0;
}

static void ov104_0223DB34 (UnkStruct_ov104_0223DB34 * param0)
{
    SysTask_Done(param0->unk_00);
    Heap_FreeToHeap(param0);
}

static void ov104_0223DB48 (SysTask * param0, void * param1)
{
    u32 v0;
    UnkStruct_ov104_0223DB34 * v1 = param1;

    if (v1->unk_22008 < 12) {
        v1->unk_22008++;
        return;
    }

    v1->unk_22008 = 0;

    {
        sub_0201958C(v1->unk_04, 3, v1->unk_2008[v1->unk_22009], 0x10000, 0);
    }

    sub_02019574(v1->unk_04, 3, v1->unk_08[v1->unk_22009], 0x1000);
    sub_0201C3C0(v1->unk_04, 3);

    v1->unk_22009 ^= 1;
}

static UnkStruct_ov104_0223DC04 * ov104_0223DBB8 (PaletteData * param0)
{
    UnkStruct_ov104_0223DC04 * v0;

    v0 = Heap_AllocFromHeap(94, sizeof(UnkStruct_ov104_0223DC04));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223DC04));

    v0->unk_04 = param0;
    v0->unk_68 = 2;

    {
        u16 * v1;

        v1 = sub_02003164(param0, 0);
        MI_CpuCopy16(&v1[16 * 5], v0->unk_08, 3 * 16 * sizeof(u16));
    }

    v0->unk_00 = SysTask_Start(ov104_0223DC18, v0, ((80000 - 500) + 1));

    return v0;
}

static void ov104_0223DC04 (UnkStruct_ov104_0223DC04 * param0)
{
    SysTask_Done(param0->unk_00);
    Heap_FreeToHeap(param0);
}

static void ov104_0223DC18 (SysTask * param0, void * param1)
{
    UnkStruct_ov104_0223DC04 * v0 = param1;

    if (v0->unk_69 < 8) {
        v0->unk_69++;
        return;
    }

    v0->unk_69 = 0;
    sub_02002FBC(v0->unk_04, v0->unk_08[v0->unk_68], 0, 6 * 16, 0x20);
    v0->unk_68++;

    if (v0->unk_68 >= 3) {
        v0->unk_68 = 0;
    }
}
