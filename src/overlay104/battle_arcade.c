#include "overlay104/battle_arcade.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/condition.h"
#include "constants/battle_frontier.h"
#include "generated/items.h"

#include "global/utility.h"
#include "overlay104/battle_arcade.h"
#include "overlay104/battle_arcade_helpers.h"
#include "overlay104/frontier_communication.h"
#include "overlay104/frontier_opponents.h"
#include "overlay104/ov104_02231F74.h"

#include "battle_arcade_save.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "bg_window.h"
#include "coordinates.h"
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
#include "vars_flags.h"

#include "res/graphics/frontier/backgrounds/frontier_backgrounds.naix"

typedef void (*BattleArcadeEffectFunc)(BattleArcade *, Party *, u8);

static void SelectTrainersAndFirstBattlesMons(BattleArcade *arcade);
static void LoadTrainersAndMonsFromSave(BattleArcade *arcade);
static void LoadPlayersPartyFromSave(BattleArcade *arcade);
static u16 GetBattleArcadeAppCursorPos(BattleArcadeAppArgs *args, u8 i);
static int CalcBasePerformance(BattleArcade *battleArcade, Party *playersParty, Party *partnersParty, u8 partySize);
static void ArcadeEffect_LowerHP(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Poison(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Paralyze(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Burn(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Sleep(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Freeze(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_GetBerry(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_GetItem(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_LevelUp(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Sunny(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Rainy(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Sandy(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Hail(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_Foggy(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_TrickRoom(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_SpeedUp(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_SlowDown(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_RandomizeCursor(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_SwapMons(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_GetFreeBP(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_NoBattle(BattleArcade *arcade, Party *party, u8 partySize);
static void ArcadeEffect_NoEvent(BattleArcade *arcade, Party *party, u8 partySize);

static const struct {
    u16 tiles;
    u16 tilemap;
    u16 palette;
} sBattleArcadeScreenAssets[NUM_ARCADE_EFFECTS] = {
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

static const struct {
    u8 round;
    u8 speed;
} sRouletteSpeedByRound[] = {
    { 7, 5 },
    { 4, 4 },
    { 0, 3 }
};

BattleArcade *BattleArcade_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u16 partySlot1, u16 partySlot2, u16 partySlot3, u16 *param6)
{
    u16 i;

    static BattleArcade *arcade;
    arcade = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleArcade));

    MI_CpuClear8(arcade, sizeof(BattleArcade));

    arcade->arcadeSave = BattleArcadeSave_Get(saveData);
    arcade->saveData = saveData;
    arcade->unused = 11;
    arcade->playersParty = Party_New(HEAP_ID_FIELD2);
    arcade->opponentsParty = Party_New(HEAP_ID_FIELD2);
    arcade->unk_A80 = param6;
    arcade->activeEffect = NUM_ARCADE_EFFECTS;

    BattleArcadeSave *arcadeSave = arcade->arcadeSave;
    BattleArcadeStreakFlags *persistentSave = BattleArcadeStreakFlags_Get(saveData);

    if (!resumingFromSave) {
        arcade->challengeType = challengeType;
        arcade->currentBattle = 0;
        arcade->rouletteSpeed = 3;
        arcade->cursorRandomized = 0;

        BattleArcadeSave_Init(arcadeSave);

        u8 streakActive;
        if (arcade->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            streakActive = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(arcade->saveData));
        } else {
            streakActive = BattleArcadeStreakFlags_GetFlag(persistentSave, ARCADE_SAVE_STREAK_FLAGS, arcade->challengeType, 0, NULL);
        }

        if (streakActive == TRUE) {
            arcade->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(arcade->saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(arcade->challengeType));
        } else {
            arcade->currentStreak = 0;
        }

        arcade->currentRound = arcade->currentStreak / ARCADE_BATTLES_PER_ROUND;
        arcade->unused2 = 0;

        arcade->partySlots[0] = partySlot1;
        arcade->partySlots[1] = partySlot2;
        arcade->partySlots[2] = partySlot3;
    } else {
        arcade->challengeType = BattleArcadeSave_GetMember(arcadeSave, ARCADE_SAVE_CHALLENGE_TYPE, 0, 0, NULL);
        arcade->currentBattle = BattleArcadeSave_GetMember(arcadeSave, ARCADE_SAVE_CURRENT_BATTLE, 0, 0, NULL);
        arcade->rouletteSpeed = BattleArcadeSave_GetMember(arcadeSave, ARCADE_SAVE_ROULETTE_SPEED, 0, 0, NULL);
        arcade->cursorRandomized = BattleArcadeSave_GetMember(arcadeSave, ARCADE_SAVE_CURSOR_RANDOMIZED, 0, 0, NULL);
        arcade->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(arcade->saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(arcade->challengeType));
        arcade->currentRound = arcade->currentStreak / ARCADE_BATTLES_PER_ROUND;

        for (i = 0; i < ARCADE_PARTY_SIZE_SOLO; i++) {
            arcade->partySlots[i] = BattleArcadeSave_GetMember(arcadeSave, ARCADE_SAVE_PARTY_SLOTS, i, 0, NULL);
        }
    }

    for (i = 0; i < ARCADE_PARTY_SIZE_SOLO; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(arcade->saveData), arcade->partySlots[i]);
        arcade->savedHeldItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    Party *fieldParty = SaveData_GetParty(arcade->saveData);
    u8 partySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, FALSE);

    for (i = 0; i < partySize; i++) {
        Party_AddPokemon(arcade->playersParty, Party_GetPokemonBySlotIndex(fieldParty, arcade->partySlots[i]));

        Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->playersParty, i);

        u32 noItem = ITEM_NONE;
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &noItem);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) > ARCADE_MAX_LEVEL) {
            u32 exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), ARCADE_MAX_LEVEL);
            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
            Pokemon_CalcLevelAndStats(mon);
        }
    }

    if (BattleArcade_IsMultiPlayerChallenge(arcade->challengeType) == TRUE) {
        BattleFrontier_FlagGeonetLinkInfo(arcade->saveData);
    }

    return arcade;
}

void BattleArcade_LoadTrainersForRound(BattleArcade *arcade, u16 resumingFromSave)
{
    if (!resumingFromSave) {
        SelectTrainersAndFirstBattlesMons(arcade);
    } else {
        LoadTrainersAndMonsFromSave(arcade);
    }
}

static void SelectTrainersAndFirstBattlesMons(BattleArcade *arcade)
{
    BattleArcade_PickOpponentTrainers(arcade->challengeType, BattleArcade_GetCurrentRound(arcade), arcade->trainerIDs, ARCADE_BATTLES_PER_ROUND * 2);

    BattleFrontier_GetPokemonForTrainers(BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE), arcade->trainerIDs[arcade->currentBattle], arcade->trainerIDs[arcade->currentBattle + ARCADE_BATTLES_PER_ROUND], arcade->monSetIDs, arcade->opponentMons, arcade->opponentMonIVs, arcade->opponentMonPersonalities, BattleArcade_IsMultiPlayerChallenge(arcade->challengeType));

    u16 currentRound = BattleArcade_GetCurrentRound(arcade);

    for (int i = 0; i < NELEMS(sRouletteSpeedByRound); i++) {
        if (currentRound >= sRouletteSpeedByRound[i].round) {
            arcade->rouletteSpeed = sRouletteSpeedByRound[i].speed;
            break;
        }
    }
}

static void LoadTrainersAndMonsFromSave(BattleArcade *arcade)
{
    FrontierPokemon mons[MAX_PARTY_SIZE];
    u8 ivs[MAX_PARTY_SIZE];
    u16 setIDs[MAX_PARTY_SIZE];
    u32 personalities[MAX_PARTY_SIZE];

    LoadPlayersPartyFromSave(arcade);

    for (int i = 0; i < ARCADE_BATTLES_PER_ROUND * 2; i++) {
        arcade->trainerIDs[i] = BattleArcadeSave_GetMember(arcade->arcadeSave, ARCADE_SAVE_TRAINER_IDS, i, 0, NULL);
    }

    for (int i = 0; i < ARCADE_MAX_PARTY_SIZE; i++) {
        setIDs[i] = BattleArcadeSave_GetMember(arcade->arcadeSave, ARCADE_SAVE_MON_SET_IDS, i, 0, NULL);
        arcade->monSetIDs[i] = setIDs[i];
    }

    BattleFrontier_LoadFrontierPokemon(mons, setIDs, ivs, NULL, personalities, ARCADE_MAX_PARTY_SIZE, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < ARCADE_MAX_PARTY_SIZE; i++) {
        FrontierPokemon_InitPokemon(&mons[i], mon, BattleArcade_GetPokemonLevel(arcade));
        BattleArcade_AddMonToParty(arcade, arcade->opponentsParty, mon);
    }

    Heap_Free(mon);
}

static void LoadPlayersPartyFromSave(BattleArcade *arcade)
{
    u8 partySize = Party_GetCurrentCount(arcade->playersParty);

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->playersParty, i);

        u16 item = BattleArcadeSave_GetMember(arcade->arcadeSave, ARCADE_SAVE_HELD_ITEMS, i, 0, NULL);
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
    }
}

void BattleArcade_Free(BattleArcade *arcade)
{
    if (arcade == NULL) {
        return;
    }

    if (arcade->playersParty != NULL) {
        Heap_Free(arcade->playersParty);
    }

    if (arcade->opponentsParty != NULL) {
        Heap_Free(arcade->opponentsParty);
    }

    MI_CpuClear8(arcade, sizeof(BattleArcade));
    Heap_Free(arcade);

    arcade = NULL;
}

void BattleArcade_StoreAppResults(BattleArcade *battleArcade, BattleArcadeAppArgs *args)
{
    for (int i = 0; i < 6; i++) {
        battleArcade->appCursorPos[i] = GetBattleArcadeAppCursorPos(args, i);
    }
}

static u16 GetBattleArcadeAppCursorPos(BattleArcadeAppArgs *args, u8 i)
{
    if (i >= 6) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return args->cursorPos;
}

void BattleArcade_Save(BattleArcade *arcade, u8 saveType)
{
    u8 u8Ptr[4];
    u16 u16Ptr[4];
    BattleArcadeSave *arcadeSave = arcade->arcadeSave;
    BattleArcadeStreakFlags *persistentSave = BattleArcadeStreakFlags_Get(arcade->saveData);

    UNUSED(BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE));

    u8Ptr[0] = arcade->challengeType;
    BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_CHALLENGE_TYPE, 0, 0, u8Ptr);
    BattleArcadeSave_RecordSave(arcade->arcadeSave, TRUE);

    u8Ptr[0] = arcade->currentBattle;
    BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_CURRENT_BATTLE, 0, 0, u8Ptr);

    u8Ptr[0] = arcade->rouletteSpeed;
    BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_ROULETTE_SPEED, 0, 0, u8Ptr);

    u8Ptr[0] = arcade->cursorRandomized;
    BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_CURSOR_RANDOMIZED, 0, 0, u8Ptr);
    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(arcade->saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(arcade->challengeType), arcade->currentStreak);

    if (saveType != 2) {
        BattleFrontierSave_SetIfBetterAutoHostIdx(SaveData_GetBattleFrontier(arcade->saveData), BattleFrontierStats_GetArcadeCurrentStreakIndex(arcade->challengeType), arcade->currentStreak);

        u8Ptr[0] = arcade->saveStreak;
        BattleArcadeStreakFlags_SetFlag(persistentSave, ARCADE_SAVE_STREAK_FLAGS, arcade->challengeType, 0, u8Ptr);

        if (arcade->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(arcade->saveData), STAT_ARCADE_WFC_STREAK_ACTIVE, arcade->saveStreak);
        }
    }

    for (u16 i = 0; i < ARCADE_BATTLES_PER_ROUND * 2; i++) {
        u16Ptr[0] = arcade->trainerIDs[i];
        BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_TRAINER_IDS, i, 0, u16Ptr);
    }

    for (u16 i = 0; i < ARCADE_PARTY_SIZE_SOLO; i++) {
        u8Ptr[0] = arcade->partySlots[i];
        BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_PARTY_SLOTS, i, 0, u8Ptr);
    }

    u32 partySize = Party_GetCurrentCount(arcade->playersParty);

    for (u16 i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->playersParty, i);
        u16Ptr[0] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_HELD_ITEMS, i, 0, u16Ptr);
    }

    partySize = Party_GetCurrentCount(arcade->opponentsParty);

    for (u16 i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->opponentsParty, i);
        u16Ptr[0] = arcade->monSetIDs[i];
        BattleArcadeSave_SetMember(arcade->arcadeSave, ARCADE_SAVE_MON_SET_IDS, i, 0, u16Ptr);
    }
}

