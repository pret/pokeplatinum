#include "overlay066/ov66_0223177C.h"

#include <nitro.h>
#include <string.h>

#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_0223185C.h"
#include "overlay066/struct_ov66_022318AC.h"
#include "overlay066/struct_ov66_02231908.h"
#include "overlay066/struct_ov66_0223199C.h"
#include "overlay066/struct_ov66_022319FC.h"
#include "overlay066/struct_ov66_02231A58.h"
#include "overlay066/struct_ov66_02231AB4.h"
#include "overlay066/struct_ov66_02231B24.h"
#include "overlay066/struct_ov66_02231B80.h"
#include "overlay066/struct_ov66_02232068.h"

#include "enums.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov66_02231D38_sub1;

typedef struct {
    UnkStruct_ov66_02231D38_sub1 unk_00[20];
    u16 unk_50;
    u16 unk_52;
} UnkStruct_ov66_02231D38;

typedef struct UnkStruct_ov66_02231FB0_t {
    u8 unk_00;
    u32 unk_04[3];
    Strbuf *unk_10[4];
    u16 unk_20[4];
    u16 unk_28;
    s16 unk_2A;
    struct UnkStruct_ov66_02231FB0_t *unk_2C;
    struct UnkStruct_ov66_02231FB0_t *unk_30;
} UnkStruct_ov66_02231FB0;

typedef struct {
    UnkStruct_ov66_02231FB0 unk_00[8];
    UnkStruct_ov66_02231FB0 unk_188;
} UnkStruct_ov66_02231E94;

typedef struct UnkStruct_ov66_0223177C_t {
    UnkStruct_ov66_02231428 unk_00;
    BOOL unk_04;
    UnkStruct_ov66_02231D38 unk_08;
    UnkStruct_ov66_02231E94 unk_5C;
} UnkStruct_ov66_0223177C;

