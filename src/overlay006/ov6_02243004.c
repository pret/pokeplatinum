#include "overlay006/ov6_02243004.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/ov6_0223E140.h"

#include "camera.h"

static UnkStruct_ov5_021D1BEC *Unk_ov6_02249940;

BOOL ov6_02243004(FieldSystem *fieldSystem, int param1) {
    VecFx32 v0;
    CameraAngle v1;

    switch (param1) {
    case 0:
        Unk_ov6_02249940 = ov6_0223E6EC(fieldSystem);
        break;
    case 1:
        if (ov6_0223E708(Unk_ov6_02249940)) {
            ov6_0223E700(Unk_ov6_02249940);
            return 1;
        } else {
            return 0;
        }
        break;
    case 2:
        Unk_ov6_02249940 = ov6_0223E814(fieldSystem);
        break;
    case 3:
        ov6_0223E828(Unk_ov6_02249940);
        break;
    case 4:
        Unk_ov6_02249940 = ov6_0223FCCC(fieldSystem);
        break;
    case 5:
        ov6_0223FCE8(Unk_ov6_02249940);
        break;
    case 6:
        if (ov6_0223FCF4(Unk_ov6_02249940) == 6) {
            ov6_0223FCE0(Unk_ov6_02249940);
            return 1;
        } else {
            return 0;
        }
        break;
    case 7:
        Unk_ov6_02249940 = ov6_0223EA74(fieldSystem, 0);
        break;
    case 8:
        Unk_ov6_02249940 = ov6_0223EA74(fieldSystem, 1);
        break;
    case 9:
        Unk_ov6_02249940 = ov6_0223EA74(fieldSystem, 2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}
