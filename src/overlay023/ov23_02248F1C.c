#include "overlay023/ov23_02248F1C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/struct_ov23_0224942C_decl.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "gx_layers.h"
#include "narc.h"
#include "player_avatar.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0205D8CC.h"

typedef struct {
    Strbuf *unk_00[32];
    Strbuf *unk_80;
    Strbuf *unk_84[2];
    int unk_8C;
    int unk_90;
    u16 unk_94[80];
} UnkStruct_ov23_02249724;

struct UnkStruct_ov23_0224942C_t {
    int unk_00;
    int unk_04[8][2];
    int unk_44[8][3];
    int unk_A4[17][4];
    FieldSystem *fieldSystem;
    BGL *unk_1B8;
    CellActorCollection *unk_1BC;
    UnkStruct_0200C738 unk_1C0;
    SpriteResourceCollection *unk_34C[4];
    SpriteResource *unk_35C[4];
    CellActorResourceData unk_36C;
    CellActor *unk_390[8];
    CellActor *unk_3B0[17];
    Window unk_3F4;
    int unk_404;
    int unk_408;
    int unk_40C;
    UnkStruct_ov23_02249724 unk_410;
};

int Unk_ov23_0225776C[8][2];

static void ov23_0224944C(BGL *param0, Window *param1);
static void ov23_02249584(UnkStruct_ov23_0224942C *param0);
static void ov23_02249214(PlayerAvatar *const playerAvatar, int param1[][2], int param2[][3]);
static void ov23_022491CC(int param0[][2], int param1[][3]);
static void ov23_022492C8(int param0[][3], CellActor *param1[]);
static void ov23_0224944C(BGL *param0, Window *param1);
static void ov23_02249438(BGL *param0);
static void ov23_0224966C(BGL *param0, Window *param1, int *param2, int *param3, int *param4, UnkStruct_ov23_02249724 *param5);
static void ov23_02249724(UnkStruct_ov23_02249724 *param0);
static void ov23_02249778(UnkStruct_ov23_02249724 *param0);
static int ov23_02249844(UnkStruct_ov23_02249724 *param0, Strbuf *param1);
static Strbuf *ov23_022498C4(UnkStruct_ov23_02249724 *param0);
static int ov23_02249900(UnkStruct_ov23_02249724 *param0);
static void ov23_0224937C(int param0[][4], CellActor *param1[]);
static void ov23_02249334(int param0[][4]);

static UnkStruct_ov23_0224942C *Unk_ov23_02257768;

