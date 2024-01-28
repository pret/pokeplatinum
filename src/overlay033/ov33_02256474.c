#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay033/struct_ov33_02256474_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay033/struct_ov33_02256474_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay033/ov33_02256474.h"

typedef struct {
    UnkStruct_ov25_022558C4 * unk_00;
    UnkStruct_ov25_022558C4 * unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    VecFx32 unk_20;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
    u8 unk_30;
    u8 unk_31;
    u8 unk_32;
    union {
        u32 unk_34_val1;
        u16 unk_34_val2[2];
        u8 unk_34_val3[4];
    };
} UnkStruct_ov33_02256474_sub1;

struct UnkStruct_ov33_02256474_t {
    const UnkStruct_ov33_02256474_1 * unk_00;
    BGL * unk_04;
    u32 unk_08[10];
    UnkStruct_ov25_022555E8 * unk_30;
    UnkStruct_ov25_02255958 unk_34;
    UnkStruct_ov25_02255958 unk_48;
    VecFx32 unk_5C[6];
    VecFx32 unk_A4;
    SysTask * unk_B0;
    void * unused_B4[6];
    int unk_CC[6];
    u32 unk_E4;
    u32 unk_E8;
    u32 unk_EC;
    u32 unk_F0;
    u32 unk_F4;
    BOOL unk_F8;
    BOOL unk_FC;
    u32 unk_100;
    u32 unk_104[6];
    fx32 unk_11C[6];
    UnkStruct_ov33_02256474_sub1 unk_134[6];
    u32 unk_280;
    u32 unk_284;
};

