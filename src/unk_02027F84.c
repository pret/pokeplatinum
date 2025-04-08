#include "unk_02027F84.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02027F8C.h"

#include "charcode_util.h"
#include "heap.h"
#include "savedata.h"

int PalPad_SaveSize(void)
{
    return sizeof(PalPad) * 16;
}

PalPad *SaveData_PalPad(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PAL_PAD);
}

void PalPad_Init(PalPad *param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        memset(&param0[v0], 0, sizeof(PalPad));
        param0[v0].unk_00[0] = 0xffff;
    }
}

const u16 *sub_02027FBC(const PalPad *param0, int param1)
{
    return param0[param1].unk_00;
}

u8 sub_02027FC4(const PalPad *param0, int param1)
{
    return param0->unk_68[param1];
}

BOOL sub_02027FCC(const PalPad *param0, const PalPad *param1)
{
    if (0 == CharCode_Compare(param0->unk_00, param1->unk_00)) {
        if (param0->unk_10 == param1->unk_10) {
            return 1;
        }
    }

    return 0;
}

void sub_02027FEC(PalPad *param0, PalPad *param1, int param2, int heapID)
{
    int v0, v1, v2;
    int v3[5];
    PalPad *v4 = Heap_AllocFromHeap(heapID, sizeof(PalPad) * 16);
    PalPad_Init(v4);

    for (v0 = 0; v0 < param2; v0++) {
        v3[v0] = -1;

        for (v1 = 0; v1 < 16; v1++) {
            if (sub_02027FCC(&param0[v1], &param1[v0])) {
                v3[v0] = v1;
            }
        }
    }

    v2 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v4[v2] = param1[v0];

        if (v3[v0] >= 0) {
            param0[v3[v0]].unk_00[0] = 0xffff;
        }

        v2++;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (param0[v0].unk_00[0] != 0xffff) {
            v4[v2] = param0[v0];
            v2++;

            if (v2 >= 16) {
                break;
            }
        }
    }

    memcpy(param0, v4, sizeof(PalPad) * 16);
    Heap_FreeToHeap(v4);
}

int sub_020280E0(PalPad *param0, u32 param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0[v0].unk_10 == param1) {
            return 1;
        }
    }

    for (v0 = 0; v0 < 16; v0++) {
        for (v1 = 0; v1 < 16; v1++) {
            if (param0[v0].unk_18[v1] == param1) {
                return 2 + v0;
            }
        }
    }

    return 0;
}