static void ov23_02248F1C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224942C *v0 = param1;
    BGL *v1 = v0->unk_1B8;
    int v2;

    Unk_ov23_02257768 = v0;

    switch (v0->unk_00) {
    case 0:
        ov23_0224944C(v1, &v0->unk_3F4);
        ov23_022491CC(v0->unk_04, v0->unk_44);
        ov23_02249724(&v0->unk_410);
        v0->unk_00++;
        break;
    case 1:
        ov23_02249584(v0);
        sub_020093B4(&v0->unk_36C, 1000, 1000, 1000, 1000, 0xffffffff, 0xffffffff, 0, 0, v0->unk_34C[0], v0->unk_34C[1], v0->unk_34C[2], v0->unk_34C[3], NULL, NULL);

        {
            CellActorInitParamsEx v3;

            v3.collection = v0->unk_1BC;
            v3.resourceData = &v0->unk_36C;
            v3.position.x = FX32_CONST(32);
            v3.position.y = FX32_CONST(96) + (192 << FX32_SHIFT);
            v3.position.z = 0;
            v3.affineScale.x = FX32_ONE;
            v3.affineScale.y = FX32_ONE;
            v3.affineScale.z = FX32_ONE;
            v3.affineZRotation = 0;
            v3.priority = 0;
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
            v3.heapID = 4;

            for (v2 = 0; v2 < (7 + 1); v2++) {
                v0->unk_390[v2] = CellActorCollection_AddEx(&v3);
                CellActor_SetAnimateFlag(v0->unk_390[v2], 1);
                CellActor_SetDrawFlag(v0->unk_390[v2], 0);

                if (v2 == 0) {
                    CellActor_SetAnim(v0->unk_390[v2], 1);
                }
            }

            for (v2 = 0; v2 < 16 + 1; v2++) {
                v0->unk_3B0[v2] = CellActorCollection_AddEx(&v3);
                CellActor_SetAnimateFlag(v0->unk_3B0[v2], 1);
                CellActor_SetDrawFlag(v0->unk_3B0[v2], 0);
                CellActor_SetAnim(v0->unk_3B0[v2], 2);
            }
        }

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        v0->unk_00++;
        break;
    case 2:
        v0->unk_00++;
        break;
    case 3:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        sub_0201975C(4, 0);
        v0->unk_00++;
        break;
    case 4:
        v0->unk_00++;
        break;
    case 5:
        ov23_02249214(v0->fieldSystem->playerAvatar, v0->unk_04, v0->unk_44);
        ov23_022492C8(v0->unk_44, v0->unk_390);
        ov23_02249334(v0->unk_A4);
        ov23_0224937C(v0->unk_A4, v0->unk_3B0);
        ov23_0224966C(v0->unk_1B8, &v0->unk_3F4, &v0->unk_404, &v0->unk_408, &v0->unk_40C, &v0->unk_410);
        CellActorCollection_Update(v0->unk_1BC);
        break;
    case 6:
        if (FieldMessage_FinishedPrinting(v0->unk_404)) {
            v0->unk_00++;
        }
        break;
    case 7:
        sub_0200A4E4(v0->unk_35C[0]);
        sub_0200A6DC(v0->unk_35C[1]);

        for (v2 = 0; v2 < 4; v2++) {
            SpriteResourceCollection_Delete(v0->unk_34C[v2]);
        }

        CellActorCollection_Delete(v0->unk_1BC);
        sub_0200E084(&v0->unk_3F4, 0);
        BGL_DeleteWindow(&v0->unk_3F4);
        sub_02019044(v1, 7);

        ov23_02249438(v1);
        ov23_02249778(&v0->unk_410);

        v0->unk_00++;
        break;
    case 8:
        v0->fieldSystem->unk_6C = NULL;
        SysTask_FinishAndFreeParam(param0);
        break;
    }
}

static void ov23_022491CC(int param0[][2], int param1[][3])
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        param0[v0][0] = 0;
        param0[v0][1] = 0;
        param1[v0][0] = 0;
        param1[v0][1] = 0;
        param1[v0][2] = 0;

        Unk_ov23_0225776C[v0][0] = LCRNG_Next() % 500 + 50;
        Unk_ov23_0225776C[v0][1] = LCRNG_Next() % 500 + 50;
    }
}

static void ov23_02249214(PlayerAvatar *const playerAvatar, int param1[][2], int param2[][3])
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        param1[v0][0] = CommPlayer_XPos(v0);
        param1[v0][1] = CommPlayer_ZPos(v0);
    }

    if (CommSys_IsInitialized()) {
        if (CommSys_IsPlayerConnected(CommSys_CurNetId()) == 0) {
            param1[0][0] = Player_GetXPos(playerAvatar);
            param1[0][1] = Player_GetZPos(playerAvatar);
        } else {
            int v1 = param1[0][0];
            int v2 = param1[0][1];

            param1[0][0] = param1[CommSys_CurNetId()][0];
            param1[0][1] = param1[CommSys_CurNetId()][1];
            param1[CommSys_CurNetId()][0] = v1;
            param1[CommSys_CurNetId()][1] = v2;
        }
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (!ov23_02242E58(param1[v0][0], param1[v0][1])) {
            param2[v0][0] = param1[v0][0] - 32;
            param2[v0][1] = param1[v0][1] - 64;
            param2[v0][2] = 60;
        } else {
            if (param2[v0][2] != 0) {
                if (param2[v0][0] >= 0) {
                    param2[v0][2]--;
                }
            }
        }
    }
}

static void ov23_022492C8(int param0[][3], CellActor *param1[])
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (param0[v0][2] != 0) {
            VecFx32 v1;

            v1.x = ((7 * 8 + 4) + ((((7 * 8 + 4) + 8 * 17 + 2) - (7 * 8 + 4)) * param0[v0][0]) / (32 * 14)) * FX32_ONE;
            v1.y = ((8 + 1) + ((((8 + 1) + 8 * 16) - (8 + 1)) * param0[v0][1]) / (32 * 13)) * FX32_ONE + (192 << FX32_SHIFT);
            v1.z = FX32_ONE;

            CellActor_SetPosition(param1[v0], &v1);
            CellActor_SetDrawFlag(param1[v0], 1);
        } else {
            CellActor_SetDrawFlag(param1[v0], 0);
        }
    }
}

