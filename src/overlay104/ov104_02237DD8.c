#include "overlay104/ov104_02237DD8.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/condition.h"
#include "constants/battle_frontier.h"
#include "generated/items.h"

#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"

#include "overlay104/frontier_opponents.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_battle_arcade.h"

#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "sprite.h"
#include "system_vars.h"
#include "unk_02030494.h"
#include "vars_flags.h"

#include "res/graphics/frontier/backgrounds/frontier_backgrounds.naix"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov104_0223FB18;

typedef void (*UnkFuncPtr_ov104_02238B88)(BattleArcade *, Party *, u8);

BattleArcade *ov104_02237DD8(SaveData *saveData, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 *param6);
void ov104_0223806C(BattleArcade *param0, u16 param1);
static void ov104_02238080(BattleArcade *param0);
static void ov104_02238114(BattleArcade *param0);
static void ov104_022381C4(BattleArcade *param0);
void ov104_02238210(BattleArcade *param0);
static u16 ov104_02238264(BattleArcadeAppArgs *param0, u8 param1);
void ov104_022384D4(BattleArcade *param0);
void ov104_022384DC(BattleArcade *param0);
int BattleArcade_FitnessScore(BattleArcade *battleArcade, Party *party1, Party *party2, int totalTurnsElapsed);
static int BattleArcade_BaseFitnessScore(BattleArcade *battleArcade, Party *party1, Party *party2, u8 partySize);
void ov104_02238658(void *param0, FrontierGraphics *param1);
void ov104_02238728(void *param0, FrontierGraphics *param1);
void ov104_02238764(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_02238814(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_0223886C(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3);
void ov104_022388A4(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3);
void ov104_022388DC(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_022389A0(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_022389F4(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3, u16 param4);
void ov104_02238AB4(u8 param0, u8 param1);
BOOL ov104_02238B40(BattleArcade *param0, u16 param1, u16 param2);
void ov104_02238278(BattleArcade *param0, u8 param1);
u16 ov104_02238454(BattleArcade *param0);
u16 ov104_02238460(BattleArcade *param0);
u16 ov104_02238464(BattleArcade *param0, u8 param1);
u16 ov104_02238498(BattleArcade *param0, u8 param1);
void ov104_022384A8(BattleArcade *param0);
void ov104_022384B4(BattleArcade *param0);
static void ov104_02238BBC(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238C18(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238C9C(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238D14(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238D8C(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238E08(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238E9C(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238EF8(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238F54(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FAC(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FB8(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FC0(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FC8(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FD0(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FD8(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FE4(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FF0(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02238FFC(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02239004(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02239008(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_0223900C(BattleArcade *param0, Party *param1, u8 param2);
static void ov104_02239010(BattleArcade *param0, Party *param1, u8 param2);
u16 ov104_02239014(BattleArcade *param0);
void ov104_02239054(Party *param0, Party *param1, int param2, int param3);

static const struct {
    u16 tiles;
    u16 tilemap;
    u16 palette;
} Unk_ov104_0223FBBA[32] = {
    [ARCADE_EFFECT_LOWER_FOE_HP] = {
        battle_arcade_screen_lower_hp_NCGR_lz,
        battle_arcade_screen_lower_foe_hp_NSCR_lz,
        battle_arcade_screen_lower_hp_NCLR,
    },
    [ARCADE_EFFECT_POISON_FOE] = {
        battle_arcade_screen_poison_NCGR_lz,
        battle_arcade_screen_poison_foe_NSCR_lz,
        battle_arcade_screen_poison_NCLR,
    },
    [ARCADE_EFFECT_PARALYZE_FOE] = {
        battle_arcade_screen_paralyze_NCGR_lz,
        battle_arcade_screen_paralyze_foe_NSCR_lz,
        battle_arcade_screen_paralyze_NCLR,
    },
    [ARCADE_EFFECT_BURN_FOE] = {
        battle_arcade_screen_burn_NCGR_lz,
        battle_arcade_screen_burn_foe_NSCR_lz,
        battle_arcade_screen_burn_NCLR,
    },
    [ARCADE_EFFECT_SLEEP_FOE] = {
        battle_arcade_screen_sleep_NCGR_lz,
        battle_arcade_screen_sleep_foe_NSCR_lz,
        battle_arcade_screen_sleep_NCLR,
    },
    [ARCADE_EFFECT_FREEZE_FOE] = {
        battle_arcade_screen_freeze_NCGR_lz,
        battle_arcade_screen_freeze_foe_NSCR_lz,
        battle_arcade_screen_freeze_NCLR,
    },
    [ARCADE_EFFECT_FOE_GET_BERRY] = {
        battle_arcade_screen_get_berry_NCGR_lz,
        battle_arcade_screen_foe_get_berry_NSCR_lz,
        battle_arcade_screen_get_berry_NCLR,
    },
    [ARCADE_EFFECT_FOE_GET_ITEM] = {
        battle_arcade_screen_get_item_NCGR_lz,
        battle_arcade_screen_foe_get_item_NSCR_lz,
        battle_arcade_screen_get_item_NCLR,
    },
    [ARCADE_EFFECT_FOE_LEVEL_UP] = {
        battle_arcade_screen_level_up_NCGR_lz,
        battle_arcade_screen_foe_level_up_NSCR_lz,
        battle_arcade_screen_level_up_NCLR,
    },
    [ARCADE_EFFECT_LOWER_ALLY_HP] = {
        battle_arcade_screen_lower_hp_NCGR_lz,
        battle_arcade_screen_lower_ally_hp_NSCR_lz,
        battle_arcade_screen_lower_hp_NCLR,
    },
    [ARCADE_EFFECT_POISON_ALLY] = {
        battle_arcade_screen_poison_NCGR_lz,
        battle_arcade_screen_poison_ally_NSCR_lz,
        battle_arcade_screen_poison_NCLR,
    },
    [ARCADE_EFFECT_PARALYZE_ALLY] = {
        battle_arcade_screen_paralyze_NCGR_lz,
        battle_arcade_screen_paralyze_ally_NSCR_lz,
        battle_arcade_screen_paralyze_NCLR,
    },
    [ARCADE_EFFECT_BURN_ALLY] = {
        battle_arcade_screen_burn_NCGR_lz,
        battle_arcade_screen_burn_ally_NSCR_lz,
        battle_arcade_screen_burn_NCLR,
    },
    [ARCADE_EFFECT_SLEEP_ALLY] = {
        battle_arcade_screen_sleep_NCGR_lz,
        battle_arcade_screen_sleep_ally_NSCR_lz,
        battle_arcade_screen_sleep_NCLR,
    },
    [ARCADE_EFFECT_FREEZE_ALLY] = {
        battle_arcade_screen_freeze_NCGR_lz,
        battle_arcade_screen_freeze_ally_NSCR_lz,
        battle_arcade_screen_freeze_NCLR,
    },
    [ARCADE_EFFECT_ALLY_GET_BERRY] = {
        battle_arcade_screen_get_berry_NCGR_lz,
        battle_arcade_screen_ally_get_berry_NSCR_lz,
        battle_arcade_screen_get_berry_NCLR,
    },
    [ARCADE_EFFECT_ALLY_GET_ITEM] = {
        battle_arcade_screen_get_item_NCGR_lz,
        battle_arcade_screen_ally_get_item_NSCR_lz,
        battle_arcade_screen_get_item_NCLR,
    },
    [ARCADE_EFFECT_ALLY_LEVEL_UP] = {
        battle_arcade_screen_level_up_NCGR_lz,
        battle_arcade_screen_ally_level_up_NSCR_lz,
        battle_arcade_screen_level_up_NCLR,
    },
    [ARCADE_EFFECT_SUNNY_BATTLE] = {
        battle_arcade_screen_sunny_battle_NCGR_lz,
        battle_arcade_screen_sunny_battle_NSCR_lz,
        battle_arcade_screen_sunny_battle_NCLR,
    },
    [ARCADE_EFFECT_RAINY_BATTLE] = {
        battle_arcade_screen_rainy_battle_NCGR_lz,
        battle_arcade_screen_rainy_battle_NSCR_lz,
        battle_arcade_screen_rainy_battle_NCLR,
    },
    [ARCADE_EFFECT_SANDY_BATTLE] = {
        battle_arcade_screen_sandy_battle_NCGR_lz,
        battle_arcade_screen_sandy_battle_NSCR_lz,
        battle_arcade_screen_sandy_battle_NCLR,
    },
    [ARCADE_EFFECT_HAIL_BATTLE] = {
        battle_arcade_screen_hail_battle_NCGR_lz,
        battle_arcade_screen_hail_battle_NSCR_lz,
        battle_arcade_screen_hail_battle_NCLR,
    },
    [ARCADE_EFFECT_FOGGY_BATTLE] = {
        battle_arcade_screen_foggy_battle_NCGR_lz,
        battle_arcade_screen_foggy_battle_NSCR_lz,
        battle_arcade_screen_foggy_battle_NCLR,
    },
    [ARCADE_EFFECT_TRICK_ROOM] = {
        battle_arcade_screen_trick_room_NCGR_lz,
        battle_arcade_screen_trick_room_NSCR_lz,
        battle_arcade_screen_trick_room_NCLR,
    },
    [ARCADE_EFFECT_SPEED_UP] = {
        battle_arcade_screen_speed_up_NCGR_lz,
        battle_arcade_screen_speed_up_NSCR_lz,
        battle_arcade_screen_speed_up_NCLR,
    },
    [ARCADE_EFFECT_SLOW_DOWN] = {
        battle_arcade_screen_slow_down_NCGR_lz,
        battle_arcade_screen_slow_down_NSCR_lz,
        battle_arcade_screen_slow_down_NCLR,
    },
    [ARCADE_EFFECT_RANDOMIZE_CURSOR] = {
        battle_arcade_screen_randomize_cursor_NCGR_lz,
        battle_arcade_screen_randomize_cursor_NSCR_lz,
        battle_arcade_screen_randomize_cursor_NCLR,
    },
    [ARCADE_EFFECT_SWAP_MONS] = {
        battle_arcade_screen_swap_mons_NCGR_lz,
        battle_arcade_screen_swap_mons_NSCR_lz,
        battle_arcade_screen_swap_mons_NCLR,
    },
    [ARCADE_EFFECT_GET_1_BP] = {
        battle_arcade_screen_get_1_bp_NCGR_lz,
        battle_arcade_screen_get_1_bp_NSCR_lz,
        battle_arcade_screen_get_1_bp_NCLR,
    },
    [ARCADE_EFFECT_NO_BATTLE] = {
        battle_arcade_screen_no_battle_NCGR_lz,
        battle_arcade_screen_no_battle_NSCR_lz,
        battle_arcade_screen_no_battle_NCLR,
    },
    [ARCADE_EFFECT_NO_EVENT] = {
        battle_arcade_screen_no_event_NCGR_lz,
        battle_arcade_screen_no_event_NSCR_lz,
        battle_arcade_screen_no_event_NCLR,
    },
    [ARCADE_EFFECT_GET_3_BP] = {
        battle_arcade_screen_get_3_bp_NCGR_lz,
        battle_arcade_screen_get_3_bp_NSCR_lz,
        battle_arcade_screen_get_3_bp_NCLR,
    }
};

static const u8 Unk_ov104_0223FAF8[][2] = {
    { 0x7, 0x5 },
    { 0x4, 0x4 },
    { 0x0, 0x3 }
};

BattleArcade *ov104_02237DD8(SaveData *saveData, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 *param6)
{
    u32 v0, v1;
    Party *v2;
    Pokemon *v3;
    UnkStruct_020304A0 *v4;
    u8 v5, v6;
    u16 v7, v8;
    static BattleArcade *v9;
    UnkStruct_020305B8 *v10;

    v9 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleArcade));
    MI_CpuClear8(v9, sizeof(BattleArcade));

    v9->unk_08 = sub_020304A0(saveData);
    v9->saveData = saveData;
    v9->unk_00 = 11;
    v9->playersParty = Party_New(HEAP_ID_FIELD2);
    v9->opponentsParty = Party_New(HEAP_ID_FIELD2);
    v9->unk_A80 = param6;
    v9->activeEffect = 32;

    v4 = v9->unk_08;
    v10 = sub_020305B8(saveData);

    if (param1 == 0) {
        v9->challengeType = param2;
        v9->unk_11 = 0;
        v9->unk_1C = 3;
        v9->unk_12 = 0;

        sub_02030494(v4);

        if (v9->challengeType == 3) {
            v5 = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(v9->saveData));
        } else {
            v5 = (u8)sub_02030600(v10, 8, v9->challengeType, 0, NULL);
        }

        if (v5 == 1) {
            v9->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(v9->challengeType));
        } else {
            v9->currentStreak = 0;
        }

        v9->unk_1A = (u16)(v9->currentStreak / 7);
        v9->unk_24 = 0;

        v9->unk_2C[0] = param3;
        v9->unk_2C[1] = param4;
        v9->unk_2C[2] = param5;
    } else {
        v9->challengeType = (u8)sub_0203054C(v4, 0, 0, 0, NULL);
        v9->unk_11 = (u8)sub_0203054C(v4, 2, 0, 0, NULL);
        v9->unk_1C = (u8)sub_0203054C(v4, 3, 0, 0, NULL);
        v9->unk_12 = (u8)sub_0203054C(v4, 1, 0, 0, NULL);
        v9->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(v9->challengeType));
        v9->unk_1A = (u16)(v9->currentStreak / 7);

        for (v7 = 0; v7 < 3; v7++) {
            v9->unk_2C[v7] = (u8)sub_0203054C(v4, 6, v7, 0, NULL);
        }
    }

    for (v7 = 0; v7 < 3; v7++) {
        v3 = Party_GetPokemonBySlotIndex(SaveData_GetParty(v9->saveData), v9->unk_2C[v7]);
        v9->unk_412[v7] = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
    }

    v2 = SaveData_GetParty(v9->saveData);
    v6 = BattleArcade_GetPlayerPartySize(v9->challengeType, 0);

    for (v7 = 0; v7 < v6; v7++) {
        Party_AddPokemon(v9->playersParty, Party_GetPokemonBySlotIndex(v2, v9->unk_2C[v7]));

        v3 = Party_GetPokemonBySlotIndex(v9->playersParty, v7);
        v0 = 0;

        Pokemon_SetValue(v3, MON_DATA_HELD_ITEM, &v0);

        if (Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL) > 50) {
            v1 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), 50);
            Pokemon_SetValue(v3, MON_DATA_EXPERIENCE, &v1);
            Pokemon_CalcLevelAndStats(v3);
        }
    }

    if (BattleArcade_IsMultiPlayerChallenge(v9->challengeType) == 1) {
        BattleFrontier_FlagGeonetLinkInfo(v9->saveData);
    }

    return v9;
}

void ov104_0223806C(BattleArcade *param0, u16 param1)
{
    if (param1 == 0) {
        ov104_02238080(param0);
    } else {
        ov104_02238114(param0);
    }

    return;
}

static void ov104_02238080(BattleArcade *param0)
{
    ov104_0223BD28(param0->challengeType, ov104_0223C124(param0), param0->trainerIDs, 7 * 2);

    BattleFrontier_GetPokemonForTrainers(BattleArcade_GetOpponentPartySize(param0->challengeType, 1), param0->trainerIDs[param0->unk_11], param0->trainerIDs[param0->unk_11 + 7], param0->unk_314, param0->unk_330, param0->unk_31C, param0->unk_320, BattleArcade_IsMultiPlayerChallenge(param0->challengeType));

    u16 v0 = ov104_0223C124(param0);

    for (int i = 0; i < (NELEMS(Unk_ov104_0223FAF8)); i++) {
        if (v0 >= Unk_ov104_0223FAF8[i][0]) {
            param0->unk_1C = Unk_ov104_0223FAF8[i][1];
            break;
        }
    }

    return;
}

static void ov104_02238114(BattleArcade *param0)
{
    int v1;
    FrontierPokemon v4[6];
    u8 v5[6];
    u16 v6[6];
    u32 v7[6];

    ov104_022381C4(param0);

    for (v1 = 0; v1 < (7 * 2); v1++) {
        param0->trainerIDs[v1] = (u16)sub_0203054C(param0->unk_08, 5, v1, 0, NULL);
    }

    for (v1 = 0; v1 < 4; v1++) {
        v6[v1] = (u16)sub_0203054C(param0->unk_08, 7, v1, 0, NULL);
        param0->unk_314[v1] = v6[v1];
    }

    BattleFrontier_LoadFrontierPokemon(v4, v6, v5, NULL, v7, 4, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    Pokemon *v2 = Pokemon_New(HEAP_ID_FIELD2);

    for (v1 = 0; v1 < 4; v1++) {
        FrontierPokemon_InitPokemon(&v4[v1], v2, BattleArcade_GetPokemonLevel(param0));
        ov104_0223C034(param0, param0->opponentsParty, v2);
    }

    Heap_Free(v2);

    return;
}

static void ov104_022381C4(BattleArcade *param0)
{
    u8 v0;
    u16 v1;
    int v2;
    Pokemon *v3;

    v0 = Party_GetCurrentCount(param0->playersParty);

    for (v2 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(param0->playersParty, v2);
        v1 = (u16)sub_0203054C(param0->unk_08, 4, v2, 0, NULL);

        Pokemon_SetValue(v3, MON_DATA_HELD_ITEM, &v1);
    }

    return;
}

void ov104_02238210(BattleArcade *param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    if (param0->playersParty != NULL) {
        Heap_Free(param0->playersParty);
    }

    if (param0->opponentsParty != NULL) {
        Heap_Free(param0->opponentsParty);
    }

    MI_CpuClear8(param0, sizeof(BattleArcade));
    Heap_Free(param0);

    param0 = NULL;

    return;
}

void BattleArcade_StoreAppResults(BattleArcade *battleArcade, BattleArcadeAppArgs *args)
{
    for (int i = 0; i < 6; i++) {
        battleArcade->appCursorPos[i] = ov104_02238264(args, i);
    }
}

static u16 ov104_02238264(BattleArcadeAppArgs *args, u8 i)
{
    if (i >= 6) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return args->cursorPos;
}

void ov104_02238278(BattleArcade *param0, u8 param1)
{
    u16 v0;
    u8 v1;
    u8 v2[4];
    u16 v3[4];
    u32 v4[4];
    u32 v5, v6;
    Pokemon *v7;
    UnkStruct_020304A0 *v8 = param0->unk_08;
    UnkStruct_020305B8 *v9 = sub_020305B8(param0->saveData);

    v1 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    v2[0] = param0->challengeType;
    sub_020304CC(param0->unk_08, 0, 0, 0, v2);
    sub_020304B8(param0->unk_08, 1);

    v2[0] = param0->unk_11;
    sub_020304CC(param0->unk_08, 2, 0, 0, v2);

    v2[0] = param0->unk_1C;
    sub_020304CC(param0->unk_08, 3, 0, 0, v2);

    v2[0] = param0->unk_12;
    sub_020304CC(param0->unk_08, 1, 0, 0, v2);
    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(param0->saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(param0->challengeType), param0->currentStreak);

    if (param1 != 2) {
        v5 = BattleFrontierSave_SetIfBetterAutoHostIdx(SaveData_GetBattleFrontier(param0->saveData), BattleFrontierStats_GetArcadeCurrentStreakIndex(param0->challengeType), param0->currentStreak);

        v2[0] = param0->unk_2F;
        sub_020305CC(v9, 8, param0->challengeType, 0, v2);

        if (param0->challengeType == 3) {
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(param0->saveData), STAT_ARCADE_WFC_STREAK_ACTIVE, param0->unk_2F);
        }
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v3[0] = param0->trainerIDs[v0];
        sub_020304CC(param0->unk_08, 5, v0, 0, v3);
    }

    for (v0 = 0; v0 < 3; v0++) {
        v2[0] = param0->unk_2C[v0];
        sub_020304CC(param0->unk_08, 6, v0, 0, v2);
    }

    v6 = Party_GetCurrentCount(param0->playersParty);

    for (v0 = 0; v0 < v6; v0++) {
        v7 = Party_GetPokemonBySlotIndex(param0->playersParty, v0);
        v3[0] = Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL);
        sub_020304CC(param0->unk_08, 4, v0, 0, v3);
    }

    v6 = Party_GetCurrentCount(param0->opponentsParty);

    for (v0 = 0; v0 < v6; v0++) {
        v7 = Party_GetPokemonBySlotIndex(param0->opponentsParty, v0);
        v3[0] = param0->unk_314[v0];
        sub_020304CC(param0->unk_08, 7, v0, 0, v3);
    }

    return;
}

u16 ov104_02238454(BattleArcade *param0)
{
    param0->unk_11++;
    return param0->unk_11;
}

u16 ov104_02238460(BattleArcade *param0)
{
    return param0->unk_11;
}

u16 ov104_02238464(BattleArcade *param0, u8 param1)
{
    FrontierTrainer v0;
    u8 v2 = ov104_02238498(param0, param1);

    Heap_Free(BattleFrontier_GetTrainer(&v0, param0->trainerIDs[v2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleFrontier_GetObjectIDFromTrainerClass(v0.trainerType);
}

u16 ov104_02238498(BattleArcade *param0, u8 param1)
{
    return param0->unk_11 + (param1 * 7);
}

void ov104_022384A8(BattleArcade *param0)
{
    u16 v0[4];
    int v1;

    ov104_02238278(param0, 1);
    return;
}

void ov104_022384B4(BattleArcade *param0)
{
    param0->unk_2F = 1;

    if (param0->unk_1A < 8) {
        param0->unk_1A++;
    }

    param0->unk_11 = 0;
    ov104_02238278(param0, 0);

    return;
}

void ov104_022384D4(BattleArcade *param0)
{
    ov104_0223C04C(param0);
    return;
}

void ov104_022384DC(BattleArcade *param0)
{
    int v0, v1, v2;
    u8 v3;

    BattleFrontier_GetPokemonForTrainers(BattleArcade_GetOpponentPartySize(param0->challengeType, 1), param0->trainerIDs[param0->unk_11], param0->trainerIDs[param0->unk_11 + 7], param0->unk_314, param0->unk_330, param0->unk_31C, param0->unk_320, BattleArcade_IsMultiPlayerChallenge(param0->challengeType));

    for (v0 = 0; v0 < 4; v0++) {
        (void)0;
    }

    ov104_0223C04C(param0);

    return;
}

static const u8 sStatusConditionFitness[5] = {
    8,
    6,
    4,
    0,
    0
};

static const u8 sFaintedMonsFitness[5] = {
    6,
    4,
    2,
    0,
    0
};

static const struct {
    u8 turns;
    u8 score;
} sTurnsElapsedFitness[5] = {
    { 3, 10 },
    { 5, 6 },
    { 7, 4 },
    { 9, 2 },
    { 10, 0 }
};

int BattleArcade_FitnessScore(BattleArcade *battleArcade, Party *party1, Party *party2, int totalTurnsElapsed)
{
    u8 partySize;
    int i;
    int fitness = 0;
    partySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, FALSE);

    fitness += BattleArcade_BaseFitnessScore(battleArcade, party1, party2, partySize);

    for (i = 0; i < 5; i++) {
        if (totalTurnsElapsed < sTurnsElapsedFitness[i].turns) {
            fitness += sTurnsElapsedFitness[i].score;
            break;
        }
    }

    return fitness;
}

static int BattleArcade_BaseFitnessScore(BattleArcade *battleArcade, Party *party1, Party *party2, u8 partySize)
{
    u8 faintedMons;
    u8 monsWithStatusCondition;
    int i, fitness;
    Pokemon *mon;

    fitness = 0;
    faintedMons = 0;
    monsWithStatusCondition = 0;

    for (i = 0; i < partySize; i++) {
        mon = Party_GetPokemonBySlotIndex(party1, i);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
            faintedMons++;
        }

        if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) != 0) {
            monsWithStatusCondition++;
        }
    }

    if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == TRUE) {
        for (i = 0; i < partySize; i++) {
            mon = Party_GetPokemonBySlotIndex(party2, i);

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                continue;
            }

            if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
                faintedMons++;
            }

            if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) != 0) {
                monsWithStatusCondition++;
            }
        }
    }

    fitness += sStatusConditionFitness[monsWithStatusCondition];
    fitness += sFaintedMonsFitness[faintedMons];

    return fitness;
}

void ov104_02238658(void *param0, FrontierGraphics *param1)
{
    NARC *v0;
    BattleArcade *v1 = (BattleArcade *)param0;

    if (v1->activeEffect != 32) {
        v0 = NARC_ctor(NARC_INDEX_FRONTIER_BACKGROUNDS, HEAP_ID_94);

        Graphics_LoadTilesToBgLayerFromOpenNARC(v0, Unk_ov104_0223FBBA[v1->activeEffect].tiles, param1->bgConfig, 2, 0, 0, 1, HEAP_ID_94);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, Unk_ov104_0223FBBA[v1->activeEffect].tilemap, param1->bgConfig, 2, 0, 0, 1, HEAP_ID_94);

        {
            NNSG2dPaletteData *v2;
            void *v3;

            v3 = Graphics_GetPlttDataFromOpenNARC(v0, Unk_ov104_0223FBBA[v1->activeEffect].palette, &v2, HEAP_ID_94);
            DC_FlushRange(v2->pRawData, v2->szByte);

            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(v2->pRawData, 0x4000, 0x2000);
            GX_EndLoadBGExtPltt();

            Heap_Free(v3);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        Bg_ScheduleTilemapTransfer(param1->bgConfig, 2);
        NARC_dtor(v0);
    } else {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    }

    return;
}

void ov104_02238728(void *param0, FrontierGraphics *param1)
{
    BattleArcade *v1 = (BattleArcade *)param0;
    NARC *v0 = NARC_ctor(NARC_INDEX_FRONTIER_BACKGROUNDS, HEAP_ID_94);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 53, param1->bgConfig, 3, 0, 0, 1, HEAP_ID_94);
    Bg_ScheduleTilemapTransfer(param1->bgConfig, 3);
    NARC_dtor(v0);

    return;
}

static const UnkStruct_ov104_0223FB18 Unk_ov104_0223FB18[] = {
    { 0x21, 0x14 },
    { 0x27, 0x2B },
    { 0x2B, 0x42 },
    { 0x2E, 0x59 }
};

static const UnkStruct_ov104_0223FB18 Unk_ov104_0223FB28[] = {
    { 0xDE, 0x14 },
    { 0xD8, 0x2B },
    { 0xD5, 0x42 },
    { 0xD2, 0x59 }
};

void ov104_02238764(BattleArcade *param0, FrontierGraphics *param1, u16 param2)
{
    u8 v0, v1;
    int v2;
    Pokemon *v3;

    v0 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);
    v1 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            v3 = Party_GetPokemonBySlotIndex(param0->playersParty, v2);
            param0->unk_30[v2] = ov104_02232F4C(param1, v3, v2, Unk_ov104_0223FB18[v2].unk_00, Unk_ov104_0223FB18[v2].unk_02);
            Sprite_SetAnimateFlag(param0->unk_30[v2]->sprite, 0);
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            v3 = Party_GetPokemonBySlotIndex(param0->opponentsParty, v2);
            param0->unk_40[v2] = ov104_02232F4C(param1, v3, v2 + v0, Unk_ov104_0223FB28[v2].unk_00, Unk_ov104_0223FB28[v2].unk_02);
            Sprite_SetAnimateFlag(param0->unk_40[v2]->sprite, 0);
        }
    }

    return;
}

void ov104_02238814(BattleArcade *param0, FrontierGraphics *param1, u16 param2)
{
    u8 v0, v1;
    int v2;

    v0 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);
    v1 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            ov104_02232FD4(param1, param0->unk_30[v2], v2);
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            ov104_02232FD4(param1, param0->unk_40[v2], v2 + v0);
        }
    }

    return;
}

void ov104_0223886C(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3)
{
    u8 v0 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);

    if (param3 >= v0) {
        return;
    }

    if (param2 == 1) {
        Sprite_SetDrawFlag(param0->unk_30[param3]->sprite, TRUE);
    } else {
        Sprite_SetDrawFlag(param0->unk_30[param3]->sprite, FALSE);
    }

    return;
}

void ov104_022388A4(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3)
{
    u8 v0 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    if (param3 >= v0) {
        return;
    }

    if (param2 == 1) {
        Sprite_SetDrawFlag(param0->unk_40[param3]->sprite, TRUE);
    } else {
        Sprite_SetDrawFlag(param0->unk_40[param3]->sprite, FALSE);
    }

    return;
}

void ov104_022388DC(BattleArcade *param0, FrontierGraphics *param1, u16 param2)
{
    u8 v0, v1;
    int v2;
    Pokemon *v3;

    v0 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);
    v1 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            param0->unk_50[v2] = ov104_022330AC(param1, Unk_ov104_0223FB18[v2].unk_00 + 8, Unk_ov104_0223FB18[v2].unk_02 + 4);

            v3 = Party_GetPokemonBySlotIndex(param0->playersParty, v2);

            if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == 0) {
                Sprite_SetDrawFlag(param0->unk_50[v2]->sprite, FALSE);
            }
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            param0->unk_60[v2] = ov104_022330AC(param1, Unk_ov104_0223FB28[v2].unk_00 + 8, Unk_ov104_0223FB28[v2].unk_02 + 4);

            v3 = Party_GetPokemonBySlotIndex(param0->opponentsParty, v2);

            if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == 0) {
                Sprite_SetDrawFlag(param0->unk_60[v2]->sprite, FALSE);
            }
        }
    }

    return;
}

