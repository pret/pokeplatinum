#include "unk_020797C8.h"

#include <nitro.h>
#include <string.h>

#include "generated/text_banks.h"

#include "message.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"

typedef struct PCBoxes {
    u32 currentBoxIndex;
    BoxPokemon boxedPokemonArray[MAX_PC_BOXES][30];
    u16 boxNames[MAX_PC_BOXES][20];
    u8 unk_13B4[18];
    u8 unk_13C6; // This seems like some sort of bit flag? but I don't know for what
} PCBoxes;

static void sub_020797DC(PCBoxes *pcBoxes);

void PCBoxes_Init(PCBoxes *pcBoxes)
{
    sub_020797DC(pcBoxes);
    SaveData_SetFullSaveRequired();
}

u32 PCBoxes_SaveSize(void)
{
    return sizeof(PCBoxes);
}

// InitPokemonStorageSystem?
static void sub_020797DC(PCBoxes *pcBoxes)
{
    u32 boxIndex, monPosInBox;
    MessageLoader *messageLoader;

    for (boxIndex = 0; boxIndex < MAX_PC_BOXES; boxIndex++) {
        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            BoxPokemon_Init(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox]));
        }
    }

    // Pretty sure that monPosInBox isn't being used in the same way here as in the previous loop,
    // so the variable's name no longer accurately reflects what it's doing in this loop
    for (boxIndex = 0, monPosInBox = 0; boxIndex < MAX_PC_BOXES; boxIndex++) {
        pcBoxes->unk_13B4[boxIndex] = monPosInBox++;

        if (monPosInBox >= 16) {
            monPosInBox = 0;
        }
    }

    pcBoxes->unk_13C6 = 0;
    messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_STORAGE_SYSTEM, HEAP_ID_SYSTEM);

    if (messageLoader) {
        for (boxIndex = 0; boxIndex < MAX_PC_BOXES; boxIndex++) {
            MessageLoader_Get(messageLoader, BOX1_TEXT_BANK_ENTRYID + boxIndex, pcBoxes->boxNames[boxIndex]);
        }

        MessageLoader_Free(messageLoader);
    }

    pcBoxes->currentBoxIndex = 0;
}

BOOL StorePokemonInPc(PCBoxes *pcBoxes, BoxPokemon *boxMon)
{
    u32 boxIndex = pcBoxes->currentBoxIndex;

    do {
        RestoreBoxedPokemonPP(boxMon);

        if (StorePokemonInBox(pcBoxes, boxIndex, boxMon)) {
            SaveData_SetFullSaveRequired();
            return TRUE;
        }

        if (++boxIndex >= MAX_PC_BOXES) {
            boxIndex = 0;
        }
    } while (boxIndex != pcBoxes->currentBoxIndex);

    return FALSE;
}

BOOL StorePokemonInBox(PCBoxes *pcBoxes, u32 boxIndex, BoxPokemon *boxMon)
{
    u32 monPosInBox;

    RestoreBoxedPokemonPP(boxMon);
    BoxPokemon_SetShayminForm(boxMon, 0);

    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
        if (BoxPokemon_GetValue(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox]), MON_DATA_SPECIES, NULL) == 0) {
            pcBoxes->boxedPokemonArray[boxIndex][monPosInBox] = *boxMon;
            SaveData_SetFullSaveRequired();
            return TRUE;
        }
    }

    return FALSE;
}

BOOL StorePokemonInPcAt(PCBoxes *pcBoxes, u32 param1, u32 param2, BoxPokemon *param3)
{
    RestoreBoxedPokemonPP(param3);
    BoxPokemon_SetShayminForm(param3, 0);

    if (param1 == 0xffffffff) {
        param1 = pcBoxes->currentBoxIndex;
    }

    if ((param1 < MAX_PC_BOXES) && (param2 < MAX_MONS_PER_BOX)) {
        pcBoxes->boxedPokemonArray[param1][param2] = *param3;
        SaveData_SetFullSaveRequired();
        return 1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

void InitializeBoxedPokemonAt(PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox)
{
    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    if ((monPosInBox < MAX_MONS_PER_BOX) && (boxIndex < MAX_PC_BOXES)) {
        BoxPokemon_Init(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox]));
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 GetCurrentBoxId(const PCBoxes *pcBoxes)
{
    return pcBoxes->currentBoxIndex;
}

u32 PCBoxes_FirstEmptyBox(const PCBoxes *pcBoxes)
{
    int boxIndex, monPosInBox;

    boxIndex = pcBoxes->currentBoxIndex;

    while (TRUE) {
        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                return boxIndex;
            }
        }

        if (++boxIndex >= MAX_PC_BOXES) {
            boxIndex = 0;
        }

        if (boxIndex == pcBoxes->currentBoxIndex) {
            break;
        }
    }

    return MAX_PC_BOXES;
}

BOOL GetNextAvailableBoxSpaceAfter(const PCBoxes *pcBoxes, int *boxIndexParam, int *monPosInBoxParam)
{
    int boxIndex, monPosInBox;

    if (*boxIndexParam == -1) {
        *boxIndexParam = pcBoxes->currentBoxIndex;
    }

    boxIndex = *boxIndexParam;
    monPosInBox = *monPosInBoxParam;

    while (TRUE) {
        for (; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                *boxIndexParam = boxIndex;
                *monPosInBoxParam = monPosInBox;
                return TRUE;
            }
        }

        if (++boxIndex >= MAX_PC_BOXES) {
            boxIndex = 0;
        }

        if (boxIndex == (*boxIndexParam)) {
            break;
        }

        monPosInBox = 0;
    }

    return MAX_PC_BOXES;
}

