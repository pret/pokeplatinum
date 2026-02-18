#include "overlay108/ov108_02241AE0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_ov104_02238240.h"
#include "overlay108/ov108_02243030.h"
#include "overlay108/ov108_0224351C.h"
#include "overlay108/ov108_02243630.h"
#include "overlay108/struct_ov108_02241DB0_decl.h"
#include "overlay108/struct_ov108_02243030.h"
#include "overlay108/struct_ov108_02243594_decl.h"

#include "bg_window.h"
#include "communication_system.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_oam.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay104);

static const u8 Unk_ov108_0224368F[8][2] = {
    { 0x14, 0x0 },
    { 0x10, 0x0 },
    { 0x8, 0x0 },
    { 0x4, 0x0 },
    { 0x3, 0x0 },
    { 0x2, 0x0 },
    { 0x1, 0x0 },
    { 0x0, 0x0 }
};

typedef struct {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 1;
    u8 unk_00_2 : 1;
    u8 unk_00_3 : 1;
    u8 unk_00_4 : 1;
    u8 unk_00_5 : 1;
    u8 unk_00_6 : 1;
    u8 unk_00_7 : 1;
} UnkStruct_ov108_02243718;

static const UnkStruct_ov108_02243718 Unk_ov108_02243718[] = {
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0 }
};

typedef struct {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 1;
    u8 unk_00_2 : 1;
    u8 unk_00_3 : 1;
    u8 unk_00_4 : 1;
    u8 unk_00_5 : 1;
    u8 unk_00_6 : 1;
    u8 unk_00_7 : 1;
} UnkStruct_ov108_02243680;

static const UnkStruct_ov108_02243680 Unk_ov108_02243680[7] = {
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0 }
};

static const u8 Unk_ov108_022436B0[][4] = {
    { 0xF, 0xF, 0x28, 0x1E },
    { 0x23, 0x14, 0x1E, 0xF },
    { 0x1E, 0x1E, 0x23, 0x5 },
    { 0x19, 0x28, 0x1E, 0x5 },
    { 0xA, 0x4B, 0xA, 0x5 }
};

static const u8 Unk_ov108_0224367C[] = {
    0x15,
    0x10,
    0xA,
    0x5
};

struct UnkStruct_ov108_02241DB0_t {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13_0 : 1;
    u8 unk_13_1 : 7;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    int unk_18;
    u8 *unk_1C;
    u8 *unk_20;
    u16 *unk_24;
    u16 unk_28;
    u16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F_0 : 1;
    u8 unk_2F_1 : 7;
    u8 unk_30[4];
    u8 unk_34[16];
    u8 unk_44[32];
    u8 unk_64;
    MessageLoader *unk_68;
    StringTemplate *unk_6C;
    String *unk_70;
    String *unk_74;
    String *unk_78[2];
    u16 unk_80[8];
    BgConfig *unk_90;
    Window unk_94[2];
    MenuTemplate unk_B4;
    Menu *unk_C0;
    StringList unk_C4[2];
    PaletteData *unk_D4;
    Options *options;
    SaveData *saveData;
    UnkStruct_020304A0 *unk_E0;
    UnkStruct_020305B8 *unk_E4;
    UnkStruct_ov108_02243030 unk_E8;
    UnkStruct_ov108_02243594 *unk_338;
    UnkStruct_ov108_02243594 *unk_33C[16];
    UnkStruct_ov108_02243594 *unk_37C[4];
    UnkStruct_ov108_02243594 *unk_38C[4];
    UnkStruct_ov108_02243594 *unk_39C[4];
    UnkStruct_ov108_02243594 *unk_3AC[4];
    UnkStruct_ov108_02243594 *unk_3BC;
    int *unk_3C0;
    u16 *unk_3C4;
    Party *unk_3C8;
    Party *unk_3CC;
    NARC *unk_3D0;
    u16 unk_3D4[40];
    u8 unk_424;
    u8 unk_425;
    u16 unk_426;
    u16 unk_428;
    u32 unk_42C;
};

