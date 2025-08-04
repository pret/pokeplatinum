#include "script_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "generated/bg_event_types.h"
#include "generated/map_headers.h"

#include "data/field/hidden_items.h"
#include "field/field_system.h"

#include "field_task.h"
#include "heap.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "player_avatar.h"
#include "start_menu.h"
#include "strbuf.h"
#include "trainer_data.h"
#include "vars_flags.h"

#include "constdata/const_020EAB80.h"
#include "constdata/const_020EAC58.h"
#include "res/field/scripts/scr_seq.naix.h"

static BOOL FieldTask_RunScript(FieldTask *taskManager);
static ScriptManager *ScriptManager_New();
static void ScriptContext_Free(ScriptContext *ctx);
static void ScriptManager_Init(FieldSystem *fieldSystem, ScriptManager *scriptManager, u16 scriptID, MapObject *object, void *saveType);
static void ScriptContext_LoadAndStart(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID, u8 dummy);
static u16 ScriptContext_LoadAndOffsetID(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID);
static void ScriptContext_Load(FieldSystem *fieldSystem, ScriptContext *ctx, int scriptFile, u32 textBank);
static void ScriptContext_LoadFromCurrentMap(FieldSystem *fieldSystem, ScriptContext *ctx);
static void ScriptContext_JumpToOffsetID(ScriptContext *ctx, u16 param1);
static void *ScriptContext_LoadScripts(int headerID);
static u32 MapHeaderToMsgArchive(int headerID);
static BOOL ScriptManager_SetHiddenItem(ScriptManager *scriptManager, u16 scriptID);
static u16 FieldSystem_GetFixedInitScriptID(const u8 *param0, u8 param1);
static u16 FieldSystem_GetFirstMatchInitScriptID(FieldSystem *fieldSystem, const u8 *param1, u8 param2);

void ScriptManager_Set(FieldSystem *fieldSystem, u16 scriptID, MapObject *object)
{
    ScriptManager *scriptManager = ScriptManager_New();

    ScriptManager_Init(fieldSystem, scriptManager, scriptID, object, NULL);
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

    ScriptManager_Init(fieldSystem, scriptManager, scriptID, object, saveType);
    FieldTask_InitCall(taskManager, FieldTask_RunScript, scriptManager);
}

void ScriptManager_Change(FieldTask *taskManager, u16 scriptID, MapObject *object)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskManager);
    ScriptManager *scriptManager = ScriptManager_New();

    ScriptManager_Init(fieldSystem, scriptManager, scriptID, object, NULL);
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
        scriptManager->strTemplate = StringTemplate_New(8, 64, HEAP_ID_FIELDMAP);
        scriptManager->msgBuf = Strbuf_Init(1024, HEAP_ID_FIELDMAP);
        scriptManager->tmpBuf = Strbuf_Init(1024, HEAP_ID_FIELDMAP);
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
            Heap_Free(scriptManager);

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
    Heap_Free(ctx->scripts);
    Heap_Free(ctx);
}

static void ScriptManager_Init(FieldSystem *fieldSystem, ScriptManager *scriptManager, u16 scriptID, MapObject *object, void *saveType)
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
    ScriptContext_LoadAndStart(fieldSystem, ctx, scriptID, 0);

    return ctx;
}

static void ScriptContext_LoadAndStart(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID, u8 dummy)
{
    ctx->fieldSystem = fieldSystem;
    u16 offsetID = ScriptContext_LoadAndOffsetID(fieldSystem, ctx, scriptID);

    ScriptContext_Start(ctx, ctx->scripts);
    ScriptContext_JumpToOffsetID(ctx, offsetID);
    ScriptContext_SetTask(ctx, fieldSystem->task);
}

