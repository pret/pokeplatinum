#include "overlay057/ov57_021D0F30.h"

#include <nitro.h>
#include <string.h>

#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0203D178.h"
#include "unk_0206A8DC.h"
#include "vars_flags.h"

void ov57_021D0F30(int param0, SaveData *param1)
{
    if (!SaveData_Load(param1)) {
        OS_ResetSystem(0);
    }
}

void ov57_021D0F44(int param0, SaveData *param1)
{
    TrainerInfo *v0;

    SaveData_Clear(param1);
    sub_0203D1A8(param1);

    v0 = SaveData_GetTrainerInfo(param1);
    TrainerInfo_SetMoney(v0, 3000);
    sub_0206A92C(SaveData_GetVarsFlags(param1));
}
