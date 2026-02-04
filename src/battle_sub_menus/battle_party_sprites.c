#include "battle_sub_menus/battle_party_sprites.h"

#include "generated/move_classes.h"
#include "generated/pokemon_types.h"

#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "battle/battle_system.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "battle_sub_menus/battle_party.h"
#include "battle_sub_menus/battle_sub_menu_cursor.h"
#include "battle_sub_menus/battle_sub_menu_sprites_defs.h"

#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon_icon.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "unk_0208C098.h"

#define SPRITE_MANAGER_CHAR_RESOURCE_CAPACITY       18
#define SPRITE_MANAGER_PLTT_RESOURCE_CAPACITY       6
#define SPRITE_MANAGER_CELL_RESOURCE_CAPACITY       6
#define SPRITE_MANAGER_ANIM_RESOURCE_CAPACITY       6
#define SPRITE_MANAGER_MULTI_CELL_RESOURCE_CAPACITY 0
#define SPRITE_MANAGER_MULTI_ANIM_RESOURCE_CAPACITY 0
#define SPRITE_MANAGER_MAX_SPRITES                  43

#define HELD_ITEMS_CHAR_RESOURCE_ID 45078
#define HELD_ITEMS_PLTT_RESOURCE_ID 45066
#define HELD_ITEMS_CELL_RESOURCE_ID 45066
#define HELD_ITEMS_ANIM_RESOURCE_ID 45066

#define PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET 45063
#define PARTY_POKEMON_PLTT_RESOURCE_ID        45063
#define PARTY_POKEMON_CELL_RESOURCE_ID        45063
#define PARTY_POKEMON_ANIM_RESOURCE_ID        45063

#define SUMMARY_STATUSES_CHAR_RESOURCE_ID 45069
#define SUMMARY_STATUSES_PLTT_RESOURCE_ID 45064
#define SUMMARY_STATUSES_CELL_RESOURCE_ID 45064
#define SUMMARY_STATUSES_ANIM_RESOURCE_ID 45064

#define POKEMON_TYPES_CHAR_RESOURCE_ID_OFFSET 45070
#define POKEMON_TYPES_PLTT_RESOURCE_ID        45065
#define POKEMON_TYPES_CELL_RESOURCE_ID        45065
#define POKEMON_TYPES_ANIM_RESOURCE_ID        45065

#define MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET 45072
#define MOVE_TYPES_PLTT_RESOURCE_ID        45065
#define MOVE_TYPES_CELL_RESOURCE_ID        45065
#define MOVE_TYPES_ANIM_RESOURCE_ID        45065

#define MOVE_CLASSES_CHAR_RESOURCE_ID 45077
#define MOVE_CLASSES_PLTT_RESOURCE_ID 45065
#define MOVE_CLASSES_CELL_RESOURCE_ID 45065
#define MOVE_CLASSES_ANIM_RESOURCE_ID 45065

#define CONTEST_STATS_CHAR_RESOURCE_ID 45079
#define CONTEST_STATS_PLTT_RESOURCE_ID 45067
#define CONTEST_STATS_CELL_RESOURCE_ID 45067
#define CONTEST_STATS_ANIM_RESOURCE_ID 45067

#define HELD_MAIL_CHAR_RESOURCE_ID 45078
#define HELD_MAIL_PLTT_RESOURCE_ID 45066
#define HELD_MAIL_CELL_RESOURCE_ID 45066
#define HELD_MAIL_ANIM_RESOURCE_ID 45066

#define CURSOR_CHAR_RESOURCE_ID 45080
#define CURSOR_PLTT_RESOURCE_ID 45068
#define CURSOR_CELL_RESOURCE_ID 45068
#define CURSOR_ANIM_RESOURCE_ID 45068

#define LEARN_MOVE_SCREEN_CURSOR_ENABLED_POSITIONS_MASK                    (1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1 | 1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2 | 1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3 | 1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4 | 1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN | 1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL)
#define LEARN_MOVE_SCREEN_WITH_CONTEST_STATS_CURSOR_ENABLED_POSITIONS_MASK (LEARN_MOVE_SCREEN_CURSOR_ENABLED_POSITIONS_MASK | 1 << BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS)

#define CONFIRM_LEARN_MOVE_SCREEN_CURSOR_ENABLED_POSITIONS_MASK                    (1 << BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM | 1 << BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL)
#define CONFIRM_LEARN_MOVE_SCREEN_WITH_CONTEST_STATS_CURSOR_ENABLED_POSITIONS_MASK (CONFIRM_LEARN_MOVE_SCREEN_CURSOR_ENABLED_POSITIONS_MASK | 1 << BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS)

#define HELD_ITEM_SPRITE_X_OFFSET 8
#define HELD_ITEM_SPRITE_Y_OFFSET 8

#define HELD_MAIL_SPRITE_X_OFFSET 16
#define HELD_MAIL_SPRITE_Y_OFFSET 8

#define SUMMARY_SCREEN_HELD_ITEM_SPRITE_X 20
#define SUMMARY_SCREEN_HELD_ITEM_SPRITE_Y 132

static void InitializeSpriteManager(BattleParty *battleParty);
static void LoadPartyPokemonSpriteData(BattleParty *battleParty);
static void LoadSummaryStatusesSpriteData(BattleParty *battleParty);
static void LoadContestStatsSpriteData(BattleParty *battleParty);
static void LoadTypesAndMovesSpriteData(BattleParty *battleParty);
static void LoadHeldMailSpriteData(BattleParty *battleParty);
static void InitializeSprites(BattleParty *battleParty);
static void InitializePartyPokemonSprites(BattleParty *battleParty);
static void DrawPokemonPartyScreenSprites(BattleParty *battleParty);
static void DrawSelectPokemonScreenSprites(BattleParty *battleParty);
static void DrawPokemonSummaryScreenSprites(BattleParty *battleParty);
static void DrawPokemonMovesScreenSprites(BattleParty *battleParty);
static void DrawMoveSummaryScreenSprites(BattleParty *battleParty);
static void DrawLearnMoveScreenSprites(BattleParty *battleParty);
static void DrawConfirmLearnMoveScreenSprites(BattleParty *battleParty);
static void DrawRestoreMovePPScreenSprites(BattleParty *battleParty);
static void DrawConfirmLearnMoveContestStatsScreenSprites(BattleParty *battleParty);
static void DrawLearnMoveContestStatsScreenSprites(BattleParty *battleParty);
static void DrawStandardMovesSprites(BattleParty *battleParty);
static void DrawContestStatMovesSprites(BattleParty *battleParty);
static void DrawContestStatSprites(BattleParty *battleParty);
static void InitializeCursor(BattleParty *battleParty);
static void CleanupCursor(BattleParty *battleParty);

