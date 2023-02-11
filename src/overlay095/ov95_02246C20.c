#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "overlay095/struct_ov95_02247004_decl.h"
#include "overlay095/struct_ov95_022472C4_decl.h"
#include "overlay095/struct_ov95_02247628_decl.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013610.h"
#include "overlay006/struct_ov6_02246254.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay095/struct_ov95_02247568.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_020279FC.h"
#include "unk_020393C8.h"
#include "unk_02073C2C.h"
#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_02247B6C.h"
#include "overlay095/ov95_02248590.h"
#include "overlay095/ov95_02249740.h"
#include "overlay095/ov95_02249F90.h"
#include "overlay095/ov95_0224A390.h"
#include "overlay095/ov95_0224ABC0.h"
#include "overlay095/ov95_0224B3D8.h"

struct UnkStruct_ov95_02247628_t {
    const UnkStruct_ov6_02246254 * unk_00;
    int unk_04;
    UnkStruct_02018340 * unk_08;
    UnkStruct_0200B358 * unk_0C;
    UnkStruct_0200B144 * unk_10;
    UnkStruct_02023790 * unk_14;
    UnkStruct_020218BC * unk_18;
    UnkStruct_0200C738 unk_1C;
    UnkStruct_0201CD38 * unk_1A8;
    BOOL unk_1AC;
    u16 unk_1B0;
    u16 unk_1B2;
    u16 unk_1B4;
    u16 unk_1B6;
    void * unk_1B8;
};

struct UnkStruct_ov95_02247004_t {
    u16 unk_00[96];
    UnkStruct_0201CD38 * unk_C0;
    UnkStruct_0201CD38 * unk_C4[8];
    BOOL * unk_E4;
    BOOL unk_E8;
    int unk_EC;
    int unk_F0;
    int unk_F4;
    int unk_F8;
    int unk_FC;
};

