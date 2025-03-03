#ifndef POKEPLATINUM_SCRIPT_MANAGER_H
#define POKEPLATINUM_SCRIPT_MANAGER_H

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0203F478.h"

#include "field/field_system_decl.h"
#include "overlay005/field_menu.h"
#include "overlay005/save_info_window.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "bg_window.h"
#include "field_script_context.h"
#include "field_task.h"
#include "menu.h"
#include "string_template.h"
#include "sys_task_manager.h"

enum ScriptManagerMember {
    SCRIPT_MANAGER_WINDOW = 1,
    SCRIPT_MANAGER_UI_CONTROL,
    SCRIPT_MANAGER_MESSAGE_ID,
    SCRIPT_MANAGER_MOVEMENT_COUNT,
    SCRIPT_MANAGER_SUB_CONTEXT_ACTIVE,
    SCRIPT_MANAGER_IS_MSG_BOX_OPEN,
    SCRIPT_MANAGER_NUM_ACTIVE_CONTEXTS,
    SCRIPT_MANAGER_SCRIPT_ID,
    SCRIPT_MANAGER_PLAYER_DIR,
    SCRIPT_MANAGER_TARGET_OBJECT,
    SCRIPT_MANAGER_CAMERA_OBJECT,
    SCRIPT_MANAGER_SAVE_TYPE,
    SCRIPT_MANAGER_MAIN_CONTEXT,
    SCRIPT_MANAGER_SUB_CONTEXT,
    SCRIPT_MANAGER_STR_TEMPLATE,
    SCRIPT_MANAGER_MESSAGE_BUF,
    SCRIPT_MANAGER_TEMPORARY_BUF,
    SCRIPT_MANAGER_SAVING_ICON,
    SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA,
    SCRIPT_MANAGER_DATA_PTR,

    SCRIPT_MANAGER_PLAYER_TASK = 22,
    SCRIPT_MANAGER_BATTLE_RESULT,
    SCRIPT_MANAGER_TRAINER_0_SIGHT_RANGE,
    SCRIPT_MANAGER_TRAINER_0_DIRECTION,
    SCRIPT_MANAGER_TRAINER_0_SCRIPT_ID,
    SCRIPT_MANAGER_TRAINER_0_ID,
    SCRIPT_MANAGER_TRAINER_0_TYPE,
    SCRIPT_MANAGER_TRAINER_0_MAP_OBJECT,
    SCRIPT_MANAGER_TRAINER_0_TASK,
    SCRIPT_MANAGER_TRAINER_1_SIGHT_RANGE,
    SCRIPT_MANAGER_TRAINER_1_DIRECTION,
    SCRIPT_MANAGER_TRAINER_1_SCRIPT_ID,
    SCRIPT_MANAGER_TRAINER_1_ID,
    SCRIPT_MANAGER_TRAINER_1_TYPE,
    SCRIPT_MANAGER_TRAINER_1_MAP_OBJECT,
    SCRIPT_MANAGER_TRAINER_1_TASK,
    SCRIPT_MANAGER_COIN_WINDOW,
    SCRIPT_MANAGER_MONEY_WINDOW,
    SCRIPT_MANAGER_SAVE_INFO_WINDOW,
    SCRIPT_DATA_START,
    SCRIPT_DATA_PARAMETER_0 = SCRIPT_DATA_START, // used for storing the mon's party slot when you use a field move, the item ID for hidden items, and steps for the PokeRadar
    SCRIPT_DATA_PARAMETER_1, //  used for storing hidden item quantities.
    SCRIPT_DATA_PARAMETER_2, // used for storing hidden item quantities and flags respectively.
    SCRIPT_DATA_PARAMETER_3, // unused
    // The BG3 data below are a set of parameters for the unused script command ScrollBG3.
    SCRIPT_DATA_BG3_SCROLL_COUNT_X,
    SCRIPT_DATA_BG3_SCROLL_COUNT_Y,
    SCRIPT_DATA_DUMMY_0,
    SCRIPT_DATA_DUMMY_1,
    SCRIPT_DATA_BG3_SCROLL_DIST_X,
    SCRIPT_DATA_BG3_SCROLL_DIR_X,
    SCRIPT_DATA_BG3_SCROLL_DIST_Y,
    SCRIPT_DATA_BG3_SCROLL_DIR_Y,
    SCRIPT_DATA_DUMMY_2,
    SCRIPT_DATA_TARGET_OBJECT_ID,

    SCRIPT_DATA_MAX
};

enum ScriptContextType {
    SCRIPT_CONTEXT_MAIN,
    SCRIPT_CONTEXT_SUB,
    NUM_SCRIPT_CONTEXTS
};

#define SCRIPT_ID(chunk, id)                    ((SCRIPT_ID_OFFSET_##chunk) + id)
#define SCRIPT_ID_OFFSET_SINGLE_BATTLES         3000
#define SCRIPT_ID_OFFSET_DOUBLE_BATTLES         5000
#define SCRIPT_ID_OFFSET_HIDDEN_ITEMS           8000
#define SCRIPT_ID_OFFSET_SAFARI_ZONE            8800
#define SCRIPT_ID_OFFSET_INIT_NEW_GAME          9600
#define SCRIPT_ID_POKEMON_CENTER_DAILY_TRAINERS 10400

