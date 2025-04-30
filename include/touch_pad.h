#ifndef POKEPLATINUM_TOUCH_PAD_H
#define POKEPLATINUM_TOUCH_PAD_H

#include <nitro.h>

#include "touch_pad.h"
typedef struct TouchPadDataBuffer {
    u16 bufferSize;
    TPData buffer[8];
} TouchPadDataBuffer;

enum TouchPadExternalBufferWriteMethod {
    TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ONLY_TOUCHES_WITH_WRAPPING = 1,
    TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_NO_WRITE,
    TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ONLY_TOUCHES_WITHOUT_WRAPPING,
    TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITHOUT_WRAPPING,
    TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITH_WRAPPING,
};

void EnableTouchPad(void);
BOOL InitializeTouchPadWithExternalBuffer(TPData *externalBuffer, u32 externalBufferSize, u32 autoSamplingFrequency);
BOOL InitializeTouchPad(u32 autoSamplingFrequency);
u32 DisableTouchPad(void);
u32 WriteAutoSamplingDataToBuffer(TouchPadDataBuffer *outBuffer, enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 changeThreshold);
void ConvertTouchPadDataToScreenSpace(TPData *touchPadDataBuffer, u32 touchPadDataBufferSize);
void AfterSleep(void);
void BeforeSleep(void);

#endif // POKEPLATINUM_TOUCH_PAD_H
