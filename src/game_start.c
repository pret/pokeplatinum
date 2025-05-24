#include "game_start.h"

#include "constants/game_options.h"
#include "constants/heap.h"

#include "berry_patches.h"
#include "game_options.h"
#include "heap.h"
#include "location.h"
#include "main.h"
#include "math_util.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "system_data.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_02017428.h"
#include "unk_0205C980.h"
#include "unk_0206B9D8.h"
#include "vars_flags.h"

#include "constdata/const_020EA10C.h"
#include "constdata/const_020EA11C.h"
#include "constdata/const_020F6824.h"

static int GameStartRowanIntro_Init(ApplicationManager *appMan, int *state);
static int GameStartRowanIntro_Main(ApplicationManager *appMan, int *state);
static int GameStartRowanIntro_Exit(ApplicationManager *appMan, int *state);
static int GameStartNewSave_Init(ApplicationManager *appMan, int *state);
static int GameStartNewSave_Main(ApplicationManager *appMan, int *state);
static int GameStartNewSave_Exit(ApplicationManager *appMan, int *state);
static int GameStartLoadSave_Init(ApplicationManager *appMan, int *state);
static int GameStartLoadSave_Main(ApplicationManager *appMan, int *state);
static int GameStartLoadSave_Exit(ApplicationManager *appMan, int *state);

static void InitializeNewSave(enum HeapId heapID, SaveData *saveData, BOOL setTrainerID);
static void TryLoadingSave(int unused, SaveData *saveData);
static void StartNewSave(int unused, SaveData *saveData);

const ApplicationManagerTemplate gGameStartRowanIntroAppTemplate = {
    .init = GameStartRowanIntro_Init,
    .main = GameStartRowanIntro_Main,
    .exit = GameStartRowanIntro_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

const ApplicationManagerTemplate gGameStartNewSaveAppTemplate = {
    .init = GameStartNewSave_Init,
    .main = GameStartNewSave_Main,
    .exit = GameStartNewSave_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

const ApplicationManagerTemplate gGameStartLoadSaveAppTemplate = {
    .init = GameStartLoadSave_Init,
    .main = GameStartLoadSave_Main,
    .exit = GameStartLoadSave_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

static BOOL GameStartRowanIntro_Init(ApplicationManager *appMan, int *state)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_GAME_START, HEAP_SIZE_GAME_START);
    InitRNG();
    return TRUE;
}

static BOOL GameStartRowanIntro_Main(ApplicationManager *appMan, int *state)
{
    SaveData *saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    StartNewSave(HEAP_ID_GAME_START, saveData);
    return TRUE;
}

static int GameStartRowanIntro_Exit(ApplicationManager *appMan, int *state)
{
    Heap_Destroy(HEAP_ID_GAME_START);
    EnqueueApplication(FS_OVERLAY_ID_NONE, &Unk_020F6824);
    return TRUE;
}

static int GameStartNewSave_Init(ApplicationManager *appMan, int *state)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_GAME_START, HEAP_SIZE_GAME_START);
    InitRNG();
    return TRUE;
}

static int GameStartNewSave_Main(ApplicationManager *appMan, int *state)
{
    SaveData *saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    InitializeNewSave(HEAP_ID_GAME_START, saveData, 1);
    PlayTime_Start(SaveData_GetPlayTime(saveData));
    return TRUE;
}

static int GameStartNewSave_Exit(ApplicationManager *appMan, int *state)
{
    Heap_Destroy(HEAP_ID_GAME_START);
    EnqueueApplication(FS_OVERLAY_ID_NONE, &gFieldSystemNewGameTemplate);
    return TRUE;
}

static int GameStartLoadSave_Init(ApplicationManager *appMan, int *state)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_GAME_START, HEAP_SIZE_GAME_START);
    InitRNG();
    return TRUE;
}

static int GameStartLoadSave_Main(ApplicationManager *appMan, int *state)
{
    SaveData *saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    SystemData *systemData = SaveData_GetSystemData(saveData);

    TryLoadingSave(HEAP_ID_GAME_START, saveData);
    Options_SetSystemButtonMode(saveData, OPTIONS_BUTTON_MODE_NORMAL);

    if (!SystemData_MatchesCurrentSystem(systemData) || !SystemData_MatchesCurrentRTCOffset(systemData)) {
        GameTime_StartPenalty(SaveData_GetGameTime(saveData));
        SystemData_Init(systemData);
        Party_SetShayminLandForm(SaveData_GetParty(saveData));
    }

    PlayTime_Start(SaveData_GetPlayTime(saveData));
    return TRUE;
}

static int GameStartLoadSave_Exit(ApplicationManager *appMan, int *state)
{
    Heap_Destroy(HEAP_ID_GAME_START);
    EnqueueApplication(FS_OVERLAY_ID_NONE, &gFieldSystemContinueTemplate);
    return TRUE;
}

#include "data/berry_init.h"

static void InitializeNewSave(enum HeapId heapID, SaveData *saveData, BOOL setTrainerID)
{
    u32 rnd;
    BerryPatch *berryPatches;
    TrainerInfo *trainerInfo;
    GameTime *gameTime;
    RecordMixedRNG *rngCollection;

    SystemData_Init(SaveData_GetSystemData(saveData));

    gameTime = SaveData_GetGameTime(saveData);
    GameTime_Clear(gameTime);

    rngCollection = SaveData_GetRecordMixedRNG(saveData);
    RecordMixedRNG_SetEntrySeed(rngCollection, RECORD_MIXED_RNG_PLAYER_OVERRIDE, MTRNG_Next());
    sub_0206C008(saveData);

    trainerInfo = SaveData_GetTrainerInfo(saveData);
    rnd = MTRNG_Next();

    if (setTrainerID) {
        TrainerInfo_SetID(trainerInfo, rnd);
    }

    TrainerInfo_SetAppearance(trainerInfo, sub_0205C9BC(rnd, TrainerInfo_Gender(trainerInfo), 0));

    berryPatches = MiscSaveBlock_GetBerryPatches(saveData);
    BerryPatches_Init(berryPatches, heapID, (const u16 *)sBerryInitTable, NELEMS(sBerryInitTable));
}

static void TryLoadingSave(int unused, SaveData *saveData)
{
    if (!SaveData_Load(saveData)) {
        OS_ResetSystem(RESET_CLEAN);
    }
}

static void StartNewSave(int unused, SaveData *saveData)
{
    SaveData_Clear(saveData);
    InitPlayerStartLocation(saveData);
    TrainerInfo_SetMoney(SaveData_GetTrainerInfo(saveData), 3000);
    SystemFlag_SetBagAcquired(SaveData_GetVarsFlags(saveData));
}
