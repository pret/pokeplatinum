#ifndef POKEPLATINUM_BERRY_TAG_DATA_H
#define POKEPLATINUM_BERRY_TAG_DATA_H

typedef struct BerryTagData {
    u32 entries[2];
    u8 currentBerryID;
    u8 scroll;
    u8 index;
    u8 count;
} BerryTagData;

BerryTagData *BerryTagData_Alloc(u8 heapID);
void BerryTagData_Add(BerryTagData *data, u16 item, u16 initial);
void BerryTagData_SetScroll(BerryTagData *data, u8 scroll, u8 index, u8 count);
u8 BerryTagData_Contains(u32 *entries, u16 berryItemID);
void BerryTagData_GetScroll(BerryTagData *data, u8 *scroll, u8 *index);

#endif // POKEPLATINUM_BERRY_TAG_DATA_H
