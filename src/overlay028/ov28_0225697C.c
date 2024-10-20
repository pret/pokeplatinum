#include "overlay028/ov28_0225697C.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay028/ov28_02256E9C.h"
#include "overlay028/struct_ov28_0225697C_1.h"
#include "overlay028/struct_ov28_0225697C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"

struct UnkStruct_ov28_0225697C_t {
    const UnkStruct_ov28_0225697C_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    u16 unk_30[14];
    u16 unk_4C[17][32];
};

static void ov28_022569F4(UnkStruct_ov25_02255224 *param0);
static void ov28_02256A08(SysTask *param0, void *param1);
static void ov28_02256AA4(UnkStruct_ov28_0225697C *param0);
static void ov28_02256B24(SysTask *param0, void *param1);
static void ov28_02256B90(SysTask *param0, void *param1);
static void ov28_02256BF0(SysTask *param0, void *param1);
static void ov28_02256C28(SysTask *param0, void *param1);
static void ov28_02256C68(SysTask *param0, void *param1);
static void ov28_02256CA0(SysTask *param0, void *param1);
static void ov28_02256CE0(SysTask *param0, void *param1);
static void ov28_02256D20(SysTask *param0, void *param1);
static void ov28_02256D64(SysTask *param0, void *param1);
static void ov28_02256D90(BgConfig *param0, const UnkStruct_ov28_0225697C_1 *param1);
static void ov28_02256DCC(BgConfig *param0);
static void ov28_02256DF0(SysTask *param0, void *param1);
static void ov28_02256E0C(BgConfig *param0, const u16 *param1);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);

static const u16 Unk_ov28_022578F8[32] = {
    0xFB,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x55,
    0x56,
    0x124,
    0x124,
    0x124,
    0x124,
    0x125,
    0x123,
    0x7D,
    0x7E,
    0x124,
    0x124,
    0x124,
    0x124,
    0x125,
    0x151,
    0x152,
    0x152,
    0x152,
    0x152,
    0x152,
    0x152,
    0x153
};

