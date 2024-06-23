#ifndef POKEPLATINUM_UNK_02032188_H
#define POKEPLATINUM_UNK_02032188_H

typedef struct {
    u8 *buffer;
    s16 startIndex;
    volatile s16 endIndex;
    volatile s16 backupEndIndex;
    s16 size;
} CommRing;

void CommRing_Init(CommRing *ring, u8 *param1, int param2);
void CommRring_Write(CommRing *ring, u8 *param1, int param2, int param3);
int CommRing_Read(CommRing *ring, u8 *param1, int param2);
u8 CommRing_ReadByte(CommRing *ring);
int CommRing_Peek(CommRing *ring, u8 *param1, int param2);
int CommRing_DataSize(CommRing *ring);
int CommRing_RemainingSize(CommRing *ring);
void CommRing_UpdateEndPos(CommRing *ring);

#endif // POKEPLATINUM_UNK_02032188_H
