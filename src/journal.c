#include "journal.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202BC58.h"
#include "struct_defs/struct_0202BCC8.h"
#include "struct_defs/struct_0202BE38.h"
#include "struct_defs/struct_0202BF4C.h"
#include "struct_defs/struct_0202BFCC.h"

#include "heap.h"
#include "map_header.h"
#include "play_time.h"
#include "rtc.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct Journal_t {
    UnkStruct_0202BC58 unk_00;
    u32 unk_04[4];
    UnkStruct_0202BE38 unk_14;
    UnkStruct_0202BF4C unk_18;
    u8 unk_1C[2][42];
} Journal;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_020E5B90;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_020E5B50;

static void sub_0202B7A0(Journal *journal, UnkStruct_0202BC58 *param1);
static void sub_0202B7E0(Journal *journal, UnkStruct_0202BCC8 *param1);
static void sub_0202B880(Journal *journal, UnkStruct_0202BE38 *param1);
static void sub_0202B88C(Journal *journal, UnkStruct_0202BF4C *param1);
static void sub_0202B898(Journal *journal, UnkStruct_0202BFCC *param1);
static u32 *sub_0202B91C(u32 *param0);
static u8 *sub_0202B954(Journal *journal);
static void sub_0202B994(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202B9D0(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202B9F0(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202BA48(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202BAB0(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202BAF8(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202BB40(u32 *param0, UnkStruct_0202BCC8 *param1);
static void sub_0202BB88(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202BBC4(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202BBE0(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202BC14(Journal *journal, UnkStruct_0202BFCC *param1);
static void sub_0202BC48(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202BF94(const u16 *param0, u16 *param1, u32 param2);
static void sub_0202C2FC(Journal *journal, UnkStruct_0202BC58 *param1);
static void sub_0202C304(Journal *journal, UnkStruct_0202BCC8 *param1);
static void sub_0202C3B8(Journal *journal, UnkStruct_0202BE38 *param1);
static void sub_0202C3C4(Journal *journal, UnkStruct_0202BF4C *param1);
static void sub_0202C3D0(Journal *journal, UnkStruct_0202BFCC *param1);
static void sub_0202C474(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C47C(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C494(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C4A0(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C4AC(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C4B8(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C528(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C54C(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C5A4(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C5AC(u8 *param0, UnkStruct_0202BFCC *param1);
static u8 sub_0202C6CC(TrainerInfo *param0, u32 param1);
static u8 sub_0202C78C(u32 param0);

static const UnkStruct_020E5B90 Unk_020E5B90[] = {
    { 0x5A, 0x1 },
    { 0x5B, 0x0 },
    { 0x5C, 0x1 },
    { 0x5D, 0x1 },
    { 0x5E, 0x0 },
    { 0x5F, 0x1 },
    { 0x60, 0x1 },
    { 0x61, 0x1 },
    { 0x62, 0x1 },
    { 0x63, 0x0 },
    { 0x64, 0x1 },
    { 0x65, 0x0 },
    { 0x66, 0x1 },
    { 0x47, 0x0 },
    { 0x67, 0x0 },
    { 0x40, 0x0 },
    { 0x68, 0x0 },
    { 0x69, 0x1 },
    { 0x50, 0x1 },
    { 0x6A, 0x0 },
    { 0x6B, 0x1 },
    { 0x6C, 0x0 },
    { 0x6D, 0x0 },
    { 0x6E, 0x0 },
    { 0x2F, 0x0 },
    { 0x31, 0x0 },
    { 0x46, 0x0 }
};

static const UnkStruct_020E5B50 Unk_020E5B50[] = {
    { 0xF6, 0x2F, 0x0 },
    { 0x13B, 0x43, 0x1 },
    { 0x13C, 0x7A, 0x3 },
    { 0x13D, 0x85, 0x2 },
    { 0x13E, 0x58, 0x4 },
    { 0x13F, 0xA7, 0x6 },
    { 0xFA, 0x23, 0x5 },
    { 0x140, 0x9A, 0x7 }
};

int Journal_SaveSize(void)
{
    return sizeof(Journal) * 10;
}

static void Journal_Init(Journal *journal)
{
    memset(journal, 0, sizeof(Journal));
}

void Journal_Init10(Journal *journal)
{
    memset(journal, 0, sizeof(Journal) * 10);
}

Journal *SaveData_GetJournal(SaveData *param0)
{
    return SaveData_SaveTable(param0, 18);
}

Journal *Journal_GetSavedPage(Journal *journal, BOOL param1)
{
    RTCDate v0;
    s32 v1;

    if (param1 != 1) {
        return NULL;
    }

    GetCurrentDate(&v0);

    if ((journal[0].unk_00.unk_00_7 != 0) && ((journal[0].unk_00.unk_00_0 != v0.year) || (journal[0].unk_00.unk_00_7 != v0.month) || (journal[0].unk_00.unk_00_14 != v0.day) || (journal[0].unk_00.unk_00_11 != v0.week))) {
        for (v1 = 10 - 1; v1 >= 1; v1--) {
            journal[v1] = journal[v1 - 1];
        }

        Journal_Init(&journal[0]);
    }

    return &journal[0];
}

BOOL Journal_CheckOpenOnContinue(Journal *journal, BOOL param1)
{
    RTCDate v0;
    RTCDate v1;
    int v2;

    if (param1 != 1) {
        return 0;
    }

    GetCurrentDate(&v1);

    v0.year = journal[0].unk_00.unk_00_0;
    v0.month = journal[0].unk_00.unk_00_7;
    v0.day = journal[0].unk_00.unk_00_14;
    v0.week = journal[0].unk_00.unk_00_11;

    v2 = DayNumberForDate(&v1) - DayNumberForDate(&v0);

    if (((v1.month == 12) && (v1.day == 31) && (v0.month == 1) && (v0.day == 1)) || ((v1.month == 1) && (v1.day == 1) && (v0.month == 12) && (v0.day == 31))) {
        s32 v3 = (s32)v1.year - (s32)v0.year;

        if ((v3 >= 2) || (v3 <= -2)) {
            return 1;
        }
    } else if ((v2 <= -2) || (v2 >= 2)) {
        return 1;
    } else {
        if (v1.year != v0.year) {
            return 1;
        }
    }

    return 0;
}

void Journal_SaveData(Journal *journal, void *param1, u8 param2)
{
    if (journal != NULL) {
        switch (param2) {
        case 0:
            sub_0202B7A0(journal, param1);
            break;
        case 1:
            sub_0202B7E0(journal, param1);
            break;
        case 2:
            sub_0202B880(journal, param1);
            break;
        case 3:
            sub_0202B88C(journal, param1);
            break;
        case 4:
            sub_0202B898(journal, param1);
            break;
        }
    }

    Heap_FreeToHeap(param1);
}

static void sub_0202B7A0(Journal *journal, UnkStruct_0202BC58 *param1)
{
    if ((journal->unk_00.unk_00_0 == param1->unk_00_0) && (journal->unk_00.unk_00_7 == param1->unk_00_7) && (journal->unk_00.unk_00_14 == param1->unk_00_14) && (journal->unk_00.unk_00_11 == param1->unk_00_11)) {
        return;
    }

    journal->unk_00 = *param1;
}

static void sub_0202B7E0(Journal *journal, UnkStruct_0202BCC8 *param1)
{
    switch (param1->unk_00) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 16:
    case 17:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
        sub_0202B994(journal->unk_04, param1);
        break;
    case 9:
    case 10:
        sub_0202BA48(journal->unk_04, param1);
        break;
    case 11:
        sub_0202B9F0(journal->unk_04, param1);
        break;
    case 12:
        sub_0202B9D0(journal->unk_04, param1);
        break;
    case 13:
    case 14:
    case 15:
        sub_0202BAB0(journal->unk_04, param1);
        break;
    case 18:
        sub_0202BAF8(journal->unk_04, param1);
        break;
    case 19:
    case 20:
    case 21:
    case 22:
    case 27:
    case 23:
    case 24:
    case 25:
    case 26:
    case 29:
    case 30:
    case 28:
    case 33:
    case 32:
        sub_0202BB40(journal->unk_04, param1);
        break;
    }
}

static void sub_0202B880(Journal *journal, UnkStruct_0202BE38 *param1)
{
    journal->unk_14 = *param1;
}

static void sub_0202B88C(Journal *journal, UnkStruct_0202BF4C *param1)
{
    journal->unk_18 = *param1;
}

static void sub_0202B898(Journal *journal, UnkStruct_0202BFCC *param1)
{
    u8 *v0 = sub_0202B954(journal);

    switch (param1->unk_00) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 11:
        sub_0202BB88(v0, param1);
        break;
    case 6:
    case 22:
    case 23:
        sub_0202BBC4(v0, param1);
        break;
    case 7:
    case 9:
    case 15:
        sub_0202BBE0(v0, param1);
        break;
    case 8:
    case 10:
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
        sub_0202BC14(journal, param1);
        break;
    case 13:
    case 24:
        sub_0202BC48(v0, param1);
        break;
    }
}

static u32 *sub_0202B91C(u32 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((param0[v0] & 0x3f) == 0) {
            return &param0[v0];
        }
    }

    for (v0 = 0; v0 < 4 - 1; v0++) {
        param0[v0] = param0[v0 + 1];
    }

    param0[v0] = 0;

    return &param0[v0];
}

static u8 *sub_0202B954(Journal *journal)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (journal->unk_1C[v0][0] == 0) {
            return &journal->unk_1C[v0][0];
        }
    }

    for (v0 = 0; v0 < 2 - 1; v0++) {
        memcpy(&journal->unk_1C[v0][0], &journal->unk_1C[v0 + 1][0], 42);
    }

    memset(&journal->unk_1C[v0][0], 0, 42);

    return &journal->unk_1C[v0][0];
}

static void sub_0202B994(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0;
    u32 v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0[v1] == 0) {
            break;
        }
    }

    if (v1 != 0) {
        if ((param0[v1 - 1] & 0x3f) == param1->unk_00) {
            return;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_00 & 0x3f);
}

static void sub_0202B9D0(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_02 << 16) | ((param1->unk_04 & 0x3ff) << 6) | (param1->unk_00 & 0x3f);
}

static void sub_0202B9F0(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0;
    u16 v1;
    u16 v2;

    v0 = NULL;

    for (v2 = 0; v2 < 4; v2++) {
        if ((param0[v2] & 0x3f) == 11) {
            param0[v2] = 0;

            for (v2 = v2; v2 < 4 - 1; v2++) {
                param0[v2] = param0[v2 + 1];
                param0[v2 + 1] = 0;
            }

            break;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_02 << 16) | ((param1->unk_04 & 0x3ff) << 6) | (param1->unk_00 & 0x3f);
}

static void sub_0202BA48(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0;
    u16 v1;
    u16 v2;

    v0 = NULL;

    for (v2 = 0; v2 < 4; v2++) {
        if (((param0[v2] & 0x3f) == 9) && (((param0[v2] >> 16) & 0xffff) == param1->unk_02)) {
            param0[v2] = 0;

            for (v2 = v2; v2 < 4 - 1; v2++) {
                param0[v2] = param0[v2 + 1];
                param0[v2 + 1] = 0;
            }
            break;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_02 << 16) | ((param1->unk_04 & 0x3ff) << 6) | (param1->unk_00 & 0x3f);
}

static void sub_0202BAB0(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0;
    u32 v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0[v1] == 0) {
            break;
        }
    }

    if (v1 != 0) {
        if (((param0[v1 - 1] & 0x3f) == param1->unk_00) && ((param0[v1 - 1] >> 16) == param1->unk_02)) {
            return;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_02 << 16) | (param1->unk_00 & 0x3f);
}

static void sub_0202BAF8(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0;
    u32 v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0[v1] == 0) {
            break;
        }
    }

    if (v1 != 0) {
        if (((param0[v1 - 1] & 0x3f) == param1->unk_00) && ((param0[v1 - 1] >> 16) == param1->unk_06)) {
            return;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_06 << 16) | (param1->unk_00 & 0x3f);
}

static void sub_0202BB40(u32 *param0, UnkStruct_0202BCC8 *param1)
{
    u32 *v0;
    u32 v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0[v1] == 0) {
            break;
        }
    }

    if (v1 != 0) {
        if (((param0[v1 - 1] & 0x3f) == param1->unk_00) && ((param0[v1 - 1] >> 16) == param1->unk_02)) {
            return;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (param1->unk_02 << 16) | (param1->unk_00 & 0x3f);
}

static void sub_0202BB88(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param0[0] = param1->unk_00;
    param0[1] = (param1->unk_01_0 << 2) | (param1->unk_01_4 << 1) | (param1->unk_01_5);
    sub_0202BF94(param1->unk_02, (u16 *)&param0[2], 8);
    sub_0202BF94(param1->unk_12, (u16 *)&param0[18], 8);
}

static void sub_0202BBC4(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param0[0] = param1->unk_00;
    param0[1] = param1->unk_01_4;

    sub_0202BF94(param1->unk_02, (u16 *)&param0[2], 8);
}

static void sub_0202BBE0(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param0[0] = param1->unk_00;
    param0[1] = (param1->unk_01_4 << 2) | (param1->unk_01_6);

    sub_0202BF94(param1->unk_02, (u16 *)&param0[2], 8);
    sub_0202BF94(param1->unk_22, (u16 *)&param0[18], 12);
}

static void sub_0202BC14(Journal *param0, UnkStruct_0202BFCC *param1)
{
    u32 v0;
    u8 *v1;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_1C[v0][0] == 0) {
            break;
        }
    }

    if (v0 != 0) {
        if (param0->unk_1C[v0 - 1][0] == param1->unk_00) {
            return;
        }
    }

    v1 = sub_0202B954(param0);
    v1[0] = param1->unk_00;
}

static void sub_0202BC48(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param0[0] = param1->unk_00;
    param0[1] = param1->unk_01_0;
}

void *sub_0202BC58(u16 param0, u32 param1)
{
    UnkStruct_0202BC58 *v0;
    RTCDate v1;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0202BC58));
    GetCurrentDate(&v1);

    v0->unk_00_0 = v1.year;
    v0->unk_00_7 = v1.month;
    v0->unk_00_14 = v1.day;
    v0->unk_00_11 = v1.week;
    v0->unk_00_19 = param0;

    return v0;
}

static UnkStruct_0202BCC8 *sub_0202BCC8(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0202BCC8));

    memset(v0, 0, sizeof(UnkStruct_0202BCC8));
    return v0;
}

void *sub_0202BCE4(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 1;
    return v0;
}

void *sub_0202BCF0(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 2;
    return v0;
}

void *sub_0202BCFC(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 3;
    return v0;
}

void *sub_0202BD08(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 4;
    return v0;
}

void *sub_0202BD14(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 5;
    return v0;
}

void *sub_0202BD20(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 6;
    return v0;
}

void *sub_0202BD2C(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 7;
    return v0;
}

void *sub_0202BD38(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 8;
    return v0;
}

void *sub_0202BD44(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 9;
    v0->unk_02 = param0;

    return v0;
}

void *sub_0202BD58(u16 param0, u16 param1, u32 param2)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param2);

    v0->unk_00 = 10;
    v0->unk_02 = param0;
    v0->unk_04 = param1;

    return v0;
}

void *sub_0202BD70(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 11;
    v0->unk_04 = param0;

    return v0;
}

void *sub_0202BD84(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 12;
    v0->unk_04 = param0;

    return v0;
}

void *sub_0202BD98(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 13;
    v0->unk_02 = param0;

    return v0;
}

void *sub_0202BDAC(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 14;
    v0->unk_02 = param0;

    return v0;
}

void *sub_0202BDC0(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 15;
    v0->unk_02 = param0;

    return v0;
}

void *sub_0202BDD4(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 16;
    return v0;
}

void *sub_0202BDE0(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 17;
    return v0;
}

void *sub_0202BDEC(u16 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param1);

    v0->unk_00 = 18;
    v0->unk_06 = param0;

    return v0;
}

void *sub_0202BE00(u8 param0, u16 param1, u32 param2)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param2);

    v0->unk_00 = 19 + param0;
    v0->unk_02 = param1;

    return v0;
}

void *sub_0202BE14(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 34;
    return v0;
}

void *sub_0202BE20(u32 param0)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = 35;
    return v0;
}

