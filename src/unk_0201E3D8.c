#include "unk_0201E3D8.h"

#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "system.h"

#define AUTO_SAMPLING_BUFFER_MAX_SIZE        9
#define AUTO_SAMPLING_FREQUENCY_LIMIT        SPI_TP_SAMPLING_FREQUENCY_MAX + 1
#define AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL 5

enum TouchPadMode
{
    TOUCH_PAD_MODE_INACTIVE = 0,
    TOUCH_PAD_MODE_ACTIVE_WITH_EXTERNAL_BUFFER,
    TOUCH_PAD_MODE_ACTIVE,
};

typedef struct {
    TPData *externalBuffer;
    u32 externalBufferSize;
    u32 autoSamplingBufferFrequency;
    TPData autoSamplingBuffer[AUTO_SAMPLING_BUFFER_MAX_SIZE];
    u32 currentExternalBufferIndex;
    u16 touchPadMode;
    u16 touchPadDisabled;
} TouchPadState;

static u32 StartAutoSampling(u32 frequency);
static u32 StopAutoSampling(void);
static u32 TransferAutoSamplingBufferToTouchPadDataWithThreshold(enum TouchPadDataBufferTransferMethod method, u32 latestIndex, u32 threshold);
static u32 TransferAutoSamplingBufferToTouchPadData(enum TouchPadDataBufferTransferMethod method, u32 latestIndex);
static void OutputAutoSamplingBuffer(TouchPadDataBuffer *outBuffer, u32 lastAutoSamplingIndex);
static u32 TransferAutoSamplingBuffer(enum TouchPadDataBufferTransferMethod method, u32 latestIndex, u32 threshold);
static void UpdateTouchScreenState(enum TouchPadMode touchPadMode, BOOL autoSamplingEnabled, void *externalBuffer, u32 externalBufferSize, u32 currentExternalBufferIndex, u32 bufferFrequency);
static void ClearTouchOnBufferData(TPData *touchPadDataBuffer, int externalBufferSize);

static TouchPadState touchPadState;

void EnableTouchPad(void)
{
    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    touchPadState.touchPadMode = TOUCH_PAD_MODE_INACTIVE;
    touchPadState.touchPadDisabled = FALSE;
}

BOOL InitializeTouchPadWithExternalBuffer(TPData *externalBuffer, u32 externalBufferSize, u32 autoSamplingFrequency)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if ((autoSamplingFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (autoSamplingFrequency <= 0)) {
        return FALSE;
    }

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_INACTIVE) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(autoSamplingFrequency);

    if (autoSamplingResult != 1) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(TOUCH_PAD_MODE_ACTIVE_WITH_EXTERNAL_BUFFER, TRUE, externalBuffer, externalBufferSize, 0, autoSamplingFrequency * 2);

    return TRUE;
}

BOOL InitializeTouchPad(u32 autoSamplingFrequency)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if ((autoSamplingFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (autoSamplingFrequency <= 0)) {
        return FALSE;
    }

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_INACTIVE) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(autoSamplingFrequency);

    if (autoSamplingResult != 1) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(TOUCH_PAD_MODE_ACTIVE, TRUE, NULL, 0, 0, autoSamplingFrequency * 2);

    return TRUE;
}

static void UpdateTouchScreenState(enum TouchPadMode touchPadMode, BOOL autoSamplingEnabled, void *externalBuffer, u32 externalBufferSize, u32 currentExternalBufferIndex, u32 bufferFrequency)
{
    touchPadState.touchPadMode = touchPadMode;
    gSystem.touchAutoSampling = autoSamplingEnabled;
    touchPadState.externalBuffer = externalBuffer;
    touchPadState.externalBufferSize = externalBufferSize;
    touchPadState.autoSamplingBufferFrequency = bufferFrequency;
    touchPadState.currentExternalBufferIndex = currentExternalBufferIndex;

    ClearTouchOnBufferData(touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);
}

static void ClearTouchOnBufferData(TPData *touchPadDataBuffer, int externalBufferSize)
{
    int i;

    for (i = 0; i < externalBufferSize; i++) {
        touchPadDataBuffer[i].touch = TP_TOUCH_OFF;
    }
}

