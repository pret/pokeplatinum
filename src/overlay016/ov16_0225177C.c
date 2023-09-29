#include <nitro.h>
#include <string.h>

#include "constants/abilities.h"
#include "constants/items.h"
#include "constants/battle/condition.h"
#include "constants/battle/moves.h"
#include "constants/battle/side_effects.h"
#include "constants/battle/system_control.h"
#include "constants/battle/turn_flags.h"
#include "constants/narc_files/battle_skill_subseq.h"

#include "struct_decls/struct_party_decl.h"
#include "struct_decls/battle_system.h"
#include "struct_decls/struct_02098700_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "overlay016/const_ov16_0226EBE0.h"

#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_message.h"
#include "battle/battle_mon.h"
#include "battle/common.h"

#include "unk_020021B0.h"
#include "narc.h"
#include "heap.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_020366A0.h"
#include "pokemon.h"
#include "move_table.h"
#include "unk_02079170.h"
#include "party.h"
#include "item.h"
#include "unk_0208C098.h"
#include "unk_02098700.h"
#include "unk_02098988.h"
#include "flags.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"

typedef struct {
    u16 unk_00;
    s16 unk_02;
    u16 unk_04;
    u16 unk_06;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
} UnkStruct_ov16_0225A280;

void BattleSystem_InitBattleMon(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_02251C94(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleSystem_LoadScript(BattleContext * param0, int param1, int param2);
void ov16_02251E5C(BattleContext * param0, int param1, int param2);
BOOL ov16_02251EF4(BattleContext * param0);
void ov16_02251F44(BattleContext * param0, int param1, int param2, int param3);
void ov16_02251F80(BattleContext * param0, int param1, int param2, int param3);
BOOL ov16_02251FC8(BattleContext * param0);
void ov16_0225201C(BattleContext * param0);
void BattleIO_ClearBuffer(BattleContext *battleCtx, int battler);
int BattleMon_Get(BattleContext * param0, int param1, int param2, void * param3);
void ov16_022523E8(BattleContext * param0, int param1, int param2, const void * param3);
void ov16_02252A14(BattleContext * param0, int param1, int param2, int param3);
void ov16_02252A2C(BattleMon * param0, int param1, int param2);
u8 BattleSystem_CompareBattlerSpeed(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
void ov16_022535E0(BattleContext * param0, int param1);
void ov16_022535F0(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_CheckPrimaryEffect(BattleSystem * param0, BattleContext * param1, int * param2);
BOOL BattleSystem_TriggerSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
int BattleSystem_Defender(BattleSystem * param0, BattleContext * param1, int param2, u16 param3, int param4, int param5);
void BattleSystem_RedirectTarget(BattleSystem * param0, BattleContext * param1, int param2, u16 param3);
BOOL BattleMove_TriggerRedirectionAbilities(BattleSystem * param0, BattleContext * param1);
void BattleMon_CopyToParty(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02253EF0(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_BreakMultiTurn(BattleSystem * param0, BattleContext * param1, int param2);
int ov16_02253F7C(BattleContext * param0, int param1);
BOOL BattleSystem_CheckTrainerMessage(BattleSystem * param0, BattleContext * param1);
void BattleContext_Init(BattleContext * param0);
void BattleContext_InitCounters(BattleSystem * param0, BattleContext * param1);
void ov16_0225433C(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02254744(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_SetupNextTurn(BattleSystem * param0, BattleContext * param1);
int BattleSystem_CheckStruggling(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
BOOL BattleSystem_CanUseMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int moveSlot, BattleMessage *msgOut);
int Battler_SlotForMove(BattleMon * param0, u16 param1);
int BattleSystem_CheckTypeChart(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, int param5, int param6, u32 * param7);
void ov16_022552D4(BattleContext * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, u32 * param8);
BOOL BattleContext_MoveFailed(BattleContext * param0, int param1);
u8 ov16_022554E0(BattleSystem * param0, BattleContext * param1, int param2, int param3);
int BattleSystem_NicknameTag(BattleContext *battleSys, int battler);
u16 Battler_SelectedMove(BattleContext * param0, int param1);
int BattleSystem_CountAbility(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
BOOL BattleMove_IsMultiTurn(BattleContext * param0, int param1);
BOOL ov16_0225588C(BattleSystem * param0, int param1, u8 * param2, u8 * param3, u8 * param4);
int ov16_022558CC(u8 param0, u8 param1, u8 param2);
BOOL ov16_02255918(u16 param0);
BOOL BattleSystem_IsGhostCurse(BattleContext * param0, u16 param1, int param2);
BOOL ov16_02255980(BattleSystem * param0, BattleContext * param1, int param2);
BOOL ov16_022559DC(BattleContext * param0, int param1);
BOOL ov16_022559FC(BattleSystem * param0, BattleContext * param1);
u8 Battler_Ability(BattleContext * param0, int param1);
BOOL Battler_IgnorableAbility(BattleContext * param0, int param1, int param2, int param3);
BOOL BattleSystem_CheckAnySwitches(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_Trapped(BattleSystem * param0, BattleContext * param1, int param2, BattleMessage * param3);
BOOL BattleSystem_TryEscape(BattleSystem * param0, BattleContext * param1, int param2);
BOOL Battler_CheckTruant(BattleContext * param0, int param1);
BOOL BattleSystem_Imprisoned(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL ov16_02255F68(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_SetupLoop(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleSystem_SortMonsBySpeed(BattleSystem * param0, BattleContext * param1);
BOOL BattleSystem_FailsInHighGravity(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL BattleSystem_HealBlocked(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleSystem_UpdateLastResort(BattleSystem * param0, BattleContext * param1);
int ov16_02256128(BattleSystem * param0, BattleContext * param1, int param2);
int BattleSystem_CheckImmunityAbilities(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_TriggerTurnEndAbility(BattleSystem * param0, BattleContext * param1, int param2);
int BattleSystem_Divide(int param0, int param1);
int BattleSystem_ShowMonChecks(BattleSystem * param0, BattleContext * param1);
int BattleSystem_RandomOpponent(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
BOOL ov16_02257628(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL ov16_022577A4(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_SynchronizeStatus(BattleSystem * battleSys, BattleContext * battleCtx, int controllerCommand);
BOOL BattleSystem_TriggerHeldItem(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerLeftovers(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerHeldItemOnStatus(BattleSystem * param0, BattleContext * param1, int param2, int * param3);
BOOL BattleSystem_TriggerDetrimentalHeldItem(BattleSystem * param0, BattleContext * param1, int param2);
u16 ov16_02258874(BattleContext * param0, int param1);
BOOL Battler_MovedThisTurn(BattleContext * param0, int param1);
BOOL BattleSystem_TriggerHeldItemOnHit(BattleSystem * param0, BattleContext * param1, int * param2);
s32 Battler_HeldItemEffect(BattleContext * param0, int param1);
s32 Battler_HeldItemPower(BattleContext * param0, int param1, int param2);
s32 ov16_02258B18(BattleContext * param0, int param1);
s32 ov16_02258B2C(BattleContext * param0, int param1);
s32 ov16_02258B40(BattleContext * param0, int param1);
s32 ov16_02258B58(BattleContext * param0, int param1);
s32 ov16_02258B80(BattleContext * param0, int param1);
int BattleSystem_CanSwitch(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
BOOL ov16_02258CB4(BattleSystem * param0, BattleContext * param1, int param2);
BOOL ov16_02259204(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_UpdateMetronomeCount(BattleSystem * param0, BattleContext * param1);
void ov16_0225991C(BattleSystem * param0, BattleContext * param1);
int ov16_022599D0(BattleContext * param0, int param1, int param2, int param3);
BOOL BattleSystem_CanPickCommand(BattleContext *battleSys, int battler);
void ov16_02259A5C(BattleSystem * param0, BattleContext * param1, Pokemon * param2);
u8 BattleContext_IOBufferVal(BattleContext *battleCtx, int battler);
BOOL Battler_BehindSubstitute(BattleContext * param0, int param1);
BOOL BattleSystem_TrainerIsOT(BattleSystem * param0, BattleContext * param1);
BOOL ov16_02259B38(BattleSystem * param0, Pokemon * param1);
BOOL BattleSystem_UpdateWeatherForms(BattleSystem * param0, BattleContext * param1, int * param2);
void ov16_0225A1B0(BattleSystem * param0, BattleContext * param1);
void BattleSystem_SwitchSlots(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
int BattleSystem_CalcMoveDamage(BattleSystem * param0, BattleContext * param1, int param2, u32 param3, u32 param4, u16 param5, u8 param6, u8 param7, u8 param8, u8 param9);
int BattleSystem_CalcDamageVariance(BattleSystem * param0, BattleContext * param1, int param2);
int ov16_0225AEE4(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, u32 param5);
BOOL ov16_0225AFF4(u16 param0);
BOOL ov16_0225B02C(BattleSystem * param0, BattleContext * param1, int param2, u16 param3);
BOOL ov16_0225B084(BattleContext * param0, u16 param1);
BOOL ov16_0225B0C0(BattleContext * param0, u16 param1);
s32 ov16_0225B0FC(BattleContext * param0, u16 param1, u16 param2);
int BattleSystem_SideToBattler(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_0225B148(BattleSystem * param0, BattleContext * param1);
BOOL ov16_0225B1DC(BattleContext * param0, int param1, int param2);
BOOL ov16_0225B228(BattleSystem * param0, BattleContext * param1, int * param2);
void BattleSystem_DecPPForPressure(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_RecordingStopped(BattleSystem * param0, BattleContext * param1);
int ov16_0225B45C(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_0225B540(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
static BOOL ov16_02254EF4(BattleContext * param0, int param1, int param2, int param3);
static int BattleContext_SideEffect(BattleContext * param0, int param1, u32 param2);
static int ov16_0225B63C(BattleContext * param0, int param1, int param2, int param3, int param4, u32 * param5);
static BOOL ov16_022553F8(BattleContext * param0, int param1, int param2);
static void ov16_02255448(int param0, u32 * param1);
static BOOL ov16_0225B6C8(BattleContext * param0, int param1);
static u8 ov16_0225B734(BattleContext * param0, int param1, int param2);
static void ov16_0225B80C(BattleContext * param0, u8 param1);
static void ov16_0225B824(BattleContext * param0, u8 param1);
static void ov16_0225B830(BattleContext * param0, u8 param1);
static int ov16_0225B840(BattleSystem * param0, BattleContext * param1, int param2, int param3);
static BOOL ov16_0225B8E4(BattleContext * param0, int param1);
static int BattleMove_Type(BattleSystem * param0, BattleContext * param1, int param2, int param3);
int ov16_0225BA88(BattleSystem * param0, int param1);
int ov16_0225BE28(BattleSystem * param0, int param1);
int ov16_0225BE3C(BattleSystem * param0, BattleContext * param1, Pokemon * param2, int param3);

void BattleSystem_InitBattleMon (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    Pokemon * v0 = ov16_0223DFAC(battleSys, battler, partySlot);
    int v1;
    int v2;
    UnkStruct_02098700 * v3;

    battleCtx->battleMons[battler].species = Pokemon_GetValue(v0, MON_DATA_SPECIES, 0);
    battleCtx->battleMons[battler].attack = Pokemon_GetValue(v0, MON_DATA_ATK, 0);
    battleCtx->battleMons[battler].defense = Pokemon_GetValue(v0, MON_DATA_DEF, 0);
    battleCtx->battleMons[battler].speed = Pokemon_GetValue(v0, MON_DATA_SPEED, 0);
    battleCtx->battleMons[battler].spAttack = Pokemon_GetValue(v0, MON_DATA_SP_ATK, 0);
    battleCtx->battleMons[battler].spDefense = Pokemon_GetValue(v0, MON_DATA_SP_DEF, 0);

    for (v1 = 0; v1 < 4; v1++) {
        battleCtx->battleMons[battler].moves[v1] = Pokemon_GetValue(v0, MON_DATA_MOVE1 + v1, 0);
        battleCtx->battleMons[battler].ppCur[v1] = Pokemon_GetValue(v0, MON_DATA_MOVE1_CUR_PP + v1, 0);
        battleCtx->battleMons[battler].ppUps[v1] = Pokemon_GetValue(v0, MON_DATA_MOVE1_PP_UPS + v1, 0);
    }

    battleCtx->battleMons[battler].hpIV = Pokemon_GetValue(v0, MON_DATA_HP_IV, 0);
    battleCtx->battleMons[battler].attackIV = Pokemon_GetValue(v0, MON_DATA_ATK_IV, 0);
    battleCtx->battleMons[battler].defenseIV = Pokemon_GetValue(v0, MON_DATA_DEF_IV, 0);
    battleCtx->battleMons[battler].speedIV = Pokemon_GetValue(v0, MON_DATA_SPEED_IV, 0);
    battleCtx->battleMons[battler].spAttackIV = Pokemon_GetValue(v0, MON_DATA_SPATK_IV, 0);
    battleCtx->battleMons[battler].spDefenseIV = Pokemon_GetValue(v0, MON_DATA_SPDEF_IV, 0);
    battleCtx->battleMons[battler].isEgg = Pokemon_GetValue(v0, MON_DATA_IS_EGG, 0);
    battleCtx->battleMons[battler].hasNickname = Pokemon_GetValue(v0, MON_DATA_77, 0);

    if ((battleCtx->battleStatusMask & 0x100) == 0) {
        for (v1 = 0; v1 < 0x8; v1++) {
            battleCtx->battleMons[battler].statBoosts[v1] = 6;
        }
    }

    battleCtx->battleMons[battler].weatherAbilityAnnounced = 0;
    battleCtx->battleMons[battler].intimidateAnnounced = 0;
    battleCtx->battleMons[battler].traceAnnounced = 0;
    battleCtx->battleMons[battler].downloadAnnounced = 0;
    battleCtx->battleMons[battler].anticipationAnnounced = 0;
    battleCtx->battleMons[battler].forewarnAnnounced = 0;
    battleCtx->battleMons[battler].slowStartAnnounced = 0;
    battleCtx->battleMons[battler].slowStartFinished = 0;
    battleCtx->battleMons[battler].friskAnnounced = 0;
    battleCtx->battleMons[battler].moldBreakerAnnounced = 0;
    battleCtx->battleMons[battler].pressureAnnounced = 0;
    battleCtx->battleMons[battler].type1 = Pokemon_GetValue(v0, MON_DATA_177, 0);
    battleCtx->battleMons[battler].type2 = Pokemon_GetValue(v0, MON_DATA_178, 0);
    battleCtx->battleMons[battler].gender = Pokemon_GetGender(v0);
    battleCtx->battleMons[battler].isShiny = Pokemon_IsShiny(v0);

    if (BattleSystem_BattleType(battleSys) & (0x20 | 0x200)) {
        battleCtx->battleMons[battler].ability = 0;
        battleCtx->battleMons[battler].status = 0;
        battleCtx->battleMons[battler].heldItem = 0;
    } else {
        battleCtx->battleMons[battler].ability = Pokemon_GetValue(v0, MON_DATA_ABILITY, 0);
        battleCtx->battleMons[battler].status = Pokemon_GetValue(v0, MON_DATA_160, 0);
        battleCtx->battleMons[battler].heldItem = Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, 0);
    }

    if ((BattleSystem_BattleType(battleSys) & (0x20 | 0x200)) && (Battler_Side(battleSys, battler) == 0)) {
        battleCtx->battleMons[battler].formNum = 0;
    } else {
        battleCtx->battleMons[battler].formNum = Pokemon_GetValue(v0, MON_DATA_FORM, 0);
    }

    battleCtx->battleMons[battler].level = Pokemon_GetValue(v0, MON_DATA_LEVEL, 0);
    battleCtx->battleMons[battler].friendship = Pokemon_GetValue(v0, MON_DATA_FRIENDSHIP, 0);
    battleCtx->battleMons[battler].curHP = Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, 0);
    battleCtx->battleMons[battler].maxHP = Pokemon_GetValue(v0, MON_DATA_MAX_HP, 0);
    battleCtx->battleMons[battler].exp = Pokemon_GetValue(v0, MON_DATA_EXP, 0);
    battleCtx->battleMons[battler].pid = Pokemon_GetValue(v0, MON_DATA_PERSONALITY, 0);
    battleCtx->battleMons[battler].OTId = Pokemon_GetValue(v0, MON_DATA_OT_ID, 0);
    battleCtx->battleMons[battler].OTGender = Pokemon_GetValue(v0, MON_DATA_OT_GENDER, 0);
    battleCtx->battleMons[battler].capturedBall = Pokemon_GetValue(v0, MON_DATA_POKEBALL, 0);

    sub_02098988(battleCtx->battleMons[battler].formNum);
    v3 = sub_02098700(5);
    sub_0209872C(v3, 0, 5);

    battleCtx->battleMons[battler].weight = sub_02098828(v3, battleCtx->battleMons[battler].species);

    sub_020987BC(v3);
    sub_02098718(v3);
    Pokemon_GetValue(v0, MON_DATA_117, &battleCtx->battleMons[battler].nickname[0]);
    Pokemon_GetValue(v0, MON_DATA_144, &battleCtx->battleMons[battler].OTName[0]);

    battleCtx->battleMons[battler].timesDamaged = 0;
    battleCtx->battleMons[battler].trainerMessageFlags = 0;

    v2 = Battler_Side(battleSys, battler);

    if (battleCtx->sideConditions[v2].knockedOffItemsMask & FlagIndex(battleCtx->selectedPartySlot[battler])) {
        battleCtx->battleMons[battler].heldItem = 0;
        battleCtx->battleMons[battler].moveEffectsData.canUnburden = 0;
    } else {
        if (battleCtx->battleMons[battler].heldItem) {
            battleCtx->battleMons[battler].moveEffectsData.canUnburden = 1;
        }
    }
}

void ov16_02251C94 (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    Pokemon * v0 = ov16_0223DFAC(param0, param2, param3);
    int v1;
    int v2;

    param1->battleMons[param2].attack = Pokemon_GetValue(v0, MON_DATA_ATK, 0);
    param1->battleMons[param2].defense = Pokemon_GetValue(v0, MON_DATA_DEF, 0);
    param1->battleMons[param2].speed = Pokemon_GetValue(v0, MON_DATA_SPEED, 0);
    param1->battleMons[param2].spAttack = Pokemon_GetValue(v0, MON_DATA_SP_ATK, 0);
    param1->battleMons[param2].spDefense = Pokemon_GetValue(v0, MON_DATA_SP_DEF, 0);
    param1->battleMons[param2].level = Pokemon_GetValue(v0, MON_DATA_LEVEL, 0);
    param1->battleMons[param2].friendship = Pokemon_GetValue(v0, MON_DATA_FRIENDSHIP, 0);
    param1->battleMons[param2].curHP = Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, 0);
    param1->battleMons[param2].maxHP = Pokemon_GetValue(v0, MON_DATA_MAX_HP, 0);

    if ((param1->battleMons[param2].statusVolatile & 0x200000) == 0) {
        for (v1 = 0; v1 < 4; v1++) {
            if ((param1->battleMons[param2].moveEffectsData.mimickedMoveSlot & FlagIndex(v1)) == 0) {
                param1->battleMons[param2].moves[v1] = Pokemon_GetValue(v0, MON_DATA_MOVE1 + v1, 0);
                param1->battleMons[param2].ppCur[v1] = Pokemon_GetValue(v0, MON_DATA_MOVE1_CUR_PP + v1, 0);
                param1->battleMons[param2].ppUps[v1] = Pokemon_GetValue(v0, MON_DATA_MOVE1_PP_UPS + v1, 0);
            }
        }

        param1->battleMons[param2].exp = Pokemon_GetValue(v0, MON_DATA_EXP, 0);
    }
}

void BattleSystem_LoadScript (BattleContext *battleCtx, int narc, int file)
{
    GF_ASSERT(NARC_GetMemberSizeByIndexPair(narc, file) < BATTLE_SCRIPT_SIZE_MAX * sizeof(u32));

    battleCtx->scriptNarc = narc;
    battleCtx->scriptFile = file;
    battleCtx->scriptCursor = 0;

    NARC_ReadWholeMemberByIndexPair(&battleCtx->battleScript, narc, file);
}

void ov16_02251E5C (BattleContext * param0, int param1, int param2)
{
    GF_ASSERT(NARC_GetMemberSizeByIndexPair(param1, param2) < 400 * 4);
    GF_ASSERT(param0->scriptStackPointer < 4);

    param0->scriptStackNarc[param0->scriptStackPointer] = param0->scriptNarc;
    param0->scriptStackFile[param0->scriptStackPointer] = param0->scriptFile;
    param0->scriptStackCursor[param0->scriptStackPointer] = param0->scriptCursor;
    param0->scriptStackPointer++;
    param0->scriptNarc = param1;
    param0->scriptFile = param2;
    param0->scriptCursor = 0;

    NARC_ReadWholeMemberByIndexPair(&param0->battleScript, param1, param2);
}

BOOL ov16_02251EF4 (BattleContext * param0)
{
    if (param0->scriptStackPointer) {
        param0->scriptStackPointer--;
        BattleSystem_LoadScript(param0, param0->scriptStackNarc[param0->scriptStackPointer], param0->scriptStackFile[param0->scriptStackPointer]);
        param0->scriptCursor = param0->scriptStackCursor[param0->scriptStackPointer];
        return 0;
    } else {
        return 1;
    }
}

void ov16_02251F44 (BattleContext * param0, int param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->ioQueue[param1][param2][v0] == 0) {
            param0->ioQueue[param1][param2][v0] = param3;
            break;
        }
    }

    GF_ASSERT(v0 < 16);
}

void ov16_02251F80 (BattleContext * param0, int param1, int param2, int param3)
{
    int v0;

    GF_ASSERT(param3 != 0);

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->ioQueue[param1][param2][v0] == param3) {
            param0->ioQueue[param1][param2][v0] = 0;
            break;
        }
    }

    GF_ASSERT(v0 < 16);
}

BOOL ov16_02251FC8 (BattleContext * param0)
{
    int v0, v1, v2;
    int v3 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            for (v2 = 0; v2 < 16; v2++) {
                v3 += param0->ioQueue[v0][v1][v2];
            }
        }
    }

    if (v3 == 0) {
        param0->linkBattleTimeout = 0;
    }

    return v3 == 0;
}

void ov16_0225201C (BattleContext * param0)
{
    param0->linkBattleTimeout++;

    if (param0->linkBattleTimeout > (60 * 30)) {
        sub_02038AE0(1);
    }
}

void BattleIO_ClearBuffer (BattleContext *battleCtx, int battler)
{
    for (int i = 0; i < BATTLE_IO_BUFFER_SIZE; i++) {
        battleCtx->ioBuffer[battler][i] = 0;
    }
}

int BattleMon_Get (BattleContext * param0, int param1, int param2, void * param3)
{
    BattleMon * v0;

    v0 = &param0->battleMons[param1];

    switch (param2) {
    case 0:
        return v0->species;
        break;
    case 1:
        return v0->attack;
        break;
    case 2:
        return v0->defense;
        break;
    case 3:
        return v0->speed;
        break;
    case 4:
        return v0->spAttack;
        break;
    case 5:
        return v0->spDefense;
        break;
    case 6:
    case 7:
    case 8:
    case 9:
        return v0->moves[param2 - 6];
        break;
    case 10:
        return v0->hpIV;
        break;
    case 11:
        return v0->attackIV;
        break;
    case 12:
        return v0->defenseIV;
        break;
    case 13:
        return v0->speedIV;
        break;
    case 14:
        return v0->spAttackIV;
        break;
    case 15:
        return v0->spDefenseIV;
        break;
    case 16:
        return v0->isEgg;
        break;
    case 17:
        return v0->hasNickname;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        return v0->statBoosts[param2 - 18];
        break;
    case 26:
        return v0->ability;
        break;
    case 27:
    case 28:
        return ov16_0225B734(param0, param1, param2);
        break;
    case 29:
        return v0->gender;
        break;
    case 30:
        return v0->isShiny;
        break;
    case 31:
    case 32:
    case 33:
    case 34:
        return v0->ppCur[param2 - 31];
        break;
    case 35:
    case 36:
    case 37:
    case 38:
        return v0->ppUps[param2 - 35];
        break;
    case 39:
    case 40:
    case 41:
    case 42:
        return MoveTable_CalcMaxPP(v0->moves[param2 - 39], v0->ppUps[param2 - 39]);
        break;
    case 43:
        return v0->level;
        break;
    case 44:
        return v0->friendship;
        break;
    case 45:
    {
        int v1;
        u16 * v2 = param3;

        for (v1 = 0; v1 < 10 + 1; v1++) {
            v2[v1] = v0->nickname[v1];
        }
    }
    break;
    case 46:
        Strbuf_CopyChars((Strbuf *)param3, v0->nickname);
        break;
    case 47:
        return v0->curHP;
        break;
    case 48:
        return v0->maxHP;
        break;
    case 49:
    {
        int v3;
        u16 * v4 = param3;

        for (v3 = 0; v3 < 10 + 1; v3++) {
            v4[v3] = v0->OTName[v3];
        }
    }
    break;
    case 50:
        return v0->exp;
        break;
    case 51:
        return v0->pid;
        break;
    case 52:
        return v0->status;
        break;
    case 53:
        return v0->statusVolatile;
        break;
    case 54:
        return v0->OTId;
        break;
    case 55:
        return v0->heldItem;
        break;
    case 56:
        return v0->timesDamaged;
        break;
    case 57:
        return v0->trainerMessageFlags;
        break;
    case 58:
        return v0->OTGender;
        break;
    case 59:
        return v0->moveEffectsMask;
        break;
    case 60:
        return v0->moveEffectsTemp;
        break;
    case 61:
        return v0->moveEffectsData.disabledTurns;
        break;
    case 62:
        return v0->moveEffectsData.encoredTurns;
        break;
    case 63:
        return v0->moveEffectsData.chargedTurns;
        break;
    case 64:
        return v0->moveEffectsData.tauntedTurns;
        break;
    case 65:
        return v0->moveEffectsData.protectSuccessTurns;
        break;
    case 66:
        return v0->moveEffectsData.perishSongTurns;
        break;
    case 67:
        return v0->moveEffectsData.rolloutCount;
        break;
    case 68:
        return v0->moveEffectsData.furyCutterCount;
        break;
    case 69:
        return v0->moveEffectsData.stockpileCount;
        break;
    case 70:
        return v0->moveEffectsData.stockpileDefBoosts;
        break;
    case 71:
        return v0->moveEffectsData.stockpileSpDefBoosts;
        break;
    case 72:
        return v0->moveEffectsData.truant;
        break;
    case 73:
        return v0->moveEffectsData.flashFire;
        break;
    case 74:
        return v0->moveEffectsData.lockOnTarget;
        break;
    case 75:
        return v0->moveEffectsData.mimickedMoveSlot;
        break;
    case 76:
        return v0->moveEffectsData.bindTarget;
        break;
    case 77:
        return v0->moveEffectsData.meanLookTarget;
        break;
    case 78:
        return v0->moveEffectsData.lastResortCount;
        break;
    case 79:
        return v0->moveEffectsData.magnetRiseTurns;
        break;
    case 80:
        return v0->moveEffectsData.healBlockTurns;
        break;
    case 81:
        return v0->moveEffectsData.embargoTurns;
        break;
    case 82:
        return v0->moveEffectsData.canUnburden;
        break;
    case 83:
        return v0->moveEffectsData.metronomeTurns;
        break;
    case 84:
        return v0->moveEffectsData.micleBerry;
        break;
    case 85:
        return v0->moveEffectsData.custapBerry;
        break;
    case 86:
        return v0->moveEffectsData.quickClaw;
        break;
    case 87:
        return v0->moveEffectsData.rechargeTurnNumber;
        break;
    case 88:
        return v0->moveEffectsData.fakeOutTurnNumber;
        break;
    case 89:
        return v0->moveEffectsData.slowStartTurnNumber;
        break;
    case 90:
        return v0->moveEffectsData.substituteHP;
        break;
    case 91:
        return v0->moveEffectsData.transformedPID;
        break;
    case 92:
        return v0->moveEffectsData.disabledMove;
        break;
    case 93:
        return v0->moveEffectsData.encoredMove;
        break;
    case 94:
        return v0->moveEffectsData.bindingMove;
        break;
    case 95:
        return v0->moveEffectsData.itemHPRecovery;
        break;
    case 96:
        return v0->slowStartAnnounced;
        break;
    case 97:
        return v0->slowStartFinished;
        break;
    case 98:
        return v0->formNum;
        break;
    case 100:
        return BattleMon_Get(param0, param1, param0->scriptTemp, param3);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

void ov16_022523E8 (BattleContext * param0, int param1, int param2, const void * param3)
{
    int v0;
    u32 * v1 = (u32 *)param3;
    u16 * v2 = (u16 *)param3;
    s16 * v3 = (s16 *)param3;
    u8 * v4 = (u8 *)param3;
    s8 * v5 = (s8 *)param3;
    BattleMon * v6 = &param0->battleMons[param1];

    switch (param2) {
    case 0:
        v6->species = v2[0];
        break;
    case 1:
        v6->attack = v2[0];
        break;
    case 2:
        v6->defense = v2[0];
        break;
    case 3:
        v6->speed = v2[0];
        break;
    case 4:
        v6->spAttack = v2[0];
        break;
    case 5:
        v6->spDefense = v2[0];
        break;
    case 6:
    case 7:
    case 8:
    case 9:
        v6->moves[param2 - 6] = v2[0];
        break;
    case 10:
        v6->hpIV = v4[0];
        break;
    case 11:
        v6->attackIV = v4[0];
        break;
    case 12:
        v6->defenseIV = v4[0];
        break;
    case 13:
        v6->speedIV = v4[0];
        break;
    case 14:
        v6->spAttackIV = v4[0];
        break;
    case 15:
        v6->spDefenseIV = v4[0];
        break;
    case 16:
        v6->isEgg = v4[0];
        break;
    case 17:
        v6->hasNickname = v4[0];
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        v6->statBoosts[param2 - 18] = v5[0];
        break;
    case 26:
        v6->ability = v4[0];
        break;
    case 27:
        v6->type1 = v4[0];
        break;
    case 28:
        v6->type2 = v4[0];
        break;
    case 29:
        v6->gender = v4[0];
        break;
    case 30:
        v6->isShiny = v4[0];
        break;
    case 31:
    case 32:
    case 33:
    case 34:
        v6->ppCur[param2 - 31] = v4[0];
        break;
    case 35:
    case 36:
    case 37:
    case 38:
        v6->ppUps[param2 - 35] = v4[0];
        break;
    case 39:
    case 40:
    case 41:
    case 42:
        GF_ASSERT(0);
        break;
    case 43:
        v6->level = v4[0];
        break;
    case 44:
        v6->friendship = v4[0];
        break;
    case 45:
    {
        int v7;

        for (v7 = 0; v7 < 10 + 1; v7++) {
            v6->nickname[v7] = v2[v7];
        }
    }
    break;
    case 47:
        v6->curHP = v3[0];
        break;
    case 48:
        v6->maxHP = v2[0];
        break;
    case 49:
    {
        int v8;

        for (v8 = 0; v8 < 10 + 1; v8++) {
            v6->OTName[v8] = v2[v8];
        }
    }
    break;
    case 50:
        v6->exp = v1[0];
        break;
    case 51:
        v6->pid = v1[0];
        break;
    case 52:
        v6->status = v1[0];
        break;
    case 53:
        v6->statusVolatile = v1[0];
        break;
    case 54:
        v6->OTId = v1[0];
        break;
    case 55:
        v6->heldItem = v2[0];
        break;
    case 56:
        v6->timesDamaged = v4[0];
        break;
    case 57:
        v6->trainerMessageFlags = v4[0];
        break;
    case 58:
        v6->OTGender = v4[0];
        break;
    case 59:
        v6->moveEffectsMask = v1[0];
        break;
    case 60:
        v6->moveEffectsTemp = v1[0];
        break;
    case 61:
        v6->moveEffectsData.disabledTurns = v4[0];
        break;
    case 62:
        v6->moveEffectsData.encoredTurns = v4[0];
        break;
    case 63:
        v6->moveEffectsData.chargedTurns = v4[0];
        break;
    case 64:
        v6->moveEffectsData.tauntedTurns = v4[0];
        break;
    case 65:
        v6->moveEffectsData.protectSuccessTurns = v4[0];
        break;
    case 66:
        v6->moveEffectsData.perishSongTurns = v4[0];
        break;
    case 67:
        v6->moveEffectsData.rolloutCount = v4[0];
        break;
    case 68:
        v6->moveEffectsData.furyCutterCount = v4[0];
        break;
    case 69:
        v6->moveEffectsData.stockpileCount = v4[0];
        break;
    case 70:
        v6->moveEffectsData.stockpileDefBoosts = v4[0];
        break;
    case 71:
        v6->moveEffectsData.stockpileSpDefBoosts = v4[0];
        break;
    case 72:
        v6->moveEffectsData.truant = v4[0];
        break;
    case 73:
        v6->moveEffectsData.flashFire = v4[0];
        break;
    case 74:
        v6->moveEffectsData.lockOnTarget = v4[0];
        break;
    case 75:
        v6->moveEffectsData.mimickedMoveSlot = v4[0];
        break;
    case 76:
        v6->moveEffectsData.bindTarget = v4[0];
        break;
    case 77:
        v6->moveEffectsData.meanLookTarget = v4[0];
        break;
    case 78:
        v6->moveEffectsData.lastResortCount = v4[0];
        break;
    case 79:
        v6->moveEffectsData.magnetRiseTurns = v4[0];
        break;
    case 80:
        v6->moveEffectsData.healBlockTurns = v4[0];
        break;
    case 81:
        v6->moveEffectsData.embargoTurns = v4[0];
        break;
    case 82:
        v6->moveEffectsData.canUnburden = v4[0];
        break;
    case 83:
        v6->moveEffectsData.metronomeTurns = v4[0];
        break;
    case 84:
        v6->moveEffectsData.micleBerry = v4[0];
        break;
    case 85:
        v6->moveEffectsData.custapBerry = v4[0];
        break;
    case 86:
        v6->moveEffectsData.quickClaw = v4[0];
        break;
    case 87:
        v6->moveEffectsData.rechargeTurnNumber = v1[0];
        break;
    case 88:
        v6->moveEffectsData.fakeOutTurnNumber = v1[0];
        break;
    case 89:
        v6->moveEffectsData.slowStartTurnNumber = v1[0];
        break;
    case 90:
        v6->moveEffectsData.substituteHP = v1[0];
        break;
    case 91:
        v6->moveEffectsData.transformedPID = v1[0];
        break;
    case 92:
        v6->moveEffectsData.disabledMove = v2[0];
        break;
    case 93:
        v6->moveEffectsData.encoredMove = v2[0];
        break;
    case 94:
        v6->moveEffectsData.bindingMove = v2[0];
        break;
    case 95:
        v6->moveEffectsData.itemHPRecovery = v1[0];
        break;
    case 96:
        v6->slowStartAnnounced = v4[0];
        break;
    case 97:
        v6->slowStartFinished = v4[0];
        break;
    case 98:
        v6->formNum = v4[0];
        break;
    case 100:
        ov16_022523E8(param0, param1, param0->scriptTemp, param3);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

void ov16_02252A14 (BattleContext * param0, int param1, int param2, int param3)
{
    ov16_02252A2C(&param0->battleMons[param1], param2, param3);
}

void ov16_02252A2C (BattleMon * param0, int param1, int param2)
{
    int v0;

    switch (param1) {
    case 1:
        param0->attack += param2;
        break;
    case 2:
        param0->defense += param2;
        break;
    case 3:
        param0->speed += param2;
        break;
    case 4:
        param0->spAttack += param2;
        break;
    case 5:
        param0->spDefense += param2;
        break;
    case 10:
        param0->hpIV += param2;
        break;
    case 11:
        param0->attackIV += param2;
        break;
    case 12:
        param0->defenseIV += param2;
        break;
    case 13:
        param0->speedIV += param2;
        break;
    case 14:
        param0->spAttackIV += param2;
        break;
    case 15:
        param0->spDefenseIV += param2;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        if (param0->statBoosts[param1 - 18] + param2 < 0) {
            param0->statBoosts[param1 - 18] = 0;
        } else if (param0->statBoosts[param1 - 18] + param2 > 12) {
            param0->statBoosts[param1 - 18] = 12;
        } else {
            param0->statBoosts[param1 - 18] += param2;
        }
        break;
    case 31:
    case 32:
    case 33:
    case 34:
    {
        int v1;

        v1 = MoveTable_CalcMaxPP(param0->moves[param1 - 31], param0->ppUps[param1 - 31]);

        if (param0->ppCur[param1 - 31] + param2 > v1) {
            param0->ppCur[param1 - 31] = v1;
        } else {
            param0->ppCur[param1 - 31] += param2;
        }
    }
    break;
    case 35:
    case 36:
    case 37:
    case 38:
        param0->ppUps[param1 - 35] += param2;
        break;
    case 43:
        param0->level += param2;
        break;
    case 44:
    {
        int v2;

        v2 = param0->friendship;

        if ((v2 + param2) > 255) {
            v2 = 255;
        } else if ((v2 + param2) < 0) {
            v2 = 0;
        } else {
            v2 += param2;
        }

        param0->friendship = v2;
    }
    break;
    case 47:
        if (param0->curHP + param2 > param0->maxHP) {
            param0->curHP = param0->maxHP;
        } else {
            param0->curHP += param2;
        }
        break;
    case 48:
        param0->maxHP += param2;
        break;
    case 50:
        param0->exp += param2;
        break;
    case 51:
        param0->pid += param2;
        break;
    case 61:
        param0->moveEffectsData.disabledTurns += param2;
        break;
    case 62:
        param0->moveEffectsData.encoredTurns += param2;
        break;
    case 63:
        param0->moveEffectsData.chargedTurns += param2;
        break;
    case 64:
        param0->moveEffectsData.tauntedTurns += param2;
        break;
    case 65:
        param0->moveEffectsData.protectSuccessTurns += param2;
        break;
    case 66:
        param0->moveEffectsData.perishSongTurns += param2;
        break;
    case 67:
        param0->moveEffectsData.rolloutCount += param2;
        break;
    case 68:
        param0->moveEffectsData.furyCutterCount += param2;
        break;
    case 69:
        param0->moveEffectsData.stockpileCount += param2;
        break;
    case 70:
        param0->moveEffectsData.stockpileDefBoosts += param2;
        break;
    case 71:
        param0->moveEffectsData.stockpileSpDefBoosts += param2;
        break;
    case 78:
        param0->moveEffectsData.lastResortCount += param2;
        break;
    case 79:
        param0->moveEffectsData.magnetRiseTurns += param2;
        break;
    case 80:
        param0->moveEffectsData.healBlockTurns += param2;
        break;
    case 87:
        param0->moveEffectsData.rechargeTurnNumber += param2;
        break;
    case 88:
        param0->moveEffectsData.fakeOutTurnNumber += param2;
        break;
    case 89:
        param0->moveEffectsData.slowStartTurnNumber += param2;
        break;
    case 90:
        param0->moveEffectsData.substituteHP += param2;
        break;
    case 95:
        param0->moveEffectsData.itemHPRecovery += param2;
        break;
    case 96:
        param0->slowStartAnnounced += param2;
        break;
    case 97:
        param0->slowStartFinished += param2;
        break;
    case 98:
        param0->formNum += param2;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static const u8 Unk_ov16_0226EBA8[] = {
    0x32,
    0x6A,
    0x7A,
    0x75,
    0x76,
    0x79,
    0x77,
    0x78
};

u8 BattleSystem_CompareBattlerSpeed (BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4)
{
    u8 v0 = 0;
    u32 v1, v2;
    u16 v3 = 0, v4 = 0;
    u8 v5;
    u8 v6;
    u8 v7;
    u8 v8;
    s8 v9 = 0;
    s8 v10 = 0;
    u8 v11 = 0, v12 = 0;
    u8 v13 = 0, v14 = 0;
    int v15;
    int v16;
    int v17;
    int v18;
    int v19;
    int v20;
    int v21;
    int v22;
    int v23;

    if ((param1->battleMons[param2].curHP == 0) && (param1->battleMons[param3].curHP)) {
        return 1;
    }

    if ((param1->battleMons[param2].curHP) && (param1->battleMons[param3].curHP == 0)) {
        return 0;
    }

    v19 = Battler_Ability(param1, param2);
    v20 = Battler_Ability(param1, param3);
    v5 = Battler_HeldItemEffect(param1, param2);
    v6 = Battler_HeldItemPower(param1, param2, 0);
    v7 = Battler_HeldItemEffect(param1, param3);
    v8 = Battler_HeldItemPower(param1, param3, 0);
    v21 = param1->battleMons[param2].statBoosts[0x3];
    v22 = param1->battleMons[param3].statBoosts[0x3];

    if (Battler_Ability(param1, param2) == 86) {
        v21 = 6 + ((v21 - 6) * 2);

        if (v21 > 12) {
            v21 = 12;
        }

        if (v21 < 0) {
            v21 = 0;
        }
    }

    if (Battler_Ability(param1, param3) == 86) {
        v22 = 6 + ((v22 - 6) * 2);

        if (v22 > 12) {
            v22 = 12;
        }

        if (v22 < 0) {
            v22 = 0;
        }
    }

    v1 = param1->battleMons[param2].speed * Unk_ov16_0226EBE0[v21][0] / Unk_ov16_0226EBE0[v21][1];
    v2 = param1->battleMons[param3].speed * Unk_ov16_0226EBE0[v22][0] / Unk_ov16_0226EBE0[v22][1];

    if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
        if (((v19 == 33) && (param1->fieldConditionsMask & 0x3)) || ((v19 == 34) && (param1->fieldConditionsMask & 0x30))) {
            v1 *= 2;
        }

        if (((v20 == 33) && (param1->fieldConditionsMask & 0x3)) || ((v20 == 34) && (param1->fieldConditionsMask & 0x30))) {
            v2 *= 2;
        }
    }

    for (v23 = 0; v23 < NELEMS(Unk_ov16_0226EBA8); v23++) {
        if (ov16_0225B0FC(param1, param1->battleMons[param2].heldItem, 1) == Unk_ov16_0226EBA8[v23]) {
            v1 /= 2;
            break;
        }
    }

    if (v5 == 115) {
        v1 = v1 * 15 / 10;
    }

    if ((v5 == 102) && (param1->battleMons[param2].species == 132)) {
        v1 *= 2;
    }

    if ((v19 == 95) && (param1->battleMons[param2].status & 0xff)) {
        v1 = v1 * 15 / 10;
    } else {
        if (param1->battleMons[param2].status & 0x40) {
            v1 /= 4;
        }
    }

    if ((v19 == 112) && ((param1->totalTurns - param1->battleMons[param2].moveEffectsData.slowStartTurnNumber) < 5)) {
        v1 /= 2;
    }

    if ((v19 == 84) && (param1->battleMons[param2].moveEffectsData.canUnburden) && (param1->battleMons[param2].heldItem == 0)) {
        v1 *= 2;
    }

    if (param1->sideConditionsMask[Battler_Side(param0, param2)] & 0x300) {
        v1 *= 2;
    }

    if (v5 == 52) {
        if ((param1->speedRand[param2] % (100 / v6)) == 0) {
            v11 = 1;

            if (param4 == 0) {
                param1->battleMons[param2].moveEffectsData.quickClaw = 1;
            }
        }
    }

    if (v5 == 45) {
        if (Battler_Ability(param1, param2) == 82) {
            v6 /= 2;
        }

        if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v6)) {
            v11 = 1;

            if (param4 == 0) {
                param1->battleMons[param2].moveEffectsData.custapBerry = 1;
            }
        }
    }

    if (v5 == 107) {
        v13 = 1;
    }

    for (v23 = 0; v23 < NELEMS(Unk_ov16_0226EBA8); v23++) {
        if (ov16_0225B0FC(param1, param1->battleMons[param3].heldItem, 1) == Unk_ov16_0226EBA8[v23]) {
            v2 /= 2;
            break;
        }
    }

    if (v7 == 115) {
        v2 = v2 * 15 / 10;
    }

    if ((v7 == 102) && (param1->battleMons[param3].species == 132)) {
        v2 *= 2;
    }

    if ((v20 == 95) && (param1->battleMons[param3].status & 0xff)) {
        v2 = v2 * 15 / 10;
    } else {
        if (param1->battleMons[param3].status & 0x40) {
            v2 /= 4;
        }
    }

    if ((v20 == 112) && ((param1->totalTurns - param1->battleMons[param3].moveEffectsData.slowStartTurnNumber) < 5)) {
        v2 /= 2;
    }

    if ((v20 == 84) && (param1->battleMons[param3].moveEffectsData.canUnburden) && (param1->battleMons[param3].heldItem == 0)) {
        v2 *= 2;
    }

    if (param1->sideConditionsMask[Battler_Side(param0, param3)] & 0x300) {
        v2 *= 2;
    }

    if (v7 == 52) {
        if ((param1->speedRand[param3] % (100 / v8)) == 0) {
            v12 = 1;

            if (param4 == 0) {
                param1->battleMons[param3].moveEffectsData.quickClaw = 1;
            }
        }
    }

    if (v7 == 45) {
        if (Battler_Ability(param1, param3) == 82) {
            v8 /= 2;
        }

        if (param1->battleMons[param3].curHP <= (param1->battleMons[param3].maxHP / v8)) {
            v12 = 1;

            if (param4 == 0) {
                param1->battleMons[param3].moveEffectsData.custapBerry = 1;
            }
        }
    }

    if (v7 == 107) {
        v14 = 1;
    }

    param1->monSpeedValues[param2] = v1;
    param1->monSpeedValues[param3] = v2;

    if (param4 == 0) {
        v15 = param1->battlerActions[param2][3];
        v16 = param1->battlerActions[param3][3];
        v17 = param1->moveSlot[param2];
        v18 = param1->moveSlot[param3];

        if (v15 == 1) {
            if (param1->turnFlags[param2].struggling) {
                v3 = 165;
            } else {
                v3 = BattleMon_Get(param1, param2, 6 + v17, NULL);
            }
        }

        if (v16 == 1) {
            if (param1->turnFlags[param3].struggling) {
                v4 = 165;
            } else {
                v4 = BattleMon_Get(param1, param3, 6 + v18, NULL);
            }
        }

        v9 = param1->aiContext.moveTable[v3].priority;
        v10 = param1->aiContext.moveTable[v4].priority;
    }

    if (v9 == v10) {
        if ((v11) && (v12)) {
            if (v1 < v2) {
                v0 = 1;
            } else if ((v1 == v2) && (BattleSystem_RandNext(param0) & 1)) {
                v0 = 2;
            }
        } else if ((v11 == 0) && (v12)) {
            v0 = 1;
        } else if ((v11) && (v12 == 0)) {
            v0 = 0;
        } else if ((v13) && (v14)) {
            if (v1 > v2) {
                v0 = 1;
            } else if ((v1 == v2) && (BattleSystem_RandNext(param0) & 1)) {
                v0 = 2;
            }
        } else if ((v13) && (v14 == 0)) {
            v0 = 1;
        } else if ((v13 == 0) && (v14)) {
            v0 = 0;
        } else if ((v19 == 100) && (v20 == 100)) {
            if (v1 > v2) {
                v0 = 1;
            } else if ((v1 == v2) && (BattleSystem_RandNext(param0) & 1)) {
                v0 = 2;
            }
        } else if ((v19 == 100) && (v20 != 100)) {
            v0 = 1;
        } else if ((v19 != 100) && (v20 == 100)) {
            v0 = 0;
        } else if (param1->fieldConditionsMask & 0x70000) {
            if (v1 > v2) {
                v0 = 1;
            }

            if ((v1 == v2) && (BattleSystem_RandNext(param0) & 1)) {
                v0 = 2;
            }
        } else {
            if (v1 < v2) {
                v0 = 1;
            }

            if ((v1 == v2) && (BattleSystem_RandNext(param0) & 1)) {
                v0 = 2;
            }
        }
    } else if (v9 < v10) {
        v0 = 1;
    }

    return v0;
}

void ov16_022535E0 (BattleContext * param0, int param1)
{
    param0->monsGainingExp[(param1 >> 1) & 1] = 0;
}

void ov16_022535F0 (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    u32 v1;

    v0 = 0;
    v1 = BattleSystem_BattleType(param0);

    while (v0 <= 2) {
        if (((param1->battlersSwitchingMask & FlagIndex(v0)) == 0) && ((param1->battlersSwitchingMask & FlagIndex(param2)) == 0) && (param1->battleMons[param2].curHP)) {
            param1->monsGainingExp[(param2 >> 1) & 1] |= FlagIndex(param1->selectedPartySlot[v0]);
        }

        v0 += 2;

        if ((v1 == (0x2 | 0x8 | 0x40)) || (v1 == ((0x2 | 0x1) | 0x8 | 0x40))) {
            break;
        }
    }
}

BOOL BattleSystem_CheckPrimaryEffect (BattleSystem *battleSys, BattleContext * battleCtx, int * nextSeq)
{
    BOOL result = FALSE;

    if (battleCtx->sideEffectDirectFlags & MOVE_SIDE_EFFECT_ON_HIT) {
        *nextSeq = BattleContext_SideEffect(battleCtx, 1, battleCtx->sideEffectDirectFlags);
        battleCtx->sideEffectDirectFlags = 0;

        if ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE) {
            result = TRUE;
        }
    } else if (battleCtx->sideEffectDirectFlags) {
        *nextSeq = BattleContext_SideEffect(battleCtx, 1, battleCtx->sideEffectDirectFlags);

        if (battleCtx->battleMons[battleCtx->sideEffectMon].curHP
                && ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                    // Brick Break's effect still applies even if the target is immune.
                    || ((battleCtx->sideEffectDirectFlags & MOVE_SIDE_EFFECT_BREAK_SCREENS)
                        && (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_AFFECT))
                    // Various other moves can still apply their effect even if the target
                    // is semi-invulnerable.
                    || ((battleCtx->sideEffectDirectFlags & MOVE_SIDE_EFFECT_CHECK_HP)
                        && (battleCtx->moveStatusFlags & MOVE_STATUS_GENERAL_MISS)))) {
            result = TRUE;
        }

        battleCtx->sideEffectDirectFlags = 0;
    }

    return result;
}

static inline void SetupSideEffect(BattleContext *battleCtx, int *nextSeq, int source)
{
    *nextSeq = BattleContext_SideEffect(battleCtx, source, battleCtx->sideEffectIndirectFlags);
    battleCtx->sideEffectIndirectFlags = 0;
}

BOOL BattleSystem_TriggerSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq)
{
    BOOL result = FALSE;
    u16 effectChance;

    if (battleCtx->sideEffectIndirectFlags & MOVE_SIDE_EFFECT_ON_HIT) {
        SetupSideEffect(battleCtx, nextSeq, SIDE_EFFECT_SOURCE_INDIRECT);

        if ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE) {
            result = TRUE;
        }
    } else if (battleCtx->sideEffectIndirectFlags & MOVE_SIDE_EFFECT_CHECK_SUBSTITUTE) {
        SetupSideEffect(battleCtx, nextSeq, SIDE_EFFECT_SOURCE_INDIRECT);

        if (Battler_BehindSubstitute(battleCtx, battleCtx->sideEffectMon) == FALSE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE) {
            result = TRUE;
        }
    } else if (battleCtx->sideEffectIndirectFlags & MOVE_SIDE_EFFECT_CHECK_HP_AND_SUBSTITUTE) {
        SetupSideEffect(battleCtx, nextSeq, SIDE_EFFECT_SOURCE_INDIRECT);

        if (battleCtx->battleMons[battleCtx->sideEffectMon].curHP
                && Battler_BehindSubstitute(battleCtx, battleCtx->sideEffectMon) == FALSE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE) {
            result = TRUE;
        }
    } else if (battleCtx->sideEffectIndirectFlags & MOVE_SIDE_EFFECT_CHECK_HP) {
        SetupSideEffect(battleCtx, nextSeq, SIDE_EFFECT_SOURCE_INDIRECT);

        if (battleCtx->battleMons[battleCtx->sideEffectMon].curHP) {
            result = TRUE;
        }
    } else if (battleCtx->sideEffectIndirectFlags & MOVE_SIDE_EFFECT_PROBABILISTIC) {
        if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_SERENE_GRACE) {
            effectChance = CURRENT_MOVE_DATA.effectChance * 2;
        } else {
            effectChance = CURRENT_MOVE_DATA.effectChance;
        }

        GF_ASSERT(effectChance != 0);

        if (BattleSystem_RandNext(battleSys) % 100 < effectChance) {
            battleCtx->battleStatusMask |= SYSCTL_APPLY_SECONDARY_EFFECT;
        }

        SetupSideEffect(battleCtx, nextSeq, SIDE_EFFECT_SOURCE_INDIRECT);
        if (battleCtx->battleMons[battleCtx->sideEffectMon].curHP == 0) {
            battleCtx->battleStatusMask &= ~SYSCTL_APPLY_SECONDARY_EFFECT;
        }

        result = TRUE;
    } else if (battleCtx->sideEffectIndirectFlags) {
        if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_SERENE_GRACE) {
            effectChance = CURRENT_MOVE_DATA.effectChance * 2;
        } else {
            effectChance = CURRENT_MOVE_DATA.effectChance;
        }

        GF_ASSERT(effectChance != 0);

        if (BattleSystem_RandNext(battleSys) % 100 < effectChance) {
            SetupSideEffect(battleCtx, nextSeq, SIDE_EFFECT_SOURCE_INDIRECT);

            if (battleCtx->battleMons[battleCtx->sideEffectMon].curHP
                    && Battler_BehindSubstitute(battleCtx, battleCtx->sideEffectMon) == FALSE
                    && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE) {
                result = TRUE;
            }
        }
    } else if (battleCtx->sideEffectAbilityFlags) {
        *nextSeq = BattleContext_SideEffect(battleCtx, SIDE_EFFECT_SOURCE_ABILITY, battleCtx->sideEffectAbilityFlags);
        battleCtx->sideEffectAbilityFlags = 0;

        if (battleCtx->battleMons[battleCtx->sideEffectMon].curHP) {
            result = TRUE;
        }
    }

    return result;
}

int BattleSystem_Defender (BattleSystem * param0, BattleContext * param1, int param2, u16 param3, int param4, int param5)
{
    int v0;
    int v1;

    v0 = 0xff;

    if (param3) {
        v1 = param1->aiContext.moveTable[param3].range;
    } else {
        v1 = param5;
    }

    if (v1 == 0x4) {
        {
            int v2;
            int v3 = BattleSystem_MaxBattlers(param0);
            BattlerData * v4 = BattleSystem_BattlerData(param0, param2);
            u8 v5 = ov16_02263AE4(v4);

            for (param1->battlerCounter = 0; param1->battlerCounter < v3; param1->battlerCounter++) {
                v2 = param1->monSpeedOrder[param1->battlerCounter];

                if (param1->battleMons[v2].curHP != 0) {
                    v4 = BattleSystem_BattlerData(param0, v2);

                    if (((v5 & 0x1) && ((ov16_02263AE4(v4) & 0x1) == 0)) || ((v5 & 0x1) == 0) && (ov16_02263AE4(v4) & 0x1)) {
                        v0 = v2;
                        break;
                    }
                }
            }

            if (param1->battlerCounter != v3) {
                param1->battlerCounter++;
            }
        }
    } else if (v1 == 0x8) {
        {
            int v6;
            int v7;

            v7 = BattleSystem_MaxBattlers(param0);

            for (param1->battlerCounter = 0; param1->battlerCounter < v7; param1->battlerCounter++) {
                v6 = param1->monSpeedOrder[param1->battlerCounter];

                if (param1->battleMons[v6].curHP != 0) {
                    if (v6 != param2) {
                        v0 = v6;
                        break;
                    }
                }
            }

            if (param1->battlerCounter != v7) {
                param1->battlerCounter++;
            }
        }
    } else if ((v1 == 0x200) && (param4 == 1)) {
        {
            int v8;

            v8 = BattleSystem_BattleType(param0);

            if ((v8 & 0x2) && ((BattleSystem_RandNext(param0) % 2) == 0)) {
                v0 = BattleSystem_Partner(param0, param2);

                if (param1->battleMons[v0].curHP == 0) {
                    v0 = param2;
                }
            } else {
                v0 = param2;
            }
        }
    } else if ((v1 == 0x400) && (param4 == 1)) {
        v0 = BattleSystem_RandomOpponent(param0, param1, param2);
    } else if (v1 == 0x80) {
        v0 = BattleSystem_RandomOpponent(param0, param1, param2);
    } else if ((v1 == 0x10) || (v1 == 0x20) || (v1 == 0x1) || (v1 == 0x40)) {
        v0 = param2;
    } else if (v1 == 0x100) {
        {
            int v9;

            v9 = BattleSystem_BattleType(param0);

            if (v9 & 0x2) {
                v0 = BattleSystem_Partner(param0, param2);
            } else {
                v0 = param2;
            }
        }
    } else if (v1 == 0x200) {
        {
            int v10;

            v10 = BattleSystem_BattleType(param0);

            if (v10 & 0x2) {
                v0 = param1->battlerActions[param2][1];

                if (param1->battleMons[v0].curHP == 0) {
                    v0 = param2;
                }
            } else {
                v0 = param2;
            }
        }
    } else if ((v1 == 0x2) || (param4 == 1)) {
        {
            int v11;
            int v12;
            int v13[2];

            v11 = BattleSystem_BattleType(param0);
            v12 = Battler_Side(param0, param2) ^ 1;
            v13[0] = ov16_0223E2A4(param0, param2, 0);
            v13[1] = ov16_0223E2A4(param0, param2, 2);

            if (v11 & 0x2) {
                if ((param1->sideConditions[v12].followMe) && (param1->battleMons[param1->sideConditions[v12].followMeUser].curHP)) {
                    v0 = param1->sideConditions[v12].followMeUser;
                } else if ((param1->battleMons[v13[0]].curHP) && (param1->battleMons[v13[1]].curHP)) {
                    v12 = BattleSystem_RandNext(param0) & 1;
                    v0 = v13[v12];
                } else if (param1->battleMons[v13[0]].curHP) {
                    v0 = v13[0];
                } else if (param1->battleMons[v13[1]].curHP) {
                    v0 = v13[1];
                }
            } else {
                if (param1->battleMons[param2 ^ 1].curHP) {
                    v0 = param2 ^ 1;
                }
            }
        }
    } else {
        {
            int v14;
            int v15;
            int v16;

            v14 = Battler_Side(param0, param2) ^ 1;
            v15 = param1->battlerActions[param2][1];
            v16 = BattleSystem_MaxBattlers(param0);

            if ((param1->sideConditions[v14].followMe) && (param1->battleMons[param1->sideConditions[v14].followMeUser].curHP)) {
                v0 = param1->sideConditions[v14].followMeUser;
            } else {
                if (param1->battleMons[v15].curHP) {
                    v0 = v15;
                } else {
                    v15 = BattleSystem_RandomOpponent(param0, param1, param2);

                    if (param1->battleMons[v15].curHP) {
                        v0 = v15;
                    }
                }
            }
        }
    }

    return v0;
}

void BattleSystem_RedirectTarget (BattleSystem * param0, BattleContext * param1, int param2, u16 param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    if (param1->defender == 0xff) {
        return;
    }

    if ((Battler_Ability(param1, param2) == 96) || (Battler_Ability(param1, param2) == 104)) {
        return;
    }

    v0 = Battler_Side(param0, param2) ^ 1;

    if ((param1->sideConditions[v0].followMe) && (param1->battleMons[param1->sideConditions[v0].followMeUser].curHP)) {
        return;
    }

    v3 = BattleMove_Type(param0, param1, param2, param3);

    if (v3 == 0) {
        v3 = param1->aiContext.moveTable[param3].type;
    }

    v4 = BattleSystem_MaxBattlers(param0);

    if ((v3 == 13) && ((param1->aiContext.moveTable[param3].range == 0x0) || (param1->aiContext.moveTable[param3].range == 0x2)) && ((param1->battleStatusMask & 0x20) == 0) && (BattleSystem_CountAbility(param0, param1, 9, param2, 31))) {
        for (v1 = 0; v1 < v4; v1++) {
            v2 = param1->monSpeedOrder[v1];

            if ((Battler_Ability(param1, v2) == 31) && (param1->battleMons[v2].curHP) && (param2 != v2)) {
                break;
            }
        }

        if (v2 != param1->defender) {
            param1->selfTurnFlags[v2].lightningRodActivated = 1;
            param1->defender = v2;
        }
    } else if ((v3 == 11) && ((param1->aiContext.moveTable[param3].range == 0x0) || (param1->aiContext.moveTable[param3].range == 0x2)) && ((param1->battleStatusMask & 0x20) == 0) && (BattleSystem_CountAbility(param0, param1, 9, param2, 114))) {
        for (v1 = 0; v1 < v4; v1++) {
            v2 = param1->monSpeedOrder[v1];

            if ((Battler_Ability(param1, v2) == 114) && (param1->battleMons[v2].curHP) && (param2 != v2)) {
                break;
            }
        }

        if (v2 != param1->defender) {
            param1->selfTurnFlags[v2].stormDrainActivated = 1;
            param1->defender = v2;
        }
    }
}

BOOL BattleMove_TriggerRedirectionAbilities(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;

    if ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE && DEFENDER_SELF_TURN_FLAGS.lightningRodActivated) {
        battleCtx->selfTurnFlags[battleCtx->defender].lightningRodActivated = 0;

        LOAD_SUBSEQ(BATTLE_SUBSEQ_LIGHTNING_ROD_REDIRECTED);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        result = TRUE;
    }

    if ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE && DEFENDER_SELF_TURN_FLAGS.stormDrainActivated) {
        battleCtx->selfTurnFlags[battleCtx->defender].stormDrainActivated = 0;

        LOAD_SUBSEQ(BATTLE_SUBSEQ_LIGHTNING_ROD_REDIRECTED);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        result = TRUE;
    }

    return result;
}

void BattleMon_CopyToParty (BattleSystem * param0, BattleContext * param1, int param2)
{
    if (param1->battleMons[param2].heldItem == 0) {
        ov16_0225B830(param1, param2);
    }

    ov16_022662FC(param0, param1, param2);
}

void ov16_02253EF0 (BattleSystem * param0, BattleContext * param1, int param2)
{
    param1->battleMons[param2].statusVolatile |= 0x1000;
    param1->moveLockedInto[param2] = param1->moveCur;
}

void BattleSystem_BreakMultiTurn (BattleSystem * param0, BattleContext * param1, int param2)
{
    param1->battleMons[param2].statusVolatile &= (0x1000 ^ 0xffffffff);
    param1->battleMons[param2].statusVolatile &= (0x300 ^ 0xffffffff);
    param1->battleMons[param2].moveEffectsMask &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
    param1->battleMons[param2].moveEffectsData.rolloutCount = 0;
    param1->battleMons[param2].moveEffectsData.furyCutterCount = 0;
}

int ov16_02253F7C (BattleContext * param0, int param1)
{
    if (param0->battleMons[param1].status & 0x7) {
        return 1;
    } else if (param0->battleMons[param1].status & 0x8) {
        return 2;
    } else if (param0->battleMons[param1].status & 0x10) {
        return 3;
    } else if (param0->battleMons[param1].status & 0x20) {
        return 4;
    } else if (param0->battleMons[param1].status & 0x40) {
        return 5;
    } else if (param0->battleMons[param1].status & 0x80) {
        return 2;
    }

    return 0;
}

BOOL BattleSystem_CheckTrainerMessage (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    v0 = BattleSystem_BattleType(param0);

    if (v0 & (0x4 | 0x80)) {
        return 0;
    }

    if ((v0 & 0x1) == 0) {
        return 0;
    }

    if (v0 & 0x2) {
        return 0;
    }

    v1 = ov16_0223E0D8(param0, 1);
    v2 = 0;

    do {
        switch (v2) {
        case 0:
            if ((param1->battleMons[1].timesDamaged == 1) && ((param1->battleStatusMask2 & 0x20) == 0)) {
                if (sub_02079280(v1, 13, 5)) {
                    param1->battleStatusMask2 |= 0x20;
                    param1->msgTemp = 13;
                    return 1;
                }
            }

            v2++;
            break;
        case 1:
            if ((param1->battleMons[1].trainerMessageFlags & 0x2) == 0) {
                if (param1->battleMons[1].curHP <= (param1->battleMons[1].maxHP / 2)) {
                    if (sub_02079280(v1, 14, 5)) {
                        param1->battleMons[1].trainerMessageFlags |= 0x2;
                        param1->msgTemp = 14;
                        return 1;
                    }
                }
            }

            v2++;
            break;
        case 2:
            if ((param1->battleMons[1].trainerMessageFlags & 0x3) == 0) {
                {
                    int v3;
                    int v4;
                    Party * v5;
                    Pokemon * v6;

                    v5 = BattleSystem_Party(param0, 1);
                    v4 = 0;

                    for (v3 = 0; v3 < Party_GetCurrentCount(v5); v3++) {
                        v6 = Party_GetPokemonBySlotIndex(v5, v3);

                        if (Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL)) {
                            v4++;
                        }
                    }

                    if (v4 == 1) {
                        if (sub_02079280(v1, 15, 5)) {
                            param1->battleMons[1].trainerMessageFlags |= 0x3;
                            param1->msgTemp = 15;
                            return 1;
                        }
                    }
                }
            }

            v2++;
            break;
        case 3:
            if ((param1->battleMons[1].trainerMessageFlags & 0x4) == 0) {
                {
                    int v7;
                    int v8;
                    Party * v9;
                    Pokemon * v10;

                    v9 = BattleSystem_Party(param0, 1);
                    v8 = 0;

                    for (v7 = 0; v7 < Party_GetCurrentCount(v9); v7++) {
                        v10 = Party_GetPokemonBySlotIndex(v9, v7);

                        if (Pokemon_GetValue(v10, MON_DATA_CURRENT_HP, NULL)) {
                            v8++;
                        }
                    }

                    if ((v8 == 1) && (param1->battleMons[1].curHP <= (param1->battleMons[1].maxHP / 2))) {
                        if (sub_02079280(v1, 16, 5)) {
                            param1->battleMons[1].trainerMessageFlags |= 0x4;
                            param1->msgTemp = 16;
                            return 1;
                        }
                    }
                }
            }

            v2++;
            break;
        case 4:
            break;
        }
    } while (v2 != 4);

    return 0;
}

void BattleContext_Init (BattleContext * param0)
{
    int v0;

    param0->damage = 0;
    param0->criticalMul = 1;
    param0->criticalBoosts = 0;
    param0->movePower = 0;
    param0->powerMul = 10;
    param0->moveType = 0;
    param0->moveEffectChance = 0;
    param0->moveStatusFlags = 0;
    param0->faintedMon = 0xff;
    param0->sideEffectDirectFlags = 0;
    param0->sideEffectIndirectFlags = 0;
    param0->sideEffectAbilityFlags = 0;
    param0->sideEffectType = 0;
    param0->sideEffectParam = 0x0;
    param0->sideEffectMon = 0xff;
    param0->multiHitCounter = 0;
    param0->multiHitNumHits = 0;
    param0->battlerCounter = 0;
    param0->multiHitLoop = 0;
    param0->afterMoveMessageType = 0;
    param0->multiHitCheckFlags = 0;
    param0->multiHitAccuracyCheck = 0;
    param0->fieldConditionCheckState = 0;
    param0->monConditionCheckState = 0;
    param0->sideConditionCheckState = 0;
    param0->turnStartCheckState = 0;
    param0->afterMoveHitCheckState = 0;
    param0->afterMoveMessageState = 0;
    param0->afterMoveEffectState = 0;
    param0->beforeMoveCheckState = 0;
    param0->tryMoveCheckState = 0;
    param0->statusCheckState = 0;
    param0->abilityCheckState = 0;
    param0->battleStatusMask &= ((1 | 2 | 4 | 8 | 16 | 32 | 256 | 512 | 1024 | 2048 | 0x80000 | 8192) | (4096 | 16384 | 32768 | 65536 | 0x20000 | 0x40000 | 0x100000 | 0x200000 | 0x400000 | 128 | 64)) ^ 0xffffffff;
    param0->battleStatusMask2 &= (2 | 4 | 8 | 16 | 64 | 256) ^ 0xffffffff;
    param0->magnitude = 0;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuClearFast(&param0->selfTurnFlags[v0], sizeof(struct SelfTurnFlags));
        param0->aiSwitchedPartySlot[v0] = 6;
    }
}

void BattleContext_InitCounters (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        param1->moveHitBattler[v1] = 0xff;
        param1->switchedPartySlot[v1] = 6;
        param1->speedRand[v1] = BattleSystem_RandNext(param0);
    }

    param1->prizeMoneyMul = 1;
    param1->meFirstTurnOrder = 1;

    v0 = BattleSystem_BattleType(param0);

    if ((v0 & 0x2) == 0) {
        param1->battlersSwitchingMask |= FlagIndex(2);
        param1->battlersSwitchingMask |= FlagIndex(3);
    }

    param1->safariCatchCount = 6;
    param1->safariEscapeCount = 6;
}

void ov16_0225433C (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    int v1;
    u32 v2;
    u8 * v3;
    MoveEffectsData v4;

    v4 = param1->battleMons[param2].moveEffectsData;
    v1 = BattleSystem_MaxBattlers(param0);
    v2 = BattleSystem_BattleType(param0);

    param1->battlerActions[param2][0] = 39;

    if ((param1->battleStatusMask & 0x100) == 0) {
        for (v0 = 0; v0 < v1; v0++) {
            if ((param1->battleMons[v0].statusVolatile & 0x4000000) && (param1->battleMons[v0].moveEffectsData.meanLookTarget == param2)) {
                param1->battleMons[v0].statusVolatile &= (0x4000000 ^ 0xffffffff);
            }

            if ((param1->battleMons[v0].moveEffectsMask & 0x18) && (param1->battleMons[v0].moveEffectsData.lockOnTarget == param2)) {
                param1->battleMons[v0].moveEffectsMask &= (0x18 ^ 0xffffffff);
                param1->battleMons[v0].moveEffectsData.lockOnTarget = 0;
            }
        }

        param1->battleMons[param2].statusVolatile = 0;
        param1->battleMons[param2].moveEffectsMask = 0;
    } else {
        param1->battleMons[param2].statusVolatile &= (0x100000 | 0x4000000 | 0x7 | 0x10000000 | 0x1000000);
        param1->battleMons[param2].moveEffectsMask &= (3 | 4 | 24 | 32 | 1024 | 65536 | 0x20000 | 0x8000 | 0x800000 | 0x1000000 | 0x200000 | 0x4000000 | 0x2000000 | 0x8000000);

        for (v0 = 0; v0 < v1; v0++) {
            if ((param1->battleMons[v0].moveEffectsMask & 0x18) && (param1->battleMons[v0].moveEffectsData.lockOnTarget == param2)) {
                param1->battleMons[v0].moveEffectsMask &= (0x18 ^ 0xffffffff);
                param1->battleMons[v0].moveEffectsMask |= (0x8 * 2);
            }
        }
    }

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->battleMons[v0].statusVolatile & (FlagIndex(param2) << 16)) {
            param1->battleMons[v0].statusVolatile &= ((FlagIndex(param2) << 16) ^ 0xffffffff);
        }

        if ((param1->battleMons[v0].statusVolatile & 0xe000) && (param1->battleMons[v0].moveEffectsData.bindTarget == param2)) {
            param1->battleMons[v0].statusVolatile &= (0xe000 ^ 0xffffffff);
        }
    }

    v3 = (u8 *)&param1->battleMons[param2].moveEffectsData;

    for (v0 = 0; v0 < sizeof(MoveEffectsData); v0++) {
        v3[v0] = 0;
    }

    if (param1->battleStatusMask & 0x100) {
        param1->battleMons[param2].moveEffectsData.substituteHP = v4.substituteHP;
        param1->battleMons[param2].moveEffectsData.lockOnTarget = v4.lockOnTarget;
        param1->battleMons[param2].moveEffectsData.perishSongTurns = v4.perishSongTurns;
        param1->battleMons[param2].moveEffectsData.meanLookTarget = v4.meanLookTarget;
        param1->battleMons[param2].moveEffectsData.magnetRiseTurns = v4.magnetRiseTurns;
        param1->battleMons[param2].moveEffectsData.embargoTurns = v4.embargoTurns;
        param1->battleMons[param2].moveEffectsData.healBlockTurns = v4.healBlockTurns;
    }

    param1->battleMons[param2].moveEffectsData.fakeOutTurnNumber = param1->totalTurns + 1;
    param1->battleMons[param2].moveEffectsData.slowStartTurnNumber = param1->totalTurns + 1;
    param1->battleMons[param2].moveEffectsData.truant = (param1->totalTurns + 1) & 1;
    param1->moveProtect[param2] = 0;
    param1->moveHit[param2] = 0;
    param1->moveHitBattler[param2] = 0xff;
    param1->moveHitType[param2] = 0;
    param1->movePrevByBattler[param2] = 0;
    param1->moveCopied[param2] = 0;
    param1->moveCopiedHit[param2][0] = 0;
    param1->moveCopiedHit[param2][1] = 0;
    param1->moveCopiedHit[param2][2] = 0;
    param1->moveCopiedHit[param2][3] = 0;
    param1->moveSketched[param2] = 0;
    param1->conversion2Move[param2] = 0;
    param1->conversion2Battler[param2] = 0;
    param1->conversion2Type[param2] = 0;
    param1->metronomeMove[param2] = 0;
    param1->fieldConditionsMask &= ((FlagIndex(param2) << 8) ^ 0xffffffff);

    if (param1->battleMons[param2].moveEffectsMask & 0x800000) {
        v0 = param1->battleMons[param2].attack;

        param1->battleMons[param2].attack = param1->battleMons[param2].defense;
        param1->battleMons[param2].defense = v0;
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((v0 != param2) && (Battler_Side(param0, v0) != Battler_Side(param0, param2))) {
            param1->moveCopied[v0] = 0;
        }

        param1->moveCopiedHit[v0][param2] = 0;
    }

    ov16_0225B80C(param1, param2);
    ov16_0225B824(param1, param2);
    ov16_0225B830(param1, param2);
}

void ov16_02254744 (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    int v1;
    u8 * v2;

    v1 = BattleSystem_MaxBattlers(param0);

    for (v0 = 0x0; v0 < 0x8; v0++) {
        param1->battleMons[param2].statBoosts[v0] = 6;
    }

    param1->battleMons[param2].statusVolatile = 0;
    param1->battleMons[param2].moveEffectsMask = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if ((param1->battleMons[v0].statusVolatile & 0x4000000) && (param1->battleMons[v0].moveEffectsData.meanLookTarget == param2)) {
            param1->battleMons[v0].statusVolatile &= (0x4000000 ^ 0xffffffff);
        }

        if (param1->battleMons[v0].statusVolatile & (FlagIndex(param2) << 16)) {
            param1->battleMons[v0].statusVolatile &= ((FlagIndex(param2) << 16) ^ 0xffffffff);
        }

        if ((param1->battleMons[v0].statusVolatile & 0xe000) && (param1->battleMons[v0].moveEffectsData.bindTarget == param2)) {
            param1->battleMons[v0].statusVolatile &= (0xe000 ^ 0xffffffff);
        }
    }

    v2 = (u8 *)&param1->battleMons[param2].moveEffectsData;

    for (v0 = 0; v0 < sizeof(MoveEffectsData); v0++) {
        v2[v0] = 0;
    }

    v2 = (u8 *)&param1->turnFlags[param2];

    for (v0 = 0; v0 < sizeof(struct TurnFlags); v0++) {
        v2[v0] = 0;
    }

    param1->battleMons[param2].moveEffectsData.fakeOutTurnNumber = param1->totalTurns + 1;
    param1->battleMons[param2].moveEffectsData.slowStartTurnNumber = param1->totalTurns + 1;
    param1->battleMons[param2].moveEffectsData.truant = (param1->totalTurns + 1) & 1;
    param1->moveProtect[param2] = 0;
    param1->moveHit[param2] = 0;
    param1->moveHitBattler[param2] = 0xff;
    param1->moveHitType[param2] = 0;
    param1->movePrevByBattler[param2] = 0;
    param1->moveCopied[param2] = 0;
    param1->moveCopiedHit[param2][0] = 0;
    param1->moveCopiedHit[param2][1] = 0;
    param1->moveCopiedHit[param2][2] = 0;
    param1->moveCopiedHit[param2][3] = 0;
    param1->moveSketched[param2] = 0;
    param1->conversion2Move[param2] = 0;
    param1->conversion2Battler[param2] = 0;
    param1->conversion2Type[param2] = 0;
    param1->metronomeMove[param2] = 0;
    param1->fieldConditionsMask &= ((FlagIndex(param2) << 8) ^ 0xffffffff);

    for (v0 = 0; v0 < v1; v0++) {
        if ((v0 != param2) && (Battler_Side(param0, v0) != Battler_Side(param0, param2))) {
            param1->moveCopied[v0] = 0;
        }

        param1->moveCopiedHit[v0][param2] = 0;
    }

    param1->battlerStatusFlags[param2] &= 0x1 ^ 0xffffffff;

    ov16_0225B80C(param1, param2);
    ov16_0225B824(param1, param2);
    ov16_0225B830(param1, param2);
}

void BattleSystem_SetupNextTurn (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuClearFast(&param1->turnFlags[v0], sizeof(struct TurnFlags));
        MI_CpuClearFast(&param1->moveFailFlags[v0], sizeof(struct MoveFailFlags));

        param1->battleMons[v0].statusVolatile &= (0x8 ^ 0xffffffff);

        if (param1->battleMons[v0].moveEffectsData.rechargeTurnNumber + 1 < param1->totalTurns) {
            param1->battleMons[v0].statusVolatile &= (0x400000 ^ 0xffffffff);
        }

        if ((param1->battleMons[v0].status & 0x7) && (param1->battleMons[v0].statusVolatile & 0x1000)) {
            BattleSystem_BreakMultiTurn(param0, param1, v0);
        }

        if ((param1->battleMons[v0].status & 0x7) && (param1->battleMons[v0].statusVolatile & 0xc00)) {
            param1->battleMons[v0].statusVolatile &= (0xc00 ^ 0xffffffff);
        }
    }

    param1->sideConditions[0].followMe = 0;
    param1->sideConditions[1].followMe = 0;
}

int BattleSystem_CheckStruggling (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int moveFlags, int struggleChecksMask)
{
    int v0;
    int v1;

    v1 = Battler_HeldItemEffect(battleCtx, battler);

    for (v0 = 0; v0 < 4; v0++) {
        if ((battleCtx->battleMons[battler].moves[v0] == 0) && (struggleChecksMask & 0x1)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((battleCtx->battleMons[battler].ppCur[v0] == 0) && (struggleChecksMask & 0x2)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((battleCtx->battleMons[battler].moves[v0] == battleCtx->battleMons[battler].moveEffectsData.disabledMove) && (struggleChecksMask & 0x4)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((battleCtx->battleMons[battler].moves[v0] == battleCtx->movePrevByBattler[battler]) && (struggleChecksMask & 0x8) && (battleCtx->battleMons[battler].statusVolatile & 0x80000000)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((battleCtx->battleMons[battler].moveEffectsData.tauntedTurns) && (struggleChecksMask & 0x10) && (battleCtx->aiContext.moveTable[battleCtx->battleMons[battler].moves[v0]].power == 0)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((BattleSystem_Imprisoned(battleSys, battleCtx, battler, battleCtx->battleMons[battler].moves[v0])) && (struggleChecksMask & 0x20)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((BattleSystem_FailsInHighGravity(battleSys, battleCtx, battler, battleCtx->battleMons[battler].moves[v0])) && (struggleChecksMask & 0x40)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((BattleSystem_HealBlocked(battleSys, battleCtx, battler, battleCtx->battleMons[battler].moves[v0])) && (struggleChecksMask & 0x80)) {
            moveFlags |= FlagIndex(v0);
        }

        if ((battleCtx->battleMons[battler].moveEffectsData.encoredMove) && (battleCtx->battleMons[battler].moveEffectsData.encoredMove != battleCtx->battleMons[battler].moves[v0])) {
            moveFlags |= FlagIndex(v0);
        }

        if (((v1 == 55) || (v1 == 115) || (v1 == 125)) && (struggleChecksMask & 0x200)) {
            if (Battler_SlotForMove(&battleCtx->battleMons[battler], battleCtx->battleMons[battler].moveEffectsData.choiceLockedMove) == 4) {
                battleCtx->battleMons[battler].moveEffectsData.choiceLockedMove = 0;
            } else {
                if ((battleCtx->battleMons[battler].moveEffectsData.choiceLockedMove) && (battleCtx->battleMons[battler].moveEffectsData.choiceLockedMove != battleCtx->battleMons[battler].moves[v0])) {
                    moveFlags |= FlagIndex(v0);
                }
            }
        }
    }

    return moveFlags;
}

BOOL BattleSystem_CanUseMove (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int moveSlot, BattleMessage *msgOut)
{
    BOOL result = TRUE;

    if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x4) & FlagIndex(moveSlot)) {
        msgOut->tags = 10;
        msgOut->id = 609;
        msgOut->params[0] = BattleSystem_NicknameTag(battleCtx, battler);
        msgOut->params[1] = battleCtx->battleMons[battler].moves[moveSlot];
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x8) & FlagIndex(moveSlot)) {
        msgOut->tags = 2;
        msgOut->id = 612;
        msgOut->params[0] = BattleSystem_NicknameTag(battleCtx, battler);
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x10) & FlagIndex(moveSlot)) {
        msgOut->tags = 10;
        msgOut->id = 613;
        msgOut->params[0] = BattleSystem_NicknameTag(battleCtx, battler);
        msgOut->params[1] = battleCtx->battleMons[battler].moves[moveSlot];
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x20) & FlagIndex(moveSlot)) {
        msgOut->tags = 10;
        msgOut->id = 616;
        msgOut->params[0] = BattleSystem_NicknameTag(battleCtx, battler);
        msgOut->params[1] = battleCtx->battleMons[battler].moves[moveSlot];
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x40) & FlagIndex(moveSlot)) {
        msgOut->tags = 10;
        msgOut->id = 1001;
        msgOut->params[0] = BattleSystem_NicknameTag(battleCtx, battler);
        msgOut->params[1] = battleCtx->battleMons[battler].moves[moveSlot];
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x80) & FlagIndex(moveSlot)) {
        msgOut->tags = 34;
        msgOut->id = 1057;
        msgOut->params[0] = BattleSystem_NicknameTag(battleCtx, battler);
        msgOut->params[1] = 377;
        msgOut->params[2] = battleCtx->battleMons[battler].moves[moveSlot];
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x200) & FlagIndex(moveSlot)) {
        msgOut->tags = 24;
        msgOut->id = 911;
        msgOut->params[0] = battleCtx->battleMons[battler].heldItem;
        msgOut->params[1] = battleCtx->battleMons[battler].moveEffectsData.choiceLockedMove;
        result = FALSE;
    } else if (BattleSystem_CheckStruggling(battleSys, battleCtx, battler, 0, 0x2) & FlagIndex(moveSlot)) {
        msgOut->tags = 0;
        msgOut->id = 823;
        result = FALSE;
    }

    return result;
}

int Battler_SlotForMove (BattleMon * param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        if (param0->moves[v0] == param1) {
            break;
        }
    }

    return v0;
}

static const u8 Unk_ov16_0226ECD4[][3] = {
    {0x0, 0x5, 0x5},
    {0x0, 0x8, 0x5},
    {0xA, 0xA, 0x5},
    {0xA, 0xB, 0x5},
    {0xA, 0xC, 0x14},
    {0xA, 0xF, 0x14},
    {0xA, 0x6, 0x14},
    {0xA, 0x5, 0x5},
    {0xA, 0x10, 0x5},
    {0xA, 0x8, 0x14},
    {0xB, 0xA, 0x14},
    {0xB, 0xB, 0x5},
    {0xB, 0xC, 0x5},
    {0xB, 0x4, 0x14},
    {0xB, 0x5, 0x14},
    {0xB, 0x10, 0x5},
    {0xD, 0xB, 0x14},
    {0xD, 0xD, 0x5},
    {0xD, 0xC, 0x5},
    {0xD, 0x4, 0x0},
    {0xD, 0x2, 0x14},
    {0xD, 0x10, 0x5},
    {0xC, 0xA, 0x5},
    {0xC, 0xB, 0x14},
    {0xC, 0xC, 0x5},
    {0xC, 0x3, 0x5},
    {0xC, 0x4, 0x14},
    {0xC, 0x2, 0x5},
    {0xC, 0x6, 0x5},
    {0xC, 0x5, 0x14},
    {0xC, 0x10, 0x5},
    {0xC, 0x8, 0x5},
    {0xF, 0xB, 0x5},
    {0xF, 0xC, 0x14},
    {0xF, 0xF, 0x5},
    {0xF, 0x4, 0x14},
    {0xF, 0x2, 0x14},
    {0xF, 0x10, 0x14},
    {0xF, 0x8, 0x5},
    {0xF, 0xA, 0x5},
    {0x1, 0x0, 0x14},
    {0x1, 0xF, 0x14},
    {0x1, 0x3, 0x5},
    {0x1, 0x2, 0x5},
    {0x1, 0xE, 0x5},
    {0x1, 0x6, 0x5},
    {0x1, 0x5, 0x14},
    {0x1, 0x11, 0x14},
    {0x1, 0x8, 0x14},
    {0x3, 0xC, 0x14},
    {0x3, 0x3, 0x5},
    {0x3, 0x4, 0x5},
    {0x3, 0x5, 0x5},
    {0x3, 0x7, 0x5},
    {0x3, 0x8, 0x0},
    {0x4, 0xA, 0x14},
    {0x4, 0xD, 0x14},
    {0x4, 0xC, 0x5},
    {0x4, 0x3, 0x14},
    {0x4, 0x2, 0x0},
    {0x4, 0x6, 0x5},
    {0x4, 0x5, 0x14},
    {0x4, 0x8, 0x14},
    {0x2, 0xD, 0x5},
    {0x2, 0xC, 0x14},
    {0x2, 0x1, 0x14},
    {0x2, 0x6, 0x14},
    {0x2, 0x5, 0x5},
    {0x2, 0x8, 0x5},
    {0xE, 0x1, 0x14},
    {0xE, 0x3, 0x14},
    {0xE, 0xE, 0x5},
    {0xE, 0x11, 0x0},
    {0xE, 0x8, 0x5},
    {0x6, 0xA, 0x5},
    {0x6, 0xC, 0x14},
    {0x6, 0x1, 0x5},
    {0x6, 0x3, 0x5},
    {0x6, 0x2, 0x5},
    {0x6, 0xE, 0x14},
    {0x6, 0x7, 0x5},
    {0x6, 0x11, 0x14},
    {0x6, 0x8, 0x5},
    {0x5, 0xA, 0x14},
    {0x5, 0xF, 0x14},
    {0x5, 0x1, 0x5},
    {0x5, 0x4, 0x5},
    {0x5, 0x2, 0x14},
    {0x5, 0x6, 0x14},
    {0x5, 0x8, 0x5},
    {0x7, 0x0, 0x0},
    {0x7, 0xE, 0x14},
    {0x7, 0x11, 0x5},
    {0x7, 0x8, 0x5},
    {0x7, 0x7, 0x14},
    {0x10, 0x10, 0x14},
    {0x10, 0x8, 0x5},
    {0x11, 0x1, 0x5},
    {0x11, 0xE, 0x14},
    {0x11, 0x7, 0x14},
    {0x11, 0x11, 0x5},
    {0x11, 0x8, 0x5},
    {0x8, 0xA, 0x5},
    {0x8, 0xB, 0x5},
    {0x8, 0xD, 0x5},
    {0x8, 0xF, 0x14},
    {0x8, 0x5, 0x14},
    {0x8, 0x8, 0x5},
    {0xFE, 0xFE, 0x0},
    {0x0, 0x7, 0x0},
    {0x1, 0x7, 0x0},
    {0xFF, 0xFF, 0x0}
};

static BOOL ov16_02254EF4 (BattleContext * param0, int param1, int param2, int param3)
{
    BOOL v0;
    int v1;

    v1 = Battler_HeldItemEffect(param0, param2);
    v0 = 1;

    if ((v1 == 106) || (param0->battleMons[param2].moveEffectsMask & 0x400)) {
        if ((Unk_ov16_0226ECD4[param3][1] == 2) && (Unk_ov16_0226ECD4[param3][2] == 0)) {
            v0 = 0;
        }
    }

    if (param0->turnFlags[param2].roosting) {
        if (Unk_ov16_0226ECD4[param3][1] == 2) {
            v0 = 0;
        }
    }

    if (param0->fieldConditionsMask & 0x7000) {
        if ((Unk_ov16_0226ECD4[param3][1] == 2) && (Unk_ov16_0226ECD4[param3][2] == 0)) {
            v0 = 0;
        }
    }

    if (param0->battleMons[param2].moveEffectsMask & 0x400000) {
        if ((Unk_ov16_0226ECD4[param3][1] == 17) && (Unk_ov16_0226ECD4[param3][2] == 0)) {
            v0 = 0;
        }
    }

    return v0;
}

int BattleSystem_CheckTypeChart (BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, int param5, int param6, u32 * param7)
{
    int v0;
    int v1;
    u8 v2;
    u32 v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u8 v7;

    v1 = 1;

    if (param2 == 165) {
        return param6;
    }

    v4 = Battler_HeldItemEffect(param1, param4);
    v6 = Battler_HeldItemPower(param1, param4, 0);
    v5 = Battler_HeldItemEffect(param1, param5);
    v7 = Battler_HeldItemPower(param1, param5, 0);

    if (Battler_Ability(param1, param4) == 96) {
        v2 = 0;
    } else if (param3) {
        v2 = param3;
    } else {
        v2 = param1->aiContext.moveTable[param2].type;
    }

    v3 = param1->aiContext.moveTable[param2].power;

    if (((param1->battleStatusMask & 0x800) == 0) && ((BattleMon_Get(param1, param4, 27, NULL) == v2) || (BattleMon_Get(param1, param4, 28, NULL) == v2))) {
        if (Battler_Ability(param1, param4) == 91) {
            param6 *= 2;
        } else {
            param6 = param6 * 15 / 10;
        }
    }

    if ((Battler_IgnorableAbility(param1, param4, param5, 26) == 1) && (v2 == 4) && (v5 != 106)) {
        param7[0] |= 0x800;
    } else if ((param1->battleMons[param5].moveEffectsData.magnetRiseTurns) && ((param1->battleMons[param5].moveEffectsMask & 0x400) == 0) && (v2 == 4) && (v5 != 106)) {
        param7[0] |= 0x100000;
    } else {
        v0 = 0;

        while (Unk_ov16_0226ECD4[v0][0] != 0xff) {
            if (Unk_ov16_0226ECD4[v0][0] == 0xfe) {
                if ((param1->battleMons[param5].statusVolatile & 0x20000000) || (Battler_Ability(param1, param4) == 113)) {
                    break;
                } else {
                    v0++;
                    continue;
                }
            }

            if (Unk_ov16_0226ECD4[v0][0] == v2) {
                if (Unk_ov16_0226ECD4[v0][1] == BattleMon_Get(param1, param5, 27, NULL)) {
                    if (ov16_02254EF4(param1, param4, param5, v0) == 1) {
                        param6 = ov16_0225B63C(param1, param4, Unk_ov16_0226ECD4[v0][2], param6, v3, param7);

                        if (Unk_ov16_0226ECD4[v0][2] == 20) {
                            v1 *= 2;
                        }
                    }
                }

                if ((Unk_ov16_0226ECD4[v0][1] == BattleMon_Get(param1, param5, 28, NULL)) && (BattleMon_Get(param1, param5, 27, NULL) != BattleMon_Get(param1, param5, 28, NULL))) {
                    if (ov16_02254EF4(param1, param4, param5, v0) == 1) {
                        param6 = ov16_0225B63C(param1, param4, Unk_ov16_0226ECD4[v0][2], param6, v3, param7);

                        if (Unk_ov16_0226ECD4[v0][2] == 20) {
                            v1 *= 2;
                        }
                    }
                }
            }

            v0++;
        }
    }

    if ((Battler_IgnorableAbility(param1, param4, param5, 25) == 1) && (ov16_0225B6C8(param1, param2)) && (((param7[0] & 0x2) == 0) || ((param7[0] & (2 | 4)) == (2 | 4))) && (v3)) {
        param7[0] |= 0x40000;
    } else {
        if (((param1->battleStatusMask & 0x800) == 0) && ((param1->battleStatusMask & 0x8000) == 0)) {
            if ((param7[0] & 0x2) && (v3)) {
                if ((Battler_IgnorableAbility(param1, param4, param5, 111) == 1) || (Battler_IgnorableAbility(param1, param4, param5, 116) == 1)) {
                    param6 = BattleSystem_Divide(param6 * 3, 4);
                }

                if (v4 == 96) {
                    param6 = param6 * (100 + v6) / 100;
                }
            }

            if ((param7[0] & 0x4) && (v3)) {
                if (Battler_Ability(param1, param4) == 110) {
                    param6 *= 2;
                }
            }
        } else {
            param7[0] &= (0x2 ^ 0xffffffff);
            param7[0] &= (0x4 ^ 0xffffffff);
        }
    }

    return param6;
}

void ov16_022552D4 (BattleContext * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, u32 * param8)
{
    int v0;
    u8 v1;

    if (param1 == 165) {
        return;
    }

    if (param3 == 96) {
        v1 = 0;
    } else if (param2) {
        v1 = param2;
    } else {
        v1 = param0->aiContext.moveTable[param1].type;
    }

    if ((param3 != 104) && (param4 == 26) && (v1 == 4) && ((param0->fieldConditionsMask & 0x7000) == 0) && (param5 != 106)) {
        param8[0] |= 0x8;
    } else {
        v0 = 0;

        while (Unk_ov16_0226ECD4[v0][0] != 0xff) {
            if (Unk_ov16_0226ECD4[v0][0] == 0xfe) {
                if (param3 == 113) {
                    break;
                } else {
                    v0++;
                    continue;
                }
            }

            if (Unk_ov16_0226ECD4[v0][0] == v1) {
                if (Unk_ov16_0226ECD4[v0][1] == param6) {
                    if (ov16_022553F8(param0, param5, v0) == 1) {
                        ov16_02255448(Unk_ov16_0226ECD4[v0][2], param8);
                    }
                }

                if ((Unk_ov16_0226ECD4[v0][1] == param7) && (param6 != param7)) {
                    if (ov16_022553F8(param0, param5, v0) == 1) {
                        ov16_02255448(Unk_ov16_0226ECD4[v0][2], param8);
                    }
                }
            }

            v0++;
        }
    }

    if ((param3 != 104) && (param4 == 25) && (ov16_0225B6C8(param0, param1)) && (((param8[0] & 0x2) == 0) || ((param8[0] & (2 | 4)) == (2 | 4)))) {
        param8[0] |= 0x8;
    }

    return;
}

static BOOL ov16_022553F8 (BattleContext * param0, int param1, int param2)
{
    BOOL v0;

    v0 = 1;

    if (param1 == 106) {
        if ((Unk_ov16_0226ECD4[param2][1] == 2) && (Unk_ov16_0226ECD4[param2][2] == 0)) {
            v0 = 0;
        }
    }

    if (param0->fieldConditionsMask & 0x7000) {
        if ((Unk_ov16_0226ECD4[param2][1] == 2) && (Unk_ov16_0226ECD4[param2][2] == 0)) {
            v0 = 0;
        }
    }

    return v0;
}

static void ov16_02255448 (int param0, u32 * param1)
{
    switch (param0) {
    case 0:
        param1[0] |= 0x8;
        param1[0] &= (0x4 ^ 0xffffffff);
        param1[0] &= (0x2 ^ 0xffffffff);
        break;
    case 5:
        if (param1[0] & 0x2) {
            param1[0] &= (0x2 ^ 0xffffffff);
        } else {
            param1[0] |= 0x4;
        }
        break;
    case 20:
        if (param1[0] & 0x4) {
            param1[0] &= (0x4 ^ 0xffffffff);
        } else {
            param1[0] |= 0x2;
        }
        break;
    }

    return;
}

BOOL BattleContext_MoveFailed (BattleContext * param0, int param1)
{
    if ((param0->moveFailFlags[param1].paralyzed) || (param0->moveFailFlags[param1].noEffect) || (param0->moveFailFlags[param1].imprisoned) || (param0->moveFailFlags[param1].infatuated) || (param0->moveFailFlags[param1].disabled) || (param0->moveFailFlags[param1].taunted) || (param0->moveFailFlags[param1].flinched) || (param0->moveFailFlags[param1].gravity) || (param0->moveFailFlags[param1].confused)) {
        return 1;
    } else {
        return 0;
    }
}

u8 ov16_022554E0 (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;
    u8 v1;
    int v2;

    v1 = 0;
    v2 = BattleSystem_MaxBattlers(param0);

    switch (param2) {
    case 0:
        for (v0 = 0; v0 < v2; v0++) {
            if ((v0 != param3) && (param1->battleMons[v0].curHP)) {
                v1++;
            }
        }
        break;
    case 1:
        for (v0 = 0; v0 < v2; v0++) {
            if ((Battler_Side(param0, v0) == Battler_Side(param0, param3)) && (param1->battleMons[v0].curHP)) {
                v1++;
            }
        }
        break;
    }

    return v1;
}

int BattleSystem_NicknameTag (BattleContext *battleSys, int battler)
{
    return battler | (battleSys->selectedPartySlot[battler] << 8);
}

u16 Battler_SelectedMove (BattleContext * param0, int param1)
{
    u16 v0;

    v0 = 0;

    if ((param0->battlerActions[param1][3] == 1) && (param0->battlerActions[param1][2])) {
        v0 = param0->battleMons[param1].moves[param0->battlerActions[param1][2] - 1];
    }

    return v0;
}

int BattleSystem_CountAbility (BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4)
{
    int v0;
    int v1;
    int v2;

    v0 = 0;
    v2 = BattleSystem_MaxBattlers(param0);

    switch (param2) {
    case 0:
        for (v1 = 0; v1 < v2; v1++) {
            if ((Battler_Side(param0, v1) == Battler_Side(param0, param3)) && (Battler_Ability(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 1:
        for (v1 = 0; v1 < v2; v1++) {
            if ((Battler_Side(param0, v1) == Battler_Side(param0, param3)) && (param1->battleMons[v1].curHP) && (Battler_Ability(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 2:
        for (v1 = 0; v1 < v2; v1++) {
            if ((Battler_Side(param0, v1) != Battler_Side(param0, param3)) && (Battler_Ability(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 3:
        for (v1 = 0; v1 < v2; v1++) {
            if ((Battler_Side(param0, v1) != Battler_Side(param0, param3)) && (param1->battleMons[v1].curHP) && (Battler_Ability(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 4:
        for (v1 = 0; v1 < v2; v1++) {
            if ((Battler_Side(param0, v1) != Battler_Side(param0, param3)) && (param1->battleMons[v1].curHP) && (Battler_Ability(param1, v1) == param4)) {
                v0 |= FlagIndex(v1);
            }
        }
        break;
    case 5:
        for (v1 = 0; v1 < v2; v1++) {
            if (Battler_Ability(param1, v1) == param4) {
                v0++;
            }
        }
        break;
    case 6:
        for (v1 = 0; v1 < v2; v1++) {
            if ((v1 != param3) && (Battler_Ability(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 7:
        for (v1 = 0; v1 < v2; v1++) {
            if ((v1 != param3) && (Battler_Ability(param1, v1) == param4)) {
                v0 = v1 + 1;
                break;
            }
        }
        break;
    case 8:
        for (v1 = 0; v1 < v2; v1++) {
            if ((Battler_Ability(param1, v1) == param4) && (param1->battleMons[v1].curHP)) {
                v0++;
            }
        }
        break;
    case 9:
        for (v1 = 0; v1 < v2; v1++) {
            if ((v1 != param3) && (Battler_Ability(param1, v1) == param4) && (param1->battleMons[v1].curHP)) {
                v0++;
            }
        }
        break;
    }

    return v0;
}

BOOL BattleMove_IsMultiTurn (BattleContext * param0, int param1)
{
    switch (param0->aiContext.moveTable[param1].effect) {
    case 26:
    case 39:
    case 75:
    case 145:
    case 151:
    case 155:
    case 255:
    case 256:
    case 263:
    case 272:
        return 1;
        break;
    }

    return 0;
}

BOOL ov16_0225588C (BattleSystem * param0, int param1, u8 * param2, u8 * param3, u8 * param4)
{
    BOOL v0;

    v0 = 1;

    if (param1 >= NELEMS(Unk_ov16_0226ECD4)) {
        param1 = BattleSystem_RandNext(param0) % (NELEMS(Unk_ov16_0226ECD4));
        v0 = 0;
    }

    param2[0] = Unk_ov16_0226ECD4[param1][0];
    param3[0] = Unk_ov16_0226ECD4[param1][1];
    param4[0] = Unk_ov16_0226ECD4[param1][2];

    return v0;
}

int ov16_022558CC (u8 param0, u8 param1, u8 param2)
{
    int v0;
    int v1;

    v0 = 0;
    v1 = 40;

    while (Unk_ov16_0226ECD4[v0][0] != 0xff) {
        if (Unk_ov16_0226ECD4[v0][0] == param0) {
            if (Unk_ov16_0226ECD4[v0][1] == param1) {
                v1 = v1 * Unk_ov16_0226ECD4[v0][2] / 10;
            }

            if ((Unk_ov16_0226ECD4[v0][1] == param2) && (param1 != param2)) {
                v1 = v1 * Unk_ov16_0226ECD4[v0][2] / 10;
            }
        }

        v0++;
    }

    return v1;
}

BOOL ov16_02255918 (u16 param0)
{
    if ((param0 == 0) || (param0 == 214) || (param0 == 383) || (param0 == 274) || (param0 == 382) || (param0 == 119) || (param0 == 118)) {
        return 1;
    }

    return 0;
}

BOOL BattleSystem_IsGhostCurse (BattleContext * param0, u16 param1, int param2)
{
    return (param1 == 174) && ((BattleMon_Get(param0, param2, 27, NULL) == 7) || (BattleMon_Get(param0, param2, 28, NULL) == 7));
}

BOOL ov16_02255980 (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    int v1;

    v0 = 0;
    v1 = Battler_Side(param0, param2);

    if ((param1->battleMons[param2].heldItem) && ((param1->sideConditions[v1].knockedOffItemsMask & FlagIndex(param1->selectedPartySlot[param2])) == 0) && (Item_IsMail(param1->battleMons[param2].heldItem) == 0)) {
        v0 = 1;
    }

    return v0;
}

BOOL ov16_022559DC (BattleContext * param0, int param1)
{
    return Item_IsMail(param0->battleMons[param1].heldItem) == 0;
}

BOOL ov16_022559FC (BattleSystem * param0, BattleContext * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->battleMons[param1->attacker].level >= param1->battleMons[param1->defender].level) {
        v0 = 1;
    } else {
        {
            int v1;

            v1 = (((BattleSystem_RandNext(param0) & 0xff) * (param1->battleMons[param1->attacker].level + param1->battleMons[param1->defender].level)) >> 8) + 1;

            if (v1 > (param1->battleMons[param1->defender].level / 4)) {
                v0 = 1;
            }
        }
    }

    return v0;
}

u8 Battler_Ability (BattleContext * param0, int param1)
{
    if ((param0->battleMons[param1].moveEffectsMask & 0x200000) && (param0->battleMons[param1].ability != 121)) {
        return 0;
    } else if ((param0->fieldConditionsMask & 0x7000) && (param0->battleMons[param1].ability == 26)) {
        return 0;
    } else if ((param0->battleMons[param1].moveEffectsMask & 0x400) && (param0->battleMons[param1].ability == 26)) {
        return 0;
    } else {
        return param0->battleMons[param1].ability;
    }
}

BOOL Battler_IgnorableAbility (BattleContext * param0, int param1, int param2, int param3)
{
    BOOL v0;

    v0 = 0;

    if (Battler_Ability(param0, param1) != 104) {
        if (Battler_Ability(param0, param2) == param3) {
            v0 = 1;
        }
    } else {
        if ((Battler_Ability(param0, param2) == param3) && (param0->selfTurnFlags[param1].moldBreakerActivated == 0)) {
            param0->selfTurnFlags[param1].moldBreakerActivated = 1;
            param0->battleStatusMask |= 0x800000;
        }
    }

    return v0;
}

BOOL BattleSystem_CheckAnySwitches (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    Party * v1;
    Pokemon * v2;
    int v3;
    int v4 = 0, v5, v6, v7, v8, v9;
    int v10, v11;
    u32 v12;

    v0 = 0;
    v12 = BattleSystem_BattleType(param0);
    v1 = BattleSystem_Party(param0, param2);
    v3 = BattleSystem_PartyCount(param0, param2);

    if ((v12 & 0x8) || ((v12 & 0x10) && (BattleSystem_BattlerSlot(param0, param2) & 0x1))) {
        v7 = 0;
        v8 = v3;
        v9 = v3;
        v5 = 1;
        v10 = param1->selectedPartySlot[param2];
        v11 = param1->selectedPartySlot[param2];
    } else if (v12 & 0x2) {
        v7 = 0;
        v8 = v3;
        v9 = v3;
        v5 = 1;
        v10 = param1->selectedPartySlot[param2];
        v11 = param1->selectedPartySlot[BattleSystem_Partner(param0, param2)];
    } else {
        v7 = 0;
        v8 = v3;
        v9 = v3;
        v5 = 1;
        v10 = param1->selectedPartySlot[param2];
        v11 = param1->selectedPartySlot[param2];
    }

    for (v6 = v7; v6 < v8; v6++) {
        v2 = Party_GetPokemonBySlotIndex(v1, v6);

        if ((Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v2, MON_DATA_CURRENT_HP, NULL)) && (v10 != v6) && (v11 != v6)) {
            v4++;
        }
    }

    if (v4 >= v5) {
        v0 = 1;
    }

    return v0;
}

BOOL BattleSystem_Trapped (BattleSystem * param0, BattleContext * param1, int param2, BattleMessage * param3)
{
    int v0;
    int v1;
    u8 v2;
    int v3;
    u32 v4;

    v4 = BattleSystem_BattleType(param0);
    v3 = Battler_HeldItemEffect(param1, param2);

    if ((v3 == 63) || (v4 & (0x4 | 0x20 | 0x200 | 0x80)) || (Battler_Ability(param1, param2) == 50)) {
        return 0;
    }

    v2 = Battler_Side(param0, param2);
    v1 = BattleSystem_MaxBattlers(param0);

    if ((v0 = BattleSystem_CountAbility(param0, param1, 9, param2, 23)) && (Battler_Ability(param1, param2) != 23)) {
        if (param3 == NULL) {
            return 1;
        }

        param3->tags = 11;
        param3->id = 39;
        param3->params[0] = BattleSystem_NicknameTag(param1, v0);
        param3->params[1] = 23;
        return 1;
    }

    if ((v0 = BattleSystem_CountAbility(param0, param1, 3, param2, 71))) {
        if (((param1->fieldConditionsMask & 0x7000) == 0) && (v3 != 106)) {
            if ((Battler_Ability(param1, param2) != 26) && (param1->battleMons[param2].moveEffectsData.magnetRiseTurns == 0) && ((BattleMon_Get(param1, param2, 27, NULL) != 2) && (BattleMon_Get(param1, param2, 28, NULL) != 2))) {
                if (param3 == NULL) {
                    return 1;
                }

                param3->tags = 11;
                param3->id = 39;
                param3->params[0] = BattleSystem_NicknameTag(param1, v0);
                param3->params[1] = 71;
                return 1;
            }
        } else {
            if (param3 == NULL) {
                return 1;
            }

            param3->tags = 11;
            param3->id = 39;
            param3->params[0] = BattleSystem_NicknameTag(param1, v0);
            param3->params[1] = 71;
            return 1;
        }
    }

    if ((v0 = BattleSystem_CountAbility(param0, param1, 3, param2, 42)) && ((BattleMon_Get(param1, param2, 27, NULL) == 8) || (BattleMon_Get(param1, param2, 28, NULL) == 8))) {
        if (param3 == NULL) {
            return 1;
        }

        param3->tags = 11;
        param3->id = 39;
        param3->params[0] = BattleSystem_NicknameTag(param1, v0);
        param3->params[1] = 42;
        return 1;
    }

    if ((param1->battleMons[param2].statusVolatile & (0xe000 | 0x4000000)) || (param1->battleMons[param2].moveEffectsMask & 0x400)) {
        if (param3 == NULL) {
            return 1;
        }

        param3->tags = 0;
        param3->id = 794;
        return 1;
    }

    return 0;
}

BOOL BattleSystem_TryEscape (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    u8 v1;
    int v2;
    u8 v3;
    u32 v4;

    v4 = BattleSystem_BattleType(param0);
    v2 = Battler_HeldItemEffect(param1, param2);
    v0 = 0;

    if (v2 == 63) {
        param1->turnFlags[param2].fleeing = 1;
        v0 = 1;
    } else if (v4 & (0x4 | 0x20 | 0x200 | 0x80)) {
        v0 = 1;
    } else if (Battler_Ability(param1, param2) == 50) {
        param1->turnFlags[param2].fleeing = 2;
        v0 = 1;
    } else {
        if (param1->battleMons[param2].speed < param1->battleMons[param2 ^ 1].speed) {
            v1 = param1->battleMons[param2].speed * 128 / param1->battleMons[param2 ^ 1].speed + param1->runAttempts * 30;

            if (v1 > (BattleSystem_RandNext(param0) % 256)) {
                v0 = 1;
            }
        } else {
            v0 = 1;
        }

        if (v0 == 0) {
            BattleIO_IncrementRecord(param0, param2, 0, (((70 + 1)) + 27));
        }

        param1->runAttempts++;
    }

    return v0;
}

BOOL Battler_CheckTruant (BattleContext * param0, int param1)
{
    BOOL v0;

    v0 = 0;

    if (Battler_Ability(param0, param1) == 54) {
        if (param0->battleMons[param1].moveEffectsData.truant != (param0->totalTurns & 1)) {
            v0 = 1;
        }
    }

    return v0;
}

BOOL BattleSystem_Imprisoned (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    BOOL v4;

    v4 = 0;
    v1 = BattleSystem_MaxBattlers(param0);
    v2 = Battler_Side(param0, param2);

    for (v0 = 0; v0 < v1; v0++) {
        if ((v2 != Battler_Side(param0, v0)) && (param1->battleMons[v0].moveEffectsMask & 0x2000)) {
            for (v3 = 0; v3 < 4; v3++) {
                if (param3 == param1->battleMons[v0].moves[v3]) {
                    break;
                }
            }

            if (v3 != 4) {
                v4 = 1;
            }
        }
    }

    return v4;
}

BOOL ov16_02255F68 (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    int v1;
    BOOL v2;

    v2 = 0;
    v1 = BattleSystem_MaxBattlers(param0);

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->battleMons[v0].moveEffectsMask & param2) {
            v2 = 1;
            break;
        }
    }

    return v2;
}

void BattleSystem_SetupLoop(BattleSystem *battleSys, BattleContext *battleCtx)
{
    battleCtx->moveStatusFlags = 0;
    battleCtx->criticalMul = 1;
    battleCtx->battleStatusMask &= ~SYSCTL_REUSE_LAST_MOVE;
}

void BattleSystem_SortMonsBySpeed (BattleSystem *battleSys, BattleContext *battleCtx)
{
    int v0;
    int v1;
    int v2, v3;
    int v4, v5;

    v1 = BattleSystem_MaxBattlers(battleSys);

    for (v0 = 0; v0 < v1; v0++) {
        battleCtx->monSpeedOrder[v0] = v0;
    }

    for (v2 = 0; v2 < v1 - 1; v2++) {
        for (v3 = v2 + 1; v3 < v1; v3++) {
            v4 = battleCtx->monSpeedOrder[v2];
            v5 = battleCtx->monSpeedOrder[v3];

            if (BattleSystem_CompareBattlerSpeed(battleSys, battleCtx, v4, v5, 1)) {
                battleCtx->monSpeedOrder[v2] = v5;
                battleCtx->monSpeedOrder[v3] = v4;
            }
        }
    }
}

static const u16 Unk_ov16_0226EBD4[] = {
    0x13,
    0x154,
    0x1A,
    0x88,
    0x96,
    0x189
};

BOOL BattleSystem_FailsInHighGravity (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;
    BOOL v1;

    v1 = 0;

    if (param1->fieldConditionsMask & 0x7000) {
        for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EBD4); v0++) {
            if (Unk_ov16_0226EBD4[v0] == param3) {
                v1 = 1;
                break;
            }
        }
    }

    return v1;
}

static const u16 Unk_ov16_0226EBFA[] = {
    0x69,
    0x87,
    0x9C,
    0xD0,
    0xEA,
    0xEB,
    0xEC,
    0x100,
    0x1C8,
    0x12F,
    0x163,
    0x1CD,
    0x169,
    0x111
};

BOOL BattleSystem_HealBlocked (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;
    BOOL v1;

    v1 = 0;

    if (param1->battleMons[param2].moveEffectsData.healBlockTurns) {
        for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EBFA); v0++) {
            if (Unk_ov16_0226EBFA[v0] == param3) {
                v1 = 1;
                break;
            }
        }
    }

    return v1;
}

void BattleSystem_UpdateLastResort (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    if ((param1->moveTemp == 387) || (param1->battleMons[param1->attacker].moveEffectsData.lastResortCount == 4)) {
        return;
    }

    for (v0 = 0; v0 < param1->battleMons[param1->attacker].moveEffectsData.lastResortCount; v0++) {
        if (param1->battleMons[param1->attacker].moveEffectsData.lastResortMoves[v0] == param1->moveTemp) {
            return;
        }
    }

    param1->battleMons[param1->attacker].moveEffectsData.lastResortMoves[v0] = param1->moveTemp;
    param1->battleMons[param1->attacker].moveEffectsData.lastResortCount++;
}

int ov16_02256128 (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->battleMons[param2].moves[v0] == 0) {
            break;
        }
    }

    return v0;
}

static u16 Unk_ov16_02270B8C[] = {
    0x2D,
    0x2E,
    0x2F,
    0x30,
    0x67,
    0xAD,
    0xFD,
    0x13F,
    0x140,
    0x130,
    0x195,
    0x1C0
};

int BattleSystem_CheckImmunityAbilities (BattleContext * param0, int param1, int param2)
{
    int v0;
    int v1;

    v0 = 0;

    if (Battler_Ability(param0, param1) == 96) {
        v1 = 0;
    } else if (param0->moveType) {
        v1 = param0->moveType;
    } else {
        v1 = param0->aiContext.moveTable[param0->moveCur].type;
    }

    if (Battler_IgnorableAbility(param0, param1, param2, 10) == 1) {
        if ((v1 == 13) && (param1 != param2)) {
            param0->hpCalcTemp = BattleSystem_Divide(param0->battleMons[param2].maxHP, 4);
            v0 = (0 + 178);
        }
    }

    if (Battler_IgnorableAbility(param0, param1, param2, 11) == 1) {
        if ((v1 == 11) && ((param0->battleStatusMask & 0x20) == 0) && (param0->aiContext.moveTable[param0->moveCur].power)) {
            param0->hpCalcTemp = BattleSystem_Divide(param0->battleMons[param2].maxHP, 4);
            v0 = (0 + 178);
        }
    }

    if (Battler_IgnorableAbility(param0, param1, param2, 18) == 1) {
        if ((v1 == 10) && ((param0->battleMons[param2].status & 0x20) == 0) && ((param0->battleStatusMask & 0x20) == 0) && ((param0->aiContext.moveTable[param0->moveCur].power) || (param0->moveCur == 261))) {
            v0 = (0 + 179);
        }
    }

    if (Battler_IgnorableAbility(param0, param1, param2, 43) == 1) {
        {
            int v2;

            for (v2 = 0; v2 < NELEMS(Unk_ov16_02270B8C); v2++) {
                if (Unk_ov16_02270B8C[v2] == param0->moveCur) {
                    v0 = (0 + 181);
                    break;
                }
            }
        }
    }

    if (Battler_IgnorableAbility(param0, param1, param2, 78) == 1) {
        if ((v1 == 13) && (param1 != param2)) {
            v0 = (0 + 182);
        }
    }

    if (Battler_IgnorableAbility(param0, param1, param2, 87) == 1) {
        if ((v1 == 11) && ((param0->battleStatusMask & 0x20) == 0) && (param0->aiContext.moveTable[param0->moveCur].power)) {
            param0->hpCalcTemp = BattleSystem_Divide(param0->battleMons[param2].maxHP, 4);
            v0 = (0 + 178);
        }
    }

    return v0;
}

BOOL BattleSystem_TriggerTurnEndAbility (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    int v1;

    v0 = 0;

    switch (Battler_Ability(param1, param2)) {
    case 3:
        if ((param1->battleMons[param2].curHP) && (param1->battleMons[param2].statBoosts[0x3] < 12) && (param1->battleMons[param2].moveEffectsData.fakeOutTurnNumber != param1->totalTurns + 1)) {
            param1->sideEffectParam = 0x11;
            param1->sideEffectType = 3;
            param1->sideEffectMon = param2;
            v1 = (0 + 12);
            v0 = 1;
        }
        break;
    case 61:
        if ((param1->battleMons[param2].status & 0xff) && (param1->battleMons[param2].curHP) && (BattleSystem_RandNext(param0) % 10 < 3)) {
            if (param1->battleMons[param2].status & 0x7) {
                param1->msgTemp = 0;
            } else if (param1->battleMons[param2].status & 0xf88) {
                param1->msgTemp = 1;
            } else if (param1->battleMons[param2].status & 0x10) {
                param1->msgTemp = 2;
            } else if (param1->battleMons[param2].status & 0x40) {
                param1->msgTemp = 3;
            } else {
                param1->msgTemp = 4;
            }

            param1->msgBattlerTemp = param2;

            v1 = (0 + 190);
            v0 = 1;
        }
        break;
    default:
        break;
    }

    if (v0 == 1) {
        BattleSystem_LoadScript(param1, 1, v1);
        param1->commandNext = param1->command;
        param1->command = 21;
    }

    return v0;
}

int BattleSystem_Divide (int param0, int param1)
{
    int v0;

    if (param0 == 0) {
        return param0;
    }

    if (param0 < 0) {
        v0 = -1;
    } else {
        v0 = 1;
    }

    param0 /= param1;

    if (param0 == 0) {
        param0 = v0;
    }

    return param0;
}

int BattleSystem_ShowMonChecks (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v5 = BattleSystem_MaxBattlers(param0);
    v2 = 0;
    v3 = 0;

    do {
        switch (param1->switchInCheckState) {
        case 0:
            if (param1->fieldWeatherChecked == 0) {
                switch (ov16_0223F21C(param0)) {
                case 2:
                case 3:
                case 4:
                    v2 = (0 + 271);
                    v3 = 1;
                    break;
                case 5:
                case 6:
                case 7:
                    v2 = (0 + 272);
                    v3 = 1;
                    break;
                case 10:
                    v2 = (0 + 273);
                    v3 = 1;
                    break;
                case 14:
                case 15:
                    v2 = (0 + 274);
                    v3 = 1;
                    break;
                case 1001:
                    v2 = (0 + 294);
                    v3 = 1;
                    break;
                case 1002:
                    v2 = (0 + 295);
                    v3 = 1;
                    break;
                default:
                    break;
                }

                if (v3 == 1) {
                    param1->fieldWeatherChecked = 1;
                }
            }

            param1->switchInCheckState++;
            break;
        case 1:
        {
            int v6, v7;

            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];
                v6 = ov16_0223E2A4(param0, v4, 0);
                v7 = ov16_0223E2A4(param0, v4, 2);

                param1->msgDefender = ov16_0225B840(param0, param1, v6, v7);

                if ((param1->battleMons[v4].traceAnnounced == 0) && (param1->msgDefender != 0xff) && (param1->battleMons[v4].curHP) && (param1->battleMons[v4].heldItem != 112) && (param1->battleMons[param1->msgDefender].curHP) && (Battler_Ability(param1, v4) == 36)) {
                    param1->battleMons[v4].traceAnnounced = 1;
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 187);
                    v3 = 1;
                    break;
                }
            }
        }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 2:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].weatherAbilityAnnounced == 0) && (param1->battleMons[v4].curHP)) {
                    switch (Battler_Ability(param1, v4)) {
                    case 2:
                        param1->battleMons[v4].weatherAbilityAnnounced = 1;

                        if ((param1->fieldConditionsMask & 0x2) == 0) {
                            v2 = (0 + 183);
                            v3 = 1;
                        }
                        break;
                    case 45:
                        param1->battleMons[v4].weatherAbilityAnnounced = 1;

                        if ((param1->fieldConditionsMask & 0x8) == 0) {
                            v2 = (0 + 184);
                            v3 = 1;
                        }
                        break;
                    case 70:
                        param1->battleMons[v4].weatherAbilityAnnounced = 1;

                        if ((param1->fieldConditionsMask & 0x20) == 0) {
                            v2 = (0 + 185);
                            v3 = 1;
                        }
                        break;
                    case 117:
                        param1->battleMons[v4].weatherAbilityAnnounced = 1;

                        if ((param1->fieldConditionsMask & 0x80) == 0) {
                            v2 = (0 + 252);
                            v3 = 1;
                        }
                        break;
                    }
                }

                if (v3 == 1) {
                    param1->msgBattlerTemp = v4;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 3:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].intimidateAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 22)) {
                    param1->battleMons[v4].intimidateAnnounced = 1;
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 186);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 4:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].downloadAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 88)) {
                    {
                        int v8;
                        int v9, v10;

                        v9 = 0;
                        v10 = 0;

                        for (v8 = 0; v8 < v5; v8++) {
                            if ((Battler_Side(param0, v4) != Battler_Side(param0, v8)) && ((param1->battleMons[v8].statusVolatile & 0x1000000) == 0) && (param1->battleMons[v8].curHP)) {
                                v9 += param1->battleMons[v8].defense * Unk_ov16_0226EBE0[param1->battleMons[v8].statBoosts[0x2]][0] / Unk_ov16_0226EBE0[param1->battleMons[v8].statBoosts[0x2]][1];
                                v10 += param1->battleMons[v8].spDefense * Unk_ov16_0226EBE0[param1->battleMons[v8].statBoosts[0x5]][0] / Unk_ov16_0226EBE0[param1->battleMons[v8].statBoosts[0x5]][1];
                            }
                        }

                        param1->battleMons[v4].downloadAnnounced = 1;

                        if ((v9 + v10) != 0) {
                            if (v9 >= v10) {
                                param1->sideEffectParam = 0x12;
                            } else {
                                param1->sideEffectParam = 0xf;
                            }

                            param1->sideEffectType = 3;
                            param1->sideEffectMon = v4;
                            v2 = (0 + 12);
                            v3 = 1;
                            break;
                        }
                    }
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 5:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].anticipationAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 107)) {
                    param1->battleMons[v4].anticipationAnnounced = 1;
                    {
                        int v11, v12;
                        u16 v13;
                        u32 v14;

                        for (v11 = 0; v11 < v5; v11++) {
                            if ((Battler_Side(param0, v4) != Battler_Side(param0, v11)) && (param1->battleMons[v11].curHP)) {
                                for (v12 = 0; v12 < 4; v12++) {
                                    v13 = param1->battleMons[v11].moves[v12];

                                    if (v13) {
                                        v14 = 0;
                                        param1->damage = BattleSystem_CheckTypeChart(param0, param1, v13, NULL, v11, v4, param1->damage, &v14);

                                        if (((v14 & 0x8) == 0) && (ov16_0225B8E4(param1, v13) == 0) && ((v14 & 0x2) || ((param1->aiContext.moveTable[v13].effect == 38) && (param1->battleMons[v4].level <= param1->battleMons[v11].level)))) {
                                            v3 = 1;
                                            break;
                                        }
                                    }
                                }

                                if (v3 == 1) {
                                    break;
                                }
                            }
                        }

                        if (v3 == 1) {
                            param1->msgBattlerTemp = v4;
                            v2 = (0 + 194);
                        }
                        break;
                    }
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 6:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].forewarnAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 108)) {
                    param1->battleMons[v4].forewarnAnnounced = 1;
                    {
                        int v15, v16;
                        u16 v17;
                        u32 v18, v19;
                        int v20;

                        v19 = 0;
                        v20 = 0;

                        for (v15 = 0; v15 < v5; v15++) {
                            if ((Battler_Side(param0, v4) != Battler_Side(param0, v15)) && (param1->battleMons[v15].curHP)) {
                                v20 += param1->battleMons[v15].curHP;

                                for (v16 = 0; v16 < 4; v16++) {
                                    v17 = param1->battleMons[v15].moves[v16];

                                    v18 = param1->aiContext.moveTable[v17].power;

                                    switch (v18) {
                                    case 1:
                                        switch (param1->aiContext.moveTable[v17].effect) {
                                        case 38:
                                            if ((v19 < 150) || ((v19 == 150) && (BattleSystem_RandNext(param0) & 1))) {
                                                v19 = 150;
                                                param1->msgMoveTemp = v17;
                                            }
                                            break;
                                        case 89:
                                        case 144:
                                        case 227:
                                            if ((v19 < 120) || ((v19 == 120) && (BattleSystem_RandNext(param0) & 1))) {
                                                v19 = 120;
                                                param1->msgMoveTemp = v17;
                                            }
                                            break;
                                        default:
                                            if ((v19 < 80) || ((v19 == 80) && (BattleSystem_RandNext(param0) & 1))) {
                                                v19 = 80;
                                                param1->msgMoveTemp = v17;
                                            }
                                            break;
                                        }
                                        break;
                                    default:
                                        if ((v19 < v18) || ((v19 == v18) && (BattleSystem_RandNext(param0) & 1))) {
                                            v19 = v18;
                                            param1->msgMoveTemp = v17;
                                        }
                                        break;
                                    }
                                }
                            }
                        }

                        if (v19) {
                            param1->msgBattlerTemp = v4;

                            v2 = (0 + 195);
                            v3 = 1;
                        } else if (v20) {
                            v15 = BattleSystem_RandomOpponent(param0, param1, v4);
                            v16 = ov16_02256128(param0, param1, v15);

                            param1->msgMoveTemp = param1->battleMons[v15].moves[BattleSystem_RandNext(param0) % v16];
                            param1->msgBattlerTemp = v4;

                            v2 = (0 + 195);
                            v3 = 1;
                        }
                        break;
                    }
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 7:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].friskAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 119)) {
                    param1->battleMons[v4].friskAnnounced = 1;

                    if (BattleSystem_BattleType(param0) & 0x2) {
                        {
                            int v21[2];

                            v21[0] = ov16_0223E2A4(param0, v4, 0);
                            v21[1] = ov16_0223E2A4(param0, v4, 2);

                            if ((param1->battleMons[v21[0]].curHP) && (param1->battleMons[v21[0]].heldItem) && (param1->battleMons[v21[1]].curHP) && (param1->battleMons[v21[1]].heldItem)) {
                                param1->msgItemTemp = param1->battleMons[v21[BattleSystem_RandNext(param0) & 1]].heldItem;
                                v3 = 1;
                            } else if ((param1->battleMons[v21[0]].curHP) && (param1->battleMons[v21[0]].heldItem)) {
                                param1->msgItemTemp = param1->battleMons[v21[0]].heldItem;
                                v3 = 1;
                            } else if ((param1->battleMons[v21[1]].curHP) && (param1->battleMons[v21[1]].heldItem)) {
                                param1->msgItemTemp = param1->battleMons[v21[1]].heldItem;
                                v3 = 1;
                            }
                        }
                    } else {
                        if ((param1->battleMons[v4 ^ 1].curHP) && (param1->battleMons[v4 ^ 1].heldItem)) {
                            param1->msgItemTemp = param1->battleMons[v4 ^ 1].heldItem;
                            v3 = 1;
                        }
                    }
                }

                if (v3 == 1) {
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 253);
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 8:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].slowStartAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 112) && (param1->totalTurns <= param1->battleMons[v4].moveEffectsData.slowStartTurnNumber)) {
                    param1->battleMons[v4].slowStartAnnounced = 1;
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 196);
                    v3 = 1;
                    break;
                }

                if ((param1->battleMons[v4].slowStartFinished == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 112) && ((param1->totalTurns - param1->battleMons[v4].moveEffectsData.slowStartTurnNumber) == 5)) {
                    param1->battleMons[v4].slowStartFinished = 1;
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 197);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 9:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].moldBreakerAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 104)) {
                    param1->battleMons[v4].moldBreakerAnnounced = 1;
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 177);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 10:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if ((param1->battleMons[v4].pressureAnnounced == 0) && (param1->battleMons[v4].curHP) && (Battler_Ability(param1, v4) == 46)) {
                    param1->battleMons[v4].pressureAnnounced = 1;
                    param1->msgBattlerTemp = v4;
                    v2 = (0 + 285);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 11:
            if (BattleSystem_UpdateWeatherForms(param0, param1, &v2) == 1) {
                v3 = 1;
            } else {
                param1->switchInCheckState++;
            }
            break;
        case 12:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if (ov16_0225B0FC(param1, param1->battleMons[v4].heldItem, 1) == 58) {
                    param1->prizeMoneyMul = 2;
                }
            }

            param1->switchInCheckState++;
            break;
        case 13:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if (ov16_02257628(param0, param1, v4, 1) == 1) {
                    v2 = (0 + 221);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 14:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->monSpeedOrder[v0];

                if (BattleSystem_TriggerHeldItemOnStatus(param0, param1, v4, &v2) == 1) {
                    param1->msgBattlerTemp = v4;
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->switchInCheckState++;
            }
            break;
        case 15:
            param1->switchInCheckState = 0;
            v3 = 2;
            break;
        }
    } while (v3 == 0);

    return v2;
}

