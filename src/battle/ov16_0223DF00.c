#include "battle/ov16_0223DF00.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/game_options.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "consts/battle.h"
#include "consts/game_records.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/trainer_data.h"

#include "battle/battle_context.h"
#include "battle/battle_display.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/common.h"
#include "battle/healthbar.h"
#include "battle/ov16_02268520.h"
#include "battle/ov16_0226871C.h"
#include "battle/ov16_0226E148.h"
#include "battle/struct_ov16_0223E0C8.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_02268520.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "overlay006/battle_params.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

#include "bag.h"
#include "cell_actor.h"
#include "enums.h"
#include "flags.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "poketch_data.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02014A84.h"
#include "unk_02018340.h"
#include "unk_0202631C.h"
#include "unk_0202F1D4.h"
#include "unk_0206CCB0.h"

BGL *BattleSystem_BGL(BattleSystem *param0);
u32 BattleSystem_BattleType(BattleSystem *param0);
BattleContext *BattleSystem_Context(BattleSystem *param0);
BattlerData *BattleSystem_BattlerData(BattleSystem *param0, int param1);
int BattleSystem_MaxBattlers(BattleSystem *param0);
Party *BattleSystem_Party(BattleSystem *param0, int param1);
int BattleSystem_PartyCount(BattleSystem *battleSys, int battler);
Pokemon *BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot);
UnkStruct_02007768 *ov16_0223E000(BattleSystem *param0);
UnkStruct_ov12_0221FCDC *ov16_0223E008(BattleSystem *param0);
SpriteRenderer *ov16_0223E010(BattleSystem *param0);
SpriteGfxHandler *ov16_0223E018(BattleSystem *param0);
UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *param0, int param1);
UnkStruct_ov16_02268A14 *ov16_0223E02C(BattleSystem *param0);
UnkStruct_0200C440 *ov16_0223E04C(BattleSystem *param0);
UnkStruct_0200C440 *ov16_0223E054(BattleSystem *param0);
MessageLoader *BattleSystem_MessageLoader(BattleSystem *param0);
MessageLoader *ov16_0223E060(BattleSystem *param0);
PaletteData *BattleSystem_PaletteSys(BattleSystem *param0);
PokedexData *ov16_0223E068(BattleSystem *param0);
u8 *ov16_0223E06C(BattleSystem *param0);
u8 *ov16_0223E074(BattleSystem *param0);
u16 *ov16_0223E080(BattleSystem *param0);
u16 *ov16_0223E08C(BattleSystem *param0);
u16 *ov16_0223E098(BattleSystem *param0);
u16 *ov16_0223E0A4(BattleSystem *param0);
u16 *ov16_0223E0B0(BattleSystem *param0);
u16 *ov16_0223E0BC(BattleSystem *param0);
UnkStruct_ov16_0223E0C8 *ov16_0223E0C8(BattleSystem *param0);
StringTemplate *BattleSystem_StringTemplate(BattleSystem *param0);
Strbuf *ov16_0223E0D4(BattleSystem *param0);
u16 Battler_TrainerID(BattleSystem *param0, int param1);
TrainerData *BattleSystem_TrainerData(BattleSystem *param0, int param1);
TrainerInfo *BattleSystem_TrainerInfo(BattleSystem *battleSys, int battler);
Bag *BattleSystem_Bag(BattleSystem *param0);
UnkStruct_0207D99C *BattleSystem_BagCursor(BattleSystem *param0);
u32 ov16_0223E1B4(BattleSystem *param0, int param1);
int BattleSystem_BattlerOfType(BattleSystem *battleSys, int type);
u8 BattleSystem_BattlerSlot(BattleSystem *battleSys, int battler);
u8 Battler_Side(BattleSystem *param0, int param1);
void *ov16_0223E220(BattleSystem *param0);
PCBoxes *ov16_0223E228(BattleSystem *param0);
enum Terrain BattleSystem_Terrain(BattleSystem *battleSys);
int ov16_0223E240(BattleSystem *param0);
int BattleSystem_MapHeader(BattleSystem *param0);
int BattleSystem_Partner(BattleSystem *battleSys, int battler);
int BattleSystem_EnemyInSlot(BattleSystem *battleSys, int attacker, int slot);
BOOL BattleSystem_UseBagItem(BattleSystem *battleSys, int battler, int partySlot, int moveSlot, int item);
u32 ov16_0223EBEC(BattleSystem *param0);
enum Time BattleSystem_Time(BattleSystem *battleSys);
int ov16_0223EC04(BattleSystem *param0);
u8 ov16_0223EC58(BattleSystem *param0, int param1, u8 param2);
u16 ov16_0223ECC4(BattleParams *param0, int *param1, int *param2);
u8 ov16_0223ED60(BattleSystem *param0);
u8 ov16_0223ED6C(BattleSystem *param0);
int BattleSystem_NumSafariBalls(BattleSystem *param0);
void BattleSystem_SetSafariBalls(BattleSystem *param0, int param1);
Options *ov16_0223EDA4(BattleSystem *param0);
BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys);
int ov16_0223EDE0(BattleSystem *param0);
u8 BattleSystem_TextSpeed(BattleSystem *param0);
int BattleSystem_Ruleset(BattleSystem *param0);
PokemonAnimationSys *ov16_0223EE28(BattleSystem *param0);
ChatotCry *BattleSystem_ChatotVoice(BattleSystem *param0, int param1);
void ov16_0223EE70(BattleSystem *param0);
void ov16_0223EF2C(BattleSystem *param0, int param1, int param2);
void ov16_0223EF48(BattleSystem *param0, Pokemon *param1);
void ov16_0223EF68(BattleSystem *param0, Pokemon *param1);
void ov16_0223EF8C(BattleSystem *param0);
u8 *ov16_0223F1E8(BattleSystem *param0);
u16 *ov16_0223F1F0(BattleSystem *param0);
int ov16_0223F1F8(BattleSystem *param0);
u16 *ov16_0223F204(BattleSystem *param0);
u16 *ov16_0223F210(BattleSystem *param0);
int BattleSystem_FieldWeather(BattleSystem *param0);
u8 ov16_0223F228(BattleSystem *param0);
void ov16_0223F234(BattleSystem *param0, u8 param1);
int ov16_0223F240(BattleSystem *param0);
void ov16_0223F24C(BattleSystem *param0, int param1);
void ov16_0223F268(BattleSystem *param0);
void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags);
void ov16_0223F290(BattleSystem *param0, int param1);
void *Battle_WaitDial(BattleSystem *param0);
void Battle_SetWaitDial(BattleSystem *param0, void *param1);
u8 *ov16_0223F2B8(UnkStruct_ov16_0223E0C8 *param0, int param1);
void ov16_0223F2CC(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2);
void ov16_0223F2E4(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2);
void ov16_0223F2FC(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2);
void ov16_0223F314(BattleSystem *param0, int param1);
void ov16_0223F320(BattleSystem *param0, u8 *param1);
void ov16_0223F32C(BattleSystem *param0, u8 *param1);
void ov16_0223F338(BattleSystem *param0, u8 param1);
void ov16_0223F344(BattleSystem *param0, u8 param1);
void ov16_0223F350(BattleSystem *param0, u8 param1);
void ov16_0223F36C(BattleSystem *param0);
void ov16_0223F3BC(BattleSystem *param0);
void ov16_0223F3EC(BattleSystem *param0);
void ov16_0223F414(BattleSystem *param0);
u8 BattleSystem_ResultMask(BattleSystem *param0);
void BattleSystem_SetResultFlag(BattleSystem *param0, u8 param1);
u8 ov16_0223F450(BattleSystem *param0);
void BattleSystem_SetRedHPSoundFlag(BattleSystem *param0, u8 param1);
u8 ov16_0223F47C(BattleSystem *param0);
void ov16_0223F48C(BattleSystem *param0, u8 param1);
void ov16_0223F4B0(BattleSystem *param0, int param1);
u16 BattleSystem_RandNext(BattleSystem *param0);
u32 ov16_0223F4E8(BattleSystem *param0);
void ov16_0223F4F4(BattleSystem *param0, u32 param1);
void BattleSystem_Record(BattleSystem *param0, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem *param0, int param1, u8 *param2);
u8 ov16_0223F58C(BattleSystem *param0, u8 *param1);
void ov16_0223F638(BattleSystem *param0, u16 param1, u8 *param2);
u16 ov16_0223F6E4(BattleSystem *param0);
int ov16_0223F6F0(BattleSystem *param0, u16 param1);
u16 BattleSystem_TrainerItems(BattleSystem *param0, int param1, int param2);
u32 BattleSystem_RecordingStopped(BattleSystem *param0);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem *param0);
void BattleSystem_ShowStopPlaybackButton(BattleSystem *param0);
u8 BattleSystem_RecordedChatter(BattleSystem *param0, int param1);
void ov16_0223F858(BattleSystem *param0, u8 *param1);
void ov16_0223F87C(BattleSystem *param0, u8 *param1);
void ov16_0223F8AC(BattleSystem *param0, Sprite **param1);
void BattleSystem_SetGaugePriority(BattleSystem *param0, int param1);
u32 BattleSystem_CalcMoneyPenalty(Party *party, TrainerInfo *trainerInfo);
void BattleSystem_DexFlagSeen(BattleSystem *param0, int param1);
void ov16_0223F9A0(BattleSystem *param0, int param1);
BOOL BattleSystem_CaughtSpecies(BattleSystem *battleSys, int species);
void Battle_SetDefaultBlend(void);
u8 ov16_0223F9FC(BattleSystem *param0, int param1, int param2, int param3, int param4);
u8 BattleMessage_PrintToWindow(BattleSystem *param0, Window *param1, MessageLoader *param2, BattleMessage *param3, int param4, int param5, int param6, int param7, int param8);
static void BattleMessage_CheckSide(BattleSystem *battleSys, BattleMessage *battleMsg);
static void BattleMessage_FillFormatBuffers(BattleSystem *battleSys, BattleMessage *battleMsg);
static void BattleMessage_Format(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg);
static BOOL BattleMessage_Callback(TextPrinterTemplate *param0, u16 param1);
static void BattleMessage_Nickname(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_MoveName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_ItemName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_Number(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_NumberDigits(BattleSystem *param0, u32 param1, int param2, int param3);
static void BattleMessage_TypeName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_AbilityName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_StatName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_StatusName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_PokemonName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_PoffinName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_FlavorName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_TrainerClassName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_TrainerName(BattleSystem *param0, u32 param1, int param2);
static void BattleMessage_PCBoxName(BattleSystem *param0, u32 param1, int param2);
static u8 ov16_0223F6D4(u8 *param0, u8 *param1, u16 *param2);

BGL *BattleSystem_BGL(BattleSystem *param0)
{
    return param0->unk_04;
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

Party *BattleSystem_Party(BattleSystem *param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->parties[param1];
    } else if (param0->battleType & 0x2) {
        return param0->parties[param1 & 1];
    } else {
        return param0->parties[param1];
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
        || ((battleSys->battleType & BATTLE_TYPE_TAG) && (BattleSystem_BattlerSlot(battleSys, battler) & BATTLER_ENEMY_SLOT_1))) {
        return Party_GetPokemonBySlotIndex(battleSys->parties[battler], slot);
    }

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        return Party_GetPokemonBySlotIndex(battleSys->parties[battler & 1], slot);
    }

    return Party_GetPokemonBySlotIndex(battleSys->parties[battler], slot);
}

UnkStruct_02007768 *ov16_0223E000(BattleSystem *param0)
{
    return param0->unk_88;
}

UnkStruct_ov12_0221FCDC *ov16_0223E008(BattleSystem *param0)
{
    return param0->unk_8C;
}

SpriteRenderer *ov16_0223E010(BattleSystem *param0)
{
    return param0->unk_90;
}

SpriteGfxHandler *ov16_0223E018(BattleSystem *param0)
{
    return param0->unk_94;
}

UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *param0, int param1)
{
    return &param0->unk_17C[param1];
}