static inline void inline_ov33_0225681C(UnkStruct_ov33_02256474_sub1 * param0);
static inline BOOL inline_ov33_022572A0(const VecFx32 * param0);
static inline void inline_ov33_022572A0_1(VecFx32 * param0);
static void ov33_02256584(UnkStruct_ov25_02255224 * param0);
static void ov33_02256598(SysTask * param0, void * param1);
static void ov33_02256634(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_022567D4(VecFx32 * param0);
static void ov33_0225681C(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256898(SysTask * param0, void * param1);
static void ov33_022568B4(UnkStruct_ov33_02256474 * param0);
static void ov33_022568F4(UnkStruct_ov33_02256474 * param0, int param1);
static void ov33_02256904(SysTask * param0, void * param1);
static u32 ov33_022569C0(UnkStruct_ov33_02256474 * param0);
static BOOL ov33_02256A14(u32 param0, u32 param1, u32 param2, const VecFx32 * param3);
static void ov33_02256A44(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256A64(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256AA8(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256ABC(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256B08(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256B3C(const char * param0, ...);
static void ov33_02256B44(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);
static void ov33_02256BAC(UnkStruct_ov33_02256474 * param0, int param1, int param2);
static void ov33_02256C08(UnkStruct_ov33_02256474 * param0);
static BOOL ov33_02256C40(UnkStruct_ov33_02256474 * param0);
static void ov33_02256C54(UnkStruct_ov33_02256474 * param0, int param1);
static void ov33_02256C98(UnkStruct_ov33_02256474 * param0, int param1);
static void ov33_02256CC4(UnkStruct_ov33_02256474 * param0, int param1);
static void ov33_02256CDC(fx32 param0, u32 param1, VecFx32 * param2);
static BOOL ov33_02256D20(const VecFx32 * param0);
static void ov33_02256D34(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2);
static void ov33_02256E1C(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2);
static void ov33_02256F34(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2);
static void ov33_02257010(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2);
static void ov33_022570E8(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2);
static void ov33_0225718C(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2);
static void ov33_022572A0(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1);

BOOL ov33_02256474 (UnkStruct_ov33_02256474 ** param0, const UnkStruct_ov33_02256474_1 * param1, BGL * param2)
{
    UnkStruct_ov33_02256474 * v0 = (UnkStruct_ov33_02256474 *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov33_02256474));

    if (v0 != NULL) {
        int v1;

        ov25_02255090(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_30 = ov25_02254664();
        v0->unk_B0 = NULL;

        for (v1 = 0; v1 < 6; v1++) {
            v0->unk_134[v1].unk_00 = NULL;
            v0->unk_134[v1].unk_04 = NULL;
        }

        ov25_02255958(&v0->unk_34, 12, 5, 6, 8);
        ov25_02255958(&v0->unk_48, 12, 36, 37, 8);
        *param0 = v0;
        return 1;
    }

    return 0;
}

void ov33_022564F0 (UnkStruct_ov33_02256474 * param0)
{
    if (param0 != NULL) {
        int v0;

        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_134[v0].unk_00 != NULL) {
                ov25_022558B0(param0->unk_30, param0->unk_134[v0].unk_00);
            }

            if (param0->unk_134[v0].unk_04 != NULL) {
                ov25_022558B0(param0->unk_30, param0->unk_134[v0].unk_04);
            }
        }

        ov25_022559B0(&param0->unk_34);
        ov25_022559B0(&param0->unk_48);

        if (param0->unk_B0 != NULL) {
            SysTask_Done(param0->unk_B0);
        }

        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov33_02257878[] = {
    {0x0, ov33_02256598, 0x0},
    {0x1, ov33_02256898, 0x0},
    {0x0, NULL, 0x0}
};

void ov33_02256548 (UnkStruct_ov33_02256474 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov33_02257878, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov33_0225656C (UnkStruct_ov33_02256474 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov33_02256578 (UnkStruct_ov33_02256474 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov33_02256584 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov33_02256474 * v0 = ov25_0225523C(param0);

    ov25_02255224(v0->unk_08, param0);
}

static void ov33_02256598 (SysTask * param0, void * param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov33_02256474 * v2;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 7, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02019CB8(v2->unk_04, 6, 0, 0, 0, 32, 24, 0);

    ov25_022546B8(0, 0);
    sub_02019448(v2->unk_04, 6);

    ov33_02256634(v2, v2->unk_00);
    ov33_0225681C(v2, v2->unk_00);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    ov33_02256584(param1);
}

static void ov33_02256634 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    static const struct {
        u16 x;
        u16 y;
    } v0[] = {
        {48, 44},
        {176, 44},
        {48, 92},
        {176, 92},
        {48, 140},
        {176, 140}
    };
    NARC * v1;

    ov25_02255360(1);
    sub_02006EC0(12, 35, 1, ((4 * 4 * 2) * 6) * 0x20, 0, 1, 8);

    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 8);

    if (v1) {
        UnkStruct_ov25_02255810 v2;
        NNSG2dCharacterData * v3;
        void * v4;
        int v5;

        v2.unk_08 = 0;
        v2.unk_0A = 0;
        v2.unk_0B = 2;
        v2.unk_0D = 1;

        for (v5 = 0; v5 < param1->unk_00; v5++) {
            v4 = NARC_AllocAndReadWholeMember(v1, param1->unk_04[v5].unk_00, 8);
            NNS_G2dGetUnpackedCharacterData(v4, &v3);
            DC_FlushRange(v3->pRawData, ((4 * 4 * 2) * 0x20));
            GXS_LoadOBJ(v3->pRawData, ((4 * 4 * 2) * 0x20) * v5, ((4 * 4 * 2) * 0x20));
            Heap_FreeToHeap(v4);

            v2.unk_00.x = (((v0[v5].x)) << FX32_SHIFT);
            v2.unk_00.y = (((v0[v5].y)) << FX32_SHIFT);

            v2.unk_0C = 1;
            param0->unk_134[v5].unk_00 = ov25_02255810(param0->unk_30, &v2, &param0->unk_34);

            ov25_02255940(param0->unk_134[v5].unk_00, (4 * 4 * 2) * v5);
            ov25_02255938(param0->unk_134[v5].unk_00, 1 + PokeIconPaletteIndex(param1->unk_04[v5].unk_04, param1->unk_04[v5].unk_08, 0));

            v2.unk_0C = 0;
            param0->unk_134[v5].unk_04 = ov25_02255810(param0->unk_30, &v2, &param0->unk_48);

            if (param0->unk_134[v5].unk_04) {
                ov25_02255914(param0->unk_134[v5].unk_04, 1);
                ov25_02255940(param0->unk_134[v5].unk_04, ((4 * 4 * 2) * 6));
                ov25_02255938(param0->unk_134[v5].unk_04, 0);
            } else {
                GF_ASSERT(0);
            }

            param0->unk_134[v5].unk_30 = PokemonPersonalData_GetFormValue(param1->unk_04[v5].unk_04, param1->unk_04[v5].unk_08, 28);
            param0->unk_134[v5].unk_31 = 0;
            param0->unk_134[v5].unk_32 = 0;

            VEC_Set(&param0->unk_134[v5].unk_14, v2.unk_00.x, v2.unk_00.y, 0);
            VEC_Set(&param0->unk_134[v5].unk_20, 0, 0, 0);
        }

        NARC_dtor(v1);
    }
}

static void ov33_022567D4 (VecFx32 * param0)
{
    fx32 v0, v1;

    v0 = (-32 + (MTRNG_Next() & 63)) * FX32_ONE;
    v1 = (-32 + (MTRNG_Next() & 63)) * FX32_ONE;

    VEC_Set(param0, v0, v1, 0);
    VEC_Normalize(param0, param0);

    param0->x /= 16;
    param0->y /= 16;
}

static inline void inline_ov33_0225681C (UnkStruct_ov33_02256474_sub1 * param0)
{
    if (param0->unk_30) {
        ov25_022558C4(param0->unk_00, 6);
    } else {
        ov25_022558C4(param0->unk_00, (param0->unk_08.x > 0) ? 7 : 6);
    }
}

static void ov33_0225681C (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    int v0;

    for (v0 = 0; v0 < param1->unk_00; v0++) {
        ov33_022567D4(&param0->unk_134[v0].unk_08);
        inline_ov33_0225681C(&param0->unk_134[v0]);
    }

    ov33_022568B4(param0);
    param0->unk_B0 = SysTask_Start(ov33_02256904, param0, 1);
}

static void ov33_02256898 (SysTask * param0, void * param1)
{
    UnkStruct_ov33_02256474 * v0 = ov25_0225523C(param1);

    sub_02019044(v0->unk_04, 6);
    ov33_02256584(param1);
}

static void ov33_022568B4 (UnkStruct_ov33_02256474 * param0)
{
    int v0;

    param0->unk_E4 = 0;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        param0->unk_134[v0].unk_2C = 0;
        param0->unk_134[v0].unk_2F = 0;
    }

    param0->unk_EC = param0->unk_00->unk_00;
    param0->unk_F0 = param0->unk_EC;
}

static void ov33_022568F4 (UnkStruct_ov33_02256474 * param0, int param1)
{
    param0->unk_E4 = param1;
    param0->unk_E8 = 0;
}

static void ov33_02256904 (SysTask * param0, void * param1)
{
    static void(*const v0[])(UnkStruct_ov33_02256474 *, const UnkStruct_ov33_02256474_1 *) = {
        ov33_02256A44,
        ov33_02256A64,
        ov33_02256AA8,
        ov33_02256ABC,
        ov33_02256B08
    };

    UnkStruct_ov33_02256474 * v1 = param1;
    const UnkStruct_ov33_02256474_1 * v2 = v1->unk_00;
    int v3;

    if (v2->unk_4C) {
        v1->unk_280 = v2->unk_50;
        v1->unk_284 = v2->unk_54 - 8;
        v1->unk_EC = ov33_022569C0(v1);
        v1->unk_F8 = (v1->unk_EC < v2->unk_00);

        if (v1->unk_F8 && (v1->unk_EC != v1->unk_F0)) {
            ov25_02254444(v2->unk_04[v1->unk_EC].unk_04, v2->unk_04[v1->unk_EC].unk_08);
        }

        v1->unk_F0 = v1->unk_EC;
    } else {
        v1->unk_F8 = 0;
        v1->unk_F0 = v2->unk_00;
    }

    v0[v1->unk_E4](v1, v2);

    ov33_02256B44(v1, v2);

    if (v1->unk_E4 != 4) {
        ov33_022572A0(v1, v2);
    }
}

static u32 ov33_022569C0 (UnkStruct_ov33_02256474 * param0)
{
    int v0;
    int v1, v2;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        v1 = param0->unk_134[v0].unk_14.x >> FX32_SHIFT;
        v2 = param0->unk_134[v0].unk_14.y >> FX32_SHIFT;
        v1 = (param0->unk_280 - v1) * (param0->unk_280 - v1);
        v2 = (param0->unk_284 - v2) * (param0->unk_284 - v2);

        if ((v1 + v2) < (16 * 16)) {
            return v0;
        }
    }

    return param0->unk_00->unk_00;
}

static BOOL ov33_02256A14 (u32 param0, u32 param1, u32 param2, const VecFx32 * param3)
{
    int v0, v1;
    int v2;

    param0 <<= FX32_SHIFT;
    param1 <<= FX32_SHIFT;

    v0 = param0 - param3->x;
    v1 = param1 - param3->y;
    v0 = (v0 >> FX32_SHIFT) * v0;
    v1 = (v1 >> FX32_SHIFT) * v1;
    v2 = (s64)(param2 * param2) << FX32_SHIFT;

    if (v2 > (v0 + v1)) {
        return 1;
    }

    return 0;
}

static void ov33_02256A44 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    if (param1->unk_4E) {
        param0->unk_FC = param0->unk_F8;
        ov33_022568F4(param0, 1);
    }
}

static void ov33_02256A64 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    if (param1->unk_4C) {
        param0->unk_E8++;

        if (param0->unk_E8 > 6) {
            ov33_022568F4(param0, 2);
        }
    } else {
        if (param0->unk_FC) {
            ov33_022568F4(param0, 0);
        } else {
            ov33_022568F4(param0, 3);
        }
    }
}

static void ov33_02256AA8 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    if (param1->unk_4C == 0) {
        ov33_022568F4(param0, 0);
    }
}

static void ov33_02256ABC (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    if (param1->unk_4E == 0) {
        param0->unk_E8++;

        if (param0->unk_E8 > 6) {
            ov33_022568F4(param0, 0);
        }
    } else {
        if (param0->unk_F8) {
            param0->unk_FC = 1;
            ov33_022568F4(param0, 1);
        } else {
            ov33_022568F4(param0, 4);
        }
    }
}

static void ov33_02256B08 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    if (param0->unk_E8 == 0) {
        ov33_02256C08(param0);
        param0->unk_E8++;
    } else {
        if (ov33_02256C40(param0)) {
            ov33_022568F4(param0, 0);
        }
    }
}

static void ov33_02256B3C (const char * param0, ...)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_B) {
        va_list v0;
        va_start(v0, param0);
        va_end(v0);
    }
}