static void ov66_02231D38(UnkStruct_ov66_02231D38 *param0);
static void ov66_02231D58(UnkStruct_ov66_02231D38 *param0, u32 param1, u32 param2, UnkEnum_ov66_02231E54 param3);
static void ov66_02231D74(UnkStruct_ov66_02231D38 *param0, u32 param1, u32 param2, UnkEnum_ov66_02231E54 param3);
static void ov66_02231D90(UnkStruct_ov66_02231D38 *param0, u32 param1);
static void ov66_02231DA8(UnkStruct_ov66_02231D38 *param0, u32 param1, UnkEnum_ov66_02231E54 param2);
static void ov66_02231DC0(UnkStruct_ov66_02231D38 *param0, UnkEnum_ov66_02231E6C param1);
static void ov66_02231DD4(UnkStruct_ov66_02231D38 *param0, u32 param1);
static BOOL ov66_02231DE8(const UnkStruct_ov66_02231D38 *param0, u32 param1);
static u32 ov66_02231DFC(const UnkStruct_ov66_02231D38 *param0, u32 param1);
static BOOL ov66_02231E10(const UnkStruct_ov66_02231D38 *param0, u32 param1);
static BOOL ov66_02231E30(const UnkStruct_ov66_02231D38 *param0, u32 param1);
static UnkEnum_ov66_02231E54 ov66_02231E54(const UnkStruct_ov66_02231D38 *param0, u32 param1);
static UnkEnum_ov66_02231E6C ov66_02231E6C(const UnkStruct_ov66_02231D38 *param0);
static BOOL ov66_02231E74(const UnkStruct_ov66_02231D38 *param0, u32 param1);
static void ov66_02231E94(UnkStruct_ov66_02231E94 *param0, u32 param1);
static void ov66_02231EEC(UnkStruct_ov66_02231E94 *param0);
static void ov66_02231F1C(UnkStruct_ov66_02231E94 *param0);
static void ov66_02231F58(UnkStruct_ov66_02231E94 *param0);
static UnkStruct_ov66_02231FB0 *ov66_02231F68(UnkStruct_ov66_02231E94 *param0, u16 param1);
static void ov66_02231FB0(UnkStruct_ov66_02231FB0 *param0, UnkStruct_ov66_02231FB0 *param1);
static void ov66_02231FC0(UnkStruct_ov66_02231E94 *param0, UnkStruct_ov66_02231FB0 *param1);
static void ov66_02231FE8(UnkStruct_ov66_02231E94 *param0, UnkStruct_ov66_02231FB0 *param1);
static void ov66_02231FFC(UnkStruct_ov66_02231FB0 *param0, u32 param1, u32 param2, u32 param3, const TrainerInfo *param4, const TrainerInfo *param5, const TrainerInfo *param6, const TrainerInfo *param7, u16 param8, u16 param9, u16 param10, u16 param11, u32 param12, u32 param13, u32 param14);
static BOOL ov66_02232068(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_022320BC(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_0223211C(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_02232258(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_022322B8(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_02232330(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_022323A0(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static BOOL ov66_022323C4(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5);
static u32 ov66_0223245C(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_0223246C(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_0223247C(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_02232490(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_022324A0(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_022324B4(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_022324B8(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static u32 ov66_022324BC(const UnkStruct_ov66_02231FB0 *param0, u32 param1);
static BOOL ov66_022324D0(enum PlazaMinigame param0, u32 param1);

UnkStruct_ov66_0223177C *ov66_0223177C(u32 param0)
{
    UnkStruct_ov66_0223177C *v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov66_0223177C));
    memset(v0, 0, sizeof(UnkStruct_ov66_0223177C));

    ov66_02231D38(&v0->unk_08);
    ov66_02231E94(&v0->unk_5C, param0);

    return v0;
}

void ov66_022317AC(UnkStruct_ov66_0223177C *param0)
{
    ov66_02231EEC(&param0->unk_5C);
    Heap_FreeToHeap(param0);
}

void ov66_022317C0(UnkStruct_ov66_0223177C *param0)
{
    ov66_02231F1C(&param0->unk_5C);
    ov66_02231DC0(&param0->unk_08, UnkEnum_ov66_02231E6C_00);
}

void ov66_022317D8(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02231428 *param1)
{
    param0->unk_00 = *param1;
    param0->unk_04 = 1;
}

void ov66_022317E4(UnkStruct_ov66_0223177C *param0, u32 param1, u32 param2, UnkEnum_ov66_02231E54 param3)
{
    ov66_02231D74(&param0->unk_08, param1, param2, param3);
}

BOOL ov66_022317F0(UnkStruct_ov66_0223177C *param0, u32 param1)
{
    BOOL v0 = ov66_02231E30(&param0->unk_08, param1);
    ov66_02231D90(&param0->unk_08, param1);

    return v0;
}

void ov66_0223180C(UnkStruct_ov66_0223177C *param0, u32 param1)
{
    u32 v0;
    int v1;

    for (v1 = 0; v1 < 20; v1++) {
        v0 = ov66_02231E54(&param0->unk_08, v1);

        if (v0 & UnkEnum_ov66_02231E54_02) {
            v0 &= ~UnkEnum_ov66_02231E54_02;
            ov66_02231DA8(&param0->unk_08, v1, v0);
        }
    }

    v0 = ov66_02231E54(&param0->unk_08, param1);
    ov66_02231DA8(&param0->unk_08, param1, v0 | UnkEnum_ov66_02231E54_02);
}

void ov66_0223185C(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_0223185C *param1)
{
    UnkStruct_ov66_02231FB0 *v0 = ov66_02231F68(&param0->unk_5C, 8);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, 0, 0, 0, param1->unk_00, param1->unk_04, NULL, NULL, param1->unk_08, param1->unk_0A, 0, 0, 600, 8, 0);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_022318AC(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_022318AC *param1)
{
    UnkStruct_ov66_02231FB0 *v0;

    if (param1->unk_0C >= 27) {
        return;
    }

    v0 = ov66_02231F68(&param0->unk_5C, 7);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, param1->unk_0C, 0, 0, param1->unk_00, param1->unk_04, NULL, NULL, param1->unk_08, param1->unk_0A, 0, 0, 600, 7, 1);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_02231908(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02231908 *param1)
{
    UnkStruct_ov66_02231FB0 *v0;
    u32 v1;
    static const sc_NEWS_DSET_MINIGAME_PRI[UnkEnum_ov66_022324D0_12] = {
        4,
        3,
        2,
    };

    if ((param1->unk_00 != UnkEnum_ov66_022324D0_00) && (param1->unk_00 != UnkEnum_ov66_022324D0_01) && (param1->unk_00 != UnkEnum_ov66_022324D0_02)) {
        return;
    }

    if (param1->unk_20 == 1) {
        if ((param1->unk_04 < 2) || (param1->unk_04 > 4)) {
            return;
        }
    } else {
        if ((param1->unk_04 < 1) || (param1->unk_04 > 4)) {
            return;
        }
    }

    v1 = param1->unk_00 - UnkEnum_ov66_022324D0_00;
    v0 = ov66_02231F68(&param0->unk_5C, sc_NEWS_DSET_MINIGAME_PRI[v1]);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, v1, param1->unk_04, param1->unk_20, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, param1->unk_18, param1->unk_1A, param1->unk_1C, param1->unk_1E, 900, sc_NEWS_DSET_MINIGAME_PRI[v1], 2);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_0223199C(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_0223199C *param1)
{
    UnkStruct_ov66_02231FB0 *v0;

    if ((param1->unk_00 != UnkEnum_ov66_022324D0_03) && (param1->unk_00 != UnkEnum_ov66_022324D0_04)) {
        return;
    }

    v0 = ov66_02231F68(&param0->unk_5C, 5 + param1->unk_00);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, param1->unk_00, param1->unk_04, 0, param1->unk_08, NULL, NULL, NULL, param1->unk_0C, 0, 0, 0, 900, 5 + param1->unk_00, 3);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_022319FC(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_022319FC *param1)
{
    UnkStruct_ov66_02231FB0 *v0 = ov66_02231F68(&param0->unk_5C, 12);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, param1->unk_00, 0, 0, param1->unk_04, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, param1->unk_16, param1->unk_18, param1->unk_1A, 450, 12, 4);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_02231A58(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02231A58 *param1)
{
    UnkStruct_ov66_02231FB0 *v0 = ov66_02231F68(&param0->unk_5C, 13);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, param1->unk_00, 0, 0, param1->unk_04, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, param1->unk_16, param1->unk_18, param1->unk_1A, 450, 13, 5);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_02231AB4(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02231AB4 *param1)
{
    UnkStruct_ov66_02231FB0 *v0;

    switch (param1->unk_04) {
    case 0:
    case 1:
    case 2:
    case 4:
        break;
    default:
        return;
    }

    v0 = ov66_02231F68(&param0->unk_5C, 14);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, param1->unk_00->unk_00_val1, param1->unk_04, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 900, 14, 6);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_02231B24(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02231B24 *param1, const UnkStruct_ov66_02232068 *param2)
{
    UnkStruct_ov66_02231FB0 *v0;
    int v1;

    if (param1->unk_00 >= 20) {
        return;
    }

    if (param2->unk_00[param1->unk_00] == 0) {
        return;
    }

    v0 = ov66_02231F68(&param0->unk_5C, 1);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, param1->unk_00, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1800, 1, 7);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_02231B80(UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02231B80 *param1)
{
    UnkStruct_ov66_02231FB0 *v0;
    u32 v1;
    static const u8 v2[3] = {
        11,
        10,
        9,
    };

    if ((param1->unk_00 != UnkEnum_ov66_022324D0_00) && (param1->unk_00 != UnkEnum_ov66_022324D0_01) && (param1->unk_00 != UnkEnum_ov66_022324D0_02)) {
        return;
    }

    if (ov66_022324D0(param1->unk_00, param1->unk_04) == 0) {
        return;
    }

    v1 = param1->unk_00 - UnkEnum_ov66_022324D0_00;
    v0 = ov66_02231F68(&param0->unk_5C, v2[v1]);

    if (v0 == NULL) {
        return;
    }

    ov66_02231FFC(v0, v1, param1->unk_04, 0, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, param1->unk_18, param1->unk_1A, param1->unk_1C, param1->unk_1E, 450, v2[v1], 8);
    ov66_02231FC0(&param0->unk_5C, v0);
}

void ov66_02231C04(UnkStruct_ov66_0223177C *param0)
{
    ov66_02231F58(&param0->unk_5C);
}

BOOL ov66_02231C10(const UnkStruct_ov66_0223177C *param0, UnkStruct_ov66_02231428 *param1)
{
    *param1 = param0->unk_00;
    return param0->unk_04;
}

BOOL ov66_02231C18(const UnkStruct_ov66_0223177C *param0, u32 param1)
{
    return ov66_02231DE8(&param0->unk_08, param1);
}

u32 ov66_02231C24(const UnkStruct_ov66_0223177C *param0, u32 param1)
{
    return ov66_02231DFC(&param0->unk_08, param1);
}

BOOL ov66_02231C30(const UnkStruct_ov66_0223177C *param0, u32 param1)
{
    return ov66_02231E10(&param0->unk_08, param1);
}

BOOL ov66_02231C3C(const UnkStruct_ov66_0223177C *param0, u32 param1)
{
    return ov66_02231E30(&param0->unk_08, param1);
}

BOOL ov66_02231C48(const UnkStruct_ov66_0223177C *param0, u32 param1)
{
    return ov66_02231E74(&param0->unk_08, param1);
}

UnkEnum_ov66_02231E6C ov66_02231C54(const UnkStruct_ov66_0223177C *param0)
{
    return ov66_02231E6C(&param0->unk_08);
}

BOOL ov66_02231C60(const UnkStruct_ov66_0223177C *param0)
{
    if (param0->unk_5C.unk_188.unk_2C != &param0->unk_5C.unk_188) {
        return 1;
    }

    return 0;
}

int ov66_02231C78(const UnkStruct_ov66_0223177C *param0)
{
    GF_ASSERT(ov66_02231C60(param0));
    return param0->unk_5C.unk_188.unk_2C->unk_00;
}

BOOL ov66_02231C94(const UnkStruct_ov66_0223177C *param0, const UnkStruct_ov66_02232068 *param1, int param2, Strbuf *param3, u32 param4)
{
    StringTemplate *v0;
    MessageLoader *v1;
    UnkStruct_ov66_02231FB0 *v2;
    BOOL v3;

    static BOOL (*const v4[])(UnkStruct_ov66_02231FB0 *, const UnkStruct_ov66_02232068 *, StringTemplate *, MessageLoader *, Strbuf *, u32) = {
        ov66_02232068,
        ov66_022320BC,
        ov66_0223211C,
        ov66_02232258,
        ov66_022322B8,
        ov66_022322B8,
        ov66_02232330,
        ov66_022323A0,
        ov66_022323C4,
    };

    GF_ASSERT(ov66_02231C60(param0));

    v2 = param0->unk_5C.unk_188.unk_2C;
    v1 = MessageLoader_Init(1, 26, 653, param4);
    v0 = StringTemplate_Default(param4);

    if (v2->unk_00 < 9) {
        v3 = v4[v2->unk_00](v2, param1, v0, v1, param3, param4);
    } else {
        v3 = 0;
    }

    MessageLoader_Free(v1);
    StringTemplate_Free(v0);

    return v3;
}

u32 ov66_02231D00(const UnkStruct_ov66_0223177C *param0, int param1, u32 param2)
{
    UnkStruct_ov66_02231FB0 *v0;
    u32 v1;

    static u32 (*const v2[])(const UnkStruct_ov66_02231FB0 *, u32) = {
        ov66_0223245C,
        ov66_0223246C,
        ov66_0223247C,
        ov66_02232490,
        ov66_022324A0,
        ov66_022324A0,
        ov66_022324B4,
        ov66_022324B8,
        ov66_022324BC,
    };

    GF_ASSERT(ov66_02231C60(param0));

    v0 = param0->unk_5C.unk_188.unk_2C;

    if (v0->unk_00 < 9) {
        v1 = v2[v0->unk_00](v0, param2);
    } else {
        GF_ASSERT(0);
        v1 = 20;
    }

    return v1;
}

static void ov66_02231D38(UnkStruct_ov66_02231D38 *param0)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        ov66_02231D58(param0, v0, 2, 0);
    }
}

static void ov66_02231D58(UnkStruct_ov66_02231D38 *param0, u32 param1, u32 param2, UnkEnum_ov66_02231E54 param3)
{
    GF_ASSERT(param1 < 20);
    param0->unk_00[param1].unk_00 = param2;
    param0->unk_00[param1].unk_02 = param3;
}

static void ov66_02231D74(UnkStruct_ov66_02231D38 *param0, u32 param1, u32 param2, UnkEnum_ov66_02231E54 param3)
{
    ov66_02231D58(param0, param1, param2, param3);
    ov66_02231DC0(param0, UnkEnum_ov66_02231E6C_01);
    ov66_02231DD4(param0, param1);
}

static void ov66_02231D90(UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    ov66_02231D58(param0, param1, 2, 0);
    ov66_02231DC0(param0, UnkEnum_ov66_02231E6C_02);
}

static void ov66_02231DA8(UnkStruct_ov66_02231D38 *param0, u32 param1, UnkEnum_ov66_02231E54 param2)
{
    GF_ASSERT(param1 < 20);
    param0->unk_00[param1].unk_02 = param2;
}

static void ov66_02231DC0(UnkStruct_ov66_02231D38 *param0, UnkEnum_ov66_02231E6C param1)
{
    GF_ASSERT(param1 <= UnkEnum_ov66_02231E54_02);
    param0->unk_50 = param1;
}

static void ov66_02231DD4(UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    param0->unk_52 = param1;
}

static BOOL ov66_02231DE8(const UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    u32 v0 = ov66_02231DFC(param0, param1);

    if (v0 == 2) {
        return 0;
    }

    return 1;
}

static u32 ov66_02231DFC(const UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    return param0->unk_00[param1].unk_00;
}

static BOOL ov66_02231E10(const UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param0->unk_00[param1].unk_02 & UnkEnum_ov66_02231E54_01) {
        return 1;
    }

    return 0;
}

static BOOL ov66_02231E30(const UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param0->unk_00[param1].unk_02 & UnkEnum_ov66_02231E54_02) {
        return 1;
    }

    return 0;
}

static UnkEnum_ov66_02231E54 ov66_02231E54(const UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    return param0->unk_00[param1].unk_02;
}

static UnkEnum_ov66_02231E6C ov66_02231E6C(const UnkStruct_ov66_02231D38 *param0)
{
    return param0->unk_50;
}

static BOOL ov66_02231E74(const UnkStruct_ov66_02231D38 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param0->unk_52 == param1) {
        return 1;
    }

    return 0;
}

static void ov66_02231E94(UnkStruct_ov66_02231E94 *param0, u32 param1)
{
    int v0, v1;

    memset(param0, 0, sizeof(UnkStruct_ov66_02231E94));

    for (v0 = 0; v0 < 8; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            param0->unk_00[v0].unk_10[v1] = Strbuf_Init((7 + 1), param1);
        }
    }

    param0->unk_188.unk_2C = &param0->unk_188;
    param0->unk_188.unk_30 = &param0->unk_188;
}

static void ov66_02231EEC(UnkStruct_ov66_02231E94 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 8; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            Strbuf_Free(param0->unk_00[v0].unk_10[v1]);
        }
    }

    memset(param0, 0, sizeof(UnkStruct_ov66_02231E94));
}

static void ov66_02231F1C(UnkStruct_ov66_02231E94 *param0)
{
    UnkStruct_ov66_02231FB0 *v0;
    UnkStruct_ov66_02231FB0 *v1 = param0->unk_188.unk_2C;

    while (v1 != &param0->unk_188) {
        v0 = v1->unk_2C;
        v1->unk_28 = 0;

        if ((v1->unk_2A - 1) > 0) {
            v1->unk_2A--;
        } else {
            ov66_02231FE8(param0, v1);
        }

        v1 = v0;
    }
}

static void ov66_02231F58(UnkStruct_ov66_02231E94 *param0)
{
    ov66_02231FE8(param0, param0->unk_188.unk_2C);
}

static UnkStruct_ov66_02231FB0 *ov66_02231F68(UnkStruct_ov66_02231E94 *param0, u16 param1)
{
    int v0;
    UnkStruct_ov66_02231FB0 *v1 = NULL;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_00[v0].unk_2C == NULL) {
            v1 = &param0->unk_00[v0];
            break;
        }
    }

    if (v1 == NULL) {
        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_00[v0].unk_28 >= param1) {
                ov66_02231FE8(param0, &param0->unk_00[v0]);
                v1 = &param0->unk_00[v0];
                break;
            }
        }
    }

    return v1;
}

