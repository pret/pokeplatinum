#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_0202631C.h"
#include "pokemon.h"
#include "unk_020986CC.h"

typedef struct UnkStruct_02026324_t {
    u32 unk_00;
    u32 unk_04[16];
    u32 unk_44[16];
    u32 unk_84[2][16];
    u32 unk_104;
    u8 unk_108;
    u8 unk_109;
    u8 unk_10A;
    u8 unk_10B;
    u8 unk_10C[28];
    u8 unk_128[496];
    u8 unk_318;
    u8 unk_319;
    u8 unk_31A;
    u8 unk_31B;
    u32 unk_31C;
    u8 unk_320;
    u8 unk_321;
    u16 unk_322;
} UnkStruct_02026324;

int sub_0202631C (void)
{
    return sizeof(UnkStruct_02026324);
}

UnkStruct_02026324 * sub_02026324 (u32 param0)
{
    UnkStruct_02026324 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02026324));
    sub_02026D6C(v0);

    return v0;
}

void sub_02026338 (const UnkStruct_02026324 * param0, UnkStruct_02026324 * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_02026324));
}

static inline void inline_02026DD0 (const UnkStruct_02026324 * param0)
{
    GF_ASSERT(param0->unk_00 == 3203386110);
}

static BOOL sub_02026344 (u16 param0)
{
    if ((param0 == 0) || (param0 > 493)) {
        GF_ASSERT(0);
        return 1;
    } else {
        return 0;
    }
}

static inline BOOL inline_02026464 (const u8 * param0, u16 param1)
{
    param1--;
    return 0 != (param0[param1 >> 3] & (1 << (param1 & 7)));
}

static inline void inline_0202736C_sub (u8 * param0, u16 param1)
{
    param1--;
    param0[param1 >> 3] |= 1 << (param1 & 7);
}

static inline void inline_02026360 (u8 * param0, u8 param1, u16 param2)
{
    GF_ASSERT(param1 < 2);

    param2--;

    param0[param2 >> 3] &= ~(1 << (param2 & 7));
    param0[param2 >> 3] |= param1 << (param2 & 7);
}

static inline u32 inline_020266F8 (const u8 * param0, u16 param1)
{
    return (param0[param1 >> 2] >> ((param1 & 3) * 2)) & 0x3;
}

static inline void inline_020267B8 (u8 * param0, u8 param1, u16 param2)
{
    GF_ASSERT(param1 < 4);

    param0[param2 >> 2] &= ~(0x3 << ((param2 & 3) * 2));
    param0[param2 >> 2] |= param1 << ((param2 & 3) * 2);
}

static inline void inline_0202736C (UnkStruct_02026324 * param0, u16 param1)
{
    inline_0202736C_sub((u8 *)param0->unk_44, param1);
}

static inline void inline_sub_0202736C_1 (UnkStruct_02026324 * param0, u16 param1)
{
    inline_0202736C_sub((u8 *)param0->unk_04, param1);
}

static void sub_02026360 (UnkStruct_02026324 * param0, u8 param1, u8 param2, u16 param3)
{
    if (param2 == 0) {
        inline_02026360((u8 *)param0->unk_84[1], param1, param3);
    }

    inline_02026360((u8 *)param0->unk_84[param2], param1, param3);
}

static void sub_020263D8 (UnkStruct_02026324 * param0, u8 param1, u8 param2, u16 param3)
{
    GF_ASSERT(param1 <= 2);

    if (param1 == 2) {
        param1 = 0;
    }

    sub_02026360(param0, param1, param2, param3);
}

static inline BOOL inline_02026FE8 (const UnkStruct_02026324 * param0, u16 param1)
{
    return inline_02026464((const u8 *)param0->unk_44, param1);
}

static inline BOOL inline_02026F9C (const UnkStruct_02026324 * param0, u16 param1)
{
    return inline_02026464((const u8 *)param0->unk_04, param1);
}

static inline u8 inline_02026BAC (const UnkStruct_02026324 * param0, u16 param1, u8 param2)
{
    return inline_02026464((const u8 *)param0->unk_84[param2], param1);
}

static inline void inline_0202736C_1 (UnkStruct_02026324 * param0, u16 param1, u32 param2)
{
    if (param1 == 327) {
        param0->unk_104 = param2;
    }
}