int BattleSystem_RandomOpponent (BattleSystem * param0, BattleContext * param1, int param2)
{
    u32 v0;
    int v1;
    int v2[2];
    int v3;

    v0 = BattleSystem_BattleType(param0);

    if (v0 & 0x2) {
        v2[0] = ov16_0223E2A4(param0, param2, 0);
        v2[1] = ov16_0223E2A4(param0, param2, 2);
        v3 = BattleSystem_RandNext(param0) & 1;
        v1 = v2[v3];

        if (param1->battleMons[v1].curHP == 0) {
            v1 = v2[v3 ^ 1];
        }
    } else {
        v1 = param2 ^ 1;
    }

    return v1;
}

BOOL BattleSystem_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq)
{
    BOOL result = FALSE;

    // These two sentinels must be separate to match
    if (battleCtx->defender == BATTLER_NONE) {
        return result;
    }

    if (Battler_BehindSubstitute(battleCtx, battleCtx->defender) == TRUE) {
        return result;
    }

    switch (Battler_Ability(battleCtx, battleCtx->defender)) {
    case ABILITY_STATIC:
        if (ATTACKING_MON.curHP
                && ATTACKING_MON.status == MON_CONDITION_NONE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)
                && BattleSystem_RandNext(battleSys) % 10 < 3) {
            battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_ABILITY;
            battleCtx->sideEffectMon = battleCtx->attacker;
            battleCtx->msgBattlerTemp = battleCtx->defender;

            *nextSeq = BATTLE_SUBSEQ_PARALYZE;
            result = TRUE;
        }
        break;

    case ABILITY_COLOR_CHANGE:
        u8 moveType;

        if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_NORMALIZE) {
            moveType = TYPE_NORMAL;
        } else if (battleCtx->moveType) {
            moveType = battleCtx->moveType;
        } else {
            moveType = CURRENT_MOVE_DATA.type;
        }

        if (DEFENDING_MON.curHP
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && battleCtx->moveCur != MOVE_STRUGGLE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && CURRENT_MOVE_DATA.power
                && BattleMon_Get(battleCtx, battleCtx->defender, 27, NULL) != moveType
                && BattleMon_Get(battleCtx, battleCtx->defender, 28, NULL) != moveType) {
            *nextSeq = BATTLE_SUBSEQ_COLOR_CHANGE;
            battleCtx->msgTemp = moveType;
            result = TRUE;
        }
        break;

    case ABILITY_ROUGH_SKIN:
        if (ATTACKING_MON.curHP
                && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)) {
            battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKING_MON.maxHP * -1, 8);
            battleCtx->msgBattlerTemp = battleCtx->attacker;

            *nextSeq = BATTLE_SUBSEQ_ROUGH_SKIN;
            result = TRUE;
        }
        break;

    case ABILITY_EFFECT_SPORE:
        if (ATTACKING_MON.curHP
                && ATTACKING_MON.status == MON_CONDITION_NONE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)
                && BattleSystem_RandNext(battleSys) % 10 < 3) {
            switch (BattleSystem_RandNext(battleSys) % 3) {
            case 0:
            default:
                *nextSeq = BATTLE_SUBSEQ_POISON;
                break;
            case 1:
                *nextSeq = BATTLE_SUBSEQ_PARALYZE;
                break;
            case 2:
                *nextSeq = BATTLE_SUBSEQ_FALL_ASLEEP;
                break;
            }

            battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_ABILITY;
            battleCtx->sideEffectMon = battleCtx->attacker;
            battleCtx->msgBattlerTemp = battleCtx->defender;

            result = TRUE;
        }
        break;

    case ABILITY_POISON_POINT:
        if (ATTACKING_MON.curHP
                && ATTACKING_MON.status == MON_CONDITION_NONE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)
                && BattleSystem_RandNext(battleSys) % 10 < 3) {
            battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_ABILITY;
            battleCtx->sideEffectMon = battleCtx->attacker;
            battleCtx->msgBattlerTemp = battleCtx->defender;

            *nextSeq = BATTLE_SUBSEQ_POISON;
            result = TRUE;
        }
        break;

    case ABILITY_FLAME_BODY:
        if (ATTACKING_MON.curHP
                && ATTACKING_MON.status == MON_CONDITION_NONE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)
                && BattleSystem_RandNext(battleSys) % 10 < 3) {
            battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_ABILITY;
            battleCtx->sideEffectMon = battleCtx->attacker;
            battleCtx->msgBattlerTemp = battleCtx->defender;

            *nextSeq = BATTLE_SUBSEQ_BURN;
            result = TRUE;
        }
        break;

    case ABILITY_CUTE_CHARM:
        if (ATTACKING_MON.curHP
                && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_ATTRACT) == FALSE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)
                && DEFENDING_MON.curHP
                && BattleSystem_RandNext(battleSys) % 10 < 3) {
            battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_ABILITY;
            battleCtx->sideEffectMon = battleCtx->attacker;
            battleCtx->msgBattlerTemp = battleCtx->defender;

            *nextSeq = BATTLE_SUBSEQ_INFATUATE;
            result = TRUE;
        }
        break;

    case ABILITY_AFTERMATH:
        if (battleCtx->defender == battleCtx->faintedMon
                && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD
                && BattleSystem_CountAbility(battleSys, battleCtx, 8, 0, ABILITY_DAMP) == 0
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && ATTACKING_MON.curHP
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)) {
            battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKING_MON.maxHP * -1, 4);
            battleCtx->msgBattlerTemp = battleCtx->attacker;

            *nextSeq = BATTLE_SUBSEQ_AFTERMATH;
            result = TRUE;
        }
        break;

    default:
        break;
    }

    return result;
}