UnkStruct_ov16_02268A14 *ov16_0223E02C(BattleSystem *param0)
{
    return param0->unk_198;
}

PartyGauge *ov16_0223E034(BattleSystem *param0, enum PartyGaugeSide param1)
{
    return param0->unk_19C[param1];
}

void ov16_0223E040(BattleSystem *param0, enum PartyGaugeSide param1, PartyGauge *param2)
{
    param0->unk_19C[param1] = param2;
}

UnkStruct_0200C440 *ov16_0223E04C(BattleSystem *param0)
{
    return param0->unk_1A4;
}

UnkStruct_0200C440 *ov16_0223E054(BattleSystem *param0)
{
    return param0->unk_1A8;
}

MessageLoader *BattleSystem_MessageLoader(BattleSystem *param0)
{
    return param0->unk_0C;
}

MessageLoader *ov16_0223E060(BattleSystem *param0)
{
    return param0->unk_10;
}

PaletteData *BattleSystem_PaletteSys(BattleSystem *param0)
{
    return param0->unk_28;
}

PokedexData *ov16_0223E068(BattleSystem *param0)
{
    return param0->pokedex;
}

u8 *ov16_0223E06C(BattleSystem *param0)
{
    return &param0->unk_224[0];
}

u8 *ov16_0223E074(BattleSystem *param0)
{
    return &param0->unk_1224[0];
}

