#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_defs/struct_02002328.h"
#include "struct_defs/struct_02002D18.h"
#include "struct_defs/struct_0201D834.h"
#include "struct_defs/struct_02101D44.h"

#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_02018340.h"
#include "unk_0201D0C8.h"
#include "unk_0201D670.h"

static UnkStruct_02101D44 Unk_02101D44;


int sub_02002328 (UnkStruct_0201D834 * param0)
{
    const UnkStruct_02002328 * v0;
    UnkStruct_02002D18 * v1;
    int v2, v3;
    u16 v4;

    v1 = (UnkStruct_02002D18 *)&(param0->unk_20[0]);

    switch (param0->unk_28) {
    case 0:
        if (((gCoreSys.unk_44 & (PAD_BUTTON_A | PAD_BUTTON_B)) && (v1->unk_00_4)) || ((gCoreSys.unk_62) && (Unk_02101D44.unk_00_4))) {
            param0->unk_2A = 0;

            if (param0->unk_29_0 != 0) {
                Unk_02101D44.unk_00_6 = 1;
            }
        }

        if ((param0->unk_2A) && (param0->unk_29_0)) {
            (param0->unk_2A)--;

            if (Unk_02101D44.unk_00_0) {
                if ((gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B)) || ((gCoreSys.touchInput) && (Unk_02101D44.unk_00_4))) {
                    v1->unk_00_4 = 1;
                    param0->unk_2A = 0;
                }
            }

            return 3;
        }

        param0->unk_2A = param0->unk_29_0;
        v4 = *(u16 *)(param0->unk_00.unk_00_val1);
        param0->unk_00.unk_00_val1++;

        GF_ASSERT(v4 != 0xF100);

        switch (v4) {
        case 0xffff:
            return 1;
        case 0xe000:
            param0->unk_00.unk_0C = param0->unk_00.unk_0A;
            param0->unk_00.unk_0E += (sub_02002DF8(param0->unk_00.unk_09, 1) + param0->unk_00.unk_12);
            return 2;
        case 0xf0fd:
            param0->unk_00.unk_00_val1++;
            return 2;
        case 0xfffe:
            param0->unk_00.unk_00_val1--;
            v4 = sub_0201D0F0(param0->unk_00.unk_00_val1);

            switch (v4) {
            case 0xff00:
            {
                u16 v5 = sub_0201D134(param0->unk_00.unk_00_val1, 0);

                if (v5 == 255) {
                    u8 v6 = param0->unk_00.unk_1B;

                    param0->unk_00.unk_1B = (param0->unk_00.unk_15 - 1) / 2 + 100;

                    if (!(v6 >= 100 && v6 < (100 + 7))) {
                        break;
                    }

                    v5 = v6 - 100;
                } else if (v5 >= 100) {
                    param0->unk_00.unk_1B = v5;
                    break;
                }

                param0->unk_00.unk_15 = 1 + (v5 * 2);
                param0->unk_00.unk_17 = 1 + (v5 * 2) + 1;

                sub_0201D9FC(param0->unk_00.unk_15, param0->unk_00.unk_16, param0->unk_00.unk_17);
            }
            break;
            case 0x200:
            {
                u16 v7 = sub_0201D134(param0->unk_00.unk_00_val1, 0);
                sub_0201DB8C(param0, param0->unk_00.unk_0C, param0->unk_00.unk_0E, v7);
            }

                if (param0->unk_29_7 != 0) {
                    sub_0201A954(param0->unk_00.unk_04);
                }
                break;
            case 0x201:
            {
                param0->unk_2A = sub_0201D134(param0->unk_00.unk_00_val1, 0);
                param0->unk_00.unk_00_val1 = sub_0201D0C8(param0->unk_00.unk_00_val1);
                param0->unk_28 = 6;
                return 3;
            }
            break;
            case 0x202:
                param0->unk_2E = sub_0201D134(param0->unk_00.unk_00_val1, 0);
                param0->unk_00.unk_00_val1 = sub_0201D0C8(param0->unk_00.unk_00_val1);
                return 3;
            case 0x203:
                param0->unk_00.unk_0C = sub_0201D134(param0->unk_00.unk_00_val1, 0);
                break;
            case 0x204:
                param0->unk_00.unk_0E = sub_0201D134(param0->unk_00.unk_00_val1, 0);
                break;
            case 0xff01:
            {
                u16 v8 = sub_0201D134(param0->unk_00.unk_00_val1, 0);

                switch (v8) {
                case 0x64:
                    param0->unk_00.unk_18 = 0;
                    param0->unk_00.unk_1A = 0;
                    break;
                case 0xc8:
                    param0->unk_00.unk_18 = 0xfffc;
                    param0->unk_00.unk_1A = 0;
                    break;
                }
            }
            break;
            case 0xfe06:
            {
                u16 v9 = sub_0201D134(param0->unk_00.unk_00_val1, 0);

                switch (v9) {
                case 0xfe01:
                    param0->unk_28 = 2;
                    sub_020027B4(param0);
                    param0->unk_00.unk_00_val1 = sub_0201D0C8(param0->unk_00.unk_00_val1);
                    return 3;
                case 0xfe00:
                    param0->unk_28 = 3;
                    sub_020027B4(param0);
                    param0->unk_00.unk_00_val1 = sub_0201D0C8(param0->unk_00.unk_00_val1);
                    return 3;
                }
            }
            break;
            }

            param0->unk_00.unk_00_val1 = sub_0201D0C8(param0->unk_00.unk_00_val1);
            return 2;
        case 0x25bc:
            param0->unk_28 = 2;
            sub_020027B4(param0);
            return 3;
        case 0x25bd:
            param0->unk_28 = 3;
            sub_020027B4(param0);
            return 3;
        }

        v0 = sub_02002CFC(v1->unk_00_0, v4);

        sub_0201AED0(param0->unk_00.unk_04, v0->unk_00, v0->unk_80, v0->unk_81, param0->unk_00.unk_0C, param0->unk_00.unk_0E, param0->unk_00.unk_18);
        param0->unk_00.unk_0C += (v0->unk_80 + param0->unk_00.unk_10);

        return 0;
    case 1:
        if (sub_02002AA4(param0)) {
            sub_02002968(param0);
            param0->unk_28 = 0;
        }

        return 3;
    case 2:
        if (sub_02002A80(param0)) {
            sub_02002968(param0);
            sub_0201ADA4(param0->unk_00.unk_04, param0->unk_00.unk_16);

            param0->unk_00.unk_0C = param0->unk_00.unk_0A;
            param0->unk_00.unk_0E = param0->unk_00.unk_0B;
            param0->unk_28 = 0;
        }

        return 3;
    case 3:
        if (sub_02002A80(param0)) {
            sub_02002968(param0);

            param0->unk_2B = (sub_02002DF8(param0->unk_00.unk_09, 1) + param0->unk_00.unk_12);
            param0->unk_00.unk_0C = param0->unk_00.unk_0A;
            param0->unk_28 = 4;
        }

        return 3;
    case 4:
        if (param0->unk_2B) {
            v3 = 0x4;

            if (param0->unk_2B < v3) {
                sub_0201C04C(param0->unk_00.unk_04, 0, param0->unk_2B, (param0->unk_00.unk_16 << 4) | param0->unk_00.unk_16);
                param0->unk_2B = 0;
            } else {
                sub_0201C04C(param0->unk_00.unk_04, 0, v3, (param0->unk_00.unk_16 << 4) | param0->unk_00.unk_16);
                param0->unk_2B -= v3;
            }

            sub_0201A954(param0->unk_00.unk_04);
        } else {
            param0->unk_28 = 0;
        }

        return 3;
    case 5:
        param0->unk_28 = 0;
        return 3;
    case 6:
        if (param0->unk_2A) {
            param0->unk_2A--;
        } else {
            param0->unk_28 = 0;
        }

        return 3;
    }

    return 1;
}

