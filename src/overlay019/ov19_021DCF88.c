#include "overlay019/ov19_021DCF88.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DB8E4.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021DBA9C.h"
#include "overlay019/struct_ov19_021DCF88_decl.h"

#include "cell_actor.h"
#include "enums.h"
#include "heap.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_020797C8.h"

typedef struct {
    UnkStruct_ov19_021DCF88 *unk_00;
    u32 unk_04;
    CellActor *unk_08;
    u16 unk_0C;
    s16 unk_0E;
    fx32 unk_10;
    fx32 unk_14;
    int unk_18;
} UnkStruct_ov19_021DD378;

typedef struct {
    void *unk_00;
    CellActor *unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    u16 unk_14;
    u16 unk_16;
    BOOL unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    fx32 unk_24;
    u16 unk_28;
    u16 unk_2A;
} UnkStruct_ov19_021DDBD0;

typedef struct {
    UnkStruct_ov19_021DCF88 *unk_00;
    CellActor **unk_04;
    UnkStruct_ov19_021DDBD0 unk_08[10];
    u8 unk_1C0[10];
    u8 unk_1CA;
    u8 unk_1CB;
    u8 unk_1CC;
    u8 unk_1CD;
} UnkStruct_ov19_021DDBF8;

struct UnkStruct_ov19_021DCF88_t {
    UnkStruct_ov19_021D61B0 *unk_00;
    const UnkStruct_ov19_021D4DF0 *unk_04;
    BGL *unk_08;
    CellActorCollection *unk_0C;
    u32 unk_10;
    SysTask *unk_14;
    NNSG2dImagePaletteProxy unk_18;
    CellActor *unk_2C;
    CellActor *unk_30;
    CellActor *unk_34[8];
    CellActor *unk_54[10];
    int unk_7C;
    int unk_80;
    Strbuf *unk_84;
    Window unk_88;
    void *unk_98;
    NNSG2dCellDataBank *unk_9C;
    void *unk_A0;
    NNSG2dAnimBankData *unk_A4;
    void *unk_A8;
    NNSG2dCellDataBank *unk_AC;
    void *unk_B0;
    NNSG2dAnimBankData *unk_B4;
    UnkStruct_ov19_021DD378 unk_B8;
    u8 unk_D4[16];
    u8 unk_E4[16];
};