typedef struct {
    UnkStruct_ov95_02247004 * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov95_02247170;

struct UnkStruct_ov95_022472C4_t {
    UnkStruct_02018340 * unk_00;
    volatile BOOL * unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_0201CD38 * unk_20;
};

typedef void *(* UnkFuncPtr_ov95_0224BE8C)(UnkStruct_ov95_02247628 *);
typedef BOOL (* UnkFuncPtr_ov95_0224BE8C_1)(void *, int *);
typedef void (* UnkFuncPtr_ov95_0224BE8C_2)(void *);

static BOOL ov95_02246DEC(BoxPokemon * boxMon);
static void ov95_02246F0C(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_02247060(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_02247148(UnkStruct_ov95_02247004 * param0, int param1, int param2, int param3);
static void ov95_02247170(UnkStruct_ov95_02247004 * param0);
static void ov95_02247224(UnkStruct_ov95_02247004 * param0, int param1);
static void ov95_02247254(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_0224732C(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_022473A0(UnkStruct_ov95_022472C4 * param0);
static void ov95_02247688(void);
static void ov95_02247694(void);

static const struct {
    UnkFuncPtr_ov95_0224BE8C unk_00;
    UnkFuncPtr_ov95_0224BE8C_1 unk_04;
    UnkFuncPtr_ov95_0224BE8C_2 unk_08;
    int unk_0C;
} Unk_ov95_0224BE8C[] = {
    {ov95_02247B6C, ov95_02247C34, ov95_02247BC8, 1 | 2},
    {ov95_02248590, ov95_02248650, ov95_022485FC, 1 | 2},
    {ov95_02249740, ov95_022497A0, ov95_02249770, 1 | 2},
    {ov95_02249F90, ov95_02249FC8, ov95_02249FB4, 1},
    {ov95_0224A390, ov95_0224A3FC, ov95_0224A3CC, 1 | 4},
    {ov95_0224ABC0, ov95_0224AC2C, ov95_0224ABF4, 1 | 4},
    {ov95_0224B3D8, ov95_0224B49C, ov95_0224B438, 1 | 4},
};

int ov95_02246C20 (UnkStruct_020067E8 * param0, int * param1)
{
    if (sub_0200F2AC()) {
        UnkStruct_ov95_02247628 * v0;

        Heap_Create(3, 57, 98304);
        Heap_Create(3, 58, 98304);
        ov95_02247688();
        sub_02004550(3, 1170, 1);

        v0 = sub_0200681C(param0, sizeof(UnkStruct_ov95_02247628), 57);

        if (v0) {
            v0->unk_00 = sub_02006840(param0);
            v0->unk_04 = 0;
            v0->unk_08 = sub_02018340(57);
            v0->unk_14 = sub_02023790(400, 57);
            v0->unk_10 = sub_0200B144(0, 26, 350, 57);
            v0->unk_0C = sub_0200B358(57);

            switch (v0->unk_00->unk_10) {
            case 1:
                sub_0200B5CC(v0->unk_0C, 0, (BoxPokemon *)(v0->unk_00->unk_00));
                sub_0200B5CC(v0->unk_0C, 1, (BoxPokemon *)(v0->unk_00->unk_04));
                sub_0200B498(v0->unk_0C, 2, v0->unk_00->unk_08);
                v0->unk_1AC = ov95_02246DEC((BoxPokemon *)(v0->unk_00->unk_04));
                break;
            case 2:
                sub_0200B5CC(v0->unk_0C, 0, (BoxPokemon *)(v0->unk_00->unk_00));
                break;
            case 4:
                sub_0200B5CC(v0->unk_0C, 1, (BoxPokemon *)(v0->unk_00->unk_04));
                v0->unk_1AC = ov95_02246DEC((BoxPokemon *)(v0->unk_00->unk_04));
                break;
            }

            NNS_G2dInitOamManagerModule();

            sub_0200A784(0, 128, 0, 32, 1, 127, 0, 32, 57);
            v0->unk_18 = sub_020095C4(64, &v0->unk_1C, 57);
            sub_0200964C(&(v0->unk_1C), 0, (192 + 40 << FX32_SHIFT));

            v0->unk_1B0 = sub_02074570((BoxPokemon *)(v0->unk_00->unk_00), MON_DATA_SPECIES, NULL);
            v0->unk_1B2 = sub_02074570((BoxPokemon *)(v0->unk_00->unk_00), MON_DATA_112, NULL);
            v0->unk_1B4 = sub_02074570((BoxPokemon *)(v0->unk_00->unk_04), MON_DATA_SPECIES, NULL);
            v0->unk_1B6 = sub_02074570((BoxPokemon *)(v0->unk_00->unk_04), MON_DATA_112, NULL);
            v0->unk_1B8 = NULL;

            sub_02017798(NULL, NULL);
            sub_020177A4();
            GXLayers_DisableEngineALayers();
            GXLayers_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);

            v0->unk_1A8 = sub_0200DA20(ov95_02246F0C, v0, 1);
            v0->unk_1B8 = NULL;
        }

        return 1;
    }

    return 0;
}

static BOOL ov95_02246DEC (BoxPokemon * boxMon)
{
    int v0 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    int v1 = sub_02074570(boxMon, MON_DATA_112, NULL);

    return sub_020759CC(v0, v1, 28) == 0;
}

int ov95_02246E1C (UnkStruct_020067E8 * param0, int * param1)
{
    OSIntrMode v0;
    UnkStruct_ov95_02247628 * v1;

    v0 = OS_DisableInterrupts();
    v1 = sub_0200682C(param0);

    sub_0200DA58(v1->unk_1A8);
    sub_02039794();
    sub_0200B3F0(v1->unk_0C);
    sub_0200B190(v1->unk_10);
    sub_020237BC(v1->unk_14);
    Heap_FreeToHeap(v1->unk_08);
    sub_02021964(v1->unk_18);
    sub_0200A878();
    sub_02006830(param0);
    Heap_Destroy(57);
    Heap_Destroy(58);

    OS_RestoreInterrupts(v0);

    return 1;
}

int ov95_02246E7C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov95_02247628 * v0 = sub_0200682C(param0);

    if (v0->unk_04 < NELEMS(Unk_ov95_0224BE8C)) {
        if (Unk_ov95_0224BE8C[v0->unk_04].unk_0C & v0->unk_00->unk_10) {
            if (v0->unk_1B8 == NULL) {
                v0->unk_1B8 = Unk_ov95_0224BE8C[v0->unk_04].unk_00(v0);
            }

            if (Unk_ov95_0224BE8C[v0->unk_04].unk_04(v0->unk_1B8, param1)) {
                Unk_ov95_0224BE8C[v0->unk_04].unk_08(v0->unk_1B8);
                v0->unk_1B8 = NULL;

                v0->unk_04++;
                (*param1) = 0;
            }
        } else {
            v0->unk_04++;
            (*param1) = 0;
        }

        ov95_02247694();

        return 0;
    } else {
        return 1;
    }
}

static void ov95_02246F0C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_02247628 * v0 = param1;

    sub_020219F8(v0->unk_18);
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

UnkStruct_ov95_02247004 * ov95_02246F30 (BOOL * param0, int param1)
{
    UnkStruct_ov95_02247004 * v0 = Heap_AllocFromHeap(57, sizeof(UnkStruct_ov95_02247004));

    *param0 = 0;

    if (v0) {
        NNSG2dPaletteData * v1;
        void * v2;
        u32 v3;
        int v4;

        v2 = sub_02006F88(93, 6, &v1, 57);

        if (v2) {
            MI_CpuFill16(v0->unk_00, 0x0, 96);
            Heap_FreeToHeap(v2);
        }

        v0->unk_EC = 0;
        v0->unk_E8 = 0;
        v0->unk_F0 = 0;
        v0->unk_F4 = 0;
        v0->unk_E4 = param0;
        v0->unk_F8 = 0;
        v0->unk_FC = param1;

        for (v4 = 0; v4 < 8; v4++) {
            v0->unk_C4[v4] = NULL;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 16, 8);
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 16, 8);

        v0->unk_C0 = sub_0200DA3C(ov95_02247060, v0, 20);

        if (v0->unk_C0) {
            *(v0->unk_E4) = 1;
        }
    }

    return v0;
}

void ov95_02247004 (UnkStruct_ov95_02247004 * param0)
{
    if (*(param0->unk_E4) == 1) {
        param0->unk_E8 = 1;
    }
}

void ov95_02247018 (UnkStruct_ov95_02247004 * param0)
{
    if (*(param0->unk_E4) == 1) {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_C4[v0]) {
                ov95_02247224(param0, v0);
            }
        }

        *(param0->unk_E4) = 0;
        sub_0200DA58(param0->unk_C0);
        Heap_FreeToHeap(param0);
    }
}

