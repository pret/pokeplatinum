#include "overlay062/ov62_02239D60.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay061/ov61_0222AE60.h"
#include "overlay061/ov61_0222B008.h"
#include "overlay061/ov61_0222BC4C.h"
#include "overlay061/struct_ov61_0222BCF8_sub1_sub1.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_022323B8.h"
#include "overlay062/struct_ov62_02239DA4.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_02248CDC.h"
#include "savedata/save_table.h"

#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_02023FCC.h"
#include "unk_02030A80.h"
#include "unk_020797C8.h"
#include "unk_0208B284.h"

typedef struct {
    int unk_00;
    UnkStruct_02030A80 *unk_04;
    int unk_08;
} UnkStruct_ov62_02239DBC_sub1;

typedef struct {
    PCBoxes *unk_00;
    UnkStruct_ov62_02239DA4 unk_04;
    int unk_1A0;
    int unk_1A4;
    int unk_1A8;
    int unk_1AC;
    int unk_1B0;
    Window unk_1B4[8];
    Window unk_234[8];
    CellActorData *unk_2B4[30];
    Sprite *unk_32C;
    UnkStruct_02023FCC *unk_330[5];
    UnkStruct_02023FCC *unk_344;
    UnkStruct_ov62_022312B0 unk_348[2];
    UnkStruct_ov62_02239DBC_sub1 unk_380;
    UnkStruct_ov61_0222BCF8_sub1_sub1 *unk_38C[20];
    UnkStruct_ov61_0222BCF8_sub1_sub1 unk_3DC[20];
    Strbuf *unk_2E0C[20][2];
    UnkStruct_ov62_02248CDC unk_2EAC;
    UnkStruct_ov62_022323B8 unk_2ED8;
    int unk_2F64;
    int unk_2F68;
    int unk_2F6C;
} UnkStruct_ov62_02239DBC;

