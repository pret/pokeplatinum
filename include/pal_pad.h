#ifndef POKEPLATINUM_UNK_PAL_PAD_H
#define POKEPLATINUM_UNK_PAL_PAD_H

#include "constants/string.h"

#include "savedata.h"

#define PAL_PAD_ENTRIES 16

// each PalPad represents a single trainer inside your pal pad. it also contains a reference to all 16 of that trainer's pal pad entries!
// these associated trainers can be thought of as your friends of friends, even if you have no direct pal pad entry for them.
typedef struct PalPad {
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u32 trainerId;
    u8 regionCode;
    u8 gameCode;
    u8 gender;
    u8 padding_17;

    // these are the 16 trainers inside the owners' pal pad
    u32 associatedTrainerIds[PAL_PAD_ENTRIES];
    u8 associatedTrainerGameCodes[PAL_PAD_ENTRIES];
    u8 associatedTrainerRegionCodes[PAL_PAD_ENTRIES];
    u8 associatedTrainerGenders[PAL_PAD_ENTRIES];
} PalPad;

int PalPad_SaveSize(void);
PalPad *SaveData_GetPalPad(SaveData *saveData);
void PalPad_Init(PalPad *palPad);

/**
 * @brief Get the pointer to a friends' name
 *
 * @param palPad
 * @param trainerIndex
 * @return A pointer to a trainer name for string buffers
 */
const u16 *PalPad_GetTrainerNamePointer(const PalPad *palPad, int trainerIndex);

/**
 * @brief Get the region code for a friend of friend
 *
 * @param palPad
 * @param trainerIndex
 * @return A region code value returned by TrainerInfo_RegionCode
 */
u8 PalPad_GetTrainerRegionCode(const PalPad *palPad, int trainerIndex);

/**
 * @brief Compare two Pal Pads by their trainer name & ID
 *
 * @param first
 * @param second
 * @return TRUE if trainer name & ID matches, FALSE otherwise
 */
BOOL PalPad_AreTrainersEqual(const PalPad *first, const PalPad *second);

/**
 * @brief Push {numberToCopy} entries from the beginning of {source} to the beginning of {destination}
 *
 * @param destination   The pad to push entries into
 * @param source        The pad to push from
 * @param numberToCopy  The number of elements to take from {source}
 * @param heapId        Heap area for pointer operations
 */
void PalPad_PushEntries(PalPad *destination, PalPad *source, int numberToCopy, int heapID);

/**
 * @brief Determine whether a given trainer ID is a known friend or not
 *
 * @param palPad    The Pal Pad to reference
 * @param trainerId The trainer ID to search for
 * @return 0 if not a friend; 1 if a direct friend; 2+ if a friend of a friend
 */
int PalPad_TrainerIsFriend(PalPad *palPad, u32 trainerId);

#endif // POKEPLATINUM_UNK_PAL_PAD_H