static int sub_02026400 (const UnkStruct_02026324 * param0)
{
    int v0;

    for (v0 = 0; v0 < 28; v0++) {
        if (param0->unk_10C[v0] == 0xff) {
            break;
        }
    }

    return v0;
}

static BOOL sub_02026418 (const UnkStruct_02026324 * param0, u8 param1)
{
    int v0;

    for (v0 = 0; v0 < 28; v0++) {
        if (param0->unk_10C[v0] == param1) {
            return 1;
        }
    }

    return 0;
}

static void sub_0202643C (UnkStruct_02026324 * param0, int param1)
{
    int v0;

    if (sub_02026418(param0, param1)) {
        return;
    }

    v0 = sub_02026400(param0);

    if (v0 < 28) {
        param0->unk_10C[v0] = param1;
    }
}

static int sub_02026464 (const UnkStruct_02026324 * param0, u32 param1)
{
    u32 v0;
    u32 v1;
    const u8 * v2;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (sub_02026FE8(param0, param1) == 0) {
        return 0;
    }

    switch (param1) {
    case 422:
        v2 = &param0->unk_108;
        break;
    case 423:
        v2 = &param0->unk_109;
        break;
    case 492:
        v2 = &param0->unk_320;
        break;
    case 487:
        v2 = &param0->unk_321;
        break;
    }

    v0 = inline_02026464(v2, 1);
    v1 = inline_02026464(v2, 2);

    if (v0 == v1) {
        return 1;
    }

    return 2;
}

