#include "overlay023/ov23_0223E140.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_score_events.h"

#include "struct_defs/struct_02099F80.h"
#include "struct_defs/underground_data.h"
#include "struct_defs/underground_record.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_0224271C.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
#include "char_transfer.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "field_task.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "map_matrix.h"
#include "math_util.h"
#include "menu.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "pokedex.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_020393C8.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"
#include "vram_transfer.h"

#include "res/text/bank/underground_common.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov23_02256BF8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
} UnkStruct_ov23_0224142C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int itemCount;
    FieldSystem *fieldSystem;
    int unk_14;
    void *unk_18[4];
    NNSG2dPaletteData *unk_28[4];
    int unk_38[4];
    int unk_48;
    int unk_4C;
    u8 unk_50;
} UnkStruct_ov23_0223EE80;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_0223E6F8;

typedef struct {
    void *shape;
    u16 oddTIDWeight;
    u16 evenTIDWeight;
    u16 oddTIDNatDexWeight;
    u16 evenTIDNatDexWeight;
    u8 width;
    u8 height;
    u8 itemID;
    u16 unk_10;
    u16 unk_12;
} MiningObject;

typedef struct {
    MiningObject *unk_00;
    u8 itemID;
    u8 x;
    u8 y;
    u8 unk_07;
    u8 unk_08;
} UnkStruct_ov23_0223FC9C;

typedef struct {
    UnkStruct_ov23_0224142C unk_00[250];
    u8 unk_4E2;
    u16 unk_4E4;
} UnkStruct_ov23_022412CC;

typedef struct {
    FieldSystem *fieldSystem;
    BgConfig *unk_04;
    MATHRandContext32 unk_08;
    SpriteList *unk_20;
    G2dRenderer unk_24;
    SpriteResourceCollection *unk_1B0[4];
    SpriteResource *unk_1C0[8];
    SpriteResourcesHeader unk_1E0;
    SpriteResourcesHeader unk_204[2];
    Sprite *unk_24C[8];
    UnkStruct_ov23_0223E6F8 unk_26C[250];
    Menu *unk_848;
    UnkStruct_ov23_0223E6F8 *unk_84C[8];
    u8 unk_86C[8];
    UnkStruct_ov23_0223FC9C unk_874[8];
    u8 unk_8BC[8];
    SysTask *unk_8C4;
    SysTask *unk_8C8;
    SysTask *unk_8CC;
    UnkStruct_ov23_022412CC *unk_8D0;
    UnkStruct_ov23_0224142C unk_8D4[8];
    u8 unk_8FC[8];
    void *unk_904;
    u8 unk_908[8];
    u8 unk_910[8];
    u8 unk_918[8];
    u8 unk_920[10][13];
    u8 unk_9A2[10][13];
    int unk_A24;
    u8 unk_A28;
    u8 unk_A29;
    u8 unk_A2A;
    u8 unk_A2B;
    u8 unk_A2C;
    s8 unk_A2D;
    s8 unk_A2E;
    u8 unk_A2F;
    u8 unk_A30;
} UnkStruct_ov23_02257740;

static void ov23_02240688(BgConfig *param0);
static void ov23_0223E434(MATHRandContext16 *param0, int param1);
static UnkStruct_ov23_0223E6F8 *ov23_0223E6F8(void);
static UnkStruct_ov23_0223E6F8 *ov23_0223E88C(u16 param0, u16 param1);
static void ov23_0223EA38(SysTask *param0, void *param1);
static void ov23_0223EE80(UnkStruct_ov23_0223EE80 *param0);
static void ov23_0223EF98(void);
static void ov23_0223F70C(FieldSystem *fieldSystem);
static void Mining_GenerateGameLayout(BgConfig *param0, int param1, UnkStruct_ov23_0223EE80 *param2);
static void ov23_0223FF60(int param0, BgConfig *param1, int param2, UnkStruct_ov23_0223EE80 *param3);
static void ov23_0223FF8C(BgConfig *param0);
static void ov23_022401B0(BgConfig *param0);
static BOOL ov23_02240CFC(UnkStruct_ov23_0223EE80 *param0);
static void ov23_022404C8(BgConfig *param0);
static void ov23_022404F8(BgConfig *param0, int param1, int param2, int param3);
static BOOL ov23_02240934(UnkStruct_ov23_0223EE80 *param0);
static BOOL ov23_022409F0(UnkStruct_ov23_0223EE80 *param0);
static BOOL ov23_02240A90(UnkStruct_ov23_0223EE80 *param0);
static void ov23_02240E88(void);
static void ov23_0224108C(void);
static void ov23_0224119C(void);
static void ov23_022411E8(void *param0);
static void ov23_022413B4(void);
static UnkStruct_ov23_0223E6F8 *ov23_0223E740(int param0, int param1);
static void ov23_0223FDE0(UnkStruct_ov23_0223EE80 *param0);
static void ov23_02240B84(BgConfig *param0);
static void ov23_022414D4(void);
static void ov23_0223E834(void);

static UnkStruct_ov23_02257740 *Unk_ov23_02257740 = NULL;

static u8 sRareBoneShape[6][3] = {
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
};

static u8 sRareBoneShape90deg[3][6] = {
    { 'x', 'o', 'o', 'o', 'o', 'x' },
    { 'x', 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'o', 'o', 'x' },
};