static u16 ScriptContext_LoadAndOffsetID(FieldSystem *fieldSystem, ScriptContext *ctx, u16 scriptID)
{
    u16 retScriptID = scriptID;

    if (retScriptID >= 10490) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0499, TEXT_BANK_SCRATCH_OFF_CARDS);
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
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0407, TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN);
        retScriptID -= 10200;
    } else if (retScriptID >= 10150) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1116, TEXT_BANK_UNK_0621);
        retScriptID -= 10150;
    } else if (retScriptID >= 10100) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_1115, TEXT_BANK_UNK_0622);
        retScriptID -= 10100;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_FIELD_MOVES) {
        ScriptContext_Load(fieldSystem, ctx, scripts_field_moves, TEXT_BANK_FIELD_MOVES);
        retScriptID -= SCRIPT_ID_OFFSET_FIELD_MOVES;
    } else if (retScriptID >= 9950) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0411, TEXT_BANK_UNK_0383);
        retScriptID -= 9950;
    } else if (retScriptID >= 9900) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0397, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= 9900;
    } else if (retScriptID >= 9800) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0212, TEXT_BANK_UNK_0217);
        retScriptID -= 9800;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_FOLLOWER_PARTNERS) {
        ScriptContext_Load(fieldSystem, ctx, scripts_follower_partners, TEXT_BANK_FOLLOWER_PARTNERS);
        retScriptID -= SCRIPT_ID_OFFSET_FOLLOWER_PARTNERS;
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
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0413, TEXT_BANK_BERRY_TREES);
        retScriptID -= 2800;
    } else if (retScriptID >= 2500) {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0001, TEXT_BANK_UNK_0017);
        retScriptID -= 2500;
    } else if (retScriptID >= SCRIPT_ID_OFFSET_COMMON_SCRIPTS) {
        ScriptContext_Load(fieldSystem, ctx, scripts_common, TEXT_BANK_COMMON_STRINGS);
        retScriptID -= SCRIPT_ID_OFFSET_COMMON_SCRIPTS;
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
    ctx->loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, textBank, HEAP_ID_FIELDMAP);
}

static void ScriptContext_LoadFromCurrentMap(FieldSystem *fieldSystem, ScriptContext *ctx)
{
    u8 *scripts = ScriptContext_LoadScripts(fieldSystem->location->mapId);
    ctx->scripts = scripts;
    ctx->loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, MapHeaderToMsgArchive(fieldSystem->location->mapId), HEAP_ID_FIELDMAP);
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
    case SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW:
        return &scriptManager->specialCurrencyWindow;
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

void FieldSystem_ShowStartMenu(FieldSystem *fieldSystem)
{
    ScriptManager *scriptManager = FieldTask_GetEnv(fieldSystem->task);

    if (sub_0203A9C8(fieldSystem) == TRUE) {
        scriptManager->function = StartMenu_Open;
    }
}

static void ScriptContext_JumpToOffsetID(ScriptContext *ctx, u16 offsetID)
{
    ctx->scriptPtr += (offsetID * 4);
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

    if (varID < SCRIPT_LOCAL_VARS_START) {
        return VarsFlags_GetVarAddress(varsFlags, varID);
    }

    return FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_START + varID - SCRIPT_LOCAL_VARS_START);
}

u16 FieldSystem_TryGetVar(FieldSystem *fieldSystem, u16 varID)
{
    u16 *var = FieldSystem_GetVarPointer(fieldSystem, varID);

    if (var == NULL) {
        return varID;
    }

    return *var;
}

