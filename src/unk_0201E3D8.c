#include "unk_0201E3D8.h"

#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "system.h"

#define AUTO_SAMPLING_BUFFER_MAX_SIZE        9
#define AUTO_SAMPLING_FREQUENCY_LIMIT        5
#define AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL 5

enum TouchPadMode
{
    TOUCH_PAD_MODE_DISABLED = 0,
    TOUCH_PAD_MODE_AUTO_SAMPLING_WITH_DATA_BUFFER,
    TOUCH_PAD_MODE_AUTO_SAMPLING_WITHOUT_DATA_BUFFER,
};

typedef struct {
    TPData *touchPadDataBuffer;
    u32 touchPadDataBufferSize;
    u32 autoSamplingBufferFrequency;
    TPData autoSamplingBuffer[AUTO_SAMPLING_BUFFER_MAX_SIZE];
    u32 currentTouchPadDataBufferIndex;
    u16 touchPadMode;
    u16 touchPadDisabled;
} TouchPadState;

static u32 StartAutoSampling(u32 frequency);
static u32 StopAutoSampling(void);
static u32 sub_0201E6CC(u32 frequency, u32 latestIndex, u32 limit);
static u32 sub_0201E784(u32 frequency, u32 latestIndex);
static void OutputAutoSamplingBuffer(TouchPadDataBuffer *outBuffer, u32 lastAutoSamplingIndex);
static u32 sub_0201E69C(u32 frequency, u32 latestIndex, u32 limit);
static void UpdateTouchScreenState(enum TouchPadMode touchPadMode, BOOL autoSamplingEnabled, void *touchPadDataBuffer, u32 touchPadDataBufferSize, u32 currentTouchPadDataBufferIndex, u32 bufferFrequency);
static void ClearTouchOnBufferData(TPData *touchPadDataBuffer, int touchPadDataBufferSize);

static TouchPadState touchPadState;

void EnableTouchScreen(void)
{
    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    touchPadState.touchPadMode = TOUCH_PAD_MODE_DISABLED;
    touchPadState.touchPadDisabled = FALSE;
}

BOOL InitializeTouchScreen(TPData *touchPadDataBuffer, u32 param1, u32 bufferFrequency)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if ((bufferFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (bufferFrequency <= 0)) {
        return FALSE;
    }

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_DISABLED) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(bufferFrequency);

    if (autoSamplingResult != 1) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(TOUCH_PAD_MODE_AUTO_SAMPLING_WITH_DATA_BUFFER, TRUE, touchPadDataBuffer, param1, 0, bufferFrequency * 2);

    return TRUE;
}

BOOL InitializeTouchScreenNoBuffer(u32 bufferFrequency)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if ((bufferFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (bufferFrequency <= 0)) {
        return FALSE;
    }

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_DISABLED) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(bufferFrequency);

    if (autoSamplingResult != 1) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(TOUCH_PAD_MODE_AUTO_SAMPLING_WITHOUT_DATA_BUFFER, TRUE, NULL, 0, 0, bufferFrequency * 2);

    return TRUE;
}

static void UpdateTouchScreenState(enum TouchPadMode touchPadMode, BOOL autoSamplingEnabled, void *touchPadDataBuffer, u32 touchPadDataBufferSize, u32 currentTouchPadDataBufferIndex, u32 bufferFrequency)
{
    touchPadState.touchPadMode = touchPadMode;
    gSystem.touchAutoSampling = autoSamplingEnabled;
    touchPadState.touchPadDataBuffer = touchPadDataBuffer;
    touchPadState.touchPadDataBufferSize = touchPadDataBufferSize;
    touchPadState.autoSamplingBufferFrequency = bufferFrequency;
    touchPadState.currentTouchPadDataBufferIndex = currentTouchPadDataBufferIndex;

    ClearTouchOnBufferData(touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);
}