static void ov19_021DD024(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DD224(UnkStruct_ov19_021DCF88 *param0, NARC *param1);
static void ov19_021DD2BC(UnkStruct_ov19_021DCF88 *param0, NARC *param1);
static SysTask *ov19_021DD344(UnkStruct_ov19_021DCF88 *param0, SysTaskFunc param1, void *param2);
static void ov19_021DD358(UnkStruct_ov19_021DCF88 *param0);
static BOOL ov19_021DD368(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DD46C(SysTask *param0, void *param1);
static void ov19_021DD544(SysTask *param0, void *param1);
static void ov19_021DD670(SysTask *param0, void *param1);
static void ov19_021DD794(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DD7E8(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DD854(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DD8F8(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DD998(UnkStruct_ov19_021DCF88 *param0);
static u32 ov19_021DD9B8(u32 param0, u32 param1);
static void ov19_021DD9DC(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DDA7C(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DDA9C(SysTask *param0, void *param1);
static void ov19_021DDB20(SysTask *param0, void *param1);
static void ov19_021DDBD0(SysTask *param0, UnkStruct_ov19_021DDBD0 *param1);
static void ov19_021DDBF8(UnkStruct_ov19_021DDBF8 *param0, CellActor *param1, UnkStruct_ov19_021DDBD0 *param2, u32 param3, u32 param4, u32 param5, u32 param6, BOOL param7);
static void ov19_021DDC74(UnkStruct_ov19_021DDBF8 *param0, UnkStruct_ov19_021DDBD0 *param1, u32 param2, u32 param3, u32 param4);
static void ov19_021DDCC0(SysTask *param0, void *param1);
static void ov19_021DDD78(void *param0);
static void ov19_021DDD80(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DDDD0(SysTask *param0, void *param1);
static void ov19_021DDFA8(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DDFFC(SysTask *param0, void *param1);
static void ov19_021DE0A0(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DE0F0(SysTask *param0, void *param1);
static void ov19_021DE2A4(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DE324(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DE330(UnkStruct_ov19_021DCF88 *param0);
static void ov19_021DE350(UnkStruct_ov19_021DCF88 *param0);

static const fx32 Unk_ov19_021E0258[] = {
    0x0,
    0xFFFFFFFFFFFA0000,
    0x58000
};

static const int Unk_ov19_021E024C[] = {
    0x0,
    0xFFFFFFFFFFFFFF80,
    0x80
};

static const struct {
    s16 x;
    s16 y;
} Unk_ov19_021E028C[] = {
    { 0x6A, 0x248 },
    { 0x6A, 0x242 },
    { 0x6A, 0x23E },
    { 0x69, 0x23A },
    { 0x69, 0x238 },
    { 0x69, 0x236 },
    { 0x69, 0x234 },
    { 0x69, 0x232 },
    { 0x69, 0x230 },
    { 0x68, 0x22E },
    { 0x68, 0x22C },
    { 0x68, 0x22A },
    { 0x68, 0x228 },
    { 0x67, 0x226 },
    { 0x67, 0x224 },
    { 0x67, 0x223 },
    { 0x66, 0x221 },
    { 0x66, 0x21F },
    { 0x65, 0x21D },
    { 0x65, 0x21B },
    { 0x64, 0x219 },
    { 0x64, 0x217 },
    { 0x63, 0x216 },
    { 0x62, 0x214 },
    { 0x62, 0x212 },
    { 0x61, 0x210 },
    { 0x60, 0x20E },
    { 0x60, 0x20D },
    { 0x5F, 0x20B },
    { 0x5E, 0x209 },
    { 0x5E, 0x208 },
    { 0x5D, 0x206 },
    { 0x5C, 0x204 },
    { 0x5B, 0x203 },
    { 0x5A, 0x201 },
    { 0x59, 0x1FF },
    { 0x58, 0x1FE },
    { 0x57, 0x1FC },
    { 0x56, 0x1FB },
    { 0x56, 0x1F9 },
    { 0x55, 0x1F8 },
    { 0x53, 0x1F6 },
    { 0x52, 0x1F5 },
    { 0x51, 0x1F3 },
    { 0x50, 0x1F2 },
    { 0x4F, 0x1F0 },
    { 0x4E, 0x1EF },
    { 0x4D, 0x1EE },
    { 0x4C, 0x1EC },
    { 0x4B, 0x1EB },
    { 0x49, 0x1EA },
    { 0x48, 0x1E8 },
    { 0x47, 0x1E7 },
    { 0x46, 0x1E6 },
    { 0x44, 0x1E5 },
    { 0x43, 0x1E4 },
    { 0x42, 0x1E3 },
    { 0x41, 0x1E2 },
    { 0x3F, 0x1E1 },
    { 0x3E, 0x1DF },
    { 0x3D, 0x1DF },
    { 0x3B, 0x1DE },
    { 0x3A, 0x1DD },
    { 0x38, 0x1DC },
    { 0x37, 0x1DB },
    { 0x36, 0x1DA },
    { 0x34, 0x1D9 },
    { 0x33, 0x1D8 },
    { 0x31, 0x1D8 },
    { 0x30, 0x1D7 },
    { 0x2E, 0x1D6 },
    { 0x2D, 0x1D6 },
    { 0x2B, 0x1D5 },
    { 0x2A, 0x1D4 },
    { 0x28, 0x1D4 },
    { 0x27, 0x1D3 },
    { 0x25, 0x1D3 },
    { 0x24, 0x1D2 },
    { 0x22, 0x1D2 },
    { 0x21, 0x1D2 },
    { 0x1F, 0x1D1 },
    { 0x1E, 0x1D1 },
    { 0x1C, 0x1D1 },
    { 0x1A, 0x1D0 },
    { 0x19, 0x1D0 },
    { 0x17, 0x1D0 },
    { 0x16, 0x1D0 },
    { 0x14, 0x1D0 },
    { 0x13, 0x1D0 },
    { 0x11, 0x1D0 },
    { 0x10, 0x1D0 },
    { 0x10, 0x1CE },
    { 0x10, 0x1CC },
    { 0x10, 0x1CA },
    { 0x10, 0x1C8 },
    { 0x10, 0x1C6 },
    { 0x10, 0x1C4 },
    { 0x10, 0x1C2 },
    { 0x10, 0x1C0 },
    { 0x10, 0x1BF },
    { 0x10, 0x1BD },
    { 0x10, 0x1BC },
    { 0x10, 0x1BA },
    { 0x10, 0x1B9 },
    { 0x10, 0x1B7 },
    { 0x10, 0x1B6 },
    { 0x10, 0x1B4 },
    { 0x10, 0x1B3 },
    { 0x10, 0x1B1 },
    { 0x10, 0x1B0 },
    { 0x10, 0x1AE },
    { 0x10, 0x1AD },
    { 0x10, 0x1AB },
    { 0x10, 0x1AA },
    { 0x10, 0x1A8 },
    { 0x10, 0x1A7 },
    { 0x10, 0x1A6 },
    { 0x10, 0x1A4 },
    { 0x10, 0x1A2 },
    { 0x10, 0x1A0 },
    { 0x10, 0x19E },
    { 0x10, 0x19C },
    { 0x10, 0x19A },
    { 0x10, 0x198 },
    { 0x10, 0x196 },
    { 0x10, 0x194 },
    { 0x10, 0x192 },
    { 0x10, 0x190 },
    { 0x10, 0x18E },
    { 0x10, 0x18C },
    { 0x10, 0x18A },
    { 0x10, 0x188 },
    { 0x10, 0x186 },
    { 0x10, 0x184 },
    { 0x10, 0x182 },
    { 0x10, 0x180 },
    { 0x10, 0x17E },
    { 0x10, 0x17C },
    { 0x10, 0x17A },
    { 0x10, 0x178 },
    { 0x10, 0x176 },
    { 0x10, 0x174 },
    { 0x10, 0x172 },
    { 0x10, 0x170 }
};

static const u16 Unk_ov19_021E0264[] = {
    0x8F,
    0x7F,
    0x6A,
    0x4A,
    0x33,
    0x1F,
    0xC,
    0x0
};

BOOL ov19_021DCF88(UnkStruct_ov19_021DCF88 **param0, UnkStruct_ov19_021D61B0 *param1, const UnkStruct_ov19_021D4DF0 *param2, BGL *param3, CellActorCollection *param4)
{
    if (ov19_021D5E08(param2) == 4) {
        *param0 = NULL;
        return 1;
    } else {
        UnkStruct_ov19_021DCF88 *v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DCF88));

        if (v0) {
            int v1;

            v0->unk_08 = param3;
            v0->unk_00 = param1;
            v0->unk_04 = param2;
            v0->unk_0C = param4;
            v0->unk_14 = NULL;
            v0->unk_84 = Strbuf_Init(32, 10);
            v0->unk_10 = param2->unk_9C.unk_00;
            v0->unk_98 = NULL;
            v0->unk_A0 = NULL;
            v0->unk_A8 = NULL;
            v0->unk_B0 = NULL;
            v0->unk_2C = NULL;
            v0->unk_30 = NULL;

            for (v1 = 0; v1 < 8; v1++) {
                v0->unk_34[v1] = NULL;
            }

            for (v1 = 0; v1 < 10; v1++) {
                v0->unk_54[v1] = NULL;
            }

            v0->unk_80 = 0;
            ov19_021DD024(v0);
            *param0 = v0;

            return 1;
        }

        return 0;
    }
}

static void ov19_021DD024(UnkStruct_ov19_021DCF88 *param0)
{
    fx32 v0, v1, v2;
    int v3;

    v0 = 0;
    v2 = (90 << FX32_SHIFT) / 16;

    param0->unk_D4[0] = 0;
    param0->unk_E4[0] = 16;

    for (v3 = 1; v3 < (16 - 1); v3++) {
        v0 += v2;
        param0->unk_D4[v3] = (sub_0201D15C(v0 >> FX32_SHIFT) * 16) >> FX32_SHIFT;
        param0->unk_E4[v3] = 16 - param0->unk_D4[v3];
    }

    param0->unk_D4[v3] = 16;
    param0->unk_E4[v3] = 0;
}

void ov19_021DD078(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        int v0;

        BGL_DeleteWindow(&(param0->unk_88));

        if (param0->unk_98) {
            Heap_FreeToHeap(param0->unk_98);
        }

        if (param0->unk_A0) {
            Heap_FreeToHeap(param0->unk_A0);
        }

        if (param0->unk_A8) {
            Heap_FreeToHeap(param0->unk_A8);
        }

        if (param0->unk_B0) {
            Heap_FreeToHeap(param0->unk_B0);
        }

        if (param0->unk_2C) {
            CellActor_Delete(param0->unk_2C);
        }

        if (param0->unk_30) {
            CellActor_Delete(param0->unk_30);
        }

        if (param0->unk_84 != NULL) {
            Strbuf_Free(param0->unk_84);
        }

        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_34[v0]) {
                CellActor_Delete(param0->unk_34[v0]);
            }
        }

        for (v0 = 0; v0 < 10; v0++) {
            if (param0->unk_54[v0]) {
                CellActor_Delete(param0->unk_54[v0]);
            }
        }

        Heap_FreeToHeap(param0);
    }
}

void ov19_021DD114(UnkStruct_ov19_021DCF88 *param0, NARC *param1)
{
    if (param0) {
        sub_020070E8(param1, 127, param0->unk_08, 7, 0, 0, 1, 10);
        sub_0200710C(param1, 124, param0->unk_08, 7, 0, 0, 1, 10);
        sub_0200710C(param1, 125, param0->unk_08, 6, 0, 0, 1, 10);
        sub_0200710C(param1, 126, param0->unk_08, 5, 0, 0, 1, 10);
        sub_020196C0(param0->unk_08, 4, 0x0, 1, 0);
        sub_02019CB8(param0->unk_08, 4, 0x0, 0, 0, 32, 32, 17);
        sub_02019448(param0->unk_08, 4);
        sub_02019184(param0->unk_08, 5, 0, Unk_ov19_021E0258[param0->unk_10]);
        BGL_AddWindow(param0->unk_08, &(param0->unk_88), 4, 0, 0, 32, 24, 2, 0);
        BGL_FillWindow(&(param0->unk_88), 0x0);
        sub_0201A954(&param0->unk_88);
        ov19_021DE324(param0);
        sub_02007130(param1, 128, 4, 0, 0x20 * 3, 10);
        ov19_021DD224(param0, param1);
    }
}

static void ov19_021DD224(UnkStruct_ov19_021DCF88 *param0, NARC *param1)
{
    CellActorResourceData v0;
    NNSG2dImageProxy v1;

    ov19_021DD2BC(param0, param1);

    NNS_G2dInitImageProxy(&v1);
    sub_0200718C(param1, 138, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0 * 0x20, 10, &(v1));

    ov19_021D783C(&v0, &v1, &(param0->unk_18), param0->unk_9C, param0->unk_A4, 3);

    param0->unk_2C = ov19_021D785C(param0->unk_0C, &v0, 0, 568, 49, NNS_G2D_VRAM_TYPE_2DSUB);
    param0->unk_30 = ov19_021D785C(param0->unk_0C, &v0, 256, 568, 49, NNS_G2D_VRAM_TYPE_2DSUB);

    CellActor_SetFlipMode(param0->unk_30, 1);

    if (ov19_021D5E08(param0->unk_04) == 3) {
        CellActor_SetAnim(param0->unk_30, 1);
    }
}

static void ov19_021DD2BC(UnkStruct_ov19_021DCF88 *param0, NARC *param1)
{
    param0->unk_98 = sub_02007204(param1, 139, 1, &(param0->unk_9C), 10);
    param0->unk_A0 = sub_02007220(param1, 140, 1, &(param0->unk_A4), 10);
    param0->unk_A8 = sub_02007204(param1, 142, 1, &(param0->unk_AC), 10);
    param0->unk_B0 = sub_02007220(param1, 143, 1, &(param0->unk_B4), 10);

    NNS_G2dInitImagePaletteProxy(&(param0->unk_18));
    sub_0200716C(param1, 144, NNS_G2D_VRAM_TYPE_2DSUB, 0, 10, &(param0->unk_18));
}

static SysTask *ov19_021DD344(UnkStruct_ov19_021DCF88 *param0, SysTaskFunc param1, void *param2)
{
    param0->unk_14 = ov19_021D77C8(param1, param2, 0);
    return param0->unk_14;
}

static void ov19_021DD358(UnkStruct_ov19_021DCF88 *param0)
{
    SysTask_Done(param0->unk_14);
    param0->unk_14 = NULL;
}

static BOOL ov19_021DD368(UnkStruct_ov19_021DCF88 *param0)
{
    return param0->unk_14 == NULL;
}

void ov19_021DD378(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        u32 v0 = param0->unk_04->unk_9C.unk_00;

        if (param0->unk_10 != v0) {
            SysTaskFunc v1;
            UnkStruct_ov19_021DD378 *v2 = &(param0->unk_B8);

            v2->unk_00 = param0;
            v2->unk_08 = NULL;
            v2->unk_04 = 0;

            switch (v0) {
            case 0:
                v2->unk_0C = 8;
                v1 = ov19_021DD670;
                ov19_021DD998(param0);
                ov19_021DDA7C(param0);
                ov19_021DE324(param0);
                break;
            case 1:
                v2->unk_0C = 8;

                if (param0->unk_10 == 0) {
                    v1 = ov19_021DD46C;
                } else {
                    v1 = ov19_021DD544;
                    v2->unk_0C += 8;
                }

                ov19_021DDA7C(param0);
                v2->unk_08 = param0->unk_2C;
                break;
            case 2:
                v2->unk_0C = 8;

                if (param0->unk_10 == 0) {
                    v1 = ov19_021DD46C;
                } else {
                    v1 = ov19_021DD544;
                    v2->unk_0C += 8;
                }

                v2->unk_08 = param0->unk_30;
                ov19_021DD998(param0);
                ov19_021DE324(param0);
                break;
            default:
                Heap_FreeToHeap(v2);
                return;
            }

            param0->unk_10 = v0;
            v2->unk_10 = (sub_020192EC(param0->unk_08, 5) * FX32_ONE);
            v2->unk_14 = (Unk_ov19_021E0258[v0] - v2->unk_10) / v2->unk_0C;
            v2->unk_18 = Unk_ov19_021E0258[v0] >> FX32_SHIFT;

            if (v2->unk_08 != NULL) {
                CellActor_SetAnim(v2->unk_08, 1);
            }

            ov19_021DD344(param0, v1, v2);
        }
    }
}

BOOL ov19_021DD45C(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        return ov19_021DD368(param0);
    } else {
        return 1;
    }
}

static void ov19_021DD46C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DD378 *v0 = (UnkStruct_ov19_021DD378 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        if (CellActor_IsAnimated(v0->unk_08) == 0) {
            v0->unk_04++;
        }
        break;
    case 1:
        if (v0->unk_0C) {
            v0->unk_10 += v0->unk_14;
            sub_02019184(v1->unk_08, 5, 0, (v0->unk_10 >> FX32_SHIFT));
            v0->unk_0C--;
        } else {
            sub_02019184(v1->unk_08, 5, 0, v0->unk_18);
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 0, 16);
            v0->unk_04++;
        }
        break;
    case 2:
        sub_02019184(v1->unk_08, 6, 0, Unk_ov19_021E024C[v1->unk_10]);
        v0->unk_0E = 0;
        v0->unk_04++;
        break;
    case 3:
        G2S_ChangeBlendAlpha(v1->unk_D4[v0->unk_0E], v1->unk_E4[v0->unk_0E]);

        if (++(v0->unk_0E) >= 16) {
            CellActor_SetAnim(v0->unk_08, 0);
            ov19_021DD358(v1);
        }
        break;
    }
}

static void ov19_021DD544(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DD378 *v0 = (UnkStruct_ov19_021DD378 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        if (CellActor_IsAnimated(v0->unk_08) == 0) {
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 16, 0);
            v0->unk_0E = (16 - 1);
            v0->unk_04++;
        }
        break;
    case 1:
        v0->unk_0E--;
        G2S_ChangeBlendAlpha(v1->unk_D4[v0->unk_0E], v1->unk_E4[v0->unk_0E]);

        if (v0->unk_0E == 0) {
            sub_02019184(v1->unk_08, 6, 0, Unk_ov19_021E024C[v1->unk_10]);
            v0->unk_04++;
        }
        break;
    case 2:
        if (v0->unk_0C) {
            v0->unk_10 += v0->unk_14;
            sub_02019184(v1->unk_08, 5, 0, (v0->unk_10 >> FX32_SHIFT));
            v0->unk_0C--;
        } else {
            sub_02019184(v1->unk_08, 5, 0, v0->unk_18);
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 0, 16);
            v0->unk_04++;
        }
        break;
    case 3:
        sub_02019184(v1->unk_08, 6, 0, Unk_ov19_021E024C[v1->unk_10]);
        v0->unk_0E = 0;
        v0->unk_04++;
        break;
    case 4:
        G2S_ChangeBlendAlpha(v1->unk_D4[v0->unk_0E], v1->unk_E4[v0->unk_0E]);

        if (++(v0->unk_0E) >= 16) {
            CellActor_SetAnim(v0->unk_08, 0);
            ov19_021DD358(v1);
        }
        break;
    }
}

static void ov19_021DD670(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DD378 *v0 = (UnkStruct_ov19_021DD378 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        v0->unk_0E = (16 - 1);
        v0->unk_04++;
    case 1:
        v0->unk_0E--;
        G2S_ChangeBlendAlpha(v1->unk_D4[v0->unk_0E], v1->unk_E4[v0->unk_0E]);

        if (v0->unk_0E == 0) {
            sub_02019184(v1->unk_08, 6, 0, Unk_ov19_021E024C[0]);
            v0->unk_04++;
        }
        break;
    case 2:
        if (v0->unk_0C) {
            v0->unk_10 += v0->unk_14;
            sub_02019184(v1->unk_08, 5, 0, (v0->unk_10 >> FX32_SHIFT));
            v0->unk_0C--;
        } else {
            sub_02019184(v1->unk_08, 5, 0, v0->unk_18);
            v0->unk_04++;
        }
        break;
    case 3:
        ov19_021DD358(v1);
        break;
    }
}

void ov19_021DD714(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        switch (param0->unk_10) {
        case 1:
            ov19_021DD854(param0);
            ov19_021DDD80(param0);
            break;
        case 2:
            ov19_021DD9DC(param0);
            ov19_021DE0A0(param0);
            break;
        }
    }
}

BOOL ov19_021DD740(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        if (ov19_021DD368(param0)) {
            if (param0->unk_10 == 1) {
                ov19_021DE350(param0);
            }

            return 1;
        }

        return 0;
    } else {
        return 1;
    }
}

