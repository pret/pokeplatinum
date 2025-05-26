#include "unk_0209B344.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/sentence.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"

#include "field_task.h"
#include "heap.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "string_template.h"
#include "unk_02014A84.h"
#include "unk_0203D1B8.h"
#include "unk_0209747C.h"

typedef struct {
    FieldSystem *fieldSystem;
    StringTemplate *unk_04;
    Sentence unk_08;
    UnkStruct_0209747C *unk_10;
    MiscSaveBlock *unk_14;
    int unk_18;
    int unk_1C;
    u16 *unk_20;
} UnkStruct_0209B3AC;

static void sub_0209B3AC(UnkStruct_0209B3AC *param0);
static BOOL sub_0209B3C4(FieldTask *param0);

void sub_0209B344(FieldTask *param0, u16 *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0209B3AC *v1 = Heap_AllocFromHeap(HEAP_ID_FIELD_TASK, sizeof(UnkStruct_0209B3AC));

    v1->fieldSystem = fieldSystem;
    v1->unk_04 = StringTemplate_Default(HEAP_ID_FIELD_TASK);
    v1->unk_10 = sub_0209747C(2, 0, v1->fieldSystem->saveData, HEAP_ID_FIELD_TASK);
    v1->unk_14 = SaveData_MiscSaveBlock(fieldSystem->saveData);
    v1->unk_20 = param1;

    sub_02014A9C(&v1->unk_08, 4);
    MiscSaveBlock_IntroMsg(v1->unk_14, &v1->unk_08);
    sub_02097520(v1->unk_10);

    v1->unk_18 = 0;
    FieldTask_InitCall(param0, sub_0209B3C4, v1);

    return;
}

static void sub_0209B3AC(UnkStruct_0209B3AC *param0)
{
    sub_020974EC(param0->unk_10);
    StringTemplate_Free(param0->unk_04);
    Heap_FreeToHeap(param0);
}

static BOOL sub_0209B3C4(FieldTask *param0)
{
    UnkStruct_0209B3AC *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_18) {
    case 0:
        sub_02097500(v0->unk_10, &(v0->unk_08));
        sub_02097514(v0->unk_10);
        sub_0203D874(v0->fieldSystem, v0->unk_10);
        v0->unk_18 = 1;
        break;
    case 1:
        if (FieldSystem_IsRunningApplication(v0->fieldSystem) == 0) {
            FieldSystem_StartFieldMap(v0->fieldSystem);
            v0->unk_18 = 2;
        }
        break;
    case 2:
        if (FieldSystem_IsRunningFieldMap(v0->fieldSystem)) {
            ov5_021D1744(1);
            v0->unk_18 = 3;
        }
        break;
    case 3:
        if (IsScreenTransitionDone()) {
            if (sub_02097528(v0->unk_10)) {
                *v0->unk_20 = 0;
                v0->unk_18 = 4;
            } else {
                *v0->unk_20 = 1;
                sub_02097540(v0->unk_10, &(v0->unk_08));

                MiscSaveBlock_SetIntroMsg(v0->unk_14, &v0->unk_08);

                v0->unk_18 = 4;
            }
        }
        break;
    case 4:
        sub_0209B3AC(v0);
        return 1;
    }

    return 0;
}
