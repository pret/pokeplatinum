#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/sys_task.h"

#include "struct_defs/struct_020E5EB4.h"

#include "unk_0200D9E8.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02033200.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

typedef struct UnkStruct_020393C8_t {
    int unk_00;
    int unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    const UnkStruct_020E5EB4 ** unk_14;
    SysTask * unk_18;
    GXOamAttr * unk_1C;
} UnkStruct_020393C8;

static int inline inline_02039614(UnkStruct_020393C8 * param0);
static int inline inline_02039614_1(int param0, int param1);
static void sub_02039428(SysTask * param0, void * param1);
static void sub_020394D0(int param0, BOOL param1, u32 param2, u32 param3);
static void sub_02039530(int param0, BOOL param1, u32 param2);
static void sub_02039614(UnkStruct_020393C8 * param0);

UnkStruct_020393C8 * sub_020393C8 (u32 param0, u32 param1, int param2, int param3, BOOL param4, const UnkStruct_020E5EB4 * param5[], int param6)
{
    UnkStruct_020393C8 * v0;

    sub_020394D0(param6, param4, (16 * 2 * 14), param1);
    sub_02039530(param6, param4, param1);

    v0 = (UnkStruct_020393C8 *)Heap_AllocFromHeapAtEnd(param1, sizeof(UnkStruct_020393C8));

    v0->unk_18 = sub_0200DA3C(sub_02039428, v0, 5);
    v0->unk_0C = param2;
    v0->unk_0E = param3;
    v0->unk_00 = 0;
    v0->unk_04 = 3;
    v0->unk_14 = param5;
    v0->unk_08 = 0;
    v0->unk_10 = param4;
    v0->unk_12 = 0;
    v0->unk_11 = 0;
    v0->unk_1C = (GXOamAttr *)HW_OAM;

    return v0;
}

static void sub_02039428 (SysTask * param0, void * param1)
{
    UnkStruct_020393C8 * v0 = (UnkStruct_020393C8 *)param1;
    sub_02039614(v0);
}

static int inline inline_02039614 (UnkStruct_020393C8 * param0)
{
    switch (param0->unk_11) {
    case 1:
        return (GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB) ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
    case 2:
        return (GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB) ? NNS_G2D_VRAM_TYPE_2DSUB : NNS_G2D_VRAM_TYPE_2DMAIN;
    default:
        return NNS_G2D_VRAM_TYPE_2DMAIN;
    }
}

static int inline inline_02039614_1 (int param0, int param1)
{
    int v0, v1;

    if (param0 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = GX_GetOBJVRamModeChar();
        v1 = GX_GetBankForOBJ();
    } else {
        v0 = GXS_GetOBJVRamModeChar();
        v1 = GX_GetBankForSubOBJ();
    }

    switch (v0) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if ((v1 == GX_VRAM_OBJ_16_G) || (v1 == GX_VRAM_OBJ_16_F)) {
            return 512 - 16 + 4 * param1;
        } else {
            return 1024 - 16 + 4 * param1;
        }
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if ((v1 == GX_VRAM_OBJ_80_EF) || (v1 == GX_VRAM_OBJ_80_EG)) {
            return 640 - 4 + 1 * param1;
        } else if (v1 == GX_VRAM_OBJ_64_E) {
            return 512 - 4 + 1 * param1;
        } else {
            return 1024 - 4 + 1 * param1;
        }
    default:
        return 1024 - 8 + 2 * param1;
    }
}