u16 BattleArcade_IncrementCurrentBattle(BattleArcade *arcade)
{
    arcade->currentBattle++;
    return arcade->currentBattle;
}

u16 BattleArcade_GetCurrentBattle(BattleArcade *arcade)
{
    return arcade->currentBattle;
}

u16 BattleArcade_GetNextOpponentObjectID(BattleArcade *arcade, u8 trainerSlot)
{
    FrontierTrainer trainer;
    u8 offset = BattleArcade_GetTrainerOffset(arcade, trainerSlot);

    Heap_Free(BattleFrontier_GetTrainer(&trainer, arcade->trainerIDs[offset], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleFrontier_GetObjectIDFromTrainerClass(trainer.trainerType);
}

u16 BattleArcade_GetTrainerOffset(BattleArcade *arcade, u8 trainerSlot)
{
    return arcade->currentBattle + (trainerSlot * ARCADE_BATTLES_PER_ROUND);
}

void BattleArcade_SaveOnLoss(BattleArcade *arcade)
{
    BattleArcade_Save(arcade, 1);
}

void BattleArcade_SaveOnCompletingRound(BattleArcade *arcade)
{
    arcade->saveStreak = TRUE;

    if (arcade->currentRound < ARCADE_MAX_DISTINCT_ROUNDS) {
        arcade->currentRound++;
    }

    arcade->currentBattle = 0;
    BattleArcade_Save(arcade, 0);
}

void BattleArcade_SetupFirstOpponentsParty(BattleArcade *arcade)
{
    BattleArcade_SetupOpponentsParty(arcade);
}

void BattleArcade_SetupNextOpponentsParty(BattleArcade *arcade)
{
    BattleFrontier_GetPokemonForTrainers(BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE), arcade->trainerIDs[arcade->currentBattle], arcade->trainerIDs[arcade->currentBattle + ARCADE_BATTLES_PER_ROUND], arcade->monSetIDs, arcade->opponentMons, arcade->opponentMonIVs, arcade->opponentMonPersonalities, BattleArcade_IsMultiPlayerChallenge(arcade->challengeType));

    BattleArcade_SetupOpponentsParty(arcade);
}

static const u8 sPerformanceByNumWithStatus[ARCADE_MAX_PARTY_SIZE + 1] = { 8, 6, 4, 0, 0 };

static const u8 sPerformanceByNumFainted[ARCADE_MAX_PARTY_SIZE + 1] = { 6, 4, 2, 0, 0 };

static const struct {
    u8 turns;
    u8 score;
} sPerformanceByTurnsElapsed[] = {
    { 3, 10 },
    { 5, 6 },
    { 7, 4 },
    { 9, 2 },
    { 10, 0 }
};

int BattleArcade_GetPerformance(BattleArcade *battleArcade, Party *playersParty, Party *partnersParty, int totalTurnsElapsed)
{
    int performance = 0;
    u8 partySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, FALSE);

    performance += CalcBasePerformance(battleArcade, playersParty, partnersParty, partySize);

    for (int i = 0; i < SNELEMS(sPerformanceByTurnsElapsed); i++) {
        if (totalTurnsElapsed < sPerformanceByTurnsElapsed[i].turns) {
            performance += sPerformanceByTurnsElapsed[i].score;
            break;
        }
    }

    return performance;
}

