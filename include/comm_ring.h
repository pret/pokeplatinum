#ifndef POKEPLATINUM_COMM_RING_H
#define POKEPLATINUM_COMM_RING_H

typedef struct {
    u8 *buffer;
    s16 startIndex;
    volatile s16 endIndex;
    volatile s16 backupEndIndex;
    s16 size;
} CommRing;

void CommRing_Init(CommRing *ring, u8 *buffer, int size);
void CommRring_Write(CommRing *ring, u8 *buffer, int size, int unused);
int CommRing_Read(CommRing *ring, u8 *buffer, int size);
u8 CommRing_ReadByte(CommRing *ring);
int CommRing_Peek(CommRing *ring, u8 *buffer, int size);
int CommRing_DataSize(CommRing *ring);
int CommRing_RemainingSize(CommRing *ring);
void CommRing_UpdateEndPos(CommRing *ring);

#endif // POKEPLATINUM_COMM_RING_H