void ov19_021DD768(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        switch (param0->unk_10) {
        case 1:
            ov19_021DE324(param0);
            ov19_021DD8F8(param0);
            ov19_021DDFA8(param0);
            break;
        case 2:
            ov19_021DE2A4(param0);
            break;
        }
    }
}

static void ov19_021DD794(UnkStruct_ov19_021DCF88 *param0)
{
    int v0, v1, v2, v3;

    v3 = ov19_021D5EB0(param0->unk_04);

    if (v3 > 0) {
        v0 = param0->unk_80 + (6 - 1);

        if (v0 >= 10) {
            v0 -= 10;
        }

        v1 = -1;

        param0->unk_80 -= v3;

        if (param0->unk_80 < 0) {
            param0->unk_80 += 10;
        }
    } else {
        v0 = param0->unk_80;
        v1 = 1;

        param0->unk_80 -= v3;

        if (param0->unk_80 >= 10) {
            param0->unk_80 -= 10;
        }
    }
}

static void ov19_021DD7E8(UnkStruct_ov19_021DCF88 *param0)
{
    int v0;

    v0 = ov19_021D5EB0(param0->unk_04);
    param0->unk_80 += v0;

    if (param0->unk_80 < 0) {
        param0->unk_80 += 8;
    } else if (param0->unk_80 >= 8) {
        param0->unk_80 -= 8;
    }
}

