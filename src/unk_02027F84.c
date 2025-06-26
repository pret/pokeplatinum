#include "unk_02027F84.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02027F8C.h"

#include "charcode_util.h"
#include "heap.h"
#include "savedata.h"

int PalPad_SaveSize(void)
{
    return sizeof(PalPad) * PAL_PAD_ENTRIES;
}

PalPad *SaveData_GetPalPad(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PAL_PAD);
}

void PalPad_Init(PalPad *param0)
{
    int v0;

    for (v0 = 0; v0 < PAL_PAD_ENTRIES; v0++) {
        memset(&param0[v0], 0, sizeof(PalPad));
        param0[v0].trainerName[0] = 0xffff;
    }
}

const u16 *PalPad_GetTrainerNamePointer(const PalPad *palPad, int trainerIndex)
{
    return palPad[trainerIndex].trainerName;
}

u8 PalPad_GetTrainerRegionCode(const PalPad *palPad, int trainerIndex)
{
    return palPad->regionCodeHistory[trainerIndex];
}

BOOL PalPad_TrainersEqual(const PalPad *first, const PalPad *second)
{
    if (0 == CharCode_Compare(first->trainerName, second->trainerName)) {
        if (first->trainerId == second->trainerId) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_02027FEC(PalPad *param0, PalPad *param1, int param2, int heapID)
{
    int v0, v1, v2;
    int v3[5];
    PalPad *v4 = Heap_AllocFromHeap(heapID, sizeof(PalPad) * PAL_PAD_ENTRIES);
    PalPad_Init(v4);

    for (v0 = 0; v0 < param2; v0++) {
        v3[v0] = -1;

        for (v1 = 0; v1 < PAL_PAD_ENTRIES; v1++) {
            if (PalPad_TrainersEqual(&param0[v1], &param1[v0])) {
                v3[v0] = v1;
            }
        }
    }

    v2 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v4[v2] = param1[v0];

        if (v3[v0] >= 0) {
            param0[v3[v0]].trainerName[0] = 0xffff;
        }

        v2++;
    }

    for (v0 = 0; v0 < PAL_PAD_ENTRIES; v0++) {
        if (param0[v0].trainerName[0] != 0xffff) {
            v4[v2] = param0[v0];
            v2++;

            if (v2 >= PAL_PAD_ENTRIES) {
                break;
            }
        }
    }

    memcpy(param0, v4, sizeof(PalPad) * PAL_PAD_ENTRIES);
    Heap_FreeToHeap(v4);
}

int sub_020280E0(PalPad *param0, u32 param1)
{
    int v0, v1;

    for (v0 = 0; v0 < PAL_PAD_ENTRIES; v0++) {
        if (param0[v0].trainerId == param1) {
            return 1;
        }
    }

    for (v0 = 0; v0 < PAL_PAD_ENTRIES; v0++) {
        for (v1 = 0; v1 < PAL_PAD_ENTRIES; v1++) {
            if (param0[v0].trainerIdHistory[v1] == param1) {
                return 2 + v0;
            }
        }
    }

    return 0;
}
