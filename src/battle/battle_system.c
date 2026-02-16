#include "battle/battle_system.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_script.h"
#include "constants/game_options.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/rtc.h"
#include "generated/abilities.h"
#include "generated/battle_backgrounds.h"
#include "generated/species.h"
#include "generated/trainer_message_types.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/trainer.h"

#include "battle/battle_context.h"
#include "battle/battle_cursor.h"
#include "battle/battle_display.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/common.h"
#include "battle/healthbar.h"
#include "battle/ov16_02268520.h"
#include "battle/ov16_0226E148.h"
#include "battle/pokemon_sprite_data.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_02268520.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "battle_anim/battle_anim_system.h"

#include "bag.h"
#include "bg_window.h"
#include "enums.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "math_util.h"
#include "message.h"
#include "palette.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "poketch.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_02014A84.h"
#include "unk_0202F1D4.h"

static void BattleMessage_CheckSide(BattleSystem *battleSys, BattleMessage *battleMsg);
static void BattleMessage_FillFormatBuffers(BattleSystem *battleSys, BattleMessage *battleMsg);
static void BattleMessage_Format(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg);
static BOOL BattleMessage_Callback(TextPrinterTemplate *unused, u16 param1);
static void BattleMessage_SetNickname(BattleSystem *battleSys, u32 idx, int nicknameTag);
static void BattleMessage_SetMoveName(BattleSystem *battleSys, u32 idx, int moveID);
static void BattleMessage_SetItemName(BattleSystem *battleSys, u32 idx, int itemID);
static void BattleMessage_SetNumber(BattleSystem *battleSys, u32 idx, int num);
static void BattleMessage_SetNumberDigits(BattleSystem *battleSys, u32 idx, int num, int digits);
static void BattleMessage_SetTypeName(BattleSystem *battleSys, u32 idx, int type);
static void BattleMessage_SetAbilityName(BattleSystem *battleSys, u32 idx, enum Ability ability);
static void BattleMessage_StatName(BattleSystem *battleSys, u32 idx, int stat);
static void BattleMessage_SetStatusName(BattleSystem *battleSys, u32 idx, int statis);
static void BattleMessage_SetPokemonName(BattleSystem *battleSys, u32 idx, int monTag);
static void BattleMessage_SetPoffinName(BattleSystem *battleSys, u32 idx, int poffin);
static void BattleMessage_SetFlavorName(BattleSystem *battleSys, u32 idx, int flavor);
static void BattleMessage_SetTrainerClassName(BattleSystem *battleSys, u32 idx, int battler);
static void BattleMessage_SetTrainerName(BattleSystem *battleSys, u32 idx, int battler);
static void BattleMessage_SetPCBoxName(BattleSystem *battleSys, u32 idx, int boxIdx);
static u8 ov16_0223F6D4(u8 *param0, u8 *param1, u16 *param2);

BgConfig *BattleSystem_GetBgConfig(BattleSystem *battleSys)
{
    return battleSys->bgConfig;
}

Window *BattleSystem_GetWindow(BattleSystem *battleSys, int idx)
{
    return &battleSys->windows[idx];
}

u32 BattleSystem_GetBattleType(BattleSystem *battleSys)
{
    return battleSys->battleType;
}

BattleContext *BattleSystem_GetBattleContext(BattleSystem *battleSys)
{
    return battleSys->battleCtx;
}

BattlerData *BattleSystem_GetBattlerData(BattleSystem *battleSys, int battler)
{
    return battleSys->battlers[battler];
}

int BattleSystem_GetMaxBattlers(BattleSystem *battleSys)
{
    return battleSys->maxBattlers;
}

Party *BattleSystem_GetParty(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2) || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return battleSys->parties[battler];
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->parties[battler & 1];
    } else {
        return battleSys->parties[battler];
    }
}

int BattleSystem_GetPartyCount(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG)
            && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return Party_GetCurrentCount(battleSys->parties[battler]);
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return Party_GetCurrentCount(battleSys->parties[battler & 1]);
    } else {
        return Party_GetCurrentCount(battleSys->parties[battler]);
    }
}

Pokemon *BattleSystem_GetPartyPokemon(BattleSystem *battleSys, int battler, int slot)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return Party_GetPokemonBySlotIndex(battleSys->parties[battler], slot);
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return Party_GetPokemonBySlotIndex(battleSys->parties[battler & 1], slot);
    }

    return Party_GetPokemonBySlotIndex(battleSys->parties[battler], slot);
}

PokemonSpriteManager *BattleSystem_GetPokemonSpriteManager(BattleSystem *battleSys)
{
    return battleSys->monSpriteMan;
}

BattleAnimSystem *BattleSystem_GetBattleAnimSystem(BattleSystem *battleSys)
{
    return battleSys->battleAnimSys;
}

SpriteSystem *BattleSystem_GetSpriteSystem(BattleSystem *battleSys)
{
    return battleSys->spriteSys;
}

SpriteManager *BattleSystem_GetSpriteManager(BattleSystem *battleSys)
{
    return battleSys->spriteMan;
}

UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *battleSys, int param1)
{
    return &battleSys->unk_17C[param1];
}

UnkStruct_ov16_02268A14 *ov16_0223E02C(BattleSystem *battleSys)
{
    return battleSys->unk_198;
}

PartyGauge *BattleSystem_GetPartyGauge(BattleSystem *battleSys, enum PartyGaugeSide partyGaugeSide)
{
    return battleSys->partyGauges[partyGaugeSide];
}

void BattleSystem_SetPartyGauge(BattleSystem *battleSys, enum PartyGaugeSide partyGaugeSide, PartyGauge *partyGauge)
{
    battleSys->partyGauges[partyGaugeSide] = partyGauge;
}

FontSpecialCharsContext *BattleSystem_GetSpecialCharsHP(BattleSystem *battleSys)
{
    return battleSys->specialCharsHP;
}

FontSpecialCharsContext *BattleSystem_GetSpecialCharsLevel(BattleSystem *battleSys)
{
    return battleSys->specialCharsLevel;
}

MessageLoader *BattleSystem_GetMessageLoader(BattleSystem *battleSys)
{
    return battleSys->msgLoader;
}

MessageLoader *BattleSystem_GetAttackMessageLoader(BattleSystem *battleSys)
{
    return battleSys->attackMsgLoader;
}

PaletteData *BattleSystem_GetPaletteData(BattleSystem *battleSys)
{
    return battleSys->paletteData;
}

Pokedex *BattleSystem_GetPokedex(BattleSystem *battleSys)
{
    return battleSys->pokedex;
}

u8 *BattleSystem_GetServerMessage(BattleSystem *battleSys)
{
    return &battleSys->serverMessage[0];
}

u8 *BattleSystem_GetClientMessage(BattleSystem *battleSys)
{
    return &battleSys->clientMessage[0];
}

u16 *BattleSystem_GetServerReadIndex(BattleSystem *battleSys)
{
    return &battleSys->serverReadIndex;
}

u16 *BattleSystem_GetServerWriteIndex(BattleSystem *battleSys)
{
    return &battleSys->serverWriteIndex;
}

u16 *BattleSystem_GetServerEndIndex(BattleSystem *battleSys)
{
    return &battleSys->serverEndIndex;
}

u16 *BattleSystem_GetClientReadIndex(BattleSystem *battleSys)
{
    return &battleSys->clientReadIndex;
}

u16 *BattleSystem_GetClientWriteIndex(BattleSystem *battleSys)
{
    return &battleSys->clientWriteIndex;
}

u16 *BattleSystem_GetClientEndIndex(BattleSystem *battleSys)
{
    return &battleSys->clientEndIndex;
}

PokemonSpriteData *BattleSystem_GetPokemonSpriteData(BattleSystem *battleSys)
{
    return &battleSys->pokemonSpriteDataArray[0];
}