u16 *ov16_0223E080(BattleSystem *param0)
{
    return &param0->unk_23E4;
}

u16 *ov16_0223E08C(BattleSystem *param0)
{
    return &param0->unk_23E6;
}

u16 *ov16_0223E098(BattleSystem *param0)
{
    return &param0->unk_23E8;
}

u16 *ov16_0223E0A4(BattleSystem *param0)
{
    return &param0->unk_23EA;
}

u16 *ov16_0223E0B0(BattleSystem *param0)
{
    return &param0->unk_23EC;
}

u16 *ov16_0223E0BC(BattleSystem *param0)
{
    return &param0->unk_23EE;
}

UnkStruct_ov16_0223E0C8 *ov16_0223E0C8(BattleSystem *param0)
{
    return &param0->unk_1CC[0];
}

StringTemplate *BattleSystem_StringTemplate(BattleSystem *param0)
{
    return param0->strFormatter;
}

Strbuf *ov16_0223E0D4(BattleSystem *param0)
{
    return param0->msgBuffer;
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

TrainerData *BattleSystem_TrainerData(BattleSystem *param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return &param0->trainers[param1];
    } else if (param0->battleType & 0x2) {
        return &param0->trainers[param1 & 1];
    } else {
        return &param0->trainers[param1];
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

Bag *BattleSystem_Bag(BattleSystem *param0)
{
    return param0->unk_58;
}

UnkStruct_0207D99C *BattleSystem_BagCursor(BattleSystem *param0)
{
    return param0->unk_5C;
}

u32 ov16_0223E1B4(BattleSystem *param0, int param1)
{
    return TrainerInfo_Gender(param0->trainerInfo[param1]);
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

u8 Battler_Side(BattleSystem *param0, int param1)
{
    return Battler_Type(param0->battlers[param1]) & 1;
}

void *ov16_0223E220(BattleSystem *param0)
{
    return param0->unk_1AC;
}

PCBoxes *ov16_0223E228(BattleSystem *param0)
{
    return param0->pcBoxes;
}

enum Terrain BattleSystem_Terrain(BattleSystem *battleSys)
{
    if (battleSys->terrain > TERRAIN_MAX || battleSys->terrain < TERRAIN_PLAIN) {
        return TERRAIN_MAX;
    }

    return battleSys->terrain;
}

int ov16_0223E240(BattleSystem *param0)
{
    return param0->unk_2400;
}

int BattleSystem_MapHeader(BattleSystem *param0)
{
    return param0->unk_2404;
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
        param = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
        if (param & MON_CONDITION_SLEEP) {
            param &= ~MON_CONDITION_SLEEP;
            Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &param);

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
        param = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
        if (param & MON_CONDITION_ANY_POISON) {
            param &= ~MON_CONDITION_ANY_POISON;
            Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_ANY_POISON;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_BURN, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
        if (param & MON_CONDITION_BURN) {
            param &= ~MON_CONDITION_BURN;
            Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_BURN;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_FREEZE, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
        if (param & MON_CONDITION_FREEZE) {
            param &= ~MON_CONDITION_FREEZE;
            Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &param);

            if (selectedSlot == partySlot || targetSlot == partySlot) {
                param = BattleMon_Get(battleCtx, battler, BATTLEMON_STATUS, NULL);
                param &= ~MON_CONDITION_FREEZE;
                BattleMon_Set(battleCtx, battler, BATTLEMON_STATUS, &param);
            }

            result = TRUE;
        }
    }

    if (Item_LoadParam(item, ITEM_PARAM_HEAL_PARALYSIS, HEAP_ID_BATTLE)) {
        param = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
        if (param & MON_CONDITION_PARALYSIS) {
            param &= ~MON_CONDITION_PARALYSIS;
            Pokemon_SetValue(mon, 160, &param);

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

        if (Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + moveSlot, NULL)) {
            Pokemon_IncreaseValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, param);

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
            if (Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + moveSlot, NULL)) {
                Pokemon_IncreaseValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, param);

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
            if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) == 0) {
                param = 1;
            }
        } else {
            param = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
        }

        if (param && Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL)) {
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

            Pokemon_IncreaseValue(mon, MON_DATA_CURRENT_HP, param);

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

            if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == BattleSystem_MapHeader(battleSys)) {
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

enum Time BattleSystem_Time(BattleSystem *battleSys)
{
    return battleSys->time;
}

int ov16_0223EC04(BattleSystem *param0)
{
    int v0;

    switch (param0->unk_2400) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        switch (param0->time) {
        case 0:
        case 1:
            v0 = 0;
            break;
        case 2:
            v0 = 1;
            break;
        case 3:
        case 4:
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

u8 ov16_0223EC58(BattleSystem *param0, int param1, u8 param2)
{
    u16 v0;

    if ((BattleSystem_BattlerSlot(param0, param1) == 4) && ((param0->battleType & 0x8) == 0)) {
        if (param0->battleType & 0x4) {
            if ((param2 & FlagIndex(BattleSystem_Partner(param0, param1))) == 0) {
                return 1;
            }
        } else {
            v0 = BattleContext_Get(param0, param0->battleCtx, 12, 0) & 0xffff;

            if (((BattleContext_Get(param0, param0->battleCtx, 8, 0) == 14) && (v0 > 16)) || (param2 & FlagIndex(0))) {
                return 0;
            } else {
                return 1;
            }
        }
    }

    return 0;
}

u16 ov16_0223ECC4(BattleParams *param0, int *param1, int *param2)
{
    Pokemon *v0;
    u16 v1;

    v1 = 0;

    if ((param0->unk_14 != 0x1) && (param0->unk_14 != 0x4) && (param0->unk_14 != 0x5)) {
        return 0;
    }

    while (param0->unk_150) {
        for (param1[0] = 0; param1[0] < 6; param1[0]++) {
            if (param0->unk_150 & FlagIndex(param1[0])) {
                param0->unk_150 &= (FlagIndex(param1[0]) ^ 0xffffffff);
                break;
            }
        }

        if (param1[0] < 6) {
            v0 = Party_GetPokemonBySlotIndex(param0->parties[0], param1[0]);

            if ((v1 = sub_02076B94(param0->parties[0], v0, 0, param0->unk_13C, param2))) {
                return v1;
            }
        }
    }

    return v1;
}

u8 ov16_0223ED60(BattleSystem *param0)
{
    return param0->unk_23F8;
}

u8 ov16_0223ED6C(BattleSystem *param0)
{
    GF_ASSERT(param0->battleCtx != NULL);
    return BattleContext_Get(param0, param0->battleCtx, 5, NULL);
}

int BattleSystem_NumSafariBalls(BattleSystem *param0)
{
    return param0->safariBalls;
}

void BattleSystem_SetSafariBalls(BattleSystem *param0, int param1)
{
    param0->safariBalls = param1;
}

Options *ov16_0223EDA4(BattleSystem *param0)
{
    return param0->unk_1B0;
}

BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys)
{
    if ((battleSys->battleType & BATTLE_TYPE_LINK)
        && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        return TRUE;
    }

    return Options_BattleScene(battleSys->unk_1B0) == OPTIONS_BATTLE_SCENE_ON;
}

int ov16_0223EDE0(BattleSystem *param0)
{
    return Options_Frame(param0->unk_1B0);
}

u8 BattleSystem_TextSpeed(BattleSystem *param0)
{
    if ((param0->battleType & 0x4) && ((param0->battleStatusMask & 0x10) == 0)) {
        return 1;
    }

    return Options_TextFrameDelay(param0->unk_1B0);
}

int BattleSystem_Ruleset(BattleSystem *param0)
{
    return Options_BattleStyle(param0->unk_1B0);
}

PokemonAnimationSys *ov16_0223EE28(BattleSystem *param0)
{
    return param0->unk_1C4;
}

ChatotCry *BattleSystem_ChatotVoice(BattleSystem *param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->unk_78[param1];
    } else if (param0->battleType & 0x2) {
        return param0->unk_78[param1 & 1];
    } else {
        return param0->unk_78[param1];
    }
}

void ov16_0223EE70(BattleSystem *param0)
{
    int v0, v1;
    Pokemon *v2;
    u16 v3;

    if (param0->battleType & (0x4 | 0x80 | 0x20 | 0x200)) {
        return;
    }

    for (v0 = 0; v0 < BattleSystem_PartyCount(param0, 0); v0++) {
        v2 = BattleSystem_PartyPokemon(param0, 0, v0);
        v3 = Pokemon_GetValue(v2, MON_DATA_SPECIES_EGG, NULL);

        if ((v3 == 412) && (param0->unk_2414[0] & FlagIndex(v0))) {
            switch (BattleSystem_Terrain(param0)) {
            default:
            case 2:
                v1 = 0;
                break;
            case 0:
            case 1:
            case 4:
            case 5:
            case 17:
            case 23:
                v1 = 1;
                break;
            case 9:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                v1 = 2;
                break;
            }

            Pokemon_SetValue(v2, 112, &v1);
        }
    }
}

void ov16_0223EF2C(BattleSystem *param0, int param1, int param2)
{
    param0->unk_2414[param1] |= FlagIndex(param2);
}

void ov16_0223EF48(BattleSystem *param0, Pokemon *param1)
{
    if (param0->poketchData) {
        PoketchData_PokemonHistoryEnqueue(param0->poketchData, Pokemon_GetBoxPokemon(param1));
    }
}

void ov16_0223EF68(BattleSystem *param0, Pokemon *param1)
{
    sub_0206D160(param0->unk_9C, param1, param0->resultMask, param0->unk_241E, 5);
}

void ov16_0223EF8C(BattleSystem *param0)
{
    NNSG2dImageProxy *v0;
    int v1, v2, v3, v4, v5, v6;
    u8 *v7;

    param0->unk_21C = Heap_AllocFromHeap(5, 0x10000);
    param0->unk_220 = Heap_AllocFromHeap(5, 0x200);

    MI_CpuCopy32((void *)(HW_BG_VRAM + 0x10000), param0->unk_21C, 0x10000);
    MI_CpuCopy32(sub_02003164(param0->unk_28, 0), param0->unk_220, HW_BG_PLTT_SIZE);

    v7 = G2_GetOBJCharPtr();
    v0 = SpriteActor_ImageProxy(param0->unk_17C[1].unk_00->unk_00);
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
                    param0->unk_21C[v2 * 0x800 + v1 * 0x40 + v6] = v5 + 0x70;
                }
            }
        }
    }

    v7 = G2_GetOBJCharPtr();
    v0 = SpriteActor_ImageProxy(param0->unk_17C[0].unk_00->unk_00);
    v7 += v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN];

    for (v6 = 0; v6 < 0x40 * 32; v6++) {
        if (v6 & 1) {
            v5 = (v7[v6 / 2] & 0xf0) >> 4;
        } else {
            v5 = (v7[v6 / 2] & 0xf);
        }

        if (v5) {
            param0->unk_21C[19 * 0x800 + v6] = v5 + 0x70;
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
                    param0->unk_21C[v2 * 0x800 + v1 * 0x40 + v6] = v5 + 0x70;
                }
            }
        }
    }

    sub_0201958C(param0->unk_04, 3, param0->unk_21C, 0x10000, 0);

    ov16_02268700(&param0->unk_17C[0]);
    ov16_02268700(&param0->unk_17C[1]);
}

