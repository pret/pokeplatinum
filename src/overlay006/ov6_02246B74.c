#include "overlay006/ov6_02246B74.h"

#include <nitro.h>
#include <string.h>

#include "rtc.h"

typedef struct {
    int unk_00;
    const u16 *unk_04;
} UnkStruct_ov6_0224954C;

static const u16 Unk_ov6_02249522[4] = {
    ((1 << 8) | (3 & 0xff)),
    ((11 << 8) | (2 & 0xff)),
    ((12 << 8) | (4 & 0xff)),
    ((29 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_02249502[4] = {
    ((3 << 8) | (2 & 0xff)),
    ((11 << 8) | (2 & 0xff)),
    ((14 << 8) | (0 & 0xff)),
    ((27 << 8) | (4 & 0xff))
};

static const u16 Unk_ov6_022494F4[3] = {
    ((3 << 8) | (2 & 0xff)),
    ((18 << 8) | (2 & 0xff)),
    ((21 << 8) | (3 & 0xff))
};

static const u16 Unk_ov6_0224951A[4] = {
    ((1 << 8) | (2 & 0xff)),
    ((25 << 8) | (2 & 0xff)),
    ((26 << 8) | (1 & 0xff)),
    ((29 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_0224950A[4] = {
    ((1 << 8) | (0 & 0xff)),
    ((3 << 8) | (2 & 0xff)),
    ((4 << 8) | (0 & 0xff)),
    ((5 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_022494E0[1] = {
    ((21 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_022494E8[3] = {
    ((7 << 8) | (4 & 0xff)),
    ((18 << 8) | (2 & 0xff)),
    ((24 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_022494FA[4] = {
    ((13 << 8) | (1 & 0xff)),
    ((14 << 8) | (1 & 0xff)),
    ((15 << 8) | (2 & 0xff)),
    ((16 << 8) | (1 & 0xff))
};

static const u16 Unk_ov6_0224952A[6] = {
    ((7 << 8) | (2 & 0xff)),
    ((12 << 8) | (2 & 0xff)),
    ((15 << 8) | (2 & 0xff)),
    ((20 << 8) | (2 & 0xff)),
    ((23 << 8) | (3 & 0xff)),
    ((28 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_022494EE[3] = {
    ((5 << 8) | (2 & 0xff)),
    ((15 << 8) | (2 & 0xff)),
    ((30 << 8) | (2 & 0xff))
};

static const u16 Unk_ov6_02249512[4] = {
    ((3 << 8) | (1 & 0xff)),
    ((12 << 8) | (2 & 0xff)),
    ((21 << 8) | (2 & 0xff)),
    ((23 << 8) | (0 & 0xff))
};

static const u16 Unk_ov6_022494E2[3] = {
    ((14 << 8) | (2 & 0xff)),
    ((23 << 8) | (2 & 0xff)),
    ((31 << 8) | (1 & 0xff))
};

static const UnkStruct_ov6_0224954C Unk_ov6_0224954C[12] = {
    { 0x4, Unk_ov6_02249522 },
    { 0x4, Unk_ov6_02249502 },
    { 0x3, Unk_ov6_022494F4 },
    { 0x4, Unk_ov6_0224951A },
    { 0x4, Unk_ov6_0224950A },
    { 0x1, Unk_ov6_022494E0 },
    { 0x3, Unk_ov6_022494E8 },
    { 0x4, Unk_ov6_022494FA },
    { 0x6, Unk_ov6_0224952A },
    { 0x3, Unk_ov6_022494EE },
    { 0x4, Unk_ov6_02249512 },
    { 0x3, Unk_ov6_022494E2 }
};

static const int Unk_ov6_02249538[] = {
    0x0,
    -5,
    0x5,
    -10,
    0xA
};

int ov6_02246B74(const int param0, const BOOL param1)
{
    u8 v0;
    int v1;
    RTCDate v2;
    const UnkStruct_ov6_0224954C *v3;

    if (param1) {
        return param0;
    }

    if (param0 == 0) {
        return 0;
    }

    GetCurrentDate(&v2);

    GF_ASSERT(v2.month > 0);
    GF_ASSERT(v2.month <= 12);

    v3 = &(Unk_ov6_0224954C[v2.month - 1]);

    for (v0 = 0; v0 < v3->unk_00; v0++) {
        if (v2.day == ((v3->unk_04[v0] >> 8) & 0xff)) {
            v1 = param0 + Unk_ov6_02249538[(v3->unk_04[v0] & 0xff)];

            if (v1 < 0) {
                v1 = 1;
            }

            return v1;
        }
    }

    return param0;
}