StringTemplate *BattleSystem_GetStringTemplate(BattleSystem *battleSys)
{
    return battleSys->strFormatter;
}

String *BattleSystem_GetMsgBuffer(BattleSystem *battleSys)
{
    return battleSys->msgBuffer;
}

u16 Battler_GetTrainerID(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return battleSys->trainerIDs[battler];
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->trainerIDs[battler & 1];
    }

    return battleSys->trainerIDs[battler];
}

Trainer *BattleSystem_GetTrainer(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2) || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return &battleSys->trainers[battler];
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return &battleSys->trainers[battler & 1];
    } else {
        return &battleSys->trainers[battler];
    }
}

TrainerInfo *BattleSystem_GetTrainerInfo(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG)
            && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_TYPE_SOLO_ENEMY))) {
        return battleSys->trainerInfo[battler];
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->trainerInfo[battler & 1];
    }

    return battleSys->trainerInfo[battler];
}

Bag *BattleSystem_GetBag(BattleSystem *battleSys)
{
    return battleSys->bag;
}

BagCursor *BattleSystem_GetBagCursor(BattleSystem *battleSys)
{
    return battleSys->bagCursor;
}

u32 BattleSystem_GetTrainerGender(BattleSystem *battleSys, int battler)
{
    return TrainerInfo_Gender(battleSys->trainerInfo[battler]);
}

int BattleSystem_GetBattlerOfType(BattleSystem *battleSys, int type)
{
    int i;
    for (i = 0; i < battleSys->maxBattlers; i++) {
        if (Battler_Type(battleSys->battlers[i]) == type) {
            break;
        }
    }

    GF_ASSERT(i < battleSys->maxBattlers);
    return i;
}

u8 BattleSystem_GetBattlerType(BattleSystem *battleSys, int battler)
{
    return Battler_Type(battleSys->battlers[battler]);
}

u8 BattleSystem_GetBattlerSide(BattleSystem *battleSys, int battler)
{
    return Battler_Type(battleSys->battlers[battler]) & 1;
}

UnkStruct_020157E4 *ov16_0223E220(BattleSystem *battleSys)
{
    return battleSys->unk_1AC;
}

PCBoxes *BattleSystem_GetPCBoxes(BattleSystem *battleSys)
{
    return battleSys->pcBoxes;
}

enum BattleTerrain BattleSystem_GetTerrain(BattleSystem *battleSys)
{
    if (battleSys->terrain > TERRAIN_MAX || battleSys->terrain < TERRAIN_PLAIN) {
        return TERRAIN_MAX;
    }

    return battleSys->terrain;
}

enum BattleBackground BattleSystem_GetBackground(BattleSystem *battleSys)
{
    return battleSys->background;
}

int BattleSystem_GetMapHeader(BattleSystem *battleSys)
{
    return battleSys->mapHeader;
}

int BattleSystem_GetPartner(BattleSystem *battleSys, int battler)
{
    int i;
    int maxBattlers = BattleSystem_GetMaxBattlers(battleSys);
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    if ((battleType & BATTLE_TYPE_DOUBLES) == FALSE) {
        return battler;
    }

    for (i = 0; i < maxBattlers; i++) {
        if (i != battler && BattleSystem_GetBattlerSide(battleSys, i) == BattleSystem_GetBattlerSide(battleSys, battler)) {
            break;
        }
    }

    return i;
}

int BattleSystem_GetEnemyInSlot(BattleSystem *battleSys, int attacker, int slot)
{
    int maxBattlers = BattleSystem_GetMaxBattlers(battleSys);
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    // In double battles, return the singular opponent
    if ((battleType & BATTLE_TYPE_DOUBLES) == FALSE) {
        return attacker ^ 1;
    }

    int battler;
    for (battler = 0; battler < maxBattlers; battler++) {
        if (battler != attacker
            && (BattleSystem_GetBattlerType(battleSys, battler) & 2) == slot
            && BattleSystem_GetBattlerSide(battleSys, battler) != BattleSystem_GetBattlerSide(battleSys, attacker)) {
            break;
        }
    }

    return battler;
}

