#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "battle/common.h"
#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/items.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/battle_system.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"
#include "overlay016/struct_ov16_02268A14_decl.h"
#include "overlay016/struct_ov16_0226D160_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0201D738.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_0205AA50.h"
#include "pokemon.h"
#include "struct_defs/trainer_data.h"
#include "struct_defs/battle_system.h"
#include "overlay006/battle_params.h"
#include "overlay016/struct_ov16_0223E0C8.h"
#include "battle/battle_message.h"
#include "overlay016/struct_ov16_022674C4.h"
#include "overlay016/struct_ov16_02268520.h"

#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200F174.h"
#include "unk_02014A84.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_020279FC.h"
#include "unk_0202CD50.h"
#include "unk_0202F1D4.h"
#include "unk_02056720.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "trainer_data.h"
#include "party.h"
#include "item.h"
#include "flags.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_02266F1C.h"
#include "overlay016/ov16_02268520.h"
#include "overlay016/ov16_0226871C.h"
#include "overlay016/ov16_0226E148.h"

BGL * BattleSystem_BGL(BattleSystem * param0);
Window * BattleSystem_Window(BattleSystem * param0, int param1);
u32 BattleSystem_BattleType(BattleSystem * param0);
BattleContext * BattleSystem_Context(BattleSystem * param0);
BattlerData * BattleSystem_BattlerData(BattleSystem * param0, int param1);
int BattleSystem_MaxBattlers(BattleSystem * param0);
Party * BattleSystem_Party(BattleSystem * param0, int param1);
int BattleSystem_PartyCount(BattleSystem *battleSys, int battler);
Pokemon* BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot);
UnkStruct_02007768 * ov16_0223E000(BattleSystem * param0);
UnkStruct_ov12_0221FCDC * ov16_0223E008(BattleSystem * param0);
CellTransferStateData * ov16_0223E010(BattleSystem * param0);
AnimationResourceCollection * ov16_0223E018(BattleSystem * param0);
UnkStruct_ov16_02268520 * ov16_0223E020(BattleSystem * param0, int param1);
UnkStruct_ov16_02268A14 * ov16_0223E02C(BattleSystem * param0);
UnkStruct_0200C440 * ov16_0223E04C(BattleSystem * param0);
UnkStruct_0200C440 * ov16_0223E054(BattleSystem * param0);
MessageLoader * BattleSystem_MessageLoader(BattleSystem * param0);
MessageLoader * ov16_0223E060(BattleSystem * param0);
PaletteSys * BattleSystem_PaletteSys(BattleSystem * param0);
UnkStruct_02026324 * ov16_0223E068(BattleSystem * param0);
u8 * ov16_0223E06C(BattleSystem * param0);
u8 * ov16_0223E074(BattleSystem * param0);
u16 * ov16_0223E080(BattleSystem * param0);
u16 * ov16_0223E08C(BattleSystem * param0);
u16 * ov16_0223E098(BattleSystem * param0);
u16 * ov16_0223E0A4(BattleSystem * param0);
u16 * ov16_0223E0B0(BattleSystem * param0);
u16 * ov16_0223E0BC(BattleSystem * param0);
UnkStruct_ov16_0223E0C8 * ov16_0223E0C8(BattleSystem * param0);
UnkStruct_0200B358 * ov16_0223E0D0(BattleSystem * param0);
Strbuf* ov16_0223E0D4(BattleSystem * param0);
u16 ov16_0223E0D8(BattleSystem * param0, int param1);
TrainerData * BattleSystem_TrainerData(BattleSystem * param0, int param1);
TrainerInfo* BattleSystem_TrainerInfo(BattleSystem *battleSys, int battler);
UnkStruct_0207D3C0 * BattleSystem_Bag(BattleSystem * param0);
UnkStruct_0207D99C * BattleSystem_BagCursor(BattleSystem * param0);
u32 ov16_0223E1B4(BattleSystem * param0, int param1);
int BattleSystem_BattlerOfType(BattleSystem *battleSys, int type);
u8 BattleSystem_BattlerSlot(BattleSystem *battleSys, int battler);
u8 Battler_Side(BattleSystem * param0, int param1);
void * ov16_0223E220(BattleSystem * param0);
PCBoxes * ov16_0223E228(BattleSystem * param0);
enum Terrain BattleSystem_Terrain(BattleSystem *battleSys);
int ov16_0223E240(BattleSystem * param0);
int BattleSystem_MapHeader(BattleSystem * param0);
int BattleSystem_Partner(BattleSystem *battleSys, int battler);
int BattleSystem_EnemyInSlot(BattleSystem *battleSys, int attacker, int slot);
BOOL BattleSystem_UseBagItem(BattleSystem *battleSys, int battler, int partySlot, int moveSlot, int item);
u32 ov16_0223EBEC(BattleSystem * param0);
enum Time BattleSystem_Time(BattleSystem *battleSys);
int ov16_0223EC04(BattleSystem * param0);
u8 ov16_0223EC58(BattleSystem * param0, int param1, u8 param2);
u16 ov16_0223ECC4(BattleParams * param0, int * param1, int * param2);
u8 ov16_0223ED60(BattleSystem * param0);
u8 ov16_0223ED6C(BattleSystem * param0);
int BattleSystem_NumSafariBalls(BattleSystem * param0);
void BattleSystem_SetSafariBalls(BattleSystem * param0, int param1);
AnimationControlFlags * ov16_0223EDA4(BattleSystem * param0);
BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys);
int ov16_0223EDE0(BattleSystem * param0);
u8 BattleSystem_TextSpeed(BattleSystem * param0);
int BattleSystem_Ruleset(BattleSystem * param0);
UnkStruct_02015F84 * ov16_0223EE28(BattleSystem * param0);
ChatotCryData * BattleSystem_ChatotVoice(BattleSystem * param0, int param1);
void ov16_0223EE70(BattleSystem * param0);
void ov16_0223EF2C(BattleSystem * param0, int param1, int param2);
void ov16_0223EF48(BattleSystem * param0, Pokemon * param1);
void ov16_0223EF68(BattleSystem * param0, Pokemon * param1);
void ov16_0223EF8C(BattleSystem * param0);
u8 * ov16_0223F1E8(BattleSystem * param0);
u16 * ov16_0223F1F0(BattleSystem * param0);
int ov16_0223F1F8(BattleSystem * param0);
u16 * ov16_0223F204(BattleSystem * param0);
u16 * ov16_0223F210(BattleSystem * param0);
int BattleSystem_FieldWeather(BattleSystem * param0);
u8 ov16_0223F228(BattleSystem * param0);
void ov16_0223F234(BattleSystem * param0, u8 param1);
int ov16_0223F240(BattleSystem * param0);
void ov16_0223F24C(BattleSystem * param0, int param1);
void ov16_0223F268(BattleSystem * param0);
void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags);
void ov16_0223F290(BattleSystem * param0, int param1);
void * ov16_0223F29C(BattleSystem * param0);
void ov16_0223F2A4(BattleSystem * param0, void * param1);
u8 * ov16_0223F2B8(UnkStruct_ov16_0223E0C8 * param0, int param1);
void ov16_0223F2CC(UnkStruct_ov16_0223E0C8 * param0, int param1, int param2);
void ov16_0223F2E4(UnkStruct_ov16_0223E0C8 * param0, int param1, int param2);
void ov16_0223F2FC(UnkStruct_ov16_0223E0C8 * param0, int param1, int param2);
void ov16_0223F314(BattleSystem * param0, int param1);
void ov16_0223F320(BattleSystem * param0, u8 * param1);
void ov16_0223F32C(BattleSystem * param0, u8 * param1);
void ov16_0223F338(BattleSystem * param0, u8 param1);
void ov16_0223F344(BattleSystem * param0, u8 param1);
void ov16_0223F350(BattleSystem * param0, u8 param1);
void ov16_0223F36C(BattleSystem * param0);
void ov16_0223F3BC(BattleSystem * param0);
void ov16_0223F3EC(BattleSystem * param0);
void ov16_0223F414(BattleSystem * param0);
u8 BattleSystem_ResultMask(BattleSystem * param0);
void BattleSystem_SetResultFlag(BattleSystem * param0, u8 param1);
u8 ov16_0223F450(BattleSystem * param0);
void BattleSystem_SetRedHPSoundFlag(BattleSystem * param0, u8 param1);
u8 ov16_0223F47C(BattleSystem * param0);
void ov16_0223F48C(BattleSystem * param0, u8 param1);
void ov16_0223F4B0(BattleSystem * param0, int param1);
u16 BattleSystem_RandNext(BattleSystem * param0);
u32 ov16_0223F4E8(BattleSystem * param0);
void ov16_0223F4F4(BattleSystem * param0, u32 param1);
void BattleSystem_Record(BattleSystem * param0, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem * param0, int param1, u8 * param2);
u8 ov16_0223F58C(BattleSystem * param0, u8 * param1);
void ov16_0223F638(BattleSystem * param0, u16 param1, u8 * param2);
u16 ov16_0223F6E4(BattleSystem * param0);
int ov16_0223F6F0(BattleSystem * param0, u16 param1);
u16 BattleSystem_TrainerItems(BattleSystem * param0, int param1, int param2);
u32 ov16_0223F710(BattleSystem * param0);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem * param0);
void BattleSystem_ShowStopPlaybackButton(BattleSystem * param0);
u8 BattleSystem_RecordedChatter(BattleSystem * param0, int param1);
void ov16_0223F858(BattleSystem * param0, u8 * param1);
void ov16_0223F87C(BattleSystem * param0, u8 * param1);
void ov16_0223F8AC(BattleSystem * param0, UnkStruct_02007C7C ** param1);
void BattleSystem_SetGaugePriority(BattleSystem * param0, int param1);
u32 BattleSystem_CalcMoneyPenalty(Party *party, TrainerInfo *trainerInfo);
void BattleSystem_DexFlagSeen(BattleSystem * param0, int param1);
void ov16_0223F9A0(BattleSystem * param0, int param1);
BOOL BattleSystem_CaughtSpecies(BattleSystem *battleSys, int species);
void ov16_0223F9F0(void);
u8 ov16_0223F9FC(BattleSystem * param0, int param1, int param2, int param3, int param4);
u8 BattleMessage_Print(BattleSystem * param0, MessageLoader * param1, BattleMessage * param2, int param3);
u8 BattleMessage_PrintToWindow(BattleSystem * param0, Window * param1, MessageLoader * param2, BattleMessage * param3, int param4, int param5, int param6, int param7, int param8);
static void ov16_0223FBE8(BattleSystem * param0, BattleMessage * param1);
static void ov16_0223FDE4(BattleSystem * param0, BattleMessage * param1);
static void ov16_02240584(BattleSystem * param0, MessageLoader * param1, BattleMessage * param2);
static BOOL ov16_022405A4(UnkStruct_0201D738 * param0, u16 param1);
static void ov16_02240460(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240484(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240490(BattleSystem * param0, u32 param1, int param2);
static void ov16_0224049C(BattleSystem * param0, u32 param1, int param2);
static void ov16_022404B4(BattleSystem * param0, u32 param1, int param2, int param3);
static void ov16_022404E0(BattleSystem * param0, u32 param1, int param2);
static void ov16_022404EC(BattleSystem * param0, u32 param1, int param2);
static void ov16_022404F8(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240504(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240510(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240534(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240538(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240544(BattleSystem * param0, u32 param1, int param2);
static void ov16_0224055C(BattleSystem * param0, u32 param1, int param2);
static void ov16_02240574(BattleSystem * param0, u32 param1, int param2);
static u8 ov16_0223F6D4(u8 * param0, u8 * param1, u16 * param2);

BGL * BattleSystem_BGL (BattleSystem * param0)
{
    return param0->unk_04;
}

Window * BattleSystem_Window (BattleSystem * param0, int param1)
{
    return &param0->unk_08[param1];
}

u32 BattleSystem_BattleType (BattleSystem *battleSys)
{
    return battleSys->battleType;
}

BattleContext * BattleSystem_Context (BattleSystem *battleSys)
{
    return battleSys->battleCtx;
}

BattlerData * BattleSystem_BattlerData (BattleSystem *battleSys, int battler)
{
    return battleSys->battlers[battler];
}

int BattleSystem_MaxBattlers (BattleSystem *battleSys)
{
    return battleSys->maxBattlers;
}

Party * BattleSystem_Party (BattleSystem * param0, int param1)
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

Pokemon* BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot)
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

UnkStruct_02007768 * ov16_0223E000 (BattleSystem * param0)
{
    return param0->unk_88;
}

UnkStruct_ov12_0221FCDC * ov16_0223E008 (BattleSystem * param0)
{
    return param0->unk_8C;
}

CellTransferStateData * ov16_0223E010 (BattleSystem * param0)
{
    return param0->unk_90;
}

AnimationResourceCollection * ov16_0223E018 (BattleSystem * param0)
{
    return param0->unk_94;
}

UnkStruct_ov16_02268520 * ov16_0223E020 (BattleSystem * param0, int param1)
{
    return &param0->unk_17C[param1];
}

UnkStruct_ov16_02268A14 * ov16_0223E02C (BattleSystem * param0)
{
    return param0->unk_198;
}

UnkStruct_ov16_0226D160 * ov16_0223E034 (BattleSystem * param0, UnkEnum_ov16_0226D194 param1)
{
    return param0->unk_19C[param1];
}

void ov16_0223E040 (BattleSystem * param0, UnkEnum_ov16_0226D194 param1, UnkStruct_ov16_0226D160 * param2)
{
    param0->unk_19C[param1] = param2;
}

UnkStruct_0200C440 * ov16_0223E04C (BattleSystem * param0)
{
    return param0->unk_1A4;
}

UnkStruct_0200C440 * ov16_0223E054 (BattleSystem * param0)
{
    return param0->unk_1A8;
}

MessageLoader * BattleSystem_MessageLoader (BattleSystem * param0)
{
    return param0->unk_0C;
}

MessageLoader * ov16_0223E060 (BattleSystem * param0)
{
    return param0->unk_10;
}

PaletteSys * BattleSystem_PaletteSys (BattleSystem * param0)
{
    return param0->unk_28;
}

UnkStruct_02026324 * ov16_0223E068 (BattleSystem * param0)
{
    return param0->pokedex;
}

u8 * ov16_0223E06C (BattleSystem * param0)
{
    return &param0->unk_224[0];
}

u8 * ov16_0223E074 (BattleSystem * param0)
{
    return &param0->unk_1224[0];
}

u16 * ov16_0223E080 (BattleSystem * param0)
{
    return &param0->unk_23E4;
}

u16 * ov16_0223E08C (BattleSystem * param0)
{
    return &param0->unk_23E6;
}

u16 * ov16_0223E098 (BattleSystem * param0)
{
    return &param0->unk_23E8;
}

u16 * ov16_0223E0A4 (BattleSystem * param0)
{
    return &param0->unk_23EA;
}

u16 * ov16_0223E0B0 (BattleSystem * param0)
{
    return &param0->unk_23EC;
}

u16 * ov16_0223E0BC (BattleSystem * param0)
{
    return &param0->unk_23EE;
}

UnkStruct_ov16_0223E0C8 * ov16_0223E0C8 (BattleSystem * param0)
{
    return &param0->unk_1CC[0];
}

UnkStruct_0200B358 * ov16_0223E0D0 (BattleSystem * param0)
{
    return param0->unk_14;
}

Strbuf* ov16_0223E0D4 (BattleSystem * param0)
{
    return param0->msgBuffer;
}

u16 ov16_0223E0D8 (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->trainerIDs[param1];
    } else if (param0->battleType & 0x2) {
        return param0->trainerIDs[param1 & 1];
    } else {
        return param0->trainerIDs[param1];
    }
}

TrainerData * BattleSystem_TrainerData (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return &param0->trainers[param1];
    } else if (param0->battleType & 0x2) {
        return &param0->trainers[param1 & 1];
    } else {
        return &param0->trainers[param1];
    }
}

TrainerInfo* BattleSystem_TrainerInfo(BattleSystem *battleSys, int battler)
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

UnkStruct_0207D3C0 * BattleSystem_Bag (BattleSystem * param0)
{
    return param0->unk_58;
}

UnkStruct_0207D99C * BattleSystem_BagCursor (BattleSystem * param0)
{
    return param0->unk_5C;
}

u32 ov16_0223E1B4 (BattleSystem * param0, int param1)
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

u8 BattleSystem_BattlerSlot (BattleSystem *battleSys, int battler)
{
    return Battler_Type(battleSys->battlers[battler]);
}

u8 Battler_Side (BattleSystem * param0, int param1)
{
    return Battler_Type(param0->battlers[param1]) & 1;
}

void * ov16_0223E220 (BattleSystem * param0)
{
    return param0->unk_1AC;
}

PCBoxes * ov16_0223E228 (BattleSystem * param0)
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

int ov16_0223E240 (BattleSystem * param0)
{
    return param0->unk_2400;
}

int BattleSystem_MapHeader (BattleSystem * param0)
{
    return param0->unk_2404;
}

int BattleSystem_Partner (BattleSystem *battleSys, int battler)
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

u32 BattleSystem_BattleStatus (BattleSystem *battleSys)
{
    return battleSys->battleStatusMask;
}

enum Time BattleSystem_Time(BattleSystem *battleSys)
{
    return battleSys->time;
}

int ov16_0223EC04 (BattleSystem * param0)
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

u8 ov16_0223EC58 (BattleSystem * param0, int param1, u8 param2)
{
    u16 v0;

    if (((BattleSystem_BattlerSlot(param0, param1) == 4) && ((param0->battleType & 0x8) == 0))) {
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

u16 ov16_0223ECC4 (BattleParams * param0, int * param1, int * param2)
{
    Pokemon * v0;
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

u8 ov16_0223ED60 (BattleSystem * param0)
{
    return param0->unk_23F8;
}

u8 ov16_0223ED6C (BattleSystem * param0)
{
    GF_ASSERT(param0->battleCtx != NULL);
    return BattleContext_Get(param0, param0->battleCtx, 5, NULL);
}

int BattleSystem_NumSafariBalls (BattleSystem * param0)
{
    return param0->safariBalls;
}

void BattleSystem_SetSafariBalls (BattleSystem * param0, int param1)
{
    param0->safariBalls = param1;
}

AnimationControlFlags * ov16_0223EDA4 (BattleSystem * param0)
{
    return param0->unk_1B0;
}

BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys)
{
    if ((battleSys->battleType & BATTLE_TYPE_LINK)
            && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        return TRUE;
    }

    return GameConfig_BattleAnimations(battleSys->unk_1B0) == 0;
}

int ov16_0223EDE0 (BattleSystem * param0)
{
    return sub_02027B50(param0->unk_1B0);
}

u8 BattleSystem_TextSpeed (BattleSystem * param0)
{
    if ((param0->battleType & 0x4) && ((param0->battleStatusMask & 0x10) == 0)) {
        return 1;
    }

    return sub_02027AC0(param0->unk_1B0);
}

int BattleSystem_Ruleset (BattleSystem * param0)
{
    return sub_02027B14(param0->unk_1B0);
}

UnkStruct_02015F84 * ov16_0223EE28 (BattleSystem * param0)
{
    return param0->unk_1C4;
}

ChatotCryData * BattleSystem_ChatotVoice (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->unk_78[param1];
    } else if (param0->battleType & 0x2) {
        return param0->unk_78[param1 & 1];
    } else {
        return param0->unk_78[param1];
    }
}

void ov16_0223EE70 (BattleSystem * param0)
{
    int v0, v1;
    Pokemon * v2;
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

void ov16_0223EF2C (BattleSystem * param0, int param1, int param2)
{
    param0->unk_2414[param1] |= FlagIndex(param2);
}

void ov16_0223EF48 (BattleSystem * param0, Pokemon * param1)
{
    if (param0->unk_98) {
        sub_02056A48(param0->unk_98, Pokemon_GetBoxPokemon(param1));
    }
}

void ov16_0223EF68 (BattleSystem * param0, Pokemon * param1)
{
    sub_0206D160(param0->unk_9C, param1, param0->resultMask, param0->unk_241E, 5);
}

void ov16_0223EF8C (BattleSystem * param0)
{
    NNSG2dImageProxy * v0;
    int v1, v2, v3, v4, v5, v6;
    u8 * v7;

    param0->unk_21C = Heap_AllocFromHeap(5, 0x10000);
    param0->unk_220 = Heap_AllocFromHeap(5, 0x200);

    MI_CpuCopy32((void *)(HW_BG_VRAM + 0x10000), param0->unk_21C, 0x10000);
    MI_CpuCopy32(sub_02003164(param0->unk_28, 0), param0->unk_220, HW_BG_PLTT_SIZE);

    v7 = G2_GetOBJCharPtr();
    v0 = sub_02021F98(param0->unk_17C[1].unk_00->unk_00);
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
    v0 = sub_02021F98(param0->unk_17C[0].unk_00->unk_00);
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

u8 * ov16_0223F1E8 (BattleSystem * param0)
{
    return param0->unk_21C;
}

u16 * ov16_0223F1F0 (BattleSystem * param0)
{
    return param0->unk_220;
}

int ov16_0223F1F8 (BattleSystem * param0)
{
    return param0->unk_2424;
}

u16 * ov16_0223F204 (BattleSystem * param0)
{
    return &param0->unk_2224[0];
}

u16 * ov16_0223F210 (BattleSystem * param0)
{
    return &param0->unk_2304[0];
}

int BattleSystem_FieldWeather(BattleSystem *battleSys)
{
    return battleSys->fieldWeather;
}

u8 ov16_0223F228 (BattleSystem * param0)
{
    return param0->unk_241D;
}

void ov16_0223F234 (BattleSystem * param0, u8 param1)
{
    param0->unk_241D = param1;
}

int ov16_0223F240 (BattleSystem * param0)
{
    return param0->unk_242C;
}

void ov16_0223F24C (BattleSystem * param0, int param1)
{
    if (param0->battleStatusMask & 0x10) {
        return;
    }

    sub_0202CF28(param0->unk_218, param1);
}

void ov16_0223F268 (BattleSystem * param0)
{
    if (param0->battleStatusMask & 0x10) {
        return;
    }

    sub_0202CFEC(param0->unk_218, 22);
}

void BattleSystem_SetCommandSelectionFlags (BattleSystem *battleSys, int flags)
{
    battleSys->commandSelectionFlags = flags;
}

void ov16_0223F290 (BattleSystem * param0, int param1)
{
    param0->unk_2440 = param1;
}

void * ov16_0223F29C (BattleSystem * param0)
{
    return param0->unk_1B8;
}

void ov16_0223F2A4 (BattleSystem * param0, void * param1)
{
    param0->unk_1B8 = param1;
}

UnkStruct_ov16_0223E0C8 * ov16_0223F2AC (BattleSystem * param0, int param1)
{
    return &param0->unk_1CC[param1];
}

u8 * ov16_0223F2B8 (UnkStruct_ov16_0223E0C8 * param0, int param1)
{
    GF_ASSERT(param1 < 4);
    return param0[param1].unk_00;
}

void ov16_0223F2CC (UnkStruct_ov16_0223E0C8 * param0, int param1, int param2)
{
    GF_ASSERT(param1 < 4);
    param0[param1].unk_04 = param2;
}

void ov16_0223F2E4 (UnkStruct_ov16_0223E0C8 * param0, int param1, int param2)
{
    GF_ASSERT(param1 < 4);
    param0[param1].unk_08 = param2;
}

void ov16_0223F2FC (UnkStruct_ov16_0223E0C8 * param0, int param1, int param2)
{
    GF_ASSERT(param1 < 4);
    param0[param1].unk_0C = param2;
}

void ov16_0223F314 (BattleSystem * param0, int param1)
{
    param0->unk_23F9 = param1;
}

void ov16_0223F320 (BattleSystem * param0, u8 * param1)
{
    param0->unk_23F0 = param1;
}

void ov16_0223F32C (BattleSystem * param0, u8 * param1)
{
    param0->unk_23F4 = param1;
}

void ov16_0223F338 (BattleSystem * param0, u8 param1)
{
    param0->unk_23F0[0] = param1;
}

void ov16_0223F344 (BattleSystem * param0, u8 param1)
{
    param0->unk_23F4[0] = param1;
}

void ov16_0223F350 (BattleSystem * param0, u8 param1)
{
    param0->unk_23FA = param1;
}

void * ov16_0223F35C (BattleSystem * param0, int param1)
{
    return ov16_02263B08(param0->battlers[param1]);
}

void ov16_0223F36C (BattleSystem * param0)
{
    int v0;
    UnkStruct_ov16_022674C4 * v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);

        v1->unk_0C = param0;
        v1->unk_25 = ov16_0226825C(Battler_Type(param0->battlers[v0]), BattleSystem_BattleType(param0));

        ov16_022672C4(v1);
        ov16_02267620(v1, 0);
    }
}

void ov16_0223F3BC (BattleSystem * param0)
{
    int v0;
    UnkStruct_ov16_022674C4 * v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);

        if (v1->unk_28) {
            ov16_02267620(v1, 1);
        }
    }
}

void ov16_0223F3EC (BattleSystem * param0)
{
    int v0;
    UnkStruct_ov16_022674C4 * v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
        ov16_02267620(v1, 0);
    }
}

void ov16_0223F414 (BattleSystem * param0)
{
    int v0;
    UnkStruct_ov16_022674C4 * v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
        ov16_02267360(v1);
    }
}

u8 BattleSystem_ResultMask (BattleSystem * param0)
{
    return param0->resultMask;
}

void BattleSystem_SetResultFlag (BattleSystem * param0, u8 param1)
{
    param0->resultMask = param1;
}

u8 ov16_0223F450 (BattleSystem * param0)
{
    return param0->unk_23FB_3;
}

void BattleSystem_SetRedHPSoundFlag (BattleSystem * param0, u8 param1)
{
    param0->unk_23FB_3 = param1;
}

u8 ov16_0223F47C (BattleSystem * param0)
{
    return param0->unk_23FB_5;
}

void ov16_0223F48C (BattleSystem * param0, u8 param1)
{
    GF_ASSERT(param1 < 15);
    param0->unk_23FB_5 = param1;
}

void ov16_0223F4B0 (BattleSystem * param0, int param1)
{
    param0->unk_2438 = param1;
}

u16 BattleSystem_RandNext (BattleSystem * param0)
{
    param0->unk_2444 = param0->unk_2444 * 1103515245L + 24691;
    return (u16)(param0->unk_2444 / 65536L);
}

u32 ov16_0223F4E8 (BattleSystem * param0)
{
    return param0->unk_2448;
}

void ov16_0223F4F4 (BattleSystem * param0, u32 param1)
{
    param0->unk_2448 = param1;
}

void BattleSystem_Record (BattleSystem * param0, int param1, u8 param2)
{
    if (((param0->battleStatusMask & 0x10) == 0) && (param0->unk_245C[param1] < 0x400)) {
        sub_0202F868(param1, param0->unk_245C[param1], param2);
        param0->unk_245C[param1]++;
    }
}

BOOL ov16_0223F530 (BattleSystem * param0, int param1, u8 * param2)
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

u8 ov16_0223F58C (BattleSystem * param0, u8 * param1)
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

void ov16_0223F638 (BattleSystem * param0, u16 param1, u8 * param2)
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

static u8 ov16_0223F6D4 (u8 * param0, u8 * param1, u16 * param2)
{
    param2[0]--;
    return param0[param1[0]++];
}

u16 ov16_0223F6E4 (BattleSystem * param0)
{
    return param0->unk_2442;
}

int ov16_0223F6F0 (BattleSystem * param0, u16 param1)
{
    return param0->unk_2464[param1];
}

u16 BattleSystem_TrainerItems (BattleSystem * param0, int param1, int param2)
{
    return param0->trainers[param1].items[param2];
}

u32 ov16_0223F710 (BattleSystem * param0)
{
    return param0->unk_2474_0;
}

void BattleSystem_SetStopRecording (BattleSystem *battleSys, int flag)
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

BOOL ov16_0223F7A4 (BattleSystem * param0)
{
    if (((param0->battleStatusMask & 0x10) == 0) || (param0->unk_2474_0) || (BattleContext_Get(param0, param0->battleCtx, 13, 0) == 43) || (BattleContext_Get(param0, param0->battleCtx, 14, 0) == 43)) {
        return 0;
    }

    return 1;
}

void BattleSystem_ShowStopPlaybackButton (BattleSystem *battleSys)
{
    if ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE
            || battleSys->playbackStopButton) {
        return;
    }

    battleSys->playbackStopButton = ov16_0226E148(battleSys);
}