static int CalcBasePerformance(BattleArcade *battleArcade, Party *playersParty, Party *partnersParty, u8 partySize)
{
    int performance = 0;
    u8 faintedMons = 0;
    u8 monsWithStatusCondition = 0;

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(playersParty, i);

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
        for (int i = 0; i < partySize; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(partnersParty, i);

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

    performance += sPerformanceByNumWithStatus[monsWithStatusCondition];
    performance += sPerformanceByNumFainted[faintedMons];

    return performance;
}

void BattleArcade_UpdateBackgroundForEffect(BattleArcade *arcade, FrontierGraphics *graphics)
{
    if (arcade->activeEffect != NUM_ARCADE_EFFECTS) {
        NARC *narc = NARC_ctor(NARC_INDEX_FRONTIER_BACKGROUNDS, HEAP_ID_94);

        Graphics_LoadTilesToBgLayerFromOpenNARC(narc, sBattleArcadeScreenAssets[arcade->activeEffect].tiles, graphics->bgConfig, BG_LAYER_MAIN_2, 0, 0, TRUE, HEAP_ID_94);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, sBattleArcadeScreenAssets[arcade->activeEffect].tilemap, graphics->bgConfig, BG_LAYER_MAIN_2, 0, 0, TRUE, HEAP_ID_94);

        NNSG2dPaletteData *plttData;
        void *pltt = Graphics_GetPlttDataFromOpenNARC(narc, sBattleArcadeScreenAssets[arcade->activeEffect].palette, &plttData, HEAP_ID_94);
        DC_FlushRange(plttData->pRawData, plttData->szByte);

        GX_BeginLoadBGExtPltt();
        GX_LoadBGExtPltt(plttData->pRawData, 0x4000, 0x2000);
        GX_EndLoadBGExtPltt();

        Heap_Free(pltt);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        Bg_ScheduleTilemapTransfer(graphics->bgConfig, BG_LAYER_MAIN_2);
        NARC_dtor(narc);
    } else {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    }
}

