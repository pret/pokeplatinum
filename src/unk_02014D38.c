#include "unk_02014D38.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "message.h"
#include "narc.h"
#include "savedata.h"
#include "strbuf.h"
#include "unk_02006E3C.h"
#include "unk_0201D15C.h"

static const u16 Unk_020E5522[] = {
    0x1F0,
    0x1D4,
    0x12,
    0x7C,
    0x26,
    0x26,
    0x6B,
    0x68,
    0x2F,
    0x20,
    0x17
};

static const u16 Unk_020E550C[] = {
    0x19C,
    0x288,
    0x270,
    0x263,
    0x1B7,
    0x1B8,
    0x1B9,
    0x1BA,
    0x1BB,
    0x1BC,
    0x1BD
};

static const u16 Unk_020E54D8[] = {
    0x441,
    0x599
};

static const u16 Unk_020E54CC[] = {
    0x4C0,
    0x4F0
};

static const u16 Unk_020E54F4[] = {
    0x4A7,
    0x4E1
};

static const u16 Unk_020E54F8[] = {
    0x479,
    0x498,
    0x49B,
    0x49C
};

static const u16 Unk_020E54EC[] = {
    0x48F,
    0x497
};

static const u16 Unk_020E54E8[] = {
    0x4FC,
    0x596
};

static const u16 Unk_020E54D4[] = {
    0x4BB,
    0x500
};

static const u16 Unk_020E54D0[] = {
    0x24E,
    0x3D2
};

static const u16 Unk_020E54DC[] = {
    0x42C,
    0x59D
};

static const u16 Unk_020E54F0[] = {
    0x4B0,
    0x4FF
};

static const u16 Unk_020E54E4[] = {
    0x4B6,
    0x505
};

static const u16 Unk_020E54E0[] = {
    0x47A,
    0x48D
};

static const struct {
    const u16 *unk_00;
    int unk_04;
} Unk_020E5538[] = {
    { Unk_020E54D8, 0x2 },
    { Unk_020E54CC, 0x2 },
    { Unk_020E54F4, 0x2 },
    { Unk_020E54F8, 0x4 },
    { Unk_020E54EC, 0x2 },
    { Unk_020E54E8, 0x2 },
    { Unk_020E54D4, 0x2 },
    { Unk_020E54D0, 0x2 },
    { Unk_020E54DC, 0x2 },
    { Unk_020E54F0, 0x2 },
    { Unk_020E54E4, 0x2 },
    { Unk_020E54E0, 0x2 }
};

typedef struct UnkStruct_02014D38_t {
    u32 unk_00;
    MessageLoader *unk_04[11];
} UnkStruct_02014D38;

typedef struct UnkStruct_02014EC4_t {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_02014EC4;

typedef struct UnkStruct_02014FB0_t {
    u32 unk_00;
    u32 *unk_04;
} UnkStruct_02014FB0;

void include_unk_020E5538(void);
BOOL sub_02014E4C(u16 param0, u32 *param1, u32 *param2);

void include_unk_020E5538(void)
{
    Unk_020E5538[0];
}

UnkStruct_02014D38 *sub_02014D38(u32 param0)
{
    int v0;
    UnkStruct_02014D38 *v1 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02014D38));

    for (v0 = 0; v0 < 11; v0++) {
        v1->unk_00 = param0;
        v1->unk_04[v0] = MessageLoader_Init(1, 26, Unk_020E550C[v0], param0);
    }

    return v1;
}

void sub_02014D70(UnkStruct_02014D38 *param0)
{
    int v0;

    for (v0 = 0; v0 < 11; v0++) {
        MessageLoader_Free(param0->unk_04[v0]);
    }

    Heap_FreeToHeap(param0);
}

void sub_02014D90(UnkStruct_02014D38 *param0, u16 param1, Strbuf *param2)
{
    u32 v0, v1;

    sub_02014E4C(param1, &v0, &v1);
    MessageLoader_GetStrbuf(param0->unk_04[v0], v1, param2);
}

void sub_02014DB8(u16 param0, Strbuf *param1)
{
    if (param0 != 0xffff) {
        u32 v0, v1;

        sub_02014E4C(param0, &v0, &v1);
        v0 = Unk_020E550C[v0];
        MessageBank_GetStrbufFromNARC(NARC_INDEX_MSGDATA__PL_MSG, v0, v1, 0, param1);
    } else {
        Strbuf_Clear(param1);
    }
}