BOOL BattleSystem_UseBagItem(BattleSystem *battleSys, int battler, int partySlot, int moveSlot, int item)
{
    // must maintain this order of declarations to match
    BattleContext *battleCtx = battleSys->battleCtx;
    Pokemon *mon;
    BOOL result = FALSE;
    int param;
    int selectedSlot = BattleContext_Get(battleSys, battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, battler);

    int targetSlot;
    if (BattleSystem_GetBattleType(battleSys) == BATTLE_TYPE_TRAINER_DOUBLES
        || ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_TAG)
            && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM) == FALSE)) {
        targetSlot = BattleContext_Get(battleSys, battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, BattleSystem_GetPartner(battleSys, battler));
        if (targetSlot == partySlot) {
            battler = BattleSystem_GetPartner(battleSys, battler);
        }
    } else {
        targetSlot = selectedSlot;
    }

    mon = BattleSystem_GetPartyPokemon(battleSys, battler, partySlot);
    int friendship = 0;

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_SLEEP, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
        if (param & MON_CONDITION_SLEEP) {
            param &= ~MON_CONDITION_SLEEP;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_SLEEP;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);

                param = BattleMon_Get(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, NULL);
                param &= ~VOLATILE_CONDITION_NIGHTMARE;
                BattleMon_Set(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_POISON, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
        if (param & MON_CONDITION_ANY_POISON) {
            param &= ~MON_CONDITION_ANY_POISON;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_ANY_POISON;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_BURN, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
        if (param & MON_CONDITION_BURN) {
            param &= ~MON_CONDITION_BURN;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_BURN;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_FREEZE, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
        if (param & MON_CONDITION_FREEZE) {
            param &= ~MON_CONDITION_FREEZE;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_FREEZE;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_PARALYSIS, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
        if (param & MON_CONDITION_PARALYSIS) {
            param &= ~MON_CONDITION_PARALYSIS;
            Pokemon_SetValue(mon, MON_DATA_STATUS, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_PARALYSIS;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_CONFUSION, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)) {
        param = BattleMon_Get(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, NULL);
        if (param & VOLATILE_CONDITION_CONFUSION) {
            param &= ~VOLATILE_CONDITION_CONFUSION;
            BattleMon_Set(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, &param);
            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_ATTRACT, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)) {
        param = BattleMon_Get(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, NULL);
        if (param & VOLATILE_CONDITION_ATTRACT) {
            param &= ~VOLATILE_CONDITION_ATTRACT;
            BattleMon_Set(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, &param);
            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_GUARD_SPEC, HEAP_ID_BATTLE)) {
        param = BattleContext_Get(battleSys, battleCtx, BATTLECTX_SIDE_MIST_TURNS, battler);
        if (param == 0) {
            param = BattleContext_Get(battleSys, battleCtx, BATTLECTX_SIDE_CONDITIONS_MASK, battler);
            param |= SIDE_CONDITION_MIST;

            BattleContext_Set(battleSys, battleCtx, BATTLECTX_SIDE_CONDITIONS_MASK, battler, param);
            BattleContext_Set(battleSys, battleCtx, BATTLECTX_SIDE_MIST_TURNS, battler, 5);
            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_ATK_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_ATTACK_STAGE, NULL) < MAX_STAT_STAGE) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_ATTACK_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_DEF_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_DEFENSE_STAGE, NULL) < MAX_STAT_STAGE) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_DEFENSE_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_SPATK_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_SP_ATTACK_STAGE, NULL) < MAX_STAT_STAGE) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_SP_ATTACK_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_SPDEF_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_SP_DEFENSE_STAGE, NULL) < MAX_STAT_STAGE) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_SP_DEFENSE_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_SPEED_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_SPEED_STAGE, NULL) < MAX_STAT_STAGE) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_SPEED_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_ACC_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_ACCURACY_STAGE, NULL) < MAX_STAT_STAGE) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_ACCURACY_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_CRIT_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)) {
        param = BattleMon_Get(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, NULL);

        if ((param & VOLATILE_CONDITION_FOCUS_ENERGY) == FALSE) {
            param |= VOLATILE_CONDITION_FOCUS_ENERGY;
            BattleMon_Set(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, &param);
            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_PP_RESTORE, HEAP_ID_BATTLE)) {
        param = Item_LoadParam(item, ITEM_PARAM_PP_RESTORED, HEAP_ID_BATTLE);

        if (Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + moveSlot, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + moveSlot, NULL)) {
            Pokemon_IncreaseValue(mon, MON_DATA_MOVE1_PP + moveSlot, param);

            // Don't permit restoring PP on copied moves
            if ((selectedSlot == partySlot || targetSlot == partySlot)
                && (BattleMon_Get(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, NULL) & VOLATILE_CONDITION_TRANSFORM) == FALSE
                && (BattleMon_Get(battleCtx, battler, BATTLEMON_MIMICKED_MOVE_SLOT, NULL) & FlagIndex(moveSlot)) == FALSE) {
                Battler_AddVal(battleCtx, battler, BATTLEMON_CUR_PP_1 + moveSlot, param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_PP_RESTORE_ALL, HEAP_ID_BATTLE)) {
        param = Item_LoadParam(item, ITEM_PARAM_PP_RESTORED, HEAP_ID_BATTLE);

        for (moveSlot = 0; moveSlot < LEARNED_MOVES_MAX; moveSlot++) {
            if (Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + moveSlot, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + moveSlot, NULL)) {
                Pokemon_IncreaseValue(mon, MON_DATA_MOVE1_PP + moveSlot, param);

                if ((selectedSlot == partySlot || targetSlot == partySlot)
                    && (BattleMon_Get(battleCtx, battler, BATTLEMON_VOLATILE_STATUS, NULL) & VOLATILE_CONDITION_TRANSFORM) == FALSE
                    && (BattleMon_Get(battleCtx, battler, BATTLEMON_MIMICKED_MOVE_SLOT, NULL) & FlagIndex(moveSlot)) == FALSE) {
                    Battler_AddVal(battleCtx, battler, BATTLEMON_CUR_PP_1 + moveSlot, param);
                }

                result = TRUE;
            }
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HP_RESTORE, HEAP_ID_BATTLE)) {
        param = 0;

        if (Item_LoadParam(item, ITEM_PARAM_REVIVE, HEAP_ID_BATTLE)) {
            if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
                param = 1;
            }
        } else {
            param = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        }

        if (param && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL)) {
            param = Item_LoadParam(item, ITEM_PARAM_HP_RESTORED, HEAP_ID_BATTLE);

            switch (param) {
            case 0xFF:
                param = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
                break;

            case 0xFE:
                param = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL) / 2;

                if (param == 0) {
                    param = 1;
                }
                break;

            case 0xFD:
                param = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL) * 25 / 100;

                if (param == 0) {
                    param = 1;
                }
                break;

            default:
                break;
            }

            Pokemon_IncreaseValue(mon, MON_DATA_HP, param);

            if (Item_LoadParam(item, ITEM_PARAM_REVIVE, HEAP_ID_BATTLE) == FALSE) {
                if (BattleSystem_GetBattlerSide(battleSys, battler)) {
                    BattleMon_Set(battleCtx, battler, BATTLEMON_ITEM_HP_RECOVERY, &param);
                } else if (selectedSlot == partySlot || targetSlot == partySlot) {
                    Battler_AddVal(battleCtx, battler, BATTLEMON_CUR_HP, param);
                }
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_GIVE_FRIENDSHIP_LOW, HEAP_ID_BATTLE)
        && Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL) < 100
        && result == TRUE) {
        friendship = Item_LoadParam(item, ITEM_PARAM_FRIENDSHIP_LOW, HEAP_ID_BATTLE);
    }

    if (Item_LoadParam(item, ITEM_PARAM_GIVE_FRIENDSHIP_MED, HEAP_ID_BATTLE)
        && Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL) >= 100
        && Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL) < 200
        && result == TRUE) {
        friendship = Item_LoadParam(item, ITEM_PARAM_FRIENDSHIP_MED, HEAP_ID_BATTLE);
    }

    if (Item_LoadParam(item, ITEM_PARAM_GIVE_FRIENDSHIP_HIGH, HEAP_ID_BATTLE)
        && Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL) >= 200
        && result == TRUE) {
        friendship = Item_LoadParam(item, ITEM_PARAM_FRIENDSHIP_HIGH, HEAP_ID_BATTLE);
    }

    if (friendship) {
        if (friendship > 0) {
            if (Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
                friendship++;
            }

            if (Pokemon_GetValue(mon, MON_DATA_EGG_LOCATION, NULL) == BattleSystem_GetMapHeader(battleSys)) {
                friendship++;
            }

            param = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
            if (Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_BATTLE) == HOLD_EFFECT_FRIENDSHIP_UP) {
                friendship = friendship * 150 / 100;
            }
        }

        Pokemon_IncreaseValue(mon, MON_DATA_FRIENDSHIP, friendship);
        if (selectedSlot == partySlot || targetSlot == partySlot) {
            Battler_AddVal(battleCtx, battler, BATTLEMON_FRIENDSHIP, friendship);
        }
    }

    return result;
}

u32 BattleSystem_GetBattleStatusMask(BattleSystem *battleSys)
{
    return battleSys->battleStatusMask;
}

enum TimeOfDay BattleSystem_GetTime(BattleSystem *battleSys)
{
    return battleSys->time;
}

int BattleSystem_GetBackgroundTimeOffset(BattleSystem *battleSys)
{
    int offset;

    switch (battleSys->background) {
    case BACKGROUND_PLAIN:
    case BACKGROUND_WATER:
    case BACKGROUND_CITY:
    case BACKGROUND_FOREST:
    case BACKGROUND_MOUNTAIN:
    case BACKGROUND_SNOW:
        switch (battleSys->time) {
        case TIMEOFDAY_MORNING:
        case TIMEOFDAY_DAY:
            offset = 0;
            break;
        case TIMEOFDAY_TWILIGHT:
            offset = 1;
            break;
        case TIMEOFDAY_NIGHT:
        case TIMEOFDAY_LATE_NIGHT:
            offset = 2;
            break;
        }
        break;
    default:
        offset = 0;
        break;
    }

    return offset;
}

u8 ov16_0223EC58(BattleSystem *battleSys, int battler, u8 param2)
{
    u16 v0;

    if ((BattleSystem_GetBattlerType(battleSys, battler) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) && ((battleSys->battleType & BATTLE_TYPE_2vs2) == FALSE)) {
        if (battleSys->battleType & BATTLE_TYPE_LINK) {
            if ((param2 & FlagIndex(BattleSystem_GetPartner(battleSys, battler))) == FALSE) {
                return 1;
            }
        } else {
            v0 = BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_ACTION_TEMP_FOR, 0) & 0xFFFF;

            if ((BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_ACTION_FOR, 0) == 14 && v0 > 16) || (param2 & FlagIndex(0))) {
                return 0;
            } else {
                return 1;
            }
        }
    }

    return 0;
}

