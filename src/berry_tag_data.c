#include "berry_tag_data.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "heap.h"

static void Add(u32 *entries, u16 berryID);

BerryTagData *BerryTagData_Alloc(u8 heapID)
{
    BerryTagData *data = Heap_Alloc(heapID, sizeof(BerryTagData));
    memset(data, 0, sizeof(BerryTagData));
    return data;
}

void BerryTagData_Add(BerryTagData *data, u16 item, u16 initial)
{
    u16 berryID = item - FIRST_BERRY_IDX;

    Add(data->entries, berryID);

    if (initial == TRUE) {
        data->currentBerryID = berryID;
    }
}

void BerryTagData_SetScroll(BerryTagData *data, u8 scroll, u8 index, u8 count)
{
    data->scroll = scroll;
    data->index = index;
    data->count = count;
}

static void Add(u32 *entries, u16 berryID)
{
    entries[berryID / 32] |= (1 << (berryID % 32));
}

u8 BerryTagData_Contains(u32 *entries, u16 berryID)
{
    return (entries[berryID / 32] & (1 << (berryID % 32))) != 0;
}

void BerryTagData_GetScroll(BerryTagData *data, u8 *scroll, u8 *index)
{
    *scroll = data->scroll;
    *index = data->index;
}
