#include "touch_pad.h"

#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "system.h"

#define AUTO_SAMPLING_NUM_FRAMES_TO_STORE    2
#define AUTO_SAMPLING_BUFFER_MAX_SIZE        SPI_TP_SAMPLING_FREQUENCY_MAX *AUTO_SAMPLING_NUM_FRAMES_TO_STORE + 1 // + 1 for the active sample
#define AUTO_SAMPLING_FREQUENCY_LIMIT        SPI_TP_SAMPLING_FREQUENCY_MAX + 1
#define AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL 5

enum TouchPadMode {
    TOUCH_PAD_MODE_INACTIVE = 0,
    TOUCH_PAD_MODE_ACTIVE_WITH_EXTERNAL_BUFFER,
    TOUCH_PAD_MODE_ACTIVE,
};

enum AutoSamplingOperationResult {
    AUTO_SAMPLING_OPERATION_RESULT_SUCCESS = 1,
    AUTO_SAMPLING_OPERATION_RESULT_FAILURE,
};

enum WriteAutoSamplingDataResult {
    WRITE_AUTO_SAMPLING_DATA_RESULT_EXTERNAL_BUFFER_INDEX_OUT_OF_RANGE = -1,
    WRITE_AUTO_SAMPLING_DATA_RESULT_EXTERNAL_BUFFER_NOT_WRITTEN_TO = 1,
    WRITE_AUTO_SAMPLING_DATA_RESULT_NO_DATA_WRITTEN = 3,
};

typedef struct {
    TPData *externalBuffer;
    u32 externalBufferSize;
    u32 autoSamplingBufferSize;
    TPData autoSamplingBuffer[AUTO_SAMPLING_BUFFER_MAX_SIZE];
    u32 currentExternalBufferIndex;
    u16 touchPadMode;
    u16 touchPadDisabled;
} TouchPadState;

static enum AutoSamplingOperationResult StartAutoSampling(u32 frequency);
static enum AutoSamplingOperationResult StopAutoSampling(void);
static u32 WriteAutoSamplingTouchDataToExternalBuffer(enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 latestAutoSamplingIndex, u32 changeThreshold);
static u32 WriteAutoSamplingDataToExternalBuffer(enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 latestAutoSamplingIndex);
static void OutputAutoSamplingData(TouchPadDataBuffer *outBuffer, u32 lastAutoSamplingIndex);
static u32 WriteAutoSamplingData(enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 latestAutoSamplingIndex, u32 changeThreshold);
static void UpdateTouchScreenState(enum TouchPadMode touchPadMode, BOOL autoSamplingEnabled, void *externalBuffer, u32 externalBufferSize, u32 currentExternalBufferIndex, u32 autoSamplingBufferSize);
static void ResetTouchPadData(TPData *touchPadDataBuffer, int touchPadDataBufferSize);

static TouchPadState touchPadState;

void EnableTouchPad(void)
{
    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    touchPadState.touchPadMode = TOUCH_PAD_MODE_INACTIVE;
    touchPadState.touchPadDisabled = FALSE;
}

BOOL InitializeTouchPadWithExternalBuffer(TPData *externalBuffer, u32 externalBufferSize, u32 autoSamplingFrequency)
{
    enum AutoSamplingOperationResult autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if ((autoSamplingFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (autoSamplingFrequency <= 0)) {
        return FALSE;
    }

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_INACTIVE) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(autoSamplingFrequency);

    if (autoSamplingResult != AUTO_SAMPLING_OPERATION_RESULT_SUCCESS) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(TOUCH_PAD_MODE_ACTIVE_WITH_EXTERNAL_BUFFER, TRUE, externalBuffer, externalBufferSize, 0, autoSamplingFrequency * AUTO_SAMPLING_NUM_FRAMES_TO_STORE);

    return TRUE;
}

BOOL InitializeTouchPad(u32 autoSamplingFrequency)
{
    enum AutoSamplingOperationResult autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if ((autoSamplingFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (autoSamplingFrequency <= 0)) {
        return FALSE;
    }

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_INACTIVE) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(autoSamplingFrequency);

    if (autoSamplingResult != AUTO_SAMPLING_OPERATION_RESULT_SUCCESS) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(TOUCH_PAD_MODE_ACTIVE, TRUE, NULL, 0, 0, autoSamplingFrequency * AUTO_SAMPLING_NUM_FRAMES_TO_STORE);

    return TRUE;
}