static void ov62_02239D60(UnkStruct_0208C06C *param0, int param1);
static void ov62_02239D8C(UnkStruct_0208C06C *param0);
static BOOL ov62_02239DA4(UnkStruct_ov62_02239DA4 *param0);
static void ov62_02239DBC(UnkStruct_ov62_02239DBC *param0);
static void ov62_02239E0C(u32 param0, u32 param1, void *param2);
static void ov62_02239EC0(u32 param0, u32 param1, void *param2);
static void ov62_02239EFC(u32 param0, u32 param1, void *param2);
static void ov62_02239F38(u32 param0, u32 param1, void *param2);
static void ov62_02239F98(u32 param0, u32 param1, void *param2);
static void ov62_0223A0AC(UnkStruct_0208C06C *param0);
static void ov62_0223A110(UnkStruct_0208C06C *param0);
static void ov62_0223A138(UnkStruct_ov62_02239DBC *param0);
static void ov62_0223A154(SaveData *param0, const PCBoxes *param1, int param2, UnkStruct_ov62_02239DA4 *param3);
static BOOL ov62_0223A17C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A2A8(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A394(UnkStruct_0208C06C *param0);
static void ov62_0223A4C8(UnkStruct_0208C06C *param0, int param1);
static BOOL ov62_0223A544(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A634(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A64C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A840(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A93C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223A9F4(UnkStruct_0208C06C *param0);
static void ov62_0223AA90(UnkStruct_0208C06C *param0);
static void ov62_0223AB14(UnkStruct_0208C06C *param0);
static void ov62_0223ABBC(UnkStruct_0208C06C *param0);
static void ov62_0223ABE4(UnkStruct_0208C06C *param0);
static void ov62_0223AC0C(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223AC58(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223AD20(UnkStruct_0208C06C *param0);
static void ov62_0223AD7C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223ADB0(int param0, int param1);
static void ov62_0223ADC0(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223AE60(UnkStruct_0208C06C *param0);
static void ov62_0223AFC0(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223AFEC(UnkStruct_0208C06C *param0);
static void ov62_0223B050(UnkStruct_0208C06C *param0);
static void ov62_0223B124(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223B140(UnkStruct_0208C06C *param0);
static void ov62_0223B158(UnkStruct_0208C06C *param0);
static void ov62_0223B230(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B2E8(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B40C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B424(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B564(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B694(UnkStruct_0208C06C *param0);
static void ov62_0223B6AC(UnkStruct_0208C06C *param0);
static void ov62_0223B768(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223B7C0(UnkStruct_0208C06C *param0);
static void ov62_0223B840(UnkStruct_0208C06C *param0);
static void ov62_0223B860(UnkStruct_0208C06C *param0);
static void ov62_0223B888(UnkStruct_0208C06C *param0);
static void ov62_0223B958(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B980(UnkStruct_0208C06C *param0);
static void ov62_0223BE7C(UnkStruct_0208C06C *param0);
static void ov62_0223BEF0(UnkStruct_0208C06C *param0);
static BOOL ov62_0223BF44(UnkStruct_0208C06C *param0);
static BOOL ov62_0223BFB4(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C138(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C40C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C424(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C63C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C79C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C948(UnkStruct_0208C06C *param0);
void ov62_0223CAA4(void *param0, const UnkStruct_ov62_0223CAA4 *param1);
void ov62_0223CAA8(void *param0, const UnkStruct_ov62_0223CAA4 *param1);
static BOOL ov62_0223B2E8(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B40C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B424(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B564(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B694(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C948(UnkStruct_0208C06C *param0);
static BOOL ov62_0223B980(UnkStruct_0208C06C *param0);
static BOOL ov62_0223BF44(UnkStruct_0208C06C *param0);
static BOOL ov62_0223BFB4(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C63C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223C79C(UnkStruct_0208C06C *param0);

static void ov62_02239D60(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    v0->unk_2ED8.unk_00 = sub_02030A80(102);
    ov61_0222AFC0(&v0->unk_38C[param1]->unk_00, v0->unk_2ED8.unk_00);
}

static void ov62_02239D8C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    sub_02030A98(v0->unk_2ED8.unk_00);
}

static BOOL ov62_02239DA4(UnkStruct_ov62_02239DA4 *param0)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 30; v0++) {
        v1 = param0->unk_28[v0];

        if (v1 != 0) {
            return 1;
        }
    }

    return 0;
}

static void ov62_02239DBC(UnkStruct_ov62_02239DBC *param0)
{
    int v0;

    for (v0 = param0->unk_1B0; v0 < 30; v0++) {
        if (param0->unk_04.unk_28[v0] != 0) {
            param0->unk_1B0 = v0;
            return;
        }
    }

    for (v0 = 0; v0 < param0->unk_1B0; v0++) {
        if (param0->unk_04.unk_28[v0] != 0) {
            param0->unk_1B0 = v0;
            return;
        }
    }
}

static const TouchScreenRect Unk_ov62_02248DB4[] = {
    { 0x20, 0x40, 0x18, 0x48 },
    { 0x20, 0x40, 0xB8, 0xE0 },
    { 0x98, 0xB8, 0x20, 0x80 },
    { 0x98, 0xB8, 0x80, 0xE0 }
};

static const TouchScreenRect Unk_ov62_02248DDC[] = {
    { 0x18, 0x28, 0x18, 0x68 },
    { 0x18, 0x28, 0x90, 0xD0 },
    { 0x40, 0x50, 0x18, 0x68 },
    { 0x40, 0x50, 0x90, 0xD0 },
    { 0x68, 0x78, 0x18, 0x68 },
    { 0x68, 0x78, 0x90, 0xD0 },
    { 0x98, 0xB8, 0x50, 0xB0 }
};

static const TouchScreenRect Unk_ov62_02248D6C[] = {
    { 0x10, 0x30, 0x58, 0xA8 },
    { 0x40, 0x70, 0x58, 0xA8 },
    { 0x98, 0xB8, 0x50, 0xB0 }
};

static const TouchScreenRect Unk_ov62_02248D54[] = {
    { 0x20, 0x60, 0x48, 0xB8 },
    { 0x98, 0xB8, 0x50, 0xB0 }
};

static void ov62_02239E0C(u32 param0, u32 param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_02239DBC *v1 = v0->unk_860;

    switch (param0) {
    case 0:
        if (param1 != 2) {
            return;
        }

        ov62_02234520(v0);

        if (v1->unk_1A0 > 0) {
            v1->unk_1A0--;
        } else {
            v1->unk_1A0 = 18 - 1;
        }

        ov62_0222FB60(v0, 4);
        break;
    case 1:
        if (param1 != 2) {
            return;
        }

        ov62_02234520(v0);
        v1->unk_1A0++;
        v1->unk_1A0 %= 18;
        ov62_0222FB60(v0, 4);
        break;
    case 2:
        if (param1 != 0) {
            return;
        }

        ov62_02234520(v0);
        ov62_0222FB60(v0, 9);
        break;
    case 3:
        if (param1 != 0) {
            return;
        }

        ov62_02234520(v0);

        if (ov62_02239DA4(&v1->unk_04)) {
            ov62_0222FB60(v0, 5);
        } else {
            ov62_0223AC0C(v0, 271);
        }
        break;
    }
}

static void ov62_02239EC0(u32 param0, u32 param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_02239DBC *v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    default:
        ov62_02234520(v0);
        v1->unk_380.unk_00 = param0;
        ov62_0222FB60(v0, 8);
        break;
    case 6:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 7);
        break;
    }
}

static void ov62_02239EFC(u32 param0, u32 param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_02239DBC *v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    default:
        ov62_02234520(v0);
        v1->unk_380.unk_00 = param0;
        ov62_0222FB60(v0, 4);
        break;
    case 6:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 12);
        break;
    }
}

static void ov62_02239F38(u32 param0, u32 param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_02239DBC *v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    default:
    case 0:
        ov62_02234520(v0);
        if (v1->unk_2F64 == 0) {
            ov62_0222FB60(v0, 7);
        } else {
            ov62_0222FB60(v0, 8);
        }
        break;
    case 1:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 9);
        break;
    case 2:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 6);
        break;
    }
}

static void ov62_02239F98(u32 param0, u32 param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_02239DBC *v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);

        v1->unk_1B0++;
        v1->unk_1B0 %= 30;

        ov62_02239DBC(v1);

        v1->unk_2F68 = v1->unk_1B0 % 6;
        v1->unk_2F6C = v1->unk_1B0 / 6;

        sub_0208B8B8(v0->unk_6F0, 110 + (v1->unk_2F68 * 24), 52 + (v1->unk_2F6C * 22));

        ov62_02234540(v0, 1);
        ov62_0223B140(v0);
        ov62_0223B050(v0);
        ov62_02234540(v0, 0);
        ov62_0223ADC0(v0, v1->unk_1B0);

        if ((v1->unk_04.unk_28[v1->unk_1B0] != 0) && (ov62_0223ADB0(v1->unk_04.unk_154, (1 << v1->unk_1B0)) != 1)) {
            sub_02005844(v1->unk_04.unk_28[v1->unk_1B0], v1->unk_04.unk_158[v1->unk_1B0]);
        }
        break;
    case 1:
        ov62_02234520(v0);
        sub_0208B9E0(v0->unk_6F0, 0);
        sub_0208BA08(v0->unk_6F0, 0, 0);
        ov62_0222FB60(v0, 11);
        break;
    }
}

static void ov62_0223A0AC(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    ov62_0223131C(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223454C(param0, &v0->unk_348[0], NNS_G2D_VRAM_TYPE_2DSUB, 3, 32, 232, 36, -8, 0, 1);
    ov62_0223454C(param0, &v0->unk_348[1], NNS_G2D_VRAM_TYPE_2DSUB, 53, 128, 232, 36, -8, 1, 1);
}

static void ov62_0223A110(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    ov62_022345A8(&v0->unk_348[0]);
    ov62_022345A8(&v0->unk_348[1]);
    ov62_022313BC(param0);
}

static void ov62_0223A138(UnkStruct_ov62_02239DBC *param0)
{
    int v0;

    for (v0 = 0; v0 < 30; v0++) {
        if (param0->unk_04.unk_28[v0] != 0) {
            param0->unk_1B0 = v0;
            break;
        }
    }
}

static void ov62_0223A154(SaveData *param0, const PCBoxes *param1, int param2, UnkStruct_ov62_02239DA4 *param3)
{
    memset(param3, 0, sizeof(UnkStruct_ov62_02239DA4));
    ov61_0222AE88(param0, param1, param2, param3, 102);
}

static BOOL ov62_0223A17C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02239DBC));

    memset(v0, 0, sizeof(UnkStruct_ov62_02239DBC));

    param0->unk_860 = v0;

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);

    v0->unk_00 = SaveData_PCBoxes(param0->unk_830);
    ov62_0223A154(param0->unk_830, v0->unk_00, v0->unk_1A0, &v0->unk_04);
    ov62_0223A138(v0);
    ov62_022315C8(&v0->unk_1A4, &v0->unk_1A8, 0);

    v0->unk_330[0] = sub_02023FCC(Unk_ov62_02248DB4, NELEMS(Unk_ov62_02248DB4), ov62_02239E0C, param0, 102);
    v0->unk_330[1] = sub_02023FCC(Unk_ov62_02248DDC, NELEMS(Unk_ov62_02248DDC), ov62_02239EC0, param0, 102);
    v0->unk_330[2] = sub_02023FCC(Unk_ov62_02248DDC, NELEMS(Unk_ov62_02248DDC), ov62_02239EFC, param0, 102);
    v0->unk_330[3] = sub_02023FCC(Unk_ov62_02248D6C, NELEMS(Unk_ov62_02248D6C), ov62_02239F38, param0, 102);
    v0->unk_330[4] = sub_02023FCC(Unk_ov62_02248D54, NELEMS(Unk_ov62_02248D54), ov62_02239F98, param0, 102);
    v0->unk_380.unk_04 = sub_02030A80(102);

    sub_02030AA0(v0->unk_380.unk_04, param0->unk_830);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_0223A2A8(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_1AC, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        param0->unk_08++;
        break;
    case 2:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_02234540(param0, 1);
        ov62_0223A0AC(param0);
        ov62_02234540(param0, 0);
        ov62_02234314();
        param0->unk_08++;
        break;
    default:
        ov62_0222FB60(param0, 2);
        break;
    }

    return 0;
}

static BOOL ov62_0223A394(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        ov62_02234540(param0, 1);
        ov62_0223B140(param0);
        ov62_0223AFEC(param0);
        ov62_0223AD7C(param0);
        ov62_02234540(param0, 0);
        param0->unk_08++;

    case 1:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 1)) {
            ov62_0223A154(param0->unk_830, v0->unk_00, v0->unk_1A0, &v0->unk_04);
            ov62_0223A138(v0);
            param0->unk_08++;
        }
        break;

    case 2: {
        ov62_02234540(param0, 1);
        ov62_0223B230(param0);
        ov62_0223B124(param0, 1);
        ov62_0223AFC0(param0, 0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
    } break;

    case 3:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 1)) {
            ov62_0223ADC0(param0, v0->unk_1B0);
            ov62_0223AD20(param0);
            ov62_0223AC0C(param0, 270);
            ov62_0223B124(param0, 0);
            ov62_0223AFC0(param0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            G2_BlendNone();
            ov62_0222FB60(param0, 3);
        }
        break;

    default:
        break;
    }

    return 0;
}

static void ov62_0223A4C8(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    if (param1 == 0) {
        SpriteActor_EnableObject(v0->unk_348[1].unk_08, 1);
        sub_020129D0(v0->unk_348[1].unk_0C, 1);
        SpriteActor_SetSpritePositionXY(v0->unk_348[0].unk_08, 32, 232);
    } else {
        SpriteActor_EnableObject(v0->unk_348[1].unk_08, 0);
        sub_020129D0(v0->unk_348[1].unk_0C, 0);
        SpriteActor_SetSpritePositionXY(v0->unk_348[0].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_348[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_348[1].unk_0C, 36, -8);
}

static BOOL ov62_0223A544(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_0208B9E0(param0->unk_6F4, 0);
        ov62_02231664(&v0->unk_1AC, 1);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 2)) {
            sub_0200710C(param0->unk_14.unk_00, 79, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            ov62_0223AB14(param0);
            ov62_0223A4C8(param0, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 1:
        ov62_02231664(&v0->unk_1AC, 0);
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 2)) {
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_0222FB60(param0, 6);
            ov62_0223AC0C(param0, 272);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223A634(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    sub_0202404C(v0->unk_330[1]);

    return 0;
}

static BOOL ov62_0223A64C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 *v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        ov62_0223ABBC(param0);
        sub_0208B9E0(param0->unk_6F4, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
    case 1:
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        ov62_0223B140(param0);
        ov62_02234540(param0, 1);
        ov62_0223AFEC(param0);
        ov62_02234540(param0, 0);
        ov62_0223AD7C(param0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 2:
        ov62_02231664(&v0->unk_1AC, 1);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 3:
        param0->unk_08++;
    case 4:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        ov62_02231AAC(param0, 288);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 5:
        if (ov61_0222B224(ov62_0224112C(param0), v0->unk_380.unk_00, v0->unk_380.unk_04, v0->unk_00, v0->unk_1A0) == 1) {
            param0->unk_08++;
        }
        break;
    case 6:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 2, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
        } else {
            sub_020057A4(1381, 0);
            ov62_02233704(param0, 48);
            ov62_0223196C(param0, 1);
            Sound_PlayEffect(1375);
            param0->unk_08++;
        }
        break;
    case 7:
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        param0->unk_08++;
        break;
    default:
        ov62_0222FB60(param0, 10);
        break;
    }

    return 0;
}

static BOOL ov62_0223A840(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_0208B9E0(param0->unk_6F4, 0);
        ov62_0223ABBC(param0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_1AC, 1);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 2)) {
            ov62_0223A4C8(param0, 0);
            sub_0200710C(param0->unk_14.unk_00, 77, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231664(&v0->unk_1AC, 0);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 2)) {
            ov62_0223AC0C(param0, 270);
            ov62_0222FB60(param0, 3);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223A93C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        ov62_02234540(param0, 1);
        ov62_0223B140(param0);
        ov62_0223AFEC(param0);
        ov62_0223AD7C(param0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_1AC, 1);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 2: {
        ov62_0222FB60(param0, 10);
    } break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223A9F4(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223ABBC(param0);
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_1AC, 1);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 2: {
        ov62_0222FB60(param0, 13);
    } break;
    default:
        break;
    }

    return 0;
}

// clang-format off
BOOL(*const Unk_ov62_02248E24[])(UnkStruct_0208C06C *) = {
    ov62_0223A17C,
    ov62_0223A2A8,
    ov62_0223B2E8,
    ov62_0223B40C,
    ov62_0223A394,
    ov62_0223A544,
    ov62_0223A634,
    ov62_0223A840,
    ov62_0223A64C,
    ov62_0223A93C,
    ov62_0223B424,
};
// clang-format on

// clang-format off
BOOL(*const Unk_ov62_02248E50[])(UnkStruct_0208C06C *) = {
    ov62_0223A17C,
    ov62_0223A2A8,
    ov62_0223B564,
    ov62_0223B694,
    ov62_0223B980,
    ov62_0223BF44,
    ov62_0223BFB4,
    ov62_0223C63C,
    ov62_0223C79C,
    ov62_0223C138,
    ov62_0223C40C,
    ov62_0223C424,
    ov62_0223A9F4,
    ov62_0223C948,
};
// clang-format on

static const u8 Unk_ov62_02248D9C[][4] = {
    { 0x1, 0x2, 0x9, 0x3 },
    { 0xF, 0x1, 0xD, 0x3 },
    { 0x1, 0x15, 0x1E, 0x2 }
};

static const TextColor Unk_ov62_02248D90[] = {
    TEXT_COLOR(15, 13, 0),
    TEXT_COLOR(15, 1, 0),
    TEXT_COLOR(15, 13, 0),
};

static const u32 Unk_ov62_02248DA8[] = {
    0x6,
    0x4,
    0x0
};

static const u32 Unk_ov62_02248D78[] = {
    0x0,
    0x0,
    0xCC
};

static void ov62_0223AA90(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2 = 256 + 1;
    int v3;

    for (v3 = 0; v3 < 3; v3++) {
        v1 = &v0->unk_1B4[v3];

        Window_Init(v1);
        BGL_AddWindow(param0->unk_14.unk_10, v1, 2, Unk_ov62_02248D9C[v3][0], Unk_ov62_02248D9C[v3][1], Unk_ov62_02248D9C[v3][2], Unk_ov62_02248D9C[v3][3], 14, v2);
        BGL_FillWindow(v1, Unk_ov62_02248D78[v3]);
        sub_0201A9A4(v1);

        v2 += (Unk_ov62_02248D9C[v3][2] * Unk_ov62_02248D9C[v3][3]);
    }
}

static const u8 Unk_ov62_02248DC4[][4] = {
    { 0x3, 0x3, 0xB, 0x2 },
    { 0x12, 0x3, 0xB, 0x2 },
    { 0x3, 0x8, 0xB, 0x2 },
    { 0x12, 0x8, 0xB, 0x2 },
    { 0x3, 0xD, 0xB, 0x2 },
    { 0x12, 0xD, 0xB, 0x2 }
};

static void ov62_0223AB14(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf *v5;

    for (v3 = 0; v3 < NELEMS(Unk_ov62_02248DC4); v3++) {
        v1 = &v0->unk_234[v3];
        Window_Init(v1);
        BGL_AddWindow(param0->unk_14.unk_10, v1, 6, Unk_ov62_02248DC4[v3][0], Unk_ov62_02248DC4[v3][1], Unk_ov62_02248DC4[v3][2], Unk_ov62_02248DC4[v3][3], 14, v2);

        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 60 + v3);
        v4 = ov62_0223429C(v1, v5);

        BGL_FillWindow(v1, Unk_ov62_02248D78[0]);
        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, v4, 0, TEXT_SPEED_NO_TRANSFER, Unk_ov62_02248D90[0], NULL);
        sub_0201A9A4(v1);
        Strbuf_Free(v5);

        v2 += (Unk_ov62_02248DC4[v3][2] * Unk_ov62_02248DC4[v3][3]);
    }
}

static void ov62_0223ABBC(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2;

    for (v2 = 0; v2 < NELEMS(Unk_ov62_02248DC4); v2++) {
        v1 = &v0->unk_234[v2];

        sub_0201ACF4(v1);
        BGL_DeleteWindow(v1);
    }
}

static void ov62_0223ABE4(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_02239DBC *v1 = param0->unk_860;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0201ACF4(&v1->unk_1B4[v0]);
        BGL_DeleteWindow(&v1->unk_1B4[v0]);
    }
}

static void ov62_0223AC0C(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;

    v1 = &v0->unk_1B4[2];
    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

    BGL_FillWindow(v1, Unk_ov62_02248D78[2]);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, Unk_ov62_02248DA8[2], TEXT_SPEED_NO_TRANSFER, Unk_ov62_02248D90[2], NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
}

static void ov62_0223AC58(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;
    Strbuf *v3;
    Strbuf *v4;
    StringTemplate *v5;
    int v6 = 28 + v0->unk_380.unk_00;

    v1 = &v0->unk_1B4[2];
    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v6);
    v3 = Strbuf_Init(255, 102);
    v4 = Strbuf_Init(255, 102);
    v5 = ov62_02231690(102);

    Strbuf_CopyChars(v3, v0->unk_38C[param0->unk_14.unk_48C.unk_38.unk_00]->unk_00.unk_00);
    ov62_022349A8(param0, v3);
    StringTemplate_SetStrbuf(v5, 0, v3, 0, 1, GAME_LANGUAGE);
    StringTemplate_Format(v5, v4, v2);
    BGL_FillWindow(v1, Unk_ov62_02248D78[2]);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v4, 0, Unk_ov62_02248DA8[2], TEXT_SPEED_NO_TRANSFER, Unk_ov62_02248D90[2], NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
    Strbuf_Free(v4);
    StringTemplate_Free(v5);
}

static void ov62_0223AD20(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;
    int v3;

    v1 = &v0->unk_1B4[1];
    v2 = Strbuf_Init(255, 102);

    Strbuf_CopyChars(v2, v0->unk_04.unk_00);
    BGL_FillWindow(v1, Unk_ov62_02248D78[1]);

    v3 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v3, Unk_ov62_02248DA8[1], TEXT_SPEED_NO_TRANSFER, Unk_ov62_02248D90[1], NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
}

static void ov62_0223AD7C(UnkStruct_0208C06C *param0)
{
    int v0;
    Window *v1;
    UnkStruct_ov62_02239DBC *v2 = param0->unk_860;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = &v2->unk_1B4[v0];

        BGL_FillWindow(v1, Unk_ov62_02248D78[v0]);
        sub_0201A9A4(v1);
    }
}