static void ov23_02249334(int param0[][4])
{
    int v0, v1, v2, v3;

    for (v0 = 0; v0 < 16 + 1; v0++) {
        v1 = ov23_02242E78(v0);
        v2 = ov23_02242EE0(v0);
        v3 = ov23_02242F48(v0);

        if (!ov23_02242E58(v1, v2)) {
            param0[v0][0] = v1 - 32;
            param0[v0][1] = v2 - 64;
            param0[v0][2] = v3;
        } else {
            param0[v0][0] = 0;
            param0[v0][1] = 0;
            param0[v0][2] = 0;
        }
    }
}

static void ov23_0224937C(int param0[][4], CellActor *param1[])
{
    int v0;

    for (v0 = 0; v0 < 16 + 1; v0++) {
        if (param0[v0][0] != 0) {
            VecFx32 v1;

            v1.x = ((7 * 8 + 4) + ((((7 * 8 + 4) + 8 * 17 + 2) - (7 * 8 + 4)) * param0[v0][0]) / (32 * 14)) * FX32_ONE;
            v1.y = ((8 + 1) + ((((8 + 1) + 8 * 16) - (8 + 1)) * param0[v0][1]) / (32 * 13)) * FX32_ONE + (192 << FX32_SHIFT);
            v1.z = FX32_ONE;

            CellActor_SetPosition(param1[v0], &v1);

            if (param0[v0][2] != param0[v0][3]) {
                if (param0[v0][2] != 0) {
                    CellActor_SetAnim(param1[v0], param0[v0][2]);
                    CellActor_SetDrawFlag(param1[v0], 1);
                } else {
                    CellActor_SetDrawFlag(param1[v0], 0);
                }
            }
        } else {
            CellActor_SetDrawFlag(param1[v0], 0);
        }

        param0[v0][3] = param0[v0][2];
    }
}

UnkStruct_ov23_0224942C *ov23_02249404(FieldSystem *fieldSystem)
{
    UnkStruct_ov23_0224942C *v0;
    SysTask *v1;

    v1 = SysTask_StartAndAllocateParam(ov23_02248F1C, sizeof(UnkStruct_ov23_0224942C), 4, 4);
    v0 = SysTask_GetParam(v1);

    v0->fieldSystem = fieldSystem;
    v0->unk_1B8 = fieldSystem->unk_08;

    return v0;
}

void ov23_0224942C(UnkStruct_ov23_0224942C *param0)
{
    if (param0->unk_00 == 5) {
        param0->unk_00 = 6;
    } else {
        GF_ASSERT("FALSE");
    }
}

static void ov23_02249438(BGL *param0)
{
    sub_02019044(param0, 4);
    sub_02019044(param0, 5);
}

static void ov23_0224944C(BGL *param0, Window *param1)
{
    sub_0200F344(1, 0x0);
    ov23_02249438(param0);

    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v1, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 7, &v2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
        sub_02019EBC(param0, 7);
    }

    {
        NARC *v3;

        v3 = NARC_ctor(NARC_INDEX_DATA__UNDERG_RADAR, 4);

        sub_02007130(v3, 0, 4, 0, 0x20 * 2, 4);
        sub_020070E8(v3, 1, param0, 4, 0, 32 * 5 * 0x20, 0, 4);
        sub_0200710C(v3, 2, param0, 4, 0, 32 * 24 * 2, 0, 4);
        NARC_dtor(v3);
    }

    sub_0205D8CC(4, 0);
    sub_02019690(7, 32, 0, 4);
    FieldMessage_AddWindow(param0, param1, 7);
    BGL_FillWindow(param1, 0);
    sub_02006E84(50, 52, 4, 10 * 0x20, 4 * 0x20, 4);
    sub_0200F338(1);
}

static void ov23_02249584(UnkStruct_ov23_0224942C *param0)
{
    int v0;

    param0->unk_1BC = sub_020095C4(((7 + 1) + 16 + 1), &param0->unk_1C0, 4);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_34C[v0] = SpriteResourceCollection_New(1, v0, 4);
    }

    {
        NARC *v1;

        v1 = NARC_ctor(NARC_INDEX_DATA__UNDERG_RADAR, 4);

        param0->unk_35C[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_34C[0], v1, 4, 0, 1000, NNS_G2D_VRAM_TYPE_2DSUB, 4);
        param0->unk_35C[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_34C[1], v1, 3, 0, 1000, NNS_G2D_VRAM_TYPE_2DSUB, 2, 4);
        param0->unk_35C[2] = SpriteResourceCollection_AddFrom(param0->unk_34C[2], v1, 5, 0, 1000, 2, 4);
        param0->unk_35C[3] = SpriteResourceCollection_AddFrom(param0->unk_34C[3], v1, 6, 0, 1000, 3, 4);

        NARC_dtor(v1);
    }

    sub_0200A3DC(param0->unk_35C[0]);
    sub_0200A640(param0->unk_35C[1]);
}