static const SpriteResourcesAndPriority sBattlePartySpriteResourcesAndPriority[] = {
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_ITEMS_CHAR_RESOURCE_ID, .plttResID = HELD_ITEMS_PLTT_RESOURCE_ID, .cellResID = HELD_ITEMS_CELL_RESOURCE_ID, .animResID = HELD_ITEMS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET, .plttResID = PARTY_POKEMON_PLTT_RESOURCE_ID, .cellResID = PARTY_POKEMON_CELL_RESOURCE_ID, .animResID = PARTY_POKEMON_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + 1, .plttResID = PARTY_POKEMON_PLTT_RESOURCE_ID, .cellResID = PARTY_POKEMON_CELL_RESOURCE_ID, .animResID = PARTY_POKEMON_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + 2, .plttResID = PARTY_POKEMON_PLTT_RESOURCE_ID, .cellResID = PARTY_POKEMON_CELL_RESOURCE_ID, .animResID = PARTY_POKEMON_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + 3, .plttResID = PARTY_POKEMON_PLTT_RESOURCE_ID, .cellResID = PARTY_POKEMON_CELL_RESOURCE_ID, .animResID = PARTY_POKEMON_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + 4, .plttResID = PARTY_POKEMON_PLTT_RESOURCE_ID, .cellResID = PARTY_POKEMON_CELL_RESOURCE_ID, .animResID = PARTY_POKEMON_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + 5, .plttResID = PARTY_POKEMON_PLTT_RESOURCE_ID, .cellResID = PARTY_POKEMON_CELL_RESOURCE_ID, .animResID = PARTY_POKEMON_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = SUMMARY_STATUSES_CHAR_RESOURCE_ID, .plttResID = SUMMARY_STATUSES_PLTT_RESOURCE_ID, .cellResID = SUMMARY_STATUSES_CELL_RESOURCE_ID, .animResID = SUMMARY_STATUSES_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = SUMMARY_STATUSES_CHAR_RESOURCE_ID, .plttResID = SUMMARY_STATUSES_PLTT_RESOURCE_ID, .cellResID = SUMMARY_STATUSES_CELL_RESOURCE_ID, .animResID = SUMMARY_STATUSES_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = SUMMARY_STATUSES_CHAR_RESOURCE_ID, .plttResID = SUMMARY_STATUSES_PLTT_RESOURCE_ID, .cellResID = SUMMARY_STATUSES_CELL_RESOURCE_ID, .animResID = SUMMARY_STATUSES_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = SUMMARY_STATUSES_CHAR_RESOURCE_ID, .plttResID = SUMMARY_STATUSES_PLTT_RESOURCE_ID, .cellResID = SUMMARY_STATUSES_CELL_RESOURCE_ID, .animResID = SUMMARY_STATUSES_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = SUMMARY_STATUSES_CHAR_RESOURCE_ID, .plttResID = SUMMARY_STATUSES_PLTT_RESOURCE_ID, .cellResID = SUMMARY_STATUSES_CELL_RESOURCE_ID, .animResID = SUMMARY_STATUSES_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = SUMMARY_STATUSES_CHAR_RESOURCE_ID, .plttResID = SUMMARY_STATUSES_PLTT_RESOURCE_ID, .cellResID = SUMMARY_STATUSES_CELL_RESOURCE_ID, .animResID = SUMMARY_STATUSES_ANIM_RESOURCE_ID, .priority = 1 },
    { .charResID = POKEMON_TYPES_CHAR_RESOURCE_ID_OFFSET, .plttResID = POKEMON_TYPES_PLTT_RESOURCE_ID, .cellResID = POKEMON_TYPES_CELL_RESOURCE_ID, .animResID = POKEMON_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = POKEMON_TYPES_CHAR_RESOURCE_ID_OFFSET + 1, .plttResID = POKEMON_TYPES_PLTT_RESOURCE_ID, .cellResID = POKEMON_TYPES_CELL_RESOURCE_ID, .animResID = POKEMON_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET, .plttResID = MOVE_TYPES_PLTT_RESOURCE_ID, .cellResID = MOVE_TYPES_CELL_RESOURCE_ID, .animResID = MOVE_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + 1, .plttResID = MOVE_TYPES_PLTT_RESOURCE_ID, .cellResID = MOVE_TYPES_CELL_RESOURCE_ID, .animResID = MOVE_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + 2, .plttResID = MOVE_TYPES_PLTT_RESOURCE_ID, .cellResID = MOVE_TYPES_CELL_RESOURCE_ID, .animResID = MOVE_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + 3, .plttResID = MOVE_TYPES_PLTT_RESOURCE_ID, .cellResID = MOVE_TYPES_CELL_RESOURCE_ID, .animResID = MOVE_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + 4, .plttResID = MOVE_TYPES_PLTT_RESOURCE_ID, .cellResID = MOVE_TYPES_CELL_RESOURCE_ID, .animResID = MOVE_TYPES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = MOVE_CLASSES_CHAR_RESOURCE_ID, .plttResID = MOVE_CLASSES_PLTT_RESOURCE_ID, .cellResID = MOVE_CLASSES_CELL_RESOURCE_ID, .animResID = MOVE_CLASSES_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = CONTEST_STATS_CHAR_RESOURCE_ID, .plttResID = CONTEST_STATS_PLTT_RESOURCE_ID, .cellResID = CONTEST_STATS_CELL_RESOURCE_ID, .animResID = CONTEST_STATS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = CONTEST_STATS_CHAR_RESOURCE_ID, .plttResID = CONTEST_STATS_PLTT_RESOURCE_ID, .cellResID = CONTEST_STATS_CELL_RESOURCE_ID, .animResID = CONTEST_STATS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = CONTEST_STATS_CHAR_RESOURCE_ID, .plttResID = CONTEST_STATS_PLTT_RESOURCE_ID, .cellResID = CONTEST_STATS_CELL_RESOURCE_ID, .animResID = CONTEST_STATS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = CONTEST_STATS_CHAR_RESOURCE_ID, .plttResID = CONTEST_STATS_PLTT_RESOURCE_ID, .cellResID = CONTEST_STATS_CELL_RESOURCE_ID, .animResID = CONTEST_STATS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = CONTEST_STATS_CHAR_RESOURCE_ID, .plttResID = CONTEST_STATS_PLTT_RESOURCE_ID, .cellResID = CONTEST_STATS_CELL_RESOURCE_ID, .animResID = CONTEST_STATS_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 },
    { .charResID = HELD_MAIL_CHAR_RESOURCE_ID, .plttResID = HELD_MAIL_PLTT_RESOURCE_ID, .cellResID = HELD_MAIL_CELL_RESOURCE_ID, .animResID = HELD_MAIL_ANIM_RESOURCE_ID, .priority = 0 }
};

static const SpritePosition sPokemonPartyScreenPokemonSpritePositions[] = {
    { .x = 16, .y = 16 },
    { .x = 144, .y = 24 },
    { .x = 16, .y = 64 },
    { .x = 144, .y = 72 },
    { .x = 16, .y = 112 },
    { .x = 144, .y = 120 }
};

static const SpritePosition sPokemonPartyScreenStatusEffectSpritePositions[] = {
    { .x = 28, .y = 40 },
    { .x = 156, .y = 48 },
    { .x = 28, .y = 88 },
    { .x = 156, .y = 96 },
    { .x = 28, .y = 136 },
    { .x = 156, .y = 144 }
};

static const SpritePosition sSelectPokemonScreenPokemonSpritePosition = {
    .x = 128,
    .y = 72
};

static const SpritePosition sPokemonSummaryScreenPokemonSpritePosition = {
    .x = 24,
    .y = 12
};