u8 *ov16_0223F1E8(BattleSystem *param0)
{
    return param0->unk_21C;
}

u16 *ov16_0223F1F0(BattleSystem *param0)
{
    return param0->unk_220;
}

int ov16_0223F1F8(BattleSystem *param0)
{
    return param0->unk_2424;
}

u16 *ov16_0223F204(BattleSystem *param0)
{
    return &param0->unk_2224[0];
}

u16 *ov16_0223F210(BattleSystem *param0)
{
    return &param0->unk_2304[0];
}

int BattleSystem_FieldWeather(BattleSystem *battleSys)
{
    return battleSys->fieldWeather;
}

u8 ov16_0223F228(BattleSystem *param0)
{
    return param0->unk_241D;
}

void ov16_0223F234(BattleSystem *param0, u8 param1)
{
    param0->unk_241D = param1;
}

int ov16_0223F240(BattleSystem *param0)
{
    return param0->unk_242C;
}

void ov16_0223F24C(BattleSystem *param0, int param1)
{
    if (param0->battleStatusMask & 0x10) {
        return;
    }

    GameRecords_IncrementRecordValue(param0->records, param1);
}

void ov16_0223F268(BattleSystem *param0)
{
    if (param0->battleStatusMask & 0x10) {
        return;
    }

    GameRecords_IncrementTrainerScore(param0->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
}

void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags)
{
    battleSys->commandSelectionFlags = flags;
}

