#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021E20E8_decl.h"

#include "overlay005/struct_ov5_021E2098.h"

#include "heap.h"
#include "gx_layers.h"
#include "overlay005/ov5_021E2098.h"
#include "overlay005/ov5_021E22B0.h"

typedef struct UnkStruct_ov5_021E2310_t {
    UnkStruct_ov5_021E20E8 * unk_00;
} UnkStruct_ov5_021E2310;

UnkStruct_ov5_021E2310 * ov5_021E22B0 (int param0, int param1)
{
    UnkStruct_ov5_021E2310 * v0;

    GX_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GX_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GX_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    GX_ResetBankForBG();

    v0 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021E2310));
    MI_CpuClear32(v0, sizeof(UnkStruct_ov5_021E2310));

    {
        UnkStruct_ov5_021E2098 v1 = {
            GX_DISPMODE_VRAM_C,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
            GX_CAPTURE_SIZE_256x192,
            GX_CAPTURE_MODE_AB,
            GX_CAPTURE_SRCA_2D3D,
            GX_CAPTURE_SRCB_VRAM_0x00000,
            GX_CAPTURE_DEST_VRAM_C_0x00000,
            0,
            0,
            4
        };

        v1.unk_20 = param0;
        v1.unk_24 = param1;

        v0->unk_00 = ov5_021E2098(&v1);
    }

    return v0;
}

void ov5_021E2310 (UnkStruct_ov5_021E2310 ** param0)
{
    ov5_021E20E8(&(*param0)->unk_00, GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
    GX_SetBankForBG(GX_VRAM_BG_128_C);
    GX_EngineAToggleLayers(GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 1);
    FreeToHeapExplicit(4, *param0);
}