static u32 StopAutoSampling(void)
{
    u32 errorCount = 0;
    BOOL hasError;

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_INACTIVE) {
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

u32 DisableTouchPad(void)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    autoSamplingResult = StopAutoSampling();

    if (autoSamplingResult == 1) {
        UpdateTouchScreenState(TOUCH_PAD_MODE_INACTIVE, FALSE, NULL, 0, 0, 0);
    }

    return autoSamplingResult;
}

u32 sub_0201E564(TouchPadDataBuffer *buffer, enum TouchPadDataBufferTransferMethod method, u32 threshold)
{
    u32 v0 = 3;
    u32 latestIndex;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_INACTIVE) {
        latestIndex = TP_GetLatestIndexInAuto();

        ConvertTouchPadDataToScreenSpace(touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);

        if (buffer != NULL) {
            OutputAutoSamplingBuffer(buffer, latestIndex);
        }

        if (touchPadState.touchPadMode == TOUCH_PAD_MODE_ACTIVE_WITH_EXTERNAL_BUFFER) {
            v0 = TransferAutoSamplingBuffer(method, latestIndex, threshold);
        } else {
            v0 = 1;
        }
    } else {
        (void)0;
    }

    return v0;
}

void ConvertTouchPadDataToScreenSpace(TPData *touchPadDataBuffer, u32 externalBufferSize)
{
    int i;
    TPData convertedData;

    for (i = 0; i < externalBufferSize; i++) {
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

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_INACTIVE) {
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

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_INACTIVE) {
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

static u32 TransferAutoSamplingBuffer(enum TouchPadDataBufferTransferMethod method, u32 latestIndex, u32 threshold)
{
    u32 v0;

    switch (method) {
    case TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITH_THRESHOLD_WITH_WRAPPING:
    case TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITH_THRESHOLD_WITHOUT_WRAPPING:
        v0 = TransferAutoSamplingBufferToTouchPadDataWithThreshold(method, latestIndex, threshold);
        break;
    case TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITHOUT_THRESHOLD_WITHOUT_WRAPPING:
    case TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITHOUT_THRESHOLD_WITH_WRAPPING:
        v0 = TransferAutoSamplingBufferToTouchPadData(method, latestIndex);
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

static u32 TransferAutoSamplingBufferToTouchPadDataWithThreshold(enum TouchPadDataBufferTransferMethod method, u32 latestIndex, u32 threshold)
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
            xDiff = CalcIntsDifference(touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex - 1].x, touchPadState.autoSamplingBuffer[bufferIndex].x);
            yDiff = CalcIntsDifference(touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex - 1].y, touchPadState.autoSamplingBuffer[bufferIndex].y);

            if ((xDiff >= threshold) || (yDiff >= threshold)) {
                touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex] = touchPadState.autoSamplingBuffer[bufferIndex];
                touchPadState.currentExternalBufferIndex++;

                if (touchPadState.currentExternalBufferIndex >= touchPadState.externalBufferSize) {
                    if (method == TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITH_THRESHOLD_WITH_WRAPPING) {
                        touchPadState.currentExternalBufferIndex %= touchPadState.externalBufferSize;
                    } else {
                        return -1;
                    }
                }
            }
        }
    }

    return touchPadState.currentExternalBufferIndex;
}

static u32 TransferAutoSamplingBufferToTouchPadData(enum TouchPadDataBufferTransferMethod method, u32 latestIndex)
{
    int i;
    s16 bufferIndex;

    for (i = 0; i < touchPadState.autoSamplingBufferFrequency; i++) {
        bufferIndex = latestIndex - touchPadState.autoSamplingBufferFrequency + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex] = touchPadState.autoSamplingBuffer[bufferIndex];
        touchPadState.currentExternalBufferIndex++;

        if (touchPadState.currentExternalBufferIndex >= touchPadState.externalBufferSize) {
            if (method == TOUCH_PAD_DATA_BUFFER_TRANSFER_METHOD_WITHOUT_THRESHOLD_WITHOUT_WRAPPING) {
                touchPadState.currentExternalBufferIndex %= touchPadState.externalBufferSize;
            } else {
                return -1;
            }
        }
    }

    return touchPadState.currentExternalBufferIndex;
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
