#include "pokemon_storage_system_manager.h"

#include <nitro.h>
#include <string.h>

#include "generated/text_banks.h"

#include "message.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"

#include "res/text/bank/pokemon_storage_system.h"

typedef struct PCBoxes {
    u32 currentBox;
    BoxPokemon boxMons[MAX_PC_BOXES][MAX_MONS_PER_BOX];
    u16 names[MAX_PC_BOXES][20];
    u8 wallpapers[MAX_PC_BOXES];
    u8 unlockedWallpapers;
} PCBoxes;

static void Init(PCBoxes *pcBoxes);

void PCBoxes_Init(PCBoxes *pcBoxes)
{
    Init(pcBoxes);
    SaveData_SetFullSaveRequired();
}

u32 PCBoxes_SaveSize(void)
{
    return sizeof(PCBoxes);
}

static void Init(PCBoxes *pcBoxes)
{
    u32 box, i;
    for (box = 0; box < MAX_PC_BOXES; box++) {
        for (i = 0; i < MAX_MONS_PER_BOX; i++) {
            BoxPokemon_Init(&pcBoxes->boxMons[box][i]);
        }
    }

    for (box = 0, i = 0; box < MAX_PC_BOXES; box++) {
        pcBoxes->wallpapers[box] = i++;

        if (i >= MAX_DEFAULT_WALLPAPERS) {
            i = 0;
        }
    }

    pcBoxes->unlockedWallpapers = 0;

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_STORAGE_SYSTEM, 0);
    if (messageLoader) {
        for (box = 0; box < MAX_PC_BOXES; box++) {
            MessageLoader_Get(messageLoader, BOX1_NAME_ID + box, pcBoxes->names[box]);
        }

        MessageLoader_Free(messageLoader);
    }

    pcBoxes->currentBox = 0;
}

BOOL PcBoxes_TryStoreBoxMon(PCBoxes *pcBoxes, BoxPokemon *boxMon)
{
    u32 box = pcBoxes->currentBox;
    do {
        BoxPokemon_RestorePP(boxMon);

        if (PcBoxes_TryStoreMonInBox(pcBoxes, box, boxMon)) {
            SaveData_SetFullSaveRequired();
            return TRUE;
        }

        if (++box >= MAX_PC_BOXES) {
            box = 0;
        }
    } while (box != pcBoxes->currentBox);

    return FALSE;
}

BOOL PcBoxes_TryStoreMonInBox(PCBoxes *pcBoxes, u32 box, BoxPokemon *boxMon)
{
    u32 monPosInBox;

    BoxPokemon_RestorePP(boxMon);
    BoxPokemon_SetShayminForm(boxMon, 0);

    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
        if (BoxPokemon_GetValue(&(pcBoxes->boxMons[box][monPosInBox]), MON_DATA_SPECIES, NULL) == 0) {
            pcBoxes->boxMons[box][monPosInBox] = *boxMon;
            SaveData_SetFullSaveRequired();
            return TRUE;
        }
    }

    return FALSE;
}

BOOL PcBoxes_TryStoreBoxMonAt(PCBoxes *pcBoxes, u32 box, u32 monPosInBox, BoxPokemon *boxMon)
{
    BoxPokemon_RestorePP(boxMon);
    BoxPokemon_SetShayminForm(boxMon, 0);

    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if ((box < MAX_PC_BOXES) && (monPosInBox < MAX_MONS_PER_BOX)) {
        pcBoxes->boxMons[box][monPosInBox] = *boxMon;
        SaveData_SetFullSaveRequired();
        return TRUE;
    } else {
        GF_ASSERT(0);
    }

    return FALSE;
}

void PcBoxes_InitBoxMonAt(PCBoxes *pcBoxes, u32 box, u32 monPosInBox)
{
    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if (monPosInBox < MAX_MONS_PER_BOX && box < MAX_PC_BOXES) {
        BoxPokemon_Init(&(pcBoxes->boxMons[box][monPosInBox]));
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 PcBoxes_GetCurrentBox(const PCBoxes *pcBoxes)
{
    return pcBoxes->currentBox;
}

u32 PcBoxes_FirstEmptyBox(const PCBoxes *pcBoxes)
{
    int box = pcBoxes->currentBox;

    while (TRUE) {
        for (int monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue(&(pcBoxes->boxMons[box][monPosInBox]), MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                return box;
            }
        }

        if (++box >= MAX_PC_BOXES) {
            box = 0;
        }

        if (box == pcBoxes->currentBox) {
            break;
        }
    }

    return MAX_PC_BOXES;
}

BOOL PcBoxes_GetFirstAvailableMonSpaceAfter(const PCBoxes *pcBoxes, int *boxIndexDest, int *monPosInBoxDest)
{
    int box, monPosInBox;

    if (*boxIndexDest == -1) {
        *boxIndexDest = pcBoxes->currentBox;
    }

    box = *boxIndexDest;
    monPosInBox = *monPosInBoxDest;

    while (TRUE) {
        for (; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxMons[box][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                *boxIndexDest = box;
                *monPosInBoxDest = monPosInBox;
                return TRUE;
            }
        }

        if (++box >= MAX_PC_BOXES) {
            box = 0;
        }

        if (box == (*boxIndexDest)) {
            break;
        }

        monPosInBox = 0;
    }

    return MAX_PC_BOXES;
}

u32 PcBoxes_CountAllBoxMons(const PCBoxes *pcBoxes)
{
    int box, monPosInBox;
    u32 count = 0;

    for (box = 0; box < MAX_PC_BOXES; box++) {
        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxMons[box][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL) != 0) {
                count++;
            }
        }
    }

    return count;
}