BOOL ov19_021DD820(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        if (ov19_021DD368(param0)) {
            if (param0->unk_10 == 1) {
                ov19_021DE350(param0);
                ov19_021DD794(param0);
            } else {
                ov19_021DD7E8(param0);
            }

            return 1;
        }

        return 0;
    } else {
        return 1;
    }
}

static void ov19_021DD854(UnkStruct_ov19_021DCF88 *param0)
{
    CellActorResourceData v0;
    UnkStruct_ov19_021DBA9C *v1;
    NNSG2dImageProxy v2;
    int v3, v4;

    v1 = ov19_021D780C(param0->unk_00);
    v4 = ov19_021D5EB8(param0->unk_04) + 3;

    if (v4 >= 18) {
        v4 -= 18;
    }

    for (v3 = 0; v3 < 10; v3++) {
        NNS_G2dInitImageProxy(&v2);
        ov19_021DBBA8(v1, v4, 192 + v3 * 32, NNS_G2D_VRAM_TYPE_2DSUB, &v2);
        ov19_021D783C(&v0, &v2, &(param0->unk_18), ov19_021DBD3C(v1), NULL, 2);

        param0->unk_54[v3] = ov19_021D785C(param0->unk_0C, &v0, 16, 368, 48, NNS_G2D_VRAM_TYPE_2DSUB);

        GF_ASSERT(param0->unk_54[v3] != NULL);

        v4--;

        if (v4 < 0) {
            v4 = 18 - 1;
        }
    }

    param0->unk_80 = 0;
}