static void ov33_02256B44 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    static void(*const v0[])(UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int) = {
        ov33_02256D34,
        ov33_02256E1C,
        ov33_02256F34,
        ov33_02257010,
        ov33_022570E8,
        ov33_0225718C
    };

    int v1;

    for (v1 = 0; v1 < param1->unk_00; v1++) {
        if (param0->unk_134[v1].unk_2F) {
            param0->unk_134[v1].unk_2F--;
            ov33_02256B3C("icon[%d] REF[%d]\n", v1, param0->unk_134[v1].unk_2F);
        } else {
            v0[param0->unk_134[v1].unk_2C](param0, param1, v1);
        }
    }

    ov33_02256B3C("------------\n");
}

static void ov33_02256BAC (UnkStruct_ov33_02256474 * param0, int param1, int param2)
{
    switch (param0->unk_134[param1].unk_2C) {
    case 3:
        ov33_02256CC4(param0, param1);
        break;
    }

    param0->unk_134[param1].unk_2C = param2;
    param0->unk_134[param1].unk_34_val1 = 0;

    VEC_Set(&param0->unk_134[param1].unk_20, 0, 0, 0);

    switch (param0->unk_134[param1].unk_2C) {
    case 3:
        ov33_02256C54(param0, param1);
        break;
    }
}

