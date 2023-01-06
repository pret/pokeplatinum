#include "enums.h"

#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "overlay096/struct_ov96_0223B450.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include "overlay060/ov60_0221F968.h"
#include "overlay096/ov96_0223B140.h"

typedef enum {
    UnkEnum_ov96_0223B15C_00,
    UnkEnum_ov96_0223B15C_01,
    UnkEnum_ov96_0223B15C_02,
    UnkEnum_ov96_0223B15C_03,
    UnkEnum_ov96_0223B15C_04,
    UnkEnum_ov96_0223B15C_05,
    UnkEnum_ov96_0223B15C_06,
    UnkEnum_ov96_0223B15C_07,
    UnkEnum_ov96_0223B15C_08,
    UnkEnum_ov96_0223B15C_09,
    UnkEnum_ov96_0223B15C_10,
    UnkEnum_ov96_0223B15C_11,
    UnkEnum_ov96_0223B15C_12
} UnkEnum_ov96_0223B15C;

typedef struct {
    UnkEnum_ov96_0223B15C unk_00;
    s32 unk_04;
    s32 unk_08;
    u64 unk_0C;
    u8 unk_14[239];
    u8 unk_103[2];
    u8 * unk_108;
} UnkStruct_ov96_0223DDE0;

static BOOL ov96_0223B5D0(const u8 * param0, const void * param1, int param2, void * param3, int param4);
static int ov96_0223B608(int param0);

static UnkStruct_ov96_0223DDE0 Unk_ov96_0223DDE0;

void ov96_0223B140 (s32 param0, u64 param1)
{
    Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_01;
    Unk_ov96_0223DDE0.unk_04 = 0;
    Unk_ov96_0223DDE0.unk_08 = param0;
    Unk_ov96_0223DDE0.unk_0C = param1;
}