void ov104_022389A0(BattleArcade *param0, FrontierGraphics *param1, u16 param2)
{
    u8 v0, v1;
    int v2;

    v0 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);
    v1 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            ov104_022330F0(param1, param0->unk_50[v2]);
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            ov104_022330F0(param1, param0->unk_60[v2]);
        }
    }

    return;
}

void ov104_022389F4(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 slot, u16 param4)
{
    u32 item;
    u8 v1, v2;
    Pokemon *mon;

    v1 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);
    v2 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);

    if (param2 == 0) {
        if (slot >= v1) {
            return;
        }

        mon = Party_GetPokemonBySlotIndex(param0->playersParty, slot);
        item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (param4 == 1) {
            if (item == ITEM_NONE) {
                Sprite_SetDrawFlag(param0->unk_50[slot]->sprite, FALSE);
            } else {
                Sprite_SetDrawFlag(param0->unk_50[slot]->sprite, TRUE);
            }
        } else {
            Sprite_SetDrawFlag(param0->unk_50[slot]->sprite, FALSE);
        }
    } else {
        if (slot >= v2) {
            return;
        }

        mon = Party_GetPokemonBySlotIndex(param0->opponentsParty, slot);
        item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (param4 == 1) {
            if (item == 0) {
                Sprite_SetDrawFlag(param0->unk_60[slot]->sprite, FALSE);
            } else {
                Sprite_SetDrawFlag(param0->unk_60[slot]->sprite, TRUE);
            }
        } else {
            Sprite_SetDrawFlag(param0->unk_60[slot]->sprite, FALSE);
        }
    }

    return;
}

