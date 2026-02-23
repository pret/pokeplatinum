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
#include "string_gf.h"
#include "trainer_data.h"
#include "vars_flags.h"

#include "constdata/const_020EAB80.h"
#include "constdata/const_020EAC58.h"
#include "res/field/scripts/scr_seq.naix"

// clang-format off
#define SCRIPT_RANGE_TABLE(Entry) \
    Entry(SCRIPT_ID_OFFSET_SCRATCH_OFF_CARDS,              scripts_scratch_off_cards,              TEXT_BANK_SCRATCH_OFF_CARDS) \
    Entry(SCRIPT_ID_OFFSET_BATTLE_TOWER_RECORDS,           scripts_battle_tower_records,           TEXT_BANK_BATTLE_TOWER_RECORDS) \
    Entry(SCRIPT_ID_OFFSET_POKEMON_CENTER_DAILY_TRAINERS,  scripts_pokemon_center_daily_trainers,  TEXT_BANK_POKEMON_CENTER_DAILY_TRAINERS) \
    Entry(SCRIPT_ID_OFFSET_COUNTERPART_TALK,               scripts_counterpart_talk,               TEXT_BANK_COUNTERPART_TALK) \
    Entry(SCRIPT_ID_OFFSET_MYSTERY_GIFT_DELIVERYMAN,       scripts_mystery_gift_deliveryman,       TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN) \
    Entry(SCRIPT_ID_OFFSET_TV_REPORTER_INTERVIEWS,         scripts_tv_reporter_interviews,         TEXT_BANK_TV_REPORTER_INTERVIEWS) \
    Entry(SCRIPT_ID_OFFSET_TV_BROADCAST,                   scripts_tv_broadcast,                   TEXT_BANK_TV_PROGRAMS) \
    Entry(SCRIPT_ID_OFFSET_FIELD_MOVES,                    scripts_field_moves,                    TEXT_BANK_FIELD_MOVES) \
    Entry(SCRIPT_ID_OFFSET_POKEDEX_RATINGS,                scripts_pokedex_ratings,                TEXT_BANK_POKEDEX_RATINGS) \
    Entry(9900,                                            scripts_unk_0397,                       TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_CONTEST_REGISTRATION,           scripts_contest_registration,           TEXT_BANK_CONTEST_REGISTRATION) \
    Entry(SCRIPT_ID_OFFSET_FOLLOWER_PARTNERS,              scripts_follower_partners,              TEXT_BANK_FOLLOWER_PARTNERS) \
    Entry(SCRIPT_ID_OFFSET_INIT_NEW_GAME,                  scripts_init_new_game,                  TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_DAY_CARE_COMMON,                scripts_day_care_common,                TEXT_BANK_DAY_CARE_COMMON) \
    Entry(SCRIPT_ID_OFFSET_POFFIN_COMMON,                  scripts_poffin_common,                  TEXT_BANK_POFFIN_COMMON) \
    Entry(SCRIPT_ID_OFFSET_GROUP_CONNECTION,               scripts_group_connection,               TEXT_BANK_GROUP_CONNECTION) \
    Entry(SCRIPT_ID_OFFSET_POKEMON_CENTER_B1F_ATTENDANTS,  scripts_pokemon_center_b1f_attendants,  TEXT_BANK_POKEMON_CENTER_B1F_ATTENDANTS) \
    Entry(SCRIPT_ID_OFFSET_COMMUNICATION_CLUB,             scripts_communication_club,             TEXT_BANK_COMMUNICATION_CLUB) \
    Entry(SCRIPT_ID_OFFSET_POKEMON_CENTER_2F_ATTENDANTS,   scripts_pokemon_center_2f_attendants,   TEXT_BANK_POKEMON_CENTER_2F_ATTENDANTS) \
    Entry(SCRIPT_ID_OFFSET_POKE_RADAR,                     scripts_poke_radar,                     TEXT_BANK_BAG) \
    Entry(SCRIPT_ID_OFFSET_VS_SEEKER,                      scripts_vs_seeker,                      TEXT_BANK_VS_SEEKER) \
    Entry(SCRIPT_ID_OFFSET_RECORD_CHATOT_CRY,              scripts_record_chatot_cry,              TEXT_BANK_RECORD_CHATOT_CRY) \
    Entry(SCRIPT_ID_OFFSET_SAFARI_GAME,                    scripts_safari_game,                    TEXT_BANK_SAFARI_GAME) \
    Entry(SCRIPT_ID_OFFSET_HIDDEN_ITEMS,                   scripts_hidden_items,                   TEXT_BANK_HIDDEN_ITEMS) \
    Entry(SCRIPT_ID_OFFSET_VISIBLE_ITEMS,                  scripts_visible_items,                  TEXT_BANK_VISIBLE_ITEMS) \
    Entry(SCRIPT_ID_OFFSET_DOUBLE_BATTLES,                 scripts_battles,                        TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_SINGLE_BATTLES,                 scripts_battles,                        TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_BERRY_TREE_INTERACTIONS,        scripts_berry_tree_interaction,         TEXT_BANK_BERRY_TREES) \
    Entry(SCRIPT_ID_OFFSET_BG_EVENTS,                      scripts_bg_events,                      TEXT_BANK_BG_EVENTS) \
    Entry(SCRIPT_ID_OFFSET_COMMON_SCRIPTS,                 scripts_common,                         TEXT_BANK_COMMON_STRINGS)
