#include "unk_020997B8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020997B8.h"

#include "heap.h"
#include "pokemon.h"

UnkStruct_020997B8 *sub_020997B8(u32 heapID) {
    UnkStruct_020997B8 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_020997B8));

    memset(v0, 0, sizeof(UnkStruct_020997B8));
    return v0;
}

void sub_020997D0(UnkStruct_020997B8 *param0) {
    Heap_Free(param0);
}

u16 *sub_020997D8(Pokemon *mon, u32 heapID) {
    u16 *v0;
    u16 *v1;
    u16 v2[4];
    u16 v3;
    u8 v4;
    u8 v5;
    u8 v6, v7, v8;

    v3 = (u16)Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    v5 = (u8)Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    v4 = (u8)Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    for (v7 = 0; v7 < LEARNED_MOVES_MAX; v7++) {
        v2[v7] = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + v7, NULL);
    }

    v0 = Heap_AllocFromHeap(heapID, (44 / 2) * 2);
    v1 = Heap_AllocFromHeap(heapID, (44 / 2) * 2);

    Pokemon_LoadLevelUpMovesOf(v3, v5, v0);

    v8 = 0;

    for (v7 = 0; v7 < (44 / 2); v7++) {
        if (v0[v7] == 0xffff) {
            v1[v8] = 0xffff;
            break;
        } else if (((v0[v7] & 0xfe00) >> 9) > v4) {
            continue;
        } else {
            v0[v7] &= 0x1ff;

            for (v6 = 0; v6 < 4; v6++) {
                if (v0[v7] == v2[v6]) {
                    break;
                }
            }

            if (v6 == 4) {
                for (v6 = 0; v6 < v8; v6++) {
                    if (v1[v6] == v0[v7]) {
                        break;
                    }
                }

                if (v6 == v8) {
                    v1[v8] = v0[v7];
                    v8++;
                }
            }
        }
    }

    Heap_Free(v0);

    return v1;
}

BOOL sub_020998D8(u16 *param0) {
    if (param0[0] == 0xffff) {
        return 0;
    }

    return 1;
}
