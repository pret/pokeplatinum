#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "trainer_info.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/trainer_data.h"

#include "message.h"
#include "unk_0200B358.h"
#include "unk_02014D38.h"
#include "unk_02017038.h"
#include "heap.h"
#include "unk_0201D0C8.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020277A4.h"
#include "unk_0202B37C.h"
#include "pokemon.h"
#include "unk_020797C8.h"
#include "unk_020996D0.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03_0 : 7;
    u8 unk_03_7 : 1;
} UnkStruct_0200B444;

typedef struct {
    UnkStruct_0200B444 unk_00;
    Strbuf* unk_04;
} UnkStruct_0200B358_sub1;

typedef struct UnkStruct_0200B358_t {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_0200B358_sub1 * unk_08;
    Strbuf* unk_0C;
} UnkStruct_0200B358;

static void sub_0200B448(UnkStruct_0200B358 * param0, u32 param1, const Strbuf *param2, const UnkStruct_0200B444 * param3);
static void sub_0200B444(UnkStruct_0200B444 * param0);
void sub_0200B578(UnkStruct_0200B358 * param0, u32 param1, BoxPokemon * param2);
void sub_0200B594(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200B744(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200B77C(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200B998(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200BACC(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200BB3C(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200BCB8(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200BE98(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200BFE4(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200C2E0(UnkStruct_0200B358 * param0, u32 param1, u32 param2);
void sub_0200C324(UnkStruct_0200B358 * param0, u32 param1);
void sub_0200C338(UnkStruct_0200B358 * param0, u32 param1, u32 param2);

UnkStruct_0200B358 * sub_0200B358 (u32 param0)
{
    return sub_0200B368(8, 32, param0);
}

UnkStruct_0200B358 * sub_0200B368 (u32 param0, u32 param1, u32 param2)
{
    UnkStruct_0200B358 * v0 = NULL;
    u32 v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    do {
        UnkStruct_0200B358 * v2 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_0200B358));

        if (v2 == NULL) {
            break;
        }

        v2->unk_00 = param0;
        v2->unk_04 = param2;
        v2->unk_0C = Strbuf_Init(param1, param2);

        if (v2->unk_0C == NULL) {
            break;
        }

        v2->unk_08 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_0200B358_sub1) * param0);

        if (v2->unk_08 == NULL) {
            break;
        }

        for (v1 = 0; v1 < param0; v1++) {
            sub_0200B444(&(v2->unk_08[v1].unk_00));
            v2->unk_08[v1].unk_04 = Strbuf_Init(param1, param2);

            if (v2->unk_08[v1].unk_04 == NULL) {
                break;
            }
        }

        if (v1 == param0) {
            return v2;
        }
    } while (0);

    if (v0) {
        sub_0200B3F0(v0);
    }

    return NULL;
}

void sub_0200B3F0 (UnkStruct_0200B358 * param0)
{
    u32 v0;

    GF_ASSERT(param0->unk_00);

    if (param0->unk_08) {
        for (v0 = 0; v0 < param0->unk_00; v0++) {
            if (param0->unk_08[v0].unk_04) {
                Strbuf_Free(param0->unk_08[v0].unk_04);
            } else {
                break;
            }
        }

        Heap_FreeToHeap(param0->unk_08);
    }

    if (param0->unk_0C) {
        Strbuf_Free(param0->unk_0C);
    }

    param0->unk_00 = 0;
    Heap_FreeToHeap(param0);
}

static void sub_0200B444 (UnkStruct_0200B444 * param0)
{
    return;
}

static void sub_0200B448 (UnkStruct_0200B358 * param0, u32 param1, const Strbuf *param2, const UnkStruct_0200B444 * param3)
{
    GF_ASSERT(param1 < param0->unk_00);

    if (param1 < param0->unk_00) {
        if (param3 != NULL) {
            param0->unk_08[param1].unk_00 = *param3;
        }

        Strbuf_Copy(param0->unk_08[param1].unk_04, param2);
    }
}

void sub_0200B48C (UnkStruct_0200B358 * param0, u32 param1, const Strbuf *param2, u32 param3, BOOL param4, u32 param5)
{
    sub_0200B448(param0, param1, param2, NULL);
}

void sub_0200B498 (UnkStruct_0200B358 * param0, u32 param1, const TrainerInfo * param2)
{
    const u16 * v0;

    v0 = TrainerInfo_Name(param2);

    Strbuf_CopyChars(param0->unk_0C, v0);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200B4BC (UnkStruct_0200B358 * param0, u32 param1, const UnkStruct_021C0794 * param2)
{
    const u16 * v0 = sub_02027870(sub_02027848(param2));

    Strbuf_CopyChars(param0->unk_0C, v0);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200B4E4 (UnkStruct_0200B358 * param0, u32 param1, const UnkStruct_021C0794 * param2)
{
    const TrainerInfo * v0 = sub_02025E38((UnkStruct_021C0794 *)param2);
    MessageLoader * v1;

    v1 = MessageLoader_Init(1, 26, 553, param0->unk_04);

    if (TrainerInfo_Gender(v0) == 0) {
        MessageLoader_GetStrbuf(v1, 1, param0->unk_0C);
    } else {
        MessageLoader_GetStrbuf(v1, 0, param0->unk_0C);
    }

    sub_0200B448(param0, param1, param0->unk_0C, NULL);
    MessageLoader_Free(v1);
}

void sub_0200B538 (UnkStruct_0200B358 * param0, u32 param1, BoxPokemon * param2)
{
    MessageLoader * v0;
    u32 v1;

    v0 = MessageLoader_Init(1, 26, 412, param0->unk_04);
    v1 = BoxPokemon_GetValue(param2, MON_DATA_SPECIES, NULL);

    MessageLoader_GetStrbuf(v0, v1, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
    MessageLoader_Free(v0);
}

void sub_0200B578 (UnkStruct_0200B358 * param0, u32 param1, BoxPokemon * param2)
{
    u32 v0;

    v0 = BoxPokemon_GetValue(param2, MON_DATA_SPECIES, NULL);
    sub_0200B594(param0, param1, v0);
}

void sub_0200B594 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0;

    v0 = MessageLoader_Init(1, 26, 413, param0->unk_04);

    MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
    MessageLoader_Free(v0);
}

void sub_0200B5CC (UnkStruct_0200B358 * param0, u32 param1, BoxPokemon * param2)
{
    BoxPokemon_GetValue(param2, MON_DATA_119, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200B5EC (UnkStruct_0200B358 * param0, u32 param1, BoxPokemon * param2)
{
    BoxPokemon_GetValue(param2, MON_DATA_145, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200B60C (UnkStruct_0200B358 * param0, u32 param1, s32 param2, u32 param3, int param4, int param5)
{
    Strbuf_FormatInt(param0->unk_0C, param2, param3, param4, param5);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200B630 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 647, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B668 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 535, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B6A0 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 610, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B6D8 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0;

    v0 = MessageLoader_Init(1, 26, 202, param0->unk_04);

    MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
    MessageLoader_Free(v0);
}

void sub_0200B70C (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 392, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B744 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 393, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B77C (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 394, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B7B4 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 396, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B7EC (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 624, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B824 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 551, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B85C (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 219, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B890 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 606, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B8C8 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 433, param0->unk_04);

    if (v0) {
        if ((param2 == 0) || (param2 >= MessageLoader_MessageCount(v0))) {
            MessageLoader_Free(v0);
            v0 = MessageLoader_Init(1, 26, 434, param0->unk_04);
            param2 = 2;
        }

        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B928 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 457, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B960 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 619, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B998 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 620, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200B9D0 (UnkStruct_0200B358 * param0, u32 param1, TrainerData * param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 619, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2->class, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BA08 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 618, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BA40 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 21, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BA74 (UnkStruct_0200B358 * param0, u32 param1, TrainerData * param2)
{
    Strbuf_CopyChars(param0->unk_0C, &param2->unk_14[0]);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200BA94 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 628, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BACC (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 629, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BB04 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 630, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BB3C (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 631, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BB74 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 207, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BBA8 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 204, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BBDC (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 204, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BC10 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 633, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BC48 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 632, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BC80 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 626, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BCB8 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 627, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BCF0 (UnkStruct_0200B358 * param0, u32 param1, u8 param2)
{
    MessageLoader * v0;

    v0 = MessageLoader_Init(1, 26, 213, param0->unk_04);

    switch (param2) {
    case 0:
        MessageLoader_GetStrbuf(v0, 68, param0->unk_0C);
        break;
    case 1:
        MessageLoader_GetStrbuf(v0, 69, param0->unk_0C);
        break;
    default:
        Strbuf_Clear(param0->unk_0C);
    }

    sub_0200B448(param0, param1, param0->unk_0C, NULL);
    MessageLoader_Free(v0);
}

void sub_0200BD40 (UnkStruct_0200B358 * param0, u32 param1, const UnkStruct_020797DC * param2, u32 param3)
{
    sub_02079AF4(param2, param3, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200BD60 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 378, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BD98 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 608, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BDD0 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 694, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BE08 (UnkStruct_0200B358 * param0, u32 param1, u32 param2, u32 param3)
{
    u32 v0;

    v0 = sub_02099720(param2);

    if (v0) {
        if (param3) {
            MessageLoader * v1 = MessageLoader_Init(1, 26, v0, param0->unk_04);

            if (v1) {
                MessageLoader_GetStrbuf(v1, param3, param0->unk_0C);
                sub_0200B448(param0, param1, param0->unk_0C, NULL);
                MessageLoader_Free(v1);
            }
        }
    }
}

void sub_0200BE48 (UnkStruct_0200B358 * param0, u32 param1, u16 param2)
{
    sub_02014DB8(param2, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
}

void sub_0200BE64 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 12, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BE98 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 13, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BECC (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    static const u16 v0[] = {
        433, 435, 434,
    };
    int v1;
    int v2;
    MessageLoader * v3;

    v1 = sub_02017038(param2);
    v2 = sub_02017058(param2);
    v3 = MessageLoader_Init(1, 26, v0[v1], param0->unk_04);

    if (v3) {
        if ((v2 < MessageLoader_MessageCount(v3)) && (!((v1 == 0) && (v2 == 0)))) {
            MessageLoader_GetStrbuf(v3, v2, param0->unk_0C);
            sub_0200B448(param0, param1, param0->unk_0C, NULL);
            MessageLoader_Free(v3);
        } else {
            u32 v4, v5;

            MessageLoader_Free(v3);

            if ((v1 == 0) && (v2 == 0)) {
                v4 = v0[1];
                v5 = 12;
            } else {
                v4 = v0[2];
                v5 = 2;
            }

            v3 = MessageLoader_Init(1, 26, v4, param0->unk_04);

            if (v3) {
                MessageLoader_GetStrbuf(v3, v5, param0->unk_0C);
                sub_0200B448(param0, param1, param0->unk_0C, NULL);
                MessageLoader_Free(v3);
            }
        }
    }
}

void sub_0200BF74 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 465, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BFAC (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 386, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200BFE4 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 387, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C01C (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 388, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C054 (UnkStruct_0200B358 * param0, UnkStruct_021C0794 * param1, int param2, int param3, int param4)
{
    int v0, v1;
    Strbuf* v2;
    UnkStruct_0202B4A0 * v3 = sub_0202B4A0(param1);

    v0 = sub_0202B47C(v3, param2);
    v1 = sub_0202B488(v3, param2);
    v2 = Strbuf_Init(64, 4);

    Strbuf_CopyChars(v2, sub_0202B42C(v3, param2, param4));
    sub_0200B48C(param0, param3, v2, v0, 1, v1);
    Strbuf_Free(v2);
}

void sub_0200C0B0 (UnkStruct_0200B358 * param0, u32 param1, UnkEnum_ov66_022324D0 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 651, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C0E8 (UnkStruct_0200B358 * param0, u32 param1, int param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 649, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C120 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 652, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C158 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 667, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C190 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 663, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C1C8 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 664, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C200 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 666, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C238 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 665, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C270 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 668, param0->unk_04);

    if (v0) {
        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C2A8 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0;

    v0 = MessageLoader_Init(1, 26, 371, param0->unk_04);

    MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
    sub_0200B448(param0, param1, param0->unk_0C, NULL);
    MessageLoader_Free(v0);
}

void sub_0200C2E0 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 414, param0->unk_04);

    if (v0) {
        if ((param2 < 1) || (param2 > 12)) {
            param2 = 1;
        }

        MessageLoader_GetStrbuf(v0, param2 - 1 + 0, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C324 (UnkStruct_0200B358 * param0, u32 param1)
{
    Strbuf_UpperChar(param0->unk_08[param1].unk_04, 0);
}

void sub_0200C338 (UnkStruct_0200B358 * param0, u32 param1, u32 param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 361, param0->unk_04);

    GF_ASSERT(param2 <= 5);

    if (v0) {
        if (param2 == 0) {
            param2 = 121;
        } else {
            param2 += 115;
        }

        MessageLoader_GetStrbuf(v0, param2, param0->unk_0C);
        sub_0200B448(param0, param1, param0->unk_0C, NULL);
        MessageLoader_Free(v0);
    }
}

void sub_0200C388 (const UnkStruct_0200B358 * param0, Strbuf *param1, const Strbuf *param2)
{
    const u16 * v0;
    u16 * v1;

    v0 = Strbuf_GetData(param2);
    Strbuf_Clear(param1);

    while (*v0 != 0xffff) {
        if (*v0 == 0xfffe) {
            if (sub_0201D108(v0)) {
                u32 v2;

                v2 = sub_0201D134(v0, 0);
                GF_ASSERT(v2 < param0->unk_00);

                Strbuf_ConcatTrainerName(param1, param0->unk_08[v2].unk_04);
                v0 = sub_0201D0C8(v0);
            } else {
                const u16 * v3 = v0;

                v0 = sub_0201D0C8(v0);

                while (v3 < v0) {
                    Strbuf_AppendChar(param1, *v3++);
                }
            }
        } else {
            Strbuf_AppendChar(param1, *v0++);
        }
    }
}

void sub_0200C41C (UnkStruct_0200B358 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        Strbuf_Clear(param0->unk_08[v0].unk_04);
    }
}
