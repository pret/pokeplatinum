#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/options.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"

Options * sub_020279FC (u32 param0)
{
    Options * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(Options));
    sub_02027A1C(v0);

    return v0;
}

void sub_02027A10 (const Options * param0, Options * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(Options));
}

void sub_02027A1C (Options * param0)
{
    MI_CpuFill8(param0, 0, sizeof(Options));

    param0->textSpeed = 1;
    param0->soundMethod = 0;
    param0->battleStyle = 0;
    param0->battleScene = 0;
    param0->buttonMode = 0;
    param0->frame = 0;
}

void sub_02027A68 (SaveData * param0, int param1)
{
    Options * v0;

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

int sub_02027AA4 (const Options * param0)
{
    return param0->textSpeed;
}

void sub_02027AAC (Options * param0, int param1)
{
    param0->textSpeed = param1;
}

u8 sub_02027AC0 (const Options * param0)
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

int sub_02027ADC (const Options * param0)
{
    return param0->soundMethod;
}

void sub_02027AE4 (Options * param0, int param1)
{
    param0->soundMethod = param1;
}

int GameConfig_BattleAnimations (const Options * param0)
{
    return param0->battleScene;
}

void sub_02027B00 (Options * param0, int param1)
{
    param0->battleScene = param1;
}

int sub_02027B14 (const Options * param0)
{
    return param0->battleStyle;
}

void sub_02027B1C (Options * param0, int param1)
{
    param0->battleStyle = param1;
}

int sub_02027B30 (const Options * param0)
{
    return param0->buttonMode;
}

void sub_02027B38 (Options * param0, int param1)
{
    param0->buttonMode = param1;
}

int sub_02027B50 (const Options * param0)
{
    return param0->frame;
}

void sub_02027B58 (Options * param0, int param1)
{
    param0->frame = param1;
}