static u16 Unk_02101D46 = 0;

void sub_020027A8 (u16 param0)
{
    Unk_02101D46 = param0;
}

void sub_020027B4 (UnkStruct_0201D834 * param0)
{
    UnkStruct_02002D18 * v0;

    v0 = (UnkStruct_02002D18 *)&(param0->unk_20[0]);

    if (Unk_02101D44.unk_00_2) {
        v0->unk_02_0 = 0;
    } else {
        v0->unk_01_5 = 0;
        v0->unk_01_0 = 0;
    }
}

static const u8 Unk_020E4CD0[] = {
    0x0,
    0x1,
    0x2,
    0x1
};

void sub_020027E0 (UnkStruct_0201D834 * param0)
{
    UnkStruct_02002D18 * v0;
    void * v1;

    v0 = (UnkStruct_02002D18 *)&(param0->unk_20[0]);

    if (Unk_02101D44.unk_00_2) {
        return;
    }

    if (v0->unk_01_0) {
        v0->unk_01_0--;
        return;
    }

    {
        u16 v2;
        u8 v3, v4, v5, v6;

        v3 = sub_0201C290(param0->unk_00.unk_04);
        v4 = sub_0201C29C(param0->unk_00.unk_04);
        v5 = sub_0201C2A0(param0->unk_00.unk_04);
        v6 = sub_0201C294(param0->unk_00.unk_04);
        v2 = Unk_02101D46;

        sub_02019CB8(param0->unk_00.unk_04->unk_00, v3, v2 + 18 + (Unk_020E4CD0[v0->unk_01_5] * 4), v4 + v6 + 1, v5 + 2, 1, 1, 16);
        sub_02019CB8(param0->unk_00.unk_04->unk_00, v3, v2 + 19 + (Unk_020E4CD0[v0->unk_01_5] * 4), v4 + v6 + 2, v5 + 2, 1, 1, 16);
        sub_02019CB8(param0->unk_00.unk_04->unk_00, v3, v2 + 20 + (Unk_020E4CD0[v0->unk_01_5] * 4), v4 + v6 + 1, v5 + 3, 1, 1, 16);
        sub_02019CB8(param0->unk_00.unk_04->unk_00, v3, v2 + 21 + (Unk_020E4CD0[v0->unk_01_5] * 4), v4 + v6 + 2, v5 + 3, 1, 1, 16);
        sub_02019448(param0->unk_00.unk_04->unk_00, v3);

        v0->unk_01_0 = 8;
        v0->unk_01_5++;
    }
}

