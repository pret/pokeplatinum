#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "core_sys.h"

#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_02049FA8.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02005474.h"
#include "heap.h"
#include "unk_02020020.h"
#include "unk_02050568.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_02055808.h"
#include "unk_02056B30.h"
#include "player_avatar.h"
#include "map_object.h"
#include "unk_0206A8DC.h"
#include "unk_02070428.h"

typedef struct {
    FieldSystem * unk_00;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09[3];
} UnkStruct_02050568;

static BOOL sub_020505A0(TaskManager * param0);
static void sub_0205074C(PlayerAvatar * param0, BOOL param1);
static void sub_0205075C(FieldSystem * param0);

void sub_02050568 (FieldSystem * param0)
{
    UnkStruct_02050568 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02050568));

    memset(v0, 0, sizeof(UnkStruct_02050568));
    sub_02050944(param0->unk_10, sub_020505A0, v0);
}

static BOOL sub_020505A0 (TaskManager * param0)
{
    FieldSystem * v0 = TaskManager_FieldSystem(param0);
    UnkStruct_02050568 * v1 = TaskManager_Environment(param0);
    UnkStruct_020507E4 * v2 = SaveData_Events(v0->saveData);

    switch (v1->unk_08) {
    case 0:
        v1->unk_04 = Player_XPos(v0->playerAvatar);
        v1->unk_06 = Player_ZPos(v0->playerAvatar);
        sub_02070428(v0, 1);
        sub_020558AC(param0);
        v1->unk_08++;
        break;
    case 1:
        sub_02055820(param0);
        v1->unk_08++;
        break;
    case 2:
        sub_0206AE0C(v2);

        {
            UnkStruct_02049FA8 v3;

            inline_02049FA8(&v3, 172, -1, 847, 561, 1);
            sub_020539A0(param0, &v3);
        }
        v1->unk_08++;
        break;
    case 3:
        sub_02055868(param0);
        v1->unk_08++;
        break;
    case 4:
        sub_0205074C(v0->playerAvatar, 1);
        sub_0205075C(v0);
        sub_02056B30(param0, 3, 17, 0xffff, 0x0, 6, 1, 11);
        Sound_PlayEffect(1657);
        v1->unk_08++;
        break;
    case 5:
        if ((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            v1->unk_08++;
        }
        break;
    case 6:
        sub_02056B30(param0, 3, 16, 0xffff, 0x0, 6, 1, 11);
        Sound_PlayEffect(1657);
        v1->unk_08++;
        break;
    case 7:
        sub_02055820(param0);
        v1->unk_08++;
        break;
    case 8:
        sub_0206AE1C(v2);

        {
            UnkStruct_02049FA8 v4;

            inline_02049FA8(&v4, 164, -1, v1->unk_04, v1->unk_06, 0);
            sub_020539A0(param0, &v4);
        }
        v1->unk_08++;
        break;
    case 9:
        sub_02055868(param0);
        v1->unk_08++;
        break;
    case 10:
        sub_0205074C(v0->playerAvatar, 0);
        sub_020558F0(param0);
        v1->unk_08++;
        break;
    case 11:
        Heap_FreeToHeap(v1);
        sub_02070428(v0, 0);
        return 1;
    }

    return 0;
}

static void sub_0205074C (PlayerAvatar * param0, BOOL param1)
{
    MapObject * v0 = Player_MapObject(param0);
    MapObject_SetHidden(v0, param1);
}

static void sub_0205075C (FieldSystem * param0)
{
    VecFx32 v0;
    UnkStruct_ov115_0226527C v1;

    sub_02020910(0x8c1, param0->unk_24);
    sub_02020A50(0xf81b8, param0->unk_24);

    v0.x = 0x350523d;
    v0.y = 0x15edb7;
    v0.z = 0x23da40e;

    sub_02020ACC(&v0, param0->unk_24);

    v1.unk_00 = 0x823;
    v1.unk_02 = 0x520;
    v1.unk_04 = 0;

    sub_020209D4(&v1, param0->unk_24);
    sub_020206BC(12 * FX32_ONE, 1564 * FX32_ONE, param0->unk_24);
}