void ov104_02238AB4(u8 param0, u8 param1)
{
    u32 v0, v1;
    NNSG2dPaletteData *v2;
    void *v3;
    NARC *v4;
    u16 *v5;

    if (param1 == 0) {
        v0 = 143;
        v1 = (15 * 16) * 2;
    } else {
        v0 = 142;
        v1 = (9 * 16) * 2;
    }

    v5 = Heap_Alloc(HEAP_ID_94, 0x1000 * 2);
    memset(v5, 0, 0x1000 * 2);

    v4 = NARC_ctor(NARC_INDEX_FRONTIER_BACKGROUNDS, HEAP_ID_94);
    v3 = Graphics_GetPlttDataFromOpenNARC(v4, v0, &v2, HEAP_ID_94);

    BlendPalette(v2->pRawData, v5, 0x1000, param0, 0x0);
    DC_FlushRange(v5, 0x1000 * 2);

    GX_BeginLoadBGExtPltt();
    GX_LoadBGExtPltt(v5, 0x6000, v1);
    GX_EndLoadBGExtPltt();

    NARC_dtor(v4);
    Heap_Free(v5);
    Heap_Free(v3);

    return;
}

BOOL ov104_02238B40(BattleArcade *param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222F86C(param0);
        break;
    case 1:
        v0 = ov104_0222F8D0(param0);
        break;
    case 2:
        v0 = ov104_0222F944(param0);
        break;
    case 3:
        v0 = ov104_0222FA38(param0, param2);
        break;
    case 4:
        v0 = ov104_0222FA84(param0, param2);
        break;
    case 5:
        v0 = ov104_0222FAD0(param0);
        break;
    }

    return v0;
}

