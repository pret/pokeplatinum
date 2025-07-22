#include "overlay028/ov28_02256E9C.h"

#include "constants/heap.h"

#include "overlay028/struct_ov28_02256E9C_decl.h"

#include "heap.h"

struct UnkStruct_ov28_02256E9C_t {
    u64 unk_00;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
};

static const u64 Unk_ov28_02257A50[] = {
    0x1,
    0xA,
    0x64,
    0x3E8,
    0x2710,
    0x186A0,
    0xF4240,
    0x989680,
    0x5F5E100,
    0x3B9ACA00,
    0x2540BE400
};

static u32 ov28_02257498(const UnkStruct_ov28_02256E9C *param0);
static u32 ov28_022574E8(const UnkStruct_ov28_02256E9C *param0);
static void ov28_022574FC(UnkStruct_ov28_02256E9C *param0);
static void ov28_022575EC(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1, UnkStruct_ov28_02256E9C *param2, UnkStruct_ov28_02256E9C *param3);

BOOL ov28_02256E9C(UnkStruct_ov28_02256E9C **param0, u32 param1) {
    *param0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov28_02256E9C));

    if (*param0) {
        (*param0)->unk_0A = param1;
        ov28_02256EC8(*param0);
        return 1;
    }

    return 0;
}

void ov28_02256EC0(UnkStruct_ov28_02256E9C *param0) {
    Heap_Free(param0);
}

void ov28_02256EC8(UnkStruct_ov28_02256E9C *param0) {
    param0->unk_00 = 0;
    param0->unk_09 = 0;
    param0->unk_08 = 0;
    param0->unk_0B = 0;
}

void ov28_02256ED8(UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1) {
    *param0 = *param1;
}

void ov28_02256EE8(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1, UnkStruct_ov28_02256E9C *param2) {
    if ((param0->unk_09 == 0) && (param1->unk_09 == 1)) {
        UnkStruct_ov28_02256E9C v0 = *param1;

        v0.unk_09 = 0;
        ov28_02256F74(param0, &v0, param2);
        return;
    }

    if ((param0->unk_09 == 1) && (param1->unk_09 == 0)) {
        UnkStruct_ov28_02256E9C v1 = *param0;

        v1.unk_09 = 0;
        ov28_02256F74(param1, &v1, param2);
        return;
    }

    {
        UnkStruct_ov28_02256E9C v2, v3;

        ov28_022575EC(param0, param1, &v2, &v3);

        param2->unk_00 = v2.unk_00 + v3.unk_00;
        param2->unk_08 = v2.unk_08;
        param2->unk_09 = v2.unk_09;

        ov28_022574FC(param2);
    }
}

void ov28_02256F74(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1, UnkStruct_ov28_02256E9C *param2) {
    if (((param0->unk_09 == 0) && (param1->unk_09 == 1)) || ((param0->unk_09 == 1) && (param1->unk_09 == 0))) {
        UnkStruct_ov28_02256E9C v0 = *param1;

        v0.unk_09 ^= 1;
        ov28_02256EE8(param0, &v0, param2);
        return;
    }

    if (ov28_022571F4(param0, param1)) {
        ov28_02256EC8(param2);
        return;
    }

    {
        UnkStruct_ov28_02256E9C v1, v2;

        ov28_022575EC(param0, param1, &v1, &v2);

        param0 = &v1;
        param1 = &v2;

        if ((param0->unk_00 < param1->unk_00) ^ (param0->unk_09)) {
            const UnkStruct_ov28_02256E9C *v3 = param0;
            param0 = param1;
            param1 = v3;
            param2->unk_09 = param0->unk_09 ^ 1;
        } else {
            param2->unk_09 = param0->unk_09;
        }

        param2->unk_00 = param0->unk_00 - param1->unk_00;
        param2->unk_08 = param0->unk_08;

        ov28_022574FC(param2);
    }
}

void ov28_02257028(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1, UnkStruct_ov28_02256E9C *param2) {
    param2->unk_00 = param0->unk_00 * param1->unk_00;
    param2->unk_08 = param0->unk_08 + param1->unk_08;
    param2->unk_09 = param0->unk_09 ^ param1->unk_09;

    ov28_022574FC(param2);
}

void ov28_02257058(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1, UnkStruct_ov28_02256E9C *param2) {
    UnkStruct_ov28_02256E9C v0, v1;
    u64 v2;
    u32 v3;

    if (param1->unk_00 == 0) {
        param2->unk_0B = 1;
        return;
    }

    ov28_022575EC(param0, param1, &v0, &v1);

    param0 = &v0;
    param1 = &v1;

    CP_SetDiv64_64(v0.unk_00, v1.unk_00);

    param2->unk_00 = CP_GetDivResult64();
    param2->unk_08 = 0;

    v3 = ov28_02257498(param2);
    v2 = CP_GetDivRemainder64();

    while (v2) {
        if ((v3 + 1 + param2->unk_08) >= param2->unk_0A) {
            break;
        }

        v2 *= 10;

        CP_SetDiv64_64(v2, v1.unk_00);

        param2->unk_00 *= 10;
        param2->unk_00 += CP_GetDivResult64();
        param2->unk_08++;

        v2 = CP_GetDivRemainder64();
    }

    param2->unk_09 = param0->unk_09 ^ param1->unk_09;
}

BOOL ov28_0225717C(UnkStruct_ov28_02256E9C *param0, u32 param1) {
    if (ov28_022574E8(param0) >= param0->unk_0A) {
        return 0;
    }

    if (param0->unk_08 == 0) {
        param0->unk_00 *= 10;
        param0->unk_00 += param1;
    }

    return 1;
}

