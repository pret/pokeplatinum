#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "trainer_info.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "savedata.h"

#include "field/field_system.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "unk_02025E08.h"
#include "coins.h"
#include "unk_0203CC84.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_0204C6C8.h"
#include "overlay005/ov5_021DC018.h"


BOOL sub_0204C6C8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    Window ** v3;

    v3 = sub_0203F098(v0, 38);
    *v3 = ov5_021DD020(param0->unk_34, v1, v2);

    return 0;
}

BOOL sub_0204C718 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Window ** v1 = sub_0203F098(v0, 38);

    ov5_021DD084(*v1);
    return 0;
}

BOOL sub_0204C730 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Window ** v1 = sub_0203F098(v0, 38);

    ov5_021DD098(param0->unk_34, *v1);
    return 0;
}

BOOL sub_0204C750 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;
    u16 * v2 = sub_02025E50(v1);
    u16 * v3;

    v3 = inline_0204FCAC(param0);
    *v3 = (u16)Coins_GetValue(v2);

    return 0;
}

BOOL sub_0204C780 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;
    u16 * v2 = sub_02025E50(v1);
    u16 v3;

    v3 = inline_02049538(param0);
    Coins_Add(v2, v3);

    return 0;
}

BOOL sub_0204C7AC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;
    u16 * v2 = sub_02025E50(v1);
    u16 v3;

    v3 = inline_02049538(param0);
    Coins_Subtract(v2, v3);

    return 0;
}

BOOL sub_0204C7D8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;
    u16 * v2 = sub_02025E50(v1);
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4;

    v4 = *v3;

    Coins_Subtract(v2, v4);

    return 0;
}

BOOL sub_0204C808 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    TrainerInfo * v1 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    SaveData * v2 = v0->unk_0C;
    u16 * v3 = sub_02025E50(v2);
    u32 v4, v5;
    u16 * v6 = inline_0204FCAC(param0);

    v4 = sub_0203E850(param0);
    v5 = Coins_GetValue(v3);

    if (v5 < v4) {
        *v6 = 0;
    } else {
        *v6 = 1;
    }

    return 0;
}

BOOL sub_0204C854 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    TrainerInfo * v1 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    SaveData * v2 = v0->unk_0C;
    u16 * v3 = sub_02025E50(v2);
    u16 * v4 = inline_0204FCAC(param0);
    u16 * v5 = inline_0204FCAC(param0);
    u32 v6, v7;

    v6 = *v5;
    v7 = Coins_GetValue(v3);

    if (v7 < v6) {
        *v4 = 0;
    } else {
        *v4 = 1;
    }

    return 0;
}

BOOL sub_0204C8AC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;
    u16 * v2 = sub_02025E50(v1);
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4 = inline_02049538(param0);

    *v3 = Coins_CanAddAmount(v2, v4);
    return 0;
}