void BattleArcade_LoadNormalBackground(void *arcade, FrontierGraphics *graphics)
{
    NARC *narc = NARC_ctor(NARC_INDEX_FRONTIER_BACKGROUNDS, HEAP_ID_94);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, battle_arcade_battle_room_dupe_NSCR_lz, graphics->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_94);
    Bg_ScheduleTilemapTransfer(graphics->bgConfig, BG_LAYER_MAIN_3);
    NARC_dtor(narc);
}

static const CoordinatesS16 sPlayerMonSpritePositions[] = {
    { .x = 33, .y = 20 },
    { .x = 39, .y = 43 },
    { .x = 43, .y = 66 },
    { .x = 46, .y = 89 }
};

static const CoordinatesS16 sOpponentMonSpritePositions[] = {
    { .x = 222, .y = 20 },
    { .x = 216, .y = 43 },
    { .x = 213, .y = 66 },
    { .x = 210, .y = 89 }
};

void BattleArcade_CreateMonSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent)
{
    u8 playerPartySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);

    if (!isOpponent) {
        for (int i = 0; i < playerPartySize; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->playersParty, i);
            arcade->playerMonSprites[i] = BattleFrontier_CreateMonSprite(graphics, mon, i, sPlayerMonSpritePositions[i].x, sPlayerMonSpritePositions[i].y);
            Sprite_SetAnimateFlag(arcade->playerMonSprites[i]->sprite, FALSE);
        }
    } else {
        for (int i = 0; i < opponentPartySize; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->opponentsParty, i);
            arcade->opponentMonSprites[i] = BattleFrontier_CreateMonSprite(graphics, mon, i + playerPartySize, sOpponentMonSpritePositions[i].x, sOpponentMonSpritePositions[i].y);
            Sprite_SetAnimateFlag(arcade->opponentMonSprites[i]->sprite, FALSE);
        }
    }
}