static const SpritePosition sPokemonSummaryScreenStatusEffectSpritePosition = {
    .x = 198,
    .y = 20
};

static const SpritePosition sPokemonSummaryScreenPokemonTypeSpritePositions[] = {
    { .x = 130, .y = 16 },
    { .x = 164, .y = 16 }
};

static const SpritePosition sPokemonMovesScreenMoveTypeSpritePositions[] = {
    { .x = 24, .y = 80 },
    { .x = 152, .y = 80 },
    { .x = 24, .y = 128 },
    { .x = 152, .y = 128 }
};

static const SpritePosition sPokemonMovesScreenPokemonSpritePosition = {
    .x = 24,
    .y = 12
};

static const SpritePosition sPokemonMovesScreenStatusEffectSpritePosition = {
    .x = 198,
    .y = 20
};

static const SpritePosition sPokemonMovesScreenPokemonTypeSpritePositions[] = {
    { .x = 130, .y = 16 },
    { .x = 164, .y = 16 }
};

static const SpritePosition sMoveSummaryScreenPokemonSpritePosition = {
    .x = 24,
    .y = 12
};

static const SpritePosition sMoveSummaryScreenStatusEffectSpritePosition = {
    .x = 198,
    .y = 20
};

static const SpritePosition sMoveSummaryScreenPokemonTypeSpritePositions[] = {
    { .x = 130, .y = 16 },
    { .x = 164, .y = 16 }
};

static const SpritePosition sMoveSummaryScreenMoveTypeSpritePosition = {
    .x = 136,
    .y = 48
};

static const SpritePosition sMoveSummaryScreenMoveClassSpritePosition = {
    .x = 24,
    .y = 88
};

static const SpritePosition sLearnMoveScreenPokemonSpritePosition = {
    .x = 24,
    .y = 12
};

static const SpritePosition sLearnMoveScreenPokemonTypeSpritePositions[] = {
    { .x = 130, .y = 16 },
    { .x = 164, .y = 16 }
};

static const SpritePosition sLearnMoveScreenMoveTypeSpritePositions[] = {
    { .x = 24, .y = 80 },
    { .x = 152, .y = 80 },
    { .x = 24, .y = 128 },
    { .x = 152, .y = 128 },
    { .x = 88, .y = 176 }
};

static const SpritePosition sConfirmLearnMoveScreenPokemonSpritePosition = {
    .x = 24,
    .y = 12
};

static const SpritePosition sConfirmLearnMoveScreenPokemonTypeSpritePositions[] = {
    { .x = 130, .y = 16 },
    { .x = 164, .y = 16 }
};

static const SpritePosition sConfirmLearnMoveScreenMoveTypeSpritePosition = {
    .x = 136,
    .y = 48
};

static const SpritePosition sConfirmLearnMoveScreenMoveClassSpritePosition = {
    .x = 24,
    .y = 88
};

static const SpritePosition sConfirmLearnMoveContestStatsScreenMoveTypeSpritePosition = {
    .x = 136,
    .y = 72
};

void BattlePartySprites_InitializeSprites(BattleParty *battleParty)
{
    InitializeSpriteManager(battleParty);
    LoadPartyPokemonSpriteData(battleParty);
    LoadSummaryStatusesSpriteData(battleParty);
    LoadTypesAndMovesSpriteData(battleParty);
    LoadHeldMailSpriteData(battleParty);
    LoadContestStatsSpriteData(battleParty);
    InitializeSprites(battleParty);
    InitializeCursor(battleParty);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void InitializeSpriteManager(BattleParty *battleParty)
{
    SpriteResourceCapacities capacities = { .asArray[SPRITE_RESOURCE_CHAR] = SPRITE_MANAGER_CHAR_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_PLTT] = SPRITE_MANAGER_PLTT_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_CELL] = SPRITE_MANAGER_CELL_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_ANIM] = SPRITE_MANAGER_ANIM_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_MULTI_CELL] = SPRITE_MANAGER_MULTI_CELL_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_MULTI_ANIM] = SPRITE_MANAGER_MULTI_ANIM_RESOURCE_CAPACITY };
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    battleParty->spriteManager = SpriteManager_New(spriteSystem);

    SpriteSystem_InitSprites(spriteSystem, battleParty->spriteManager, SPRITE_MANAGER_MAX_SPRITES);
    SpriteSystem_InitManagerWithCapacities(spriteSystem, battleParty->spriteManager, &capacities);
}

static void LoadPartyPokemonSpriteData(BattleParty *battleParty)
{
    NARC *narc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, battleParty->context->heapID);
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(battleParty->palette, PLTTBUF_SUB_OBJ, spriteSystem, battleParty->spriteManager, narc, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, PARTY_POKEMON_PLTT_RESOURCE_ID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, PokeIcon32KCellsFileIndex(), FALSE, PARTY_POKEMON_CELL_RESOURCE_ID);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, PokeIcon32KAnimationFileIndex(), FALSE, PARTY_POKEMON_ANIM_RESOURCE_ID);

    for (u32 i = 0; i < MAX_PARTY_SIZE; i++) {
        if (battleParty->partyPokemon[i].species != SPECIES_NONE) {
            SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, Pokemon_IconSpriteIndex(battleParty->partyPokemon[i].mon), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + i);
        } else {
            SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, PokeIconSpriteIndex(SPECIES_NONE, FALSE, 0), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, PARTY_POKEMON_CHAR_RESOURCE_ID_OFFSET + i);
        }
    }

    NARC_dtor(narc);
}

static void LoadSummaryStatusesSpriteData(BattleParty *battleParty)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PST_GRA, battleParty->context->heapID);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(battleParty->palette, PLTTBUF_SUB_OBJ, spriteSystem, battleParty->spriteManager, narc, PokemonSummaryScreen_StatusIconPltt(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, SUMMARY_STATUSES_PLTT_RESOURCE_ID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, PokemonSummaryScreen_StatusIconCell(), FALSE, SUMMARY_STATUSES_CELL_RESOURCE_ID);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, PokemonSummaryScreen_StatusIconAnim(), FALSE, SUMMARY_STATUSES_ANIM_RESOURCE_ID);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, PokemonSummaryScreen_StatusIconChar(), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, SUMMARY_STATUSES_CHAR_RESOURCE_ID);
    NARC_dtor(narc);
}

static void LoadTypesAndMovesSpriteData(BattleParty *battleParty)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    TypeIcon_LoadPltt(battleParty->palette, PLTTBUF_SUB_OBJ, spriteSystem, battleParty->spriteManager, NNS_G2D_VRAM_TYPE_2DSUB, MOVE_TYPES_PLTT_RESOURCE_ID);
    TypeIcon_LoadAnim(spriteSystem, battleParty->spriteManager, MOVE_TYPES_CELL_RESOURCE_ID, MOVE_TYPES_ANIM_RESOURCE_ID);

    for (u32 i = POKEMON_TYPES_CHAR_RESOURCE_ID_OFFSET; i <= MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + MOVE_TO_LEARN_SLOT; i++) {
        TypeIcon_LoadChar(spriteSystem, battleParty->spriteManager, NNS_G2D_VRAM_TYPE_2DSUB, TYPE_NORMAL, i);
    }

    CategoryIcon_LoadChar(spriteSystem, battleParty->spriteManager, NNS_G2D_VRAM_TYPE_2DSUB, CLASS_PHYSICAL, MOVE_CLASSES_CHAR_RESOURCE_ID);
}