static void ov33_02256C08 (UnkStruct_ov33_02256474 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        ov33_02256BAC(param0, v0, 5);
        param0->unk_134[v0].unk_2F = 0;
    }

    param0->unk_100 = param0->unk_00->unk_00;
}

static BOOL ov33_02256C40 (UnkStruct_ov33_02256474 * param0)
{
    return param0->unk_100 == 0;
}

static void ov33_02256C54 (UnkStruct_ov33_02256474 * param0, int param1)
{
    if (param0->unk_00->unk_04[param1].unk_0A == 0) {
        ov25_0225591C(param0->unk_30, param0->unk_134[param1].unk_04, 0);
        ov25_022558C4(param0->unk_134[param1].unk_04, 0 + (param0->unk_00->unk_04[param1].unk_0B - 1));
        ov25_02255914(param0->unk_134[param1].unk_04, 0);
    }
}

static void ov33_02256C98 (UnkStruct_ov33_02256474 * param0, int param1)
{
    ov25_0225591C(param0->unk_30, param0->unk_134[param1].unk_04, 2);
    ov25_022558C4(param0->unk_134[param1].unk_04, 3);
    ov25_02255914(param0->unk_134[param1].unk_04, 0);
}

static void ov33_02256CC4 (UnkStruct_ov33_02256474 * param0, int param1)
{
    ov25_02255914(param0->unk_134[param1].unk_04, 1);
}