void BattleArcade_DeleteMonSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent)
{
    u8 playerPartySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);

    if (!isOpponent) {
        for (int i = 0; i < playerPartySize; i++) {
            BattleFrontier_DeleteMonSprite(graphics, arcade->playerMonSprites[i], i);
        }
    } else {
        for (int i = 0; i < opponentPartySize; i++) {
            BattleFrontier_DeleteMonSprite(graphics, arcade->opponentMonSprites[i], i + playerPartySize);
        }
    }
}

void BattleArcade_SetPlayerMonSpriteDrawFlag(BattleArcade *arcade, FrontierGraphics *graphics, u16 draw, u16 index)
{
    u8 partySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);

    if (index >= partySize) {
        return;
    }

    if (draw == TRUE) {
        Sprite_SetDrawFlag(arcade->playerMonSprites[index]->sprite, TRUE);
    } else {
        Sprite_SetDrawFlag(arcade->playerMonSprites[index]->sprite, FALSE);
    }
}

void BattleArcade_SetOpponentMonSpriteDrawFlag(BattleArcade *arcade, FrontierGraphics *graphics, u16 draw, u16 index)
{
    u8 partySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);

    if (index >= partySize) {
        return;
    }

    if (draw == TRUE) {
        Sprite_SetDrawFlag(arcade->opponentMonSprites[index]->sprite, TRUE);
    } else {
        Sprite_SetDrawFlag(arcade->opponentMonSprites[index]->sprite, FALSE);
    }
}

void BattleArcade_CreateItemSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent)
{
    u8 playerPartySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);

    if (!isOpponent) {
        for (int i = 0; i < playerPartySize; i++) {
            arcade->playerItemSprites[i] = BattleFrontier_CreateItemSprite(graphics, sPlayerMonSpritePositions[i].x + 8, sPlayerMonSpritePositions[i].y + 4);

            Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->playersParty, i);

            if (Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_NONE) {
                Sprite_SetDrawFlag(arcade->playerItemSprites[i]->sprite, FALSE);
            }
        }
    } else {
        for (int i = 0; i < opponentPartySize; i++) {
            arcade->opponentItemSprites[i] = BattleFrontier_CreateItemSprite(graphics, sOpponentMonSpritePositions[i].x + 8, sOpponentMonSpritePositions[i].y + 4);

            Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->opponentsParty, i);

            if (Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_NONE) {
                Sprite_SetDrawFlag(arcade->opponentItemSprites[i]->sprite, FALSE);
            }
        }
    }
}

void BattleArcade_DeleteItemSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent)
{
    u8 playerPartySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);

    if (!isOpponent) {
        for (int i = 0; i < playerPartySize; i++) {
            BattleFrontier_DeleteItemSprite(graphics, arcade->playerItemSprites[i]);
        }
    } else {
        for (int i = 0; i < opponentPartySize; i++) {
            BattleFrontier_DeleteItemSprite(graphics, arcade->opponentItemSprites[i]);
        }
    }
}

void BattleArcade_SetItemDrawFlag(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent, u16 slot, u16 drawItem)
{
    u8 playerPartySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);

    if (!isOpponent) {
        if (slot >= playerPartySize) {
            return;
        }

        Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->playersParty, slot);
        u32 item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (drawItem == TRUE) {
            if (item == ITEM_NONE) {
                Sprite_SetDrawFlag(arcade->playerItemSprites[slot]->sprite, FALSE);
            } else {
                Sprite_SetDrawFlag(arcade->playerItemSprites[slot]->sprite, TRUE);
            }
        } else {
            Sprite_SetDrawFlag(arcade->playerItemSprites[slot]->sprite, FALSE);
        }
    } else {
        if (slot >= opponentPartySize) {
            return;
        }

        Pokemon *mon = Party_GetPokemonBySlotIndex(arcade->opponentsParty, slot);
        u32 item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (drawItem == TRUE) {
            if (item == ITEM_NONE) {
                Sprite_SetDrawFlag(arcade->opponentItemSprites[slot]->sprite, FALSE);
            } else {
                Sprite_SetDrawFlag(arcade->opponentItemSprites[slot]->sprite, TRUE);
            }
        } else {
            Sprite_SetDrawFlag(arcade->opponentItemSprites[slot]->sprite, FALSE);
        }
    }
}