void *sub_0202BE2C(u32 param0, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(param0);

    v0->unk_00 = param1;
    return v0;
}

static UnkStruct_0202BE38 *sub_0202BE38(u32 param0)
{
    UnkStruct_0202BE38 *v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0202BE38));

    memset(v0, 0, sizeof(UnkStruct_0202BE38));
    return v0;
}

void *sub_0202BE4C(const PlayTime *playTime, u16 param1, u8 param2, u8 param3, u32 param4)
{
    UnkStruct_0202BE38 *v0;
    u8 v1;

    v0 = sub_0202BE38(param4);

    v0->unk_00 = 1;
    v0->unk_02 = param1;
    v0->unk_01_6 = param2;
    v0->unk_01_2 = param3;

    v1 = PlayTime_GetMinutes(playTime) / 10;

    if ((v1 == 0) || (v1 == 2) || (v1 == 4)) {
        v0->unk_01_0 = 0;
    } else if ((v1 == 1) || (v1 == 3)) {
        v0->unk_01_0 = 1;
    } else {
        v0->unk_01_0 = 2;
    }

    return v0;
}

void *sub_0202BECC(const PlayTime *playTime, u16 param1, u8 param2, u8 param3, u32 param4)
{
    UnkStruct_0202BE38 *v0;
    u8 v1;

    v0 = sub_0202BE38(param4);

    v0->unk_00 = 2;
    v0->unk_02 = param1;
    v0->unk_01_6 = param2;
    v0->unk_01_2 = param3;

    v1 = PlayTime_GetMinutes(playTime) / 10;

    if ((v1 == 1) || (v1 == 3) || (v1 == 5)) {
        v0->unk_01_0 = 0;
    } else if ((v1 == 2) || (v1 == 4)) {
        v0->unk_01_0 = 1;
    } else {
        v0->unk_01_0 = 2;
    }

    return v0;
}