void ov16_0223F290(BattleSystem *param0, int param1)
{
    param0->unk_2440 = param1;
}

void *Battle_WaitDial(BattleSystem *param0)
{
    return param0->unk_1B8;
}

void Battle_SetWaitDial(BattleSystem *param0, void *param1)
{
    param0->unk_1B8 = param1;
}

UnkStruct_ov16_0223E0C8 *ov16_0223F2AC(BattleSystem *param0, int param1)
{
    return &param0->unk_1CC[param1];
}

u8 *ov16_0223F2B8(UnkStruct_ov16_0223E0C8 *param0, int param1)
{
    GF_ASSERT(param1 < 4);
    return param0[param1].unk_00;
}

void ov16_0223F2CC(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2)
{
    GF_ASSERT(param1 < 4);
    param0[param1].unk_04 = param2;
}

void ov16_0223F2E4(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2)
{
    GF_ASSERT(param1 < 4);
    param0[param1].unk_08 = param2;
}

void ov16_0223F2FC(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2)
{
    GF_ASSERT(param1 < 4);
    param0[param1].unk_0C = param2;
}

void ov16_0223F314(BattleSystem *param0, int param1)
{
    param0->unk_23F9 = param1;
}

void ov16_0223F320(BattleSystem *param0, u8 *param1)
{
    param0->unk_23F0 = param1;
}