void ov96_0223B15C (void)
{
    switch (Unk_ov96_0223DDE0.unk_00) {
    case UnkEnum_ov96_0223B15C_00:
        break;
    case UnkEnum_ov96_0223B15C_01:
        break;
    case UnkEnum_ov96_0223B15C_02:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
            Unk_ov96_0223DDE0.unk_04 = ov96_0223B608(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;

            if (ov60_0221FE20() > 0) {
                Unk_ov96_0223DDE0.unk_04 = Unk_ov96_0223DDE0.unk_103[0];
            } else {
                Unk_ov96_0223DDE0.unk_04 = -2;
            }

            ov60_0221FDEC();
            break;
        }
        break;
    case UnkEnum_ov96_0223B15C_04:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
            Unk_ov96_0223DDE0.unk_04 = ov96_0223B608(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;

            if (ov60_0221FE20() == sizeof(UnkStruct_ov96_0223B450)) {
                Unk_ov96_0223DDE0.unk_04 = 0;
            } else {
                switch (Unk_ov96_0223DDE0.unk_108[0]) {
                case 2:
                    Unk_ov96_0223DDE0.unk_04 = -3;
                    break;
                case 5:
                    Unk_ov96_0223DDE0.unk_04 = -2;
                    break;
                default:

                    Unk_ov96_0223DDE0.unk_04 = -5;
                    break;
                }
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov96_0223B15C_06:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
            Unk_ov96_0223DDE0.unk_04 = ov96_0223B608(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;

            switch (Unk_ov96_0223DDE0.unk_103[0]) {
            case 1:
                Unk_ov96_0223DDE0.unk_04 = 0;
                break;
            case 2:
                Unk_ov96_0223DDE0.unk_04 = -3;
                break;
            case 4:
                Unk_ov96_0223DDE0.unk_04 = -1;
                break;
            case 5:
                Unk_ov96_0223DDE0.unk_04 = -2;
                break;
            default:
                Unk_ov96_0223DDE0.unk_04 = -5;
                break;
            }

            ov60_0221FDEC();
            break;
        }
        break;
    case UnkEnum_ov96_0223B15C_08:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
            Unk_ov96_0223DDE0.unk_04 = ov96_0223B608(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;

            switch (Unk_ov96_0223DDE0.unk_103[0]) {
            case 1:
                Unk_ov96_0223DDE0.unk_04 = 0;
                break;
            case 3:
                Unk_ov96_0223DDE0.unk_04 = 1;
                break;
            case 4:
                Unk_ov96_0223DDE0.unk_04 = 2;
                break;
            case 5:
                Unk_ov96_0223DDE0.unk_04 = -2;
                break;
            default:
                Unk_ov96_0223DDE0.unk_04 = -5;
                break;
            }

            ov60_0221FDEC();
            break;
        }
        break;
    case UnkEnum_ov96_0223B15C_10:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
            Unk_ov96_0223DDE0.unk_04 = ov96_0223B608(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;

            if (ov60_0221FE20() == sizeof(UnkStruct_ov96_0223B574_1)) {
                Unk_ov96_0223DDE0.unk_04 = 0;
            } else {
                switch (Unk_ov96_0223DDE0.unk_103[0]) {
                case 1:
                    Unk_ov96_0223DDE0.unk_04 = 0;
                    break;
                case 3:
                    Unk_ov96_0223DDE0.unk_04 = 1;
                    break;
                case 4:
                    Unk_ov96_0223DDE0.unk_04 = 2;
                    break;
                case 5:
                    Unk_ov96_0223DDE0.unk_04 = -2;
                    break;
                default:

                    Unk_ov96_0223DDE0.unk_04 = -5;
                    break;
                }
            }

            ov60_0221FDEC();
            break;
        }
        break;
    case UnkEnum_ov96_0223B15C_03:
    case UnkEnum_ov96_0223B15C_05:
    case UnkEnum_ov96_0223B15C_07:
    case UnkEnum_ov96_0223B15C_09:
    case UnkEnum_ov96_0223B15C_11:
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
        Unk_ov96_0223DDE0.unk_04 = -4;
        ov60_0221FDEC();
        break;
    case UnkEnum_ov96_0223B15C_12:
        break;
    }
}

BOOL ov96_0223B3D4 (void)
{
    switch (Unk_ov96_0223DDE0.unk_00) {
    case UnkEnum_ov96_0223B15C_01:
        return 1;
        break;
    case UnkEnum_ov96_0223B15C_12:
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_01;
        return 1;
        break;
    }

    return 0;
}

s32 ov96_0223B3F4 (void)
{
    return Unk_ov96_0223DDE0.unk_04;
}

void ov96_0223B400 (s32 param0)
{
    ov60_0221FC84();

    Unk_ov96_0223DDE0.unk_14[0] = (u8)(param0 - 1);

    if (ov96_0223B5D0((const u8 *)("http://gamestats2.gs.nintendowifi.net/pokemondpds/" "battletower/roomnum.asp"), Unk_ov96_0223DDE0.unk_14, 1, Unk_ov96_0223DDE0.unk_103, 2)) {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_02;
    } else {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
        Unk_ov96_0223DDE0.unk_04 = -5;
        ov60_0221FDEC();
    }
}

void ov96_0223B450 (s32 param0, s32 param1, UnkStruct_ov96_0223B450 * param2)
{
    Unk_ov96_0223DDE0.unk_108 = (u8 *)param2;

    ov60_0221FC84();

    Unk_ov96_0223DDE0.unk_14[0] = (u8)(param0 - 1);
    Unk_ov96_0223DDE0.unk_14[1] = (u8)(param1 - 1);

    if (ov96_0223B5D0((const u8 *)("http://gamestats2.gs.nintendowifi.net/pokemondpds/" "battletower/download.asp"), Unk_ov96_0223DDE0.unk_14, 2, param2, sizeof(UnkStruct_ov96_0223B450))) {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_04;
    } else {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
        Unk_ov96_0223DDE0.unk_04 = -5;
        ov60_0221FDEC();
    }
}

void ov96_0223B4B0 (s32 param0, s32 param1, s32 param2, const UnkStruct_ov96_0223B450_sub1 * param3)
{
    ov60_0221FC84();

    memcpy(&Unk_ov96_0223DDE0.unk_14[0], param3, sizeof(UnkStruct_ov96_0223B450_sub1));

    Unk_ov96_0223DDE0.unk_14[sizeof(UnkStruct_ov96_0223B450_sub1)] = (u8)(param0 - 1);
    Unk_ov96_0223DDE0.unk_14[sizeof(UnkStruct_ov96_0223B450_sub1) + 1] = (u8)(param1 - 1);
    Unk_ov96_0223DDE0.unk_14[sizeof(UnkStruct_ov96_0223B450_sub1) + 2] = (u8)param2;

    memcpy(&Unk_ov96_0223DDE0.unk_14[sizeof(UnkStruct_ov96_0223B450_sub1) + 3], &Unk_ov96_0223DDE0.unk_0C, 8);

    if (ov96_0223B5D0((const u8 *)("http://gamestats2.gs.nintendowifi.net/pokemondpds/" "battletower/upload.asp"), Unk_ov96_0223DDE0.unk_14, sizeof(UnkStruct_ov96_0223B450_sub1) + 11, Unk_ov96_0223DDE0.unk_103, 2)) {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_06;
    } else {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
        Unk_ov96_0223DDE0.unk_04 = -5;
        ov60_0221FDEC();
    }
}

void ov96_0223B530 (void)
{
    ov60_0221FC84();

    if (ov96_0223B5D0((const u8 *)("http://gamestats2.gs.nintendowifi.net/pokemondpds/" "battletower/info.asp"), Unk_ov96_0223DDE0.unk_14, 0, Unk_ov96_0223DDE0.unk_103, 2)) {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_08;
    } else {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
        Unk_ov96_0223DDE0.unk_04 = -5;
        ov60_0221FDEC();
    }
}

void ov96_0223B574 (const UnkStruct_ov96_0223B574 * param0, UnkStruct_ov96_0223B574_1 * param1)
{
    OS_GetMacAddress((u8 *)param0->unk_14);

    memcpy(Unk_ov96_0223DDE0.unk_14, param0, sizeof(UnkStruct_ov96_0223B574));
    Unk_ov96_0223DDE0.unk_108 = (u8 *)param1;

    ov60_0221FC84();

    if (ov96_0223B5D0((const u8 *)("http://gamestats2.gs.nintendowifi.net/pokemondpds/" "common/setProfile.asp"), Unk_ov96_0223DDE0.unk_14, sizeof(UnkStruct_ov96_0223B574), Unk_ov96_0223DDE0.unk_108, sizeof(UnkStruct_ov96_0223B574_1))) {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_10;
    } else {
        Unk_ov96_0223DDE0.unk_00 = UnkEnum_ov96_0223B15C_12;
        Unk_ov96_0223DDE0.unk_04 = -5;
        ov60_0221FDEC();
    }
}

static BOOL ov96_0223B5D0 (const u8 * param0, const void * param1, int param2, void * param3, int param4)
{
    switch (ov60_0221FCA8(param0, Unk_ov96_0223DDE0.unk_08, param1, param2, (u8 *)param3, param4)) {
    case 0:
        return 1;
        break;
    case 1:
        break;
    case 2:
        break;
    }

    return 0;
}

static int ov96_0223B608 (int param0)
{
    int v0;

    switch (param0) {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 23:
    case 22:
    case 20:
    case 21:
    case 14:
    case 32:
        v0 = -5;
        break;
    case 2:
    case 8:
    case 25:
        v0 = -5;
        break;
    case 11:
        v0 = -7;
        break;
    case 12:
    case 13:
        v0 = -7;
        break;
    case 16:
    case 17:
    case 18:
    case 19:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
        v0 = -2;
        break;
    case 15:
    case 30:
        v0 = -2;
        break;
    default:
        v0 = -5;
        break;
    }

    if (v0 != -5) {
        if (WCM_GetPhase() != WCM_PHASE_DCF) {
            v0 = -6;
        }
        DWC_ClearError();
    }

    return v0;
}
