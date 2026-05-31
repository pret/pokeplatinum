#include "scrcmd_group_connection.h"

#include <nitro.h>
#include <string.h>

#include "applications/naming_screen.h"

#include "field_script_context.h"
#include "inlines.h"
#include "math_util.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "string_gf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "tv_segment.h"
#include "unk_0203D1B8.h"

BOOL ScrCmd_DoGroupConnectionAction(ScriptContext *ctx)
{
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    RecordMixedRNG *rngCollection = SaveData_GetRecordMixedRNG(ctx->fieldSystem->saveData);
    SaveData *saveData = ctx->fieldSystem->saveData;

    switch (ScriptContext_ReadHalfWord(ctx)) {
    case GC_ACTION_CHECK_IS_ENTRY_VALID: {
        u16 entry = ScriptContext_GetVar(ctx);
        u16 *valid = ScriptContext_GetVarPointer(ctx);
        *valid = RecordMixedRNG_IsEntryValid(rngCollection, entry);

        return FALSE;
        break;
    }
    case GC_ACTION_CHECK_IS_ENTRY_OVERRIDE: {
        u16 entry = ScriptContext_GetVar(ctx);
        u16 *equalToOverride = ScriptContext_GetVarPointer(ctx);
        *equalToOverride = RecordMixedRNG_IsEntryEqualToOverride(rngCollection, entry);

        return FALSE;
        break;
    }
    case GC_ACTION_BUFFER_GROUP_NAME: {
        u16 groupID = ScriptContext_GetVar(ctx);
        u16 templateArg = ScriptContext_GetVar(ctx);

        StringTemplate_SetUnionGroupName(*strTemplate, saveData, groupID, templateArg, RECORD_MIXED_RNG_GROUP_NAME);
        break;
    }
    case GC_ACTION_BUFFER_LEADER_NAME: {
        u16 groupID = ScriptContext_GetVar(ctx);
        u16 templateArg = ScriptContext_GetVar(ctx);

        StringTemplate_SetUnionGroupName(*strTemplate, saveData, groupID, templateArg, RECORD_MIXED_RNG_PLAYER_NAME);
        break;
    }
    case GC_ACTION_OPEN_GROUP_NAMING_SCREEN: {
        const u16 *entryName = RecordMixedRNG_GetEntryName(rngCollection, RECORD_MIXED_RNG_PLAYER_ORIGINAL, RECORD_MIXED_RNG_GROUP_NAME);
        sub_0203DFE8(ctx->task, NAMING_SCREEN_TYPE_GROUP, 0, TRAINER_NAME_LEN, 0, entryName, ScriptContext_GetVarPointer(ctx));
        return TRUE;
    }
    case GC_ACTION_JOIN_GROUP: {
        u16 entry = ScriptContext_GetVar(ctx);
        BOOL valid = RecordMixedRNG_IsEntryValid(rngCollection, RECORD_MIXED_RNG_PLAYER_OVERRIDE);

        RecordMixedRNG_CopyEntry(rngCollection, entry, RECORD_MIXED_RNG_PLAYER_OVERRIDE);

        if (valid) {
            FieldSystem_SaveTVSegment_LoveThatGroupCorner_SwitchGroup(ctx->fieldSystem);
        }
        return FALSE;
    }
    case GC_ACTION_MAKE_NEW_GROUP: {
        String *string = String_Init(64, HEAP_ID_FIELD3);
        TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(ctx->fieldSystem->saveData);

        TrainerInfo_NameString(trainerInfo, string);
        RecordMixedRNG_GetEntryNameAsString(rngCollection, RECORD_MIXED_RNG_PLAYER_ORIGINAL, RECORD_MIXED_RNG_PLAYER_NAME, string);
        RecordMixedRNG_SetEntryGender(rngCollection, RECORD_MIXED_RNG_PLAYER_ORIGINAL, TrainerInfo_Gender(trainerInfo));
        RecordMixedRNG_SetEntryLanguage(rngCollection, RECORD_MIXED_RNG_PLAYER_ORIGINAL, GAME_LANGUAGE);
        RecordMixedRNG_SetEntrySeed(rngCollection, RECORD_MIXED_RNG_PLAYER_ORIGINAL, MTRNG_Next());
        String_Free(string);
        RecordMixedRNG_CopyEntry(rngCollection, RECORD_MIXED_RNG_PLAYER_ORIGINAL, RECORD_MIXED_RNG_PLAYER_OVERRIDE);
        FieldSystem_SaveTVSegment_LoveThatGroupCorner_NewGroup(ctx->fieldSystem);
        break;
    }
    }

    return FALSE;
}
