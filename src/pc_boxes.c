#include "pc_boxes.h"

#include <nitro.h>
#include <string.h>

#include "generated/species.h"

#include "message.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"

#include "res/text/bank/pokemon_storage_system.h"

typedef struct PCBoxes {
    u32 currentBoxID;
    BoxPokemon boxMons[MAX_PC_BOXES][MAX_MONS_PER_BOX];
    u16 names[MAX_PC_BOXES][PC_BOX_NAME_BUFFER_LEN];
    u8 wallpapers[MAX_PC_BOXES];
    u8 unlockedWallpapers;
} PCBoxes;

static void PCBoxes_InitInternal(PCBoxes *pcBoxes);

void PCBoxes_Init(PCBoxes *pcBoxes)
{
    PCBoxes_InitInternal(pcBoxes);
    SaveData_SetFullSaveRequired();
}

u32 PCBoxes_SaveSize(void)
{
    return sizeof(PCBoxes);
}

static void PCBoxes_InitInternal(PCBoxes *pcBoxes)
{
    u32 boxID, i;
    for (boxID = 0; boxID < MAX_PC_BOXES; boxID++) {
        for (i = 0; i < MAX_MONS_PER_BOX; i++) {
            BoxPokemon_Init(&pcBoxes->boxMons[boxID][i]);
        }
    }

    for (boxID = 0, i = 0; boxID < MAX_PC_BOXES; boxID++) {
        pcBoxes->wallpapers[boxID] = i++;

        if (i >= MAX_DEFAULT_WALLPAPERS) {
            i = 0;
        }
    }

    pcBoxes->unlockedWallpapers = 0;

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_STORAGE_SYSTEM, HEAP_ID_SYSTEM);
    if (messageLoader) {
        for (boxID = 0; boxID < MAX_PC_BOXES; boxID++) {
            MessageLoader_Get(messageLoader, PokemonStorageSystem_Text_Box1 + boxID, pcBoxes->names[boxID]);
        }

        MessageLoader_Free(messageLoader);
    }

    pcBoxes->currentBoxID = 0;
}

BOOL PCBoxes_TryStoreBoxMon(PCBoxes *pcBoxes, BoxPokemon *boxMon)
{
    u32 boxID = pcBoxes->currentBoxID;
    do {
        BoxPokemon_RestorePP(boxMon);

        if (PCBoxes_TryStoreBoxMonInBox(pcBoxes, boxID, boxMon)) {
            SaveData_SetFullSaveRequired();
            return TRUE;
        }

        if (++boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }
    } while (boxID != pcBoxes->currentBoxID);

    return FALSE;
}

BOOL PCBoxes_TryStoreBoxMonInBox(PCBoxes *pcBoxes, u32 boxID, BoxPokemon *boxMon)
{
    u32 monPosInBox;

    BoxPokemon_RestorePP(boxMon);
    BoxPokemon_SetShayminForm(boxMon, SHAYMIN_FORM_LAND);

    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
        if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_SPECIES, NULL) == SPECIES_NONE) {
            pcBoxes->boxMons[boxID][monPosInBox] = *boxMon;
            SaveData_SetFullSaveRequired();
            return TRUE;
        }
    }

    return FALSE;
}

BOOL PCBoxes_TryStoreBoxMonAt(PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox, BoxPokemon *boxMon)
{
    BoxPokemon_RestorePP(boxMon);
    BoxPokemon_SetShayminForm(boxMon, SHAYMIN_FORM_LAND);

    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (boxID < MAX_PC_BOXES && monPosInBox < MAX_MONS_PER_BOX) {
        pcBoxes->boxMons[boxID][monPosInBox] = *boxMon;
        SaveData_SetFullSaveRequired();
        return TRUE;
    } else {
        GF_ASSERT(0);
    }

    return FALSE;
}

void PCBoxes_InitBoxMonAt(PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox)
{
    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (monPosInBox < MAX_MONS_PER_BOX && boxID < MAX_PC_BOXES) {
        BoxPokemon_Init(&pcBoxes->boxMons[boxID][monPosInBox]);
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 PCBoxes_GetCurrentBoxID(const PCBoxes *pcBoxes)
{
    return pcBoxes->currentBoxID;
}

u32 PCBoxes_FirstEmptyBox(const PCBoxes *pcBoxes)
{
    int boxID = pcBoxes->currentBoxID;

    while (TRUE) {
        for (int monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                return boxID;
            }
        }

        if (++boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }

        if (boxID == pcBoxes->currentBoxID) {
            break;
        }
    }

    return MAX_PC_BOXES;
}

BOOL PCBoxes_TryGetNextAvailableSpace(const PCBoxes *pcBoxes, int *boxIndexDest, int *monPosInBoxDest)
{
    if (*boxIndexDest == USE_CURRENT_BOX) {
        *boxIndexDest = pcBoxes->currentBoxID;
    }

    int boxID = *boxIndexDest;
    int monPosInBox = *monPosInBoxDest;

    while (TRUE) {
        for (; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_SPECIES_EXISTS, NULL) == FALSE) {
                *boxIndexDest = boxID;
                *monPosInBoxDest = monPosInBox;
                return TRUE;
            }
        }

        if (++boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }

        if (boxID == *boxIndexDest) {
            break;
        }

        monPosInBox = 0;
    }

    return MAX_PC_BOXES;
}

