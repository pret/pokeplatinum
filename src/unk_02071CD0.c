#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02027860_decl.h"

#include "field/field_system.h"
#include "overlay006/struct_ov6_02242AF0.h"

#include "field_system.h"
#include "savedata_misc.h"
#include "unk_02027F50.h"

void sub_02071CD0(FieldSystem *fieldSystem);

void sub_02071CD0(FieldSystem *fieldSystem)
{
    int v0;
    UnkStruct_02027860 *v1;
    UnkStruct_ov6_02242AF0 *v2;

    v1 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    v0 = sub_02027F80(v1);

    if (v0 != 6) {
        sub_02027F5C(v1, 6);
        v2 = (UnkStruct_ov6_02242AF0 *)sub_02027F6C(v1, 6);
        v2->unk_00 = 2;
    }
}