static void ov33_02256CDC (fx32 param0, u32 param1, VecFx32 * param2)
{
    fx32 v0 = VEC_Mag(param2);

    if (v0 > param0) {
        VecFx32 v1;

        v0 = (v0 * param1) / 100;

        VEC_Normalize(param2, &v1);
        VEC_Set(param2, 0, 0, 0);
        VEC_MultAdd(v0, &v1, param2, param2);
    }
}

static BOOL ov33_02256D20 (const VecFx32 * param0)
{
    return (param0->x == 0) && (param0->y == 0);
}

static void ov33_02256D34 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2)
{
    ov33_02256B3C(" icon[%d] Default\n", param2);

    if (param1->unk_4C == 0) {
        ov33_02256CDC(768, 96, &param0->unk_134[param2].unk_08);
    } else {
        if (param0->unk_F8 == 0) {
            if (ov33_02256A14(param0->unk_280, param0->unk_284, 48, &param0->unk_134[param2].unk_14)) {
                if (param1->unk_04[param2].unk_0A != 1) {
                    ov33_02256BAC(param0, param2, 1);
                    ov33_02256E1C(param0, param1, param2);
                } else {
                    ov33_02256BAC(param0, param2, 2);
                    ov33_02256F34(param0, param1, param2);
                }
            }
        } else if (param0->unk_EC == param2) {
            if (ov33_02256A14(param0->unk_280, param0->unk_284, 8, &param0->unk_134[param2].unk_14)) {
                if (param1->unk_04[param2].unk_0A != 1) {
                    ov33_02256BAC(param0, param2, 3);
                } else {
                    ov33_02256BAC(param0, param2, 4);
                }
            }
        }
    }
}

static void ov33_02256E1C (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2)
{
    ov33_02256B3C(" icon[%d] ReaLike\n", param2);

    if (param1->unk_4C && ov33_02256A14(param0->unk_280, param0->unk_284, 64, &param0->unk_134[param2].unk_14)) {
        static const u8 v0 [] = {
            100, 150, 175, 200
        };

        if ((param0->unk_F8 == 0) || (param0->unk_EC == param2)) {
            if (ov33_02256A14(param0->unk_280, param0->unk_284, 8, &param0->unk_134[param2].unk_14)) {
                ov33_02256BAC(param0, param2, 3);
            } else {
                VecFx32 v1;

                VEC_Set(&v1, param0->unk_280 << FX32_SHIFT, param0->unk_284 << FX32_SHIFT, 0);
                VEC_Subtract(&v1, &param0->unk_134[param2].unk_14, &v1);
                VEC_Normalize(&v1, &v1);

                v1.x = (v1.x * v0[param1->unk_04[param2].unk_0B]) / 100;
                v1.y = (v1.y * v0[param1->unk_04[param2].unk_0B]) / 100;
                v1.x /= 16;
                v1.y /= 16;

                param0->unk_134[param2].unk_08 = v1;
            }
        }
    } else {
        ov33_02256BAC(param0, param2, 0);
    }
}

