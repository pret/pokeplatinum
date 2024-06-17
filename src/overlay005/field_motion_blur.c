#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "heap.h"
#include "gx_layers.h"
#include "overlay005/motion_blur.h"
#include "overlay005/field_motion_blur.h"

FieldMotionBlur *FieldMotionBlur_Start(int coeffA, int coeffB)
{
    FieldMotionBlur *fieldMotionBlur;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    GX_ResetBankForBG();

    fieldMotionBlur = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(FieldMotionBlur));
    MI_CpuClear32(fieldMotionBlur, sizeof(FieldMotionBlur));

    {
        MotionBlurParams v1 = {
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

        v1.unk_20 = coeffA;
        v1.unk_24 = coeffB;

        fieldMotionBlur->unk_00 = ov5_021E2098(&v1);
    }

    return fieldMotionBlur;
}

void FieldMotionBlur_Stop(FieldMotionBlur **fieldMotionBlur)
{
    ov5_021E20E8(&(*fieldMotionBlur)->unk_00, GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
    GX_SetBankForBG(GX_VRAM_BG_128_C);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 1);
    Heap_FreeToHeapExplicit(4, *fieldMotionBlur);
}