u16 FieldSystem_GetGraphicsID(FieldSystem *fieldSystem, u16 graphicsVarID)
{
    GF_ASSERT(graphicsVarID < 16);
    return FieldSystem_TryGetVar(fieldSystem, (((0 + VARS_START) + 32) + graphicsVarID));
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

HiddenItemTilePosition *FieldSystem_GetNearbyHiddenItems(FieldSystem *fieldSystem, int heapID)
{
    HiddenItemTilePosition *hiddenItems;
    const BgEvent *bgEvents;
    int playerX, playerZ, eventIndex, numBgEvents, itemIndex, distance;
    int playerMinX, playerMaxX, playerMinZ, playerMaxZ;

    itemIndex = 0;
    numBgEvents = MapHeaderData_GetNumBgEvents(fieldSystem);
    numBgEvents++;
    hiddenItems = Heap_AllocFromHeap(heapID, sizeof(HiddenItemTilePosition) * numBgEvents);

    if (numBgEvents == 1) {
        hiddenItems[0].range = 0xff;
        hiddenItems[0].screenTileX = 0xffff;
        hiddenItems[0].screenTileZ = 0xffff;
        return hiddenItems;
    }

    bgEvents = MapHeaderData_GetBgEvents(fieldSystem);

    if (bgEvents == NULL) {
        hiddenItems[0].range = 0xff;
        hiddenItems[0].screenTileX = 0xffff;
        hiddenItems[0].screenTileZ = 0xffff;
        return hiddenItems;
    }

    playerX = Player_GetXPos(fieldSystem->playerAvatar);
    playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    playerMinX = playerX - 7;
    playerMaxX = playerX + 7;
    playerMinZ = playerZ - 7;
    playerMaxZ = playerZ + 6;

    if (playerMinX < 0) {
        playerMinX = 0;
    }

    if (playerMinZ < 0) {
        playerMinZ = 0;
    }

    for (eventIndex = 0; eventIndex < numBgEvents; eventIndex++) {
        if ((bgEvents[eventIndex].type == BG_EVENT_TYPE_HIDDEN_ITEM) && (FieldSystem_CheckFlag(fieldSystem, Script_GetHiddenItemFlag(bgEvents[eventIndex].script)) == FALSE)) {
            if ((bgEvents[eventIndex].x >= playerMinX) && (bgEvents[eventIndex].x <= playerMaxX) && (bgEvents[eventIndex].z >= playerMinZ) && (bgEvents[eventIndex].z <= playerMaxZ)) {
                hiddenItems[itemIndex].range = Script_GetHiddenItemRange(bgEvents[eventIndex].script);
                distance = (playerX - bgEvents[eventIndex].x);
                hiddenItems[itemIndex].screenTileX = abs(7 - distance);
                distance = (playerZ - bgEvents[eventIndex].z);
                hiddenItems[itemIndex].screenTileZ = abs(7 - distance);
                itemIndex++;
            }
        }
    }

    hiddenItems[itemIndex].range = 0xff;
    hiddenItems[itemIndex].screenTileX = 0xffff;
    hiddenItems[itemIndex].screenTileZ = 0xffff;

    return hiddenItems;
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

BOOL FieldSystem_RunInitScript(FieldSystem *fieldSystem, u8 initScriptType)
{
    const u8 *initScriptBytes = MapHeaderData_GetInitScriptBytes(fieldSystem);

    if (initScriptBytes == NULL) {
        return FALSE;
    }

    u16 scriptID;
    if (initScriptType == INIT_SCRIPT_TYPE_FIRST_MATCH) {
        scriptID = FieldSystem_GetFirstMatchInitScriptID(fieldSystem, initScriptBytes, initScriptType);
    } else {
        scriptID = FieldSystem_GetFixedInitScriptID(initScriptBytes, initScriptType);
    }

    if (scriptID == 0xffff) {
        return FALSE;
    }

    if (initScriptType == INIT_SCRIPT_TYPE_FIRST_MATCH) {
        ScriptManager_Set(fieldSystem, scriptID, NULL);
    } else {
        FieldSystem_RunScript(fieldSystem, scriptID);
    }

    return TRUE;
}

#define GET8(bytes)  *bytes
#define GET16(bytes) bytes[0] + (bytes[1] << 8)
#define GET32(bytes) bytes[0] + (bytes[1] << 8) + (bytes[2] << 16) + (bytes[3] << 24)

static u16 FieldSystem_GetFixedInitScriptID(const u8 *initScriptBytes, u8 initScriptType)
{
    while (TRUE) {
        if (GET8(initScriptBytes) == 0) {
            return 0xffff;
        }

        if (GET8(initScriptBytes) == initScriptType) {
            initScriptBytes++;
            return GET16(initScriptBytes);
        }

        initScriptBytes += (1 + 2 + 2);
    }

    return 0xffff;
}

static u16 FieldSystem_GetFirstMatchInitScriptID(FieldSystem *fieldSystem, const u8 *initScriptBytes, u8 initScriptType)
{
    u16 currentVar, compareVar;
    u32 offset = 0;

    while (TRUE) {
        if (GET8(initScriptBytes) == 0) {
            return 0xffff;
        }

        if (GET8(initScriptBytes) == initScriptType) {
            initScriptBytes++;
            offset = GET32(initScriptBytes);
            initScriptBytes += 4;
            break;
        }

        initScriptBytes += (1 + 4);
    }

    if (offset == 0) {
        return 0xffff;
    }

    initScriptBytes = (initScriptBytes + offset);

    while (TRUE) {
        if (GET8(initScriptBytes) == 0) {
            return 0xffff;
        }

        currentVar = GET16(initScriptBytes);

        if (currentVar == 0) {
            return 0xffff;
        }

        initScriptBytes += 2;
        compareVar = GET16(initScriptBytes);
        initScriptBytes += 2;

        if (FieldSystem_TryGetVar(fieldSystem, currentVar) == FieldSystem_TryGetVar(fieldSystem, compareVar)) {
            return GET16(initScriptBytes);
        }

        initScriptBytes += 2;
    }

    return 0xffff;
}