void *sub_0202BF4C(u16 param0, u16 param1, u32 param2)
{
    UnkStruct_0202BF4C *v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_0202BF4C));

    v0->unk_00_0 = 1;
    v0->unk_02 = param0;
    v0->unk_00_1 = param1;

    return v0;
}

static UnkStruct_0202BFCC *sub_0202BF7C(u32 param0)
{
    UnkStruct_0202BFCC *v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0202BFCC));

    memset(v0, 0, sizeof(UnkStruct_0202BFCC));
    return v0;
}

static void sub_0202BF94(const u16 *param0, u16 *param1, u32 param2)
{
    u32 v0;

    for (v0 = 0; v0 < param2; v0++) {
        param1[v0] = 0xffff;
    }

    for (v0 = 0; v0 < param2; v0++) {
        if (param0[v0] == 0xffff) {
            break;
        }

        param1[v0] = param0[v0];
    }
}

void *sub_0202BFCC(u16 *param0, u8 param1, u8 param2, u32 param3)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param3);

    v0->unk_00 = 1;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C00C(u16 *param0, u8 param1, u8 param2, u32 param3)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param3);

    v0->unk_00 = 2;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C04C(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param5);

    v0->unk_00 = 3;
    v0->unk_01_0 = param4;
    v0->unk_01_4 = param2;
    v0->unk_01_5 = param3;

    sub_0202BF94(param0, v0->unk_02, 8);
    sub_0202BF94(param1, v0->unk_12, 8);

    return v0;
}

