#include "unk_02068344.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02027860_decl.h"

#include "field/field_system.h"
#include "functypes/funcptr_020EF718.h"
#include "functypes/funcptr_020EF744.h"
#include "functypes/funcptr_020EF770.h"
#include "overlay005/ov5_021F8370.h"
#include "overlay006/ov6_02242AF0.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"

#include "field_system.h"
#include "savedata_misc.h"
#include "unk_02027F50.h"
#include "unk_0207160C.h"

const static UnkFuncPtr_020EF744 Unk_020EF744[11] = {
    NULL,
    ov8_02249DBC,
    ov8_0224C198,
    ov8_0224A8C8,
    ov8_0224B764,
    ov8_0224ABD4,
    ov6_02242AF0,
    sub_0207160C,
    ov8_0224B020,
    ov9_02249960,
    ov5_021F8370
};

const static UnkFuncPtr_020EF718 Unk_020EF718[11] = {
    NULL,
    NULL,
    ov8_0224C388,
    ov8_0224AAE8,
    ov8_0224B7C0,
    ov8_0224ACAC,
    NULL,
    NULL,
    ov8_0224B0FC,
    ov9_02249A60,
    ov5_021F83C0
};

const static UnkFuncPtr_020EF770 Unk_020EF770[11] = {
    NULL,
    ov8_02249A40,
    NULL,
    ov8_0224AAFC,
    ov8_0224B7D4,
    ov8_0224ACC0,
    NULL,
    NULL,
    ov8_0224B110,
    ov9_02249E50,
    ov5_021F83D4
};

void sub_02068344(FieldSystem *fieldSystem)
{
    int v0;
    UnkStruct_02027860 *v1;

    v1 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    v0 = sub_02027F80(v1);

    if (v0 == 0) {
        return;
    }

    Unk_020EF744[v0](fieldSystem);
}

void sub_02068368(FieldSystem *fieldSystem)
{
    int v0;
    UnkStruct_02027860 *v1;

    v1 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    v0 = sub_02027F80(v1);

    if (v0 == 0) {
        return;
    }

    if (Unk_020EF718[v0] != NULL) {
        Unk_020EF718[v0](fieldSystem);
    }
}

BOOL sub_02068390(FieldSystem *fieldSystem, const int param1, const int param2, const fx32 param3, BOOL *param4)
{
    int v0;
    UnkStruct_02027860 *v1;

    v1 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    v0 = sub_02027F80(v1);

    if (v0 == 0) {
        return 0;
    }

    if (Unk_020EF770[v0] != NULL) {
        BOOL v2;

        v2 = Unk_020EF770[v0](fieldSystem, param1, param2, param3, param4);
        return v2;
    }

    return 0;
}

BOOL sub_020683D8(FieldSystem *fieldSystem, const int param1, const int param2, const fx32 param3, int param4)
{
    if (fieldSystem->location->mapId == 67) {
        if (ov8_0224B714(fieldSystem, param1, param2, param4)) {
            return 1;
        }
    }

    return 0;
}
