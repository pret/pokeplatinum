#include "unk_02017038.h"

#include <nitro.h>
#include <string.h>

static const u16 Unk_020E565C[] = {
    0x0,
    0x7D0,
    0xBB8
};

int sub_02017038(u32 param0) {
    int v0;

    for (v0 = 0; v0 < (3 - 1); v0++) {
        if (param0 < Unk_020E565C[v0 + 1]) {
            return v0;
        }
    }

    return v0;
}

int sub_02017058(u32 param0) {
    int v0 = sub_02017038(param0);
    return param0 - Unk_020E565C[v0];
}

// baseValue 1 = Transfer mons and eggs
int SpecialMetLoc_GetId(int baseValue, int modifier) {
    GF_ASSERT(baseValue < 3);
    return Unk_020E565C[baseValue] + modifier;
}

BOOL sub_0201708C(u16 param0) {
    if (((param0 >= 1) && (param0 <= 111)) || ((param0 >= 2000) && (param0 <= 2010)) || ((param0 >= 3000) && (param0 <= 3076))) {
        return 1;
    }

    return 0;
}
