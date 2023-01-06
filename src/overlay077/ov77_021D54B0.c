#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay077/struct_ov77_021D6734_decl.h"

#include "struct_defs/struct_0200C738.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0201FE94.h"
#include "unk_020218BC.h"
#include "overlay077/ov77_021D54B0.h"
#include "overlay077/ov77_021D6670.h"

SDK_COMPILER_ASSERT(((3 + 1 + 1 + 2 + 4) + 6) == 17);

void include_data_ov77_021D79B8(void);

typedef struct UnkStruct_ov77_021D5564_t {
    UnkStruct_020218BC * unk_00;
    UnkStruct_0200C738 unk_04;
    UnkStruct_02009714 * unk_190[4];
    UnkStruct_02009DC8 * unk_1A0[11][4];
    UnkStruct_02022550 * unk_250[17];
    UnkStruct_ov19_021DA864 unk_294[3];
    NNSG2dCellTransferState * unk_300;
} UnkStruct_ov77_021D5564;

static const u8 Unk_ov77_021D7914[4] = {
    0xB,
    0xB,
    0xB,
    0xB
};

static int Unk_ov77_021D79B8[17] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x4,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8
};

static u16 dummy[16] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

static fx32 Unk_ov77_021D79AC[3] = {
    (FX32_ONE / 2) * 12,
    (FX32_ONE / 2) * 11,
    (FX32_ONE / 2) * 10
};

static fx32 Unk_ov77_021D79A0[1] = {
    (FX32_ONE / 2) * 10
};

static fx32 Unk_ov77_021D79A4[2] = {
    (FX32_ONE / 2) * 8,
    (FX32_ONE / 2) * 11
};

static void ov77_021D54B0 ()
{
    const int v0 = 76;

    {
        UnkStruct_ov22_022559F8 v1 = {
            11, 0x8000, 0x4000, v0
        };

        sub_0201E86C(&v1);
    }

    sub_0201F834(11, v0);
    sub_0201E994();
    sub_0201F8E4();
    sub_0201DBEC((3 * 2), v0);
}

static void ov77_021D54E8 (const int param0, UnkStruct_ov77_021D5564 * param1, const int param2, UnkStruct_ov115_02261520 * param3, UnkStruct_ov19_021DA864 * param4, int param5, int param6)
{
    sub_020093B4(param4, param0, param0, param0, param0, 0xffffffff, 0xffffffff, param5, param2, param1->unk_190[0], param1->unk_190[1], param1->unk_190[2], param1->unk_190[3], NULL, NULL);

    {
        param3->unk_00 = param1->unk_00;
        param3->unk_04 = param4;
        param3->unk_08.x = 0;
        param3->unk_08.y = 0;
        param3->unk_08.z = 0;
        param3->unk_14.x = FX32_ONE;
        param3->unk_14.y = FX32_ONE;
        param3->unk_14.z = FX32_ONE;
        param3->unk_20 = 0;
        param3->unk_24 = 1;
        param3->unk_28 = param6;
        param3->unk_2C = 76;
    }
}

const int ov77_021D555C (void)
{
    return sizeof(UnkStruct_ov77_021D5564);
}

