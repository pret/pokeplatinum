#ifndef POKEPLATINUM_UNK_PAL_PAD_H
#define POKEPLATINUM_UNK_PAL_PAD_H

#include "constants/string.h"

#include "savedata.h"

#define PAL_PAD_ENTRIES 16

typedef struct PalPad {
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u32 trainerId;
    u8 regionCode;
    u8 gameCode;
    u8 gender;
    u8 padding_17;

    // these are the 16 trainers inside the owners' pal pad
    u32 trainerIdHistory[PAL_PAD_ENTRIES];
    u8 gameCodeHistory[PAL_PAD_ENTRIES];
    u8 regionCodeHistory[PAL_PAD_ENTRIES];
    u8 genderHistory[PAL_PAD_ENTRIES];
} PalPad;

int PalPad_SaveSize(void);
PalPad *SaveData_GetPalPad(SaveData *saveData);
void PalPad_Init(PalPad *param0);
const u16 *PalPad_GetTrainerNamePointer(const PalPad *palPad, int trainerIndex);
u8 PalPad_GetTrainerRegionCode(const PalPad *palPad, int trainerIndex);
BOOL PalPad_TrainersEqual(const PalPad *first, const PalPad *second);
void sub_02027FEC(PalPad *param0, PalPad *param1, int param2, int heapID);
int sub_020280E0(PalPad *param0, u32 param1);

#endif // POKEPLATINUM_UNK_PAL_PAD_H
