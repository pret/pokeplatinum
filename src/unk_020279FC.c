#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_020279FC.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"

AnimationControlFlags * sub_020279FC (u32 param0)
{
    AnimationControlFlags * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(AnimationControlFlags));
    sub_02027A1C(v0);

    return v0;
}

void sub_02027A10 (const AnimationControlFlags * param0, AnimationControlFlags * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(AnimationControlFlags));
}

void sub_02027A1C (AnimationControlFlags * param0)
{
    MI_CpuFill8(param0, 0, sizeof(AnimationControlFlags));

    param0->unk_00_0 = 1;
    param0->unk_00_4 = 0;
    param0->unk_00_6 = 0;
    param0->unk_00_7 = 0;
    param0->unk_02_0 = 0;
    param0->unk_02_2 = 0;
}

void sub_02027A68 (SaveData * param0, int param1)
{
    AnimationControlFlags * v0;

    if (param0 != NULL) {
        param1 = sub_02027B30(sub_02025E44(param0));
    }

    switch (param1) {
    case 1:
        gCoreSys.buttonMode = 1;
        break;
    case 2:
        gCoreSys.buttonMode = 3;
        break;
    case 0:
    default:
        gCoreSys.buttonMode = 0;
        break;
    }
}

int sub_02027AA4 (const AnimationControlFlags * param0)
{
    return param0->unk_00_0;
}

void sub_02027AAC (AnimationControlFlags * param0, int param1)
{
    param0->unk_00_0 = param1;
}

u8 sub_02027AC0 (const AnimationControlFlags * param0)
{
    int v0 = sub_02027AA4(param0);

    if (v0 == 0) {
        return 8;
    } else if (v0 == 1) {
        return 4;
    } else {
        return 1;
    }
}

int sub_02027ADC (const AnimationControlFlags * param0)
{
    return param0->unk_00_4;
}

void sub_02027AE4 (AnimationControlFlags * param0, int param1)
{
    param0->unk_00_4 = param1;
}

int GameConfig_BattleAnimations (const AnimationControlFlags * param0)
{
    return param0->unk_00_7;
}

void sub_02027B00 (AnimationControlFlags * param0, int param1)
{
    param0->unk_00_7 = param1;
}

int sub_02027B14 (const AnimationControlFlags * param0)
{
    return param0->unk_00_6;
}

void sub_02027B1C (AnimationControlFlags * param0, int param1)
{
    param0->unk_00_6 = param1;
}

int sub_02027B30 (const AnimationControlFlags * param0)
{
    return param0->unk_02_0;
}

void sub_02027B38 (AnimationControlFlags * param0, int param1)
{
    param0->unk_02_0 = param1;
}

int sub_02027B50 (const AnimationControlFlags * param0)
{
    return param0->unk_02_2;
}

void sub_02027B58 (AnimationControlFlags * param0, int param1)
{
    param0->unk_02_2 = param1;
}
