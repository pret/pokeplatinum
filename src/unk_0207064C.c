#include "unk_0207064C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay006/ov6_02243258.h"

#include "field_map_change.h"
#include "field_task.h"
#include "heap.h"
#include "location.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "sys_task_manager.h"
#include "unk_0203A7D8.h"

typedef struct {
    FieldSystem *fieldSystem;
    int unk_04;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    Pokemon *unk_10;
    SysTask *unk_14;
} UnkStruct_0207064C;

void *sub_0207064C(u32 heapID, FieldSystem *fieldSystem, Pokemon *param2, u16 param3, s16 param4, s16 param5)
{
    UnkStruct_0207064C *v0 = Heap_AllocFromHeapAtEnd(heapID, (sizeof(UnkStruct_0207064C)));

    memset(v0, 0, (sizeof(UnkStruct_0207064C)));

    v0->fieldSystem = fieldSystem;
    v0->unk_10 = param2;
    v0->unk_08 = param3;
    v0->unk_0A = param4;
    v0->unk_0C = param5;

    return v0;
}

BOOL sub_02070680(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0207064C *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_04) {
    case 0:
        v1->unk_14 = ov6_02243F88(v1->fieldSystem, 1, v1->unk_10, PlayerAvatar_Gender(v1->fieldSystem->playerAvatar));
        v1->unk_04++;
        break;
    case 1:
        if (ov6_02243FBC(v1->unk_14) == 0) {
            break;
        }

        ov6_02243FC8(v1->unk_14);

        u16 v2;
        Location v3;

        v2 = sub_0203A8A0(v1->unk_08, v1->unk_0A, v1->unk_0C);
        GF_ASSERT(v2 != 0);

        sub_0203A7F0(v2, &v3);
        FieldTask_ChangeMapChangeFly(param0, v3.mapId, -1, v3.x, v3.z, 1);

        Heap_Free(v1);
    }

    return 0;
}
