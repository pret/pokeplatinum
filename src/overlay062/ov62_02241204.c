#include "overlay062/ov62_02241204.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_0202F41C_decl.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay061/ov61_0222AE60.h"
#include "overlay061/ov61_0222B008.h"
#include "overlay061/ov61_0222BC4C.h"
#include "overlay061/struct_ov61_0222BED8.h"
#include "overlay061/struct_ov61_0222BED8_sub1.h"
#include "overlay062/const_ov62_022491F0.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_02246B00.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_022323B8.h"
#include "overlay062/struct_ov62_02233F74.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_0223E01C_sub1.h"
#include "overlay062/struct_ov62_0223E01C_sub2.h"
#include "overlay062/struct_ov62_02246B00.h"
#include "overlay062/struct_ov62_02246BF4.h"
#include "overlay062/struct_ov62_02248CDC.h"
#include "overlay062/struct_ov62_02249380.h"

#include "enums.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_02023FCC.h"
#include "unk_0202631C.h"
#include "unk_0202F1D4.h"
#include "unk_02030A80.h"
#include "unk_020393C8.h"
#include "unk_0208B284.h"
#include "unk_0208BA78.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov62_022312B0 unk_10[4];
    UnkStruct_ov62_022323B8 unk_80;
    UnkStruct_ov62_02233F74 unk_10C;
    int unk_1C8;
    int unk_1CC;
    UnkStruct_02030A80 * unk_1D0;
    UnkStruct_ov62_02246BF4 unk_1D4;
    UnkStruct_ov62_02246B00 * unk_4AC;
    u64 unk_4B0;
    BOOL unk_4B8;
    UnkStruct_ov61_0222BED8 * unk_4BC;
    u16 unk_4C0;
    u8 unk_4C2;
    u8 unk_4C3;
    u8 unk_4C4;
    u8 unk_4C5;
    u8 unk_4C6[2];
    UnkStruct_ov62_0223E01C_sub1 unk_4C8;
    UnkStruct_ov62_02249380 * unk_4DC;
    UnkStruct_ov62_02248CDC unk_4E0;
    UnkStruct_ov62_0223E01C_sub2 unk_50C;
    UnkStruct_02023FCC * unk_608[3];
    Window unk_614[12];
    Window unk_6D4[12];
    int unk_794;
    int unk_798;
    u8 unk_79C;
} UnkStruct_ov62_02241204;

static void ov62_02241204(UnkStruct_0208C06C * param0);
static void ov62_02241278(UnkStruct_0208C06C * param0);
static void ov62_0224141C(UnkStruct_0208C06C * param0, BOOL param1);
static void ov62_02241460(UnkStruct_0208C06C * param0);
static void ov62_022414C0(UnkStruct_0208C06C * param0);
static BOOL ov62_02241780(UnkStruct_0208C06C * param0);
static void ov62_022417C0(UnkStruct_0208C06C * param0, int param1);
static void ov62_022418DC(UnkStruct_0208C06C * param0, int param1);
static void ov62_02241954(UnkStruct_0208C06C * param0, int param1);
static void ov62_022419D4(UnkStruct_0208C06C * param0, int param1, int param2);
static void ov62_02241AA4(UnkStruct_0208C06C * param0, int param1);
static void ov62_02241BB8(UnkStruct_0208C06C * param0);
static void ov62_02241BF8(UnkStruct_0208C06C * param0);
static void ov62_02241C38(UnkStruct_0208C06C * param0);
static BOOL ov62_02241D24(UnkStruct_0208C06C * param0);
static BOOL ov62_02241EB4(UnkStruct_0208C06C * param0);
static BOOL ov62_02241ECC(UnkStruct_0208C06C * param0);
static BOOL ov62_02242024(UnkStruct_0208C06C * param0);
static BOOL ov62_022420B0(UnkStruct_0208C06C * param0);
static BOOL ov62_0224227C(UnkStruct_0208C06C * param0);
static void ov62_022422C0(UnkStruct_0208C06C * param0);
static void ov62_022423D8(UnkStruct_0208C06C * param0);
static BOOL ov62_02242400(UnkStruct_0208C06C * param0);
static BOOL ov62_02242534(UnkStruct_0208C06C * param0);
static BOOL ov62_02242748(UnkStruct_0208C06C * param0, int param1);
static void ov62_022427D0(UnkStruct_0208C06C * param0, int param1);
static void ov62_02242938(UnkStruct_0208C06C * param0);
static BOOL ov62_02242970(UnkStruct_0208C06C * param0);
static BOOL ov62_02242B34(UnkStruct_0208C06C * param0);
static BOOL ov62_02242BB8(UnkStruct_0208C06C * param0);
static BOOL ov62_02242CFC(UnkStruct_0208C06C * param0);
static BOOL ov62_02242D90(UnkStruct_0208C06C * param0);
static BOOL ov62_02242F74(UnkStruct_0208C06C * param0);
static BOOL ov62_0224312C(UnkStruct_0208C06C * param0);
static BOOL ov62_0224324C(UnkStruct_0208C06C * param0);
static BOOL ov62_022433C0(UnkStruct_0208C06C * param0);
static BOOL ov62_022433D8(UnkStruct_0208C06C * param0);
static BOOL ov62_022433F0(UnkStruct_0208C06C * param0);
static BOOL ov62_02243410(UnkStruct_0208C06C * param0);
static BOOL ov62_02243514(UnkStruct_0208C06C * param0);
static BOOL ov62_02243830(UnkStruct_0208C06C * param0);
static BOOL ov62_02243848(UnkStruct_0208C06C * param0);
static BOOL ov62_02243888(UnkStruct_0208C06C * param0);
static BOOL ov62_022438C8(UnkStruct_0208C06C * param0);
static BOOL ov62_022438E0(UnkStruct_0208C06C * param0);
static BOOL ov62_022438F8(UnkStruct_0208C06C * param0);
static BOOL ov62_02243910(UnkStruct_0208C06C * param0);
static BOOL ov62_0224391C(UnkStruct_0208C06C * param0);
static BOOL ov62_02243B1C(UnkStruct_0208C06C * param0);
static BOOL ov62_02243DC8(UnkStruct_0208C06C * param0);
static BOOL ov62_02243E20(UnkStruct_0208C06C * param0);
static BOOL ov62_02243FA8(UnkStruct_0208C06C * param0);
static BOOL ov62_022440B0(UnkStruct_0208C06C * param0);
static BOOL ov62_022440D4(UnkStruct_0208C06C * param0);
static BOOL ov62_02244180(UnkStruct_0208C06C * param0);
static BOOL ov62_02244258(UnkStruct_0208C06C * param0);
static void ov62_022443EC(UnkStruct_0208C06C * param0);
static void ov62_0224443C(UnkStruct_0208C06C * param0);
static void ov62_022444A0(UnkStruct_0208C06C * param0);
static BOOL ov62_022444BC(UnkStruct_0208C06C * param0);
static BOOL ov62_022446D0(UnkStruct_0208C06C * param0);
static BOOL ov62_022446E8(UnkStruct_0208C06C * param0);
static BOOL ov62_02244700(UnkStruct_0208C06C * param0);
static BOOL ov62_02244720(UnkStruct_0208C06C * param0);
static void ov62_022448E0(UnkStruct_ov62_022312B0 * param0, UnkStruct_0208C06C * param1, int param2);
static void ov62_022449B8(UnkStruct_0208C06C * param0, int param1, BOOL param2);
static void ov62_02244AB4(UnkStruct_0208C06C * param0, int param1, int param2);
static void ov62_02244BE4(UnkStruct_0208C06C * param0);
static void ov62_02244CA4(UnkStruct_0208C06C * param0);
static BOOL ov62_02244CD4(UnkStruct_0208C06C * param0);
static BOOL ov62_02244F7C(UnkStruct_0208C06C * param0);
static BOOL ov62_02244F94(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FC4(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FDC(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FF4(UnkStruct_0208C06C * param0);
static BOOL ov62_0224500C(UnkStruct_0208C06C * param0);
static BOOL ov62_02245018(UnkStruct_0208C06C * param0);
static BOOL ov62_02245334(UnkStruct_0208C06C * param0);
static BOOL ov62_0224536C(UnkStruct_0208C06C * param0);
static BOOL ov62_022454D8(UnkStruct_0208C06C * param0);
static void ov62_022455C4(UnkStruct_0208C06C * param0);
static void ov62_022455E4(UnkStruct_0208C06C * param0, int param1);
static void ov62_02245640(UnkStruct_0208C06C * param0);
static void ov62_0224568C(UnkStruct_0208C06C * param0);
static void ov62_0224576C(UnkStruct_0208C06C * param0);
static void ov62_022457A0(u32 param0, u32 param1, void * param2);
static void ov62_02245800(u32 param0, u32 param1, void * param2);
static void ov62_02245868(u32 param0, u32 param1, void * param2);
static void ov62_022458A0(u32 param0, u32 param1, void * param2);
static void ov62_02245968(u32 param0, u32 param1, void * param2);
static void ov62_02245994(u32 param0, u32 param1, void * param2);
static void ov62_02245A28(u32 param0, u32 param1, void * param2);
static void ov62_02245A90(u32 param0, u32 param1, void * param2);
static void ov62_02245AC8(UnkStruct_0208C06C * param0, int param1);
static void ov62_02245B24(UnkStruct_0208C06C * param0);
static void ov62_02245BD8(UnkStruct_0208C06C * param0);
static void ov62_02245C08(UnkStruct_0208C06C * param0, int param1);
static void ov62_02245C64(UnkStruct_0208C06C * param0);
static void ov62_02245D50(UnkStruct_0208C06C * param0);
static BOOL ov62_02245D80(UnkStruct_0208C06C * param0);
static BOOL ov62_02245ECC(UnkStruct_0208C06C * param0);
static BOOL ov62_02245FE4(UnkStruct_0208C06C * param0);
static BOOL ov62_02246090(UnkStruct_0208C06C * param0);
static BOOL ov62_0224613C(UnkStruct_0208C06C * param0);
static BOOL ov62_02246640(UnkStruct_0208C06C * param0);
static BOOL ov62_02246428(UnkStruct_0208C06C * param0);
static BOOL ov62_02246850(UnkStruct_0208C06C * param0);
void ov62_02246944(void * param0, const UnkStruct_ov62_0223CAA4 * param1);
void ov62_02246968(void * param0, const UnkStruct_ov62_0223CAA4 * param1);
void ov62_0224699C(void * param0, const UnkStruct_ov62_0223CAA4 * param1);
static BOOL ov62_02244CD4(UnkStruct_0208C06C * param0);
static BOOL ov62_02244F7C(UnkStruct_0208C06C * param0);
static BOOL ov62_02244F94(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FAC(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FC4(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FDC(UnkStruct_0208C06C * param0);
static BOOL ov62_02244FF4(UnkStruct_0208C06C * param0);
static BOOL ov62_0224500C(UnkStruct_0208C06C * param0);
static BOOL ov62_02245018(UnkStruct_0208C06C * param0);
static BOOL ov62_02245334(UnkStruct_0208C06C * param0);
static BOOL ov62_0224536C(UnkStruct_0208C06C * param0);
static BOOL ov62_022454D8(UnkStruct_0208C06C * param0);
static void ov62_022469A0(UnkStruct_ov62_02241204 * param0, UnkStruct_0208C06C * param1);

static u16 Unk_ov62_02249944[] = {
    0x0,
    0x57,
    0x88,
    0xBF,
    0xEB,
    0x12F,
    0x168,
    0x1C9,
    0x1E7,
    0x1ED
};

static const TouchScreenRect Unk_ov62_0224919C[] = {
    {0x10, 0x30, 0x40, 0xC8},
    {0x40, 0x70, 0x58, 0xA8},
    {0x98, 0xB8, 0x80, 0xE0},
    {0x98, 0xB8, 0x20, 0x80}
};

static const TouchScreenRect Unk_ov62_0224915C[] = {
    {0x19, 0x39, 0x32, 0xD2},
    {0x3D, 0x5D, 0x32, 0xD2},
    {0x61, 0x81, 0x32, 0xD2},
    {0x85, 0xA5, 0x32, 0xD2}
};

static const TouchScreenRect Unk_ov62_0224913C[] = {
    {0x28, 0x48, 0x20, 0x78},
    {0x28, 0x48, 0x90, 0xE8}
};

static const TouchScreenRect Unk_ov62_02249138[] = {
    {0x98, 0xB8, 0x50, 0xB0}
};

static const TouchScreenRect Unk_ov62_02249134[] = {
    {0x20, 0x60, 0x50, 0xB0}
};

static const TouchScreenRect Unk_ov62_022491AC[] = {
    {0x10, 0x30, 0x28, 0xD8},
    {0x38, 0x58, 0x28, 0xD8},
    {0x60, 0x80, 0x28, 0xD8},
    {0x98, 0xB8, 0x20, 0x80},
    {0x98, 0xB8, 0x80, 0xE0}
};

const TouchScreenRect Unk_ov62_022491F0[9] = {
    {0x18, 0x30, 0x28, 0x48},
    {0x18, 0x30, 0x70, 0x90},
    {0x18, 0x30, 0xB8, 0xD8},
    {0x38, 0x50, 0x28, 0x48},
    {0x38, 0x50, 0x70, 0x90},
    {0x38, 0x50, 0xB8, 0xD8},
    {0x58, 0x70, 0x28, 0x48},
    {0x58, 0x70, 0x70, 0x90},
    {0x58, 0x70, 0xB8, 0xD8}
};

static void ov62_02241204 (UnkStruct_0208C06C * param0)
{
    const s16 v0[][2] = {
        {0x68, 0x48},
        {0x80, 0x48},
        {0x98, 0x48},
        {0xB0, 0x48},
        {0xC8, 0x48},
        {0xE0, 0x48},
        {0x68, 0x60},
        {0x80, 0x60},
        {0x98, 0x60},
        {0xB0, 0x60},
        {0xC8, 0x60},
        {0xE0, 0x60},
        {0x68, 0x78},
        {0x80, 0x78},
        {0x98, 0x78},
        {0xB0, 0x78},
        {0xC8, 0x78},
        {0xE0, 0x78},
        {0x68, 0x90},
        {0x80, 0x90},
        {0x98, 0x90},
        {0xB0, 0x90},
        {0xC8, 0x90},
        {0xE0, 0x90},
        {0x68, 0xA8},
        {0x80, 0xA8},
        {0x98, 0xA8},
        {0xB0, 0xA8},
        {0xC8, 0xA8},
        {0xE0, 0xA8},
    };
    int v1, v2;
    UnkStruct_ov62_02241204 * v3 = param0->unk_860;

    for (v1 = 0; v1 < 5; v1++) {
        for (v2 = 0; v2 < 6; v2++) {
            if (v3->unk_50C.unk_0C[v1][v2].unk_04) {
                SpriteActor_SetSpritePositionXY(v3->unk_50C.unk_0C[v1][v2].unk_04, v0[(v1 * 6) + v2][0], v0[(v1 * 6) + v2][1]);
            }
        }
    }
}

static void ov62_02241278 (UnkStruct_0208C06C * param0)
{
    int v0, v1;
    int v2 = 0;
    UnkStruct_ov62_02241204 * v3 = param0->unk_860;
    int v4[][6] = {
        {0, 1, 2, 3, 4, 5},
        {0, 1, 2, 3, 4, 5},
    };
    int v5[6] = {0, 0, 0, 0, 0, 0};
    int v6[6] = {0, 0, 0, 0, 0, 0};
    int v7 = 0;
    int v8;
    int v9;
    int v10;
    int v11 = param0->unk_14.unk_48C.unk_08;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_8B4.unk_1D58[v11 + v0] == NULL) {
            continue;
        }

        if (ov62_02233F94(( UnkStruct_0202F41C * )&param0->unk_8B4.unk_1D58[v11 + v0]->unk_80)) {
            v7 = 1;
        } else {
            v7 = 0;
        }

        {
            int v12, v13;
            int v14 = 0;

            for (v12 = 0; v12 < 6; v12++) {
                v5[v12] = 0;
                v6[v12] = 0;
            }

            for (v12 = 0; v12 < 3; v12++) {
                v8 = param0->unk_8B4.unk_1D58[v11 + v0]->unk_80.unk_00[v4[v7][v12]];
                if (v8 == 0) {
                    continue;
                }

                v5[v14] = v8;
                v6[v14] = param0->unk_8B4.unk_1D58[v11 + v0]->unk_80.unk_18[v4[v7][v12]];
                v14++;
            }

            if (ov62_02233F94(( UnkStruct_0202F41C * )&param0->unk_8B4.unk_1D58[v11 + v0]->unk_80)) {
                v14 = 3;
            }

            for (v12 = 3; v12 < 6; v12++) {
                v8 = param0->unk_8B4.unk_1D58[v11 + v0]->unk_80.unk_00[v4[v7][v12]];

                if (v8 == 0) {
                    continue;
                }

                v5[v14] = v8;
                v6[v14] = param0->unk_8B4.unk_1D58[v11 + v0]->unk_80.unk_18[v4[v7][v12]];
                v14++;
            }
        }

        for (v1 = 0; v1 < 6; v1++) {
            v8 = v5[v1];
            v9 = v6[v1];
            v10 = 0;
            v3->unk_50C.unk_0C[v0][v1].unk_00 = v3->unk_50C.unk_08;
            v3->unk_50C.unk_0C[v0][v1].unk_04 = ov62_02233A7C(param0, v3->unk_50C.unk_00, v3->unk_50C.unk_0C[v0][v1].unk_00, v8, v9, v10);

            if (v3->unk_50C.unk_0C[v0][v1].unk_04) {
                sub_0200D474(v3->unk_50C.unk_0C[v0][v1].unk_04, 6 - v1);
            }

            v3->unk_50C.unk_08++;
        }
    }

    ov62_02241204(param0);
}

static void ov62_0224141C (UnkStruct_0208C06C * param0, BOOL param1)
{
    int v0, v1;
    UnkStruct_ov62_02241204 * v2 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (v2->unk_50C.unk_0C[v0][v1].unk_04) {
                SpriteActor_EnableObject(v2->unk_50C.unk_0C[v0][v1].unk_04, param1);
            }
        }
    }
}

static void ov62_02241460 (UnkStruct_0208C06C * param0)
{
    int v0, v1;
    UnkStruct_ov62_02241204 * v2 = param0->unk_860;

    ov62_02234540(param0, 1);

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (v2->unk_50C.unk_0C[v0][v1].unk_04) {
                ov62_02233B24(param0, v2->unk_50C.unk_0C[v0][v1].unk_00, v2->unk_50C.unk_0C[v0][v1].unk_04);
                v2->unk_50C.unk_0C[v0][v1].unk_04 = NULL;
            }
        }
    }

    ov62_02234540(param0, 0);
}

