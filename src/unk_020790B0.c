#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020790C4.h"

#include "unk_020068C8.h"
#include "unk_020790B0.h"

void sub_020790B0(void * param0);
u32 sub_020790C4(int param0, int param1);
u8 sub_020790DC(u16 param0, u8 param1);
u32 sub_02079104(UnkStruct_020790C4 * param0, int param1);
static void sub_02079160(int param0, UnkStruct_020790C4 * param1);

void sub_020790B0 (void * param0)
{
    sub_02006AFC(param0, 9, 0, 0, sizeof(UnkStruct_020790C4) * (467 + 1));
}

u32 sub_020790C4 (int param0, int param1)
{
    UnkStruct_020790C4 v0;

    sub_02079160(param0, &v0);
    return sub_02079104(&v0, param1);
}

u8 sub_020790DC (u16 param0, u8 param1)
{
    u8 v0;

    if (param1 > 3) {
        param1 = 3;
    }

    v0 = sub_020790C4(param0, 5);
    v0 += (v0 * 20 * param1) / 100;

    return v0;
}

u32 sub_02079104 (UnkStruct_020790C4 * param0, int param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        v0 = param0->unk_00;
        break;
    case 1:
        v0 = param0->unk_02;
        break;
    case 2:
        v0 = param0->unk_03;
        break;
    case 3:
        v0 = param0->unk_04;
        break;
    case 4:
        v0 = param0->unk_05;
        break;
    case 5:
        v0 = param0->unk_06;
        break;
    case 6:
        v0 = param0->unk_07;
        break;
    case 7:
        v0 = param0->unk_08;
        break;
    case 8:
        v0 = param0->unk_0A;
        break;
    case 9:
        v0 = param0->unk_0B;
        break;
    case 10:
        v0 = param0->unk_0C.unk_00;
        break;
    case 11:
        v0 = param0->unk_0C.unk_01;
        break;
    }

    return v0;
}

static void sub_02079160 (int param0, UnkStruct_020790C4 * param1)
{
    sub_02006AA4(param1, 9, param0);
}
