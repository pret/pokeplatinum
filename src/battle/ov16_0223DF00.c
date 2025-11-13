#include "battle/ov16_0223DF00.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/game_options.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/rtc.h"
#include "generated/battle_backgrounds.h"
#include "generated/species.h"
#include "generated/trainer_message_types.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/trainer.h"

#include "battle/battle_context.h"
#include "battle/battle_display.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/common.h"
#include "battle/healthbar.h"
#include "battle/ov16_02268520.h"
#include "battle/ov16_0226871C.h"
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
#include "message.h"
#include "palette.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "poketch.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_02014A84.h"
#include "unk_0202F1D4.h"

BgConfig *BattleSystem_BGL(BattleSystem *battleSystem);
u32 BattleSystem_BattleType(BattleSystem *battleSystem);
BattleContext *BattleSystem_Context(BattleSystem *battleSystem);
BattlerData *BattleSystem_BattlerData(BattleSystem *battleSystem, int param1);
int BattleSystem_MaxBattlers(BattleSystem *battleSystem);
Party *BattleSystem_Party(BattleSystem *battleSystem, int param1);
int BattleSystem_PartyCount(BattleSystem *battleSys, int battler);
Pokemon *BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot);
PokemonSpriteManager *ov16_0223E000(BattleSystem *battleSystem);
BattleAnimSystem *ov16_0223E008(BattleSystem *battleSystem);
SpriteSystem *BattleSystem_GetSpriteSystem(BattleSystem *battleSystem);
SpriteManager *BattleSystem_GetSpriteManager(BattleSystem *battleSystem);
UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *battleSystem, int param1);
UnkStruct_ov16_02268A14 *ov16_0223E02C(BattleSystem *battleSystem);
FontSpecialCharsContext *ov16_0223E04C(BattleSystem *battleSystem);
FontSpecialCharsContext *ov16_0223E054(BattleSystem *battleSystem);
MessageLoader *BattleSystem_MessageLoader(BattleSystem *battleSystem);
MessageLoader *ov16_0223E060(BattleSystem *battleSystem);
PaletteData *BattleSystem_PaletteSys(BattleSystem *battleSystem);
Pokedex *BattleSystem_GetPokedex(BattleSystem *battleSystem);
u8 *ov16_0223E06C(BattleSystem *battleSystem);
u8 *ov16_0223E074(BattleSystem *battleSystem);
u16 *ov16_0223E080(BattleSystem *battleSystem);
u16 *ov16_0223E08C(BattleSystem *battleSystem);
u16 *ov16_0223E098(BattleSystem *battleSystem);
u16 *ov16_0223E0A4(BattleSystem *battleSystem);
u16 *ov16_0223E0B0(BattleSystem *battleSystem);
u16 *ov16_0223E0BC(BattleSystem *battleSystem);
PokemonSpriteData *ov16_0223E0C8(BattleSystem *battleSystem);
StringTemplate *BattleSystem_StringTemplate(BattleSystem *battleSystem);
Strbuf *ov16_0223E0D4(BattleSystem *battleSystem);
u16 Battler_TrainerID(BattleSystem *battleSystem, int param1);
Trainer *BattleSystem_GetTrainer(BattleSystem *battleSystem, int param1);
TrainerInfo *BattleSystem_TrainerInfo(BattleSystem *battleSys, int battler);
Bag *BattleSystem_Bag(BattleSystem *battleSystem);
BagCursor *BattleSystem_BagCursor(BattleSystem *battleSystem);
u32 BattleSystem_GetTrainerGender(BattleSystem *battleSystem, int param1);
int BattleSystem_BattlerOfType(BattleSystem *battleSys, int type);
u8 BattleSystem_BattlerSlot(BattleSystem *battleSys, int battler);
u8 Battler_Side(BattleSystem *battleSystem, int param1);
UnkStruct_020157E4 *ov16_0223E220(BattleSystem *battleSystem);
enum BattleTerrain BattleSystem_Terrain(BattleSystem *battleSys);
int BattleSystem_MapHeader(BattleSystem *battleSystem);
int BattleSystem_Partner(BattleSystem *battleSys, int battler);
int BattleSystem_EnemyInSlot(BattleSystem *battleSys, int attacker, int slot);
BOOL BattleSystem_UseBagItem(BattleSystem *battleSys, int battler, int partySlot, int moveSlot, int item);
u32 ov16_0223EBEC(BattleSystem *battleSystem);
enum TimeOfDay BattleSystem_Time(BattleSystem *battleSys);
int ov16_0223EC04(BattleSystem *battleSystem);
u8 ov16_0223EC58(BattleSystem *battleSystem, int param1, u8 param2);
u16 Battle_FindEvolvingPartyMember(FieldBattleDTO *param0, int *param1, int *param2);
u8 ov16_0223ED60(BattleSystem *battleSystem);
u8 ov16_0223ED6C(BattleSystem *battleSystem);
int BattleSystem_NumSafariBalls(BattleSystem *battleSystem);
void BattleSystem_SetSafariBalls(BattleSystem *battleSystem, int param1);
BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys);
int ov16_0223EDE0(BattleSystem *battleSystem);
u8 BattleSystem_TextSpeed(BattleSystem *battleSystem);
int BattleSystem_Ruleset(BattleSystem *battleSystem);
PokemonAnimationSys *BattleSystem_GetPokemonAnimationSystem(BattleSystem *battleSystem);
ChatotCry *BattleSystem_ChatotVoice(BattleSystem *battleSystem, int param1);
void ov16_0223EF2C(BattleSystem *battleSystem, int param1, int param2);
void ov16_0223EF48(BattleSystem *battleSystem, Pokemon *param1);
void ov16_0223EF68(BattleSystem *battleSystem, Pokemon *param1);
void ov16_0223EF8C(BattleSystem *battleSystem);
u8 *ov16_0223F1E8(BattleSystem *battleSystem);
u16 *ov16_0223F1F0(BattleSystem *battleSystem);
int ov16_0223F1F8(BattleSystem *battleSystem);
u16 *ov16_0223F204(BattleSystem *battleSystem);
u16 *ov16_0223F210(BattleSystem *battleSystem);
int BattleSystem_FieldWeather(BattleSystem *battleSystem);
u8 ov16_0223F228(BattleSystem *battleSystem);
void ov16_0223F234(BattleSystem *battleSystem, u8 param1);
int ov16_0223F240(BattleSystem *battleSystem);
void ov16_0223F24C(BattleSystem *battleSystem, int param1);
void ov16_0223F268(BattleSystem *battleSystem);
void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags);
void ov16_0223F290(BattleSystem *battleSystem, int param1);
WaitDial *Battle_GetWaitDial(BattleSystem *battleSystem);
void Battle_SetWaitDial(BattleSystem *battleSystem, WaitDial *waitDial);
u8 *ov16_0223F2B8(PokemonSpriteData *param0, int param1);
void PokemonSpriteData_SetNarcID(PokemonSpriteData *param0, int param1, int param2);
void PokemonSpriteData_SetPalette(PokemonSpriteData *param0, int param1, int param2);
void PokemonSpriteData_SetYOffset(PokemonSpriteData *param0, int param1, int param2);
void ov16_0223F314(BattleSystem *battleSystem, int param1);
void ov16_0223F320(BattleSystem *battleSystem, u8 *param1);
void ov16_0223F32C(BattleSystem *battleSystem, u8 *param1);
void ov16_0223F338(BattleSystem *battleSystem, u8 param1);
void ov16_0223F344(BattleSystem *battleSystem, u8 param1);
void ov16_0223F350(BattleSystem *battleSystem, u8 param1);
void ov16_0223F36C(BattleSystem *battleSystem);
void ov16_0223F3BC(BattleSystem *battleSystem);
void ov16_0223F3EC(BattleSystem *battleSystem);
void ov16_0223F414(BattleSystem *battleSystem);
u8 BattleSystem_ResultMask(BattleSystem *battleSystem);
void BattleSystem_SetResultFlag(BattleSystem *battleSystem, u8 param1);
u8 ov16_0223F450(BattleSystem *battleSystem);
void BattleSystem_SetRedHPSoundFlag(BattleSystem *battleSystem, u8 param1);
u8 ov16_0223F47C(BattleSystem *battleSystem);
void ov16_0223F48C(BattleSystem *battleSystem, u8 param1);
void ov16_0223F4B0(BattleSystem *battleSystem, int param1);
u16 BattleSystem_RandNext(BattleSystem *battleSystem);
u32 ov16_0223F4E8(BattleSystem *battleSystem);
void ov16_0223F4F4(BattleSystem *battleSystem, u32 param1);
void BattleSystem_Record(BattleSystem *battleSystem, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem *battleSystem, int param1, u8 *param2);
u8 ov16_0223F58C(BattleSystem *battleSystem, u8 *param1);
void ov16_0223F638(BattleSystem *battleSystem, u16 param1, u8 *param2);
u16 ov16_0223F6E4(BattleSystem *battleSystem);
int ov16_0223F6F0(BattleSystem *battleSystem, u16 param1);
u16 BattleSystem_TrainerItems(BattleSystem *battleSystem, int param1, int param2);
u32 BattleSystem_RecordingStopped(BattleSystem *battleSystem);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem *battleSystem);
void BattleSystem_ShowStopPlaybackButton(BattleSystem *battleSystem);
u8 BattleSystem_RecordedChatter(BattleSystem *battleSystem, int param1);
void ov16_0223F858(BattleSystem *battleSystem, u8 *param1);
void ov16_0223F87C(BattleSystem *battleSystem, u8 *param1);
void ov16_0223F8AC(BattleSystem *battleSystem, PokemonSprite **param1);
void BattleSystem_SetGaugePriority(BattleSystem *battleSystem, int param1);
u32 BattleSystem_CalcMoneyPenalty(Party *party, TrainerInfo *trainerInfo);
void BattleSystem_DexFlagSeen(BattleSystem *battleSystem, int param1);
void ov16_0223F9A0(BattleSystem *battleSystem, int param1);
BOOL BattleSystem_CaughtSpecies(BattleSystem *battleSys, int species);
void Battle_SetDefaultBlend(void);
u8 ov16_0223F9FC(BattleSystem *battleSys, int trainerID, int param2, enum TrainerMessageType msgType, int param4);
u8 BattleMessage_PrintToWindow(BattleSystem *battleSystem, Window *param1, MessageLoader *param2, BattleMessage *param3, int param4, int param5, int param6, int param7, int param8);
static void BattleMessage_CheckSide(BattleSystem *battleSys, BattleMessage *battleMsg);
static void BattleMessage_FillFormatBuffers(BattleSystem *battleSys, BattleMessage *battleMsg);
static void BattleMessage_Format(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg);
static BOOL BattleMessage_Callback(TextPrinterTemplate *param0, u16 param1);
static void BattleMessage_Nickname(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_MoveName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_ItemName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_Number(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_NumberDigits(BattleSystem *battleSystem, u32 param1, int param2, int param3);
static void BattleMessage_TypeName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_AbilityName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_StatName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_StatusName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_PokemonName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_PoffinName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_FlavorName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_TrainerClassName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_TrainerName(BattleSystem *battleSystem, u32 param1, int param2);
static void BattleMessage_PCBoxName(BattleSystem *battleSystem, u32 param1, int param2);
static u8 ov16_0223F6D4(u8 *param0, u8 *param1, u16 *param2);

BgConfig *BattleSystem_BGL(BattleSystem *battleSystem)
{
    return battleSystem->unk_04;
}

Window *BattleSystem_Window(BattleSystem *battleSys, int idx)
{
    return &battleSys->windows[idx];
}

u32 BattleSystem_BattleType(BattleSystem *battleSys)
{
    return battleSys->battleType;
}

BattleContext *BattleSystem_Context(BattleSystem *battleSys)
{
    return battleSys->battleCtx;
}

BattlerData *BattleSystem_BattlerData(BattleSystem *battleSys, int battler)
{
    return battleSys->battlers[battler];
}

int BattleSystem_MaxBattlers(BattleSystem *battleSys)
{
    return battleSys->maxBattlers;
}

Party *BattleSystem_Party(BattleSystem *battleSystem, int param1)
{
    if ((battleSystem->battleType & BATTLE_TYPE_2vs2) || ((battleSystem->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSystem, param1) & 0x1))) {
        return battleSystem->parties[param1];
    } else if (battleSystem->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSystem->parties[param1 & 1];
    } else {
        return battleSystem->parties[param1];
    }
}

int BattleSystem_PartyCount(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG)
            && (BattleSystem_BattlerSlot(battleSys, battler) & BATTLER_THEM))) {
        return Party_GetCurrentCount(battleSys->parties[battler]);
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return Party_GetCurrentCount(battleSys->parties[battler & 1]);
    } else {
        return Party_GetCurrentCount(battleSys->parties[battler]);
    }
}