u8 BattleSystem_RecordedChatter (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->unk_247C[param1];
    } else if (param0->battleType & 0x2) {
        return param0->unk_247C[param1 & 1];
    } else {
        return param0->unk_247C[param1];
    }
}

void ov16_0223F858 (BattleSystem * param0, u8 * param1)
{
    int v0;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[Battler_Type(param0->battlers[v0])] = v0;
    }
}

void ov16_0223F87C (BattleSystem * param0, u8 * param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = 0xff;
    }

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[v0] = Battler_Type(param0->battlers[v0]);
    }
}

void ov16_0223F8AC (BattleSystem * param0, UnkStruct_02007C7C ** param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = NULL;
    }

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[v0] = ov16_02263AFC(param0->battlers[v0]);
    }
}

void BattleSystem_SetGaugePriority (BattleSystem * param0, int param1)
{
    int v0;
    UnkStruct_ov16_022674C4 * v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
        ov16_022675D8(v1, param1);
    }
}

u32 BattleSystem_CalcMoneyPenalty(Party *party, TrainerInfo *trainerInfo)
{
    static const u8 badgeMul[] = {
        2, 4, 6, 9, 12, 16, 20, 25, 30,
    };

    u8 badges = TrainerInfo_BadgeCount(trainerInfo);
    u32 penalty = Party_GetMaxLevel(party) * 4 * badgeMul[badges];
    u32 curMoney = TrainerInfo_Money(trainerInfo);

    if (penalty > curMoney) {
        penalty = curMoney;
    }

    return penalty;
}