static void ov33_02256F34 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2)
{
    ov33_02256B3C(" icon[%d] ReaHate\n", param2);

    if (param1->unk_4C && ov33_02256A14(param0->unk_280, param0->unk_284, 64, &param0->unk_134[param2].unk_14)) {
        static const u8 v0 [] = {
            100, 150, 175, 200
        };
        VecFx32 v1;

        VEC_Set(&v1, param0->unk_280 << FX32_SHIFT, param0->unk_284 << FX32_SHIFT, 0);
        VEC_Subtract(&param0->unk_134[param2].unk_14, &v1, &v1);
        VEC_Normalize(&v1, &v1);

        v1.x = (v1.x * v0[param1->unk_04[param2].unk_0B]) / 100;
        v1.y = (v1.y * v0[param1->unk_04[param2].unk_0B]) / 100;
        v1.x /= 16;
        v1.y /= 16;
        param0->unk_134[param2].unk_08 = v1;
    } else {
        ov33_02256BAC(param0, param2, 0);
    }
}

static void ov33_02257010 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2)
{
    ov33_02256B3C(" icon[%d] TcgLike\n", param2);

    if (param1->unk_4C) {
        VecFx32 v0;

        VEC_Set(&v0, param0->unk_280 << FX32_SHIFT, param0->unk_284 << FX32_SHIFT, 0);

        if (ov33_02256A14(param0->unk_280, param0->unk_284, 8, &param0->unk_134[param2].unk_14)) {
            VEC_Subtract(&v0, &param0->unk_134[param2].unk_14, &v0);

            if (VEC_Mag(&v0) > 1536) {
                VecFx32 v1;

                VEC_Normalize(&v0, &v0);
                v0.x *= (1536 >> FX32_SHIFT);
                v0.y *= (1536 >> FX32_SHIFT);
            }

            v0.x /= 16;
            v0.y /= 16;
            param0->unk_134[param2].unk_08 = v0;
            return;
        } else if (ov33_02256A14(param0->unk_280, param0->unk_284, 64, &param0->unk_134[param2].unk_14)) {
            ov33_02256BAC(param0, param2, 1);
            return;
        }
    }

    ov33_02256BAC(param0, param2, 0);
}

static void ov33_022570E8 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2)
{
    ov33_02256B3C(" icon[%d] TchHate\n", param2);

    if (param1->unk_4C) {
        VecFx32 v0;

        VEC_Set(&v0, param0->unk_280 << FX32_SHIFT, param0->unk_284 << FX32_SHIFT, 0);

        if (ov33_02256A14(param0->unk_280, param0->unk_284, 8, &param0->unk_134[param2].unk_14)) {
            VEC_Set(&param0->unk_134[param2].unk_08, 0, 0, 0);
            return;
        } else if (ov33_02256A14(param0->unk_280, param0->unk_284, 64, &param0->unk_134[param2].unk_14)) {
            ov33_02256BAC(param0, param2, 2);
            return;
        }
    } else {
        if (ov33_02256D20(&param0->unk_134[param2].unk_08)) {
            ov33_022567D4(&param0->unk_134[param2].unk_08);
        }
    }

    ov33_02256BAC(param0, param2, 0);
}

static void ov33_0225718C (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1, int param2)
{
    UnkStruct_ov33_02256474_sub1 * v0 = &param0->unk_134[param2];

    ov33_02256B3C(" icon[%d] Reset!!\n", param2);

    switch (v0->unk_34_val3[0]) {
    case 0:
        VEC_Set(&v0->unk_08, 0, 0, 0);
        ov33_02256C98(param0, param2);
        ov25_02254424(1641);
        v0->unk_34_val3[0]++;
    case 1:
        v0->unk_34_val3[1] += 8;

        if (v0->unk_34_val3[2] == 0) {
            if (v0->unk_34_val3[1] > 140) {
                ov33_02256CC4(param0, param2);
                v0->unk_34_val3[2] = 1;
            }
        }

        if (v0->unk_34_val3[1] > 180) {
            v0->unk_34_val3[1] = 180;
            v0->unk_34_val3[2] = 2;
        }

        VEC_Set(&v0->unk_20, 0, -20 * sub_0201D15C(v0->unk_34_val3[1]), 0);
        VEC_Add(&v0->unk_14, &v0->unk_20, &param0->unk_A4);

        ov25_02255900(v0->unk_00, param0->unk_A4.x, param0->unk_A4.y);
        ov25_02255900(v0->unk_04, v0->unk_14.x, v0->unk_14.y + (8 << FX32_SHIFT));

        if (v0->unk_34_val3[2] == 2) {
            ov33_022567D4(&v0->unk_08);
            ov33_02256BAC(param0, param2, 0);
            param0->unk_100--;
        }
        break;
    }
}

