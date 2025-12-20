#include "unk_020494DC.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_functions.h"
#include "generated/battle_tower_modes.h"
#include "generated/game_records.h"
#include "generated/object_events.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_02049A68.h"

#include "field/field_system.h"
#include "overlay005/field_menu.h"

#include "bg_window.h"
#include "communication_system.h"
#include "field_script_context.h"
#include "field_system.h"
#include "game_records.h"
#include "inlines.h"
#include "savedata.h"
#include "script_manager.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "unk_020363E8.h"
#include "unk_02049D08.h"
#include "unk_0204AEE8.h"
#include "unk_0205DFC4.h"
#include "unk_0206B9D8.h"
#include "unk_0209BA80.h"

static u16 BattleTower_GetPartnerParam(BattleTower *battleTower, u8 param1);

BOOL ScrCmd_InitBattleTower(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 challengeMode = ScriptContext_ReadHalfWord(ctx);

    ctx->fieldSystem->battleTower = BattleTower_Init(FieldSystem_GetSaveData(ctx->fieldSystem), v0, challengeMode);
    return FALSE;
}

BOOL ScrCmd_SetBattleTowerNull(ScriptContext *ctx)
{
    BattleTower_SetNull(&(ctx->fieldSystem->battleTower));
    return FALSE;
}

BOOL ScrCmd_FreeBattleTower(ScriptContext *ctx)
{
    BattleTower_Free(ctx->fieldSystem->battleTower);
    ctx->fieldSystem->battleTower = NULL;

    return FALSE;
}

