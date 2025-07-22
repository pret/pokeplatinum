#include "overlay099/ov99_021D3A40.h"

#include <nitro.h>
#include <string.h>

#include "overlay099/ov99_021D4134.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D3A40.h"
#include "overlay099/struct_ov99_021D3B2C.h"

#include "brightness_controller.h"

BOOL ov99_021D3A40(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D3A40 *param1) {
    UnkStruct_ov99_021D3B2C *v0 = &param1->unk_08_val4;

    switch (param1->unk_00) {
    case 0:
        BrightnessController_StartTransition(24, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        param1->unk_00++;
        break;
    case 1:
        if (v0->unk_00 > ((4815 - 1830 - 30 * (7 - 1)) / 7)) {
            BrightnessController_StartTransition(32, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            v0->unk_00 = 0;
            param1->unk_00++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            if (param0->unk_1105 < 7) {
                param1->unk_00 = 3;
            } else {
                param1->unk_00 = 4;
            }
        }
        break;
    case 3:
        param1->unk_04++;

        if (param1->unk_04 > 30) {
            param1->unk_04 = 0;
            ov99_021D439C(param0, param0->unk_1105, 3, 0);
            param0->unk_1105++;
            BrightnessController_StartTransition(32, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            param1->unk_00 = 1;
        }
        break;
    case 4:
        if (param0->unk_10FC >= 4815) {
            return 1;
        }
        break;
    }

    v0->unk_00++;
    return 0;
}

BOOL ov99_021D3B2C(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D3A40 *param1) {
    UnkStruct_ov99_021D3B2C *v0 = &param1->unk_08_val4;

    switch (param1->unk_00) {
    case 0:
        BrightnessController_StartTransition(24, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        param1->unk_00++;
        break;
    case 1:
        if (v0->unk_00 > ((6960 - 6000 - 30 * (10 - 7 - 1)) / (10 - 7))) {
            BrightnessController_StartTransition(32, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            v0->unk_00 = 0;
            param1->unk_00++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            if (param0->unk_1105 < 10) {
                param1->unk_00 = 3;
            } else {
                param1->unk_00 = 4;
            }
        }
        break;
    case 3:
        param1->unk_04++;

        if (param1->unk_04 > 30) {
            param1->unk_04 = 0;
            ov99_021D439C(param0, param0->unk_1105, 3, 0);
            param0->unk_1105++;
            BrightnessController_StartTransition(32, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            param1->unk_00 = 1;
        }
        break;
    case 4:
        if (param0->unk_10FC >= 4815) {
            return 1;
        }
        break;
    }

    v0->unk_00++;
    return 0;
}
