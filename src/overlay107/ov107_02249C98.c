#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B358_decl.h"
#include "trainer_info.h"
#include "savedata.h"

#include "unk_02005474.h"
#include "unk_0200B358.h"
#include "unk_0203061C.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_0205DFC4.h"
#include "overlay107/ov107_02249C98.h"

FS_EXTERN_OVERLAY(overlay104);

u8 ov107_02249C98(u8 param0, u8 param1);
u8 ov107_02249C9C(u8 param0, u8 param1);
u8 ov107_02249CAC(SaveData * param0, u8 param1, u8 param2);
void ov107_02249CE0(u32 param0, u16 param1);
void ov107_02249CF4(StringFormatter * param0, u32 param1);

u8 ov107_02249C98 (u8 param0, u8 param1)
{
    return param1;
}

u8 ov107_02249C9C (u8 param0, u8 param1)
{
    if (param1 < param0) {
        return param1;
    }

    return param1 - param0;
}

u8 ov107_02249CAC (SaveData * param0, u8 param1, u8 param2)
{
    return sub_02030698(sub_0203068C(param0), sub_0205E5B4(param1, param2), sub_0205E6A8(sub_0205E5B4(param1, param2)));
}

void ov107_02249CE0 (u32 param0, u16 param1)
{
    if (param0 != 0xffffffff) {
        Sound_PlayEffect(param1);
    }

    return;
}

void ov107_02249CF4 (StringFormatter * param0, u32 param1)
{
    TrainerInfo * v0;
    u32 v1;

    v0 = sub_02032EE8((sub_0203608C() ^ 1));
    sub_0200B498(param0, param1, v0);

    return;
}
