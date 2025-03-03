
#include "unk_02050568.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "field_map_change.h"
#include "field_task.h"
#include "field_transition.h"
#include "heap.h"
#include "inlines.h"
#include "location.h"
#include "map_object.h"
#include "player_avatar.h"
#include "system.h"
#include "system_flags.h"
#include "unk_02005474.h"
#include "unk_02056B30.h"
#include "unk_02070428.h"
#include "vars_flags.h"

typedef struct {
    FieldSystem *fieldSystem;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09[3];
} UnkStruct_02050568;

static BOOL sub_020505A0(FieldTask *taskMan);
static void sub_0205074C(PlayerAvatar *playerAvatar, BOOL param1);
static void sub_0205075C(FieldSystem *fieldSystem);

void sub_02050568(FieldSystem *fieldSystem)
{
    UnkStruct_02050568 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02050568));

    memset(v0, 0, sizeof(UnkStruct_02050568));
    FieldTask_InitCall(fieldSystem->task, sub_020505A0, v0);
}

static BOOL sub_020505A0(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_02050568 *v1 = FieldTask_GetEnv(taskMan);
    VarsFlags *v2 = SaveData_GetVarsFlags(fieldSystem->saveData);

    switch (v1->unk_08) {
    case 0:
        v1->unk_04 = Player_GetXPos(fieldSystem->playerAvatar);
        v1->unk_06 = Player_GetZPos(fieldSystem->playerAvatar);
        sub_02070428(fieldSystem, 1);
        FieldTransition_FadeOut(taskMan);
        v1->unk_08++;
        break;
    case 1:
        FieldTransition_FinishMap(taskMan);
        v1->unk_08++;
        break;
    case 2:
        SystemFlag_SetPoketchHidden(v2);

        {
            Location v3;

            Location_Set(&v3, 172, -1, 847, 561, 1);
            FieldTask_ChangeMapByLocation(taskMan, &v3);
        }
        v1->unk_08++;
        break;
    case 3:
        FieldTransition_StartMap(taskMan);
        v1->unk_08++;
        break;
    case 4:
        sub_0205074C(fieldSystem->playerAvatar, 1);
        sub_0205075C(fieldSystem);
        sub_02056B30(taskMan, 3, 17, 0xffff, 0x0, 6, 1, HEAP_ID_FIELDMAP);
        Sound_PlayEffect(1657);
        v1->unk_08++;
        break;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            v1->unk_08++;
        }
        break;
    case 6:
        sub_02056B30(taskMan, 3, 16, 0xffff, 0x0, 6, 1, HEAP_ID_FIELDMAP);
        Sound_PlayEffect(1657);
        v1->unk_08++;
        break;
    case 7:
        FieldTransition_FinishMap(taskMan);
        v1->unk_08++;
        break;
    case 8:
        SystemFlag_ClearPoketchHidden(v2);

        {
            Location v4;

            Location_Set(&v4, 164, -1, v1->unk_04, v1->unk_06, 0);
            FieldTask_ChangeMapByLocation(taskMan, &v4);
        }
        v1->unk_08++;
        break;
    case 9:
        FieldTransition_StartMap(taskMan);
        v1->unk_08++;
        break;
    case 10:
        sub_0205074C(fieldSystem->playerAvatar, 0);
        FieldTransition_FadeIn(taskMan);
        v1->unk_08++;
        break;
    case 11:
        Heap_FreeToHeap(v1);
        sub_02070428(fieldSystem, 0);
        return 1;
    }

    return 0;
}

static void sub_0205074C(PlayerAvatar *playerAvatar, BOOL param1)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    MapObject_SetHidden(mapObj, param1);
}

static void sub_0205075C(FieldSystem *fieldSystem)
{
    VecFx32 v0;
    CameraAngle v1;

    Camera_SetFOV(0x8c1, fieldSystem->camera);
    Camera_SetDistance(0xf81b8, fieldSystem->camera);

    v0.x = 0x350523d;
    v0.y = 0x15edb7;
    v0.z = 0x23da40e;

    Camera_SetTarget(&v0, fieldSystem->camera);

    v1.x = 0x823;
    v1.y = 0x520;
    v1.z = 0;

    Camera_SetAngleAroundTarget(&v1, fieldSystem->camera);
    Camera_SetClipping(12 * FX32_ONE, 1564 * FX32_ONE, fieldSystem->camera);
}
