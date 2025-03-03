#include "script_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "generated/map_headers.h"
#include "generated/text_banks.h"

#include "data/field/hidden_items.h"
#include "field/field_system.h"
#include "field/scripts/scr_seq.naix"

#include "field_task.h"
#include "heap.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "math.h"
#include "message.h"
#include "narc.h"
#include "player_avatar.h"
#include "start_menu.h"
#include "strbuf.h"
#include "trainer_data.h"
#include "vars_flags.h"

#include "constdata/const_020EAB80.h"
#include "constdata/const_020EAC58.h"

static BOOL FieldTask_RunScript(FieldTask *taskManager);
static ScriptManager *ScriptManager_New();
static void ScriptContext_Free(ScriptContext *ctx);
static void sub_0203EA68(FieldSystem *fieldSystem, ScriptManager *scriptManager, u16 scriptID, MapObject *object, void *saveType);
static void sub_0203EAF4(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID, u8 dummy);
static u16 ScriptContext_LoadAndOffsetID(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID);
static void ScriptContext_Load(FieldSystem *fieldSystem, ScriptContext *ctx, int scriptFile, u32 textBank);
static void ScriptContext_LoadFromCurrentMap(FieldSystem *fieldSystem, ScriptContext *ctx);
static void sub_0203F0E4(ScriptContext *ctx, u16 param1);
static void *ScriptContext_LoadScripts(int headerID);
static u32 MapHeaderToMsgArchive(int headerID);
static BOOL ScriptManager_SetHiddenItem(ScriptManager *scriptManager, u16 scriptID);
static u16 sub_0203F610(const u8 *param0, u8 param1);
static u16 sub_0203F638(FieldSystem *fieldSystem, const u8 *param1, u8 param2);

void ScriptManager_Set(FieldSystem *fieldSystem, u16 scriptID, MapObject *object)
{
    ScriptManager *scriptManager = ScriptManager_New();

    sub_0203EA68(fieldSystem, scriptManager, scriptID, object, NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_RunScript, scriptManager);
}

void ScriptManager_SetApproachingTrainer(FieldSystem *fieldSystem, MapObject *object, int sightRange, int direction, int scriptID, int trainerID, int trainerType, int approachNum)
{
    ScriptManager *scriptManager = FieldTask_GetEnv(fieldSystem->task);
    ApproachingTrainer *trainer = &scriptManager->trainers[approachNum];

    trainer->sightRange = sightRange;
    trainer->direction = direction;
    trainer->scriptID = scriptID;
    trainer->trainerID = trainerID;
    trainer->trainerType = trainerType;
    trainer->object = object;
}

void ScriptManager_Start(FieldTask *taskManager, u16 scriptID, MapObject *object, void *saveType)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskManager);
    ScriptManager *scriptManager = ScriptManager_New();

    sub_0203EA68(fieldSystem, scriptManager, scriptID, object, saveType);
    FieldTask_InitCall(taskManager, FieldTask_RunScript, scriptManager);
}

void ScriptManager_Change(FieldTask *taskManager, u16 scriptID, MapObject *object)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskManager);
    ScriptManager *scriptManager = ScriptManager_New();

    sub_0203EA68(fieldSystem, scriptManager, scriptID, object, NULL);
    FieldTask_InitJump(taskManager, FieldTask_RunScript, scriptManager);
}