static const u16 Unk_ov104_0223FB4C[] = {
    ITEM_KINGS_ROCK,
    ITEM_QUICK_CLAW,
    ITEM_BRIGHTPOWDER,
    ITEM_METRONOME,
    ITEM_BIG_ROOT,
    ITEM_FOCUS_BAND,
    ITEM_FOCUS_SASH,
    ITEM_LEFTOVERS,
    ITEM_IRON_BALL,
    ITEM_LAGGING_TAIL,
    ITEM_BLACK_SLUDGE
};

static const u16 Unk_ov104_0223FB78[] = {
    ITEM_WHITE_HERB,
    ITEM_POWER_HERB,
    ITEM_MUSCLE_BAND,
    ITEM_WISE_GLASSES,
    ITEM_SHELL_BELL,
    ITEM_SCOPE_LENS,
    ITEM_WIDE_LENS,
    ITEM_ZOOM_LENS,
    ITEM_EXPERT_BELT,
    ITEM_LIFE_ORB,
    ITEM_IRON_BALL,
    ITEM_LAGGING_TAIL,
    ITEM_BLACK_SLUDGE
};

static const u16 Unk_ov104_0223FB62[] = {
    ITEM_FOCUS_BAND,
    ITEM_FOCUS_SASH,
    ITEM_LEFTOVERS,
    ITEM_SCOPE_LENS,
    ITEM_WIDE_LENS,
    ITEM_ZOOM_LENS,
    ITEM_EXPERT_BELT,
    ITEM_LIFE_ORB,
    ITEM_CHOICE_BAND,
    ITEM_CHOICE_SPECS,
    ITEM_CHOICE_SCARF
};