u16 Battle_FindEvolvingPartyMember(FieldBattleDTO *dto, int *outPartySlot, int *outEvoType)
{
    Pokemon *mon;
    u16 species = SPECIES_NONE;

    if (dto->resultMask != BATTLE_RESULT_WIN
        && dto->resultMask != BATTLE_RESULT_CAPTURED_MON
        && dto->resultMask != BATTLE_RESULT_PLAYER_FLED) {
        return SPECIES_NONE;
    }

    while (dto->leveledUpMonsMask) {
        for (*outPartySlot = 0; *outPartySlot < MAX_PARTY_SIZE; (*outPartySlot)++) {
            if (dto->leveledUpMonsMask & FlagIndex(*outPartySlot)) {
                dto->leveledUpMonsMask &= (FlagIndex(*outPartySlot) ^ 0xFFFFFFFF);
                break;
            }
        }

        if (*outPartySlot < MAX_PARTY_SIZE) {
            mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLE_SIDE_PLAYER], *outPartySlot);
            species = Pokemon_GetEvolutionTargetSpecies(dto->parties[BATTLE_SIDE_PLAYER], mon, EVO_CLASS_BY_LEVEL, dto->mapEvolutionMethod, outEvoType);
            if (species) {
                return species;
            }
        }
    }

    return species;
}

u8 ov16_0223ED60(BattleSystem *battleSys)
{
    return battleSys->unk_23F8;
}

u8 BattleSystem_GetSafariEscapeCount(BattleSystem *battleSys)
{
    GF_ASSERT(battleSys->battleCtx != NULL);
    return BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_SAFARI_ESCAPE_COUNT, NULL);
}

int BattleSystem_GetNumSafariBalls(BattleSystem *battleSys)
{
    return battleSys->safariBalls;
}

void BattleSystem_SetNumSafariBalls(BattleSystem *battleSys, int value)
{
    battleSys->safariBalls = value;
}

Options *BattleSystem_GetOptions(BattleSystem *battleSys)
{
    return battleSys->options;
}

BOOL BattleSystem_AreAnimationsOn(BattleSystem *battleSys)
{
    if ((battleSys->battleType & BATTLE_TYPE_LINK)
        && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        return TRUE;
    }

    return Options_BattleScene(battleSys->options) == OPTIONS_BATTLE_SCENE_ON;
}

int BattleSystem_GetOptionsFrame(BattleSystem *battleSys)
{
    return Options_Frame(battleSys->options);
}

u8 BattleSystem_GetTextSpeed(BattleSystem *battleSys)
{
    if ((battleSys->battleType & BATTLE_TYPE_LINK) && ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE)) {
        return TEXT_SPEED_FAST;
    }

    return Options_TextFrameDelay(battleSys->options);
}

int BattleSystem_GetBattleStyle(BattleSystem *battleSys)
{
    return Options_BattleStyle(battleSys->options);
}

PokemonAnimManager *BattleSystem_GetPokemonAnimManager(BattleSystem *battleSys)
{
    return battleSys->monAnimMan;
}

ChatotCry *BattleSystem_GetChatotCry(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2) || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return battleSys->chatotCries[battler];
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->chatotCries[battler & 1];
    } else {
        return battleSys->chatotCries[battler];
    }
}

void BattleSystem_SetBurmyForm(BattleSystem *battleSys)
{
    int i, form;

    if (battleSys->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    for (i = 0; i < BattleSystem_GetPartyCount(battleSys, 0); i++) {
        Pokemon *mon = BattleSystem_GetPartyPokemon(battleSys, 0, i);
        u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL);

        if (species == SPECIES_BURMY && (battleSys->unk_2414[0] & FlagIndex(i))) {
            switch (BattleSystem_GetTerrain(battleSys)) {
            default:
            case TERRAIN_GRASS:
                form = BURMY_FORM_PLANT;
                break;
            case TERRAIN_PLAIN:
            case TERRAIN_SAND:
            case TERRAIN_MOUNTAIN:
            case TERRAIN_CAVE:
            case TERRAIN_DISTORTION_WORLD:
            case TERRAIN_GIRATINA:
                form = BURMY_FORM_SAND;
                break;
            case TERRAIN_BUILDING:
            case TERRAIN_BRIDGE:
            case TERRAIN_AARON:
            case TERRAIN_BERTHA:
            case TERRAIN_FLINT:
            case TERRAIN_LUCIAN:
            case TERRAIN_CYNTHIA:
            case TERRAIN_BATTLE_TOWER:
            case TERRAIN_BATTLE_FACTORY:
            case TERRAIN_BATTLE_ARCADE:
            case TERRAIN_BATTLE_CASTLE:
            case TERRAIN_BATTLE_HALL:
                form = BURMY_FORM_TRASH;
                break;
            }

            Pokemon_SetValue(mon, MON_DATA_FORM, &form);
        }
    }
}

void ov16_0223EF2C(BattleSystem *battleSys, int param1, int param2)
{
    battleSys->unk_2414[param1] |= FlagIndex(param2);
}

void BattleSystem_EnqueuePokemonHistory(BattleSystem *battleSys, Pokemon *mon)
{
    if (battleSys->poketch) {
        Poketch_PokemonHistoryEnqueue(battleSys->poketch, Pokemon_GetBoxPokemon(mon));
    }
}

void BattleSystem_InitCaptureAttempt(BattleSystem *battleSys, Pokemon *mon)
{
    CaptureAttempt_Init(battleSys->captureAttempt, mon, battleSys->resultMask, battleSys->ballsThrown, HEAP_ID_BATTLE);
}

void ov16_0223EF8C(BattleSystem *battleSys)
{
    NNSG2dImageProxy *v0;
    int v1, v2, v3, v4, v5, v6;
    u8 *v7;

    battleSys->unk_21C = Heap_Alloc(HEAP_ID_BATTLE, 0x10000);
    battleSys->unk_220 = Heap_Alloc(HEAP_ID_BATTLE, 0x200);

    MI_CpuCopy32((void *)(HW_BG_VRAM + 0x10000), battleSys->unk_21C, 0x10000);
    MI_CpuCopy32(PaletteData_GetUnfadedBuffer(battleSys->paletteData, 0), battleSys->unk_220, HW_BG_PLTT_SIZE);

    v7 = G2_GetOBJCharPtr();
    v0 = Sprite_GetImageProxy(battleSys->unk_17C[1].unk_00->sprite);
    v7 += v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN];

    for (v2 = 20; v2 < 20 + 8; v2++) {
        for (v1 = 16; v1 < 32; v1++) {
            v3 = v1 - 16;
            v4 = v2 - 20;

            for (v6 = 0; v6 < 0x40; v6++) {
                if (v3 < 8) {
                    if (v6 & 1) {
                        v5 = (v7[v4 * 0x100 + v3 * 0x20 + v6 / 2] & 0xf0) >> 4;
                    } else {
                        v5 = (v7[v4 * 0x100 + v3 * 0x20 + v6 / 2] & 0xf);
                    }
                } else {
                    if (v6 & 1) {
                        v5 = (v7[0x700 + v4 * 0x100 + v3 * 0x20 + v6 / 2] & 0xf0) >> 4;
                    } else {
                        v5 = (v7[0x700 + v4 * 0x100 + v3 * 0x20 + v6 / 2] & 0xf);
                    }
                }

                if (v5) {
                    battleSys->unk_21C[v2 * 0x800 + v1 * 0x40 + v6] = v5 + 0x70;
                }
            }
        }
    }

    v7 = G2_GetOBJCharPtr();
    v0 = Sprite_GetImageProxy(battleSys->unk_17C[0].unk_00->sprite);
    v7 += v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN];

    for (v6 = 0; v6 < 0x40 * 32; v6++) {
        if (v6 & 1) {
            v5 = (v7[v6 / 2] & 0xf0) >> 4;
        } else {
            v5 = (v7[v6 / 2] & 0xf);
        }

        if (v5) {
            battleSys->unk_21C[19 * 0x800 + v6] = v5 + 0x70;
        }
    }

    for (v2 = 28; v2 < 28 + 4; v2++) {
        for (v1 = 0; v1 < 24; v1++) {
            v3 = v1;
            v4 = v2 - 28;

            for (v6 = 0; v6 < 0x40; v6++) {
                if (v6 & 1) {
                    v5 = (v7[0x400 + (v3 / 8) * 0x400 + ((v3 % 8) * 0x20) + (v4 * 0x100) + v6 / 2] & 0xf0) >> 4;
                } else {
                    v5 = (v7[0x400 + (v3 / 8) * 0x400 + ((v3 % 8) * 0x20) + (v4 * 0x100) + v6 / 2] & 0xf);
                }

                if (v5) {
                    battleSys->unk_21C[v2 * 0x800 + v1 * 0x40 + v6] = v5 + 0x70;
                }
            }
        }
    }

    Bg_LoadTiles(battleSys->bgConfig, 3, battleSys->unk_21C, 0x10000, 0);

    ov16_02268700(&battleSys->unk_17C[0]);
    ov16_02268700(&battleSys->unk_17C[1]);
}

