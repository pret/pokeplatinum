#include "binoculars_vista_lighthouse.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/map_object.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "camera.h"
#include "field_map_change.h"
#include "field_task.h"
#include "field_transition.h"
#include "heap.h"
#include "inlines.h"
#include "location.h"
#include "map_object.h"
#include "player_avatar.h"
#include "sound_playback.h"
#include "system.h"
#include "system_flags.h"
#include "unk_02056B30.h"
#include "unk_02070428.h"
#include "vars_flags.h"

typedef struct VistaLighthouseBinoculars {
    FieldSystem *fieldSystem;
    u16 xPos;
    u16 zPos;
    u8 state;
    u8 padding[3];
} VistaLighthouseBinoculars;

static BOOL Task_UseVistaLighthouseBinoculars(FieldTask *taskMan);
static void VistaLighthouseBinoculars_SetPlayerHidden(PlayerAvatar *playerAvatar, BOOL hidden);
static void VistaLighthouseBinoculars_SetCamera(FieldSystem *fieldSystem);

void UseVistaLighthouseBinoculars(FieldSystem *fieldSystem)
{
    VistaLighthouseBinoculars *binoculars = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(VistaLighthouseBinoculars));

    memset(binoculars, 0, sizeof(VistaLighthouseBinoculars));
    FieldTask_InitCall(fieldSystem->task, Task_UseVistaLighthouseBinoculars, binoculars);
}

static BOOL Task_UseVistaLighthouseBinoculars(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    VistaLighthouseBinoculars *binoculars = FieldTask_GetEnv(taskMan);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    switch (binoculars->state) {
    case 0:
        binoculars->xPos = Player_GetXPos(fieldSystem->playerAvatar);
        binoculars->zPos = Player_GetZPos(fieldSystem->playerAvatar);
        sub_02070428(fieldSystem, 1);
        FieldTransition_FadeOut(taskMan);
        binoculars->state++;
        break;
    case 1:
        FieldTransition_FinishMap(taskMan);
        binoculars->state++;
        break;
    case 2:
        SystemFlag_SetPoketchHidden(varsFlags);

        Location locationPokemonLeague;

        Location_Set(&locationPokemonLeague, MAP_HEADER_POKEMON_LEAGUE, -1, 847, 561, DIR_SOUTH);
        FieldTask_ChangeMapByLocation(taskMan, &locationPokemonLeague);
        binoculars->state++;
        break;
    case 3:
        FieldTransition_StartMap(taskMan);
        binoculars->state++;
        break;
    case 4:
        VistaLighthouseBinoculars_SetPlayerHidden(fieldSystem->playerAvatar, TRUE);
        VistaLighthouseBinoculars_SetCamera(fieldSystem);
        sub_02056B30(taskMan, 3, 17, 0xffff, 0x0, 6, 1, HEAP_ID_FIELD2);
        Sound_PlayEffect(SEQ_SE_DP_KASYA);
        binoculars->state++;
        break;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            binoculars->state++;
        }
        break;
    case 6:
        sub_02056B30(taskMan, 3, 16, 0xffff, 0x0, 6, 1, HEAP_ID_FIELD2);
        Sound_PlayEffect(SEQ_SE_DP_KASYA);
        binoculars->state++;
        break;
    case 7:
        FieldTransition_FinishMap(taskMan);
        binoculars->state++;
        break;
    case 8:
        SystemFlag_ClearPoketchHidden(varsFlags);

        Location locationVistaLighthouse;

        Location_Set(&locationVistaLighthouse, MAP_HEADER_VISTA_LIGHTHOUSE, -1, binoculars->xPos, binoculars->zPos, DIR_NORTH);
        FieldTask_ChangeMapByLocation(taskMan, &locationVistaLighthouse);
        binoculars->state++;
        break;
    case 9:
        FieldTransition_StartMap(taskMan);
        binoculars->state++;
        break;
    case 10:
        VistaLighthouseBinoculars_SetPlayerHidden(fieldSystem->playerAvatar, FALSE);
        FieldTransition_FadeIn(taskMan);
        binoculars->state++;
        break;
    case 11:
        Heap_Free(binoculars);
        sub_02070428(fieldSystem, 0);
        return TRUE;
    }

    return FALSE;
}

static void VistaLighthouseBinoculars_SetPlayerHidden(PlayerAvatar *playerAvatar, BOOL hidden)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    MapObject_SetHidden(mapObj, hidden);
}

static void VistaLighthouseBinoculars_SetCamera(FieldSystem *fieldSystem)
{
    VecFx32 target;
    CameraAngle angle;

    Camera_SetFOV(FX32_CONST(0.547f), fieldSystem->camera);
    Camera_SetDistance(FX32_CONST(248.1074f), fieldSystem->camera);

    target.x = FX32_CONST(13573.1399);
    target.y = FX32_CONST(350.8571f);
    target.z = FX32_CONST(9178.2534);

    Camera_SetTarget(&target, fieldSystem->camera);

    angle.x = FX32_CONST(0.5086f);
    angle.y = FX32_CONST(0.3203125f);
    angle.z = FX32_CONST(0);

    Camera_SetAngleAroundTarget(&angle, fieldSystem->camera);
    Camera_SetClipping(12 * FX32_ONE, 1564 * FX32_ONE, fieldSystem->camera);
}
