#include "unk_0206C660.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"

#include "field/field_system.h"
#include "overlay006/ov6_02246184.h"
#include "overlay006/struct_ov6_02246204_decl.h"
#include "overlay006/struct_ov6_02246254.h"
#include "overlay095/ov95_02246C20.h"

#include "heap.h"
#include "pokemon.h"
#include "unk_020508D4.h"
#include "unk_02055808.h"

FS_EXTERN_OVERLAY(overlay95);

typedef struct {
    UnkStruct_ov6_02246204 *unk_00;
    u32 unk_04;
    int unk_08;
    UnkStruct_ov6_02246254 unk_0C;
    Pokemon *unk_24;
    Pokemon *unk_28;
} UnkStruct_0206C660;

static BOOL sub_0206C680(TaskManager *param0);
static void sub_0206C660(TaskManager *param0);

void sub_0206C660(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0206C660 *v1 = TaskManager_Environment(param0);

    {
        FS_EXTERN_OVERLAY(overlay95);

        static const OverlayManagerTemplate v2 = {
            ov95_02246C20,
            ov95_02246E7C,
            ov95_02246E1C,
            FS_OVERLAY_ID(overlay95),
        };

        sub_02050A38(param0, &v2, &v1->unk_0C);
    }
}

static BOOL sub_0206C680(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0206C660 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_04) {
    case 0:
        ov6_02246254(fieldSystem, v1->unk_00, v1->unk_08, &v1->unk_0C, v1->unk_24, v1->unk_28);
        ov6_02246234(fieldSystem, v1->unk_00, v1->unk_08);
        v1->unk_04++;
        break;
    case 1:
        sub_020558AC(param0);
        v1->unk_04++;
        break;
    case 2:
        FieldTask_FinishFieldMap(param0);
        v1->unk_04++;
        break;
    case 3:
        sub_0206C660(param0);
        v1->unk_04++;
        break;
    case 4:
        FieldTask_StartFieldMap(param0);
        v1->unk_04++;
        break;
    case 5:
        sub_020558F0(param0);
        v1->unk_04++;
        break;
    case 6:
        Heap_FreeToHeap(v1->unk_24);
        Heap_FreeToHeap(v1->unk_28);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_0206C740(TaskManager *param0, UnkStruct_ov6_02246204 *param1, int param2, u32 param3)
{
    UnkStruct_0206C660 *v0 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_0206C660));

    memset(v0, 0, sizeof(UnkStruct_0206C660));

    v0->unk_04 = 0;
    v0->unk_00 = param1;
    v0->unk_08 = param2;
    v0->unk_24 = Pokemon_New(param3);
    v0->unk_28 = Pokemon_New(param3);

    FieldTask_Start(param0, sub_0206C680, v0);
}
