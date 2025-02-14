#include "overlay006/ov6_02246F00.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/map_prop.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021EF75C.h"

#include "field_task.h"
#include "heap.h"
#include "unk_02005474.h"
#include "unk_02054D00.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov6_02246F00;

static BOOL ov6_02246F40(FieldTask *param0);

void ov6_02246F00(FieldSystem *fieldSystem, const u8 param1, const u8 param2)
{
    BOOL v0;

    v0 = sub_020552B4(fieldSystem, 498, NULL, NULL);

    if (v0) {
        UnkStruct_ov6_02246F00 *v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov6_02246F00));

        v1->unk_00 = param2;
        v1->unk_01 = param1;
        v1->unk_02 = 0;

        FieldTask_InitCall(fieldSystem->task, ov6_02246F40, v1);
    } else {
        GF_ASSERT(FALSE);
    }
}

static BOOL ov6_02246F40(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov6_02246F00 *v1 = (UnkStruct_ov6_02246F00 *)FieldTask_GetEnv(param0);

    switch (v1->unk_02) {
    case 0: {
        NNSG3dResMdl *v2;
        NNSG3dResFileHeader **v3;
        MapProp *v4;
        NNSG3dRenderObj *v5;
        BOOL v6;

        v3 = ov5_021EF9E8(498, fieldSystem->unk_30);
        v2 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*v3), 0);

        v6 = sub_020552B4(fieldSystem, 498, &v4, NULL);
        GF_ASSERT(v6);
        v5 = MapProp_GetRenderObj(v4);

        ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, 0x1, 498, v5, v2, ov5_021EFAA0(fieldSystem->unk_30), 2, v1->unk_00, 0);
    }
        (v1->unk_02)++;
        break;
    case 1:
        GF_ASSERT((v1->unk_01 == 0) || (v1->unk_01 == 1));

        ov5_021D4250(fieldSystem->unk_54, 0x1, v1->unk_01);

        if (v1->unk_01 == 0) {
            Sound_PlayEffect(1554);
        } else {
            Sound_PlayEffect(1554);
        }

        (v1->unk_02)++;
        break;
    case 2:
        if (ov5_021D42F0(fieldSystem->unk_54, 0x1)) {
            if (v1->unk_01 == 0) {
                Sound_StopEffect(1554, 0);
            } else {
                Sound_StopEffect(1554, 0);
            }

            Sound_PlayEffect(1521);
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 0x1);
            (v1->unk_02)++;
        }
        break;
    case 3:
        if (!Sound_IsEffectPlaying(1521)) {
            (v1->unk_02)++;
        }
        break;
    case 4:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}