static BOOL ov62_0223ADB0(int param0, int param1)
{
    return (param0 & param1) == param1;
}

static void ov62_0223ADC0(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;
    int v3;
    int v4;
    u16 v5[255];

    v1 = &v0->unk_1B4[0];
    BGL_FillWindow(v1, Unk_ov62_02248D78[0]);
    v4 = v0->unk_04.unk_28[param1];

    if (v4 == 0) {
        sub_0201A9A4(v1);
        return;
    }

    v2 = Strbuf_Init(255, 102);

    if (ov62_0223ADB0(v0->unk_04.unk_154, (1 << v0->unk_1B0)) == 1) {
        v4 = SPECIES_EGG;
    }

    MessageLoader_GetSpeciesName(v4, 102, v5);
    Strbuf_CopyChars(v2, v5);

    v3 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v3, Unk_ov62_02248DA8[0], TEXT_SPEED_NO_TRANSFER, Unk_ov62_02248D90[0], NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
}

static void ov62_0223AE60(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;
    PaletteData *v3;
    SpriteTemplate v4;

    v1 = param0->unk_14.unk_04;
    v2 = param0->unk_14.unk_08;
    v3 = param0->unk_14.unk_14;

    sub_0200CD7C(v3, 2, v1, v2, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 100000);
    sub_0200CE0C(v1, v2, 19, PokeIcon64KCellsFileIndex(), 0, 100000);
    sub_0200CE3C(v1, v2, 19, PokeIcon64KAnimationFileIndex(), 0, 100000);

    {
        int v5;
        int v6;
        int v7;
        int v8;
        int v9;

        for (v5 = 0; v5 < 30; v5++) {
            v7 = v0->unk_04.unk_28[v5];
            v6 = v0->unk_04.unk_158[v5];
            v9 = ov62_0223ADB0(v0->unk_04.unk_154, (1 << v5));

            if (v7 == 0) {
                continue;
            }

            sub_0200D888(v1, v2, 19, PokeIconSpriteIndex(v7, v9, v6), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 100000 + v5);

            v4.x = 110 + ((v5 % 6) * 24);
            v4.y = 48 + ((v5 / 6) * 22);
            v4.z = 0;
            v4.animIdx = 0;
            v4.priority = 0;
            v4.plttIdx = 0;
            v4.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
            v4.bgPriority = 0;
            v4.transferToVRAM = FALSE;
            v4.resources[0] = 100000 + v5;
            v4.resources[1] = 100000;
            v4.resources[2] = 100000;
            v4.resources[3] = 100000;
            v4.resources[4] = SPRITE_RESOURCE_NONE;
            v4.resources[5] = SPRITE_RESOURCE_NONE;

            v0->unk_2B4[v5] = SpriteActor_LoadResources(v1, v2, &v4);
            v8 = PokeIconPaletteIndex(v7, v6, v9);

            sub_0200D430(v0->unk_2B4[v5], 4 + v8);
            sub_0200D364(v0->unk_2B4[v5], 1);
            sub_0200D474(v0->unk_2B4[v5], 30 - v5);
        }
    }
}