static void ov23_0224966C(BGL *param0, Window *param1, int *param2, int *param3, int *param4, UnkStruct_ov23_02249724 *param5)
{
    Strbuf *v0;

    while (ov23_02242D60(param5->unk_80)) {
        ov23_02249844(param5, param5->unk_80);
    }

    switch (*param3) {
    case 0:
        if ((v0 = ov23_022498C4(param5)) != NULL) {
            *param2 = Text_AddPrinterWithParams(
                param1, FONT_MESSAGE, v0, 0, 16, TEXT_SPEED_FAST, NULL);
            *param3 = 1;
        }
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(*param2)) {
            *param3 = 2;
            *param4 = 0;
        }
        break;
    case 2:
        if (ov23_02249900(param5) == 0) {
            sub_0201C04C(param1, 0, 2, 0x0);
            sub_0201A954(param1);

            if (++(*param4) >= 8) {
                *param4 = 0;
                *param3 = 0;
            }
        }
        break;
    }
}

static void ov23_02249724(UnkStruct_ov23_02249724 *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_00[v0] = Strbuf_Init((50 * 2), 4);
    }

    param0->unk_8C = 0;
    param0->unk_90 = 0;
    param0->unk_80 = Strbuf_Init((50 * 2), 4);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_84[v0] = Strbuf_Init((20 * 2 * 2), 4);
    }
}

static void ov23_02249778(UnkStruct_ov23_02249724 *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        Strbuf_Free(param0->unk_00[v0]);
    }

    Strbuf_Free(param0->unk_80);

    for (v0 = 0; v0 < 2; v0++) {
        Strbuf_Free(param0->unk_84[v0]);
    }
}

static int ov23_022497B0(UnkStruct_ov23_02249724 *param0, Strbuf *param1)
{
    int v0, v1, v2;

    Strbuf_ToChars(param1, param0->unk_94, (20 * 2 * 2));

    v1 = 0;
    v0 = 0;

    while (param0->unk_94[v0] != 0xffff) {
        if (param0->unk_94[v0] == 0xe000) {
            v1++;
            v2 = v0;
        }

        v0++;
    }

    GF_ASSERT(v1 < 2);

    if (v1 == 0) {
        Strbuf_Copy(param0->unk_84[0], param1);
        return 1;
    } else {
        param0->unk_94[v2] = 0xffff;
        Strbuf_CopyChars(param0->unk_84[0], param0->unk_94);
        Strbuf_CopyChars(param0->unk_84[1], &param0->unk_94[v2 + 1]);
    }

    return 2;
}

static int ov23_02249844(UnkStruct_ov23_02249724 *param0, Strbuf *param1)
{
    int v0, v1, v2;

    v2 = ov23_022497B0(param0, param1);
    v0 = param0->unk_8C;

    for (v1 = 0; v1 < v2; v1++) {
        if (++v0 == 32) {
            v0 = 0;
        }

        if (v0 == param0->unk_90) {
            return 0;
        }
    }

    for (v1 = 0; v1 < v2; v1++) {
        Strbuf_Copy(param0->unk_00[param0->unk_8C], param0->unk_84[v1]);
        param0->unk_8C++;

        if (param0->unk_8C == 32) {
            param0->unk_8C = 0;
        }
    }

    return 1;
}

static Strbuf *ov23_022498C4(UnkStruct_ov23_02249724 *param0)
{
    int v0;

    if (param0->unk_8C != param0->unk_90) {
        v0 = param0->unk_90;

        if (++param0->unk_90 == 32) {
            param0->unk_90 = 0;
        }

        return param0->unk_00[v0];
    }

    return NULL;
}

static int ov23_02249900(UnkStruct_ov23_02249724 *param0)
{
    if (param0->unk_8C != param0->unk_90) {
        return 0;
    }

    return 1;
}