u8 *ov16_0223F1E8(BattleSystem *battleSys)
{
    return battleSys->unk_21C;
}

u16 *ov16_0223F1F0(BattleSystem *battleSys)
{
    return battleSys->unk_220;
}

int BattleSystem_GetVisistedContestHall(BattleSystem *battleSys)
{
    return battleSys->visitedContestHall;
}

u16 *ov16_0223F204(BattleSystem *battleSys)
{
    return &battleSys->unk_2224[0];
}

u16 *ov16_0223F210(BattleSystem *battleSys)
{
    return &battleSys->unk_2304[0];
}

int BattleSystem_GetFieldWeather(BattleSystem *battleSys)
{
    return battleSys->fieldWeather;
}

u8 BattleSystem_GetCatchingTutorialLowHP(BattleSystem *battleSys)
{
    return battleSys->catchingTutorialLowHP;
}

void BattleSystem_SetCatchingTutorialLowHP(BattleSystem *battleSys, u8 value)
{
    battleSys->catchingTutorialLowHP = value;
}

int BattleSystem_GetMetBebe(BattleSystem *battleSys)
{
    return battleSys->metBebe;
}

void BattleSystem_TryIncrementRecordValue(BattleSystem *battleSys, int id)
{
    if (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) {
        return;
    }

    GameRecords_IncrementRecordValue(battleSys->records, id);
}

void BattleSystem_TryIncrementTrainerScoreCaughtSpecies(BattleSystem *battleSys)
{
    if (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) {
        return;
    }

    GameRecords_IncrementTrainerScore(battleSys->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
}

void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags)
{
    battleSys->commandSelectionFlags = flags;
}

void ov16_0223F290(BattleSystem *battleSys, int param1)
{
    battleSys->unk_2440 = param1;
}

WaitDial *BattleSystem_GetWaitDial(BattleSystem *battleSys)
{
    return battleSys->waitDial;
}

void BattleSystem_SetWaitDial(BattleSystem *battleSys, WaitDial *waitDial)
{
    battleSys->waitDial = waitDial;
}

PokemonSpriteData *BattleSystem_GetPokemonSpriteDataByIndex(BattleSystem *battleSys, int battler)
{
    return &battleSys->pokemonSpriteDataArray[battler];
}

u8 *PokemonSpriteData_GetTiles(PokemonSpriteData *pokemonSpriteData, int idx)
{
    GF_ASSERT(idx < 4);
    return pokemonSpriteData[idx].tiles;
}

void PokemonSpriteData_SetNarcID(PokemonSpriteData *pokemonSpriteData, int idx, int value)
{
    GF_ASSERT(idx < 4);
    pokemonSpriteData[idx].narcID = value;
}

void PokemonSpriteData_SetPalette(PokemonSpriteData *pokemonSpriteData, int idx, int value)
{
    GF_ASSERT(idx < 4);
    pokemonSpriteData[idx].palette = value;
}

void PokemonSpriteData_SetYOffset(PokemonSpriteData *pokemonSpriteData, int idx, int value)
{
    GF_ASSERT(idx < 4);
    pokemonSpriteData[idx].yOffset = value;
}

void ov16_0223F314(BattleSystem *battleSys, int param1)
{
    battleSys->unk_23F9 = param1;
}

void ov16_0223F320(BattleSystem *battleSys, u8 *param1)
{
    battleSys->unk_23F0 = param1;
}

void ov16_0223F32C(BattleSystem *battleSys, u8 *param1)
{
    battleSys->unk_23F4 = param1;
}

void ov16_0223F338(BattleSystem *battleSys, u8 param1)
{
    battleSys->unk_23F0[0] = param1;
}

void ov16_0223F344(BattleSystem *battleSys, u8 param1)
{
    battleSys->unk_23F4[0] = param1;
}

void BattleSystem_SetCommandIsEndWait(BattleSystem *battleSys, u8 value)
{
    battleSys->commandIsEndWait = value;
}

void *BattleSystem_GetHealthbar(BattleSystem *battleSys, int battler)
{
    return BattlerData_GetHealthbar(battleSys->battlers[battler]);
}

void ov16_0223F36C(BattleSystem *battleSys)
{
    int i;
    Healthbar *healthbar;

    for (i = 0; i < battleSys->maxBattlers; i++) {
        healthbar = BattlerData_GetHealthbar(battleSys->battlers[i]);

        healthbar->battleSys = battleSys;
        healthbar->type = Healthbar_Type(Battler_Type(battleSys->battlers[i]), BattleSystem_GetBattleType(battleSys));

        ov16_022672C4(healthbar);
        Healthbar_Enable(healthbar, FALSE);
    }
}

void ov16_0223F3BC(BattleSystem *battleSys)
{
    int i;
    Healthbar *healthbar;

    for (i = 0; i < battleSys->maxBattlers; i++) {
        healthbar = BattlerData_GetHealthbar(battleSys->battlers[i]);

        if (healthbar->curHP) {
            Healthbar_Enable(healthbar, TRUE);
        }
    }
}

void ov16_0223F3EC(BattleSystem *battleSys)
{
    int i;
    Healthbar *healthbar;

    for (i = 0; i < battleSys->maxBattlers; i++) {
        healthbar = BattlerData_GetHealthbar(battleSys->battlers[i]);
        Healthbar_Enable(healthbar, FALSE);
    }
}

void ov16_0223F414(BattleSystem *battleSys)
{
    int i;
    Healthbar *healthbar;

    for (i = 0; i < battleSys->maxBattlers; i++) {
        healthbar = BattlerData_GetHealthbar(battleSys->battlers[i]);
        ov16_02267360(healthbar);
    }
}

u8 BattleSystem_GetResultMask(BattleSystem *battleSys)
{
    return battleSys->resultMask;
}

void BattleSystem_SetResultMask(BattleSystem *battleSys, u8 value)
{
    battleSys->resultMask = value;
}

u8 BattleSystem_GetRedHPSoundFlag(BattleSystem *battleSys)
{
    return battleSys->redHPSoundFlag;
}

void BattleSystem_SetRedHPSoundFlag(BattleSystem *battleSys, u8 value)
{
    battleSys->redHPSoundFlag = value;
}

u8 BattleSystem_GetRedHPSoundEffectDelay(BattleSystem *battleSys)
{
    return battleSys->redHPSoundEffectDelay;
}

void BattleSystem_SetRedHPSoundEffectDelay(BattleSystem *battleSys, u8 value)
{
    GF_ASSERT(value < 15);
    battleSys->redHPSoundEffectDelay = value;
}

void BattleSystem_SetCaughtBattlerIndex(BattleSystem *battleSys, int value)
{
    battleSys->caughtBattlerIdx = value;
}

u16 BattleSystem_RandNext(BattleSystem *battleSys)
{
    battleSys->seedRandNext = battleSys->seedRandNext * LCRNG_MULTIPLIER + LCRNG_INCREMENT;
    return (u16)(battleSys->seedRandNext / LCRNG_DIVISOR);
}

u32 BattleSystem_GetSeedDTO(BattleSystem *battleSys)
{
    return battleSys->seedDTO;
}