static void ov62_0223AFC0(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    int v1;
    int v2;

    for (v1 = 0; v1 < 30; v1++) {
        v2 = v0->unk_04.unk_28[v1];

        if (v2 == 0) {
            continue;
        }

        SpriteActor_EnableObject(v0->unk_2B4[v1], param1);
    }
}

static void ov62_0223AFEC(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    int v1;
    int v2;

    SpriteGfxHandler_UnloadPlttObjById(param0->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_14.unk_08, 100000);

    for (v1 = 0; v1 < 30; v1++) {
        v2 = v0->unk_04.unk_28[v1];

        if (v2 == 0) {
            continue;
        }

        if (v0->unk_2B4[v1] == NULL) {
            continue;
        }

        SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 100000 + v1);
        sub_0200D0F4(v0->unk_2B4[v1]);
        v0->unk_2B4[v1] = NULL;
    }
}

static void ov62_0223B050(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    PokemonPersonalData *v1;
    ArchivedSprite v2;
    u8 v3;
    u8 v4;
    u32 v5 = v0->unk_04.unk_DC[v0->unk_1B0];
    u32 v6 = v0->unk_04.unk_158[v0->unk_1B0];
    u16 v7 = v0->unk_04.unk_28[v0->unk_1B0];
    u32 v8 = v0->unk_04.unk_64[v0->unk_1B0];
    u32 v9;
    int v10 = 2;

    if (v7 == 0) {
        v0->unk_32C = NULL;
        return;
    }

    if (ov62_0223ADB0(v0->unk_04.unk_154, (1 << v0->unk_1B0)) == 1) {
        if (v7 == 490) {
            v6 = 1;
        } else {
            v6 = 0;
        }

        v7 = SPECIES_EGG;
    }

    v1 = PokemonPersonalData_FromMonSpecies(v7, 102);
    v3 = Pokemon_GetGenderOf(v7, v8);
    v4 = Pokemon_IsPersonalityShiny(v5, v8);
    v9 = LoadPokemonSpriteYOffset(v7, v3, v10, v6, v8);
    v9 = 0;

    BuildArchivedPokemonSprite(&v2, v7, v3, v10, v4, v6, v8);
    v0->unk_32C = sub_02007C34(param0->unk_14.unk_50, &v2, 42, 91 + v9, 0, 0, NULL, NULL);
    PokemonPersonalData_Free(v1);
}

