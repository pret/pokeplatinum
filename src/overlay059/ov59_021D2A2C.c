#include "overlay059/ov59_021D2A2C.h"

#include <nitro.h>
#include <string.h>

#include "record_mixed_rng.h"

static void ov59_021D2A78(RecordMixedRNG *param0, int param1);
static void ov59_021D2A34(RecordMixedRNG *param0, const RecordMixedRNG *param1);

u32 ov59_021D2A2C(RecordMixedRNG *param0) {
    return sizeof(RecordMixedRNG);
}

void *ov59_021D2A30(RecordMixedRNG *param0) {
    return &param0[1];
}

static void ov59_021D2A34(RecordMixedRNG *param0, const RecordMixedRNG *param1) {
    int v0;

    for (v0 = 5; v0 > 2; v0--) {
        param0[v0] = param0[v0 - 1];
    }

    param0[2] = *param1;
}

static void ov59_021D2A78(RecordMixedRNG *param0, int param1) {
    int v0;
    RecordMixedRNG *v1;

    GF_ASSERT(2 <= param1 && param1 <= 5);

    for (v0 = param1 + 1; v0 <= 5; v0++) {
        param0[v0 - 1] = param0[v0];
    }

    v1 = &param0[5];

    v1->groupName[0] = 0xffff;
    v1->playerName[0] = 0xffff;
}

void ov59_021D2AC4(int param0, int param1, RecordMixedRNG *param2, const void **param3) {
    int v0, v1;
    RecordMixedRNG *v2;

    for (v0 = 0; v0 < param0; v0++) {
        v2 = (RecordMixedRNG *)param3[v0];

        if (v0 == param1) {
            continue;
        }

        if (v2 == NULL) {
            continue;
        }

        if (RecordMixedRNG_IsEntryEmpty(v2) == 1) {
            continue;
        }

        if (RecordMixedRNG_AreEntriesEqual(v2, &param2[0])) {
            continue;
        }

        for (v1 = 0; v1 < 4; v1++) {
            if (RecordMixedRNG_AreEntriesEqual(v2, &param2[2 + v1])) {
                ov59_021D2A78(param2, 2 + v1);
            }
        }

        ov59_021D2A34(param2, v2);
    }
}
