#include <nitro.h>
#include <string.h>

#include "enums.h"

#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_defs/pokemon.h"

#include "struct_defs/struct_0207F248.h"

#include "library/spl.h"

#include "unk_02005474.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_02014000.h"
#include "heap.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_02023790.h"
#include "unk_0202419C.h"
#include "unk_0202631C.h"
#include "unk_0203CC84.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"
#include "overlay118/ov118_021D0D80.h"

typedef struct UnkStruct_ov118_021D0FDC_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    int unk_14;
    UnkStruct_02014014 * unk_18;
} UnkStruct_ov118_021D0FDC;

static void ov118_021D0F70(UnkStruct_0207F248 * param0);
static void ov118_021D0F88(UnkStruct_0207F248 * param0);
static void ov118_021D0FB8(UnkStruct_0207F248 * param0);
static void ov118_021D0FDC(UnkStruct_ov118_021D0FDC * param0);
static void ov118_021D1028(UnkStruct_ov118_021D0FDC * param0);
static int ov118_021D10E8(void);
static void ov118_021D110C(UnkStruct_ov118_021D0FDC * param0);
static u32 ov118_021D1128(u32 param0, BOOL param1);
static u32 ov118_021D114C(u32 param0, BOOL param1);
static void ov118_021D10B0(UnkSPLStruct6 * param0);

static const fx32 Unk_ov118_021D1170[][2] = {
    {0xFFFFFFFFFFFFBF8C, 0x2EE0},
    {0x1388, 0x2CEC},
    {0xFFFFFFFFFFFFBF8C, 0x1388},
    {0x1388, 0xDAC},
    {0xFFFFFFFFFFFFBF8C, 0xFFFFFFFFFFFFF448},
    {0x1388, 0xFFFFFFFFFFFFEE6C}
};

void ov118_021D0D80 (UnkStruct_0207F248 * param0)
{
    GF_ASSERT(param0->unk_B24 == NULL);

    param0->unk_B24 = Heap_AllocFromHeap(12, sizeof(UnkStruct_ov118_021D0FDC));
    MI_CpuClear8(param0->unk_B24, sizeof(UnkStruct_ov118_021D0FDC));
    param0->unk_B24->unk_14 = param0->unk_B11;
}

int ov118_021D0DBC (UnkStruct_0207F248 * param0)
{
    UnkStruct_ov118_021D0FDC * v0 = param0->unk_B24;
    Pokemon * v1 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);

    switch (v0->unk_00) {
    case 0:
    {
        v0->unk_0C = GetMonData(v1, MON_DATA_SPECIES, NULL);

        switch (v0->unk_0C) {
        case 487:
            sub_02077A00(v1);
            v0->unk_08 = 65;
            v0->unk_10 = 0;
            break;
        case 492:
            SetShayminForm(v1, 1);
            v0->unk_08 = 35;
            v0->unk_10 = 1;
            break;
        case 479:
        default:
            GF_ASSERT(0);
            break;
        }

        sub_0202736C(sub_02027560(sub_0203D174(param0->unk_5A4->unk_1C)), v1);
    }
        v0->unk_00++;
        break;
    case 1:
    case 2:
        v0->unk_00++;
        break;
    case 3:
        ov118_021D0F88(param0);
        v0->unk_00++;
        break;
    case 4:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        ov118_021D1028(v0);
        v0->unk_00++;
        break;
    case 5:
        v0->unk_04++;

        if (v0->unk_04 == v0->unk_08) {
            sub_02082DA8(param0, param0->unk_B11);
        }

        ov118_021D10E8();

        if ((v0->unk_04 > v0->unk_08) && (sub_02014710(v0->unk_18) == 0)) {
            v0->unk_00++;
        }
        break;
    case 6:
        ov118_021D0FB8(param0);
        v0->unk_00++;
        break;
    case 7:
        sub_02077E3C(v1);
        v0->unk_00++;
        break;
    case 8:
        if (sub_0200598C() == 0) {
            v0->unk_00++;
        }
        break;
    case 9:
    {
        Strbuf* v2;

        v2 = sub_0200B1EC(param0->unk_69C, 202);

        sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v1));
        sub_0200C388(param0->unk_6A0, param0->unk_6A4, v2);
        sub_020237BC(v2);
        sub_02082708(param0, 0xffffffff, 1);
    }
        v0->unk_00++;
        break;
    case 10:
        if (sub_0201D724(param0->unk_B10) == 0) {
            ov118_021D0F70(param0);
            param0->unk_5A4->unk_23 = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static void ov118_021D0F70 (UnkStruct_0207F248 * param0)
{
    Heap_FreeToHeap(param0->unk_B24);
    param0->unk_B24 = NULL;
}

static void ov118_021D0F88 (UnkStruct_0207F248 * param0)
{
    sub_0207EA74(param0, 0);
    ov118_021D0FDC(param0->unk_B24);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 0);
}