Pokemon *BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSys, battler) & BATTLER_ENEMY_1))) {
        return Party_GetPokemonBySlotIndex(battleSys->parties[battler], slot);
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return Party_GetPokemonBySlotIndex(battleSys->parties[battler & 1], slot);
    }

    return Party_GetPokemonBySlotIndex(battleSys->parties[battler], slot);
}

PokemonSpriteManager *ov16_0223E000(BattleSystem *battleSystem)
{
    return battleSystem->unk_88;
}

BattleAnimSystem *ov16_0223E008(BattleSystem *battleSystem)
{
    return battleSystem->unk_8C;
}

SpriteSystem *BattleSystem_GetSpriteSystem(BattleSystem *battleSystem)
{
    return battleSystem->spriteSys;
}

SpriteManager *BattleSystem_GetSpriteManager(BattleSystem *battleSystem)
{
    return battleSystem->spriteMan;
}

UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *battleSystem, int param1)
{
    return &battleSystem->unk_17C[param1];
}

UnkStruct_ov16_02268A14 *ov16_0223E02C(BattleSystem *battleSystem)
{
    return battleSystem->unk_198;
}

PartyGauge *BattleSystem_GetPartyGauge(BattleSystem *battleSystem, enum PartyGaugeSide partyGaugeSide)
{
    return battleSystem->partyGauges[partyGaugeSide];
}

