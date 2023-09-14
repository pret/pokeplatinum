#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_02017038.h"
#include "heap.h"
#include "unk_0202440C.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "map_header.h"
#include "unk_0203CC84.h"
#include "unk_0204CFFC.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "unk_020797C8.h"
#include "party.h"
#include "item.h"
#include "unk_020923C0.h"
#include "overlay005/ov5_021E622C.h"

BOOL sub_0204CFFC (UnkStruct_0203E724 * param0)
{
    int v0 = sub_0203A138(param0->unk_34->unk_1C->unk_00);
    int v1 = 24;
    Party * v2;
    UnkStruct_0203CDB0 * v3 = param0->unk_34;
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    u16 v6 = inline_02049538(param0);
    u16 * v7 = inline_0204FCAC(param0);

    v2 = Party_GetFromSavedata(v3->unk_0C);
    *v7 = sub_020548B0(11, v3->unk_0C, v4, v5, v6, v0, v1);

    return 0;
}

BOOL sub_0204D08C (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), *v2);

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
        *v3 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    } else {
        *v3 = 0;
    }

    return 0;
}

BOOL sub_0204D0E8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    UnkStruct_02025E6C * v2 = sub_02025E38(sub_0203D174(param0->unk_34));
    u16 * v3 = inline_0204FCAC(param0);
    u16 * v4 = inline_0204FCAC(param0);
    u16 v5, v6;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), *v3);
    v5 = Pokemon_GetValue(v1, MON_DATA_OT_ID, NULL);
    v6 = sub_02025F20(v2);

    if (v5 == v6) {
        *v4 = 0;
    } else {
        *v4 = 1;
    }

    return 0;
}

BOOL sub_0204D154 (UnkStruct_0203E724 * param0)
{
    int v0;
    u8 v1;
    BOOL v2;
    Party * v3;
    Pokemon * v4;
    UnkStruct_0203CDB0 * v5 = param0->unk_34;
    UnkStruct_02025E6C * v6 = sub_02025E38(v5->unk_0C);
    u16 v7 = inline_02049538(param0);
    u16 v8 = inline_02049538(param0);

    v3 = Party_GetFromSavedata(v5->unk_0C);
    v1 = Party_GetCurrentCount(v3);

    if (v1 < 6) {
        v4 = Pokemon_New(11);
        Pokemon_Init(v4);

        v0 = sub_02017070(1, v8);
        ov5_021E6CF0(v4, v7, 1, v6, 3, v0);

        v2 = Party_AddPokemon(v3, v4);
        Heap_FreeToHeap(v4);
    }

    return 0;
}

BOOL sub_0204D1DC (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2;

    v0 = inline_02049538(param0);
    v1 = inline_02049538(param0);
    v2 = inline_02049538(param0);

    sub_02054988(Party_GetFromSavedata(param0->unk_34->unk_0C), v0, v1, v2);
    return 0;
}

BOOL sub_0204D234 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);
    u16 v5;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v4);
    *v2 = 0;

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
        return 0;
    }

    if ((Pokemon_GetValue(v1, MON_DATA_MOVE1, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE2, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE3, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE4, NULL) == v3)) {
        *v2 = 1;
    }

    return 0;
}

BOOL sub_0204D2D8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4;
    u8 v5, v6;

    v6 = Party_GetCurrentCount(Party_GetFromSavedata(v0->unk_0C));

    for (v5 = 0, *v2 = 6; v5 < v6; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if ((Pokemon_GetValue(v1, MON_DATA_MOVE1, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE2, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE3, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE4, NULL) == v3)) {
            *v2 = v5;
            break;
        }
    }

    return 0;
}

BOOL sub_0204D398 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 v1;
    u16 * v2;

    v2 = inline_0204FCAC(param0);
    v1 = inline_02049538(param0);
    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v1);
    *v2 = sub_02054B94(v0);

    return 0;
}

BOOL sub_0204D3DC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u8 v4, v5, v6;

    v5 = Party_GetCurrentCount(Party_GetFromSavedata(v0->unk_0C));
    *v2 = 0;

    for (v4 = 0, v6 = 0; v4 < v5; v4++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v4);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            if (Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL) <= v3) {
                v6++;
            }
        }
    }

    *v2 = v6;

    return 0;
}

