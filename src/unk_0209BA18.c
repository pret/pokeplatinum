#include "unk_0209BA18.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0209BBA4.h"

#include "field/field_system.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_system.h"
#include "heap.h"
#include "save_player.h"

#include "constdata/const_020F8BE0.h"

UnkStruct_ov104_02230BE4 *sub_0209BA18(FieldSystem *fieldSystem, void *param1);
BOOL ov104_02239624(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239660(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02239C88(UnkStruct_0209BBA4 *param0, u16 param1, u16 param2);

UnkStruct_ov104_02230BE4 *sub_0209BA18(FieldSystem *fieldSystem, void *param1)
{
    UnkStruct_ov104_02230BE4 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov104_02230BE4));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_02230BE4));

    v0->unk_00 = param1;
    v0->unk_04 = SaveData_Options(fieldSystem->saveData);
    v0->unk_08 = fieldSystem->saveData;
    v0->unk_0C = fieldSystem->journal;
    v0->unk_10 = fieldSystem->unk_98;
    v0->unk_20 = fieldSystem->unk_BC;
    v0->unk_14 = 0;
    v0->unk_18 = 0;
    v0->unk_1C = fieldSystem->location->mapId;
    v0->unk_24 = (((((((((((0 + 1) + 1) + 1) + 1) + 1) + 3) + 1) + 1) + 1) + 2) + 1);
    v0->fieldSystem = fieldSystem;

    sub_0203CD84(fieldSystem, &Unk_020F8BE0, v0);

    return v0;
}