void BattleArcade_SetPalette(u8 fraction, u8 source)
{
    u32 narcIdx, size;
    if (source == 0) {
        narcIdx = battle_arcade_corridor_NCLR;
        size = (15 * 16) * 2;
    } else {
        narcIdx = battle_arcade_battle_room_NCLR;
        size = (9 * 16) * 2;
    }

    u16 *blendResult = Heap_Alloc(HEAP_ID_94, 0x1000 * 2);
    memset(blendResult, 0, 0x1000 * 2);

    NNSG2dPaletteData *plttData;
    NARC *narc = NARC_ctor(NARC_INDEX_FRONTIER_BACKGROUNDS, HEAP_ID_94);
    void *pltt = Graphics_GetPlttDataFromOpenNARC(narc, narcIdx, &plttData, HEAP_ID_94);

    BlendPalette(plttData->pRawData, blendResult, 0x1000, fraction, 0x0);
    DC_FlushRange(blendResult, 0x1000 * 2);

    GX_BeginLoadBGExtPltt();
    GX_LoadBGExtPltt(blendResult, 0x6000, size);
    GX_EndLoadBGExtPltt();

    NARC_dtor(narc);
    Heap_Free(blendResult);
    Heap_Free(pltt);
}

BOOL BattleArcade_SendCommMessage(BattleArcade *arcade, u16 command, u16 arg)
{
    int success;

    switch (command) {
    case 0:
        success = ov104_0222F86C(arcade);
        break;
    case 1:
        success = ArcadeCommunication_SendTrainers(arcade);
        break;
    case 2:
        success = ov104_0222F944(arcade);
        break;
    case 3:
        success = ov104_0222FA38(arcade, arg);
        break;
    case 4:
        success = ov104_0222FA84(arcade, arg);
        break;
    case 5:
        success = ArcadeCommunication_SendPlayersParty(arcade);
        break;
    }

    return success;
}

static const u16 sItemPoolTier1[] = {
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

static const u16 sItemPoolTier2[] = {
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

static const u16 sItemPoolTier3[] = {
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

static const u16 *sItemPools[] = {
    sItemPoolTier1,
    sItemPoolTier2,
    sItemPoolTier3
};

static const u16 sBerryPoolTier1[] = {
    ITEM_CHERI_BERRY,
    ITEM_CHESTO_BERRY,
    ITEM_PECHA_BERRY,
    ITEM_RAWST_BERRY,
    ITEM_ASPEAR_BERRY,
    ITEM_PERSIM_BERRY,
    ITEM_SITRUS_BERRY,
    ITEM_LUM_BERRY
};

static const u16 sBerryPoolTier2[] = {
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

static const u16 sBerryPoolTier3[] = {
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

static const u16 *sBerryPools[] = {
    sBerryPoolTier1,
    sBerryPoolTier2,
    sBerryPoolTier3
};

static BattleArcadeEffectFunc sBattleArcadeEffectFunctions[NUM_ARCADE_EFFECTS] = {
    [ARCADE_EFFECT_LOWER_FOE_HP] = ArcadeEffect_LowerHP,
    [ARCADE_EFFECT_POISON_FOE] = ArcadeEffect_Poison,
    [ARCADE_EFFECT_PARALYZE_FOE] = ArcadeEffect_Paralyze,
    [ARCADE_EFFECT_BURN_FOE] = ArcadeEffect_Burn,
    [ARCADE_EFFECT_SLEEP_FOE] = ArcadeEffect_Sleep,
    [ARCADE_EFFECT_FREEZE_FOE] = ArcadeEffect_Freeze,
    [ARCADE_EFFECT_FOE_GET_BERRY] = ArcadeEffect_GetBerry,
    [ARCADE_EFFECT_FOE_GET_ITEM] = ArcadeEffect_GetItem,
    [ARCADE_EFFECT_FOE_LEVEL_UP] = ArcadeEffect_LevelUp,
    [ARCADE_EFFECT_LOWER_ALLY_HP] = ArcadeEffect_LowerHP,
    [ARCADE_EFFECT_POISON_ALLY] = ArcadeEffect_Poison,
    [ARCADE_EFFECT_PARALYZE_ALLY] = ArcadeEffect_Paralyze,
    [ARCADE_EFFECT_BURN_ALLY] = ArcadeEffect_Burn,
    [ARCADE_EFFECT_SLEEP_ALLY] = ArcadeEffect_Sleep,
    [ARCADE_EFFECT_FREEZE_ALLY] = ArcadeEffect_Freeze,
    [ARCADE_EFFECT_ALLY_GET_BERRY] = ArcadeEffect_GetBerry,
    [ARCADE_EFFECT_ALLY_GET_ITEM] = ArcadeEffect_GetItem,
    [ARCADE_EFFECT_ALLY_LEVEL_UP] = ArcadeEffect_LevelUp,
    [ARCADE_EFFECT_SUNNY_BATTLE] = ArcadeEffect_Sunny,
    [ARCADE_EFFECT_RAINY_BATTLE] = ArcadeEffect_Rainy,
    [ARCADE_EFFECT_SANDY_BATTLE] = ArcadeEffect_Sandy,
    [ARCADE_EFFECT_HAIL_BATTLE] = ArcadeEffect_Hail,
    [ARCADE_EFFECT_FOGGY_BATTLE] = ArcadeEffect_Foggy,
    [ARCADE_EFFECT_TRICK_ROOM] = ArcadeEffect_TrickRoom,
    [ARCADE_EFFECT_SPEED_UP] = ArcadeEffect_SpeedUp,
    [ARCADE_EFFECT_SLOW_DOWN] = ArcadeEffect_SlowDown,
    [ARCADE_EFFECT_RANDOMIZE_CURSOR] = ArcadeEffect_RandomizeCursor,
    [ARCADE_EFFECT_SWAP_MONS] = ArcadeEffect_SwapMons,
    [ARCADE_EFFECT_GET_1_BP] = ArcadeEffect_GetFreeBP,
    [ARCADE_EFFECT_NO_BATTLE] = ArcadeEffect_NoBattle,
    [ARCADE_EFFECT_NO_EVENT] = ArcadeEffect_NoEvent,
    [ARCADE_EFFECT_GET_3_BP] = ArcadeEffect_GetFreeBP
};

void BattleArcade_ApplyEffect(BattleArcade *arcade, u8 effect)
{
    u8 partySize;
    Party *party;
    if (effect < ARCADE_EFFECT_LOWER_ALLY_HP) {
        party = arcade->opponentsParty;
        partySize = BattleArcade_GetOpponentPartySize(arcade->challengeType, TRUE);
    } else {
        party = arcade->playersParty;
        partySize = BattleArcade_GetPlayerPartySize(arcade->challengeType, TRUE);
    }

    BattleArcadeEffectFunc func = sBattleArcadeEffectFunctions[effect];
    func(arcade, party, partySize);
}

static void ArcadeEffect_LowerHP(BattleArcade *arcade, Party *party, u8 partySize)
{
    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        u32 hp = maxHP * 1.2;
        hp -= maxHP;
        hp = maxHP - hp;

        Pokemon_SetValue(mon, MON_DATA_HP, &hp);
    }
}

static void ArcadeEffect_Poison(BattleArcade *arcade, Party *party, u8 partySize)
{
    int numImmune = 0;

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_POISON || type2 == TYPE_POISON || type1 == TYPE_STEEL || type2 == TYPE_STEEL || ability == ABILITY_IMMUNITY) {
            numImmune++;
        } else {
            u32 newStatus = MON_CONDITION_POISON;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &newStatus);
        }
    }

    if (numImmune >= partySize) {
        arcade->immuneToEffect = TRUE;
    }
}

static void ArcadeEffect_Paralyze(BattleArcade *arcade, Party *party, u8 partySize)
{
    int numImmune = 0;

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_GROUND || type2 == TYPE_GROUND || ability == ABILITY_LIMBER) {
            numImmune++;
        } else {
            u32 newStatus = MON_CONDITION_PARALYSIS;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &newStatus);
        }
    }

    if (numImmune >= partySize) {
        arcade->immuneToEffect = TRUE;
    }
}

