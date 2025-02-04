#include "great_marsh_lookout.h"

#include <nitro.h>
#include <string.h>

#include "generated/sdat.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/great_marsh_binoculars.h"
#include "overlay006/ov6_022426AC.h"

#include "core_sys.h"
#include "field_map_change.h"
#include "field_task.h"
#include "field_transition.h"
#include "heap.h"
#include "location.h"
#include "map_object.h"
#include "player_avatar.h"
#include "system_flags.h"
#include "unk_02005474.h"
#include "unk_02056B30.h"
#include "unk_02070428.h"
#include "vars_flags.h"

// Data used for the Great Marsh lookout binoculars scene.
typedef struct LookoutData {
    GreatMarshLookout_SpriteResources *spriteResources;
    GreatMarshBinoculars *binocularsData;
    Location *nextLocation;
    u8 state;
    u8 numCycles;
    u8 timer;
} LookoutData;

static BOOL Task_GreatMarshLookout(FieldTask *taskMan);

void GreatMarshLookout_Init(FieldSystem *fieldSystem)
{
    LookoutData *lookout = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(LookoutData));

    lookout->spriteResources = GreatMarshLookout_AllocSpriteResources(HEAP_ID_FIELDMAP);
    lookout->binocularsData = GreatMarshBinoculars_InitData(HEAP_ID_FIELDMAP, fieldSystem);
    lookout->state = 0;
    lookout->numCycles = 0;

    FieldTask_InitCall(fieldSystem->task, Task_GreatMarshLookout, lookout);
}

static BOOL Task_GreatMarshLookout(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    LookoutData *lookout = FieldTask_GetEnv(taskMan);

    switch (lookout->state) {
    case 0:
        sub_02070428(fieldSystem, 1);
        GreatMarshBinoculars_SetNextLocationWithCoords(lookout->numCycles, lookout->binocularsData);
        lookout->nextLocation = GreatMarshBinoculars_GetLocation(lookout->binocularsData);
        FieldTransition_FadeOut(taskMan);
        lookout->state = 1;
        break;
    case 1:
        FieldTransition_FinishMap(taskMan);
        lookout->state = 2;
        break;
    case 2: {
        VarsFlags *flags = SaveData_GetVarsFlags(fieldSystem->saveData);

        if (lookout->numCycles == 0) {
            SystemFlag_SetPoketchHidden(flags);
        } else if (lookout->numCycles == BINOCULARS_CYCLE_COUNT) {
            SystemFlag_ClearPoketchHidden(flags);
        }
    }

        FieldTask_ChangeMapByLocation(taskMan, lookout->nextLocation);
        lookout->state = 3;
        break;
    case 3:
        FieldTransition_StartMap(taskMan);
        lookout->state = 4;
        break;
    case 4: {
        MapObject *playerAvatar = Player_MapObject(fieldSystem->playerAvatar);

        lookout->numCycles++;

        if (lookout->numCycles <= BINOCULARS_CYCLE_COUNT) {
            int species;

            species = GreatMarshBinoculars_GetMonSpecies(fieldSystem);
            MapObject_SetHidden(playerAvatar, 1);
            GreatMarshLookout_CreateLookoutMonSprite(lookout->spriteResources, species);
            ov6_022427F4(lookout->spriteResources);
            lookout->timer = 0;
            Sound_PlayEffect(SEQ_SE_DP_KASYA); // binoculars switch
            sub_02056B30(taskMan, 3, 17, 0xffff, 0x0, 6, 1, HEAP_ID_FIELDMAP);
            lookout->state = 5;
        } else {
            MapObject_SetHidden(playerAvatar, 0);
            FieldTransition_FadeIn(taskMan);
            lookout->state = 8;
        }
    } break;
    case 5:
        lookout->timer++;

        if ((lookout->timer >= 60) || (gCoreSys.pressedKeys & PAD_BUTTON_A)) {
            GreatMarshBinoculars_SetNextLocationWithCoords(lookout->numCycles, lookout->binocularsData);
            lookout->nextLocation = GreatMarshBinoculars_GetLocation(lookout->binocularsData);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);
            sub_02056B30(taskMan, 3, 16, 0xffff, 0x0, 6, 1, HEAP_ID_FIELDMAP);
            lookout->state = 6;
        }
        break;
    case 6:
        ov6_02242814(lookout->spriteResources);
        lookout->state = 7;
        break;
    case 7:
        if (ov6_02242820(lookout->spriteResources)) {
            ov6_02242828(lookout->spriteResources);
            lookout->state = 1;
        }
        break;
    case 8:
        sub_02070428(fieldSystem, 0);
        GreatMarshBinoculars_FreeData(lookout->binocularsData);
        GreatMarshLookout_FreeSpriteResources(lookout->spriteResources);
        Heap_FreeToHeap(lookout);

        return 1;
    }

    return 0;
}