static void ov62_0223B124(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    if (v0->unk_32C) {
        sub_02007DEC(v0->unk_32C, 6, param1);
    }
}

static void ov62_0223B140(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    if (v0->unk_32C) {
        sub_02007DC8(v0->unk_32C);
    }
}

static void ov62_0223B158(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    {
        PCBoxes *v1 = SaveData_PCBoxes(param0->unk_830);

        if ((v0->unk_04.unk_176 >= 16) && (v0->unk_04.unk_176 < (16 + 8))) {
            v0->unk_04.unk_176 = 0;
        }
        if ((v0->unk_04.unk_176 >= (16 + 8)) && (v0->unk_04.unk_176 < (16 + 8 + 8))) {
            if (sub_02079CFC(v1, v0->unk_04.unk_176 - (16 + 8)) == 0) {
                (void)0;
            }
        }
    }

    if (v0->unk_04.unk_176 >= (16 + 8 + 8)) {
        v0->unk_04.unk_176 = 0;
    }

    sub_020070E8(param0->unk_14.unk_00, (138 + (v0->unk_04.unk_176 * 3)), param0->unk_14.unk_10, 3, 0, 0, 0, 102);
    sub_0200710C(param0->unk_14.unk_00, (140 + (v0->unk_04.unk_176 * 3)), param0->unk_14.unk_10, 3, 0, 0, 0, 102);
    sub_02002FEC(param0->unk_14.unk_14, 162, (139 + (v0->unk_04.unk_176 * 3)), 102, 0, 0x40, 12 * 16, 12 * 16);

    ov62_0223B050(param0);
    ov62_0223AE60(param0);
    ov62_0223ADC0(param0, v0->unk_1B0);
    ov62_0223AD20(param0);
    ov62_0223AC0C(param0, 270);
}

static void ov62_0223B230(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    {
        PCBoxes *v1 = SaveData_PCBoxes(param0->unk_830);

        if ((v0->unk_04.unk_176 >= 16) && (v0->unk_04.unk_176 < (16 + 8))) {
            v0->unk_04.unk_176 = 0;
        }

        if ((v0->unk_04.unk_176 >= (16 + 8)) && (v0->unk_04.unk_176 < (16 + 8 + 8))) {
            if (sub_02079CFC(v1, v0->unk_04.unk_176 - (16 + 8)) == 0) {
                v0->unk_04.unk_176 = 0;
            }
        }
    }

    sub_020070E8(param0->unk_14.unk_00, (138 + (v0->unk_04.unk_176 * 3)), param0->unk_14.unk_10, 3, 0, 0, 0, 102);
    sub_0200710C(param0->unk_14.unk_00, (140 + (v0->unk_04.unk_176 * 3)), param0->unk_14.unk_10, 3, 0, 0, 0, 102);
    sub_02002FEC(param0->unk_14.unk_14, 162, (139 + (v0->unk_04.unk_176 * 3)), 102, 0, 0x40, 12 * 16, 12 * 16);

    ov62_0223B050(param0);
    ov62_0223AE60(param0);
}

