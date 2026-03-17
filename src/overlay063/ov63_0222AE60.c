#include "overlay063/ov63_0222AE60.h"

#include <nitro.h>
#include <string.h>

#include "overlay064/struct_ov64_022302EC.h"

#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

typedef struct {
    int unk_00;
    SpriteResource *unk_04[2];
    u32 unk_0C;
    int unk_10;
    SpriteResourcesHeader unk_14;
} UnkStruct_ov63_0222BB38_sub1;

typedef struct {
    SpriteResource *unk_00[4];
} UnkStruct_ov63_0222AE60_sub1;

typedef struct UnkStruct_ov63_0222BB38_t {
    const UnkStruct_ov63_0222BB38_sub1 *unk_00;
    Sprite *unk_04;
    Sprite *unk_08;
    int unk_0C;
    int unk_10;
    s16 unk_14;
    u8 padding_16[2];
} UnkStruct_ov63_0222BB38;

typedef struct {
    SpriteResource *unk_00[4];
    SpriteResourcesHeader unk_10;
} UnkStruct_ov63_0222B96C;

typedef struct UnkStruct_ov63_0222AE60_t {
    SpriteList *unk_00;
    PaletteData *unk_04;
    UnkStruct_ov63_0222BB38 *unk_08;
    u32 unk_0C;
    UnkStruct_ov63_0222BB38_sub1 unk_10[151];
    UnkStruct_ov63_0222AE60_sub1 unk_2118[3];
    UnkStruct_ov63_0222AE60_sub1 unk_2148[16];
    UnkStruct_ov63_0222B96C unk_2248;
    u32 unk_227C;
    SpriteResourceCollection *unk_2280[4];
    SpriteResource *unk_2290;
    NARC *unk_2294[2];
} UnkStruct_ov63_0222AE60;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov63_0222D9A0;

