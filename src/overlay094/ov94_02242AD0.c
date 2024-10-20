#include "overlay094/ov94_02242AD0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "consts/game_records.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_0202DA40_decl.h"
#include "struct_defs/chatot_cry.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223C610.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "savedata/save_table.h"

#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_0202CC64.h"
#include "unk_0202DA40.h"
#include "unk_0202F180.h"
#include "unk_020366A0.h"
#include "unk_02038F8C.h"
#include "unk_020393C8.h"
#include "unk_02039814.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "unk_020797C8.h"
#include "vars_flags.h"

static void ov94_02242B54(BGL *param0);
static void ov94_02242C80(BGL *param0);
static void ov94_02242CAC(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D38(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D74(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D84(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D98(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243E48(Journal *param0, UnkStruct_ov94_0223BA88 *param1);
static void ov94_0224362C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243E2C(UnkStruct_0202C878 *param0, UnkStruct_ov94_0223BA88 *param1);
static void ov94_02243CE4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2);
static void ov94_02243DE8(UnkStruct_0202DA40 *param0, int param1);
static int ov94_02243E84(UnkStruct_ov94_0223FD4C *param0, UnkStruct_ov94_0223BA88 *param1);
static void ov94_022438C8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243EC8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2);
static int ov94_02242DA8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242E9C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242ED0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242F78(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242F98(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243778(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224377C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243794(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243920(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243948(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A90(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243AE8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224301C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243048(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243104(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243120(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022431A4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022431F0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022432D8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022432F4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437AC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243884(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243B08(UnkStruct_ov94_0223FD4C *param0, int param1);
static void ov94_02243BC4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2, int param3);
static int ov94_02243990(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243974(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A04(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243588(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243568(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243398(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243378(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243658(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022436F0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437C0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022439E4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022439CC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243554(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A28(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A44(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022436D4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437D8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437F4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243ED8(UnkStruct_ov94_0223FD4C *param0);

static int (*Unk_ov94_022469A0[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_02242DA8,
    ov94_02243778,
    ov94_02242E9C,
    ov94_02242ED0,
    ov94_02242F78,
    ov94_02242F98,
    ov94_0224377C,
    ov94_0224301C,
    ov94_02243048,
    ov94_02243104,
    ov94_02243120,
    ov94_02243794,
    ov94_022431A4,
    ov94_022431F0,
    ov94_022432D8,
    ov94_022432F4,
    ov94_022437AC,
    ov94_02243884,
    ov94_02243658,
    ov94_022436D4,
    ov94_022436F0,
    ov94_022437C0,
    ov94_022437D8,
    ov94_022437F4,
    ov94_02243378,
    ov94_02243398,
    ov94_02243568,
    ov94_02243588,
    ov94_02243554,
    ov94_02243974,
    ov94_02243990,
    ov94_022439CC,
    ov94_022439E4,
    ov94_02243A04,
    ov94_02243A28,
    ov94_02243A44,
    ov94_02243A90,
    ov94_02243AE8,
    ov94_02243920,
    ov94_02243948
};

int ov94_02242AD0(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_02242D84(param0);
    ov94_02242B54(param0->unk_04);
    ov94_02242CAC(param0);
    ov94_02242D38(param0);

    sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);
    ov94_02245934(param0);

    param0->unk_2C = 0;

    return 2;
}

int ov94_02242B14(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0;

    sub_020397B0(ov94_0223C4B4());

    v0 = (*Unk_ov94_022469A0[param0->unk_2C])(param0);
    return v0;
}

int ov94_02242B34(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_02242D98(param0);
    ov94_02242D74(param0);
    ov94_02242C80(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_02242B54(BGL *param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v4, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v5, 0);
    }

    sub_02019690(0, 32, 0, 62);
    sub_02019690(1, 32, 0, 62);
    sub_02019690(4, 32, 0, 62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov94_02242C80(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov94_02242CAC(UnkStruct_ov94_0223FD4C *param0)
{
    BGL *v0 = param0->unk_04;

    sub_02006E84(104, 0, 0, 0, 16 * 3 * 2, 62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);

    if (param0->unk_10F0 == 0) {
        sub_02019120(4, 0);
        sub_02019120(5, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
    }

    if (param0->unk_20 == 9) {
        ov94_0223D068(param0);
    }
}

static void ov94_02242D38(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_AddWindow(param0->unk_04, &param0->unk_F5C, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_F5C, 0x0);
}

static void ov94_02242D74(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_DeleteWindow(&param0->unk_F5C);
}

static void ov94_02242D84(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BAC = Strbuf_Init((90 * 2), 62);
}

static void ov94_02242D98(UnkStruct_ov94_0223FD4C *param0)
{
    Strbuf_Free(param0->unk_BAC);
}

static int ov94_02242DA8(UnkStruct_ov94_0223FD4C *param0)
{
    switch (param0->unk_24) {
    case 7:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 2);
        break;
    case 8:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 7);
        break;
    case 9:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 12);
        break;
    case 10:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 18);
        param0->unk_1110 = 1;
        break;
    case 11:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_INSTANT, 0xf0f);
        param0->unk_2C = 24;
        break;
    case 12:
        ov94_02245824(param0, param0->unk_B90, 142, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_18 = 1;
        param0->unk_2C = 29;
        break;
    default:
        GF_ASSERT(0);
    }

    ov94_0223C5D8(param0);

    return 3;
}

static int ov94_02242E9C(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0207893C((Pokemon *)param0->unk_12C.unk_00.unk_00);
    ov94_0223B7E4(&param0->unk_12C);

    param0->unk_2C = 3;
    param0->unk_14E4 = 0;

    ov94_02243EC8(param0, 4, 6);

    return 3;
}

static int ov94_02242ED0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    if ((v0 = ov94_0223B7B8())) {
        s32 v1 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v1) {
        case 0:
            ov94_02243B08(param0, 1);
            GameRecords_IncrementRecordValue(param0->unk_00->records, RECORD_UNK_044);
            param0->unk_2C = 30;
            break;
        case -1:
            param0->unk_3C = v1;
            param0->unk_2C = 38;
            break;
        case -6:
        case -7:
        case -8:
        case -9:
        case -10:
        case -11:
        case -5:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -12:
        case -4:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -2:
        case -14:
        case -15:
            param0->unk_3C = v1;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02242F78(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B834();

    param0->unk_2C = 5;
    param0->unk_14E4 = 0;
    param0->unk_36 = 1;

    return 3;
}

static int ov94_02242F98(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();
        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -12:
        case -4:
            param0->unk_3C = v0;
            param0->unk_2C = 39;
            break;
        case -1:
        case -3:
        case -5:
        case -2:
        case -14:
        case -15:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_0224301C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B888(&param0->unk_12C);

    param0->unk_2C = 8;
    param0->unk_14E4 = 0;

    ov94_02243EC8(param0, 9, 11);

    return 3;
}

static int ov94_02243048(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            if (param0->unk_12C.unk_121) {
                param0->unk_2C = 24;
            } else {
                ov94_02243BC4(param0, (Pokemon *)param0->unk_12C.unk_00.unk_00, sub_0202DAAC(param0->unk_00->unk_00), param0->unk_12C.unk_121);
                param0->unk_2C = 30;
            }
            break;
        case -3:
            param0->unk_2C = 38;
            break;
        case -4:
            param0->unk_2C = 38;
            break;
        case -12:
            param0->unk_3C = v0;
            param0->unk_2C = 39;
            break;
        case -15:
        case -2:
        case -14:
            param0->unk_3C = v0;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243104(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B96C();

    param0->unk_2C = 10;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02243120(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -3:
        case -4:
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_022431A4(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0207893C((Pokemon *)param0->unk_12C.unk_00.unk_00);

    ov94_0223BA88(param0->unk_250[param0->unk_11C].unk_108, &param0->unk_12C, &param0->unk_A4C);
    ov94_02243EC8(param0, 14, 16);

    param0->unk_2C = 13;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022431F0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    if ((v0 = ov94_0223B7B8())) {
        s32 v1 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v1) {
        case 0:
            param0->unk_2C = 30;

            ov94_02243B08(param0, 0);
            ov94_02243CE4(param0, (Pokemon *)param0->unk_A4C.unk_00.unk_00, param0->unk_110);
            ov94_02243E2C(param0->unk_00->unk_18, &param0->unk_A4C);
            GameRecords_IncrementTrainerScore(param0->unk_00->records, TRAINER_SCORE_EVENT_UNK_25);
            ov94_02243E48(param0->unk_00->unk_2C, &param0->unk_A4C);
            GameRecords_IncrementRecordValue(param0->unk_00->records, RECORD_UNK_024);

            {
                TVBroadcast *v2;

                v2 = SaveData_TVBroadcast(param0->unk_00->unk_20);
                sub_0206D104(v2);
            }
            break;
        case -5:
            param0->unk_3C = v1;
            param0->unk_2C = 17;
            break;
        case -6:
        case -7:
        case -8:
        case -9:
        case -10:
        case -11:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -12:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -2:
        case -14:
        case -15:
            param0->unk_3C = v1;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_022432D8(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223BAEC();

    param0->unk_2C = 15;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022432F4(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -2:
        case -14:
        case -15:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243378(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B8D8(&param0->unk_12C);

    param0->unk_2C = 25;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02243398(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();
        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 26;
            break;
        case 1:
            param0->unk_36 = 1;

            switch (ov94_02243E84(param0, &param0->unk_12C)) {
            case 1:
                ov94_0223C5F4(param0);
                ov94_02245824(param0, param0->unk_B90, 29, TEXT_SPEED_FAST, 0xf0f);
                ov94_0223C3F4(param0, 37, 28);
                break;
            case 2:
                ov94_0223C5F4(param0);
                ov94_02245824(param0, param0->unk_B90, 35, TEXT_SPEED_FAST, 0xf0f);
                ov94_0223C3F4(param0, 37, 28);
                break;
            case 0:
                param0->unk_2C = 18;
                param0->unk_1110 = 1;
                break;
            }
            break;
        case -3:
            param0->unk_36 = 0;

            if (sub_0202DA60(param0->unk_00->unk_00)) {
                Pokemon *v1 = Pokemon_New(62);

                sub_0202DA70(param0->unk_00->unk_00, v1);
                StringTemplate_SetNickname(param0->unk_B8C, 0, Pokemon_GetBoxPokemon(v1));

                param0->unk_28 = 2;
                param0->unk_2C = 34;

                ov94_02243BC4(param0, v1, sub_0202DAAC(param0->unk_00->unk_00), 0);

                sub_0202DA68(param0->unk_00->unk_00, 0);
                Heap_FreeToHeap(v1);
            } else {
                ov94_0224362C(param0);
            }
            break;
        case -4:
            param0->unk_36 = 0;

            if (sub_0202DA60(param0->unk_00->unk_00)) {
                Pokemon *v2 = Pokemon_New(62);

                sub_0202DA70(param0->unk_00->unk_00, v2);
                StringTemplate_SetNickname(param0->unk_B8C, 0, Pokemon_GetBoxPokemon(v2));

                param0->unk_28 = 3;
                param0->unk_2C = 34;

                sub_0202DA68(param0->unk_00->unk_00, 0);
                Heap_FreeToHeap(v2);
            }
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            param0->unk_3C = v0;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02039834(3, 1, 0);
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243554(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C4C0(param0, 1, 0);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_02243568(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B888(&param0->unk_12C);

    param0->unk_2C = 27;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02243588(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            if (ov94_02243ED8(param0)) {
                param0->unk_2C = 22;
                param0->unk_36 = 0;
                return 3;
            } else {
                param0->unk_36 = 1;
            }

            {
                UnkStruct_ov94_0223BA88 *v1 = &param0->unk_12C;
            }
            break;
        case -3:
            param0->unk_36 = 0;
            break;
        case -4:
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            param0->unk_3C = v0;
            param0->unk_2C = 38;
            return 3;
        case -13:
            sub_02038A0C();
            return 3;
        }

        ov94_0224362C(param0);
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static void ov94_0224362C(UnkStruct_ov94_0223FD4C *param0)
{
    switch (param0->unk_1C) {
    case 1:
        ov94_0223C4C0(param0, 1, 0);
        param0->unk_2C = 36;
        break;
    case 2:
        ov94_0223C4C0(param0, 2, 3);
        param0->unk_2C = 36;
        break;
    }
}

static int ov94_02243658(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02243BC4(param0, (Pokemon *)param0->unk_12C.unk_00.unk_00, sub_0202DAAC(param0->unk_00->unk_00), param0->unk_12C.unk_121);
    ov94_02243E2C(param0->unk_00->unk_18, &param0->unk_12C);

    GameRecords_IncrementTrainerScore(param0->unk_00->records, TRAINER_SCORE_EVENT_UNK_25);
    ov94_02243E48(param0->unk_00->unk_2C, &param0->unk_12C);
    GameRecords_IncrementRecordValue(param0->unk_00->records, RECORD_UNK_024);

    {
        TVBroadcast *v0;

        v0 = SaveData_TVBroadcast(param0->unk_00->unk_20);
        sub_0206D104(v0);
    }

    sub_0202DA68(param0->unk_00->unk_00, 0);
    param0->unk_2C = 30;
    ov94_02243EC8(param0, 19, 11);

    return 3;
}

static int ov94_022436D4(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B928();

    param0->unk_2C = 20;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022436F0(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -3:
            Link_SetErrorState(3);
            break;
        case -4:
        case -12:
            param0->unk_3C = v0;
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243778(UnkStruct_ov94_0223FD4C *param0)
{
    return 3;
}

static int ov94_0224377C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_36 = 1;
    ov94_0223C4C0(param0, 9, 7);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_02243794(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_36 = 0;
    ov94_0223C4C0(param0, 9, 8);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_022437AC(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C4C0(param0, 9, 9);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_022437C0(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_36 = 0;
    ov94_0223C4C0(param0, 9, 10);
    param0->unk_2C = 30;

    return 3;
}

static int ov94_022437D8(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B96C();

    param0->unk_2C = 23;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022437F4(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();
        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            ov94_0224362C(param0);
            break;
        case -3:
            ov94_0224362C(param0);
        case -4:
            ov94_0224362C(param0);
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243884(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02245824(param0, param0->unk_B90, 141, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 37, 36);
    ov94_0223C4C0(param0, 1, 0);
    ov94_0223C5F4(param0);
    ov94_022442E4(param0);

    return 3;
}

static void ov94_022438C8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = 148;

    switch (param0->unk_3C) {
    case -6:
    case -7:
    case -8:
    case -9:
    case -10:
    case -11:
        v0 = 26;
        break;
    case -1:
        v0 = 145;
        break;
    case -2:
    case -14:
        v0 = 150;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
        v0 = 148;
        break;
    }

    ov94_02245824(param0, param0->unk_B90, v0, TEXT_SPEED_FAST, 0xf0f);
}

static int ov94_02243920(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_022438C8(param0);
    ov94_0223C3F4(param0, 37, 36);
    ov94_0223C4C0(param0, 0, 0);
    ov94_0223C5F4(param0);

    return 3;
}

static int ov94_02243948(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_022438C8(param0);
    ov94_0223C3F4(param0, 37, 36);
    ov94_0223C4C0(param0, 1, 0);
    ov94_0223C5F4(param0);
    ov94_022442E4(param0);

    return 3;
}

static int ov94_02243974(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C3F4(param0, 37, 30);
    ov94_02243EC8(param0, 33, 36);

    return 3;
}

static int ov94_02243990(UnkStruct_ov94_0223FD4C *param0)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(param0->unk_00->unk_20, 2);

    param0->unk_2C = 31;
    param0->unk_10E0 = inline_020564D0(60) + 2;

    return 3;
}

static int ov94_022439CC(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10E0--;

    if (param0->unk_10E0 == 0) {
        param0->unk_2C = 32;
    }

    return 3;
}

static int ov94_022439E4(UnkStruct_ov94_0223FD4C *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->unk_20) == 1) {
        param0->unk_2C = param0->unk_10E8;
    }

    return 3;
}

static int ov94_02243A04(UnkStruct_ov94_0223FD4C *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->unk_20) == 2) {
        param0->unk_2C = param0->unk_10EA;
        ov94_0223C5F4(param0);
    }

    return 3;
}

static int ov94_02243A28(UnkStruct_ov94_0223FD4C *param0)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(param0->unk_00->unk_20, 2);

    param0->unk_2C = 35;

    return 3;
}

static int ov94_02243A44(UnkStruct_ov94_0223FD4C *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->unk_20) == 2) {
        ov94_0223C4C0(param0, 1, 0);
        ov94_0223C5F4(param0);
        ov94_02245824(param0, param0->unk_B90, param0->unk_28, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 28);
    }

    return 3;
}

static int ov94_02243A90(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C5F4(param0);
    sub_02039794();

    if (param0->unk_1110 == 1) {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 62);
    } else {
        sub_0200F174(3, 0, 0, 0x0, 6, 1, 62);
    }

    param0->unk_2C = 0;

    return 4;
}

static int ov94_02243AE8(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static void ov94_02243B08(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    if (param0->unk_110 != 18) {
        Pokemon *v0 = Pokemon_New(62);

        Pokemon_FromBoxPokemon(sub_02079C9C(param0->unk_00->unk_0C, param0->unk_110, param0->unk_112), v0);
        sub_0202DA7C(param0->unk_00->unk_00, v0, param0->unk_110);
        sub_02079968(param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);
        Heap_FreeToHeap(v0);
    } else {
        Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_112);

        sub_0207893C(v1);
        sub_0202DA7C(param0->unk_00->unk_00, v1, param0->unk_110);
        Party_RemovePokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_112);

        if (Party_HasSpecies(param0->unk_00->unk_08, 441) == 0) {
            ChatotCry *v2 = GetChatotCryDataFromSave(param0->unk_00->unk_20);
            ResetChatotCryDataStatus(v2);
        }
    }

    if (param1) {
        sub_0202DA68(param0->unk_00->unk_00, 1);
    }
}

static void ov94_02243BC4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2, int param3)
{
    int v0 = Pokemon_GetValue(param1, MON_DATA_HELD_ITEM, NULL);

    sub_0202F180(param0->unk_00->unk_20, param1);
    param2 = 18;

    if (Party_GetCurrentCount(param0->unk_00->unk_08) == 6) {
        param2 = 0;
    }

    if (param3) {
        u8 v1 = 70;

        if (Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
            if (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(param1, MON_DATA_HATCH_LOCATION, NULL) == 86) && (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 0))) {
                VarsFlags *v2 = SaveData_GetVarsFlags(param0->unk_00->unk_20);

                if (sub_0206B5F8(v2) == 0) {
                    sub_0206B608(v2, 1);
                }
            }
        }

        Pokemon_SetValue(param1, 9, &v1);
        Pokemon_SetValue(param1, 111, NULL);

        ov94_02243DE8(param0->unk_00->unk_00, 0);
    }

    if (param2 == 18) {
        int v3;

        Party_AddPokemon(param0->unk_00->unk_08, param1);
        v3 = Party_GetCurrentCount(param0->unk_00->unk_08);

        param0->unk_124.unk_00 = 18;
        param0->unk_124.unk_04 = v3 - 1;
    } else {
        int v4 = 0;

        sub_020799F0(param0->unk_00->unk_0C, &param2, &v4);
        sub_020798A0(param0->unk_00->unk_0C, param2, Pokemon_GetBoxPokemon(param1));

        param0->unk_124.unk_00 = param2;
        param0->unk_124.unk_04 = v4;
    }

    sub_0202DA68(param0->unk_00->unk_00, 0);
}

static void ov94_02243CE4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2)
{
    sub_0202F180(param0->unk_00->unk_20, param1);

    param2 = 18;

    if (Party_GetCurrentCount(param0->unk_00->unk_08) == 6) {
        param2 = 0;
    }

    if (Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
        if (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(param1, MON_DATA_HATCH_LOCATION, NULL) == 86) && (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 0))) {
            VarsFlags *v0 = SaveData_GetVarsFlags(param0->unk_00->unk_20);

            if (sub_0206B5F8(v0) == 0) {
                sub_0206B608(v0, 1);
            }
        }
    }

    {
        u8 v1 = 70;
        Pokemon_SetValue(param1, 9, &v1);
    }

    Pokemon_SetValue(param1, 111, NULL);

    if (param2 == 18) {
        int v2;

        Party_AddPokemon(param0->unk_00->unk_08, param1);
        v2 = Party_GetCurrentCount(param0->unk_00->unk_08);

        param0->unk_124.unk_00 = 18;
        param0->unk_124.unk_04 = v2 - 1;
    } else {
        int v3 = 0;

        sub_020799F0(param0->unk_00->unk_0C, &param2, &v3);
        sub_020798A0(param0->unk_00->unk_0C, param2, Pokemon_GetBoxPokemon(param1));

        param0->unk_124.unk_00 = param2;
        param0->unk_124.unk_04 = v3;
    }

    ov94_02243DE8(param0->unk_00->unk_00, 1);
}

static void ov94_02243DE8(UnkStruct_0202DA40 *param0, int param1)
{
    RTCDate v0;
    RTCTime v1;
    u32 v2;

    DWC_GetDateTime(&v0, &v1);

    v2 = inline_0202D4B0(&v0);

    if (param1 == 1) {
        sub_0202DAA4(param0, v2);
    } else {
        sub_0202DA94(param0, v2);
    }
}

static void ov94_02243E2C(UnkStruct_0202C878 *param0, UnkStruct_ov94_0223BA88 *param1)
{
    sub_02038FDC(param0, param1->unk_11E, param1->unk_11F, param1->unk_123);
}

static void ov94_02243E48(Journal *param0, UnkStruct_ov94_0223BA88 *param1)
{
    void *v0;
    u16 v1[10 + 1];
    Pokemon *v2 = (Pokemon *)param1->unk_00.unk_00;

    Pokemon_GetValue(v2, MON_DATA_NICKNAME, v1);
    v0 = sub_0202C1EC(param1->unk_10C, param1->unk_F6, v1, Pokemon_GetGender(v2), 62);
    Journal_SaveData(param0, v0, 4);
}

static int ov94_02243E84(UnkStruct_ov94_0223FD4C *param0, UnkStruct_ov94_0223BA88 *param1)
{
    if (ov94_02241498((Pokemon *)param1->unk_00.unk_00)
        && (Party_GetCurrentCount(param0->unk_00->unk_08) == 6)) {
        return 2;
    }

    if ((param0->unk_110C == (5 * 6 * 18)) && (Party_GetCurrentCount(param0->unk_00->unk_08) == 6)) {
        return 1;
    }

    return 0;
}

static void ov94_02243EC8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2)
{
    param0->unk_10E8 = param1;
    param0->unk_10EA = param2;
}

static int ov94_02243ED8(UnkStruct_ov94_0223FD4C *param0)
{
    Pokemon *v0 = (Pokemon *)param0->unk_12C.unk_00.unk_00;

    if (sub_0202DA60(param0->unk_00->unk_00) == 0) {
        if (param0->unk_36) {
            return 1;
        }
    }

    return 0;
}