static const u16 *Unk_ov104_02241A2C[] = {
    Unk_ov104_0223FB4C,
    Unk_ov104_0223FB78,
    Unk_ov104_0223FB62
};

static const u16 Unk_ov104_0223FB08[] = {
    ITEM_CHERI_BERRY,
    ITEM_CHESTO_BERRY,
    ITEM_PECHA_BERRY,
    ITEM_RAWST_BERRY,
    ITEM_ASPEAR_BERRY,
    ITEM_PERSIM_BERRY,
    ITEM_SITRUS_BERRY,
    ITEM_LUM_BERRY
};

static const u16 Unk_ov104_0223FB92[] = {
    ITEM_OCCA_BERRY,
    ITEM_PASSHO_BERRY,
    ITEM_WACAN_BERRY,
    ITEM_RINDO_BERRY,
    ITEM_YACHE_BERRY,
    ITEM_CHOPLE_BERRY,
    ITEM_KEBIA_BERRY,
    ITEM_SHUCA_BERRY,
    ITEM_COBA_BERRY,
    ITEM_PAYAPA_BERRY,
    ITEM_TANGA_BERRY,
    ITEM_CHARTI_BERRY,
    ITEM_KASIB_BERRY,
    ITEM_HABAN_BERRY,
    ITEM_COLBUR_BERRY,
    ITEM_BABIRI_BERRY,
    ITEM_CHILAN_BERRY,
    ITEM_PERSIM_BERRY,
    ITEM_SITRUS_BERRY,
    ITEM_LUM_BERRY
};