static void ov95_02247060 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_02247004 * v0 = param1;

    if (v0->unk_E8 == 0) {
        if (--(v0->unk_F0) <= 0) {
            sub_02005748(1710);
            v0->unk_F0 = 30;
            ov95_02247170(v0);
        }

        if (v0->unk_EC) {
            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();

            DC_FlushRange(v0->unk_00, 96);
            GX_LoadBGExtPltt(v0->unk_00, 0x6000, 96);
            GXS_LoadBGExtPltt(v0->unk_00, 0x6000, 96);

            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            v0->unk_EC = 0;
        }
    } else {
        if (v0->unk_EC) {
            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();

            DC_FlushRange(v0->unk_00, 96);
            GX_LoadBGExtPltt(v0->unk_00, 0x6000, 96);
            GXS_LoadBGExtPltt(v0->unk_00, 0x6000, 96);

            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            v0->unk_EC = 0;
        }

        if (v0->unk_F4 == 0) {
            *(v0->unk_E4) = 0;
            Heap_FreeToHeap(v0);
            sub_0200DA58(param0);
        }
    }
}

static void ov95_02247148 (UnkStruct_ov95_02247004 * param0, int param1, int param2, int param3)
{
    if ((param1 >= 0) && (param1 < 96)) {
        param0->unk_00[param1] = 0x0;
    }

    if ((param2 >= 0) && (param2 < 96)) {
        param0->unk_00[param2] = param3;
    }

    param0->unk_EC = 1;
}

static void ov95_02247170 (UnkStruct_ov95_02247004 * param0)
{
    if (param0->unk_C4[param0->unk_F8] == NULL) {
        UnkStruct_ov95_02247170 * v0 = Heap_AllocFromHeap(57, sizeof(UnkStruct_ov95_02247170));

        if (v0) {
            v0->unk_00 = param0;

            if (param0->unk_FC == 1) {
                v0->unk_04 = -1;
            } else {
                v0->unk_04 = 15;
            }

            v0->unk_0C = 0;
            v0->unk_08 = 2;
            v0->unk_10 = param0->unk_F8;
            v0->unk_14 = param0->unk_FC;
            param0->unk_C4[param0->unk_F8] = sub_0200D9E8(ov95_02247254, v0, 10);

            if (param0->unk_C4[param0->unk_F8]) {
                param0->unk_F4++;

                if (++(param0->unk_F8) >= 8) {
                    param0->unk_F8 = 0;
                }
            } else {
                Heap_FreeToHeap(v0);
            }
        }
    }
}

static void ov95_02247224 (UnkStruct_ov95_02247004 * param0, int param1)
{
    if (param0->unk_C4[param1]) {
        Heap_FreeToHeap(sub_0201CED0(param0->unk_C4[param1]));
        sub_0200DA58(param0->unk_C4[param1]);
        param0->unk_C4[param1] = NULL;
        param0->unk_F4--;
    }
}

