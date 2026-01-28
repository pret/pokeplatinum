#include "unk_0207064C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay006/hm_cut_in.h"

#include "field_map_change.h"
#include "field_task.h"
#include "heap.h"
#include "location.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "spawn_locations.h"
#include "sys_task_manager.h"

typedef struct {
    FieldSystem *fieldSystem;
    int state;
    u16 mapID;
    s16 unk_0A;
    s16 unk_0C;
    Pokemon *partyPokemon;
    SysTask *cutInTask;
} FlyTaskEnv;

void *sub_0207064C(enum HeapID heapID, FieldSystem *fieldSystem, Pokemon *mon, u16 mapID, s16 param4, s16 param5)
{
    FlyTaskEnv *v0 = Heap_AllocAtEnd(heapID, sizeof(FlyTaskEnv));

    memset(v0, 0, sizeof(FlyTaskEnv));

    v0->fieldSystem = fieldSystem;
    v0->partyPokemon = mon;
    v0->mapID = mapID;
    v0->unk_0A = param4;
    v0->unk_0C = param5;

    return v0;
}

BOOL sub_02070680(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FlyTaskEnv *taskEnv = FieldTask_GetEnv(task);

    switch (taskEnv->state) {
    case 0:
        taskEnv->cutInTask = SysTask_HMCutIn_New(taskEnv->fieldSystem, 1, taskEnv->partyPokemon, PlayerAvatar_Gender(taskEnv->fieldSystem->playerAvatar));
        taskEnv->state++;
        break;
    case 1:
        if (CheckHMCutInFinished(taskEnv->cutInTask) == FALSE) {
            break;
        }

        SysTask_HMCutIn_SetTaskDone(taskEnv->cutInTask);

        u16 destination;
        Location location;

        destination = GetSpawnIdByMapAndCoords(taskEnv->mapID, taskEnv->unk_0A, taskEnv->unk_0C);
        GF_ASSERT(destination != 0);

        Location_InitFly(destination, &location);
        FieldTask_ChangeMapChangeFly(task, location.mapId, -1, location.x, location.z, FACE_DOWN);

        Heap_Free(taskEnv);
    }

    return 0;
}
