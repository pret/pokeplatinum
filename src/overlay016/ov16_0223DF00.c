#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"

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
#include "unk_02079170.h"
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

UnkStruct_02018340 * ov16_0223DF00(BattleSystem * param0);
UnkStruct_0205AA50 * ov16_0223DF04(BattleSystem * param0, int param1);
u32 BattleSystem_BattleType(BattleSystem * param0);
BattleContext * BattleSystem_Context(BattleSystem * param0);
UnkStruct_ov16_0225BFFC * BattleSystem_BattlerData(BattleSystem * param0, int param1);
int BattleSystem_MaxBattlers(BattleSystem * param0);
Party * ov16_0223DF20(BattleSystem * param0, int param1);
int ov16_0223DF60(BattleSystem * param0, int param1);
Pokemon * ov16_0223DFAC(BattleSystem * param0, int param1, int param2);
UnkStruct_02007768 * ov16_0223E000(BattleSystem * param0);
UnkStruct_ov12_0221FCDC * ov16_0223E008(BattleSystem * param0);
UnkStruct_0200C6E4 * ov16_0223E010(BattleSystem * param0);
UnkStruct_0200C704 * ov16_0223E018(BattleSystem * param0);
UnkStruct_ov16_02268520 * ov16_0223E020(BattleSystem * param0, int param1);
UnkStruct_ov16_02268A14 * ov16_0223E02C(BattleSystem * param0);
UnkStruct_0200C440 * ov16_0223E04C(BattleSystem * param0);
UnkStruct_0200C440 * ov16_0223E054(BattleSystem * param0);
MessageLoader * ov16_0223E05C(BattleSystem * param0);
MessageLoader * ov16_0223E060(BattleSystem * param0);
UnkStruct_02002F38 * ov16_0223E064(BattleSystem * param0);
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
TrainerData * ov16_0223E120(BattleSystem * param0, int param1);
TrainerInfo * ov16_0223E16C(BattleSystem * param0, int param1);
UnkStruct_0207D3C0 * BattleSystem_Bag(BattleSystem * param0);
UnkStruct_0207D99C * BattleSystem_BagCursor(BattleSystem * param0);
u32 ov16_0223E1B4(BattleSystem * param0, int param1);
int ov16_0223E1C4(BattleSystem * param0, int param1);
u8 BattleSystem_BattlerSlot(BattleSystem *battleSys, int battler);
u8 Battler_Side(BattleSystem * param0, int param1);
void * ov16_0223E220(BattleSystem * param0);
UnkStruct_020797DC * ov16_0223E228(BattleSystem * param0);
int ov16_0223E22C(BattleSystem * param0);
int ov16_0223E240(BattleSystem * param0);
int ov16_0223E24C(BattleSystem * param0);
int BattleSystem_Partner(BattleSystem *battleSys, int battler);
int ov16_0223E2A4(BattleSystem * param0, int param1, int param2);
BOOL ov16_0223E30C(BattleSystem * param0, int param1, int param2, int param3, int param4);
u32 ov16_0223EBEC(BattleSystem * param0);
int ov16_0223EBF8(BattleSystem * param0);
int ov16_0223EC04(BattleSystem * param0);
u8 ov16_0223EC58(BattleSystem * param0, int param1, u8 param2);
u16 ov16_0223ECC4(BattleParams * param0, int * param1, int * param2);
u8 ov16_0223ED60(BattleSystem * param0);
u8 ov16_0223ED6C(BattleSystem * param0);
int BattleSystem_NumSafariBalls(BattleSystem * param0);
void BattleSystem_SetSafariBalls(BattleSystem * param0, int param1);
UnkStruct_020279FC * ov16_0223EDA4(BattleSystem * param0);
BOOL ov16_0223EDAC(BattleSystem * param0);
int ov16_0223EDE0(BattleSystem * param0);
u8 ov16_0223EDF0(BattleSystem * param0);
int ov16_0223EE18(BattleSystem * param0);
UnkStruct_02015F84 * ov16_0223EE28(BattleSystem * param0);
UnkStruct_0202CC84 * ov16_0223EE30(BattleSystem * param0, int param1);
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
int ov16_0223F21C(BattleSystem * param0);
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
void ov16_0223F444(BattleSystem * param0, u8 param1);
u8 ov16_0223F450(BattleSystem * param0);
void ov16_0223F460(BattleSystem * param0, u8 param1);
u8 ov16_0223F47C(BattleSystem * param0);
void ov16_0223F48C(BattleSystem * param0, u8 param1);
void ov16_0223F4B0(BattleSystem * param0, int param1);
u16 BattleSystem_RandNext(BattleSystem * param0);
u32 ov16_0223F4E8(BattleSystem * param0);
void ov16_0223F4F4(BattleSystem * param0, u32 param1);
void ov16_0223F500(BattleSystem * param0, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem * param0, int param1, u8 * param2);
u8 ov16_0223F58C(BattleSystem * param0, u8 * param1);
void ov16_0223F638(BattleSystem * param0, u16 param1, u8 * param2);
u16 ov16_0223F6E4(BattleSystem * param0);
int ov16_0223F6F0(BattleSystem * param0, u16 param1);
u16 ov16_0223F700(BattleSystem * param0, int param1, int param2);
u32 ov16_0223F710(BattleSystem * param0);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem * param0);
void BattleSystem_ShowStopPlaybackButton(BattleSystem * param0);
u8 ov16_0223F810(BattleSystem * param0, int param1);
void ov16_0223F858(BattleSystem * param0, u8 * param1);
void ov16_0223F87C(BattleSystem * param0, u8 * param1);
void ov16_0223F8AC(BattleSystem * param0, UnkStruct_02007C7C ** param1);
void ov16_0223F8DC(BattleSystem * param0, int param1);
u32 ov16_0223F904(Party * param0, TrainerInfo * param1);
void ov16_0223F938(BattleSystem * param0, int param1);
void ov16_0223F9A0(BattleSystem * param0, int param1);
BOOL ov16_0223F9E0(BattleSystem * param0, int param1);
void ov16_0223F9F0(void);
u8 ov16_0223F9FC(BattleSystem * param0, int param1, int param2, int param3, int param4);
u8 ov16_0223FB24(BattleSystem * param0, MessageLoader * param1, BattleMessage * param2, int param3);
u8 ov16_0223FB78(BattleSystem * param0, UnkStruct_0205AA50 * param1, MessageLoader * param2, BattleMessage * param3, int param4, int param5, int param6, int param7, int param8);
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