#define FLAG_OFFSET_HIDDEN_ITEMS     730
#define FLAG_OFFSET_TRAINER_DEFEATED 1360

#define SCRIPT_MANAGER_MAGIC_NUMBER 0x3643F

typedef void (*FieldSysFunc)(FieldSystem *);

typedef struct ApproachingTrainer {
    int sightRange;
    int direction;
    int scriptID;
    int trainerID;
    int trainerType;
    MapObject *object;
    SysTask *task;
} ApproachingTrainer;

typedef struct ScriptManager {
    u32 magic;
    u8 state;
    u8 messageID;
    u8 movementCount;
    u8 subCtxActive;
    u8 isMsgBoxOpen;
    u8 numActiveContexts;
    u16 scriptID;
    BOOL battleResult;
    FieldMenuManager *fieldMenuMan; // used for multichoice windows
    Window window;
    Menu *ctrlUI;
    int playerDir;
    MapObject *targetObject;
    MapObject *cameraObject;
    u16 *saveType; // the result of the check to determine what type of save is required in ScrCmd_CheckSaveType
    ScriptContext *ctx[NUM_SCRIPT_CONTEXTS];
    StringTemplate *strTemplate;
    Strbuf *msgBuf;
    Strbuf *tmpBuf;
    void *savingIcon;
    ApproachingTrainer trainers[2];
    u16 data[SCRIPT_DATA_MAX - SCRIPT_DATA_START];
    FieldSysFunc function;
    void *partyManagementDataPtr;
    void *dataPtr; // used as a generic pointer to data in many different script commands
    UnkStruct_ov101_021D5D90 *unk_B0;
    SysTask *playerTask; // used to set player sprite animations while saving
    Window coinWindow;
    Window moneyWindow;
    SaveInfoWindow *saveInfoWin;
} ScriptManager;

void ScriptManager_Set(FieldSystem *fieldSystem, u16 scriptID, MapObject *object);
void ScriptManager_SetApproachingTrainer(FieldSystem *fieldSystem, MapObject *object, int sightRange, int direction, int scriptID, int trainerID, int trainerType, int approachNum);
void ScriptManager_Start(FieldTask *taskManager, u16 scriptID, MapObject *object, void *saveType);
void ScriptManager_Change(FieldTask *taskManager, u16 scriptID, MapObject *object);
ScriptContext *ScriptContext_CreateAndStart(FieldSystem *fieldSystem, u16 scriptID);
void *ScriptManager_GetMemberPtr(ScriptManager *scriptManager, u32 member);
void *FieldSystem_GetScriptMemberPtr(FieldSystem *fieldSystem, u32 member);
void sub_0203F0C0(FieldSystem *fieldSystem);
u16 *FieldSystem_GetVarPointer(FieldSystem *fieldSystem, u16 varID);
u16 FieldSystem_TryGetVar(FieldSystem *fieldSystem, u16 varID);
u16 sub_0203F164(FieldSystem *fieldSystem, u16 param1);
BOOL FieldSystem_CheckFlag(FieldSystem *fieldSystem, u16 flagID);
void FieldSystem_SetFlag(FieldSystem *fieldSystem, u16 flagID);
void FieldSystem_ClearFlag(FieldSystem *fieldSystem, u16 flagID);
void FieldSystem_ClearLocalFlags(FieldSystem *fieldSystem);
void sub_0203F1FC(FieldSystem *fieldSystem);
void FieldSystem_SetScriptParameters(FieldSystem *fieldSystem, u16 scriptParam0, u16 scriptParam1, u16 scriptParam2, u16 scriptParam3);
u16 Script_GetTrainerID(u16 scriptID);
BOOL Script_GetTrainerBattlerIndex(u16 scriptID);
BOOL Script_IsTrainerDoubleBattle(u16 trainerID);
BOOL Script_IsTrainerDefeated(FieldSystem *fieldSystem, u16 trainerID);
void Script_SetTrainerDefeated(FieldSystem *fieldSystem, u16 trainerID);
void Script_ClearTrainerDefeated(FieldSystem *fieldSystem, u16 trainerID);
u16 Script_GetHiddenItemFlag(u16 scriptID);
u16 Script_GetHiddenItemScript(u16 scriptID);
void FieldSystem_ClearDailyHiddenItemFlags(FieldSystem *fieldSystem);
u8 Script_GetHiddenItemRange(u16 scriptID);
UnkStruct_0203F478 *sub_0203F478(FieldSystem *fieldSystem, int heapID);
void FieldSystem_InitNewGameState(FieldSystem *fieldSystem);
void FieldSystem_RunScript(FieldSystem *fieldSystem, u16 scriptID);
BOOL sub_0203F5C0(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_SCRIPT_MANAGER_H
