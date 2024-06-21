#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "game_overlay.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "heap.h"
#include "unk_020508D4.h"
#include "poketch_data.h"
#include "overlay005/ov5_021DDAE4.h"
#include "overlay024/ov24_02253CE0.h"
#include "overlay025/poketch_system.h"

FS_EXTERN_OVERLAY(overlay24);
FS_EXTERN_OVERLAY(overlay25);

typedef struct {
    int unk_00;
} UnkStruct_ov5_021DDBC8;

static BOOL ov5_021DDAE4 (TaskManager * param0)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov5_021DDBC8 * v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0200AAE0(2, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        v1->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            ov24_02253DA4(fieldSystem->unk_08);
            v1->unk_00++;
        }
        break;
    case 2:
        if (ov24_02253DB4(fieldSystem->unk_08)) {
            PoketchData * v2 = SaveData_PoketchData(fieldSystem->saveData);

            Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
            Overlay_LoadByID(FS_OVERLAY_ID(overlay25), 2);
            PoketchData_Enable(v2);
            PoketchSystem_Create(fieldSystem, &fieldSystem->unk_04->poketchSys, fieldSystem->saveData, fieldSystem->unk_08, sub_0200A914(1));
            v1->unk_00++;
        }
        break;
    case 3:
        sub_0200AAE0(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        v1->unk_00++;
        break;
    case 4:
        if (sub_0200AC1C(2)) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

void ov5_021DDBC8 (TaskManager * param0)
{
    UnkStruct_ov5_021DDBC8 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov5_021DDBC8));

    v0->unk_00 = 0;
    FieldTask_Start(param0, ov5_021DDAE4, v0);
}