static u8 sRockTShape[2][3] = {
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 sRockTShape90deg[3][2] = {
    { 'o', 'x' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 sRockTShape180deg[2][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
};

static u8 sRockTShape270deg[3][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'x', 'o' },
};

static u8 sRockZShape[2][3] = {
    { 'x', 'x', 'o' },
    { 'o', 'x', 'x' },
};

static u8 sRockZShape90deg[3][2] = {
    { 'o', 'x' },
    { 'x', 'x' },
    { 'x', 'o' },
};

static u8 sRockSShape[2][3] = {
    { 'o', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 sRockSShape90deg[3][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 sHelixFossilShape[4][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 sHelixFossilShape90deg[4][4] = {
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
};

static u8 sThunderstoneShape[3][3] = {
    { 'o', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 sOldAmberShape[4][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 sOldAmberShape90deg[4][4] = {
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
};

static u8 sDomeFossilShape[4][5] = {
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 sWaterStoneShape[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 sMoonStoneShape[2][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 sMoonStoneShape90deg[4][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 sClawFossilShape[5][4] = {
    { 'o', 'o', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'o', 'o' },
};

static u8 sClawFossilShape90deg[4][5] = {
    { 'x', 'x', 'o', 'o', 'o' },
    { 'x', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'x' },
};

static u8 sClawFossilShape180deg[5][4] = {
    { 'o', 'o', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'o', 'o' },
};

static u8 sClawFossilShape270deg[4][5] = {
    { 'x', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'x' },
    { 'o', 'o', 'o', 'x', 'x' },
};

static u8 sSunStoneShape[3][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
};

static u8 sStarPieceReviveShape[3][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 sLeafStoneShape90deg[3][4] = {
    { 'o', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'o' },
};

static u8 sLeafStoneShape[4][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 sRootFossilShape[5][5] = {
    { 'x', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'x', 'x' },
    { 'o', 'o', 'o', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'o' },
};

static u8 sRootFossilShape90deg[5][5] = {
    { 'o', 'o', 'x', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 sRootFossilShape180deg[5][5] = {
    { 'o', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'o', 'o', 'o' },
    { 'x', 'x', 'o', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'x' },
};

static u8 sRootFossilShape270deg[5][5] = {
    { 'o', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'o', 'x' },
    { 'x', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'x', 'o', 'o' },
};

static u8 sRedShardShape[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
    { 'x', 'x', 'x' },
};
static u8 sBlueShardShape[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};
static u8 sYellowShardShape[3][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
};
static u8 sGreenShardShape[3][4] = {
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'x' },
};

static u8 sHeartScaleShape[2][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
};

static u8 sArmorFossilShape[4][5] = {
    { 'o', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 sSkullFossilShape[4][4] = {
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'o' },
};

static u8 sLightClayShape[4][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'o', 'x' },
};

static u8 sIcyRockShape[4][4] = {
    { 'o', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'x' },
};

static u8 sHeatRockShape[3][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
};

static u8 sSmoothRockShape[4][4] = {
    { 'o', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x' },
    { 'o', 'x', 'o', 'o' },
};

static u8 sDampRockShape[3][4] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'o', 'x' },
};

static MiningObject sMiningObjects[] = {
    { NULL, 0x1E, 0x16, 0x1B, 0x14, 0x4, 0x4, MINING_SMALL_PRISM_SPHERE, 0x39, 0x37 },
    { NULL, 0x16, 0x1E, 0x14, 0x1B, 0x4, 0x4, MINING_SMALL_PALE_SPHERE, 0x67, 0x65 },
    { NULL, 0xA7, 0xC2, 0x6E, 0xA4, 0x4, 0x4, MINING_SMALL_RED_SPHERE, 0x2, 0x0 },
    { NULL, 0xC2, 0xA7, 0x96, 0x7C, 0x4, 0x4, MINING_SMALL_BLUE_SPHERE, 0x5, 0x3 },
    { NULL, 0x96, 0x96, 0x6B, 0x6B, 0x4, 0x4, MINING_SMALL_GREEN_SPHERE, 0x3F, 0x3D },
    { NULL, 0xF, 0xD, 0xD, 0xA, 0x6, 0x6, MINING_LARGE_PRISM_SPHERE, 0x38, 0x37 },
    { NULL, 0xD, 0xF, 0xA, 0xD, 0x6, 0x6, MINING_LARGE_PALE_SPHERE, 0x66, 0x65 },
    { NULL, 0x53, 0x60, 0x3D, 0x4B, 0x6, 0x6, MINING_LARGE_RED_SPHERE, 0x1, 0x0 },
    { NULL, 0x60, 0x53, 0x4B, 0x3D, 0x6, 0x6, MINING_LARGE_BLUE_SPHERE, 0x4, 0x3 },
    { NULL, 0x4B, 0x4B, 0x35, 0x35, 0x6, 0x6, MINING_LARGE_GREEN_SPHERE, 0x3E, 0x3D },
    { NULL, 0x0, 0x0, 0x0, 0x0, 0x6, 0x6, MINING_TREASURE_OVAL_STONE, 0x3B, 0x3C },
    { NULL, 0x0, 0x0, 0x2, 0x2, 0x8, 0x8, MINING_TREASURE_ODD_KEYSTONE, 0x2F, 0x30 },
    { sSunStoneShape, 0x4, 0x1, 0xF, 0x3, 0x6, 0x6, MINING_TREASURE_SUN_STONE, 0x6A, 0x6B },
    { sStarPieceReviveShape, 0x2, 0x2, 0xA, 0xA, 0x6, 0x6, MINING_TREASURE_STAR_PIECE, 0x68, 0x69 },
    { sMoonStoneShape, 0x1, 0x2, 0x1, 0x8, 0x8, 0x4, MINING_TREASURE_MOON_STONE, 0x42, 0x43 },
    { sMoonStoneShape90deg, 0x1, 0x2, 0x2, 0x7, 0x4, 0x8, MINING_TREASURE_MOON_STONE, 0x44, 0x43 },
    { NULL, 0x4, 0x4, 0x14, 0x14, 0x4, 0x4, MINING_TREASURE_HARD_STONE, 0x12, 0x13 },
    { sThunderstoneShape, 0x4, 0x1, 0x1E, 0x5, 0x6, 0x6, MINING_TREASURE_THUNDERSTONE, 0x2D, 0x2E },
    { NULL, 0x4, 0x4, 0x14, 0x14, 0x8, 0x4, MINING_TREASURE_EVERSTONE, 0x32, 0x33 },
    { NULL, 0x4, 0x1, 0x1E, 0x5, 0x6, 0x6, MINING_TREASURE_FIRE_STONE, 0x18, 0x19 },
    { sWaterStoneShape, 0x1, 0x4, 0x5, 0x1E, 0x6, 0x6, MINING_TREASURE_WATER_STONE, 0x40, 0x41 },
    { sLeafStoneShape, 0x1, 0x2, 0x3, 0xF, 0x6, 0x8, MINING_TREASURE_LEAF_STONE, 0x60, 0x61 },
    { sLeafStoneShape90deg, 0x1, 0x2, 0x2, 0xF, 0x8, 0x6, MINING_TREASURE_LEAF_STONE, 0x62, 0x61 },
    { sHelixFossilShape, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, 0x29, 0x31 },
    { sHelixFossilShape90deg, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, 0x2C, 0x31 },
    { sHelixFossilShape, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, 0x2A, 0x31 },
    { sHelixFossilShape90deg, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, 0x2B, 0x31 },
    { sDomeFossilShape, 0x0, 0x0, 0x1, 0xD, 0xA, 0x8, MINING_TREASURE_DOME_FOSSIL, 0x3A, 0x31 },
    { sClawFossilShape, 0x0, 0x0, 0x3, 0x1, 0x8, 0xA, MINING_TREASURE_CLAW_FOSSIL, 0x6D, 0x31 },
    { sClawFossilShape90deg, 0x0, 0x0, 0x3, 0x1, 0xA, 0x8, MINING_TREASURE_CLAW_FOSSIL, 0x70, 0x31 },
    { sClawFossilShape180deg, 0x0, 0x0, 0x3, 0x1, 0x8, 0xA, MINING_TREASURE_CLAW_FOSSIL, 0x6E, 0x31 },
    { sClawFossilShape270deg, 0x0, 0x0, 0x3, 0x1, 0xA, 0x8, MINING_TREASURE_CLAW_FOSSIL, 0x6F, 0x31 },
    { sRootFossilShape, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, 0x45, 0x31 },
    { sRootFossilShape90deg, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, 0x48, 0x31 },
    { sRootFossilShape180deg, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, 0x46, 0x31 },
    { sRootFossilShape270deg, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, 0x47, 0x31 },
    { sOldAmberShape, 0x0, 0x0, 0x2, 0x2, 0x8, 0x8, MINING_TREASURE_OLD_AMBER, 0x34, 0x35 },
    { sOldAmberShape90deg, 0x0, 0x0, 0x3, 0x3, 0x8, 0x8, MINING_TREASURE_OLD_AMBER, 0x36, 0x35 },
    { sRareBoneShape, 0x1, 0x1, 0x5, 0x5, 0x6, 0xC, MINING_TREASURE_RARE_BONE, 0xA, 0xB },
    { sRareBoneShape90deg, 0x1, 0x1, 0x5, 0x5, 0xC, 0x6, MINING_TREASURE_RARE_BONE, 0xC, 0xB },
    { sStarPieceReviveShape, 0x8, 0x8, 0xA, 0xA, 0x6, 0x6, MINING_TREASURE_REVIVE, 0x11, 0xF },
    { NULL, 0x1, 0x1, 0x2, 0x2, 0x6, 0x6, MINING_TREASURE_MAX_REVIVE, 0x10, 0xF },
    { sRedShardShape, 0xD, 0xD, 0x11, 0x11, 0x6, 0x6, MINING_TREASURE_RED_SHARD, 0x58, 0x4F },
    { sBlueShardShape, 0xD, 0xD, 0x11, 0x11, 0x6, 0x6, MINING_TREASURE_BLUE_SHARD, 0x4B, 0x5D },
    { sYellowShardShape, 0xD, 0xD, 0x11, 0x11, 0x8, 0x6, MINING_TREASURE_YELLOW_SHARD, 0x5F, 0x5C },
    { sGreenShardShape, 0xD, 0xD, 0x11, 0x11, 0x8, 0x6, MINING_TREASURE_GREEN_SHARD, 0x51, 0x59 },
    { sHeartScaleShape, 0x21, 0x21, 0x1E, 0x1E, 0x4, 0x4, MINING_TREASURE_HEART_SCALE, 0x14, 0x15 },
    { sArmorFossilShape, 0x0, 0x19, 0x0, 0xC, 0xA, 0x8, MINING_TREASURE_ARMOR_FOSSIL, 0x6C, 0x31 },
    { sSkullFossilShape, 0x19, 0x0, 0xC, 0x0, 0x8, 0x8, MINING_TREASURE_SKULL_FOSSIL, 0x73, 0x31 },
    { sLightClayShape, 0x1, 0x1, 0x5, 0x2, 0x8, 0x8, MINING_TREASURE_LIGHT_CLAY, 0x49, 0x4A },
    { NULL, 0x1, 0x1, 0x2, 0x5, 0x6, 0x6, MINING_TREASURE_IRON_BALL, 0x6, 0x7 },
    { sIcyRockShape, 0x2, 0x1, 0xB, 0x5, 0x8, 0x8, MINING_TREASURE_ICY_ROCK, 0xD, 0xE },
    { sSmoothRockShape, 0x1, 0x2, 0x5, 0xB, 0x8, 0x8, MINING_TREASURE_SMOOTH_ROCK, 0x63, 0x64 },
    { sHeatRockShape, 0x2, 0x1, 0xB, 0x5, 0x8, 0x6, MINING_TREASURE_HEAT_ROCK, 0x16, 0x17 },
    { sDampRockShape, 0x1, 0x2, 0x5, 0xB, 0x6, 0x6, MINING_TREASURE_DAMP_ROCK, 0x71, 0x72 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_FLAME_PLATE, 0x56, 0x4F },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_SPLASH_PLATE, 0x56, 0x5D },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_ZAP_PLATE, 0x56, 0x5C },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_MEADOW_PLATE, 0x56, 0x59 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_ICICLE_PLATE, 0x56, 0x54 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_FIST_PLATE, 0x56, 0x50 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_TOXIC_PLATE, 0x56, 0x57 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_EARTH_PLATE, 0x56, 0x53 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_SKY_PLATE, 0x56, 0x5B },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_MIND_PLATE, 0x56, 0x5E },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_INSECT_PLATE, 0x56, 0x4C },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_STONE_PLATE, 0x56, 0x5A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_SPOOKY_PLATE, 0x56, 0x52 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_DRACO_PLATE, 0x56, 0x4E },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_DREAD_PLATE, 0x56, 0x4D },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_IRON_PLATE, 0x56, 0x55 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x2, MINING_ROCK_1, 0x1B, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x2, 0x8, MINING_ROCK_1, 0x1C, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x4, 0x4, MINING_ROCK_2, 0x1D, 0x1A },
    { sRockTShape, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_3, 0x1E, 0x1A },
    { sRockTShape90deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_3, 0x21, 0x1A },
    { sRockTShape180deg, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_3, 0x1F, 0x1A },
    { sRockTShape270deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_3, 0x20, 0x1A },
    { sRockZShape, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_4, 0x22, 0x1A },
    { sRockZShape90deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_4, 0x23, 0x1A },
    { sRockSShape, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_5, 0x24, 0x1A },
    { sRockSShape90deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_5, 0x25, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x6, 0x6, MINING_ROCK_6, 0x26, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x4, 0x8, MINING_ROCK_7, 0x27, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x4, MINING_ROCK_7, 0x28, 0x1A }
};

static const WindowTemplate Unk_ov23_0225630E = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void ov23_0223E140(void)
{
    int i;

    for (i = 0; i < (7 + 1); i++) {
        Unk_ov23_02257740->unk_910[i] = 0xff;
        Unk_ov23_02257740->unk_918[i] = 0xff;
    }

    Unk_ov23_02257740->unk_A28 = 1;
    Unk_ov23_02257740->unk_A29 = 0;
    Unk_ov23_02257740->unk_A2B = (200 - 4);

    for (i = 0; i < 8; i++) {
        Unk_ov23_02257740->unk_874[i].unk_00 = NULL;
        Unk_ov23_02257740->unk_874[i].unk_08 = 0;
    }

    for (i = 0; i < 13 * 10; i++) {
        Unk_ov23_02257740->unk_920[i / 13][i % 13] = 0;
        Unk_ov23_02257740->unk_9A2[i / 13][i % 13] = 2;
    }
}

void ov23_0223E1E4(void *param0, FieldSystem *fieldSystem)
{
    int v0, v1;
    UndergroundData *undergroundData;

    if (Unk_ov23_02257740) {
        return;
    }

    Unk_ov23_02257740 = param0;

    MI_CpuFill8(Unk_ov23_02257740, 0, sizeof(UnkStruct_ov23_02257740));
    CommSys_Seed(&Unk_ov23_02257740->unk_08);

    Unk_ov23_02257740->fieldSystem = fieldSystem;

    for (v0 = 0; v0 < 250; v0++) {
        Unk_ov23_02257740->unk_26C[v0].unk_04 = 0xff;
        Unk_ov23_02257740->unk_26C[v0].unk_00 = 0xffff;
        Unk_ov23_02257740->unk_26C[v0].unk_02 = 0xffff;
    }

    ov23_0223E140();

    Unk_ov23_02257740->unk_A24 = -1;
    undergroundData = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    if (sub_02029234(undergroundData)) {
        MATHRandContext16 v3;

        MATH_InitRand16(&v3, UndergroundData_GetRandomSeed(undergroundData));

        for (v0 = 0; v0 < 255; v0++) {
            sub_020291A4(undergroundData, v0);
        }

        for (v0 = 0; v0 < (16 * 4); v0++) {
            sub_02028EF8(undergroundData, 0, v0, 0, 0);
        }

        v1 = ov23_02241DF8(&v3);
        v1 = 25 - (v1 / 10) - 1;

        for (v0 = 0; v0 < v1; v0++) {
            ov23_0223E434(&v3, v0);
        }

        sub_02029240(undergroundData);
    } else {
        ov23_0223E834();
        ov23_02243CE8();
    }
}

int ov23_0223E2E8(void)
{
    return sizeof(UnkStruct_ov23_02257740);
}

void ov23_0223E2F0(void)
{
    return;
}

void ov23_0223E2F4(void)
{
    return;
}

void ov23_0223E2F8(void)
{
    if (Unk_ov23_02257740) {
        if (Unk_ov23_02257740->unk_8C8) {
            SysTask_Done(Unk_ov23_02257740->unk_8C8);
            Unk_ov23_02257740->unk_8C8 = NULL;
            ov23_02254044(ov23_0224219C());

            if (Unk_ov23_02257740->unk_848) {
                Menu_DestroyForExit(Unk_ov23_02257740->unk_848, 4);
            }

            sub_02059514();
        }

        Heap_FreeToHeap(Unk_ov23_02257740);
        Unk_ov23_02257740 = NULL;
    }
}

BOOL ov23_0223E354(int param0, UnkStruct_ov23_0224271C *param1)
{
    UnkStruct_ov23_0223E6F8 *v0 = ov23_0223E88C(param1->unk_00, param1->unk_02);
    u8 v1 = param0;

    if ((v0 != NULL) && (v0->unk_04 == 0xff)) {
        if (ov23_0224A6B8(param0)) {
            return 1;
        }

        CommSys_SendDataServer(64, &v1, 1);
        sub_02059058(param0, 0);

        Unk_ov23_02257740->unk_84C[param0] = v0;
        return 1;
    }

    return 0;
}

static BOOL ov23_0223E3AC(FieldSystem *fieldSystem, int param1, int param2)
{
    if (ov23_02242E58(param1, param2)) {
        return 0;
    }

    if (param2 > 478) {
        return 0;
    }

    if (param1 > 478) {
        return 0;
    }

    if (TerrainCollisionManager_CheckCollision(fieldSystem, param1, param2)) {
        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1, param2 + 1)) {
            return 1;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1, param2 - 1)) {
            return 1;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1 + 1, param2)) {
            return 1;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1 - 1, param2)) {
            return 1;
        }
    }

    return 0;
}

static void ov23_0223E434(MATHRandContext16 *param0, int param1)
{
    int v0, v1, v2, v3;
    u16 v4, v5, v6;
    u16 v7, v8, v9;
    UnkStruct_ov23_0223E6F8 *v10;
    UndergroundData *v11 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    v6 = (MapMatrix_GetWidth(Unk_ov23_02257740->fieldSystem->mapMatrix) - 2) * 32;
    v9 = (MapMatrix_GetHeight(Unk_ov23_02257740->fieldSystem->mapMatrix) - 2) * 32;

    do {
        v4 = MATH_Rand16(param0, v6) + 32;
        v7 = MATH_Rand16(param0, v9) + 32 * 2;
    } while (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v4, v7) == 0);

    v0 = MATH_Rand16(param0, 6) + 6;

    for (v1 = 0; v1 < v0; v1++) {
        v3 = 0;

        for (v2 = 0; v2 < 100; v2++) {
            v5 = MATH_Rand16(param0, 20) + v4 - 10;
            v8 = MATH_Rand16(param0, 20) + v7 - 10;

            if (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v5, v8)) {
                v3 = 1;
                break;
            }
        }

        if (v3) {
            v10 = ov23_0223E6F8();

            if (v10 == NULL) {
                break;
            }

            v10 = ov23_0223E740(v5, v8);
            v10->unk_05 = sub_02029140(v11, v5, v8);
        }
    }

    v0 = MATH_Rand16(param0, 6);

    for (v1 = 0; v1 < v0; v1++) {
        for (v2 = 0; v2 < 100; v2++) {
            v5 = MATH_Rand16(param0, 20) + v4 - 10;
            v8 = MATH_Rand16(param0, 20) + v7 - 10;

            if (!TerrainCollisionManager_CheckCollision(Unk_ov23_02257740->fieldSystem, v5, v8)) {
                int v12 = ov23_02243C3C(v5, v8, param0, Unk_ov23_02257740->unk_A30);

                if (0 != v12) {
                    Unk_ov23_02257740->unk_A30++;
                    break;
                }
            }
        }
    }
}