static void ov62_022414C0 (UnkStruct_0208C06C * param0)
{
    int v0, v1;
    int v2 = 0;
    int v3;
    int v4[6] = {0, 0, 0, 0, 0, 0};
    UnkStruct_ov62_02241204 * v5 = param0->unk_860;

    if (v5->unk_50C.unk_04 == param0->unk_14.unk_48C.unk_08) {
        return;
    }

    ov62_02234540(param0, 1);

    if (v5->unk_50C.unk_04 > param0->unk_14.unk_48C.unk_08) {
        v2 = 4;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v5->unk_50C.unk_0C[v2][v0].unk_04) {
            ov62_02233B40(param0, v5->unk_50C.unk_0C[v2][v0].unk_00, v5->unk_50C.unk_0C[v2][v0].unk_04);
            v4[v0] = v5->unk_50C.unk_0C[v2][v0].unk_00;
            v5->unk_50C.unk_0C[v2][v0].unk_04 = NULL;
        }
    }

    if (v2) {
        for (v0 = 4; v0 >= 1; v0--) {
            for (v1 = 0; v1 < 6; v1++) {
                v5->unk_50C.unk_0C[v0][v1].unk_04 = v5->unk_50C.unk_0C[v0 - 1][v1].unk_04;
                v5->unk_50C.unk_0C[v0][v1].unk_00 = v5->unk_50C.unk_0C[v0 - 1][v1].unk_00;
            }
        }

        v2 = 0;
    } else {
        for (v0 = 1; v0 < 5; v0++) {
            for (v1 = 0; v1 < 6; v1++) {
                v5->unk_50C.unk_0C[v0 - 1][v1].unk_04 = v5->unk_50C.unk_0C[v0][v1].unk_04;
                v5->unk_50C.unk_0C[v0 - 1][v1].unk_00 = v5->unk_50C.unk_0C[v0][v1].unk_00;
            }
        }

        v2 = 4;
    }

    {
        int v6;
        int v7;
        int v8;
        int v9 = param0->unk_14.unk_48C.unk_08 + v2;
        int v10[][6] = {
            {0, 1, 2, 3, 4, 5},
            {0, 1, 2, 3, 4, 5},
        };
        int v11[6] = {0, 0, 0, 0, 0, 0};
        int v12[6] = {0, 0, 0, 0, 0, 0};
        int v13 = 0;

        if (ov62_02233F94(( UnkStruct_0202F41C * )&param0->unk_8B4.unk_1D58[v9]->unk_80)) {
            v13 = 1;
        }

        {
            int v14, v15;
            int v16 = 0;

            for (v14 = 0; v14 < 6; v14++) {
                v11[v14] = 0;
                v12[v14] = 0;
            }

            for (v14 = 0; v14 < 3; v14++) {
                v6 = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_00[v10[v13][v14]];

                if (v6 == 0) {
                    continue;
                }

                v11[v16] = v6;
                v12[v16] = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_18[v10[v13][v14]];
                v16++;
            }

            if (ov62_02233F94(( UnkStruct_0202F41C * )&param0->unk_8B4.unk_1D58[v9]->unk_80)) {
                v16 = 3;
            }

            for (v14 = 3; v14 < 6; v14++) {
                v6 = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_00[v10[v13][v14]];

                if (v6 == 0) {
                    continue;
                }

                v11[v16] = v6;
                v12[v16] = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_18[v10[v13][v14]];
                v16++;
            }
        }

        for (v1 = 0; v1 < 6; v1++) {
            v6 = v11[v1];
            v7 = v12[v1];
            v8 = 0;
            v5->unk_50C.unk_0C[v2][v1].unk_00 = v5->unk_50C.unk_08;
            v5->unk_50C.unk_0C[v2][v1].unk_04 = ov62_02233A7C(param0, v5->unk_50C.unk_00, v5->unk_50C.unk_0C[v2][v1].unk_00, v6, v7, v8);

            if (v5->unk_50C.unk_0C[v2][v1].unk_04) {
                sub_0200D474(v5->unk_50C.unk_0C[v2][v1].unk_04, 6 - v1);
            }

            v5->unk_50C.unk_08++;
        }
    }

    ov62_02241204(param0);
    v5->unk_50C.unk_04 = param0->unk_14.unk_48C.unk_08;

    for (v0 = 0; v0 < 6; v0++) {
        if (v4[v0] == 0) {
            continue;
        }

        SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 100000 + v4[v0]);
    }

    ov62_02234540(param0, 0);
}

static BOOL ov62_02241780 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (v0->unk_4C0 != 0xffff) {
        return 1;
    }

    if (v0->unk_4C2 != 0xff) {
        return 1;
    }

    if ((v0->unk_4C3 != 0xff) || (v0->unk_4C4 != 0xff)) {
        return 1;
    }

    return 0;
}

static void ov62_022417C0 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    int v1;
    int v2;
    const int (*v3)[4];
    const int * v4;
    const int v5[][4] = {
        {4, 3, 15, 2},
        {4, 9, 15, 2},
        {4, 13, 15, 2},
        {5, 5, 20, 4},
        {5, 11, 20, 2},
        {5, 15, 20, 2},
    };
    const int v6[] = {48, 49, 50, 125, 125, 125};

    switch (param1) {
    case 0:
        v0->unk_794 = 6;
        v2 = 0;
        v3 = v5;
        v4 = v6;
        break;
    case 1:
        break;
    default:
        break;
    }

    {
        int v7;
        int v8 = 0;
        int v9 = 256;
        Strbuf* v10;
        Window * v11;

        for (v7 = 0; v7 < v0->unk_794; v7++) {
            v11 = &v0->unk_614[v7];

            Window_Init(v11);
            BGL_AddWindow(param0->unk_14.unk_10, v11, 2, v3[v7][0], v3[v7][1], v3[v7][2], v3[v7][3], 14, v9);
            BGL_FillWindow(v11, 0x0);

            v10 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v4[v7]);
            v9 += v3[v7][2] * v3[v7][3];

            if (v2) {
                v8 = ov62_0223429C(v11, v10);
            }

            Text_AddPrinterWithParamsAndColor(v11, FONT_SYSTEM, v10, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v11);
            Strbuf_Free(v10);
        }
    }
}

static void ov62_022418DC (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3;

    v1 = &v0->unk_614[3];
    BGL_FillWindow(v1, 0x0);

    if (param1 == 0xff) {
        v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 125);
    } else {
        if ((param1 == UnkEnum_0202F510_33) || (param1 == UnkEnum_0202F510_34) || (param1 == UnkEnum_0202F510_35) || (param1 == UnkEnum_0202F510_36)) {
            v3 = 165 + (param1 - UnkEnum_0202F510_33);
            v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v3);
        } else {
            v3 = 132 + param1;
            v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v3);
        }
    }

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
}