void BattleSystem_SetPartyGauge(BattleSystem *battleSystem, enum PartyGaugeSide partyGaugeSide, PartyGauge *partyGauge)
{
    battleSystem->partyGauges[partyGaugeSide] = partyGauge;
}

FontSpecialCharsContext *ov16_0223E04C(BattleSystem *battleSystem)
{
    return battleSystem->unk_1A4;
}

FontSpecialCharsContext *ov16_0223E054(BattleSystem *battleSystem)
{
    return battleSystem->unk_1A8;
}

MessageLoader *BattleSystem_MessageLoader(BattleSystem *battleSystem)
{
    return battleSystem->unk_0C;
}

MessageLoader *ov16_0223E060(BattleSystem *battleSystem)
{
    return battleSystem->unk_10;
}

PaletteData *BattleSystem_PaletteSys(BattleSystem *battleSystem)
{
    return battleSystem->paletteSys;
}

Pokedex *BattleSystem_GetPokedex(BattleSystem *battleSystem)
{
    return battleSystem->pokedex;
}

u8 *ov16_0223E06C(BattleSystem *battleSystem)
{
    return &battleSystem->unk_224[0];
}

u8 *ov16_0223E074(BattleSystem *battleSystem)
{
    return &battleSystem->unk_1224[0];
}

u16 *ov16_0223E080(BattleSystem *battleSystem)
{
    return &battleSystem->unk_23E4;
}

u16 *ov16_0223E08C(BattleSystem *battleSystem)
{
    return &battleSystem->unk_23E6;
}

u16 *ov16_0223E098(BattleSystem *battleSystem)
{
    return &battleSystem->unk_23E8;
}

u16 *ov16_0223E0A4(BattleSystem *battleSystem)
{
    return &battleSystem->unk_23EA;
}

u16 *ov16_0223E0B0(BattleSystem *battleSystem)
{
    return &battleSystem->unk_23EC;
}

u16 *ov16_0223E0BC(BattleSystem *battleSystem)
{
    return &battleSystem->unk_23EE;
}

PokemonSpriteData *ov16_0223E0C8(BattleSystem *battleSystem)
{
    return &battleSystem->pokemonSpriteDataArray[0];
}

StringTemplate *BattleSystem_StringTemplate(BattleSystem *battleSystem)
{
    return battleSystem->strFormatter;
}

Strbuf *ov16_0223E0D4(BattleSystem *battleSystem)
{
    return battleSystem->msgBuffer;
}

u16 Battler_TrainerID(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSys, battler) & BATTLER_THEM))) {
        return battleSys->trainerIDs[battler];
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->trainerIDs[battler & 1];
    }

    return battleSys->trainerIDs[battler];
}

Trainer *BattleSystem_GetTrainer(BattleSystem *battleSystem, int param1)
{
    if ((battleSystem->battleType & BATTLE_TYPE_2vs2) || ((battleSystem->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSystem, param1) & 0x1))) {
        return &battleSystem->trainers[param1];
    } else if (battleSystem->battleType & BATTLE_TYPE_DOUBLES) {
        return &battleSystem->trainers[param1 & 1];
    } else {
        return &battleSystem->trainers[param1];
    }
}

TrainerInfo *BattleSystem_TrainerInfo(BattleSystem *battleSys, int battler)
{
    if ((battleSys->battleType & BATTLE_TYPE_2vs2)
        || ((battleSys->battleType & BATTLE_TYPE_TAG)
            && (BattleSystem_BattlerSlot(battleSys, battler) & BATTLER_TYPE_SOLO_ENEMY))) {
        return battleSys->trainerInfo[battler];
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSys->trainerInfo[battler & 1];
    }

    return battleSys->trainerInfo[battler];
}

Bag *BattleSystem_Bag(BattleSystem *battleSystem)
{
    return battleSystem->bag;
}

BagCursor *BattleSystem_BagCursor(BattleSystem *battleSystem)
{
    return battleSystem->bagCursor;
}

u32 BattleSystem_GetTrainerGender(BattleSystem *battleSystem, int battler)
{
    return TrainerInfo_Gender(battleSystem->trainerInfo[battler]);
}

int BattleSystem_BattlerOfType(BattleSystem *battleSys, int type)
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

u8 BattleSystem_BattlerSlot(BattleSystem *battleSys, int battler)
{
    return Battler_Type(battleSys->battlers[battler]);
}

u8 Battler_Side(BattleSystem *battleSystem, int battler)
{
    return Battler_Type(battleSystem->battlers[battler]) & 1;
}

UnkStruct_020157E4 *ov16_0223E220(BattleSystem *battleSystem)
{
    return battleSystem->unk_1AC;
}

PCBoxes *BattleSystem_PCBoxes(BattleSystem *battleSystem)
{
    return battleSystem->pcBoxes;
}

enum BattleTerrain BattleSystem_Terrain(BattleSystem *battleSys)
{
    if (battleSys->terrain > TERRAIN_MAX || battleSys->terrain < TERRAIN_PLAIN) {
        return TERRAIN_MAX;
    }

    return battleSys->terrain;
}

enum BattleBackground BattleSystem_Background(BattleSystem *battleSystem)
{
    return battleSystem->background;
}

int BattleSystem_MapHeader(BattleSystem *battleSystem)
{
    return battleSystem->mapHeader;
}

int BattleSystem_Partner(BattleSystem *battleSys, int battler)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    u32 battleType = BattleSystem_BattleType(battleSys);

    if ((battleType & BATTLE_TYPE_DOUBLES) == FALSE) {
        return battler;
    }

    for (i = 0; i < maxBattlers; i++) {
        if (i != battler && Battler_Side(battleSys, i) == Battler_Side(battleSys, battler)) {
            break;
        }
    }

    return i;
}

