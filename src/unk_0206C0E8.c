#include "unk_0206C0E8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/ov6_022426AC.h"
#include "overlay006/ov6_02242984.h"
#include "overlay006/struct_ov6_022426B8_decl.h"
#include "overlay006/struct_ov6_02242A8C_decl.h"

#include "core_sys.h"
#include "field_map_change.h"
#include "heap.h"
#include "map_object.h"
#include "player_avatar.h"
#include "unk_02005474.h"
#include "unk_020508D4.h"
#include "unk_02055808.h"
#include "unk_02056B30.h"
#include "unk_0206A8DC.h"
#include "unk_02070428.h"
#include "vars_flags.h"

typedef struct {
    UnkStruct_ov6_022426B8 *unk_00;
    UnkStruct_ov6_02242A8C *unk_04;
    Location *unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
} UnkStruct_0206C0E8;

static BOOL sub_0206C120(TaskManager *taskMan);

void sub_0206C0E8(FieldSystem *fieldSystem)
{
    UnkStruct_0206C0E8 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206C0E8));

    v0->unk_00 = ov6_022426AC(11);
    v0->unk_04 = ov6_02242A10(11, fieldSystem);
    v0->unk_0C = 0;
    v0->unk_0D = 0;

    FieldTask_Start(fieldSystem->unk_10, sub_0206C120, v0);
}

static BOOL sub_0206C120(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_0206C0E8 *v1 = TaskManager_Environment(taskMan);

    switch (v1->unk_0C) {
    case 0:
        sub_02070428(fieldSystem, 1);
        ov6_02242A94(v1->unk_0D, v1->unk_04);
        v1->unk_08 = ov6_02242AEC(v1->unk_04);
        sub_020558AC(taskMan);
        v1->unk_0C = 1;
        break;
    case 1:
        FieldTask_FinishFieldMap(taskMan);
        v1->unk_0C = 2;
        break;
    case 2: {
        VarsFlags *v2 = SaveData_GetVarsFlags(fieldSystem->saveData);

        if (v1->unk_0D == 0) {
            sub_0206AE0C(v2);
        } else if (v1->unk_0D == 5) {
            sub_0206AE1C(v2);
        }
    }

        FieldTask_ChangeMapByLocation(taskMan, v1->unk_08);
        v1->unk_0C = 3;
        break;
    case 3:
        FieldTask_StartFieldMap(taskMan);
        v1->unk_0C = 4;
        break;
    case 4: {
        MapObject *v3 = Player_MapObject(fieldSystem->playerAvatar);

        v1->unk_0D++;

        if (v1->unk_0D <= 5) {
            int v4;

            v4 = ov6_02242984(fieldSystem);
            MapObject_SetHidden(v3, 1);
            ov6_022426C0(v1->unk_00, v4);
            ov6_022427F4(v1->unk_00);
            v1->unk_0E = 0;
            Sound_PlayEffect(1657);
            sub_02056B30(taskMan, 3, 17, 0xffff, 0x0, 6, 1, 11);
            v1->unk_0C = 5;
        } else {
            MapObject_SetHidden(v3, 0);
            sub_020558F0(taskMan);
            v1->unk_0C = 8;
        }
    } break;
    case 5:
        v1->unk_0E++;

        if ((v1->unk_0E >= 60) || (gCoreSys.pressedKeys & PAD_BUTTON_A)) {
            ov6_02242A94(v1->unk_0D, v1->unk_04);
            v1->unk_08 = ov6_02242AEC(v1->unk_04);
            Sound_PlayEffect(1657);
            sub_02056B30(taskMan, 3, 16, 0xffff, 0x0, 6, 1, 11);
            v1->unk_0C = 6;
        }
        break;
    case 6:
        ov6_02242814(v1->unk_00);
        v1->unk_0C = 7;
        break;
    case 7:
        if (ov6_02242820(v1->unk_00)) {
            ov6_02242828(v1->unk_00);
            v1->unk_0C = 1;
        }
        break;
    case 8:
        sub_02070428(fieldSystem, 0);
        ov6_02242A8C(v1->unk_04);
        ov6_022426B8(v1->unk_00);
        Heap_FreeToHeap(v1);

        return 1;
    }

    return 0;
}
