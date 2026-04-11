#include "overlay006/lake_guardian_containment_units.h"

#include <nitro.h>

#include "field/field_system.h"
#include "overlay005/map_prop_animation.h"

#include "field_task.h"
#include "system_flags.h"
#include "vars_flags.h"

#include "res/field/props/models/prop_models.naix"

static BOOL Task_DeactivateContainmentUnits(FieldTask *task);

void LakeGuardianContainmentUnit_InitAnimations(FieldSystem *fieldSystem)
{
    MapPropAnimation *propAnim;
    if (!SystemFlag_CheckFreedGalacticHQPokemon(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        propAnim = MapPropAnimationManager_GetAnimation(lake_guardian_containment_unit_nsbmd, 1, fieldSystem->mapPropAnimMan);
        MapPropAnimation_SetLoopCount(propAnim, 1);
        MapPropAnimation_SetAnimationPaused(propAnim, TRUE);
    } else {
        propAnim = MapPropAnimationManager_GetAnimation(lake_guardian_containment_unit_nsbmd, 0, fieldSystem->mapPropAnimMan);
        MapPropAnimation_SetAnimationPaused(propAnim, TRUE);

        propAnim = MapPropAnimationManager_GetAnimation(lake_guardian_containment_unit_nsbmd, 1, fieldSystem->mapPropAnimMan);
        MapPropAnimation_GoToLastFrame(propAnim);
        MapPropAnimation_SetAnimationPaused(propAnim, TRUE);
    }
}

void LakeGuardianContainmentUnit_Deactivate(FieldSystem *fieldSystem)
{
    FieldTask_InitCall(fieldSystem->task, Task_DeactivateContainmentUnits, NULL);
}

static BOOL Task_DeactivateContainmentUnits(FieldTask *task)
{
    MapPropAnimation *propAnim;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);

    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        propAnim = MapPropAnimationManager_GetAnimation(lake_guardian_containment_unit_nsbmd, 0, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsOnLastFrame(propAnim)) {
            MapPropAnimation_SetAnimationPaused(propAnim, TRUE);
            (*state)++;
        }
        break;
    case 1:
        propAnim = MapPropAnimationManager_GetAnimation(lake_guardian_containment_unit_nsbmd, 1, fieldSystem->mapPropAnimMan);
        MapPropAnimation_SetAnimationPaused(propAnim, FALSE);
        (*state)++;
        break;
    case 2:
        propAnim = MapPropAnimationManager_GetAnimation(lake_guardian_containment_unit_nsbmd, 1, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(propAnim)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