static BOOL FieldTask_RunScript(FieldTask *taskManager)
{
    int i;
    FieldSysFunc scriptFunction;
    ScriptContext *ctx = NULL;
    ScriptManager *scriptManager = FieldTask_GetEnv(taskManager);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskManager);

    switch (scriptManager->state) {
    case 0:
        scriptManager->ctx[SCRIPT_CONTEXT_MAIN] = ScriptContext_CreateAndStart(fieldSystem, scriptManager->scriptID);
        scriptManager->numActiveContexts = 1;
        scriptManager->strTemplate = StringTemplate_New(8, 64, 11);
        scriptManager->msgBuf = Strbuf_Init(1024, 11);
        scriptManager->tmpBuf = Strbuf_Init(1024, 11);
        scriptManager->state++;
    case 1:
        for (i = 0; i < NUM_SCRIPT_CONTEXTS; i++) {
            ctx = scriptManager->ctx[i];

            if (ctx != NULL && ScriptContext_Run(ctx) == FALSE) {
                ScriptContext_Free(ctx);

                GF_ASSERT(scriptManager->numActiveContexts != 0);

                scriptManager->ctx[i] = NULL;
                scriptManager->numActiveContexts--;
            }
        }

        if (scriptManager->numActiveContexts <= 0) {
            scriptFunction = scriptManager->function;
            StringTemplate_Free(scriptManager->strTemplate);
            Strbuf_Free(scriptManager->msgBuf);
            Strbuf_Free(scriptManager->tmpBuf);
            scriptManager->magic = 0;
            Heap_FreeToHeap(scriptManager);

            if (scriptFunction != NULL) {
                scriptFunction(fieldSystem);
                return FALSE;
            }

            return TRUE;
        }
        break;
    }

    return FALSE;
}

static ScriptManager *ScriptManager_New()
{
    ScriptManager *scriptManager = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(ScriptManager));

    GF_ASSERT(scriptManager != NULL);

    memset(scriptManager, 0, sizeof(ScriptManager));
    scriptManager->magic = SCRIPT_MANAGER_MAGIC_NUMBER;
    return scriptManager;
}

static void ScriptContext_Free(ScriptContext *ctx)
{
    MessageLoader_Free(ctx->loader);
    Heap_FreeToHeap(ctx->scripts);
    Heap_FreeToHeap(ctx);
}

static void sub_0203EA68(FieldSystem *fieldSystem, ScriptManager *scriptManager, u16 scriptID, MapObject *object, void *saveType)
{
    u16 *targetID = ScriptManager_GetMemberPtr(scriptManager, SCRIPT_DATA_TARGET_OBJECT_ID);

    scriptManager->playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
    scriptManager->targetObject = object;
    scriptManager->scriptID = scriptID;
    scriptManager->saveType = saveType;

    if (object != NULL) {
        *targetID = MapObject_GetLocalID(object);
    }

    if (scriptID >= SCRIPT_ID_OFFSET_HIDDEN_ITEMS && scriptID <= SCRIPT_ID_OFFSET_SAFARI_ZONE - 1) {
        ScriptManager_SetHiddenItem(scriptManager, scriptID);
    }
}

ScriptContext *ScriptContext_CreateAndStart(FieldSystem *fieldSystem, u16 scriptID)
{
    ScriptContext *ctx = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(ScriptContext));

    GF_ASSERT(ctx != NULL);

    ScriptContext_Init(ctx, Unk_020EAC58, Unk_020EAB80);
    sub_0203EAF4(fieldSystem, ctx, scriptID, 0);

    return ctx;
}

static void sub_0203EAF4(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID, u8 dummy)
{
    ctx->fieldSystem = fieldSystem;
    u16 offsetID = ScriptContext_LoadAndOffsetID(fieldSystem, ctx, scriptID);

    ScriptContext_Start(ctx, ctx->scripts);
    sub_0203F0E4(ctx, offsetID);
    ScriptContext_SetTask(ctx, fieldSystem->task);
}