BOOL sub_0204D470 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
    *v2 = 0;

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
        *v2 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);
    }

    return 0;
}

BOOL sub_0204D4CC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u8 v4;

    v4 = Party_GetCurrentCount(Party_GetFromSavedata(v0->unk_0C));

    if (v3 >= v4) {
        *v2 = 0;
        return 0;
    }

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
        *v2 = 0;
        return 0;
    }

    *v2 = Pokemon_GetNature(v1);

    return 0;
}

BOOL sub_0204D540 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u8 v4, v5;

    v4 = Party_GetCurrentCount(Party_GetFromSavedata(v0->unk_0C));
    *v2 = 0xff;

    for (v5 = 0; v5 < v4; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            if (Pokemon_GetNature(v1) == v3) {
                *v2 = v5;
                break;
            }
        }
    }

    return 0;
}

BOOL sub_0204D5CC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
    *v2 = Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL);

    return 0;
}

BOOL sub_0204D614 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4;
    u32 v5 = sub_0203A138(param0->unk_34->unk_1C->unk_00);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
    v4 = Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL);

    if (v2 > 0) {
        if (Item_LoadParam(Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL), 1, 11) == 53) {
            v2 = v2 * 150 / 100;
        }

        if (Pokemon_GetValue(v1, MON_DATA_POKEBALL, NULL) == 11) {
            v2++;
        }

        if (Pokemon_GetValue(v1, MON_DATA_152, NULL) == v5) {
            v2++;
        }
    }

    v4 += v2;

    if (v4 > 255) {
        v4 = 255;
    }

    Pokemon_SetValue(v1, 9, &v4);
    return 0;
}

BOOL sub_0204D6E4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
    v4 = Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL);

    if (v2 > v4) {
        v4 = 0;
    } else {
        v4 -= v2;
    }

    Pokemon_SetValue(v1, 9, &v4);
    return 0;
}

BOOL sub_0204D74C (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v1);
    *v3 = Pokemon_GetValue(v0, MON_DATA_COOL + v2, NULL);

    return 0;
}

BOOL sub_0204D7AC (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0205E1B4(param0->unk_34->unk_0C);
    return 0;
}

BOOL sub_0204D7D4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v4);
    *v2 = Pokemon_GetValue(v1, MON_DATA_177, NULL);
    *v3 = Pokemon_GetValue(v1, MON_DATA_178, NULL);

    return 0;
}

BOOL sub_0204D840 (UnkStruct_0203E724 * param0)
{
    int v0;
    Pokemon * v1;
    UnkStruct_0203CDB0 * v2 = param0->unk_34;
    u16 * v3 = inline_0204FCAC(param0);

    v0 = Party_GetCurrentCount(Party_GetFromSavedata(v2->unk_0C));
    *v3 = v0;

    return 0;
}

BOOL sub_0204D86C (UnkStruct_0203E724 * param0)
{
    int v0, v1, v2;
    Pokemon * v3;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    u16 * v5 = inline_0204FCAC(param0);

    v0 = Party_GetCurrentCount(Party_GetFromSavedata(v4->unk_0C));

    for (v2 = 0, v1 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v4->unk_0C), v2);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
            v1++;
        }
    }

    *v5 = v1;

    return 0;
}

BOOL sub_0204D8C4 (UnkStruct_0203E724 * param0)
{
    int v0, v1, v2;
    Pokemon * v3;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    u16 * v5 = inline_0204FCAC(param0);
    u16 v6 = inline_02049538(param0);

    v0 = Party_GetCurrentCount(Party_GetFromSavedata(v4->unk_0C));

    for (v2 = 0, v1 = 0; v2 < v0; v2++) {
        if (v2 == v6) {
            continue;
        }

        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v4->unk_0C), v2);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
            if (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL) != 0) {
                v1++;
            }
        }
    }

    *v5 = v1;

    return 0;
}

