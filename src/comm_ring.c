#include <nitro.h>
#include <string.h>

#include "comm_ring.h"
#include "communication_system.h"

static int CommRing_Index(CommRing * ring, int index);
static int CommRing_RemainingSizeBackup(CommRing * ring);

void CommRing_Init (CommRing * ring, u8 * buffer, int size)
{
    ring->buffer = buffer;
    ring->size = size;
    ring->startIndex = 0;
    ring->endIndex = 0;
    ring->backupEndIndex = 0;
}

void CommRring_Write (CommRing * ring, u8 * buffer, int size, int unused)
{
    int i;

    if (CommRing_RemainingSizeBackup(ring) <= size) {
        sub_020363BC();
        return;
    }

    int j = 0;

    for (i = ring->backupEndIndex; i < ring->backupEndIndex + size; i++, j++) {
        GF_ASSERT(buffer);
        ring->buffer[CommRing_Index(ring, i)] = buffer[j];
    }

    ring->backupEndIndex = CommRing_Index(ring, i);
}

int CommRing_Read (CommRing * ring, u8 * buffer, int size)
{
    int index = CommRing_Peek(ring, buffer, size);
    ring->startIndex = CommRing_Index(ring, ring->startIndex + index);

    return index;
}

u8 CommRing_ReadByte (CommRing * ring)
{
    u8 buff;

    CommRing_Read(ring, &buff, 1);
    return buff;
}

//Reading but doesn't incriment the index
int CommRing_Peek (CommRing * ring, u8 * buffer, int size)
{
    int j = 0;

    for (int i = ring->startIndex; i < ring->startIndex + size; i++, j++) {
        if (ring->endIndex == CommRing_Index(ring, i)) {
            return j;
        }

        buffer[j] = ring->buffer[CommRing_Index(ring, i)];
    }

    return j;
}

int CommRing_DataSize (CommRing * ring)
{
    if (ring->startIndex > ring->endIndex) {
        return ring->size + ring->endIndex - ring->startIndex;
    }

    return ring->endIndex - ring->startIndex;
}

int CommRing_RemainingSize (CommRing * ring)
{
    return ring->size - CommRing_DataSize(ring);
}

static int CommRing_RemainingSizeBackup (CommRing * ring)
{
    if (ring->startIndex > ring->backupEndIndex) {
        return ring->startIndex - ring->backupEndIndex;
    }

    return ring->size - (ring->backupEndIndex - ring->startIndex);
}

int CommRing_Index (CommRing * ring, int index)
{
    return index % ring->size;
}

void CommRing_UpdateEndPos (CommRing * ring)
{
    ring->endIndex = ring->backupEndIndex;
}
