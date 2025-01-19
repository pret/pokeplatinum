#include "party.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/pokemon.h"
#include "struct_defs/struct_party.h"

#include "heap.h"
#include "pokemon.h"
#include "savedata.h"

#define PARTY_ASSERT_SLOT(party, slot)           \
    {                                            \
        GF_ASSERT(slot >= 0);                    \
        GF_ASSERT(slot < (party)->currentCount); \
        GF_ASSERT(slot < (party)->capacity);     \
    }

int Party_SaveSize(void)
{
    return sizeof(Party);
}

Party *Party_New(u32 param0)
{
    Party *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(Party));
    Party_Init(v0);

    return v0;
}

void Party_Init(Party *param0)
{
    Party_InitWithCapacity(param0, 6);
}

void Party_InitWithCapacity(Party *party, int capacity)
{
    int i;

    GF_ASSERT(capacity <= 6);
    memset(party, 0, sizeof(Party));

    party->currentCount = 0;
    party->capacity = capacity;

    for (i = 0; i < 6; i++) {
        Pokemon_Init(&party->pokemon[i]);
    }
}

BOOL Party_AddPokemon(Party *party, Pokemon *pokemon)
{
    if (party->currentCount >= party->capacity) {
        return FALSE;
    }

    party->pokemon[party->currentCount] = *pokemon;
    party->currentCount++;

    return TRUE;
}

BOOL Party_RemovePokemonBySlotIndex(Party *party, int slot)
{
    int i;

    PARTY_ASSERT_SLOT(party, slot);
    GF_ASSERT(party->currentCount > 0);

    for (i = slot; i < party->currentCount - 1; i++) {
        party->pokemon[i] = party->pokemon[i + 1];
    }

    Pokemon_Init(&party->pokemon[i]);
    party->currentCount--;

    return TRUE;
}

int Party_GetCapacity(const Party *party)
{
    return party->capacity;
}

int Party_GetCurrentCount(const Party *party)
{
    return party->currentCount;
}

Pokemon *Party_GetPokemonBySlotIndex(const Party *party, int slot)
{
    PARTY_ASSERT_SLOT(party, slot);
    return (Pokemon *)&party->pokemon[slot];
}

void sub_0207A128(Party *party, int slot, Pokemon *param2)
{
    int v0;

    PARTY_ASSERT_SLOT(party, slot);

    v0 = Pokemon_GetValue(&(party->pokemon[slot]), MON_DATA_SPECIES_EXISTS, NULL) - Pokemon_GetValue(param2, MON_DATA_SPECIES_EXISTS, NULL);
    party->pokemon[slot] = *param2;
    party->currentCount += v0;
}

BOOL Party_SwapSlots(Party *party, int slotA, int slotB)
{
    Pokemon *tempPokemon;

    PARTY_ASSERT_SLOT(party, slotA);
    PARTY_ASSERT_SLOT(party, slotB);

    tempPokemon = Heap_AllocFromHeap(0, sizeof(Pokemon));
    *tempPokemon = party->pokemon[slotA];

    party->pokemon[slotA] = party->pokemon[slotB];
    party->pokemon[slotB] = *tempPokemon;

    Heap_FreeToHeap(tempPokemon);

    return FALSE;
}

void Party_cpy(const Party *src, Party *dest)
{
    *dest = *src;
}

BOOL Party_HasSpecies(const Party *party, int species)
{
    int i;

    for (i = 0; i < party->currentCount; i++) {
        if (Pokemon_GetValue((Pokemon *)&party->pokemon[i], MON_DATA_SPECIES, NULL) == species) {
            break;
        }
    }

    return i != party->currentCount;
}

Party *Party_GetFromSavedata(SaveData *param0)
{
    Party *v0;

    v0 = (Party *)SaveData_SaveTable(param0, 2);
    return v0;
}
