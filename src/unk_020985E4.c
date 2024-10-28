#include "unk_020985E4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_020985E4.h"
#include "struct_defs/struct_0209862C.h"

#include "field/field_system.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay100/ov100_021D0D80.h"

#include "field_system.h"
#include "heap.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0200F174.h"
#include "unk_020508D4.h"

FS_EXTERN_OVERLAY(overlay100);

void sub_020985E4(TaskManager *param0, SaveData *param1)
{
    UnkStruct_0209862C *v0;
    UnkStruct_020985E4 *v1;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0209862C));
    v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_020985E4));

    v1->unk_04 = SaveData_Options(param1);
    v1->unk_08 = SaveData_GetTrainerInfo(param1);
    v1->unk_00 = TrainerInfo_Gender(v1->unk_08);

    v0->unk_00 = 0;
    v0->unk_04 = v1;

    FieldTask_Start(param0, sub_0209862C, v0);
}

BOOL sub_0209862C(TaskManager *param0)
{
    FieldSystem *fieldSystem;
    UnkStruct_0209862C *v1;

    fieldSystem = TaskManager_FieldSystem(param0);
    v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        ov5_021D1744(0);
        v1->unk_00++;
    case 1:
        if (IsScreenTransitionDone() == 0) {
            break;
        }

        {
            static const OverlayManagerTemplate v2 = {
                ov100_021D0D80,
                ov100_021D0EA8,
                ov100_021D0F44,
                FS_OVERLAY_ID(overlay100)
            };

            sub_0203CD84(fieldSystem, &v2, v1->unk_04);
            v1->unk_00++;
        }
        break;
    case 2:
        if (sub_020509B4(fieldSystem) == 0) {
            sub_020509D4(fieldSystem);
            v1->unk_00++;
        }
        break;
    case 3:
        if (sub_020509DC(fieldSystem) == 0) {
            v1->unk_00++;
        }
        break;
    case 4:
        v1->unk_00++;
        break;
    case 5:
        Heap_FreeToHeap(v1->unk_04);
        Heap_FreeToHeap(v1);
        return 1;
        break;
    }

    return 0;
}
