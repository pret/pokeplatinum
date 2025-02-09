#include "overlay012/ov12_0222E784.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay012/struct_ov12_02235998.h"

#include "sprite_system.h"
#include "sys_task_manager.h"
#include "unk_0200762C.h"

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    UnkStruct_ov12_02235998 unk_30[2];
    s16 unk_58;
    s16 unk_5A;
    s16 unk_5C;
    UnkStruct_ov12_02225F6C unk_60;
} UnkStruct_ov12_0222E784;

static void ov12_0222E784(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222E784 *v0 = (UnkStruct_ov12_0222E784 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if (ov12_02225F6C(&v0->unk_60) == 0) {
            Sprite_SetDrawFlag2(v0->unk_1C.unk_0C, 0);
            Sprite_SetDrawFlag2(v0->unk_30[0].unk_0C, 0);
            Sprite_SetDrawFlag2(v0->unk_30[0].unk_0C, 0);

            ov12_02220220(v0->unk_00.unk_04, param0);
            ov12_02235E80(v0);
            (v0) = NULL;

            return;
        }

        {
            f32 v1, v2;

            ov12_02225FA4(&v0->unk_60, &v1, &v2);
            Sprite_SetAffineScale(v0->unk_1C.unk_0C, v1, v2);
            ov12_0222605C(v0->unk_1C.unk_0C, v0->unk_58, v0->unk_5A, v0->unk_60.unk_04[4], 0);
        }
        break;
    default:
        return;
    }

    Sprite_TickOneFrame(v0->unk_1C.unk_0C);
    Sprite_TickOneFrame(v0->unk_30[0].unk_0C);
    Sprite_TickOneFrame(v0->unk_30[1].unk_0C);
    SpriteSystem_DrawSprites(v0->unk_00.unk_0C);
}

void ov12_0222E810(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222E784 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222E784));

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_1C.unk_08 = ov12_022232FC(v0->unk_00.unk_04, ov12_02220248(v0->unk_00.unk_04));
    v0->unk_58 = sub_020080C0(v0->unk_1C.unk_08, 1);
    v0->unk_5C = v0->unk_58;
    v0->unk_5A = ov12_02223354(v0->unk_00.unk_04, ov12_02220248(v0->unk_00.unk_04));
    v0->unk_1C.unk_0C = ov12_022202C0(param0, 0);
    v0->unk_30[0].unk_0C = ov12_022202C0(param0, 1);
    v0->unk_30[1].unk_0C = ov12_022202C0(param0, 2);

    Sprite_SetAffineOverwriteMode(v0->unk_1C.unk_0C, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetExplicitPriority(v0->unk_1C.unk_0C, ov12_0222339C(param0));
    Sprite_SetExplicitPriority(v0->unk_30[0].unk_0C, ov12_0222339C(param0));
    Sprite_SetExplicitPriority(v0->unk_30[1].unk_0C, ov12_0222339C(param0));

    {
        int v1;

        v1 = ov12_022232B8(v0->unk_00.unk_04, ov12_02220248(v0->unk_00.unk_04));

        if ((v1 == 3) || (v1 == 4)) {
            Sprite_SetPriority(v0->unk_1C.unk_0C, 30);
            Sprite_SetPriority(v0->unk_30[0].unk_0C, 50);
            Sprite_SetPriority(v0->unk_30[1].unk_0C, 70);
        } else {
            Sprite_SetPriority(v0->unk_1C.unk_0C, 60);
            Sprite_SetPriority(v0->unk_30[0].unk_0C, 70);
            Sprite_SetPriority(v0->unk_30[1].unk_0C, 50);
        }
    }

    ov12_02225EF0(&v0->unk_60, 100, 20, 100, 20, 100, 10);
    ov12_022201E8(v0->unk_00.unk_04, ov12_0222E784, v0);
}