void ov23_0223E650(int param0, int param1, MATHRandContext16 *param2)
{
    int v0, v1, v2, v3;
    u16 v4, v5;
    UnkStruct_ov23_0223E6F8 *v6;
    UndergroundData *v7 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    v3 = 0;

    for (v2 = 0; v2 < 100; v2++) {
        v4 = MATH_Rand16(param2, 20) + param0 - 10;
        v5 = MATH_Rand16(param2, 20) + param1 - 10;

        if (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v4, v5)) {
            v3 = 1;
            break;
        }
    }

    if (v3) {
        v6 = ov23_0223E6F8();

        if (v6) {
            v6 = ov23_0223E740(v4, v5);
            v6->unk_05 = sub_02029140(v7, v4, v5);
        }
    }
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E6F8(void)
{
    int v0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 == 0xffff) && (Unk_ov23_02257740->unk_26C[v0].unk_02 == 0xffff)) {
            return &Unk_ov23_02257740->unk_26C[v0];
        }
    }

    return NULL;
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E740(int param0, int param1)
{
    int v0 = -1, v1, v2 = param1 * 30 * 32 + param0;
    int v3;

    for (v1 = 0; v1 < 250; v1++) {
        if ((Unk_ov23_02257740->unk_26C[v1].unk_00 != 0xffff) && (Unk_ov23_02257740->unk_26C[v1].unk_02 != 0xffff)) {
            v3 = Unk_ov23_02257740->unk_26C[v1].unk_02 * 30 * 32 + Unk_ov23_02257740->unk_26C[v1].unk_00;

            if (v2 < v3) {
                v0 = v1;
                break;
            }
        } else {
            Unk_ov23_02257740->unk_26C[v1].unk_00 = param0;
            Unk_ov23_02257740->unk_26C[v1].unk_02 = param1;
            return &Unk_ov23_02257740->unk_26C[v1];
        }
    }

    if (v0 != -1) {
        for (v1 = 250 - 2; v1 >= v0; v1--) {
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_00 = Unk_ov23_02257740->unk_26C[v1].unk_00;
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_02 = Unk_ov23_02257740->unk_26C[v1].unk_02;
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_05 = Unk_ov23_02257740->unk_26C[v1].unk_05;
        }

        Unk_ov23_02257740->unk_26C[v0].unk_00 = param0;
        Unk_ov23_02257740->unk_26C[v0].unk_02 = param1;
    }

    return &Unk_ov23_02257740->unk_26C[v0];
}

static void ov23_0223E834(void)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);
    int v1;
    int v2, v3;
    UnkStruct_ov23_0223E6F8 *v4;

    for (v1 = 0; v1 < 255; v1++) {
        v2 = sub_020291CC(v0, v1);
        v3 = sub_020291EC(v0, v1);

        if ((v2 != 0) && (v3 != 0)) {
            v4 = ov23_0223E740(v2, v3);
            v4->unk_05 = v1;
        }
    }
}

void ov23_0223E878(void)
{
    int v0;

    if (CommSys_CurNetId() == 0) {
        ov23_022414D4();
        ov23_022413B4();
    }
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E88C(u16 param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 == param0) && (Unk_ov23_02257740->unk_26C[v0].unk_02 == param1)) {
            return &Unk_ov23_02257740->unk_26C[v0];
        }
    }

    return NULL;
}

static int ov23_0223E8CC(u16 param0, u16 param1)
{
    int v0, v1 = param1 - 80, v2 = param1 + 80, v3 = param0 - 80, v4 = param0 + 80;
    int v5 = 0, v6;

    if (ov23_02242E58(param0, param1)) {
        return -1;
    }

    if (v3 < 64) {
        v3 = 64;
    }

    if (v4 > 512) {
        v4 = 512;
    }

    if (v1 < 32) {
        v1 = 32;
    }

    if (v2 > 480) {
        v2 = 480;
    }

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_02 < v1) || (Unk_ov23_02257740->unk_26C[v0].unk_02 > v2)) {
            continue;
        }

        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 > v3) && (Unk_ov23_02257740->unk_26C[v0].unk_00 < v4)) {
            v5++;
        }
    }

    if (v5 == 0) {
        return -1;
    }

    v6 = LCRNG_Next() % v5;
    v5 = 0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_02 < v1) || (Unk_ov23_02257740->unk_26C[v0].unk_02 > v2)) {
            continue;
        }

        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 > v3) && (Unk_ov23_02257740->unk_26C[v0].unk_00 < v4)) {
            if (v5 == v6) {
                return v0;
            }

            v5++;
        }
    }

    return -1;
}

static void ov23_0223E99C(SysTask *param0, void *param1)
{
    if (Unk_ov23_02257740->unk_848) {
        Menu_DestroyForExit(Unk_ov23_02257740->unk_848, 4);
    }

    Unk_ov23_02257740->unk_848 = NULL;
    Unk_ov23_02257740->unk_8C8 = NULL;

    SysTask_Done(param0);
}

void ov23_0223E9D4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if ((v0[0] == CommSys_CurNetId()) && CommSys_IsSendingMovementData()) {
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_WallIsBulging, 0, NULL);
        Unk_ov23_02257740->unk_8C8 = SysTask_Start(ov23_0223EA38, Unk_ov23_02257740, 0);

        ov23_022431EC(NULL, Unk_ov23_02257740->unk_8C8, ov23_0223E99C);
        sub_020594FC();
    }
}

static void ov23_0223EA38(SysTask *param0, void *param1)
{
    u8 v0;

    if (Unk_ov23_02257740->unk_A24 != -1) {
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            Unk_ov23_02257740->unk_848 = Menu_MakeYesNoChoice(Unk_ov23_02257740->fieldSystem->bgConfig, &Unk_ov23_0225630E, 1024 - (18 + 12) - 9, 11, 4);
            Unk_ov23_02257740->unk_A24 = -1;
        }
    } else {
        int v1 = Menu_ProcessInputAndHandleExit(Unk_ov23_02257740->unk_848, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            v0 = 1;
        } else {
            v0 = 0;
            sub_02059514();
        }

        CommSys_SendDataFixedSize(65, &v0);
        Unk_ov23_02257740->unk_848 = NULL;

        ov23_02254044(ov23_0224219C());
        SysTask_Done(param0);
        ov23_02243204();

        Unk_ov23_02257740->unk_8C8 = NULL;
    }
}

void ov23_0223EAF8(int param0, int param1, void *param2, void *param3)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);
    UnkStruct_ov23_0223E6F8 *v1 = Unk_ov23_02257740->unk_84C[param0];
    u8 v2 = param0;
    u8 *v3 = param2;

    if ((v3[0] != 0) && v1) {
        if (v1->unk_04 == 0xff) {
            CommSys_SendDataServer(66, &v2, 1);

            v1->unk_04 = 0xff;
            v1->unk_00 = 0xffff;
            v1->unk_02 = 0xffff;

            sub_020291A4(v0, v1->unk_05);

            Unk_ov23_02257740->unk_86C[param0] = 1;
            Unk_ov23_02257740->unk_84C[param0] = NULL;
        }
    } else {
        Unk_ov23_02257740->unk_86C[param0] = 0;
        Unk_ov23_02257740->unk_84C[param0] = NULL;
    }
}

void ov23_0223EB8C(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if (v0[0] == CommSys_CurNetId()) {
        sub_020594FC();
        ov23_0223F70C(Unk_ov23_02257740->fieldSystem);
    }

    Unk_ov23_02257740->unk_908[v0[0]] = 1;
}

void ov23_0223EBC0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->unk_86C[param0] = 0;

    Unk_ov23_02257740->unk_8FC[param0] = 0;
}

void ov23_0223EBE4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    u8 v1[3];
    int v2;

    v1[0] = param0;
    v1[1] = v0[0];
    v1[2] = v0[1];

    sub_02035B48(69, v1);
}

int ov23_0223EBFC(void)
{
    return 2;
}

void ov23_0223EC00(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    u8 v1[3];
    int v2;

    if (v0[0] == CommSys_CurNetId()) {
        return;
    }

    Unk_ov23_02257740->unk_910[v0[0]] = v0[1];
    Unk_ov23_02257740->unk_918[v0[0]] = v0[2];
}

int ov23_0223EC30(void)
{
    return 3;
}

static void ov23_0223EC34(BgConfig *param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);
    }
    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v1);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xc000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_29);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v3, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_29);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }
    {
        BgTemplate v4 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v4, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_29);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v5, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_29);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
    }

    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_29);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_29);
}