void *sub_0202C0AC(u16 *param0, u8 param1, u8 param2, u32 param3)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param3);

    v0->unk_00 = 4;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C0EC(u16 *param0, u8 param1, u32 param2)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param2);

    v0->unk_00 = 6;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C11C(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 param4)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param4);

    v0->unk_00 = 7;
    v0->unk_01_4 = param1;
    v0->unk_01_6 = param3;

    sub_0202BF94(param0, v0->unk_02, 8);
    sub_0202BF94(param2, v0->unk_22, 12);

    return v0;
}

void *sub_0202C168(u32 param0)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param0);

    v0->unk_00 = 8;
    return v0;
}

void *sub_0202C174(u16 *param0, u8 param1, u8 param2, u32 param3)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param3);

    v0->unk_00 = 11;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C1B4(u32 param0)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param0);

    v0->unk_00 = 12;
    return v0;
}

void *sub_0202C1C0(u8 param0, u32 param1)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param1);

    v0->unk_00 = 13;
    v0->unk_01_0 = param0;

    return v0;
}

void *sub_0202C1E0(u32 param0)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param0);

    v0->unk_00 = 14;
    return v0;
}

void *sub_0202C1EC(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 param4)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param4);

    v0->unk_00 = 15;
    v0->unk_01_4 = param1;
    v0->unk_01_6 = param3;

    sub_0202BF94(param0, v0->unk_02, 8);
    sub_0202BF94(param2, v0->unk_22, 12);

    return v0;
}