UnkStruct_02018340 * ov16_0223DF00 (BattleSystem * param0)
{
    return param0->unk_04;
}

UnkStruct_0205AA50 * ov16_0223DF04 (BattleSystem * param0, int param1)
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

UnkStruct_ov16_0225BFFC * BattleSystem_BattlerData (BattleSystem *battleSys, int battler)
{
    return battleSys->battlers[battler];
}

int BattleSystem_MaxBattlers (BattleSystem *battleSys)
{
    return battleSys->maxBattlers;
}

Party * ov16_0223DF20 (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->parties[param1];
    } else if (param0->battleType & 0x2) {
        return param0->parties[param1 & 1];
    } else {
        return param0->parties[param1];
    }
}

int ov16_0223DF60 (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return Party_GetCurrentCount(param0->parties[param1]);
    } else if (param0->battleType & 0x2) {
        return Party_GetCurrentCount(param0->parties[param1 & 1]);
    } else {
        return Party_GetCurrentCount(param0->parties[param1]);
    }
}

Pokemon * ov16_0223DFAC (BattleSystem * param0, int param1, int param2)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return Party_GetPokemonBySlotIndex(param0->parties[param1], param2);
    } else if (param0->battleType & 0x2) {
        return Party_GetPokemonBySlotIndex(param0->parties[param1 & 1], param2);
    } else {
        return Party_GetPokemonBySlotIndex(param0->parties[param1], param2);
    }
}

