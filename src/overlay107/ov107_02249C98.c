#include "overlay107/ov107_02249C98.h"

#include <nitro.h>
#include <string.h>

#include "communication_information.h"
#include "communication_system.h"
#include "savedata.h"
#include "sound_playback.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0203061C.h"
#include "unk_0205DFC4.h"

FS_EXTERN_OVERLAY(overlay104);

u8 ov107_02249C98(u8 param0, u8 param1);
u8 ov107_02249C9C(u8 param0, u8 param1);
u8 ov107_02249CAC(SaveData *param0, u8 param1, u8 param2);
void ov107_02249CE0(u32 param0, u16 param1);
void ov107_02249CF4(StringTemplate *param0, u32 param1);

u8 ov107_02249C98(u8 param0, u8 param1)
{
    return param1;
}

u8 ov107_02249C9C(u8 param0, u8 param1)
{
    if (param1 < param0) {
        return param1;
    }

    return param1 - param0;
}

u8 ov107_02249CAC(SaveData *param0, u8 param1, u8 param2)
{
    return sub_02030698(SaveData_GetBattleFrontier(param0), sub_0205E5B4(param1, param2), sub_0205E6A8(sub_0205E5B4(param1, param2)));
}

void ov107_02249CE0(u32 param0, u16 param1)
{
    if (param0 != 0xffffffff) {
        Sound_PlayEffect(param1);
    }

    return;
}

void ov107_02249CF4(StringTemplate *param0, u32 param1)
{
    TrainerInfo *v0;
    u32 v1;

    v0 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    StringTemplate_SetPlayerName(param0, param1, v0);

    return;
}
