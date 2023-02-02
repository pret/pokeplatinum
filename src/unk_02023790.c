#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"

#include "heap.h"
#include "unk_02023790.h"

struct UnkStruct_02023790_t {
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u16 unk_08[1];
};

UnkStruct_02023790 * sub_02023790 (u32 param0, u32 param1)
{
    UnkStruct_02023790 * v0;

    v0 = Heap_AllocFromHeap(param1, (sizeof(UnkStruct_02023790) - sizeof(u16)) + sizeof(u16) * param0);

    if (v0) {
        v0->unk_04 = 0xb6f8d2ec;
        v0->unk_00 = param0;
        v0->unk_02 = 0;
        v0->unk_08[0] = 0xffff;
    }

    return v0;
}

void sub_020237BC (UnkStruct_02023790 * param0)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    param0->unk_04 = 0xb6f8d2ec + 1;
    Heap_FreeToHeap(param0);
}

void sub_020237E8 (UnkStruct_02023790 * param0)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    param0->unk_02 = 0;
    param0->unk_08[0] = 0xffff;
}

void sub_02023810 (UnkStruct_02023790 * param0, const UnkStruct_02023790 * param1)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;
    GF_ASSERT((param1) != NULL); GF_ASSERT((param1)->unk_04 == 0xb6f8d2ec);;

    if (param0->unk_00 > param1->unk_02) {
        memcpy(param0->unk_08, param1->unk_08, (param1->unk_02 + 1) * sizeof(u16));
        param0->unk_02 = param1->unk_02;
        return;
    }

    GF_ASSERT(0);
}

UnkStruct_02023790 * sub_02023868 (const UnkStruct_02023790 * param0, u32 param1)
{
    UnkStruct_02023790 * v0;

    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    v0 = sub_02023790(param0->unk_02 + 1, param1);

    if (v0) {
        sub_02023810(v0, param0);
    }

    return v0;
}