static void ov23_0223ED68(int param0, int param1, BOOL param2, BOOL param3, BOOL param4)
{
    void *v0;
    Camera *camera;
    void *v2;
    VecFx32 v3;

    if (param2) {
        Sprite_SetAnim(Unk_ov23_02257740->unk_24C[0], 0);
    } else {
        Sprite_SetAnim(Unk_ov23_02257740->unk_24C[0], 1);
    }

    if (param3) {
        Sprite_SetAnim(Unk_ov23_02257740->unk_24C[3], 2);
        Sound_PlayEffect(SEQ_SE_DP_UG_004);
    } else if (param2) {
        Sprite_SetAnim(Unk_ov23_02257740->unk_24C[3], 3);
        Sound_PlayEffect(SEQ_SE_DP_UG_002);
    } else {
        Sprite_SetAnim(Unk_ov23_02257740->unk_24C[3], 4);
        Sound_PlayEffect(SEQ_SE_DP_UG_003);
    }

    Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[0], 1);
    Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[3], 1);

    v3.x = FX32_ONE * (param0 + 8);
    v3.y = FX32_ONE * (param1 + 8);

    Sprite_SetPosition(Unk_ov23_02257740->unk_24C[0], &v3);
    Sprite_SetPosition(Unk_ov23_02257740->unk_24C[3], &v3);

    if (param4) {
        Sprite_SetAnim(Unk_ov23_02257740->unk_24C[4], 5);
        Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[4], 1);
        Sprite_SetPosition(Unk_ov23_02257740->unk_24C[4], &v3);
    }
}

static void ov23_0223EE80(UnkStruct_ov23_0223EE80 *param0)
{
    int v0;
    BgConfig *v1;
    void *v2;
    Camera *camera;
    void *v4;
    int v5;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_58, SEQ_NONE, 0);
    ov23_0223E140();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_29, 0x50000);

    v1 = BgConfig_New(HEAP_ID_29);
    Unk_ov23_02257740->unk_04 = v1;

    SetVBlankCallback(ov23_022411E8, v1);

    ov23_02253E2C(ov23_0224219C(), v1, (512 - (18 + 12)), (((512 - (18 + 12)) - 73) - (27 * 4)));
    ov23_0223EC34(v1);

    Bg_ClearTilemap(v1, BG_LAYER_MAIN_0);
    Bg_ClearTilemap(v1, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(v1, BG_LAYER_MAIN_2);
    LoadMessageBoxGraphics(v1, BG_LAYER_MAIN_3, (512 - (18 + 12)), 10, 0, HEAP_ID_29);

    {
        NARC *v6;

        v6 = NARC_ctor(NARC_INDEX_DATA__UG_FOSSIL, HEAP_ID_29);
        Graphics_LoadPaletteFromOpenNARC(v6, 1, 0, 0, 32 * 3, HEAP_ID_29);

        v0 = Graphics_LoadTilesToBgLayerFromOpenNARC(v6, 0, v1, 0, 0, 0, 0, HEAP_ID_29);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v6, 2, v1, 0, 0, 0, 0, HEAP_ID_29);
        NARC_dtor(v6);
    }

    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, 52, 0, 10 * 0x20, 4 * 0x20, HEAP_ID_29);
    Mining_GenerateGameLayout(v1, v0, param0);
}

static void ov23_0223EF98(void)
{
    int v0;
    BgConfig *v1;
    void *v2;
    Camera *camera;
    void *v4;
    int v5;

    ov23_022404C8(Unk_ov23_02257740->unk_04);
    Bg_CopyTilemapBufferToVRAM(Unk_ov23_02257740->unk_04, 1);

    ov23_0223FF8C(Unk_ov23_02257740->unk_04);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DATA__UG_PARTS, 9, Unk_ov23_02257740->unk_04, 2, 1, 0, 0, HEAP_ID_29);

    ov23_022401B0(Unk_ov23_02257740->unk_04);

    Bg_SetPriority(BG_LAYER_MAIN_0, 3);
    Bg_SetPriority(BG_LAYER_MAIN_1, 2);
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
    Bg_SetPriority(BG_LAYER_MAIN_3, 0);

    ov23_02240E88();
    ov23_0224108C();
    ov23_02240688(Unk_ov23_02257740->unk_04);
}

static void ov23_0223F020(UnkStruct_ov23_0223EE80 *param0)
{
    void *v0;
    int v1;

    Bg_FreeTilemapBuffer(Unk_ov23_02257740->unk_04, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(Unk_ov23_02257740->unk_04, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(Unk_ov23_02257740->unk_04, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(Unk_ov23_02257740->unk_04, BG_LAYER_MAIN_3);
    SpriteTransfer_ResetCharTransfer(Unk_ov23_02257740->unk_1C0[0]);
    SpriteTransfer_ResetCharTransfer(Unk_ov23_02257740->unk_1C0[4]);
    SpriteTransfer_ResetPlttTransfer(Unk_ov23_02257740->unk_1C0[1]);
    SpriteTransfer_ResetPlttTransfer(Unk_ov23_02257740->unk_1C0[5]);

    for (v1 = 0; v1 < 4; v1++) {
        SpriteResourceCollection_Delete(Unk_ov23_02257740->unk_1B0[v1]);
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_18[v1] != NULL) {
            Heap_FreeToHeap(param0->unk_18[v1]);
            param0->unk_18[v1] = NULL;
        }
    }

    SpriteList_Delete(Unk_ov23_02257740->unk_20);
    RenderOam_Free();

    CharTransfer_Free();
    PlttTransfer_Free();

    SetVBlankCallback(NULL, NULL);
    Heap_FreeToHeap(Unk_ov23_02257740->unk_04);

    Unk_ov23_02257740->unk_04 = NULL;

    Heap_Destroy(HEAP_ID_29);
    ov23_02253E2C(ov23_0224219C(), Unk_ov23_02257740->fieldSystem->bgConfig, (1024 - (18 + 12)), (((1024 - (18 + 12)) - 73) - (27 * 4)));
}

static void ov23_0223F118(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0223EE80 *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;

    switch (v0->unk_00) {
    case 0:
        ov23_0224DBF4(0);
        ov23_022417CC();
        CommPlayerMan_Reset();
        ov23_0224B430();
        (v0->unk_00)++;
        break;
    case 1:
        ov23_0224942C(fieldSystem->unk_6C);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_16, FADE_TYPE_UNK_18, FADE_TO_BLACK, 6, 1, HEAP_ID_FIELD);
        (v0->unk_00)++;
        break;
    case 2:
        if (IsScreenFadeDone()) {
            if (fieldSystem->unk_6C == NULL) {
                FieldSystem_FlagNotRunningFieldMap(fieldSystem);
                (v0->unk_00)++;
            }
        }
        break;
    case 3:
        if (!FieldSystem_HasParentProcess(fieldSystem)) {
            sub_02039794();
            (v0->unk_00)++;
        }
        break;
    case 4:
        ov23_0223EE80(v0);
        (v0->unk_00)++;
        break;
    case 5:
        ov23_0223EF98();
        (v0->unk_00)++;
        break;
    case 6:
        sub_02039734();
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, FADE_TO_BLACK, 6, 1, HEAP_ID_29);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        (v0->unk_00)++;
        break;
    case 7:
        if (IsScreenFadeDone()) {
            v0->unk_08 = 0;
            Sound_PlayEffect(SEQ_SE_PL_UG_006);
            v0->unk_00 = 8;
        }
        break;
    case 8:
        v0->unk_08++;

        if (v0->unk_08 > 20) {
            v0->unk_00 = 9;
        }
        break;
    case 9:
        ov23_0225410C(ov23_0224219C(), 0, v0->itemCount);
        Unk_ov23_02257740->unk_A24 = ov23_02253F60(ov23_0224219C(), UndergroundCommon_Text_SomethingPingedInWall, 0, NULL);
        v0->unk_08 = 0;
        (v0->unk_00)++;
        break;
    case 10:
        v0->unk_08++;

        if (v0->unk_08 > 80) {
            UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

            ov23_02254044(ov23_0224219C());

            if (UndergroundData_HasNeverMined(undergroundData)) {
                v0->unk_00++;
            } else {
                v0->unk_00 = 13;
            }
        }
        break;
    case 11:
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_MiningTutorial, 0, NULL);
        v0->unk_08 = 0;
        (v0->unk_00)++;
        break;
    case 12:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A)) {
                ov23_02254044(ov23_0224219C());
                v0->unk_00++;
            }
        }
        break;
    case 13:
        ov23_02240CFC(v0);
        ov23_02240B84(Unk_ov23_02257740->unk_04);
        ov23_0223FDE0(v0);
        SpriteList_Update(Unk_ov23_02257740->unk_20);
        break;
    case 14:
        ov23_0223FDE0(v0);
        SpriteList_Update(Unk_ov23_02257740->unk_20);

        v0->unk_08--;

        if (v0->unk_08 == 0) {
            Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_EverythingDugUp, 0, NULL);
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
            v0->unk_4C = 60;
            v0->unk_00 = 15;
        }
        break;
    case 15:
        SpriteList_Update(Unk_ov23_02257740->unk_20);

        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->unk_4C--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->unk_4C == 0)) {
                ov23_02254044(ov23_0224219C());
                v0->unk_00 = 16;
            }
        }
        break;
    case 16:
        SpriteList_Update(Unk_ov23_02257740->unk_20);

        if (ov23_022409F0(v0)) {
            v0->unk_00 = 17;
            v0->unk_4C = 60;
        } else {
            v0->unk_00 = 18;
        }
        break;
    case 17:
        SpriteList_Update(Unk_ov23_02257740->unk_20);

        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->unk_4C--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->unk_4C == 0)) {
                if (ov23_02240A90(v0)) {
                    v0->unk_4C = 60;
                    v0->unk_00 = 15;
                } else {
                    v0->unk_00 = 16;
                }
            }
        }
        break;
    case 18:
        SpriteList_Update(Unk_ov23_02257740->unk_20);
        ov23_02254044(ov23_0224219C());
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_16, FADE_TYPE_UNK_16, FADE_TO_BLACK, 6, 1, HEAP_ID_29);
        (v0->unk_00)++;
        break;
    case 19:
        SpriteList_Update(Unk_ov23_02257740->unk_20);

        if (IsScreenFadeDone()) {
            sub_02039794();
            ov23_0223F020(v0);
            FieldSystem_StartFieldMap(fieldSystem);
            (v0->unk_00)++;
        }
        break;
    case 20:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            fieldSystem->unk_6C = ov23_02249404(fieldSystem);
            sub_02039734();
            sub_020594FC();
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_17, FADE_TYPE_UNK_19, FADE_TO_BLACK, 6, 1, HEAP_ID_FIELD);
            (v0->unk_00)++;
            break;
        }
        break;
    case 21:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);

        if (IsScreenFadeDone()) {
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

            Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, 52, 0, 10 * 0x20, 4 * 0x20, HEAP_ID_FIELD);
            LoadStandardWindowGraphics(v0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 2, HEAP_ID_FIELD);
            CommPlayerMan_Restart();

            ov23_0224B460();
            ov23_022417E0();

            CommSys_SendDataFixedSize(67, &v0->unk_50);
            sub_02059514();

            Unk_ov23_02257740->unk_8CC = NULL;

            Heap_FreeToHeap(v0);
            SysTask_Done(param0);

            ov23_0224DBF4(1);
        }
        break;
    case 22:
        Unk_ov23_02257740->unk_A2C = 1;
        v0->unk_08--;

        if (v0->unk_08 == 0) {
            Unk_ov23_02257740->unk_A2C = 100;
            v0->unk_00 = 23;
        }

        ov23_02240B84(Unk_ov23_02257740->unk_04);
        SpriteList_Update(Unk_ov23_02257740->unk_20);
        break;
    case 23:
        SpriteList_Update(Unk_ov23_02257740->unk_20);
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_2, FADE_TYPE_UNK_2, FADE_TO_BLACK, 15, 1, HEAP_ID_29);
        Sound_PlayEffect(SEQ_SE_DP_UG_001);
        v0->unk_00 = 24;
        break;
    case 24:
        if (IsScreenFadeDone()) {
            int v3;

            for (v3 = 0; v3 < 8; v3++) {
                Sprite_SetDrawFlag(Unk_ov23_02257740->unk_24C[v3], 0);
            }

            v0->unk_00 = 25;
        } else {
            SpriteList_Update(Unk_ov23_02257740->unk_20);
        }

        break;
    case 25:
        BrightnessController_StartTransition(1, -16, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, BRIGHTNESS_MAIN_SCREEN);
        v0->unk_00 = 26;
        break;
    case 26:
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_WallCollapsed, 0, NULL);
        v0->unk_4C = 60;
        v0->unk_00 = 15;
        break;
    case 27:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->unk_4C--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->unk_4C == 0)) {
                ov23_02254044(ov23_0224219C());
                v0->unk_00 = 19;
            }
        }
        break;
    }
}