static u16 ScriptContext_LoadAndOffsetID(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID)
{
    u16 retScriptID = scriptID;

    if (retScriptID >= 10490) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0499, TEXT_BANK_UNK_0541);
        retScriptID -= 10490;
    } else if (retScriptID >= 10450) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0500, TEXT_BANK_UNK_0016);
        retScriptID -= 10450;
    } else if (retScriptID >= SCRIPT_ID_POKEMON_CENTER_DAILY_TRAINERS) {
        ScriptContext_Load(fieldSystem, ctx, scripts_pokemon_center_daily_trainers, TEXT_BANK_POKEMON_CENTER_DAILY_TRAINERS);
        retScriptID -= SCRIPT_ID_POKEMON_CENTER_DAILY_TRAINERS;
    } else if (retScriptID >= 10300) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1051, TEXT_BANK_UNK_0552);
        retScriptID -= 10300;
    } else if (retScriptID >= 10200) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0407, TEXT_BANK_UNK_0379);
        retScriptID -= 10200;
    } else if (retScriptID >= 10150) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1116, TEXT_BANK_UNK_0621);
        retScriptID -= 10150;
    } else if (retScriptID >= 10100) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1115, TEXT_BANK_UNK_0622);
        retScriptID -= 10100;
    } else if (retScriptID >= 10000) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0409, TEXT_BANK_UNK_0381);
        retScriptID -= 10000;
    } else if (retScriptID >= 9950) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0411, TEXT_BANK_UNK_0383);
        retScriptID -= 9950;
    } else if (retScriptID >= 9900) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0397, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= 9900;
    } else if (retScriptID >= 9800) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0212, TEXT_BANK_UNK_0217);
        retScriptID -= 9800;
    } else if (retScriptID >= 9700) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0422, TEXT_BANK_UNK_0429);
        retScriptID -= 9700;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_INIT_NEW_GAME) {
        ScriptContext_Load(fieldSystem, ctx, scripts_init_new_game, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= SCRIPT_ID_OFFSET_INIT_NEW_GAME;
    } else if (retScriptID >= 9500) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0501, TEXT_BANK_UNK_0547);
        retScriptID -= 9500;
    } else if (retScriptID >= 9400) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0426, TEXT_BANK_UNK_0432);
        retScriptID -= 9400;
    } else if (retScriptID >= 9300) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0406, TEXT_BANK_UNK_0374);
        retScriptID -= 9300;
    } else if (retScriptID >= 9200) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0423, TEXT_BANK_UNK_0430);
        retScriptID -= 9200;
    } else if (retScriptID >= 9100) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0000, TEXT_BANK_UNK_0011);
        retScriptID -= 9100;
    } else if (retScriptID >= 9000) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0213, TEXT_BANK_UNK_0221);
        retScriptID -= 9000;
    } else if (retScriptID >= 8970) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0425, TEXT_BANK_UNK_0007);
        retScriptID -= 8970;
    } else if (retScriptID >= 8950) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0498, TEXT_BANK_UNK_0539);
        retScriptID -= 8950;
    } else if (retScriptID >= 8900) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0424, TEXT_BANK_UNK_0431);
        retScriptID -= 8900;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_SAFARI_ZONE) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0497, TEXT_BANK_UNK_0538);
        retScriptID -= SCRIPT_ID_OFFSET_SAFARI_ZONE;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_HIDDEN_ITEMS) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0408, TEXT_BANK_UNK_0380);
        retScriptID -= SCRIPT_ID_OFFSET_HIDDEN_ITEMS;
    } else if (retScriptID >= 7000) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0404, TEXT_BANK_UNK_0369);
        retScriptID -= 7000;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_DOUBLE_BATTLES) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1114, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= SCRIPT_ID_OFFSET_DOUBLE_BATTLES;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_SINGLE_BATTLES) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1114, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= SCRIPT_ID_OFFSET_SINGLE_BATTLES;
    } else if (retScriptID >= 2800) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0413, TEXT_BANK_UNK_0397);
        retScriptID -= 2800;
    } else if (retScriptID >= 2500) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0001, TEXT_BANK_UNK_0017);
        retScriptID -= 2500;
    } else if (retScriptID >= 2000) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0211, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= 2000;
    } else if (retScriptID >= 1) {
        ScriptContext_LoadFromCurrentMap(fieldSystem, ctx);
        retScriptID -= 1;
    } else {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0402, TEXT_BANK_UNK_0355);
        retScriptID = 0;
    }

    return retScriptID;
}

static void ScriptContext_Load(FieldSystem *fieldSystem, ScriptContext *ctx, int scriptFile, u32 textBank)
{
    u8 *scripts = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, scriptFile, 11);
    ctx->scripts = scripts;
    ctx->loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, textBank, 11);
}

static void ScriptContext_LoadFromCurrentMap(FieldSystem *fieldSystem, ScriptContext *ctx)
{
    u8 *scripts = ScriptContext_LoadScripts(fieldSystem->location->mapId);
    ctx->scripts = scripts;
    ctx->loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, MapHeaderToMsgArchive(fieldSystem->location->mapId), 11);
}

