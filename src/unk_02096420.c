#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02079FF4_decl.h"
#include "struct_decls/struct_0207D3B0_decl.h"

#include "unk_02017E74.h"
#include "unk_02073C2C.h"
#include "unk_020790B0.h"
#include "unk_02079FEC.h"
#include "unk_0207CDEC.h"
#include "unk_02096420.h"

static u8 sub_02096F34(UnkStruct_02073C74 * param0, u32 param1);
static u8 sub_02096F84(UnkStruct_02073C74 * param0, u32 param1, u32 param2);
static u8 sub_02097004(UnkStruct_02073C74 * param0, u32 param1, u32 param2);
static void sub_020970AC(UnkStruct_02073C74 * param0, u32 param1, u32 param2, u32 param3);
static s32 sub_020970EC(s32 param0, s32 param1, s32 param2);
static u8 sub_020971D0(UnkStruct_02073C74 * param0, s32 param1, s32 param2, u16 param3, u32 param4);
static u8 sub_02097144(UnkStruct_02073C74 * param0, UnkStruct_0207D3B0 * param1);

u8 sub_02096420 (UnkStruct_02073C74 * param0, u16 param1, u16 param2, u32 param3)
{
    UnkStruct_0207D3B0 * v0;
    s32 v1[8];

    v0 = sub_0207CF48(param1, 0, param3);

    if (sub_0207D014(v0, 14) != 1) {
        sub_020181C4(v0);
        return 0;
    }

    v1[0] = sub_02074470(param0, 160, NULL);

    if (sub_0207D014(v0, 15) != 0) {
        if ((v1[0] & 0x7) != 0) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 16) != 0) {
        if ((v1[0] & (0x8 | 0x80)) != 0) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 17) != 0) {
        if ((v1[0] & 0x10) != 0) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 18) != 0) {
        if ((v1[0] & 0x20) != 0) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 19) != 0) {
        if ((v1[0] & 0x40) != 0) {
            sub_020181C4(v0);
            return 1;
        }
    }

    v1[0] = sub_02074470(param0, 163, NULL);

    if (((sub_0207D014(v0, 23) != 0) || (sub_0207D014(v0, 24) != 0)) && (sub_0207D014(v0, 25) == 0)) {
        if (v1[0] == 0) {
            sub_020181C4(v0);
            return 1;
        }
    } else if (sub_0207D014(v0, 38) != 0) {
        if ((v1[0] != 0) && (v1[0] < sub_02074470(param0, 164, NULL))) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 25) != 0) {
        if (sub_02074470(param0, 161, NULL) < 100) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 26) != 0) {
        if (sub_02076B94(NULL, param0, 3, param1, NULL) != 0) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if ((sub_0207D014(v0, 34) != 0) || (sub_0207D014(v0, 35) != 0)) {
        if ((sub_02074470(param0, 62 + param2, NULL) < 3) && (sub_020790DC(sub_02074470(param0, 54 + param2, NULL), 0) >= 5)) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 36) != 0) {
        if (sub_02096F34(param0, param2) == 1) {
            sub_020181C4(v0);
            return 1;
        }
    }

    if (sub_0207D014(v0, 37) != 0) {
        for (v1[0] = 0; v1[0] < 4; v1[0]++) {
            if (sub_02096F34(param0, v1[0]) == 1) {
                sub_020181C4(v0);
                return 1;
            }
        }
    }

    v1[0] = sub_02074470(param0, 13, NULL);
    v1[1] = sub_02074470(param0, 14, NULL);
    v1[2] = sub_02074470(param0, 15, NULL);
    v1[3] = sub_02074470(param0, 16, NULL);
    v1[4] = sub_02074470(param0, 17, NULL);
    v1[5] = sub_02074470(param0, 18, NULL);

    if (sub_02074470(param0, 5, NULL) != 292) {
        if (sub_0207D014(v0, 39) != 0) {
            v1[6] = sub_0207D014(v0, 48);

            if (v1[6] > 0) {
                if ((v1[0] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                    sub_020181C4(v0);
                    return 1;
                }
            } else if (v1[6] < 0) {
                if (v1[0] > 0) {
                    sub_020181C4(v0);
                    return 1;
                }

                if (sub_02097144(param0, v0) == 1) {
                    sub_020181C4(v0);
                    return 1;
                }
            }
        }
    }

    if (sub_0207D014(v0, 40) != 0) {
        v1[6] = sub_0207D014(v0, 49);

        if (v1[6] > 0) {
            if ((v1[1] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                sub_020181C4(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[1] > 0) {
                sub_020181C4(v0);
                return 1;
            }

            if (sub_02097144(param0, v0) == 1) {
                sub_020181C4(v0);
                return 1;
            }
        }
    }

    if (sub_0207D014(v0, 41) != 0) {
        v1[6] = sub_0207D014(v0, 50);

        if (v1[6] > 0) {
            if ((v1[2] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                sub_020181C4(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[2] > 0) {
                sub_020181C4(v0);
                return 1;
            }

            if (sub_02097144(param0, v0) == 1) {
                sub_020181C4(v0);
                return 1;
            }
        }
    }

    if (sub_0207D014(v0, 42) != 0) {
        v1[6] = sub_0207D014(v0, 51);

        if (v1[6] > 0) {
            if ((v1[3] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                sub_020181C4(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[3] > 0) {
                sub_020181C4(v0);
                return 1;
            }

            if (sub_02097144(param0, v0) == 1) {
                sub_020181C4(v0);
                return 1;
            }
        }
    }

    if (sub_0207D014(v0, 43) != 0) {
        v1[6] = sub_0207D014(v0, 52);

        if (v1[6] > 0) {
            if ((v1[4] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                sub_020181C4(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[4] > 0) {
                sub_020181C4(v0);
                return 1;
            }

            if (sub_02097144(param0, v0) == 1) {
                sub_020181C4(v0);
                return 1;
            }
        }
    }

    if (sub_0207D014(v0, 44) != 0) {
        v1[6] = sub_0207D014(v0, 53);

        if (v1[6] > 0) {
            if ((v1[5] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                sub_020181C4(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[5] > 0) {
                sub_020181C4(v0);
                return 1;
            }

            if (sub_02097144(param0, v0) == 1) {
                sub_020181C4(v0);
                return 1;
            }
        }
    }

    sub_020181C4(v0);

    return 0;
}

u8 sub_0209693C (UnkStruct_02079FF4 * param0, u16 param1, u8 param2, u8 param3, u32 param4)
{
    UnkStruct_02073C74 * v0 = sub_0207A0FC(param0, param2);
    return sub_02096420(v0, param1, param3, param4);
}

u8 sub_02096954 (UnkStruct_02073C74 * param0, u16 param1, u16 param2, u16 param3, u32 param4)
{
    UnkStruct_0207D3B0 * v0;
    s32 v1[8];
    u8 v2;
    u8 v3;

    v0 = sub_0207CF48(param1, 0, param4);

    if (sub_0207D014(v0, 14) != 1) {
        sub_020181C4(v0);
        return 0;
    }

    v2 = 0;
    v3 = 0;

    v1[0] = sub_02074470(param0, 160, NULL);
    v1[1] = v1[0];

    if (sub_0207D014(v0, 15) != 0) {
        v1[1] &= (0x7 ^ 0xffffffff);
        v3 = 1;
    }

    if (sub_0207D014(v0, 16) != 0) {
        v1[1] &= ((0x8 | 0x80 | 0xf00) ^ 0xffffffff);
        v3 = 1;
    }

    if (sub_0207D014(v0, 17) != 0) {
        v1[1] &= (0x10 ^ 0xffffffff);
        v3 = 1;
    }

    if (sub_0207D014(v0, 18) != 0) {
        v1[1] &= (0x20 ^ 0xffffffff);
        v3 = 1;
    }

    if (sub_0207D014(v0, 19) != 0) {
        v1[1] &= (0x40 ^ 0xffffffff);
        v3 = 1;
    }

    if (v1[0] != v1[1]) {
        sub_02074B30(param0, 160, &v1[1]);
        v2 = 1;
    }

    v1[0] = sub_02074470(param0, 163, NULL);
    v1[1] = sub_02074470(param0, 164, NULL);

    if (((sub_0207D014(v0, 23) != 0) || (sub_0207D014(v0, 24) != 0)) && (sub_0207D014(v0, 25) != 0)) {
        if (v1[0] == 0) {
            sub_020970AC(param0, v1[0], v1[1], sub_0207D014(v0, 54));
            v2 = 1;
        }

        v3 = 1;
    } else if (sub_0207D014(v0, 38) != 0) {
        if (v1[0] < v1[1]) {
            sub_020970AC(param0, v1[0], v1[1], sub_0207D014(v0, 54));
            v2 = 1;
        }

        v3 = 1;
    }

    v1[2] = sub_02074470(param0, 161, NULL);

    if (sub_0207D014(v0, 25) != 0) {
        if (v1[2] < 100) {
            sub_0207536C(param0, 8, sub_02075A70(param0));
            sub_0207418C(param0);

            if (v1[0] == 0) {
                v1[3] = sub_02074470(param0, 164, NULL);
                sub_020970AC(param0, v1[0], v1[3], v1[3] - v1[1]);
            }

            v2 = 1;
        }

        v3 = 1;
    }

    if (sub_0207D014(v0, 26) != 0) {
        v3 = 1;
    }

    if (sub_0207D014(v0, 34) != 0) {
        if (sub_02097004(param0, param2, 1) == 1) {
            v2 = 1;
        }

        v3 = 1;
    } else if (sub_0207D014(v0, 35) != 0) {
        if (sub_02097004(param0, param2, 3) == 1) {
            v2 = 1;
        }

        v3 = 1;
    }

    if (sub_0207D014(v0, 36) != 0) {
        if (sub_02096F84(param0, param2, sub_0207D014(v0, 55)) == 1) {
            v2 = 1;
        }

        v3 = 1;
    } else if (sub_0207D014(v0, 37) != 0) {
        for (v1[0] = 0; v1[0] < 4; v1[0]++) {
            if (sub_02096F84(param0, v1[0], sub_0207D014(v0, 55)) == 1) {
                v2 = 1;
            }
        }

        v3 = 1;
    }

    v1[0] = sub_02074470(param0, 13, NULL);
    v1[1] = sub_02074470(param0, 14, NULL);
    v1[2] = sub_02074470(param0, 15, NULL);
    v1[3] = sub_02074470(param0, 16, NULL);
    v1[4] = sub_02074470(param0, 17, NULL);
    v1[5] = sub_02074470(param0, 18, NULL);

    if (sub_02074470(param0, 5, NULL) != 292) {
        if (sub_0207D014(v0, 39) != 0) {
            v1[7] = sub_0207D014(v0, 48);
            v1[6] = sub_020970EC(v1[0], (v1[1] + v1[2] + v1[3] + v1[4] + v1[5]), v1[7]);

            if (v1[6] != -1) {
                v1[0] = v1[6];
                sub_02074B30(param0, 13, &v1[0]);
                sub_0207418C(param0);
                v2 = 1;
            }

            if (v1[7] > 0) {
                v3 = 1;
            }
        }
    }

    if (sub_0207D014(v0, 40) != 0) {
        v1[7] = sub_0207D014(v0, 49);
        v1[6] = sub_020970EC(v1[1], (v1[0] + v1[2] + v1[3] + v1[4] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[1] = v1[6];
            sub_02074B30(param0, 14, &v1[1]);
            sub_0207418C(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (sub_0207D014(v0, 41) != 0) {
        v1[7] = sub_0207D014(v0, 50);
        v1[6] = sub_020970EC(v1[2], (v1[0] + v1[1] + v1[3] + v1[4] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[2] = v1[6];
            sub_02074B30(param0, 15, &v1[2]);
            sub_0207418C(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (sub_0207D014(v0, 42) != 0) {
        v1[7] = sub_0207D014(v0, 51);
        v1[6] = sub_020970EC(v1[3], (v1[0] + v1[1] + v1[2] + v1[4] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[3] = v1[6];
            sub_02074B30(param0, 16, &v1[3]);
            sub_0207418C(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (sub_0207D014(v0, 43) != 0) {
        v1[7] = sub_0207D014(v0, 52);
        v1[6] = sub_020970EC(v1[4], (v1[0] + v1[1] + v1[2] + v1[3] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[4] = v1[6];
            sub_02074B30(param0, 17, &v1[4]);
            sub_0207418C(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (sub_0207D014(v0, 44) != 0) {
        v1[7] = sub_0207D014(v0, 53);
        v1[6] = sub_020970EC(v1[5], (v1[0] + v1[1] + v1[2] + v1[3] + v1[4]), v1[7]);

        if (v1[6] != -1) {
            v1[5] = v1[6];
            sub_02074B30(param0, 18, &v1[5]);
            sub_0207418C(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if ((v2 == 0) && (v3 == 1)) {
        sub_020181C4(v0);
        return 0;
    }

    v1[0] = sub_02074470(param0, 9, NULL);

    if (v1[0] < 100) {
        if (sub_0207D014(v0, 45) != 0) {
            if (sub_020971D0(param0, v1[0], sub_0207D014(v0, 56), param3, param4) == 0) {
                sub_020181C4(v0);
                return v2;
            }
        }
    } else if ((v1[0] >= 100) && (v1[0] < 200)) {
        if (sub_0207D014(v0, 46) != 0) {
            if (sub_020971D0(param0, v1[0], sub_0207D014(v0, 57), param3, param4) == 0) {
                sub_020181C4(v0);
                return v2;
            }
        }
    } else if ((v1[0] >= 200) && (v1[0] <= 255)) {
        if (sub_0207D014(v0, 47) != 0) {
            if (sub_020971D0(param0, v1[0], sub_0207D014(v0, 58), param3, param4) == 0) {
                sub_020181C4(v0);
                return v2;
            }
        }
    }

    sub_020181C4(v0);
    return v2;
}

u8 sub_02096F14 (UnkStruct_02079FF4 * param0, u16 param1, u8 param2, u8 param3, u16 param4, u32 param5)
{
    UnkStruct_02073C74 * v0 = sub_0207A0FC(param0, param2);

    return sub_02096954(v0, param1, param3, param4, param5);
}

static u8 sub_02096F34 (UnkStruct_02073C74 * param0, u32 param1)
{
    u16 v0;
    u8 v1;
    u8 v2;

    v0 = (u16)sub_02074470(param0, 54 + param1, NULL);

    if (v0 == 0) {
        return 0;
    }

    v1 = (u8)sub_02074470(param0, 58 + param1, NULL);
    v2 = (u8)sub_02074470(param0, 62 + param1, NULL);

    if (v1 < sub_020790DC(v0, v2)) {
        return 1;
    }

    return 0;
}

static u8 sub_02096F84 (UnkStruct_02073C74 * param0, u32 param1, u32 param2)
{
    u16 v0;
    u8 v1;
    u8 v2;

    v0 = (u16)sub_02074470(param0, 54 + param1, NULL);

    if (v0 == 0) {
        return 0;
    }

    v1 = (u8)sub_02074470(param0, 58 + param1, NULL);
    v2 = (u8)sub_020790DC(v0, sub_02074470(param0, 62 + param1, NULL));

    if (v1 < v2) {
        if (param2 == 127) {
            v1 = v2;
        } else {
            v1 += param2;

            if (v1 > v2) {
                v1 = v2;
            }
        }

        sub_02074B30(param0, 58 + param1, &v1);
        return 1;
    }

    return 0;
}

static u8 sub_02097004 (UnkStruct_02073C74 * param0, u32 param1, u32 param2)
{
    u16 v0;
    u8 v1;
    u8 v2;
    u8 v3;

    v2 = sub_02074470(param0, 62 + param1, NULL);

    if (v2 == 3) {
        return 0;
    }

    v0 = (u16)sub_02074470(param0, 54 + param1, NULL);

    if (sub_020790DC(v0, 0) < 5) {
        return 0;
    }

    v1 = (u8)sub_02074470(param0, 58 + param1, NULL);
    v3 = (u8)sub_020790DC(v0, v2);

    if (v2 + param2 > 3) {
        v2 = 3;
    } else {
        v2 = v2 + param2;
    }

    v1 = v1 + sub_020790DC(v0, v2) - v3;

    sub_02074B30(param0, 62 + param1, &v2);
    sub_02074B30(param0, 58 + param1, &v1);

    return 1;
}

static void sub_020970AC (UnkStruct_02073C74 * param0, u32 param1, u32 param2, u32 param3)
{
    if (param2 == 1) {
        param3 = 1;
    } else if (param3 == 255) {
        param3 = param2;
    } else if (param3 == 254) {
        param3 = param2 / 2;
    } else if (param3 == 253) {
        param3 = param2 / 4;
    }

    if (param1 + param3 > param2) {
        param1 = param2;
    } else {
        param1 += param3;
    }

    sub_02074B30(param0, 163, &param1);
}

static s32 sub_020970EC (s32 param0, s32 param1, s32 param2)
{
    if ((param0 == 0) && (param2 < 0)) {
        return -1;
    }

    if ((param0 >= 100) && (param2 > 0)) {
        return -1;
    }

    if (((param0 + param1) >= 510) && (param2 > 0)) {
        return -1;
    }

    param0 += param2;

    if (param0 > 100) {
        param0 = 100;
    } else if (param0 < 0) {
        param0 = 0;
    }

    if ((param0 + param1) > 510) {
        param0 = 510 - param1;
    }

    return param0;
}

static u8 sub_02097144 (UnkStruct_02073C74 * param0, UnkStruct_0207D3B0 * param1)
{
    s32 v0;
    s32 v1;

    v0 = sub_02074470(param0, 9, NULL);

    if (v0 >= 255) {
        return 0;
    }

    if (v0 < 100) {
        if (sub_0207D014(param1, 45) != 0) {
            if (sub_0207D014(param1, 56) > 0) {
                return 1;
            }
        }

        return 0;
    } else if ((v0 >= 100) && (v0 < 200)) {
        if (sub_0207D014(param1, 46) != 0) {
            if (sub_0207D014(param1, 57) > 0) {
                return 1;
            }
        }

        return 0;
    } else if ((v0 >= 200) && (v0 < 255)) {
        if (sub_0207D014(param1, 47) != 0) {
            if (sub_0207D014(param1, 58) > 0) {
                return 1;
            }
        }

        return 0;
    }

    return 0;
}

static u8 sub_020971D0 (UnkStruct_02073C74 * param0, s32 param1, s32 param2, u16 param3, u32 param4)
{
    if ((param1 == 255) && (param2 > 0)) {
        return 0;
    }

    if ((param1 == 0) && (param2 < 0)) {
        return 0;
    }

    if (param2 > 0) {
        if (sub_0207CFF0(sub_02074470(param0, 6, NULL), 1, param4) == 53) {
            param2 = param2 * 150 / 100;
        }

        if (sub_02074470(param0, 155, NULL) == 11) {
            param2++;
        }

        if (sub_02074470(param0, 152, NULL) == param3) {
            param2++;
        }
    }

    param2 += param1;

    if (param2 > 255) {
        param2 = 255;
    }

    if (param2 < 0) {
        param2 = 0;
    }

    sub_02074B30(param0, 9, &param2);
    return 1;
}

void sub_02097284 (UnkStruct_02079FF4 * param0)
{
    int v0, v1, v2;
    u32 v3;
    UnkStruct_02073C74 * v4;

    v2 = sub_0207A0F8(param0);

    for (v0 = 0; v0 < v2; v0++) {
        v4 = sub_0207A0FC(param0, v0);

        if (sub_02074470(v4, 172, NULL) == 0) {
            continue;
        }

        v3 = sub_02074470(v4, 164, NULL);
        sub_02074B30(v4, 163, &v3);

        v3 = 0;
        sub_02074B30(v4, 160, &v3);

        for (v1 = 0; v1 < 4; v1++) {
            if (sub_02096F34(v4, v1) == 1) {
                sub_02096F84(v4, v1, 127);
            }
        }
    }
}