u32 GetBoxedPokemonCount(const PCBoxes *pcBoxes)
{
    int boxIndex, monPosInBox;
    u32 pokemonCount = 0;

    for (boxIndex = 0; boxIndex < MAX_PC_BOXES; boxIndex++) {
        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL) != 0) {
                pokemonCount++;
            }
        }
    }

    return pokemonCount;
}

void SetCurrentBoxIndex(PCBoxes *pcBoxes, u32 boxIndex)
{
    if (boxIndex < MAX_PC_BOXES) {
        pcBoxes->currentBoxIndex = boxIndex;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 sub_02079AA8(const PCBoxes *pcBoxes, u32 boxIndex)
{
    if (boxIndex < MAX_PC_BOXES) {
        return pcBoxes->unk_13B4[boxIndex];
    } else {
        GF_ASSERT(0);
        return FALSE;
    }
}

void sub_02079AC4(PCBoxes *pcBoxes, u32 boxIndex, u32 param2)
{
    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    // What do 16 and 8 mean here?
    if ((boxIndex < MAX_PC_BOXES) && (param2 < (16 + 8))) {
        if (param2 >= 16) {
            param2 += 8;
        }

        pcBoxes->unk_13B4[boxIndex] = param2;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

void CopyBoxName(const PCBoxes *pcBoxes, u32 boxIndex, Strbuf *copyDestination)
{
    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    if (boxIndex < MAX_PC_BOXES) {
        Strbuf_CopyChars(copyDestination, pcBoxes->boxNames[boxIndex]);
    } else {
        GF_ASSERT(0);
    }
}

void RenameBox(PCBoxes *pcBoxes, u32 boxIndex, const Strbuf *newName)
{
    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    if (boxIndex < MAX_PC_BOXES) {
        Strbuf_ToChars(newName, pcBoxes->boxNames[boxIndex], 20);
        SaveData_SetFullSaveRequired();
    }
}

u32 GetPokemonCountInBox(const PCBoxes *pcBoxes, u32 boxIndex)
{
    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    if (boxIndex < MAX_PC_BOXES) {
        int monPosInBox;
        u32 pokemonCount = 0;

        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL)) {
                pokemonCount++;
            }
        }

        return pokemonCount;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 GetEggCountInBox(const PCBoxes *pcBoxes, u32 boxIndex)
{
    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    if (boxIndex < MAX_PC_BOXES) {
        int monPosInBox;
        u32 eggCount = 0;

        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox])), MON_DATA_SPECIES_EXISTS, NULL)) {
                if (BoxPokemon_GetValue((BoxPokemon *)(&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox])), MON_DATA_IS_EGG, NULL) == 0) {
                    eggCount++;
                }
            }
        }

        return eggCount;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 GetTotalBoxedEggCount(const PCBoxes *pcBoxes)
{
    u32 eggCount, boxIndex;

    for (boxIndex = 0, eggCount = 0; boxIndex < MAX_PC_BOXES; boxIndex++) {
        eggCount += GetEggCountInBox(pcBoxes, boxIndex);
    }

    return eggCount;
}

u32 GetBoxedPokemonData(const PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox, enum PokemonDataParam pokemonData, void *dest)
{
    GF_ASSERT((boxIndex < MAX_PC_BOXES) || (boxIndex == -1));
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    return BoxPokemon_GetValue((BoxPokemon *)(&pcBoxes->boxedPokemonArray[boxIndex][monPosInBox]), pokemonData, dest);
}

void SetBoxedPokemonDataWithSave(PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox, enum PokemonDataParam pokemonData, void *value)
{
    GF_ASSERT((boxIndex < MAX_PC_BOXES) || (boxIndex == -1));
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    BoxPokemon_SetValue((BoxPokemon *)(&pcBoxes->boxedPokemonArray[boxIndex][monPosInBox]), pokemonData, value);
    SaveData_SetFullSaveRequired();
}

BoxPokemon *GetBoxedPokemonFrom(const PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox)
{
    GF_ASSERT((boxIndex < MAX_PC_BOXES) || (boxIndex == -1));
    GF_ASSERT(monPosInBox < MAX_MONS_PER_BOX);

    if (boxIndex == -1) {
        boxIndex = pcBoxes->currentBoxIndex;
    }

    return (BoxPokemon *)&(pcBoxes->boxedPokemonArray[boxIndex][monPosInBox]);
}

void sub_02079CD8(PCBoxes *pcBoxes, u32 param1)
{
    GF_ASSERT(param1 < 8);

    pcBoxes->unk_13C6 |= (1 << param1);
    SaveData_SetFullSaveRequired();
}

// TODO: figure out unk_13C6, and how it relates to 16 and 8
BOOL sub_02079CFC(const PCBoxes *pcBoxes, u32 param1)
{
    GF_ASSERT(param1 < 8);

    return (pcBoxes->unk_13C6 & (1 << param1)) != 0;
}

u32 sub_02079D20(const PCBoxes *pcBoxes)
{
    u32 i, count;

    for (i = 0, count = 0; i < 8; i++) {
        if (sub_02079CFC(pcBoxes, i)) {
            count++;
        }
    }

    return count;
}