void *ScriptManager_GetMemberPtr(ScriptManager *scriptManager, u32 member)
{
    ApproachingTrainer *trainer;

    switch (member) {
    case 0:
        return &scriptManager->fieldMenuMan;
    case SCRIPT_MANAGER_WINDOW:
        return &scriptManager->window;
    case SCRIPT_MANAGER_UI_CONTROL:
        return &scriptManager->ctrlUI;
    case SCRIPT_MANAGER_MESSAGE_ID:
        return &scriptManager->messageID;
    case SCRIPT_MANAGER_MOVEMENT_COUNT:
        return &scriptManager->movementCount;
    case SCRIPT_MANAGER_SUB_CONTEXT_ACTIVE:
        return &scriptManager->subCtxActive;
    case SCRIPT_MANAGER_IS_MSG_BOX_OPEN:
        return &scriptManager->isMsgBoxOpen;
    case SCRIPT_MANAGER_NUM_ACTIVE_CONTEXTS:
        return &scriptManager->numActiveContexts;
    case SCRIPT_MANAGER_SCRIPT_ID:
        return &scriptManager->scriptID;
    case SCRIPT_MANAGER_PLAYER_DIR:
        return &scriptManager->playerDir;
    case SCRIPT_MANAGER_TARGET_OBJECT:
        return &scriptManager->targetObject;
    case SCRIPT_MANAGER_CAMERA_OBJECT:
        return &scriptManager->cameraObject;
    case SCRIPT_MANAGER_SAVE_TYPE:
        return &scriptManager->saveType;
    case SCRIPT_MANAGER_MAIN_CONTEXT:
        return &scriptManager->ctx[SCRIPT_CONTEXT_MAIN];
    case SCRIPT_MANAGER_SUB_CONTEXT:
        return &scriptManager->ctx[SCRIPT_CONTEXT_SUB];
    case SCRIPT_MANAGER_STR_TEMPLATE:
        return &scriptManager->strTemplate;
    case SCRIPT_MANAGER_MESSAGE_BUF:
        return &scriptManager->msgBuf;
    case SCRIPT_MANAGER_TEMPORARY_BUF:
        return &scriptManager->tmpBuf;
    case SCRIPT_MANAGER_SAVING_ICON:
        return &scriptManager->savingIcon;
    case SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA:
        return &scriptManager->partyManagementDataPtr;
    case SCRIPT_MANAGER_DATA_PTR:
        return &scriptManager->dataPtr;
    case 21:
        return &scriptManager->unk_B0;
    case SCRIPT_MANAGER_PLAYER_TASK:
        return &scriptManager->playerTask;
    case SCRIPT_MANAGER_BATTLE_RESULT:
        return &scriptManager->battleResult;
    case SCRIPT_MANAGER_TRAINER_0_SIGHT_RANGE:
        trainer = &scriptManager->trainers[0];
        return &trainer->sightRange;
    case SCRIPT_MANAGER_TRAINER_0_DIRECTION:
        trainer = &scriptManager->trainers[0];
        return &trainer->direction;
    case SCRIPT_MANAGER_TRAINER_0_SCRIPT_ID:
        trainer = &scriptManager->trainers[0];
        return &trainer->scriptID;
    case SCRIPT_MANAGER_TRAINER_0_ID:
        trainer = &scriptManager->trainers[0];
        return &trainer->trainerID;
    case SCRIPT_MANAGER_TRAINER_0_TYPE:
        trainer = &scriptManager->trainers[0];
        return &trainer->trainerType;
    case SCRIPT_MANAGER_TRAINER_0_MAP_OBJECT:
        trainer = &scriptManager->trainers[0];
        return &trainer->object;
    case SCRIPT_MANAGER_TRAINER_0_TASK:
        trainer = &scriptManager->trainers[0];
        return &trainer->task;
    case SCRIPT_MANAGER_TRAINER_1_SIGHT_RANGE:
        trainer = &scriptManager->trainers[1];
        return &trainer->sightRange;
    case SCRIPT_MANAGER_TRAINER_1_DIRECTION:
        trainer = &scriptManager->trainers[1];
        return &trainer->direction;
    case SCRIPT_MANAGER_TRAINER_1_SCRIPT_ID:
        trainer = &scriptManager->trainers[1];
        return &trainer->scriptID;
    case SCRIPT_MANAGER_TRAINER_1_ID:
        trainer = &scriptManager->trainers[1];
        return &trainer->trainerID;
    case SCRIPT_MANAGER_TRAINER_1_TYPE:
        trainer = &scriptManager->trainers[1];
        return &trainer->trainerType;
    case SCRIPT_MANAGER_TRAINER_1_MAP_OBJECT:
        trainer = &scriptManager->trainers[1];
        return &trainer->object;
    case SCRIPT_MANAGER_TRAINER_1_TASK:
        trainer = &scriptManager->trainers[1];
        return &trainer->task;
    case SCRIPT_MANAGER_COIN_WINDOW:
        return &scriptManager->coinWindow;
    case SCRIPT_MANAGER_MONEY_WINDOW:
        return &scriptManager->moneyWindow;
    case SCRIPT_MANAGER_SAVE_INFO_WINDOW:
        return &scriptManager->saveInfoWin;
    case SCRIPT_DATA_PARAMETER_0:
    case SCRIPT_DATA_PARAMETER_1:
    case SCRIPT_DATA_PARAMETER_2:
    case SCRIPT_DATA_PARAMETER_3:
    case SCRIPT_DATA_BG3_SCROLL_COUNT_X:
    case SCRIPT_DATA_BG3_SCROLL_COUNT_Y:
    case SCRIPT_DATA_DUMMY_0:
    case SCRIPT_DATA_DUMMY_1:
    case SCRIPT_DATA_BG3_SCROLL_DIST_X:
    case SCRIPT_DATA_BG3_SCROLL_DIR_X:
    case SCRIPT_DATA_BG3_SCROLL_DIST_Y:
    case SCRIPT_DATA_BG3_SCROLL_DIR_Y:
    case SCRIPT_DATA_DUMMY_2:
    case SCRIPT_DATA_TARGET_OBJECT_ID:
        return &scriptManager->data[member - SCRIPT_DATA_START];
    }

    GF_ASSERT(FALSE);

    return NULL;
}