int BattleSystem_EnemyInSlot(BattleSystem *battleSys, int attacker, int slot)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    u32 battleType = BattleSystem_BattleType(battleSys);

    // In double battles, return the singular opponent
    if ((battleType & BATTLE_TYPE_DOUBLES) == FALSE) {
        return attacker ^ 1;
    }

    int battler;
    for (battler = 0; battler < maxBattlers; battler++) {
        if (battler != attacker
            && (BattleSystem_BattlerSlot(battleSys, battler) & 2) == slot
            && Battler_Side(battleSys, battler) != Battler_Side(battleSys, attacker)) {
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
    int selectedSlot = BattleContext_Get(battleSys, battleCtx, 2, battler);

    int targetSlot;
    if (BattleSystem_BattleType(battleSys) == BATTLE_TYPE_TRAINER_DOUBLES
        || ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG)
            && (BattleSystem_BattlerSlot(battleSys, battler) & BATTLER_THEM) == FALSE)) {
        targetSlot = BattleContext_Get(battleSys, battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, BattleSystem_Partner(battleSys, battler));
        if (targetSlot == partySlot) {
            battler = BattleSystem_Partner(battleSys, battler);
        }
    } else {
        targetSlot = selectedSlot;
    }

    mon = BattleSystem_PartyPokemon(battleSys, battler, partySlot);
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
        && BattleMon_Get(battleCtx, battler, BATTLEMON_ATTACK_STAGE, NULL) < 12) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_ATTACK_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_DEF_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_DEFENSE_STAGE, NULL) < 12) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_DEFENSE_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_SPATK_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_SP_ATTACK_STAGE, NULL) < 12) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_SP_ATTACK_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_SPDEF_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_SP_DEFENSE_STAGE, NULL) < 12) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_SP_DEFENSE_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_SPEED_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_SPEED_STAGE, NULL) < 12) {
        Battler_AddVal(battleCtx, battler, BATTLEMON_SPEED_STAGE, 1);
        result = TRUE;
    }

    if (Item_LoadParam(item, ITEM_PARAM_ACC_STAGES, HEAP_ID_BATTLE)
        && (selectedSlot == partySlot || targetSlot == partySlot)
        && BattleMon_Get(battleCtx, battler, BATTLEMON_ACCURACY_STAGE, NULL) < 12) {
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
                if (Battler_Side(battleSys, battler)) {
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

            if (Pokemon_GetValue(mon, MON_DATA_EGG_LOCATION, NULL) == BattleSystem_MapHeader(battleSys)) {
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

u32 BattleSystem_BattleStatus(BattleSystem *battleSys)
{
    return battleSys->battleStatusMask;
}

enum TimeOfDay BattleSystem_Time(BattleSystem *battleSys)
{
    return battleSys->time;
}

int ov16_0223EC04(BattleSystem *battleSystem)
{
    int v0;

    switch (battleSystem->background) {
    case BACKGROUND_PLAIN:
    case BACKGROUND_WATER:
    case BACKGROUND_CITY:
    case BACKGROUND_FOREST:
    case BACKGROUND_MOUNTAIN:
    case BACKGROUND_SNOW:
        switch (battleSystem->time) {
        case TIMEOFDAY_MORNING:
        case TIMEOFDAY_DAY:
            v0 = 0;
            break;
        case TIMEOFDAY_TWILIGHT:
            v0 = 1;
            break;
        case TIMEOFDAY_NIGHT:
        case TIMEOFDAY_LATE_NIGHT:
            v0 = 2;
            break;
        }
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}

u8 ov16_0223EC58(BattleSystem *battleSystem, int param1, u8 param2)
{
    u16 v0;

    if ((BattleSystem_BattlerSlot(battleSystem, param1) == 4) && ((battleSystem->battleType & BATTLE_TYPE_2vs2) == 0)) {
        if (battleSystem->battleType & BATTLE_TYPE_LINK) {
            if ((param2 & FlagIndex(BattleSystem_Partner(battleSystem, param1))) == 0) {
                return 1;
            }
        } else {
            v0 = BattleContext_Get(battleSystem, battleSystem->battleCtx, 12, 0) & 0xffff;

            if (((BattleContext_Get(battleSystem, battleSystem->battleCtx, 8, 0) == 14) && (v0 > 16)) || (param2 & FlagIndex(0))) {
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
        for (*outPartySlot = 0; *outPartySlot < 6; (*outPartySlot)++) {
            if (dto->leveledUpMonsMask & FlagIndex(*outPartySlot)) {
                dto->leveledUpMonsMask &= (FlagIndex(*outPartySlot) ^ 0xFFFFFFFF);
                break;
            }
        }

        if (*outPartySlot < 6) {
            mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLE_SIDE_PLAYER], *outPartySlot);
            species = Pokemon_GetEvolutionTargetSpecies(dto->parties[BATTLE_SIDE_PLAYER], mon, EVO_CLASS_BY_LEVEL, dto->mapEvolutionMethod, outEvoType);
            if (species) {
                return species;
            }
        }
    }

    return species;
}

u8 ov16_0223ED60(BattleSystem *battleSystem)
{
    return battleSystem->unk_23F8;
}

u8 ov16_0223ED6C(BattleSystem *battleSystem)
{
    GF_ASSERT(battleSystem->battleCtx != NULL);
    return BattleContext_Get(battleSystem, battleSystem->battleCtx, 5, NULL);
}

int BattleSystem_NumSafariBalls(BattleSystem *battleSystem)
{
    return battleSystem->safariBalls;
}

void BattleSystem_SetSafariBalls(BattleSystem *battleSystem, int param1)
{
    battleSystem->safariBalls = param1;
}

Options *BattleSystem_GetOptions(BattleSystem *battleSystem)
{
    return battleSystem->options;
}

BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys)
{
    if ((battleSys->battleType & BATTLE_TYPE_LINK)
        && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        return TRUE;
    }

    return Options_BattleScene(battleSys->options) == OPTIONS_BATTLE_SCENE_ON;
}

int ov16_0223EDE0(BattleSystem *battleSystem)
{
    return Options_Frame(battleSystem->options);
}

u8 BattleSystem_TextSpeed(BattleSystem *battleSystem)
{
    if ((battleSystem->battleType & 0x4) && ((battleSystem->battleStatusMask & 0x10) == 0)) {
        return 1;
    }

    return Options_TextFrameDelay(battleSystem->options);
}

int BattleSystem_Ruleset(BattleSystem *battleSystem)
{
    return Options_BattleStyle(battleSystem->options);
}

PokemonAnimationSys *BattleSystem_GetPokemonAnimationSystem(BattleSystem *battleSystem)
{
    return battleSystem->pokemonAnimationSys;
}

ChatotCry *BattleSystem_ChatotVoice(BattleSystem *battleSystem, int param1)
{
    if ((battleSystem->battleType & BATTLE_TYPE_2vs2) || ((battleSystem->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSystem, param1) & 0x1))) {
        return battleSystem->unk_78[param1];
    } else if (battleSystem->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSystem->unk_78[param1 & 1];
    } else {
        return battleSystem->unk_78[param1];
    }
}

void BattleSystem_SetBurmyForm(BattleSystem *battleSys)
{
    int i, form;

    if (battleSys->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    for (i = 0; i < BattleSystem_PartyCount(battleSys, 0); i++) {
        Pokemon *mon = BattleSystem_PartyPokemon(battleSys, 0, i);
        u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL);

        if (species == SPECIES_BURMY && (battleSys->unk_2414[0] & FlagIndex(i))) {
            switch (BattleSystem_Terrain(battleSys)) {
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

void ov16_0223EF2C(BattleSystem *battleSystem, int param1, int param2)
{
    battleSystem->unk_2414[param1] |= FlagIndex(param2);
}

void ov16_0223EF48(BattleSystem *battleSystem, Pokemon *param1)
{
    if (battleSystem->poketch) {
        Poketch_PokemonHistoryEnqueue(battleSystem->poketch, Pokemon_GetBoxPokemon(param1));
    }
}

void ov16_0223EF68(BattleSystem *battleSystem, Pokemon *param1)
{
    sub_0206D160(battleSystem->unk_9C, param1, battleSystem->resultMask, battleSystem->unk_241E, HEAP_ID_BATTLE);
}

void ov16_0223EF8C(BattleSystem *battleSystem)
{
    NNSG2dImageProxy *v0;
    int v1, v2, v3, v4, v5, v6;
    u8 *v7;

    battleSystem->unk_21C = Heap_Alloc(HEAP_ID_BATTLE, 0x10000);
    battleSystem->unk_220 = Heap_Alloc(HEAP_ID_BATTLE, 0x200);

    MI_CpuCopy32((void *)(HW_BG_VRAM + 0x10000), battleSystem->unk_21C, 0x10000);
    MI_CpuCopy32(PaletteData_GetUnfadedBuffer(battleSystem->paletteSys, 0), battleSystem->unk_220, HW_BG_PLTT_SIZE);

    v7 = G2_GetOBJCharPtr();
    v0 = Sprite_GetImageProxy(battleSystem->unk_17C[1].unk_00->sprite);
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
                    battleSystem->unk_21C[v2 * 0x800 + v1 * 0x40 + v6] = v5 + 0x70;
                }
            }
        }
    }

    v7 = G2_GetOBJCharPtr();
    v0 = Sprite_GetImageProxy(battleSystem->unk_17C[0].unk_00->sprite);
    v7 += v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN];

    for (v6 = 0; v6 < 0x40 * 32; v6++) {
        if (v6 & 1) {
            v5 = (v7[v6 / 2] & 0xf0) >> 4;
        } else {
            v5 = (v7[v6 / 2] & 0xf);
        }

        if (v5) {
            battleSystem->unk_21C[19 * 0x800 + v6] = v5 + 0x70;
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
                    battleSystem->unk_21C[v2 * 0x800 + v1 * 0x40 + v6] = v5 + 0x70;
                }
            }
        }
    }

    Bg_LoadTiles(battleSystem->unk_04, 3, battleSystem->unk_21C, 0x10000, 0);

    ov16_02268700(&battleSystem->unk_17C[0]);
    ov16_02268700(&battleSystem->unk_17C[1]);
}

