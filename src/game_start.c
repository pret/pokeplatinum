#include "game_start.h"

#include <nitro.h>
#include <string.h>

#include "constants/game_options.h"

#include "struct_decls/struct_02027854_decl.h"

#include "game_options.h"
#include "heap.h"
#include "location.h"
#include "main.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "system_data.h"
#include "trainer_info.h"
#include "unk_02017428.h"
#include "unk_0201D15C.h"
#include "unk_02027B70.h"
#include "unk_0205C980.h"
#include "unk_0206A8DC.h"
#include "unk_0206B9D8.h"
#include "vars_flags.h"

#include "constdata/const_020EA10C.h"
#include "constdata/const_020EA11C.h"
#include "constdata/const_020F6824.h"

static int ov57_021D0D80(OverlayManager *param0, int *param1);
static int ov57_021D0D98(OverlayManager *param0, int *param1);
static int ov57_021D0DAC(OverlayManager *param0, int *param1);
static int ov57_021D0DC8(OverlayManager *param0, int *param1);
static int ov57_021D0DE0(OverlayManager *param0, int *param1);
static int ov57_021D0E00(OverlayManager *param0, int *param1);
static int ov57_021D0E1C(OverlayManager *param0, int *param1);
static int ov57_021D0E34(OverlayManager *param0, int *param1);
static int ov57_021D0E90(OverlayManager *param0, int *param1);
static void ov57_021D0EAC(int param0, SaveData *param1, BOOL param2);
static void TryLoadingSave(int unused, SaveData *saveData);
static void StartNewSave(int unused, SaveData *saveData);

const OverlayManagerTemplate Unk_ov57_021D0F90 = {
    ov57_021D0D80,
    ov57_021D0D98,
    ov57_021D0DAC,
    0xffffffff
};

const OverlayManagerTemplate Unk_ov57_021D0F80 = {
    ov57_021D0DC8,
    ov57_021D0DE0,
    ov57_021D0E00,
    0xffffffff
};

const OverlayManagerTemplate Unk_ov57_021D0F70 = {
    ov57_021D0E1C,
    ov57_021D0E34,
    ov57_021D0E90,
    0xffffffff
};

static int ov57_021D0D80(OverlayManager *param0, int *param1)
{
    Heap_Create(3, 77, 131072);
    InitRNG();

    return 1;
}

static int ov57_021D0D98(OverlayManager *param0, int *param1)
{
    SaveData *v0 = ((ApplicationArgs *)OverlayManager_Args(param0))->saveData;

    StartNewSave(77, v0);
    return 1;
}

static int ov57_021D0DAC(OverlayManager *param0, int *param1)
{
    Heap_Destroy(77);
    EnqueueApplication(0xffffffff, &Unk_020F6824);

    return 1;
}

static int ov57_021D0DC8(OverlayManager *param0, int *param1)
{
    Heap_Create(3, 77, 131072);
    InitRNG();

    return 1;
}

static int ov57_021D0DE0(OverlayManager *param0, int *param1)
{
    SaveData *v0 = ((ApplicationArgs *)OverlayManager_Args(param0))->saveData;

    ov57_021D0EAC(77, v0, 1);
    sub_02017434(SaveData_GetPlayTime(v0));

    return 1;
}

static int ov57_021D0E00(OverlayManager *param0, int *param1)
{
    Heap_Destroy(77);
    EnqueueApplication(0xffffffff, &gFieldSystemNewGameTemplate);
    return 1;
}

static int ov57_021D0E1C(OverlayManager *param0, int *param1)
{
    Heap_Create(3, 77, 131072);
    InitRNG();

    return 1;
}

static int ov57_021D0E34(OverlayManager *param0, int *param1)
{
    SaveData *v0 = ((ApplicationArgs *)OverlayManager_Args(param0))->saveData;
    SystemData *v1 = SaveData_GetSystemData(v0);

    TryLoadingSave(77, v0);
    Options_SetSystemButtonMode(v0, OPTIONS_BUTTON_MODE_NORMAL);

    if (!SystemData_MatchesCurrentSystem(v1) || !SystemData_MatchesCurrentRTCOffset(v1)) {
        GameTime_StartPenalty(SaveData_GetGameTime(v0));
        SystemData_Init(v1);
        Party_SetShayminLandForm(Party_GetFromSavedata(v0));
    }

    sub_02017434(SaveData_GetPlayTime(v0));
    return 1;
}

static int ov57_021D0E90(OverlayManager *param0, int *param1)
{
    Heap_Destroy(77);
    EnqueueApplication(0xffffffff, &gFieldSystemContinueTemplate);
    return 1;
}

#include "data/berry_init.h"

static void ov57_021D0EAC(int param0, SaveData *param1, BOOL param2)
{
    u32 v0;
    UnkStruct_02027854 *v1;
    TrainerInfo *v2;
    GameTime *v3;
    RecordMixedRNG *v4;

    SystemData_Init(SaveData_GetSystemData(param1));

    v3 = SaveData_GetGameTime(param1);
    GameTime_Clear(v3);

    v4 = SaveData_GetRecordMixedRNG(param1);
    RecordMixedRNG_SetEntrySeed(v4, 1, MTRNG_Next());
    sub_0206C008(param1);

    v2 = SaveData_GetTrainerInfo(param1);
    v0 = MTRNG_Next();

    if (param2) {
        TrainerInfo_SetID(v2, v0);
    }

    TrainerInfo_SetAppearance(v2, sub_0205C9BC(v0, TrainerInfo_Gender(v2), 0));

    v1 = sub_02027854(param1);
    sub_02027B90(v1, param0, sBerryInitTable, NELEMS(sBerryInitTable) / 2);
}

static void TryLoadingSave(int unused, SaveData *saveData)
{
    if (!SaveData_Load(saveData)) {
        OS_ResetSystem(0);
    }
}

static void StartNewSave(int unused, SaveData *saveData)
{
    SaveData_Clear(saveData);
    InitPlayerStartLocation(saveData);
    TrainerInfo_SetMoney(SaveData_GetTrainerInfo(saveData), 3000);
    VarsFlags_SetBagAvailable(SaveData_GetVarsFlags(saveData));
}