static BOOL ov62_0223B2E8(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:

    {
        ov62_022302F0(param0, 2);
        ov62_02234540(param0, 1);
        ov62_0223AA90(param0);
        ov62_0223B158(param0);
        ov62_0223B124(param0, 1);
        ov62_0223AFC0(param0, 0);
        ov62_02234540(param0, 0);

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        sub_0200710C(param0->unk_14.unk_00, 77, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
    }
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 0)) {
            ov62_0223B124(param0, 0);
            ov62_0223AFC0(param0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            G2_BlendNone();
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov62_02231664(&v0->unk_1AC, 0)) {
            v0->unk_344 = v0->unk_330[0];
            ov62_0222FB60(param0, 3);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223B40C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    sub_0202404C(v0->unk_344);
    return 0;
}

static BOOL ov62_0223B424(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223AFEC(param0);
        ov62_0223B140(param0);
        ov62_0223ABE4(param0);
        ov62_0223A110(param0);
        sub_0208B8B0(param0->unk_6F4, 0);
        sub_0208B9E0(param0->unk_6F4, 0);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        {
            int v1;

            for (v1 = 0; v1 < 5; v1++) {
                sub_02024034(v0->unk_330[v1]);
            }
        }

        ov62_02231688(&v0->unk_1AC);
        ov62_0223146C(param0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        param0->unk_08++;
        break;

    default:
        if (ov62_02231664(&v0->unk_1AC, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_1AC);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            sub_02030A98(v0->unk_380.unk_04);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_1AC, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        }
        break;
    }

    return 0;
}

static BOOL ov62_0223B564(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0: {
        ov62_02234540(param0, 1);
        ov62_022302F0(param0, 2);
        ov62_0223AA90(param0);
        ov62_0223AC0C(param0, 275);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        sub_0200710C(param0->unk_14.unk_00, 79, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_0223AB14(param0);
        ov62_0223A4C8(param0, 1);
        ov62_02234540(param0, 0);
    }
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            G2_BlendNone();
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov62_02231664(&v0->unk_1AC, 0)) {
            v0->unk_344 = v0->unk_330[2];
            ov62_0222FB60(param0, 3);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;

    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223B694(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    sub_0202404C(v0->unk_330[2]);
    return 0;
}

static const u8 Unk_ov62_02248D5C[][4] = {
    { 0x8, 0x3, 0x10, 0x2 },
    { 0x9, 0xA, 0xE, 0x2 }
};

static void ov62_0223B6AC(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    int v5[] = { 121, 59 };
    Strbuf *v6;

    for (v3 = 0; v3 < 2; v3++) {
        v1 = &v0->unk_234[v3];
        Window_Init(v1);
        BGL_AddWindow(param0->unk_14.unk_10, v1, 6, Unk_ov62_02248D5C[v3][0], Unk_ov62_02248D5C[v3][1], Unk_ov62_02248D5C[v3][2], Unk_ov62_02248D5C[v3][3], 14, v2);
        BGL_FillWindow(v1, 0x0);

        v6 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v5[v3]);
        v4 = ov62_0223429C(v1, v6);

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v6, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        sub_0201A9A4(v1);
        v2 += (Unk_ov62_02248D5C[v3][2] * Unk_ov62_02248D5C[v3][3]);
        Strbuf_Free(v6);
    }
}

static void ov62_0223B768(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;
    int v3;

    v1 = &v0->unk_234[0];

    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    v3 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_0223B7C0(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf *v5;

    for (v3 = 0; v3 < 1; v3++) {
        v1 = &v0->unk_234[v3];

        Window_Init(v1);
        BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 12, 6, 8, 4, 14, v2);
        BGL_FillWindow(v1, 0x0);

        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 34);

        {
            u32 v6 = (64 - Font_CalcMaxLineWidth(FONT_SYSTEM, v5, 0)) / 2;
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, v6, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        }

        sub_0201A9A4(v1);
        Strbuf_Free(v5);
    }
}

static void ov62_0223B840(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_234[0]);
    BGL_DeleteWindow(&v0->unk_234[0]);
}

static void ov62_0223B860(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        sub_0201ACF4(&v0->unk_234[v1]);
        BGL_DeleteWindow(&v0->unk_234[v1]);
    }
}

static const u8 Unk_ov62_02248D50[][4] = {
    { 0x4, 0x3, 0x18, 0x2 }
};

static void ov62_0223B888(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    int v5;
    int v6[] = { 27, 19, 26 };
    Strbuf *v7;

    for (v3 = 0; v3 < NELEMS(Unk_ov62_02248D50); v3++) {
        v1 = &v0->unk_1B4[v3];

        Window_Init(v1);
        BGL_AddWindow(param0->unk_14.unk_10, v1, 2, Unk_ov62_02248D50[v3][0], Unk_ov62_02248D50[v3][1], Unk_ov62_02248D50[v3][2], Unk_ov62_02248D50[v3][3], 14, v2);
        BGL_FillWindow(v1, 0x0);

        if (v3 == 0) {
            v7 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 310 + v0->unk_380.unk_00);
            v4 = ov62_0223429C(v1, v7);
            v5 = 0;
        }

        if (v7) {
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v7, v4, v5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Strbuf_Free(v7);
        }

        sub_0201A9A4(v1);
        v2 += (Unk_ov62_02248D50[v3][2] * Unk_ov62_02248D50[v3][3]);
    }
}

static void ov62_0223B958(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    Window *v1;
    int v2;

    for (v2 = 0; v2 < NELEMS(Unk_ov62_02248D50); v2++) {
        sub_0201ACF4(&v0->unk_1B4[v2]);
        BGL_DeleteWindow(&v0->unk_1B4[v2]);
    }
}

static const UnkStruct_ov62_02248CDC Unk_ov62_02248DF8 = {
    NULL,
    0x0,
    0x3,
    0x3,
    0x7,
    0x1A,
    0xF,
    0x40,
    0x2,
    0x5,
    NULL
};