static void UpdateTouchScreenState(enum TouchPadMode touchPadMode, BOOL autoSamplingEnabled, void *externalBuffer, u32 externalBufferSize, u32 currentExternalBufferIndex, u32 autoSamplingBufferSize)
{
    touchPadState.touchPadMode = touchPadMode;
    gSystem.touchAutoSampling = autoSamplingEnabled;
    touchPadState.externalBuffer = externalBuffer;
    touchPadState.externalBufferSize = externalBufferSize;
    touchPadState.autoSamplingBufferSize = autoSamplingBufferSize;
    touchPadState.currentExternalBufferIndex = currentExternalBufferIndex;

    ResetTouchPadData(touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);
}

static void ResetTouchPadData(TPData *touchPadDataBuffer, int touchPadDataBufferSize)
{
    int i;

    for (i = 0; i < touchPadDataBufferSize; i++) {
        touchPadDataBuffer[i].touch = TP_TOUCH_OFF;
    }
}

static enum AutoSamplingOperationResult StopAutoSampling(void)
{
    u32 errorCount = 0;
    BOOL hasError;

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_INACTIVE) {
        return AUTO_SAMPLING_OPERATION_RESULT_SUCCESS;
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
        return AUTO_SAMPLING_OPERATION_RESULT_FAILURE;
    }

    return AUTO_SAMPLING_OPERATION_RESULT_SUCCESS;
}

u32 DisableTouchPad(void)
{
    enum AutoSamplingOperationResult autoSamplingResult;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    autoSamplingResult = StopAutoSampling();

    if (autoSamplingResult == AUTO_SAMPLING_OPERATION_RESULT_SUCCESS) {
        UpdateTouchScreenState(TOUCH_PAD_MODE_INACTIVE, FALSE, NULL, 0, 0, 0);
    }

    return autoSamplingResult;
}

u32 WriteAutoSamplingDataToBuffer(TouchPadDataBuffer *outBuffer, enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 changeThreshold)
{
    u32 result = WRITE_AUTO_SAMPLING_DATA_RESULT_NO_DATA_WRITTEN;
    u32 latestAutoSamplingIndex;

    GF_ASSERT(touchPadState.touchPadDisabled == FALSE);

    if (touchPadState.touchPadMode != TOUCH_PAD_MODE_INACTIVE) {
        latestAutoSamplingIndex = TP_GetLatestIndexInAuto();

        ConvertTouchPadDataToScreenSpace(touchPadState.autoSamplingBuffer, AUTO_SAMPLING_BUFFER_MAX_SIZE);

        if (outBuffer != NULL) {
            OutputAutoSamplingData(outBuffer, latestAutoSamplingIndex);
        }

        if (touchPadState.touchPadMode == TOUCH_PAD_MODE_ACTIVE_WITH_EXTERNAL_BUFFER) {
            result = WriteAutoSamplingData(externalBufferWriteMethod, latestAutoSamplingIndex, changeThreshold);
        } else {
            result = WRITE_AUTO_SAMPLING_DATA_RESULT_EXTERNAL_BUFFER_NOT_WRITTEN_TO;
        }
    } else {
        (void)0;
    }

    return result;
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
    enum AutoSamplingOperationResult autoSamplingResult;

    if (touchPadState.touchPadDisabled == FALSE) {
        return;
    }

    if (touchPadState.touchPadMode == TOUCH_PAD_MODE_INACTIVE) {
        return;
    }

    autoSamplingResult = StartAutoSampling(touchPadState.autoSamplingBufferSize / AUTO_SAMPLING_NUM_FRAMES_TO_STORE);
    GF_ASSERT(autoSamplingResult == AUTO_SAMPLING_OPERATION_RESULT_SUCCESS);

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
    GF_ASSERT(autoSamplingResult == AUTO_SAMPLING_OPERATION_RESULT_SUCCESS);

    touchPadState.touchPadDisabled = TRUE;
}

static enum AutoSamplingOperationResult StartAutoSampling(u32 frequency)
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
        return AUTO_SAMPLING_OPERATION_RESULT_FAILURE;
    }

    return AUTO_SAMPLING_OPERATION_RESULT_SUCCESS;
}