static void ov19_021DD8F8(UnkStruct_ov19_021DCF88 *param0)
{
    CellActorResourceData v0;
    UnkStruct_ov19_021DBA9C *v1;
    int v2, v3, v4, v5, v6, v7, v8;

    v1 = ov19_021D780C(param0->unk_00);
    v4 = ov19_021D5EB8(param0->unk_04);

    if (param0->unk_04->unk_9C.unk_04 > 0) {
        v4 = (v4 - param0->unk_04->unk_9C.unk_04) + (3 + 1);

        if (v4 >= 18) {
            v4 -= 18;
        }

        v5 = 1;
        v8 = param0->unk_80 - 1;

        if (v8 < 0) {
            v8 += 10;
        }

        v3 = param0->unk_04->unk_9C.unk_04;
        v6 = 16;
        v7 = 368;
    } else {
        v4 = (v4 - param0->unk_04->unk_9C.unk_04) - (2 + 1);

        if (v4 < 0) {
            v4 += 18;
        }

        v5 = -1;
        v8 = param0->unk_80 + 6;

        if (v8 >= 10) {
            v8 -= 10;
        }

        v3 = param0->unk_04->unk_9C.unk_04 * -1;
        v6 = 106;
        v7 = 592;
    }

    param0->unk_7C = v3;

    for (v2 = 0; v2 < v3; v2++) {
        ov19_021DBBA8(v1, v4, 192 + v8 * 32, NNS_G2D_VRAM_TYPE_2DSUB, NULL);

        v4 += v5;

        if (v4 < 0) {
            v4 = 18 - 1;
        } else if (v4 >= 18) {
            v4 = 0;
        }

        v8 -= v5;

        if (v8 < 0) {
            v8 = (10 - 1);
        } else if (v8 >= 10) {
            v8 = 0;
        }
    }
}

static void ov19_021DD998(UnkStruct_ov19_021DCF88 *param0)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        if (param0->unk_54[v0]) {
            CellActor_Delete(param0->unk_54[v0]);
            param0->unk_54[v0] = NULL;
        }
    }
}

