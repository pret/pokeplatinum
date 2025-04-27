#include "unk_0201E3D8.h"

#include <nitro.h>
#include <string.h>

#include "overlay072/struct_ov72_0223E2A8.h"

#include "inlines.h"
#include "system.h"

#define MAX_AUTO_SAMPLING_BUFFER_SIZE        9
#define AUTO_SAMPLING_FREQUENCY_LIMIT        5
#define AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL 5

enum AutoSamplingState
{
    AUTO_SAMPLING_STATE_DISABLED = 0,
    AUTO_SAMPLING_STATE_ENABLED,
    AUTO_SAMPLING_STATE_ENABLED_NO_BUFFER,
};

typedef struct {
    TPData *buffer;
    u32 unk_04;
    u32 autoSamplingBufferFrequency;
    TPData autoSamplingBuffer[MAX_AUTO_SAMPLING_BUFFER_SIZE];
    u32 unk_54;
    u16 autoSamplingState;
    u16 touchScreenDisabled;
} TouchScreenState;

static u32 StartAutoSampling(u32 bufferFrequency);
static u32 StopAutoSampling(void);
static u32 sub_0201E6CC(u32 param0, u32 param1, u32 param2);
static u32 sub_0201E784(u32 param0, u32 param1);
static void OutputAutoSampleBuffer(UnkStruct_ov72_0223E2A8 *outBuffer, u32 lastIndex);
static u32 sub_0201E69C(u32 param0, u32 param1, u32 param2);
static void UpdateTouchScreenState(enum AutoSamplingState autoSamplingState, BOOL autoSamplingEnabled, void *buffer, u32 param3, u32 param4, u32 bufferFrequency);
static void ClearTouchOnBufferData(TPData *buffer, int bufferSize);

static TouchScreenState touchScreenState;

void EnableTouchScreen(void)
{
    GF_ASSERT(touchScreenState.touchScreenDisabled == FALSE);

    touchScreenState.autoSamplingState = AUTO_SAMPLING_STATE_DISABLED;
    touchScreenState.touchScreenDisabled = FALSE;
}

BOOL InitializeTouchScreen(TPData *buffer, u32 param1, u32 bufferFrequency)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchScreenState.touchScreenDisabled == FALSE);

    if ((bufferFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (bufferFrequency <= 0)) {
        return FALSE;
    }

    if (touchScreenState.autoSamplingState != AUTO_SAMPLING_STATE_DISABLED) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(bufferFrequency);

    if (autoSamplingResult != 1) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(AUTO_SAMPLING_STATE_ENABLED, TRUE, buffer, param1, 0, bufferFrequency * 2);

    return TRUE;
}

