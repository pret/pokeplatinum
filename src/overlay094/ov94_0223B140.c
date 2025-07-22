#include "overlay094/ov94_0223B140.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay060/ov60_0221F968.h"
#include "overlay094/struct_ov94_0223BA24.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include "enums.h"

typedef enum {
    UnkEnum_ov94_0223B15C_00,
    UnkEnum_ov94_0223B15C_01,
    UnkEnum_ov94_0223B15C_02,
    UnkEnum_ov94_0223B15C_03,
    UnkEnum_ov94_0223B15C_04,
    UnkEnum_ov94_0223B15C_05,
    UnkEnum_ov94_0223B15C_06,
    UnkEnum_ov94_0223B15C_07,
    UnkEnum_ov94_0223B15C_08,
    UnkEnum_ov94_0223B15C_09,
    UnkEnum_ov94_0223B15C_10,
    UnkEnum_ov94_0223B15C_11,
    UnkEnum_ov94_0223B15C_12,
    UnkEnum_ov94_0223B15C_13,
    UnkEnum_ov94_0223B15C_14,
    UnkEnum_ov94_0223B15C_15,
    UnkEnum_ov94_0223B15C_16,
    UnkEnum_ov94_0223B15C_17,
    UnkEnum_ov94_0223B15C_18,
    UnkEnum_ov94_0223B15C_19,
    UnkEnum_ov94_0223B15C_20,
    UnkEnum_ov94_0223B15C_21,
    UnkEnum_ov94_0223B15C_22,
    UnkEnum_ov94_0223B15C_23,
    UnkEnum_ov94_0223B15C_24
} UnkEnum_ov94_0223B15C;

typedef struct {
    UnkEnum_ov94_0223B15C unk_00;
    s32 unk_04;
    s32 unk_08;
    u64 unk_0C;
    u8 unk_14[296];
    u8 unk_13C[4];
    u8 *unk_140;
} UnkStruct_ov94_02246AC0;

static BOOL ov94_0223BBE0(const u8 *param0, const void *param1, int param2, void *param3, int param4);
static int ov94_0223BC18(int param0);

static UnkStruct_ov94_02246AC0 Unk_ov94_02246AC0;

void ov94_0223B140(s32 param0, u64 param1) {
    Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_01;
    Unk_ov94_02246AC0.unk_04 = 0;
    Unk_ov94_02246AC0.unk_08 = param0;
    Unk_ov94_02246AC0.unk_0C = param1;
}