int ov108_02241AE0(ApplicationManager *appMan, int *param1);
int ov108_02241C38(ApplicationManager *appMan, int *param1);
int ov108_02241D70(ApplicationManager *appMan, int *param1);
static BOOL ov108_02241DB0(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02241F28(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02242104(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02242198(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_022421F0(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242238(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242344(void);
static void ov108_0224237C(UnkStruct_ov108_02241DB0 *param0);
static void ov108_022426B0(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242658(UnkStruct_ov108_02241DB0 *param0);
static void ov108_022426D4(BgConfig *param0);
static void ov108_02242708(void *param0);
static void ov108_02242740(void);
static void ov108_02242760(BgConfig *param0);
static void ov108_02242828(UnkStruct_ov108_02241DB0 *param0, u32 param1);
static void ov108_02242884(UnkStruct_ov108_02241DB0 *param0, u32 param1);
static void ov108_022428C0(void);
static void ov108_022428F4(UnkStruct_ov108_02241DB0 *param0, u32 param1);
static void ov108_0224295C(UnkStruct_ov108_02241DB0 *param0, int *param1, int param2);
static void ov108_02242964(UnkStruct_ov108_02241DB0 *param0, int param1);
static void ov108_022429C8(UnkStruct_ov108_02241DB0 *param0, u8 param1);
static void ov108_022429FC(UnkStruct_ov108_02241DB0 *param0);
static u8 ov108_02242A04(u8 param0, u8 param1);
static u16 ov108_02242A14(UnkStruct_ov108_02241DB0 *param0);
BOOL ov108_02242A38(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2);
void ov108_02242A7C(UnkStruct_ov108_02241DB0 *param0, u16 param1);
void ov108_02242AB0(int param0, int param1, void *param2, void *param3);
void ov108_02242AE8(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2);
void ov108_02242B24(int param0, int param1, void *param2, void *param3);
void ov108_02242B74(UnkStruct_ov108_02241DB0 *param0, u16 param1);
void ov108_02242B84(int param0, int param1, void *param2, void *param3);
static void ov108_02242BA0(UnkStruct_ov108_02241DB0 *param0, u8 param1);
static u8 ov108_02242EF4(UnkStruct_ov108_02241DB0 *param0, u8 param1);
static void ov108_02242BF0(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242D5C(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242E10(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242F38(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02242FE8(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02243008(UnkStruct_ov108_02241DB0 *param0);
static u16 ov108_02242B1C(UnkStruct_ov108_02241DB0 *param0);

static u8 Unk_ov108_022437A0;
static u8 Unk_ov108_022437A1;

static const TouchScreenHitTable Unk_ov108_02243687[] = {
    { TOUCHSCREEN_USE_CIRCLE, 0x80, 0x60, 0x20 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

int ov108_02241AE0(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov108_02241DB0 *v1;
    UnkStruct_ov104_02238240 *v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov108_02242344();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_103, 0x20000);

    v1 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov108_02241DB0), HEAP_ID_103);
    memset(v1, 0, sizeof(UnkStruct_ov108_02241DB0));

    v1->unk_90 = BgConfig_New(HEAP_ID_103);
    v1->appMan = appMan;

    v2 = (UnkStruct_ov104_02238240 *)ApplicationManager_Args(appMan);

    v1->saveData = v2->saveData;
    v1->unk_E0 = sub_020304A0(v1->saveData);
    v1->unk_E4 = sub_020305B8(v1->saveData);
    v1->unk_09 = v2->unk_04;
    v1->unk_2A = v2->unk_1E;
    v1->unk_28 = v2->unk_1C;
    v1->unk_426 = v2->unk_18;
    v1->unk_12 = v2->unk_07;
    v1->unk_3C4 = &v2->unk_38;
    v1->options = SaveData_GetOptions(v1->saveData);
    v1->unk_3C8 = v2->unk_30;
    v1->unk_3CC = v2->unk_34;
    v1->unk_0E = 0xff;
    v1->frontier = SaveData_GetBattleFrontier(v1->saveData);
    v1->unk_3C0 = v2->unk_08;
    v1->unk_1C = v2->unk_0C;
    v1->unk_20 = v2->unk_10;
    v1->unk_24 = v2->unk_14;
    v1->unk_18 = (30 * 30);
    v1->unk_0C = v2->unk_40;

    for (v0 = 0; v0 < 32; v0++) {
        v1->unk_44[v0] = 32;
    }

    v1->unk_2C = 4;
    v1->unk_2D = 4;
    v1->unk_2E = (4 * 4);
    v1->unk_424 = 0;

    (*v1->unk_24) = ov108_02242B1C(v1);

    v1->unk_16 = (LCRNG_Next() % (4 * 4));

    ov108_0224237C(v1);

    if (BattleArcade_IsMultiPlayerChallenge(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    Unk_ov108_022437A0 = 0;
    Unk_ov108_022437A1 = 0;

    return 1;
}

int ov108_02241C38(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov108_02241DB0 *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_0E != 0xff) {
        switch (*param1) {
        case 1:
            ov108_02243008(v0);
            v0->unk_14 = ov108_02242A04(v0->unk_2E, v0->unk_0E);
            ov108_0224295C(v0, param1, 2);
            break;
        }
    }

    switch (*param1) {
    case 0:
        if (ov108_02241DB0(v0) == 1) {
            ov108_0224295C(v0, param1, 1);
        }
        break;
    case 1:
        if (ov108_02241F28(v0) == 1) {
            if (v0->unk_2F_1 == 1) {
                ov108_0224295C(v0, param1, 2);
            } else {
                if (BattleArcade_IsMultiPlayerChallenge(v0->unk_09) == 1) {
                    ov108_0224295C(v0, param1, 3);
                } else {
                    ov108_0224295C(v0, param1, 4);
                }
            }
        }
        break;
    case 2:
        if (ov108_02242104(v0) == 1) {
            ov108_0224295C(v0, param1, 3);
        }
        break;
    case 3:
        if (ov108_02242198(v0) == 1) {
            ov108_0224295C(v0, param1, 4);
        }
        break;
    case 4:
        if (ov108_022421F0(v0) == 1) {
            return 1;
        }
        break;
    }

    v0->unk_13_1++;

    if (v0->unk_13_1 >= 4) {
        v0->unk_13_1 = 0;
        v0->unk_13_0 ^= 1;
    }

    SpriteList_Update(v0->unk_E8.unk_00);

    return 0;
}

int ov108_02241D70(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov108_02241DB0 *v1 = ApplicationManager_Data(appMan);

    *(v1->unk_3C4) = v1->unk_0D;

    VramTransfer_Free();
    ov108_02242238(v1);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_103);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov108_02241DB0(UnkStruct_ov108_02241DB0 *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(199);
            param0->unk_08++;
        } else {
            param0->unk_08++;
        }
        break;
    case 1:
        if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
            if (CommTiming_IsSyncState(199) == 1) {
                CommTool_ClearReceivedTempDataAllPlayers();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        ov108_02242BF0(param0);
        param0->unk_08++;
        break;
    case 3:
        ov108_02242D5C(param0);
        param0->unk_08++;
        break;
    case 4:
        ov108_02242E10(param0);
        param0->unk_08++;
        break;
    case 5:
        if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(201);
            param0->unk_08++;
        } else {
            param0->unk_08++;
        }
        break;
    case 6:
        if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
            if (CommTiming_IsSyncState(201) == 1) {
                CommTool_ClearReceivedTempDataAllPlayers();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 7:
        if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
            if (ov108_02242A38(param0, 30, 0) == 1) {
                param0->unk_08++;
            }
        } else {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_103);
            param0->unk_08++;
        }
        break;
    case 8:
        if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
            if (param0->unk_0F >= 2) {
                param0->unk_0F = 0;
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_103);
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 9:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_02241F28(UnkStruct_ov108_02241DB0 *param0)
{
    u16 v0, v1;
    u16 v2;
    int v3;
    u32 v4, v5;
    u16 v6[4];

    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 0;
        param0->unk_0D = param0->unk_16;
        ov108_022429C8(param0, param0->unk_0D);
        param0->unk_08 = 1;
        break;
    case 1:
        param0->unk_0B++;

        if (param0->unk_0B >= 10) {
            param0->unk_0B = 0;
            param0->unk_08 = 2;
        }
        break;
    case 2:
        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], 32);
                ov108_022435A8(param0->unk_33C[v3], 1);
            }
        }

        ov108_02242884(param0, 3);
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);

        param0->unk_0B = 24;
        param0->unk_08 = 3;
        break;
    case 3:
        param0->unk_0B--;

        if (param0->unk_0B > 0) {
            break;
        }

        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], 33);
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);
        param0->unk_0B = 24;
        param0->unk_08 = 4;
        break;
    case 4:
        param0->unk_0B--;

        if (param0->unk_0B > 0) {
            break;
        }

        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], 34);
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);

        param0->unk_0B = 24;
        param0->unk_08 = 5;
        break;
    case 5:
        param0->unk_0B--;

        if (param0->unk_0B > 0) {
            break;
        }

        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], param0->unk_34[v3]);
            }
        }

        ov108_022435A8(param0->unk_338, 1);
        Sound_PlayEffect(SEQ_SE_DP_UG_020);
        ov108_022435F4(param0->unk_3BC, 0);
        param0->unk_08 = 6;
        break;
    case 6:
        ov108_02242964(param0, gSystem.pressedKeys);

        if (CommSys_CurNetId() == 0) {
            if (param0->unk_18 > 0) {
                param0->unk_18--;
            }

            if (param0->unk_18 == 0) {
                (void)0;
            }
        }

        if ((ov108_02242FE8(param0) == 1) || (param0->unk_18 == 0)) {
            ov108_022429FC(param0);

            if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 0) {
                param0->unk_08 = 7;
                break;
            } else {
                param0->unk_2F_1 = 1;
                return 1;
            }
        }
        break;
    case 7:
        ov108_02242BA0(param0, param0->unk_0D);
        param0->unk_0B = 30;
        param0->unk_08 = 8;
        break;
    case 8:
        param0->unk_0B--;

        if (param0->unk_0B == 0) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_02242104(UnkStruct_ov108_02241DB0 *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov108_02242A38(param0, 31, param0->unk_14) == 1) {
            param0->unk_2F_1 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        param0->unk_08++;
        break;
    case 2:
        if (param0->unk_0E == 0xff) {
            break;
        }

        param0->unk_0F = 0;
        ov108_02242BA0(param0, param0->unk_0E);
        param0->unk_08++;
        break;
    case 3:
        CommTool_ClearReceivedTempDataAllPlayers();
        CommTiming_StartSync(151);
        param0->unk_08++;
        break;
    case 4:
        if (CommTiming_IsSyncState(151) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(103);
            param0->unk_0E = 0xff;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_02242198(UnkStruct_ov108_02241DB0 *param0)
{
    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 15;
        param0->unk_08++;
        break;
    case 1:
        if (param0->unk_0B > 0) {
            param0->unk_0B--;
        }

        if (param0->unk_0B == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(152);
            param0->unk_08++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(152) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_022421F0(UnkStruct_ov108_02241DB0 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_103);
        param0->unk_08++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov108_02242238(UnkStruct_ov108_02241DB0 *param0)
{
    u8 v0;
    int v1;

    if (param0->unk_338 != NULL) {
        ov108_02243594(param0->unk_338);
    }

    if (param0->unk_3BC != NULL) {
        ov108_02243594(param0->unk_3BC);
    }

    for (v1 = 0; v1 < (4 * 4); v1++) {
        if (param0->unk_33C[v1] != NULL) {
            ov108_02243594(param0->unk_33C[v1]);
        }
    }

    v0 = ov104_0223BD70(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        if (param0->unk_37C[v1] != NULL) {
            ov108_02243594(param0->unk_37C[v1]);
        }

        if (param0->unk_38C[v1] != NULL) {
            ov108_02243594(param0->unk_38C[v1]);
        }

        if (param0->unk_39C[v1] != NULL) {
            ov108_02243594(param0->unk_39C[v1]);
        }

        if (param0->unk_3AC[v1] != NULL) {
            ov108_02243594(param0->unk_3AC[v1]);
        }
    }

    NetworkIcon_Destroy();
    PaletteData_FreeBuffer(param0->unk_D4, 2);
    PaletteData_FreeBuffer(param0->unk_D4, 0);
    PaletteData_Free(param0->unk_D4);

    param0->unk_D4 = NULL;
    ov108_02243194(&param0->unk_E8);

    MessageLoader_Free(param0->unk_68);
    StringTemplate_Free(param0->unk_6C);
    String_Free(param0->unk_70);
    String_Free(param0->unk_74);

    for (v1 = 0; v1 < 2; v1++) {
        String_Free(param0->unk_78[v1]);
    }

    ov108_02243660(param0->unk_94);
    ov108_022426D4(param0->unk_90);

    NARC_dtor(param0->unk_3D0);
    return;
}

static void ov108_02242344(void)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov108_0224237C(UnkStruct_ov108_02241DB0 *param0)
{
    u8 v0;
    u16 v1, v2, v3, v4;
    int v5, v6;
    Window *v7;
    Pokemon *v8;

    param0->unk_3D0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_103);

    ov108_02242658(param0);
    ov108_022426B0(param0);

    param0->unk_68 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_DUMMY_0536, HEAP_ID_103);
    param0->unk_6C = StringTemplate_Default(HEAP_ID_103);
    param0->unk_70 = String_Init(600, HEAP_ID_103);
    param0->unk_74 = String_Init(600, HEAP_ID_103);

    for (v5 = 0; v5 < 2; v5++) {
        param0->unk_78[v5] = String_Init(32, HEAP_ID_103);
    }

    Font_LoadTextPalette(0, 13 * 32, HEAP_ID_103);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, HEAP_ID_103);

    ov108_02243630(param0->unk_90, param0->unk_94);
    param0->unk_338 = ov108_0224351C(&param0->unk_E8, 1, 1, 1, 35, 68, 36, 0, 2, 0);
    ov108_022435A8(param0->unk_338, 0);

    for (v5 = 0; v5 < (4 * 4); v5++) {
        param0->unk_33C[v5] = ov108_0224351C(&param0->unk_E8, 1, 1, 1, 32, 68 + (40 * (v5 % 4)), 36 + (40 * (v5 / 4)), 1, 2, 0);
        ov108_022435A8(param0->unk_33C[v5], 0);
    }

    v0 = ov104_0223BD70(param0->unk_09, 1);

    if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 0) {
        v3 = 46;
        v4 = 50;
    } else {
        v3 = 22;
        v4 = 26;
    }

    for (v5 = 0; v5 < v0; v5++) {
        param0->unk_39C[v5] = ov108_0224351C(&param0->unk_E8, 2, 2, 2, 0, 24, v4 + (40 * v5), 0, 2, 0);
        param0->unk_3AC[v5] = ov108_0224351C(&param0->unk_E8, 2, 2, 2, 0, 246, v4 + (40 * v5), 0, 2, 0);
        param0->unk_37C[v5] = ov108_0224351C(&param0->unk_E8, 3 + v5, 3, 3, 1, 16, v3 + (40 * v5), 1, 2, 0);
        param0->unk_38C[v5] = ov108_0224351C(&param0->unk_E8, 7 + v5, 3, 3, 1, 238, v3 + (40 * v5), 1, 2, 0);

        ov108_02243610(param0->unk_37C[v5], Party_GetPokemonBySlotIndex(param0->unk_3C8, v5));
        ov108_02243610(param0->unk_38C[v5], Party_GetPokemonBySlotIndex(param0->unk_3CC, v5));

        ov108_02243624(param0->unk_37C[v5], 0);
        ov108_02243624(param0->unk_38C[v5], 0);
    }

    ov108_02242F38(param0);
    param0->unk_3BC = ov108_0224351C(&param0->unk_E8, 0, 0, 0, 2, 128, 96, 0, 0, 1);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(ov108_02242708, (void *)param0);
    return;
}

