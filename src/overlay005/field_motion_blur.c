#include "overlay005/field_motion_blur.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay005/motion_blur.h"

#include "gx_layers.h"
#include "heap.h"

FieldMotionBlur *FieldMotionBlur_Start(int coeffA, int coeffB)
{
    FieldMotionBlur *fieldMotionBlur;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    GX_ResetBankForBG();

    fieldMotionBlur = Heap_Alloc(HEAP_ID_FIELD1, sizeof(FieldMotionBlur));
    MI_CpuClear32(fieldMotionBlur, sizeof(FieldMotionBlur));

    {
        MotionBlurParams motionBlurParams = {
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

        motionBlurParams.blendCoeffA = coeffA;
        motionBlurParams.blendCoeffB = coeffB;

        fieldMotionBlur->motionBlur = MotionBlur_New(&motionBlurParams);
    }

    return fieldMotionBlur;
}

void FieldMotionBlur_Stop(FieldMotionBlur **fieldMotionBlur)
{
    MotionBlur_Delete(&(*fieldMotionBlur)->motionBlur, GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
    GX_SetBankForBG(GX_VRAM_BG_128_C);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 1);
    Heap_FreeExplicit(HEAP_ID_FIELD1, *fieldMotionBlur);
}