static void ov95_02247254 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_02247170 * v0 = param1;

    if (++(v0->unk_0C) >= v0->unk_08) {
        v0->unk_0C = 0;

        if (v0->unk_14 == 1) {
            if (v0->unk_04 + 1 >= 15) {
                ov95_02247148(v0->unk_00, v0->unk_04, v0->unk_04 + 1, 0x0);
                ov95_02247224(v0->unk_00, v0->unk_10);
            } else {
                ov95_02247148(v0->unk_00, v0->unk_04, v0->unk_04 + 1, 0x7fff);
                v0->unk_04++;
            }
        } else {
            if (v0->unk_04 < 0) {
                ov95_02247148(v0->unk_00, v0->unk_04, v0->unk_04 + 1, 0x0);
                ov95_02247224(v0->unk_00, v0->unk_10);
            } else {
                ov95_02247148(v0->unk_00, v0->unk_04 + 1, v0->unk_04, 0x7fff);
                v0->unk_04--;
            }
        }
    }
}

UnkStruct_ov95_022472C4 * ov95_022472C4 (UnkStruct_02018340 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, int param5, volatile BOOL * param6)
{
    UnkStruct_ov95_022472C4 * v0 = Heap_AllocFromHeap(57, sizeof(UnkStruct_ov95_022472C4));

    *param6 = 1;

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_08 = param1;
        v0->unk_0C = param2;
        v0->unk_10 = param3;
        v0->unk_14 = param4;
        v0->unk_18 = (param1 < param2) ? 0 : 1;
        v0->unk_1C = param5;
        v0->unk_04 = param6;
        *param6 = 0;

        v0->unk_20 = sub_0200DA04(ov95_0224732C, v0, 0);

        if (v0->unk_20) {
            (void)0;
        } else {
            *param6 = 1;
            Heap_FreeToHeap(v0);
        }
    }

    return v0;
}

static void ov95_0224732C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_022472C4 * v0 = param1;
    fx32 v1;

    v1 = ((v0->unk_08 * v0->unk_10) >> FX32_SHIFT) / 32;

    switch (v0->unk_18) {
    case 0:
        if ((v0->unk_08 + v1) < v0->unk_0C) {
            v0->unk_08 += v1;
        } else {
            v0->unk_08 = v0->unk_0C;
            *(v0->unk_04) = 1;
        }
        break;
    case 1:
        if ((v0->unk_08 - v1) > v0->unk_0C) {
            v0->unk_08 -= v1;
        } else {
            v0->unk_08 = v0->unk_0C;
            *(v0->unk_04) = 1;
        }
        break;
    }

    ov95_022473A0(v0);

    if (*(v0->unk_04)) {
        ov95_022476C8(v0);
        sub_0200DA58(param0);
    } else {
        v0->unk_10 += v0->unk_14;
    }
}

static void ov95_022473A0 (UnkStruct_ov95_022472C4 * param0)
{
    static const int v0[] = {
        144, 56,
    };
    MtxFx22 v1;

    v1._00 = param0->unk_08;
    v1._01 = 1 << FX32_ONE;
    v1._10 = 0;
    v1._11 = param0->unk_08;

    sub_02019348(param0->unk_00, 2, &v1, 128, v0[param0->unk_1C]);
    sub_02019348(param0->unk_00, 6, &v1, 128, v0[param0->unk_1C]);
}

void ov95_022473E8 (UnkStruct_ov95_02247628 * param0, int param1, u32 param2, u32 param3, BOOL param4)
{
    UnkStruct_02008A90 v0;
    u32 v1;
    u32 v2;
    void * v3;

    v2 = (param4) ?  0x20 * 200 : 0x20 * 100;
    v3 = Heap_AllocFromHeapAtEnd(57, v2);

    if (v3) {
        UnkStruct_02013610 v4 = {
            0, 0, 10, 10,
        };
        BoxPokemon * v5;
        BOOL v6;
        u32 personality;
        u16 v8;

        v5 = (BoxPokemon *)((param1 == 0) ? param0->unk_00->unk_00 : param0->unk_00->unk_04);
        v6 = sub_02073D20(v5);

        sub_02075F0C(&v0, v5, 2, 0);

        personality = sub_02074570(v5, MON_DATA_PERSONALITY, NULL);
        v8 = sub_02074570(v5, MON_DATA_SPECIES, NULL);

        if (param4) {
            v4.unk_08 *= 2;
        }

        sub_02013720(v0.unk_00, v0.unk_02, 57, &v4, v3, personality, param4, 2, v8);
        DC_FlushRange(v3, v2);
        sub_0201958C(param0->unk_08, param2, v3, v2, 0);

        sub_02073D48(v5, v6);
        Heap_FreeToHeap(v3);
    }

    v1 = (param2 >= 4) ? 4 : 0;
    sub_02006E84(v0.unk_00, v0.unk_04, v1, param3 * 0x20, 0x20, 57);
}