void *sub_0202C238(u32 param0)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param0);

    v0->unk_00 = 16;
    return v0;
}

void *sub_0202C244(u32 param0, u32 param1)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param0);

    v0->unk_00 = param1;
    return v0;
}

void *sub_0202C250(const u16 *param0, u8 param1, u32 param2, u32 param3)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param2);

    v0->unk_00 = param3;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C280(int param0, u32 param1, u32 param2)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(param1);

    v0->unk_00 = param2;
    v0->unk_01_0 = param0;

    return v0;
}

void sub_0202C2A4(Journal *param0, void *param1, u8 param2, u8 param3)
{
    switch (param2) {
    case 0:
        sub_0202C2FC(&param0[param3], param1);
        break;
    case 1:
        sub_0202C304(&param0[param3], param1);
        break;
    case 2:
        sub_0202C3B8(&param0[param3], param1);
        break;
    case 3:
        sub_0202C3C4(&param0[param3], param1);
        break;
    case 4:
        sub_0202C3D0(&param0[param3], param1);
        break;
    }
}

static void sub_0202C2FC(Journal *param0, UnkStruct_0202BC58 *param1)
{
    *param1 = param0->unk_00;
}

static void sub_0202C304(Journal *param0, UnkStruct_0202BCC8 *param1)
{
    u32 v0;

    for (v0 = 0; v0 < 4; v0++) {
        memset(&param1[v0], 0, sizeof(UnkStruct_0202BCC8));

        switch (param0->unk_04[v0] & 0x3f) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 16:
        case 17:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
            sub_0202C474(param0->unk_04[v0], &param1[v0]);
            break;
        case 9:
        case 10:
        case 11:
        case 12:
            sub_0202C47C(param0->unk_04[v0], &param1[v0]);
            break;
        case 13:
        case 14:
        case 15:
            sub_0202C494(param0->unk_04[v0], &param1[v0]);
            break;
        case 18:
            sub_0202C4A0(param0->unk_04[v0], &param1[v0]);
            break;
        case 19:
        case 20:
        case 21:
        case 22:
        case 27:
        case 23:
        case 24:
        case 25:
        case 26:
        case 29:
        case 30:
        case 28:
        case 33:
        case 32:
            sub_0202C4AC(param0->unk_04[v0], &param1[v0]);
            break;
        }
    }
}