UnkStruct_02007768 * ov16_0223E000 (BattleSystem * param0)
{
    return param0->unk_88;
}

UnkStruct_ov12_0221FCDC * ov16_0223E008 (BattleSystem * param0)
{
    return param0->unk_8C;
}

UnkStruct_0200C6E4 * ov16_0223E010 (BattleSystem * param0)
{
    return param0->unk_90;
}

UnkStruct_0200C704 * ov16_0223E018 (BattleSystem * param0)
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

MessageLoader * ov16_0223E05C (BattleSystem * param0)
{
    return param0->unk_0C;
}

MessageLoader * ov16_0223E060 (BattleSystem * param0)
{
    return param0->unk_10;
}

UnkStruct_02002F38 * ov16_0223E064 (BattleSystem * param0)
{
    return param0->unk_28;
}

UnkStruct_02026324 * ov16_0223E068 (BattleSystem * param0)
{
    return param0->unk_60;
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
        return param0->unk_A0[param1];
    } else if (param0->battleType & 0x2) {
        return param0->unk_A0[param1 & 1];
    } else {
        return param0->unk_A0[param1];
    }
}

TrainerData * ov16_0223E120 (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return &param0->trainers[param1];
    } else if (param0->battleType & 0x2) {
        return &param0->trainers[param1 & 1];
    } else {
        return &param0->trainers[param1];
    }
}

TrainerInfo * ov16_0223E16C (BattleSystem * param0, int param1)
{
    if ((param0->battleType & 0x8) || ((param0->battleType & 0x10) && (BattleSystem_BattlerSlot(param0, param1) & 0x1))) {
        return param0->unk_48[param1];
    } else if (param0->battleType & 0x2) {
        return param0->unk_48[param1 & 1];
    } else {
        return param0->unk_48[param1];
    }
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
    return TrainerInfo_Gender(param0->unk_48[param1]);
}

int ov16_0223E1C4 (BattleSystem * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        if (ov16_02263AE4(param0->battlers[v0]) == param1) {
            break;
        }
    }

    GF_ASSERT(v0 < param0->maxBattlers);

    return v0;
}

u8 BattleSystem_BattlerSlot (BattleSystem *battleSys, int battler)
{
    return ov16_02263AE4(battleSys->battlers[battler]);
}

u8 Battler_Side (BattleSystem * param0, int param1)
{
    return ov16_02263AE4(param0->battlers[param1]) & 1;
}

void * ov16_0223E220 (BattleSystem * param0)
{
    return param0->unk_1AC;
}

UnkStruct_020797DC * ov16_0223E228 (BattleSystem * param0)
{
    return param0->unk_64;
}

int ov16_0223E22C (BattleSystem * param0)
{
    if ((param0->unk_23FC > 24) || (param0->unk_23FC < 0)) {
        return 24;
    }

    return param0->unk_23FC;
}

int ov16_0223E240 (BattleSystem * param0)
{
    return param0->unk_2400;
}

int ov16_0223E24C (BattleSystem * param0)
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

int ov16_0223E2A4 (BattleSystem * param0, int param1, int param2)
{
    int v0;
    int v1;
    u32 v2;

    v1 = BattleSystem_MaxBattlers(param0);
    v2 = BattleSystem_BattleType(param0);

    if ((v2 & 0x2) == 0) {
        return param1 ^ 1;
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((v0 != param1) && ((BattleSystem_BattlerSlot(param0, v0) & 2) == param2) && (Battler_Side(param0, v0) != Battler_Side(param0, param1))) {
            break;
        }
    }

    return v0;
}