static void ov62_02241954 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    u16 v3[255];

    v1 = &v0->unk_614[4];
    BGL_FillWindow(v1, 0x0);

    if (param1 == 0xffff) {
        v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 125);
    } else {
        v2 = Strbuf_Init(255, 102);
        MessageLoader_GetSpeciesName(param1, 102, v3);
        Strbuf_CopyChars(v2, v3);
    }

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
}

static void ov62_022419D4 (UnkStruct_0208C06C * param0, int param1, int param2)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    Strbuf* v3;
    StringTemplate * v4;

    v1 = &v0->unk_614[5];
    BGL_FillWindow(v1, 0x0);

    if ((param1 == 0xff) && (param2 == 0xff)) {
        v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 125);
    } else {
        v4 = ov62_02231690(102);

        if (param2 != 0) {
            v2 = Strbuf_Init(255, 102);
            v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 23);
            StringTemplate_SetCityName(v4, 0, param1, param2);
            StringTemplate_Format(v4, v2, v3);
        } else {
            v2 = Strbuf_Init(255, 102);
            v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 22);
            StringTemplate_SetCountryName(v4, 0, param1);
            StringTemplate_Format(v4, v2, v3);
        }

        Strbuf_Free(v3);
        StringTemplate_Free(v4);
    }

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v2);
}

static void ov62_02241AA4 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    int v1;
    int v2;
    const int (*v3)[4];
    const int * v4;
    const int v5[][4] = {
        {7, 3, 20, 2},
        {7, 8, 20, 2},
        {7, 13, 20, 2},
    };
    const int v6[] = {48, 49, 50};

    switch (param1) {
    case 0:
        v0->unk_798 = 3;
        v2 = 0;
        v3 = v5;
        v4 = v6;
        break;
    case 1:
        break;
    default:
        break;
    }

    {
        int v7;
        int v8 = 0;
        int v9 = 256;
        Strbuf* v10;
        Window * v11;

        for (v7 = 0; v7 < v0->unk_798; v7++) {
            v11 = &v0->unk_6D4[v7];

            Window_Init(v11);
            BGL_AddWindow(param0->unk_14.unk_10, v11, 6, v3[v7][0], v3[v7][1], v3[v7][2], v3[v7][3], 14, v9);
            BGL_FillWindow(v11, 0x0);

            v10 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v4[v7]);
            v9 += v3[v7][2] * v3[v7][3];

            if (v2) {
                v8 = ov62_0223429C(v11, v10);
            }

            Text_AddPrinterWithParamsAndColor(v11, FONT_SYSTEM, v10, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v11);
            Strbuf_Free(v10);
        }
    }
}

static void ov62_02241BB8 (UnkStruct_0208C06C * param0)
{
    int v0;
    UnkStruct_ov62_02241204 * v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_794; v0++) {
        sub_0201ACF4(&v1->unk_614[v0]);
        BGL_DeleteWindow(&v1->unk_614[v0]);
    }

    v1->unk_794 = 0;
}

static void ov62_02241BF8 (UnkStruct_0208C06C * param0)
{
    int v0;
    UnkStruct_ov62_02241204 * v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_798; v0++) {
        sub_0201ACF4(&v1->unk_6D4[v0]);
        BGL_DeleteWindow(&v1->unk_6D4[v0]);
    }

    v1->unk_798 = 0;
}

static void ov62_02241C38 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    int v1 = 0;
    int v2 = 32;
    Strbuf* v3;
    Window * v4;

    v4 = &v0->unk_614[0];
    Window_Init(v4);
    BGL_AddWindow(param0->unk_14.unk_10, v4, 2, 3, 3, 20, 4, 14, v2);
    BGL_FillWindow(v4, 0x0);

    v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 126);
    Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    sub_0201A9A4(v4);
    Strbuf_Free(v3);

    v2 = 256;
    v4 = &v0->unk_6D4[0];
    Window_Init(v4);
    BGL_AddWindow(param0->unk_14.unk_10, v4, 6, 11, 6, 10, 4, 14, v2);
    BGL_FillWindow(v4, 0x0);
    v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 95);

    {
        u32 v5 = (80 - Font_CalcMaxLineWidth(FONT_SYSTEM, v3, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v3, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    }

    sub_0201A9A4(v4);
    Strbuf_Free(v3);

    v0->unk_798 = 1;
    v0->unk_794 = 1;
}

static BOOL ov62_02241D24 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234314();
        ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_022343B8(param0, 56, 3);
        ov62_022343B8(param0, 59, 7);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);

        ov62_02245C64(param0);
        ov62_02245C08(param0, 0);

        v0->unk_50C.unk_08 = 500;
        v0->unk_608[0] = sub_02023FCC(Unk_ov62_022491AC, NELEMS(Unk_ov62_022491AC), ov62_022458A0, param0, 102);
        v0->unk_608[1] = sub_02023FCC(Unk_ov62_022491F0, NELEMS(Unk_ov62_022491F0), ov62_02245968, param0, 102);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_02231AAC(param0, 124);
            ov62_022417C0(param0, 0);
            ov62_02241AA4(param0, 0);

            v0->unk_4C0 = 0xffff;
            v0->unk_4C2 = 0xff;
            v0->unk_4C3 = 0xff;
            v0->unk_4C4 = 0xff;

            ov62_02241954(param0, v0->unk_4C0);
            ov62_022418DC(param0, v0->unk_4C2);
            ov62_022419D4(param0, v0->unk_4C3, v0->unk_4C4);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_02241EB4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[0]);
    return 0;
}

static BOOL ov62_02241ECC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02241BB8(param0);
        ov62_02241BF8(param0);
        ov62_02231B8C(param0);

        sub_02024034(v0->unk_608[0]);
        sub_02024034(v0->unk_608[1]);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02234540(param0, 1);
        ov62_02245D50(param0);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02242024 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02241BF8(param0);
        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ;
        switch (v0->unk_4C5) {
        case 0:
            ov62_0222FB60(param0, 6);
            break;
        case 1:
            ov62_0222FB60(param0, 7);
            break;
        case 2:
            ov62_0222FB60(param0, 10);
            break;
        }

        break;
    }

    return 0;
}

static const UnkStruct_ov62_02249380 Unk_ov62_02249380[] = {
    {0xA9, UnkEnum_0202F510_33, 0x0},
    {0xAA, UnkEnum_0202F510_34, 0x0},
    {0xAB, UnkEnum_0202F510_35, 0x0},
    {0xAC, UnkEnum_0202F510_36, 0x0},
    {0xAD, UnkEnum_0202F510_14, 0x0}
};

static const UnkStruct_ov62_02249380 Unk_ov62_022494A8[] = {
    {0xA9, UnkEnum_0202F510_33, 0x0},
    {0xAA, UnkEnum_0202F510_34, 0x0},
    {0xAB, UnkEnum_0202F510_35, 0x0},
    {0xAC, UnkEnum_0202F510_36, 0x0},
    {0xAD, UnkEnum_0202F510_14, 0x0},
    {0xAE, UnkEnum_0202F510_15, 0x0},
    {0xAF, UnkEnum_0202F510_16, 0x0},
    {0xB0, UnkEnum_0202F510_17, 0x0},
    {0xB1, UnkEnum_0202F510_18, 0x0},
    {0xB2, UnkEnum_0202F510_19, 0x0},
    {0xB3, UnkEnum_0202F510_20, 0x0},
    {0xB4, UnkEnum_0202F510_21, 0x0},
    {0xB5, UnkEnum_0202F510_22, 0x0},
    {0xB6, UnkEnum_0202F510_23, 0x0},
    {0xB7, UnkEnum_0202F510_24, 0x0},
    {0xB8, UnkEnum_0202F510_25, 0x0},
    {0xB9, UnkEnum_0202F510_26, 0x0},
    {0xBA, UnkEnum_0202F510_27, 0x0},
    {0xBB, UnkEnum_0202F510_28, 0x0},
    {0xBC, UnkEnum_0202F510_29, 0x0},
    {0xBD, UnkEnum_0202F510_30, 0x0},
    {0xBE, UnkEnum_0202F510_31, 0x0},
    {0xBF, UnkEnum_0202F510_32, 0x0}
};

static const TouchScreenRect Unk_ov62_02249150[] = {
    {0x18, 0x38, 0x30, 0xD0},
    {0x38, 0x58, 0x30, 0xD0},
    {0x58, 0x78, 0x30, 0xD0}
};

static const UnkStruct_ov62_02248CDC Unk_ov62_02249240 = {
    Unk_ov62_02249380,
    NELEMS(Unk_ov62_02249380),
    0x2,
    0x7,
    0x3,
    0x12,
    0xC,
    0x20,
    0x6,
    0x3,
    Unk_ov62_02249150
};

static const UnkStruct_ov62_02248CDC Unk_ov62_0224926C = {
    Unk_ov62_022494A8,
    NELEMS(Unk_ov62_022494A8),
    0x2,
    0x7,
    0x3,
    0x12,
    0xC,
    0x20,
    0x6,
    0x3,
    Unk_ov62_02249150
};

static BOOL ov62_022420B0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231B3C(param0, 113);
        v0->unk_4C2 = 0xff;
        ov62_022418DC(param0, v0->unk_4C2);
        ov62_02245C08(param0, 1);
        ov62_022343B8(param0, 61, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02234540(param0, 1);
            ov62_022335B0(&param0->unk_14.unk_46C, param0);
            ov62_02233310(&param0->unk_14.unk_48C);

            if (sub_0208BE68(param0) == 1) {
                ov62_022324A0(&param0->unk_14.unk_48C, param0, &Unk_ov62_0224926C);
            } else {
                ov62_022324A0(&param0->unk_14.unk_48C, param0, &Unk_ov62_02249240);
            }

            ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
            ov62_0223331C(&param0->unk_14.unk_48C, param0, 2);
            ov62_02234540(param0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022332AC(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);

        {
            int v1 = ov62_02232F68(&param0->unk_14.unk_48C, param0);

            if (v1) {
                v0->unk_4C2 = v1;
                ov62_022418DC(param0, v1);
                param0->unk_08++;
            }
        }

        if (TouchScreen_LocationPressed(&Unk_ov62_02249138[0])) {
            ov62_02234520(param0);
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);
        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        ov62_022335F4(&param0->unk_14.unk_46C);
        ov62_02233310(&param0->unk_14.unk_48C);
        param0->unk_08++;
    case 4:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            ov62_02245C08(param0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 11);
        break;
    }

    return 0;
}

static const TouchScreenRect Unk_ov62_022491C0[] = {
    {0x18, 0x28, 0x38, 0xC0},
    {0x28, 0x38, 0x38, 0xC0},
    {0x38, 0x48, 0x38, 0xC0},
    {0x48, 0x58, 0x38, 0xC0},
    {0x58, 0x68, 0x38, 0xC0},
    {0x68, 0x78, 0x38, 0xC0}
};

static const UnkStruct_ov62_02248CDC Unk_ov62_022492C4 = {
    NULL,
    0x0,
    0x1,
    0x9,
    0x3,
    0xE,
    0xC,
    0x20,
    0x6,
    0x6,
    Unk_ov62_022491C0
};

static BOOL ov62_0224227C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231B3C(param0, 114);
        v0->unk_4C0 = 0xffff;
        ov62_02241954(param0, v0->unk_4C0);
        ov62_02245C08(param0, 1);
        param0->unk_08++;
    default:
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