static void ArcadeEffect_Burn(BattleArcade *arcade, Party *party, u8 partySize)
{
    int numImmune = 0;

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_FIRE || type2 == TYPE_FIRE || ability == ABILITY_WATER_VEIL) {
            numImmune++;
        } else {
            u32 newStatus = MON_CONDITION_BURN;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &newStatus);
        }
    }

    if (numImmune >= partySize) {
        arcade->immuneToEffect = TRUE;
    }
}

static void ArcadeEffect_Sleep(BattleArcade *arcade, Party *party, u8 partySize)
{
    int numImmune = 0;
    u8 slot = arcade->randomIndex % partySize;

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
        u32 ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

        if (ability == ABILITY_INSOMNIA || ability == ABILITY_VITAL_SPIRIT) {
            numImmune++;
            slot++;

            if (slot >= partySize) {
                slot = 0;
            }
        } else {
            u32 newStatus = LCRNG_Next() % 4 + 2;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &newStatus);
            break;
        }
    }

    if (numImmune >= partySize) {
        arcade->immuneToEffect = TRUE;
    }
}

static void ArcadeEffect_Freeze(BattleArcade *arcade, Party *party, u8 partySize)
{
    int numImmune = 0;
    u8 slot = arcade->randomIndex % partySize;

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
        u32 type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_ICE || type2 == TYPE_ICE || ability == ABILITY_MAGMA_ARMOR) {
            numImmune++;
            slot++;

            if (slot >= partySize) {
                slot = 0;
            }
        } else {
            u32 newStatus = MON_CONDITION_FREEZE;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &newStatus);
            break;
        }
    }

    if (numImmune >= partySize) {
        arcade->immuneToEffect = TRUE;
    }
}

