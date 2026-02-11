#include "overlay005/ov5_021F007C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021D5EB8.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/struct_ov6_0223E6EC.h"
#include "overlay006/wild_encounters.h"

#include "bg_window.h"
#include "field_task.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_header.h"
#include "palette.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov5_021F02B8;

typedef struct {
    UnkStruct_ov5_021F02B8 unk_00;
    BOOL unk_14;
} UnkStruct_ov5_021F013C;

typedef struct {
    void *unk_00;
    NNSG2dPaletteData *unk_04;
    u16 unk_08[16];
    UnkStruct_ov5_021F02B8 unk_28;
    BOOL unk_3C;
} UnkStruct_ov5_021F007C;

typedef struct UnkStruct_ov5_021F0468_t {
    UnkStruct_ov5_021D1BEC *unk_00;
    BOOL unk_04;
    BOOL unk_08;
    u16 unk_0C;
    s16 unk_0E;
} UnkStruct_ov5_021F0468;

static void ov5_021F0260(BgConfig *param0);
static void ov5_021F02B8(UnkStruct_ov5_021F02B8 *param0, int param1, int param2, int param3);
static BOOL ov5_021F02C8(UnkStruct_ov5_021F02B8 *param0);

static void ov5_021F007C(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov5_021F007C *v0 = param2;

    v0->unk_00 = Graphics_GetPlttData(NARC_INDEX_DATA__WEATHER_SYS, 55, &v0->unk_04, HEAP_ID_FIELD1);
    v0->unk_3C = 0;

    ov5_021F02B8(&v0->unk_28, 0, 8, 19);

    Bg_SetPriority(BG_LAYER_MAIN_2, 0);
    GXLayers_EngineAToggleLayers((GX_PLANEMASK_BG2), 1);
    Sound_PlayEffect(SEQ_SE_DP_FW230);
}

static void ov5_021F00BC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov5_021F007C *v0 = param2;

    v0->unk_00 = Graphics_GetPlttData(NARC_INDEX_DATA__WEATHER_SYS, 55, &v0->unk_04, HEAP_ID_FIELD1);
    v0->unk_3C = 0;

    ov5_021F02B8(&v0->unk_28, 8, 0, 19);

    v0->unk_3C = 0;
}

static void ov5_021F00E4(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov5_021F007C *v0 = param2;
    Heap_Free(v0->unk_00);
}

static void ov5_021F00F0(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    BOOL v0;
    UnkStruct_ov5_021F007C *v1 = param2;

    if (v1->unk_3C == 1) {
        return;
    }

    v0 = ov5_021F02C8(&v1->unk_28);

    if (v0) {
        v1->unk_3C = 1;
    }

    BlendPalettes(v1->unk_04->pRawData, v1->unk_08, 0x1, v1->unk_28.unk_00, (GX_RGB(31, 10, 23)));
    Bg_LoadPalette(2, v1->unk_08, 32, 6 * 32);
}

static void ov5_021F013C(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov5_021F013C *v0 = param2;

    ov5_021F0260(fieldSystem->bgConfig);
    ov5_021F02B8(&v0->unk_00, 0, 10, 19);

    v0->unk_14 = 0;

    G2_SetBlendAlpha((GX_PLANEMASK_BG2), GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, 0, 16 - 0);

    Bg_SetPriority(BG_LAYER_MAIN_2, 0);
    GXLayers_EngineAToggleLayers((GX_PLANEMASK_BG2), 1);
    Sound_PlayEffect(SEQ_SE_DP_FW230);
}

static void ov5_021F0188(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov5_021F013C *v0 = param2;

    ov5_021F0260(fieldSystem->bgConfig);
    ov5_021F02B8(&v0->unk_00, 10, 0, 15);

    v0->unk_14 = 0;

    G2_SetBlendAlpha((GX_PLANEMASK_BG2), GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, 10, 16 - 10);
}

static void ov5_021F01BC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    return;
}

static void ov5_021F01C0(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    BOOL v0;
    UnkStruct_ov5_021F013C *v1 = param2;

    if (v1->unk_14 == 1) {
        return;
    }

    v0 = ov5_021F02C8(&v1->unk_00);

    if (v0) {
        v1->unk_14 = 1;
    }

    G2_ChangeBlendAlpha(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);
}

static void ov5_021F01EC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    return;
}

UnkStruct_ov5_021D1BEC *ov5_021F01F0(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov5_021F013C),
        ov5_021F013C,
        ov5_021F01BC,
        ov5_021F01C0,
        ov5_021F01EC
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

