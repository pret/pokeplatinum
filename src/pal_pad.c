#include "pal_pad.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "charcode_util.h"
#include "heap.h"
#include "pal_pad.h"
#include "savedata.h"

int PalPad_SaveSize(void)
{
    return sizeof(PalPad) * PAL_PAD_ENTRIES;
}

PalPad *SaveData_GetPalPad(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PAL_PAD);
}

void PalPad_Init(PalPad *palPad)
{
    int i;

    for (i = 0; i < PAL_PAD_ENTRIES; i++) {
        memset(&palPad[i], 0, sizeof(PalPad));
        palPad[i].trainerName[0] = CHAR_EOS;
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

void PalPad_PushEntries(PalPad *destination, PalPad *source, int numberToCopy, int heapID)
{
    int i, j, newIndex;
    int diffs[5];
    PalPad *newPad = Heap_AllocFromHeap(heapID, sizeof(PalPad) * PAL_PAD_ENTRIES);
    PalPad_Init(newPad);

    for (i = 0; i < numberToCopy; i++) {
        diffs[i] = -1;

        for (j = 0; j < PAL_PAD_ENTRIES; j++) {
            if (PalPad_TrainersEqual(&destination[j], &source[i])) {
                diffs[i] = j;
            }
        }
    }

    newIndex = 0;

    for (i = 0; i < numberToCopy; i++) {
        newPad[newIndex] = source[i];

        // this index is the same in both pads; unset name to skip later
        if (diffs[i] >= 0) {
            destination[diffs[i]].trainerName[0] = CHAR_EOS;
        }

        newIndex++;
    }

    for (i = 0; i < PAL_PAD_ENTRIES; i++) {
        // if the current index has a name, append it to the new list
        if (destination[i].trainerName[0] != CHAR_EOS) {
            newPad[newIndex] = destination[i];
            newIndex++;

            if (newIndex >= PAL_PAD_ENTRIES) {
                break;
            }
        }
    }

    memcpy(destination, newPad, sizeof(PalPad) * PAL_PAD_ENTRIES);
    Heap_FreeToHeap(newPad);
}

int PalPad_TrainerIsFriend(PalPad *palPad, u32 trainerId)
{
    int i, j;

    for (i = 0; i < PAL_PAD_ENTRIES; i++) {
        if (palPad[i].trainerId == trainerId) {
            return 1;
        }
    }

    for (i = 0; i < PAL_PAD_ENTRIES; i++) {
        for (j = 0; j < PAL_PAD_ENTRIES; j++) {
            if (palPad[i].trainerIdHistory[j] == trainerId) {
                return 2 + i;
            }
        }
    }

    return 0;
}