void ov95_022474D4 (UnkStruct_ov95_02247628 * param0, int param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    void * v0;
    NNSG2dScreenData * v1;
    u32 v2;

    if (param1 == 0) {
        v2 = 262;
    } else {
        v2 = (param0->unk_1AC) ? 263 : 262;
    }

    v0 = sub_02006F6C(7, v2, 0, &v1, 57);

    if (v0) {
        sub_020198E8(param0->unk_08, param2, param4, param5, 10, 10, v1->rawData, 0, 0, 32, 32);
        sub_02019E2C(param0->unk_08, param2, param4, param5, 10, 10, param3);
        Heap_FreeToHeap(v0);
    }
}

void ov95_02247568 (UnkStruct_ov95_02247568 * param0, u32 param1, u32 param2, u32 param3)
{
    param0->unk_00 = sub_02006FA0(param1, param2, 1, &(param0->unk_08), 58);
    param0->unk_04 = sub_02006FBC(param1, param3, 1, &(param0->unk_0C), 58);
}

void ov95_022475A0 (UnkStruct_ov95_02247568 * param0)
{
    if (param0->unk_00) {
        Heap_FreeToHeap(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_04) {
        Heap_FreeToHeap(param0->unk_04);
        param0->unk_04 = NULL;
    }
}

void ov95_022475C4 (UnkStruct_ov19_021DA864 * param0, UnkStruct_ov95_02247568 * param1, NNSG2dImageProxy * param2, NNSG2dImagePaletteProxy * param3, u32 param4)
{
    param0->unk_00 = param2;
    param0->unk_08 = param3;
    param0->unk_0C = param1->unk_08;
    param0->unk_10 = param1->unk_0C;
    param0->unk_20 = param4;
    param0->unk_04 = NULL;
    param0->unk_14 = NULL;
    param0->unk_18 = NULL;
    param0->unk_1C = 0;
}

UnkStruct_02022550 * ov95_022475E4 (UnkStruct_ov95_02247628 * param0, UnkStruct_ov19_021DA864 * param1, u32 param2, u32 param3, u32 param4, int param5)
{
    UnkStruct_02022550 * v0;
    UnkStruct_ov83_0223D9A8 v1;

    v1.unk_00 = param0->unk_18;
    v1.unk_04 = param1;
    v1.unk_08.x = param2 * FX32_ONE;
    v1.unk_08.y = param3 * FX32_ONE;
    v1.unk_08.z = 0;
    v1.unk_14 = param4;
    v1.unk_18 = param5;
    v1.unk_1C = 57;

    v0 = sub_02021B90(&v1);

    if (v0) {
        sub_02021CC8(v0, 1);
        sub_02021CE4(v0, FX32_ONE);
    }

    return v0;
}

UnkStruct_02018340 * ov95_02247628 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_08;
}

UnkStruct_0200B358 * ov95_0224762C (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_0C;
}

UnkStruct_0200B144 * ov95_02247630 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_10;
}

const BoxPokemon * ov95_02247634 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_00->unk_00;
}

const BoxPokemon * ov95_0224763C (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_00->unk_04;
}

u32 ov95_02247644 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_00->unk_0C;
}

u16 ov95_0224764C (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_1B0;
}

u16 ov95_02247654 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_1B2;
}

u16 ov95_02247660 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_1B4;
}

u16 ov95_02247668 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_1B6;
}

int ov95_02247674 (UnkStruct_ov95_02247628 * param0)
{
    return sub_02027B50(param0->unk_00->unk_14);
}

int ov95_02247680 (UnkStruct_ov95_02247628 * param0)
{
    return param0->unk_00->unk_10;
}

static int Unk_ov95_0224C2E0 = 0;
static void * Unk_ov95_0224C2E4[32];

static void ov95_02247688 (void)
{
    Unk_ov95_0224C2E0 = 0;
}

static void ov95_02247694 (void)
{
    if (Unk_ov95_0224C2E0) {
        int i;

        for (i = 0; i < Unk_ov95_0224C2E0; i++) {
            Heap_FreeToHeap(Unk_ov95_0224C2E4[i]);
        }

        Unk_ov95_0224C2E0 = 0;
    }
}

void ov95_022476C8 (void * param0)
{
    GF_ASSERT(Unk_ov95_0224C2E0 < 32);
    Unk_ov95_0224C2E4[Unk_ov95_0224C2E0++] = param0;
}