static void ov108_02242658(UnkStruct_ov108_02241DB0 *param0)
{
    ov108_02242740();
    ov108_02242760(param0->unk_90);

    param0->unk_D4 = PaletteData_New(HEAP_ID_103);

    PaletteData_AllocBuffer(param0->unk_D4, 2, 32 * 16, HEAP_ID_103);
    PaletteData_AllocBuffer(param0->unk_D4, 0, 32 * 16, HEAP_ID_103);

    ov108_02242828(param0, 3);
    ov108_022428C0();
    ov108_022428F4(param0, 4);

    return;
}

static void ov108_022426B0(UnkStruct_ov108_02241DB0 *param0)
{
    ov108_02243030(&param0->unk_E8, param0->unk_3C8, param0->unk_3CC, BattleArcade_IsMultiPlayerChallenge(param0->unk_09));
    return;
}

static void ov108_022426D4(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Heap_Free(param0);

    return;
}

static void ov108_02242708(void *param0)
{
    UnkStruct_ov108_02241DB0 *v0 = param0;

    if (v0->unk_D4 != NULL) {
        PaletteData_CommitFadedBuffers(v0->unk_D4);
    }

    Bg_RunScheduledUpdates(v0->unk_90);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov108_02242740(void)
{
    GXBanks v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    return;
}

static void ov108_02242760(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v1, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_103);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x2000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v2, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);

    return;
}