static const u16 Unk_ov104_0223FB38[] = {
    ITEM_PERSIM_BERRY,
    ITEM_SITRUS_BERRY,
    ITEM_LUM_BERRY,
    ITEM_LIECHI_BERRY,
    ITEM_GANLON_BERRY,
    ITEM_SALAC_BERRY,
    ITEM_PETAYA_BERRY,
    ITEM_APICOT_BERRY,
    ITEM_LANSAT_BERRY,
    ITEM_STARF_BERRY
};

static const u16 *Unk_ov104_02241A20[] = {
    Unk_ov104_0223FB08,
    Unk_ov104_0223FB92,
    Unk_ov104_0223FB38
};

static void *Unk_ov104_02241A38[] = {
    ov104_02238BBC,
    ov104_02238C18,
    ov104_02238C9C,
    ov104_02238D14,
    ov104_02238D8C,
    ov104_02238E08,
    ov104_02238E9C,
    ov104_02238EF8,
    ov104_02238F54,
    ov104_02238BBC,
    ov104_02238C18,
    ov104_02238C9C,
    ov104_02238D14,
    ov104_02238D8C,
    ov104_02238E08,
    ov104_02238E9C,
    ov104_02238EF8,
    ov104_02238F54,
    ov104_02238FAC,
    ov104_02238FB8,
    ov104_02238FC0,
    ov104_02238FC8,
    ov104_02238FD0,
    ov104_02238FD8,
    ov104_02238FE4,
    ov104_02238FF0,
    ov104_02238FFC,
    ov104_02239004,
    ov104_02239008,
    ov104_0223900C,
    ov104_02239010,
    ov104_02239008
};

