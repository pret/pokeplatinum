#include <nitro/fx/fx_trig.h>
#include <nitro/fx/fx_cp.h>
#include <nitro/fx/fx_const.h>

const fx16 FX_AtanIdxTable_[128 + 1] = {
    (u16)0,
    (u16)81,
    (u16)163,
    (u16)244,
    (u16)326,
    (u16)407,
    (u16)489,
    (u16)570,
    (u16)651,
    (u16)732,
    (u16)813,
    (u16)894,
    (u16)975,
    (u16)1056,
    (u16)1136,
    (u16)1217,
    (u16)1297,
    (u16)1377,
    (u16)1457,
    (u16)1537,
    (u16)1617,
    (u16)1696,
    (u16)1775,
    (u16)1854,
    (u16)1933,
    (u16)2012,
    (u16)2090,
    (u16)2168,
    (u16)2246,
    (u16)2324,
    (u16)2401,
    (u16)2478,
    (u16)2555,
    (u16)2632,
    (u16)2708,
    (u16)2784,
    (u16)2860,
    (u16)2935,
    (u16)3010,
    (u16)3085,
    (u16)3159,
    (u16)3233,
    (u16)3307,
    (u16)3380,
    (u16)3453,
    (u16)3526,
    (u16)3599,
    (u16)3670,
    (u16)3742,
    (u16)3813,
    (u16)3884,
    (u16)3955,
    (u16)4025,
    (u16)4095,
    (u16)4164,
    (u16)4233,
    (u16)4302,
    (u16)4370,
    (u16)4438,
    (u16)4505,
    (u16)4572,
    (u16)4639,
    (u16)4705,
    (u16)4771,
    (u16)4836,
    (u16)4901,
    (u16)4966,
    (u16)5030,
    (u16)5094,
    (u16)5157,
    (u16)5220,
    (u16)5282,
    (u16)5344,
    (u16)5406,
    (u16)5467,
    (u16)5528,
    (u16)5589,
    (u16)5649,
    (u16)5708,
    (u16)5768,
    (u16)5826,
    (u16)5885,
    (u16)5943,
    (u16)6000,
    (u16)6058,
    (u16)6114,
    (u16)6171,
    (u16)6227,
    (u16)6282,
    (u16)6337,
    (u16)6392,
    (u16)6446,
    (u16)6500,
    (u16)6554,
    (u16)6607,
    (u16)6660,
    (u16)6712,
    (u16)6764,
    (u16)6815,
    (u16)6867,
    (u16)6917,
    (u16)6968,
    (u16)7018,
    (u16)7068,
    (u16)7117,
    (u16)7166,
    (u16)7214,
    (u16)7262,
    (u16)7310,
    (u16)7358,
    (u16)7405,
    (u16)7451,
    (u16)7498,
    (u16)7544,
    (u16)7589,
    (u16)7635,
    (u16)7679,
    (u16)7724,
    (u16)7768,
    (u16)7812,
    (u16)7856,
    (u16)7899,
    (u16)7942,
    (u16)7984,
    (u16)8026,
    (u16)8068,
    (u16)8110,
    (u16)8151,
    (u16)8192
};

u16 FX_AtanIdx (fx32 x) {
    if (x >= 0) {
        if (x > FX32_ONE) {
            return (u16)(16384 - FX_AtanIdxTable_[FX_Inv(x) >> 5]);
        } else if (x < FX32_ONE) {
            return (u16)FX_AtanIdxTable_[x >> 5];
        } else {
            return (u16)8192;
        }
    } else {
        if (x < -FX32_ONE) {
            return (u16)(-16384 + FX_AtanIdxTable_[FX_Inv(-x) >> 5]);
        } else if (x > -FX32_ONE) {
            return (u16) - FX_AtanIdxTable_[-x >> 5];
        } else {
            return (u16) - 8192;
        }
    }
}

u16 FX_Atan2Idx (fx32 y, fx32 x) {
    fx32 a, b;
    int c;
    int sgn;

    if (y > 0) {
        if (x > 0) {
            if (x > y) {
                a = y;
                b = x;
                c = 0;
                sgn = 1;
            } else if (x < y) {
                a = x;
                b = y;
                c = 16384;
                sgn = 0;
            } else {
                return (u16)8192;
            }
        } else if (x < 0) {
            x = -x;
            if (x < y) {
                a = x;
                b = y;
                c = 16384;
                sgn = 1;
            } else if (x > y) {
                a = y;
                b = x;
                c = 32768;
                sgn = 0;
            } else {
                return (u16)24576;
            }
        } else {
            return (u16)16384;
        }
    } else if (y < 0) {
        y = -y;
        if (x < 0) {
            x = -x;
            if (x > y) {
                a = y;
                b = x;
                c = -32768;
                sgn = 1;
            } else if (x < y) {
                a = x;
                b = y;
                c = -16384;
                sgn = 0;
            } else {
                return (u16) - 24576;
            }
        } else if (x > 0) {
            if (x < y) {
                a = x;
                b = y;
                c = -16384;
                sgn = 1;
            } else if (x > y) {
                a = y;
                b = x;
                c = 0;
                sgn = 0;
            } else {
                return (u16) - 8192;
            }
        } else {
            return (u16) - 16384;
        }
    } else {
        if (x >= 0) {
            return 0;
        } else {
            return (u16)32768;
        }
    }

    if (b == 0) {
        return 0;
    }
    if (sgn) {
        return (u16)(c + FX_AtanIdxTable_[FX_Div(a, b) >> 5]);
    } else {
        return (u16)(c - FX_AtanIdxTable_[FX_Div(a, b) >> 5]);
    }
}
