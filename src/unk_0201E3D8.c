#include "unk_0201E3D8.h"

#include <nitro.h>
#include <string.h>

#include "overlay072/struct_ov72_0223E2A8.h"

#include "inlines.h"
#include "system.h"

#define MAX_AUTO_SAMPLING_BUFFER_SIZE        9
#define AUTO_SAMPLING_FREQUENCY_LIMIT        5
#define AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL 5

static u32 sub_0201E658(u32 param0);
static u32 sub_0201E4EC(void);
static u32 sub_0201E6CC(u32 param0, u32 param1, u32 param2);
static u32 sub_0201E784(u32 param0, u32 param1);
static void sub_0201E7FC(UnkStruct_ov72_0223E2A8 *param0, u32 param1);
static u32 sub_0201E69C(u32 param0, u32 param1, u32 param2);
static void sub_0201E4A4(u32 param0, u32 param1, void *param2, u32 param3, u32 param4, u32 param5);
static void sub_0201E4D8(TPData *param0, int param1);

typedef struct {
    TPData *unk_00;
    u32 unk_04;
    u32 autoSamplingBufferFrequency;
    TPData autoSamplingBuffer[MAX_AUTO_SAMPLING_BUFFER_SIZE];
    u32 unk_54;
    u16 unk_58;
    u16 unk_5A;
} UnkStruct_021C0704;

static UnkStruct_021C0704 Unk_021C0704;

void sub_0201E3D8(void)
{
    GF_ASSERT(Unk_021C0704.unk_5A == 0);

    Unk_021C0704.unk_58 = 0;
    Unk_021C0704.unk_5A = 0;
}

u32 sub_0201E3F4(TPData *param0, u32 param1, u32 param2)
{
    int v0 = 0;
    u32 v1;
    int v2;

    GF_ASSERT(Unk_021C0704.unk_5A == 0);

    if ((param2 >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (param2 <= 0)) {
        return 0;
    }

    if (Unk_021C0704.unk_58 != 0) {
        return 0;
    }

    v1 = sub_0201E658(param2);

    if (v1 != 1) {
        return v1;
    }

    sub_0201E4A4(1, 1, param0, param1, 0, param2 * 2);

    return 1;
}

u32 sub_0201E450(u32 param0)
{
    u32 v0;
    int v1;

    GF_ASSERT(Unk_021C0704.unk_5A == 0);

    if ((param0 >= AUTO_SAMPLING_FREQUENCY_LIMIT) || (param0 <= 0)) {
        return 0;
    }

    if (Unk_021C0704.unk_58 != 0) {
        return 0;
    }

    v0 = sub_0201E658(param0);

    if (v0 != 1) {
        return v0;
    }

    sub_0201E4A4(2, 1, NULL, 0, 0, param0 * 2);

    return 1;
}

static void sub_0201E4A4(u32 param0, u32 param1, void *param2, u32 param3, u32 param4, u32 param5)
{
    Unk_021C0704.unk_58 = param0;
    gSystem.touchAutoSampling = param1;
    Unk_021C0704.unk_00 = param2;
    Unk_021C0704.unk_04 = param3;
    Unk_021C0704.autoSamplingBufferFrequency = param5;
    Unk_021C0704.unk_54 = param4;

    sub_0201E4D8(Unk_021C0704.autoSamplingBuffer, MAX_AUTO_SAMPLING_BUFFER_SIZE);
}

static void sub_0201E4D8(TPData *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        param0[v0].touch = 0;
    }
}

static u32 sub_0201E4EC(void)
{
    u32 v0 = 0;
    u32 v1;
    int v2;

    if (Unk_021C0704.unk_58 == 0) {
        return 1;
    }

    do {
        TP_RequestAutoSamplingStopAsync();
        TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_AUTO_OFF);

        v1 = TP_CheckError(TP_REQUEST_COMMAND_FLAG_AUTO_OFF);

        if (v1 != 0) {
            v0++;
        }
    } while ((v1 != 0) && (v0 <= AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL));

    if (v0 > 5) {
        return 2;
    }

    return 1;
}

u32 sub_0201E530(void)
{
    u32 v0;

    GF_ASSERT(Unk_021C0704.unk_5A == 0);

    v0 = sub_0201E4EC();

    if (v0 == 1) {
        sub_0201E4A4(0, 0, NULL, 0, 0, 0);
    }

    return v0;
}

u32 sub_0201E564(UnkStruct_ov72_0223E2A8 *param0, u32 param1, u32 param2)
{
    u32 v0 = 3;
    u32 v1;

    GF_ASSERT(Unk_021C0704.unk_5A == 0);

    if (Unk_021C0704.unk_58 != 0) {
        v1 = TP_GetLatestIndexInAuto();

        sub_0201E5C0(Unk_021C0704.autoSamplingBuffer, MAX_AUTO_SAMPLING_BUFFER_SIZE);

        if (param0 != NULL) {
            sub_0201E7FC(param0, v1);
        }

        if (Unk_021C0704.unk_58 == 1) {
            v0 = sub_0201E69C(param1, v1, param2);
        } else {
            v0 = 1;
        }
    } else {
        (void)0;
    }

    return v0;
}