void PcBoxes_SetCurrentBox(PCBoxes *pcBoxes, u32 box)
{
    if (box < MAX_PC_BOXES) {
        pcBoxes->currentBox = box;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 PcBoxes_GetWallpaper(const PCBoxes *pcBoxes, u32 box)
{
    if (box < MAX_PC_BOXES) {
        return pcBoxes->wallpapers[box];
    } else {
        GF_ASSERT(0);
        return FALSE;
    }
}

void PcBoxes_SetWallpaper(PCBoxes *pcBoxes, u32 box, u32 wallpaper)
{
    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if ((box < MAX_PC_BOXES) && (wallpaper < MAX_WALLPAPERS)) {
        if (wallpaper >= MAX_DEFAULT_WALLPAPERS) {
            wallpaper += MAX_UNLOCKED_WALLPAPERS;
        }

        pcBoxes->wallpapers[box] = wallpaper;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

void PcBoxes_CopyName(const PCBoxes *pcBoxes, u32 box, Strbuf *dest)
{
    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if (box < MAX_PC_BOXES) {
        Strbuf_CopyChars(dest, pcBoxes->names[box]);
    } else {
        GF_ASSERT(0);
    }
}

void PcBoxes_RenameBox(PCBoxes *pcBoxes, u32 box, const Strbuf *newName)
{
    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if (box < MAX_PC_BOXES) {
        Strbuf_ToChars(newName, pcBoxes->names[box], 20);
        SaveData_SetFullSaveRequired();
    }
}

u32 PcBoxes_CountMonsInBox(const PCBoxes *pcBoxes, u32 box)
{
    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if (box < MAX_PC_BOXES) {
        u32 count = 0;

        for (int monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxMons[box][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL)) {
                count++;
            }
        }

        return count;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 PcBoxes_CountEggsInBox(const PCBoxes *pcBoxes, u32 box)
{
    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    if (box < MAX_PC_BOXES) {
        u32 count = 0;

        for (int monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxMons[box][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL)) {
                if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxMons[box][monPosInBox])), MON_DATA_IS_EGG, NULL) == 0) {
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

u32 PcBoxes_CountAllEggs(const PCBoxes *pcBoxes)
{
    u32 count, box;

    for (box = 0, count = 0; box < MAX_PC_BOXES; box++) {
        count += PcBoxes_CountEggsInBox(pcBoxes, box);
    }

    return count;
}

u32 PcBoxes_GetBoxMonData(const PCBoxes *pcBoxes, u32 box, u32 monPosInBox, enum PokemonDataParam pokemonData, void *dest)
{
    GF_ASSERT((box < MAX_PC_BOXES) || (box == -1));
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    return BoxPokemon_GetValue((BoxPokemon *)(&pcBoxes->boxMons[box][monPosInBox]), pokemonData, dest);
}

void PcBoxes_SetBoxMonData(PCBoxes *pcBoxes, u32 box, u32 monPosInBox, enum PokemonDataParam pokemonData, void *value)
{
    GF_ASSERT((box < MAX_PC_BOXES) || (box == -1));
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    BoxPokemon_SetValue((BoxPokemon *)(&pcBoxes->boxMons[box][monPosInBox]), pokemonData, value);
    SaveData_SetFullSaveRequired();
}

BoxPokemon *PcBoxes_GetBoxMonAt(const PCBoxes *pcBoxes, u32 box, u32 monPosInBox)
{
    GF_ASSERT((box < MAX_PC_BOXES) || (box == -1));
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (box == -1) {
        box = pcBoxes->currentBox;
    }

    return (BoxPokemon *)&(pcBoxes->boxMons[box][monPosInBox]);
}

void PcBoxes_UnlockWallpaper(PCBoxes *pcBoxes, u32 wallpaper)
{
    GF_ASSERT(wallpaper < MAX_UNLOCKED_WALLPAPERS);

    pcBoxes->unlockedWallpapers |= (1 << wallpaper);
    SaveData_SetFullSaveRequired();
}

BOOL PcBoxes_CheckHasUnlockedWallpaper(const PCBoxes *pcBoxes, u32 wallpaper)
{
    GF_ASSERT(wallpaper < MAX_UNLOCKED_WALLPAPERS);

    return (pcBoxes->unlockedWallpapers & (1 << wallpaper)) != 0;
}

u32 PcBoxes_CountUnlockedWallpapers(const PCBoxes *pcBoxes)
{
    u32 i, count;

    for (i = 0, count = 0; i < MAX_UNLOCKED_WALLPAPERS; i++) {
        if (PcBoxes_CheckHasUnlockedWallpaper(pcBoxes, i)) {
            count++;
        }
    }

    return count;
}