static void ov23_0223F70C(FieldSystem *fieldSystem)
{
    UnkStruct_ov23_0223EE80 *v0;
    void *journalEntryLocationEvent = JournalEntry_CreateEventDugUnderground(HEAP_ID_FIELDMAP);

    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
    v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov23_0223EE80));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_0223EE80));
    v0->fieldSystem = fieldSystem;

    HBlankSystem_Stop(fieldSystem->unk_04->hBlankSystem);
    SystemFlag_SetDiggingForFossils(SaveData_GetVarsFlags(fieldSystem->saveData));

    Unk_ov23_02257740->unk_8CC = SysTask_Start(ov23_0223F118, v0, 100);
}

static BOOL ov23_0223F768(void)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_00 == NULL) {
            return 1;
        }
    }

    return 0;
}

static int ov23_0223F78C(int index, int x, int y)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_00 == NULL) {
            Unk_ov23_02257740->unk_874[v0].unk_00 = &sMiningObjects[index];
            Unk_ov23_02257740->unk_874[v0].itemID = sMiningObjects[index].itemID;
            Unk_ov23_02257740->unk_874[v0].x = x;
            Unk_ov23_02257740->unk_874[v0].y = y;
            Unk_ov23_02257740->unk_874[v0].unk_08 = 0;

            return v0 + 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static BOOL IsCoordinatePartOfObject(MiningObject *param0, int x, int y)
{
    u8 *shape = param0->shape;
    int column, row, entriesPerRow;

    if (shape == NULL) {
        return TRUE;
    }

    row = y / 2;
    column = x / 2;
    entriesPerRow = param0->width / 2;

    if (shape[row * entriesPerRow + column] == 'o') {
        return FALSE;
    }

    return TRUE;
}

static BOOL Mining_TryPlaceObject(int index, int x, int y)
{
    int i, j, endX, endY, v4;

    if (!ov23_0223F768()) {
        return FALSE;
    }

    endX = sMiningObjects[index].width / 2 + x;
    endY = sMiningObjects[index].height / 2 + y;

    if (endX > 13) {
        return FALSE;
    }

    if (endY > 10) {
        return FALSE;
    }

    for (i = x; i < endX; i++) {
        for (j = y; j < endY; j++) {
            if (IsCoordinatePartOfObject(&sMiningObjects[index], (i - x) * 2, (j - y) * 2)) {
                if (Unk_ov23_02257740->unk_920[j][i] != 0) {
                    return FALSE;
                }
            }
        }
    }

    v4 = ov23_0223F78C(index, x, y);

    for (i = x; i < endX; i++) {
        for (j = y; j < endY; j++) {
            if (IsCoordinatePartOfObject(&sMiningObjects[index], (i - x) * 2, (j - y) * 2)) {
                Unk_ov23_02257740->unk_920[j][i] = v4;
            }
        }
    }

    return TRUE;
}

static int Mining_GetWeightOfItem(MiningObject *item)
{
    SaveData *saveData = FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem);
    UndergroundData *undergroundData = SaveData_GetUndergroundData(saveData);
    BOOL isTrainerIDOdd = TrainerInfo_ID(SaveData_GetTrainerInfo(saveData)) % 2;
    BOOL isNationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(saveData));
    int weight = 0;

    if (isNationalDexObtained) {
        if (isTrainerIDOdd) {
            weight += item->oddTIDNatDexWeight;
        } else {
            weight += item->evenTIDNatDexWeight;
        }
    } else {
        if (isTrainerIDOdd) {
            weight += item->oddTIDWeight;
        } else {
            weight += item->evenTIDWeight;
        }
    }

    return weight;
}

static int Mining_GetTotalItemWeight(void)
{
    int i, totalWeight = 0;

    for (i = 0; i < NELEMS(sMiningObjects); i++) {
        if (MINING_ROCK_1 == sMiningObjects[i].itemID) {
            break;
        }

        totalWeight += Mining_GetWeightOfItem(&sMiningObjects[i]);
    }

    return totalWeight;
}

static int Mining_PickItem(int param0)
{
    int i, v1 = param0;

    for (i = 0; i < NELEMS(sMiningObjects); i++) {
        if (MINING_ROCK_1 == sMiningObjects[i].itemID) {
            break;
        }

        v1 -= Mining_GetWeightOfItem(&sMiningObjects[i]);

        if (v1 < 0) {
            return i;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int Mining_GetTotalTypesOfRocks(void)
{
    int i, total = 0;

    for (i = 0; i < NELEMS(sMiningObjects); i++) {
        if (sMiningObjects[i].itemID >= MINING_ROCK_1) {
            total++;
        }
    }

    return total;
}

static void Mining_GenerateGameLayout(BgConfig *param0, int param1, UnkStruct_ov23_0223EE80 *param2)
{
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));
    int objectsPlaced, i, totalWeight = Mining_GetTotalItemWeight();
    int randNum, unused, x, y, j = 0, index, itemID;
    int typesOfRocks = Mining_GetTotalTypesOfRocks();
    int selectedPlates[4];

    param2->itemCount = MATH_Rand32(&Unk_ov23_02257740->unk_08, (4 - 1)) + 2;

    if (UndergroundData_HasNeverMined(undergroundData)) {
        param2->itemCount = 3;
    }

    for (objectsPlaced = 0; objectsPlaced < param2->itemCount;) {
        randNum = MATH_Rand32(&Unk_ov23_02257740->unk_08, totalWeight);
        index = Mining_PickItem(randNum);
        itemID = sMiningObjects[index].itemID;

        if (!UndergroundData_HasPlateNeverBeenMined(undergroundData, sMiningObjects[index].itemID)) {
            continue;
        }

        if ((MINING_TREASURE_FLAME_PLATE <= itemID) && (itemID <= MINING_TREASURE_IRON_PLATE)) {
            BOOL isPlateSelectedTwice = FALSE;

            selectedPlates[objectsPlaced] = itemID;

            for (i = 0; i < objectsPlaced; i++) {
                if (selectedPlates[i] == itemID) {
                    isPlateSelectedTwice = TRUE;
                }
            }

            if (isPlateSelectedTwice) {
                continue;
            }
        } else {
            selectedPlates[objectsPlaced] = 28;
        }

        x = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13);
        y = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10);

        if (Mining_TryPlaceObject(index, x, y)) {
            objectsPlaced++;
        }
    }

    if (!UndergroundData_HasNeverMined(undergroundData)) {
        for (j = 0; j < 100; j++) {
            index = MATH_Rand32(&Unk_ov23_02257740->unk_08, typesOfRocks);
            index += NELEMS(sMiningObjects) - typesOfRocks;
            x = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13);
            y = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10);

            if (Mining_TryPlaceObject(index, x, y)) {
                objectsPlaced++;
            }

            if (objectsPlaced > 12) {
                break;
            }
        }
    }

    ov23_0223FF60(objectsPlaced, param0, param1, param2);
}

static int ov23_0223FC9C(int param0, BgConfig *param1, int param2, UnkStruct_ov23_0223EE80 *param3)
{
    UnkStruct_ov23_0223FC9C *v0 = &Unk_ov23_02257740->unk_874[param0];
    u16 *v1 = Bg_GetTilemapBuffer(param1, 1);
    int v2 = v0->x * 2;
    int v3 = v0->y * 2;
    int v4 = v2 + v0->unk_00->width;
    int v5 = v3 + v0->unk_00->height;
    int v6, v7, v8, v9 = param2;
    u32 v10;
    int v11 = param0;
    NARC *v12 = NARC_ctor(NARC_INDEX_DATA__UG_PARTS, HEAP_ID_29);

    if (param0 >= param3->itemCount) {
        v11 = 4;
    }

    if (param0 >= param3->itemCount) {
        Graphics_LoadPaletteFromOpenNARC(v12, v0->unk_00->unk_12, 0, (v11 + 3) * 32, 32, HEAP_ID_29);
    } else {
        param3->unk_18[param0] = Graphics_GetPlttDataFromOpenNARC(v12, v0->unk_00->unk_12, &param3->unk_28[param0], HEAP_ID_29);
        DC_FlushRange(param3->unk_28[param0]->pRawData, 32);
        GX_LoadBGPltt(param3->unk_28[param0]->pRawData, (v11 + 3) * 32, 32);
    }

    v10 = Graphics_LoadTilesToBgLayerFromOpenNARC(v12, v0->unk_00->unk_10, param1, 1, param2, 0, 0, HEAP_ID_29);
    NARC_dtor(v12);

    for (v6 = v3; v6 < v5; v6++) {
        for (v7 = v2; v7 < v4; v7++) {
            v9++;

            if (!IsCoordinatePartOfObject(v0->unk_00, v7 - v2, v6 - v3)) {
                continue;
            }

            v8 = v7 + ((v6 + 4) * 32);
            v1[v8] = ((v11 + 3) * 0x1000) + v9 - 1;
        }
    }

    return v10;
}

static u8 Unk_ov23_02257570[] = {
    0x20,
    0xfe,
    0x40,
    0xfe,
    0x20,
    0xfe,
    0x0,
    0xfe,
    0x20,
    0xfe,
    0x40,
    0xfe,
    0x20,
    0xfe,
    0x0,
    0xff
};

static void ov23_0223FDE0(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, v2, v3;
    VecFx32 v4;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_38[v0] == 1) {
            Sound_PlayEffect(SEQ_SE_DP_KIRAKIRA4);

            for (v3 = 0; v3 < 3; v3++) {
                v1 = MATH_Rand32(&Unk_ov23_02257740->unk_08, Unk_ov23_02257740->unk_874[v0].unk_00->width * 8);
                v2 = MATH_Rand32(&Unk_ov23_02257740->unk_08, Unk_ov23_02257740->unk_874[v0].unk_00->height * 8);
                v1 += Unk_ov23_02257740->unk_874[v0].x * 2 * 8;
                v2 += Unk_ov23_02257740->unk_874[v0].y * 2 * 8;
                v2 += 8 * 4;

                v4.x = FX32_ONE * v1;
                v4.y = FX32_ONE * v2;

                Sprite_SetAnim(Unk_ov23_02257740->unk_24C[5 + v3], 8 + v3);
                Sprite_SetPosition(Unk_ov23_02257740->unk_24C[5 + v3], &v4);
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_38[v0]) {
            u16 *v5 = param0->unk_28[v0]->pRawData;
            u8 v6 = Unk_ov23_02257570[param0->unk_38[v0] - 1];

            if (v6 == 0xff) {
                param0->unk_38[v0] = 0;
                continue;
            }

            param0->unk_38[v0]++;

            if (v6 == 0xfe) {
                continue;
            }

            GX_LoadBGPltt(&v5[v6], (v0 + 3) * 32, 32);
        }
    }
}