void ov16_0223F32C(BattleSystem *param0, u8 *param1)
{
    param0->unk_23F4 = param1;
}

void ov16_0223F338(BattleSystem *param0, u8 param1)
{
    param0->unk_23F0[0] = param1;
}

void ov16_0223F344(BattleSystem *param0, u8 param1)
{
    param0->unk_23F4[0] = param1;
}

void ov16_0223F350(BattleSystem *param0, u8 param1)
{
    param0->unk_23FA = param1;
}

void *ov16_0223F35C(BattleSystem *param0, int param1)
{
    return ov16_02263B08(param0->battlers[param1]);
}

void ov16_0223F36C(BattleSystem *param0)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);

        v1->battleSys = param0;
        v1->type = Healthbar_Type(Battler_Type(param0->battlers[v0]), BattleSystem_BattleType(param0));

        ov16_022672C4(v1);
        Healthbar_Enable(v1, 0);
    }
}

void ov16_0223F3BC(BattleSystem *param0)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);

        if (v1->curHP) {
            Healthbar_Enable(v1, 1);
        }
    }
}

void ov16_0223F3EC(BattleSystem *param0)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
        Healthbar_Enable(v1, 0);
    }
}

void ov16_0223F414(BattleSystem *param0)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
        ov16_02267360(v1);
    }
}

u8 BattleSystem_ResultMask(BattleSystem *param0)
{
    return param0->resultMask;
}

void BattleSystem_SetResultFlag(BattleSystem *param0, u8 param1)
{
    param0->resultMask = param1;
}

u8 ov16_0223F450(BattleSystem *param0)
{
    return param0->unk_23FB_3;
}

void BattleSystem_SetRedHPSoundFlag(BattleSystem *param0, u8 param1)
{
    param0->unk_23FB_3 = param1;
}

u8 ov16_0223F47C(BattleSystem *param0)
{
    return param0->unk_23FB_5;
}

void ov16_0223F48C(BattleSystem *param0, u8 param1)
{
    GF_ASSERT(param1 < 15);
    param0->unk_23FB_5 = param1;
}

void ov16_0223F4B0(BattleSystem *param0, int param1)
{
    param0->unk_2438 = param1;
}

u16 BattleSystem_RandNext(BattleSystem *param0)
{
    param0->unk_2444 = param0->unk_2444 * 1103515245L + 24691;
    return (u16)(param0->unk_2444 / 65536L);
}

u32 ov16_0223F4E8(BattleSystem *param0)
{
    return param0->unk_2448;
}

void ov16_0223F4F4(BattleSystem *param0, u32 param1)
{
    param0->unk_2448 = param1;
}

void BattleSystem_Record(BattleSystem *param0, int param1, u8 param2)
{
    if (((param0->battleStatusMask & 0x10) == 0) && (param0->unk_245C[param1] < 0x400)) {
        sub_0202F868(param1, param0->unk_245C[param1], param2);
        param0->unk_245C[param1]++;
    }
}

BOOL ov16_0223F530(BattleSystem *param0, int param1, u8 *param2)
{
    BOOL v0;

    *param2 = 0xff;

    if ((param0->battleStatusMask & 0x10) && (param0->unk_245C[param1] < 0x400)) {
        *param2 = sub_0202F884(param1, param0->unk_245C[param1]);
        param0->unk_245C[param1]++;
        v0 = 0;
    } else if ((param0->battleStatusMask & 0x10) && (param0->unk_245C[param1] >= 0x400)) {
        v0 = 1;
    }

    return v0;
}

u8 ov16_0223F58C(BattleSystem *param0, u8 *param1)
{
    u8 v0, v1;
    u8 v2 = 0;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        if (param0->unk_245C[v0] != param0->unk_244C[v0]) {
            param1[v2++] = v0;
            param1[v2++] = param0->unk_245C[v0] - param0->unk_244C[v0];

            for (v1 = 0; v1 < param0->unk_245C[v0] - param0->unk_244C[v0]; v1++) {
                param1[v2++] = sub_0202F884(v0, param0->unk_244C[v0] + v1);
            }

            param0->unk_244C[v0] = param0->unk_245C[v0];
        }
    }

    GF_ASSERT(v2 <= 28);
    return v2;
}

