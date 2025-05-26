#include "overlay117/ov117_02266498.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay114/ov114_0225C700.h"
#include "overlay114/struct_ov114_0225D678_decl.h"
#include "overlay114/struct_ov114_0225E854_decl.h"
#include "overlay117/struct_ov117_022605C0.h"

#include "overlay_manager.h"
#include "palette_fade.h"

typedef struct {
    UnkStruct_ov117_022605C0 *unk_00;
    UnkStruct_ov114_0225D678 *unk_04;
    UnkStruct_ov114_0225E854 *unk_08;
} UnkStruct_ov117_02266498;

int ov117_02266498(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov117_02266498 *v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov117_02266498), HEAP_ID_110);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov117_02266498));
    v0->unk_00 = ApplicationManager_Args(appMan);

    return 1;
}

int ov117_022664BC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov117_02266498 *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_00->unk_3D == 1) {
        switch (v0->unk_00->unk_3E) {
        case 0:
            if (IsScreenTransitionDone() == 1) {
                FinishPaletteFade();
            }

            SetColorBrightness(0x0);
            v0->unk_00->unk_3E++;
            break;
        case 1:
            if (ov114_0225CA98(&v0->unk_00->unk_00) == 1) {
                v0->unk_00->unk_3E++;
            }
            break;
        default:
        case 2:
            if (v0->unk_04 != NULL) {
                ov114_0225C838(v0->unk_04);
                v0->unk_04 = NULL;
            }

            if (v0->unk_08 != NULL) {
                ov114_0225C904(v0->unk_08);
                v0->unk_08 = NULL;
            }

            return 1;
        }

        return 0;
    }

    switch (*param1) {
    case 0:
        if (v0->unk_00->unk_31 == 0) {
            *param1 = 1;
        } else {
            *param1 = 3;
        }
        break;
    case 1:
        v0->unk_04 = ov114_0225C82C(&v0->unk_00->unk_00, HEAP_ID_110);
        (*param1)++;
        break;
    case 2:
        if (ov114_0225C8BC(v0->unk_04) == 1) {
            v0->unk_00->unk_34 = ov114_0225C8CC(v0->unk_04);
            ov114_0225C838(v0->unk_04);
            v0->unk_04 = NULL;
            (*param1) = 5;
        }
        break;
    case 3:
        v0->unk_08 = ov114_0225C8F8(&v0->unk_00->unk_00, &v0->unk_00->unk_10, HEAP_ID_110);
        (*param1)++;
        break;
    case 4:
        if (ov114_0225C9A0(v0->unk_08) == 1) {
            v0->unk_00->unk_38 = ov114_0225C9A4(v0->unk_08);
            ov114_0225C904(v0->unk_08);
            v0->unk_08 = NULL;
            (*param1) = 5;
        }

        break;
    case 5:
    default:
        return 1;
    }

    return 0;
}

int ov117_022665E8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov117_02266498 *v0 = ApplicationManager_Data(appMan);
    ApplicationManager_FreeData(appMan);

    return 1;
}
