#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025CCC_decl.h"
#include "trainer_info.h"
#include "struct_decls/struct_02027854_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "savedata.h"

#include "overlay057/const_ov57_021D0F90.h"
#include "constdata/const_020F6824.h"
#include "constdata/const_020EA11C.h"
#include "constdata/const_020EA10C.h"
#include "overlay057/const_ov57_021D0F80.h"
#include "overlay057/const_ov57_021D0F70.h"

#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_02055BA8.h"

#include "unk_02000C88.h"
#include "overlay_manager.h"
#include "unk_02017428.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_02025CB0.h"
#include "save_state.h"
#include "trainer_info.h"
#include "savedata_misc.h"
#include "game_options.h"
#include "unk_02027B70.h"
#include "unk_0202B37C.h"
#include "unk_0205C980.h"
#include "unk_0206B9D8.h"
#include "pokemon.h"
#include "party.h"
#include "overlay057/ov57_021D0F30.h"
#include "constants/game_options.h"

static int ov57_021D0D80(OverlayManager * param0, int * param1);
static int ov57_021D0D98(OverlayManager * param0, int * param1);
static int ov57_021D0DAC(OverlayManager * param0, int * param1);
static int ov57_021D0DC8(OverlayManager * param0, int * param1);
static int ov57_021D0DE0(OverlayManager * param0, int * param1);
static int ov57_021D0E00(OverlayManager * param0, int * param1);
static int ov57_021D0E1C(OverlayManager * param0, int * param1);
static int ov57_021D0E34(OverlayManager * param0, int * param1);
static int ov57_021D0E90(OverlayManager * param0, int * param1);
static void ov57_021D0EAC(int param0, SaveData * param1, BOOL param2);

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

static int ov57_021D0D80 (OverlayManager * param0, int * param1)
{
    Heap_Create(3, 77, 131072);
    InitRNG();

    return 1;
}

static int ov57_021D0D98 (OverlayManager * param0, int * param1)
{
    SaveData * v0 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;

    ov57_021D0F44(77, v0);
    return 1;
}

static int ov57_021D0DAC (OverlayManager * param0, int * param1)
{
    Heap_Destroy(77);
    sub_02000EC4(0xffffffff, &Unk_020F6824);

    return 1;
}

static int ov57_021D0DC8 (OverlayManager * param0, int * param1)
{
    Heap_Create(3, 77, 131072);
    InitRNG();

    return 1;
}

static int ov57_021D0DE0 (OverlayManager * param0, int * param1)
{
    SaveData * v0 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;

    ov57_021D0EAC(77, v0, 1);
    sub_02017434(SaveData_GetPlayTime(v0));

    return 1;
}

static int ov57_021D0E00 (OverlayManager * param0, int * param1)
{
    Heap_Destroy(77);
    sub_02000EC4(0xffffffff, &gFieldSystemNewGameTemplate);
    return 1;
}

static int ov57_021D0E1C (OverlayManager * param0, int * param1)
{
    Heap_Create(3, 77, 131072);
    InitRNG();

    return 1;
}

static int ov57_021D0E34 (OverlayManager * param0, int * param1)
{
    SaveData * v0 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    UnkStruct_02025CCC * v1 = sub_02025CCC(v0);

    ov57_021D0F30(77, v0);
    Options_SetSystemButtonMode(v0, OPTIONS_BUTTON_MODE_NORMAL);

    if (!sub_02025D10(v1) || !sub_02025D40(v1)) {
        sub_02025DE8(sub_02025CD8(v0));
        sub_02025CE4(v1);
        Party_SetShayminLandForm(Party_GetFromSavedata(v0));
    }

    sub_02017434(SaveData_GetPlayTime(v0));
    return 1;
}

static int ov57_021D0E90 (OverlayManager * param0, int * param1)
{
    Heap_Destroy(77);
    sub_02000EC4(0xffffffff, &gFieldSystemContinueTemplate);
    return 1;
}

#include "data/berry_init.h"

static void ov57_021D0EAC (int param0, SaveData * param1, BOOL param2)
{
    u32 v0;
    UnkStruct_02027854 * v1;
    TrainerInfo * v2;
    UnkStruct_02055BA8 * v3;
    UnkStruct_0202B4A0 * v4;

    sub_02025CE4(sub_02025CCC(param1));

    v3 = sub_02025CD8(param1);
    sub_02025D84(v3);

    v4 = sub_0202B4A0(param1);
    sub_0202B40C(v4, 1, MTRNG_Next());
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
