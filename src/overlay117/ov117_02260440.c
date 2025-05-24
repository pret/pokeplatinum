#include "overlay117/ov117_02260440.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay004/ov4_021D0D80.h"
#include "overlay114/ov114_0225C700.h"
#include "overlay117/ov117_02260668.h"
#include "overlay117/ov117_02266498.h"
#include "overlay117/struct_ov117_02260440.h"
#include "overlay117/struct_ov117_022605C0.h"

#include "communication_information.h"
#include "communication_system.h"
#include "heap.h"
#include "overlay_manager.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"

static const OverlayManagerTemplate Unk_ov117_022668F8 = {
    ov117_02260668,
    ov117_0226098C,
    ov117_02260C10,
    0xFFFFFFFF
};

static const OverlayManagerTemplate Unk_ov117_02266908 = {
    ov117_02266498,
    ov117_022664BC,
    ov117_022665E8,
    0xFFFFFFFF
};

static void ov117_022605D8(UnkStruct_ov117_022605C0 *param0, UnkStruct_ov117_02260440 *param1);
static BOOL ov117_02260630(UnkStruct_ov117_022605C0 *param0);

int ov117_02260440(OverlayManager *param0, int *param1)
{
    UnkStruct_ov117_02260440 *v0 = OverlayManager_Args(param0);
    UnkStruct_ov117_022605C0 *v1;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_110, 0x60000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov117_022605C0), HEAP_ID_110);
    MI_CpuClear8(v1, sizeof(UnkStruct_ov117_022605C0));
    ov117_022605D8(v1, v0);

    return 1;
}

int ov117_02260474(OverlayManager *param0, int *param1)
{
    UnkStruct_ov117_022605C0 *v0 = OverlayManager_Data(param0);
    UnkStruct_ov117_02260440 *v1 = OverlayManager_Args(param0);

    if (ov117_02260630(v0) == 1) {
        return 1;
    }

    switch (*param1) {
    case 0:
        v0->unk_31 = 0;
        v0->unk_28 = OverlayManager_New(&Unk_ov117_02266908, v0, 110);
        (*param1)++;
        break;
    case 1:
        if (OverlayManager_Exec(v0->unk_28) == 1) {
            OverlayManager_Free(v0->unk_28);
            v0->unk_28 = NULL;
            (*param1)++;
        }
        break;
    case 2:
        v0->unk_31 = 1;
        v0->unk_28 = OverlayManager_New(&Unk_ov117_022668F8, v0, 110);
        (*param1)++;
        break;
    case 3:
        if (OverlayManager_Exec(v0->unk_28) == 1) {
            OverlayManager_Free(v0->unk_28);
            v0->unk_28 = NULL;
            (*param1)++;
        }
        break;
    case 4:
        if (v1->unk_38) {
            ov4_021D1F18();
        }

        v0->unk_31 = 2;
        v0->unk_28 = OverlayManager_New(&Unk_ov117_02266908, v0, 110);
        (*param1)++;
        break;
    case 5:
        if (OverlayManager_Exec(v0->unk_28) == 1) {
            OverlayManager_Free(v0->unk_28);
            v0->unk_28 = NULL;

            if (v0->unk_38 == 1) {
                (*param1) = 0;
            } else {
                (*param1)++;
            }
        }
        break;
    case 6:
        CommMan_SetErrorHandling(0, 1);
        CommTiming_StartSync(222);
        (*param1)++;
        break;
    case 7:
        if ((CommTiming_IsSyncState(222) == 1) || (CommSys_ConnectedCount() < CommInfo_CountReceived())) {
            (*param1)++;
        }

        break;
    case 8:
    default:
        return 1;
    }

    return 0;
}

int ov117_022605C0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov117_022605C0 *v0 = OverlayManager_Data(param0);

    OverlayManager_FreeData(param0);
    Heap_Destroy(HEAP_ID_110);

    return 1;
}

static void ov117_022605D8(UnkStruct_ov117_022605C0 *param0, UnkStruct_ov117_02260440 *param1)
{
    int v0, v1, v2, v3;

    v3 = CommSys_CurNetId();
    v2 = 0;
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (CommInfo_TrainerInfo(v0) != NULL) {
            param0->unk_2C[v1] = v0;

            if (v0 == v3) {
                v2 = v1;
            }

            v1++;
        } else {
            param0->unk_2C[v0] = 0xffff;
        }
    }

    param0->unk_30 = v1;
    param0->unk_3C = param1->unk_38;

    ov114_0225C700(&param0->unk_00, param1->unk_39, param1->saveData, param1->unk_38, &param1->unk_00);
}

static BOOL ov117_02260630(UnkStruct_ov117_022605C0 *param0)
{
    if (param0->unk_3D == 0) {
        if (ov114_0225CA54(&param0->unk_00) == 1) {
            param0->unk_3D = 1;
        }
    }

    if (param0->unk_3D == 1) {
        if (param0->unk_28 == NULL) {
            return 1;
        }
    }

    return 0;
}