static void ov108_02242828(UnkStruct_ov108_02241DB0 *param0, u32 param1)
{
    u32 v0;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_3D0, 120, param0->unk_90, param1, 0, 0, 1, HEAP_ID_103);

    if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 0) {
        v0 = 116;
    } else {
        v0 = 118;
    }

    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3D0, v0, param0->unk_90, param1, 0, 0, 1, HEAP_ID_103);
    return;
}

static void ov108_02242884(UnkStruct_ov108_02241DB0 *param0, u32 param1)
{
    u32 v0;

    if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 0) {
        v0 = 117;
    } else {
        v0 = 119;
    }

    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3D0, v0, param0->unk_90, param1, 0, 0, 1, HEAP_ID_103);
    return;
}

static void ov108_022428C0(void)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 167, &v1, HEAP_ID_103);

    DC_FlushRange(v1->pRawData, sizeof(u16) * 16 * 7);
    GX_LoadBGPltt(v1->pRawData, 0, sizeof(u16) * 16 * 7);
    Heap_Free(v0);

    return;
}

static void ov108_022428F4(UnkStruct_ov108_02241DB0 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_3D0, 122, param0->unk_90, param1, 0, 0, 1, HEAP_ID_103);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_3D0, 168, 4, 0, sizeof(u16) * 16 * 2, HEAP_ID_103);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3D0, 121, param0->unk_90, param1, 0, 0, 1, HEAP_ID_103);

    return;
}