static void ov66_02231FB0(UnkStruct_ov66_02231FB0 *param0, UnkStruct_ov66_02231FB0 *param1)
{
    param1->unk_2C = param0->unk_2C;
    param1->unk_30 = param0;
    param0->unk_2C = param1;
    param1->unk_2C->unk_30 = param1;
}

static void ov66_02231FC0(UnkStruct_ov66_02231E94 *param0, UnkStruct_ov66_02231FB0 *param1)
{
    {
        UnkStruct_ov66_02231FB0 *v0;

        v0 = param0->unk_188.unk_30;

        while (v0 != &param0->unk_188) {
            if (v0->unk_28 < param1->unk_28) {
                break;
            }

            v0 = v0->unk_30;
        }

        ov66_02231FB0(v0, param1);
    }
}

static void ov66_02231FE8(UnkStruct_ov66_02231E94 *param0, UnkStruct_ov66_02231FB0 *param1)
{
    param1->unk_30->unk_2C = param1->unk_2C;
    param1->unk_2C->unk_30 = param1->unk_30;
    param1->unk_30 = NULL;
    param1->unk_2C = NULL;
}

static void ov66_02231FFC(UnkStruct_ov66_02231FB0 *param0, u32 param1, u32 param2, u32 param3, const TrainerInfo *param4, const TrainerInfo *param5, const TrainerInfo *param6, const TrainerInfo *param7, u16 param8, u16 param9, u16 param10, u16 param11, u32 param12, u32 param13, u32 param14)
{
    GF_ASSERT(param14 < 9);
    param0->unk_00 = param14;
    param0->unk_2A = param12;
    param0->unk_28 = param13;
    param0->unk_04[0] = param1;
    param0->unk_04[1] = param2;
    param0->unk_04[2] = param3;
    param0->unk_20[0] = param8;
    param0->unk_20[1] = param9;
    param0->unk_20[2] = param10;
    param0->unk_20[3] = param11;

    if (param4) {
        TrainerInfo_NameStrbuf(param4, param0->unk_10[0]);
    }

    if (param5) {
        TrainerInfo_NameStrbuf(param5, param0->unk_10[1]);
    }

    if (param6) {
        TrainerInfo_NameStrbuf(param6, param0->unk_10[2]);
    }

    if (param7) {
        TrainerInfo_NameStrbuf(param7, param0->unk_10[3]);
    }
}