static u32 ov19_021DD9B8(u32 param0, u32 param1)
{
    if (param0 == 0) {
        return (param1 == 0) ? 1 : 0;
    }

    if (param1 & (1 << (param0 - 1))) {
        return param0 * 2 + 1;
    } else {
        return param0 * 2;
    }
}

static void ov19_021DD9DC(UnkStruct_ov19_021DCF88 *param0)
{
    CellActorResourceData v0;
    NNSG2dImageProxy v1;
    u32 v2;
    int v3;

    v2 = ov19_021D5EC8(param0->unk_04);

    NNS_G2dInitImageProxy(&v1);
    sub_02006F00(18, 141, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 192 * 0x20, 10, &v1);

    for (v3 = 0; v3 < 8; v3++) {
        ov19_021D783C(&v0, &v1, &(param0->unk_18), param0->unk_AC, param0->unk_B4, 2);

        param0->unk_34[v3] = ov19_021D785C(param0->unk_0C, &v0, 240, 368, 48, NNS_G2D_VRAM_TYPE_2DSUB);
        GF_ASSERT(param0->unk_34[v3] != NULL);

        CellActor_SetAnim(param0->unk_34[v3], ov19_021DD9B8(v3, v2));
    }

    param0->unk_80 = ov19_021D5EC0(param0->unk_04);
}

static void ov19_021DDA7C(UnkStruct_ov19_021DCF88 *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_34[v0]) {
            CellActor_Delete(param0->unk_34[v0]);
            param0->unk_34[v0] = NULL;
        }
    }
}

static void ov19_021DDA9C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DDBD0 *v0 = (UnkStruct_ov19_021DDBD0 *)param1;
    VecFx32 v1;

    if (v0->unk_16) {
        v0->unk_16--;
        return;
    }

    if (v0->unk_14) {
        u32 v2;

        v0->unk_14--;
        v0->unk_08 += v0->unk_10;
        v2 = v0->unk_08 >> FX32_SHIFT;
        v1.x = Unk_ov19_021E028C[v2].x << FX32_SHIFT;
        v1.y = Unk_ov19_021E028C[v2].y << FX32_SHIFT;
        v1.z = 0;
        CellActor_SetPosition(v0->unk_04, &v1);
    } else {
        u32 v3 = v0->unk_0C >> FX32_SHIFT;

        v1.x = Unk_ov19_021E028C[v3].x << FX32_SHIFT;
        v1.y = Unk_ov19_021E028C[v3].y << FX32_SHIFT;
        v1.z = 0;

        CellActor_SetPosition(v0->unk_04, &v1);
        ov19_021DDBD0(param0, v0);
    }
}

static void ov19_021DDB20(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DDBD0 *v0 = (UnkStruct_ov19_021DDBD0 *)param1;
    VecFx32 v1;

    if (v0->unk_16) {
        v0->unk_16--;
        return;
    }

    if (v0->unk_14) {
        u32 v2;

        v0->unk_14--;
        v0->unk_08 += v0->unk_10;
        v2 = v0->unk_08 >> FX32_SHIFT;
        v1.x = (256 - Unk_ov19_021E028C[v2].x) << FX32_SHIFT;
        v1.y = Unk_ov19_021E028C[v2].y << FX32_SHIFT;
        v1.z = 0;

        CellActor_SetPosition(v0->unk_04, &v1);
    } else {
        u32 v3 = v0->unk_0C >> FX32_SHIFT;

        v1.x = (256 - Unk_ov19_021E028C[v3].x) << FX32_SHIFT;
        v1.y = Unk_ov19_021E028C[v3].y << FX32_SHIFT;
        v1.z = 0;

        CellActor_SetPosition(v0->unk_04, &v1);

        if (v0->unk_18) {
            v0->unk_14 = v0->unk_28;
            v0->unk_08 = v0->unk_1C;
            v0->unk_10 = v0->unk_24;
            v0->unk_0C = v0->unk_20;
            v0->unk_16 = v0->unk_2A;
            v0->unk_18 = 0;
        } else {
            ov19_021DDBD0(param0, v0);
        }
    }
}

static void ov19_021DDBD0(SysTask *param0, UnkStruct_ov19_021DDBD0 *param1)
{
    UnkStruct_ov19_021DDBF8 *v0 = param1->unk_00;

    GF_ASSERT(v0->unk_1CB);
    v0->unk_1CB--;
    SysTask_Done(param0);
}

static void ov19_021DDBF8(UnkStruct_ov19_021DDBF8 *param0, CellActor *param1, UnkStruct_ov19_021DDBD0 *param2, u32 param3, u32 param4, u32 param5, u32 param6, BOOL param7)
{
    SysTaskFunc v0;

    GF_ASSERT(param1 != NULL);

    if (param6) {
        param6--;
    }

    param2->unk_00 = param0;
    param2->unk_04 = param1;
    param2->unk_14 = param5;
    param2->unk_16 = param6;

    v0 = (param7) ? ov19_021DDB20 : ov19_021DDA9C;

    param2->unk_08 = Unk_ov19_021E0264[param3] << FX32_SHIFT;
    param2->unk_0C = Unk_ov19_021E0264[param4] << FX32_SHIFT;
    param2->unk_10 = (param2->unk_0C - param2->unk_08) / (s32)param5;
    param2->unk_18 = 0;

    if (ov19_021D77C8(v0, param2, 0) != NULL) {
        param0->unk_1CB++;
    }
}

