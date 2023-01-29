#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02079FF4.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_02073C2C.h"
#include "party.h"

#define PARTY_ASSERT_SLOT(party, slot) {      \
    GF_ASSERT(slot >= 0);                     \
    GF_ASSERT(slot < (party)->unk_04);        \
    GF_ASSERT(slot < (party)->unk_00);        \
}

int Party_sizeof (void)
{
    return sizeof(UnkStruct_02079FF4);
}

UnkStruct_02079FF4 * sub_02079FF4 (u32 param0)
{
    UnkStruct_02079FF4 * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_02079FF4));
    sub_0207A008(v0);

    return v0;
}

void sub_0207A008 (UnkStruct_02079FF4 * param0)
{
    Party_InitWithCapacity(param0, 6);
}

void Party_InitWithCapacity (UnkStruct_02079FF4 * party, int capacity)
{
    int i;

    GF_ASSERT(capacity <= 6);
    memset(party, 0, sizeof(UnkStruct_02079FF4));

    party->unk_04 = 0;
    party->unk_00 = capacity;

    for (i = 0; i < 6; i++) {
        sub_02073C2C(&party->unk_08[i]);
    }
}

BOOL Party_AddPokemon (UnkStruct_02079FF4 * party, UnkStruct_02073C74 * pokemon)
{
    if (party->unk_04 >= party->unk_00) {
        return FALSE;
    }

    party->unk_08[party->unk_04] = *pokemon;
    party->unk_04++;

    return TRUE;
}

BOOL Party_RemovePokemonBySlotIndex (UnkStruct_02079FF4 * party, int slot)
{
    int i;

    PARTY_ASSERT_SLOT(party, slot);
    GF_ASSERT(party->unk_04 > 0);

    for (i = slot; i < party->unk_04 - 1; i++) {
        party->unk_08[i] = party->unk_08[i + 1];
    }

    sub_02073C2C(&party->unk_08[i]);
    party->unk_04--;

    return TRUE;
}

int Party_GetCapacity (const UnkStruct_02079FF4 * party)
{
    return party->unk_00;
}

int Party_GetCurrentCount (const UnkStruct_02079FF4 * party)
{
    return party->unk_04;
}

UnkStruct_02073C74 * Party_GetPokemonBySlotIndex (const UnkStruct_02079FF4 * party, int slot)
{
    PARTY_ASSERT_SLOT(party, slot);
    return (UnkStruct_02073C74 *)&party->unk_08[slot];
}

void sub_0207A128 (UnkStruct_02079FF4 * party, int slot, UnkStruct_02073C74 * param2)
{
    int v0;

    PARTY_ASSERT_SLOT(party, slot);

    v0 = sub_02074470(&(party->unk_08[slot]), 172, NULL) - sub_02074470(param2, 172, NULL);
    party->unk_08[slot] = *param2;
    party->unk_04 += v0;
}

BOOL Party_SwapSlots (UnkStruct_02079FF4 * party, int slotA, int slotB)
{
    struct UnkStruct_02073C74_t * tempPokemon;

    PARTY_ASSERT_SLOT(party, slotA);
    PARTY_ASSERT_SLOT(party, slotB);

    tempPokemon = AllocFromHeap(0, sizeof(struct UnkStruct_02073C74_t));
    *tempPokemon = party->unk_08[slotA];

    party->unk_08[slotA] = party->unk_08[slotB];
    party->unk_08[slotB] = *tempPokemon;

    FreeToHeap(tempPokemon);

    return FALSE;
}

void Party_cpy (const UnkStruct_02079FF4 * src, UnkStruct_02079FF4 * dest)
{
    *dest = *src;
}

BOOL Party_HasPokemon (const UnkStruct_02079FF4 * party, int species)
{
    int i;

    for (i = 0; i < party->unk_04; i++) {
        if (sub_02074470((UnkStruct_02073C74 *)&party->unk_08[i], 5, NULL) == species) {
            break;
        }
    }

    return i != party->unk_04;
}

UnkStruct_02079FF4 * GetPartyFromSavedata (UnkStruct_021C0794 * param0)
{
    UnkStruct_02079FF4 * v0;

    v0 = (UnkStruct_02079FF4 *)sub_020245BC(param0, 2);
    return v0;
}
