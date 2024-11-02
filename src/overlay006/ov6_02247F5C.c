#include "overlay006/ov6_02247F5C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/struct_ov5_021D3CE4_decl.h"

#include "field_task.h"
#include "unk_0206A8DC.h"
#include "vars_flags.h"

static BOOL ov6_02247FD0(FieldTask *param0);

void ov6_02247F5C(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021D3CE4 *v0;

    if (!sub_0206ADEC(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v0 = ov5_021D3DE4(496, 1, fieldSystem->unk_50);
        ov5_021D3F08(v0, 1);
        ov5_021D3E40(v0, 1);
    } else {
        v0 = ov5_021D3DE4(496, 0, fieldSystem->unk_50);
        ov5_021D3E40(v0, 1);

        v0 = ov5_021D3DE4(496, 1, fieldSystem->unk_50);
        ov5_021D3E9C(v0);
        ov5_021D3E40(v0, 1);
    }
}

void ov6_02247FBC(FieldSystem *fieldSystem)
{
    FieldTask_Start(fieldSystem->taskManager, ov6_02247FD0, NULL);
}

static BOOL ov6_02247FD0(FieldTask *param0)
{
    int *v0;
    UnkStruct_ov5_021D3CE4 *v1;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    v0 = FieldTask_GetState(param0);

    switch (*v0) {
    case 0:
        v1 = ov5_021D3DE4(496, 0, fieldSystem->unk_50);

        if (ov5_021D3E4C(v1)) {
            ov5_021D3E40(v1, 1);
            (*v0)++;
        }
        break;
    case 1:
        v1 = ov5_021D3DE4(496, 1, fieldSystem->unk_50);
        ov5_021D3E40(v1, 0);
        (*v0)++;
        break;
    case 2:
        v1 = ov5_021D3DE4(496, 1, fieldSystem->unk_50);

        if (ov5_021D3F70(v1)) {
            return 1;
        }
        break;
    }

    return 0;
}