BOOL sub_0204D94C (UnkStruct_0203E724 * param0)
{
    int v0, v1, v2;
    Pokemon * v3;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    u16 * v5 = inline_0204FCAC(param0);
    UnkStruct_020797DC * v6 = sub_02024420(v4->unk_0C);

    v0 = Party_GetCurrentCount(Party_GetFromSavedata(v4->unk_0C));

    for (v2 = 0, v1 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v4->unk_0C), v2);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
            if (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL) != 0) {
                v1++;
            }
        }
    }

    v1 += sub_02079BEC(v6);
    *v5 = v1;

    return 0;
}

BOOL sub_0204D9C8 (UnkStruct_0203E724 * param0)
{
    int v0, v1, v2;
    Pokemon * v3;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    u16 * v5 = inline_0204FCAC(param0);

    v0 = Party_GetCurrentCount(Party_GetFromSavedata(v4->unk_0C));

    for (v2 = 0, v1 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v4->unk_0C), v2);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL)) {
            v1++;
        }
    }

    *v5 = v1;

    return 0;
}

BOOL sub_0204DA20 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1;
    u16 * v2;
    u32 v3;
    Pokemon * v4;
    UnkStruct_0203CDB0 * v5 = param0->unk_34;

    v2 = inline_0204FCAC(param0);
    v1 = Party_GetCurrentCount(Party_GetFromSavedata(v5->unk_0C));
    *v2 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        v4 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v5->unk_0C), v0);

        v3 = Pokemon_GetValue(v4, MON_DATA_POKERUS, NULL);

        if (v3 != 0) {
            *v2 = 1;
            break;
        }
    }

    return 0;
}

BOOL sub_0204DA84 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v1);
    *v2 = Pokemon_GetValue(v0, MON_DATA_GENDER, NULL);

    return 0;
}

BOOL sub_0204DACC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u8 v4;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
        *v2 = 0;
        return 0;
    }

    v4 = 0;

    if ((Pokemon_GetValue(v1, MON_DATA_MOVE1, NULL) != 0)) {
        v4++;
    }

    if ((Pokemon_GetValue(v1, MON_DATA_MOVE2, NULL) != 0)) {
        v4++;
    }

    if ((Pokemon_GetValue(v1, MON_DATA_MOVE3, NULL) != 0)) {
        v4++;
    }

    if ((Pokemon_GetValue(v1, MON_DATA_MOVE4, NULL) != 0)) {
        v4++;
    }

    *v2 = v4;
    return 0;
}

BOOL sub_0204DB74 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u32 v2;
    u8 v3;
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v4);
    Pokemon_ClearMoveSlot(v1, v5);

    return 0;
}

BOOL sub_0204DBB8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
    *v2 = Pokemon_GetValue(v1, MON_DATA_MOVE1 + v4, NULL);

    return 0;
}

BOOL sub_0204DC18 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
    *v2 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);

    return 0;
}

BOOL sub_0204DC60 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v2);
    v3 = 0;

    Pokemon_SetValue(v1, 6, &v3);

    return 0;
}

BOOL sub_0204DC98 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    Party * v2;
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4 = inline_02049538(param0);
    u8 v5, v6;
    u16 v7;

    v2 = Party_GetFromSavedata(v0->unk_0C);
    v6 = Party_GetCurrentCount(v2);
    *v3 = 0;

    for (v5 = 0; v5 < v6; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            v7 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

            if (v4 == v7) {
                *v3 = 1;
                break;
            }
        }
    }

    return 0;
}

BOOL sub_0204DD28 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    Party * v2;
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4 = inline_02049538(param0);
    u8 v5, v6, v7;
    u16 v8;
    u16 v9[6];

    for (v5 = 0; v5 < 6; v5++) {
        v9[v5] = 0;
    }

    v2 = Party_GetFromSavedata(v0->unk_0C);
    v7 = Party_GetCurrentCount(v2);
    *v3 = 0;

    for (v5 = 0; v5 < v7; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            v8 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

            if (v4 == 0) {
                v9[v5] = v8;

                for (v6 = 0; v6 < v5; v6++) {
                    if (v9[v6] == v9[v5]) {
                        *v3 = 1;
                        return 0;
                    }
                }
            } else {
                if (v4 == v8) {
                    *v3 += 1;
                }
            }
        }
    }

    return 0;
}