void *FieldSystem_GetScriptMemberPtr(FieldSystem *fieldSystem, u32 member)
{
    ScriptManager *script = FieldTask_GetEnv(fieldSystem->task);

    GF_ASSERT(script->magic == SCRIPT_MANAGER_MAGIC_NUMBER);

    return ScriptManager_GetMemberPtr(script, member);
}

void sub_0203F0C0(FieldSystem *fieldSystem)
{
    ScriptManager *scriptManager = FieldTask_GetEnv(fieldSystem->task);

    if (sub_0203A9C8(fieldSystem) == 1) {
        scriptManager->function = sub_0203AB00;
    }
}

static void sub_0203F0E4(ScriptContext *ctx, u16 param1)
{
    ctx->scriptPtr += (param1 * 4);
    ctx->scriptPtr += ScriptContext_ReadWord(ctx);
}

static void *ScriptContext_LoadScripts(int headerID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, MapHeader_GetScriptsArchiveID(headerID), 11);
}

static u32 MapHeaderToMsgArchive(int headerID)
{
    return MapHeader_GetMsgArchiveID(headerID);
}

u16 *FieldSystem_GetVarPointer(FieldSystem *fieldSystem, u16 varID)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (varID < VARS_START) {
        return NULL;
    }

    if (varID < SPECIAL_VARS_START) {
        return VarsFlags_GetVarAddress(varsFlags, varID);
    }

    return FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_START + varID - SPECIAL_VARS_START);
}

u16 FieldSystem_TryGetVar(FieldSystem *fieldSystem, u16 varID)
{
    u16 *var = FieldSystem_GetVarPointer(fieldSystem, varID);

    if (var == NULL) {
        return varID;
    }

    return *var;
}