void sub_0201E5C0(TPData *param0, u32 param1)
{
    int v0;
    TPData v1;

    for (v0 = 0; v0 < param1; v0++) {
        TP_GetCalibratedPoint(&v1, &(param0[v0]));
        param0[v0] = v1;
    }
}

void AfterSleep(void)
{
    u32 v0;

    if (Unk_021C0704.unk_5A == 0) {
        return;
    }

    if (Unk_021C0704.unk_58 == 0) {
        return;
    }

    v0 = sub_0201E658(Unk_021C0704.autoSamplingBufferFrequency / 2);
    GF_ASSERT(v0 == 1);

    Unk_021C0704.unk_5A = 0;
}

void BeforeSleep(void)
{
    u32 v0;

    if (Unk_021C0704.unk_5A == 1) {
        return;
    }

    if (Unk_021C0704.unk_58 == 0) {
        return;
    }

    v0 = sub_0201E4EC();
    GF_ASSERT(v0 == 1);

    Unk_021C0704.unk_5A = 1;
}

static u32 sub_0201E658(u32 param0)
{
    int v0 = 0;
    u32 v1;

    do {
        TP_RequestAutoSamplingStartAsync(0, param0, Unk_021C0704.autoSamplingBuffer, MAX_AUTO_SAMPLING_BUFFER_SIZE);
        TP_WaitBusy(TP_REQUEST_COMMAND_FLAG_AUTO_ON);

        v1 = TP_CheckError(TP_REQUEST_COMMAND_FLAG_AUTO_ON);

        if (v1 != 0) {
            v0++;
        }
    } while ((v1 != 0) && (v0 <= AUTO_SAMPLING_NUM_ERRORS_BEFORE_FAIL));

    if (v0 > 5) {
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

static inline int inline_0201E6CC(int param0, int param1)
{
    int v0 = (param0 >= param1) ? (param0 - param1) : (param1 - param0);
    return v0;
}

static u32 sub_0201E6CC(u32 param0, u32 param1, u32 param2)
{
    int v0;
    s32 v1;
    s32 v2;
    s16 v3;

    for (v0 = 0; v0 < Unk_021C0704.autoSamplingBufferFrequency; v0++) {
        v3 = param1 - Unk_021C0704.autoSamplingBufferFrequency + v0 + 1;

        if (v3 < 0) {
            v3 += 9;
        }

        if ((Unk_021C0704.autoSamplingBuffer[v3].touch == TP_TOUCH_ON) && (Unk_021C0704.autoSamplingBuffer[v3].validity == TP_VALIDITY_VALID)) {
            v1 = inline_0201E6CC(Unk_021C0704.unk_00[Unk_021C0704.unk_54 - 1].x, Unk_021C0704.autoSamplingBuffer[v3].x);
            v2 = inline_0201E6CC(Unk_021C0704.unk_00[Unk_021C0704.unk_54 - 1].y, Unk_021C0704.autoSamplingBuffer[v3].y);

            if ((v1 >= param2) || (v2 >= param2)) {
                Unk_021C0704.unk_00[Unk_021C0704.unk_54] = Unk_021C0704.autoSamplingBuffer[v3];
                Unk_021C0704.unk_54++;

                if (Unk_021C0704.unk_54 >= Unk_021C0704.unk_04) {
                    if (param0 == 1) {
                        Unk_021C0704.unk_54 %= Unk_021C0704.unk_04;
                    } else {
                        return -1;
                    }
                }
            }
        }
    }

    return Unk_021C0704.unk_54;
}

static u32 sub_0201E784(u32 param0, u32 param1)
{
    int v0;
    s16 v1;

    for (v0 = 0; v0 < Unk_021C0704.autoSamplingBufferFrequency; v0++) {
        v1 = param1 - Unk_021C0704.autoSamplingBufferFrequency + v0 + 1;

        if (v1 < 0) {
            v1 += MAX_AUTO_SAMPLING_BUFFER_SIZE;
        }

        Unk_021C0704.unk_00[Unk_021C0704.unk_54] = Unk_021C0704.autoSamplingBuffer[v1];
        Unk_021C0704.unk_54++;

        if (Unk_021C0704.unk_54 >= Unk_021C0704.unk_04) {
            if (param0 == 4) {
                Unk_021C0704.unk_54 %= Unk_021C0704.unk_04;
            } else {
                return -1;
            }
        }
    }

    return Unk_021C0704.unk_54;
}

static void sub_0201E7FC(UnkStruct_ov72_0223E2A8 *param0, u32 param1)
{
    int v0;
    s16 v1;

    param0->unk_00 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_02[v0].validity = TP_VALIDITY_VALID;
        param0->unk_02[v0].touch = TP_TOUCH_OFF;
        param0->unk_02[v0].x = 0;
        param0->unk_02[v0].y = 0;
    }

    for (v0 = 0; v0 < Unk_021C0704.autoSamplingBufferFrequency; v0++) {
        v1 = param1 - Unk_021C0704.autoSamplingBufferFrequency + v0 + 1;

        if (v1 < 0) {
            v1 += MAX_AUTO_SAMPLING_BUFFER_SIZE;
        }

        if (Unk_021C0704.autoSamplingBuffer[v1].validity == TP_VALIDITY_VALID) {
            param0->unk_02[param0->unk_00] = Unk_021C0704.autoSamplingBuffer[v1];
            param0->unk_00++;
        }
    }
}
