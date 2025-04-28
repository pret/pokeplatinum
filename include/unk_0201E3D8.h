#ifndef POKEPLATINUM_UNK_0201E3D8_H
#define POKEPLATINUM_UNK_0201E3D8_H

#include <nitro.h>

#include "overlay072/touch_pad_data_buffer.h"

enum TouchPadDataBufferTransferMethod
{
    TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITH_THRESHOLD_WITH_WRAPPING = 1,
    TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_NO_TRANSFER,
    TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITH_THRESHOLD_WITHOUT_WRAPPING,
    TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITHOUT_THRESHOLD_WITHOUT_WRAPPING,
    TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITHOUT_THRESHOLD_WITH_WRAPPING,
};

void EnableTouchPad(void);
BOOL InitializeTouchPadWithExternalBuffer(TPData *externalBuffer, u32 externalBufferSize, u32 autoSamplingFrequency);
BOOL InitializeTouchPad(u32 autoSamplingFrequency);
u32 DisableTouchPad(void);
u32 sub_0201E564(TouchPadDataBuffer *buffer, enum TouchPadDataBufferTransferMethod method, u32 threshold);
void ConvertTouchPadDataToScreenSpace(TPData *touchPadDataBuffer, u32 touchPadDataBufferSize);
void AfterSleep(void);
void BeforeSleep(void);

#endif // POKEPLATINUM_UNK_0201E3D8_H