void ov16_0223F638(BattleSystem *param0, u16 param1, u8 *param2)
{
    int v0;
    u8 v1;
    u8 v2;
    u8 v3 = 0;

    if ((param0->battleType & 0x4) == 0) {
        return;
    }

    if (param0->unk_23F8) {
        return;
    }

    while (param1) {
        v1 = ov16_0223F6D4(param2, &v3, &param1);
        v2 = ov16_0223F6D4(param2, &v3, &param1);

        for (v0 = 0; v0 < v2; v0++) {
            sub_0202F868(v1, param0->unk_2454[v1] + v0, ov16_0223F6D4(param2, &v3, &param1));
        }

        param0->unk_2454[v1] += v2;
    }
}

static u8 ov16_0223F6D4(u8 *param0, u8 *param1, u16 *param2)
{
    param2[0]--;
    return param0[param1[0]++];
}

u16 ov16_0223F6E4(BattleSystem *param0)
{
    return param0->unk_2442;
}

int ov16_0223F6F0(BattleSystem *param0, u16 param1)
{
    return param0->unk_2464[param1];
}

u16 BattleSystem_TrainerItems(BattleSystem *param0, int param1, int param2)
{
    return param0->trainers[param1].items[param2];
}

u32 BattleSystem_RecordingStopped(BattleSystem *param0)
{
    return param0->unk_2474_0;
}

void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag)
{
    if (((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) || (battleSys->unk_2474_0) || (BattleContext_Get(battleSys, battleSys->battleCtx, 13, 0) == 43) || (BattleContext_Get(battleSys, battleSys->battleCtx, 14, 0) == 43)) {
        return;
    }

    ov16_0226CEB0(battleSys->unk_198, flag);

    sub_0200F174(3, 0, 0, 0, 16, 2, 5);
    sub_0200569C();
    sub_0200500C(0);

    battleSys->unk_2474_0 = 1;

    return;
}

BOOL ov16_0223F7A4(BattleSystem *param0)
{
    if (((param0->battleStatusMask & 0x10) == 0) || (param0->unk_2474_0) || (BattleContext_Get(param0, param0->battleCtx, 13, 0) == 43) || (BattleContext_Get(param0, param0->battleCtx, 14, 0) == 43)) {
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

u8 BattleSystem_RecordedChatter(BattleSystem *param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->unk_247C[param1];
    } else if (param0->battleType & 0x2) {
        return param0->unk_247C[param1 & 1];
    } else {
        return param0->unk_247C[param1];
    }
}

void ov16_0223F858(BattleSystem *param0, u8 *param1)
{
    int v0;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[Battler_Type(param0->battlers[v0])] = v0;
    }
}

void ov16_0223F87C(BattleSystem *param0, u8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = 0xff;
    }

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[v0] = Battler_Type(param0->battlers[v0]);
    }
}

void ov16_0223F8AC(BattleSystem *param0, Sprite **param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = NULL;
    }

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[v0] = ov16_02263AFC(param0->battlers[v0]);
    }
}

void BattleSystem_SetGaugePriority(BattleSystem *param0, int param1)
{
    int v0;
    Healthbar *v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
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

void BattleSystem_DexFlagSeen(BattleSystem *param0, int param1)
{
    int v0;
    Pokemon *v1;
    int v2;

    v0 = Battler_Type(param0->battlers[param1]);
    v2 = BattleContext_Get(param0, param0->battleCtx, 2, param1);
    v1 = BattleSystem_PartyPokemon(param0, param1, v2);

    if ((param0->battleType & (0x4 | 0x80)) == 0) {
        if ((v0 & 0x1) || (param0->battleType == (0x2 | 0x8 | 0x40)) || (param0->battleType == ((0x2 | 0x1) | 0x8 | 0x40))) {
            sub_020272A4(param0->pokedex, v1);
        }
    }

    if (((v0 & 0x1) == 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) == 412)) {
        sub_0202736C(param0->pokedex, v1);
    }
}

void ov16_0223F9A0(BattleSystem *param0, int param1)
{
    int v0;

    v0 = Battler_Type(param0->battlers[param1]);

    if ((param0->battleType & (0x4 | 0x80)) == 0) {
        if (v0 & 0x1) {
            {
                Pokemon *v1;
                int v2;

                v2 = BattleContext_Get(param0, param0->battleCtx, 2, param1);
                v1 = BattleSystem_PartyPokemon(param0, param1, v2);

                sub_0202736C(param0->pokedex, v1);
            }
        }
    }
}

BOOL BattleSystem_CaughtSpecies(BattleSystem *battleSys, int species)
{
    return Pokedex_CaughtSpecies(battleSys->pokedex, species);
}

void Battle_SetDefaultBlend(void)
{
    G2_BlendNone();
}

u8 ov16_0223F9FC(BattleSystem *param0, int param1, int param2, int param3, int param4)
{
    Window *v0 = BattleSystem_Window(param0, 0);
    int v1;

    if (param0->battleType & 0x80) {
        if (param1 == 10000) {
            {
                Strbuf *v2;

                if (param3 == 100) {
                    v2 = sub_02014B34(&param0->trainers[param2].winMsg, 5);
                } else {
                    v2 = sub_02014B34(&param0->trainers[param2].loseMsg, 5);
                }

                BGL_FillWindow(v0, 0xff);
                v1 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, v2, 0, 0, param4, BattleMessage_Callback);
                Strbuf_Free(v2);
            }
        } else {
            {
                MessageLoader *v3;
                Strbuf *v4;
                int v5;
                u32 v6;
                int v7;

                if (param3 == 100) {
                    v5 = param1 * 3 + 1;
                } else {
                    v5 = param1 * 3 + 2;
                }

                for (v7 = 0; v7 < 4; v7++) {
                    if (TrainerInfo_GameCode(param0->trainerInfo[v7]) == 0) {
                        break;
                    }
                }

                if (v7 == 4) {
                    v6 = 614;
                } else {
                    v6 = 613;
                }

                v3 = MessageLoader_Init(0, 26, v6, 5);
                v4 = MessageLoader_GetNewStrbuf(v3, v5);

                BGL_FillWindow(v0, 0xff);

                v1 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, v4, 0, 0, param4, BattleMessage_Callback);
                Strbuf_Free(v4);
                MessageLoader_Free(v3);
            }
        }
    } else {
        TrainerData_LoadMessage(param1, param3, param0->msgBuffer, 5);
        BGL_FillWindow(v0, 0xff);
        v1 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, param0->msgBuffer, 0, 0, param4, BattleMessage_Callback);
    }

    return v1;
}