u16 sub_02014DFC(u32 param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020E550C); v0++) {
        if (Unk_020E550C[v0] == param0) {
            u16 v1, v2;

            for (v2 = 0, v1 = 0; v2 < v0; v2++) {
                v1 += Unk_020E5522[v2];
            }

            return v1 + param1;
        }
    }

    return 0xffff;
}

BOOL sub_02014E4C(u16 param0, u32 *param1, u32 *param2)
{
    u32 v0, v1, v2;

    v2 = param0 & 0xfff;
    v1 = 0;

    for (v0 = 0; v0 < 11; v0++) {
        v1 += Unk_020E5522[v0];

        if (v2 < v1) {
            *param1 = v0;
            *param2 = (v2 - (v1 - Unk_020E5522[v0]));
            return 1;
        }
    }

    return 0;
}

u32 Sentence_SaveSize(void)
{
    return sizeof(UnkStruct_02014EC4);
}

void Sentence_Init(void *param0)
{
    static const struct {
        u8 unk_00;
        u8 unk_01;
    } v0[] = {
        { 0x1, 0x0 },
        { 0x2, 0x1 },
        { 0x3, 0x2 },
        { 0x4, 0x3 },
        { 0x5, 0x4 },
        { 0x7, 0x5 }
    };
    UnkStruct_02014EC4 *v1 = param0;
    int v2;

    v1->unk_00 = 0;
    v1->unk_04 = 0;

    for (v2 = 0; v2 < NELEMS(v0); v2++) {
        if (GAME_LANGUAGE == v0[v2].unk_00) {
            sub_02014F98(v1, v0[v2].unk_01);
            break;
        }
    }

    SaveData_SetChecksum(34);
}

UnkStruct_02014EC4 *sub_02014EC4(SaveData *param0)
{
    SaveData_Checksum(34);
    return SaveData_SaveTable(param0, 34);
}

BOOL sub_02014ED8(const UnkStruct_02014EC4 *param0, u32 param1)
{
    return (param0->unk_04 >> param1) & 1;
}

u32 sub_02014EE4(UnkStruct_02014EC4 *param0)
{
    u32 v0, v1;

    for (v0 = 0, v1 = 0; v0 < 32; v0++) {
        if (((param0->unk_04 >> v0) & 1) == 0) {
            v1++;
        }
    }

    if (v1) {
        int v2 = LCRNG_Next() % v1;

        for (v0 = 0; v0 < 32; v0++) {
            if (((param0->unk_04 >> v0) & 1) == 0) {
                if (v2 == 0) {
                    param0->unk_04 |= (1 << v0);

                    SaveData_SetChecksum(34);

                    return v0;
                } else {
                    v2--;
                }
            }
        }
    }

    SaveData_SetChecksum(34);

    return 32;
}

BOOL sub_02014F48(UnkStruct_02014EC4 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (((param0->unk_04 >> v0) & 1) == 0) {
            return 0;
        }
    }

    return 1;
}

u16 sub_02014F64(u32 param0)
{
    int v0;
    u16 v1 = 0;

    for (v0 = 0; v0 < 9; v0++) {
        v1 += Unk_020E5522[v0];
    }

    return v1 + param0;
}

BOOL sub_02014F8C(const UnkStruct_02014EC4 *param0, int param1)
{
    return (param0->unk_00 >> param1) & 1;
}

void sub_02014F98(UnkStruct_02014EC4 *param0, int param1)
{
    param0->unk_00 |= (1 << param1);

    SaveData_SetChecksum(34);
}

UnkStruct_02014FB0 *sub_02014FB0(u32 heapID)
{
    UnkStruct_02014FB0 *v0;
    u32 fileSize;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02014FB0));
    memset(v0, 0, sizeof(UnkStruct_02014FB0));

    v0->unk_04 = sub_02007068(NARC_INDEX_RESOURCE__ENG__PMS_AIKOTOBA__PMS_AIKOTOBA, 0, 0, heapID, 0, &fileSize);
    v0->unk_00 = fileSize / sizeof(u32);

    return v0;
}

void sub_02014FF0(UnkStruct_02014FB0 *param0)
{
    Heap_FreeToHeap(param0->unk_04);

    Heap_FreeToHeap(param0);
}

u32 sub_02015004(const UnkStruct_02014FB0 *param0)
{
    return param0->unk_00;
}

u16 sub_02015008(const UnkStruct_02014FB0 *param0, u32 param1)
{
    GF_ASSERT(param0);

    if (param0->unk_00 <= param1) {
        return 0xffff;
    }

    return param0->unk_04[param1];
}

s16 sub_02015030(const UnkStruct_02014FB0 *param0, u16 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_04[v0] == param1) {
            return v0;
        }
    }

    return -1;
}