u8 *ov16_0223F1E8(BattleSystem *battleSystem)
{
    return battleSystem->unk_21C;
}

u16 *ov16_0223F1F0(BattleSystem *battleSystem)
{
    return battleSystem->unk_220;
}

int ov16_0223F1F8(BattleSystem *battleSystem)
{
    return battleSystem->unk_2424;
}

u16 *ov16_0223F204(BattleSystem *battleSystem)
{
    return &battleSystem->unk_2224[0];
}

u16 *ov16_0223F210(BattleSystem *battleSystem)
{
    return &battleSystem->unk_2304[0];
}

int BattleSystem_FieldWeather(BattleSystem *battleSys)
{
    return battleSys->fieldWeather;
}

u8 ov16_0223F228(BattleSystem *battleSystem)
{
    return battleSystem->unk_241D;
}

void ov16_0223F234(BattleSystem *battleSystem, u8 param1)
{
    battleSystem->unk_241D = param1;
}

int ov16_0223F240(BattleSystem *battleSystem)
{
    return battleSystem->unk_242C;
}

void ov16_0223F24C(BattleSystem *battleSystem, int param1)
{
    if (battleSystem->battleStatusMask & 0x10) {
        return;
    }

    GameRecords_IncrementRecordValue(battleSystem->records, param1);
}

void ov16_0223F268(BattleSystem *battleSystem)
{
    if (battleSystem->battleStatusMask & 0x10) {
        return;
    }

    GameRecords_IncrementTrainerScore(battleSystem->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
}

void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags)
{
    battleSys->commandSelectionFlags = flags;
}

void ov16_0223F290(BattleSystem *battleSystem, int param1)
{
    battleSystem->unk_2440 = param1;
}

WaitDial *Battle_GetWaitDial(BattleSystem *battleSystem)
{
    return battleSystem->waitDial;
}

void Battle_SetWaitDial(BattleSystem *battleSystem, WaitDial *waitDial)
{
    battleSystem->waitDial = waitDial;
}

PokemonSpriteData *ov16_0223F2AC(BattleSystem *battleSystem, int idx)
{
    return &battleSystem->pokemonSpriteDataArray[idx];
}

u8 *ov16_0223F2B8(PokemonSpriteData *pokemonSpriteData, int idx)
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

void ov16_0223F314(BattleSystem *battleSystem, int param1)
{
    battleSystem->unk_23F9 = param1;
}

void ov16_0223F320(BattleSystem *battleSystem, u8 *param1)
{
    battleSystem->unk_23F0 = param1;
}

void ov16_0223F32C(BattleSystem *battleSystem, u8 *param1)
{
    battleSystem->unk_23F4 = param1;
}

void ov16_0223F338(BattleSystem *battleSystem, u8 param1)
{
    battleSystem->unk_23F0[0] = param1;
}

void ov16_0223F344(BattleSystem *battleSystem, u8 param1)
{
    battleSystem->unk_23F4[0] = param1;
}

void ov16_0223F350(BattleSystem *battleSystem, u8 param1)
{
    battleSystem->unk_23FA = param1;
}

void *ov16_0223F35C(BattleSystem *battleSystem, int param1)
{
    return ov16_02263B08(battleSystem->battlers[param1]);
}

void ov16_0223F36C(BattleSystem *battleSystem)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        v1 = ov16_02263B08(battleSystem->battlers[v0]);

        v1->battleSys = battleSystem;
        v1->type = Healthbar_Type(Battler_Type(battleSystem->battlers[v0]), BattleSystem_BattleType(battleSystem));

        ov16_022672C4(v1);
        Healthbar_Enable(v1, 0);
    }
}

void ov16_0223F3BC(BattleSystem *battleSystem)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        v1 = ov16_02263B08(battleSystem->battlers[v0]);

        if (v1->curHP) {
            Healthbar_Enable(v1, 1);
        }
    }
}

void ov16_0223F3EC(BattleSystem *battleSystem)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        v1 = ov16_02263B08(battleSystem->battlers[v0]);
        Healthbar_Enable(v1, 0);
    }
}

