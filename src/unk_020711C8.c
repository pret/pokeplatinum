#include "unk_020711C8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020711C8.h"

#include "heap.h"
#include "party.h"
#include "savedata.h"

UnkStruct_020711C8 *sub_020711C8(const int heapID, const u8 param1, SaveData *saveData) {
    UnkStruct_020711C8 *v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(UnkStruct_020711C8));
    v0->unk_00 = Party_GetPokemonBySlotIndex(SaveData_GetParty(saveData), param1);
    v0->unk_04 = NULL;

    return v0;
}