BOOL ov16_0223E30C (BattleSystem * param0, int param1, int param2, int param3, int param4)
{
    BattleContext * v0;
    Pokemon * v1;
    BOOL v2;
    int v3;
    int v4;
    int v5;
    int v6;

    v0 = param0->battleCtx;
    v2 = 0;
    v4 = ov16_0225B45C(param0, v0, 2, param1);

    if ((BattleSystem_BattleType(param0) == (0x2 | 0x1)) || ((BattleSystem_BattleType(param0) & 0x10) && ((BattleSystem_BattlerSlot(param0, param1) & 0x1) == 0))) {
        v5 = ov16_0225B45C(param0, v0, 2, BattleSystem_Partner(param0, param1));

        if (v5 == param2) {
            param1 = BattleSystem_Partner(param0, param1);
        }
    } else {
        v5 = v4;
    }

    v1 = ov16_0223DFAC(param0, param1, param2);
    v6 = 0;

    if (Item_LoadParam(param4, 15, 5)) {
        v3 = Pokemon_GetValue(v1, MON_DATA_160, NULL);

        if (v3 & 0x7) {
            v3 &= (0x7 ^ 0xffffffff);
            Pokemon_SetValue(v1, 160, &v3);

            if ((v4 == param2) || (v5 == param2)) {
                v3 = ov16_02252060(v0, param1, 52, NULL);
                v3 &= (0x7 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 52, &v3);
                v3 = ov16_02252060(v0, param1, 53, NULL);
                v3 &= (0x8000000 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 53, &v3);
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 16, 5)) {
        v3 = Pokemon_GetValue(v1, MON_DATA_160, NULL);

        if (v3 & 0xf88) {
            v3 &= ((0x8 | 0x80 | 0xf00) ^ 0xffffffff);
            Pokemon_SetValue(v1, 160, &v3);

            if ((v4 == param2) || (v5 == param2)) {
                v3 = ov16_02252060(v0, param1, 52, NULL);
                v3 &= ((0x8 | 0x80 | 0xf00) ^ 0xffffffff);
                ov16_022523E8(v0, param1, 52, &v3);
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 17, 5)) {
        v3 = Pokemon_GetValue(v1, MON_DATA_160, NULL);

        if (v3 & 0x10) {
            v3 &= (0x10 ^ 0xffffffff);
            Pokemon_SetValue(v1, 160, &v3);

            if ((v4 == param2) || (v5 == param2)) {
                v3 = ov16_02252060(v0, param1, 52, NULL);
                v3 &= (0x10 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 52, &v3);
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 18, 5)) {
        v3 = Pokemon_GetValue(v1, MON_DATA_160, NULL);

        if (v3 & 0x20) {
            v3 &= (0x20 ^ 0xffffffff);
            Pokemon_SetValue(v1, 160, &v3);

            if ((v4 == param2) || (v5 == param2)) {
                v3 = ov16_02252060(v0, param1, 52, NULL);
                v3 &= (0x20 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 52, &v3);
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 19, 5)) {
        v3 = Pokemon_GetValue(v1, MON_DATA_160, NULL);

        if (v3 & 0x40) {
            v3 &= (0x40 ^ 0xffffffff);
            Pokemon_SetValue(v1, 160, &v3);

            if ((v4 == param2) || (v5 == param2)) {
                v3 = ov16_02252060(v0, param1, 52, NULL);
                v3 &= (0x40 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 52, &v3);
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 20, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            v3 = ov16_02252060(v0, param1, 53, NULL);

            if (v3 & 0x7) {
                v3 &= (0x7 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 53, &v3);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 21, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            v3 = ov16_02252060(v0, param1, 53, NULL);

            if (v3 & 0xf0000) {
                v3 &= (0xf0000 ^ 0xffffffff);
                ov16_022523E8(v0, param1, 53, &v3);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 22, 5)) {
        v3 = ov16_0225B45C(param0, v0, 1, param1);

        if (v3 == 0) {
            v3 = ov16_0225B45C(param0, v0, 0, param1);
            v3 |= 0x40;
            ov16_0225B540(param0, v0, 0, param1, v3);
            ov16_0225B540(param0, v0, 1, param1, 5);
            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 27, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            if (ov16_02252060(v0, param1, 19, NULL) < 12) {
                ov16_02252A14(v0, param1, 19, 1);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 28, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            if (ov16_02252060(v0, param1, 20, NULL) < 12) {
                ov16_02252A14(v0, param1, 20, 1);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 29, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            if (ov16_02252060(v0, param1, 22, NULL) < 12) {
                ov16_02252A14(v0, param1, 22, 1);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 30, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            if (ov16_02252060(v0, param1, 23, NULL) < 12) {
                ov16_02252A14(v0, param1, 23, 1);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 31, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            if (ov16_02252060(v0, param1, 21, NULL) < 12) {
                ov16_02252A14(v0, param1, 21, 1);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 32, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            if (ov16_02252060(v0, param1, 24, NULL) < 12) {
                ov16_02252A14(v0, param1, 24, 1);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 33, 5)) {
        if ((v4 == param2) || (v5 == param2)) {
            v3 = ov16_02252060(v0, param1, 53, NULL);

            if ((v3 & 0x100000) == 0) {
                v3 |= 0x100000;
                ov16_022523E8(v0, param1, 53, &v3);
                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 36, 5)) {
        v3 = Item_LoadParam(param4, 55, 5);

        if (Pokemon_GetValue(v1, MON_DATA_MOVE1_CUR_PP + param3, NULL) != Pokemon_GetValue(v1, MON_DATA_MOVE1_MAX_PP + param3, NULL)) {
            Pokemon_IncreaseValue(v1, MON_DATA_MOVE1_CUR_PP + param3, v3);

            if ((v4 == param2) || (v5 == param2)) {
                if (((ov16_02252060(v0, param1, 53, NULL) & 0x200000) == 0) && ((ov16_02252060(v0, param1, 75, NULL) & FlagIndex(param3)) == 0)) {
                    ov16_02252A14(v0, param1, 31 + param3, v3);
                }
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 37, 5)) {
        v3 = Item_LoadParam(param4, 55, 5);

        for (param3 = 0; param3 < 4; param3++) {
            if (Pokemon_GetValue(v1, MON_DATA_MOVE1_CUR_PP + param3, NULL) != Pokemon_GetValue(v1, MON_DATA_MOVE1_MAX_PP + param3, NULL)) {
                Pokemon_IncreaseValue(v1, MON_DATA_MOVE1_CUR_PP + param3, v3);

                if ((v4 == param2) || (v5 == param2)) {
                    if (((ov16_02252060(v0, param1, 53, NULL) & 0x200000) == 0) && ((ov16_02252060(v0, param1, 75, NULL) & FlagIndex(param3)) == 0)) {
                        ov16_02252A14(v0, param1, 31 + param3, v3);
                    }
                }

                v2 = 1;
            }
        }
    }

    if (Item_LoadParam(param4, 38, 5)) {
        v3 = 0;

        if (Item_LoadParam(param4, 23, 5)) {
            if (Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL) == 0) {
                v3 = 1;
            }
        } else {
            v3 = Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL);
        }

        if ((v3) && (Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL) != Pokemon_GetValue(v1, MON_DATA_MAX_HP, NULL))) {
            v3 = Item_LoadParam(param4, 54, 5);

            switch (v3) {
            case 255:
                v3 = Pokemon_GetValue(v1, MON_DATA_MAX_HP, NULL);
                break;
            case 254:
                v3 = Pokemon_GetValue(v1, MON_DATA_MAX_HP, NULL) / 2;

                if (v3 == 0) {
                    v3 = 1;
                }
                break;
            case 253:
                v3 = Pokemon_GetValue(v1, MON_DATA_MAX_HP, NULL) * 25 / 100;

                if (v3 == 0) {
                    v3 = 1;
                }
                break;
            default:
                break;
            }

            Pokemon_IncreaseValue(v1, MON_DATA_CURRENT_HP, v3);

            if (!Item_LoadParam(param4, 23, 5)) {
                if (Battler_Side(param0, param1)) {
                    ov16_022523E8(v0, param1, 95, &v3);
                } else {
                    if ((v4 == param2) || (v5 == param2)) {
                        ov16_02252A14(v0, param1, 47, v3);
                    }
                }
            }

            v2 = 1;
        }
    }

    if (Item_LoadParam(param4, 45, 5)) {
        if ((Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL) < 100) && (v2 == 1)) {
            v6 = Item_LoadParam(param4, 56, 5);
        }
    }

    if (Item_LoadParam(param4, 46, 5)) {
        if ((Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL) >= 100) && (Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL) < 200) && (v2 == 1)) {
            v6 = Item_LoadParam(param4, 57, 5);
        }
    }

    if (Item_LoadParam(param4, 47, 5)) {
        if ((Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL) >= 200) && (v2 == 1)) {
            v6 = Item_LoadParam(param4, 58, 5);
        }
    }

    if (v6) {
        if (v6 > 0) {
            if (Pokemon_GetValue(v1, MON_DATA_POKEBALL, NULL) == 11) {
                v6++;
            }

            if (Pokemon_GetValue(v1, MON_DATA_152, NULL) == ov16_0223E24C(param0)) {
                v6++;
            }

            v3 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);

            if (Item_LoadParam(param4, 1, 5) == 53) {
                v6 = v6 * 150 / 100;
            }
        }

        Pokemon_IncreaseValue(v1, MON_DATA_FRIENDSHIP, v6);

        if ((v4 == param2) || (v5 == param2)) {
            ov16_02252A14(v0, param1, 44, v6);
        }
    }

    return v2;
}

u32 BattleSystem_BattleStatus (BattleSystem *battleSys)
{
    return battleSys->battleStatusMask;
}

int ov16_0223EBF8 (BattleSystem * param0)
{
    return param0->unk_240C;
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
        switch (param0->unk_240C) {
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
            v0 = ov16_0225B45C(param0, param0->battleCtx, 12, 0) & 0xffff;

            if (((ov16_0225B45C(param0, param0->battleCtx, 8, 0) == 14) && (v0 > 16)) || (param2 & FlagIndex(0))) {
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
    return ov16_0225B45C(param0, param0->battleCtx, 5, NULL);
}

int BattleSystem_NumSafariBalls (BattleSystem * param0)
{
    return param0->unk_2410;
}

void BattleSystem_SetSafariBalls (BattleSystem * param0, int param1)
{
    param0->unk_2410 = param1;
}

UnkStruct_020279FC * ov16_0223EDA4 (BattleSystem * param0)
{
    return param0->unk_1B0;
}

BOOL ov16_0223EDAC (BattleSystem * param0)
{
    if ((param0->battleType & 0x4) && ((param0->battleStatusMask & 0x10) == 0)) {
        return 1;
    }

    return sub_02027AF8(param0->unk_1B0) == 0;
}

int ov16_0223EDE0 (BattleSystem * param0)
{
    return sub_02027B50(param0->unk_1B0);
}

u8 ov16_0223EDF0 (BattleSystem * param0)
{
    if ((param0->battleType & 0x4) && ((param0->battleStatusMask & 0x10) == 0)) {
        return 1;
    }

    return sub_02027AC0(param0->unk_1B0);
}

int ov16_0223EE18 (BattleSystem * param0)
{
    return sub_02027B14(param0->unk_1B0);
}

UnkStruct_02015F84 * ov16_0223EE28 (BattleSystem * param0)
{
    return param0->unk_1C4;
}

UnkStruct_0202CC84 * ov16_0223EE30 (BattleSystem * param0, int param1)
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

    for (v0 = 0; v0 < ov16_0223DF60(param0, 0); v0++) {
        v2 = ov16_0223DFAC(param0, 0, v0);
        v3 = Pokemon_GetValue(v2, MON_DATA_SPECIES_EGG, NULL);

        if ((v3 == 412) && (param0->unk_2414[0] & FlagIndex(v0))) {
            switch (ov16_0223E22C(param0)) {
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

int ov16_0223F21C (BattleSystem * param0)
{
    return param0->unk_2428;
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
        v1->unk_25 = ov16_0226825C(ov16_02263AE4(param0->battlers[v0]), BattleSystem_BattleType(param0));

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

void ov16_0223F444 (BattleSystem * param0, u8 param1)
{
    param0->resultMask = param1;
}

u8 ov16_0223F450 (BattleSystem * param0)
{
    return param0->unk_23FB_3;
}

void ov16_0223F460 (BattleSystem * param0, u8 param1)
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

void ov16_0223F500 (BattleSystem * param0, int param1, u8 param2)
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

u16 ov16_0223F700 (BattleSystem * param0, int param1, int param2)
{
    return param0->trainers[param1].unk_04[param2];
}

u32 ov16_0223F710 (BattleSystem * param0)
{
    return param0->unk_2474_0;
}

void BattleSystem_SetStopRecording (BattleSystem *battleSys, int flag)
{
    if (((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) || (battleSys->unk_2474_0) || (ov16_0225B45C(battleSys, battleSys->battleCtx, 13, 0) == 43) || (ov16_0225B45C(battleSys, battleSys->battleCtx, 14, 0) == 43)) {
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
    if (((param0->battleStatusMask & 0x10) == 0) || (param0->unk_2474_0) || (ov16_0225B45C(param0, param0->battleCtx, 13, 0) == 43) || (ov16_0225B45C(param0, param0->battleCtx, 14, 0) == 43)) {
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

u8 ov16_0223F810 (BattleSystem * param0, int param1)
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
        param1[ov16_02263AE4(param0->battlers[v0])] = v0;
    }
}

void ov16_0223F87C (BattleSystem * param0, u8 * param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = 0xff;
    }

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        param1[v0] = ov16_02263AE4(param0->battlers[v0]);
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

void ov16_0223F8DC (BattleSystem * param0, int param1)
{
    int v0;
    UnkStruct_ov16_022674C4 * v1;

    for (v0 = 0; v0 < param0->maxBattlers; v0++) {
        v1 = ov16_02263B08(param0->battlers[v0]);
        ov16_022675D8(v1, param1);
    }
}

u32 ov16_0223F904 (Party * param0, TrainerInfo * param1)
{
    static const u8 v0[] = {
        2, 4, 6, 9, 12, 16, 20, 25, 30,
    };
    u32 v1, v2;
    u8 v3;

    v3 = TrainerInfo_BadgeCount(param1);
    v1 = Party_GetMaxLevel(param0) * 4 * v0[v3];
    v2 = TrainerInfo_Money(param1);

    if (v1 > v2) {
        v1 = v2;
    }

    return v1;
}

void ov16_0223F938 (BattleSystem * param0, int param1)
{
    int v0;
    Pokemon * v1;
    int v2;

    v0 = ov16_02263AE4(param0->battlers[param1]);
    v2 = ov16_0225B45C(param0, param0->battleCtx, 2, param1);
    v1 = ov16_0223DFAC(param0, param1, v2);

    if ((param0->battleType & (0x4 | 0x80)) == 0) {
        if ((v0 & 0x1) || (param0->battleType == (0x2 | 0x8 | 0x40)) || (param0->battleType == ((0x2 | 0x1) | 0x8 | 0x40))) {
            sub_020272A4(param0->unk_60, v1);
        }
    }

    if (((v0 & 0x1) == 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) == 412)) {
        sub_0202736C(param0->unk_60, v1);
    }
}

void ov16_0223F9A0 (BattleSystem * param0, int param1)
{
    int v0;

    v0 = ov16_02263AE4(param0->battlers[param1]);

    if ((param0->battleType & (0x4 | 0x80)) == 0) {
        if (v0 & 0x1) {
            {
                Pokemon * v1;
                int v2;

                v2 = ov16_0225B45C(param0, param0->battleCtx, 2, param1);
                v1 = ov16_0223DFAC(param0, param1, v2);

                sub_0202736C(param0->unk_60, v1);
            }
        }
    }
}

BOOL ov16_0223F9E0 (BattleSystem * param0, int param1)
{
    return sub_02026F9C(param0->unk_60, param1);
}

void ov16_0223F9F0 (void)
{
    G2_BlendNone();
}

u8 ov16_0223F9FC (BattleSystem * param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_0205AA50 * v0 = ov16_0223DF04(param0, 0);
    int v1;

    if (param0->battleType & 0x80) {
        if (param1 == 10000) {
            {
                Strbuf* v2;

                if (param3 == 100) {
                    v2 = sub_02014B34(&param0->trainers[param2].unk_24, 5);
                } else {
                    v2 = sub_02014B34(&param0->trainers[param2].unk_2C, 5);
                }

                sub_0201ADA4(v0, 0xff);
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
                    if (TrainerInfo_GameCode(param0->unk_48[v7]) == 0) {
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

                sub_0201ADA4(v0, 0xff);

                v1 = sub_0201D738(v0, 1, v4, 0, 0, param4, ov16_022405A4);
                Strbuf_Free(v4);
                MessageLoader_Free(v3);
            }
        }
    } else {
        sub_020792F8(param1, param3, param0->msgBuffer, 5);
        sub_0201ADA4(v0, 0xff);
        v1 = sub_0201D738(v0, 1, param0->msgBuffer, 0, 0, param4, ov16_022405A4);
    }

    return v1;
}

u8 ov16_0223FB24 (BattleSystem * param0, MessageLoader * param1, BattleMessage * param2, int param3)
{
    UnkStruct_0205AA50 * v0 = ov16_0223DF04(param0, 0);

    ov16_0223FBE8(param0, param2);
    ov16_0223FDE4(param0, param2);
    ov16_02240584(param0, param1, param2);

    sub_0201ADA4(v0, 0xff);

    return sub_0201D738(v0, 1, param0->msgBuffer, 0, 0, param3, ov16_022405A4);
}

u8 ov16_0223FB78 (BattleSystem * param0, UnkStruct_0205AA50 * param1, MessageLoader * param2, BattleMessage * param3, int param4, int param5, int param6, int param7, int param8)
{
    int v0;

    ov16_0223FBE8(param0, param3);
    ov16_0223FDE4(param0, param3);
    ov16_02240584(param0, param2, param3);

    if (param6 & 0x1) {
        sub_0201ADA4(param1, 0xff);
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

    v0 = ov16_0223DFAC(param0, param2 & 0xff, (param2 & 0xff00) >> 8);
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

    v0 = ov16_0223DFAC(param0, param2 & 0xff, (param2 & 0xff00) >> 8);
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

    v0 = ov16_0223E120(param0, param2);
    sub_0200B9D0(param0->unk_14, param1, v0);
}

static void ov16_0224055C (BattleSystem * param0, u32 param1, int param2)
{
    TrainerData * v0;

    v0 = ov16_0223E120(param0, param2);
    sub_0200BA74(param0->unk_14, param1, v0);
}

static void ov16_02240574 (BattleSystem * param0, u32 param1, int param2)
{
    sub_0200BD40(param0->unk_14, param1, param0->unk_64, param2);
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
        sub_02005748(1510);
        break;
    case 5:
        sub_02006150(1155);
        break;
    default:
        break;
    }

    return v0;
}