static void ov108_0224295C(UnkStruct_ov108_02241DB0 *param0, int *param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static void ov108_02242964(UnkStruct_ov108_02241DB0 *param0, int param1)
{
    u8 v0 = *param0->unk_1C;
    param0->unk_10++;

    if (param0->unk_10 >= Unk_ov108_0224368F[v0][0]) {
        param0->unk_10 = 0;

        if (param0->unk_0C == 1) {
            param0->unk_0D = (LCRNG_Next() % (4 * 4));
        } else {
            param0->unk_0D++;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON3);

        if (param0->unk_0D >= param0->unk_2E) {
            param0->unk_0D = 0;
        }

        ov108_022429C8(param0, param0->unk_0D);
    }

    return;
}

static void ov108_022429C8(UnkStruct_ov108_02241DB0 *param0, u8 param1)
{
    ov108_022435B4(param0->unk_338, 68 + (40 * (param1 % 4)), 36 + (40 * (param1 / 4)));
    return;
}

static void ov108_022429FC(UnkStruct_ov108_02241DB0 *param0)
{
    param0->unk_14 = param0->unk_0D;
    return;
}

static u8 ov108_02242A04(u8 param0, u8 param1)
{
    if (param1 < param0) {
        return param1;
    }

    return param1 - param0;
}

static u16 ov108_02242A14(UnkStruct_ov108_02241DB0 *param0)
{
    u16 v0 = param0->unk_28;

    if (BattleArcade_IsMultiPlayerChallenge(param0->unk_09) == 1) {
        if (param0->unk_426 > param0->unk_28) {
            v0 = param0->unk_426;
        }
    }

    return v0;
}

BOOL ov108_02242A38(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 30:
        v1 = 71;
        ov108_02242A7C(param0, param1);
        break;
    case 31:
        v1 = 72;
        ov108_02242AE8(param0, param1, param2);
        break;
    case 32:
        v1 = 73;
        ov108_02242B74(param0, param1);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_3D4, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov108_02242A7C(UnkStruct_ov108_02241DB0 *param0, u16 param1)
{
    int v0, v1;
    TrainerInfo *v2;

    v1 = 0;
    v2 = SaveData_GetTrainerInfo(param0->saveData);

    param0->unk_3D4[v1] = param1;

    v1 += 1;
    v1 += 1;

    for (v0 = 0; v0 < (4 * 4); v0++) {
        param0->unk_3D4[v1 + v0] = param0->unk_34[v0];
    }

    v1 += (4 * 4);
    param0->unk_3D4[v1] = param0->unk_16;
    v1 += 1;

    return;
}

void ov108_02242AB0(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov108_02241DB0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    if (CommSys_CurNetId() != 0) {
        for (v0 = 0; v0 < (4 * 4); v0++) {
            v2->unk_34[v0] = (u8)v3[v1 + v0];
        }

        v1 += (4 * 4);
        v2->unk_16 = (u16)v3[v1];
        v1 += 1;
    }

    for (v0 = 0; v0 < (4 * 4); v0++) {
        (void)0;
    }

    return;
}

void ov108_02242AE8(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2)
{
    u8 v0;

    param0->unk_3D4[0] = param1;
    param0->unk_3D4[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_0E == 0xff) {
            param0->unk_0E = param2;
        }
    }

    param0->unk_3D4[2] = param0->unk_0E;
    param0->unk_3D4[3] = *param0->unk_24;

    return;
}

static u16 ov108_02242B1C(UnkStruct_ov108_02241DB0 *param0)
{
    return LCRNG_Next();
}

void ov108_02242B24(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov108_02241DB0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_425 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_0E != 0xff) {
            v2->unk_425 = 0;
        } else {
            v2->unk_0E = v2->unk_425 + v2->unk_2E;
        }
    } else {
        v2->unk_0E = v3[2];

        (*v2->unk_24) = v3[3];
    }

    return;
}