BOOL ov16_02257628 (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    BOOL v0;

    v0 = 0;

    switch (Battler_Ability(param1, param2)) {
    case 17:
        if (param1->battleMons[param2].status & 0xf88) {
            param1->msgTemp = 1;
            v0 = 1;
        }
        break;
    case 20:
        if (param1->battleMons[param2].statusVolatile & 0x7) {
            param1->msgTemp = 5;
            v0 = 1;
        }
        break;
    case 7:
        if (param1->battleMons[param2].status & 0x40) {
            param1->msgTemp = 3;
            v0 = 1;
        }
        break;
    case 15:
    case 72:
        if (param1->battleMons[param2].status & 0x7) {
            param1->msgTemp = 0;
            v0 = 1;
        }
        break;
    case 41:
        if (param1->battleMons[param2].status & 0x10) {
            param1->msgTemp = 2;
            v0 = 1;
        }
        break;
    case 40:
        if (param1->battleMons[param2].status & 0x20) {
            param1->msgTemp = 4;
            v0 = 1;
        }
        break;
    case 12:
        if (param1->battleMons[param2].statusVolatile & 0xf0000) {
            param1->msgTemp = 6;
            v0 = 1;
        }
        break;
    case 84:
        if (param1->battleMons[param2].heldItem) {
            param1->battleMons[param2].moveEffectsData.canUnburden = 1;
        }
        break;
    }

    if (v0 == 1) {
        param1->msgBattlerTemp = param2;
        param1->msgAbilityTemp = Battler_Ability(param1, param2);

        if (param3 == 0) {
            BattleSystem_LoadScript(param1, 1, (0 + 221));
            param1->commandNext = param1->command;
            param1->command = 21;
        }
    }

    return v0;
}

