#include "overlay005/ov5_021F101C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020711C8.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F007C.h"
#include "overlay005/struct_ov5_021F0468_decl.h"
#include "overlay006/ov6_02243258.h"

#include "field_task.h"
#include "heap.h"
#include "player_avatar.h"
#include "sys_task_manager.h"

typedef struct {
    SysTask *unk_00;
    UnkStruct_ov5_021F0468 *unk_04;
} UnkStruct_ov5_021F101C;

BOOL ov5_021F101C(FieldTask *param0) {
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(param0);
    int *v2 = FieldTask_GetState(param0);
    UnkStruct_ov5_021F101C *v3 = v1->unk_04;

    switch (*v2) {
    case 0:
        v1->unk_04 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov5_021F101C));
        (*v2)++;
        break;
    case 1: {
        int v4 = ov5_021F0484();

        v3->unk_04 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, v4);
        memset(v3->unk_04, 0, v4);
    }
        (*v2)++;
        break;
    case 2: {
        int v5 = PlayerAvatar_Gender(fieldSystem->playerAvatar);
        v3->unk_00 = ov6_02243F88(fieldSystem, 0, v1->unk_00, v5);
    }
        (*v2)++;
        break;
    case 3:
        if (ov6_02243FBC(v3->unk_00)) {
            ov6_02243FC8(v3->unk_00);
            (*v2)++;
        }
        break;
    case 4:
        FieldTask_InitCall(param0, ov5_021F0488, v3->unk_04);
        (*v2)++;
        break;
    case 5:
        Heap_Free(v1->unk_04);
        Heap_Free(v1);
        return 1;
    }

    return 0;
}