void ov108_02242B74(UnkStruct_ov108_02241DB0 *param0, u16 param1)
{
    param0->unk_3D4[0] = param1;

    if (param0->unk_0D == (param0->unk_2E - 1)) {
        param0->unk_3D4[1] = param0->unk_0D;
    } else {
        param0->unk_3D4[1] = param0->unk_0D;
    }

    return;
}

void ov108_02242B84(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov108_02241DB0 *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_424 = (u8)v1[1];
    return;
}

static void ov108_02242BA0(UnkStruct_ov108_02241DB0 *param0, u8 param1)
{
    int v0;
    u8 v1, v2, v3, v4;
    u16 v5[4];

    v2 = param0->unk_2E;
    v3 = ov108_02242A04(v2, param1);
    v4 = param0->unk_34[v3];

    (*param0->unk_20) = v4;

    for (v0 = 0; v0 < (4 * 4); v0++) {
        if (param0->unk_33C[v0] != NULL) {
            ov108_022435F4(param0->unk_33C[v0], v4);
        }
    }

    ov108_022429C8(param0, v3);
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    return;
}

static void ov108_02242BF0(UnkStruct_ov108_02241DB0 *param0)
{
    int v0, v1, v2;
    u16 v3, v4, v5;
    u8 v6, v7;

    for (v0 = 0; v0 < (NELEMS(Unk_ov108_02243718)); v0++) {
        switch (param0->unk_2A) {
        case 0:
            v7 = Unk_ov108_02243718[v0].unk_00_0;
            break;
        case 1:
            v7 = Unk_ov108_02243718[v0].unk_00_1;
            break;
        case 2:
            v7 = Unk_ov108_02243718[v0].unk_00_2;
            break;
        case 3:
            v7 = Unk_ov108_02243718[v0].unk_00_3;
            break;
        case 4:
            v7 = Unk_ov108_02243718[v0].unk_00_4;
            break;
        case 5:
            v7 = Unk_ov108_02243718[v0].unk_00_5;
            break;
        default:
            v7 = Unk_ov108_02243718[v0].unk_00_6;
            break;
        }

        if (v7 == 1) {
            v6 = 0xff;

            switch (v0) {
            case 27:
                v6 = 0;
                break;
            case 24:
                v6 = 1;
                break;
            case 25:
                v6 = 2;
                break;
            case 26:
                v6 = 3;
                break;
            case 28:
                v6 = 4;
                break;
            case 29:
                v6 = 5;
                break;
            case 31:
                v6 = 6;
                break;
            }

            v5 = ov108_02242A14(param0);
            v4 = (v5 % 7);

            if (v5 >= 9999) {
                v4 = 6;
            }

            if (v6 != 0xff) {
                switch (v4) {
                case 0:
                    v7 = Unk_ov108_02243680[v6].unk_00_0;
                    break;
                case 1:
                    v7 = Unk_ov108_02243680[v6].unk_00_1;
                    break;
                case 2:
                    v7 = Unk_ov108_02243680[v6].unk_00_2;
                    break;
                case 3:
                    v7 = Unk_ov108_02243680[v6].unk_00_3;
                    break;
                case 4:
                    v7 = Unk_ov108_02243680[v6].unk_00_4;
                    break;
                case 5:
                    v7 = Unk_ov108_02243680[v6].unk_00_5;
                    break;
                case 6:
                case 7:
                    v7 = Unk_ov108_02243680[v6].unk_00_6;
                    break;
                default:
                    GF_ASSERT(0);
                    v7 = 1;
                    break;
                }
            } else {
                v7 = 1;
            }

            if (v7 == 1) {
                param0->unk_44[param0->unk_64] = v0;
                param0->unk_64++;
            }
        }
    }

    return;
}