static void ov23_0223FF60(int param0, BgConfig *param1, int param2, UnkStruct_ov23_0223EE80 *param3)
{
    int v0, v1 = 512 + 24 * 3 + 32 + 1;
    u32 v2;

    for (v0 = 0; v0 < param0; v0++) {
        v2 = ov23_0223FC9C(v0, param1, v1, param3);
        v1 += v2 / 32;
    }
}

static void ov23_0223FF8C(BgConfig *param0)
{
    static const u8 v0 = 8;
    static const u8 v1 = 5;
    static u8 v2[v0][v0] = {
        { 0, 0, 4, 4, 4, 4, 0, 0 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 0, 0, 4, 4, 4, 4, 0, 0 }
    };
    static u8 v3[v1][v1] = {
        { 0, 6, 6, 6, 0 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 0, 6, 6, 6, 0 }
    };
    int v4, v5, v6, v7, v8, v9, v10;
    BOOL v11 = 1;

    for (v10 = 0; v10 < 10; v10++) {
        v8 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13 + v0) - v0;
        v9 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10 + v0) - v1;

        for (v7 = v9; v7 < v9 + v0; v7++) {
            if ((v7 >= 10) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v0; v6++) {
                if ((v6 >= 13) || (v6 < 0)) {
                    continue;
                }

                if (v2[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                Unk_ov23_02257740->unk_9A2[v7][v6] = v2[v7 - v9][v6 - v8];
            }
        }
    }

    for (v10 = 0; v10 < 15; v10++) {
        v8 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13 + v1) - v1;
        v9 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10 + v1) - v1;
        v11 = 1;

        for (v7 = v9; v7 < v9 + v1; v7++) {
            if ((v7 >= 10) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v1; v6++) {
                if ((v6 >= 13) || (v6 < 0)) {
                    continue;
                }

                if (v2[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                if (Unk_ov23_02257740->unk_9A2[v7][v6] < 4) {
                    v11 = 0;
                    break;
                }
            }

            if (v11 == 0) {
                break;
            }
        }

        if (!v11) {
            continue;
        }

        for (v7 = v9; v7 < v9 + v1; v7++) {
            if ((v7 >= 10) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v1; v6++) {
                if ((v6 >= 13) || (v6 < 0)) {
                    continue;
                }

                if (v3[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                Unk_ov23_02257740->unk_9A2[v7][v6] = v3[v7 - v9][v6 - v8];
            }
        }
    }

    for (v7 = 0; v7 < 10; v7++) {
        for (v6 = 0; v6 < 13; v6++) {
            (void)0;
        }
    }
}

static void ov23_022401B0(BgConfig *param0)
{
    static u8 v0[] = { 0xe, 0xf, 0x1e, 0x1f };
    static u8 v1[] = { 0xa, 0xb, 0x1a, 0x1b };
    static u8 v2[] = { 0x8, 0x9, 0x18, 0x19 };
    static u8 v3[] = { 0x6, 0x7, 0x16, 0x17 };
    static u8 v4[] = { 0x4, 0x5, 0x14, 0x15 };
    static u8 v5[] = { 0x2, 0x3, 0x12, 0x13 };
    static u8 v6[] = { 0x0, 0x1, 0x10, 0x11 };
    static u8 *v7[] = { v0, v1, v2, v3, v4, v5, v6 };
    u16 *v8 = Bg_GetTilemapBuffer(param0, 2);
    int v9, v10, v11;

    for (v9 = 0; v9 < 10; v9++) {
        for (v10 = 0; v10 < 13; v10++) {
            u8 *v12 = v7[Unk_ov23_02257740->unk_9A2[v9][v10]];

            v11 = v10 * 2 + ((v9 * 2 + 4) * 32);
            v8[v11] = v12[0] + 0x2001;
            v8[v11 + 1] = v12[1] + 0x2001;
            v8[v11 + 32] = v12[2] + 0x2001;
            v8[v11 + 33] = v12[3] + 0x2001;
        }
    }

    Bg_CopyTilemapBufferToVRAM(param0, 2);
}

static BOOL ov23_02240244(int param0, int param1)
{
    int v0;
    int v1 = Unk_ov23_02257740->unk_920[param1][param0];

    if (v1 == 0) {
        return FALSE;
    }

    v0 = Unk_ov23_02257740->unk_874[v1 - 1].itemID;

    if ((v0 != 0) && (v0 < MINING_ROCK_1)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL ov23_02240280(int param0, int param1)
{
    int v0 = Unk_ov23_02257740->unk_920[param1][param0];

    if (v0 == 0) {
        return FALSE;
    }

    if (Unk_ov23_02257740->unk_874[v0 - 1].itemID >= MINING_ROCK_1) {
        return TRUE;
    }

    return FALSE;
}

static void ov23_022402B8(int param0, int param1, BOOL param2, UnkStruct_ov23_0223EE80 *param3)
{
    static s8 v0[] = { 1, -1, -1, 1 };
    static s8 v1[] = { 1, -1, 1, -1 };
    static s8 v2[] = { 0, 0, -1, 1 };
    static s8 v3[] = { 1, -1, 0, 0 };
    int v4, v5, v6, v7;
    BOOL v8 = 0, v9 = 0;

    v4 = param0 / 16;
    v5 = param1 / 16 - 2;

    if ((v4 < 0) || (v4 >= 13) || (v5 < 0) || (v5 >= 10)) {
        return;
    }

    if (Unk_ov23_02257740->unk_9A2[v5][v4] != 0) {
        Unk_ov23_02257740->unk_9A2[v5][v4] -= 1;
    }

    if (Unk_ov23_02257740->unk_9A2[v5][v4] != 0) {
        Unk_ov23_02257740->unk_9A2[v5][v4] -= 1;
    }

    if (ov23_02240280(v4, v5) && (Unk_ov23_02257740->unk_9A2[v5][v4] == 0)) {
        v8 = 1;
    }

    if (ov23_02240244(v4, v5) && (Unk_ov23_02257740->unk_9A2[v5][v4] == 0)) {
        v9 = 1;
        param3->unk_14 = 15;
    }

    ov23_0223ED68(v4 * 16, (v5 + 2) * 16, param2, v8, v9);

    if (v8) {
        return;
    }

    if (!param2) {
        for (v7 = 0; v7 < 4; v7++) {
            int v10 = v5 + v1[v7];
            int v11 = v4 + v0[v7];

            if ((v10 >= 0) && (v10 < 10)) {
                if ((v11 >= 0) && (v11 < 13)) {
                    if (Unk_ov23_02257740->unk_9A2[v10][v11] != 0) {
                        Unk_ov23_02257740->unk_9A2[v10][v11] -= 1;
                    }
                }
            }
        }
    }

    for (v7 = 0; v7 < 4; v7++) {
        int v12 = v5 + v3[v7];
        int v13 = v4 + v2[v7];

        if ((v12 >= 0) && (v12 < 10)) {
            if ((v13 >= 0) && (v13 < 13)) {
                if (Unk_ov23_02257740->unk_9A2[v12][v13] != 0) {
                    Unk_ov23_02257740->unk_9A2[v12][v13] -= 1;
                }

                if (!param2) {
                    if (Unk_ov23_02257740->unk_9A2[v12][v13] != 0) {
                        Unk_ov23_02257740->unk_9A2[v12][v13] -= 1;
                    }
                }
            }
        }
    }
}

static void ov23_02240454(u16 *param0, UnkStruct_ov23_02256BF8 *param1, int param2, int param3)
{
    int v0, v1, v2, v3, v4;

    for (v1 = param1->unk_01, v4 = 0; v1 < param1->unk_03; v1++, v4++) {
        v3 = param3 * v4 + param2;

        for (v2 = param1->unk_00; v2 < param1->unk_02; v2++) {
            v0 = v2 + (v1 * 32);
            param0[v0] = (param0[v0] & 0xfc00) + v3;
            v3++;
        }
    }
}

static UnkStruct_ov23_02256BF8 Unk_ov23_02256BF8[] = {
    0x1A,
    0x6,
    0x20,
    0xE
};

static UnkStruct_ov23_02256BF8 Unk_ov23_02256BF4[] = {
    0x1A,
    0xf,
    0x20,
    0x17
};

static UnkStruct_ov23_02256BF8 endPos[] = {
    0x1a,
    0x0,
    0x20,
    0x4
};

static void ov23_022404C8(BgConfig *param0)
{
    u16 *v0;

    Unk_ov23_02257740->unk_A2A = 1;
    Unk_ov23_02257740->unk_A28 = 1;

    v0 = Bg_GetTilemapBuffer(param0, 1);
    ov23_02240454(v0, Unk_ov23_02256BF4, 0x30, 54);
}

static void ov23_022404F8(BgConfig *param0, int param1, int param2, int param3)
{
    VecFx32 v0;
    u8 *v1;
    u16 *v2;

    if (param3 < 2) {
        return;
    }

    if (param3 == 2) {
        if ((param1 > (0x1a * 8 + 6)) && ((0x1f * 8 + 4) > param1)) {
            if ((param2 > (5 * 8 + 3)) && ((0xd * 8 + 6) > param2)) {
                Unk_ov23_02257740->unk_A2A = 0;
                Unk_ov23_02257740->unk_A28 = 0;
            } else if ((param2 > (0xe * 8 + 2)) && ((0x15 * 8 + 6) > param2)) {
                Unk_ov23_02257740->unk_A2A = 1;
                Unk_ov23_02257740->unk_A28 = 1;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    v2 = Bg_GetTilemapBuffer(param0, 1);

    switch (Unk_ov23_02257740->unk_A2A) {
    case 0:
        if (2 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x18, 54);
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x24, 54);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (2 + 1 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x1e, 54);
        }

        if (2 == param3) {
            Sprite_SetAnim(Unk_ov23_02257740->unk_24C[2], 6);
            Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[2], 1);

            v0.x = FX32_ONE * 232;
            v0.y = FX32_ONE * 80;

            Sprite_SetPosition(Unk_ov23_02257740->unk_24C[2], &v0);
        }
        break;
    case 1:
        if (2 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x12, 54);
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x2a, 54);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (2 + 1 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x30, 54);
        }

        if (2 == param3) {
            Sprite_SetAnim(Unk_ov23_02257740->unk_24C[2], 7);
            Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[2], 1);

            v0.x = FX32_ONE * 232;
            v0.y = FX32_ONE * 152;

            Sprite_SetPosition(Unk_ov23_02257740->unk_24C[2], &v0);
        }
        break;
    }

    Bg_CopyTilemapBufferToVRAM(param0, 1);
}

static void ov23_02240660(VecFx32 *param0)
{
    int v0;
    int v1 = Unk_ov23_02257740->unk_A2B;

    v1 = (v1 / 4) * 4;
    v1 = v1 + 8;

    param0->x = FX32_ONE * (v1 + 8);
    param0->y = FX32_ONE * 16;
}

static void ov23_02240688(BgConfig *param0)
{
    VecFx32 v0;
    int v1 = Unk_ov23_02257740->unk_A2B;
    int v2, v3, v4;
    u16 *v5 = Bg_GetTilemapBuffer(param0, 0);

    v1 = (v1 / 4) * 4;
    v4 = 6 - (v1 % 24) / 4;

    ov23_02240660(&v0);
    Sprite_SetAnim(Unk_ov23_02257740->unk_24C[1], v4);

    v1 = v1 + 8;
    v2 = ((26 * 8) - v1) / 8;

    for (v3 = 0; v3 < v2; v3++) {
        v5[0x19 - v3] = (v5[0x19 - v3] & 0xfc00) + 0xb - (v3 % 3);
        v5[0x39 - v3] = (v5[0x39 - v3] & 0xfc00) + 0x41 - (v3 % 3);
        v5[0x59 - v3] = (v5[0x59 - v3] & 0xfc00) + 0x77 - (v3 % 3);
        v5[0x79 - v3] = (v5[0x79 - v3] & 0xfc00) + 0xad - (v3 % 3);
    }

    Bg_CopyTilemapBufferToVRAM(param0, 0);
}

static void ov23_02240758(UnkStruct_ov23_0223EE80 *param0)
{
    BOOL v0 = 0;
    int v1;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if ((Unk_ov23_02257740->unk_910[v1] != 0xff) && (Unk_ov23_02257740->unk_918[v1] != 0xff)) {
            int v2 = CommPlayer_XPos(CommSys_CurNetId());
            int v3 = CommPlayer_ZPos(CommSys_CurNetId());
            int v4 = ov23_0224AD04(v1);
            int v5 = ov23_0224AD40(v1);

            if ((v4 > (v2 - 10)) && (v4 < (v2 + 10))) {
                if ((v5 > (v3 - 10)) && (v5 < (v3 + 10))) {
                    ov23_022402B8(Unk_ov23_02257740->unk_910[v1], Unk_ov23_02257740->unk_918[v1], 1, param0);
                    v0 = 1;

                    Unk_ov23_02257740->unk_910[v1] = 0xff;
                    Unk_ov23_02257740->unk_918[v1] = 0xff;
                }
            }
        }
    }

    if (v0) {
        ov23_022401B0(Unk_ov23_02257740->unk_04);
    }
}