u8 BattleMessage_Print(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg, int renderDelay)
{
    Window *textWindow = BattleSystem_Window(battleSys, 0);

    BattleMessage_CheckSide(battleSys, battleMsg);
    BattleMessage_FillFormatBuffers(battleSys, battleMsg);
    BattleMessage_Format(battleSys, msgLoader, battleMsg);

    BGL_FillWindow(textWindow, 0xFF);

    return Text_AddPrinterWithParams(textWindow, FONT_MESSAGE, battleSys->msgBuffer, 0, 0, renderDelay, BattleMessage_Callback);
}

u8 BattleMessage_PrintToWindow(BattleSystem *param0, Window *param1, MessageLoader *param2, BattleMessage *param3, int param4, int param5, int param6, int param7, int param8)
{
    int v0;

    BattleMessage_CheckSide(param0, param3);
    BattleMessage_FillFormatBuffers(param0, param3);
    BattleMessage_Format(param0, param2, param3);

    if (param6 & 0x1) {
        BGL_FillWindow(param1, 0xff);
    }

    if (param6 & 0x2) {
        v0 = param7 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->msgBuffer, 0);
    } else {
        v0 = 0;
    }

    return Text_AddPrinterWithParams(param1, FONT_SYSTEM, param0->msgBuffer, param4 + v0, param5, param8, BattleMessage_Callback);
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

static void BattleMessage_Nickname(BattleSystem *param0, u32 param1, int param2)
{
    Pokemon *v0;

    v0 = BattleSystem_PartyPokemon(param0, param2 & 0xff, (param2 & 0xff00) >> 8);
    StringTemplate_SetNickname(param0->strFormatter, param1, &v0->box);
}

static void BattleMessage_MoveName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetMoveName(param0->strFormatter, param1, param2);
}

static void BattleMessage_ItemName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetItemName(param0->strFormatter, param1, param2);
}

static void BattleMessage_Number(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetNumber(param0->strFormatter, param1, param2, 5, 0, 1);
}

static void BattleMessage_NumberDigits(BattleSystem *param0, u32 param1, int param2, int param3)
{
    if (param3) {
        StringTemplate_SetNumber(param0->strFormatter, param1, param2, param3, 1, 1);
    } else {
        StringTemplate_SetNumber(param0->strFormatter, param1, param2, 5, 1, 1);
    }
}

static void BattleMessage_TypeName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetPokemonTypeName(param0->strFormatter, param1, param2);
}

static void BattleMessage_AbilityName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetAbilityName(param0->strFormatter, param1, param2);
}

static void BattleMessage_StatName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetPokemonStatName(param0->strFormatter, param1, param2);
}

static void BattleMessage_StatusName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetStatusConditionName(param0->strFormatter, param1, param2);
}

static void BattleMessage_PokemonName(BattleSystem *param0, u32 param1, int param2)
{
    Pokemon *v0;

    v0 = BattleSystem_PartyPokemon(param0, param2 & 0xff, (param2 & 0xff00) >> 8);
    StringTemplate_SetSpeciesName(param0->strFormatter, param1, &v0->box);
}

static void BattleMessage_PoffinName(BattleSystem *param0, u32 param1, int param2)
{
    return;
}

static void BattleMessage_FlavorName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetFlavorName(param0->strFormatter, param1, param2);
}

static void BattleMessage_TrainerClassName(BattleSystem *param0, u32 param1, int param2)
{
    TrainerData *v0;

    v0 = BattleSystem_TrainerData(param0, param2);
    StringTemplate_SetTrainerClassNameBattle(param0->strFormatter, param1, v0);
}

static void BattleMessage_TrainerName(BattleSystem *param0, u32 param1, int param2)
{
    TrainerData *v0;

    v0 = BattleSystem_TrainerData(param0, param2);
    StringTemplate_SetTrainerNameBattle(param0->strFormatter, param1, v0);
}

static void BattleMessage_PCBoxName(BattleSystem *param0, u32 param1, int param2)
{
    StringTemplate_SetPCBoxName(param0->strFormatter, param1, param0->pcBoxes, param2);
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
    BOOL v0;

    v0 = 0;

    switch (param1) {
    case 1:
        v0 = sub_020057E0();
        break;
    case 2:
        v0 = sub_020061E4();
        break;
    case 3:
        sub_02006150(1156);
        break;
    case 4:
        Sound_PlayEffect(1510);
        break;
    case 5:
        sub_02006150(1155);
        break;
    default:
        break;
    }

    return v0;
}