// clang-format off
asm static void ov62_022422C0 (UnkStruct_0208C06C * param0)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x34
    str r0, [sp, #0x14]
    mov r0, #1
    str r0, [sp, #0x28]
    mov r1, #0x86
    ldr r0, [sp, #0x14]
    lsl r1, r1, #4
    ldr r1, [r0, r1]
    ldr r0, = 0x6D4
    ldr r5, = Unk_ov62_022491F0
    mov r7, #0
    add r4, r1, r0
 _022422DA:
    ldrb r0, [r5, #2]
    lsl r0, r0, #0x15
    lsr r0, r0, #0x18
    str r0, [sp, #0x24]
    ldrb r0, [r5]
    lsl r0, r0, #0x15
    lsr r0, r0, #0x18
    str r0, [sp, #0x20]
    ldrb r0, [r5, #3]
    lsr r1, r0, #3
    ldr r0, [sp, #0x24]
    sub r0, r1, r0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #0x1c]
    ldrb r0, [r5, #1]
    lsr r1, r0, #3
    ldr r0, [sp, #0x20]
    sub r0, r1, r0
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    add r0, r4, #0
    bl Window_Init
    ldr r0, [sp, #0x20]
    add r1, r4, #0
    str r0, [sp]
    ldr r0, [sp, #0x1c]
    mov r2, #6
    str r0, [sp, #4]
    str r6, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x28]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0x10]
    ldr r0, [sp, #0x14]
    ldr r3, [sp, #0x24]
    ldr r0, [r0, #0x24]
    bl BGL_AddWindow
    add r0, r4, #0
    mov r1, #0
    bl BGL_FillWindow
    ldr r0, [sp, #0x14]
    add r1, r7, #0
    ldr r0, [r0, #0x48]
    add r1, #0x44
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x2c]
    ldr r1, [sp, #0x2c]
    add r0, r4, #0
    bl ov62_0223429C
    lsl r1, r6, #3
    sub r1, #0x10
    str r0, [sp, #0x30]
    lsr r0, r1, #0x1f
    add r0, r1, r0
    asr r0, r0, #1
    str r0, [sp, #0x18]
    ldr r0, [sp, #0x14]
    add r1, r7, #0
    bl ov62_02242748
    cmp r0, #1
    bne _02242384
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x2c]
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    ldr r3, [sp, #0x30]
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    add r0, r4, #0
    mov r1, #0
    bl Text_AddPrinterWithParamsAndColor
    b _022423A0
 _02242384:
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x2c]
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xC0B00
    ldr r3, [sp, #0x30]
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    add r0, r4, #0
    mov r1, #0
    bl Text_AddPrinterWithParamsAndColor
 _022423A0:
    add r0, r4, #0
    bl sub_0201A9A4
    ldr r0, [sp, #0x2c]
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    add r7, r7, #1
    add r1, r0, #0
    ldr r0, [sp, #0x28]
    mul r1, r6
    add r0, r0, r1
    str r0, [sp, #0x28]
    add r4, #0x10
    add r5, r5, #4
    cmp r7, #9
    blo _022422DA
    add sp, #0x34
    pop {r4, r5, r6, r7, pc}
    nop
}
// clang-format on

static void ov62_022423D8 (UnkStruct_0208C06C * param0)
{
    u32 v0;
    Window * v1;
    UnkStruct_ov62_02241204 * v2 = param0->unk_860;

    for (v0 = 0; v0 < 9; v0++) {
        v1 = &v2->unk_6D4[v0];
        sub_0201ACF4(v1);
        BGL_DeleteWindow(v1);
    }
}

static BOOL ov62_02242400 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 60, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_022422C0(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        sub_0202404C(v0->unk_608[1]);

        if (TouchScreen_LocationPressed(&Unk_ov62_02249138[0])
            || (v0->unk_4C8.unk_10 == 1)) {
            ov62_02234520(param0);
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_022423D8(param0);
        param0->unk_08++;
    case 4:
        if (v0->unk_4C8.unk_10 == 1) {
            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
                param0->unk_08++;
            }
        } else {
            ov62_02231664(&v0->unk_08, 1);

            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
                ov62_02245C08(param0, 0);
                param0->unk_08++;
            }

            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;

    default:
        if (v0->unk_4C8.unk_10 == 1) {
            ov62_0222FB60(param0, 9);
        } else {
            ov62_0222FB60(param0, 11);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02242534 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231B3C(param0, 114);
        ov62_02245C08(param0, 1);
        ov62_022343B8(param0, 58, 7);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02234540(param0, 1);
            ov62_022335B0(&param0->unk_14.unk_46C, param0);

            v0->unk_4E0 = Unk_ov62_022492C4;
            v0->unk_4E0.unk_00 = v0->unk_4DC;
            v0->unk_4E0.unk_04 = v0->unk_4C8.unk_00;

            ov62_02233310(&param0->unk_14.unk_48C);
            ov62_02232594(&param0->unk_14.unk_48C, param0, v0->unk_4C8.unk_0C, &v0->unk_4E0);

            param0->unk_14.unk_48C.unk_48 = 0;

            ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
            ov62_0223331C(&param0->unk_14.unk_48C, param0, 2);
            ov62_02234540(param0, 0);

            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022332AC(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);

        {
            int v1 = ov62_02232F68(&param0->unk_14.unk_48C, param0);

            if (v1) {
                v0->unk_4C0 = v1;
                ov62_02241954(param0, v1);
                param0->unk_08++;
            }
        }

        if (TouchScreen_LocationPressed(&Unk_ov62_02249138[0])) {
            v0->unk_4C0 = 0xffff;
            ov62_02234520(param0);
            param0->unk_08++;
        }

        break;

    case 3:
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);
        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        ov62_022335F4(&param0->unk_14.unk_46C);
        ov62_02233310(&param0->unk_14.unk_48C);
        param0->unk_08++;
    case 4:
        if (v0->unk_4C0 != 0xffff) {
            ov62_02231664(&v0->unk_08, 1);

            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
                ov62_02245C08(param0, 0);
                param0->unk_08++;
            }

            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        } else {
            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
                param0->unk_08++;
            }
        }
        break;
    default:
        ov62_02242938(param0);

        if (v0->unk_4C0 != 0xffff) {
            ov62_0222FB60(param0, 11);
        } else {
            ov62_0222FB60(param0, 8);
        }
        break;
    }

    return 0;
}

static BOOL ov62_02242748 (UnkStruct_0208C06C * param0, int param1)
{
    BOOL v0 = 0;
    u16 * v1;
    int v2;
    int v3;
    int v4;
    int pokedexLength;
    UnkStruct_ov62_02241204 * v6 = param0->unk_860;

    v4 = Unk_ov62_02249944[param1 + 1];
    v3 = Unk_ov62_02249944[param1];
    v2 = v4 - v3;
    v1 = ov62_Pokedex_Alphabetical(102, 0, &pokedexLength);

    {
        int v7;
        int v8 = 0;
        BOOL v9;
        PokedexData * v10 = SaveData_Pokedex(param0->unk_830);

        for (v7 = v3; v7 < v4; v7++) {
            v9 = sub_02026FE8(v10, v1[v7]);

            if (v9 == 0) {
                v1[v7] = 0xFFFF;
            }
        }

        v8 = 0;

        for (v7 = v3; v7 < v4; v7++) {
            if (v1[v7] != 0xFFFF) {
                v0 = 1;
                break;
            }
        }

        Heap_FreeToHeap(v1);
    }

    return v0;
}

static void ov62_022427D0 (UnkStruct_0208C06C * param0, int param1)
{
    u16 * v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov62_02241204 * v4 = param0->unk_860;

    v3 = Unk_ov62_02249944[param1 + 1];
    v2 = Unk_ov62_02249944[param1];
    v1 = v3 - v2;

    v4->unk_4C8.unk_08 = ov62_Pokedex_Alphabetical(102, 0, &v4->unk_4C8.unk_04);
    v0 = ov62_Pokedex_Alphabetical(102, 0, &v4->unk_4C8.unk_04);

    {
        int v5;
        int v6 = 0;
        BOOL v7;
        PokedexData * v8 = SaveData_Pokedex(param0->unk_830);

        v4->unk_4C8.unk_00 = 0;

        for (v5 = v2; v5 < v3; v5++) {
            v7 = sub_02026FE8(v8, v0[v5]);

            if (v7 == 0) {
                v0[v5] = 0xFFFF;
            } else {
                v4->unk_4C8.unk_00++;
            }
        }

        v6 = 0;

        for (v5 = v2; v5 < v3; v5++) {
            if (v0[v5] == 0xFFFF) {
                continue;
            }

            v4->unk_4C8.unk_08[v6] = v0[v5];
            v6++;
        }

        for (v5 = v6; v5 < v4->unk_4C8.unk_04; v5++) {
            v4->unk_4C8.unk_08[v5] = v0[v5];
        }

        Heap_FreeToHeap(v0);

        v4->unk_4DC = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02249380) * v4->unk_4C8.unk_00);
        MI_CpuFill8(v4->unk_4DC, 0, sizeof(UnkStruct_ov62_02249380) * v4->unk_4C8.unk_00);

        for (v5 = 0; v5 < v4->unk_4C8.unk_00; v5++) {
            v4->unk_4DC[v5].unk_00 = v4->unk_4C8.unk_08[v5];
            v4->unk_4DC[v5].unk_04 = v4->unk_4C8.unk_08[v5];
        }
    }

    v4->unk_4C8.unk_0C = MessageLoader_Init(0, 26, 412, 102);
    v4->unk_4C8.unk_10 = 1;
}

static void ov62_02242938 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    MessageLoader_Free(v0->unk_4C8.unk_0C);
    Heap_FreeToHeap(v0->unk_4DC);
    Heap_FreeToHeap(v0->unk_4C8.unk_08);

    v0->unk_4C8.unk_10 = 0;
}

static const UnkStruct_ov62_02249380 Unk_ov62_0224918C[] = {
    {0x10, 0xD, 0x0}
};

static const TouchScreenRect Unk_ov62_02249130[] = {
    {0x18, 0x38, 0x38, 0xC8}
};

static const UnkStruct_ov62_02248CDC Unk_ov62_02249214 = {
    Unk_ov62_0224918C,
    NELEMS(Unk_ov62_0224918C),
    0x2,
    0x8,
    0x2,
    0x10,
    0xC,
    0x20,
    0x6,
    0x1,
    Unk_ov62_02249130
};

static BOOL ov62_02242970 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231B3C(param0, 115);
        v0->unk_4C3 = 0xff;
        v0->unk_4C4 = 0xff;
        ov62_022419D4(param0, v0->unk_4C3, v0->unk_4C4);
        ov62_02245C08(param0, 1);
        ov62_022343B8(param0, 57, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02234540(param0, 1);
            ov62_022335B0(&param0->unk_14.unk_46C, param0);
            ov62_022324A0(&param0->unk_14.unk_48C, param0, &Unk_ov62_02249214);
            ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
            ov62_0223331C(&param0->unk_14.unk_48C, param0, 2);
            ov62_02234540(param0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022332AC(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);

        {
            int v1 = ov62_02232F68(&param0->unk_14.unk_48C, param0);

            if (v1) {
                v0->unk_4C3 = sub_02030BFC(param0->unk_88C[0]);
                v0->unk_4C4 = sub_02030C08(param0->unk_88C[0]);
                ov62_022419D4(param0, v0->unk_4C3, v0->unk_4C4);
                param0->unk_08++;
            }
        }

        if (TouchScreen_LocationPressed(&Unk_ov62_02249138[0])) {
            ov62_02234520(param0);
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);
        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        param0->unk_08++;
    case 4:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            ov62_02245C08(param0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 11);
        break;
    }

    return 0;
}

static BOOL ov62_02242B34 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 56, 3);
        ov62_022343B8(param0, 59, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02231B3C(param0, 124);
            ov62_02241AA4(param0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_02242BB8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        ov62_02231B3C(param0, 117);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 1:
    {
        int v2 = v0->unk_4C2;

        if (v2 == 0xff) {
            if (sub_0208BE68(param0) == 1) {
                v2 = 0xff;
            } else {
                v2 = UnkEnum_0202F510_37;
            }
        }

        if (ov61_0222B394(ov62_0224112C(param0), v0->unk_4C0, v2, v0->unk_4C3, v0->unk_4C4) == 1) {
            param0->unk_08++;
        }
    }
    break;
    case 2:
        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022345B8(param0, 7, v1->unk_0C, v1->unk_04);
            param0->unk_8B4.unk_3900 = 0;
            param0->unk_08++;
        } else {
            sub_020057A4(1381, 0);
            param0->unk_14.unk_4F0.unk_0C = 118;
            param0->unk_08++;
        }
        break;
    case 3:
        if (param0->unk_8B4.unk_3900 == 0) {
            ov62_02231B3C(param0, param0->unk_14.unk_4F0.unk_0C);
            Sound_PlayEffect(1380);
        } else {
            Sound_PlayEffect(1375);
        }

        param0->unk_08++;
        break;
    default:
        ov62_02233310(&param0->unk_14.unk_48C);

        if (param0->unk_8B4.unk_3900 == 0) {
            ov62_0222FB60(param0, 3);
        } else {
            ov62_0222FB60(param0, 13);
        }

        break;
    }

    return 0;
}

static const UnkStruct_ov62_02248CDC Unk_ov62_02249298 = {
    Unk_ov62_022494A8,
    0x6,
    0x3,
    0x2,
    0x8,
    0xA,
    0xF,
    0x80,
    0x2,
    0x5,
    NULL
};

static BOOL ov62_02242CFC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02241BB8(param0);
        ov62_02241BF8(param0);
        ov62_02231B8C(param0);
        sub_02024034(v0->unk_608[0]);
        sub_02024034(v0->unk_608[1]);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02245C08(param0, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 14);
        break;
    }

    return 0;
}

static BOOL ov62_02242D90 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (sub_0202F250()) {
            sub_0202F22C();
        }

        v0->unk_4E0 = Unk_ov62_02249298;
        v0->unk_4E0.unk_00 = NULL;
        v0->unk_4E0.unk_04 = param0->unk_8B4.unk_3900;

        ov62_022339DC(param0);
        v0->unk_50C.unk_00 = ov62_02233A68(102);

        ov62_022343B8(param0, 4, 3);
        ov62_022343B8(param0, 7, 7);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);

        ov62_02241C38(param0);
        ov62_02234540(param0, 1);
        ov62_022335B0(&param0->unk_14.unk_46C, param0);
        ov62_02232594(&param0->unk_14.unk_48C, param0, NULL, &v0->unk_4E0);

        param0->unk_14.unk_48C.unk_48 = 1;

        ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
        ov62_02234540(param0, 0);
        ov62_02234540(param0, 1);
        ov62_0223331C(&param0->unk_14.unk_48C, param0, 1);
        ov62_02233434(&param0->unk_14.unk_48C, 64, 184);
        ov62_02233064(&param0->unk_14.unk_48C, param0);
        ov62_02234540(param0, 0);
        ov62_02234540(param0, 1);
        ov62_02241278(param0);
        ov62_0224141C(param0, 0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);

            ov62_0224141C(param0, 1);
            ov62_02234358(param0, param0->unk_6F0, 16, 76 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));

            sub_0208B9E0(param0->unk_6F0, 1);
            sub_0208BA08(param0->unk_6F0, 12, 12);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 15);
        break;
    }

    return 0;
}

static BOOL ov62_02242F74 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022331C8(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
        ov62_02233064(&param0->unk_14.unk_48C, param0);
        sub_0208B8EC(param0->unk_6F0, 16, 76 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
        ov62_022414C0(param0);

        if (TouchScreen_LocationPressed(&Unk_ov62_02249134[0])) {
            ov62_02234520(param0);
            v0->unk_0C = 17;
            param0->unk_08++;
        }

        if (TouchScreen_LocationPressed(&Unk_ov62_02249138[0])) {
            ov62_02234520(param0);
            v0->unk_0C = 16;
            param0->unk_08++;
        }
        break;
    case 1:
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);
        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        ov62_02233A74(v0->unk_50C.unk_00);
        ov62_02241460(param0);
        ov62_02233A44(param0);
        ov62_02241BB8(param0);
        ov62_02241BF8(param0);

        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);

        if (v0->unk_0C == 16) {
            ov62_022335F4(&param0->unk_14.unk_46C);
            ov62_02233310(&param0->unk_14.unk_48C);
            v0->unk_50C.unk_04 = 0;
        }

        param0->unk_08++;

    case 2:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02245C08(param0, 0);

            if (v0->unk_0C == 17) {
                ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
                ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 94);
                sub_0200D364(v0->unk_10[0].unk_08, 0);
                sub_0200D364(v0->unk_10[1].unk_08, 3);
            }

            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, v0->unk_0C);
        break;
    }

    return 0;
}

static BOOL ov62_0224312C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 56, 3);
        ov62_022343B8(param0, 59, 7);
        ov62_02245C08(param0, 0);

        v0->unk_608[0] = sub_02023FCC(Unk_ov62_022491AC, NELEMS(Unk_ov62_022491AC), ov62_022458A0, param0, 102);
        v0->unk_608[1] = sub_02023FCC(Unk_ov62_022491F0, NELEMS(Unk_ov62_022491F0), ov62_02245968, param0, 102);

        ov62_02241AA4(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_02231AAC(param0, 124);
            ov62_022417C0(param0, 0);
            ov62_02241954(param0, v0->unk_4C0);
            ov62_022418DC(param0, v0->unk_4C2);
            ov62_022419D4(param0, v0->unk_4C3, v0->unk_4C4);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_0224324C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 6, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_0224443C(param0);
        v0->unk_608[0] = sub_02023FCC(Unk_ov62_0224919C, NELEMS(Unk_ov62_0224919C), ov62_02245994, param0, 102);
        v0->unk_608[1] = sub_02023FCC(Unk_ov62_0224915C, NELEMS(Unk_ov62_0224915C), ov62_02245A28, param0, 102);
        v0->unk_608[2] = sub_02023FCC(Unk_ov62_0224913C, NELEMS(Unk_ov62_0224913C), ov62_02245A90, param0, 102);
        param0->unk_08++;
        break;
    case 2:
        v0->unk_1CC = 0;
        ov62_02234540(param0, 1);
        ov62_02234214(&v0->unk_10C, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        ov62_0223427C(&v0->unk_10C, 0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_10C, 1);
            ov62_02245640(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 18);
        break;
    }

    return 0;
}

static BOOL ov62_022433C0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[0]);
    return 0;
}