void ov77_021D5564 (UnkStruct_ov77_021D5564 * param0)
{
    int v0;
    const int v1 = 76;

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    ov77_021D54B0();
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, v1);

    param0->unk_00 = sub_020095C4(((3 + 1 + 1 + 2 + 4) + 6 + 16), &param0->unk_04, v1);
    param0->unk_300 = sub_0201DCC8(3, v1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov77_021D7914[v0], v0, v1);
    }

    param0->unk_1A0[0][0] = sub_0200985C(param0->unk_190[0], 128, 46, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[1][0] = sub_0200985C(param0->unk_190[0], 128, 46, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[2][0] = sub_0200985C(param0->unk_190[0], 128, 50, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[3][0] = sub_0200985C(param0->unk_190[0], 128, 87, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[4][0] = sub_0200985C(param0->unk_190[0], 128, 22, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[5][0] = sub_0200985C(param0->unk_190[0], 128, 23, 0, 5, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[6][0] = sub_0200985C(param0->unk_190[0], 128, 91, 0, 6, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[7][0] = sub_0200985C(param0->unk_190[0], 128, 83, 0, 7, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[8][0] = sub_0200985C(param0->unk_190[0], 128, 83, 0, 8, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[9][0] = sub_0200985C(param0->unk_190[0], 128, 54, 0, 9, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[10][0] = sub_0200985C(param0->unk_190[0], 128, 54, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[0][1] = sub_020098B8(param0->unk_190[1], 128, 49, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[1][1] = sub_020098B8(param0->unk_190[1], 128, 49, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 1, v1);
    param0->unk_1A0[2][1] = sub_020098B8(param0->unk_190[1], 128, 53, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[3][1] = sub_020098B8(param0->unk_190[1], 128, 90, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[4][1] = sub_020098B8(param0->unk_190[1], 128, 20, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[5][1] = sub_020098B8(param0->unk_190[1], 128, 21, 0, 5, NNS_G2D_VRAM_TYPE_2DSUB, 1, v1);
    param0->unk_1A0[6][1] = sub_020098B8(param0->unk_190[1], 128, 94, 0, 6, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[7][1] = sub_020098B8(param0->unk_190[1], 128, 86, 0, 7, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[8][1] = sub_020098B8(param0->unk_190[1], 128, 86, 0, 8, NNS_G2D_VRAM_TYPE_2DSUB, 1, v1);
    param0->unk_1A0[9][1] = sub_020098B8(param0->unk_190[1], 128, 57, 0, 9, NNS_G2D_VRAM_TYPE_2DMAIN, 3, v1);
    param0->unk_1A0[10][1] = sub_020098B8(param0->unk_190[1], 128, 57, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, 3, v1);
    param0->unk_1A0[0][2] = sub_02009918(param0->unk_190[2], 128, 48, 0, 0, 2, v1);
    param0->unk_1A0[1][2] = sub_02009918(param0->unk_190[2], 128, 48, 0, 1, 2, v1);
    param0->unk_1A0[2][2] = sub_02009918(param0->unk_190[2], 128, 51, 0, 2, 2, v1);
    param0->unk_1A0[3][2] = sub_02009918(param0->unk_190[2], 128, 89, 0, 3, 2, v1);
    param0->unk_1A0[4][2] = sub_02009918(param0->unk_190[2], 128, 24, 0, 4, 2, v1);
    param0->unk_1A0[6][2] = sub_02009918(param0->unk_190[2], 128, 93, 0, 6, 2, v1);
    param0->unk_1A0[7][2] = sub_02009918(param0->unk_190[2], 128, 85, 0, 7, 2, v1);
    param0->unk_1A0[8][2] = sub_02009918(param0->unk_190[2], 128, 85, 0, 8, 2, v1);
    param0->unk_1A0[9][2] = sub_02009918(param0->unk_190[2], 128, 55, 0, 9, 2, v1);
    param0->unk_1A0[10][2] = sub_02009918(param0->unk_190[2], 128, 55, 0, 10, 2, v1);
    param0->unk_1A0[5][2] = sub_02009918(param0->unk_190[2], 128, 25, 0, 5, 2, v1);
    param0->unk_1A0[0][3] = sub_02009918(param0->unk_190[3], 128, 47, 0, 0, 3, v1);
    param0->unk_1A0[1][3] = sub_02009918(param0->unk_190[3], 128, 47, 0, 1, 3, v1);
    param0->unk_1A0[2][3] = sub_02009918(param0->unk_190[3], 128, 52, 0, 2, 3, v1);
    param0->unk_1A0[3][3] = sub_02009918(param0->unk_190[3], 128, 88, 0, 3, 3, v1);
    param0->unk_1A0[4][3] = sub_02009918(param0->unk_190[3], 128, 26, 0, 4, 3, v1);
    param0->unk_1A0[5][3] = sub_02009918(param0->unk_190[3], 128, 27, 0, 5, 3, v1);
    param0->unk_1A0[6][3] = sub_02009918(param0->unk_190[3], 128, 92, 0, 6, 3, v1);
    param0->unk_1A0[7][3] = sub_02009918(param0->unk_190[3], 128, 84, 0, 7, 3, v1);
    param0->unk_1A0[8][3] = sub_02009918(param0->unk_190[3], 128, 84, 0, 8, 3, v1);
    param0->unk_1A0[9][3] = sub_02009918(param0->unk_190[3], 128, 56, 0, 9, 3, v1);
    param0->unk_1A0[10][3] = sub_02009918(param0->unk_190[3], 128, 56, 0, 10, 3, v1);

    for (v0 = 0; v0 < 11; v0++) {
        sub_0200A3DC(param0->unk_1A0[v0][0]);
        sub_0200A640(param0->unk_1A0[v0][1]);
    }

    sub_0201FF0C(GX_PLANEMASK_OBJ, 1);
}

void ov77_021D5BAC (UnkStruct_ov77_021D5564 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 11; v0++) {
        sub_0200A4E4(param0->unk_1A0[v0][0]);
        sub_0200A6DC(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }

    sub_02021964(param0->unk_00);

    for (v0 = 0; v0 < 3; v0++) {
        sub_020094F0(&param0->unk_294[v0]);
    }

    if (param0->unk_300 != NULL) {
        sub_0201DCF0(param0->unk_300);
        param0->unk_300 = NULL;
    }

    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
    sub_0201DC3C();
}

void ov77_021D5C3C (UnkStruct_ov77_021D5564 * param0)
{
    int v0;
    UnkStruct_ov19_021DA864 v1;
    UnkStruct_ov115_02261520 v2;
    const int v3[6] = {
        4, 5, 6, 7, 8, 9,
    };
    const int v4[6] = {
        (256 + 8),
        (256 + 32),
        (256 + 32),
        (256 + 32),
        (256 + 32),
        (256 + 32)
    };
    const int v5[6] = {
        (16 * 8),
        (14 * 8),
        (18 * 8),
        (20 * 8),
        (18 * 8),
        (22 * 8)
    };

    {
        ov77_021D54E8(0, param0, 0, &v2, &param0->unk_294[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.unk_08.x = FX32_ONE * (128 - 48);
        v2.unk_08.y = FX32_ONE * (14 * 8);
        param0->unk_250[0] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[0], 0);
        sub_02021CAC(param0->unk_250[0], 0);

        ov77_021D54E8(1, param0, 0, &v2, &param0->unk_294[2], 1, NNS_G2D_VRAM_TYPE_2DSUB);

        v2.unk_08.x = FX32_ONE * (128 - 48);
        v2.unk_08.y = FX32_ONE * (14 * 8) + (192 << FX32_SHIFT);
        param0->unk_250[1] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[1], 0);
        sub_02021CAC(param0->unk_250[1], 0);

        ov77_021D54E8(2, param0, 0, &v2, &param0->unk_294[1], 1, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.unk_08.x = FX32_ONE * (128 + 48);
        v2.unk_08.y = FX32_ONE * (14 * 8);
        param0->unk_250[2] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[2], 0);
        sub_02021CAC(param0->unk_250[2], 0);

        ov77_021D54E8(3, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.unk_08.x = FX32_ONE * -64;
        v2.unk_08.y = FX32_ONE * (14 * 8);
        param0->unk_250[3] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[3], 1);
        sub_02021CAC(param0->unk_250[3], 0);

        ov77_021D54E8(6, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.unk_08.x = FX32_ONE * (256 + 64);
        v2.unk_08.y = FX32_ONE * (14 * 8);
        param0->unk_250[10] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[10], 1);
        sub_02021CAC(param0->unk_250[10], 0);

        ov77_021D54E8(7, param0, 1, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.unk_08.x = FX32_ONE * 128;
        v2.unk_08.y = FX32_ONE * (12 * 8);
        param0->unk_250[11] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[11], 1);
        sub_02021CAC(param0->unk_250[11], 0);
        sub_02021CF8(param0->unk_250[11], 1);

        ov77_021D54E8(8, param0, 1, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        v2.unk_08.x = FX32_ONE * 128;
        v2.unk_08.y = FX32_ONE * (12 * 8) + (192 << FX32_SHIFT);
        param0->unk_250[12] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[12], 1);
        sub_02021CAC(param0->unk_250[12], 0);
        sub_02021CF8(param0->unk_250[12], 1);

        ov77_021D54E8(9, param0, 3, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.unk_08.x = FX32_ONE * 128;
        v2.unk_08.y = FX32_ONE * (0xd * 8);
        param0->unk_250[13] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[13], 1);
        sub_02021CAC(param0->unk_250[13], 0);

        param0->unk_250[14] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[14], 1);
        sub_02021CAC(param0->unk_250[14], 0);

        ov77_021D54E8(10, param0, 3, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        v2.unk_08.x = FX32_ONE * 128;
        v2.unk_08.y = FX32_ONE * (0xd * 8) + (192 << FX32_SHIFT);
        param0->unk_250[15] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[15], 1);
        sub_02021CAC(param0->unk_250[15], 0);

        param0->unk_250[16] = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_250[16], 1);
        sub_02021CAC(param0->unk_250[16], 0);

        for (v0 = 0; v0 < 6; v0++) {
            ov77_021D54E8(4, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

            v2.unk_08.x = FX32_ONE * v4[v0];
            v2.unk_08.y = FX32_ONE * v5[v0];
            param0->unk_250[v3[v0]] = sub_02021AA0(&v2);

            sub_02021CC8(param0->unk_250[v3[v0]], 1);
            sub_02021CAC(param0->unk_250[v3[v0]], 0);
        }
    }
}

void ov77_021D5FB4 (UnkStruct_ov77_021D5564 * param0, UnkStruct_ov77_021D6734 * param1)
{
    int v0;
    UnkStruct_ov19_021DA864 v1;
    UnkStruct_ov115_02261520 v2;
    UnkStruct_02022550 ** v3;

    {
        ov77_021D54E8(5, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        for (v0 = 0; v0 < 16; v0++) {
            v3 = ov77_021D6794(param1, v0);
            (*v3) = sub_02021AA0(&v2);
            sub_02021CC8(*v3, 0);
            sub_02021CAC(*v3, 0);
        }
    }
}

void ov77_021D6000 (UnkStruct_ov77_021D5564 * param0, UnkStruct_ov77_021D6734 * param1)
{
    int v0;
    UnkStruct_02022550 ** v1;

    for (v0 = 0; v0 < 16; v0++) {
        v1 = ov77_021D6794(param1, v0);
        sub_02021CAC(*v1, 0);
    }
}

void ov77_021D6020 (UnkStruct_ov77_021D5564 * param0)
{
    sub_020219F8(param0->unk_00);

    if (param0->unk_300 != NULL) {
        sub_0201DCE8();
    }
}

void ov77_021D603C (UnkStruct_ov77_021D5564 * param0, const u8 param1, const u8 param2)
{
    sub_02021CAC(param0->unk_250[param1], param2);
}

void ov77_021D6050 (UnkStruct_ov77_021D5564 * param0, const u8 param1)
{
    sub_02021CC8(param0->unk_250[0], param1);
    sub_02021CC8(param0->unk_250[2], param1);
    sub_02021CC8(param0->unk_250[1], param1);
}

void ov77_021D607C (UnkStruct_ov77_021D5564 * param0)
{
    VecFx32 v0;

    v0 = *sub_02021D28(param0->unk_250[1]);
    v0.x -= 0x200;

    sub_02021C50(param0->unk_250[1], &v0);

    v0 = *sub_02021D28(param0->unk_250[2]);
    v0.x += 0x200;

    sub_02021C50(param0->unk_250[2], &v0);
}

BOOL ov77_021D60E0 (UnkStruct_ov77_021D5564 * param0, int param1)
{
    VecFx32 v0;

    if (param1 < ((47 * 30 - 15) + 15)) {
        return 0;
    }

    if (param1 == ((47 * 30 - 15) + 15)) {
        ov77_021D603C(param0, 3, 1);
    }

    if (param1 < (53 * 30 - 15)) {
        v0 = *sub_02021D28(param0->unk_250[3]);
        v0.x += (FX32_ONE * 18);

        if (v0.x >= (FX32_ONE * ((128 + 48)))) {
            v0.x = (FX32_ONE * ((128 + 48)));
            sub_02021C50(param0->unk_250[3], &v0);
            return 1;
        }

        sub_02021C50(param0->unk_250[3], &v0);
        return 0;
    } else {
        v0 = *sub_02021D28(param0->unk_250[3]);
        v0.x += (FX32_ONE * 18);

        if (v0.x >= (256 + 64) * FX32_ONE) {
            v0.x = (256 + 64) * FX32_ONE;
            sub_02021C50(param0->unk_250[3], &v0);
            ov77_021D603C(param0, 3, 0);
            return 1;
        }

        sub_02021C50(param0->unk_250[3], &v0);
        return 0;
    }
}

BOOL ov77_021D61B8 (UnkStruct_ov77_021D5564 * param0, int param1)
{
    VecFx32 v0;

    if (param1 < (((47 * 30 - 15) + 15) + 3 * 30)) {
        return 0;
    }

    if (param1 == (((47 * 30 - 15) + 15) + 3 * 30)) {
        ov77_021D603C(param0, 10, 1);
    }

    if (param1 < ((53 * 30 - 15))) {
        v0 = *sub_02021D28(param0->unk_250[10]);
        v0.x += (-(FX32_ONE * 18));

        if (v0.x <= (FX32_ONE * ((128 - 48)))) {
            v0.x = (FX32_ONE * ((128 - 48)));
            sub_02021C50(param0->unk_250[10], &v0);
            return 1;
        }

        sub_02021C50(param0->unk_250[10], &v0);
        return 0;
    } else {
        v0 = *sub_02021D28(param0->unk_250[10]);
        v0.x += (-(FX32_ONE * 18));

        if (v0.x <= -64 * FX32_ONE) {
            v0.x = -64 * FX32_ONE;
            sub_02021C50(param0->unk_250[10], &v0);
            ov77_021D603C(param0, 10, 0);
            return 1;
        }

        sub_02021C50(param0->unk_250[10], &v0);
        return 0;
    }
}

void ov77_021D6290 (UnkStruct_ov77_021D5564 * param0, fx32 param1)
{
    const VecFx32 * v0;
    VecFx32 v1;
    int v2, v3;

    if (Unk_021BF67C.unk_65 == 0) {
        v2 = 13;
        v3 = 15;
    } else {
        v2 = 15;
        v3 = 13;
    }

    v0 = sub_02021D28(param0->unk_250[v2]);
    v1 = *v0;
    v1.x += param1;

    if (v1.x >= (128 + 256) * FX32_ONE) {
        v1.x -= 256 * FX32_ONE;
    }

    sub_02021C50(param0->unk_250[v2], &v1);
    v1.x -= 256 * FX32_ONE;
    sub_02021C50(param0->unk_250[v2 + 1], &v1);

    v0 = sub_02021D28(param0->unk_250[v3]);
    v1 = *v0;
    v1.x -= param1;

    if (v1.x <= (128 - 256) * FX32_ONE) {
        v1.x += 256 * FX32_ONE;
    }

    sub_02021C50(param0->unk_250[v3], &v1);
    v1.x += 256 * FX32_ONE;
    sub_02021C50(param0->unk_250[v3 + 1], &v1);
}

void ov77_021D636C (UnkStruct_ov77_021D5564 * param0, int param1)
{
    const VecFx32 * v0;
    VecFx32 v1;

    if (param1 == 0) {
        if (Unk_021BF67C.unk_65 == 0) {
            sub_02021F24(param0->unk_250[13], 0);
            sub_02021F24(param0->unk_250[14], 0);
            sub_02021F24(param0->unk_250[15], 1);
            sub_02021F24(param0->unk_250[16], 1);
        } else {
            sub_02021F24(param0->unk_250[13], 1);
            sub_02021F24(param0->unk_250[14], 1);
            sub_02021F24(param0->unk_250[15], 0);
            sub_02021F24(param0->unk_250[16], 0);
        }
    } else {
        sub_02021F24(param0->unk_250[13], 2);
        sub_02021F24(param0->unk_250[14], 2);
        sub_02021F24(param0->unk_250[15], 2);
        sub_02021F24(param0->unk_250[16], 2);
    }

    v0 = sub_02021D28(param0->unk_250[13]);
    v1 = *v0;
    v1.x = 128 * FX32_ONE;

    sub_02021C50(param0->unk_250[13], &v1);

    v0 = sub_02021D28(param0->unk_250[15]);
    v1 = *v0;
    v1.x = 128 * FX32_ONE;

    sub_02021C50(param0->unk_250[15], &v1);
}

void ov77_021D6470 (UnkStruct_ov77_021D5564 * param0, int param1)
{
    u16 v0;
    const VecFx32 * v1;
    VecFx32 v2;
    s32 v3;

    v3 = param1 - (65 * 30 - 15 - 15 - 45 - 15);

    if (v3 < 0) {
        v3 = 0;
    } else {
        (void)0;
    }

    v0 = sub_02021D30(param0->unk_250[11]);
    sub_02021C94(param0->unk_250[11], v0 + 0x1c00 + v3);

    v0 = sub_02021D30(param0->unk_250[12]);
    sub_02021C94(param0->unk_250[12], v0 - 0x1c00 - v3);

    if (param1 >= (65 * 30 - 15 - 15 - 45 - 15)) {
        v1 = sub_02021D28(param0->unk_250[11]);
        v2 = *v1;
        v2.x += 0x1000;

        sub_02021C50(param0->unk_250[11], &v2);

        v1 = sub_02021D28(param0->unk_250[12]);
        v2 = *v1;
        v2.x -= 0x1000;

        sub_02021C50(param0->unk_250[12], &v2);
    }
}

void include_data_ov77_021D79B8 (void)
{
    dummy[0];
    Unk_ov77_021D79B8[0];
}

void ov77_021D6530 (UnkStruct_ov77_021D5564 * param0, const int param1)
{
    u8 v0;
    VecFx32 v1;
    const int v2[3] = {
        4, 5, 6,
    };
    const int v3[1] = {
        7,
    };
    const int v4[] = {
        8, 9,
    };

    if (param1 >= (1460 - 15)) {
        for (v0 = 0; v0 < 3; v0++) {
            v1 = *sub_02021D28(param0->unk_250[v2[v0]]);
            v1.x -= Unk_ov77_021D79AC[v0];
            v1.y -= (FX32_ONE * 4);
            sub_02021C50(param0->unk_250[v2[v0]], &v1);
        }
    }

    if (param1 >= (1490 - 15 + 15)) {
        for (v0 = 0; v0 < 1; v0++) {
            v1 = *sub_02021D28(param0->unk_250[v3[v0]]);
            v1.x -= Unk_ov77_021D79A0[v0];
            v1.y -= (FX32_ONE * 3);
            sub_02021C50(param0->unk_250[v3[v0]], &v1);
        }
    }

    if (param1 >= (1510 - 15 + 15)) {
        for (v0 = 0; v0 < 2; v0++) {
            v1 = *sub_02021D28(param0->unk_250[v4[v0]]);
            v1.x -= Unk_ov77_021D79A4[v0];
            v1.y -= (FX32_ONE * 3);
            sub_02021C50(param0->unk_250[v4[v0]], &v1);
        }
    }
}