static void LoadHeldMailSpriteData(BattleParty *battleParty)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, battleParty->context->heapID);
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(battleParty->palette, PLTTBUF_SUB_OBJ, spriteSystem, battleParty->spriteManager, narc, sub_02081934(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, HELD_MAIL_PLTT_RESOURCE_ID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, sub_02081938(), FALSE, HELD_MAIL_CELL_RESOURCE_ID);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, sub_0208193C(), FALSE, HELD_MAIL_ANIM_RESOURCE_ID);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, battleParty->spriteManager, narc, sub_02081930(), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, HELD_MAIL_CHAR_RESOURCE_ID);
    NARC_dtor(narc);
}

static void LoadContestStatsSpriteData(BattleParty *battleParty)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    SpriteSystem_LoadPaletteBuffer(battleParty->palette, PLTTBUF_SUB_OBJ, spriteSystem, battleParty->spriteManager, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 27, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, CONTEST_STATS_PLTT_RESOURCE_ID);
    SpriteSystem_LoadCellResObj(spriteSystem, battleParty->spriteManager, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 25, FALSE, CONTEST_STATS_CELL_RESOURCE_ID);
    SpriteSystem_LoadAnimResObj(spriteSystem, battleParty->spriteManager, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 24, FALSE, CONTEST_STATS_ANIM_RESOURCE_ID);
    SpriteSystem_LoadCharResObj(spriteSystem, battleParty->spriteManager, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 26, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, CONTEST_STATS_CHAR_RESOURCE_ID);
}

static ManagedSprite *CreateSprite(BattleParty *battleParty, u32 spriteIndex)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);
    SpriteTemplate template;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animIdx = 0;
    template.priority = sBattlePartySpriteResourcesAndPriority[spriteIndex].priority;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    template.resources[SPRITE_RESOURCE_CHAR] = sBattlePartySpriteResourcesAndPriority[spriteIndex].charResID;
    template.resources[SPRITE_RESOURCE_PLTT] = sBattlePartySpriteResourcesAndPriority[spriteIndex].plttResID;
    template.resources[SPRITE_RESOURCE_CELL] = sBattlePartySpriteResourcesAndPriority[spriteIndex].cellResID;
    template.resources[SPRITE_RESOURCE_ANIM] = sBattlePartySpriteResourcesAndPriority[spriteIndex].animResID;
    template.bgPriority = 1;
    template.vramTransfer = FALSE;

    return SpriteSystem_NewSprite(spriteSystem, battleParty->spriteManager, &template);
}

static void InitializeSprites(BattleParty *battleParty)
{
    for (u32 i = 0; i < NUM_BATTLE_PARTY_SPRITES; i++) {
        battleParty->sprites[i] = CreateSprite(battleParty, i);
    }

    InitializePartyPokemonSprites(battleParty);
}

void BattlePartySprites_CleanupSprites(BattleParty *battleParty)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    for (u32 i = 0; i < NUM_BATTLE_PARTY_SPRITES; i++) {
        Sprite_DeleteAndFreeResources(battleParty->sprites[i]);
    }

    CleanupCursor(battleParty);
    SpriteSystem_FreeResourcesAndManager(spriteSystem, battleParty->spriteManager);
}

static void DrawSprite(ManagedSprite *sprite, const int x, const int y)
{
    ManagedSprite_SetDrawFlag(sprite, TRUE);
    ManagedSprite_SetPositionXY(sprite, x, y);
}

static void InitializePartyPokemonSprites(BattleParty *battleParty)
{
    for (s32 i = 0; i < MAX_PARTY_SIZE; i++) {
        if (battleParty->partyPokemon[i].species == SPECIES_NONE) {
            continue;
        }

        ManagedSprite_SetExplicitPalette(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + i], PokeIconPaletteIndex(battleParty->partyPokemon[i].species, battleParty->partyPokemon[i].form, battleParty->partyPokemon[i].isEgg));
    }
}

static void InitializeTypeIcon(BattleParty *battleParty, ManagedSprite *sprite, u32 resourceID, u8 type)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    SpriteSystem_ReplaceCharResObj(spriteSystem, battleParty->spriteManager, TypeIcon_GetNARC(), TypeIcon_GetChar(type), TRUE, resourceID);
    ManagedSprite_SetExplicitPalette(sprite, TypeIcon_GetPltt(type) + 4);
}

static void InitializeMoveClassIcon(BattleParty *battleParty, ManagedSprite *sprite, enum MoveClass moveClass)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);

    SpriteSystem_ReplaceCharResObj(spriteSystem, battleParty->spriteManager, CategoryIcon_GetNARC(), CategoryIcon_GetChar(moveClass), TRUE, MOVE_CLASSES_CHAR_RESOURCE_ID);
    ManagedSprite_SetExplicitPalette(sprite, CategoryIcon_GetPltt(moveClass) + 4);
}

static void DrawSummaryStatusIcon(enum SummaryStatus summaryStatus, ManagedSprite *sprite, const int x, const int y)
{
    if (summaryStatus == SUMMARY_CONDITION_NONE) {
        return;
    }

    ManagedSprite_SetAnim(sprite, summaryStatus);
    DrawSprite(sprite, x, y);
}

static void DrawSelectedPokemonTypeIcons(BattleParty *battleParty, BattlePartyPokemon *pokemon, const SpritePosition *coordinates)
{
    InitializeTypeIcon(battleParty, battleParty->sprites[SELECTED_POKEMON_TYPE_1_SPRITE_INDEX], POKEMON_TYPES_CHAR_RESOURCE_ID_OFFSET, pokemon->type_1);
    DrawSprite(battleParty->sprites[SELECTED_POKEMON_TYPE_1_SPRITE_INDEX], coordinates[0].x, coordinates[0].y);

    if (pokemon->type_1 != pokemon->type_2) {
        InitializeTypeIcon(battleParty, battleParty->sprites[SELECTED_POKEMON_TYPE_2_SPRITE_INDEX], POKEMON_TYPES_CHAR_RESOURCE_ID_OFFSET + 1, pokemon->type_2);
        DrawSprite(battleParty->sprites[SELECTED_POKEMON_TYPE_2_SPRITE_INDEX], coordinates[1].x, coordinates[1].y);
    }
}

static void DrawHeldItem(u16 item, ManagedSprite *sprite, const int x, const int y)
{
    if (item == ITEM_NONE) {
        return;
    }

    if (Item_IsMail(item) == TRUE) {
        ManagedSprite_SetAnim(sprite, 1);
    } else {
        ManagedSprite_SetAnim(sprite, 0);
    }

    DrawSprite(sprite, x, y);
}

static void DrawHeldMail(u8 mail, ManagedSprite *sprite, const int x, const int y)
{
    if (mail == ITEM_NONE) {
        return;
    }

    ManagedSprite_SetAnim(sprite, 2);
    DrawSprite(sprite, x, y);
}