static void ov108_02242D5C(UnkStruct_ov108_02241DB0 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < (NELEMS(Unk_ov108_0224367C)); v0++) {
        if (param0->unk_12 >= Unk_ov108_0224367C[v0]) {
            break;
        }
    }

    param0->unk_11 = v0;

    for (v1 = 0; v1 < param0->unk_64; v1++) {
        continue;
    }

    for (v0 = 0; v0 < param0->unk_64; v0++) {
        if (ov104_0223C148(param0->unk_44[v0]) == 0) {
            param0->unk_30[0]++;
        } else if (ov104_0223C148(param0->unk_44[v0]) == 1) {
            param0->unk_30[1]++;
        } else if (ov104_0223C148(param0->unk_44[v0]) == 2) {
            param0->unk_30[2]++;
        } else if (ov104_0223C148(param0->unk_44[v0]) == 3) {
            param0->unk_30[3]++;
        }
    }

    return;
}

static void ov108_02242E10(UnkStruct_ov108_02241DB0 *param0)
{
    int v0, v1, v2, v3;
    u16 v4, v5;
    u8 v6 = 0, v7;

    for (v1 = 0; v1 < (4 * 4); v1++) {
        v7 = ov108_02242EF4(param0, param0->unk_11);
        v2 = 0;
        v3 = 0;
        v3 = param0->unk_30[v7];

        if (v7 == 0) {
            v2 = 0;
        } else if (v7 == 1) {
            v2 += param0->unk_30[0];
        } else if (v7 == 2) {
            v2 += param0->unk_30[0];
            v2 += param0->unk_30[1];
        } else if (v7 == 3) {
            v2 += param0->unk_30[0];
            v2 += param0->unk_30[1];
            v2 += param0->unk_30[2];
        }

        v4 = (LCRNG_Next() % v3);
        v4 += v2;
        v6 = v4;
        v0 = 0;

        while (TRUE) {
            if (v0 >= 50) {
                GF_ASSERT(0);
                param0->unk_34[v1] = 0;
                v0 = 0;
                break;
            }

            if (ov104_0223C148(param0->unk_44[v6]) == v7) {
                param0->unk_34[v1] = param0->unk_44[v6];
                v0 = 0;
                break;
            }

            v6++;
            v0++;

            if (v6 >= param0->unk_64) {
                v6 = 0;
            }

            if (v6 == v4) {
                v7++;

                if (v7 >= 4) {
                    v7 = 0;
                }
            }
        }
    }

    return;
}