u16 sub_0203F164(FieldSystem *fieldSystem, u16 varID)
{
    GF_ASSERT(varID < 16);
    return FieldSystem_TryGetVar(fieldSystem, (((0 + VARS_START) + 32) + varID));
}

BOOL FieldSystem_CheckFlag(FieldSystem *fieldSystem, u16 flagID)
{
    return VarsFlags_CheckFlag(SaveData_GetVarsFlags(fieldSystem->saveData), flagID);
}

void FieldSystem_SetFlag(FieldSystem *fieldSystem, u16 flagID)
{
    VarsFlags_SetFlag(SaveData_GetVarsFlags(fieldSystem->saveData), flagID);
}

void FieldSystem_ClearFlag(FieldSystem *fieldSystem, u16 flagID)
{
    VarsFlags_ClearFlag(SaveData_GetVarsFlags(fieldSystem->saveData), flagID);
}

void FieldSystem_ClearLocalFlags(FieldSystem *fieldSystem)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    memset(VarsFlags_GetFlagChunk(varsFlags, 1), 0, (64 / 8));
    memset(VarsFlags_GetVarAddress(varsFlags, (0 + VARS_START)), 0, 2 * 32);
}

void sub_0203F1FC(FieldSystem *fieldSystem)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    memset(VarsFlags_GetFlagChunk(varsFlags, 2400 + 320), 0, 192 / 8);
}

void FieldSystem_SetScriptParameters(FieldSystem *fieldSystem, u16 scriptParam0, u16 scriptParam1, u16 scriptParam2, u16 scriptParam3)
{
    *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_0) = scriptParam0;
    *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_1) = scriptParam1;
    *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_2) = scriptParam2;
    *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_3) = scriptParam3;
}

u16 Script_GetTrainerID(u16 scriptID)
{
    if (scriptID < SCRIPT_ID_OFFSET_DOUBLE_BATTLES) {
        return scriptID - SCRIPT_ID_OFFSET_SINGLE_BATTLES + 1;
    } else {
        return scriptID - SCRIPT_ID_OFFSET_DOUBLE_BATTLES + 1;
    }
}

int Script_GetTrainerBattlerIndex(u16 scriptID)
{
    return !(scriptID < SCRIPT_ID_OFFSET_DOUBLE_BATTLES);
}

BOOL Script_IsTrainerDoubleBattle(u16 trainerID)
{
    return Trainer_LoadParam(trainerID, TRDATA_BATTLE_TYPE) != BATTLE_TYPE_SINGLES;
}

BOOL Script_IsTrainerDefeated(FieldSystem *fieldSystem, u16 trainerID)
{
    return VarsFlags_CheckFlag(SaveData_GetVarsFlags(fieldSystem->saveData), FLAG_OFFSET_TRAINER_DEFEATED + trainerID);
}

void Script_SetTrainerDefeated(FieldSystem *fieldSystem, u16 trainerID)
{
    VarsFlags_SetFlag(SaveData_GetVarsFlags(fieldSystem->saveData), FLAG_OFFSET_TRAINER_DEFEATED + trainerID);
}

void Script_ClearTrainerDefeated(FieldSystem *fieldSystem, u16 trainerID)
{
    VarsFlags_ClearFlag(SaveData_GetVarsFlags(fieldSystem->saveData), FLAG_OFFSET_TRAINER_DEFEATED + trainerID);
}

u16 Script_GetHiddenItemFlag(u16 scriptID)
{
    return scriptID - SCRIPT_ID_OFFSET_HIDDEN_ITEMS + FLAG_OFFSET_HIDDEN_ITEMS;
}

u16 Script_GetHiddenItemScript(u16 scriptID)
{
    return scriptID - SCRIPT_ID_OFFSET_HIDDEN_ITEMS;
}

static u16 sIronIslandHiddenItemFlags[][2] = {
    { MAP_HEADER_IRON_ISLAND_B1F_RIGHT_ROOM, 0x34 },
    { MAP_HEADER_IRON_ISLAND_B2F_RIGHT_ROOM, 0x35 },
    { MAP_HEADER_IRON_ISLAND_B2F_LEFT_ROOM, 0x36 },
    { MAP_HEADER_IRON_ISLAND_B2F_LEFT_ROOM, 0x37 }
};