static BOOL ov62_022433D8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02245D80(param0)) {
        ov62_0222FB60(param0, 18);
    }

    return 0;
}

static BOOL ov62_022433F0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02246850(param0)) {
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

static BOOL ov62_02243410 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02024034(v0->unk_608[0]);
        sub_02024034(v0->unk_608[1]);
        sub_02024034(v0->unk_608[2]);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        ov62_022444A0(param0);
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234228(&v0->unk_10C, param0);
        } else {
            ov62_02232394(&v0->unk_80, param0);
        }

        ov62_02234540(param0, 0);
        ov62_022455C4(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 111);
            sub_0200D364(v0->unk_10[0].unk_08, 0);
            sub_0200D364(v0->unk_10[1].unk_08, 1);
            ov62_02245C08(param0, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 14);
        break;
    }

    return 0;
}

static BOOL ov62_02243514 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02234970(param0, sub_0202FE98(sub_0202FE04(), 4, 0))) {
        switch (param0->unk_08) {
        case 0:
            ov62_02234540(param0, 1);

            if (v0->unk_1CC == 0) {
                ov62_02234228(&v0->unk_10C, param0);
            } else {
                ov62_02232394(&v0->unk_80, param0);
            }

            ov62_022455C4(param0);
            ov62_02234540(param0, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            param0->unk_08++;
            break;
        case 1:
            ov62_02231664(&v0->unk_08, 1);

            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
                ov62_02234540(param0, 1);
                ov62_02245D50(param0);
                ov62_02244BE4(param0);
                ov62_02234540(param0, 0);
                sub_02019EBC(param0->unk_14.unk_10, 3);
                sub_02019EBC(param0->unk_14.unk_10, 7);
                param0->unk_08++;
            }

            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            break;
        case 2:
            ov62_02231AAC(param0, 277);
            param0->unk_08++;
            break;
        case 3:
            if (!TouchScreen_Tapped()) {
                break;
            }

            ov62_02244CA4(param0);
            ov62_02231B8C(param0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            param0->unk_08++;
            break;
        case 4:
            ov62_02234540(param0, 1);
            ov62_02245C64(param0);

            if (param0->unk_86C == 210) {
                ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
                ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 94);
                sub_0200D364(v0->unk_10[0].unk_08, 0);
                sub_0200D364(v0->unk_10[1].unk_08, 3);
            }

            ov62_02234540(param0, 0);
            ov62_02245640(param0);
            sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            ov62_02234540(param0, 1);

            if (v0->unk_1CC == 0) {
                ov62_02234214(&v0->unk_10C, param0);
                ov62_0223427C(&v0->unk_10C, 0);

                ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
            } else {
                ov62_02232378(&v0->unk_80, param0);
                ov62_022323B8(&v0->unk_80, 0);
                sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
            }

            ov62_02234540(param0, 0);
            sub_0200710C(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            param0->unk_08++;
            break;
        case 5:
            ov62_02231664(&v0->unk_08, 0);

            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
                if (v0->unk_1CC == 0) {
                    ov62_0223427C(&v0->unk_10C, 1);
                } else {
                    ov62_022323B8(&v0->unk_80, 1);
                }

                GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
                param0->unk_08++;
            }

            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            break;
        default:
        {
            int v1;

            for (v1 = 0; v1 < param0->unk_8B4.unk_3900; v1++) {
                param0->unk_8B4.unk_1D58[v1] = &param0->unk_8B4.unk_1DD0[v1];
            }
        }
            ov62_0222FB60(param0, 18);
            break;
        }
    } else {
        if (ov62_02245ECC(param0)) {
            ov62_0222FB60(param0, 23);
        }
    }

    return 0;
}

static BOOL ov62_02243830 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[1]);
    return 0;
}

static BOOL ov62_02243848 (UnkStruct_0208C06C * param0)
{
    if (ov62_02246640(param0)) {
        {
            int v0;

            for (v0 = 0; v0 < param0->unk_8B4.unk_3900; v0++) {
                param0->unk_8B4.unk_1D58[v0] = &param0->unk_8B4.unk_1DD0[v0];
            }
        }
        ov62_0222FB60(param0, 18);
    }

    return 0;
}

static BOOL ov62_02243888 (UnkStruct_0208C06C * param0)
{
    if (ov62_02246428(param0)) {
        {
            int v0;

            for (v0 = 0; v0 < param0->unk_8B4.unk_3900; v0++) {
                param0->unk_8B4.unk_1D58[v0] = &param0->unk_8B4.unk_1DD0[v0];
            }
        }
        ov62_0222FB60(param0, 18);
    }

    return 0;
}

static BOOL ov62_022438C8 (UnkStruct_0208C06C * param0)
{
    if (ov62_02245FE4(param0)) {
        ov62_0222FB60(param0, 26);
    }

    return 0;
}

static BOOL ov62_022438E0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[2]);
    return 0;
}

static BOOL ov62_022438F8 (UnkStruct_0208C06C * param0)
{
    if (ov62_02246090(param0)) {
        ov62_0222FB60(param0, 23);
    }

    return 0;
}

static BOOL ov62_02243910 (UnkStruct_0208C06C * param0)
{
    ov62_0224613C(param0);
    return 0;
}

static BOOL ov62_0224391C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);

        if (v0->unk_1CC == 0) {
            ov62_0223427C(&v0->unk_10C, 0);
        } else {
            ov62_022323B8(&v0->unk_80, 0);
        }

        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231AAC(param0, 117);
        ov62_02234358(param0, param0->unk_6F0, 128, 96);

        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);

        v0->unk_4B8 = 0;
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 3:
        if (ov61_0222B524(ov62_0224112C(param0), param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_80.unk_58) == 1) {
            param0->unk_08++;
        }
        break;
    case 4:
        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_02231B8C(param0);
            ov62_022348B8(param0, 8, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
            v0->unk_4B8 = 0;
        } else {
            sub_020057A4(1381, 0);
            param0->unk_08 = 0xFF;
            v0->unk_4B8 = 1;
            param0->unk_878 = &param0->unk_8B4.unk_3904[param0->unk_14.unk_48C.unk_38.unk_00];
            v0->unk_4BC = param0->unk_8B4.unk_00;
            MI_CpuCopy8(v0->unk_4BC, &param0->unk_8B4.unk_04, sizeof(UnkStruct_ov61_0222BED8));
        }

        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        break;
    default:
        if (v0->unk_4B8) {
            Sound_PlayEffect(1375);
            ov62_02231B8C(param0);
            ov62_0222FB60(param0, v0->unk_0C);
            ov62_0223381C(param0, 1);
        } else {
            ov62_02231B8C(param0);
            ov62_0222FB60(param0, 31);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02243B1C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234314();
        ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
        {
            int v1;

            for (v1 = 0; v1 < param0->unk_8B4.unk_3900; v1++) {
                param0->unk_8B4.unk_1D58[v1] = &param0->unk_8B4.unk_1DD0[v1];
            }
        }

        v0->unk_79C = param0->unk_8B4.unk_3904[param0->unk_14.unk_48C.unk_38.unk_00];

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_022343B8(param0, 6, 7);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);

        ov62_02245C64(param0);
        ov62_02245C08(param0, 0);
        ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
        ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 94);

        sub_0200D364(v0->unk_10[0].unk_08, 0);
        sub_0200D364(v0->unk_10[1].unk_08, 3);

        v0->unk_4C0 = 0xffff;
        v0->unk_4C2 = 0xff;
        v0->unk_4C3 = 0xff;
        v0->unk_4C4 = 0xff;
        v0->unk_50C.unk_08 = 500;
        v0->unk_50C.unk_04 = param0->unk_14.unk_48C.unk_08;
        param0->unk_08++;
        break;
    case 1:
        ov62_0224443C(param0);
        v0->unk_608[0] = sub_02023FCC(Unk_ov62_0224919C, NELEMS(Unk_ov62_0224919C), ov62_02245994, param0, 102);
        v0->unk_608[1] = sub_02023FCC(Unk_ov62_0224915C, NELEMS(Unk_ov62_0224915C), ov62_02245A28, param0, 102);
        v0->unk_608[2] = sub_02023FCC(Unk_ov62_0224913C, NELEMS(Unk_ov62_0224913C), ov62_02245A90, param0, 102);
        param0->unk_08++;
        break;
    case 2:
        ov62_02234540(param0, 1);
        ov62_02234214(&v0->unk_10C, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        ov62_0223427C(&v0->unk_10C, 0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_10C, 1);
            ov62_02245640(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 4:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 5:
        if (ScreenWipe_Done() == 1) {
            param0->unk_08++;
        }
        break;
    default:
        param0->unk_534.unk_1A4 += 1;
        ov62_02230098(param0);
        ov62_0222FB60(param0, 18);
        break;
    }

    return 0;
}