static void ClearTouchOnBufferData(TPData *touchPadDataBuffer, int touchPadDataBufferSize)
{
    int i;

    for (i = 0; i < touchPadDataBufferSize; i++) {
        touchPadDataBuffer[i].touch = TP_TOUCH_OFF;
    }
}

static u32 StopAutoSampling(void)
{
    u32 errorCount = 0;
    BOOL hasError;

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_DISABLED) {
        return 1;
    }

    do {
        TP_RequestAutoSamplingStopAsync();
        TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_AUTO_OFF);

        hasError = TP_CheckError(TP_REQUEST_COMMAND_FLAG_AUTO_OFF);

        if (hasError != FALSE) {
            errorCount++;
        }
    } while ((hasError != FALSE) && (errorCount <= AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL));

    if (errorCount > AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL) {
        return 2;
    }

    return 1;
}

u32 DisableTouchScreen(void)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    autoSamplingResult = StopAutoSampling();

    if (autoSamplingResult == 1) {
        UpdateTouchScreenState(TOUCH_PAD_MODE_DISABLED, FALSE, NULL, 0, 0, 0);
    }

    return autoSamplingResult;
}

u32 sub_0201E564(TouchPadDataBuffer *touchPadDataBuffer, u32 frequency, u32 param2)
{
    u32 v0 = 3;
    u32 latestIndex;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_DISABLED) {
        latestIndex = TP_GetLatestIndexInAuto();

        ConvertTouchPadDataToScreenSpace(touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);

        if (touchPadDataBuffer != NULL) {
            OutputAutoSamplingBuffer(touchPadDataBuffer, latestIndex);
        }

        if (touchPadState.touchPadMode == TOUCH_PAD_MODE_AUTO_SAMPLING_WITH_DATA_BUFFER) {
            v0 = sub_0201E69C(frequency, latestIndex, param2);
        } else {
            v0 = 1;
        }
    } else {
        (void)0;
    }

    return v0;
}

void ConvertTouchPadDataToScreenSpace(TPData *touchPadDataBuffer, u32 touchPadDataBufferSize)
{
    int i;
    TPData convertedData;

    for (i = 0; i < touchPadDataBufferSize; i++) {
        TP_GetCalibratedPoint(&convertedData, &(touchPadDataBuffer[i]));
        touchPadDataBuffer[i] = convertedData;
    }
}

void AfterSleep(void)
{
    u32 autoSamplingResult;

    if (touchPadState.touchPadDisabled == FALSE) {
        return;
    }

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_DISABLED) {
        return;
    }

    autoSamplingResult = StartAutoSampling(touchPadState.autoSamplingBufferFrequency / 2);
    GF_ASSERT(autoSamplingResult == 1);

    touchPadState.touchPadDisabled = FALSE;
}

void BeforeSleep(void)
{
    u32 autoSamplingResult;

    if (touchPadState.touchPadDisabled == TRUE) {
        return;
    }

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_DISABLED) {
        return;
    }

    autoSamplingResult = StopAutoSampling();
    GF_ASSERT(autoSamplingResult == 1);

    touchPadState.touchPadDisabled = TRUE;
}

static u32 StartAutoSampling(u32 frequency)
{
    int errorCount = 0;
    BOOL hasError;

    do {
        TP_RequestAutoSamplingStartAsync(0, frequency, touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);
        TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_AUTO_ON);

        hasError = TP_CheckError(TP_REQUEST_COMMAND_FLAG_AUTO_ON);

        if (hasError != FALSE) {
            errorCount++;
        }
    } while ((hasError != FALSE) && (errorCount <= AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL));

    if (errorCount > AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL) {
        return 2;
    }

    return 1;
}

static u32 sub_0201E69C(u32 frequency, u32 latestIndex, u32 limit)
{
    u32 v0;

    switch (frequency) {
    case 1:
    case 3:
        v0 = sub_0201E6CC(frequency, latestIndex, limit);
        break;
    case 4:
    case 5:
        v0 = sub_0201E784(frequency, latestIndex);
        break;
    default:
        v0 = 1;
        break;
    }

    return v0;
}