static void ov33_022572A0 (UnkStruct_ov33_02256474 * param0, const UnkStruct_ov33_02256474_1 * param1)
{
    VecFx32 v0;
    fx32 v1, v2;
    fx32 v3;
    int v4, v5, v6, v7, v8;
    VecFx32 v9, v10;
    fx32 v11, v12;

    v2 = 16 << FX32_SHIFT;

    do {
        v1 = v2;
        v6 = 0;

        for (v7 = 0; v7 < param1->unk_00; v7++) {
            VEC_MultAdd(v1, &param0->unk_134[v7].unk_08, &param0->unk_134[v7].unk_14, &param0->unk_5C[v7]);
        }

        for (v7 = 0; v7 < param1->unk_00; v7++) {
            if ((param0->unk_5C[v7].x < -40960) && (param0->unk_134[v7].unk_08.x != 0)) {
                fx32 v13 = v1 - ((param0->unk_5C[v7].x - -40960) / param0->unk_134[v7].unk_08.x);

                if (v13 < v1) {
                    v6 = 2;
                    v4 = v7;
                    v1 = v13;
                }
            }

            if ((param0->unk_5C[v7].x > 888832) && (param0->unk_134[v7].unk_08.x != 0)) {
                fx32 v14 = v1 - ((param0->unk_5C[v7].x - 888832) / param0->unk_134[v7].unk_08.x);

                if (v14 < v1) {
                    v6 = 3;
                    v4 = v7;
                    v1 = v14;
                }
            }

            if ((param0->unk_5C[v7].y < -90112) && (param0->unk_134[v7].unk_08.y != 0)) {
                fx32 v15 = v1 - ((param0->unk_5C[v7].y - -90112) / param0->unk_134[v7].unk_08.y);

                if (v15 < v1) {
                    v6 = 4;
                    v4 = v7;
                    v1 = v15;
                }
            }

            if ((param0->unk_5C[v7].y > 749568) && (param0->unk_134[v7].unk_08.y != 0)) {
                fx32 v16 = v1 - ((param0->unk_5C[v7].y - 749568) / param0->unk_134[v7].unk_08.y);

                if (v16 < v1) {
                    v6 = 5;
                    v4 = v7;
                    v1 = v16;
                }
            }
        }

        for (v8 = 0; v8 < param1->unk_00; v8++) {
            for (v7 = 0; v7 < v8; v7++) {
                VEC_Subtract(&param0->unk_5C[v7], &param0->unk_5C[v8], &v0);

                v3 = VEC_Mag(&v0);

                if (v3 < (2 * 65536)) {
                    VEC_Normalize(&v0, &v9);
                    VEC_Subtract(&param0->unk_134[v7].unk_08, &param0->unk_134[v8].unk_08, &v10);

                    v11 = VEC_DotProduct(&v10, &v9);
                    v12 = v1 - ((2 * 65536 - v3) / -v11);

                    if (v12 < v1) {
                        v6 = 1;
                        v4 = v7;
                        v5 = v8;
                        v1 = v12;
                    }
                }
            }
        }

        if (v1 <= 0) {
            break;
        }

        for (v7 = 0; v7 < param1->unk_00; v7++) {
            VEC_MultAdd(v1, &param0->unk_134[v7].unk_08, &param0->unk_134[v7].unk_14, &param0->unk_134[v7].unk_14);
        }

        switch (v6) {
        case 1:
        {
            if (param0->unk_134[v4].unk_2C == 3) {
                VecFx32 * v17 = &param0->unk_134[v5].unk_08;

                if (inline_ov33_022572A0(v17) || param0->unk_134[v5].unk_32) {
                    VEC_Subtract(&param0->unk_134[v5].unk_14, &param0->unk_134[v4].unk_14, &v0);
                    VEC_Normalize(&v0, &v9);

                    v17->x = FX_Mul(v9.x, FX32_CONST(0.1f));
                    v17->y = FX_Mul(v9.y, FX32_CONST(0.1f));

                    param0->unk_134[v5].unk_32 = 1;

                    if (((v4 == 1) && (v5 == 2)) || ((v5 == 1) && (v4 == 2))) {
                        (void)0;
                    }
                } else {
                    inline_ov33_022572A0_1(v17);

                    if (((v4 == 1) && (v5 == 2)) || ((v5 == 1) && (v4 == 2))) {
                        (void)0;
                    }
                }

                param0->unk_134[v5].unk_2F = 20;
            } else if (param0->unk_134[v5].unk_2C == 3) {
                VecFx32 * v18 = &param0->unk_134[v4].unk_08;

                if (inline_ov33_022572A0(v18) || param0->unk_134[v4].unk_32) {
                    VEC_Subtract(&param0->unk_134[v4].unk_14, &param0->unk_134[v5].unk_14, &v0);
                    VEC_Normalize(&v0, &v9);
                    v18->x = FX_Mul(v9.x, FX32_CONST(0.1f));
                    v18->y = FX_Mul(v9.y, FX32_CONST(0.1f));

                    param0->unk_134[v4].unk_32 = 1;

                    if (((v4 == 1) && (v5 == 2)) || ((v5 == 1) && (v4 == 2))) {
                        (void)0;
                    }
                } else {
                    inline_ov33_022572A0_1(v18);

                    if (((v4 == 1) && (v5 == 2)) || ((v5 == 1) && (v4 == 2))) {
                        (void)0;
                    }
                }

                param0->unk_134[v4].unk_2F = 20;
            } else {
                VEC_Subtract(&param0->unk_134[v4].unk_14, &param0->unk_134[v5].unk_14, &v0);

                v3 = VEC_Mag(&v0);

                VEC_Normalize(&v0, &v9);
                VEC_Subtract(&param0->unk_134[v4].unk_08, &param0->unk_134[v5].unk_08, &v10);

                v11 = VEC_DotProduct(&v10, &v9);

                VEC_MultAdd(-v11, &v9, &param0->unk_134[v4].unk_08, &param0->unk_134[v4].unk_08);
                VEC_MultAdd(v11, &v9, &param0->unk_134[v5].unk_08, &param0->unk_134[v5].unk_08);

                param0->unk_134[v4].unk_2F = 20;
                param0->unk_134[v5].unk_2F = 20;
                param0->unk_134[v4].unk_32 = 0;
                param0->unk_134[v5].unk_32 = 0;

                if (((v4 == 1) && (v5 == 2)) || ((v5 == 1) && (v4 == 2))) {
                    (void)0;
                }
            }
        }
        break;
        case 2:
        case 3:
            param0->unk_134[v4].unk_08.x *= -1;
            param0->unk_134[v4].unk_32 = 0;
            break;
        case 4:
        case 5:
            param0->unk_134[v4].unk_08.y *= -1;
            param0->unk_134[v4].unk_32 = 0;
            break;
        }

        v2 -= v1;
    } while (v6 != 0);

    for (v7 = 0; v7 < param1->unk_00; v7++) {
        if (param0->unk_134[v7].unk_2C < 3) {
            inline_ov33_0225681C(&param0->unk_134[v7]);
        }

        VEC_Add(&param0->unk_134[v7].unk_14, &param0->unk_134[v7].unk_20, &param0->unk_A4);

        ov25_02255900(param0->unk_134[v7].unk_00, param0->unk_A4.x, param0->unk_A4.y);
        ov25_02255900(param0->unk_134[v7].unk_04, param0->unk_134[v7].unk_14.x, param0->unk_134[v7].unk_14.y + (8 << FX32_SHIFT));
    }
}

static inline BOOL inline_ov33_022572A0 (const VecFx32 * param0)
{
    return (param0->x == 0) && (param0->y == 0);
}

static inline void inline_ov33_022572A0_1 (VecFx32 * param0)
{
    param0->x *= -1;
    param0->y *= -1;
}