static u8 ov108_02242EF4(UnkStruct_ov108_02241DB0 *param0, u8 param1)
{
    u8 v0, v1;
    u16 v2;

    v0 = 0;
    v2 = (LCRNG_Next() % 100);

    for (v1 = 0; v1 < 4; v1++) {
        v0 += Unk_ov108_022436B0[param1][v1];

        if (v2 < v0) {
            break;
        }
    }

    if (v1 >= 4) {
        GF_ASSERT(0);
        v1 = 0;
    }

    return v1;
}

static void ov108_02242F38(UnkStruct_ov108_02241DB0 *param0)
{
    u8 v0, v1, v2;
    Pokemon *v3;

    v0 = ov104_0223BD70(param0->unk_09, 1);
    v1 = ov104_0223BDA4(param0->unk_09, 1);

    for (v2 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_3C8, v2);

        if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == 0) {
            ov108_022435A8(param0->unk_39C[v2], 0);
        } else {
            ov108_022435A8(param0->unk_39C[v2], 1);
        }
    }

    for (v2 = 0; v2 < v1; v2++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_3CC, v2);

        if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == 0) {
            ov108_022435A8(param0->unk_3AC[v2], 0);
        } else {
            ov108_022435A8(param0->unk_3AC[v2], 1);
        }
    }

    return;
}

static BOOL ov108_02242FE8(UnkStruct_ov108_02241DB0 *param0)
{
    int v0 = TouchScreen_CheckPressedHitTableID(Unk_ov108_02243687);

    if (v0 == 0) {
        ov108_02243008(param0);
        return 1;
    }

    return 0;
}

static void ov108_02243008(UnkStruct_ov108_02241DB0 *param0)
{
    Sound_StopEffect(1500, 0);
    Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
    ov108_022435F4(param0->unk_3BC, 1);

    return;
}