static u16 sFloaromaMeadowHiddenItemFlags[] = {
    0x3A,
    0x3B,
    0xDB,
    0xDC,
    0xDD,
    0xDE
};

void FieldSystem_ClearDailyHiddenItemFlags(FieldSystem *fieldSystem)
{
    u8 rand = LCRNG_Next() % NELEMS(sIronIslandHiddenItemFlags);

    if (fieldSystem->location->mapId != sIronIslandHiddenItemFlags[rand][0]) {
        FieldSystem_ClearFlag(fieldSystem, (FLAG_OFFSET_HIDDEN_ITEMS + sIronIslandHiddenItemFlags[rand][1]));
    }

    rand = LCRNG_Next() % NELEMS(sIronIslandHiddenItemFlags);

    if (fieldSystem->location->mapId != sIronIslandHiddenItemFlags[rand][0]) {
        FieldSystem_ClearFlag(fieldSystem, FLAG_OFFSET_HIDDEN_ITEMS + sIronIslandHiddenItemFlags[rand][1]);
    }

    if (fieldSystem->location->mapId != MAP_HEADER_FLOAROMA_MEADOW) {
        rand = LCRNG_Next() % NELEMS(sFloaromaMeadowHiddenItemFlags);
        FieldSystem_ClearFlag(fieldSystem, FLAG_OFFSET_HIDDEN_ITEMS + sFloaromaMeadowHiddenItemFlags[rand]);

        rand = LCRNG_Next() % NELEMS(sFloaromaMeadowHiddenItemFlags);
        FieldSystem_ClearFlag(fieldSystem, FLAG_OFFSET_HIDDEN_ITEMS + sFloaromaMeadowHiddenItemFlags[rand]);
    }
}

u8 Script_GetHiddenItemRange(u16 scriptID)
{
    int i;
    const HiddenItem *item = gHiddenItems;
    u16 itemScript = Script_GetHiddenItemScript(scriptID);

    for (i = 0; i < NELEMS(gHiddenItems); i++) {
        if (item[i].script == itemScript) {
            break;
        }
    }

    if (i >= NELEMS(gHiddenItems)) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return item[i].range;
}

static BOOL ScriptManager_SetHiddenItem(ScriptManager *scriptManager, u16 scriptID)
{
    int i;
    u16 *scriptParam0 = ScriptManager_GetMemberPtr(scriptManager, SCRIPT_DATA_PARAMETER_0);
    u16 *scriptParam1 = ScriptManager_GetMemberPtr(scriptManager, SCRIPT_DATA_PARAMETER_1);
    u16 *scriptParam2 = ScriptManager_GetMemberPtr(scriptManager, SCRIPT_DATA_PARAMETER_2);
    const HiddenItem *item = gHiddenItems;
    u16 itemScript = Script_GetHiddenItemScript(scriptID);

    for (i = 0; i < NELEMS(gHiddenItems); i++) {
        if (item[i].script == itemScript) {
            break;
        }
    }

    if (i >= NELEMS(gHiddenItems)) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    *scriptParam0 = item[i].item;
    *scriptParam1 = item[i].qty;
    *scriptParam2 = Script_GetHiddenItemFlag(scriptID);

    return TRUE;
}