static void sub_0202C3B8(Journal *param0, UnkStruct_0202BE38 *param1)
{
    *param1 = param0->unk_14;
}

static void sub_0202C3C4(Journal *param0, UnkStruct_0202BF4C *param1)
{
    *param1 = param0->unk_18;
}

static void sub_0202C3D0(Journal *param0, UnkStruct_0202BFCC *param1)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        memset(&param1[v0], 0, sizeof(UnkStruct_0202BFCC));

        switch (param0->unk_1C[v0][0]) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 11:
            sub_0202C4B8(&param0->unk_1C[v0][0], &param1[v0]);
            break;
        case 6:
        case 22:
        case 23:
            sub_0202C528(&param0->unk_1C[v0][0], &param1[v0]);
            break;
        case 7:
        case 9:
        case 15:
            sub_0202C54C(&param0->unk_1C[v0][0], &param1[v0]);
            break;
        case 8:
        case 10:
        case 12:
        case 14:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
            sub_0202C5A4(&param0->unk_1C[v0][0], &param1[v0]);
            break;
        case 13:
        case 24:
            sub_0202C5AC(&param0->unk_1C[v0][0], &param1[v0]);
            break;
        }
    }
}

static void sub_0202C474(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
}

static void sub_0202C47C(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_04 = (param0 >> 6) & 0x3ff;
    param1->unk_02 = (param0 >> 16) & 0xffff;
}

static void sub_0202C494(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_02 = (param0 >> 16) & 0xffff;
}

static void sub_0202C4A0(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_06 = (param0 >> 16) & 0xffff;
}

static void sub_0202C4AC(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_02 = (param0 >> 16) & 0xffff;
}

static void sub_0202C4B8(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_0 = (param0[1] >> 2) & 0x1f;
    param1->unk_01_4 = (param0[1] >> 1) & 1;
    param1->unk_01_5 = param0[1] & 1;

    sub_0202BF94((u16 *)&param0[2], param1->unk_02, 8);
    sub_0202BF94((u16 *)&param0[18], param1->unk_12, 8);
}