static void ov118_021D0FB8 (UnkStruct_0207F248 * param0)
{
    ov118_021D110C(param0->unk_B24);
    sub_0207EA74(param0, 1);

    G2_BlendNone();
}

static void ov118_021D0FDC (UnkStruct_ov118_021D0FDC * param0)
{
    void * v0;
    UnkStruct_020203AC * v1;

    sub_02014000();

    v0 = Heap_AllocFromHeap(12, 0x4800);
    param0->unk_18 = sub_02014014(ov118_021D1128, ov118_021D114C, v0, 0x4800, 1, 12);
    v1 = sub_02014784(param0->unk_18);

    sub_020206BC((FX32_ONE), (FX32_ONE * 900), v1);
}

static void ov118_021D1028 (UnkStruct_ov118_021D0FDC * param0)
{
    void * v0;

    v0 = sub_020144C4(185, param0->unk_10, 12);
    sub_020144CC(param0->unk_18, v0, (1 << 1) | (1 << 3), 1);

    switch (param0->unk_0C) {
    case 487:
        sub_020146F4(param0->unk_18, 0, ov118_021D10B0, param0);
        sub_020146F4(param0->unk_18, 1, ov118_021D10B0, param0);
        sub_020146F4(param0->unk_18, 2, ov118_021D10B0, param0);
        sub_02005748(1363);
        break;
    case 492:
        sub_020146F4(param0->unk_18, 0, ov118_021D10B0, param0);
        sub_020146F4(param0->unk_18, 1, ov118_021D10B0, param0);
        sub_02005748(1364);
        break;
    }
}

static void ov118_021D10B0 (UnkSPLStruct6 * param0)
{
    UnkStruct_ov118_021D0FDC * v0;

    v0 = sub_02014764();

    SPL_UnkInline2(param0, Unk_ov118_021D1170[v0->unk_14][0]);
    SPL_UnkInline3(param0, Unk_ov118_021D1170[v0->unk_14][1]);
}

static int ov118_021D10E8 (void)
{
    int v0;

    sub_020241B4();

    v0 = sub_0201469C();

    if (v0 > 0) {
        sub_020241B4();
    }

    sub_020146C0();
    sub_020241BC(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    return v0;
}

static void ov118_021D110C (UnkStruct_ov118_021D0FDC * param0)
{
    void * v0;

    v0 = sub_02014730(param0->unk_18);
    sub_0201411C(param0->unk_18);
    Heap_FreeToHeap(v0);
}

static u32 ov118_021D1128 (u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    sub_020145B4(v0);

    return NNS_GfdGetTexKeyAddr(v0);
}

static u32 ov118_021D114C (u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;

    v0 = NNS_GfdAllocPlttVram(param0, param1, NNS_GFD_ALLOC_FROM_LOW);
    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    sub_020145F4(v0);

    return NNS_GfdGetPlttKeyAddr(v0);
}
