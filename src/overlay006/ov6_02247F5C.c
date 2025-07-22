#include "overlay006/ov6_02247F5C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/map_prop_animation.h"

#include "field_task.h"
#include "system_flags.h"
#include "vars_flags.h"

static BOOL ov6_02247FD0(FieldTask *param0);

void ov6_02247F5C(FieldSystem *fieldSystem) {
    MapPropAnimation *v0;

    if (!SystemFlag_CheckFreedGalacticHQPokemon(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v0 = MapPropAnimationManager_GetAnimation(496, 1, fieldSystem->mapPropAnimMan);
        MapPropAnimation_SetLoopCount(v0, 1);
        MapPropAnimation_SetAnimationPaused(v0, 1);
    } else {
        v0 = MapPropAnimationManager_GetAnimation(496, 0, fieldSystem->mapPropAnimMan);
        MapPropAnimation_SetAnimationPaused(v0, 1);

        v0 = MapPropAnimationManager_GetAnimation(496, 1, fieldSystem->mapPropAnimMan);
        MapPropAnimation_GoToLastFrame(v0);
        MapPropAnimation_SetAnimationPaused(v0, 1);
    }
}

void ov6_02247FBC(FieldSystem *fieldSystem) {
    FieldTask_InitCall(fieldSystem->task, ov6_02247FD0, NULL);
}

static BOOL ov6_02247FD0(FieldTask *param0) {
    int *v0;
    MapPropAnimation *v1;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    v0 = FieldTask_GetState(param0);

    switch (*v0) {
    case 0:
        v1 = MapPropAnimationManager_GetAnimation(496, 0, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsOnLastFrame(v1)) {
            MapPropAnimation_SetAnimationPaused(v1, 1);
            (*v0)++;
        }
        break;
    case 1:
        v1 = MapPropAnimationManager_GetAnimation(496, 1, fieldSystem->mapPropAnimMan);
        MapPropAnimation_SetAnimationPaused(v1, 0);
        (*v0)++;
        break;
    case 2:
        v1 = MapPropAnimationManager_GetAnimation(496, 1, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(v1)) {
            return 1;
        }
        break;
    }

    return 0;
}
