#include "overlay021/ov21_021D5600.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "constants/species.h"

#include "error_handling.h"
#include "inlines.h"
#include "message.h"
#include "message_util.h"
#include "strbuf.h"
#include "unk_020986CC.h"

static const u8 Unk_ov21_021E9CC4[6] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x0
};

static inline int inline_ov21_021D5764(int param0);
static inline BOOL inline_ov21_021D5764_1(int param0, int param1);
static Strbuf *LoadMessage(int param0, int param1, int param2);
static void ov21_021D5764(int param0, int param1, int *param2, int *param3, int *param4);

void ov21_021D5600(Strbuf *param0)
{
    Strbuf_Free(param0);
}

int ov21_021D5608(int param0)
{
    return sub_020986E8(Unk_ov21_021E9CC4[param0 + 1]);
}

Strbuf *ov21_021D561C(int param0, int param1, int param2)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov21_021D5764(param0, param1, &v0, &v1, &v2);

    if (v2 == 6) {
        return MessageUtil_SpeciesName(param0, param2);
    } else {
        const int Unk_ov21_021E9CCC[] = {
            0x2CD,
            0x2C8,
            0x2C9,
            0x2CA,
            0x2CB,
            0x2CC
        };
        v3 = Unk_ov21_021E9CCC[v2];
        v2 = v0;
    }

    return LoadMessage(v3, v2, param2);
}

Strbuf *ov21_021D566C(int param0, int param1, int param2)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov21_021D5764(param0, param1, &v0, &v1, &v2);

    if (v2 == 6) {
        v2 = param0;
        v3 = 711;
    } else {
        const int Unk_ov21_021E9CE4[] = {
            0x2D3,
            0x2CE,
            0x2CF,
            0x2D0,
            0x2D1,
            0x2D2
        };
        v3 = Unk_ov21_021E9CE4[v2];
        v2 = v0;
    }

    return LoadMessage(v3, v2, param2);
}

Strbuf *ov21_021D56BC(int param0, int param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov21_021D5764(param0, param1, &v0, &v1, &v2);

    if (v2 == 6) {
        GF_ASSERT(param2 < 1);
        v2 = param0 * 1 + param2;
        v3 = 706;
    } else {
        const int Unk_ov21_021E9CFC[] = {
            0x2C1,
            0x2BC,
            0x2BD,
            0x2BE,
            0x2BF,
            0x2C0
        };
        GF_ASSERT(param2 < 1);
        v3 = Unk_ov21_021E9CFC[v2];
        v2 = v0 * 1 + param2;
    }

    return LoadMessage(v3, v2, param3);
}

static inline BOOL inline_ov21_021D5764_1(int param0, int param1)
{
    if ((param0 > NATIONAL_DEX_COUNT) && (param1 != 6)) {
        return 0;
    }

    return 1;
}

static Strbuf *LoadMessage(int bankID, int entryID, int heapID)
{
    MessageLoader *messageLoader = MessageLoader_Init(1, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);

    if (messageLoader) {
        Strbuf *strbuf = Strbuf_Init(256, heapID);

        if (strbuf) {
            MessageLoader_GetStrbuf(messageLoader, entryID, strbuf);
        }

        MessageLoader_Free(messageLoader);
        return strbuf;
    }

    return NULL;
}

static void ov21_021D5764(int param0, int param1, int *param2, int *param3, int *param4)
{
    *param3 = sub_020986CC(param1);

    GF_ASSERT(*param3 < 6);

    *param2 = param0;
    *param4 = inline_ov21_021D5764(*param3);

    GF_ASSERT(inline_ov21_021D5764_1(*param2, *param4));
}

static inline int inline_ov21_021D5764(int param0)
{
    GF_ASSERT(param0 < 6);
    return (param0 == 1) ? 6 : param0;
}