static inline void inline_02039440 (GXOamAttr * param0)
{
    G2_SetOBJAttr(param0, 0, 0, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
}

void sub_02039434 (UnkStruct_020393C8 * param0, int param1)
{
    if (param1 < 4) {
        param0->unk_04 = param1;
        param0->unk_08 = 0;
    }
}

void sub_02039440 (UnkStruct_020393C8 * param0)
{
    sub_0200DA58(param0->unk_18);
    inline_02039440((GXOamAttr *)(HW_OAM));

    if (param0->unk_12) {
        inline_02039440((GXOamAttr *)(HW_OAM_END));
    }

    Heap_FreeToHeap(param0);
}

void sub_02039474 (UnkStruct_020393C8 * param0, BOOL param1, u32 param2)
{
    sub_020394D0(NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_10, (16 * 2 * 14), param2);
    sub_02039530(NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_10, param2);

    param0->unk_11 = (param1) ? 1 : 2;
    param0->unk_12 = 1;
}

void * sub_020394A8 (u32 param0)
{
    void * v0 = Heap_AllocFromHeapAtEnd(param0, 600);

    sub_02017A94("data/pl_wm.NCLR", &v0);
    DC_FlushRange(v0, 600);

    return v0;
}

static void sub_020394D0 (int param0, BOOL param1, u32 param2, u32 param3)
{
    void * v0 = Heap_AllocFromHeapAtEnd(param3, 600);

    if (v0) {
        NNSG2dPaletteData * v1;

        sub_02017A94("data/pl_wm.NCLR", &v0);
        DC_FlushRange(v0, 600);
        NNS_G2dGetUnpackedPaletteData(v0, &v1);

        if (param0 == NNS_G2D_VRAM_TYPE_2DMAIN) {
            GX_LoadOBJPltt(v1->pRawData, param2, (16 * 2));
        } else {
            GXS_LoadOBJPltt(v1->pRawData, param2, (16 * 2));
        }

        Heap_FreeToHeap(v0);
    }
}

static void sub_02039530 (int param0, BOOL param1, u32 param2)
{
    void * v0 = Heap_AllocFromHeapAtEnd(param2, 600);

    if (v0) {
        NNSG2dCharacterData * v1;
        int v2, v3, v4;

        if (param1) {
            sub_02017A94("data/pl_wifi.NCGR", &v0);
        } else {
            sub_02017A94("data/pl_wm.NCGR", &v0);
        }

        DC_FlushRange(v0, 600);
        NNS_G2dGetUnpackedBGCharacterData(v0, &v1);

        if (param0 == NNS_G2D_VRAM_TYPE_2DMAIN) {
            v3 = GX_GetOBJVRamModeChar();
            v4 = GX_GetBankForOBJ();
        } else {
            v3 = GXS_GetOBJVRamModeChar();
            v4 = GX_GetBankForSubOBJ();
        }

        switch (v3) {
        case GX_OBJVRAMMODE_CHAR_1D_32K:
            if ((v4 == GX_VRAM_OBJ_16_G) || (v4 == GX_VRAM_OBJ_16_F)) {
                v2 = ((512 - 16) * 32);
            } else {
                v2 = ((1024 - 16) * 32);
            }
            break;
        case GX_OBJVRAMMODE_CHAR_1D_128K:
            if ((v4 == GX_VRAM_OBJ_80_EF) || (v4 == GX_VRAM_OBJ_80_EG)) {
                v2 = ((2560 - 16) * 32);
            } else if (v4 == GX_VRAM_OBJ_64_E) {
                v2 = 0x10000 - 16 * 32;
            } else {
                v2 = ((4096 - 16) * 32);
            }
            break;
        default:
            v2 = ((2048 - 16) * 32);
            break;
        }

        if (param0 == NNS_G2D_VRAM_TYPE_2DMAIN) {
            GX_LoadOBJ(v1->pRawData, v2, (4 * 4 * 32));
        } else {
            GXS_LoadOBJ(v1->pRawData, v2, (4 * 4 * 32));
        }

        Heap_FreeToHeap(v0);
    }
}

static const UnkStruct_020E5EB4 Unk_020E5EB4[] = {
    {0x1F0, 0x14},
    {0x1F4, 0x14},
    {0x1F8, 0x14},
    {0x1FC, 0x14},
    {0xFFFF, 0x0}
};

static const UnkStruct_020E5EB4 Unk_020E5EAC[] = {
    {0x1F0, 0x14},
    {0xFFFF, 0x0}
};

static const UnkStruct_020E5EB4 Unk_020E5EA4[] = {
    {0x1F4, 0x14},
    {0xFFFF, 0x0}
};

static const UnkStruct_020E5EB4 Unk_020E5E9C[] = {
    {0x1F8, 0x14},
    {0xFFFF, 0x0}
};

static const UnkStruct_020E5EB4 Unk_020E5E94[] = {
    {0x1FC, 0x14},
    {0xFFFF, 0x0}
};

static const UnkStruct_020E5EB4 * Unk_02100A38[] = {
    Unk_020E5EAC,
    Unk_020E5EA4,
    Unk_020E5E9C,
    Unk_020E5E94,
    Unk_020E5EB4
};

static UnkStruct_020393C8 * Unk_021C07D8 = NULL;

static void sub_02039614 (UnkStruct_020393C8 * param0)
{
    UnkStruct_020393C8 * v0 = param0;
    int v1, v2;
    GXOamAttr * v3;

    v1 = inline_02039614(v0);
    v2 = inline_02039614_1(v1, v0->unk_04);
    v3 = (v1 == NNS_G2D_VRAM_TYPE_2DMAIN) ? (GXOamAttr *)(HW_OAM) : (GXOamAttr *)(HW_OAM_END);

    G2_SetOBJAttr(v3, v0->unk_0C, v0->unk_0E, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NONE, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, v2, 14, 0);

    if (v3 != v0->unk_1C) {
        G2_SetOBJAttr(v0->unk_1C, 0, 0, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
        v0->unk_1C = v3;
    }
}

void sub_02039720 (void)
{
    UnkStruct_020393C8 * v0 = Unk_021C07D8;

    if (v0 == NULL) {
        return;
    }

    sub_02039614(v0);
}

void sub_02039734 (void)
{
    BOOL v0 = 0;

    if (sub_020389B8()) {
        v0 = 1;
    }

    sub_02039750(240, 0, v0, NNS_G2D_VRAM_TYPE_2DMAIN);
}

void sub_02039750 (int param0, int param1, BOOL param2, int param3)
{
    if (!sub_020334B8()) {
        return;
    }

    if (Unk_021C07D8) {
        sub_02039794();
    }

    Unk_021C07D8 = sub_020393C8(0, 91, param0, param1, param2, Unk_02100A38, param3);
}

void sub_02039794 (void)
{
    if (Unk_021C07D8) {
        sub_02039440(Unk_021C07D8);
        Unk_021C07D8 = NULL;
    }
}

void sub_020397B0 (int param0)
{
    if (Unk_021C07D8) {
        sub_02039434(Unk_021C07D8, param0);
    }
}

void sub_020397C8 (BOOL param0, u32 param1)
{
    if (Unk_021C07D8) {
        sub_02039474(Unk_021C07D8, param0, param1);
    }
}

void sub_020397E4 (void)
{
    if (sub_02035E38()) {
        if ((sub_02035E18() > 1) || sub_020389B8()) {
            sub_02039734();
        }
    } else if (sub_020389B8()) {
        sub_02039734();
    }
}