void BattlePartySprites_SetupScreen(BattleParty *battleParty, enum BattlePartyScreen screen)
{
    for (u32 i = 0; i < NUM_BATTLE_PARTY_SPRITES; i++) {
        ManagedSprite_SetDrawFlag(battleParty->sprites[i], FALSE);
    }

    switch (screen) {
    case BATTLE_PARTY_SCREEN_POKEMON_PARTY:
        DrawPokemonPartyScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_SELECT_POKEMON:
        DrawSelectPokemonScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_SUMMARY:
        DrawPokemonSummaryScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_MOVES:
        DrawPokemonMovesScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_MOVE_SUMMARY:
        DrawMoveSummaryScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP:
        DrawRestoreMovePPScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_LEARN_MOVE:
        DrawLearnMoveScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE:
        DrawConfirmLearnMoveScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS:
        DrawLearnMoveContestStatsScreenSprites(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS:
        DrawConfirmLearnMoveContestStatsScreenSprites(battleParty);
        break;
    }
}

static void DrawPokemonPartyScreenSprites(BattleParty *battleParty)
{
    for (s32 i = 0; i < MAX_PARTY_SIZE; i++) {
        if (battleParty->partyPokemon[i].species == SPECIES_NONE) {
            continue;
        }

        DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + i], sPokemonPartyScreenPokemonSpritePositions[i].x, sPokemonPartyScreenPokemonSpritePositions[i].y);
        DrawSummaryStatusIcon(battleParty->partyPokemon[i].summaryStatus, battleParty->sprites[PARTY_POKEMON_SUMMARY_STATUSES_SPRITES_OFFSET + i], sPokemonPartyScreenStatusEffectSpritePositions[i].x, sPokemonPartyScreenStatusEffectSpritePositions[i].y);
        DrawHeldItem(battleParty->partyPokemon[i].heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + i], sPokemonPartyScreenPokemonSpritePositions[i].x + HELD_ITEM_SPRITE_X_OFFSET, sPokemonPartyScreenPokemonSpritePositions[i].y + HELD_ITEM_SPRITE_Y_OFFSET);
        DrawHeldMail(battleParty->partyPokemon[i].mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + i], sPokemonPartyScreenPokemonSpritePositions[i].x + HELD_MAIL_SPRITE_X_OFFSET, sPokemonPartyScreenPokemonSpritePositions[i].y + HELD_MAIL_SPRITE_Y_OFFSET);
    }
}

static void DrawSelectPokemonScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sSelectPokemonScreenPokemonSpritePosition.x, sSelectPokemonScreenPokemonSpritePosition.y);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sSelectPokemonScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sSelectPokemonScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sSelectPokemonScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sSelectPokemonScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
}

static void DrawPokemonSummaryScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonSummaryScreenPokemonSpritePosition.x, sPokemonSummaryScreenPokemonSpritePosition.y);
    DrawSummaryStatusIcon(pokemon->summaryStatus, battleParty->sprites[PARTY_POKEMON_SUMMARY_STATUSES_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonSummaryScreenStatusEffectSpritePosition.x, sPokemonSummaryScreenStatusEffectSpritePosition.y);
    DrawSelectedPokemonTypeIcons(battleParty, pokemon, sPokemonSummaryScreenPokemonTypeSpritePositions);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonSummaryScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sPokemonSummaryScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonSummaryScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sPokemonSummaryScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[SELECTED_POKEMON_HELD_ITEMS_SPRITE_INDEX], SUMMARY_SCREEN_HELD_ITEM_SPRITE_X, SUMMARY_SCREEN_HELD_ITEM_SPRITE_Y);
}

static void DrawPokemonMovesScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonMovesScreenPokemonSpritePosition.x, sPokemonMovesScreenPokemonSpritePosition.y);
    DrawSummaryStatusIcon(pokemon->summaryStatus, battleParty->sprites[PARTY_POKEMON_SUMMARY_STATUSES_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonMovesScreenStatusEffectSpritePosition.x, sPokemonMovesScreenStatusEffectSpritePosition.y);
    DrawSelectedPokemonTypeIcons(battleParty, pokemon, sPokemonMovesScreenPokemonTypeSpritePositions);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonMovesScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sPokemonMovesScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sPokemonMovesScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sPokemonMovesScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);

    for (u32 i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (pokemon->moves[i].move == MOVE_NONE) {
            continue;
        }

        InitializeTypeIcon(battleParty, battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + i], MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + i, pokemon->moves[i].type);
        DrawSprite(battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + i], sPokemonMovesScreenMoveTypeSpritePositions[i].x, sPokemonMovesScreenMoveTypeSpritePositions[i].y);
    }
}

static void DrawMoveSummaryScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sMoveSummaryScreenPokemonSpritePosition.x, sMoveSummaryScreenPokemonSpritePosition.y);
    DrawSummaryStatusIcon(pokemon->summaryStatus, battleParty->sprites[PARTY_POKEMON_SUMMARY_STATUSES_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sMoveSummaryScreenStatusEffectSpritePosition.x, sMoveSummaryScreenStatusEffectSpritePosition.y);
    DrawSelectedPokemonTypeIcons(battleParty, pokemon, sMoveSummaryScreenPokemonTypeSpritePositions);
    DrawSprite(battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + battleParty->context->selectedMoveSlot], sMoveSummaryScreenMoveTypeSpritePosition.x, sMoveSummaryScreenMoveTypeSpritePosition.y);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sMoveSummaryScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sMoveSummaryScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sMoveSummaryScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sMoveSummaryScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
    InitializeMoveClassIcon(battleParty, battleParty->sprites[SELECTED_MOVE_CLASSES_SPRITE_INDEX], pokemon->moves[battleParty->context->selectedMoveSlot].class);
    DrawSprite(battleParty->sprites[SELECTED_MOVE_CLASSES_SPRITE_INDEX], sMoveSummaryScreenMoveClassSpritePosition.x, sMoveSummaryScreenMoveClassSpritePosition.y);
}

static void DrawLearnMoveScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sLearnMoveScreenPokemonSpritePosition.x, sLearnMoveScreenPokemonSpritePosition.y);
    DrawSelectedPokemonTypeIcons(battleParty, pokemon, sLearnMoveScreenPokemonTypeSpritePositions);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sLearnMoveScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sLearnMoveScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sLearnMoveScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sLearnMoveScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
    BattlePartySprites_DrawMovesSprites(battleParty);
}

static void DrawConfirmLearnMoveScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x, sConfirmLearnMoveScreenPokemonSpritePosition.y);
    DrawSelectedPokemonTypeIcons(battleParty, pokemon, sConfirmLearnMoveScreenPokemonTypeSpritePositions);
    DrawSprite(battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + battleParty->context->selectedMoveSlot], sConfirmLearnMoveScreenMoveTypeSpritePosition.x, sConfirmLearnMoveScreenMoveTypeSpritePosition.y);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sConfirmLearnMoveScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sConfirmLearnMoveScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);

    if (battleParty->context->selectedMoveSlot < LEARNED_MOVES_MAX) {
        InitializeMoveClassIcon(battleParty, battleParty->sprites[SELECTED_MOVE_CLASSES_SPRITE_INDEX], pokemon->moves[battleParty->context->selectedMoveSlot].class);
    } else {
        InitializeMoveClassIcon(battleParty, battleParty->sprites[SELECTED_MOVE_CLASSES_SPRITE_INDEX], MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_CLASS));
    }

    DrawSprite(battleParty->sprites[SELECTED_MOVE_CLASSES_SPRITE_INDEX], sConfirmLearnMoveScreenMoveClassSpritePosition.x, sConfirmLearnMoveScreenMoveClassSpritePosition.y);
}