UnkStruct_0203F478 *sub_0203F478(FieldSystem *fieldSystem, int param1)
{
    UnkStruct_0203F478 *v0;
    const BgEvent *v1;
    int v2, v3, v4, v5, v6, v7;
    int v8, v9, v10, v11;

    v6 = 0;
    v5 = MapHeaderData_GetNumBgEvents(fieldSystem);
    v5++;
    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203F478) * v5);

    if (v5 == 1) {
        v0[0].unk_04 = 0xff;
        v0[0].unk_00 = 0xffff;
        v0[0].unk_02 = 0xffff;
        return v0;
    }

    v1 = MapHeaderData_GetBgEvents(fieldSystem);

    if (v1 == NULL) {
        v0[0].unk_04 = 0xff;
        v0[0].unk_00 = 0xffff;
        v0[0].unk_02 = 0xffff;
        return v0;
    }

    v2 = Player_GetXPos(fieldSystem->playerAvatar);
    v3 = Player_GetZPos(fieldSystem->playerAvatar);
    v8 = v2 - 7;
    v9 = v2 + 7;
    v10 = v3 - 7;
    v11 = v3 + 6;

    if (v8 < 0) {
        v8 = 0;
    }

    if (v10 < 0) {
        v10 = 0;
    }

    for (v4 = 0; v4 < v5; v4++) {
        if ((v1[v4].type == 2) && (FieldSystem_CheckFlag(fieldSystem, Script_GetHiddenItemFlag(v1[v4].script)) == 0)) {
            if ((v1[v4].x >= v8) && (v1[v4].x <= v9) && (v1[v4].z >= v10) && (v1[v4].z <= v11)) {
                v0[v6].unk_04 = Script_GetHiddenItemRange(v1[v4].script);
                v7 = (v2 - v1[v4].x);
                v0[v6].unk_00 = abs(7 - v7);
                v7 = (v3 - v1[v4].z);
                v0[v6].unk_02 = abs(7 - v7);
                v6++;
            }
        }
    }

    v0[v6].unk_04 = 0xff;
    v0[v6].unk_00 = 0xffff;
    v0[v6].unk_02 = 0xffff;

    return v0;
}

void FieldSystem_InitNewGameState(FieldSystem *fieldSystem)
{
    FieldSystem_RunScript(fieldSystem, SCRIPT_ID(INIT_NEW_GAME, 0));
}

void FieldSystem_RunScript(FieldSystem *fieldSystem, u16 scriptID)
{
    ScriptContext *ctx = ScriptContext_CreateAndStart(fieldSystem, scriptID);

    while (ScriptContext_Run(ctx) == TRUE)
        ;

    ScriptContext_Free(ctx);
}

BOOL sub_0203F5C0(FieldSystem *fieldSystem, u8 param1)
{
    const u8 *initScripts = MapHeaderData_GetInitScripts(fieldSystem);

    if (initScripts == NULL) {
        return FALSE;
    }

    u16 scriptID;
    if (param1 == 1) {
        scriptID = sub_0203F638(fieldSystem, initScripts, param1);
    } else {
        scriptID = sub_0203F610(initScripts, param1);
    }

    if (scriptID == 0xffff) {
        return FALSE;
    }

    if (param1 == 1) {
        ScriptManager_Set(fieldSystem, scriptID, NULL);
    } else {
        FieldSystem_RunScript(fieldSystem, scriptID);
    }

    return TRUE;
}

static u16 sub_0203F610(const u8 *param0, u8 param1)
{
    while (TRUE) {
        if (*param0 == 0) {
            return 0xffff;
        }

        if (*param0 == param1) {
            param0++;
            return *param0 + (*(param0 + 1) << 8);
        }

        param0 += (1 + 2 + 2);
    }

    return 0xffff;
}

static u16 sub_0203F638(FieldSystem *fieldSystem, const u8 *param1, u8 param2)
{
    u16 v0, v1;
    u32 v2;

    v2 = 0;

    while (TRUE) {
        if (*param1 == 0) {
            return 0xffff;
        }

        if ((*param1) == param2) {
            param1++;
            v2 = (*param1 + (*(param1 + 1) << 8) + (*(param1 + 2) << 16) + (*(param1 + 3) << 24));
            param1 += 4;
            break;
        }

        param1 += (1 + 4);
    }

    if (v2 == 0) {
        return 0xffff;
    }

    param1 = (param1 + v2);

    while (TRUE) {
        if (*param1 == 0) {
            return 0xffff;
        }

        v0 = (*param1 + (*(param1 + 1) << 8));

        if (v0 == 0) {
            return 0xffff;
        }

        param1 += 2;
        v1 = (*param1 + (*(param1 + 1) << 8));
        param1 += 2;

        if (FieldSystem_TryGetVar(fieldSystem, v0) == FieldSystem_TryGetVar(fieldSystem, v1)) {
            return *param1 + (*(param1 + 1) << 8);
        }

        param1 += 2;
    }

    return 0xffff;
}