static void ov19_021DDC74(UnkStruct_ov19_021DDBF8 *param0, UnkStruct_ov19_021DDBD0 *param1, u32 param2, u32 param3, u32 param4)
{
    int v0;

    param1->unk_18 = 1;
    param1->unk_2A = param2;

    if (param2) {
        param1->unk_2A--;
    }

    v0 = param4 - param3;

    if (v0 < 0) {
        v0 *= -1;
    }

    v0 *= 6;

    param1->unk_28 = v0;
    param1->unk_1C = Unk_ov19_021E0264[param3] << FX32_SHIFT;
    param1->unk_20 = Unk_ov19_021E0264[param4] << FX32_SHIFT;
    param1->unk_24 = (param1->unk_20 - param1->unk_1C) / (s32)v0;
}

static void ov19_021DDCC0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DDBF8 *v0 = (UnkStruct_ov19_021DDBF8 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_1CC) {
    case 0: {
        int v2;

        v0->unk_1CA++;
        v2 = 6 - v0->unk_1CA;
        ov19_021DDBF8(v0, v1->unk_54[v2], &v0->unk_08[v2], 0, 7 - v0->unk_1CA, (v2 + 1) * 6, 0, 0);
        v0->unk_1CD = 6 - (1 * 2);

        if (v0->unk_1CA >= 6) {
            v0->unk_1CC = 2;
        } else {
            if (v0->unk_1CD) {
                v0->unk_1CC = 1;
            }
        }
    } break;
    case 1:
        v0->unk_1CD -= (1 * 2);

        if (v0->unk_1CD == 0) {
            v0->unk_1CC = 0;
        }
        break;
    case 2:
        if (v0->unk_1CB == 0) {
            v0->unk_1CC++;
            ov19_021D79B8(v0, ov19_021DDD78, v1);
        }
        break;
    }
}

static void ov19_021DDD78(void *param0)
{
    UnkStruct_ov19_021DCF88 *v0 = param0;
    ov19_021DD358(v0);
}

static void ov19_021DDD80(UnkStruct_ov19_021DCF88 *param0)
{
    UnkStruct_ov19_021DDBF8 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DDBF8));

    if (v0) {
        SysTask *v2;

        v0->unk_00 = param0;
        v0->unk_1CC = 0;
        v0->unk_1CA = 0;
        v0->unk_1CB = 0;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_1C0[v1] = 0;
        }

        if (ov19_021DD344(param0, ov19_021DDCC0, v0) == NULL) {
            Heap_FreeToHeap(v0);
        }
    }
}

static void ov19_021DDDD0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DDBF8 *v0 = (UnkStruct_ov19_021DDBF8 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_1CC) {
    case 0: {
        int v2, v3, v4, v5, v6, v7, v8;

        if (v1->unk_04->unk_9C.unk_04 > 0) {
            v4 = v1->unk_80 + 6 - 1;

            if (v4 >= 10) {
                v4 -= 10;
            }

            v5 = -1;
            v7 = 6;
            v8 = 7;
        } else {
            v4 = v1->unk_80;
            v5 = 1;
            v7 = 1;
            v8 = 0;
        }

        for (v2 = 0; v2 < v1->unk_7C; v2++) {
            ov19_021DDBF8(v0, v0->unk_04[v4], &v0->unk_08[v4], v7, v8, (v2 + 1) * 6, 0, 0);

            v7 += v5;
            v4 += v5;

            if (v4 >= 10) {
                v4 = 0;
            } else if (v4 < 0) {
                v4 = 10 - 1;
            }
        }

        v3 = (6 - v1->unk_7C);

        for (v2 = 0; v2 < v3; v2++) {
            v8 = v7 - (v5 * v1->unk_7C);

            ov19_021DDBF8(v0, v0->unk_04[v4], &v0->unk_08[v4], v7, v8, v1->unk_7C * 6, 0, 0);

            v7 += v5;
            v4 += v5;

            if (v4 >= 10) {
                v4 = 0;
            } else if (v4 < 0) {
                v4 = 10 - 1;
            }
        }

        if (v1->unk_04->unk_9C.unk_04 > 0) {
            v7 = 0;
            v8 = v1->unk_7C;
        } else {
            v7 = 7;
            v8 = v7 - v1->unk_7C;
        }

        v3 = v1->unk_7C;

        for (v2 = 0; v2 < v3; v2++) {
            ov19_021DDBF8(v0, v0->unk_04[v4], &v0->unk_08[v4], v7, v8, (v1->unk_7C - v2) * 6, (v2 + 1) * 6, 0);

            v8 += v5;
            v4 += v5;

            if (v4 >= 10) {
                v4 -= 10;
            } else if (v4 < 0) {
                v4 += 10;
            }
        }

        v0->unk_1CC++;
    } break;
    case 1:
        if (v0->unk_1CB == 0) {
            v0->unk_1CC++;
            ov19_021D79B8(v0, ov19_021DDD78, v1);
        }
        break;
    }
}

static void ov19_021DDFA8(UnkStruct_ov19_021DCF88 *param0)
{
    UnkStruct_ov19_021DDBF8 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DDBF8));

    if (v0) {
        SysTask *v2;

        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_54;
        v0->unk_1CC = 0;
        v0->unk_1CA = 0;
        v0->unk_1CB = 0;

        for (v1 = 0; v1 < 10; v1++) {
            v0->unk_1C0[v1] = 0;
        }

        if (ov19_021DD344(param0, ov19_021DDDD0, v0) == NULL) {
            Heap_FreeToHeap(v0);
        }
    }
}

static void ov19_021DDFFC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DDBF8 *v0 = (UnkStruct_ov19_021DDBF8 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_1CC) {
    case 0: {
        int v2, v3, v4;

        v4 = 6;
        v3 = v1->unk_80;

        for (v2 = 0; v2 < 6; v2++) {
            ov19_021DDBF8(v0, v1->unk_34[v3], &(v0->unk_08[v3]), 0, v4, 6 * v4, 6 * v2, 1);

            v4--;

            if (++v3 >= 8) {
                v3 = 0;
            }
        }

        v0->unk_1CC++;
    } break;
    case 1:
        if (v0->unk_1CB == 0) {
            v0->unk_1CC++;
            ov19_021D79B8(v0, ov19_021DDD78, v1);
        }
        break;
    }
}

