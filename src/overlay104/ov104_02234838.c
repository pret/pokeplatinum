#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay104/struct_ov104_0222E930_decl.h"

#include "constdata/const_020EA358.h"

#include "struct_defs/struct_0208BE5C.h"
#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02235208.h"
#include "overlay104/struct_ov104_0223B5C0.h"

#include "unk_020041CC.h"
#include "heap.h"
#include "gx_layers.h"
#include "unk_0202440C.h"
#include "unk_02030108.h"
#include "unk_02051D8C.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02234DB4.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay106/ov106_02241AE0.h"

FS_EXTERN_OVERLAY(overlay106);

#include <nitro/code16.h>

BOOL ov104_02234838(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223488C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022348A8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022348BC(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234994(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022349B8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234A1C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234C80(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234C9C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234CCC(UnkStruct_ov104_0222E930 * param0);
static BOOL ov104_02234CEC(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234D18(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02234D50(UnkStruct_ov104_0222E930 * param0);
static void ov104_02234A08(void * param0);
BOOL ov104_02234D6C(UnkStruct_ov104_0222E930 * param0);

BOOL ov104_02234838 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    UnkStruct_ov104_02230BE4 * v1;
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);
    u16 v5 = ov104_0222FC00(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = ov104_02234DB4(v1->unk_08, v2, v3, v4, v5);

    sub_0209B980(param0->unk_00->unk_00, v0);

    return 0;
}

BOOL ov104_0223488C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    u16 v1 = ov104_0222FC00(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022350B0(v0, v1);

    return 0;
}

BOOL ov104_022348A8 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02235190(v0);

    return 0;
}

BOOL ov104_022348BC (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    Party * v1;
    Pokemon * v2;
    UnkStruct_ov104_0223B5C0 * v3;
    UnkStruct_ov104_02235208 * v4;
    UnkStruct_ov104_02230BE4 * v5 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay106);

    static const UnkStruct_0208BE5C v6 = {
        ov106_02241AE0,
        ov106_02241B9C,
        ov106_02241CF0,
        FS_OVERLAY_ID(overlay106)
    };

    v3 = sub_0209B978(param0->unk_00->unk_00);
    v4 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_02235208));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov104_02235208));

    v4->unk_00 = v5->unk_08;
    v4->unk_04 = v3->unk_04;
    v4->unk_10 = v3;
    v4->unk_08 = &v3->unk_704[v3->unk_04][0];
    v4->unk_0C = v3->unk_264;
    v4->unk_18 = v3->unk_08;
    v4->unk_05 = v3->unk_6F5;
    v4->unk_14 = &v3->unk_D84[0];

    sub_0207A008(v4->unk_0C);

    v1 = Party_GetFromSavedata(v5->unk_08);
    v2 = Party_GetPokemonBySlotIndex(v1, v3->unk_260[0]);

    Party_AddPokemon(v4->unk_0C, v2);

    if (v4->unk_04 == 1) {
        v2 = Party_GetPokemonBySlotIndex(v1, v3->unk_260[1]);
        Party_AddPokemon(v4->unk_0C, v2);
    } else if ((v4->unk_04 == 2) || (v4->unk_04 == 3)) {
        Party_AddPokemon(v4->unk_0C, v3->unk_D8C);
    }

    sub_0209B988(param0->unk_00->unk_00, &v6, v4, 0, ov104_02234A08);
    return 1;
}

BOOL ov104_02234994 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    BattleParams * v1;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    v1 = v0->unk_700;

    v0->unk_14 = sub_02052868(v1->unk_14);
    sub_020520A4(v1);

    return 0;
}

BOOL ov104_022349B8 (UnkStruct_ov104_0222E930 * param0)
{
    BattleParams * v0;
    UnkStruct_ov104_0223B5C0 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223B250(v1, v2);

    v1->unk_700 = v0;

    sub_02004550(5, 1119, 1);
    sub_0209B988(param0->unk_00->unk_00, &Unk_020EA358, v0, 0, NULL);

    return 1;
}

static void ov104_02234A08 (void * param0)
{
    int v0;
    Pokemon * v1;
    UnkStruct_ov104_02235208 * v2 = param0;

    ov104_022351CC(v2->unk_10, param0);
    Heap_FreeToHeap(param0);

    return;
}