BOOL InitializeTouchScreenNoBuffer(u32 bufferFrequency)
{
    u32 autoSamplingResult;

    GF_ASSERT(touchScreenState.touchScreenDisabled == FALSE);

    if ((bufferFrequency >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (bufferFrequency <= 0)) {
        return FALSE;
    }

    if (touchScreenState.autoSamplingState != AUTO_SAMPLING_STATE_DISABLED) {
        return FALSE;
    }

    autoSamplingResult = StartAutoSampling(bufferFrequency);

    if (autoSamplingResult != 1) {
        return autoSamplingResult;
    }

    UpdateTouchScreenState(AUTO_SAMPLING_STATE_ENABLED_NO_BUFFER, TRUE, NULL, 0, 0, bufferFrequency * 2);

    return TRUE;
}

static void UpdateTouchScreenState(enum AutoSamplingState autoSamplingState, BOOL autoSamplingEnabled, void *buffer, u32 param3, u32 param4, u32 bufferFrequency)
{
    touchScreenState.autoSamplingState = autoSamplingState;
    gSystem.touchAutoSampling = autoSamplingEnabled;
    touchScreenState.buffer = buffer;
    touchScreenState.unk_04 = param3;
    touchScreenState.autoSamplingBufferFrequency = bufferFrequency;
    touchScreenState.unk_54 = param4;

    ClearTouchOnBufferData(touchScreenState.autoSamplingBuffer, MAX_AUTO_SAMPLING_BUFFER_SIZE);
}

static void ClearTouchOnBufferData(TPData *buffer, int bufferSize)
{
    int i;

    for (i = 0; i < bufferSize; i++) {
        buffer[i].touch = TP_TOUCH_OFF;
    }
}

static u32 StopAutoSampling(void)
{
    u32 errorCount = 0;
    BOOL hasError;

    if (touchScreenState.autoSamplingState == AUTO_SAMPLING_STATE_DISABLED) {
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

    GF_ASSERT(touchScreenState.touchScreenDisabled == FALSE);

    autoSamplingResult = StopAutoSampling();

    if (autoSamplingResult == 1) {
        UpdateTouchScreenState(AUTO_SAMPLING_STATE_DISABLED, FALSE, NULL, 0, 0, 0);
    }

    return autoSamplingResult;
}

u32 sub_0201E564(UnkStruct_ov72_0223E2A8 *param0, u32 param1, u32 param2)
{
    u32 v0 = 3;
    u32 v1;

    GF_ASSERT(touchScreenState.touchScreenDisabled == FALSE);

    if (touchScreenState.autoSamplingState != AUTO_SAMPLING_STATE_DISABLED) {
        v1 = TP_GetLatestIndexInAuto();

        ConvertTouchPadDataToScreenSpace(touchScreenState.autoSamplingBuffer, MAX_AUTO_SAMPLING_BUFFER_SIZE);

        if (param0 != NULL) {
            OutputAutoSampleBuffer(param0, v1);
        }

        if (touchScreenState.autoSamplingState == AUTO_SAMPLING_STATE_ENABLED) {
            v0 = sub_0201E69C(param1, v1, param2);
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

    if (touchScreenState.touchScreenDisabled == FALSE) {
        return;
    }

    if (touchScreenState.autoSamplingState == AUTO_SAMPLING_STATE_DISABLED) {
        return;
    }

    autoSamplingResult = StartAutoSampling(touchScreenState.autoSamplingBufferFrequency / 2);
    GF_ASSERT(autoSamplingResult == 1);

    touchScreenState.touchScreenDisabled = FALSE;
}

void BeforeSleep(void)
{
    u32 autoSamplingResult;

    if (touchScreenState.touchScreenDisabled == TRUE) {
        return;
    }

    if (touchScreenState.autoSamplingState == AUTO_SAMPLING_STATE_DISABLED) {
        return;
    }

    autoSamplingResult = StopAutoSampling();
    GF_ASSERT(autoSamplingResult == 1);

    touchScreenState.touchScreenDisabled = TRUE;
}

static u32 StartAutoSampling(u32 bufferFrequency)
{
    int errorCount = 0;
    BOOL hasError;

    do {
        TP_RequestAutoSamplingStartAsync(0, bufferFrequency, touchScreenState.autoSamplingBuffer, MAX_AUTO_SAMPLING_BUFFER_SIZE);
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

static u32 sub_0201E69C(u32 param0, u32 param1, u32 param2)
{
    u32 v0;

    switch (param0) {
    case 1:
    case 3:
        v0 = sub_0201E6CC(param0, param1, param2);
        break;
    case 4:
    case 5:
        v0 = sub_0201E784(param0, param1);
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

static u32 sub_0201E6CC(u32 param0, u32 param1, u32 param2)
{
    int v0;
    s32 v1;
    s32 v2;
    s16 v3;

    for (v0 = 0; v0 < touchScreenState.autoSamplingBufferFrequency; v0++) {
        v3 = param1 - touchScreenState.autoSamplingBufferFrequency + v0 + 1;

        if (v3 < 0) {
            v3 += 9;
        }

        if ((touchScreenState.autoSamplingBuffer[v3].touch == TP_TOUCH_ON) && (touchScreenState.autoSamplingBuffer[v3].validity == TP_VALIDITY_VALID)) {
            v1 = CalcIntsDifference(touchScreenState.buffer[touchScreenState.unk_54 - 1].x, touchScreenState.autoSamplingBuffer[v3].x);
            v2 = CalcIntsDifference(touchScreenState.buffer[touchScreenState.unk_54 - 1].y, touchScreenState.autoSamplingBuffer[v3].y);

            if ((v1 >= param2) || (v2 >= param2)) {
                touchScreenState.buffer[touchScreenState.unk_54] = touchScreenState.autoSamplingBuffer[v3];
                touchScreenState.unk_54++;

                if (touchScreenState.unk_54 >= touchScreenState.unk_04) {
                    if (param0 == 1) {
                        touchScreenState.unk_54 %= touchScreenState.unk_04;
                    } else {
                        return -1;
                    }
                }
            }
        }
    }

    return touchScreenState.unk_54;
}

static u32 sub_0201E784(u32 param0, u32 param1)
{
    int v0;
    s16 v1;

    for (v0 = 0; v0 < touchScreenState.autoSamplingBufferFrequency; v0++) {
        v1 = param1 - touchScreenState.autoSamplingBufferFrequency + v0 + 1;

        if (v1 < 0) {
            v1 += MAX_AUTO_SAMPLING_BUFFER_SIZE;
        }

        touchScreenState.buffer[touchScreenState.unk_54] = touchScreenState.autoSamplingBuffer[v1];
        touchScreenState.unk_54++;

        if (touchScreenState.unk_54 >= touchScreenState.unk_04) {
            if (param0 == 4) {
                touchScreenState.unk_54 %= touchScreenState.unk_04;
            } else {
                return -1;
            }
        }
    }

    return touchScreenState.unk_54;
}

static void OutputAutoSampleBuffer(UnkStruct_ov72_0223E2A8 *outBuffer, u32 lastIndex)
{
    int i;
    s16 bufferIndex;

    outBuffer->unk_00 = 0;

    for (i = 0; i < 8; i++) {
        outBuffer->unk_02[i].validity = TP_VALIDITY_VALID;
        outBuffer->unk_02[i].touch = TP_TOUCH_OFF;
        outBuffer->unk_02[i].x = 0;
        outBuffer->unk_02[i].y = 0;
    }

    for (i = 0; i < touchScreenState.autoSamplingBufferFrequency; i++) {
        bufferIndex = lastIndex - touchScreenState.autoSamplingBufferFrequency + i + 1;

        if (bufferIndex < 0) {
            bufferIndex += MAX_AUTO_SAMPLING_BUFFER_SIZE;
        }

        if (touchScreenState.autoSamplingBuffer[bufferIndex].validity == TP_VALIDITY_VALID) {
            outBuffer->unk_02[outBuffer->unk_00] = touchScreenState.autoSamplingBuffer[bufferIndex];
            outBuffer->unk_00++;
        }
    }
}