static BOOL ov62_0223B980(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 *v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        sub_0208B9E0(param0->unk_6F4, 0);
        ov62_0223ABE4(param0);
        ov62_0223ABBC(param0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;

    case 1:
        ov62_02231664(&v0->unk_1AC, 1);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_0200710C(param0->unk_14.unk_00, 3, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_0200710C(param0->unk_14.unk_00, 78, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        ov62_02231AAC(param0, 289);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 3:
        if (ov61_0222B290(ov62_0224112C(param0), v0->unk_380.unk_00) == 1) {
            param0->unk_08++;
        }
        break;
    case 4:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 3, v1->unk_0C, v1->unk_04);

            v0->unk_380.unk_08 = 0;
            v0->unk_2F64 = 0;

            ov62_02234540(param0, 1);
            ov62_0223AA90(param0);

            sub_0208B9E0(param0->unk_6F4, 0);
            sub_0208B8B0(param0->unk_6F0, 0);
            sub_0208B9E0(param0->unk_6F0, 0);
            sub_0208BA08(param0->unk_6F0, 0, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            sub_02019EBC(param0->unk_14.unk_10, 3);

            ov62_02234540(param0, 0);
            param0->unk_08 = 7;
        } else {
            sub_020057A4(1381, 0);
            Sound_PlayEffect(1375);
            param0->unk_08++;
        }
        break;
    case 5:
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);

        if (v0->unk_380.unk_08 == 0) {
            param0->unk_08++;
            param0->unk_0C = 0;
            ov62_02231AAC(param0, 294);
        } else {
            param0->unk_08 = 0xFF;
        }
        break;
    case 6:
        if (((++param0->unk_0C) >= (30 * 2)) || (TouchScreen_Tapped() == 1)) {
            param0->unk_0C = 0;
            ov62_02231B8C(param0);
            v0->unk_2F64 = 0;

            ov62_02234540(param0, 1);
            ov62_0223AA90(param0);

            sub_0208B9E0(param0->unk_6F4, 0);
            sub_0208B8B0(param0->unk_6F0, 0);
            sub_0208B9E0(param0->unk_6F0, 0);
            sub_0208BA08(param0->unk_6F0, 0, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            sub_02019EBC(param0->unk_14.unk_10, 3);

            ov62_02234540(param0, 0);
            param0->unk_08++;
        }
        break;
    case 7:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            sub_0200710C(param0->unk_14.unk_00, 79, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            param0->unk_08++;
        }
        break;
    case 8:
        ov62_02231664(&v0->unk_1AC, 0);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 2)) {
            ov62_022302F0(param0, 2);
            ov62_0223AC0C(param0, 275);
            ov62_0223AB14(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_0222FB60(param0, 3);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    default:
        ov62_02231664(&v0->unk_1AC, 0);

        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 0)) {
            ov62_0223B888(param0);
            ov62_0223BE7C(param0);

            {
                ov62_02234540(param0, 1);

                v0->unk_2EAC = Unk_ov62_02248DF8;
                v0->unk_2EAC.unk_04 = v0->unk_380.unk_08;

                ov62_022335BC(&param0->unk_14.unk_46C, param0, 2);
                ov62_02233310(&param0->unk_14.unk_48C);
                ov62_02232AAC(&param0->unk_14.unk_48C, param0, &v0->unk_2EAC, &v0->unk_2E0C[0]);
                ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
                ov62_0223331C(&param0->unk_14.unk_48C, param0, 1);
                ov62_02233434(&param0->unk_14.unk_48C, 56, 176);
                ov62_02234540(param0, 0);
            }

            ov62_0223B6AC(param0);

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

            {
                ov62_02234358(param0, param0->unk_6F0, 16, 68 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
                sub_0208B9E0(param0->unk_6F0, 1);
                sub_0208BA08(param0->unk_6F0, 12, 12);
            }

            ov62_0222FB60(param0, 5);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    }

    return 0;
}

static void ov62_0223BE7C(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_02239DBC *v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_380.unk_08; v0++) {
        v1->unk_2E0C[v0][1] = Strbuf_Init(20, 102);
        Strbuf_CopyChars(v1->unk_2E0C[v0][1], v1->unk_38C[v0]->unk_00.unk_00);
        ov62_022349A8(param0, v1->unk_2E0C[v0][1]);

        v1->unk_2E0C[v0][0] = Strbuf_Init(30, 102);
        Strbuf_CopyChars(v1->unk_2E0C[v0][0], v1->unk_38C[v0]->unk_80.unk_00);
    }
}

static void ov62_0223BEF0(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_02239DBC *v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_380.unk_08; v0++) {
        if (v1->unk_2E0C[v0][0]) {
            Strbuf_Free(v1->unk_2E0C[v0][0]);
            v1->unk_2E0C[v0][0] = NULL;
        }

        if (v1->unk_2E0C[v0][1]) {
            Strbuf_Free(v1->unk_2E0C[v0][1]);
            v1->unk_2E0C[v0][1] = NULL;
        }
    }
}