UnkStruct_ov5_021D1BEC *ov5_021F0204(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov5_021F013C),
        ov5_021F0188,
        ov5_021F01BC,
        ov5_021F01C0,
        ov5_021F01EC
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

void ov5_021F0218(UnkStruct_ov5_021D1BEC *param0)
{
    ov5_021D1BEC(param0);
}

BOOL ov5_021F0220(UnkStruct_ov5_021D1BEC *param0)
{
    UnkStruct_ov5_021F013C *v0 = ov5_021D1C2C(param0);
    return v0->unk_14;
}

UnkStruct_ov5_021D1BEC *ov5_021F022C(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov5_021F007C),
        ov5_021F007C,
        ov5_021F00E4,
        ov5_021F00F0,
        ov5_021F01EC
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

UnkStruct_ov5_021D1BEC *ov5_021F0240(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov5_021F007C),
        ov5_021F00BC,
        ov5_021F00E4,
        ov5_021F00F0,
        ov5_021F01EC
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

BOOL ov5_021F0254(UnkStruct_ov5_021D1BEC *param0)
{
    UnkStruct_ov5_021F007C *v0 = ov5_021D1C2C(param0);
    return v0->unk_3C;
}

static void ov5_021F0260(BgConfig *param0)
{
    GXRgb v0 = (GX_RGB(31, 10, 23));
    u8 *v1;

    Bg_LoadPalette(2, &v0, sizeof(short), (6 * 32) + 2);

    v1 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(u8) * 32);
    memset(v1, 0x11, sizeof(u8) * 32);

    Bg_LoadTiles(param0, 2, v1, sizeof(u8) * 32, 1);
    Heap_Free(v1);
    Bg_FillTilemap(param0, 2, (6 << 12) | 1);
}

static void ov5_021F02B8(UnkStruct_ov5_021F02B8 *param0, int param1, int param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

static BOOL ov5_021F02C8(UnkStruct_ov5_021F02B8 *param0)
{
    int v0 = param0->unk_08 * param0->unk_0C;
    v0 = v0 / param0->unk_10;

    param0->unk_00 = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_10) {
        param0->unk_0C++;
        return 0;
    }

    param0->unk_0C = param0->unk_10;
    return 1;
}

static void ov5_021F02F4(FieldSystem *fieldSystem)
{
    Bg_MaskPalette(BG_LAYER_MAIN_2, 0);
}

static void ov5_021F0300(FieldSystem *fieldSystem)
{
    Bg_MaskPalette(BG_LAYER_MAIN_2, 0x7fff);
}

static void ov5_021F0310(FieldSystem *fieldSystem)
{
    u16 v0 = 0x7fff;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    G2_SetBG2Priority(3);

    Bg_LoadPalette(2, &v0, 2, ((6 * 32) + 4));
    Bg_FillTilesRange(fieldSystem->bgConfig, 2, 2, 1, 2);
    Bg_FillTilemap(fieldSystem->bgConfig, 2, ((6 << 12) | 2));
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    ov5_021F02F4(fieldSystem);
}

static void ov5_021F0374(FieldSystem *fieldSystem)
{
    u16 v0 = 0x7fff;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    G2_SetBG3Priority(3);

    Bg_LoadPalette(3, &v0, 2, ((6 * 32) + 4));
    Bg_FillTilesRange(fieldSystem->bgConfig, 3, 2, 1, 2);
    Bg_FillTilemap(fieldSystem->bgConfig, 3, ((6 << 12) | 2));
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);

    ov5_021F02F4(fieldSystem);
}