BOOL ov16_022577A4 (BattleContext * param0, int param1, int param2)
{
    BOOL v0;

    v0 = 0;

    switch (param1) {
    case 17:
        if (param2 & 0xf88) {
            v0 = 1;
        }
        break;
    case 7:
        if (param2 & 0x40) {
            v0 = 1;
        }
        break;
    case 15:
    case 72:
        if (param2 & 0x7) {
            v0 = 1;
        }
        break;
    case 41:
        if (param2 & 0x10) {
            v0 = 1;
        }
        break;
    case 40:
        if (param2 & 0x20) {
            v0 = 1;
        }
        break;
    }

    return v0;
}

BOOL BattleSystem_SynchronizeStatus(BattleSystem * battleSys, BattleContext * battleCtx, int controllerCommand)
{
    BOOL result = FALSE;
    int nextSeq = 0;

    if (battleCtx->defender != BATTLER_NONE
            && Battler_Ability(battleCtx, battleCtx->defender) == ABILITY_SYNCHRONIZE
            && battleCtx->defender == battleCtx->sideEffectMon
            && (battleCtx->battleStatusMask & SYSCTL_TRY_SYNCHRONIZE_STATUS)) {
        battleCtx->msgBattlerTemp = battleCtx->defender;
        battleCtx->sideEffectMon = battleCtx->attacker;
        result = TRUE;
    } else if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_SYNCHRONIZE
            && battleCtx->attacker == battleCtx->sideEffectMon
            && (battleCtx->battleStatusMask & SYSCTL_TRY_SYNCHRONIZE_STATUS)) {
        // This will try to synchronize a status applied from an ability or item held
        // by the defender, e.g. Static.
        battleCtx->msgBattlerTemp = battleCtx->attacker;
        battleCtx->sideEffectMon = battleCtx->defender;
        result = TRUE;
    }

    if (result == TRUE) {
        if (battleCtx->battleMons[battleCtx->msgBattlerTemp].status & MON_CONDITION_ANY_POISON) {
            nextSeq = BATTLE_SUBSEQ_POISON;
        } else if (battleCtx->battleMons[battleCtx->msgBattlerTemp].status & MON_CONDITION_BURN) {
            nextSeq = BATTLE_SUBSEQ_BURN;
        } else if (battleCtx->battleMons[battleCtx->msgBattlerTemp].status & MON_CONDITION_PARALYSIS) {
            nextSeq = BATTLE_SUBSEQ_PARALYZE;
        }

        if (nextSeq) {
            battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_ABILITY;

            LOAD_SUBSEQ(nextSeq);
            battleCtx->commandNext = controllerCommand;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return result;
        }
    }

    result = BattleSystem_UpdateWeatherForms(battleSys, battleCtx, &nextSeq);
    if (result == TRUE) {
        LOAD_SUBSEQ(nextSeq);
        battleCtx->commandNext = controllerCommand;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        return result;
    }

    if (battleCtx->defender != BATTLER_NONE
            && Battler_HeldItemEffect(battleCtx, battleCtx->defender) == HOLD_EFFECT_RECIPROCATE_INFAT
            && battleCtx->defender == battleCtx->sideEffectMon
            && (DEFENDER_SELF_TURN_FLAGS.statusFlags & SELF_TURN_FLAG_INFATUATED)) {
        battleCtx->msgBattlerTemp = battleCtx->defender;
        battleCtx->sideEffectMon = battleCtx->attacker;
        result = TRUE;
    } else if (Battler_HeldItemEffect(battleCtx, battleCtx->attacker) == HOLD_EFFECT_RECIPROCATE_INFAT
            && battleCtx->attacker == battleCtx->sideEffectMon
            && (ATTACKER_SELF_TURN_FLAGS.statusFlags & SELF_TURN_FLAG_INFATUATED)) {
        // This should only happen if the defender triggered Cute Charm.
        battleCtx->msgBattlerTemp = battleCtx->attacker;
        battleCtx->sideEffectMon = battleCtx->defender;
        result = TRUE;
    }

    if (result == TRUE) {
        nextSeq = BATTLE_SUBSEQ_INFATUATE;
        battleCtx->sideEffectType = SIDE_EFFECT_SOURCE_HELD_ITEM;

        LOAD_SUBSEQ(nextSeq);
        battleCtx->commandNext = controllerCommand;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        return result; // This line has to stay to match.
    }

    return FALSE;
}