BOOL(*const Unk_ov62_02249680[])(UnkStruct_0208C06C *) = {
    ov62_02243DC8,
    ov62_02243E20,
    ov62_02241D24,
    ov62_02241EB4,
    ov62_02241ECC,
    ov62_02242024,
    ov62_022420B0,
    ov62_0224227C,
    ov62_02242400,
    ov62_02242534,
    ov62_02242970,
    ov62_02242B34,
    ov62_02242BB8,
    ov62_02242CFC,
    ov62_02242D90,
    ov62_02242F74,
    ov62_0224312C,
    ov62_0224324C,
    ov62_022433C0,
    ov62_022433D8,
    ov62_022433F0,
    ov62_02243410,
    ov62_02243514,
    ov62_02243830,
    ov62_02243848,
    ov62_022438C8,
    ov62_022438E0,
    ov62_022438F8,
    ov62_02243910,
    ov62_0224391C,
    ov62_02243B1C,
    ov62_02243888,
};

BOOL(*const Unk_ov62_0224962C[])(UnkStruct_0208C06C *) = {
    ov62_02243DC8,
    ov62_02243E20,
    ov62_02243FA8,
    ov62_022440B0,
    ov62_022440D4,
    ov62_02244180,
    ov62_02244258,
    ov62_022444BC,
    ov62_022446D0,
    ov62_022446E8,
    ov62_02244700,
    ov62_02244720,
    ov62_02244CD4,
    ov62_02244F7C,
    ov62_02244F94,
    ov62_02244FC4,
    ov62_02244FDC,
    ov62_02244FF4,
    ov62_0224500C,
    ov62_02245018,
    ov62_02244FAC,
};

BOOL(*const Unk_ov62_02249618[])(UnkStruct_0208C06C *) = {
    ov62_02243DC8,
    ov62_02243E20,
    ov62_02245334,
    ov62_0224536C,
    ov62_022454D8,
};

static BOOL ov62_02243DC8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02241204));

    memset(v0, 0, sizeof(UnkStruct_ov62_02241204));
    param0->unk_860 = v0;

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);

    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_02243E20 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        BGL_SetPriority(0, 0);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(3, 2);
        BGL_SetPriority(4, 0);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 1);
        BGL_SetPriority(7, 2);
        param0->unk_08++;
        break;
    default:
        switch (param0->unk_86C) {
        case 200:
            ov62_0223376C(param0, 0);
            sub_0208B9E0(param0->unk_6F0, 0);

            if (ov62_022300BC(param0) == 1) {
                ov62_0222FB60(param0, 6);
            } else {
                ov62_0222FB60(param0, 2);
            }

            break;

        case 210:
            ov62_0223376C(param0, 0);
            sub_0208B9E0(param0->unk_6F0, 0);

            if (ov62_022300BC(param0) == 1) {
                ov62_0222FB60(param0, 30);
            } else {
                ov62_0222FB60(param0, 2);
            }
            break;

        case 220:
            if (ov62_022300BC(param0) == 1) {
                ov62_0222FB60(param0, 19);
            } else {
                ov62_0222FB60(param0, 2);
            }

            sub_0208B9E0(param0->unk_6F0, 0);
            break;
        default:
            ov62_0223376C(param0, 0);
            sub_0208B9E0(param0->unk_6F0, 0);
            ov62_0222FB60(param0, 2);
            break;
        }

        break;
    }

    return 0;
}

static BOOL ov62_02243FA8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_02246BF4 * v1 = &v0->unk_1D4;

    switch (param0->unk_08) {
    case 0:
    {
        int v2[3];

        v2[0] = 2;
        v2[1] = 5;
        v2[2] = 5;
        v0->unk_4AC = ov62_02246B00(102, 12, v2, SaveData_Options(param0->unk_830));
        v1->unk_220.unk_00 = param0->unk_14.unk_00;
        v1->unk_220.unk_04 = param0->unk_14.unk_04;
        v1->unk_220.unk_08 = param0->unk_14.unk_08;
        v1->unk_220.unk_0C = param0->unk_14.unk_10;
        v1->unk_220.unk_10 = param0->unk_14.unk_14;
        v1->unk_2A8 = *(v0->unk_4AC);
        v1->unk_2D4 = param0;
        ov62_02245B24(param0);
    }
        param0->unk_08++;
    case 1:
        ov62_022314F0(&v0->unk_00, &v0->unk_04, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->unk_08++;
        break;
    case 2:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223197C(param0, 112);
            param0->unk_08++;
        }
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_022440B0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_02246BF4 * v1 = &v0->unk_1D4;
    BOOL v2;

    v2 = ov62_02247084(v1);

    if (v2 == 1) {
        ov62_0222FB60(param0, 4);
    }

    return 0;
}

static BOOL ov62_022440D4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_02246BF4 * v1 = &v0->unk_1D4;

    switch (param0->unk_08) {
    case 0:
        ov62_02231A1C(param0);
        ov62_02231560(&v0->unk_00, &v0->unk_04, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 0);
        ov62_02246B4C(v0->unk_4AC);
        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
            ov62_02245BD8(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        if (v1->unk_2C8) {
            ov62_0222FB60(param0, 6);
        } else {
            ov62_0222FB60(param0, 5);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02244180 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    default:
        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02244258 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_02246BF4 * v1 = &v0->unk_1D4;
    UnkStruct_ov62_0223CAA4 * v2;

    switch (param0->unk_08) {
    case 0:

        ov62_0223197C(param0, 117);
        ov62_02234358(param0, param0->unk_6F4, 128, 96);

        sub_0208B9E0(param0->unk_6F4, 1);
        sub_0208BA08(param0->unk_6F4, 24, 24);

        v0->unk_4B8 = 0;
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        if (ov61_0222B524(ov62_0224112C(param0), v1->unk_2CC) == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        ov62_02231A1C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v2) == 1) {
            sub_020057A4(1381, 0);
            G2_BlendNone();
            ov62_022348B8(param0, 8, v2->unk_0C, v2->unk_04);
            ov62_0223376C(param0, 0);
            param0->unk_08++;
            v0->unk_4B8 = 0;
        } else {
            sub_020057A4(1381, 0);
            param0->unk_08 = 0xFF;
            v0->unk_4B8 = 1;
            Sound_PlayEffect(1375);
            param0->unk_878 = &param0->unk_8B4.unk_1D54;
            v0->unk_4BC = param0->unk_8B4.unk_00;
            MI_CpuCopy8(v0->unk_4BC, &param0->unk_8B4.unk_04, sizeof(UnkStruct_ov61_0222BED8));
        }

        sub_0208B9E0(param0->unk_6F4, 0);
        sub_0208BA08(param0->unk_6F4, 0, 0);
        break;
    case 3:
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    case 4:
        param0->unk_08++;
        break;
    default:
        if (v0->unk_4B8) {
            ov62_0222FB60(param0, 7);
        } else {
            ov62_0222FB60(param0, 5);
        }

        break;
    }

    return 0;
}

static void ov62_022443EC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    v0->unk_80.unk_00 = sub_02030A80(102);
    ov61_0222AFC0(&v0->unk_4BC->unk_00, v0->unk_80.unk_00);
    v0->unk_10C.unk_00 = v0->unk_80.unk_00;
    v0->unk_10C.unk_04 = sub_0202FF2C(102);
    MI_CpuCopy8(&v0->unk_4BC->unk_80, v0->unk_10C.unk_04, sizeof(UnkStruct_ov61_0222BED8_sub1));
}

static void ov62_0224443C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    v0->unk_80.unk_00 = sub_02030A80(102);
    ov61_0222AFC0(&param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_00, v0->unk_80.unk_00);
    v0->unk_10C.unk_00 = v0->unk_80.unk_00;
    v0->unk_10C.unk_04 = sub_0202FF2C(102);
    MI_CpuCopy8(&param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_80, v0->unk_10C.unk_04, sizeof(UnkStruct_ov61_0222BED8_sub1));
}

static void ov62_022444A0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202FF44(v0->unk_10C.unk_04);
    sub_02030A98(v0->unk_80.unk_00);
}

static BOOL ov62_022444BC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223376C(param0, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_02231560(&v0->unk_00, &v0->unk_04, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), 0);

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_022343B8(param0, 6, 7);

        BGL_SetPriority(0, 1);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(3, 1);
        BGL_SetPriority(4, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 0);
        BGL_SetPriority(7, 2);

        ov62_022443EC(param0);
        ov62_02245C64(param0);

        v0->unk_608[0] = sub_02023FCC(Unk_ov62_0224919C, NELEMS(Unk_ov62_0224919C), ov62_022457A0, param0, 102);
        v0->unk_608[1] = sub_02023FCC(Unk_ov62_0224915C, NELEMS(Unk_ov62_0224915C), ov62_02245800, param0, 102);
        v0->unk_608[2] = sub_02023FCC(Unk_ov62_0224913C, NELEMS(Unk_ov62_0224913C), ov62_02245868, param0, 102);
        param0->unk_08++;
        break;
    case 2:
        ov62_02234540(param0, 1);
        v0->unk_1CC = 0;

        ov62_02234214(&v0->unk_10C, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        ov62_0223427C(&v0->unk_10C, 0);
        ov62_02234540(param0, 0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_10C, 1);
            ov62_02245640(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

static BOOL ov62_022446D0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[0]);
    return 0;
}

static BOOL ov62_022446E8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02245D80(param0)) {
        ov62_0222FB60(param0, 8);
    }

    return 0;
}

static BOOL ov62_02244700 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02246850(param0)) {
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

static BOOL ov62_02244720 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02024034(v0->unk_608[0]);
        sub_02024034(v0->unk_608[1]);
        sub_02024034(v0->unk_608[2]);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        ov62_022444A0(param0);
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234228(&v0->unk_10C, param0);
        } else {
            ov62_02232394(&v0->unk_80, param0);
        }

        ov62_02234540(param0, 0);
        ov62_022455C4(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02245D50(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_02233790(param0) == 0) {
            break;
        }
        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            Heap_FreeToHeap(v0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);

            if (sub_0202F250() == 1) {
                sub_0202F22C();
            }
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }
        break;
    default:
        break;
    }

    return 0;
}

static void ov62_022448E0 (UnkStruct_ov62_022312B0 * param0, UnkStruct_0208C06C * param1, int param2)
{
    Strbuf* v0;
    MessageLoader * v1;
    Window v2;
    StringTemplate * v3;
    Strbuf* v4;
    Strbuf* v5;

    v1 = param1->unk_14.unk_34;

    if (param1->unk_88C[param2] == NULL) {
        v0 = MessageLoader_GetNewStrbuf(v1, 8);
    } else {
        v3 = ov62_02231690(102);
        v4 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 7);
        v5 = sub_02030B94(param1->unk_88C[param2], 102);
        ov62_022349A8(param1, v5);
        v0 = Strbuf_Init(255, 102);
        StringTemplate_SetStrbuf(v3, 0, v5, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v4);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    }

    Window_Init(&v2);
    BGL_AddFramelessWindow(param1->unk_14.unk_10, &v2, 20, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(&v2, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 13, 0), NULL);
    sub_02012BE0(param0->unk_0C, param0->unk_10, &v2, 102);
    Strbuf_Free(v0);
    BGL_DeleteWindow(&v2);
}