static BOOL sub_02026514 (const UnkStruct_02026324 * param0, u32 param1, u8 param2)
{
    u32 v0;
    u32 v1;
    u32 v2;
    const u8 * v3;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (sub_02026FE8(param0, param1) == 0) {
        return 0;
    }

    switch (param1) {
    case 422:
        v3 = &param0->unk_108;
        break;
    case 423:
        v3 = &param0->unk_109;
        break;
    case 492:
        v3 = &param0->unk_320;
        break;
    case 487:
        v3 = &param0->unk_321;
        break;
    }

    v2 = sub_02026464(param0, param1);

    for (v1 = 0; v1 < v2; v1++) {
        v0 = inline_02026464(v3, v1 + 1);

        if (v0 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_020265E8 (UnkStruct_02026324 * param0, u32 param1, int param2)
{
    int v0;
    u8 * v1;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (sub_02026514(param0, param1, param2)) {
        return;
    }

    switch (param1) {
    case 422:
        v1 = &param0->unk_108;
        break;
    case 423:
        v1 = &param0->unk_109;
        break;
    case 492:
        v1 = &param0->unk_320;
        break;
    case 487:
        v1 = &param0->unk_321;
        break;
    }

    v0 = sub_02026464(param0, param1);

    if (v0 < 2) {
        inline_02026360(v1, param2, v0 + 1);

        if (v0 == 0) {
            inline_02026360(v1, param2, v0 + 2);
        }
    }
}

static int sub_020266F8 (const UnkStruct_02026324 * param0, u32 param1)
{
    u32 v0;
    int v1;
    const u8 * v2;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (sub_02026FE8(param0, param1) == 0) {
        return 0;
    }

    if (param1 == 412) {
        v2 = &param0->unk_10A;
    } else {
        v2 = &param0->unk_10B;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0 = inline_020266F8(v2, v1);

        if (v0 == 3) {
            break;
        }
    }

    return v1;
}

static BOOL sub_02026754 (const UnkStruct_02026324 * param0, u32 param1, u8 param2)
{
    u32 v0;
    int v1;
    const u8 * v2;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (sub_02026FE8(param0, param1) == 0) {
        return 0;
    }

    if (param1 == 412) {
        v2 = &param0->unk_10A;
    } else {
        v2 = &param0->unk_10B;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0 = inline_020266F8(v2, v1);

        if (v0 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_020267B8 (UnkStruct_02026324 * param0, u32 param1, int param2)
{
    int v0;
    u8 * v1;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (sub_02026754(param0, param1, param2)) {
        return;
    }

    if (param1 == 412) {
        v1 = &param0->unk_10A;
    } else {
        v1 = &param0->unk_10B;
    }

    v0 = sub_020266F8(param0, param1);

    if (v0 < 3) {
        inline_020267B8(v1, param2, v0);
    }
}

static void sub_02026834 (u32 * param0, u8 param1, u8 param2)
{
    u32 v0 = (24 + (param2 * 4));
    u32 v1 = ~(15 << v0);

    param0[16 - 1] &= v1;
    param0[16 - 1] |= (param1 << v0);
}

static void sub_02026850 (UnkStruct_02026324 * param0, u8 param1, u8 param2)
{
    GF_ASSERT(param2 < 4);
    GF_ASSERT(param1 <= 15);

    if (param2 < 2) {
        sub_02026834(param0->unk_04, param1, param2);
    } else {
        sub_02026834(param0->unk_44, param1, param2 - 2);
    }
}

static inline u32 inline_0202688C (const u32 * param0, u8 param1)
{
    u32 v0 = (24 + (param1 * 4));
    u32 v1 = (param0[16 - 1] >> v0) & 15;

    return v1;
}

static u32 sub_0202688C (const UnkStruct_02026324 * param0, u8 param1)
{
    u32 v0;

    if (param1 < 2) {
        v0 = inline_0202688C(param0->unk_04, param1);
    } else {
        v0 = inline_0202688C(param0->unk_44, param1 - 2);
    }

    return v0;
}

static u32 sub_020268B8 (const UnkStruct_02026324 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_0202688C(param0, v0) == 15) {
            break;
        }
    }

    return v0;
}

static BOOL sub_020268D8 (const UnkStruct_02026324 * param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_0202688C(param0, v0) == param1) {
            return 1;
        }
    }

    return 0;
}

static void sub_020268FC (UnkStruct_02026324 * param0, u16 param1, Pokemon * param2)
{
    u8 v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
    u32 v1;

    if (param1 == 386) {
        if (sub_020268D8(param0, v0) == 0) {
            v1 = sub_020268B8(param0);
            sub_02026850(param0, v0, v1);
        }
    }
}

static void sub_0202693C (UnkStruct_02026324 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02026850(param0, 0xf, v0);
    }
}

static inline u32 inline_02026958 (u32 param0, u32 param1)
{
    return (param0 >> (param1 * 3)) & 0x7;
}

static inline void inline_02026A00 (u32 * param0, u32 param1, u32 param2)
{
    GF_ASSERT(param2 < 0x7);

    (*param0) &= ~(0x7 << (param1 * 3));
    (*param0) |= (param2 << (param1 * 3));
}

static int sub_02026958 (const UnkStruct_02026324 * param0, u32 param1)
{
    u32 v0;
    int v1, v2;

    GF_ASSERT(param1 == 479);

    if (sub_02026FE8(param0, param1) == 0) {
        return 0;
    }

    v2 = 0;

    for (v1 = 0; v1 < 6; v1++) {
        v0 = inline_02026958(param0->unk_31C, v1);

        if (v0 != 0x7) {
            v2++;
        } else {
            break;
        }
    }

    return v2;
}

static BOOL sub_020269A4 (const UnkStruct_02026324 * param0, u32 param1, u8 param2)
{
    int v0;
    u32 v1;
    u32 v2;

    GF_ASSERT((param1 == 479));

    if (sub_02026FE8(param0, param1) == 0) {
        return 0;
    }

    v1 = sub_02026958(param0, param1);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = inline_02026958(param0->unk_31C, v0);

        if (v2 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_02026A00 (UnkStruct_02026324 * param0, u32 param1, int param2)
{
    int v0;

    GF_ASSERT((param1 == 479));

    if (sub_020269A4(param0, param1, param2)) {
        return;
    }

    v0 = sub_02026958(param0, param1);

    if (v0 < 6) {
        inline_02026A00(&param0->unk_31C, v0, param2);
    }
}

static void sub_02026A60 (UnkStruct_02026324 * param0, u16 param1, Pokemon * param2)
{
    int v0;

    switch (param1) {
    case 201:
        v0 = Pokemon_GetForm(param2);
        sub_0202643C(param0, v0);
        break;
    case 412:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020267B8(param0, param1, v0);
        break;
    case 413:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020267B8(param0, param1, v0);
        break;
    case 422:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case 423:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case 386:
        sub_020268FC(param0, param1, param2);
        break;
    case 492:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case 487:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case 479:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_02026A00(param0, param1, v0);
        break;
    default:
        break;
    }
}

static void sub_02026B88 (UnkStruct_02026324 * param0, u16 param1, u32 param2)
{
    int v0;
    int v1;

    v0 = param1;
    v1 = sub_020986CC(param2);

    if (v1 == 6) {
        return;
    }

    param0->unk_128[v0] |= 1 << v1;
}

static u32 sub_02026BAC (const UnkStruct_02026324 * param0, u16 param1, int param2)
{
    u32 v0, v1;
    u32 v2;

    if (PokemonPersonalData_GetSpeciesValue(param1, 18) == 255) {
        if (param2 == 0) {
            return 2;
        } else {
            return -1;
        }
    }

    v0 = inline_02026BAC(param0, param1, 0);

    if (param2 == 1) {
        v1 = inline_02026BAC(param0, param1, 1);

        if (v1 == v0) {
            v2 = -1;
        } else {
            v2 = v1;
        }
    } else {
        v2 = v0;
    }

    return v2;
}

static inline int inline_020270AC (const UnkStruct_02026324 * param0, int param1)
{
    return param0->unk_10C[param1];
}

static int sub_02026C24 (const UnkStruct_02026324 * param0, u32 param1, int param2)
{
    const u8 * v0;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));
    GF_ASSERT(param2 < 2);

    switch (param1) {
    case 422:
        v0 = &param0->unk_108;
        break;
    case 423:
        v0 = &param0->unk_109;
        break;
    case 492:
        v0 = &param0->unk_320;
        break;
    case 487:
        v0 = &param0->unk_321;
        break;
    }

    return inline_02026464(v0, param2 + 1);
}

static int sub_02026CCC (const UnkStruct_02026324 * param0, u32 param1, int param2)
{
    GF_ASSERT((param1 == 479));
    GF_ASSERT(param2 < 6);

    return inline_02026958(param0->unk_31C, param2);
}

static int sub_02026CFC (const UnkStruct_02026324 * param0, u32 param1, int param2)
{
    const u8 * v0;

    GF_ASSERT((param1 == 412) || (param1 == 413));
    GF_ASSERT(param2 < 3);

    if (param1 == 412) {
        v0 = &param0->unk_10A;
    } else {
        v0 = &param0->unk_10B;
    }

    return inline_020266F8(v0, param2);
}

static BOOL sub_02026D44 (u16 param0)
{
    int v0;
    BOOL v1;
    static const u16 v2[11] = {
        0x97,
        0xF9,
        0xFA,
        0xFB,
        0x181,
        0x182,
        0x1E9,
        0x1EA,
        0x1EB,
        0x1EC,
        0x1ED
    };

    v1 = 1;

    for (v0 = 0; v0 < 11; v0++) {
        if (v2[v0] == param0) {
            v1 = 0;
        }
    }

    return v1;
}

static BOOL sub_02026D68 (u16 param0)
{
    return 1;
}

void sub_02026D6C (UnkStruct_02026324 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_02026324));

    param0->unk_00 = 3203386110;
    param0->unk_31B = 0;

    memset(param0->unk_10C, 0xff, sizeof(u8) * 28);

    param0->unk_108 = 0xff;
    param0->unk_109 = 0xff;
    param0->unk_10A = 0xff;
    param0->unk_10B = 0xff;
    param0->unk_31C = 0xffffffff;
    param0->unk_320 = 0xff;
    param0->unk_321 = 0xff;

    sub_0202693C(param0);
}

