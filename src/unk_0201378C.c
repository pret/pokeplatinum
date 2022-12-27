#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "inlines.h"

#include "unk_0201378C.h"

typedef struct {
    BOOL unk_00;
    BOOL unk_04;
    int unk_08;
    RTCResult unk_0C;
    RTCDate unk_10;
    RTCTime unk_20;
    RTCDate unk_2C;
    RTCTime unk_3C;
} UnkStruct_021BF5C8;

static void sub_020137EC(RTCResult param0, void * param1);
static void sub_02013824(UnkStruct_021BF5C8 * param0);

static UnkStruct_021BF5C8 Unk_021BF5C8;

void sub_0201378C (void)
{
    RTC_Init();
    memset(&Unk_021BF5C8, 0, sizeof(Unk_021BF5C8));
    Unk_021BF5C8.unk_00 = 0;
    Unk_021BF5C8.unk_04 = 0;
    Unk_021BF5C8.unk_08 = 0;
    sub_02013824(&Unk_021BF5C8);
}

void sub_020137C4 (void)
{
    RTCResult v0;

    if (Unk_021BF5C8.unk_04) {
        return;
    }

    Unk_021BF5C8.unk_08++;

    if (Unk_021BF5C8.unk_08 > 10) {
        Unk_021BF5C8.unk_08 = 0;
        sub_02013824(&Unk_021BF5C8);
    }
}

static void sub_020137EC (RTCResult param0, void * param1)
{
    UnkStruct_021BF5C8 * v0 = param1;

    v0->unk_0C = param0;

    GF_ASSERT(param0 == RTC_RESULT_SUCCESS);

    v0->unk_00 = 1;
    v0->unk_10 = v0->unk_2C;
    v0->unk_20 = v0->unk_3C;
    v0->unk_04 = 0;
}

static void sub_02013824 (UnkStruct_021BF5C8 * param0)
{
    param0->unk_04 = 1;
    param0->unk_0C = RTC_GetDateTimeAsync(&param0->unk_2C, &param0->unk_3C, sub_020137EC, param0);
    GF_ASSERT(param0->unk_0C == RTC_RESULT_SUCCESS);
}

static inline RTCDate * inline_0201384C (UnkStruct_021BF5C8 * param0)
{
    return &param0->unk_10;
}

static inline RTCTime * inline_02013880 (UnkStruct_021BF5C8 * param0)
{
    return &param0->unk_20;
}

void sub_0201384C (RTCDate * param0, RTCTime * param1)
{
    GF_ASSERT(Unk_021BF5C8.unk_00 == 1);

    *param0 = *inline_0201384C(&Unk_021BF5C8);
    *param1 = *inline_02013880(&Unk_021BF5C8);
}

void sub_02013880 (RTCTime * param0)
{
    GF_ASSERT(Unk_021BF5C8.unk_00 == 1);
    *param0 = *inline_02013880(&Unk_021BF5C8);
}

void sub_020138A4 (RTCDate * param0)
{
    GF_ASSERT(Unk_021BF5C8.unk_00 == 1);
    *param0 = *inline_0201384C(&Unk_021BF5C8);
}

int sub_020138C8 (void)
{
    RTCTime * v0;

    v0 = inline_02013880(&Unk_021BF5C8);
    return v0->hour * 60 * 60 + v0->minute * 60 + v0->second;
}

s64 sub_020138EC (void)
{
    return RTC_ConvertDateTimeToSecond(inline_0201384C(&Unk_021BF5C8), inline_02013880(&Unk_021BF5C8));
}

int sub_02013900 (const RTCDate * param0)
{
    int v0, v1, v2;
    static const u16 v3[12] = {
        0x0,
        0x1F,
        0x3B,
        0x5A,
        0x78,
        0x97,
        0xB5,
        0xD4,
        0xF3,
        0x111,
        0x130,
        0x14E
    };

    v1 = param0->day;
    v1 += v3[param0->month - 1];

    if (param0->month >= 3) {
        v0 = param0->year;

        if (((v0 % 4 == 0) && (v0 % 100 != 0)) || (v0 % 400 == 0)) {
            v1++;
        }
    }

    return v1;
}

BOOL sub_02013948 (void)
{
    switch (sub_02013960()) {
    case 4:
    case 3:
        return 1;
    }

    return 0;
}

int sub_02013960 (void)
{
    RTCTime v0;

    sub_02013880(&v0);
    return sub_02013974(v0.hour);
}

int sub_02013974 (int param0)
{
    static const u8 v0[24] = {
        0x4,
        0x4,
        0x4,
        0x4,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3
    };

    GF_ASSERT(0 <= param0 && param0 < 24);
    return v0[param0];
}

s64 sub_0201398C (s64 param0, s64 param1)
{
    RTCDate v0 = {99, 12, 31, 0};
    RTCTime v1 = {23, 59, 59};
    s64 v2 = RTC_ConvertDateTimeToSecond(&v0, &v1);

    GF_ASSERT(v2 == 3155759999);

    if (param0 < param1) {
        return param1 - param0;
    }

    return param1 + (3155759999 - param0);
}
