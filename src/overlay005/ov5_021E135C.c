#include <nitro.h>

#include <string.h>
#include <nitro/os.h>

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"

#include "unk_02005474.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_0205E7D0.h"
#include "map_object.h"
#include "overlay005/ov5_021E135C.h"
#include "overlay005/ov5_021ECC20.h"

typedef struct {
    FieldSystem * unk_00;
    BOOL * unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov5_021E135C;

static void ov5_021E135C (UnkStruct_ov5_021E135C * param0)
{
    switch (param0->unk_10) {
    case 0:
        param0->unk_10 = 2;
        break;
    case 2:
        param0->unk_10 = 1;
        break;
    case 1:
        param0->unk_10 = 3;
        break;
    case 3:
        param0->unk_10 = 0;
        break;
    }

    Player_SetDir(param0->unk_00->playerAvatar, param0->unk_10);
}

static void ov5_021E139C (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021E135C * v0 = param1;
    MapObject * v1 = Player_MapObject(v0->unk_00->playerAvatar);
    VecFx32 v2;

    switch (v0->unk_08) {
    case 0:
        v0->unk_08 = 1;
        Sound_PlayEffect(1615);
    case 1:
        if (v0->unk_0C % 2) {
            ov5_021E135C(v0);
        }

        sub_0206309C(v1, &v2);
        v2.y = ((FX32_ONE * 2.2) + ((FX32_ONE / 2) * v0->unk_0C)) * v0->unk_0C;

        sub_020630AC(v1, &v2);
        v0->unk_0C++;

        if (v0->unk_0C == 20) {
            sub_0200F174(2, 0, 0, 0x0, 6, 1, 4);
        } else if ((v0->unk_0C > 20) && ScreenWipe_Done()) {
            *v0->unk_04 = 1;
            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
        } else {
            break;
        }
    }
}

static void ov5_021E1470 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021E135C * v0 = param1;
    MapObject * v1 = Player_MapObject(v0->unk_00->playerAvatar);
    VecFx32 v2;
    int v3;

    switch (v0->unk_08) {
    case 0:
    {
        sub_02062DDC(v1);
        sub_0206309C(v1, &v2);
        v3 = (20 - v0->unk_0C);
        v2.y = ((FX32_ONE * 2.2) + ((FX32_ONE / 2) * v3)) * v3;
        sub_020630AC(v1, &v2);
        ov5_021ECCC8(v1);
    }

        Sound_PlayEffect(1615);
        v0->unk_08 = 1;
    case 1:
        if (v0->unk_0C % 2) {
            ov5_021E135C(v0);
        }

        sub_0206309C(v1, &v2);
        v3 = (20 - v0->unk_0C);
        v2.y = ((FX32_ONE * 2.2) + ((FX32_ONE / 2) * v3)) * v3;
        sub_020630AC(v1, &v2);
        v0->unk_0C++;

        if (v0->unk_0C == 2) {
            sub_0200F174(1, 1, 1, 0x0, 6, 1, 4);
        }

        if (v0->unk_0C > 20) {
            v0->unk_08 = 2;
        }
        break;
    case 2:
        if (ScreenWipe_Done()) {
            Player_SetDir(v0->unk_00->playerAvatar, 1);
            *v0->unk_04 = 1;
            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
        }
        break;
    }
}

void ov5_021E15A8 (FieldSystem * param0, BOOL param1, BOOL * param2)
{
    UnkStruct_ov5_021E135C * v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021E135C));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov5_021E135C));

    v0->unk_00 = param0;
    v0->unk_04 = param2;
    v0->unk_10 = Player_Dir(param0->playerAvatar);

    if (param1) {
        SysTask_Start(ov5_021E139C, v0, 100);
    } else {
        SysTask_Start(ov5_021E1470, v0, 100);
    }
}