static u32 WriteAutoSamplingData(enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 latestAutoSamplingIndex, u32 changeThreshold)
{
    u32 externalBufferEndIndex;

    switch (externalBufferWriteMethod) {
    case TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ONLY_TOUCHES_WITH_WRAPPING:
    case TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ONLY_TOUCHES_WITHOUT_WRAPPING:
        externalBufferEndIndex = WriteAutoSamplingTouchDataToExternalBuffer(externalBufferWriteMethod, latestAutoSamplingIndex, changeThreshold);
        break;
    case TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITHOUT_WRAPPING:
    case TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITH_WRAPPING:
        externalBufferEndIndex = WriteAutoSamplingDataToExternalBuffer(externalBufferWriteMethod, latestAutoSamplingIndex);
        break;
    default:
        externalBufferEndIndex = WRITE_AUTO_SAMPLING_DATA_RESULT_EXTERNAL_BUFFER_NOT_WRITTEN_TO;
        break;
    }

    return externalBufferEndIndex;
}

static inline int CalcIntsDifference(int int1, int int2)
{
    int diff = (int1 >= int2) ? (int1 - int2) : (int2 - int1);
    return diff;
}

static u32 WriteAutoSamplingTouchDataToExternalBuffer(enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 latestAutoSamplingIndex, u32 changeThreshold)
{
    int i;
    s32 xDiff;
    s32 yDiff;
    s16 bufferIndex;

    for (i = 0; i < touchPadState.autoSamplingBufferSize; i++) {
        bufferIndex = latestAutoSamplingIndex - touchPadState.autoSamplingBufferSize + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        if ((touchPadState.autoSamplingBuffer[bufferIndex].touch == TP_TOUCH_ON) && (touchPadState.autoSamplingBuffer[bufferIndex].validity == TP_VALIDITY_VALID)) {
            xDiff = CalcIntsDifference(touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex - 1].x, touchPadState.autoSamplingBuffer[bufferIndex].x);
            yDiff = CalcIntsDifference(touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex - 1].y, touchPadState.autoSamplingBuffer[bufferIndex].y);

            if ((xDiff >= changeThreshold) || (yDiff >= changeThreshold)) {
                touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex] = touchPadState.autoSamplingBuffer[bufferIndex];
                touchPadState.currentExternalBufferIndex++;

                if (touchPadState.currentExternalBufferIndex >= touchPadState.externalBufferSize) {
                    if (externalBufferWriteMethod == TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ONLY_TOUCHES_WITH_WRAPPING) {
                        touchPadState.currentExternalBufferIndex %= touchPadState.externalBufferSize;
                    } else {
                        return WRITE_AUTO_SAMPLING_DATA_RESULT_EXTERNAL_BUFFER_INDEX_OUT_OF_RANGE;
                    }
                }
            }
        }
    }

    return touchPadState.currentExternalBufferIndex;
}

static u32 WriteAutoSamplingDataToExternalBuffer(enum TouchPadExternalBufferWriteMethod externalBufferWriteMethod, u32 latestAutoSamplingIndex)
{
    int i;
    s16 bufferIndex;

    for (i = 0; i < touchPadState.autoSamplingBufferSize; i++) {
        bufferIndex = latestAutoSamplingIndex - touchPadState.autoSamplingBufferSize + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        touchPadState.externalBuffer[touchPadState.currentExternalBufferIndex] = touchPadState.autoSamplingBuffer[bufferIndex];
        touchPadState.currentExternalBufferIndex++;

        if (touchPadState.currentExternalBufferIndex >= touchPadState.externalBufferSize) {
            if (externalBufferWriteMethod == TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITHOUT_WRAPPING) {
                touchPadState.currentExternalBufferIndex %= touchPadState.externalBufferSize;
            } else {
                return WRITE_AUTO_SAMPLING_DATA_RESULT_EXTERNAL_BUFFER_INDEX_OUT_OF_RANGE;
            }
        }
    }

    return touchPadState.currentExternalBufferIndex;
}

static void OutputAutoSamplingData(TouchPadDataBuffer *outBuffer, u32 lastAutoSamplingIndex)
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

    for (i = 0; i < touchPadState.autoSamplingBufferSize; i++) {
        bufferIndex = lastAutoSamplingIndex - touchPadState.autoSamplingBufferSize + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += AUTO_SAMPLING_BUFFER_MAX_SIZE;
        }

        if (touchPadState.autoSamplingBuffer[bufferIndex].validity == TP_VALIDITY_VALID) {
            outBuffer->buffer[outBuffer->bufferSize] = touchPadState.autoSamplingBuffer[bufferIndex];
            outBuffer->bufferSize++;
        }
    }
}