static BOOL ov5_021F03D8(FieldSystem *fieldSystem)
{
    static const u32 v0[] = {
        23,
    };
    u32 v1;
    int v2;

    if (fieldSystem->unk_04->unk_0C == NULL) {
        return 0;
    }

    v1 = ov5_021D5FE0(fieldSystem->unk_04->unk_0C);

    for (v2 = 0; v2 < NELEMS(v0); v2++) {
        if (v1 == v0[v2]) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov5_021F0408(FieldSystem *fieldSystem)
{
    static const u32 v0[1] = {
        8,
    };
    u32 v1;
    int v2;

    if (fieldSystem->unk_04->unk_0C == NULL) {
        return 0;
    }

    v1 = ov5_021D5FE0(fieldSystem->unk_04->unk_0C);

    for (v2 = 0; v2 < 1; v2++) {
        if (v1 == v0[v2]) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov5_021F0438(FieldSystem *fieldSystem)
{
    static const u32 v0[18] = {
        2,
        3,
        4,
        5,
        6,
        7,
        10,
        21,
        22,
        14,
        15,
        16,
        1,
        9,
        13,
        17,
        24,
        25
    };
    u32 v1;
    int v2;

    if (fieldSystem->unk_04->unk_0C == NULL) {
        return 0;
    }

    v1 = ov5_021D5FE0(fieldSystem->unk_04->unk_0C);

    for (v2 = 0; v2 < 18; v2++) {
        if (v1 == v0[v2]) {
            return 0;
        }
    }

    return 1;
}

static void ov5_021F0468(UnkStruct_ov5_021F0468 *param0)
{
    if (param0->unk_00) {
        ov5_021F0218(param0->unk_00);
        param0->unk_00 = NULL;
    }

    Heap_Free(param0);
}

u32 ov5_021F0484(void)
{
    return sizeof(UnkStruct_ov5_021F0468);
}

BOOL ov5_021F0488(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021F0468 *v1 = FieldTask_GetEnv(param0);
    BOOL v2;

    switch (v1->unk_0C) {
    case 0:
        if (ov5_021F0438(fieldSystem) == 1) {
            v1->unk_0C = 1;
            v1->unk_08 = ov5_021F03D8(fieldSystem);
            v1->unk_04 = ov5_021F0408(fieldSystem);

            if (v1->unk_04) {
                ov5_021F0300(fieldSystem);
            }
        } else {
            v1->unk_0C = 7;
            v1->unk_0E = 20;
        }
        break;
    case 1:
        if (v1->unk_08 == 0) {
            v1->unk_00 = ov5_021F01F0(fieldSystem);
        } else {
            v1->unk_00 = ov5_021F022C(fieldSystem);
        }

        v1->unk_0C = 2;

        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        GXLayers_EngineAToggleLayers((GX_PLANEMASK_BG2), 1);
        break;
    case 2:
        if (v1->unk_08 == 0) {
            v2 = ov5_021F0220(v1->unk_00);
        } else {
            v2 = ov5_021F0254(v1->unk_00);
        }

        if (v2 == 1) {
            v1->unk_0E = 22;
            v1->unk_0C = 3;
        }
        break;
    case 3:
        v1->unk_0E--;

        if (MapHeader_HasWildEncounters(fieldSystem->location->mapId)) {
            if (v1->unk_0E < 0) {
                {
                    u8 v3;
                    int v4, v5;

                    v4 = Player_GetXPos(fieldSystem->playerAvatar);
                    v5 = Player_GetZPos(fieldSystem->playerAvatar);
                    v3 = (u8)TerrainCollisionManager_GetTileBehavior(fieldSystem, v4, v5);

                    if (WildEncounters_TileHasEncounterRate(fieldSystem, v3)) {
                        v1->unk_0C = 6;
                    } else {
                        v1->unk_0C = 4;
                    }
                }
            }
        } else {
            v1->unk_0C = 4;
        }
        break;
    case 4:
        ov5_021F0218(v1->unk_00);

        if (v1->unk_08 == 0) {
            v1->unk_00 = ov5_021F0204(fieldSystem);
        } else {
            v1->unk_00 = ov5_021F0240(fieldSystem);
        }

        v1->unk_0C = 5;
        break;
    case 5:
        if (v1->unk_08 == 0) {
            v2 = ov5_021F0220(v1->unk_00);
        } else {
            v2 = ov5_021F0254(v1->unk_00);
        }

        if (v2 == 1) {
            if (v1->unk_08 == 0) {
                GXLayers_EngineAToggleLayers((GX_PLANEMASK_BG2), 0);
                G2_BlendNone();
                Bg_SetPriority(BG_LAYER_MAIN_2, 3);

                Bg_ClearTilemap(fieldSystem->bgConfig, BG_LAYER_MAIN_2);
            } else {
                Bg_SetPriority(BG_LAYER_MAIN_2, 1);
            }

            v1->unk_0C = 8;
        }
        break;
    case 6: {
        BOOL v6;

        ov5_021F0468(v1);

        if (v1->unk_04) {
            ov5_021F0374(fieldSystem);
        }

        v6 = WildEncounters_TrySweetScentEncounter(fieldSystem, param0);
        GF_ASSERT(v6);
    } break;
    case 7:
        v1->unk_0E--;

        if (v1->unk_0E < 0) {
            ScriptManager_Start(param0, SCRIPT_ID(COMMON_SCRIPTS, 29), NULL, NULL);
            v1->unk_0C = 9;
        }
        break;
    case 8:
        ScriptManager_Start(param0, SCRIPT_ID(COMMON_SCRIPTS, 28), NULL, NULL);
        v1->unk_0C = 9;
        break;
    case 9:
        ov5_021F0468(v1);

        if (v1->unk_04) {
            ov5_021F0310(fieldSystem);
        }

        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