void ov16_0223F414(BattleSystem *battleSystem)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        v1 = ov16_02263B08(battleSystem->battlers[v0]);
        ov16_02267360(v1);
    }
}

u8 BattleSystem_ResultMask(BattleSystem *battleSystem)
{
    return battleSystem->resultMask;
}

void BattleSystem_SetResultFlag(BattleSystem *battleSystem, u8 param1)
{
    battleSystem->resultMask = param1;
}

u8 ov16_0223F450(BattleSystem *battleSystem)
{
    return battleSystem->unk_23FB_3;
}

void BattleSystem_SetRedHPSoundFlag(BattleSystem *battleSystem, u8 param1)
{
    battleSystem->unk_23FB_3 = param1;
}

u8 ov16_0223F47C(BattleSystem *battleSystem)
{
    return battleSystem->unk_23FB_5;
}

void ov16_0223F48C(BattleSystem *battleSystem, u8 param1)
{
    GF_ASSERT(param1 < 15);
    battleSystem->unk_23FB_5 = param1;
}

void ov16_0223F4B0(BattleSystem *battleSystem, int param1)
{
    battleSystem->unk_2438 = param1;
}

u16 BattleSystem_RandNext(BattleSystem *battleSystem)
{
    battleSystem->unk_2444 = battleSystem->unk_2444 * 1103515245L + 24691;
    return (u16)(battleSystem->unk_2444 / 65536L);
}

u32 ov16_0223F4E8(BattleSystem *battleSystem)
{
    return battleSystem->unk_2448;
}

void ov16_0223F4F4(BattleSystem *battleSystem, u32 param1)
{
    battleSystem->unk_2448 = param1;
}

void BattleSystem_Record(BattleSystem *battleSystem, int param1, u8 param2)
{
    if (((battleSystem->battleStatusMask & 0x10) == 0) && (battleSystem->unk_245C[param1] < 0x400)) {
        sub_0202F868(param1, battleSystem->unk_245C[param1], param2);
        battleSystem->unk_245C[param1]++;
    }
}

BOOL ov16_0223F530(BattleSystem *battleSystem, int param1, u8 *param2)
{
    BOOL v0;

    *param2 = 0xff;

    if ((battleSystem->battleStatusMask & 0x10) && (battleSystem->unk_245C[param1] < 0x400)) {
        *param2 = sub_0202F884(param1, battleSystem->unk_245C[param1]);
        battleSystem->unk_245C[param1]++;
        v0 = 0;
    } else if ((battleSystem->battleStatusMask & 0x10) && (battleSystem->unk_245C[param1] >= 0x400)) {
        v0 = 1;
    }

    return v0;
}

u8 ov16_0223F58C(BattleSystem *battleSystem, u8 *param1)
{
    u8 v0, v1;
    u8 v2 = 0;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        if (battleSystem->unk_245C[v0] != battleSystem->unk_244C[v0]) {
            param1[v2++] = v0;
            param1[v2++] = battleSystem->unk_245C[v0] - battleSystem->unk_244C[v0];

            for (v1 = 0; v1 < battleSystem->unk_245C[v0] - battleSystem->unk_244C[v0]; v1++) {
                param1[v2++] = sub_0202F884(v0, battleSystem->unk_244C[v0] + v1);
            }

            battleSystem->unk_244C[v0] = battleSystem->unk_245C[v0];
        }
    }

    GF_ASSERT(v2 <= 28);
    return v2;
}

void ov16_0223F638(BattleSystem *battleSystem, u16 param1, u8 *param2)
{
    int v0;
    u8 v1;
    u8 v2;
    u8 v3 = 0;

    if ((battleSystem->battleType & BATTLE_TYPE_LINK) == FALSE) {
        return;
    }

    if (battleSystem->unk_23F8) {
        return;
    }

    while (param1) {
        v1 = ov16_0223F6D4(param2, &v3, &param1);
        v2 = ov16_0223F6D4(param2, &v3, &param1);

        for (v0 = 0; v0 < v2; v0++) {
            sub_0202F868(v1, battleSystem->unk_2454[v1] + v0, ov16_0223F6D4(param2, &v3, &param1));
        }

        battleSystem->unk_2454[v1] += v2;
    }
}

static u8 ov16_0223F6D4(u8 *param0, u8 *param1, u16 *param2)
{
    param2[0]--;
    return param0[param1[0]++];
}

u16 ov16_0223F6E4(BattleSystem *battleSystem)
{
    return battleSystem->unk_2442;
}

int ov16_0223F6F0(BattleSystem *battleSystem, u16 param1)
{
    return battleSystem->unk_2464[param1];
}

u16 BattleSystem_TrainerItems(BattleSystem *battleSystem, int param1, int param2)
{
    return battleSystem->trainers[param1].header.items[param2];
}

u32 BattleSystem_RecordingStopped(BattleSystem *battleSystem)
{
    return battleSystem->recordingStopped;
}

void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag)
{
    if (((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) || (battleSys->recordingStopped) || (BattleContext_Get(battleSys, battleSys->battleCtx, 13, 0) == 43) || (BattleContext_Get(battleSys, battleSys->battleCtx, 14, 0) == 43)) {
        return;
    }

    ov16_0226CEB0(battleSys->unk_198, flag);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 16, 2, HEAP_ID_BATTLE);
    Sound_StopWaveOutAndSequences();
    Sound_SetMasterVolume(0);

    battleSys->recordingStopped = 1;

    return;
}

BOOL ov16_0223F7A4(BattleSystem *battleSystem)
{
    if (((battleSystem->battleStatusMask & 0x10) == 0) || (battleSystem->recordingStopped) || (BattleContext_Get(battleSystem, battleSystem->battleCtx, 13, 0) == 43) || (BattleContext_Get(battleSystem, battleSystem->battleCtx, 14, 0) == 43)) {
        return 0;
    }

    return 1;
}

void BattleSystem_ShowStopPlaybackButton(BattleSystem *battleSys)
{
    if ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE
        || battleSys->playbackStopButton) {
        return;
    }

    battleSys->playbackStopButton = ov16_0226E148(battleSys);
}

u8 BattleSystem_RecordedChatter(BattleSystem *battleSystem, int param1)
{
    if ((battleSystem->battleType & BATTLE_TYPE_2vs2) || ((battleSystem->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSystem, param1) & 0x1))) {
        return battleSystem->unk_247C[param1];
    } else if (battleSystem->battleType & BATTLE_TYPE_DOUBLES) {
        return battleSystem->unk_247C[param1 & 1];
    } else {
        return battleSystem->unk_247C[param1];
    }
}

void ov16_0223F858(BattleSystem *battleSystem, u8 *param1)
{
    int v0;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        param1[Battler_Type(battleSystem->battlers[v0])] = v0;
    }
}