u16 sub_02026DD0 (const UnkStruct_02026324 * param0)
{
    int v0;
    int v1;

    inline_02026DD0(param0);
    v1 = 0;

    for (v0 = 1; v0 <= 493; v0++) {
        if (sub_02026F9C(param0, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

u16 sub_02026E0C (const UnkStruct_02026324 * param0)
{
    int v0;
    int v1;

    inline_02026DD0(param0);
    v1 = 0;

    for (v0 = 1; v0 <= 493; v0++) {
        if (sub_02026FE8(param0, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

u16 sub_02026E48 (const UnkStruct_02026324 * param0)
{
    if (sub_02027474(param0)) {
        return sub_02026E0C(param0);
    }

    return sub_02026EAC(param0);
}

u16 sub_02026E64 (const UnkStruct_02026324 * param0)
{
    int v0;
    int v1;

    inline_02026DD0(param0);
    v1 = 0;

    for (v0 = 1; v0 <= 493; v0++) {
        if (sub_02026F9C(param0, v0) == 1) {
            if (sub_020775A4(v0) != 0) {
                v1++;
            }
        }
    }

    return v1;
}

u16 sub_02026EAC (const UnkStruct_02026324 * param0)
{
    int v0;
    int v1;

    inline_02026DD0(param0);
    v1 = 0;

    for (v0 = 1; v0 <= 493; v0++) {
        if (sub_02026FE8(param0, v0) == 1) {
            if (sub_020775A4(v0) != 0) {
                v1++;
            }
        }
    }

    return v1;
}

BOOL sub_02026EF4 (const UnkStruct_02026324 * param0)
{
    u16 v0;

    v0 = sub_02026F20(param0);

    if (v0 >= 482) {
        return 1;
    }

    return 0;
}

BOOL sub_02026F0C (const UnkStruct_02026324 * param0)
{
    u16 v0;

    v0 = sub_02026F58(param0);

    if (v0 >= 210) {
        return 1;
    }

    return 0;
}

u16 sub_02026F20 (const UnkStruct_02026324 * param0)
{
    int v0;
    u16 v1;

    v1 = 0;

    for (v0 = 1; v0 <= 493; v0++) {
        if (sub_02026F9C(param0, v0) == 1) {
            if (sub_02026D44(v0) == 1) {
                v1++;
            }
        }
    }

    return v1;
}

u16 sub_02026F58 (const UnkStruct_02026324 * param0)
{
    int v0;
    u16 v1;
    u32 v2;

    v1 = 0;

    for (v0 = 1; v0 <= 493; v0++) {
        if (sub_02026FE8(param0, v0) == 1) {
            v2 = sub_020775A4(v0);

            if (v2 != 0) {
                if (sub_02026D68(v0) == 1) {
                    v1++;
                }
            }
        }
    }

    return v1;
}

BOOL sub_02026F9C (const UnkStruct_02026324 * param0, u16 param1)
{
    inline_02026DD0(param0);

    if (sub_02026344(param1)) {
        return 0;
    }

    if (inline_02026F9C(param0, param1) && inline_02026FE8(param0, param1)) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_02026FE8 (const UnkStruct_02026324 * param0, u16 param1)
{
    inline_02026DD0(param0);

    if (sub_02026344(param1)) {
        return 0;
    }

    return inline_02026FE8(param0, param1);
}

u32 sub_0202702C (const UnkStruct_02026324 * param0, u8 param1)
{
    u32 v0;

    inline_02026DD0(param0);

    switch (param1) {
    case 0:
        v0 = param0->unk_104;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

u32 sub_02027058 (const UnkStruct_02026324 * param0, u16 param1, int param2)
{
    inline_02026DD0(param0);

    if (sub_02026344(param1)) {
        return -1;
    }

    if (!inline_02026FE8(param0, param1)) {
        return -1;
    }

    return sub_02026BAC(param0, param1, param2);
}

u32 sub_020270AC (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);

    if (sub_02026400(param0) <= param1) {
        return -1;
    }

    return inline_020270AC(param0, param1);
}

u32 sub_020270DC (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return sub_02026400(param0);
}

u32 sub_020270F8 (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);

    if (sub_02026464(param0, 422) <= param1) {
        return -1;
    }

    return sub_02026C24(param0, 422, param1);
}

u32 sub_02027130 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return sub_02026464(param0, 422);
}

u32 sub_02027154 (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);

    if (sub_02026464(param0, 423) <= param1) {
        return -1;
    }

    return sub_02026C24(param0, 423, param1);
}

u32 sub_0202718C (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return sub_02026464(param0, 423);
}

u32 sub_020271B0 (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);

    if (sub_020266F8(param0, 412) <= param1) {
        return -1;
    }

    return sub_02026CFC(param0, 412, param1);
}

u32 sub_020271E8 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return sub_020266F8(param0, 412);
}

u32 sub_02027208 (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);

    if (sub_020266F8(param0, 413) <= param1) {
        return -1;
    }

    return sub_02026CFC(param0, 413, param1);
}

u32 sub_02027240 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return sub_020266F8(param0, 413);
}

u32 sub_02027264 (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);
    return sub_0202688C(param0, param1);
}

u32 sub_02027288 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return sub_020268B8(param0);
}

void sub_020272A4 (UnkStruct_02026324 * param0, Pokemon * param1)
{
    u16 v0 = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    u32 v1 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
    u32 v2 = Pokemon_GetGender(param1);
    u32 v3;

    inline_02026DD0(param0);

    if (sub_02026344(v0)) {
        return;
    }

    if (!inline_02026FE8(param0, v0)) {
        inline_0202736C_1(param0, v0, v1);
        sub_020263D8(param0, v2, 0, v0);
    } else {
        v3 = inline_02026BAC(param0, v0, 0);

        if (v3 != v2) {
            sub_020263D8(param0, v2, 1, v0);
        }
    }

    sub_02026A60(param0, v0, param1);
    inline_0202736C(param0, v0);
}

void sub_0202736C (UnkStruct_02026324 * param0, Pokemon * param1)
{
    u16 v0 = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    u32 v1 = Pokemon_GetValue(param1, MON_DATA_LANGUAGE, NULL);
    u32 v2 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
    u32 v3 = Pokemon_GetGender(param1);
    u32 v4;

    inline_02026DD0(param0);

    if (sub_02026344(v0)) {
        return;
    }

    if (!inline_02026FE8(param0, v0)) {
        inline_0202736C_1(param0, v0, v2);
        sub_020263D8(param0, v3, 0, v0);
    } else {
        v4 = inline_02026BAC(param0, v0, 0);

        if (v4 != v3) {
            sub_020263D8(param0, v3, 1, v0);
        }
    }

    sub_02026A60(param0, v0, param1);
    sub_02026B88(param0, v0, v1);

    inline_sub_0202736C_1(param0, v0);
    inline_0202736C(param0, v0);
}

void sub_02027454 (UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    param0->unk_31B = 1;
}

BOOL sub_02027474 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return param0->unk_31B;
}