static const u16 Unk_ov28_022576B8[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x57,
    0x58,
    0x125,
    0x123,
    0x7F,
    0x80,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257798[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x59,
    0x5A,
    0x125,
    0x123,
    0x81,
    0x82,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_022576F8[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x5B,
    0x5C,
    0x125,
    0x123,
    0x83,
    0x84,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257858[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x5D,
    0x5E,
    0x125,
    0x123,
    0x85,
    0x86,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_022576D8[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x5F,
    0x60,
    0x125,
    0x123,
    0x87,
    0x88,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257838[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x61,
    0x62,
    0x125,
    0x123,
    0x89,
    0x8A,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};
static const u16 Unk_ov28_02257818[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x63,
    0x64,
    0x125,
    0x123,
    0x8B,
    0x8C,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_022577F8[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x65,
    0x66,
    0x125,
    0x123,
    0x8D,
    0x8E,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_022577D8[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x67,
    0x68,
    0x125,
    0x123,
    0x8F,
    0x90,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_022577B8[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x69,
    0x6A,
    0x125,
    0x123,
    0x91,
    0x92,
    0x125,
    0x151,
    0x152,
    0x152,
    0x153
};
static const u16 Unk_ov28_02257878[8 * 4] = {
    0xFB,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x75,
    0x76,
    0x124,
    0x124,
    0x124,
    0x124,
    0x125,
    0x123,
    0x9D,
    0x9E,
    0x124,
    0x124,
    0x124,
    0x124,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14C,
    0x14C,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257778[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x6D,
    0x6E,
    0x125,
    0x123,
    0x95,
    0x96,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257758[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x6B,
    0x6C,
    0x125,
    0x123,
    0x93,
    0x94,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257738[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x6F,
    0x70,
    0x125,
    0x123,
    0x97,
    0x98,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_02257718[16] = {
    0xFB,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x71,
    0x72,
    0x125,
    0x123,
    0x99,
    0x9A,
    0x125,
    0x14B,
    0x14C,
    0x14C,
    0x14D
};

static const u16 Unk_ov28_022578B8[32] = {
    0xFB,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFC,
    0xFD,
    0x123,
    0x73,
    0x74,
    0x124,
    0x124,
    0x124,
    0x124,
    0x125,
    0x123,
    0x9B,
    0x9C,
    0x124,
    0x124,
    0x124,
    0x124,
    0x125,
    0x151,
    0x152,
    0x152,
    0x152,
    0x152,
    0x152,
    0x152,
    0x153
};

static const u16 *const Unk_ov28_0225797C[] = {
    Unk_ov28_022578F8,
    Unk_ov28_022576B8,
    Unk_ov28_02257798,
    Unk_ov28_022576F8,
    Unk_ov28_02257858,
    Unk_ov28_022576D8,
    Unk_ov28_02257838,
    Unk_ov28_02257818,
    Unk_ov28_022577F8,
    Unk_ov28_022577D8,
    Unk_ov28_022577B8,
    Unk_ov28_02257758,
    Unk_ov28_02257778,
    Unk_ov28_02257738,
    Unk_ov28_02257718,
    Unk_ov28_022578B8,
    Unk_ov28_02257878
};

static const struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} Unk_ov28_02257938[] = {
    { 0x4, 0x12, 0x8, 0x4 },
    { 0x4, 0xE, 0x4, 0x4 },
    { 0x8, 0xE, 0x4, 0x4 },
    { 0xC, 0xE, 0x4, 0x4 },
    { 0x4, 0xA, 0x4, 0x4 },
    { 0x8, 0xA, 0x4, 0x4 },
    { 0xC, 0xA, 0x4, 0x4 },
    { 0x4, 0x6, 0x4, 0x4 },
    { 0x8, 0x6, 0x4, 0x4 },
    { 0xC, 0x6, 0x4, 0x4 },
    { 0xC, 0x12, 0x4, 0x4 },
    { 0x14, 0xA, 0x4, 0x4 },
    { 0x10, 0xA, 0x4, 0x4 },
    { 0x10, 0xE, 0x4, 0x4 },
    { 0x14, 0xE, 0x4, 0x4 },
    { 0x10, 0x12, 0x8, 0x4 },
    { 0x10, 0x6, 0x8, 0x4 }
};

BOOL ov28_0225697C(UnkStruct_ov28_0225697C **param0, const UnkStruct_ov28_0225697C_1 *param1, BgConfig *param2)
{
    UnkStruct_ov28_0225697C *v0 = (UnkStruct_ov28_0225697C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov28_0225697C));

    if (v0 != NULL) {
        v0->unk_00 = param1;
        v0->unk_04 = param2;
        ov25_02255090(v0->unk_08, 8);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov28_022569AC(UnkStruct_ov28_0225697C *param0)
{
    if (param0) {
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov28_022579C0[] = {
    { 0x0, ov28_02256A08, 0x0 },
    { 0x1, ov28_02256B24, 0x0 },
    { 0x2, ov28_02256B90, 0x0 },
    { 0x3, ov28_02256BF0, 0x0 },
    { 0x4, ov28_02256C28, 0x0 },
    { 0x5, ov28_02256C68, 0x0 },
    { 0x6, ov28_02256CA0, 0x0 },
    { 0x7, ov28_02256CE0, 0x0 },
    { 0x9, ov28_02256D20, 0x0 },
    { 0x8, ov28_02256D64, 0x0 },
    { 0xA, ov28_02256DF0, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov28_022569B8(UnkStruct_ov28_0225697C *param0, u32 param1)
{
    ov25_0225517C(Unk_ov28_022579C0, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov28_022569DC(UnkStruct_ov28_0225697C *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov28_022569E8(UnkStruct_ov28_0225697C *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov28_022569F4(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov28_0225697C *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov28_02256A08(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
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
    const UnkStruct_ov28_0225697C_1 *v2;
    UnkStruct_ov28_0225697C *v3;
    u32 v4;

    v2 = ov25_02255240(param1);
    v3 = ov25_0225523C(param1);

    Bg_InitFromTemplate(v3->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 16, v3->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 17, v3->unk_04, 6, 0, 0, 1, 8);

    ov28_02256AA4(v3);
    ov25_022546B8(0, 0);

    Bg_CopyTilemapBufferToVRAM(v3->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov28_022569F4(param1);
}

static void ov28_02256AA4(UnkStruct_ov28_0225697C *param0)
{
    u16 *v0;
    u32 v1, v2, v3, v4;

    v0 = Bg_GetTilemapBuffer(param0->unk_04, 6);

    for (v1 = 0; v1 < NELEMS(Unk_ov28_02257938); v1++) {
        v4 = 0;

        for (v3 = Unk_ov28_02257938[v1].unk_01; v3 < Unk_ov28_02257938[v1].unk_01 + Unk_ov28_02257938[v1].unk_03; v3++) {
            for (v2 = Unk_ov28_02257938[v1].unk_00; v2 < Unk_ov28_02257938[v1].unk_00 + Unk_ov28_02257938[v1].unk_02; v2++) {
                param0->unk_4C[v1][v4++] = v0[v3 * 32 + v2];
            }
        }
    }
}

static void ov28_02256B24(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;
    u32 v2;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);
    v2 = v0->unk_00;

    PoketchSystem_PlaySoundEffect(1635);

    Bg_LoadToTilemapRect(v1->unk_04, 6, Unk_ov28_0225797C[v2], Unk_ov28_02257938[v2].unk_00, Unk_ov28_02257938[v2].unk_01, Unk_ov28_02257938[v2].unk_02, Unk_ov28_02257938[v2].unk_03);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);

    ov28_022569F4(param1);
}

static void ov28_02256B90(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;
    u32 v2;

    v0 = ov25_02255240(param1);
    v2 = v0->unk_00;
    v1 = ov25_0225523C(param1);

    Bg_LoadToTilemapRect(v1->unk_04, 6, v1->unk_4C[v2], Unk_ov28_02257938[v2].unk_00, Unk_ov28_02257938[v2].unk_01, Unk_ov28_02257938[v2].unk_02, Unk_ov28_02257938[v2].unk_03);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);

    ov28_022569F4(param1);
}

static void ov28_02256BF0(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);

    ov28_0225726C(v0->unk_04, v1->unk_30);
    ov28_02256E0C(v1->unk_04, v1->unk_30);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256C28(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);

    ov28_0225726C(v0->unk_04, v1->unk_30);
    ov28_02256E0C(v1->unk_04, v1->unk_30);
    ov28_02256DCC(v1->unk_04);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256C68(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);

    ov28_0225726C(v0->unk_08, v1->unk_30);
    ov28_02256E0C(v1->unk_04, v1->unk_30);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256CA0(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);

    ov28_0225726C(v0->unk_0C, v1->unk_30);
    ov28_02256E0C(v1->unk_04, v1->unk_30);
    ov28_02256DCC(v1->unk_04);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256CE0(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);

    ov28_0225726C(v0->unk_0C, v1->unk_30);
    ov28_02256E0C(v1->unk_04, v1->unk_30);
    ov28_02256D90(v1->unk_04, v0);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256D20(SysTask *param0, void *param1)
{
    UnkStruct_ov28_0225697C *v0;
    u32 v1;

    v0 = ov25_0225523C(param1);

    for (v1 = 0; v1 < 10; v1++) {
        v0->unk_30[v1] = 12;
    }

    v0->unk_30[v1] = 13;

    ov28_02256E0C(v0->unk_04, v0->unk_30);
    ov28_02256DCC(v0->unk_04);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256D64(SysTask *param0, void *param1)
{
    const UnkStruct_ov28_0225697C_1 *v0;
    UnkStruct_ov28_0225697C *v1;

    v1 = ov25_0225523C(param1);
    v0 = ov25_02255240(param1);

    ov28_02256D90(v1->unk_04, v0);
    Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256D90(BgConfig *param0, const UnkStruct_ov28_0225697C_1 *param1)
{
    u16 *v0;

    v0 = Bg_GetTilemapBuffer(param0, 6);

    if (param1->unk_02 == 17) {
        ov28_02256DCC(param0);
    } else {
        u32 v1 = 240 + (param1->unk_02 - 11) * 2;
        ov25_02255258(v0, 3, 3, 32, v1, 40, 0);
    }
}

static void ov28_02256DCC(BgConfig *param0)
{
    u16 *v0 = Bg_GetTilemapBuffer(param0, 6);
    ov25_02255258(v0, 3, 3, 32, 41, 40, 0);
}

static void ov28_02256DF0(SysTask *param0, void *param1)
{
    UnkStruct_ov28_0225697C *v0;

    v0 = ov25_0225523C(param1);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov28_022569F4(param1);
}

static void ov28_02256E0C(BgConfig *param0, const u16 *param1)
{
    u32 v0, v1, v2;
    u16 *v3;

    v3 = Bg_GetTilemapBuffer(param0, 6);

    for (v0 = 0; param1[v0] != 13; v0++) {
        (void)0;
    }

    for (v1 = 0; v1 < (10 - v0); v1++) {
        ov25_02255258(v3, 5 + v1 * 2, 3, 32, 43, 40, 0);
    }

    for (v2 = 0; v1 < 10; v1++, v2++) {
        ov25_02255258(v3, 5 + v1 * 2, 3, 32, 165 + param1[v2] * 2, 40, 0);
    }
}