static BOOL ov62_0223BF44(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    if (v0->unk_2F64 == 0) {
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022331C8(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
        ov62_02232BB4(&param0->unk_14.unk_48C, param0, &v0->unk_2E0C[0]);
        sub_0208B8EC(param0->unk_6F0, 16, 68 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
    }

    sub_0202404C(v0->unk_330[3]);

    return 0;
}

static BOOL ov62_0223BFB4(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223BEF0(param0);
        ov62_0223B860(param0);

        if (v0->unk_2F64 == 0) {
            ov62_0223B958(param0);
            ov62_02234540(param0, 1);
            ov62_02233600(&param0->unk_14.unk_46C);
            ov62_022332FC(&param0->unk_14.unk_48C);
            ov62_022334FC(&param0->unk_14.unk_48C, param0);
            ov62_02234540(param0, 0);
        } else {
            ov62_02234540(param0, 1);
            ov62_02232394(&v0->unk_2ED8, param0);
            ov62_02239D8C(param0);
            ov62_02234540(param0, 0);
        }

        v0->unk_2F64 = 0;

        ov62_02234540(param0, 1);
        ov62_0223AA90(param0);
        ov62_0223AC58(param0, 0xFF);

        sub_0208B9E0(param0->unk_6F4, 0);
        sub_0208B8B0(param0->unk_6F0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        ov62_02234540(param0, 0);
        param0->unk_08++;
    case 1:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            sub_0200710C(param0->unk_14.unk_00, 79, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 2)) {
            ov62_022302F0(param0, 2);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_0223AC0C(param0, 275);
            ov62_0223AB14(param0);
            ov62_0222FB60(param0, 3);
        }
        break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223C138(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223B860(param0);

        if (v0->unk_2F64 == 0) {
            ov62_0223B958(param0);
            ov62_02234540(param0, 1);
            ov62_02233600(&param0->unk_14.unk_46C);
            ov62_022332FC(&param0->unk_14.unk_48C);
            ov62_022334FC(&param0->unk_14.unk_48C, param0);
            ov62_02234540(param0, 0);
        } else {
            ov62_02234540(param0, 1);
            ov62_02232394(&v0->unk_2ED8, param0);
            ov62_02239D8C(param0);
            ov62_02234540(param0, 0);
        }

        sub_0208B9E0(param0->unk_6F4, 0);
        sub_0208B8B0(param0->unk_6F0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
    case 1:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            param0->unk_08++;
        }
        break;
    case 2: {
        ov62_02234540(param0, 1);
        v0->unk_04 = v0->unk_38C[param0->unk_14.unk_48C.unk_38.unk_00]->unk_80;
        ov62_0223A138(v0);
        ov62_022302F0(param0, 2);
        ov62_0223AA90(param0);
        ov62_0223B158(param0);
        ov62_0223AC58(param0, 0xFF);
        ov62_0223B124(param0, 1);
        ov62_0223AFC0(param0, 0);
        ov62_02234540(param0, 0);

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        sub_0200710C(param0->unk_14.unk_00, 75, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
    }
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 0)) {
            ov62_0223B124(param0, 0);
            ov62_0223AFC0(param0, 1);
            ov62_0223B7C0(param0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            G2_BlendNone();
            param0->unk_08++;
        }
        break;
    default:
        if (ov62_02231664(&v0->unk_1AC, 0)) {
            v0->unk_344 = v0->unk_330[0];

            ov62_0223A138(v0);

            v0->unk_2F68 = v0->unk_1B0 % 6;
            v0->unk_2F6C = v0->unk_1B0 / 6;

            ov62_02234358(param0, param0->unk_6F0, 110 + (v0->unk_2F68 * 24), 52 + (v0->unk_2F6C * 22));

            sub_0208B9E0(param0->unk_6F0, 1);
            sub_0208BA08(param0->unk_6F0, 12, 12);

            if ((v0->unk_04.unk_28[v0->unk_1B0] != 0) && (ov62_0223ADB0(v0->unk_04.unk_154, (1 << v0->unk_1B0)) != 1)) {
                sub_02005844(v0->unk_04.unk_28[v0->unk_1B0], v0->unk_04.unk_158[v0->unk_1B0]);
            }

            ov62_0222FB60(param0, 10);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        break;
    }

    return 0;
}

static BOOL ov62_0223C40C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    sub_0202404C(v0->unk_330[4]);
    return 0;
}

static BOOL ov62_0223C424(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        ov62_0223B140(param0);
        ov62_0223AFEC(param0);
        ov62_0223AD7C(param0);

        sub_02019EBC(param0->unk_14.unk_10, 2);

        ov62_0223ABE4(param0);
        ov62_0223B840(param0);
        param0->unk_08++;
    case 1:
        v0->unk_2F64 = 0;
        param0->unk_08++;
    case 2:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 0)) {
            sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_0200710C(param0->unk_14.unk_00, 3, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_0200710C(param0->unk_14.unk_00, 78, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            param0->unk_08++;
        }
        break;
    default:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 0)) {
            ov62_02234540(param0, 1);
            sub_0208B9E0(param0->unk_6F0, 1);
            ov62_0223B888(param0);
            ov62_0223B6AC(param0);

            {
                ov62_022335BC(&param0->unk_14.unk_46C, param0, 2);
                ov62_02232AAC(&param0->unk_14.unk_48C, param0, &v0->unk_2EAC, &v0->unk_2E0C[0]);
                ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
                ov62_0223331C(&param0->unk_14.unk_48C, param0, 1);
                ov62_02233434(&param0->unk_14.unk_48C, 56, 176);
            }

            {
                ov62_02234358(param0, param0->unk_6F0, 16, 68 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
                sub_0208B9E0(param0->unk_6F0, 1);
                sub_0208BA08(param0->unk_6F0, 12, 12);
            }

            if (v0->unk_2F64 == 0) {
                ov62_02233664(&param0->unk_14.unk_46C);
                ov62_022331C8(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
                ov62_02232BB4(&param0->unk_14.unk_48C, param0, &v0->unk_2E0C[0]);
                sub_0208B8EC(param0->unk_6F0, 16, 68 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
            }

            ov62_02234540(param0, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_0222FB60(param0, 5);
        }
        break;
    }

    return 0;
}

static BOOL ov62_0223C63C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_0208B9E0(param0->unk_6F0, 0);

        if (v0->unk_2F64 == 0) {
            ov62_0223B958(param0);
        }

        {
            ov62_02233600(&param0->unk_14.unk_46C);
            ov62_022332FC(&param0->unk_14.unk_48C);
            ov62_022334FC(&param0->unk_14.unk_48C, param0);
        }

        v0->unk_2F64 = 1;

        sub_02019EBC(param0->unk_14.unk_10, 2);
        ov62_02231560(&v0->unk_1A4, &v0->unk_1A8, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        param0->unk_08++;
    case 1:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 1)) {
            ov62_02239D60(param0, param0->unk_14.unk_48C.unk_38.unk_00);
            ov62_02234540(param0, 1);
            ov62_02232378(&v0->unk_2ED8, param0);
            ov62_022323B8(&v0->unk_2ED8, 0);
            ov62_02234540(param0, 0);
            sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 1)) {
            ov62_022323B8(&v0->unk_2ED8, 1);
            ov62_0223B768(param0, 121 + v0->unk_2F64);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_0222FB60(param0, 5);
        }
        break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_0223C79C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        v0->unk_2F64 = 0;
        param0->unk_08++;
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02232394(&v0->unk_2ED8, param0);
        ov62_02239D8C(param0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
    case 2:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 1, 1)) {
            sub_02019EBC(param0->unk_14.unk_10, 2);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_0200710C(param0->unk_14.unk_00, 3, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            param0->unk_08++;
        }
        break;
    default:
        if (ov62_022315E0(&v0->unk_1A4, &v0->unk_1A8, 0, 1)) {
            ov62_02234540(param0, 1);
            ov62_0223B768(param0, 121 + v0->unk_2F64);
            ov62_0223B888(param0);

            {
                ov62_022335BC(&param0->unk_14.unk_46C, param0, 2);
                ov62_02232AAC(&param0->unk_14.unk_48C, param0, &v0->unk_2EAC, &v0->unk_2E0C[0]);
                ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
                ov62_0223331C(&param0->unk_14.unk_48C, param0, 1);
                ov62_02233434(&param0->unk_14.unk_48C, 56, 176);
            }

            if (v0->unk_2F64 == 0) {
                ov62_02233664(&param0->unk_14.unk_46C);
                ov62_022331C8(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
                ov62_02232BB4(&param0->unk_14.unk_48C, param0, &v0->unk_2E0C[0]);
                sub_0208B8EC(param0->unk_6F0, 16, 68 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
            }

            sub_0208B9E0(param0->unk_6F0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_02234540(param0, 0);
            ov62_0222FB60(param0, 5);
        }
        break;
    }

    return 0;
}

static BOOL ov62_0223C948(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02239DBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234540(param0, 1);
        ov62_0223ABE4(param0);
        ov62_0223A110(param0);

        sub_0208B8B0(param0->unk_6F4, 0);
        sub_0208B9E0(param0->unk_6F4, 0);
        sub_0208B8B0(param0->unk_6F0, 1);
        sub_0208B9E0(param0->unk_6F0, 0);

        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        {
            int v1;

            for (v1 = 0; v1 < 5; v1++) {
                sub_02024034(v0->unk_330[v1]);
            }
        }

        ov62_02231688(&v0->unk_1AC);
        ov62_0223146C(param0);

        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        param0->unk_08++;
        break;
    default:
        if (ov62_02231664(&v0->unk_1AC, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_1AC);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            sub_02030A98(v0->unk_380.unk_04);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_1AC, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_1AC, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

void ov62_0223CAA4(void *param0, const UnkStruct_ov62_0223CAA4 *param1)
{
    UnkStruct_ov62_02239DBC *v0 = param0;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        (void)0;
    }
}

void ov62_0223CAA8(void *param0, const UnkStruct_ov62_0223CAA4 *param1)
{
    UnkStruct_0208C06C *v0 = param0;
    UnkStruct_ov62_02239DBC *v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        v1->unk_380.unk_08 = 0;
    } else {
        v1->unk_380.unk_08 = ov61_0222BD18(ov62_0224112C(v0), v1->unk_38C, 20);
        MI_CpuCopy8(v1->unk_38C, &v1->unk_3DC, sizeof(UnkStruct_ov61_0222BCF8_sub1_sub1) * 20);
    }
}
