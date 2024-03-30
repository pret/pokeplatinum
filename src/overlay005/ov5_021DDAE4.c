#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"

#include "game_overlay.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "heap.h"
#include "unk_020508D4.h"
#include "poketch_data.h"
#include "overlay005/ov5_021DDAE4.h"
#include "overlay024/ov24_02253CE0.h"
#include "overlay025/ov25_02253CE0.h"

FS_EXTERN_OVERLAY(overlay24);
FS_EXTERN_OVERLAY(overlay25);

typedef struct {
    int unk_00;
} UnkStruct_ov5_021DDBC8;

static BOOL ov5_021DDAE4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_ov5_021DDBC8 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0200AAE0(2, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        v1->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            ov24_02253DA4(v0->unk_08);
            v1->unk_00++;
        }
        break;
    case 2:
        if (ov24_02253DB4(v0->unk_08)) {
            PoketchData * v2 = SaveData_PoketchData(v0->unk_0C);

            Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
            Overlay_LoadByID(FS_OVERLAY_ID(overlay25), 2);
            PoketchData_Enable(v2);
            ov25_02253CE8(v0, &v0->unk_04->unk_14, v0->unk_0C, v0->unk_08, sub_0200A914(1));
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

void ov5_021DDBC8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_ov5_021DDBC8 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov5_021DDBC8));

    v0->unk_00 = 0;
    sub_02050944(param0, ov5_021DDAE4, v0);
}