static void ov19_021DE0A0(UnkStruct_ov19_021DCF88 *param0)
{
    UnkStruct_ov19_021DDBF8 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DDBF8));

    if (v0) {
        SysTask *v2;

        v0->unk_00 = param0;
        v0->unk_1CC = 0;
        v0->unk_1CA = 0;
        v0->unk_1CB = 0;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_1C0[v1] = 0;
        }

        if (ov19_021DD344(param0, ov19_021DDFFC, v0) == NULL) {
            Heap_FreeToHeap(v0);
        }
    }
}

static void ov19_021DE0F0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DDBF8 *v0 = (UnkStruct_ov19_021DDBF8 *)param1;
    UnkStruct_ov19_021DCF88 *v1 = v0->unk_00;

    switch (v0->unk_1CC) {
    case 0: {
        int v2, v3, v4, v5, v6, v7, v8, v9, v10;

        v3 = ov19_021D5EB0(v1->unk_04);
        v2 = v1->unk_80;

        if (v3 < 0) {
            v2 += (6 - 1);

            if (v2 >= 8) {
                v2 -= 8;
            }

            v4 = -1;
            v9 = -v3;
            v6 = 1;
            v7 = 0;
        } else {
            v4 = 1;
            v9 = v3;
            v6 = 7 - 1;
            v7 = 7;
        }

        v8 = 6 + v9;

        for (v5 = 0; v5 < v9; v5++) {
            ov19_021DDBF8(v0, v1->unk_34[v2], &(v0->unk_08[v2]), v6, v7, 6 * (v5 + 1), 0, 1);

            v6 -= v4;
            v2 += v4;

            if (v2 < 0) {
                v2 += 8;
            } else if (v2 >= 8) {
                v2 -= 8;
            }
        }

        v10 = 0;

        for (; v5 < 8; v5++) {
            v7 -= v4;

            ov19_021DDBF8(v0, v1->unk_34[v2], &(v0->unk_08[v2]), v6, v7, 6 * (v9), v10, 1);

            if ((v6 != 0) && (v6 != 7)) {
                v6 -= v4;
            } else {
                v10 += 6;
            }

            v2 += v4;

            if (v2 < 0) {
                v2 += 8;
            } else if (v2 >= 8) {
                v2 -= 8;
            }
        }

        if (v3 < 0) {
            v6 = 7;
            v7 = v6 - (v9 - 2);
        } else {
            v6 = 0;
            v7 = v6 + (v9 - 2);
        }

        for (; v5 < v8; v5++) {
            ov19_021DDC74(v0, &(v0->unk_08[v2]), 6, v6, v7);

            v7 -= v4;
            v2 += v4;

            if (v2 < 0) {
                v2 += 8;
            } else if (v2 >= 8) {
                v2 -= 8;
            }
        }

        v0->unk_1CC++;
    } break;
    case 1:
        if (v0->unk_1CB == 0) {
            v0->unk_1CC++;
            ov19_021D79B8(v0, ov19_021DDD78, v1);
        }
        break;
    }
}

static void ov19_021DE2A4(UnkStruct_ov19_021DCF88 *param0)
{
    UnkStruct_ov19_021DDBF8 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DDBF8));

    if (v0) {
        SysTask *v2;

        v0->unk_00 = param0;
        v0->unk_1CC = 0;
        v0->unk_1CA = 0;
        v0->unk_1CB = 0;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_1C0[v1] = 0;
        }

        if (ov19_021DD344(param0, ov19_021DE0F0, v0) == NULL) {
            Heap_FreeToHeap(v0);
        }
    }
}

void ov19_021DE2F4(UnkStruct_ov19_021DCF88 *param0)
{
    if (param0) {
        if (param0->unk_34[0] != NULL) {
            int v0;
            u32 v1 = ov19_021D5EC8(param0->unk_04);

            for (v0 = 0; v0 < 8; v0++) {
                CellActor_SetAnim(param0->unk_34[v0], ov19_021DD9B8(v0, v1));
            }
        }
    }
}

static void ov19_021DE324(UnkStruct_ov19_021DCF88 *param0)
{
    sub_02019120(4, 0);
}

static void ov19_021DE330(UnkStruct_ov19_021DCF88 *param0)
{
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_ALL, 14, 2);
    sub_02019120(4, 1);
}

static void ov19_021DE350(UnkStruct_ov19_021DCF88 *param0)
{
    static const struct {
        s16 unk_00;
        s16 unk_02;
    } v0[] = {
        { 36, 4 },
        { 36, 36 },
        { 50, 69 },
        { 92, 92 },
        { 114, 124 },
        { 124, 156 },
    };
    int v1, v2;

    v2 = ov19_021D5EB8(param0->unk_04) + 3;

    if (v2 >= 18) {
        v2 -= 18;
    }

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        sub_02079AF4(param0->unk_04->unk_00, v2, param0->unk_84);
        BGL_WindowColor(&param0->unk_88, 0, v0[v1].unk_00, v0[v1].unk_02, 104, 17);
        Text_AddPrinterWithParamsAndColor(&param0->unk_88, FONT_SYSTEM, param0->unk_84, v0[v1].unk_00 + 4, v0[v1].unk_02 + 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

        if (--v2 < 0) {
            v2 = 18 - 1;
        }
    }

    sub_0201ACCC(&param0->unk_88);
    ov19_021DE330(param0);
}