void ov16_0223F87C(BattleSystem *battleSystem, u8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = 0xff;
    }

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        param1[v0] = Battler_Type(battleSystem->battlers[v0]);
    }
}

void ov16_0223F8AC(BattleSystem *battleSystem, PokemonSprite **param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = NULL;
    }

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        param1[v0] = ov16_02263AFC(battleSystem->battlers[v0]);
    }
}

void BattleSystem_SetGaugePriority(BattleSystem *battleSystem, int param1)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < battleSystem->maxBattlers; v0++) {
        v1 = ov16_02263B08(battleSystem->battlers[v0]);
        ov16_022675D8(v1, param1);
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

void BattleSystem_DexFlagSeen(BattleSystem *battleSystem, int param1)
{
    int battlerType = Battler_Type(battleSystem->battlers[param1]);
    int v2 = BattleContext_Get(battleSystem, battleSystem->battleCtx, 2, param1);
    Pokemon *mon = BattleSystem_PartyPokemon(battleSystem, param1, v2);

    if ((battleSystem->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)) == FALSE) {
        if ((battlerType & BATTLER_THEM)
            || battleSystem->battleType == BATTLE_TYPE_AI_PARTNER
            || battleSystem->battleType == (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI)) {
            Pokedex_Encounter(battleSystem->pokedex, mon);
        }
    }

    if (((battlerType & BATTLER_THEM) == FALSE)
        && (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_BURMY)) {
        Pokedex_Capture(battleSystem->pokedex, mon);
    }
}

void ov16_0223F9A0(BattleSystem *battleSystem, int param1)
{
    int v0 = Battler_Type(battleSystem->battlers[param1]);

    if ((battleSystem->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)) == 0) {
        if (v0 & 0x1) {
            {
                Pokemon *v1;
                int v2;

                v2 = BattleContext_Get(battleSystem, battleSystem->battleCtx, 2, param1);
                v1 = BattleSystem_PartyPokemon(battleSystem, param1, v2);

                Pokedex_Capture(battleSystem->pokedex, v1);
            }
        }
    }
}

BOOL BattleSystem_CaughtSpecies(BattleSystem *battleSys, int species)
{
    return Pokedex_HasCaughtSpecies(battleSys->pokedex, species);
}

void Battle_SetDefaultBlend(void)
{
    G2_BlendNone();
}

u8 ov16_0223F9FC(BattleSystem *battleSys, int trainerID, int param2, enum TrainerMessageType msgType, int param4)
{
    Window *v0 = BattleSystem_Window(battleSys, 0);
    int v1;

    if (battleSys->battleType & BATTLE_TYPE_FRONTIER) {
        if (trainerID == 10000) {
            {
                Strbuf *v2;

                if (msgType == TRMSG_WIN) {
                    v2 = sub_02014B34(&battleSys->trainers[param2].winMsg, HEAP_ID_BATTLE);
                } else {
                    v2 = sub_02014B34(&battleSys->trainers[param2].loseMsg, HEAP_ID_BATTLE);
                }

                Window_FillTilemap(v0, 0xff);
                v1 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, v2, 0, 0, param4, BattleMessage_Callback);
                Strbuf_Free(v2);
            }
        } else {
            {
                Strbuf *v4;
                int entryID;
                u32 bankID;
                int v7;

                if (msgType == TRMSG_WIN) {
                    entryID = trainerID * 3 + 1;
                } else {
                    entryID = trainerID * 3 + 2;
                }

                for (v7 = 0; v7 < 4; v7++) {
                    if (TrainerInfo_GameCode(battleSys->trainerInfo[v7]) == 0) {
                        break;
                    }
                }

                if (v7 == 4) {
                    bankID = TEXT_BANK_FRONTIER_TRAINER_MESSAGES;
                } else {
                    bankID = TEXT_BANK_UNK_0613;
                }

                MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, HEAP_ID_BATTLE);
                v4 = MessageLoader_GetNewStrbuf(loader, entryID);

                Window_FillTilemap(v0, 0xff);

                v1 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, v4, 0, 0, param4, BattleMessage_Callback);
                Strbuf_Free(v4);
                MessageLoader_Free(loader);
            }
        }
    } else {
        Trainer_LoadMessage(trainerID, msgType, battleSys->msgBuffer, HEAP_ID_BATTLE);
        Window_FillTilemap(v0, 0xff);
        v1 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, battleSys->msgBuffer, 0, 0, param4, BattleMessage_Callback);
    }

    return v1;
}

u8 BattleMessage_Print(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg, int renderDelay)
{
    Window *textWindow = BattleSystem_Window(battleSys, 0);

    BattleMessage_CheckSide(battleSys, battleMsg);
    BattleMessage_FillFormatBuffers(battleSys, battleMsg);
    BattleMessage_Format(battleSys, msgLoader, battleMsg);

    Window_FillTilemap(textWindow, 0xFF);

    return Text_AddPrinterWithParams(textWindow, FONT_MESSAGE, battleSys->msgBuffer, 0, 0, renderDelay, BattleMessage_Callback);
}