BOOL BattleSystem_TriggerHeldItem (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;

    v0 = 0;
    v2 = Battler_HeldItemEffect(param1, param2);
    v3 = Battler_HeldItemPower(param1, param2, 0);

    if (param1->battleMons[param2].curHP) {
        switch (v2) {
        case 1:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = v3;
                v1 = (0 + 198);
                v0 = 1;
            }
            break;
        case 13:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP * v3, 100);
                v1 = (0 + 198);
                v0 = 1;
            }
            break;
        case 5:
            if (param1->battleMons[param2].status & 0x40) {
                v1 = (0 + 199);
                v0 = 1;
            }
            break;
        case 6:
            if (param1->battleMons[param2].status & 0x7) {
                v1 = (0 + 200);
                v0 = 1;
            }
            break;
        case 7:
            if (param1->battleMons[param2].status & 0xf88) {
                v1 = (0 + 201);
                v0 = 1;
            }
            break;
        case 8:
            if (param1->battleMons[param2].status & 0x10) {
                v1 = (0 + 202);
                v0 = 1;
            }
            break;
        case 9:
            if (param1->battleMons[param2].status & 0x20) {
                v1 = (0 + 203);
                v0 = 1;
            }
            break;
        case 10:
        {
            int v4;

            for (v4 = 0; v4 < 4; v4++) {
                if ((param1->battleMons[param2].moves[v4]) && (param1->battleMons[param2].ppCur[v4] == 0)) {
                    break;
                }
            }

            if (v4 != 4) {
                ov16_02252A2C(&param1->battleMons[param2], 31 + v4, v3);
                BattleMon_CopyToParty(param0, param1, param2);
                param1->msgMoveTemp = param1->battleMons[param2].moves[v4];
                v1 = (0 + 204);
                v0 = 1;
            }
        }
        break;
        case 11:
            if (param1->battleMons[param2].statusVolatile & 0x7) {
                v1 = (0 + 205);
                v0 = 1;
            }
            break;
        case 12:
            if ((param1->battleMons[param2].status & 0xff) || (param1->battleMons[param2].statusVolatile & 0x7)) {
                if (param1->battleMons[param2].status & 0x40) {
                    v1 = (0 + 199);
                }

                if (param1->battleMons[param2].status & 0x7) {
                    v1 = (0 + 200);
                }

                if (param1->battleMons[param2].status & 0xf88) {
                    v1 = (0 + 201);
                }

                if (param1->battleMons[param2].status & 0x10) {
                    v1 = (0 + 202);
                }

                if (param1->battleMons[param2].status & 0x20) {
                    v1 = (0 + 203);
                }

                if (param1->battleMons[param2].statusVolatile & 0x7) {
                    v1 = (0 + 205);
                }

                if ((param1->battleMons[param2].status & 0xff) && (param1->battleMons[param2].statusVolatile & 0x7)) {
                    v1 = (0 + 206);
                }

                v0 = 1;
            }
            break;
        case 14:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 0;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 0) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 15:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 1;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 1) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 16:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 2;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 2) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 17:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 3;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 3) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 18:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 4;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 4) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 36:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x1] < 12)) {
                param1->msgTemp = 0x1;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 37:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x2] < 12)) {
                param1->msgTemp = 0x2;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 38:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x3] < 12)) {
                param1->msgTemp = 0x3;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 39:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x4] < 12)) {
                param1->msgTemp = 0x4;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 40:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x5] < 12)) {
                param1->msgTemp = 0x5;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 41:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && ((param1->battleMons[param2].statusVolatile & 0x100000) == 0)) {
                v1 = (0 + 209);
                v0 = 1;
            }
            break;
        case 42:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) {
                {
                    int v5;

                    for (v5 = 0; v5 < 5; v5++) {
                        if (param1->battleMons[param2].statBoosts[0x1 + v5] < 12) {
                            break;
                        }
                    }

                    if (v5 != 5) {
                        do {
                            v5 = BattleSystem_RandNext(param0) % 5;
                        } while (param1->battleMons[param2].statBoosts[0x1 + v5] == 12);

                        param1->msgTemp = 0x1 + v5;

                        v1 = (0 + 210);
                        v0 = 1;
                    }
                }
            }
            break;
        case 49:
        {
            int v6;

            for (v6 = 0; v6 < 0x8; v6++) {
                if (param1->battleMons[param2].statBoosts[v6] < 6) {
                    param1->battleMons[param2].statBoosts[v6] = 6;
                    v0 = 1;
                }
            }

            if (v0 == 1) {
                v1 = (0 + 211);
            }
        }
        break;
        case 54:
            if (param1->battleMons[param2].statusVolatile & 0xf0000) {
                param1->msgTemp = 6;
                v1 = (0 + 212);
                v0 = 1;
            }
            break;
        case 44:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) {
                v1 = (0 + 265);
                v0 = 1;
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->msgBattlerTemp = param2;
            param1->msgItemTemp = ov16_02258874(param1, param2);
            BattleSystem_LoadScript(param1, 1, v1);
            param1->commandNext = param1->command;
            param1->command = 21;
        }
    }

    return v0;
}