static BOOL ov66_02232068(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;

    StringTemplate_SetStrbuf(param2, 0, param0->unk_10[0], 0, 1, gGameLanguage);
    StringTemplate_SetStrbuf(param2, 1, param0->unk_10[1], 0, 1, gGameLanguage);

    v0 = MessageLoader_GetNewStrbuf(param3, 7);

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov66_022320BC(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;

    StringTemplate_SetStrbuf(param2, 0, param0->unk_10[0], 0, 1, gGameLanguage);
    StringTemplate_SetStrbuf(param2, 1, param0->unk_10[1], 0, 1, gGameLanguage);
    StringTemplate_SetPlazaItemName(param2, 2, param0->unk_04[0]);

    v0 = MessageLoader_GetNewStrbuf(param3, 8);

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov66_0223211C(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;

    StringTemplate_SetPlazaMinigameName(param2, 0, param0->unk_04[0]);

    if (param0->unk_04[2] == 1) {
        u32 v1;

        switch (param0->unk_04[1]) {
        case 3:
            StringTemplate_SetStrbuf(param2, 1, param0->unk_10[0], 0, 1, gGameLanguage);
            StringTemplate_SetStrbuf(param2, 2, param0->unk_10[1], 0, 1, gGameLanguage);
            StringTemplate_SetStrbuf(param2, 3, param0->unk_10[2], 0, 1, gGameLanguage);
            v1 = 18;
            break;
        case 2:
            StringTemplate_SetStrbuf(param2, 1, param0->unk_10[0], 0, 1, gGameLanguage);
            StringTemplate_SetStrbuf(param2, 2, param0->unk_10[1], 0, 1, gGameLanguage);
            v1 = 19;
            break;
        case 4:
            StringTemplate_SetStrbuf(param2, 1, param0->unk_10[0], 0, 1, gGameLanguage);
            StringTemplate_SetStrbuf(param2, 2, param0->unk_10[1], 0, 1, gGameLanguage);
            StringTemplate_SetStrbuf(param2, 3, param0->unk_10[2], 0, 1, gGameLanguage);
            StringTemplate_SetStrbuf(param2, 4, param0->unk_10[3], 0, 1, gGameLanguage);
            v1 = 6;
            break;
        default:
            return 0;
        }

        v0 = MessageLoader_GetNewStrbuf(param3, v1);
    } else {
        StringTemplate_SetStrbuf(param2, 1, param0->unk_10[0], 0, 1, gGameLanguage);
        StringTemplate_SetNumber(param2, 2, 4 - param0->unk_04[1], 1, 1, 1);

        v0 = MessageLoader_GetNewStrbuf(param3, 5);
    }

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov66_02232258(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;

    StringTemplate_SetPlazaMinigameName(param2, 0, param0->unk_04[0]);
    StringTemplate_SetStrbuf(param2, 1, param0->unk_10[0], 0, 1, gGameLanguage);
    StringTemplate_SetNumber(param2, 2, 8 - param0->unk_04[1], 1, 1, 1);

    v0 = MessageLoader_GetNewStrbuf(param3, 9);

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov66_022322B8(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;
    int v1;
    u32 v2;

    for (v1 = 0; v1 < param0->unk_04[0]; v1++) {
        StringTemplate_SetStrbuf(param2, v1, param0->unk_10[v1], 0, 1, gGameLanguage);
    }

    if (param0->unk_00 == 4) {
        StringTemplate_SetPlazaMinigameName(param2, param0->unk_04[0], UnkEnum_ov66_022324D0_05);
    } else {
        StringTemplate_SetPlazaMinigameName(param2, param0->unk_04[0], UnkEnum_ov66_022324D0_06);
    }

    v0 = MessageLoader_GetNewStrbuf(param3, 10 + (4 - param0->unk_04[0]));

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov66_02232330(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;
    u32 v1;

    switch (param0->unk_04[1]) {
    case 0:
        StringTemplate_SetPlazaEventName(param2, 0, 0);
        v1 = 15;
        break;
    case 1:
        StringTemplate_SetPlazaEventName(param2, 0, 1);
        v1 = 20;
        break;
    case 2:
        StringTemplate_SetPlazaEventName(param2, 0, 2);
        v1 = 16;
        break;

    case 4:
        v1 = 17;
        break;

    default:
        return 0;
    }

    v0 = MessageLoader_GetNewStrbuf(param3, v1);

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov66_022323A0(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    if (param0->unk_04[0] >= 20) {
        return 0;
    }

    if (param1->unk_00[param0->unk_04[0]] == 0) {
        return 0;
    }

    MessageLoader_GetStrbuf(param3, 21, param4);

    return 1;
}

static BOOL ov66_022323C4(UnkStruct_ov66_02231FB0 *param0, const UnkStruct_ov66_02232068 *param1, StringTemplate *param2, MessageLoader *param3, Strbuf *param4, u32 param5)
{
    Strbuf *v0;
    u32 v1;
    int v2;
    static const u16 v3[4] = {
        0,
        27,
        28,
        23,
    };
    static const u16 v4[4] = {
        22,
        24,
        25,
        26,
    };

    if (ov66_022324D0(param0->unk_04[0], param0->unk_04[1]) == 0) {
        return 0;
    }

    StringTemplate_SetPlazaMinigameName(param2, 0, param0->unk_04[0]);

    for (v2 = 0; v2 < param0->unk_04[1]; v2++) {
        StringTemplate_SetStrbuf(param2, v2 + 1, param0->unk_10[v2], 0, 1, gGameLanguage);
    }

    if ((param0->unk_04[0] == UnkEnum_ov66_022324D0_00) || (param0->unk_04[0] == UnkEnum_ov66_022324D0_01)) {
        v0 = MessageLoader_GetNewStrbuf(param3, v4[param0->unk_04[1] - 1]);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param3, v3[param0->unk_04[1] - 1]);
    }

    StringTemplate_Format(param2, param4, v0);
    Strbuf_Free(v0);

    return 1;
}

static u32 ov66_0223245C(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    if (param1 >= 2) {
        return 20;
    }

    return param0->unk_20[param1];
}

static u32 ov66_0223246C(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    if (param1 >= 2) {
        return 20;
    }

    return param0->unk_20[param1];
}

static u32 ov66_0223247C(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    if (param0->unk_04[1] <= param1) {
        return 20;
    }

    return param0->unk_20[param1];
}

static u32 ov66_02232490(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    if (param1 >= 1) {
        return 20;
    }

    return param0->unk_20[param1];
}

static u32 ov66_022324A0(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    if (param0->unk_04[0] <= param1) {
        return 20;
    }

    return param0->unk_20[param1];
}

static u32 ov66_022324B4(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    return 20;
}

static u32 ov66_022324B8(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    return 20;
}

static u32 ov66_022324BC(const UnkStruct_ov66_02231FB0 *param0, u32 param1)
{
    if (param0->unk_04[1] <= param1) {
        return 20;
    }

    return param0->unk_20[param1];
}

static BOOL ov66_022324D0(enum PlazaMinigame param0, u32 param1)
{
    if ((param0 == UnkEnum_ov66_022324D0_00) || (param0 == UnkEnum_ov66_022324D0_01)) {
        if ((param1 < 1) || (param1 > 4)) {
            return 0;
        }
    } else {
        if ((param1 < 2) || (param1 > 4)) {
            return 0;
        }
    }

    return 1;
}