BOOL ov104_02234A1C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_02230BE4 * v0;
    Pokemon * v1;
    Party * v2;
    UnkStruct_ov104_0223B5C0 * v3;
    u8 v4, v5;
    u32 v6;
    int v7;
    u8 v8 = (*((param0)->unk_1C++));
    u8 v9 = (*((param0)->unk_1C++));
    u8 v10 = (*((param0)->unk_1C++));
    u16 * v11 = ov104_0222FBE4(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    v3 = sub_0209B978(param0->unk_00->unk_00);

    switch (v8) {
    case 2:
        v3->unk_04 = v9;
        break;
    case 3:
        *v11 = v3->unk_6F2;
        break;
    case 4:
        *v11 = v3->unk_08;
        break;
    case 5:
        if (v3->unk_08 < 9999) {
            v3->unk_08++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *v11 = sub_02030124(v3->unk_6F8);
        break;
    case 10:
        ov104_0223526C(v3, 2);
        break;
    case 14:
        *v11 = ov104_022354B0(v3);
        break;
    case 19:
        if (v3->unk_04 == 2) {
            *v11 = 10;
        } else {
            *v11 = v3->unk_0A;
        }
        break;
    case 20:
        *v11 = ov104_022354C0(v3, v9);
        break;
    case 21:
        ov104_022354F4(v3);
        break;
    case 22:
        ov104_02235518(v3);
        break;
    case 23:
        *v11 = ov104_022354BC(v3);
        break;
    case 24:
        *v11 = v3->unk_D88;
        break;
    case 27:
        v2 = Party_GetFromSavedata(v0->unk_08);
        v5 = ov104_0223B500(v3->unk_04);

        for (v7 = 0; v7 < v5; v7++) {
            v1 = Party_GetPokemonBySlotIndex(v2, v3->unk_260[v7]);
            Pokemon_SetValue(v1, 6, &v3->unk_728[v7]);
        }
        break;
    case 28:
        v4 = sub_020301E0(v3->unk_6F5, &v3->unk_704[v3->unk_04][0]);

        if (v4 < 10) {
            sub_02030204(v3->unk_6F5, &v3->unk_704[v3->unk_04][0], (v4 + 1));
        }
        break;
    case 29:
        sub_0209BA80(v3);
        break;
    case 30:
        *v11 = ov104_0223B5B0(v3->unk_04);
        break;
    case 17:
        *v11 = v3->unk_04;
        break;
    case 31:
        if (v9 == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        } else {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 32:
        ov104_0222E278(&(v3->unk_40[0]), v3->unk_18[v3->unk_05 * 2], 11, 178);
        ov104_0222E278(&(v3->unk_40[1]), v3->unk_18[v3->unk_05 * 2 + 1], 11, 178);
        break;
    case 33:
        *v11 = sub_020301E0(v3->unk_6F5, &v3->unk_704[v3->unk_04][0]);
        break;
    case 34:
        *v11 = ov104_02235578(v3);
        break;
    case 15:
        v2 = Party_GetFromSavedata(v0->unk_08);
        v1 = Party_GetPokemonBySlotIndex(v2, v3->unk_260[0]);
        *v11 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
        break;
    case 35:
        ov104_022356A0(v3);
        break;
    case 36:
        ov104_022356F4(v3);
        break;
    case 37:
        *v11 = 0;

        if (v3->unk_04 == 0) {
            if ((v3->unk_08 + 1) == 50) {
                *v11 = 1;
            } else if ((v3->unk_08 + 1) == 170) {
                *v11 = 2;
            }
        }
        break;
    case 38:
        break;
    }

    return 0;
}

BOOL ov104_02234C80 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    u16 * v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_14;

    return 0;
}

BOOL ov104_02234C9C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);
    u16 * v3 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v3 = ov104_02235534(v0, v1, v2);

    return 1;
}

BOOL ov104_02234CCC (UnkStruct_ov104_0222E930 * param0)
{
    u16 v0 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_02234CEC);

    return 1;
}

static BOOL ov104_02234CEC (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    u16 v1 = ov104_0222FC8C(param0, param0->unk_78[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_D90 >= 2) {
        v0->unk_D90 = 0;
        return 1;
    }

    return 0;
}

BOOL ov104_02234D18 (UnkStruct_ov104_0222E930 * param0)
{
    u16 * v0;
    UnkStruct_ov104_0223B5C0 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);
    u16 v3 = (*((param0)->unk_1C++));

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_40[v3].unk_00.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}

BOOL ov104_02234D50 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223B5C0 * v0;
    u16 * v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223520C(v0, v1);

    return 1;
}

BOOL ov104_02234D6C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_0202440C * v0;
    u16 v1;
    Party * v2;
    Pokemon * v3;
    UnkStruct_ov104_0223B5C0 * v4;
    UnkStruct_ov104_02230BE4 * v5 = sub_0209B970(param0->unk_00->unk_00);

    v4 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Party_GetFromSavedata(v5->unk_08);
    v3 = Party_GetPokemonBySlotIndex(v2, v4->unk_260[0]);
    v1 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

    if (v4->unk_04 == 0) {
        v0 = sub_0202440C(v5->unk_08);
        sub_0206D048(v0, v3);
    }

    return 0;
}