void ov104_02238B88(BattleArcade *param0, u8 param1)
{
    u8 v0;
    Party *v1;
    UnkFuncPtr_ov104_02238B88 v2;

    if (param1 < 9) {
        v1 = param0->opponentsParty;
        v0 = BattleArcade_GetOpponentPartySize(param0->challengeType, 1);
    } else {
        v1 = param0->playersParty;
        v0 = BattleArcade_GetPlayerPartySize(param0->challengeType, 1);
    }

    v2 = Unk_ov104_02241A38[param1];
    v2(param0, v1, v0);

    return;
}

static void ov104_02238BBC(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0;
    u32 v1, v2;
    Pokemon *v3;

    for (v0 = 0; v0 < param2; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param1, v0);
        v1 = Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL);
        v2 = (v1 * 1.2);
        v2 -= v1;
        v2 = (v1 - v2);

        Pokemon_SetValue(v3, MON_DATA_HP, &v2);
    }

    return;
}

static void ov104_02238C18(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0, v1;
    u32 v2, v3, v4, v5;
    Pokemon *v6;

    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param1, v0);
        v3 = Pokemon_GetValue(v6, MON_DATA_TYPE_1, NULL);
        v4 = Pokemon_GetValue(v6, MON_DATA_TYPE_2, NULL);
        v5 = Pokemon_GetValue(v6, MON_DATA_ABILITY, NULL);

        if ((v3 == TYPE_POISON) || (v4 == TYPE_POISON) || (v3 == TYPE_STEEL) || (v4 == TYPE_STEEL) || (v5 == ABILITY_IMMUNITY)) {
            v1++;
        } else {
            v2 = MON_CONDITION_POISON;
            Pokemon_SetValue(v6, MON_DATA_STATUS, &v2);
        }
    }

    if (v1 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238C9C(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0, v1;
    u32 v2, v3, v4, v5;
    Pokemon *v6;

    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param1, v0);
        v3 = Pokemon_GetValue(v6, MON_DATA_TYPE_1, NULL);
        v4 = Pokemon_GetValue(v6, MON_DATA_TYPE_2, NULL);
        v5 = Pokemon_GetValue(v6, MON_DATA_ABILITY, NULL);

        if ((v3 == TYPE_GROUND) || (v4 == TYPE_GROUND) || (v5 == ABILITY_LIMBER)) {
            v1++;
        } else {
            v2 = MON_CONDITION_PARALYSIS;
            Pokemon_SetValue(v6, MON_DATA_STATUS, &v2);
        }
    }

    if (v1 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238D14(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0, v1;
    u32 v2, v3, v4, v5;
    Pokemon *v6;

    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param1, v0);
        v3 = Pokemon_GetValue(v6, MON_DATA_TYPE_1, NULL);
        v4 = Pokemon_GetValue(v6, MON_DATA_TYPE_2, NULL);
        v5 = Pokemon_GetValue(v6, MON_DATA_ABILITY, NULL);

        if ((v3 == TYPE_FIRE) || (v4 == TYPE_FIRE) || (v5 == ABILITY_WATER_VEIL)) {
            v1++;
        } else {
            v2 = MON_CONDITION_BURN;
            Pokemon_SetValue(v6, MON_DATA_STATUS, &v2);
        }
    }

    if (v1 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238D8C(BattleArcade *param0, Party *param1, u8 param2)
{
    u8 v0;
    int v1, v2;
    u32 v3, v4;
    Pokemon *v5;

    v2 = 0;
    v0 = (param0->unk_20 % param2);

    for (v1 = 0; v1 < param2; v1++) {
        v5 = Party_GetPokemonBySlotIndex(param1, v0);
        v4 = Pokemon_GetValue(v5, MON_DATA_ABILITY, NULL);

        if ((v4 == ABILITY_INSOMNIA) || (v4 == ABILITY_VITAL_SPIRIT)) {
            v2++;
            v0++;

            if (v0 >= param2) {
                v0 = 0;
            }
        } else {
            v3 = (LCRNG_Next() % 4 + 2);
            Pokemon_SetValue(v5, MON_DATA_STATUS, &v3);
            break;
        }
    }

    if (v2 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238E08(BattleArcade *param0, Party *param1, u8 param2)
{
    u8 v0;
    int v1, v2;
    u32 v3, v4, v5, v6;
    Pokemon *v7;

    v2 = 0;
    v0 = (param0->unk_20 % param2);

    for (v1 = 0; v1 < param2; v1++) {
        v7 = Party_GetPokemonBySlotIndex(param1, v0);
        v4 = Pokemon_GetValue(v7, MON_DATA_TYPE_1, NULL);
        v5 = Pokemon_GetValue(v7, MON_DATA_TYPE_2, NULL);
        v6 = Pokemon_GetValue(v7, MON_DATA_ABILITY, NULL);

        if ((v4 == TYPE_ICE) || (v5 == TYPE_ICE) || (v6 == ABILITY_MAGMA_ARMOR)) {
            v2++;
            v0++;

            if (v0 >= param2) {
                v0 = 0;
            }
        } else {
            v3 = MON_CONDITION_FREEZE;
            Pokemon_SetValue(v7, MON_DATA_STATUS, &v3);

            break;
        }
    }

    if (v2 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238E9C(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0, v1;
    const u16 *v2;
    u16 v3, v4;
    Pokemon *v5;

    v4 = ov104_0223C124(param0);

    if (v4 < 3) {
        v2 = Unk_ov104_02241A20[0];
        v1 = (NELEMS(Unk_ov104_0223FB08));
    } else if (v4 < 6) {
        v2 = Unk_ov104_02241A20[1];
        v1 = (NELEMS(Unk_ov104_0223FB92));
    } else {
        v2 = Unk_ov104_02241A20[2];
        v1 = (NELEMS(Unk_ov104_0223FB38));
    }

    v3 = v2[(param0->unk_20 % v1)];

    for (v0 = 0; v0 < param2; v0++) {
        v5 = Party_GetPokemonBySlotIndex(param1, v0);
        Pokemon_SetValue(v5, MON_DATA_HELD_ITEM, &v3);
    }

    return;
}

static void ov104_02238EF8(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0, v1;
    const u16 *v2;
    u16 v3, v4;
    Pokemon *v5;

    v4 = ov104_0223C124(param0);

    if (v4 < 3) {
        v2 = Unk_ov104_02241A2C[0];
        v1 = (NELEMS(Unk_ov104_0223FB4C));
    } else if (v4 < 6) {
        v2 = Unk_ov104_02241A2C[1];
        v1 = (NELEMS(Unk_ov104_0223FB78));
    } else {
        v2 = Unk_ov104_02241A2C[2];
        v1 = (NELEMS(Unk_ov104_0223FB62));
    }

    v3 = v2[(param0->unk_20 % v1)];

    for (v0 = 0; v0 < param2; v0++) {
        v5 = Party_GetPokemonBySlotIndex(param1, v0);
        Pokemon_SetValue(v5, MON_DATA_HELD_ITEM, &v3);
    }

    return;
}

static void ov104_02238F54(BattleArcade *param0, Party *param1, u8 param2)
{
    int v0;
    u32 v1, v2;
    Pokemon *v3;

    for (v0 = 0; v0 < param2; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param1, v0);
        v2 = Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL);
        v2 += 3;

        if (v2 > 100) {
            GF_ASSERT(FALSE);
            v2 = 100;
        }

        v1 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), v2);

        Pokemon_SetValue(v3, MON_DATA_EXPERIENCE, &v1);
        Pokemon_CalcLevelAndStats(v3);
    }

    return;
}

static void ov104_02238FAC(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->weather = 1001;
    return;
}

static void ov104_02238FB8(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->weather = 2;
    return;
}

static void ov104_02238FC0(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->weather = 10;
    return;
}

static void ov104_02238FC8(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->weather = 5;
    return;
}

static void ov104_02238FD0(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->weather = 14;
    return;
}

static void ov104_02238FD8(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->weather = 1002;
    return;
}

static void ov104_02238FE4(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    if (param0->unk_1C < (8 - 1)) {
        param0->unk_1C++;
    }

    return;
}

static void ov104_02238FF0(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    if (param0->unk_1C > 0) {
        param0->unk_1C--;
    }

    return;
}

static void ov104_02238FFC(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;

    param0->unk_12 = 1;
    return;
}

static void ov104_02239004(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;
    return;
}

static void ov104_02239008(BattleArcade *param0, Party *param1, u8 param2)
{
    u16 v0;
    Pokemon *v1;

    return;
}

static void ov104_0223900C(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;
    return;
}

static void ov104_02239010(BattleArcade *param0, Party *param1, u8 param2)
{
    Pokemon *v0;
    return;
}

u16 ov104_02239014(BattleArcade *param0)
{
    u8 v0;
    u16 v1;
    static const u8 v2[8 + 1] = { 0, 2, 2, 2, 2, 4, 4, 5, 6 };
    static const u8 v3[8 + 1] = { 0, 7, 8, 9, 10, 13, 14, 16, 17 };

    v1 = param0->unk_1A;

    if ((param0->challengeType == 0) || (param0->challengeType == 1)) {
        if (v1 >= 8) {
            v0 = v2[8];
        } else {
            v0 = v2[v1];
        }
    } else {
        if (v1 >= 8) {
            v0 = v3[8];
        } else {
            v0 = v3[v1];
        }
    }

    if (param0->challengeType == 0) {
        if ((param0->currentStreak == 21) || (param0->currentStreak == 49)) {
            v0 = 20;
        }
    }

    return v0;
}

void ov104_02239054(Party *param0, Party *param1, int param2, int param3)
{
    u16 v0;
    Pokemon *v1;
    Pokemon *v2 = Party_GetPokemonBySlotIndex(param0, param2);
    v0 = Pokemon_GetValue(v2, MON_DATA_HELD_ITEM, NULL);
    v1 = Party_GetPokemonBySlotIndex(param1, param3);

    Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &v0);

    return;
}