static void DrawRestoreMovePPScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sLearnMoveScreenPokemonSpritePosition.x, sLearnMoveScreenPokemonSpritePosition.y);
    DrawSelectedPokemonTypeIcons(battleParty, pokemon, sLearnMoveScreenPokemonTypeSpritePositions);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sLearnMoveScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sLearnMoveScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sLearnMoveScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sLearnMoveScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
    BattlePartySprites_DrawMovesSprites(battleParty);
}

static void DrawConfirmLearnMoveContestStatsScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x, sConfirmLearnMoveScreenPokemonSpritePosition.y);
    DrawSprite(battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + battleParty->context->selectedMoveSlot], sConfirmLearnMoveContestStatsScreenMoveTypeSpritePosition.x, sConfirmLearnMoveContestStatsScreenMoveTypeSpritePosition.y);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sConfirmLearnMoveScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sConfirmLearnMoveScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
    DrawContestStatSprites(battleParty);
}

static void DrawLearnMoveContestStatsScreenSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    DrawSprite(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x, sConfirmLearnMoveScreenPokemonSpritePosition.y);
    DrawHeldItem(pokemon->heldItem, battleParty->sprites[PARTY_POKEMON_HELD_ITEMS_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x + HELD_ITEM_SPRITE_X_OFFSET, sConfirmLearnMoveScreenPokemonSpritePosition.y + HELD_ITEM_SPRITE_Y_OFFSET);
    DrawHeldMail(pokemon->mail, battleParty->sprites[PARTY_POKEMON_HELD_MAIL_SPRITES_OFFSET + battleParty->context->selectedPartyIndex], sConfirmLearnMoveScreenPokemonSpritePosition.x + HELD_MAIL_SPRITE_X_OFFSET, sConfirmLearnMoveScreenPokemonSpritePosition.y + HELD_MAIL_SPRITE_Y_OFFSET);
    BattlePartySprites_DrawMovesSprites(battleParty);
    DrawContestStatSprites(battleParty);
}

static void DrawStandardMovesSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (pokemon->moves[i].move == MOVE_NONE) {
            continue;
        }

        InitializeTypeIcon(battleParty, battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + i], MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + i, pokemon->moves[i].type);
        DrawSprite(battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + i], sLearnMoveScreenMoveTypeSpritePositions[i].x, sLearnMoveScreenMoveTypeSpritePositions[i].y);
    }

    if (battleParty->context->moveToLearn != MOVE_NONE) {
        InitializeTypeIcon(battleParty, battleParty->sprites[MOVE_TO_LEARN_TYPE_SPRITE_INDEX], MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + MOVE_TO_LEARN_SLOT, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_TYPE));
        DrawSprite(battleParty->sprites[MOVE_TO_LEARN_TYPE_SPRITE_INDEX], sLearnMoveScreenMoveTypeSpritePositions[MOVE_TO_LEARN_SLOT].x, sLearnMoveScreenMoveTypeSpritePositions[MOVE_TO_LEARN_SLOT].y);
    }
}

static void DrawContestStatMovesSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (pokemon->moves[i].move == MOVE_NONE) {
            continue;
        }
        InitializeTypeIcon(battleParty, battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + i], MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + i, MoveTable_LoadParam(pokemon->moves[i].move, MOVEATTRIBUTE_CONTEST_TYPE) + NUM_POKEMON_TYPES);
        DrawSprite(battleParty->sprites[MOVE_TYPES_SPRITES_OFFSET + i], sLearnMoveScreenMoveTypeSpritePositions[i].x, sLearnMoveScreenMoveTypeSpritePositions[i].y);
    }

    if (battleParty->context->moveToLearn != MOVE_NONE) {
        InitializeTypeIcon(battleParty, battleParty->sprites[MOVE_TO_LEARN_TYPE_SPRITE_INDEX], MOVE_TYPES_CHAR_RESOURCE_ID_OFFSET + MOVE_TO_LEARN_SLOT, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_CONTEST_TYPE) + NUM_POKEMON_TYPES);
        DrawSprite(battleParty->sprites[MOVE_TO_LEARN_TYPE_SPRITE_INDEX], sLearnMoveScreenMoveTypeSpritePositions[MOVE_TO_LEARN_SLOT].x, sLearnMoveScreenMoveTypeSpritePositions[MOVE_TO_LEARN_SLOT].y);
    }
}

void BattlePartySprites_DrawMovesSprites(BattleParty *battleParty)
{
    if (battleParty->displayingContestStats == FALSE) {
        DrawStandardMovesSprites(battleParty);
    } else {
        DrawContestStatMovesSprites(battleParty);
    }
}

static void SetPartyPokemonSpriteAnimation(ManagedSprite *sprite, u8 animationID)
{
    if (ManagedSprite_GetActiveAnim(sprite) == animationID) {
        return;
    }

    ManagedSprite_SetAnimationFrame(sprite, 0);
    ManagedSprite_SetAnim(sprite, animationID);
}

static u8 GetPartyPokemonSpriteAnimation(BattlePartyPokemon *battleParty)
{
    if (battleParty->curHP == 0) {
        return 0;
    }

    if ((battleParty->summaryStatus != SUMMARY_CONDITION_NONE) && (battleParty->summaryStatus != SUMMARY_CONDITION_FAINTED)) {
        return 5;
    }

    switch (HealthBar_Color(battleParty->curHP, battleParty->maxHP, HEALTH_BAR_MAX_PIXELS)) {
    case BARCOLOR_MAX:
        return 1;
    case BARCOLOR_GREEN:
        return 2;
    case BARCOLOR_YELLOW:
        return 3;
    case BARCOLOR_RED:
        return 4;
    }

    return 0;
}

void BattlePartySprites_TickPartyPokemonSpriteAnimations(BattleParty *battleParty)
{
    for (u16 i = 0; i < Party_GetCurrentCount(battleParty->context->party); i++) {
        if (battleParty->partyPokemon[i].species == SPECIES_NONE) {
            continue;
        }

        u16 animationID = GetPartyPokemonSpriteAnimation(&battleParty->partyPokemon[i]);

        SetPartyPokemonSpriteAnimation(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + i], animationID);
        ManagedSprite_TickNFrames(battleParty->sprites[PARTY_POKEMON_SPRITES_OFFSET + i], FX32_ONE);
    }
}

static s16 CalculateContestStatSpriteCoord(u32 statValue, s16 endCoord, s16 startCoord)
{
    u32 finalCoord;

    statValue += 44;

    if (startCoord > endCoord) {
        finalCoord = ((startCoord - endCoord) * statValue) << 16;
        finalCoord = (finalCoord / 300) >> 16;

        return startCoord + (s16)finalCoord * -1;
    }

    finalCoord = ((endCoord - startCoord) * statValue) << 16;
    finalCoord = (finalCoord / 300) >> 16;

    return startCoord + (s16)finalCoord;
}

