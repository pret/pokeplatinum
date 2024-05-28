#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "overlay005/struct_ov5_021F0468_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_020711C8.h"

#include "heap.h"
#include "unk_020508D4.h"
#include "player_avatar.h"
#include "overlay005/ov5_021F007C.h"
#include "overlay005/ov5_021F101C.h"
#include "overlay006/ov6_02243258.h"

typedef struct {
    SysTask * unk_00;
    UnkStruct_ov5_021F0468 * unk_04;
} UnkStruct_ov5_021F101C;

BOOL ov5_021F101C (TaskManager * param0)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_020711C8 * v1 = TaskManager_Environment(param0);
    int * v2 = sub_02050A68(param0);
    UnkStruct_ov5_021F101C * v3 = v1->unk_04;

    switch (*v2) {
    case 0:
        v1->unk_04 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov5_021F101C));
        (*v2)++;
        break;
    case 1:
    {
        int v4 = ov5_021F0484();

        v3->unk_04 = Heap_AllocFromHeapAtEnd(11, v4);
        memset(v3->unk_04, 0, v4);
    }
        (*v2)++;
        break;
    case 2:
    {
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
        sub_02050944(param0, ov5_021F0488, v3->unk_04);
        (*v2)++;
        break;
    case 5:
        Heap_FreeToHeap(v1->unk_04);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}