static void ov62_022449B8 (UnkStruct_0208C06C * param0, int param1, BOOL param2)
{
    Strbuf* v0;
    Window * v1 = &param0->unk_8A4;
    UnkStruct_ov62_02241204 * v2 = param0->unk_860;

    ov62_022302A8(param0, 2, param2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 2, 1, 19, 30, 4, 14, 300);

    if (param1 == 100) {
        StringTemplate * v3;
        Strbuf* v4;
        Strbuf* v5;
        UnkStruct_02030A80 * v6 = v2->unk_80.unk_00;

        v3 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v4 = sub_02030B94(v6, 102);
        ov62_022349A8(param0, v4);
        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
        StringTemplate_SetStrbuf(v3, 0, v4, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v5);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    }

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

static void ov62_02244AB4 (UnkStruct_0208C06C * param0, int param1, int param2)
{
    Strbuf* v0;
    Window * v1 = &param0->unk_8A4;
    UnkStruct_ov62_02241204 * v2 = param0->unk_860;

    if (param1 == 100) {
        StringTemplate * v3;
        Strbuf* v4;
        Strbuf* v5;
        UnkStruct_02030A80 * v6 = v2->unk_80.unk_00;

        v3 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v4 = sub_02030B94(v6, 102);
        ov62_022349A8(param0, v4);
        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
        StringTemplate_SetStrbuf(v3, 0, v4, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v5);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    } else if (param1 == 102) {
        StringTemplate * v7;
        Strbuf* v8;
        Strbuf* v9;
        UnkStruct_02030A80 * v10 = param0->unk_88C[param2];

        v7 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v8 = sub_02030B94(v10, 102);
        ov62_022349A8(param0, v8);
        v9 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
        StringTemplate_SetStrbuf(v7, 0, v8, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v7, v0, v9);
        Strbuf_Free(v8);
        Strbuf_Free(v9);
        StringTemplate_Free(v7);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    }

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

static void ov62_02244BE4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    int v1;
    int v2[] = {8, 8, 8, 3, };
    int v3[] = {0, 0, 0, 1};

    ov62_0223136C(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_10[v1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

        ov62_0223118C(&v0->unk_10[v1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
        ov62_0223124C(&v0->unk_10[v1], &param0->unk_14, v2[v1]);

        if (v1 != 3) {
            ov62_022448E0(&v0->unk_10[v1], param0, v1 + 1);
        }

        SpriteActor_SetSpritePositionXY(v0->unk_10[v1].unk_08, 42 + 8, (25 + (36 * (v1)) + (16 * (5 - 4))) + 64);
        sub_0200D364(v0->unk_10[v1].unk_08, v3[v1]);
        sub_020128C4(v0->unk_10[v1].unk_0C, 36, -8);
        sub_020129D0(v0->unk_10[v1].unk_0C, 1);
    }
}

static void ov62_02244CA4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        ov62_022312B0(&v0->unk_10[v1]);
        sub_0200D0F4(v0->unk_10[v1].unk_08);
    }

    ov62_022313BC(param0);
}

static BOOL ov62_02244CD4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02234970(param0, sub_0202FE98(sub_0202FE04(), 4, 0))) {
        switch (param0->unk_08) {
        case 0:
            ov62_02234540(param0, 1);

            if (v0->unk_1CC == 0) {
                ov62_02234228(&v0->unk_10C, param0);
            } else {
                ov62_02232394(&v0->unk_80, param0);
            }

            ov62_02234540(param0, 0);
            ov62_022455C4(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            param0->unk_08++;
            break;
        case 1:
            ov62_02231664(&v0->unk_08, 1);
            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
                ov62_02234540(param0, 1);
                ov62_02245D50(param0);
                ov62_02244BE4(param0);
                ov62_02234540(param0, 0);
                sub_02019EBC(param0->unk_14.unk_10, 3);
                sub_02019EBC(param0->unk_14.unk_10, 7);
                param0->unk_08++;
            }

            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            break;
        case 2:
            ov62_02231AAC(param0, 277);
            param0->unk_08++;
            break;
        case 3:
            if (!TouchScreen_Tapped()) {
                break;
            }

            ov62_02231B8C(param0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            param0->unk_08++;
            break;
        case 4:
            ov62_02231664(&v0->unk_08, 1);

            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
                ov62_02244CA4(param0);
                param0->unk_08++;
            }
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            break;
        case 5:
            sub_02024034(v0->unk_608[0]);
            sub_02024034(v0->unk_608[1]);
            sub_02024034(v0->unk_608[2]);
            ov62_02231688(&v0->unk_08);
            ov62_02234540(param0, 1);
            ov62_022444A0(param0);
            ov62_0223146C(param0);
            ov62_02234540(param0, 0);
            ov62_0223376C(param0, 1);
            param0->unk_08++;
            break;
        default:
            if (ov62_02233790(param0) == 0) {
                break;
            }

            if (ov62_02231664(&v0->unk_08, 0)) {
                ov62_022318E8(param0);
                ov62_02231688(&v0->unk_08);

                sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

                ov62_0222FB44(param0, 1, 1, param0->unk_10);
                ov62_0222FB60(param0, 5);

                Heap_FreeToHeap(v0);
                sub_02019EBC(param0->unk_14.unk_10, 2);
                sub_02019EBC(param0->unk_14.unk_10, 6);
                sub_02019EBC(param0->unk_14.unk_10, 3);
                sub_02019EBC(param0->unk_14.unk_10, 7);

                if (sub_0202F250() == 1) {
                    sub_0202F22C();
                }
            } else {
                sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
                sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            }

            break;
        }
    } else {
        if (ov62_02245ECC(param0)) {
            ov62_0222FB60(param0, 13);
        }
    }

    return 0;
}

static BOOL ov62_02244F7C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[1]);
    return 0;
}

static BOOL ov62_02244F94 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02246640(param0)) {
        ov62_0222FB60(param0, 8);
    }

    return 0;
}

static BOOL ov62_02244FAC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02246428(param0)) {
        ov62_0222FB60(param0, 8);
    }

    return 0;
}

static BOOL ov62_02244FC4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02245FE4(param0)) {
        ov62_0222FB60(param0, 16);
    }

    return 0;
}

static BOOL ov62_02244FDC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_608[2]);
    return 0;
}

static BOOL ov62_02244FF4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (ov62_02246090(param0)) {
        ov62_0222FB60(param0, 13);
    }

    return 0;
}

static BOOL ov62_0224500C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    ov62_0224613C(param0);

    return 0;
}

static BOOL ov62_02245018 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);

        v0->unk_79C = param0->unk_8B4.unk_1D54;
        v0->unk_4BC = &param0->unk_8B4.unk_04;
        param0->unk_8B4.unk_00 = v0->unk_4BC;

        ov62_0223371C(param0);
        ov62_022443EC(param0);

        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        ov62_0223376C(param0, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            BGL_SetPriority(0, 1);
            BGL_SetPriority(1, 3);
            BGL_SetPriority(2, 0);
            BGL_SetPriority(3, 1);
            BGL_SetPriority(4, 1);
            BGL_SetPriority(5, 3);
            BGL_SetPriority(6, 0);
            BGL_SetPriority(7, 2);

            v0->unk_608[0] = sub_02023FCC(Unk_ov62_0224919C, NELEMS(Unk_ov62_0224919C), ov62_022457A0, param0, 102);
            v0->unk_608[1] = sub_02023FCC(Unk_ov62_0224915C, NELEMS(Unk_ov62_0224915C), ov62_02245800, param0, 102);
            v0->unk_608[2] = sub_02023FCC(Unk_ov62_0224913C, NELEMS(Unk_ov62_0224913C), ov62_02245868, param0, 102);
            param0->unk_08++;
        }
        break;

    case 2:
        ov62_02245C64(param0);
        ov62_02245640(param0);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234214(&v0->unk_10C, param0);
            ov62_0223427C(&v0->unk_10C, 0);

            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        } else {
            ov62_02232378(&v0->unk_80, param0);
            ov62_022323B8(&v0->unk_80, 0);
            sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        }

        ov62_02234540(param0, 0);
        sub_0200710C(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        param0->unk_08++;
        break;
    case 3:
        v0->unk_08 = 0;

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            if (v0->unk_1CC == 0) {
                ov62_0223427C(&v0->unk_10C, 1);
            } else {
                ov62_022323B8(&v0->unk_80, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 4:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 5:
        if (ScreenWipe_Done() == 1) {
            param0->unk_08++;
        }
        break;
    default:
        param0->unk_534.unk_1A4 += 1;
        ov62_02230098(param0);
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

static BOOL ov62_02245334 (UnkStruct_0208C06C * param0)
{
    ov62_02234358(param0, param0->unk_6F0, 128, 96);
    sub_0208B9E0(param0->unk_6F0, 1);
    sub_0208BA08(param0->unk_6F0, 24, 24);
    ov62_0222FB60(param0, 3);

    return 0;
}

static BOOL ov62_0224536C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    switch (param0->unk_08) {
    case 0:
        ov62_02231AAC(param0, 119);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        {
            int v2;

            sub_0202F298(param0->unk_830, 102, &v2, NULL, 0);
            v0->unk_1D0 = sub_02030A80(102);
            sub_02030AA0(v0->unk_1D0, param0->unk_830);

            if (ov61_0222B338(ov62_0224112C(param0), v0->unk_1D0) == 1) {
                sub_02030A98(v0->unk_1D0);
                param0->unk_08++;
            }
        }
        break;

    case 2:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        sub_0202F22C();
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 6, v1->unk_0C, v1->unk_04);
            sub_0208B9E0(param0->unk_6F0, 0);
            sub_0208BA08(param0->unk_6F0, 0, 0);

            param0->unk_08 = 0xFF;
        } else {
            ov62_02231AAC(param0, 119);
            ov62_022469A0(v0, param0);
            sub_020057A4(1381, 0);
            Sound_PlayEffect(1375);
            param0->unk_08++;
        }
        break;
    case 3:
        if (!TouchScreen_Tapped()) {
            break;
        }

        ov62_02231B8C(param0);
        param0->unk_08++;
        break;
    default:
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        ov62_02233704(param0, 46);
        ov62_0222FB60(param0, 4);
        break;
    }

    return 0;
}

static BOOL ov62_022454D8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231688(&v0->unk_08);
        ov62_02230060(param0);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            Heap_FreeToHeap(v0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static void ov62_022455C4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_6D4[0]);
    BGL_DeleteWindow(&v0->unk_6D4[0]);
}

static void ov62_022455E4 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3;

    v1 = &v0->unk_6D4[0];
    BGL_FillWindow(v1, 0x0);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    v3 = ov62_0223429C(v1, v2);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02245640 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    Window * v1;
    int v2 = 1;

    v1 = &v0->unk_6D4[0];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 8, 3, 16, 2, 14, v2);
    ov62_022455E4(param0, 121 + v0->unk_1CC);
}

static void ov62_0224568C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3 = 1;
    int v4;

    v1 = &v0->unk_6D4[0];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 4, 6, 10, 2, 14, v3);
    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 130);
    v4 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);

    v3 += (10 * 2);

    v1 = &v0->unk_6D4[1];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 18, 6, 10, 2, 14, v3);
    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 131);
    v4 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_0224576C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_6D4[0]);
    BGL_DeleteWindow(&v0->unk_6D4[0]);
    sub_0201ACF4(&v0->unk_6D4[1]);
    BGL_DeleteWindow(&v0->unk_6D4[1]);
}

static void ov62_022457A0 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 9);
        break;
    case 1:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 10);
        break;
    case 2:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 12);
        break;
    case 3:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 11);
        break;
    }
}

static void ov62_02245800 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
    case 1:
    case 2:
        v1->unk_1C8 = param0 + 1;

        if (v0->unk_88C[v1->unk_1C8] != NULL) {
            ov62_0222FB60(v0, 15);
        } else {
            ov62_0222FB60(v0, 18);
        }

        ov62_02234520(v0);
        break;

    case 3:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 14);
        break;
    }
}

static void ov62_02245868 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_0224576C(v0);
        ov62_0222FB60(v0, 18);
        break;

    case 1:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 17);
        break;
    }
}

static void ov62_022458A0 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        v1->unk_4C5 = param0;
        ov62_0222FB60(v0, 5);
        break;
    case 1:
        ov62_02234520(v0);
        v1->unk_4C5 = param0;
        ov62_0222FB60(v0, 5);
        break;
    case 2:
    {
        int v2 = sub_02030BFC(v0->unk_88C[0]);

        ov62_02234520(v0);

        if (v2 == 0) {
            Sound_PlayEffect(1380);
            ov62_02231B3C(v0, 128);
        } else {
            v1->unk_4C5 = param0;
            ov62_0222FB60(v0, 5);
        }
    }
    break;
    case 3:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 4);
        break;
    case 4:
        ov62_02234520(v0);

        if (ov62_02241780(v0) == 0) {
            Sound_PlayEffect(1380);
            ov62_02231B3C(v0, 116);
        } else {
            ov62_0222FB60(v0, 12);
        }

        break;
    }
}

static void ov62_02245968 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    if (ov62_02242748(v0, param0) == 0) {
        Sound_PlayEffect(1380);
        return;
    }

    ov62_022427D0(v0, param0);
}