void BattleSystem_SetSeedDTO(BattleSystem *battleSys, u32 value)
{
    battleSys->seedDTO = value;
}

void BattleSystem_Record(BattleSystem *battleSys, int param1, u8 param2)
{
    if (((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) && (battleSys->unk_245C[param1] < 0x400)) {
        sub_0202F868(param1, battleSys->unk_245C[param1], param2);
        battleSys->unk_245C[param1]++;
    }
}

BOOL ov16_0223F530(BattleSystem *battleSys, int param1, u8 *param2)
{
    BOOL result;

    *param2 = 0xFF;

    if ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) && (battleSys->unk_245C[param1] < 0x400)) {
        *param2 = sub_0202F884(param1, battleSys->unk_245C[param1]);
        battleSys->unk_245C[param1]++;
        result = 0;
    } else if ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) && (battleSys->unk_245C[param1] >= 0x400)) {
        result = 1;
    }

    return result;
}

u8 ov16_0223F58C(BattleSystem *battleSys, u8 *param1)
{
    u8 battler, v1;
    u8 v2 = 0;

    for (battler = 0; battler < battleSys->maxBattlers; battler++) {
        if (battleSys->unk_245C[battler] != battleSys->unk_244C[battler]) {
            param1[v2++] = battler;
            param1[v2++] = battleSys->unk_245C[battler] - battleSys->unk_244C[battler];

            for (v1 = 0; v1 < battleSys->unk_245C[battler] - battleSys->unk_244C[battler]; v1++) {
                param1[v2++] = sub_0202F884(battler, battleSys->unk_244C[battler] + v1);
            }

            battleSys->unk_244C[battler] = battleSys->unk_245C[battler];
        }
    }

    GF_ASSERT(v2 <= 28);
    return v2;
}

void ov16_0223F638(BattleSystem *battleSys, u16 param1, u8 *param2)
{
    int v0;
    u8 v1;
    u8 v2;
    u8 v3 = 0;

    if ((battleSys->battleType & BATTLE_TYPE_LINK) == FALSE) {
        return;
    }

    if (battleSys->unk_23F8) {
        return;
    }

    while (param1) {
        v1 = ov16_0223F6D4(param2, &v3, &param1);
        v2 = ov16_0223F6D4(param2, &v3, &param1);

        for (v0 = 0; v0 < v2; v0++) {
            sub_0202F868(v1, battleSys->unk_2454[v1] + v0, ov16_0223F6D4(param2, &v3, &param1));
        }

        battleSys->unk_2454[v1] += v2;
    }
}

static u8 ov16_0223F6D4(u8 *param0, u8 *param1, u16 *param2)
{
    param2[0]--;
    return param0[param1[0]++];
}

u16 BattleSystem_GetNetworkID(BattleSystem *battleSys)
{
    return battleSys->networkID;
}

int ov16_0223F6F0(BattleSystem *battleSys, u16 battler)
{
    return battleSys->unk_2464[battler];
}

u16 BattleSystem_GetTrainerItem(BattleSystem *battleSys, int battler, int itemIdx)
{
    return battleSys->trainers[battler].header.items[itemIdx];
}

u32 BattleSystem_GetRecordingStopped(BattleSystem *battleSys)
{
    return battleSys->recordingStopped;
}

void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag)
{
    if (((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE)
        || battleSys->recordingStopped
        || (BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_CONTROL_COMMAND, 0) == 43)
        || (BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_NEXT_CONTROL_COMMAND, 0) == 43)) {
        return;
    }

    ov16_0226CEB0(battleSys->unk_198, flag);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 16, 2, HEAP_ID_BATTLE);
    Sound_StopWaveOutAndSequences();
    Sound_SetMasterVolume(0);

    battleSys->recordingStopped = TRUE;

    return;
}

BOOL ov16_0223F7A4(BattleSystem *battleSys)
{
    if (((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE)
        || battleSys->recordingStopped
        || (BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_CONTROL_COMMAND, 0) == 43)
        || (BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_NEXT_CONTROL_COMMAND, 0) == 43)) {
        return FALSE;
    }

    return TRUE;
}

void BattleSystem_ShowStopPlaybackButton(BattleSystem *battleSys)
{
    if ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE
        || battleSys->playbackStopButton) {
        return;
    }

    battleSys->playbackStopButton = ov16_0226E148(battleSys);
}

u8 BattleSystem_GetRecordedChatter(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2) || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_GetBattlerType(battleSys, battler) & BATTLER_THEM))) {
        return battleSys->recordedChatter[battler];
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->recordedChatter[battler & 1];
    } else {
        return battleSys->recordedChatter[battler];
    }
}

void ov16_0223F858(BattleSystem *battleSys, u8 *param1)
{
    int battler;

    for (battler = 0; battler < battleSys->maxBattlers; battler++) {
        param1[Battler_Type(battleSys->battlers[battler])] = battler;
    }
}

void ov16_0223F87C(BattleSystem *battleSys, u8 *param1)
{
    int battler;

    for (battler = 0; battler < MAX_BATTLERS; battler++) {
        param1[battler] = 0xFF;
    }

    for (battler = 0; battler < battleSys->maxBattlers; battler++) {
        param1[battler] = Battler_Type(battleSys->battlers[battler]);
    }
}

void ov16_0223F8AC(BattleSystem *battleSys, PokemonSprite **monSprites)
{
    int battler;

    for (battler = 0; battler < MAX_BATTLERS; battler++) {
        monSprites[battler] = NULL;
    }

    for (battler = 0; battler < battleSys->maxBattlers; battler++) {
        monSprites[battler] = ov16_02263AFC(battleSys->battlers[battler]);
    }
}

void BattleSystem_SetGaugePriority(BattleSystem *battleSys, int param1)
{
    int battler;
    Healthbar *healthbar;

    for (battler = 0; battler < battleSys->maxBattlers; battler++) {
        healthbar = BattlerData_GetHealthbar(battleSys->battlers[battler]);
        ov16_022675D8(healthbar, param1);
    }
}

u32 BattleSystem_CalcMoneyPenalty(Party *party, TrainerInfo *trainerInfo)
{
    static const u8 badgeMul[] = {
        2,
        4,
        6,
        9,
        12,
        16,
        20,
        25,
        30,
    };

    u8 badges = TrainerInfo_BadgeCount(trainerInfo);
    u32 penalty = Party_GetMaxLevel(party) * 4 * badgeMul[badges];
    u32 curMoney = TrainerInfo_Money(trainerInfo);

    if (penalty > curMoney) {
        penalty = curMoney;
    }

    return penalty;
}

void BattleSystem_DexFlagSeen(BattleSystem *battleSys, int battler)
{
    int battlerType = Battler_Type(battleSys->battlers[battler]);
    int selectedSlot = BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, battler);
    Pokemon *mon = BattleSystem_GetPartyPokemon(battleSys, battler, selectedSlot);

    if ((battleSys->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)) == FALSE) {
        if ((battlerType & BATTLER_THEM)
            || battleSys->battleType == BATTLE_TYPE_AI_PARTNER
            || battleSys->battleType == (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI)) {
            Pokedex_Encounter(battleSys->pokedex, mon);
        }
    }

    if (((battlerType & BATTLER_THEM) == FALSE)
        && (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_BURMY)) {
        Pokedex_Capture(battleSys->pokedex, mon);
    }
}

void BattleSystem_DexFlagCaught(BattleSystem *battleSys, int battler)
{
    int battlerType = Battler_Type(battleSys->battlers[battler]);

    if ((battleSys->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)) == FALSE) {
        if (battlerType & BATTLER_THEM) {
            Pokemon *mon;
            int targetSlot = BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, battler);
            mon = BattleSystem_GetPartyPokemon(battleSys, battler, targetSlot);

            Pokedex_Capture(battleSys->pokedex, mon);
        }
    }
}

