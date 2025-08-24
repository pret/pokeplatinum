#include "unk_0205749C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay066/ov66_0222DCE0.h"
#include "overlay066/struct_ov66_0222DCE0.h"

#include "field_task.h"
#include "heap.h"

FS_EXTERN_OVERLAY(overlay66);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_ov66_0222DCE0 unk_04;
} UnkStruct_0205749C;

static BOOL sub_020574CC(FieldTask *param0);

static const ApplicationManagerTemplate Unk_020ED4CC = {
    ov66_0222DCE0,
    ov66_0222DD6C,
    ov66_0222DD90,
    FS_OVERLAY_ID(overlay66)
};

void sub_0205749C(FieldTask *param0, BOOL param1)
{
    UnkStruct_0205749C *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_0205749C));
    memset(v0, 0, sizeof(UnkStruct_0205749C));

    v0->unk_02 = param1;
    FieldTask_InitCall(param0, sub_020574CC, v0);
}

static BOOL sub_020574CC(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0205749C *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0: {
        v1->unk_04.saveData = fieldSystem->saveData;
        v1->unk_04.unk_08 = v1->unk_02;
        v1->unk_04.unk_00 = &fieldSystem->unk_C4;
        FieldTask_RunApplication(param0, &Unk_020ED4CC, &v1->unk_04);
        v1->unk_00++;
    } break;
    case 1:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}
