#include "unk_020711C8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020711C8.h"

#include "heap.h"
#include "party.h"
#include "savedata.h"

UnkStruct_020711C8 *sub_020711C8(const int param0, const u8 param1, SaveData *param2)
{
    UnkStruct_020711C8 *v0 = Heap_AllocFromHeapAtEnd(param0, sizeof(UnkStruct_020711C8));
    v0->unk_00 = Party_GetPokemonBySlotIndex(SaveData_GetParty(param2), param1);
    v0->unk_04 = NULL;

    return v0;
}