BOOL BattleSystem_HasCaughtSpecies(BattleSystem *battleSys, int species)
{
    return Pokedex_HasCaughtSpecies(battleSys->pokedex, species);
}

void Battle_SetDefaultBlend(void)
{
    G2_BlendNone();
}

u8 BattleMessage_PrintTrainerMessage(BattleSystem *battleSys, int trainerID, int battler, enum TrainerMessageType msgType, int renderDelay)
{
    Window *window = BattleSystem_GetWindow(battleSys, 0);
    int printerID;

    if (battleSys->battleType & BATTLE_TYPE_FRONTIER) {
        if (trainerID == 10000) {
            String *string;

            if (msgType == TRMSG_WIN) {
                string = sub_02014B34(&battleSys->trainers[battler].winMsg, HEAP_ID_BATTLE);
            } else {
                string = sub_02014B34(&battleSys->trainers[battler].loseMsg, HEAP_ID_BATTLE);
            }

            Window_FillTilemap(window, 0xFF);
            printerID = Text_AddPrinterWithParams(window, FONT_MESSAGE, string, 0, 0, renderDelay, BattleMessage_Callback);
            String_Free(string);
        } else {
            String *string;
            int entryID;
            u32 bankID;
            int i;

            if (msgType == TRMSG_WIN) {
                entryID = trainerID * 3 + 1;
            } else {
                entryID = trainerID * 3 + 2;
            }

            for (i = 0; i < MAX_BATTLERS; i++) {
                if (TrainerInfo_GameCode(battleSys->trainerInfo[i]) == 0) {
                    break;
                }
            }

            if (i == MAX_BATTLERS) {
                bankID = TEXT_BANK_FRONTIER_TRAINER_MESSAGES;
            } else {
                bankID = TEXT_BANK_UNK_0613;
            }

            MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, bankID, HEAP_ID_BATTLE);
            string = MessageLoader_GetNewString(loader, entryID);

            Window_FillTilemap(window, 0xFF);

            printerID = Text_AddPrinterWithParams(window, FONT_MESSAGE, string, 0, 0, renderDelay, BattleMessage_Callback);
            String_Free(string);
            MessageLoader_Free(loader);
        }
    } else {
        Trainer_LoadMessage(trainerID, msgType, battleSys->msgBuffer, HEAP_ID_BATTLE);
        Window_FillTilemap(window, 0xFF);
        printerID = Text_AddPrinterWithParams(window, FONT_MESSAGE, battleSys->msgBuffer, 0, 0, renderDelay, BattleMessage_Callback);
    }

    return printerID;
}

u8 BattleMessage_Print(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg, int renderDelay)
{
    Window *textWindow = BattleSystem_GetWindow(battleSys, 0);

    BattleMessage_CheckSide(battleSys, battleMsg);
    BattleMessage_FillFormatBuffers(battleSys, battleMsg);
    BattleMessage_Format(battleSys, msgLoader, battleMsg);

    Window_FillTilemap(textWindow, 0xFF);

    return Text_AddPrinterWithParams(textWindow, FONT_MESSAGE, battleSys->msgBuffer, 0, 0, renderDelay, BattleMessage_Callback);
}

u8 BattleMessage_PrintToWindow(BattleSystem *battleSys, Window *window, MessageLoader *msgLoader, BattleMessage *battleMsg, int xOffset, int yOffset, int param6, int param7, int renderDelay)
{
    int v0;

    BattleMessage_CheckSide(battleSys, battleMsg);
    BattleMessage_FillFormatBuffers(battleSys, battleMsg);
    BattleMessage_Format(battleSys, msgLoader, battleMsg);

    if (param6 & 0x1) {
        Window_FillTilemap(window, 0xFF);
    }

    if (param6 & 0x2) {
        v0 = param7 - Font_CalcStringWidth(FONT_SYSTEM, battleSys->msgBuffer, 0);
    } else {
        v0 = 0;
    }

    return Text_AddPrinterWithParams(window, FONT_SYSTEM, battleSys->msgBuffer, xOffset + v0, yOffset, renderDelay, BattleMessage_Callback);
}

/**
 * @brief Check what side of the battle the incoming message applies to, and update
 * the message's bank ID as appropriate.
 *
 * This routine is responsible for shifting the message ID for messages that have
 * separate entries for the player, an enemy trainer, and a wild Pokemon.
 *
 * @param battleSys
 * @param battleMsg
 */
static void BattleMessage_CheckSide(BattleSystem *battleSys, BattleMessage *battleMsg)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    if (battleMsg->tags & TAG_GLOBAL_MESSAGE) {
        return;
    }

    if (battleMsg->tags & TAG_SIDE_LOCAL_MESSAGE) {
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->battler)) {
            battleMsg->id++;
        }

        return;
    }

    switch (battleMsg->tags & BATTLE_MESSAGE_TAGS) {
    case TAG_NONE:
    case TAG_MOVE:
    case TAG_STAT:
    case TAG_ITEM:
    case TAG_NUMBER:
    case TAG_NUMBERS:
    case TAG_TRNAME:
    case TAG_MOVE_MOVE:
    case TAG_ITEM_MOVE:
    case TAG_NUMBER_NUMBER:
    case TAG_TRNAME_TRNAME:
    case TAG_TRNAME_NICKNAME:
    case TAG_TRNAME_ITEM:
    case TAG_TRNAME_NUM:
    case TAG_TRCLASS_TRNAME:
    case TAG_TRNAME_NICKNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_ITEM:
    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        break;

    case TAG_NONE_SIDE_CONSCIOUS:
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id++;
        }
        break;

    case TAG_NICKNAME:
    case TAG_NICKNAME_MOVE:
    case TAG_NICKNAME_ABILITY:
    case TAG_NICKNAME_STAT:
    case TAG_NICKNAME_TYPE:
    case TAG_NICKNAME_POKE:
    case TAG_NICKNAME_ITEM:
    case TAG_NICKNAME_POFFIN:
    case TAG_NICKNAME_NUM:
    case TAG_NICKNAME_TRNAME:
    case TAG_NICKNAME_BOX:
    case TAG_NICKNAME_MOVE_MOVE:
    case TAG_NICKNAME_MOVE_NUMBER:
    case TAG_NICKNAME_ABILITY_MOVE:
    case TAG_NICKNAME_ABILITY_ITEM:
    case TAG_NICKNAME_ABILITY_STAT:
    case TAG_NICKNAME_ABILITY_TYPE:
    case TAG_NICKNAME_ABILITY_STATUS:
    case TAG_NICKNAME_ABILITY_NUMBER:
    case TAG_NICKNAME_ITEM_MOVE:
    case TAG_NICKNAME_ITEM_STAT:
    case TAG_NICKNAME_ITEM_STATUS:
    case TAG_NICKNAME_BOX_BOX:
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id++;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id++;
            }
        }
        break;

    case TAG_MOVE_SIDE:
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[1] & 0xFF)) {
            battleMsg->id++;
        }
        break;

    case TAG_MOVE_NICKNAME:
    case TAG_ABILITY_NICKNAME:
    case TAG_ITEM_NICKNAME_FLAVOR:
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[1] & 0xFF)) {
            battleMsg->id++;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id++;
            }
        }
        break;

    case TAG_NICKNAME_NICKNAME:
    case TAG_NICKNAME_NICKNAME_MOVE:
    case TAG_NICKNAME_NICKNAME_ABILITY:
    case TAG_NICKNAME_NICKNAME_ITEM:
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id += 3;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id += 2;
            }

            if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[1] & 0xFF)) {
                battleMsg->id++;
            }
        } else if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[1] & 0xFF)) {
            battleMsg->id++;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id++;
            }
        }
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME:
    case TAG_NICKNAME_ITEM_NICKNAME:
    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id += 3;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id += 2;
            }

            if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[2] & 0xFF)) {
                battleMsg->id++;
            }
        } else if (BattleSystem_GetBattlerSide(battleSys, battleMsg->params[2] & 0xFF)) {
            battleMsg->id++;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id++;
            }
        }
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }
}