BOOL ScrCmd_CallBattleTowerFunction(ScriptContext *ctx)
{
    void **partyMenu;

    u16 functionIndex = ScriptContext_ReadHalfWord(ctx);
    u16 functionArgument = ScriptContext_GetVar(ctx);
    u16 varID = ScriptContext_ReadHalfWord(ctx);
    u16 *destVar = FieldSystem_GetVarPointer(ctx->fieldSystem, varID);
    BattleTower *battleTower = ctx->fieldSystem->battleTower;

    switch (functionIndex) {
    case BATTLE_TOWER_FUNCTION_CHECK_ENOUGH_VALID_POKEMON: // enough pokemon?
        if (functionArgument == 0) {
            *destVar = sub_02049EC4(battleTower->partySize, ctx->fieldSystem->saveData, 1);
        } else {
            *destVar = sub_02049EC4(functionArgument, ctx->fieldSystem->saveData, 1);
        }
        break;
    case BATTLE_TOWER_FUNCTION_RESET_SYSTEM:
        BattleTower_ResetSystem();
        break;
    case BATTLE_TOWER_FUNCTION_UNK_03:
        sub_02049F98(sub_0202D740(ctx->fieldSystem->saveData));
        break;
    case BATTLE_TOWER_FUNCTION_UNK_04:
        *destVar = sub_02049FA0(sub_0202D740(ctx->fieldSystem->saveData));
        break;
    case BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE:
        BattleTower_SetCommunicationClubAccessible(ctx->fieldSystem);
        break;
    case BATTLE_TOWER_FUNCTION_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE:
        BattleTower_ClearCommunicationClubAccessible(ctx->fieldSystem);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_08:
        *destVar = sub_02049FF8(ctx->fieldSystem->saveData, functionArgument);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_09:
        *destVar = sub_0204AABC(NULL, ctx->fieldSystem->saveData, 2);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_10:
        *destVar = sub_0204AABC(NULL, ctx->fieldSystem->saveData, 0);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_11:
        sub_0204A030(ctx->fieldSystem->saveData, functionArgument);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_12:
        *destVar = sub_0204A050(ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_14:
        *destVar = sub_0204A064(ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_15:
        *destVar = sub_0204A100(ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_16:
        sub_0206BCE4(ctx->task, functionArgument, varID, *destVar);
        return TRUE;
    case BATTLE_TOWER_FUNCTION_UNK_30:
        partyMenu = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
        sub_0204A358(battleTower, ctx->task, partyMenu);
        return TRUE;
    case BATTLE_TOWER_FUNCTION_UNK_31:
        partyMenu = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
        *destVar = sub_0204A378(battleTower, partyMenu, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_CHECK_DUPLICATE_SPECIES_AND_HELD_ITEMS:
        *destVar = BattleTower_CheckDuplicateSpeciesAndHeldItems(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_HAS_DEFEATED_SEVEN_TRAINERS:
        *destVar = BattleTower_HasDefeatedSevenTrainers(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS:
        BattleTower_UpdateGameRecords(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS_AND_JOURNAL:
        BattleTower_UpdateGameRecordsAndJournal(battleTower, ctx->fieldSystem->saveData, ctx->fieldSystem->journalEntry);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_39:
        sub_0204A8C8(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_56:
        sub_0204A97C(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_GET_OPPONENT_OBJECT_ID:
        *destVar = BattleTower_GetObjectIDFromOpponentID(battleTower, functionArgument);
        break;
    case BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE:
        *destVar = (u16)BattleTower_GetChallengeMode(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_45:
        *destVar = sub_0204A9FC(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_47:
        sub_0204AA7C(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_48:
        *destVar = sub_0204AB68(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_49:
        *destVar = sub_0204ABA0(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_SET_PARTNER_ID:
        battleTower->partnerID = functionArgument;
        break;
    case BATTLE_TOWER_FUNCTION_GET_PARTNER_ID:
        *destVar = battleTower->partnerID;
        break;
    case BATTLE_TOWER_FUNCTION_UNK_52:
        sub_0204A4C8(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX:
        *destVar = battleTower->unk_2A[functionArgument];
        break;
    case BATTLE_TOWER_FUNCTION_UNK_54:
        *destVar = sub_0204AABC(battleTower, ctx->fieldSystem->saveData, 1);
        break;
    case BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM:
        *destVar = BattleTower_GetPartnerParam(battleTower, functionArgument);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_57:
        *destVar = sub_0204ABF4(battleTower, ctx->fieldSystem->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_CHECK_IS_NULL:
        if (battleTower == NULL) {
            *destVar = TRUE;
        } else {
            *destVar = FALSE;
        }
        break;
    case BATTLE_TOWER_FUNCTION_UNK_58:
        MI_CpuClear8(battleTower->unk_884, 70);
        break;
    default:
        GF_ASSERT(FALSE);
        *destVar = 0;
        break;
    }

    return FALSE;
}

BOOL ScrCmd_GetBattleTowerPartnerSpeciesAndMove(ScriptContext *ctx)
{
    u16 partnerID, monID;
    u16 *destVar1, *destVar2;
    BattleTower *battleTower = ctx->fieldSystem->battleTower;

    partnerID = ScriptContext_GetVar(ctx);
    monID = ScriptContext_GetVar(ctx);
    destVar1 = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
    destVar2 = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    *destVar1 = battleTower->partnersDataDTO[partnerID].monDataDTO[monID].species;
    *destVar2 = battleTower->partnersDataDTO[partnerID].monDataDTO[monID].moves[0];

    return FALSE;
}

BOOL ScrCmd_1DF(ScriptContext *ctx)
{
    u16 v0, v1, v2;
    u16 *v3;

    v0 = ScriptContext_ReadHalfWord(ctx);
    v3 = FieldSystem_GetVarPointer(ctx->fieldSystem, v0);
    *v3 = sub_0206BDBC(ctx->fieldSystem->saveData);

    return 0;
}

BOOL ScrCmd_1E0(ScriptContext *ctx)
{
    u16 v0, v1, v2;
    u16 *v3;

    v0 = ScriptContext_ReadHalfWord(ctx);
    v3 = FieldSystem_GetVarPointer(ctx->fieldSystem, v0);
    *v3 = sub_0206BF04(ctx->fieldSystem->saveData);

    return 0;
}

BOOL ScrCmd_1E1(ScriptContext *ctx)
{
    int cmd, v1;
    const TrainerInfo *v2;
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    BattleTower *battleTower = ctx->fieldSystem->battleTower;

    *destVar = 0;

    switch (v3) {
    case 0:
        cmd = 62;
        sub_0204B060(ctx->fieldSystem->battleTower, ctx->fieldSystem->saveData);
        break;
    case 1:
        cmd = 63;
        sub_0204B0BC(ctx->fieldSystem->battleTower);
        break;
    case 2:
        cmd = 64;
        sub_0204B0D4(ctx->fieldSystem->battleTower, v4);
        break;
    }

    if (sub_0205E6D8(ctx->fieldSystem->saveData) == 1) {
        if (sub_02036614(CommSys_CurNetId(), battleTower->unk_83E) == 1) {
            *destVar = 1;
        } else {
            return TRUE;
        }
    } else {
        sub_0209BA80(battleTower);

        v1 = 70;

        if (CommSys_SendData(cmd, battleTower->unk_83E, v1) == 1) {
            *destVar = 1;
        }
    }

    return FALSE;
}

static BOOL sub_02049A20(ScriptContext *ctx);

BOOL ScrCmd_1E2(ScriptContext *ctx)
{
    u16 v0;
    u16 destVarID;
    BattleTower *battleTower = ctx->fieldSystem->battleTower;

    destVarID = ScriptContext_GetVar(ctx);
    v0 = ScriptContext_ReadHalfWord(ctx);

    if (sub_0205E6D8(ctx->fieldSystem->saveData) == 1) {
        sub_0206BD88(ctx->fieldSystem->task, destVarID, v0);
    } else {
        battleTower->unk_8DA = v0;
        battleTower->unk_8D5 = destVarID;

        ScriptContext_Pause(ctx, sub_02049A20);
    }

    return TRUE;
}

static BOOL sub_02049A20(ScriptContext *ctx)
{
    u8 v0;
    BattleTower *battleTower = ctx->fieldSystem->battleTower;
    u16 *v2 = FieldSystem_GetVarPointer(ctx->fieldSystem, battleTower->unk_8DA);

    if (battleTower->unk_8D5 == 1) {
        v0 = 1;
    } else {
        v0 = 2;
    }

    if (battleTower->unk_8D4 == v0) {
        battleTower->unk_8D4 = 0;
        *v2 = battleTower->unk_8D8;

        return 1;
    }

    return 0;
}

BOOL ScrCmd_1E3(ScriptContext *ctx)
{
    UnkStruct_02049A68 v0;
    u16 *v1 = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
    u16 *v2 = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    sub_0202D708(sub_0202D764(ctx->fieldSystem->saveData), &v0);

    *v1 = v0.unk_00;
    *v2 = v0.unk_04;

    return 0;
}

BOOL ScrCmd_1E4(ScriptContext *ctx)
{
    u16 *destVar = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    *destVar = sub_0202D5F0(sub_0202D764(ctx->fieldSystem->saveData));
    return FALSE;
}

static u16 BattleTower_GetPartnerParam(BattleTower *battleTower, u8 param)
{
    static const u16 partnerGraphics[] = {
        OBJ_EVENT_GFX_CHERYL,
        OBJ_EVENT_GFX_MIRA,
        OBJ_EVENT_GFX_RILEY,
        OBJ_EVENT_GFX_MARLEY,
        OBJ_EVENT_GFX_BUCK
    };

    if (param == BT_PARAM_PARTNER_ID) {
        return battleTower->partnerID;
    }

    if (param == BT_PARAM_PARTNER_GRAPHICS_ID) {
        if (battleTower->challengeMode == BATTLE_TOWER_MODE_MULTI) {
            return partnerGraphics[battleTower->partnerID];
        } else {
            if (battleTower->partnerGender) {
                return OBJ_EVENT_GFX_PLAYER_F;
            } else {
                return OBJ_EVENT_GFX_PLAYER_M;
            }
        }
    }

    if (battleTower->playerGender) {
        return OBJ_EVENT_GFX_PLAYER_F;
    } else {
        return OBJ_EVENT_GFX_PLAYER_M;
    }
}

BOOL ScrCmd_ShowBattlePoints(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 tilemapLeft = ScriptContext_ReadByte(ctx);
    u8 tilemapTop = ScriptContext_ReadByte(ctx);
    Window **bpWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW);
    *bpWindow = FieldMenu_DrawBPWindow(ctx->fieldSystem, tilemapLeft, tilemapTop);

    return FALSE;
}

BOOL ScrCmd_HideBattlePoints(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window **bpWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW);

    FieldMenu_DeleteSpecialCurrencyWindow(*bpWindow);
    return FALSE;
}

BOOL ScrCmd_UpdateBPDisplay(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window **bpWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW);

    FieldMenu_PrintBPToWindow(ctx->fieldSystem, *bpWindow);
    return FALSE;
}

BOOL ScrCmd_297(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = sub_0202D230(sub_0202D750(saveData), 0, 0);
    return 0;
}

BOOL ScrCmd_298(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 v2 = ScriptContext_GetVar(ctx);

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(ctx->fieldSystem->saveData), RECORD_UNK_068, v2);
    sub_0202D230(sub_0202D750(saveData), v2, 5);

    return 0;
}

BOOL ScrCmd_299(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 v2 = ScriptContext_GetVar(ctx);

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(ctx->fieldSystem->saveData), RECORD_UNK_069, v2);
    sub_0202D230(sub_0202D750(saveData), v2, 6);

    return 0;
}

BOOL ScrCmd_29A(ScriptContext *ctx)
{
    u16 v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202D230(
        sub_0202D750(saveData), 0, 0);

    if (v0 < v3) {
        *v4 = 0;
    } else {
        *v4 = 1;
    }

    return 0;
}

BOOL ScrCmd_29B(ScriptContext *ctx)
{
    u8 v0 = 0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);
    static const u16 v5[][2] = {
        { 0x2E, 0x1 },
        { 0x31, 0x1 },
        { 0x2F, 0x1 },
        { 0x34, 0x1 },
        { 0x30, 0x1 },
        { 0x2D, 0x1 },
        { 0x121, 0x10 },
        { 0x122, 0x10 },
        { 0x123, 0x10 },
        { 0x124, 0x10 },
        { 0x125, 0x10 },
        { 0x126, 0x10 },
        { 0x110, 0x10 },
        { 0x111, 0x10 },
        { 0xD6, 0x20 },
        { 0x10F, 0x20 },
        { 0xD5, 0x30 },
        { 0xDC, 0x30 },
        { 0xE6, 0x30 },
        { 0xE8, 0x30 },
        { 0x10A, 0x30 },
        { 0x113, 0x30 },
        { 0x11F, 0x30 },
        { 0x146, 0x30 },
        { 0x147, 0x30 },
        { 0x32, 0x30 },
        { 0x14D, 0x20 },
        { 0x190, 0x20 },
        { 0x184, 0x20 },
        { 0x174, 0x20 },
        { 0x16F, 0x28 },
        { 0x166, 0x28 },
        { 0x14F, 0x30 },
        { 0x14B, 0x30 },
        { 0x198, 0x40 },
        { 0x165, 0x40 },
        { 0x17C, 0x40 },
        { 0x16B, 0x50 },
        { 0x182, 0x50 },
        { 0x18E, 0x50 },
        { 0x161, 0x50 }
    };

    if (v1 == 1) {
        v0 = 26;
    } else {
        v0 = 0;
    }

    *v3 = v5[v0 + v2][0];
    *v4 = v5[v0 + v2][1];

    return 0;
}
