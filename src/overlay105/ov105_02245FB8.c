#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02022550_decl.h"
#include "overlay105/struct_ov105_02246060_decl.h"

#include "overlay105/struct_ov105_02245AAC.h"
#include "overlay105/struct_ov105_02246394.h"

#include "heap.h"
#include "unk_020218BC.h"
#include "overlay105/ov105_02245AAC.h"
#include "overlay105/ov105_02245FB8.h"

struct UnkStruct_ov105_02246060_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    const UnkStruct_ov105_02246394 * unk_04;
    const u8 * unk_08;
    GraphicElementData * unk_0C;
    u8 unk_10;
};

UnkStruct_ov105_02246060 * ov105_02245FB8(UnkStruct_ov105_02245AAC * param0, u8 param1, u8 param2, u8 param3, u8 param4, const UnkStruct_ov105_02246394 * param5, const u8 * param6);
void * ov105_02246060(UnkStruct_ov105_02246060 * param0);
void ov105_02246074(UnkStruct_ov105_02246060 * param0, int param1);
void ov105_02246080(UnkStruct_ov105_02246060 * param0);
u8 ov105_022461A0(UnkStruct_ov105_02246060 * param0);
void ov105_022461A4(UnkStruct_ov105_02246060 * param0, int param1);
void ov105_022461C0(UnkStruct_ov105_02246060 * param0, u8 param1);

UnkStruct_ov105_02246060 * ov105_02245FB8 (UnkStruct_ov105_02245AAC * param0, u8 param1, u8 param2, u8 param3, u8 param4, const UnkStruct_ov105_02246394 * param5, const u8 * param6)
{
    UnkStruct_ov105_02246060 * v0;
    VecFx32 v1;

    v0 = Heap_AllocFromHeap(93, sizeof(UnkStruct_ov105_02246060));
    memset(v0, 0, sizeof(UnkStruct_ov105_02246060));

    v0->unk_00 = param1;
    v0->unk_10 = param2;
    v0->unk_01 = param3;
    v0->unk_02 = param4;
    v0->unk_04 = param5;
    v0->unk_08 = param6;

    if (param6 != NULL) {
        v0->unk_0C = ov105_02245BA4(param0, 0, v0->unk_08[param4], 0, 0, 0);
    } else {
        if (param3 == 0) {
            v0->unk_0C = ov105_02245BA4(param0, 0, 8, 0, 0, 0);
        } else {
            v0->unk_0C = ov105_02245BA4(param0, 0, 9, 0, 0, 0);
        }
    }

    v1.x = (v0->unk_04[v0->unk_02].unk_00 * FX32_ONE);
    v1.y = (v0->unk_04[v0->unk_02].unk_02 * FX32_ONE);

    sub_02021C50(v0->unk_0C, &v1);
    return v0;
}

void * ov105_02246060 (UnkStruct_ov105_02246060 * param0)
{
    sub_02021BD4(param0->unk_0C);
    Heap_FreeToHeap(param0);

    return NULL;
}

void ov105_02246074 (UnkStruct_ov105_02246060 * param0, int param1)
{
    sub_02021CAC(param0->unk_0C, param1);
    return;
}

void ov105_02246080 (UnkStruct_ov105_02246060 * param0)
{
    VecFx32 v0;
    u32 v1, v2;

    if (param0->unk_03 == 1) {
        return;
    }

    if (gCoreSys.padInput == 0) {
        return;
    }

    if (param0->unk_01 == 2) {
        if (gCoreSys.padInput & PAD_KEY_LEFT) {
            if (param0->unk_02 == 0) {
                param0->unk_02 = (param0->unk_00 - 1);
            } else {
                param0->unk_02--;
            }
        } else if (gCoreSys.padInput & PAD_KEY_RIGHT) {
            if (param0->unk_02 == (param0->unk_00 - 1)) {
                param0->unk_02 = 0;
            } else {
                param0->unk_02++;
            }
        } else if (gCoreSys.padInput & PAD_KEY_DOWN) {
            if (param0->unk_02 < (param0->unk_10)) {
                param0->unk_02 = param0->unk_10;
            } else if (param0->unk_02 == (param0->unk_00 - 1)) {
                param0->unk_02 = 0;
            } else {
                param0->unk_02++;
            }
        } else if (gCoreSys.padInput & PAD_KEY_UP) {
            if (param0->unk_02 < (param0->unk_10)) {
                param0->unk_02 = (param0->unk_00 - 1);
            } else {
                param0->unk_02--;
            }
        }
    } else {
        if (param0->unk_01 == 0) {
            v1 = PAD_KEY_RIGHT;
            v2 = PAD_KEY_LEFT;
        } else {
            v1 = PAD_KEY_DOWN;
            v2 = PAD_KEY_UP;
        }

        if (gCoreSys.padInput & v1) {
            param0->unk_02++;

            if (param0->unk_02 >= param0->unk_00) {
                param0->unk_02 = 0;
            }
        } else if (gCoreSys.padInput & v2) {
            if (param0->unk_02 == 0) {
                param0->unk_02 = param0->unk_00;
            }

            param0->unk_02--;
        }
    }

    if (param0->unk_08 != NULL) {
        sub_02021DCC(param0->unk_0C, param0->unk_08[param0->unk_02]);
    }

    v0 = *(sub_02021D28(param0->unk_0C));
    v0.x = (param0->unk_04[param0->unk_02].unk_00 * FX32_ONE);
    v0.y = (param0->unk_04[param0->unk_02].unk_02 * FX32_ONE);

    sub_02021C50(param0->unk_0C, &v0);
    return;
}

u8 ov105_022461A0 (UnkStruct_ov105_02246060 * param0)
{
    return param0->unk_02;
}

void ov105_022461A4 (UnkStruct_ov105_02246060 * param0, int param1)
{
    param0->unk_03 = param1;

    if (param1 == 0) {
        sub_02021DCC(param0->unk_0C, 8);
    } else {
        sub_02021DCC(param0->unk_0C, 13);
    }

    return;
}

void ov105_022461C0 (UnkStruct_ov105_02246060 * param0, u8 param1)
{
    VecFx32 v0;

    param0->unk_02 = param1;

    if (param0->unk_08 != NULL) {
        sub_02021DCC(param0->unk_0C, param0->unk_08[param0->unk_02]);
    }

    v0 = *(sub_02021D28(param0->unk_0C));

    v0.x = (param0->unk_04[param0->unk_02].unk_00 * FX32_ONE);
    v0.y = (param0->unk_04[param0->unk_02].unk_02 * FX32_ONE);

    sub_02021C50(param0->unk_0C, &v0);
    return;
}
