#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_02017038.h"
#include "heap.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202F180.h"
#include "unk_02054884.h"
#include "pokemon.h"
#include "party.h"
#include "overlay005/ov5_021E622C.h"

BOOL sub_02054884 (Pokemon * param0)
{
    if (Pokemon_GetValue(param0, MON_DATA_CURRENT_HP, NULL) == 0) {
        return 0;
    }

    if (Pokemon_GetValue(param0, MON_DATA_IS_EGG, NULL)) {
        return 0;
    }

    return 1;
}

BOOL sub_020548B0 (int param0, SaveData * param1, u16 param2, u8 param3, u16 param4, int param5, int param6)
{
    BOOL v0;
    Pokemon * v1;
    u32 v2;
    Party * v3;
    TrainerInfo * v4;

    v4 = sub_02025E38(param1);
    v3 = Party_GetFromSavedata(param1);
    v1 = Pokemon_New(param0);

    Pokemon_Init(v1);
    Pokemon_InitWith(v1, param2, param3, 32, 0, 0, 0, 0);
    Pokemon_SetCatchData(v1, v4, 4, param5, param6, param0);

    v2 = param4;
    Pokemon_SetValue(v1, 6, &v2);
    v0 = Party_AddPokemon(v3, v1);

    if (v0) {
        sub_0202F180(param1, v1);
    }

    Heap_FreeToHeap(v1);

    return v0;
}

BOOL sub_02054930 (int param0, SaveData * param1, u16 param2, u8 param3, int param4, int param5)
{
    int v0;
    BOOL v1;
    TrainerInfo * v2 = sub_02025E38(param1);
    Party * v3 = Party_GetFromSavedata(param1);
    Pokemon * v4 = Pokemon_New(32);

    Pokemon_Init(v4);

    v0 = sub_02017070(param4, param5);
    ov5_021E6CF0(v4, param2, param3, v2, 4, v0);

    v1 = Party_AddPokemon(v3, v4);
    Heap_FreeToHeap(v4);

    return v1;
}

void sub_02054988 (Party * param0, int param1, int param2, u16 param3)
{
    Pokemon_ResetMoveSlot(Party_GetPokemonBySlotIndex(param0, param1), param3, param2);
}

int sub_020549A0 (Party * param0, u16 param1)
{
    int v0, v1;
    Pokemon * v2;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if ((Pokemon_GetValue(v2, MON_DATA_MOVE1, NULL) == param1) || (Pokemon_GetValue(v2, MON_DATA_MOVE2, NULL) == param1) || (Pokemon_GetValue(v2, MON_DATA_MOVE3, NULL) == param1) || (Pokemon_GetValue(v2, MON_DATA_MOVE4, NULL) == param1)) {
            return v0;
            break;
        }
    }

    return 0xff;
}

int sub_02054A10 (const Party * param0)
{
    int v0, v1, v2;
    Pokemon * v3;

    v1 = Party_GetCurrentCount(param0);
    v2 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0, v0);

        if (sub_02054884(v3)) {
            v2++;
        }
    }

    return v2;
}

Pokemon * Party_FirstBattler (const Party * param0)
{
    int v0, v1;
    Pokemon * v2;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0, v0);

        if (sub_02054884(v2)) {
            return v2;
        }
    }

    GF_ASSERT(0);
    return NULL;
}

Pokemon * sub_02054A74 (const Party * param0)
{
    u16 v0, v1;
    Pokemon * v2;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0) {
            return v2;
        }
    }

    return NULL;
}

BOOL sub_02054AB0 (const Party * param0)
{
    if (sub_02054A10(param0) >= 2) {
        return 1;
    } else {
        return 0;
    }
}

void sub_02054AC4 (Party * param0)
{
    int v0, v1;
    u8 v2 = 1;
    Pokemon * v3;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
            Pokemon_SetValue(v3, 25, &v2);
        }
    }
}

int sub_02054B04 (Party * param0, u16 param1)
{
    int v0 = 0;
    int v1 = 0;
    int v2, v3;
    Pokemon * v4;

    v3 = Party_GetCurrentCount(param0);

    for (v2 = 0; v2 < v3; v2++) {
        v4 = Party_GetPokemonBySlotIndex(param0, v2);

        if (sub_02054884(v4)) {
            if (Pokemon_GetValue(v4, MON_DATA_STATUS_CONDITION, NULL) & (0x80 | 0x8)) {
                u32 v5 = Pokemon_GetValue(v4, MON_DATA_CURRENT_HP, NULL);

                if (v5 > 1) {
                    v5--;
                }

                Pokemon_SetValue(v4, 163, &v5);

                if (v5 == 1) {
                    v1++;
                    Pokemon_UpdateFriendship(v4, 7, param1);
                }

                v0++;
            }
        }
    }

    if (v1) {
        return 2;
    } else if (v0) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_02054B94 (Pokemon * param0)
{
    if ((Pokemon_GetValue(param0, MON_DATA_STATUS_CONDITION, NULL) & (0x80 | 0x8)) && (Pokemon_GetValue(param0, MON_DATA_CURRENT_HP, NULL) == 1)) {
        u32 v0 = 0;

        Pokemon_SetValue(param0, 160, &v0);
        return 1;
    }

    return 0;
}