BOOL ov28_022571B8(UnkStruct_ov28_02256E9C *param0, u32 param1) {
    if (ov28_022574E8(param0) >= param0->unk_0A) {
        return 0;
    }

    param0->unk_00 *= 10;
    param0->unk_00 += param1;
    param0->unk_08++;

    return 1;
}

BOOL ov28_022571F4(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1) {
    if (param0->unk_00 != param1->unk_00) {
        return 0;
    }

    if (param0->unk_08 != param1->unk_08) {
        return 0;
    }

    if (param0->unk_09 != param1->unk_09) {
        if (param0->unk_00 != 0) {
            return 0;
        }
    }

    return 1;
}

BOOL ov28_02257240(const UnkStruct_ov28_02256E9C *param0, u32 param1) {
    u32 v0;

    if (param0->unk_0B) {
        return 0;
    }

    v0 = ov28_02257498(param0);

    if (param0->unk_08) {
        v0 += (1 + param0->unk_08);
    }

    if (v0 > param1) {
        return 0;
    }

    return 1;
}

BOOL ov28_0225726C(const UnkStruct_ov28_02256E9C *param0, u16 *param1) {
    u64 v0;
    u32 v1, v2;
    s32 v3;
    u16 *v4;

    if (param0->unk_0B) {
        return 0;
    }

    if (param0->unk_00 == 0) {
        *param1++ = 0;

        if (param0->unk_08) {
            *param1++ = 10;

            for (v3 = 0; v3 < param0->unk_08; v3++) {
                *param1++ = 0;
            }
        }

        *param1 = 13;
        return 1;
    }

    v0 = param0->unk_00;
    v1 = 1;

    while (v0 >= Unk_ov28_02257A50[v1]) {
        v1++;
    }

    v2 = v1;
    v3 = param0->unk_08 - v1;

    if (v3 >= 0) {
        v2 += (2 + v3);
    } else if (param0->unk_08) {
        v2 += 1;
    }

    if ((v2 + param0->unk_09) > param0->unk_0A) {
        return 0;
    }

    if (param0->unk_09 == 1) {
        *param1++ = 11;
    }

    v4 = param1;

    if (v3 >= 0) {
        *v4++ = 0;
        *v4++ = 10;

        while (v3--) {
            *v4++ = 0;
        }
    } else {
        s32 v5 = v3 * -1;

        for (v3 = 0; v3 < v5; v3++) {
            CP_SetDiv64_64(v0, Unk_ov28_02257A50[v1 - 1 - v3]);
            *v4++ = 0 + CP_GetDivResult32();
            v0 = CP_GetDivRemainder64();
        }

        if (param0->unk_08) {
            *v4++ = 10;
        }
    }

    if ((v4 - param1) < v2) {
        s32 v6 = v2 - (v4 - param1);

        for (v3 = 0; v3 < v6; v3++) {
            CP_SetDiv64_64(v0, Unk_ov28_02257A50[v6 - 1 - v3]);
            *v4++ = 0 + CP_GetDivResult32();
            v0 = CP_GetDivRemainder64();
        }
    }

    *v4 = 13;

    return 1;
}

s64 ov28_02257468(const UnkStruct_ov28_02256E9C *param0) {
    s64 v0 = param0->unk_00;

    v0 /= Unk_ov28_02257A50[param0->unk_08];

    if (param0->unk_09 == 1) {
        v0 *= -1;
    }

    return v0;
}

static u32 ov28_02257498(const UnkStruct_ov28_02256E9C *param0) {
    u64 v0 = 10;
    u32 v1 = 1;

    while (param0->unk_00 >= v0) {
        if (++v1 > param0->unk_0A) {
            break;
        }

        v0 *= 10;
    }

    if (v1 > param0->unk_08) {
        v1 -= param0->unk_08;
    } else {
        v1 = 1;
    }

    v1 += param0->unk_09;

    return v1;
}

static u32 ov28_022574E8(const UnkStruct_ov28_02256E9C *param0) {
    u32 v0 = ov28_02257498(param0);

    if (param0->unk_08) {
        v0 += (1 + param0->unk_08);
    }

    return v0;
}

static void ov28_022574FC(UnkStruct_ov28_02256E9C *param0) {
    u32 v0;

    if (param0->unk_08) {
        CP_SetDiv64_32(param0->unk_00, 10);

        while (CP_GetDivRemainder64() == 0) {
            param0->unk_00 = CP_GetDivResult64();
            CP_SetDiv64_32(param0->unk_00, 10);

            if (--(param0->unk_08) == 0) {
                break;
            }
        }
    }

    v0 = ov28_02257498(param0);

    if (param0->unk_08) {
        v0 += (1 + param0->unk_08);

        if (v0 > param0->unk_0A) {
            u32 v1 = v0 - param0->unk_0A;

            if (v1 <= param0->unk_08) {
                CP_SetDiv64_32(param0->unk_00, Unk_ov28_02257A50[v1]);
                param0->unk_00 = CP_GetDivResult64();
                param0->unk_08 -= v1;
            }
        }
    }
}

static void ov28_022575EC(const UnkStruct_ov28_02256E9C *param0, const UnkStruct_ov28_02256E9C *param1, UnkStruct_ov28_02256E9C *param2, UnkStruct_ov28_02256E9C *param3) {
    *param2 = *param0;
    *param3 = *param1;

    if (param2->unk_08 < param3->unk_08) {
        UnkStruct_ov28_02256E9C *v0 = param2;

        param2 = param3;
        param3 = v0;
    }

    {
        u32 v1 = param2->unk_08 - param3->unk_08;

        param3->unk_00 *= Unk_ov28_02257A50[v1];
        param3->unk_08 = param2->unk_08;
    }
}