static int ov23_0224080C(int param0)
{
    int v0 = 0;
    int v1 = param0;

    if (IsMiningItemSphere(v1)) {
        if ((v1 == MINING_LARGE_PRISM_SPHERE) || (v1 == MINING_LARGE_PALE_SPHERE) || (v1 == MINING_SMALL_PRISM_SPHERE) || (v1 == MINING_SMALL_PALE_SPHERE)) {
            v0 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 1) + 1;
        } else {
            v0 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 4) + 1;
        }

        if ((v1 == MINING_LARGE_PRISM_SPHERE) || (v1 == MINING_LARGE_PALE_SPHERE) || (v1 == MINING_LARGE_RED_SPHERE) || (v1 == MINING_LARGE_BLUE_SPHERE) || (v1 == MINING_LARGE_GREEN_SPHERE)) {
            v1 = v1 - 6 + 1;
            v0 += 10;
        }

        v0 += Unk_ov23_02257740->unk_A2B / ((200 - 4) / 5);

        if (Unk_ov23_02257740->unk_A2B != 0) {
            v0 += 5;
        }
    }

    return v0;
}

static void ov23_022408A0(int itemID, int param1)
{
    int v0 = itemID;
    UndergroundRecord *v1 = SaveData_UndergroundRecord(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (IsMiningItemSphere(v0)) {
        ov23_0224F6E0(v0, param1);
    } else {
        ov23_0224F710(v0);
        UndergroundData_SetPlateMined(undergroundData, v0);
    }
}

static BOOL Mining_IsRoomInBag(int itemID)
{
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (IsMiningItemSphere(itemID)) {
        if (40 == UndergroundData_GetSphereCount(undergroundData)) {
            return FALSE;
        }

        return TRUE;
    } else {
        if (40 == UndergroundData_GetTreasureCount(undergroundData)) {
            return FALSE;
        }

        return TRUE;
    }
}

static BOOL ov23_02240934(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, v2;
    BOOL v3[4];
    BOOL v4 = 1;

    for (v2 = 0; v2 < param0->itemCount; v2++) {
        v3[v2] = 1;
    }

    for (v0 = 0; v0 < 10; v0++) {
        for (v1 = 0; v1 < 13; v1++) {
            v2 = Unk_ov23_02257740->unk_920[v0][v1];

            if ((v2 <= param0->itemCount) && (v2 != 0)) {
                if (Unk_ov23_02257740->unk_9A2[v0][v1] != 0) {
                    v3[v2 - 1] = 0;
                }
            }
        }
    }

    for (v2 = 0; v2 < param0->itemCount; v2++) {
        if (!v3[v2]) {
            v4 = 0;
        } else if (Unk_ov23_02257740->unk_874[v2].unk_08 == 0) {
            param0->unk_38[v2] = 1;
            Unk_ov23_02257740->unk_874[v2].unk_08 = 1;
        }
    }

    return v4;
}

static BOOL ov23_022409F0(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, entryID;

    for (v0 = 0; v0 < param0->itemCount; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_08 == 1) {
            param0->unk_48 = ov23_0224080C(Unk_ov23_02257740->unk_874[v0].itemID);

            ov23_02254080(ov23_0224219C(), Unk_ov23_02257740->unk_874[v0].itemID);

            if (IsMiningItemSphere(Unk_ov23_02257740->unk_874[v0].itemID)) {
                entryID = UndergroundCommon_Text_YouObtainedSphere;
                ov23_02254154(ov23_0224219C(), 1, param0->unk_48);
            } else {
                entryID = UndergroundCommon_Text_ItemWasObtained;
                ov23_02254204(ov23_0224219C(), 2);
            }

            Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), entryID, 0, NULL);
            return 1;
        }
    }

    return 0;
}

static BOOL ov23_02240A90(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, itemID;
    UndergroundRecord *undergroundRecord = SaveData_UndergroundRecord(Unk_ov23_02257740->fieldSystem->saveData);
    UndergroundData *undergroundData = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    for (v0 = 0; v0 < param0->itemCount; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_08 == 1) {
            Unk_ov23_02257740->unk_874[v0].unk_08 = 0;

            itemID = Unk_ov23_02257740->unk_874[v0].itemID;

            if (IsMiningItemSphere(itemID)) {
                UndergroundRecord_AddNumSpheresDug(undergroundRecord, 1);
            } else {
                sub_0206D6C8(Unk_ov23_02257740->fieldSystem, itemID, 1);

                //bug: rare bones count toward the fossil total
                if ((itemID >= MINING_TREASURE_HELIX_FOSSIL) && ((MINING_TREASURE_RARE_BONE + 1) > itemID) || (itemID == MINING_TREASURE_ARMOR_FOSSIL) || (itemID == MINING_TREASURE_SKULL_FOSSIL)) {
                    UndergroundRecord_AddNumFossilsDug(undergroundRecord, 1);
                    {
                        VarsFlags *v5 = SaveData_GetVarsFlags(Unk_ov23_02257740->fieldSystem->saveData);

                        SystemVars_SetUndergroundFossilsUnearthed(v5, SystemVars_GetUndergroundFossilsUnearthed(v5) + 1);
                    }
                } else {
                    sub_02029688(undergroundRecord, 1);
                }
            }

            if (Mining_IsRoomInBag(itemID)) {
                ov23_022408A0(itemID, param0->unk_48);
                break;
            } else {
                Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_TooBadBagIsFull3, 0, NULL);
                return 1;
            }
        }
    }

    return 0;
}

static void ov23_02240B84(BgConfig *param0)
{
    int v0, v1, v2;
    VecFx32 v3;

    if (Unk_ov23_02257740->unk_A2C == 0) {
        return;
    }

    v1 = (((200 - 4) - Unk_ov23_02257740->unk_A2B) / 15);
    v2 = (((200 - 4) - Unk_ov23_02257740->unk_A2B) / 50);

    Unk_ov23_02257740->unk_A2C++;

    if (Unk_ov23_02257740->unk_A2C > v1) {
        Unk_ov23_02257740->unk_A2D = Unk_ov23_02257740->unk_A2E = 0;
    } else {
        Unk_ov23_02257740->unk_A2D = MATH_Rand32(&Unk_ov23_02257740->unk_08, 3 + v2) - (3 + v2) / 2;
        Unk_ov23_02257740->unk_A2E = MATH_Rand32(&Unk_ov23_02257740->unk_08, 3 + v2) - (3 + v2) / 2;
    }

    ov23_02240660(&v3);

    v3.x -= Unk_ov23_02257740->unk_A2D * FX32_ONE;
    v3.y -= Unk_ov23_02257740->unk_A2E * FX32_ONE;

    Sprite_SetPosition(Unk_ov23_02257740->unk_24C[1], &v3);
}

static void ov23_02240C94(BgConfig *param0)
{
    int v0, v1, v2;
    VecFx32 v3;

    if (Unk_ov23_02257740->unk_A2C == 0) {
        return;
    }

    v1 = (((200 - 4) - Unk_ov23_02257740->unk_A2B) / 10);

    if (Unk_ov23_02257740->unk_A2C > v1) {
        Unk_ov23_02257740->unk_A2C = 0;
    }

    for (v0 = 0; v0 < 3; v0++) {
        Bg_SetOffset(param0, v0, 0, Unk_ov23_02257740->unk_A2D);
        Bg_SetOffset(param0, v0, 3, Unk_ov23_02257740->unk_A2E);
    }
}

static BOOL ov23_02240CFC(UnkStruct_ov23_0223EE80 *param0)
{
    u8 v0[2];
    int v1;
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (Unk_ov23_02257740->unk_A29 == 1) {
        Unk_ov23_02257740->unk_A29 = 0;
    }

    if (gSystem.touchPressed) {
        if ((gSystem.touchX < 2 * 8 * 13) && (gSystem.touchY >= 4 * 8)) {
            v0[0] = gSystem.touchX;
            v0[1] = gSystem.touchY;

            ov23_022402B8(gSystem.touchX, gSystem.touchY, Unk_ov23_02257740->unk_A28, param0);

            if (Unk_ov23_02257740->unk_A28) {
                v1 = 4;
            } else {
                v1 = 8;
            }

            CommSys_SendDataFixedSize(68, v0);

            if (Unk_ov23_02257740->unk_A2B > v1) {
                Unk_ov23_02257740->unk_A2B -= v1;
            } else {
                Unk_ov23_02257740->unk_A2B = 0;
            }

            ov23_022401B0(Unk_ov23_02257740->unk_04);
            ov23_02240688(Unk_ov23_02257740->unk_04);

            Unk_ov23_02257740->unk_A2C = 1;
        } else if (gSystem.touchX >= (2 * 8 * 13)) {
            Unk_ov23_02257740->unk_A29 = 2;
        }
    }

    if (param0->unk_14) {
        param0->unk_14--;

        if (param0->unk_14 == 0) {
            Sound_PlayEffect(SEQ_SE_DP_KIRAKIRA3);
        }
    }

    ov23_022404F8(Unk_ov23_02257740->unk_04, gSystem.touchX, gSystem.touchY, Unk_ov23_02257740->unk_A29);

    if (Unk_ov23_02257740->unk_A29 >= 2) {
        Unk_ov23_02257740->unk_A29++;
    }

    ov23_02240758(param0);

    if (ov23_02240934(param0)) {
        UndergroundData_SetHasMined(undergroundData);
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(Unk_ov23_02257740->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_UNCOVER_FOSSIL);
        param0->unk_00 = 14;
        param0->unk_08 = 25;
        param0->unk_50 = 1;
        return 1;
    } else if (Unk_ov23_02257740->unk_A2B == 0) {
        UndergroundData_SetHasMined(undergroundData);
        param0->unk_50 = 0;
        param0->unk_08 = 45;
        param0->unk_00 = 22;

        return 1;
    }

    return 0;
}