static void sub_0202C528(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_4 = param0[1];

    sub_0202BF94((u16 *)&param0[2], param1->unk_02, 8);
}

static void sub_0202C54C(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_4 = (param0[1] >> 2) & 1;
    param1->unk_01_6 = param0[1] & 3;

    sub_0202BF94((u16 *)&param0[2], param1->unk_02, 8);
    sub_0202BF94((u16 *)&param0[18], param1->unk_22, 12);
}

static void sub_0202C5A4(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
}

static void sub_0202C5AC(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_0 = param0[1];
}

void sub_0202C5C4(TrainerInfo *param0, Journal *param1, u32 param2, u32 param3, u32 param4)
{
    void *v0;
    u32 v1;

    v0 = NULL;

    if (MapHeader_IsCave(param3) == 1) {
        if (MapHeader_IsOutdoors(param2) == 1) {
            v0 = sub_0202BDAC((u16)MapHeader_GetMapLabelTextID(param3), param4);
        }
    } else if (sub_0203A288(param3) == 1) {
        if (MapHeader_IsOutdoors(param2) == 1) {
            if (param3 == 414) {
                v0 = sub_0202BCE4(param4);
            } else if (param3 == 422) {
                v0 = sub_0202BCF0(param4);
            } else {
                u32 v2 = MapHeader_GetMapLabelTextID(param3);

                for (v1 = 0; v1 < NELEMS(Unk_020E5B90); v1++) {
                    if (v2 != Unk_020E5B90[v1].unk_00) {
                        continue;
                    }

                    v0 = sub_0202BDC0((u16)v2, param4);
                }
            }
        }
    } else if (MapHeader_IsOutdoors(param3) == 1) {
        if (sub_0203A288(param2) == 1) {
            u8 v3 = sub_0202C6CC(param0, param2);

            if (v3 != 0xff) {
                v0 = sub_0202BD44(v3, param4);
            }
        }
    }

    if (v0 != NULL) {
        Journal_SaveData(param1, v0, 1);
    }
}

u32 sub_0202C6A4(u32 param0)
{
    u32 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020E5B90); v0++) {
        if (param0 != Unk_020E5B90[v0].unk_00) {
            continue;
        }

        return Unk_020E5B90[v0].unk_04;
    }

    return 0;
}

static u8 sub_0202C6CC(TrainerInfo *param0, u32 param1)
{
    u8 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020E5B50); v0++) {
        if (Unk_020E5B50[v0].unk_04 == param1) {
            if (TrainerInfo_HasBadge(param0, Unk_020E5B50[v0].unk_06) == 0) {
                return v0;
            }

            break;
        }
    }

    return 0xff;
}

void sub_0202C704(Journal *param0, u32 param1, u32 param2)
{
    void *v0 = sub_0202BD98((u16)param1, param2);
    Journal_SaveData(param0, v0, 1);
}

void sub_0202C720(Journal *param0, u16 param1, u16 param2, u32 param3)
{
    void *v0;
    u8 v1;

    v1 = sub_0202C78C(param2);

    if (v1 < 8) {
        v0 = sub_0202BD58(v1, param2, param3);
        Journal_SaveData(param0, v0, 1);
    } else if (v1 == 8) {
        v0 = sub_0202BD70(param2, param3);
        Journal_SaveData(param0, v0, 1);
    } else if (v1 == 9) {
        v0 = sub_0202BD84(param2, param3);
        Journal_SaveData(param0, v0, 1);
    } else {
        v0 = sub_0202BF4C(param1, param2, param3);
        Journal_SaveData(param0, v0, 3);
    }
}

static u8 sub_0202C78C(u32 param0)
{
    u8 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020E5B50); v0++) {
        if (Unk_020E5B50[v0].unk_00 == param0) {
            return v0;
        }
    }

    if ((param0 == 261) || (param0 == 866) || (param0 == 262) || (param0 == 867) || (param0 == 263) || (param0 == 868) || (param0 == 264) || (param0 == 869)) {
        return 8;
    }

    if ((param0 == 267) || (param0 == 870)) {
        return 9;
    }

    return 10;
}