void sub_020238A0 (UnkStruct_02023790 * param0, int param1, u32 param2, int param3, int param4)
{
    static const u32 v0[] = {
        1,
        10,
        100,
        1000,
        10000,
        100000,
        1000000,
        10000000,
        100000000,
        1000000000
    };
    int v1;
    static const u16 v2[] = {
        0xa2,
        0xa3,
        0xa4,
        0xa5,
        0xa6,
        0xa7,
        0xa8,
        0xa9,
        0xaa,
        0xab
    };
    static const u16 v3[] = {
        0x121,
        0x122,
        0x123,
        0x124,
        0x125,
        0x126,
        0x127,
        0x128,
        0x129,
        0x12a
    };

    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    v1 = (param1 < 0);

    if (param0->unk_00 > (param2 + v1)) {
        u32 v4, v5, v6;
        const u16 * v7 = (param4 == 0) ? v2 : v3;

        sub_020237E8(param0);

        if (v1) {
            param1 *= -1;
            param0->unk_08[param0->unk_02++] = (param4 == 0) ? 0xf1 : 0x1be;
        }

        for (v6 = v0[param2 - 1]; v6 > 0; v6 /= 10) {
            v5 = (u16)(param1 / v6);
            v4 = (u32)(param1 - (v6 * v5));

            if (param3 == 2) {
                param0->unk_08[param0->unk_02++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if ((v5 != 0) || (v6 == 1)) {
                param3 = 2;
                param0->unk_08[param0->unk_02++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if (param3 == 1) {
                param0->unk_08[param0->unk_02++] = (param4 == 0) ? 0x1 : 0x1e2;
            }

            param1 = v4;
        }

        param0->unk_08[param0->unk_02] = 0xffff;
        return;
    }

    GF_ASSERT(0);
}

void sub_020239D4 (UnkStruct_02023790 * param0, u64 param1, u32 param2, int param3, int param4)
{
    static const u64 v0[] = {
        1,
        10,
        100,
        1000,
        10000,
        100000,
        1000000,
        10000000,
        100000000,
        1000000000,
        10000000000,
        100000000000,
        1000000000000,
        10000000000000,
        100000000000000,
        1000000000000000,
        10000000000000000,
        100000000000000000,
        1000000000000000000,
        10000000000000000000
    };
    int v1;
    static const u16 v2[] = {
        0xa2,
        0xa3,
        0xa4,
        0xa5,
        0xa6,
        0xa7,
        0xa8,
        0xa9,
        0xaa,
        0xab
    };
    static const u16 v3[] = {
        0x121,
        0x122,
        0x123,
        0x124,
        0x125,
        0x126,
        0x127,
        0x128,
        0x129,
        0x12a
    };

    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    v1 = (param1 < 0);

    if (param0->unk_00 > (param2 + v1)) {
        u64 v4, v5, v6;
        const u16 * v7 = (param4 == 0) ? v2 : v3;

        sub_020237E8(param0);

        if (v1) {
            param1 *= -1;
            param0->unk_08[param0->unk_02++] = (param4 == 0) ? 0xf1 : 0x1be;
        }

        for (v6 = v0[param2 - 1]; v6 > 0; v6 /= 10) {
            v5 = (u64)(param1 / v6);
            v4 = (u64)(param1 - (v6 * v5));

            if (param3 == 2) {
                param0->unk_08[param0->unk_02++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if ((v5 != 0) || (v6 == 1)) {
                param3 = 2;
                param0->unk_08[param0->unk_02++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if (param3 == 1) {
                param0->unk_08[param0->unk_02++] = (param4 == 0) ? 0x1 : 0x1de;
            }

            param1 = v4;
        }

        param0->unk_08[param0->unk_02] = 0xffff;
        return;
    }

    GF_ASSERT(0);
}

u64 sub_02023B38 (const UnkStruct_02023790 * param0, BOOL * param1)
{
    u64 v0 = 0, v1 = 0, v2 = 1;
    int v3;
    u16 v4;
    u16 v5 = 0xa2;
    u16 v6 = 0x121;

    if (param0->unk_02 > 18) {
        return 0;
    }

    for (v3 = (param0->unk_02 - 1); v3 >= 0; v3--) {
        v4 = param0->unk_08[v3];
        v0 = v4 - v5;

        if (v0 >= 10) {
            v0 = v4 - v6;

            if (v0 >= 10) {
                *param1 = 0;
                return v1;
            }
        }

        v0 = v0 * v2;
        v1 += v0;
        v2 *= 10;
    }

    *param1 = 1;
    return v1;
}

int sub_02023BE0 (const UnkStruct_02023790 * param0, const UnkStruct_02023790 * param1)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;
    GF_ASSERT((param1) != NULL); GF_ASSERT((param1)->unk_04 == 0xb6f8d2ec);;

    {
        int v0;

        for (v0 = 0; param0->unk_08[v0] == param1->unk_08[v0]; v0++) {
            if (param0->unk_08[v0] == 0xffff) {
                return 0;
            }
        }

        return 1;
    }
}

u32 sub_02023C3C (const UnkStruct_02023790 * param0)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;
    return param0->unk_02;
}

u32 sub_02023C5C (const UnkStruct_02023790 * param0)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    {
        int v0;
        u32 v1;

        for (v0 = 0, v1 = 1; v0 < param0->unk_02; v0++) {
            if (param0->unk_08[v0] == 0xe000) {
                v1++;
            }
        }

        return v1;
    }
}

void sub_02023C9C (UnkStruct_02023790 * param0, const UnkStruct_02023790 * param1, u32 param2)
{
    GF_ASSERT((param1) != NULL); GF_ASSERT((param1)->unk_04 == 0xb6f8d2ec);;
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    {
        int v0 = 0;

        if (param2) {
            for (v0 = 0; v0 < param1->unk_02; v0++) {
                if (param1->unk_08[v0] == 0xe000) {
                    if (--param2 == 0) {
                        v0++;
                        break;
                    }
                }
            }
        }

        sub_020237E8(param0);

        for ( ; v0 < param1->unk_02; v0++) {
            if (param1->unk_08[v0] == 0xe000) {
                break;
            }

            sub_02023EB0(param0, param1->unk_08[v0]);
        }
    }
}

void sub_02023D28 (UnkStruct_02023790 * param0, const u16 * param1)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    param0->unk_02 = 0;

    while (*param1 != 0xffff) {
        if (param0->unk_02 >= (param0->unk_00 - 1)) {
            GF_ASSERT(0);
            break;
        }

        param0->unk_08[param0->unk_02++] = *param1++;
    }

    param0->unk_08[param0->unk_02] = 0xffff;
}

void sub_02023D8C (UnkStruct_02023790 * param0, const u16 * param1, u32 param2)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    if (param2 <= param0->unk_00) {
        u32 v0;

        memcpy(param0->unk_08, param1, param2 * sizeof(u16));

        for (v0 = 0; v0 < param2; v0++) {
            if (param0->unk_08[v0] == 0xffff) {
                break;
            }
        }

        param0->unk_02 = v0;

        if (v0 == param2) {
            param0->unk_08[param2 - 1] = 0xffff;
        }

        return;
    }

    GF_ASSERT(0);
}

void sub_02023DF0 (const UnkStruct_02023790 * param0, u16 * param1, u32 param2)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    if ((param0->unk_02 + 1) <= param2) {
        memcpy(param1, param0->unk_08, (param0->unk_02 + 1) * sizeof(u16));
        return;
    }

    GF_ASSERT(0);
}

const u16 * sub_02023E2C (const UnkStruct_02023790 * param0)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;
    return param0->unk_08;
}

void sub_02023E4C (UnkStruct_02023790 * param0, const UnkStruct_02023790 * param1)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;
    GF_ASSERT((param1) != NULL); GF_ASSERT((param1)->unk_04 == 0xb6f8d2ec);;

    if ((param0->unk_02 + param1->unk_02 + 1) <= param0->unk_00) {
        memcpy(&(param0->unk_08[param0->unk_02]), param1->unk_08, (param1->unk_02 + 1) * sizeof(u16));
        param0->unk_02 += param1->unk_02;
        return;
    }

    GF_ASSERT(0);
}