static void ov23_02240E60(SpriteResource *param0)
{
    Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F] = param0;
    Unk_ov23_02257740->unk_A2F++;
}

static void ov23_02240E88(void)
{
    int v0;
    NARC *v1;

    Unk_ov23_02257740->unk_A2F = 0;

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 124, 0, 31, 0, 124, 0, 31, 29);
    ov23_0224119C();

    Unk_ov23_02257740->unk_20 = SpriteList_InitRendering(26, &Unk_ov23_02257740->unk_24, HEAP_ID_29);

    SetSubScreenViewRect(&Unk_ov23_02257740->unk_24, 0, (192 << FX32_SHIFT) * 2);

    for (v0 = 0; v0 < 4; v0++) {
        Unk_ov23_02257740->unk_1B0[v0] = SpriteResourceCollection_New(2, v0, HEAP_ID_29);
    }

    v1 = NARC_ctor(NARC_INDEX_DATA__UG_ANIM, HEAP_ID_29);

    ov23_02240E60(SpriteResourceCollection_AddTilesFrom(Unk_ov23_02257740->unk_1B0[0], v1, 6, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 29));
    SpriteTransfer_RequestChar(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);
    ov23_02240E60(SpriteResourceCollection_AddPaletteFrom(Unk_ov23_02257740->unk_1B0[1], v1, 7, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 29));

    SpriteTransfer_RequestPlttFreeSpace(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);

    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[2], v1, 5, 0, 0, 2, 29));
    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[3], v1, 4, 0, 0, 3, 29));
    ov23_02240E60(SpriteResourceCollection_AddTilesFrom(Unk_ov23_02257740->unk_1B0[0], v1, 3, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 29));

    SpriteTransfer_RequestChar(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);
    ov23_02240E60(SpriteResourceCollection_AddPalette(Unk_ov23_02257740->unk_1B0[1], 52, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 29));
    SpriteTransfer_RequestPlttFreeSpace(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);

    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[2], v1, 2, 0, 1, 2, 29));
    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[3], v1, 1, 0, 1, 3, 29));
    NARC_dtor(v1);
}

static void ov23_0224108C(void)
{
    int v0, v1;
    AffineSpriteListTemplate v2;

    for (v0 = 0; v0 < 2; v0++) {
        SpriteResourcesHeader_Init(&Unk_ov23_02257740->unk_204[v0], v0, v0, v0, v0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257740->unk_1B0[0], Unk_ov23_02257740->unk_1B0[1], Unk_ov23_02257740->unk_1B0[2], Unk_ov23_02257740->unk_1B0[3], NULL, NULL);

        v2.list = Unk_ov23_02257740->unk_20;
        v2.resourceData = &Unk_ov23_02257740->unk_204[v0];
        v2.position.x = FX32_CONST(32);
        v2.position.y = FX32_CONST(96);
        v2.position.z = 0;
        v2.affineScale.x = FX32_ONE;
        v2.affineScale.y = FX32_ONE;
        v2.affineScale.z = FX32_ONE;
        v2.affineZRotation = 0;
        v2.priority = 0;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v2.heapID = HEAP_ID_29;
        v2.position.x = FX32_ONE * 0;
        v2.position.y = FX32_ONE * 240;

        if (v0 == 0) {
            for (v1 = 2; v1 <= 7; v1++) {
                Unk_ov23_02257740->unk_24C[v1] = SpriteList_AddAffine(&v2);
                Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[v1], 1);
            }
        }

        Unk_ov23_02257740->unk_24C[v0] = SpriteList_AddAffine(&v2);
        Sprite_SetAnimateFlag(Unk_ov23_02257740->unk_24C[v0], 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_0224119C(void)
{
    {
        CharTransferTemplate v0 = {
            20, (2048 * 2), (2048 * 2), 29
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    PlttTransfer_Init(20, HEAP_ID_29);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void ov23_022411E8(void *param0)
{
    BgConfig *v0 = param0;

    ov23_02240C94(v0);

    Bg_RunScheduledUpdates(v0);
    VramTransfer_Process();
    RenderOam_Transfer();
}

BOOL ov23_02241200(int param0, int param1)
{
    if (ov23_0223E88C(param0, param1)) {
        return 1;
    }

    return 0;
}

int ov23_0224121C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_8D4[param0].unk_00;
    }

    return 0;
}

int ov23_0224123C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_8D4[param0].unk_02;
    }

    return 0;
}

int ov23_0224125C(int param0)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->unk_8D0) {
        int v0 = Unk_ov23_02257740->unk_8D0->unk_4E4;

        v0 = (v0 + param0) % (250 / 3);
        return Unk_ov23_02257740->unk_8D0->unk_00[v0].unk_00;
    }

    return 0;
}

int ov23_02241294(int param0)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->unk_8D0) {
        int v0 = Unk_ov23_02257740->unk_8D0->unk_4E4;

        v0 = (v0 + param0) % (250 / 3);
        return Unk_ov23_02257740->unk_8D0->unk_00[v0].unk_02;
    }

    return 0;
}

static void ov23_022412CC(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022412CC *v0 = param1;

    v0->unk_4E4++;

    if ((250 / 3) < v0->unk_4E4) {
        Sound_PlayEffect(SEQ_SE_PL_UG_006);
        v0->unk_4E4 = 0;
    }
}

void ov23_022412F0(void)
{
    UnkStruct_ov23_022412CC *v0;

    GF_ASSERT(!Unk_ov23_02257740->unk_8D0);
    GF_ASSERT(!Unk_ov23_02257740->unk_8C4);

    v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov23_022412CC));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_022412CC));
    Link_Message(71);

    v0->unk_4E4 = 250 / 3 - 10;

    Unk_ov23_02257740->unk_8D0 = v0;
    Unk_ov23_02257740->unk_8C4 = SysTask_Start(ov23_022412CC, v0, 100);
}

void ov23_02241364(void)
{
    if (Unk_ov23_02257740->unk_8C4) {
        SysTask_Done(Unk_ov23_02257740->unk_8C4);
        Heap_FreeToHeap(Unk_ov23_02257740->unk_8D0);
        Unk_ov23_02257740->unk_8C4 = NULL;
        Unk_ov23_02257740->unk_8D0 = NULL;
    }
}

void ov23_022413A0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->unk_8BC[param0] = 1;
}

static void ov23_022413B4(void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        int v2 = Unk_ov23_02257740->unk_8BC[v0] - 1;

        if (Unk_ov23_02257740->unk_8BC[v0]) {
            while (TRUE) {
                UnkStruct_ov23_0223E6F8 *v3 = &Unk_ov23_02257740->unk_26C[v2];

                if ((v3->unk_00 != 0xffff) && (v3->unk_02 != 0xffff)) {
                    UnkStruct_ov23_0224142C v4;

                    v4.unk_00 = v3->unk_00;
                    v4.unk_02 = v3->unk_02;
                    v4.unk_04 = v0;
                    sub_02035B48(72, &v4);
                    Unk_ov23_02257740->unk_8BC[v0] = v2 + 3;
                    break;
                }

                v2++;
                v2++;
                v2++;

                if (v2 >= 250) {
                    Unk_ov23_02257740->unk_8BC[v0] = 0;
                    break;
                }
            }
        }
    }
}

void ov23_0224142C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224142C *v0 = param2;
    int v1, v2;

    if (Unk_ov23_02257740 == NULL) {
        return;
    }

    v2 = v0->unk_04 & 0xf;

    if (Unk_ov23_02257740->unk_8D0 == NULL) {
        if (CommSys_CurNetId() == v2) {
            v1 = (v0->unk_04 >> 4) & 0xf;

            if ((v1 > 0) && (v1 <= 8)) {
                MI_CpuCopy8(param2, &Unk_ov23_02257740->unk_8D4[v1 - 1], sizeof(UnkStruct_ov23_0224142C));
            }
        }
    } else {
        if (v2 == CommSys_CurNetId()) {
            MI_CpuCopy8(param2, &Unk_ov23_02257740->unk_8D0->unk_00[Unk_ov23_02257740->unk_8D0->unk_4E2], sizeof(UnkStruct_ov23_0224142C));
            Unk_ov23_02257740->unk_8D0->unk_4E2++;

            if (Unk_ov23_02257740->unk_8D0->unk_4E2 >= 250) {
                Unk_ov23_02257740->unk_8D0->unk_4E2 = 0;
            }
        }
    }
}

int ov23_022414D0(void)
{
    return sizeof(UnkStruct_ov23_0224142C);
}

static void ov23_022414D4(void)
{
    UnkStruct_ov23_0223E6F8 *v0;
    int v1, v2;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (!CommSys_IsPlayerConnected(v1)) {
            continue;
        }

        if (CommPlayer_GetMovementTimer(v1)) {
            Unk_ov23_02257740->unk_8FC[v1] = 0;
            continue;
        }

        if (Unk_ov23_02257740->unk_8FC[v1] >= 28) {
            continue;
        }

        Unk_ov23_02257740->unk_8FC[v1]++;

        if (Unk_ov23_02257740->unk_8FC[v1] < 20) {
            continue;
        }

        v2 = ov23_0223E8CC(CommPlayer_GetXServer(v1), CommPlayer_GetZServer(v1));

        if (v2 != -1) {
            v0 = &Unk_ov23_02257740->unk_26C[v2];

            if ((v0->unk_00 != 0xffff) && (v0->unk_02 != 0xffff)) {
                UnkStruct_ov23_0224142C v3;

                v3.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
                v3.unk_00 = v0->unk_00;
                v3.unk_02 = v0->unk_02;

                sub_02035B48(72, &v3);
            }
        } else {
            UnkStruct_ov23_0224142C v4;

            v4.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
            v4.unk_00 = 0;
            v4.unk_02 = 0;

            sub_02035B48(72, &v4);
        }
    }
}

BOOL ov23_022415B8(Strbuf *param0)
{
    int v0;
    TrainerInfo *v1;
    TrainerInfo *v2;

    if (!Unk_ov23_02257740) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257740->unk_908[v0]) {
            v1 = CommInfo_TrainerInfo(v0);
            Unk_ov23_02257740->unk_908[v0] = 0;

            if (ov23_022422A8(v1, 0, 105, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

void ov23_0224160C(void)
{
    if (Unk_ov23_02257740) {
        MI_CpuClear8(Unk_ov23_02257740->unk_908, (7 + 1));
    }
}

BOOL ov23_0224162C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_86C[param0];
    }

    return 0;
}

void ov23_02241648(int param0)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->unk_86C[param0] = 0;
        Unk_ov23_02257740->unk_8FC[param0] = 0;
    }
}

BOOL ov23_02241670(void)
{
    if (Unk_ov23_02257740) {
        if (Unk_ov23_02257740->unk_8CC) {
            return 1;
        }
    }

    return 0;
}

void ov23_02241690(int param0, int param1)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->unk_86C[param0] = param1;
    }
}
