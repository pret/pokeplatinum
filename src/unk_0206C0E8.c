#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay006/struct_ov6_022426B8_decl.h"
#include "overlay006/struct_ov6_02242A8C_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_02049FA8.h"

#include "unk_02005474.h"
#include "heap.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_02055808.h"
#include "unk_02056B30.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_0206A8DC.h"
#include "unk_0206C0E8.h"
#include "unk_02070428.h"
#include "overlay006/ov6_022426AC.h"
#include "overlay006/ov6_02242984.h"

typedef struct {
    UnkStruct_ov6_022426B8 * unk_00;
    UnkStruct_ov6_02242A8C * unk_04;
    UnkStruct_02049FA8 * unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
} UnkStruct_0206C0E8;

static BOOL sub_0206C120(UnkStruct_020508D4 * param0);

void sub_0206C0E8 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0206C0E8 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206C0E8));

    v0->unk_00 = ov6_022426AC(11);
    v0->unk_04 = ov6_02242A10(11, param0);
    v0->unk_0C = 0;
    v0->unk_0D = 0;

    sub_02050944(param0->unk_10, sub_0206C120, v0);
}

static BOOL sub_0206C120 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0206C0E8 * v1 = sub_02050A64(param0);

    switch (v1->unk_0C) {
    case 0:
        sub_02070428(v0, 1);
        ov6_02242A94(v1->unk_0D, v1->unk_04);
        v1->unk_08 = ov6_02242AEC(v1->unk_04);
        sub_020558AC(param0);
        v1->unk_0C = 1;
        break;
    case 1:
        sub_02055820(param0);
        v1->unk_0C = 2;
        break;
    case 2:
    {
        UnkStruct_020507E4 * v2 = SaveData_Events(v0->unk_0C);

        if (v1->unk_0D == 0) {
            sub_0206AE0C(v2);
        } else if (v1->unk_0D == 5) {
            sub_0206AE1C(v2);
        }
    }

        sub_020539A0(param0, v1->unk_08);
        v1->unk_0C = 3;
        break;
    case 3:
        sub_02055868(param0);
        v1->unk_0C = 4;
        break;
    case 4:
    {
        UnkStruct_02061AB4 * v3 = sub_0205EB3C(v0->unk_3C);

        v1->unk_0D++;

        if (v1->unk_0D <= 5) {
            int v4;

            v4 = ov6_02242984(v0);
            sub_02062D64(v3, 1);
            ov6_022426C0(v1->unk_00, v4);
            ov6_022427F4(v1->unk_00);
            v1->unk_0E = 0;
            Sound_PlayEffect(1657);
            sub_02056B30(param0, 3, 17, 0xffff, 0x0, 6, 1, 11);
            v1->unk_0C = 5;
        } else {
            sub_02062D64(v3, 0);
            sub_020558F0(param0);
            v1->unk_0C = 8;
        }
    }
    break;
    case 5:
        v1->unk_0E++;

        if ((v1->unk_0E >= 60) || (gCoreSys.pressedKeys & PAD_BUTTON_A)) {
            ov6_02242A94(v1->unk_0D, v1->unk_04);
            v1->unk_08 = ov6_02242AEC(v1->unk_04);
            Sound_PlayEffect(1657);
            sub_02056B30(param0, 3, 16, 0xffff, 0x0, 6, 1, 11);
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
        sub_02070428(v0, 0);
        ov6_02242A8C(v1->unk_04);
        ov6_022426B8(v1->unk_00);
        Heap_FreeToHeap(v1);

        return 1;
    }

    return 0;
}