static void ov63_0222BC80(UnkStruct_ov63_0222AE60 *param0, SpriteResource *param1, u32 param2);
static void ov63_0222B374(UnkStruct_ov63_0222AE60 *param0, int param1, u32 heapID);
static void ov63_0222B404(UnkStruct_ov63_0222AE60 *param0, int param1);
static u32 ov63_0222B450(u32 param0);
static BOOL ov63_0222B47C(u32 param0, int param1);
static u32 ov63_0222B49C(int param0, u32 param1, BOOL param2);
static void ov63_0222B4CC(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID, int param5);
static void ov63_0222B510(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID);
static void ov63_0222B664(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID);
static void ov63_0222B738(UnkStruct_ov63_0222AE60 *param0, u32 param1);
static void ov63_0222B76C(UnkStruct_ov63_0222AE60 *param0, u32 param1);
static void ov63_0222B7AC(UnkStruct_ov63_0222AE60 *param0, u32 param1);
static BOOL ov63_0222B7D4(const UnkStruct_ov63_0222AE60 *param0, u32 param1);
static void ov63_0222B7E8(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 heapID);
static void ov63_0222B914(UnkStruct_ov63_0222AE60 *param0);
static BOOL ov63_0222B96C(const UnkStruct_ov63_0222B96C *param0);
static void ov63_0222B97C(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 heapID);
static void ov63_0222B9EC(UnkStruct_ov63_0222AE60 *param0);
static void ov63_0222BA20(UnkStruct_ov63_0222AE60 *param0, u32 heapID);
static void ov63_0222BAB0(UnkStruct_ov63_0222AE60 *param0);
static UnkStruct_ov63_0222BB38 *ov63_0222BB00(UnkStruct_ov63_0222AE60 *param0);
static BOOL ov63_0222BC70(const UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BB38(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BB50(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BB5C(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BB6C(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BB7C(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BB90(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BBA0(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BBB0(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BBC0(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BBD0(UnkStruct_ov63_0222BB38 *param0, int param1);
static void ov63_0222BBE0(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BBF0(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BC00(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BC20(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BC30(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BC40(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BC50(UnkStruct_ov63_0222BB38 *param0);
static void ov63_0222BC60(UnkStruct_ov63_0222BB38 *param0);

static const u8 Unk_ov63_0222D900[4] = {
    0x0,
    0x0,
    0x1,
    0x1
};

static const u8 Unk_ov63_0222D910[16] = {
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11
};

static const UnkStruct_ov63_0222D9A0 Unk_ov63_0222D9A0[151] = {
    { 0x0, 0x0 },
    { 0x3, 0x2 },
    { 0x5, 0x3 },
    { 0xB, 0x4 },
    { 0x1F, 0x5 },
    { 0x32, 0x6 },
    { 0x33, 0x7 },
    { 0x3E, 0x8 },
    { 0x46, 0x9 },
    { 0x61, 0x1 },
    { 0x6, 0xA },
    { 0x7, 0xB },
    { 0xD, 0xC },
    { 0xE, 0xD },
    { 0x23, 0xE },
    { 0x25, 0xF },
    { 0x2A, 0x10 },
    { 0x3F, 0x11 },
    { 0x4, 0x12 },
    { 0x8, 0x13 },
    { 0x34, 0x14 },
    { 0x35, 0x15 },
    { 0x2, 0x16 },
    { 0xF, 0x17 },
    { 0x10, 0x18 },
    { 0x3B, 0x19 },
    { 0x3C, 0x1A },
    { 0x9, 0x1B },
    { 0xC, 0x1C },
    { 0x17, 0x1D },
    { 0x16, 0x1E },
    { 0x29, 0x1F },
    { 0x26, 0x20 },
    { 0x27, 0x21 },
    { 0x11, 0x22 },
    { 0x44, 0x23 },
    { 0x45, 0x24 },
    { 0x1, 0x25 },
    { 0x2D, 0x26 },
    { 0x36, 0x27 },
    { 0x38, 0x28 },
    { 0x14, 0x29 },
    { 0xA, 0x2A },
    { 0x13, 0x2B },
    { 0x1D, 0x2C },
    { 0x24, 0x2D },
    { 0x28, 0x2E },
    { 0x2B, 0x2F },
    { 0x22, 0x30 },
    { 0x37, 0x31 },
    { 0x47, 0x32 },
    { 0x8D, 0x33 },
    { 0x8E, 0x34 },
    { 0x8F, 0x35 },
    { 0x90, 0x36 },
    { 0x91, 0x37 },
    { 0xA9, 0x38 },
    { 0x4E, 0x39 },
    { 0x2C, 0x3A },
    { 0x1E, 0x3B },
    { 0x51, 0x3C },
    { 0xAE, 0x3D },
    { 0xB9, 0x3E },
    { 0x31, 0x3F },
    { 0x30, 0x40 },
    { 0x86, 0x41 },
    { 0x87, 0x42 },
    { 0x88, 0x43 },
    { 0x89, 0x44 },
    { 0xAD, 0x45 },
    { 0x40, 0x46 },
    { 0x8A, 0x47 },
    { 0x63, 0x48 },
    { 0xC2, 0x49 },
    { 0x4F, 0x4A },
    { 0xBF, 0x4B },
    { 0x78, 0x4C },
    { 0x7C, 0x4D },
    { 0x7D, 0x4E },
    { 0x41, 0x4F },
    { 0x79, 0x50 },
    { 0x7A, 0x51 },
    { 0x7B, 0x52 },
    { 0xCD, 0x53 },
    { 0x4A, 0x54 },
    { 0xC3, 0x55 },
    { 0x7E, 0x56 },
    { 0x7F, 0x57 },
    { 0x80, 0x58 },
    { 0x81, 0x59 },
    { 0x82, 0x5A },
    { 0x83, 0x5B },
    { 0x84, 0x5C },
    { 0x85, 0x5D },
    { 0xAF, 0x5E },
    { 0x8C, 0x5F },
    { 0x52, 0x60 },
    { 0x53, 0x61 },
    { 0xA7, 0x62 },
    { 0xCE, 0x63 },
    { 0x4C, 0x64 },
    { 0xBE, 0x65 },
    { 0xA4, 0x66 },
    { 0x12, 0x67 },
    { 0xA5, 0x68 },
    { 0xA6, 0x69 },
    { 0xCC, 0x6A },
    { 0x1A, 0x6B },
    { 0x1B, 0x6C },
    { 0x1C, 0x6D },
    { 0x48, 0x6E },
    { 0xC0, 0x6F },
    { 0x4B, 0x70 },
    { 0x49, 0x71 },
    { 0x94, 0x72 },
    { 0x54, 0x73 },
    { 0x18, 0x74 },
    { 0x19, 0x75 },
    { 0x20, 0x76 },
    { 0x21, 0x77 },
    { 0x97, 0x78 },
    { 0xA0, 0x79 },
    { 0xA1, 0x7A },
    { 0xB8, 0x7B },
    { 0x98, 0x7C },
    { 0x99, 0x7D },
    { 0x9A, 0x7E },
    { 0x9B, 0x7F },
    { 0x9C, 0x80 },
    { 0x9D, 0x81 },
    { 0x9E, 0x82 },
    { 0x9F, 0x83 },
    { 0xA8, 0x84 },
    { 0x2E, 0x85 },
    { 0x2F, 0x86 },
    { 0x56, 0x87 },
    { 0xB6, 0x88 },
    { 0xD0, 0x89 },
    { 0xA3, 0x8A },
    { 0xD7, 0x8B },
    { 0xD8, 0x8C },
    { 0xD9, 0x8D },
    { 0xDA, 0x8E },
    { 0xDB, 0x8F },
    { 0xE7, 0x90 },
    { 0xE8, 0x91 },
    { 0xE9, 0x92 },
    { 0xEA, 0x93 },
    { 0xEB, 0x94 },
    { 0xFC, 0x95 },
    { 0xFD, 0x96 }
};

static const u8 Unk_ov63_0222D904[10] = {
    0x1,
    0xFF,
    0x8,
    0x2,
    0x4,
    0x10,
    0x10,
    0x2,
    0x4,
    0x0
};

UnkStruct_ov63_0222AE60 *ov63_0222AE60(SpriteList *param0, PaletteData *param1, u32 param2, u32 heapID)
{
    UnkStruct_ov63_0222AE60 *v0;
    int v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov63_0222AE60));
    memset(v0, 0, sizeof(UnkStruct_ov63_0222AE60));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_2294[0] = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI2DCHAR, heapID);
    v0->unk_2294[1] = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI_UNIONOBJ, heapID);

    for (v1 = 0; v1 < 2; v1++) {
        v0->unk_2280[v1] = SpriteResourceCollection_New((151 + 1), v1, heapID);
    }

    for (v1 = 0; v1 < 2; v1++) {
        v0->unk_2280[v1 + 2] = SpriteResourceCollection_New(((3 * 2) + 16 + 1), v1 + 2, heapID);
    }

    for (v1 = 0; v1 < 3; v1++) {
        ov63_0222B374(v0, v1, heapID);
    }

    v0->unk_0C = param2;
    v0->unk_08 = Heap_Alloc(heapID, sizeof(UnkStruct_ov63_0222BB38) * v0->unk_0C);
    memset(v0->unk_08, 0, sizeof(UnkStruct_ov63_0222BB38) * v0->unk_0C);

    return v0;
}

void ov63_0222AF14(UnkStruct_ov63_0222AE60 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_0C; v0++) {
        if (ov63_0222BC70(&param0->unk_08[v0]) == 0) {
            ov63_0222B210(&param0->unk_08[v0]);
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        ov63_0222B404(param0, v0);
    }

    ov63_0222AFF8(param0);
    NARC_dtor(param0->unk_2294[0]);
    NARC_dtor(param0->unk_2294[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_2280[v0]);
    }

    Heap_Free(param0->unk_08);
    Heap_Free(param0);
}

void ov63_0222AF94(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID)
{
    u32 v0;
    BOOL v1 = ov63_0222B47C(param1, param3);
    GF_ASSERT(v1);

    v0 = ov63_0222B450(param1);
    ov63_0222B4CC(param0, v0, param2, param3, heapID, 0);
}

void ov63_0222AFD0(UnkStruct_ov63_0222AE60 *param0, u32 param1)
{
    u32 v0 = ov63_0222B450(param1);
    ov63_0222B738(param0, v0);
}

BOOL ov63_0222AFE4(const UnkStruct_ov63_0222AE60 *param0, u32 param1)
{
    u32 v0 = ov63_0222B450(param1);
    return ov63_0222B7D4(param0, v0);
}

void ov63_0222AFF8(UnkStruct_ov63_0222AE60 *param0)
{
    int v0;

    if (param0->unk_2290 != NULL) {
        ov63_0222B078(param0);
    }

    for (v0 = 0; v0 < 151; v0++) {
        if (ov63_0222B7D4(param0, v0) == 1) {
            ov63_0222B738(param0, v0);
        }
    }
}

void ov63_0222B02C(UnkStruct_ov63_0222AE60 *param0, u32 param1, int param2, u32 heapID)
{
    int v0;

    GF_ASSERT(param2 != 0);

    ov63_0222B97C(param0, param1, heapID);
    ov63_0222BA20(param0, heapID);

    for (v0 = 0; v0 < 16; v0++) {
        ov63_0222B4CC(param0, Unk_ov63_0222D910[v0], param1, param2, heapID, 1);
    }
}

void ov63_0222B078(UnkStruct_ov63_0222AE60 *param0)
{
    int v0;

    ov63_0222B9EC(param0);
    ov63_0222BAB0(param0);

    for (v0 = 0; v0 < 16; v0++) {
        ov63_0222B738(param0, Unk_ov63_0222D910[v0]);
    }
}

void ov63_0222B0A0(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, u32 heapID)
{
    ov63_0222B7E8(param0, param1, heapID);
    param0->unk_227C = param2;
}

void ov63_0222B0B8(UnkStruct_ov63_0222AE60 *param0)
{
    ov63_0222B914(param0);
}

UnkStruct_ov63_0222BB38 *ov63_0222B0C0(UnkStruct_ov63_0222AE60 *param0, const UnkStruct_ov64_022302EC *param1, u32 param2, u32 heapID)
{
    UnkStruct_ov63_0222BB38 *v0;
    AffineSpriteListTemplate v1;
    u32 v2;

    v0 = ov63_0222BB00(param0);
    v2 = ov63_0222B450(param2);

    GF_ASSERT(ov63_0222B7D4(param0, v2) == 1);
    memset(&v1, 0, sizeof(AffineSpriteListTemplate));

    v1.list = param0->unk_00;
    v1.resourceData = &param0->unk_10[v2].unk_14;
    v1.position.x = param1->unk_00 << FX32_SHIFT;
    v1.position.y = param1->unk_02 << FX32_SHIFT;
    v1.affineScale.x = FX32_ONE;
    v1.affineScale.y = FX32_ONE;
    v1.affineScale.z = FX32_ONE;
    v1.priority = param1->unk_04;
    v1.heapID = heapID;

    if ((param0->unk_10[v2].unk_0C == NNS_G2D_VRAM_TYPE_2DBOTH) || (param0->unk_10[v2].unk_0C == NNS_G2D_VRAM_TYPE_2DMAIN)) {
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    }

    v0->unk_04 = SpriteList_AddAffine(&v1);
    Sprite_SetExplicitPriority(v0->unk_04, param1->unk_06);

    if (param0->unk_10[v2].unk_10 == 1) {
        Sprite_SetAnim(v0->unk_04, 5 + 1);
    } else {
        Sprite_SetAnim(v0->unk_04, 1);
    }

    v0->unk_0C = 9;
    v0->unk_14 = 0;
    v0->unk_10 = 1;
    v0->unk_00 = &param0->unk_10[v2];

    if (ov63_0222B96C(&param0->unk_2248)) {
        memset(&v1, 0, sizeof(AffineSpriteListTemplate));

        v1.list = param0->unk_00;
        v1.resourceData = &param0->unk_2248.unk_10;
        v1.position.x = param1->unk_00 << FX32_SHIFT;
        v1.position.y = param1->unk_02 << FX32_SHIFT;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.priority = param0->unk_227C;
        v1.heapID = heapID;

        if ((param0->unk_10[v2].unk_0C == NNS_G2D_VRAM_TYPE_2DBOTH) || (param0->unk_10[v2].unk_0C == NNS_G2D_VRAM_TYPE_2DMAIN)) {
            v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v0->unk_08 = SpriteList_AddAffine(&v1);

        Sprite_SetExplicitPriority(v0->unk_08, param1->unk_06);
    } else {
        v0->unk_08 = NULL;
    }

    return v0;
}

void ov63_0222B210(UnkStruct_ov63_0222BB38 *param0)
{
    if (param0->unk_08 != NULL) {
        Sprite_Delete(param0->unk_08);
    }

    Sprite_Delete(param0->unk_04);
    memset(param0, 0, sizeof(UnkStruct_ov63_0222BB38));
}

const Sprite *ov63_0222B234(const UnkStruct_ov63_0222BB38 *param0)
{
    return param0->unk_04;
}

void ov63_0222B238(UnkStruct_ov63_0222BB38 *param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 << FX32_SHIFT;
    v0.y = param2 << FX32_SHIFT;
    v0.z = 0;

    Sprite_SetPosition(param0->unk_04, &v0);

    if (param0->unk_08) {
        v0.x += 8 << FX32_SHIFT;
        v0.y += 14 << FX32_SHIFT;

        Sprite_SetPosition(param0->unk_08, &v0);
    }
}

void ov63_0222B278(UnkStruct_ov63_0222BB38 *param0, u16 param1)
{
    Sprite_SetPriority(param0->unk_04, param1);
}

u16 ov63_0222B284(const UnkStruct_ov63_0222BB38 *param0)
{
    return Sprite_GetPriority(param0->unk_04);
}

void ov63_0222B294(UnkStruct_ov63_0222BB38 *param0, BOOL param1)
{
    Sprite_SetDrawFlag(param0->unk_04, param1);

    if (param0->unk_08) {
        Sprite_SetDrawFlag(param0->unk_08, param1);
    }
}

BOOL ov63_0222B2B0(const UnkStruct_ov63_0222BB38 *param0)
{
    return Sprite_GetDrawFlag(param0->unk_04);
}

int ov63_0222B2BC(const UnkStruct_ov63_0222BB38 *param0)
{
    return param0->unk_00->unk_10;
}

int ov63_0222B2C4(const UnkStruct_ov63_0222BB38 *param0)
{
    return param0->unk_0C;
}

void ov63_0222B2C8(UnkStruct_ov63_0222BB38 *param0, u16 param1)
{
    Sprite_SetAnimFrame(param0->unk_04, param1);
}

u16 ov63_0222B2D4(const UnkStruct_ov63_0222BB38 *param0)
{
    return Sprite_GetAnimFrame(param0->unk_04);
}

void ov63_0222B2E0(UnkStruct_ov63_0222BB38 *param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    if (param0->unk_08 != NULL) {
        v0.x = param1 + 8 << FX32_SHIFT;
        v0.y = param2 + 14 << FX32_SHIFT;
        v0.z = 0;

        Sprite_SetPosition(param0->unk_08, &v0);
    }
}

void ov63_0222B308(UnkStruct_ov63_0222BB38 *param0, int param1, int param2)
{
    static void (*const v0[])(UnkStruct_ov63_0222BB38 *, int) = {
        ov63_0222BB50,
        ov63_0222BB5C,
        ov63_0222BB6C,
        ov63_0222BB7C,
        ov63_0222BB90,
        ov63_0222BBA0,
        ov63_0222BBB0,
        ov63_0222BBC0,
        ov63_0222BBD0,
        NULL
    };

    GF_ASSERT(param1 < 10);
    GF_ASSERT(param2 < 4);

    param0->unk_0C = param1;
    param0->unk_14 = 0;

    if (v0[param1] != NULL) {
        v0[param1](param0, param2);
    }
}

void ov63_0222B33C(UnkStruct_ov63_0222BB38 *param0)
{
    BOOL v0 = 0;

    if (Unk_ov63_0222D904[param0->unk_0C] == 0xff) {
        v0 = 1;
    } else {
        if (Unk_ov63_0222D904[param0->unk_0C] >= param0->unk_14 + 1) {
            v0 = 1;
        }
    }

    if (v0 == 1) {
        ov63_0222BB38(param0);
        param0->unk_14++;
    }
}

static void ov63_0222B374(UnkStruct_ov63_0222AE60 *param0, int param1, u32 heapID)
{
    int v0;
    u32 v1;
    u32 v2;
    static const u32 v3[3][4] = {
        {
            3,
            4,
            3,
            4,
        },
        {
            5,
            6,
            7,
            8,
        },
        { 9, 10, 11, 12 }
    };

    GF_ASSERT(param0->unk_2118[param1].unk_00[0] == NULL);

    for (v0 = 0; v0 < 4; v0++) {
        v1 = 2 + (v0 % 2);
        v2 = 0x100 + (param1 * 2) + Unk_ov63_0222D900[v0];
        param0->unk_2118[param1].unk_00[v0] = SpriteResourceCollection_AddFrom(param0->unk_2280[v1], param0->unk_2294[0], v3[param1][v0], 0, v2, v1, heapID);
    }
}

static void ov63_0222B404(UnkStruct_ov63_0222AE60 *param0, int param1)
{
    int v0;
    u32 v1;

    GF_ASSERT(param0->unk_2118[param1].unk_00[0] != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        v1 = 2 + (v0 % 2);

        SpriteResourceCollection_Remove(param0->unk_2280[v1], param0->unk_2118[param1].unk_00[v0]);
        param0->unk_2118[param1].unk_00[v0] = NULL;
    }
}

static u32 ov63_0222B450(u32 param0)
{
    int v0;

    for (v0 = 0; v0 < 151; v0++) {
        if (param0 == Unk_ov63_0222D9A0[v0].unk_00) {
            return Unk_ov63_0222D9A0[v0].unk_02;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static BOOL ov63_0222B47C(u32 param0, int param1)
{
    if (param1 == 0) {
        if ((param0 == 0x0) || (param0 == 0x61) || (param0 == 0xfc) || (param0 == 0xfd)) {
            return 1;
        } else {
            return 0;
        }
    }

    return 1;
}

u32 ov63_0222B49C(int param0, u32 param1, BOOL param2)
{
    u32 v0;

    GF_ASSERT((param1 == 2) || (param1 == 3));
    v0 = param1 - 2;

    if (param2 == 0) {
        v0 += 2;
    }

    return 0x100 + (param0 * 2) + Unk_ov63_0222D900[v0];
}

static void ov63_0222B4CC(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID, int param5)
{
    GF_ASSERT(param0->unk_10[param1].unk_04[0] == NULL);

    if (param5 == 0) {
        ov63_0222B510(param0, param1, param2, param3, heapID);
    } else {
        ov63_0222B664(param0, param1, param2, param3, heapID);
    }
}

static void ov63_0222B510(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID)
{
    NNSG2dCharacterData *v0;
    BOOL v1;
    BOOL v2;
    u32 v3, v4;

    param0->unk_10[param1].unk_04[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_2280[0], param0->unk_2294[0], ((((param1) * 2) + 13) + 1), 0, 0x200 + param1, param2, heapID);
    param0->unk_10[param1].unk_04[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_2280[1], param0->unk_2294[0], (((param1) * 2) + 13), 0, 0x200 + param1, param2, 1, heapID);

    v0 = SpriteResource_GetTileData(param0->unk_10[param1].unk_04[0]);

    if (v0->szByte == 0x1800) {
        v2 = 0;
    } else {
        v2 = 1;
    }

    if (param3 == 2) {
        if (v2) {
            v0->szByte = 0x800;
        } else {
            v0->szByte = 0x800;
        }
    } else if (param3 == 1) {
        if (v2) {
            v0->szByte = 0x1400;
        } else {
            v0->szByte = 0x1800;
        }
    }

    v1 = SpriteTransfer_RequestCharAtEndWithHardwareMappingType(param0->unk_10[param1].unk_04[0]);
    GF_ASSERT(v1);

    v1 = SpriteTransfer_RequestPlttFreeSpace(param0->unk_10[param1].unk_04[1]);
    GF_ASSERT(v1);

    if (param0->unk_04) {
        ov63_0222BC80(param0, param0->unk_10[param1].unk_04[1], 1);
    }

    SpriteResource_ReleaseData(param0->unk_10[param1].unk_04[0]);
    SpriteResource_ReleaseData(param0->unk_10[param1].unk_04[1]);

    param0->unk_10[param1].unk_0C = param2;
    param0->unk_10[param1].unk_10 = param3;
    param0->unk_10[param1].unk_00 = 0;

    v3 = ov63_0222B49C(param3, 2, v2);
    v4 = ov63_0222B49C(param3, 3, v2);

    SpriteResourcesHeader_Init(&param0->unk_10[param1].unk_14, 0x200 + param1, 0x200 + param1, v3, v4, 0xffffffff, 0xffffffff, 0, 0, param0->unk_2280[0], param0->unk_2280[1], param0->unk_2280[2], param0->unk_2280[3], NULL, NULL);
}

static void ov63_0222B664(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 param2, int param3, u32 heapID)
{
    NNSG2dCharacterData *v0;
    BOOL v1;
    u32 v2 = param1 - 2;

    param0->unk_10[param1].unk_04[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_2280[0], param0->unk_2294[1], (1 + ((param1)-2)), 0, 0x200 + param1, param2, heapID);

    if (param3 == 2) {
        v0 = SpriteResource_GetTileData(param0->unk_10[param1].unk_04[0]);
        v0->szByte = 0x800;
    } else if (param3 == 1) {
        v0 = SpriteResource_GetTileData(param0->unk_10[param1].unk_04[0]);
        v0->szByte = 0x1400;
    }

    v1 = SpriteTransfer_RequestCharAtEndWithHardwareMappingType(param0->unk_10[param1].unk_04[0]);
    GF_ASSERT(v1);
    SpriteResource_ReleaseData(param0->unk_10[param1].unk_04[0]);

    param0->unk_10[param1].unk_04[1] = NULL;
    param0->unk_10[param1].unk_0C = param2;
    param0->unk_10[param1].unk_10 = param3;
    param0->unk_10[param1].unk_00 = 1;

    SpriteResourcesHeader_Init(&param0->unk_10[param1].unk_14, 0x200 + param1, 0x402, 0x180 + v2, 0x180 + v2, 0xffffffff, 0xffffffff, 0, 0, param0->unk_2280[0], param0->unk_2280[1], param0->unk_2280[2], param0->unk_2280[3], NULL, NULL);
}

static void ov63_0222B738(UnkStruct_ov63_0222AE60 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_10[param1].unk_04[0] != NULL);

    if (param0->unk_10[param1].unk_00 == 0) {
        ov63_0222B76C(param0, param1);
    } else {
        ov63_0222B7AC(param0, param1);
    }
}

static void ov63_0222B76C(UnkStruct_ov63_0222AE60 *param0, u32 param1)
{
    SpriteTransfer_ResetCharTransfer(param0->unk_10[param1].unk_04[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_10[param1].unk_04[1]);

    SpriteResourceCollection_Remove(param0->unk_2280[0], param0->unk_10[param1].unk_04[0]);
    SpriteResourceCollection_Remove(param0->unk_2280[1], param0->unk_10[param1].unk_04[1]);

    param0->unk_10[param1].unk_04[0] = NULL;
    param0->unk_10[param1].unk_04[1] = NULL;
}

static void ov63_0222B7AC(UnkStruct_ov63_0222AE60 *param0, u32 param1)
{
    SpriteTransfer_ResetCharTransfer(param0->unk_10[param1].unk_04[0]);
    SpriteResourceCollection_Remove(param0->unk_2280[0], param0->unk_10[param1].unk_04[0]);

    param0->unk_10[param1].unk_04[0] = NULL;
}

static BOOL ov63_0222B7D4(const UnkStruct_ov63_0222AE60 *param0, u32 param1)
{
    if (param0->unk_10[param1].unk_04[0] == NULL) {
        return 0;
    }

    return 1;
}

static void ov63_0222B7E8(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 heapID)
{
    int v0;
    BOOL v1;
    BOOL v2;
    u32 v3;

    GF_ASSERT(param0->unk_2248.unk_00[0] == NULL);

    v2 = 0;

    if (ov63_0222B7D4(param0, 0) == 1) {
        v3 = 0;
        v2 = 1;
    } else if (ov63_0222B7D4(param0, 1) == 1) {
        v3 = 1;
        v2 = 1;
    } else if (ov63_0222B7D4(param0, 149) == 1) {
        v3 = 149;
        v2 = 1;
    } else if (ov63_0222B7D4(param0, 150) == 1) {
        v3 = 150;
        v2 = 1;
    }

    GF_ASSERT(v2 == 1);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_2248.unk_00[v0 + 2] = SpriteResourceCollection_AddFrom(param0->unk_2280[v0 + 2], param0->unk_2294[0], 0 + v0, 0, 0x120, 2 + v0, heapID);
    }

    param0->unk_2248.unk_00[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_2280[0], param0->unk_2294[0], 2, 0, 0x120, param1, heapID);

    v1 = SpriteTransfer_RequestCharAtEndWithHardwareMappingType(param0->unk_2248.unk_00[0]);
    GF_ASSERT(v1);

    SpriteResource_ReleaseData(param0->unk_2248.unk_00[0]);
    SpriteResourcesHeader_Init(&param0->unk_2248.unk_10, 0x120, 0x200 + v3, 0x120, 0x120, 0xffffffff, 0xffffffff, 0, 0, param0->unk_2280[0], param0->unk_2280[1], param0->unk_2280[2], param0->unk_2280[3], NULL, NULL);
}

static void ov63_0222B914(UnkStruct_ov63_0222AE60 *param0)
{
    int v0;

    if (ov63_0222B96C(&param0->unk_2248) == 1) {
        {
            SpriteTransfer_ResetCharTransfer(param0->unk_2248.unk_00[0]);
            SpriteResourceCollection_Remove(param0->unk_2280[0], param0->unk_2248.unk_00[0]);
            param0->unk_2248.unk_00[0] = NULL;
        }

        for (v0 = 0; v0 < 2; v0++) {
            SpriteResourceCollection_Remove(param0->unk_2280[v0 + 2], param0->unk_2248.unk_00[v0 + 2]);
            param0->unk_2248.unk_00[v0 + 2] = NULL;
        }
    }
}

static BOOL ov63_0222B96C(const UnkStruct_ov63_0222B96C *param0)
{
    if (param0->unk_00[0] != NULL) {
        return 1;
    }

    return 0;
}

static void ov63_0222B97C(UnkStruct_ov63_0222AE60 *param0, u32 param1, u32 heapID)
{
    BOOL v0;

    GF_ASSERT(param0->unk_2290 == NULL);

    param0->unk_2290 = SpriteResourceCollection_AddPaletteFrom(param0->unk_2280[1], param0->unk_2294[1], 0, 0, 0x402, param1, 8, heapID);

    v0 = SpriteTransfer_RequestPlttFreeSpace(param0->unk_2290);
    GF_ASSERT(v0);

    if (param0->unk_04) {
        ov63_0222BC80(param0, param0->unk_2290, 8);
    }

    SpriteResource_ReleaseData(param0->unk_2290);
}

static void ov63_0222B9EC(UnkStruct_ov63_0222AE60 *param0)
{
    GF_ASSERT(param0->unk_2290 != NULL);

    SpriteTransfer_ResetPlttTransfer(param0->unk_2290);
    SpriteResourceCollection_Remove(param0->unk_2280[1], param0->unk_2290);

    param0->unk_2290 = NULL;
}

static void ov63_0222BA20(UnkStruct_ov63_0222AE60 *param0, u32 heapID)
{
    int v0;

    GF_ASSERT(param0->unk_2148[0].unk_00[0] == NULL);

    for (v0 = 0; v0 < 16; v0++) {
        param0->unk_2148[v0].unk_00[0] = SpriteResourceCollection_AddFrom(param0->unk_2280[2], param0->unk_2294[1], (17 + ((v0) * 2)), 0, 0x180 + v0, 2, heapID);
        param0->unk_2148[v0].unk_00[1] = SpriteResourceCollection_AddFrom(param0->unk_2280[3], param0->unk_2294[1], ((17 + ((v0) * 2)) + 1), 0, 0x180 + v0, 3, heapID);
    }
}

static void ov63_0222BAB0(UnkStruct_ov63_0222AE60 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_2148[0].unk_00[0] != NULL);

    for (v0 = 0; v0 < 16; v0++) {
        SpriteResourceCollection_Remove(param0->unk_2280[2], param0->unk_2148[v0].unk_00[0]);
        SpriteResourceCollection_Remove(param0->unk_2280[3], param0->unk_2148[v0].unk_00[1]);

        param0->unk_2148[v0].unk_00[0] = NULL;
        param0->unk_2148[v0].unk_00[1] = NULL;
    }
}

static UnkStruct_ov63_0222BB38 *ov63_0222BB00(UnkStruct_ov63_0222AE60 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_0C; v0++) {
        if (ov63_0222BC70(&param0->unk_08[v0]) == 1) {
            return &param0->unk_08[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov63_0222BB38(UnkStruct_ov63_0222BB38 *param0)
{
    static void (*const v0[])(UnkStruct_ov63_0222BB38 *) = {
        NULL,
        ov63_0222BBE0,
        ov63_0222BBF0,
        ov63_0222BC00,
        ov63_0222BC20,
        ov63_0222BC30,
        ov63_0222BC40,
        ov63_0222BC50,
        ov63_0222BC60,
        NULL
    };

    if (v0[param0->unk_0C] != NULL) {
        v0[param0->unk_0C](param0);
    }
}

static void ov63_0222BB50(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, param0->unk_10);
}

static void ov63_0222BB5C(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 4);
}

static void ov63_0222BB6C(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 5 + param0->unk_10);
}

static void ov63_0222BB7C(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    Sprite_SetAnimNoRestart(param0->unk_04, 5 + param0->unk_10);
    param0->unk_10 = param1;
}

static void ov63_0222BB90(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 9 + param0->unk_10);
}

static void ov63_0222BBA0(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 5 + param0->unk_10);
}

static void ov63_0222BBB0(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 5 + param0->unk_10);
}

static void ov63_0222BBC0(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 5 + param0->unk_10);
}

static void ov63_0222BBD0(UnkStruct_ov63_0222BB38 *param0, int param1)
{
    param0->unk_10 = param1;
    Sprite_SetAnimNoRestart(param0->unk_04, 5 + param0->unk_10);
}

static void ov63_0222BBE0(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (2 * FX32_ONE));
}

static void ov63_0222BBF0(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (2 * FX32_ONE));
}

static void ov63_0222BC00(UnkStruct_ov63_0222BB38 *param0)
{
    if (param0->unk_14 == 0) {
        Sprite_SetAnimFrame(param0->unk_04, 1);
    } else {
        Sprite_SetAnim(param0->unk_04, 5 + param0->unk_10);
    }
}

static void ov63_0222BC20(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (2 * FX32_ONE));
}

static void ov63_0222BC30(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (FX32_ONE));
}

static void ov63_0222BC40(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (FX32_ONE));
}

static void ov63_0222BC50(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (8 * FX32_ONE));
}

static void ov63_0222BC60(UnkStruct_ov63_0222BB38 *param0)
{
    Sprite_UpdateAnim(param0->unk_04, (6 * FX32_ONE));
}

static BOOL ov63_0222BC70(const UnkStruct_ov63_0222BB38 *param0)
{
    if (param0->unk_04 == NULL) {
        return 1;
    }

    return 0;
}

static void ov63_0222BC80(UnkStruct_ov63_0222AE60 *param0, SpriteResource *param1, u32 param2)
{
    NNSG2dPaletteData *v0;
    u32 v1[2];

    v0 = SpriteResource_GetPaletteFade(param1);
    v1[0] = SpriteTransfer_GetPlttOffset(param1, NNS_G2D_VRAM_TYPE_2DMAIN);
    v1[1] = SpriteTransfer_GetPlttOffset(param1, NNS_G2D_VRAM_TYPE_2DSUB);

    if (v1[0] != (NNS_G2D_VRAM_ADDR_NOT_INITIALIZED)) {
        PaletteData_LoadBuffer(param0->unk_04, v0->pRawData, 2, v1[0] * 16, param2 * 32);
    }

    if (v1[1] != (NNS_G2D_VRAM_ADDR_NOT_INITIALIZED)) {
        PaletteData_LoadBuffer(param0->unk_04, v0->pRawData, 3, v1[1] * 16, param2 * 32);
    }
}
