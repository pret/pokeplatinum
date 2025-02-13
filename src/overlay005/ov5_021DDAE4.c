#include "overlay005/ov5_021DDAE4.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay024/ov24_02253CE0.h"
#include "overlay025/poketch_system.h"

#include "brightness_controller.h"
#include "field_task.h"
#include "game_overlay.h"
#include "heap.h"
#include "poketch.h"
#include "render_oam.h"

FS_EXTERN_OVERLAY(overlay24);
FS_EXTERN_OVERLAY(overlay25);

typedef struct {
    int unk_00;
} UnkStruct_ov5_021DDBC8;

static BOOL ov5_021DDAE4(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021DDBC8 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0:
        BrightnessController_StartTransition(2, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        v1->unk_00++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(2)) {
            ov24_02253DA4(fieldSystem->bgConfig);
            v1->unk_00++;
        }
        break;
    case 2:
        if (ov24_02253DB4(fieldSystem->bgConfig)) {
            Poketch *poketch = SaveData_PoketchData(fieldSystem->saveData);

            Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
            Overlay_LoadByID(FS_OVERLAY_ID(overlay25), 2);
            Poketch_Enable(poketch);
            PoketchSystem_Create(fieldSystem, &fieldSystem->unk_04->poketchSys, fieldSystem->saveData, fieldSystem->bgConfig, RenderOam_GetScreenOam(1));
            v1->unk_00++;
        }
        break;
    case 3:
        BrightnessController_StartTransition(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        v1->unk_00++;
        break;
    case 4:
        if (BrightnessController_IsTransitionComplete(2)) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

void ov5_021DDBC8(FieldTask *param0)
{
    UnkStruct_ov5_021DDBC8 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov5_021DDBC8));

    v0->unk_00 = 0;
    FieldTask_InitCall(param0, ov5_021DDAE4, v0);
}