void sub_02023EB0 (UnkStruct_02023790 * param0, u16 param1)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    if ((param0->unk_02 + 1) < param0->unk_00) {
        param0->unk_08[param0->unk_02++] = param1;
        param0->unk_08[param0->unk_02] = 0xffff;
        return;
    }

    GF_ASSERT(0);
}

BOOL sub_02023EF8 (UnkStruct_02023790 * param0)
{
    return (param0->unk_02 > 0) && (param0->unk_08[0] == 0xF100);
}

void sub_02023F10 (UnkStruct_02023790 * param0, UnkStruct_02023790 * param1)
{
    if (sub_02023EF8(param1)) {
        u32 v0;
        u16 * v1 = &param0->unk_08[param0->unk_02];
        u16 * v2 = &param1->unk_08[1];
        s32 v3 = 0;
        s32 v4 = 0;

        do {
            u16 v5;

            v5 = (*v2 >> v3) & 0x1FF;
            v3 += 9;

            if (v3 >= 15) {
                ++v2;
                v3 -= 15;

                if (v3) {
                    v5 |= (*v2 << (9 - v3)) & 0x1FF;
                }
            }

            if (v5 == 0x1FF) {
                break;
            }

            *v1++ = v5;
            ++v4;
        } while (TRUE);

        *v1 = 0xffff;
        param0->unk_02 += v4;
    } else {
        sub_02023E4C(param0, param1);
    }
}

void sub_02023F8C (UnkStruct_02023790 * param0, int param1)
{
    GF_ASSERT((param0) != NULL); GF_ASSERT((param0)->unk_04 == 0xb6f8d2ec);;

    if (param0->unk_02 > param1) {
        u16 v0 = param0->unk_08[param1];

        if ((v0 >= 0x145) && (v0 <= 0x15e)) {
            param0->unk_08[param1] -= 0x145 - 0x12b;
        }
    }
}