static void ArcadeEffect_GetBerry(BattleArcade *arcade, Party *party, u8 partySize)
{
    u16 currentRound = BattleArcade_GetCurrentRound(arcade);

    int poolSize;
    const u16 *itemPool;
    if (currentRound < 3) {
        itemPool = sBerryPools[0];
        poolSize = NELEMS(sBerryPoolTier1);
    } else if (currentRound < 6) {
        itemPool = sBerryPools[1];
        poolSize = NELEMS(sBerryPoolTier2);
    } else {
        itemPool = sBerryPools[2];
        poolSize = NELEMS(sBerryPoolTier3);
    }

    u16 newItem = itemPool[arcade->randomIndex % poolSize];

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &newItem);
    }
}

static void ArcadeEffect_GetItem(BattleArcade *arcade, Party *party, u8 partySize)
{
    u16 currentRound = BattleArcade_GetCurrentRound(arcade);

    int poolSize;
    const u16 *itemPool;
    if (currentRound < 3) {
        itemPool = sItemPools[0];
        poolSize = NELEMS(sItemPoolTier1);
    } else if (currentRound < 6) {
        itemPool = sItemPools[1];
        poolSize = NELEMS(sItemPoolTier2);
    } else {
        itemPool = sItemPools[2];
        poolSize = NELEMS(sItemPoolTier3);
    }

    u16 newItem = itemPool[arcade->randomIndex % poolSize];

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &newItem);
    }
}

static void ArcadeEffect_LevelUp(BattleArcade *arcade, Party *party, u8 partySize)
{
    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

        level += 3;
        if (level > 100) {
            GF_ASSERT(FALSE);
            level = 100;
        }

        u32 exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);

        Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
        Pokemon_CalcLevelAndStats(mon);
    }
}

static void ArcadeEffect_Sunny(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->weather = OVERWORLD_WEATHER_HARSH_SUN;
}

static void ArcadeEffect_Rainy(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->weather = OVERWORLD_WEATHER_RAINING;
}

static void ArcadeEffect_Sandy(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->weather = OVERWORLD_WEATHER_SANDSTORM;
}

static void ArcadeEffect_Hail(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->weather = OVERWORLD_WEATHER_SNOWING;
}

static void ArcadeEffect_Foggy(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->weather = OVERWORLD_WEATHER_FOG;
}

static void ArcadeEffect_TrickRoom(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->weather = OVERWORLD_WEATHER_TRICK_ROOM;
}

static void ArcadeEffect_SpeedUp(BattleArcade *arcade, Party *party, u8 partySize)
{
    if (arcade->rouletteSpeed < 7) {
        arcade->rouletteSpeed++;
    }
}

static void ArcadeEffect_SlowDown(BattleArcade *arcade, Party *party, u8 partySize)
{
    if (arcade->rouletteSpeed > 0) {
        arcade->rouletteSpeed--;
    }
}

static void ArcadeEffect_RandomizeCursor(BattleArcade *arcade, Party *party, u8 partySize)
{
    arcade->cursorRandomized = TRUE;
}

static void ArcadeEffect_SwapMons(BattleArcade *arcade, Party *party, u8 partySize)
{
}

static void ArcadeEffect_GetFreeBP(BattleArcade *arcade, Party *party, u8 partySize)
{
}

static void ArcadeEffect_NoBattle(BattleArcade *arcade, Party *party, u8 partySize)
{
}

static void ArcadeEffect_NoEvent(BattleArcade *arcade, Party *party, u8 partySize)
{
}

u16 BattleArcade_GetEarnedBP(BattleArcade *arcade)
{
    u8 bp;
    static const u8 sBPPerRoundSolo[ARCADE_MAX_DISTINCT_ROUNDS + 1] = { 0, 2, 2, 2, 2, 4, 4, 5, 6 };
    static const u8 sBPPerRoundWifi[ARCADE_MAX_DISTINCT_ROUNDS + 1] = { 0, 7, 8, 9, 10, 13, 14, 16, 17 };

    u16 currentRound = arcade->currentRound;

    if (arcade->challengeType == FRONTIER_CHALLENGE_SINGLE || arcade->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        if (currentRound >= ARCADE_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundSolo[ARCADE_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundSolo[currentRound];
        }
    } else {
        if (currentRound >= ARCADE_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundWifi[ARCADE_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundWifi[currentRound];
        }
    }

    if (arcade->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (arcade->currentStreak == ARCADE_STREAK_SILVER_BATTLE || arcade->currentStreak == ARCADE_STREAK_GOLD_BATTLE) {
            bp = 20;
        }
    }

    return bp;
}

void BattleArcade_SaveItemsAfterBattle(Party *battleParty, Party *arcadeParty, int battleSlot, int arcadeSlot)
{
    Pokemon *battleMon = Party_GetPokemonBySlotIndex(battleParty, battleSlot);
    u16 item = Pokemon_GetValue(battleMon, MON_DATA_HELD_ITEM, NULL);

    Pokemon *mon = Party_GetPokemonBySlotIndex(arcadeParty, arcadeSlot);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
}