BOOL BattleSystem_TriggerLeftovers (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;

    v0 = 0;
    v2 = Battler_HeldItemEffect(param1, param2);
    v3 = Battler_HeldItemPower(param1, param2, 0);

    if (param1->battleMons[param2].curHP) {
        switch (v2) {
        case 69:
            if (param1->battleMons[param2].curHP < (param1->battleMons[param2].maxHP)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, 16);
                v1 = (0 + 213);
                v0 = 1;
            }
            break;
        case 109:
            if ((BattleMon_Get(param1, param2, 27, NULL) == 3) || (BattleMon_Get(param1, param2, 28, NULL) == 3)) {
                if (param1->battleMons[param2].curHP < (param1->battleMons[param2].maxHP)) {
                    param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, 16);
                    v1 = (0 + 213);
                    v0 = 1;
                }
            } else if (Battler_Ability(param1, param2) != 98) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP * -1, 8);
                v1 = (0 + 215);
                v0 = 1;
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->msgBattlerTemp = param2;
            param1->msgItemTemp = ov16_02258874(param1, param2);
            BattleSystem_LoadScript(param1, 1, v1);
            param1->commandNext = param1->command;
            param1->command = 21;
        }
    }

    return v0;
}

BOOL BattleSystem_TriggerHeldItemOnStatus (BattleSystem * param0, BattleContext * param1, int param2, int * param3)
{
    BOOL v0;
    u16 v1;
    int v2;
    int v3;

    v0 = 0;
    v2 = Battler_HeldItemEffect(param1, param2);
    v3 = Battler_HeldItemPower(param1, param2, 0);

    if (param1->battleMons[param2].curHP) {
        switch (v2) {
        case 1:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = v3;
                param3[0] = (0 + 198);
                v0 = 1;
            }
            break;
        case 13:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP * v3, 100);
                param3[0] = (0 + 198);
                v0 = 1;
            }
            break;
        case 5:
            if (param1->battleMons[param2].status & 0x40) {
                param3[0] = (0 + 199);
                v0 = 1;
            }
            break;
        case 6:
            if (param1->battleMons[param2].status & 0x7) {
                param3[0] = (0 + 200);
                v0 = 1;
            }
            break;
        case 7:
            if (param1->battleMons[param2].status & 0xf88) {
                param3[0] = (0 + 201);
                v0 = 1;
            }
            break;
        case 8:
            if (param1->battleMons[param2].status & 0x10) {
                param3[0] = (0 + 202);
                v0 = 1;
            }
            break;
        case 9:
            if (param1->battleMons[param2].status & 0x20) {
                param3[0] = (0 + 203);
                v0 = 1;
            }
            break;
        case 10:
        {
            int v4;

            for (v4 = 0; v4 < 4; v4++) {
                if ((param1->battleMons[param2].moves[v4]) && (param1->battleMons[param2].ppCur[v4] == 0)) {
                    break;
                }
            }

            if (v4 != 4) {
                ov16_02252A2C(&param1->battleMons[param2], 31 + v4, v3);
                BattleMon_CopyToParty(param0, param1, param2);
                param1->msgMoveTemp = param1->battleMons[param2].moves[v4];
                param3[0] = (0 + 204);
                v0 = 1;
            }
        }
        break;
        case 11:
            if (param1->battleMons[param2].statusVolatile & 0x7) {
                param3[0] = (0 + 205);
                v0 = 1;
            }
            break;
        case 12:
            if ((param1->battleMons[param2].status & 0xff) || (param1->battleMons[param2].statusVolatile & 0x7)) {
                if (param1->battleMons[param2].status & 0x40) {
                    param3[0] = (0 + 199);
                }

                if (param1->battleMons[param2].status & 0x7) {
                    param3[0] = (0 + 200);
                }

                if (param1->battleMons[param2].status & 0xf88) {
                    param3[0] = (0 + 201);
                }

                if (param1->battleMons[param2].status & 0x10) {
                    param3[0] = (0 + 202);
                }

                if (param1->battleMons[param2].status & 0x20) {
                    param3[0] = (0 + 203);
                }

                if (param1->battleMons[param2].statusVolatile & 0x7) {
                    param3[0] = (0 + 205);
                }

                if ((param1->battleMons[param2].status & 0xff) && (param1->battleMons[param2].statusVolatile & 0x7)) {
                    param3[0] = (0 + 206);
                }

                v0 = 1;
            }
            break;
        case 49:
        {
            int v5;

            for (v5 = 0; v5 < 0x8; v5++) {
                if (param1->battleMons[param2].statBoosts[v5] < 6) {
                    param1->battleMons[param2].statBoosts[v5] = 6;
                    v0 = 1;
                }
            }

            if (v0 == 1) {
                param3[0] = (0 + 211);
            }
        }
        break;
        case 54:
            if (param1->battleMons[param2].statusVolatile & 0xf0000) {
                param1->msgTemp = 6;
                param3[0] = (0 + 212);
                v0 = 1;
            }
            break;
        case 44:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) {
                param3[0] = (0 + 265);
                v0 = 1;
            }
            break;
        case 14:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 0;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 0) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 15:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 1;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 1) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 16:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 2;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 2) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 17:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 3;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 3) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 18:
            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / 2)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP, v3);
                param1->msgTemp = 4;

                if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param2].pid, 4) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 36:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x1] < 12)) {
                param1->msgTemp = 0x1;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 37:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x2] < 12)) {
                param1->msgTemp = 0x2;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 38:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x3] < 12)) {
                param1->msgTemp = 0x3;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 39:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x4] < 12)) {
                param1->msgTemp = 0x4;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 40:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && (param1->battleMons[param2].statBoosts[0x5] < 12)) {
                param1->msgTemp = 0x5;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 41:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) && ((param1->battleMons[param2].statusVolatile & 0x100000) == 0)) {
                param3[0] = (0 + 209);
                v0 = 1;
            }
            break;
        case 42:
            if (Battler_Ability(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->battleMons[param2].curHP <= (param1->battleMons[param2].maxHP / v3)) {
                {
                    int v6;

                    for (v6 = 0; v6 < 5; v6++) {
                        if (param1->battleMons[param2].statBoosts[0x1 + v6] < 12) {
                            break;
                        }
                    }

                    if (v6 != 5) {
                        do {
                            v6 = BattleSystem_RandNext(param0) % 5;
                        } while (param1->battleMons[param2].statBoosts[0x1 + v6] == 12);

                        param1->msgTemp = 0x1 + v6;
                        param3[0] = (0 + 210);
                        v0 = 1;
                    }
                }
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->msgItemTemp = ov16_02258874(param1, param2);
        }
    }

    return v0;
}

BOOL BattleSystem_TriggerDetrimentalHeldItem (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    int v1;
    u16 v2;
    int v3;
    int v4;

    v0 = 0;
    v3 = Battler_HeldItemEffect(param1, param2);
    v4 = Battler_HeldItemPower(param1, param2, 0);

    if (param1->battleMons[param2].curHP) {
        switch (v3) {
        case 100:
            param1->sideEffectMon = param2;
            param1->sideEffectType = 5;
            v1 = (0 + 47);
            v0 = 1;
            break;
        case 101:
            param1->sideEffectMon = param2;
            param1->sideEffectType = 5;
            v1 = (0 + 25);
            v0 = 1;
            break;
        case 116:
            if (Battler_Ability(param1, param2) != 98) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param2].maxHP * -1, v4);
                v1 = (0 + 215);
                v0 = 1;
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->msgBattlerTemp = param2;
            param1->msgItemTemp = ov16_02258874(param1, param2);
            BattleSystem_LoadScript(param1, 1, v1);
            param1->commandNext = param1->command;
            param1->command = 21;
        }
    }

    return v0;
}

u16 ov16_02258874 (BattleContext * param0, int param1)
{
    if ((Battler_Ability(param0, param1) == 103)) {
        return 0;
    }

    if (param0->battleMons[param1].moveEffectsData.embargoTurns) {
        return 0;
    }

    return param0->battleMons[param1].heldItem;
}

BOOL Battler_MovedThisTurn (BattleContext * param0, int param1)
{
    return param0->battlerActions[param1][0] == 39;
}

BOOL BattleSystem_TriggerHeldItemOnHit (BattleSystem * battleSys, BattleContext * battleCtx, int * nextSeq)
{
    BOOL result = FALSE;

    if (battleCtx->defender == BATTLER_NONE) {
        return result;
    }

    if (Battler_BehindSubstitute(battleCtx, battleCtx->defender) == TRUE) {
        return result;
    }

    int itemEffect = Battler_HeldItemEffect(battleCtx, battleCtx->defender);
    int itemPower = Battler_HeldItemPower(battleCtx, battleCtx->defender, 0);
    int side = Battler_Side(battleSys, battleCtx->attacker);

    switch (itemEffect) {
    case HOLD_EFFECT_DMG_USER_CONTACT_XFR:
        if (ATTACKING_MON.curHP
                && ATTACKING_MON.heldItem == ITEM_NONE
                && (battleCtx->sideConditions[side].knockedOffItemsMask & FlagIndex(battleCtx->selectedPartySlot[battleCtx->attacker])) == FALSE
                && battleCtx->moveCur != MOVE_KNOCK_OFF
                && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_MAKES_CONTACT)) {
            *nextSeq = BATTLE_SUBSEQ_TRANSFER_STICKY_BARB;
            result = TRUE;
        }
        break;

    case HOLD_EFFECT_RECOIL_PHYSICAL:
        if (ATTACKING_MON.curHP
                && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken) {
            battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKING_MON.maxHP * -1, itemPower);
            *nextSeq = BATTLE_SUBSEQ_HELD_ITEM_RECOIL_WHEN_HIT;
            result = TRUE;
        }
        break;

    case HOLD_EFFECT_RECOIL_SPECIAL:
        if (ATTACKING_MON.curHP
                && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD
                && DEFENDER_SELF_TURN_FLAGS.specialDamageTaken) {
            battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKING_MON.maxHP * -1, itemPower);
            *nextSeq = BATTLE_SUBSEQ_HELD_ITEM_RECOIL_WHEN_HIT;
            result = TRUE;
        }
        break;

    case HOLD_EFFECT_HP_RESTORE_SE:
        if (DEFENDING_MON.curHP && (battleCtx->moveStatusFlags & MOVE_STATUS_SUPER_EFFECTIVE)) {
            battleCtx->hpCalcTemp = BattleSystem_Divide(DEFENDING_MON.maxHP, itemPower);
            *nextSeq = BATTLE_SUBSEQ_HELD_ITEM_RESTORE_HP;
            battleCtx->msgBattlerTemp = battleCtx->defender;
            battleCtx->msgItemTemp = battleCtx->battleMons[battleCtx->defender].heldItem;
            result = TRUE;
        }
        break;

    default:
        break;
    }

    return result;
}

s32 Battler_HeldItemEffect (BattleContext * param0, int param1)
{
    u16 v0;

    v0 = ov16_02258874(param0, param1);
    return ov16_0225B0FC(param0, v0, 1);
}

s32 Battler_HeldItemPower (BattleContext * param0, int param1, int param2)
{
    u16 v0;

    switch (param2) {
    case 0:
        v0 = ov16_02258874(param0, param1);
        break;
    case 2:
        if (param0->battleMons[param1].moveEffectsData.embargoTurns) {
            return 0;
        }
    case 1:
        v0 = param0->battleMons[param1].heldItem;
        break;
    }

    return ov16_0225B0FC(param0, v0, 2);
}

s32 ov16_02258B18 (BattleContext * param0, int param1)
{
    u16 v0;

    v0 = ov16_02258874(param0, param1);
    return ov16_0225B0FC(param0, v0, 11);
}

s32 ov16_02258B2C (BattleContext * param0, int param1)
{
    u16 v0;

    v0 = ov16_02258874(param0, param1);
    return ov16_0225B0FC(param0, v0, 12);
}

s32 ov16_02258B40 (BattleContext * param0, int param1)
{
    u16 v0;
    int v1;

    v0 = param0->battleMons[param1].heldItem;
    v1 = ov16_0225B0FC(param0, v0, 8);

    return v1;
}

s32 ov16_02258B58 (BattleContext * param0, int param1)
{
    if (param0->battleMons[param1].moveEffectsData.embargoTurns) {
        return 0;
    }

    return ov16_0225B0FC(param0, param0->battleMons[param1].heldItem, 9);
}

s32 ov16_02258B80 (BattleContext * param0, int param1)
{
    if (param0->battleMons[param1].moveEffectsData.embargoTurns) {
        return 0;
    }

    return ov16_0225B0FC(param0, param0->battleMons[param1].heldItem, 10);
}

int BattleSystem_CanSwitch (BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int v0;

    v0 = 0;

    if (Battler_HeldItemEffect(battleCtx, battler) == 123) {
        return 0;
    }

    if ((battleCtx->battleMons[battler].statusVolatile & (0xe000 | 0x4000000)) || (battleCtx->battleMons[battler].moveEffectsMask & 0x400)) {
        v0 = 1;
    }

    if (((Battler_Ability(battleCtx, battler) != 23) && (BattleSystem_CountAbility(battleSys, battleCtx, 3, battler, 23))) || (((BattleMon_Get(battleCtx, battler, 27, NULL) == 8) || (BattleMon_Get(battleCtx, battler, 28, NULL) == 8)) && (BattleSystem_CountAbility(battleSys, battleCtx, 3, battler, 42)))) {
        v0 = 1;
    }

    if ((((Battler_Ability(battleCtx, battler) != 26) && (battleCtx->battleMons[battler].moveEffectsData.magnetRiseTurns == 0) && (BattleMon_Get(battleCtx, battler, 27, NULL) != 2) && (BattleMon_Get(battleCtx, battler, 28, NULL) != 2)) || (Battler_HeldItemEffect(battleCtx, battler) == 106) || (battleCtx->fieldConditionsMask & 0x7000)) && (BattleSystem_CountAbility(battleSys, battleCtx, 3, battler, 71))) {
        v0 = 1;
    }

    return v0;
}

BOOL ov16_02258CB4 (BattleSystem * param0, BattleContext * param1, int param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;

    v0 = 0;
    v1 = 0;
    v2 = ov16_02258B40(param1, param2);
    v3 = Battler_HeldItemPower(param1, param2, 1);

    if (Battler_BehindSubstitute(param1, param1->defender) == 1) {
        return v0;
    }

    switch (v2) {
    case 7:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = v3;
            v1 = (0 + 198);
        }

        v0 = 1;
        break;
    case 10:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP * v3, 100);
            v1 = (0 + 198);
        }

        v0 = 1;
        break;
    case 1:
        if (param1->battleMons[param1->attacker].status & 0x40) {
            v1 = (0 + 199);
        }

        v0 = 1;
        break;
    case 2:
        if (param1->battleMons[param1->attacker].status & 0x7) {
            v1 = (0 + 200);
        }

        v0 = 1;
        break;
    case 3:
        if (param1->battleMons[param1->attacker].status & 0xf88) {
            v1 = (0 + 201);
        }

        v0 = 1;
        break;
    case 4:
        if (param1->battleMons[param1->attacker].status & 0x10) {
            v1 = (0 + 202);
        }

        v0 = 1;
        break;
    case 5:
        if (param1->battleMons[param1->attacker].status & 0x20) {
            v1 = (0 + 203);
        }

        v0 = 1;
        break;
    case 6:
    {
        int v4;
        int v5;
        int v6;
        int v7;

        v6 = 0;

        for (v5 = 0; v5 < 4; v5++) {
            if (param1->battleMons[param1->attacker].moves[v5]) {
                v4 = MoveTable_CalcMaxPP(param1->battleMons[param1->attacker].moves[v5], param1->battleMons[param1->attacker].ppUps[v5]) - param1->battleMons[param1->attacker].ppCur[v5];

                if (v4 > v6) {
                    v6 = v4;
                    v7 = v5;
                }
            }
        }

        ov16_02252A2C(&param1->battleMons[param1->attacker], 31 + v7, v3);
        BattleMon_CopyToParty(param0, param1, param1->attacker);
        param1->msgMoveTemp = param1->battleMons[param1->attacker].moves[v7];
        v1 = (0 + 204);
    }
        v0 = 1;
        break;
    case 8:
        if (param1->battleMons[param1->attacker].statusVolatile & 0x7) {
            v1 = (0 + 205);
        }

        v0 = 1;
        break;
    case 9:
        if ((param1->battleMons[param1->attacker].status & 0xff) || (param1->battleMons[param1->attacker].statusVolatile & 0x7)) {
            if (param1->battleMons[param1->attacker].status & 0x40) {
                v1 = (0 + 199);
            }

            if (param1->battleMons[param1->attacker].status & 0x7) {
                v1 = (0 + 200);
            }

            if (param1->battleMons[param1->attacker].status & 0xf88) {
                v1 = (0 + 201);
            }

            if (param1->battleMons[param1->attacker].status & 0x10) {
                v1 = (0 + 202);
            }

            if (param1->battleMons[param1->attacker].status & 0x20) {
                v1 = (0 + 203);
            }

            if (param1->battleMons[param1->attacker].statusVolatile & 0x7) {
                v1 = (0 + 205);
            }

            if ((param1->battleMons[param1->attacker].status & 0xff) && (param1->battleMons[param1->attacker].statusVolatile & 0x7)) {
                v1 = (0 + 206);
            }
        }

        v0 = 1;
        break;
    case 11:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, v3);
            param1->msgTemp = 0;

            if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->attacker].pid, 0) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 12:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, v3);
            param1->msgTemp = 1;

            if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->attacker].pid, 1) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 13:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, v3);
            param1->msgTemp = 2;

            if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->attacker].pid, 2) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 14:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, v3);
            param1->msgTemp = 3;

            if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->attacker].pid, 3) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 15:
        if (param1->battleMons[param1->attacker].curHP != param1->battleMons[param1->attacker].maxHP) {
            param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, v3);
            param1->msgTemp = 4;

            if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->attacker].pid, 4) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 16:
        if (param1->battleMons[param1->attacker].statBoosts[0x1] < 12) {
            param1->msgTemp = 0x1;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 17:
        if (param1->battleMons[param1->attacker].statBoosts[0x2] < 12) {
            param1->msgTemp = 0x2;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 18:
        if (param1->battleMons[param1->attacker].statBoosts[0x3] < 12) {
            param1->msgTemp = 0x3;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 19:
        if (param1->battleMons[param1->attacker].statBoosts[0x4] < 12) {
            param1->msgTemp = 0x4;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 20:
        if (param1->battleMons[param1->attacker].statBoosts[0x5] < 12) {
            param1->msgTemp = 0x5;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 22:
    {
        int v8;

        for (v8 = 0; v8 < 5; v8++) {
            if (param1->battleMons[param1->attacker].statBoosts[0x1 + v8] < 12) {
                break;
            }
        }

        if (v8 != 5) {
            do {
                v8 = BattleSystem_RandNext(param0) % 5;
            } while (param1->battleMons[param1->attacker].statBoosts[0x1 + v8] == 12);

            param1->msgTemp = 0x1 + v8;
            v1 = (0 + 210);
        }
    }
        v0 = 1;
        break;
    case 21:
        if ((param1->battleMons[param1->attacker].statusVolatile & 0x100000) == 0) {
            v1 = (0 + 209);
        }

        v0 = 1;
        break;
    case 23:
        v1 = (0 + 265);
        v0 = 1;
        break;
    default:

        if (Item_IsBerry(param1->battleMons[param2].heldItem) == 1) {
            v0 = 1;
        }
        break;
    }

    if (v0 == 1) {
        if (((Battler_Ability(param1, param1->attacker) == 103)) || (param1->battleMons[param1->attacker].moveEffectsMask & 0x4000000)) {
            param1->scriptTemp = 0;
        } else {
            param1->scriptTemp = v1;
        }

        param1->msgItemTemp = param1->battleMons[param2].heldItem;
        param1->selfTurnFlags[param1->attacker].statusFlags |= 0x2;
    }

    return v0;
}

BOOL ov16_02259204 (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    int v1;
    int v2;

    v1 = ov16_02258B58(param1, param2);
    v2 = Battler_HeldItemPower(param1, param2, 2);

    param1->movePower = ov16_02258B80(param1, param2);
    param1->flingScript = 0;
    param1->sideEffectType = 0;

    if (param1->movePower == 0) {
        return 0;
    }

    switch (v1) {
    case 7:
        param1->flingTemp = v2;
        param1->flingScript = (0 + 198);
        break;
    case 10:
        param1->flingTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP * v2, 100);
        param1->flingScript = (0 + 198);
        break;
    case 1:
        if (param1->battleMons[param1->defender].status & 0x40) {
            param1->flingScript = (0 + 199);
        }
        break;
    case 2:
        if (param1->battleMons[param1->defender].status & 0x7) {
            param1->flingScript = (0 + 200);
        }
        break;
    case 3:
        if (param1->battleMons[param1->defender].status & 0xf88) {
            param1->flingScript = (0 + 201);
        }
        break;
    case 4:
        if (param1->battleMons[param1->defender].status & 0x10) {
            param1->flingScript = (0 + 202);
        }
        break;
    case 5:
        if (param1->battleMons[param1->defender].status & 0x20) {
            param1->flingScript = (0 + 203);
        }
        break;
    case 6:
    {
        int v3;
        int v4;
        int v5;
        int v6;

        v5 = 0;

        for (v4 = 0; v4 < 4; v4++) {
            if (param1->battleMons[param1->defender].moves[v4]) {
                v3 = MoveTable_CalcMaxPP(param1->battleMons[param1->defender].moves[v4], param1->battleMons[param1->defender].ppUps[v4]) - param1->battleMons[param1->defender].ppCur[v4];

                if (v3 > v5) {
                    v5 = v3;
                    v6 = v4;
                }
            }
        }

        if (v5) {
            ov16_02252A2C(&param1->battleMons[param1->defender], 31 + v6, v2);
            BattleMon_CopyToParty(param0, param1, param1->defender);

            param1->msgMoveTemp = param1->battleMons[param1->defender].moves[v6];
            param1->flingScript = (0 + 204);
        }
    }
    break;
    case 8:
        if (param1->battleMons[param1->defender].statusVolatile & 0x7) {
            param1->flingScript = (0 + 205);
        }
        break;
    case 9:
        if ((param1->battleMons[param1->defender].status & 0xff) || (param1->battleMons[param1->defender].statusVolatile & 0x7)) {
            if (param1->battleMons[param1->defender].status & 0x40) {
                param1->flingScript = (0 + 199);
            }

            if (param1->battleMons[param1->defender].status & 0x7) {
                param1->flingScript = (0 + 200);
            }

            if (param1->battleMons[param1->defender].status & 0xf88) {
                param1->flingScript = (0 + 201);
            }

            if (param1->battleMons[param1->defender].status & 0x10) {
                param1->flingScript = (0 + 202);
            }

            if (param1->battleMons[param1->defender].status & 0x20) {
                param1->flingScript = (0 + 203);
            }

            if (param1->battleMons[param1->defender].statusVolatile & 0x7) {
                param1->flingScript = (0 + 205);
            }

            if ((param1->battleMons[param1->defender].status & 0xff) && (param1->battleMons[param1->defender].statusVolatile & 0x7)) {
                param1->flingScript = (0 + 206);
            }
        }
        break;
    case 11:
        param1->flingTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP, v2);
        param1->msgTemp = 0;

        if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->defender].pid, 0) == -1) {
            param1->flingScript = (0 + 207);
        } else {
            param1->flingScript = (0 + 198);
        }
        break;
    case 12:
        param1->flingTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP, v2);
        param1->msgTemp = 1;

        if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->defender].pid, 1) == -1) {
            param1->flingScript = (0 + 207);
        } else {
            param1->flingScript = (0 + 198);
        }
        break;
    case 13:
        param1->flingTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP, v2);
        param1->msgTemp = 2;

        if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->defender].pid, 2) == -1) {
            param1->flingScript = (0 + 207);
        } else {
            param1->flingScript = (0 + 198);
        }
        break;
    case 14:
        param1->flingTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP, v2);
        param1->msgTemp = 3;

        if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->defender].pid, 3) == -1) {
            param1->flingScript = (0 + 207);
        } else {
            param1->flingScript = (0 + 198);
        }
        break;
    case 15:
        param1->flingTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP, v2);
        param1->msgTemp = 4;

        if (Pokemon_GetFlavorAffinityOf(param1->battleMons[param1->defender].pid, 4) == -1) {
            param1->flingScript = (0 + 207);
        } else {
            param1->flingScript = (0 + 198);
        }
        break;
    case 24:
    {
        int v7;

        for (v7 = 0; v7 < 0x8; v7++) {
            if (param1->battleMons[param1->defender].statBoosts[v7] < 6) {
                param1->battleMons[param1->defender].statBoosts[v7] = 6;
                param1->flingScript = (0 + 211);
            }
        }
    }
    break;
    case 25:
        if (param1->battleMons[param1->defender].statusVolatile & 0xf0000) {
            param1->msgTemp = 6;
            param1->flingScript = (0 + 212);
        }
        break;
    case 26:
        param1->sideEffectMon = param2;
        param1->sideEffectType = 2;
        param1->flingScript = (0 + 14);
        break;
    case 27:
        param1->sideEffectMon = param2;
        param1->sideEffectType = 2;
        param1->flingScript = (0 + 31);
        break;
    case 28:
        param1->sideEffectMon = param2;
        param1->sideEffectType = 2;
        param1->flingScript = (0 + 22);
        break;
    case 29:
        param1->sideEffectMon = param2;
        param1->sideEffectType = 2;
        param1->flingScript = (0 + 47);
        break;
    case 30:
        param1->sideEffectMon = param2;
        param1->sideEffectType = 2;
        param1->flingScript = (0 + 25);
        break;
    case 16:
        if (param1->battleMons[param1->defender].statBoosts[0x1] < 12) {
            param1->msgTemp = 0x1;
            param1->flingScript = (0 + 208);
        }
        break;
    case 17:
        if (param1->battleMons[param1->defender].statBoosts[0x2] < 12) {
            param1->msgTemp = 0x2;
            param1->flingScript = (0 + 208);
        }
        break;
    case 18:
        if (param1->battleMons[param1->defender].statBoosts[0x3] < 12) {
            param1->msgTemp = 0x3;
            param1->flingScript = (0 + 208);
        }
        break;
    case 19:
        if (param1->battleMons[param1->defender].statBoosts[0x4] < 12) {
            param1->msgTemp = 0x4;
            param1->flingScript = (0 + 208);
        }
        break;
    case 20:
        if (param1->battleMons[param1->defender].statBoosts[0x5] < 12) {
            param1->msgTemp = 0x5;
            param1->flingScript = (0 + 208);
        }
        break;
    case 22:
    {
        int v8;

        for (v8 = 0; v8 < 5; v8++) {
            if (param1->battleMons[param1->defender].statBoosts[0x1 + v8] < 12) {
                break;
            }
        }

        if (v8 != 5) {
            do {
                v8 = BattleSystem_RandNext(param0) % 5;
            } while (param1->battleMons[param1->defender].statBoosts[0x1 + v8] == 12);

            param1->msgTemp = 0x1 + v8;
            param1->flingScript = (0 + 210);
        }
    }
    break;
    case 21:
        if ((param1->battleMons[param1->defender].statusVolatile & 0x100000) == 0) {
            param1->flingScript = (0 + 209);
        }
        break;
    case 23:
        param1->flingScript = (0 + 265);
        break;
    default:
        break;
    }

    if (param1->battleMons[param1->defender].moveEffectsMask & 0x4000000) {
        param1->flingScript = 0;
    } else {
        param1->msgItemTemp = param1->battleMons[param2].heldItem;

        if ((param1->sideEffectType == 0) && (param1->flingScript)) {
            param1->selfTurnFlags[param1->attacker].statusFlags |= 0x2;
        }

        param1->msgBattlerTemp = param1->defender;
    }

    return 1;
}

