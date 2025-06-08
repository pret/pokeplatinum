#include "overlay005/ov5_021DDAE4.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "poketch/poketch_system.h"
#include "pre_poketch_subscreen/pre_poketch_subscreen.h"

#include "brightness_controller.h"
#include "field_task.h"
#include "game_overlay.h"
#include "heap.h"
#include "poketch.h"
#include "render_oam.h"

FS_EXTERN_OVERLAY(pre_poketch_subscreen);
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
        BrightnessController_StartTransition(2, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        v1->unk_00++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            PrePoketchSubscreen_Exit(fieldSystem->bgConfig);
            v1->unk_00++;
        }
        break;
    case 2:
        if (PrePoketchSubscreen_IsDone(fieldSystem->bgConfig)) {
            Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);

            Overlay_UnloadByID(FS_OVERLAY_ID(pre_poketch_subscreen));
            Overlay_LoadByID(FS_OVERLAY_ID(overlay25), 2);
            Poketch_Enable(poketch);
            PoketchSystem_Create(fieldSystem, &fieldSystem->unk_04->poketchSys, fieldSystem->saveData, fieldSystem->bgConfig, RenderOam_GetScreenOam(1));
            v1->unk_00++;
        }
        break;
    case 3:
        BrightnessController_StartTransition(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        v1->unk_00++;
        break;
    case 4:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

void ov5_021DDBC8(FieldTask *param0)
{
    UnkStruct_ov5_021DDBC8 *v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov5_021DDBC8));

    v0->unk_00 = 0;
    FieldTask_InitCall(param0, ov5_021DDAE4, v0);
}