void BattleSystem_DexFlagSeen (BattleSystem * param0, int param1)
{
    int v0;
    Pokemon * v1;
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

void ov16_0223F9A0 (BattleSystem * param0, int param1)
{
    int v0;

    v0 = Battler_Type(param0->battlers[param1]);

    if ((param0->battleType & (0x4 | 0x80)) == 0) {
        if (v0 & 0x1) {
            {
                Pokemon * v1;
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

void ov16_0223F9F0 (void)
{
    G2_BlendNone();
}

u8 ov16_0223F9FC (BattleSystem * param0, int param1, int param2, int param3, int param4)
{
    Window * v0 = BattleSystem_Window(param0, 0);
    int v1;

    if (param0->battleType & 0x80) {
        if (param1 == 10000) {
            {
                Strbuf* v2;

                if (param3 == 100) {
                    v2 = sub_02014B34(&param0->trainers[param2].winMsg, 5);
                } else {
                    v2 = sub_02014B34(&param0->trainers[param2].loseMsg, 5);
                }

                BGL_FillWindow(v0, 0xff);
                v1 = sub_0201D738(v0, 1, v2, 0, 0, param4, ov16_022405A4);
                Strbuf_Free(v2);
            }
        } else {
            {
                MessageLoader * v3;
                Strbuf* v4;
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

                v1 = sub_0201D738(v0, 1, v4, 0, 0, param4, ov16_022405A4);
                Strbuf_Free(v4);
                MessageLoader_Free(v3);
            }
        }
    } else {
        TrainerData_LoadMessage(param1, param3, param0->msgBuffer, 5);
        BGL_FillWindow(v0, 0xff);
        v1 = sub_0201D738(v0, 1, param0->msgBuffer, 0, 0, param4, ov16_022405A4);
    }

    return v1;
}

u8 BattleMessage_Print (BattleSystem * param0, MessageLoader * param1, BattleMessage * param2, int param3)
{
    Window * v0 = BattleSystem_Window(param0, 0);

    ov16_0223FBE8(param0, param2);
    ov16_0223FDE4(param0, param2);
    ov16_02240584(param0, param1, param2);

    BGL_FillWindow(v0, 0xff);

    return sub_0201D738(v0, 1, param0->msgBuffer, 0, 0, param3, ov16_022405A4);
}

u8 BattleMessage_PrintToWindow (BattleSystem * param0, Window * param1, MessageLoader * param2, BattleMessage * param3, int param4, int param5, int param6, int param7, int param8)
{
    int v0;

    ov16_0223FBE8(param0, param3);
    ov16_0223FDE4(param0, param3);
    ov16_02240584(param0, param2, param3);

    if (param6 & 0x1) {
        BGL_FillWindow(param1, 0xff);
    }

    if (param6 & 0x2) {
        v0 = param7 - sub_02002D7C(0, param0->msgBuffer, 0);
    } else {
        v0 = 0;
    }

    return sub_0201D738(param1, 0, param0->msgBuffer, param4 + v0, param5, param8, ov16_022405A4);
}

static void ov16_0223FBE8 (BattleSystem * param0, BattleMessage * param1)
{
    u32 v0;

    v0 = BattleSystem_BattleType(param0);

    if (param1->tags & 0x80) {
        return;
    }

    if (param1->tags & 0x40) {
        if (Battler_Side(param0, param1->battler)) {
            param1->id++;
        }

        return;
    }

    switch (param1->tags & 0x3f) {
    case 0:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 22:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 49:
    case 50:
    case 51:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
        break;
    case 1:
        if (Battler_Side(param0, param1->params[0] & 0xff)) {
            param1->id++;
        }
        break;
    case 2:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 44:
    case 45:
    case 46:
    case 47:
        if (Battler_Side(param0, param1->params[0] & 0xff)) {
            param1->id++;

            if (v0 & 0x1) {
                param1->id++;
            }
        }
        break;
    case 20:
        if (Battler_Side(param0, param1->params[1] & 0xff)) {
            param1->id++;
        }
        break;
    case 21:
    case 23:
    case 48:
        if (Battler_Side(param0, param1->params[1] & 0xff)) {
            param1->id++;

            if (v0 & 0x1) {
                param1->id++;
            }
        }
        break;
    case 9:
    case 31:
    case 32:
    case 33:
        if (Battler_Side(param0, param1->params[0] & 0xff)) {
            param1->id += 3;

            if (v0 & 0x1) {
                param1->id += 2;
            }

            if (Battler_Side(param0, param1->params[1] & 0xff)) {
                param1->id++;
            }
        } else {
            if (Battler_Side(param0, param1->params[1] & 0xff)) {
                param1->id++;

                if (v0 & 0x1) {
                    param1->id++;
                }
            }
        }
        break;
    case 36:
    case 43:
    case 52:
    case 53:
    case 54:
    case 55:
        if (Battler_Side(param0, param1->params[0] & 0xff)) {
            param1->id += 3;

            if (v0 & 0x1) {
                param1->id += 2;
            }

            if (Battler_Side(param0, param1->params[2] & 0xff)) {
                param1->id++;
            }
        } else {
            if (Battler_Side(param0, param1->params[2] & 0xff)) {
                param1->id++;

                if (v0 & 0x1) {
                    param1->id++;
                }
            }
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov16_0223FDE4 (BattleSystem * param0, BattleMessage * param1)
{
    switch (param1->tags & 0x3f) {
    case 0:
    case 1:
        break;
    case 2:
        ov16_02240460(param0, 0, param1->params[0]);
        break;
    case 3:
    case 20:
        ov16_02240484(param0, 0, param1->params[0]);
        break;
    case 4:
        ov16_022404F8(param0, 0, param1->params[0]);
        break;
    case 5:
        ov16_02240490(param0, 0, param1->params[0]);
        break;
    case 6:
        ov16_0224049C(param0, 0, param1->params[0]);
        break;
    case 7:
        ov16_022404B4(param0, 0, param1->params[0], param1->digits);
        break;
    case 8:
        ov16_0224055C(param0, 0, param1->params[0]);
        break;
    case 9:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        break;
    case 10:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240484(param0, 1, param1->params[1]);
        break;
    case 11:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        break;
    case 12:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404F8(param0, 1, param1->params[1]);
        break;
    case 13:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404E0(param0, 1, param1->params[1]);
        break;
    case 14:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240510(param0, 1, param1->params[1]);
        break;
    case 15:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        break;
    case 16:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240534(param0, 1, param1->params[1]);
        break;
    case 17:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_0224049C(param0, 1, param1->params[1]);
        break;
    case 18:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        break;
    case 19:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240574(param0, 1, param1->params[1]);
        break;
    case 21:
        ov16_02240484(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        break;
    case 22:
        ov16_02240484(param0, 0, param1->params[0]);
        ov16_02240484(param0, 1, param1->params[1]);
        break;
    case 23:
        ov16_022404EC(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        break;
    case 24:
        ov16_02240490(param0, 0, param1->params[0]);
        ov16_02240484(param0, 1, param1->params[1]);
        break;
    case 25:
        ov16_0224049C(param0, 0, param1->params[0]);
        ov16_0224049C(param0, 1, param1->params[1]);
        break;
    case 26:
        ov16_0224055C(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        break;
    case 27:
        ov16_0224055C(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        break;
    case 28:
        ov16_0224055C(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        break;
    case 29:
        ov16_0224055C(param0, 0, param1->params[0]);
        ov16_0224049C(param0, 1, param1->params[1]);
        break;
    case 30:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        break;
    case 31:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        ov16_02240484(param0, 2, param1->params[2]);
        break;
    case 32:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        ov16_022404EC(param0, 2, param1->params[2]);
        break;
    case 33:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        ov16_02240490(param0, 2, param1->params[2]);
        break;
    case 34:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240484(param0, 1, param1->params[1]);
        ov16_02240484(param0, 2, param1->params[2]);
        break;
    case 35:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240484(param0, 1, param1->params[1]);
        ov16_0224049C(param0, 2, param1->params[2]);
        break;
    case 36:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        break;
    case 37:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240484(param0, 2, param1->params[2]);
        break;
    case 38:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240490(param0, 2, param1->params[2]);
        break;
    case 39:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_022404F8(param0, 2, param1->params[2]);
        break;
    case 40:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_022404E0(param0, 2, param1->params[2]);
        break;
    case 41:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240504(param0, 2, param1->params[2]);
        break;
    case 42:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_0224049C(param0, 2, param1->params[2]);
        break;
    case 43:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        break;
    case 44:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        ov16_02240484(param0, 2, param1->params[2]);
        break;
    case 45:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        ov16_022404F8(param0, 2, param1->params[2]);
        break;
    case 46:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        ov16_02240504(param0, 2, param1->params[2]);
        break;
    case 47:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240574(param0, 1, param1->params[1]);
        ov16_02240574(param0, 2, param1->params[2]);
        break;
    case 48:
        ov16_02240490(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        ov16_02240538(param0, 2, param1->params[2]);
        break;
    case 49:
        ov16_0224055C(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        break;
    case 50:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        break;
    case 51:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        ov16_02240490(param0, 2, param1->params[2]);
        break;
    case 52:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_02240484(param0, 3, param1->params[3]);
        break;
    case 53:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_022404EC(param0, 3, param1->params[3]);
        break;
    case 54:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_022404EC(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_022404F8(param0, 3, param1->params[3]);
        break;
    case 55:
        ov16_02240460(param0, 0, param1->params[0]);
        ov16_02240490(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_02240490(param0, 3, param1->params[3]);
        break;
    case 56:
        ov16_0224055C(param0, 0, param1->params[0]);
        ov16_02240460(param0, 1, param1->params[1]);
        ov16_0224055C(param0, 2, param1->params[2]);
        ov16_02240460(param0, 3, param1->params[3]);
        break;
    case 57:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_02240460(param0, 3, param1->params[3]);
        break;
    case 58:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_0224055C(param0, 3, param1->params[3]);
        break;
    case 59:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        ov16_02240544(param0, 2, param1->params[2]);
        ov16_0224055C(param0, 3, param1->params[3]);
        break;
    case 60:
        ov16_02240544(param0, 0, param1->params[0]);
        ov16_0224055C(param0, 1, param1->params[1]);
        ov16_02240460(param0, 2, param1->params[2]);
        ov16_02240544(param0, 3, param1->params[3]);
        ov16_0224055C(param0, 4, param1->params[4]);
        ov16_02240460(param0, 5, param1->params[5]);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov16_02240460 (BattleSystem * param0, u32 param1, int param2)
{
    Pokemon * v0;

    v0 = BattleSystem_PartyPokemon(param0, param2 & 0xff, (param2 & 0xff00) >> 8);
    sub_0200B5CC(param0->unk_14, param1, &v0->box);
}

static void ov16_02240484 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B630(param0->unk_14, param1, param2);
}

static void ov16_02240490 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B70C(param0->unk_14, param1, param2);
}

static void ov16_0224049C (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B60C(param0->unk_14, param1, param2, 5, 0, 1);
}

static void ov16_022404B4 (BattleSystem * param0, u32 param1, int param2, int param3)
{
    if (param3) {
        sub_0200B60C(param0->unk_14, param1, param2, param3, 1, 1);
    } else {
        sub_0200B60C(param0->unk_14, param1, param2, 5, 1, 1);
    }
}

static void ov16_022404E0 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B7EC(param0->unk_14, param1, param2);
}

static void ov16_022404EC (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B6A0(param0->unk_14, param1, param2);
}

static void ov16_022404F8 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B824(param0->unk_14, param1, param2);
}

static void ov16_02240504 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B85C(param0->unk_14, param1, param2);
}

static void ov16_02240510 (BattleSystem * param0, u32 param1, int param2)
{
    Pokemon * v0;

    v0 = BattleSystem_PartyPokemon(param0, param2 & 0xff, (param2 & 0xff00) >> 8);
    sub_0200B538(param0->unk_14, param1, &v0->box);
}

static void ov16_02240534 (BattleSystem * param0, u32 param1, int param2)
{
    return;
}

static void ov16_02240538 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200B890(param0->unk_14, param1, param2);
}

static void ov16_02240544 (BattleSystem * param0, u32 param1, int param2)
{
    TrainerData * v0;

    v0 = BattleSystem_TrainerData(param0, param2);
    sub_0200B9D0(param0->unk_14, param1, v0);
}

static void ov16_0224055C (BattleSystem * param0, u32 param1, int param2)
{
    TrainerData * v0;

    v0 = BattleSystem_TrainerData(param0, param2);
    sub_0200BA74(param0->unk_14, param1, v0);
}

static void ov16_02240574 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200BD40(param0->unk_14, param1, param0->pcBoxes, param2);
}

static void ov16_02240584 (BattleSystem * param0, MessageLoader * param1, BattleMessage * param2)
{
    Strbuf* v0;

    v0 = MessageLoader_GetNewStrbuf(param1, param2->id);

    sub_0200C388(param0->unk_14, param0->msgBuffer, v0);
    Strbuf_Free(v0);
}

static BOOL ov16_022405A4 (UnkStruct_0201D738 * param0, u16 param1)
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