static inline int CalcIntsDifference(int int1, int int2)
{
    int diff = (int1 >= int2) ? (int1 - int2) : (int2 - int1);
    return diff;
}

static u32 sub_0201E6CC(u32 frequency, u32 latestIndex, u32 limit)
{
    int i;
    s32 xDiff;
    s32 yDiff;
    s16 bufferIndex;

    for (i = 0; i < touchPadState.autoSamplingBufferFrequency; i++) {
        bufferIndex = latestIndex - touchPadState.autoSamplingBufferFrequency + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        // Current touch data has to be different enough to the previous to be valid
        if ((touchPadState.autoSamplingBuffer[bufferIndex].touch == TP_TOUCH_ON) && (touchPadState.autoSamplingBuffer[bufferIndex].validity == TP_VALIDITY_VALID)) {
            xDiff = CalcIntsDifference(touchPadState.touchPadDataBuffer[touchPadState.currentTouchPadDataBufferIndex - 1].x, touchPadState.autoSamplingBuffer[bufferIndex].x);
            yDiff = CalcIntsDifference(touchPadState.touchPadDataBuffer[touchPadState.currentTouchPadDataBufferIndex - 1].y, touchPadState.autoSamplingBuffer[bufferIndex].y);

            if ((xDiff >= limit) || (yDiff >= limit)) {
                touchPadState.touchPadDataBuffer[touchPadState.currentTouchPadDataBufferIndex] = touchPadState.autoSamplingBuffer[bufferIndex];
                touchPadState.currentTouchPadDataBufferIndex++;

                if (touchPadState.currentTouchPadDataBufferIndex >= touchPadState.touchPadDataBufferSize) {
                    if (frequency == 1) {
                        touchPadState.currentTouchPadDataBufferIndex %= touchPadState.touchPadDataBufferSize;
                    } else {
                        return -1;
                    }
                }
            }
        }
    }

    return touchPadState.currentTouchPadDataBufferIndex;
}

static u32 sub_0201E784(u32 frequency, u32 latestIndex)
{
    int i;
    s16 bufferIndex;

    for (i = 0; i < touchPadState.autoSamplingBufferFrequency; i++) {
        bufferIndex = latestIndex - touchPadState.autoSamplingBufferFrequency + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        touchPadState.touchPadDataBuffer[touchPadState.currentTouchPadDataBufferIndex] = touchPadState.autoSamplingBuffer[bufferIndex];
        touchPadState.currentTouchPadDataBufferIndex++;

        if (touchPadState.currentTouchPadDataBufferIndex >= touchPadState.touchPadDataBufferSize) {
            if (frequency == 4) {
                touchPadState.currentTouchPadDataBufferIndex %= touchPadState.touchPadDataBufferSize;
            } else {
                return -1;
            }
        }
    }

    return touchPadState.currentTouchPadDataBufferIndex;
}

static void OutputAutoSamplingBuffer(TouchPadDataBuffer *outBuffer, u32 lastAutoSamplingIndex)
{
    int i;
    s16 bufferIndex;

    outBuffer->bufferSize = 0;

    for (i = 0; i < 8; i++) {
        outBuffer->buffer[i].validity = TP_VALIDITY_VALID;
        outBuffer->buffer[i].touch = TP_TOUCH_OFF;
        outBuffer->buffer[i].x = 0;
        outBuffer->buffer[i].y = 0;
    }

    for (i = 0; i < touchPadState.autoSamplingBufferFrequency; i++) {
        bufferIndex = lastAutoSamplingIndex - touchPadState.autoSamplingBufferFrequency + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        if (touchPadState.autoSamplingBuffer[bufferIndex].validity == TP_VALIDITY_VALID) {
            outBuffer->buffer[outBuffer->bufferSize] = touchPadState.autoSamplingBuffer[bufferIndex];
            outBuffer->bufferSize++;
        }
    }
}
