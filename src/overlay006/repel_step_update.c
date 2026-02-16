#include "overlay006/repel_step_update.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system_decl.h"

#include "savedata.h"
#include "script_manager.h"
#include "special_encounter.h"

BOOL Repel_UpdateSteps(SaveData *saveData, FieldSystem *fieldSystem)
{
    u8 *repelSteps = SpecialEncounter_GetRepelSteps(SaveData_GetSpecialEncounters(saveData));

    if (*repelSteps > 0) {
        (*repelSteps)--;

        if (*repelSteps == 0) {
            ScriptManager_Set(fieldSystem, SCRIPT_ID(COMMON_SCRIPTS, 32), NULL);
            return TRUE;
        }
    }

    return FALSE;
}
