#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"
#include "savedata.h"

#include "unk_02017038.h"
#include "heap.h"
#include "save_state.h"
#include "trainer_info.h"
#include "unk_0202F180.h"
#include "unk_02054884.h"
#include "pokemon.h"
#include "party.h"
#include "overlay005/ov5_021E622C.h"

BOOL Pokemon_CanBattle (Pokemon *mon)
{
    // this can be simplified further, but it won't match
    if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) == 0) {
        return FALSE;
    }

    return !Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
}

BOOL sub_020548B0 (int param0, SaveData * param1, u16 param2, u8 param3, u16 param4, int param5, int param6)
{
    BOOL v0;
    Pokemon * v1;
    u32 v2;
    Party * v3;
    TrainerInfo * v4;

    v4 = SaveData_GetTrainerInfo(param1);
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
    TrainerInfo * v2 = SaveData_GetTrainerInfo(param1);
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

// In many of the functions below, C99-style iterator declaration doesn't match

int Party_HasMonWithMove (Party *party, u16 moveID)
{
    int i;
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
            continue;
        }

        if (Pokemon_GetValue(mon, MON_DATA_MOVE1, NULL) == moveID 
            || Pokemon_GetValue(mon, MON_DATA_MOVE2, NULL) == moveID
            || Pokemon_GetValue(mon, MON_DATA_MOVE3, NULL) == moveID
            || Pokemon_GetValue(mon, MON_DATA_MOVE4, NULL) == moveID) {
            return i;
        }
    }

    return PARTY_SLOT_NONE;
}

int Party_AliveMonsCount (const Party *party)
{
    int i;
    int partyCount = Party_GetCurrentCount(party);
    int count = 0;

    for (i = 0; i < partyCount; i++) {
        if (Pokemon_CanBattle(Party_GetPokemonBySlotIndex(party, i))) {
            count++;
        }
    }

    return count;
}

Pokemon * Party_FindFirstEligibleBattler (const Party *party)
{
    int i;
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_CanBattle(mon)) {
            return mon;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

Pokemon * Party_FindFirstHatchedMon (const Party *party)
{
    u16 i;
    u16 partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            return mon;
        }
    }

    return NULL;
}

BOOL Party_HasTwoAliveMons (const Party *party)
{
    return Party_AliveMonsCount(party) >= 2;
}

void Party_GiveChampionRibbons (Party *party)
{
    int i;
    u8 championRibbon = TRUE;
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            Pokemon_SetValue(mon, MON_DATA_SINNOH_CHAMP_RIBBON, &championRibbon);
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

        if (Pokemon_CanBattle(v4)) {
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