void ov94_0223B15C(void) {
    switch (Unk_ov94_02246AC0.unk_00) {
    case UnkEnum_ov94_0223B15C_00:
        break;
    case UnkEnum_ov94_0223B15C_01:
        break;
    case UnkEnum_ov94_0223B15C_02:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 7:
                Unk_ov94_02246AC0.unk_04 = -1;
                break;
            case 12:
                Unk_ov94_02246AC0.unk_04 = -6;
                break;
            case 13:
                Unk_ov94_02246AC0.unk_04 = -7;
                break;
            case 8:
                Unk_ov94_02246AC0.unk_04 = -8;
                break;
            case 9:
                Unk_ov94_02246AC0.unk_04 = -9;
                break;
            case 10:
                Unk_ov94_02246AC0.unk_04 = -10;
                break;
            case 11:
                Unk_ov94_02246AC0.unk_04 = -11;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_04:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 5:
                Unk_ov94_02246AC0.unk_04 = -3;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_06:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            if (ov60_0221FE20() == sizeof(UnkStruct_ov94_0223BA88)) {
                Unk_ov94_02246AC0.unk_04 = 0;
            } else {
                switch (Unk_ov94_02246AC0.unk_140[0]) {
                case 5:
                    Unk_ov94_02246AC0.unk_04 = -3;
                    break;
                case 3:
                    Unk_ov94_02246AC0.unk_04 = -4;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_08:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            if (ov60_0221FE20() == sizeof(UnkStruct_ov94_0223BA88)) {
                Unk_ov94_02246AC0.unk_04 = 1;
            } else {
                switch (Unk_ov94_02246AC0.unk_140[0]) {
                case 5:
                    Unk_ov94_02246AC0.unk_04 = -3;
                    break;
                case 3:
                    Unk_ov94_02246AC0.unk_04 = -4;
                    break;
                case 4:
                    Unk_ov94_02246AC0.unk_04 = 0;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_10:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 5:
                Unk_ov94_02246AC0.unk_04 = -3;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_12:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 5:
                Unk_ov94_02246AC0.unk_04 = -3;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_14:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            {
                int v0 = ov60_0221FE20();

                if (v0 >= sizeof(UnkStruct_ov94_0223BA88)) {
                    Unk_ov94_02246AC0.unk_04 = (s32)(ov60_0221FE20() / sizeof(UnkStruct_ov94_0223BA88));
                } else if (v0 == 0) {
                    Unk_ov94_02246AC0.unk_04 = 0;
                } else {
                    switch (Unk_ov94_02246AC0.unk_140[0]) {
                    case 14:
                        Unk_ov94_02246AC0.unk_04 = -2;
                        break;
                    default:

                        Unk_ov94_02246AC0.unk_04 = -13;
                        break;
                    }
                }
            }
            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_16:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            if (ov60_0221FE20() == sizeof(UnkStruct_ov94_0223BA88)) {
                Unk_ov94_02246AC0.unk_04 = 0;
            } else {
                switch (Unk_ov94_02246AC0.unk_140[0]) {
                case 2:
                    Unk_ov94_02246AC0.unk_04 = -5;
                    break;
                case 12:
                    Unk_ov94_02246AC0.unk_04 = -6;
                    break;
                case 13:
                    Unk_ov94_02246AC0.unk_04 = -7;
                    break;
                case 8:
                    Unk_ov94_02246AC0.unk_04 = -8;
                    break;
                case 9:
                    Unk_ov94_02246AC0.unk_04 = -9;
                    break;
                case 10:
                    Unk_ov94_02246AC0.unk_04 = -10;
                    break;
                case 11:
                    Unk_ov94_02246AC0.unk_04 = -11;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_18:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_20:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 6:
                Unk_ov94_02246AC0.unk_04 = 1;
                break;
            case 7:
                Unk_ov94_02246AC0.unk_04 = 2;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_22:
        switch (ov60_0221FD48()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
            Unk_ov94_02246AC0.unk_04 = ov94_0223BC18(ov60_0221FE14());
            ov60_0221FDEC();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;

            if (ov60_0221FE20() == sizeof(UnkStruct_ov96_0223B574_1)) {
                Unk_ov94_02246AC0.unk_04 = 0;
            } else {
                switch (Unk_ov94_02246AC0.unk_13C[0]) {
                case 1:
                    Unk_ov94_02246AC0.unk_04 = 0;
                    break;
                case 6:
                    Unk_ov94_02246AC0.unk_04 = 1;
                    break;
                case 7:
                    Unk_ov94_02246AC0.unk_04 = 2;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            ov60_0221FDEC();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_03:
    case UnkEnum_ov94_0223B15C_05:
    case UnkEnum_ov94_0223B15C_07:
    case UnkEnum_ov94_0223B15C_09:
    case UnkEnum_ov94_0223B15C_11:
    case UnkEnum_ov94_0223B15C_13:
    case UnkEnum_ov94_0223B15C_15:
    case UnkEnum_ov94_0223B15C_17:
    case UnkEnum_ov94_0223B15C_19:
    case UnkEnum_ov94_0223B15C_21:
    case UnkEnum_ov94_0223B15C_23:
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -12;
        ov60_0221FDEC();
        break;
    case UnkEnum_ov94_0223B15C_24:
        break;
    }
}

void ov94_0223B7AC(void) {
    Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_00;
}

BOOL ov94_0223B7B8(void) {
    switch (Unk_ov94_02246AC0.unk_00) {
    case UnkEnum_ov94_0223B15C_01:
        return 1;
        break;
    case UnkEnum_ov94_0223B15C_24:
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_01;
        return 1;
        break;
    default:
        break;
    }

    return 0;
}

s32 ov94_0223B7D8(void) {
    return Unk_ov94_02246AC0.unk_04;
}

void ov94_0223B7E4(const UnkStruct_ov94_0223BA88 *param0) {
    memcpy(&Unk_ov94_02246AC0.unk_14[0], param0, sizeof(UnkStruct_ov94_0223BA88));

    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/post.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(UnkStruct_ov94_0223BA88),
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_02;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223B834(void) {
    memcpy(&Unk_ov94_02246AC0.unk_14[0], &Unk_ov94_02246AC0.unk_0C, 8);

    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/post_finish.asp"),
            Unk_ov94_02246AC0.unk_14,
            8,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_04;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223B888(UnkStruct_ov94_0223BA88 *param0) {
    Unk_ov94_02246AC0.unk_140 = (u8 *)param0;

    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/get.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            param0,
            sizeof(UnkStruct_ov94_0223BA88))) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_06;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223B8D8(UnkStruct_ov94_0223BA88 *param0) {
    Unk_ov94_02246AC0.unk_140 = (u8 *)param0;

    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/result.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            param0,
            sizeof(UnkStruct_ov94_0223BA88))) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_08;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223B928(void) {
    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/delete.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_10;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223B96C(void) {
    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/return.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_12;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223B9B0(const UnkStruct_ov94_0223BA88_sub3 *param0, s32 param1, UnkStruct_ov94_0223BA88 *param2) {
    Unk_ov94_02246AC0.unk_140 = (u8 *)param2;

    ov60_0221FC84();

    memcpy(&Unk_ov94_02246AC0.unk_14[0], param0, sizeof(UnkStruct_ov94_0223BA88_sub3));
    Unk_ov94_02246AC0.unk_14[sizeof(UnkStruct_ov94_0223BA88_sub3)] = (u8)param1;

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/search.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(UnkStruct_ov94_0223BA88_sub3) + 1,
            param2,
            (int)sizeof(UnkStruct_ov94_0223BA88) * param1)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_14;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223BA24(const UnkStruct_ov94_0223BA24 *param0, UnkStruct_ov94_0223BA88 *param1) {
    Unk_ov94_02246AC0.unk_140 = (u8 *)param1;

    ov60_0221FC84();

    memcpy(&Unk_ov94_02246AC0.unk_14[0], param0, sizeof(UnkStruct_ov94_0223BA24));

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/search.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(UnkStruct_ov94_0223BA24),
            param1,
            (int)sizeof(UnkStruct_ov94_0223BA88) * param0->unk_06)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_14;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223BA88(s32 param0, const UnkStruct_ov94_0223BA88 *param1, UnkStruct_ov94_0223BA88 *param2) {
    Unk_ov94_02246AC0.unk_140 = (u8 *)param2;

    ov60_0221FC84();

    memcpy(&Unk_ov94_02246AC0.unk_14[0], param1, sizeof(UnkStruct_ov94_0223BA88));

    *(s32 *)(&Unk_ov94_02246AC0.unk_14[sizeof(UnkStruct_ov94_0223BA88)]) = param0;

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/exchange.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(UnkStruct_ov94_0223BA88) + 4,
            param2,
            sizeof(UnkStruct_ov94_0223BA88))) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_16;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223BAEC(void) {
    memcpy(&Unk_ov94_02246AC0.unk_14[0], &Unk_ov94_02246AC0.unk_0C, 8);

    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/exchange_finish.asp"),
            Unk_ov94_02246AC0.unk_14,
            8,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_18;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223BB40(void) {
    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "worldexchange/info.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_20;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

void ov94_0223BB84(const UnkStruct_ov96_0223B574 *param0, UnkStruct_ov96_0223B574_1 *param1) {
    OS_GetMacAddress((u8 *)param0->unk_14);

    memcpy(Unk_ov94_02246AC0.unk_14, param0, sizeof(UnkStruct_ov96_0223B574));
    Unk_ov94_02246AC0.unk_140 = (u8 *)param1;

    ov60_0221FC84();

    if (ov94_0223BBE0(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                              "common/setProfile.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(UnkStruct_ov96_0223B574),
            Unk_ov94_02246AC0.unk_140,
            sizeof(UnkStruct_ov96_0223B574_1))) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_22;
    } else {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_24;
        Unk_ov94_02246AC0.unk_04 = -13;
        ov60_0221FDEC();
    }
}

static BOOL ov94_0223BBE0(const u8 *param0, const void *param1, int param2, void *param3, int param4) {
    switch (ov60_0221FCA8(param0, Unk_ov94_02246AC0.unk_08, param1, param2, (u8 *)param3, param4)) {
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

static int ov94_0223BC18(int param0) {
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
        v0 = -13;
        break;
    case 2:
    case 8:
    case 25:
        v0 = -13;
        break;
    case 11:
        v0 = -15;
        break;
    case 12:
    case 13:
        v0 = -15;
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

        v0 = -13;
        break;
    }

    if (v0 != -13) {
        if (WCM_GetPhase() != WCM_PHASE_DCF) {
            v0 = -14;
        }

        DWC_ClearError();
    }

    return v0;
}