static void DrawContestStatSprites(BattleParty *battleParty)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    SetPartyPokemonSpriteAnimation(battleParty->sprites[COOL_STAT_SPRITE_INDEX], 0);
    SetPartyPokemonSpriteAnimation(battleParty->sprites[BEAUTY_STAT_SPRITE_INDEX], 1);
    SetPartyPokemonSpriteAnimation(battleParty->sprites[CUTE_STAT_SPRITE_INDEX], 3);
    SetPartyPokemonSpriteAnimation(battleParty->sprites[SMART_STAT_SPRITE_INDEX], 4);
    SetPartyPokemonSpriteAnimation(battleParty->sprites[TOUGH_STAT_SPRITE_INDEX], 2);

    DrawSprite(battleParty->sprites[COOL_STAT_SPRITE_INDEX], CalculateContestStatSpriteCoord(pokemon->cool, 144, 144), CalculateContestStatSpriteCoord(pokemon->cool, 2, 24));
    DrawSprite(battleParty->sprites[BEAUTY_STAT_SPRITE_INDEX], CalculateContestStatSpriteCoord(pokemon->beauty, 164, 144), CalculateContestStatSpriteCoord(pokemon->beauty, 16, 24));
    DrawSprite(battleParty->sprites[CUTE_STAT_SPRITE_INDEX], CalculateContestStatSpriteCoord(pokemon->cute, 156, 144), CalculateContestStatSpriteCoord(pokemon->cute, 41, 24));
    DrawSprite(battleParty->sprites[SMART_STAT_SPRITE_INDEX], CalculateContestStatSpriteCoord(pokemon->smart, 131, 143), CalculateContestStatSpriteCoord(pokemon->smart, 41, 24));
    DrawSprite(battleParty->sprites[TOUGH_STAT_SPRITE_INDEX], CalculateContestStatSpriteCoord(pokemon->tough, 123, 143), CalculateContestStatSpriteCoord(pokemon->tough, 16, 24));
}

static void InitializeCursor(BattleParty *battleParty)
{
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleParty->context->battleSys);
    UnkStruct_ov16_0226DC24 *cursorSprites;

    ov16_0226DB7C(spriteSystem, battleParty->spriteManager, battleParty->palette, battleParty->context->heapID, CURSOR_CHAR_RESOURCE_ID, CURSOR_PLTT_RESOURCE_ID, CURSOR_CELL_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID);
    cursorSprites = ov16_0226DC24(spriteSystem, battleParty->spriteManager, battleParty->context->heapID, CURSOR_CHAR_RESOURCE_ID, CURSOR_PLTT_RESOURCE_ID, CURSOR_CELL_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID, 0, 1);

    SetBattleSubMenuCursorSprites(battleParty->cursor, cursorSprites);
}

static void CleanupCursor(BattleParty *battleParty)
{
    ov16_0226DCA8(GetBattleSubMenuCursorSprites(battleParty->cursor));
    ov16_0226DBFC(battleParty->spriteManager, CURSOR_CHAR_RESOURCE_ID, CURSOR_PLTT_RESOURCE_ID, CURSOR_CELL_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID);
}

static const GridMenuCursorPosition sPokemonPartyScreenCursorPositions[] = {
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_1] = {
        .xCoord1 = 8,
        .yCoord1 = 8,
        .xCoord2 = 120,
        .yCoord2 = 40,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_CANCEL,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_3,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_CANCEL,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_2,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_2] = {
        .xCoord1 = 136,
        .yCoord1 = 16,
        .xCoord2 = 248,
        .yCoord2 = 48,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_5,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_4,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_1,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_3,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_3] = {
        .xCoord1 = 8,
        .yCoord1 = 56,
        .xCoord2 = 120,
        .yCoord2 = 88,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_1,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_5,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_2,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_4,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_4] = {
        .xCoord1 = 136,
        .yCoord1 = 64,
        .xCoord2 = 248,
        .yCoord2 = 96,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_2,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_6,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_3,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_5,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_5] = {
        .xCoord1 = 8,
        .yCoord1 = 104,
        .xCoord2 = 120,
        .yCoord2 = 136,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_3,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_2,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_4,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_6,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_6] = {
        .xCoord1 = 136,
        .yCoord1 = 112,
        .xCoord2 = 248,
        .yCoord2 = 144,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_4,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_5,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_6,
        .downIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_1,
        .leftIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_6,
        .rightIndex = BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_1,
    }
};