static void ov62_02245994 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 19);
        break;
    case 1:
        ov62_02234520(v0);

        if (sub_0202F250()) {
            ov62_0222FB60(v0, 20);
        } else {
            v1->unk_0C = 20;
            ov62_0222FB60(v0, 29);
        }
        break;
    case 2:
        ov62_02234520(v0);

        if (sub_0202F250()) {
            ov62_0222FB60(v0, 22);
        } else {
            v1->unk_0C = 22;
            ov62_0222FB60(v0, 29);
        }
        break;
    case 3:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 21);
        break;
    }
}

static void ov62_02245A28 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
    case 1:
    case 2:
        v1->unk_1C8 = param0 + 1;

        if (v0->unk_88C[v1->unk_1C8] != NULL) {
            ov62_0222FB60(v0, 25);
        } else {
            ov62_0222FB60(v0, 28);
        }

        ov62_02234520(v0);
        break;
    case 3:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 24);
        break;
    }
}

static void ov62_02245A90 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_0224576C(v0);
        ov62_0222FB60(v0, 28);
        break;
    case 1:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 27);
        break;
    }
}

static void ov62_02245AC8 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (param1 == 0) {
        SpriteActor_EnableObject(v0->unk_10[0].unk_08, 1);
        sub_020129D0(v0->unk_10[0].unk_0C, 1);
        SpriteActor_SetSpritePositionXY(v0->unk_10[1].unk_08, 128, 232 - 64);
    } else {
        SpriteActor_EnableObject(v0->unk_10[0].unk_08, 0);
        sub_020129D0(v0->unk_10[0].unk_0C, 0);
        SpriteActor_SetSpritePositionXY(v0->unk_10[1].unk_08, 80, 232 - 64);
    }

    sub_020128C4(v0->unk_10[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_10[1].unk_0C, 36, -8);
}

static void ov62_02245B24 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    ov62_022312CC(param0, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_10[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0->unk_10[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DMAIN);

    ov62_0223118C(&v0->unk_10[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DMAIN);
    ov62_0223118C(&v0->unk_10[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DMAIN);
    ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
    ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 111);

    SpriteActor_SetSpritePositionXY(v0->unk_10[0].unk_08, 32, 232 - 64);
    SpriteActor_SetSpritePositionXY(v0->unk_10[1].unk_08, 128, 232 - 64);
    sub_020128C4(v0->unk_10[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_10[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_10[0].unk_0C, 1);
    sub_020129D0(v0->unk_10[1].unk_0C, 1);
    sub_0200D364(v0->unk_10[0].unk_08, 0);
    sub_0200D364(v0->unk_10[1].unk_08, 1);

    ov62_02245AC8(param0, 0);
}

static void ov62_02245BD8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_10[0]);
    ov62_022312B0(&v0->unk_10[1]);

    sub_0200D0F4(v0->unk_10[0].unk_08);
    sub_0200D0F4(v0->unk_10[1].unk_08);

    ov62_022313BC(param0);
}

static void ov62_02245C08 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    if (param1 == 0) {
        SpriteActor_EnableObject(v0->unk_10[1].unk_08, 1);
        sub_020129D0(v0->unk_10[1].unk_0C, 1);
        SpriteActor_SetSpritePositionXY(v0->unk_10[0].unk_08, 32, 232);
    } else {
        SpriteActor_EnableObject(v0->unk_10[1].unk_08, 0);
        sub_020129D0(v0->unk_10[1].unk_0C, 0);
        SpriteActor_SetSpritePositionXY(v0->unk_10[0].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_10[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_10[1].unk_0C, 36, -8);
}

static void ov62_02245C64 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    ov62_022312CC(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_10[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    v0->unk_10[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_10[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223118C(&v0->unk_10[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);

    if (param0->unk_86C == 210) {
        ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
        ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 111);
        sub_0200D364(v0->unk_10[0].unk_08, 0);
        sub_0200D364(v0->unk_10[1].unk_08, 1);
    } else {
        ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
        ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 94);
        sub_0200D364(v0->unk_10[0].unk_08, 0);
        sub_0200D364(v0->unk_10[1].unk_08, 3);
    }

    SpriteActor_SetSpritePositionXY(v0->unk_10[0].unk_08, 32, 232);
    SpriteActor_SetSpritePositionXY(v0->unk_10[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_10[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_10[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_10[0].unk_0C, 1);
    sub_020129D0(v0->unk_10[1].unk_0C, 1);

    ov62_02245C08(param0, 0);
}

static void ov62_02245D50 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_10[0]);
    ov62_022312B0(&v0->unk_10[1]);

    sub_0200D0F4(v0->unk_10[0].unk_08);
    sub_0200D0F4(v0->unk_10[1].unk_08);

    ov62_022313BC(param0);
}

static BOOL ov62_02245D80 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234228(&v0->unk_10C, param0);
        } else {
            ov62_02232394(&v0->unk_80, param0);
        }

        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 1)) {
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02232378(&v0->unk_80, param0);
            ov62_022323B8(&v0->unk_80, 0);
            ov62_022343B8(param0, 80, 3);
        } else {
            ov62_02234214(&v0->unk_10C, param0);
            ov62_0223427C(&v0->unk_10C, 0);
            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        }

        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            if (v0->unk_1CC == 0) {
                ov62_022323B8(&v0->unk_80, 1);
            } else {
                ov62_0223427C(&v0->unk_10C, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }
        break;
    default:
        v0->unk_1CC ^= 1;
        ov62_022455E4(param0, 121 + v0->unk_1CC);
        return 1;
    }

    return 0;
}

static BOOL ov62_02245ECC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234228(&v0->unk_10C, param0);
        } else {
            ov62_02232394(&v0->unk_80, param0);
        }

        ov62_02234540(param0, 0);
        ov62_022455C4(param0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02234540(param0, 1);
            ov62_02245D50(param0);
            ov62_02244BE4(param0);
            ov62_02234540(param0, 0);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            ov62_022449B8(param0, 100, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        return 1;
        break;
    }

    return 0;
}

static BOOL ov62_02245FE4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            sub_0200710C(param0->unk_14.unk_00, 84, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            ov62_02244AB4(param0, 102, v0->unk_1C8);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_0224568C(param0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov62_02246090 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            ov62_0224576C(param0);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02244AB4(param0, 100, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov62_0224613C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    switch (param0->unk_08) {
    case 0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            sub_02019EBC(param0->unk_14.unk_10, 6);
            ov62_02244AB4(param0, 278, 0);
            ov62_022342BC(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ;
        if (ov62_022337F0(param0, v0->unk_1C8, v0->unk_79C)) {
            v0->unk_79C = 0;
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 4:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        ov62_02244AB4(param0, 280, 0);

        {
            u64 v2 = sub_0202FE98(sub_0202FE04(), 4, 0);

            if (ov61_0222B550(ov62_0224112C(param0), v2) == 1) {
                param0->unk_08++;
            }
        }
        break;
    case 5:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            param0->unk_08++;
        } else {
            sub_020057A4(1381, 0);
            Sound_PlayEffect(1375);
            param0->unk_08++;
        }

        ov62_02244AB4(param0, 281, 0);
        break;
    case 6:
        if (!TouchScreen_Tapped()) {
            break;
        }

        ov62_02231A88(param0);
        ov62_02244CA4(param0);

        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);

        ov62_022339A0(param0);
        ov62_022338A8(param0);
        ov62_02233310(&param0->unk_14.unk_48C);
        param0->unk_08++;
        break;
    case 7:
        sub_02024034(v0->unk_608[0]);
        sub_02024034(v0->unk_608[1]);
        sub_02024034(v0->unk_608[2]);

        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_022444A0(param0);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_020397C8(1, 102);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }
        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            Heap_FreeToHeap(v0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);

            if (sub_0202F250() == 1) {
                sub_0202F22C();
            }
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02246428 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        if (param0->unk_86C == 210) {
            ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 94);
            sub_0200D364(v0->unk_10[0].unk_08, 0);
            sub_0200D364(v0->unk_10[1].unk_08, 3);
        }

        ov62_022455C4(param0);
        ov62_02245640(param0);

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234228(&v0->unk_10C, param0);
            ov62_02234214(&v0->unk_10C, param0);
            ov62_0223427C(&v0->unk_10C, 0);
            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        } else {
            ov62_02232394(&v0->unk_80, param0);
            ov62_02232378(&v0->unk_80, param0);
            ov62_022323B8(&v0->unk_80, 0);
            sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        }

        ov62_02234540(param0, 0);
        sub_0200710C(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            if (v0->unk_1CC == 0) {
                ov62_0223427C(&v0->unk_10C, 1);
            } else {
                ov62_022323B8(&v0->unk_80, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov62_02246640 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231A88(param0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02244CA4(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02245C64(param0);

        if (param0->unk_86C == 210) {
            ov62_0223124C(&v0->unk_10[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_10[1], &param0->unk_14, 94);
            sub_0200D364(v0->unk_10[0].unk_08, 0);
            sub_0200D364(v0->unk_10[1].unk_08, 3);
        }

        ov62_02245640(param0);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234214(&v0->unk_10C, param0);
            ov62_0223427C(&v0->unk_10C, 0);
            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_10C), 3);
        } else {
            ov62_02232378(&v0->unk_80, param0);
            ov62_022323B8(&v0->unk_80, 0);
            sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        }

        ov62_02234540(param0, 0);
        sub_0200710C(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            if (v0->unk_1CC == 0) {
                ov62_0223427C(&v0->unk_10C, 1);
            } else {
                ov62_022323B8(&v0->unk_80, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov62_02246850 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02241204 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02234540(param0, 1);

        if (v0->unk_1CC == 0) {
            ov62_02234228(&v0->unk_10C, param0);
        } else {
            ov62_02232394(&v0->unk_80, param0);
        }

        ov62_02234540(param0, 0);

        sub_02024034(v0->unk_608[0]);
        sub_02024034(v0->unk_608[1]);
        sub_02024034(v0->unk_608[2]);

        ov62_02234540(param0, 1);
        ov62_022444A0(param0);
        ov62_022455C4(param0);
        ov62_02245D50(param0);
        ov62_022314A8(param0);
        ov62_02234540(param0, 0);
        ov62_022300C8(param0, *(param0->unk_10));
        sub_0208BA84(param0->unk_868, 1, 0);
        param0->unk_08++;
        break;
    default:
        return 1;
    }

    return 0;
}

void ov62_02246944 (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;
    UnkStruct_ov62_02241204 * v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        u64 v2;

        v2 = ov61_0222BDF0(ov62_0224112C(v0));
        v1->unk_4B0 = v2;
    }
}

void ov62_02246968 (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        ov61_0222BED8(ov62_0224112C(v0), &v0->unk_8B4.unk_00);
        ov62_0223371C(v0);
        v0->unk_8B4.unk_1D54 = v0->unk_8B4.unk_00->unk_80.unk_27;
    }
}

void ov62_0224699C (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        (void)0;
    }
}

static void ov62_022469A0 (UnkStruct_ov62_02241204 * param0, UnkStruct_0208C06C * param1)
{
    Strbuf* v0;
    Strbuf* v1;
    Strbuf* v2;
    StringTemplate * v3;
    Window * v4;

    v3 = ov62_02231690(102);

    {
        u64 v5 = param0->unk_4B0;
        u64 v6 = v5;
        u32 v7[3];
        Strbuf* v8 = Strbuf_Init(255, 102);
        Strbuf* v9 = Strbuf_Init(255, 102);
        Strbuf* v10 = Strbuf_Init(255, 102);

        v4 = &param1->unk_8A4;
        v7[0] = v6 % 100000;
        v6 /= 100000;
        v7[1] = v6 % 100000;
        v6 /= 100000;
        v7[2] = v6;
        v1 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 295);
        v2 = Strbuf_Init(255, 102);

        Strbuf_FormatInt(v8, v7[0], 5, 2, 1);
        Strbuf_FormatInt(v9, v7[1], 5, 2, 1);
        Strbuf_FormatInt(v10, v7[2], 2, 2, 1);
        StringTemplate_SetStrbuf(v3, 2, v8, 0, 1, GAME_LANGUAGE);
        StringTemplate_SetStrbuf(v3, 1, v9, 0, 1, GAME_LANGUAGE);
        StringTemplate_SetStrbuf(v3, 0, v10, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v2, v1);
        BGL_FillWindow(v4, 0xCC);
        Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        sub_0201A9A4(v4);
        Strbuf_Free(v8);
        Strbuf_Free(v9);
        Strbuf_Free(v10);
        Strbuf_Free(v1);
        Strbuf_Free(v2);
        StringTemplate_ClearArgs(v3);
    }

    StringTemplate_Free(v3);
}
