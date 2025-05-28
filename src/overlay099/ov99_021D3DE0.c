#include "overlay099/ov99_021D3DE0.h"

#include <nitro.h>
#include <string.h>

#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D3A40.h"
#include "overlay099/struct_ov99_021D3DE0.h"

#include "screen_fade.h"
#include "system.h"

BOOL ov99_021D3DE0(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D3A40 *param1)
{
    UnkStruct_ov99_021D3DE0 *v0 = &param1->unk_08_val6;

    switch (param1->unk_00) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 30, 1, HEAP_ID_75);
        param1->unk_00++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            if ((param0->unk_10FC > 10080) || (gSystem.pressedKeys & PAD_BUTTON_A) || (gSystem.pressedKeys & PAD_BUTTON_START)) {
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 45, 1, HEAP_ID_75);
                param1->unk_00++;
            }
        }
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}