u32 PCBoxes_CountAllBoxMons(const PCBoxes *pcBoxes)
{
    int boxID, monPosInBox;
    u32 count = 0;

    for (boxID = 0; boxID < MAX_PC_BOXES; boxID++) {
        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_SPECIES_EXISTS, NULL)) {
                count++;
            }
        }
    }

    return count;
}

void PCBoxes_SetCurrentBox(PCBoxes *pcBoxes, u32 boxID)
{
    if (boxID < MAX_PC_BOXES) {
        pcBoxes->currentBoxID = boxID;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 PCBoxes_GetWallpaper(const PCBoxes *pcBoxes, u32 boxID)
{
    if (boxID < MAX_PC_BOXES) {
        return pcBoxes->wallpapers[boxID];
    } else {
        GF_ASSERT(0);
        return FALSE;
    }
}

void PCBoxes_SetWallpaper(PCBoxes *pcBoxes, u32 boxID, u32 wallpaper)
{
    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (boxID < MAX_PC_BOXES && wallpaper < MAX_WALLPAPERS) {
        if (wallpaper >= MAX_DEFAULT_WALLPAPERS) {
            wallpaper += MAX_UNLOCKABLE_WALLPAPERS;
        }

        pcBoxes->wallpapers[boxID] = wallpaper;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

void PCBoxes_BufferBoxName(const PCBoxes *pcBoxes, u32 boxID, Strbuf *dest)
{
    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (boxID < MAX_PC_BOXES) {
        Strbuf_CopyChars(dest, pcBoxes->names[boxID]);
    } else {
        GF_ASSERT(0);
    }
}

void PCBoxes_RenameBox(PCBoxes *pcBoxes, u32 boxID, const Strbuf *newName)
{
    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (boxID < MAX_PC_BOXES) {
        Strbuf_ToChars(newName, pcBoxes->names[boxID], 20);
        SaveData_SetFullSaveRequired();
    }
}

u32 PCBoxes_CountMonsInBox(const PCBoxes *pcBoxes, u32 boxID)
{
    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (boxID < MAX_PC_BOXES) {
        u32 count = 0;

        for (int monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_SPECIES_EXISTS, NULL)) {
                count++;
            }
        }

        return count;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 PCBoxes_CountNonEggMonsInBox(const PCBoxes *pcBoxes, u32 boxID)
{
    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    if (boxID < MAX_PC_BOXES) {
        u32 count = 0;

        for (int monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_SPECIES_EXISTS, NULL)) {
                if (BoxPokemon_GetData(&pcBoxes->boxMons[boxID][monPosInBox], MON_DATA_IS_EGG, NULL) == FALSE) {
                    count++;
                }
            }
        }

        return count;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 PCBoxes_CountAllNonEggBoxMons(const PCBoxes *pcBoxes)
{
    u32 count, boxID;

    for (boxID = 0, count = 0; boxID < MAX_PC_BOXES; boxID++) {
        count += PCBoxes_CountNonEggMonsInBox(pcBoxes, boxID);
    }

    return count;
}

u32 PCBoxes_GetBoxMonData(const PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox, enum PokemonDataParam pokemonData, void *dest)
{
    GF_ASSERT(boxID < MAX_PC_BOXES || boxID == USE_CURRENT_BOX);
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    return BoxPokemon_GetData((&pcBoxes->boxMons[boxID][monPosInBox]), pokemonData, dest);
}

void PCBoxes_SetBoxMonData(PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox, enum PokemonDataParam pokemonData, void *value)
{
    GF_ASSERT(boxID < MAX_PC_BOXES || boxID == USE_CURRENT_BOX);
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    BoxPokemon_SetData((&pcBoxes->boxMons[boxID][monPosInBox]), pokemonData, value);
    SaveData_SetFullSaveRequired();
}

BoxPokemon *PCBoxes_GetBoxMonAt(const PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox)
{
    GF_ASSERT(boxID < MAX_PC_BOXES || boxID == USE_CURRENT_BOX);
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (boxID == USE_CURRENT_BOX) {
        boxID = pcBoxes->currentBoxID;
    }

    return &pcBoxes->boxMons[boxID][monPosInBox];
}

void PCBoxes_UnlockWallpaper(PCBoxes *pcBoxes, u32 wallpaper)
{
    GF_ASSERT(wallpaper < MAX_UNLOCKABLE_WALLPAPERS);

    pcBoxes->unlockedWallpapers |= (1 << wallpaper);
    SaveData_SetFullSaveRequired();
}

BOOL PCBoxes_CheckHasUnlockedWallpaper(const PCBoxes *pcBoxes, u32 wallpaper)
{
    GF_ASSERT(wallpaper < MAX_UNLOCKABLE_WALLPAPERS);

    return (pcBoxes->unlockedWallpapers & (1 << wallpaper)) != 0;
}

u32 PCBoxes_CountUnlockedWallpapers(const PCBoxes *pcBoxes)
{
    u32 i, count;

    for (i = 0, count = 0; i < MAX_UNLOCKABLE_WALLPAPERS; i++) {
        if (PCBoxes_CheckHasUnlockedWallpaper(pcBoxes, i)) {
            count++;
        }
    }

    return count;
}