BOOL sub_02027494 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return param0->unk_318;
}

void sub_020274B0 (UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    param0->unk_318 = 1;
}

BOOL sub_020274D0 (const UnkStruct_02026324 * param0, u16 param1, u32 param2)
{
    int v0;

    GF_ASSERT(param2 < 8);

    inline_02026DD0(param0);

    v0 = param1;
    param2 = sub_020986CC(param2);

    return param0->unk_128[v0] & (1 << param2);
}

void sub_02027508 (UnkStruct_02026324 * param0)
{
    param0->unk_319 = 1;
}

BOOL sub_02027514 (const UnkStruct_02026324 * param0)
{
    return param0->unk_319;
}

BOOL sub_02027520 (const UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    return param0->unk_31A;
}

void sub_02027540 (UnkStruct_02026324 * param0)
{
    inline_02026DD0(param0);
    param0->unk_31A = 1;
}

UnkStruct_02026324 * sub_02027560 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02026324 * v0;

    v0 = sub_020245BC(param0, 7);
    return v0;
}

u32 sub_0202756C (const UnkStruct_02026324 * param0, int param1, int param2)
{
    inline_02026DD0(param0);

    switch (param1) {
    case 201:
        if (param2 < sub_020270DC(param0)) {
            return sub_020270AC(param0, param2);
        }
        break;
    case 422:
        if (param2 < sub_02027130(param0)) {
            return sub_020270F8(param0, param2);
        }
        break;
    case 423:
        if (param2 < sub_0202718C(param0)) {
            return sub_02027154(param0, param2);
        }
        break;
    case 412:
        if (param2 < sub_020271E8(param0)) {
            return sub_020271B0(param0, param2);
        }
        break;
    case 413:
        if (param2 < sub_02027240(param0)) {
            return sub_02027208(param0, param2);
        }
        break;
    case 386:
        if (param2 < sub_02027288(param0)) {
            return sub_02027264(param0, param2);
        }
        break;
    case 492:
        if (param2 < sub_02026464(param0, 492)) {
            return sub_02026C24(param0, 492, param2);
        }
        break;
    case 487:
        if (param2 < sub_02026464(param0, 487)) {
            return sub_02026C24(param0, 487, param2);
        }
        break;
    case 479:
        if (param2 < sub_02026958(param0, 479)) {
            return sub_02026CCC(param0, 479, param2);
        }
        break;
    default:
        break;
    }

    return 0;
}

u32 sub_020276C8 (const UnkStruct_02026324 * param0, int param1)
{
    inline_02026DD0(param0);

    switch (param1) {
    case 201:
        return sub_020270DC(param0);
    case 422:
        return sub_02027130(param0);
    case 423:
        return sub_0202718C(param0);
    case 412:
        return sub_020271E8(param0);
    case 413:
        return sub_02027240(param0);
    case 386:
        return sub_02027288(param0);
    case 492:
        return sub_02026464(param0, 492);
    case 487:
        return sub_02026464(param0, 487);
    case 479:
        return sub_02026958(param0, 479);
    default:
        break;
    }

    return 1;
}