// clang-format on

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
static u16 FieldSystem_GetFixedInitScriptID(const u8 *initScriptBytes, u8 initScriptType);
static u16 FieldSystem_GetFrameTableInitScriptID(FieldSystem *fieldSystem, const u8 *initScriptBytes, u8 initScriptType);

void ScriptManager_Set(FieldSystem *fieldSystem, u16 scriptID, MapObject *object)
{
    ScriptManager *scriptManager = ScriptManager_New();

    ScriptManager_Init(fieldSystem, scriptManager, scriptID, object, NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_RunScript, scriptManager);
}

void ScriptManager_SetApproachingTrainer(FieldSystem *fieldSystem, MapObject *object, int sightRange, int direction, int scriptID, int trainerID, int param6, int approachNum)
{
    ScriptManager *scriptManager = FieldTask_GetEnv(fieldSystem->task);
    ApproachingTrainer *trainer = &scriptManager->trainers[approachNum];

    trainer->sightRange = sightRange;
    trainer->direction = direction;
    trainer->scriptID = scriptID;
    trainer->trainerID = trainerID;
    trainer->unk_10 = param6;
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
        scriptManager->strTemplate = StringTemplate_New(8, 64, HEAP_ID_FIELD2);
        scriptManager->msgBuf = String_Init(1024, HEAP_ID_FIELD2);
        scriptManager->tmpBuf = String_Init(1024, HEAP_ID_FIELD2);
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
            String_Free(scriptManager->msgBuf);
            String_Free(scriptManager->tmpBuf);
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
    ScriptManager *scriptManager = Heap_Alloc(HEAP_ID_FIELD2, sizeof(ScriptManager));

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

    if (scriptID >= SCRIPT_ID_OFFSET_HIDDEN_ITEMS && scriptID <= SCRIPT_ID_OFFSET_SAFARI_GAME - 1) {
        ScriptManager_SetHiddenItem(scriptManager, scriptID);
    }
}

ScriptContext *ScriptContext_CreateAndStart(FieldSystem *fieldSystem, u16 scriptID)
{
    ScriptContext *ctx = Heap_Alloc(HEAP_ID_FIELD2, sizeof(ScriptContext));

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

    // clang-format off
#define SCRIPT_ENTRY(threshold, script, textbank) \
    else if (retScriptID >= threshold) { \
        ScriptContext_Load(fieldSystem, ctx, script, textbank); \
        retScriptID -= threshold; \
    }
    if (0) {}
    SCRIPT_RANGE_TABLE(SCRIPT_ENTRY)
#undef SCRIPT_ENTRY
    // clang-format on

    else if (retScriptID >= 1)
    {
        ScriptContext_LoadFromCurrentMap(fieldSystem, ctx);
        retScriptID -= 1;
    }
    else
    {
        ScriptContext_Load(fieldSystem, ctx, scripts_unk_0402, TEXT_BANK_DUMMY_0355);
        retScriptID = 0;
    }

    return retScriptID;
}

static void ScriptContext_Load(FieldSystem *fieldSystem, ScriptContext *ctx, int scriptFile, u32 textBank)
{
    u8 *scripts = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, scriptFile, 11);
    ctx->scripts = scripts;
    ctx->loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, textBank, HEAP_ID_FIELD2);
}

static void ScriptContext_LoadFromCurrentMap(FieldSystem *fieldSystem, ScriptContext *ctx)
{
    u8 *scripts = ScriptContext_LoadScripts(fieldSystem->location->mapId);
    ctx->scripts = scripts;
    ctx->loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, MapHeaderToMsgArchive(fieldSystem->location->mapId), HEAP_ID_FIELD2);
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
        return &trainer->unk_10;
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
        return &trainer->unk_10;
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
    return FieldSystem_TryGetVar(fieldSystem, OBJ_GFX_VARS_START + graphicsVarID);
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

    memset(VarsFlags_GetFlagChunk(varsFlags, 1), 0, 64 / 8);
    memset(VarsFlags_GetVarAddress(varsFlags, VARS_START), 0, 2 * 32);
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
        FieldSystem_ClearFlag(fieldSystem, FLAG_OFFSET_HIDDEN_ITEMS + sIronIslandHiddenItemFlags[rand][1]);
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

HiddenItemTilePosition *FieldSystem_GetNearbyHiddenItems(FieldSystem *fieldSystem, enum HeapID heapID)
{
    HiddenItemTilePosition *hiddenItems;
    const BgEvent *bgEvents;
    int playerX, playerZ, eventIndex, numBgEvents, itemIndex, distance;
    int playerMinX, playerMaxX, playerMinZ, playerMaxZ;

    itemIndex = 0;
    numBgEvents = MapHeaderData_GetNumBgEvents(fieldSystem);
    numBgEvents++;
    hiddenItems = Heap_Alloc(heapID, sizeof(HiddenItemTilePosition) * numBgEvents);

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
    if (initScriptType == INIT_SCRIPT_ON_FRAME_TABLE) {
        scriptID = FieldSystem_GetFrameTableInitScriptID(fieldSystem, initScriptBytes, initScriptType);
    } else {
        scriptID = FieldSystem_GetFixedInitScriptID(initScriptBytes, initScriptType);
    }

    if (scriptID == 0xffff) {
        return FALSE;
    }

    if (initScriptType == INIT_SCRIPT_ON_FRAME_TABLE) {
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

static u16 FieldSystem_GetFrameTableInitScriptID(FieldSystem *fieldSystem, const u8 *initScriptBytes, u8 initScriptType)
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