u8 BattleMessage_PrintToWindow(BattleSystem *battleSystem, Window *param1, MessageLoader *param2, BattleMessage *param3, int param4, int param5, int param6, int param7, int param8)
{
    int v0;

    BattleMessage_CheckSide(battleSystem, param3);
    BattleMessage_FillFormatBuffers(battleSystem, param3);
    BattleMessage_Format(battleSystem, param2, param3);

    if (param6 & 0x1) {
        Window_FillTilemap(param1, 0xff);
    }

    if (param6 & 0x2) {
        v0 = param7 - Font_CalcStrbufWidth(FONT_SYSTEM, battleSystem->msgBuffer, 0);
    } else {
        v0 = 0;
    }

    return Text_AddPrinterWithParams(param1, FONT_SYSTEM, battleSystem->msgBuffer, param4 + v0, param5, param8, BattleMessage_Callback);
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
    u32 battleType = BattleSystem_BattleType(battleSys);

    if (battleMsg->tags & TAG_GLOBAL_MESSAGE) {
        return;
    }

    if (battleMsg->tags & TAG_SIDE_LOCAL_MESSAGE) {
        if (Battler_Side(battleSys, battleMsg->battler)) {
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
        if (Battler_Side(battleSys, battleMsg->params[0] & 0xFF)) {
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
        if (Battler_Side(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id++;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id++;
            }
        }
        break;

    case TAG_MOVE_SIDE:
        if (Battler_Side(battleSys, battleMsg->params[1] & 0xFF)) {
            battleMsg->id++;
        }
        break;

    case TAG_MOVE_NICKNAME:
    case TAG_ABILITY_NICKNAME:
    case TAG_ITEM_NICKNAME_FLAVOR:
        if (Battler_Side(battleSys, battleMsg->params[1] & 0xFF)) {
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
        if (Battler_Side(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id += 3;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id += 2;
            }

            if (Battler_Side(battleSys, battleMsg->params[1] & 0xFF)) {
                battleMsg->id++;
            }
        } else if (Battler_Side(battleSys, battleMsg->params[1] & 0xFF)) {
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
        if (Battler_Side(battleSys, battleMsg->params[0] & 0xFF)) {
            battleMsg->id += 3;

            if (battleType & BATTLE_TYPE_TRAINER) {
                battleMsg->id += 2;
            }

            if (Battler_Side(battleSys, battleMsg->params[2] & 0xFF)) {
                battleMsg->id++;
            }
        } else if (Battler_Side(battleSys, battleMsg->params[2] & 0xFF)) {
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
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_MOVE:
    case TAG_MOVE_SIDE:
        BattleMessage_MoveName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_STAT:
        BattleMessage_StatName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_ITEM:
        BattleMessage_ItemName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_NUMBER:
        BattleMessage_Number(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_NUMBERS:
        BattleMessage_NumberDigits(battleSys, 0, battleMsg->params[0], battleMsg->digits);
        break;

    case TAG_TRNAME:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        break;

    case TAG_NICKNAME_NICKNAME:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_MOVE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_MoveName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_ABILITY:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_STAT:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_StatName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_TYPE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TypeName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_POKE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_PokemonName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_ITEM:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_POFFIN:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_PoffinName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_NUM:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Number(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_TRNAME:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_BOX:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_PCBoxName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_MOVE_NICKNAME:
        BattleMessage_MoveName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_MOVE_MOVE:
        BattleMessage_MoveName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_MoveName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_ABILITY_NICKNAME:
        BattleMessage_AbilityName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_ITEM_MOVE:
        BattleMessage_ItemName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_MoveName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NUMBER_NUMBER:
        BattleMessage_Number(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Number(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_TRNAME:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_NICKNAME:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_ITEM:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRNAME_NUM:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Number(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_TRCLASS_TRNAME:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        break;

    case TAG_NICKNAME_NICKNAME_MOVE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_MoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_NICKNAME_ABILITY:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_AbilityName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_NICKNAME_ITEM:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_ItemName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_MOVE_MOVE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_MoveName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_MoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_MOVE_NUMBER:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_MoveName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Number(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_MOVE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_MoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_ITEM:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_ItemName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_STAT:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_StatName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_TYPE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_TypeName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_STATUS:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_StatusName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NUMBER:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Number(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_NICKNAME:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_MOVE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_MoveName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_STAT:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_StatName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ITEM_STATUS:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_StatusName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_BOX_BOX:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_PCBoxName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_PCBoxName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_ITEM_NICKNAME_FLAVOR:
        BattleMessage_ItemName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_FlavorName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_TRCLASS_TRNAME_ITEM:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_ItemName(battleSys, 2, battleMsg->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_MoveName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_AbilityName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_AbilityName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_StatName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        BattleMessage_Nickname(battleSys, 0, battleMsg->params[0]);
        BattleMessage_ItemName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_ItemName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
        BattleMessage_TrainerName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_Nickname(battleSys, 1, battleMsg->params[1]);
        BattleMessage_TrainerName(battleSys, 2, battleMsg->params[2]);
        BattleMessage_Nickname(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_Nickname(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_TrainerName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_TrainerClassName(battleSys, 2, battleMsg->params[2]);
        BattleMessage_TrainerName(battleSys, 3, battleMsg->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_TrainerClassName(battleSys, 0, battleMsg->params[0]);
        BattleMessage_TrainerName(battleSys, 1, battleMsg->params[1]);
        BattleMessage_Nickname(battleSys, 2, battleMsg->params[2]);
        BattleMessage_TrainerClassName(battleSys, 3, battleMsg->params[3]);
        BattleMessage_TrainerName(battleSys, 4, battleMsg->params[4]);
        BattleMessage_Nickname(battleSys, 5, battleMsg->params[5]);
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void BattleMessage_Nickname(BattleSystem *battleSystem, u32 param1, int param2)
{
    Pokemon *v0 = BattleSystem_PartyPokemon(battleSystem, param2 & 0xff, (param2 & 0xff00) >> 8);
    StringTemplate_SetNickname(battleSystem->strFormatter, param1, &v0->box);
}

static void BattleMessage_MoveName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetMoveName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_ItemName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetItemName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_Number(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetNumber(battleSystem->strFormatter, param1, param2, 5, 0, 1);
}

static void BattleMessage_NumberDigits(BattleSystem *battleSystem, u32 param1, int param2, int param3)
{
    if (param3) {
        StringTemplate_SetNumber(battleSystem->strFormatter, param1, param2, param3, 1, 1);
    } else {
        StringTemplate_SetNumber(battleSystem->strFormatter, param1, param2, 5, 1, 1);
    }
}

static void BattleMessage_TypeName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetPokemonTypeName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_AbilityName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetAbilityName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_StatName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetPokemonStatName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_StatusName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetStatusConditionName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_PokemonName(BattleSystem *battleSystem, u32 param1, int param2)
{
    Pokemon *v0 = BattleSystem_PartyPokemon(battleSystem, param2 & 0xff, (param2 & 0xff00) >> 8);
    StringTemplate_SetSpeciesName(battleSystem->strFormatter, param1, &v0->box);
}

static void BattleMessage_PoffinName(BattleSystem *battleSystem, u32 param1, int param2)
{
    return;
}

static void BattleMessage_FlavorName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetFlavorName(battleSystem->strFormatter, param1, param2);
}

static void BattleMessage_TrainerClassName(BattleSystem *battleSystem, u32 param1, int param2)
{
    Trainer *v0 = BattleSystem_GetTrainer(battleSystem, param2);
    StringTemplate_SetTrainerClassNameBattle(battleSystem->strFormatter, param1, v0);
}

static void BattleMessage_TrainerName(BattleSystem *battleSystem, u32 param1, int param2)
{
    Trainer *v0 = BattleSystem_GetTrainer(battleSystem, param2);
    StringTemplate_SetTrainerNameBattle(battleSystem->strFormatter, param1, v0);
}

static void BattleMessage_PCBoxName(BattleSystem *battleSystem, u32 param1, int param2)
{
    StringTemplate_SetPCBoxName(battleSystem->strFormatter, param1, battleSystem->pcBoxes, param2);
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
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(msgLoader, battleMsg->id);
    StringTemplate_Format(battleSys->strFormatter, battleSys->msgBuffer, strbuf);
    Strbuf_Free(strbuf);
}

static BOOL BattleMessage_Callback(TextPrinterTemplate *param0, u16 param1)
{
    BOOL v0 = 0;

    switch (param1) {
    case 1:
        v0 = Sound_IsAnyEffectPlaying();
        break;
    case 2:
        v0 = Sound_IsBGMPausedByFanfare();
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

    return v0;
}