void BattleSystem_UpdateMetronomeCount (BattleSystem * param0, BattleContext * param1)
{
    if (Battler_HeldItemEffect(param1, param1->attacker) == 105) {
        if (((param1->battleMons[param1->attacker].statusVolatile & 0xc00) == 0) && ((param1->battleMons[param1->attacker].statusVolatile & 0x70) == 0) && ((param1->battleStatusMask & 0x200) == 0) && ((param1->battleMons[param1->attacker].statusVolatile & 0x1000) == 0)) {
            if (param1->metronomeMove[param1->attacker] == param1->moveTemp) {
                if (param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns < 10) {
                    param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns++;
                }
            } else {
                param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns = 0;
                param1->metronomeMove[param1->attacker] = param1->moveTemp;
            }
        }
    } else {
        param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns = 0;
    }
}

void ov16_0225991C (BattleSystem * param0, BattleContext * param1)
{
    if (Battler_HeldItemEffect(param1, param1->attacker) == 105) {
        if ((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) && (param1->metronomeMove[param1->attacker] == param1->moveTemp) && (param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns) && (param1->selfTurnFlags[param1->attacker].repeatedMoveCount == 0) && ((param1->battleMons[param1->attacker].statusVolatile & 0xc00) == 0) && ((param1->battleMons[param1->attacker].statusVolatile & 0x70) == 0) && ((param1->battleStatusMask & 0x200) == 0) && ((param1->battleMons[param1->attacker].statusVolatile & 0x1000) == 0)) {
            param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns--;
        }
    } else {
        param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns = 0;
    }
}

int ov16_022599D0 (BattleContext * param0, int param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;

    if ((param3 == 1) && ((param2 == 2) || (param2 == 3))) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    v0 = 0;

    if (v2 == 1) {
        v0 = 0;
    }

    v1 = sub_0208C104(param0->battleMons[param1].curHP, param0->battleMons[param1].maxHP, (8 * 6));

    if ((param0->battleMons[param1].status & 0xff) || ((v1 != 4) && (v1 != 3))) {
        if (v2 == 1) {
            v0 = 11;
        } else {
            v0 = 11;
        }
    }

    return v0;
}

BOOL BattleSystem_CanPickCommand (BattleContext *battleSys, int battler)
{
    BOOL v0 = 1;

    if ((battleSys->battleMons[battler].statusVolatile & 0x400000)
            || (battleSys->battleMons[battler].statusVolatile & 0xc00)
            || (battleSys->battleMons[battler].statusVolatile & 0x70)
            || (battleSys->battleMons[battler].statusVolatile & 0x1000)) {
        v0 = 0;
    }

    return v0;
}

void ov16_02259A5C (BattleSystem * param0, BattleContext * param1, Pokemon * param2)
{
    TrainerInfo * v0;
    int v1;
    int v2;
    int v3;

    v0 = BattleSystem_TrainerInfo(param0, 0);
    v1 = ov16_0223E24C(param0);
    v2 = ov16_0223E22C(param0);

    if (BattleSystem_BattleType(param0) & 0x200) {
        v3 = Pokemon_GetValue(param2, MON_DATA_POKEBALL, NULL);
    } else {
        v3 = param1->msgItemTemp;
    }

    sub_02077E64(param2, v0, v3, v1, v2, 5);
}

u8 BattleContext_IOBufferVal (BattleContext *battleCtx, int battler)
{
    return battleCtx->ioBuffer[battler][0];
}

BOOL Battler_BehindSubstitute (BattleContext * param0, int param1)
{
    BOOL v0 = 0;

    if (param0->selfTurnFlags[param1].statusFlags & 0x8) {
        v0 = 1;
    }

    return v0;
}

BOOL BattleSystem_TrainerIsOT (BattleSystem * param0, BattleContext * param1)
{
    TrainerInfo * v0;
    u32 v1;
    u32 v2;
    const u16 * v3;

    v0 = BattleSystem_TrainerInfo(param0, 0);
    v1 = TrainerInfo_ID(v0);
    v2 = TrainerInfo_Gender(v0);
    v3 = TrainerInfo_Name(v0);

    if ((v1 == param1->battleMons[param1->attacker].OTId) && (v2 == param1->battleMons[param1->attacker].OTGender) && (GF_strncmp(v3, &param1->battleMons[param1->attacker].OTName[0], 7) == 0)) {
        return 1;
    }

    return 0;
}

BOOL ov16_02259B38 (BattleSystem * param0, Pokemon * param1)
{
    TrainerInfo * v0;
    u32 v1;
    u32 v2;
    const u16 * v3;
    u16 v4[7 + 1];

    v0 = BattleSystem_TrainerInfo(param0, 0);
    v1 = TrainerInfo_ID(v0);
    v2 = TrainerInfo_Gender(v0);
    v3 = TrainerInfo_Name(v0);

    Pokemon_GetValue(param1, MON_DATA_144, &v4[0]);

    if ((v1 == Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL)) && (v2 == Pokemon_GetValue(param1, MON_DATA_OT_GENDER, NULL)) && (GF_strncmp(v3, &v4[0], 7) == 0)) {
        return 1;
    }

    return 0;
}

BOOL BattleSystem_UpdateWeatherForms (BattleSystem * param0, BattleContext * param1, int * param2)
{
    int v0;
    int v1;
    BOOL v2 = 0;

    for (v0 = 0; v0 < BattleSystem_MaxBattlers(param0); v0++) {
        param1->msgBattlerTemp = param1->monSpeedOrder[v0];

        if ((param1->battleMons[param1->msgBattlerTemp].species == 351) && (param1->battleMons[param1->msgBattlerTemp].curHP) && (Battler_Ability(param1, param1->msgBattlerTemp) == 59)) {
            if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
                if (((param1->fieldConditionsMask & (0x3 | 0x30 | 0xc0)) == 0) && (param1->battleMons[param1->msgBattlerTemp].type1 != 0) && (param1->battleMons[param1->msgBattlerTemp].type2 != 0)) {
                    param1->battleMons[param1->msgBattlerTemp].type1 = 0;
                    param1->battleMons[param1->msgBattlerTemp].type2 = 0;
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->fieldConditionsMask & 0x30) && (param1->battleMons[param1->msgBattlerTemp].type1 != 10) && (param1->battleMons[param1->msgBattlerTemp].type2 != 10)) {
                    param1->battleMons[param1->msgBattlerTemp].type1 = 10;
                    param1->battleMons[param1->msgBattlerTemp].type2 = 10;
                    param1->battleMons[param1->msgBattlerTemp].formNum = 1;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->fieldConditionsMask & 0x3) && (param1->battleMons[param1->msgBattlerTemp].type1 != 11) && (param1->battleMons[param1->msgBattlerTemp].type2 != 11)) {
                    param1->battleMons[param1->msgBattlerTemp].type1 = 11;
                    param1->battleMons[param1->msgBattlerTemp].type2 = 11;
                    param1->battleMons[param1->msgBattlerTemp].formNum = 2;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->fieldConditionsMask & 0xc0) && (param1->battleMons[param1->msgBattlerTemp].type1 != 15) && (param1->battleMons[param1->msgBattlerTemp].type2 != 15)) {
                    param1->battleMons[param1->msgBattlerTemp].type1 = 15;
                    param1->battleMons[param1->msgBattlerTemp].type2 = 15;
                    param1->battleMons[param1->msgBattlerTemp].formNum = 3;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            } else {
                if ((param1->battleMons[param1->msgBattlerTemp].type1 != 0) && (param1->battleMons[param1->msgBattlerTemp].type2 != 0)) {
                    param1->battleMons[param1->msgBattlerTemp].type1 = 0;
                    param1->battleMons[param1->msgBattlerTemp].type2 = 0;
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            }
        }

        if ((param1->battleMons[param1->msgBattlerTemp].species == 421) && (param1->battleMons[param1->msgBattlerTemp].curHP)) {
            if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
                if (((param1->fieldConditionsMask & (0x3 | 0x30 | 0xc0)) == 0) && (param1->battleMons[param1->msgBattlerTemp].formNum == 1)) {
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->fieldConditionsMask & 0x30) && (param1->battleMons[param1->msgBattlerTemp].formNum == 0)) {
                    param1->battleMons[param1->msgBattlerTemp].formNum = 1;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->fieldConditionsMask & 0x3) && (param1->battleMons[param1->msgBattlerTemp].formNum == 1)) {
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->fieldConditionsMask & 0xc0) && (param1->battleMons[param1->msgBattlerTemp].formNum == 1)) {
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            } else {
                if (param1->battleMons[param1->msgBattlerTemp].formNum == 1) {
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            }
        }

        if ((param1->battleMons[param1->msgBattlerTemp].species == 493) && (param1->battleMons[param1->msgBattlerTemp].curHP) && (Battler_Ability(param1, param1->msgBattlerTemp) == 121)) {
            v1 = Pokemon_GetArceusTypeOf(Item_LoadParam(param1->battleMons[param1->msgBattlerTemp].heldItem, 1, 5));

            if (param1->battleMons[param1->msgBattlerTemp].formNum != v1) {
                param1->battleMons[param1->msgBattlerTemp].formNum = v1;
                *param2 = (0 + 262);
                v2 = 1;
                break;
            }
        }

        if ((param1->battleMons[param1->msgBattlerTemp].species == 487) && (param1->battleMons[param1->msgBattlerTemp].curHP) && (param1->battleMons[param1->msgBattlerTemp].formNum == 1)) {
            if ((param1->battleMons[param1->msgBattlerTemp].statusVolatile & 0x200000) || (((BattleSystem_BattleStatus(param0) & 0x80) == 0) && (param1->battleMons[param1->msgBattlerTemp].heldItem != 112))) {
                if (param1->battleMons[param1->msgBattlerTemp].statusVolatile & 0x200000) {
                    Pokemon * v3;
                    int v4;
                    int v5;

                    v3 = Pokemon_New(5);

                    if (BattleSystem_BattleType(param0) & 0x2) {
                        v4 = param1->battlerActions[param1->msgBattlerTemp][1];
                    } else {
                        v4 = param1->msgBattlerTemp ^ 1;
                    }

                    Pokemon_Copy(ov16_0223DFAC(param0, v4, param1->selectedPartySlot[v4]), v3);
                    v5 = 0;

                    Pokemon_SetValue(v3, 6, &v5);
                    v5 = 0;

                    Pokemon_SetValue(v3, 112, &v5);
                    Pokemon_SetGiratinaForm(v3);

                    param1->battleMons[param1->msgBattlerTemp].attack = Pokemon_GetValue(v3, MON_DATA_ATK, 0);
                    param1->battleMons[param1->msgBattlerTemp].defense = Pokemon_GetValue(v3, MON_DATA_DEF, 0);
                    param1->battleMons[param1->msgBattlerTemp].speed = Pokemon_GetValue(v3, MON_DATA_SPEED, 0);
                    param1->battleMons[param1->msgBattlerTemp].spAttack = Pokemon_GetValue(v3, MON_DATA_SP_ATK, 0);
                    param1->battleMons[param1->msgBattlerTemp].spDefense = Pokemon_GetValue(v3, MON_DATA_SP_DEF, 0);
                    param1->battleMons[param1->msgBattlerTemp].ability = Pokemon_GetValue(v3, MON_DATA_ABILITY, 0);
                    param1->battleMons[param1->msgBattlerTemp].formNum = 0;
                    param1->battleStatusMask2 |= 0x4000000;

                    ov16_022662FC(param0, param1, param1->msgBattlerTemp);
                    Heap_FreeToHeap(v3);

                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else {
                    *param2 = (0 + 296);
                    v2 = 1;
                    break;
                }
            }
        }
    }

    return v2;
}

void ov16_0225A1B0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < BattleSystem_MaxBattlers(param0); v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            param1->partyOrder[v0][v1] = v1;
        }

        BattleSystem_SwitchSlots(param0, param1, v0, param1->selectedPartySlot[v0]);
    }
}

void BattleSystem_SwitchSlots (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    int v0;
    int v1;
    int v2;
    u32 v3;

    v3 = BattleSystem_BattleType(battleSys);

    if (((v3 & 0x2) && ((v3 & (0x8 | 0x10)) == 0)) || ((v3 & 0x10) && ((BattleSystem_BattlerSlot(battleSys, battler) & 0x1) == 0))) {
        if ((BattleSystem_BattlerSlot(battleSys, battler) == 4) || (BattleSystem_BattlerSlot(battleSys, battler) == 5)) {
            v2 = 1;
        } else {
            v2 = 0;
        }

        battler &= 1;
    } else {
        v2 = 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (battleCtx->partyOrder[battler][v0] == partySlot) {
            break;
        }
    }

    v1 = battleCtx->partyOrder[battler][v2];

    battleCtx->partyOrder[battler][v2] = battleCtx->partyOrder[battler][v0];
    battleCtx->partyOrder[battler][v0] = v1;
}

static const u8 Unk_ov16_0226EC92[][2] = {
    {0x39, 0x6},
    {0x44, 0x8},
    {0x48, 0x4},
    {0x49, 0x5},
    {0x4A, 0xC},
    {0x4B, 0x11},
    {0x4C, 0x1},
    {0x4D, 0xD},
    {0x4E, 0xB},
    {0x4F, 0x2},
    {0x50, 0x3},
    {0x51, 0xF},
    {0x52, 0x7},
    {0x53, 0xE},
    {0x54, 0xA},
    {0x55, 0x10},
    {0x56, 0x0},
    {0x7E, 0xA},
    {0x7F, 0xB},
    {0x80, 0xD},
    {0x81, 0xC},
    {0x82, 0xF},
    {0x83, 0x1},
    {0x84, 0x3},
    {0x85, 0x4},
    {0x86, 0x2},
    {0x87, 0xE},
    {0x88, 0x6},
    {0x89, 0x5},
    {0x8A, 0x7},
    {0x8B, 0x10},
    {0x8C, 0x11},
    {0x8D, 0x8}
};

const u8 Unk_ov16_0226EBE0[][2] = {
    {0xA, 0x28},
    {0xA, 0x23},
    {0xA, 0x1E},
    {0xA, 0x19},
    {0xA, 0x14},
    {0xA, 0xF},
    {0xA, 0xA},
    {0xF, 0xA},
    {0x14, 0xA},
    {0x19, 0xA},
    {0x1E, 0xA},
    {0x23, 0xA},
    {0x28, 0xA}
};

static const u16 Unk_ov16_0226EC16[] = {
    0x8,
    0x7,
    0x9,
    0xB7,
    0x108,
    0x92,
    0xDF,
    0x167,
    0x5,
    0x4,
    0x135,
    0x145,
    0x199,
    0x1A2,
    0x147
};

int BattleSystem_CalcMoveDamage (BattleSystem * param0, BattleContext * param1, int param2, u32 param3, u32 param4, u16 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    int v0;
    s32 v1 = 0;
    s32 v2 = 0;
    u8 v3;
    u8 v4;
    u16 v5;
    u16 v6;
    u16 v7;
    u16 v8;
    s8 v9;
    s8 v10;
    s8 v11;
    s8 v12;
    u8 v13;
    u16 v14;
    u16 v15;
    u32 v16;
    UnkStruct_ov16_0225A280 v17;
    UnkStruct_ov16_0225A280 v18;

    GF_ASSERT(((param9 == 1) || (param9 > 1)));

    v5 = BattleMon_Get(param1, param7, 1, NULL);
    v6 = BattleMon_Get(param1, param8, 2, NULL);
    v7 = BattleMon_Get(param1, param7, 4, NULL);
    v8 = BattleMon_Get(param1, param8, 5, NULL);
    v9 = BattleMon_Get(param1, param7, 19, NULL) - 6;
    v10 = BattleMon_Get(param1, param8, 20, NULL) - 6;
    v11 = BattleMon_Get(param1, param7, 22, NULL) - 6;
    v12 = BattleMon_Get(param1, param8, 23, NULL) - 6;
    v13 = BattleMon_Get(param1, param7, 43, NULL);

    v17.unk_00 = BattleMon_Get(param1, param7, 0, NULL);
    v18.unk_00 = BattleMon_Get(param1, param8, 0, NULL);
    v17.unk_02 = BattleMon_Get(param1, param7, 47, NULL);
    v18.unk_02 = BattleMon_Get(param1, param8, 47, NULL);
    v17.unk_04 = BattleMon_Get(param1, param7, 48, NULL);
    v18.unk_04 = BattleMon_Get(param1, param8, 48, NULL);
    v17.unk_10 = BattleMon_Get(param1, param7, 52, NULL);
    v18.unk_10 = BattleMon_Get(param1, param8, 52, NULL);
    v17.unk_14 = Battler_Ability(param1, param7);
    v18.unk_14 = Battler_Ability(param1, param8);
    v17.unk_15 = BattleMon_Get(param1, param7, 29, NULL);
    v18.unk_15 = BattleMon_Get(param1, param8, 29, NULL);
    v17.unk_16 = BattleMon_Get(param1, param7, 27, NULL);
    v18.unk_16 = BattleMon_Get(param1, param8, 27, NULL);
    v17.unk_17 = BattleMon_Get(param1, param7, 28, NULL);
    v18.unk_17 = BattleMon_Get(param1, param8, 28, NULL);

    v15 = ov16_02258874(param1, param7);

    v17.unk_08 = ov16_0225B0FC(param1, v15, 1);
    v17.unk_0C = ov16_0225B0FC(param1, v15, 2);
    v15 = ov16_02258874(param1, param8);

    v18.unk_08 = ov16_0225B0FC(param1, v15, 1);
    v18.unk_0C = ov16_0225B0FC(param1, v15, 2);

    v16 = BattleSystem_BattleType(param0);

    if (param5 == 0) {
        v14 = param1->aiContext.moveTable[param2].power;
    } else {
        v14 = param5;
    }

    if (v17.unk_14 == 96) {
        v3 = 0;
    } else if (param6 == 0) {
        v3 = param1->aiContext.moveTable[param2].type;
    } else {
        v3 = param6 & 0x3f;
    }

    GF_ASSERT(param1->powerMul >= 10);
    v14 = v14 * param1->powerMul / 10;

    if ((param1->battleMons[param7].moveEffectsMask & 0x200) && (v3 == 13)) {
        v14 *= 2;
    }

    if (param1->turnFlags[param7].helpingHand) {
        v14 = v14 * 15 / 10;
    }

    if ((v17.unk_14 == 101) && (param2 != 165) && (v14 <= 60)) {
        v14 = v14 * 15 / 10;
    }

    v4 = param1->aiContext.moveTable[param2].class;

    if ((v17.unk_14 == 37) || (v17.unk_14 == 74)) {
        v5 = v5 * 2;
    }

    if ((v17.unk_14 == 112) && ((ov16_0225B45C(param0, param1, 3, NULL) - BattleMon_Get(param1, param7, 89, NULL)) < 5)) {
        v5 /= 2;
    }

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EC92); v0++) {
        if ((v17.unk_08 == Unk_ov16_0226EC92[v0][0]) && (v3 == Unk_ov16_0226EC92[v0][1])) {
            v14 = v14 * (100 + v17.unk_0C) / 100;
            break;
        }
    }

    if (v17.unk_08 == 55) {
        v5 = v5 * 150 / 100;
    }

    if (v17.unk_08 == 125) {
        v7 = v7 * 150 / 100;
    }

    if ((v17.unk_08 == 60) && ((v16 & 0x80) == 0) && ((v17.unk_00 == 381) || (v17.unk_00 == 380))) {
        v7 = v7 * 150 / 100;
    }

    if ((v18.unk_08 == 60) && ((v16 & 0x80) == 0) && ((v18.unk_00 == 381) || (v18.unk_00 == 380))) {
        v8 = v8 * 150 / 100;
    }

    if ((v17.unk_08 == 61) && (v17.unk_00 == 366)) {
        v7 *= 2;
    }

    if ((v18.unk_08 == 62) && (v18.unk_00 == 366)) {
        v8 *= 2;
    }

    if ((v17.unk_08 == 71) && (v17.unk_00 == 25)) {
        v14 *= 2;
    }

    if ((v18.unk_08 == 90) && (v18.unk_00 == 132)) {
        v6 *= 2;
    }

    if ((v17.unk_08 == 91) && ((v17.unk_00 == 104) || (v17.unk_00 == 105))) {
        v5 *= 2;
    }

    if ((v17.unk_08 == 3) && ((v3 == 16) || (v3 == 8)) && (v17.unk_00 == 483)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 4) && ((v3 == 16) || (v3 == 11)) && (v17.unk_00 == 484)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 2) && ((v3 == 16) || (v3 == 7)) && ((BattleMon_Get(param1, param7, 53, NULL) & 0x200000) == 0) && (v17.unk_00 == 487)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 94) && (v4 == 0)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 95) && (v4 == 1)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((Battler_IgnorableAbility(param1, param7, param8, 47) == 1) && ((v3 == 10) || (v3 == 15))) {
        v14 /= 2;
    }

    if (v17.unk_14 == 55) {
        v5 = v5 * 150 / 100;
    }

    if ((v17.unk_14 == 62) && (v17.unk_10)) {
        v5 = v5 * 150 / 100;
    }

    if ((Battler_IgnorableAbility(param1, param7, param8, 63) == 1) && (v18.unk_10)) {
        v6 = v6 * 150 / 100;
    }

    if ((v17.unk_14 == 57) && (BattleSystem_CountAbility(param0, param1, 1, param7, 58))) {
        v7 = v7 * 150 / 100;
    }

    if ((v17.unk_14 == 58) && (BattleSystem_CountAbility(param0, param1, 1, param7, 57))) {
        v7 = v7 * 150 / 100;
    }

    if ((v3 == 13) && (ov16_02255F68(param0, param1, 0x10000))) {
        v14 /= 2;
    }

    if ((v3 == 10) && (ov16_02255F68(param0, param1, 0x20000))) {
        v14 /= 2;
    }

    if ((v3 == 12) && (v17.unk_14 == 65) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 10) && (v17.unk_14 == 66) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 11) && (v17.unk_14 == 67) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 6) && (v17.unk_14 == 68) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 10) && (Battler_IgnorableAbility(param1, param7, param8, 85) == 1)) {
        v14 /= 2;
    }

    if ((v3 == 10) && (Battler_IgnorableAbility(param1, param7, param8, 87) == 1)) {
        v14 = v14 * 125 / 100;
    }

    if (v17.unk_14 == 86) {
        v9 *= 2;

        if (v9 < -6) {
            v9 = -6;
        }

        if (v9 > 6) {
            v9 = 6;
        }

        v11 *= 2;

        if (v11 < -6) {
            v11 = -6;
        }

        if (v11 > 6) {
            v11 = 6;
        }
    }

    if (Battler_IgnorableAbility(param1, param7, param8, 86) == 1) {
        v10 *= 2;

        if (v10 < -6) {
            v10 = -6;
        }

        if (v10 > 6) {
            v10 = 6;
        }

        v12 *= 2;

        if (v12 < -6) {
            v12 = -6;
        }

        if (v12 > 6) {
            v12 = 6;
        }
    }

    if (Battler_IgnorableAbility(param1, param7, param8, 109) == 1) {
        v9 = 0;
        v11 = 0;
    }

    if (v17.unk_14 == 109) {
        v10 = 0;
        v12 = 0;
    }

    v9 += 6;
    v10 += 6;
    v11 += 6;
    v12 += 6;

    if ((v17.unk_14 == 79) && (v17.unk_15 == v18.unk_15) && (v17.unk_15 != 2) && (v18.unk_15 != 2)) {
        v14 = v14 * 125 / 100;
    }

    if ((v17.unk_14 == 79) && (v17.unk_15 != v18.unk_15) && (v17.unk_15 != 2) && (v18.unk_15 != 2)) {
        v14 = v14 * 75 / 100;
    }

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EC16); v0++) {
        if ((Unk_ov16_0226EC16[v0] == param2) && (v17.unk_14 == 89)) {
            v14 = v14 * 12 / 10;
            break;
        }
    }

    if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
        if ((param4 & 0x30) && (v17.unk_14 == 94)) {
            v7 = v7 * 15 / 10;
        }

        if ((param4 & 0xc) && ((v18.unk_16 == 5) || (v18.unk_17 == 5))) {
            v8 = v8 * 15 / 10;
        }

        if ((param4 & 0x30) && (BattleSystem_CountAbility(param0, param1, 1, param7, 122))) {
            v5 = v5 * 15 / 10;
        }

        if ((param4 & 0x30) && (Battler_Ability(param1, param7) != 104) && (BattleSystem_CountAbility(param0, param1, 1, param8, 122))) {
            v8 = v8 * 15 / 10;
        }
    }

    if (param1->aiContext.moveTable[param2].effect == 7) {
        v6 = v6 / 2;
    }

    if (v4 == 0) {
        if (param9 > 1) {
            if (v9 > 6) {
                v1 = v5 * Unk_ov16_0226EBE0[v9][0];
                v1 /= Unk_ov16_0226EBE0[v9][1];
            } else {
                v1 = v5;
            }
        } else {
            v1 = v5 * Unk_ov16_0226EBE0[v9][0];
            v1 /= Unk_ov16_0226EBE0[v9][1];
        }

        v1 *= v14;
        v1 *= (v13 * 2 / 5 + 2);

        if (param9 > 1) {
            if (v10 < 6) {
                v2 = v6 * Unk_ov16_0226EBE0[v10][0];
                v2 /= Unk_ov16_0226EBE0[v10][1];
            } else {
                v2 = v6;
            }
        } else {
            v2 = v6 * Unk_ov16_0226EBE0[v10][0];
            v2 /= Unk_ov16_0226EBE0[v10][1];
        }

        v1 /= v2;
        v1 /= 50;

        if ((v17.unk_10 & 0x10) && (v17.unk_14 != 62)) {
            v1 /= 2;
        }

        if (((param3 & 0x1) != 0) && (param9 == 1) && (param1->aiContext.moveTable[param2].effect != 186)) {
            if ((v16 & 0x2) && (ov16_022554E0(param0, param1, 1, param8) == 2)) {
                v1 = v1 * 2 / 3;
            } else {
                v1 /= 2;
            }
        }
    } else if (v4 == 1) {
        if (param9 > 1) {
            if (v11 > 6) {
                v1 = v7 * Unk_ov16_0226EBE0[v11][0];
                v1 /= Unk_ov16_0226EBE0[v11][1];
            } else {
                v1 = v7;
            }
        } else {
            v1 = v7 * Unk_ov16_0226EBE0[v11][0];
            v1 /= Unk_ov16_0226EBE0[v11][1];
        }

        v1 *= v14;
        v1 *= (v13 * 2 / 5 + 2);

        if (param9 > 1) {
            if (v12 < 6) {
                v2 = v8 * Unk_ov16_0226EBE0[v12][0];
                v2 /= Unk_ov16_0226EBE0[v12][1];
            } else {
                v2 = v8;
            }
        } else {
            v2 = v8 * Unk_ov16_0226EBE0[v12][0];
            v2 /= Unk_ov16_0226EBE0[v12][1];
        }

        v1 /= v2;
        v1 /= 50;

        if (((param3 & 0x2) != 0) && (param9 == 1) && (param1->aiContext.moveTable[param2].effect != 186)) {
            if ((v16 & 0x2) && (ov16_022554E0(param0, param1, 1, param8) == 2)) {
                v1 = v1 * 2 / 3;
            } else {
                v1 /= 2;
            }
        }
    }

    if ((v16 & 0x2) && (param1->aiContext.moveTable[param2].range == 0x4) && (ov16_022554E0(param0, param1, 1, param8) == 2)) {
        v1 = v1 * 3 / 4;
    }

    if ((v16 & 0x2) && (param1->aiContext.moveTable[param2].range == 0x8) && (ov16_022554E0(param0, param1, 0, param8) >= 2)) {
        v1 = v1 * 3 / 4;
    }

    if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
        if (param4 & 0x3) {
            switch (v3) {
            case 10:
                v1 /= 2;
                break;
            case 11:
                v1 = v1 * 15 / 10;
                break;
            }
        }

        if ((param4 & (3 | 12 | 192 | 32768)) && (param2 == 76)) {
            v1 /= 2;
        }

        if (param4 & 0x30) {
            switch (v3) {
            case 10:
                v1 = v1 * 15 / 10;
                break;
            case 11:
                v1 /= 2;
                break;
            }
        }
    }

    if ((BattleMon_Get(param1, param7, 73, NULL)) && (v3 == 10)) {
        v1 = v1 * 15 / 10;
    }

    return v1 + 2;
}