/**
 * @brief Fill formatting buffers with data from the battle message parameters, according
 * to the message's tag.
 *
 * @param battleSys
 * @param battleMsg
 */
static void BattleMessage_FillFormatBuffers(BattleSystem *battleSys, BattleMessage *battleMsg)
{
    switch (battleMsg->tags & BATTLE_MESSAGE_TAGS) {
    case TAG_NONE:
    case TAG_NONE_SIDE_CONSCIOUS:
        break;

    case TAG_NICKNAME:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_MOVE:
    case TAG_MOVE_SIDE:
        BattleMessage_SetMoveName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_STAT:
        BattleMessage_StatName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_ITEM:
        BattleMessage_SetItemName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_NUMBER:
        BattleMessage_SetNumber(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_NUMBERS:
        BattleMessage_SetNumberDigits(battleSys, 0, battleMsg->params[0], battleMsg->digits);
        break;

    case TAG_TRNAME:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_NICKNAME_NICKNAME:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_MOVE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetMoveName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_ABILITY:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_STAT:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_StatName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_TYPE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTypeName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_POKE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetPokemonName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_ITEM:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_POFFIN:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetPoffinName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_NUM:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNumber(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_TRNAME:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_BOX:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetPCBoxName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_MOVE_NICKNAME:
        BattleMessage_SetMoveName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_MOVE_MOVE:
        BattleMessage_SetMoveName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetMoveName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_ABILITY_NICKNAME:
        BattleMessage_SetAbilityName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_ITEM_MOVE:
        BattleMessage_SetItemName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetMoveName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NUMBER_NUMBER:
        BattleMessage_SetNumber(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNumber(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_TRNAME:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_NICKNAME:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_ITEM:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_NUM:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNumber(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRCLASS_TRNAME:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_NICKNAME_MOVE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetMoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_NICKNAME_ABILITY:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetAbilityName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_NICKNAME_ITEM:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetItemName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_MOVE_MOVE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetMoveName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetMoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_MOVE_NUMBER:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetMoveName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNumber(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_MOVE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetMoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_ITEM:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetItemName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_STAT:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_StatName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_TYPE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetTypeName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_STATUS:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetStatusName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NUMBER:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNumber(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_NICKNAME:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_MOVE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetMoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_STAT:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_StatName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_STATUS:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetStatusName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_BOX_BOX:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetPCBoxName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetPCBoxName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_ITEM_NICKNAME_FLAVOR:
        BattleMessage_SetItemName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetFlavorName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_TRCLASS_TRNAME_ITEM:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetItemName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetMoveName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetAbilityName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetAbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_StatName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        BattleMessage_SetNickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetItemName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
        BattleMessage_SetTrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetNickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetTrainerName(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetNickname(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetNickname(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetTrainerName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetTrainerClassName(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetTrainerName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_SetTrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_SetTrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_SetNickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_SetTrainerClassName(battleSys, 3, battleMsg->params[3]);
        BattleMessage_SetTrainerName(battleSys, 4, battleMsg->params[4]);
        BattleMessage_SetNickname(battleSys, 5, battleMsg->params[5]);
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void BattleMessage_SetNickname(BattleSystem *battleSys, u32 idx, int nicknameTag)
{
    Pokemon *mon = BattleSystem_GetPartyPokemon(battleSys, nicknameTag & 0xFF, (nicknameTag & 0xFF00) >> 8);
    StringTemplate_SetNickname(battleSys->strFormatter, idx, &mon->box);
}

static void BattleMessage_SetMoveName(BattleSystem *battleSys, u32 idx, int moveID)
{
    StringTemplate_SetMoveName(battleSys->strFormatter, idx, moveID);
}

static void BattleMessage_SetItemName(BattleSystem *battleSys, u32 idx, int itemID)
{
    StringTemplate_SetItemName(battleSys->strFormatter, idx, itemID);
}

static void BattleMessage_SetNumber(BattleSystem *battleSys, u32 idx, int num)
{
    StringTemplate_SetNumber(battleSys->strFormatter, idx, num, 5, PADDING_MODE_NONE, CHARSET_MODE_EN);
}

static void BattleMessage_SetNumberDigits(BattleSystem *battleSys, u32 idx, int num, int digits)
{
    if (digits) {
        StringTemplate_SetNumber(battleSys->strFormatter, idx, num, digits, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    } else {
        StringTemplate_SetNumber(battleSys->strFormatter, idx, num, 5, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    }
}

static void BattleMessage_SetTypeName(BattleSystem *battleSys, u32 idx, int type)
{
    StringTemplate_SetPokemonTypeName(battleSys->strFormatter, idx, type);
}

static void BattleMessage_SetAbilityName(BattleSystem *battleSys, u32 idx, enum Ability ability)
{
    StringTemplate_SetAbilityName(battleSys->strFormatter, idx, ability);
}

static void BattleMessage_StatName(BattleSystem *battleSys, u32 idx, int stat)
{
    StringTemplate_SetPokemonStatName(battleSys->strFormatter, idx, stat);
}

static void BattleMessage_SetStatusName(BattleSystem *battleSys, u32 idx, int status)
{
    StringTemplate_SetStatusConditionName(battleSys->strFormatter, idx, status);
}

static void BattleMessage_SetPokemonName(BattleSystem *battleSys, u32 idx, int monTag)
{
    Pokemon *v0 = BattleSystem_GetPartyPokemon(battleSys, monTag & 0xFF, (monTag & 0xFF00) >> 8);
    StringTemplate_SetSpeciesName(battleSys->strFormatter, idx, &v0->box);
}

static void BattleMessage_SetPoffinName(BattleSystem *battleSys, u32 idx, int poffin)
{
    return;
}

static void BattleMessage_SetFlavorName(BattleSystem *battleSys, u32 idx, int flavor)
{
    StringTemplate_SetFlavorName(battleSys->strFormatter, idx, flavor);
}

static void BattleMessage_SetTrainerClassName(BattleSystem *battleSys, u32 idx, int battler)
{
    Trainer *trainer = BattleSystem_GetTrainer(battleSys, battler);
    StringTemplate_SetTrainerClassNameBattle(battleSys->strFormatter, idx, trainer);
}

static void BattleMessage_SetTrainerName(BattleSystem *battleSys, u32 idx, int battler)
{
    Trainer *trainer = BattleSystem_GetTrainer(battleSys, battler);
    StringTemplate_SetTrainerNameBattle(battleSys->strFormatter, idx, trainer);
}

static void BattleMessage_SetPCBoxName(BattleSystem *battleSys, u32 idx, int boxIdx)
{
    StringTemplate_SetPCBoxName(battleSys->strFormatter, idx, battleSys->pcBoxes, boxIdx);
}

/**
 * @brief Load the requested message and format it into a string to be printed to the screen.
 *
 * @param battleSys
 * @param msgLoader
 * @param battleMsg
 */
static void BattleMessage_Format(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg)
{
    String *string = MessageLoader_GetNewString(msgLoader, battleMsg->id);
    StringTemplate_Format(battleSys->strFormatter, battleSys->msgBuffer, string);
    String_Free(string);
}

static BOOL BattleMessage_Callback(TextPrinterTemplate *unused, u16 param1)
{
    BOOL result = FALSE;

    switch (param1) {
    case 1:
        result = Sound_IsAnyEffectPlaying();
        break;
    case 2:
        result = Sound_IsBGMPausedByFanfare();
        break;
    case 3:
        Sound_PlayFanfare(SEQ_FANFA5);
        break;
    case 4:
        Sound_PlayEffect(SEQ_SE_DP_KON);
        break;
    case 5:
        Sound_PlayFanfare(SEQ_FANFA1);
        break;
    default:
        break;
    }

    return result;
}