static const GridMenuCursorPosition sSelectPokemonScreenCursorPositions[] = {
    [BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT] = {
        .xCoord1 = 16,
        .yCoord1 = 16,
        .xCoord2 = 240,
        .yCoord2 = 136,
        .upIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT,
        .downIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SUMMARY,
        .leftIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT,
        .rightIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT,
    },
    [BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SUMMARY] = {
        .xCoord1 = 8,
        .yCoord1 = 160,
        .xCoord2 = 96,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT,
        .downIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SUMMARY,
        .leftIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SUMMARY,
        .rightIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES,
    },
    [BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES] = {
        .xCoord1 = 112,
        .yCoord1 = 160,
        .xCoord2 = 200,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT,
        .downIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES,
        .leftIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SUMMARY,
        .rightIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT,
        .downIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES,
        .rightIndex = BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition sPokemonSummaryScreenCursorPositions[] = {
    [BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON] = {
        .xCoord1 = 8,
        .yCoord1 = 160,
        .xCoord2 = 32,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON,
        .downIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON,
        .leftIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON,
        .rightIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON] = {
        .xCoord1 = 48,
        .yCoord1 = 160,
        .xCoord2 = 72,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON,
        .downIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON,
        .leftIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON,
        .rightIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES] = {
        .xCoord1 = 104,
        .yCoord1 = 160,
        .xCoord2 = 192,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES,
        .downIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES,
        .leftIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON,
        .rightIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL,
        .downIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES,
        .rightIndex = BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition sPokemonMovesScreenCursorPositions[] = {
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_1] = {
        .xCoord1 = 8,
        .yCoord1 = 56,
        .xCoord2 = 120,
        .yCoord2 = 88,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_2] = {
        .xCoord1 = 136,
        .yCoord1 = 56,
        .xCoord2 = 248,
        .yCoord2 = 88,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3] = {
        .xCoord1 = 8,
        .yCoord1 = 104,
        .xCoord2 = 120,
        .yCoord2 = 136,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4] = {
        .xCoord1 = 136,
        .yCoord1 = 104,
        .xCoord2 = 248,
        .yCoord2 = 136,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_POKEMON_MOVES_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON] = {
        .xCoord1 = 8,
        .yCoord1 = 160,
        .xCoord2 = 32,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
        .downIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON] = {
        .xCoord1 = 48,
        .yCoord1 = 160,
        .xCoord2 = 72,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
        .downIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_SUMMARY,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_SUMMARY] = {
        .xCoord1 = 104,
        .yCoord1 = 160,
        .xCoord2 = 192,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
        .downIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_SUMMARY,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
        .downIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_SUMMARY,
        .rightIndex = BATTLE_POKEMON_MOVES_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition sMoveSummaryScreenCursorPositions[] = {
    [BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1] = {
        .xCoord1 = 92,
        .yCoord1 = 157,
        .xCoord2 = 124,
        .yCoord2 = 165,
        .upIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3,
        .leftIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2] = {
        .xCoord1 = 132,
        .yCoord1 = 157,
        .xCoord2 = 164,
        .yCoord2 = 165,
        .upIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4,
        .leftIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3] = {
        .xCoord1 = 92,
        .yCoord1 = 173,
        .xCoord2 = 124,
        .yCoord2 = 181,
        .upIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3,
        .leftIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4] = {
        .xCoord1 = 132,
        .yCoord1 = 173,
        .xCoord2 = 164,
        .yCoord2 = 181,
        .upIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4,
        .leftIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
        .downIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4,
        .rightIndex = BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition sLearnMoveScreenCursorPositions[] = {
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1] = {
        .xCoord1 = 8,
        .yCoord1 = 56,
        .xCoord2 = 120,
        .yCoord2 = 88,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
        .downIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2] = {
        .xCoord1 = 136,
        .yCoord1 = 56,
        .xCoord2 = 248,
        .yCoord2 = 88,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
        .downIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3] = {
        .xCoord1 = 8,
        .yCoord1 = 104,
        .xCoord2 = 120,
        .yCoord2 = 136,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4] = {
        .xCoord1 = 136,
        .yCoord1 = 104,
        .xCoord2 = 248,
        .yCoord2 = 136,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN] = {
        .xCoord1 = 72,
        .yCoord1 = 152,
        .xCoord2 = 184,
        .yCoord2 = 184,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3,
        .downIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS] = {
        .xCoord1 = 192,
        .yCoord1 = 8,
        .xCoord2 = 248,
        .yCoord2 = 24,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
        .downIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
    },
    [BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4,
        .downIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN,
        .rightIndex = BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition sConfirmLearnMoveScreenCursorPositions[] = {
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM] = {
        .xCoord1 = 8,
        .yCoord1 = 160,
        .xCoord2 = 200,
        .yCoord2 = 184,
        .upIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
        .downIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM,
        .leftIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM,
        .rightIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS] = {
        .xCoord1 = 192,
        .yCoord1 = 8,
        .xCoord2 = 248,
        .yCoord2 = 24,
        .upIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
        .downIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM,
        .rightIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
        .downIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM,
        .rightIndex = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition sRestoreMovePPScreenCursorPositions[] = {
    [BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1] = {
        .xCoord1 = 8,
        .yCoord1 = 56,
        .xCoord2 = 120,
        .yCoord2 = 88,
        .upIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3,
        .leftIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2] = {
        .xCoord1 = 136,
        .yCoord1 = 56,
        .xCoord2 = 248,
        .yCoord2 = 88,
        .upIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4,
        .leftIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1,
        .rightIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3] = {
        .xCoord1 = 8,
        .yCoord1 = 104,
        .xCoord2 = 120,
        .yCoord2 = 136,
        .upIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1,
        .downIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4] = {
        .xCoord1 = 136,
        .yCoord1 = 104,
        .xCoord2 = 248,
        .yCoord2 = 136,
        .upIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2,
        .downIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3,
        .rightIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL] = {
        .xCoord1 = 224,
        .yCoord1 = 160,
        .xCoord2 = 248,
        .yCoord2 = 184,
        .upIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4,
        .downIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
        .leftIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
        .rightIndex = BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
    }
};

static const GridMenuCursorPosition *const sScreenCursorPositions[] = {
    [BATTLE_PARTY_SCREEN_POKEMON_PARTY] = sPokemonPartyScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_SELECT_POKEMON] = sSelectPokemonScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_POKEMON_SUMMARY] = sPokemonSummaryScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_POKEMON_MOVES] = sPokemonMovesScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_MOVE_SUMMARY] = sMoveSummaryScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP] = sRestoreMovePPScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_LEARN_MOVE] = sLearnMoveScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE] = sConfirmLearnMoveScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS] = sLearnMoveScreenCursorPositions,
    [BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS] = sConfirmLearnMoveScreenCursorPositions
};

static void SetupLearnMoveScreenCursor(BattleParty *battleParty)
{
    if (battleParty->hasVisitedContestHall == FALSE) {
        SetBattleSubMenuCursorEnabledPositionsMask(battleParty->cursor, LEARN_MOVE_SCREEN_CURSOR_ENABLED_POSITIONS_MASK);
    } else {
        SetBattleSubMenuCursorEnabledPositionsMask(battleParty->cursor, LEARN_MOVE_SCREEN_WITH_CONTEST_STATS_CURSOR_ENABLED_POSITIONS_MASK);
    }
}

static void SetupConfirmLearnMoveScreenCursor(BattleParty *battleParty)
{
    if (battleParty->hasVisitedContestHall == FALSE) {
        SetBattleSubMenuCursorEnabledPositionsMask(battleParty->cursor, CONFIRM_LEARN_MOVE_SCREEN_CURSOR_ENABLED_POSITIONS_MASK);
    } else {
        SetBattleSubMenuCursorEnabledPositionsMask(battleParty->cursor, CONFIRM_LEARN_MOVE_SCREEN_WITH_CONTEST_STATS_CURSOR_ENABLED_POSITIONS_MASK);
    }
}

void BattlePartySprites_SetupCursor(BattleParty *battleParty, enum BattlePartyScreen screen)
{
    SetBattleSubMenuCursorPositions(battleParty->cursor, sScreenCursorPositions[screen]);

    switch (screen) {
    case BATTLE_PARTY_SCREEN_POKEMON_PARTY:
        SetBattleSubMenuCursorCurrentPosition(battleParty->cursor, battleParty->context->selectedPartyIndex);
        battleParty->selectPokemonPreviousScreenButton = 0;
        battleParty->context->selectedMoveSlot = 0;
        break;
    case BATTLE_PARTY_SCREEN_SELECT_POKEMON:
        SetBattleSubMenuCursorCurrentPosition(battleParty->cursor, battleParty->selectPokemonPreviousScreenButton);
        battleParty->context->selectedMoveSlot = 0;
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_MOVES:
    case BATTLE_PARTY_SCREEN_MOVE_SUMMARY:
        SetBattleSubMenuCursorCurrentPosition(battleParty->cursor, battleParty->context->selectedMoveSlot);
        break;
    case BATTLE_PARTY_SCREEN_LEARN_MOVE:
    case BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS:
        SetupLearnMoveScreenCursor(battleParty);
        SetBattleSubMenuCursorCurrentPosition(battleParty->cursor, battleParty->learnMovePreviousScreenButton);
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE:
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS:
        SetupConfirmLearnMoveScreenCursor(battleParty);
        SetBattleSubMenuCursorCurrentPosition(battleParty->cursor, battleParty->confirmLearnMovePreviousScreenButton);
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_SUMMARY:
    case BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP:
        break;
    }
}

void BattlePartySprites_DisableCursor(BattleParty *battleParty)
{
    SetBattleSubMenuCursorVisibility(battleParty->cursor, FALSE);
    ResetBattleSubMenuCursorCurrentPosition(battleParty->cursor);
    ov16_0226DDE8(GetBattleSubMenuCursorSprites(battleParty->cursor));
}