BOOL sub_0204DE00 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    Pokemon * v1;
    Party * v2;
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4 = inline_02049538(param0);
    u8 v5, v6;
    u16 v7;

    v2 = Party_GetFromSavedata(v0->unk_0C);
    v6 = Party_GetCurrentCount(v2);
    *v3 = 0xff;

    for (v5 = 0; v5 < v6; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            v7 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

            if (v4 == v7) {
                *v3 = v5;
                break;
            }
        }
    }

    return 0;
}

BOOL sub_0204DE94 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3, v4;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v2);

    for (v3 = 0, v4 = 0; v3 < 80; v3++) {
        if (Pokemon_GetValue(v0, sub_020923C0(v3, 0), NULL) != 0) {
            v4++;
        }
    }

    *v1 = v4;

    return 0;
}

BOOL sub_0204DF08 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    Party * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3, v4, v5, v6;

    v6 = Party_GetCurrentCount(Party_GetFromSavedata(param0->unk_34->unk_0C));
    v1 = Party_GetFromSavedata(param0->unk_34->unk_0C);

    for (v3 = 0, v5 = 0; v3 < 80; v3++) {
        for (v4 = 0; v4 < v6; v4++) {
            v0 = Party_GetPokemonBySlotIndex(v1, v4);

            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) == 0) {
                if (Pokemon_GetValue(v0, sub_020923C0(v3, 0), NULL) != 0) {
                    v5++;
                    break;
                }
            }
        }
    }

    *v2 = v5;

    return 0;
}

BOOL sub_0204DFB0 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u8 v4 = 1;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v2);
    *v1 = Pokemon_GetValue(v0, sub_020923C0(v3, 0), NULL);

    return 0;
}

BOOL sub_0204E01C (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u8 v3 = 1;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v1);

    Pokemon_SetValue(v0, sub_020923C0(v2, 0), &v3);
    sub_0206DDB8(param0->unk_34->unk_0C, v0, sub_020923C0(v2, 0));

    return 0;
}

BOOL sub_0204E094 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    Party * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3, v4, v5;

    v5 = Party_GetCurrentCount(Party_GetFromSavedata(param0->unk_34->unk_0C));
    v1 = Party_GetFromSavedata(param0->unk_34->unk_0C);

    for (v3 = 0; v3 < 80; v3++) {
        for (v4 = 0; v4 < v5; v4++) {
            v0 = Party_GetPokemonBySlotIndex(v1, v4);

            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (Pokemon_GetValue(v0, MON_DATA_3, NULL) != 0) {
                    *v2 = 1;
                    return 0;
                }
            }
        }
    }

    *v2 = 0;

    return 0;
}

BOOL sub_0204E128 (UnkStruct_0203E724 * param0)
{
    return 0;
}

BOOL sub_0204E12C (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;
    u16 v2;
    Pokemon * v3;
    Party * v4;
    UnkStruct_0203CDB0 * v5 = param0->unk_34;
    u16 * v6 = inline_0204FCAC(param0);
    u16 v7 = inline_02049538(param0);

    v4 = Party_GetFromSavedata(v5->unk_0C);
    v1 = Party_GetCurrentCount(v4);
    *v6 = 0xff;

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v5->unk_0C), v0);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
            v2 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

            if (v7 == v2) {
                if (Pokemon_GetValue(v3, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                    *v6 = v0;
                    break;
                }
            }
        }
    }

    return 0;
}

BOOL sub_0204E1D0 (UnkStruct_0203E724 * param0)
{
    int v0, v1;
    Party * v2;
    Pokemon * v3;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    u16 v5 = inline_02049538(param0);
    u16 * v6 = inline_0204FCAC(param0);

    v2 = Party_GetFromSavedata(v4->unk_0C);
    v1 = Party_GetCurrentCount(v2);
    *v6 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v4->unk_0C), v0);

        if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == v5) {
            *v6 = 1;
            break;
        }
    }

    return 0;
}