int BattleSystem_CalcDamageVariance (BattleSystem * param0, BattleContext * param1, int param2)
{
    if (param2) {
        param2 *= (100 - (BattleSystem_RandNext(param0) % 16));
        param2 /= 100;

        if (param2 == 0) {
            param2 = 1;
        }
    }

    return param2;
}

static const u8 Unk_ov16_0226EBA0[] = {
    0x10,
    0x8,
    0x4,
    0x3,
    0x2
};

int ov16_0225AEE4 (BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, u32 param5)
{
    u16 v0;
    u16 v1;
    int v2;
    u16 v3;
    u32 v4;
    u32 v5;
    int v6 = 1;
    int v7;

    v1 = ov16_02258874(param1, param2);
    v2 = ov16_0225B0FC(param1, v1, 1);
    v3 = param1->battleMons[param2].species;
    v4 = param1->battleMons[param2].statusVolatile;
    v5 = param1->battleMons[param3].moveEffectsMask;
    v7 = param1->battleMons[param2].ability;
    v0 = (((v4 & 0x100000) != 0) * 2) + (v2 == 67) + param4 + (v7 == 105) + (2 * ((v2 == 89) && (v3 == 113))) + (2 * ((v2 == 92) && (v3 == 83)));

    if (v0 > 4) {
        v0 = 4;
    }

    if (BattleSystem_RandNext(param0) % Unk_ov16_0226EBA0[v0] == 0) {
        if ((Battler_IgnorableAbility(param1, param2, param3, 4) == 0) && (Battler_IgnorableAbility(param1, param2, param3, 75) == 0) && ((param5 & 0x7000) == 0) && ((v5 & 0x8000) == 0)) {
            v6 = 2;
        }
    }

    if ((v6 == 2) && (Battler_Ability(param1, param2) == 97)) {
        v6 = 3;
    }

    return v6;
}

static const u16 Unk_ov16_0226EC5C[] = {
    0x76,
    0xA5,
    0xA6,
    0x66,
    0x1C0,
    0xFFFE,
    0xD6,
    0x112,
    0x77,
    0x44,
    0xF3,
    0xB6,
    0xC5,
    0xCB,
    0xC2,
    0xA8,
    0x10A,
    0x121,
    0x10E,
    0x157,
    0x10F,
    0x108,
    0x16C,
    0x17F,
    0x17E,
    0x19F,
    0xFFFF
};

BOOL ov16_0225AFF4 (u16 param0)
{
    int v0;

    v0 = 0;

    while (Unk_ov16_0226EC5C[v0] != 0xfffe) {
        if (Unk_ov16_0226EC5C[v0] == param0) {
            break;
        }

        v0++;
    }

    return Unk_ov16_0226EC5C[v0] == 0xfffe;
}

BOOL ov16_0225B02C (BattleSystem * param0, BattleContext * param1, int param2, u16 param3)
{
    int v0;

    v0 = 0;

    if ((BattleSystem_FailsInHighGravity(param0, param1, param2, param3) == 1) || (BattleSystem_HealBlocked(param0, param1, param2, param3) == 1)) {
        return 0;
    }

    while (Unk_ov16_0226EC5C[v0] != 0xffff) {
        if (Unk_ov16_0226EC5C[v0] == param3) {
            break;
        }

        v0++;
    }

    return Unk_ov16_0226EC5C[v0] == 0xffff;
}

static const u16 Unk_ov16_0226EBB0[] = {
    0x90,
    0x66,
    0xA6,
    0x77,
    0xE3,
    0xA5
};

BOOL ov16_0225B084 (BattleContext * param0, u16 param1)
{
    int v0;

    v0 = 0;

    while (v0 < NELEMS(Unk_ov16_0226EBB0)) {
        if (param0->aiContext.moveTable[Unk_ov16_0226EBB0[v0]].effect == param0->aiContext.moveTable[param1].effect) {
            break;
        }

        v0++;
    }

    return v0 == NELEMS(Unk_ov16_0226EBB0);
}

static const u16 Unk_ov16_0226EBC8[] = {
    0x44,
    0xF3,
    0xA8,
    0x157,
    0x108,
    0x1C0
};

BOOL ov16_0225B0C0 (BattleContext * param0, u16 param1)
{
    int v0;

    v0 = 0;

    while (v0 < NELEMS(Unk_ov16_0226EBC8)) {
        if (param0->aiContext.moveTable[Unk_ov16_0226EBC8[v0]].effect == param0->aiContext.moveTable[param1].effect) {
            break;
        }

        v0++;
    }

    return v0 == NELEMS(Unk_ov16_0226EBC8);
}

s32 ov16_0225B0FC (BattleContext * param0, u16 param1, u16 param2)
{
    ItemData * v0;
    u16 v1;

    v1 = Item_FileID(param1, 0);
    v0 = ItemTable_Index(param0->aiContext.itemTable, v1);

    return Item_Get(v0, param2);
}

int BattleSystem_SideToBattler (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    int v1;

    v1 = BattleSystem_MaxBattlers(param0);

    for (v0 = 0; v0 < v1; v0++) {
        if (Battler_Side(param0, v0) == param2) {
            break;
        }
    }

    return v0;
}

void ov16_0225B148 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v5 = BattleSystem_MaxBattlers(param0);

    for (v0 = 0; v0 < v5 - 1; v0++) {
        for (v1 = v0 + 1; v1 < v5; v1++) {
            v2 = param1->battlerActionOrder[v0];
            v3 = param1->battlerActionOrder[v1];

            if (param1->battlerActions[v2][3] == param1->battlerActions[v3][3]) {
                if (param1->battlerActions[v2][3] == 1) {
                    v4 = 0;
                } else {
                    v4 = 1;
                }

                if (BattleSystem_CompareBattlerSpeed(param0, param1, v2, v3, v4)) {
                    param1->battlerActionOrder[v0] = v3;
                    param1->battlerActionOrder[v1] = v2;
                }
            }
        }
    }
}

static const int Unk_ov16_0226EC34[] = {
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x19,
    0x1A
};

BOOL ov16_0225B1DC (BattleContext * param0, int param1, int param2)
{
    int v0;
    BOOL v1 = 0;

    if ((param0->battleMons[param1].statusVolatile & 0x1000000) || (param0->battleMons[param1].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
        for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EC34); v0++) {
            if (Unk_ov16_0226EC34[v0] == param2) {
                v1 = 1;
                break;
            }
        }
    } else {
        v1 = 1;
    }

    return v1;
}

BOOL ov16_0225B228 (BattleSystem * param0, BattleContext * param1, int * param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    v0 = 0;
    v2 = Battler_HeldItemEffect(param1, param1->attacker);
    v3 = Battler_HeldItemPower(param1, param1->attacker, 0);
    v4 = Battler_HeldItemEffect(param1, param1->defender);
    v5 = Battler_HeldItemPower(param1, param1->defender, 0);
    v6 = Battler_Side(param0, param1->attacker);

    if ((v2 == 88) && (param1->battleStatusMask & 0x2000) && (param1->selfTurnFlags[param1->attacker].shellBellDamageDealt) && (param1->attacker != param1->defender) && (param1->battleMons[param1->attacker].curHP < param1->battleMons[param1->attacker].maxHP) && (param1->battleMons[param1->attacker].curHP)) {
        param1->hpCalcTemp = BattleSystem_Divide(param1->selfTurnFlags[param1->attacker].shellBellDamageDealt * -1, v3);
        param1->msgBattlerTemp = param1->attacker;
        param2[0] = (0 + 213);
        v0 = 1;
    }

    if ((v2 == 98) && (Battler_Ability(param1, param1->attacker) != 98) && (param1->battleStatusMask & 0x2000) && (param1->aiContext.moveTable[param1->moveCur].class != 2) && (param1->battleMons[param1->attacker].curHP)) {
        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP * -1, 10);
        param1->msgBattlerTemp = param1->attacker;
        param2[0] = (0 + 214);
        v0 = 1;
    }

    if ((v4 == 46) && (param1->battleMons[param1->attacker].curHP) && (Battler_Ability(param1, param1->attacker) != 98) && (param1->selfTurnFlags[param1->defender].physicalDamageTaken)) {
        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP * -1, v5);
        param2[0] = (0 + 266);
        v0 = 1;
    }

    if ((v4 == 116) && (param1->battleMons[param1->attacker].curHP) && (param1->battleMons[param1->attacker].heldItem == 0) && ((param1->sideConditions[v6].knockedOffItemsMask & FlagIndex(param1->selectedPartySlot[param1->attacker])) == 0) && ((param1->selfTurnFlags[param1->defender].physicalDamageTaken) || (param1->selfTurnFlags[param1->defender].specialDamageTaken)) && (param1->aiContext.moveTable[param1->moveCur].flags & 0x1)) {
        param2[0] = (0 + 216);
        v0 = 1;
    }

    return v0;
}

void BattleSystem_DecPPForPressure (BattleContext * param0, int param1, int param2)
{
    if ((param2 != 0xff) && (Battler_Ability(param0, param2) == 46) && (param0->battleMons[param1].ppCur[param0->moveSlot[param1]])) {
        param0->battleMons[param1].ppCur[param0->moveSlot[param1]]--;
    }
}

BOOL BattleSystem_RecordingStopped (BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (ov16_0223F710(battleSys)) {
        battleCtx->command = 42;
        return TRUE;
    }

    return FALSE;
}

int ov16_0225B45C (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;

    switch (param2) {
    case 0:
        v0 = Battler_Side(param0, param3);
        return param1->sideConditionsMask[v0];
        break;
    case 1:
        v0 = Battler_Side(param0, param3);
        return param1->sideConditions[v0].mistTurns;
        break;
    case 2:
        return param1->selectedPartySlot[param3];
        break;
    case 3:
        return param1->totalTurns;
        break;
    case 4:
        return param1->levelUpMons;
        break;
    case 5:
        return param1->safariEscapeCount;
        break;
    case 6:
        return param1->totalFainted[param3];
        break;
    case 7:
        return param1->totalDamage[param3];
        break;
    case 8:
        return param1->battlerActions[param3][0];
        break;
    case 9:
        return param1->aiContext.defender;
        break;
    case 10:
        return param1->battlersSwitchingMask;
        break;
    case 11:
        return param1->aiContext.selectedTarget[param3];
        break;
    case 12:
        return param1->battlerActions[param3][2];
        break;
    case 13:
        return param1->command;
        break;
    case 14:
        return param1->commandNext;
        break;
    }

    GF_ASSERT(0);
    return 0;
}

void ov16_0225B540 (BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4)
{
    int v0;

    switch (param2) {
    case 0:
        v0 = Battler_Side(param0, param3);
        param1->sideConditionsMask[v0] = param4;
        break;
    case 1:
        v0 = Battler_Side(param0, param3);
        param1->sideConditions[v0].mistTurns = param4;
        break;
    case 2:
        param1->selectedPartySlot[param3] = param4;
        break;
    case 3:
        param1->totalTurns = param4;
        break;
    case 9:
        param1->aiContext.defender = param4;
        break;
    case 11:
        param1->aiContext.selectedTarget[param3] = param4;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static const int Unk_ov16_0226EE24[] = {
    NULL,
    0x12,
    0x16,
    0x19,
    0x1B,
    0x1F,
    0x2F,
    0x25,
    0xE,
    0x37,
    0x38,
    0x30,
    0xD,
    0x3A,
    0x3F,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0x40,
    0x42,
    0x55,
    0x56,
    0x5D,
    0x77,
    0x73,
    0x82,
    0x8A,
    0x93,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0x2C,
    0x8E,
    0x95,
    0x96,
    0x94,
    0x97,
    0x98,
    0x18,
    0x21,
    0x22,
    0x23,
    0x2B,
    0x2D,
    0x2E,
    0x31,
    0x34,
    0x36,
    0x3E,
    0x43,
    0x44,
    0x46,
    0x49,
    0x4D,
    0x4E,
    0x4F,
    0x50,
    0x51,
    0x52,
    0x54,
    0x57,
    0x58,
    0x59,
    0x5B,
    0x5C,
    0x5F,
    0x60,
    0x61,
    0x7E,
    0x64,
    0x65,
    0x67,
    0x69,
    0x6A,
    0x6D,
    0x70,
    0x71,
    0x72,
    0x78,
    0x7A,
    0x7B,
    0x7C,
    0x7D,
    0x7F,
    0x80,
    0x81,
    0x83,
    0x84,
    0x86,
    0x87,
    0x8C,
    0x8D,
    0x8F,
    0x91,
    0x9A,
    0x9B,
    0x9C,
    0x9E,
    0x9F,
    0xA0,
    0xA1,
    0xA2,
    0xA3,
    0xA4,
    0xA5,
    0xA6,
    0xA7,
    0xA8,
    0xAA,
    0xAB,
    0xAD,
    0xAF,
    0xDA,
    0xDB,
    0xDC,
    0xE2,
    0xF6,
    0xF7,
    0xF8,
    0xF9,
    0x104,
    0x105,
    0x76
};

static int BattleContext_SideEffect (BattleContext * param0, int param1, u32 param2)
{
    param0->sideEffectType = param1;
    param0->sideEffectParam = param2 & 0x7fffff;
    param0->sideEffectFlags = param2 & (0x7fffff ^ 0xffffffff);

    if (param2 & 0x40000000) {
        param0->sideEffectMon = param0->attacker;
    } else if (param2 & 0x80000000) {
        param0->sideEffectMon = param0->defender;
    } else if ((param2 & 0x20000000) || (param2 & 0x10000000)) {
        param0->sideEffectMon = 0;
    } else {
        (void)0;
    }

    GF_ASSERT(NELEMS(Unk_ov16_0226EE24) > (param2 & 0x7fffff));

    return Unk_ov16_0226EE24[param2 & 0x7fffff];
}

static int ov16_0225B63C (BattleContext * param0, int param1, int param2, int param3, int param4, u32 * param5)
{
    if (((param0->battleStatusMask & 0x800) == 0) && ((param0->battleStatusMask & 0x8000) == 0) && (param3)) {
        param3 = BattleSystem_Divide(param3 * param2, 10);
    }

    switch (param2) {
    case 0:
        param5[0] |= 0x8;
        param5[0] &= (0x4 ^ 0xffffffff);
        param5[0] &= (0x2 ^ 0xffffffff);
        break;
    case 5:
        if (param4) {
            if (param5[0] & 0x2) {
                param5[0] &= (0x2 ^ 0xffffffff);
            } else {
                param5[0] |= 0x4;
            }
        }
        break;
    case 20:
        if (param4) {
            if (param5[0] & 0x4) {
                param5[0] &= (0x4 ^ 0xffffffff);
            } else {
                param5[0] |= 0x2;
            }
        }
        break;
    }

    return param3;
}

static BOOL ov16_0225B6C8 (BattleContext * param0, int param1)
{
    switch (param0->aiContext.moveTable[param1].effect) {
    case 26:
    case 39:
    case 75:
    case 145:
    case 151:
    case 155:
    case 255:
    case 256:
    case 263:
    case 273:
        return param0->battleStatusMask & 0x200;
        break;
    }

    return 1;
}

static u8 ov16_0225B734 (BattleContext * param0, int param1, int param2)
{
    u8 v0;

    if (param2 == 27) {
        v0 = param0->battleMons[param1].type1;
    } else if (param2 == 28) {
        v0 = param0->battleMons[param1].type2;
    } else {
        GF_ASSERT(0);
    }

    if ((param0->battleMons[param1].species == 493) && (param0->battleMons[param1].ability == 121)) {
        switch (ov16_0225B0FC(param0, param0->battleMons[param1].heldItem, 1)) {
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 128:
            v0 = 13;
            break;
        case 129:
            v0 = 12;
            break;
        case 130:
            v0 = 15;
            break;
        case 131:
            v0 = 1;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 134:
            v0 = 2;
            break;
        case 135:
            v0 = 14;
            break;
        case 136:
            v0 = 6;
            break;
        case 137:
            v0 = 5;
            break;
        case 138:
            v0 = 7;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        case 141:
            v0 = 8;
            break;
        default:
            v0 = 0;
            break;
        }
    }

    return v0;
}

static void ov16_0225B80C (BattleContext * param0, u8 param1)
{
    int v0;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        param0->aiContext.battlerMoves[param1][v0] = 0;
    }
}

static void ov16_0225B824 (BattleContext * param0, u8 param1)
{
    param0->aiContext.battlerAbilities[param1] = 0;
}

static void ov16_0225B830 (BattleContext * param0, u8 param1)
{
    param0->aiContext.battlerHeldItems[param1] = 0;
}

static int ov16_0225B840 (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0 = 0xff;

    if ((param1->battleMons[param2].ability != 59) && (param1->battleMons[param2].ability != 36) && (param1->battleMons[param2].ability != 121) && (param1->battleMons[param2].curHP) && (param1->battleMons[param3].curHP) && (param1->battleMons[param3].ability != 59) && (param1->battleMons[param3].ability != 36) && (param1->battleMons[param3].ability != 121)) {
        if (BattleSystem_RandNext(param0) & 1) {
            v0 = param3;
        } else {
            v0 = param2;
        }
    } else if ((param1->battleMons[param2].ability != 59) && (param1->battleMons[param2].ability != 36) && (param1->battleMons[param2].curHP) && (param1->battleMons[param2].ability != 121)) {
        v0 = param2;
    } else if ((param1->battleMons[param3].ability != 59) && (param1->battleMons[param3].ability != 36) && (param1->battleMons[param3].curHP) && (param1->battleMons[param3].ability != 121)) {
        v0 = param3;
    }

    return v0;
}

static const u16 Unk_ov16_0226EBBC[] = {
    0x29,
    0x57,
    0x58,
    0x59,
    0x90,
    0xE3
};

static BOOL ov16_0225B8E4 (BattleContext * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EBBC); v0++) {
        if (Unk_ov16_0226EBBC[v0] == param0->aiContext.moveTable[param1].effect) {
            return 1;
        }
    }

    return 0;
}

static int BattleMove_Type (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;

    switch (param3) {
    case 363:
        v0 = ov16_02258B2C(param1, param2);
        break;
    case 449:
        switch (Battler_HeldItemEffect(param1, param2)) {
        case 131:
            v0 = 1;
            break;
        case 134:
            v0 = 2;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 137:
            v0 = 5;
            break;
        case 136:
            v0 = 6;
            break;
        case 138:
            v0 = 7;
            break;
        case 141:
            v0 = 8;
            break;
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 129:
            v0 = 12;
            break;
        case 128:
            v0 = 13;
            break;
        case 135:
            v0 = 14;
            break;
        case 130:
            v0 = 15;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        default:
            v0 = 0;
            break;
        }
        break;
    case 237:
        v0 = ((param1->battleMons[param2].hpIV & 1) >> 0) | ((param1->battleMons[param2].attackIV & 1) << 1) | ((param1->battleMons[param2].defenseIV & 1) << 2) | ((param1->battleMons[param2].speedIV & 1) << 3) | ((param1->battleMons[param2].spAttackIV & 1) << 4) | ((param1->battleMons[param2].spDefenseIV & 1) << 5);
        v0 = (v0 * 15 / 63) + 1;

        if (v0 >= 9) {
            v0++;
        }
        break;
    case 311:
        if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
            if (param1->fieldConditionsMask & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
                if (param1->fieldConditionsMask & 0x3) {
                    v0 = 11;
                }

                if (param1->fieldConditionsMask & 0xc) {
                    v0 = 5;
                }

                if (param1->fieldConditionsMask & 0x30) {
                    v0 = 10;
                }

                if (param1->fieldConditionsMask & 0xc0) {
                    v0 = 15;
                }
            }
        }
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}

int ov16_0225BA88 (BattleSystem * param0, int param1)
{
    int v0, v1;
    u8 v2;
    u8 v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u16 v7;
    u16 v8;
    int v9;
    u8 v10;
    u8 v11;
    u8 v12;
    u8 v13 = 6;
    u8 v14, v15;
    u32 v16;
    int v17, v18;
    Pokemon * v19;
    BattleContext * v20;

    v20 = BattleSystem_Context(param0);
    v14 = param1;

    if ((BattleSystem_BattleType(param0) & 0x10) || (BattleSystem_BattleType(param0) & 0x8)) {
        v15 = v14;
    } else {
        v15 = BattleSystem_Partner(param0, param1);
    }

    v2 = BattleSystem_RandomOpponent(param0, v20, param1);
    v17 = 0;
    v18 = BattleSystem_PartyCount(param0, param1);
    v10 = 0;

    while (v10 != 0x3f) {
        v12 = 0;
        v13 = 6;

        for (v0 = v17; v0 < v18; v0++) {
            v19 = ov16_0223DFAC(param0, param1, v0);
            v7 = Pokemon_GetValue(v19, MON_DATA_SPECIES_EGG, NULL);

            if ((v7 != 0) && (v7 != 494) && (Pokemon_GetValue(v19, MON_DATA_CURRENT_HP, NULL)) && ((v10 & FlagIndex(v0)) == 0) && (v20->selectedPartySlot[v14] != v0) && (v20->selectedPartySlot[v15] != v0) && (v0 != v20->aiSwitchedPartySlot[v14]) && (v0 != v20->aiSwitchedPartySlot[v15])) {
                v3 = BattleMon_Get(v20, v2, 27, NULL);
                v4 = BattleMon_Get(v20, v2, 28, NULL);
                v5 = Pokemon_GetValue(v19, MON_DATA_177, NULL);
                v6 = Pokemon_GetValue(v19, MON_DATA_178, NULL);
                v11 = ov16_022558CC(v5, v3, v4);
                v11 += ov16_022558CC(v6, v3, v4);

                if (v12 < v11) {
                    v12 = v11;
                    v13 = v0;
                }
            } else {
                v10 |= FlagIndex(v0);
            }
        }

        if (v13 != 6) {
            v19 = ov16_0223DFAC(param0, param1, v13);

            for (v0 = 0; v0 < 4; v0++) {
                v8 = Pokemon_GetValue(v19, MON_DATA_MOVE1 + v0, NULL);
                v9 = ov16_0225BE3C(param0, v20, v19, v8);

                if (v8) {
                    v16 = 0;
                    ov16_022552D4(v20, v8, v9, Pokemon_GetValue(v19, MON_DATA_ABILITY, NULL), Battler_Ability(v20, v2), Battler_HeldItemEffect(v20, v2), BattleMon_Get(v20, v2, 27, NULL), BattleMon_Get(v20, v2, 28, NULL), &v16);

                    if (v16 & 0x2) {
                        break;
                    }
                }
            }

            if (v0 == 4) {
                v10 |= FlagIndex(v13);
            } else {
                return v13;
            }
        } else {
            v10 = 0x3f;
        }
    }

    v12 = 0;
    v13 = 6;

    for (v0 = v17; v0 < v18; v0++) {
        v19 = ov16_0223DFAC(param0, param1, v0);
        v7 = Pokemon_GetValue(v19, MON_DATA_SPECIES_EGG, NULL);

        if ((v7 != 0) && (v7 != 494) && (Pokemon_GetValue(v19, MON_DATA_CURRENT_HP, NULL)) && (v20->selectedPartySlot[v14] != v0) && (v20->selectedPartySlot[v15] != v0) && (v0 != v20->aiSwitchedPartySlot[v14]) && (v0 != v20->aiSwitchedPartySlot[v15])) {
            for (v1 = 0; v1 < 4; v1++) {
                v8 = Pokemon_GetValue(v19, MON_DATA_MOVE1 + v1, NULL);
                v9 = ov16_0225BE3C(param0, v20, v19, v8);

                if ((v8) && (v20->aiContext.moveTable[v8].power != 1)) {
                    v11 = BattleSystem_CalcMoveDamage(param0, v20, v8, v20->sideConditionsMask[Battler_Side(param0, v2)], v20->fieldConditionsMask, 0, 0, param1, v2, 1);
                    v16 = 0;
                    v11 = BattleSystem_CheckTypeChart(param0, v20, v8, v9, param1, v2, v11, &v16);

                    if (v16 & (0x8 | 0x800 | 0x100000 | 0x40000)) {
                        v11 = 0;
                    }
                }

                if (v12 < v11) {
                    v12 = v11;
                    v13 = v0;
                }
            }
        }
    }

    return v13;
}

int ov16_0225BE28 (BattleSystem * param0, int param1)
{
    BattleContext * v0;

    v0 = BattleSystem_Context(param0);
    return v0->aiSwitchedPartySlot[param1];
}

int ov16_0225BE3C (BattleSystem * param0, BattleContext * param1, Pokemon * param2, int param3)
{
    int v0;

    switch (param3) {
    case 363:
        v0 = ov16_0225B0FC(param1, Pokemon_GetValue(param2, MON_DATA_HELD_ITEM, NULL), 12);
        break;
    case 449:
        switch (ov16_0225B0FC(param1, Pokemon_GetValue(param2, MON_DATA_HELD_ITEM, NULL), 1)) {
        case 131:
            v0 = 1;
            break;
        case 134:
            v0 = 2;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 137:
            v0 = 5;
            break;
        case 136:
            v0 = 6;
            break;
        case 138:
            v0 = 7;
            break;
        case 141:
            v0 = 8;
            break;
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 129:
            v0 = 12;
            break;
        case 128:
            v0 = 13;
            break;
        case 135:
            v0 = 14;
            break;
        case 130:
            v0 = 15;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        default:
            v0 = 0;
            break;
        }
        break;
    case 237:
        v0 = ((Pokemon_GetValue(param2, MON_DATA_HP_IV, NULL) & 1) >> 0) | ((Pokemon_GetValue(param2, MON_DATA_ATK_IV, NULL) & 1) << 1) | ((Pokemon_GetValue(param2, MON_DATA_DEF_IV, NULL) & 1) << 2) | ((Pokemon_GetValue(param2, MON_DATA_SPEED_IV, NULL) & 1) << 3) | ((Pokemon_GetValue(param2, MON_DATA_SPATK_IV, NULL) & 1) << 4) | ((Pokemon_GetValue(param2, MON_DATA_SPDEF_IV, NULL) & 1) << 5);
        v0 = (v0 * 15 / 63) + 1;

        if (v0 >= 9) {
            v0++;
        }
        break;
    case 311:
        if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
            if (param1->fieldConditionsMask & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
                if (param1->fieldConditionsMask & 0x3) {
                    v0 = 11;
                }

                if (param1->fieldConditionsMask & 0xc) {
                    v0 = 5;
                }

                if (param1->fieldConditionsMask & 0x30) {
                    v0 = 10;
                }

                if (param1->fieldConditionsMask & 0xc0) {
                    v0 = 15;
                }
            }
        }
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}
