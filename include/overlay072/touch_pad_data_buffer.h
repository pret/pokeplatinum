#ifndef POKEPLATINUM_TOUCH_PAD_DATA_BUFFER_H
#define POKEPLATINUM_TOUCH_PAD_DATA_BUFFER_H

#include <nitro.h>

typedef struct {
    u16 bufferSize;
    TPData buffer[8];
} TouchPadDataBuffer;

#endif // POKEPLATINUM_TOUCH_PAD_DATA_BUFFER_H