void sub_02002968 (UnkStruct_0201D834 * param0)
{
    u16 v0;
    u8 v1, v2, v3, v4;

    v1 = sub_0201C290(param0->unk_00.unk_04);
    v2 = sub_0201C29C(param0->unk_00.unk_04);
    v3 = sub_0201C2A0(param0->unk_00.unk_04);
    v4 = sub_0201C294(param0->unk_00.unk_04);
    v0 = Unk_02101D46;

    sub_02019CB8(param0->unk_00.unk_04->unk_00, v1, v0 + 10, v2 + v4 + 1, v3 + 2, 1, 2, 16);
    sub_02019CB8(param0->unk_00.unk_04->unk_00, v1, v0 + 11, v2 + v4 + 2, v3 + 2, 1, 2, 16);
    sub_02019448(param0->unk_00.unk_04->unk_00, v1);
}

static BOOL sub_020029FC (UnkStruct_0201D834 * param0)
{
    if ((gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B)) || ((gCoreSys.touchInput) && (Unk_02101D44.unk_00_4))) {
        sub_02005748(1500);
        Unk_02101D44.unk_00_7 = 1;
        return 1;
    }

    return 0;
}

BOOL sub_02002A44 (UnkStruct_0201D834 * param0)
{
    UnkStruct_02002D18 * v0;
    u16 v1;

    v0 = (UnkStruct_02002D18 *)&(param0->unk_20[0]);
    v1 = 100;

    if (v0->unk_02_0 == v1) {
        return 1;
    }

    v0->unk_02_0++;

    if (Unk_02101D44.unk_00_5) {
        return sub_020029FC(param0);
    }

    return 0;
}

BOOL sub_02002A80 (UnkStruct_0201D834 * param0)
{
    BOOL v0 = 0;

    if (Unk_02101D44.unk_00_2) {
        v0 = sub_02002A44(param0);
    } else {
        sub_020027E0(param0);
        v0 = sub_020029FC(param0);
    }

    return v0;
}

BOOL sub_02002AA4 (UnkStruct_0201D834 * param0)
{
    u8 v0 = 0;

    if (Unk_02101D44.unk_00_2) {
        v0 = sub_02002A44(param0);
    } else {
        v0 = sub_020029FC(param0);
    }

    return v0;
}

void sub_02002AC8 (int param0)
{
    Unk_02101D44.unk_00_0 = param0;
}

void sub_02002AE4 (int param0)
{
    Unk_02101D44.unk_00_2 = (param0 & 1);
    Unk_02101D44.unk_00_5 = ((param0 >> 1) & 1);
}

void sub_02002B20 (int param0)
{
    Unk_02101D44.unk_00_4 = param0;
}

u8 sub_02002B3C (void)
{
    return Unk_02101D44.unk_00_6;
}

void sub_02002B4C (void)
{
    Unk_02101D44.unk_00_6 = 0;
}

u8 sub_02002B5C (void)
{
    return Unk_02101D44.unk_00_7;
}

void sub_02002B6C (void)
{
    Unk_02101D44.unk_00_7 = 0;
}
