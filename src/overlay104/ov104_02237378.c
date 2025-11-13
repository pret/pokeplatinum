#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222CCE4.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02237DD8.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/ov104_0223C2D4.h"
#include "overlay104/ov104_0223D5D0.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02238240.h"
#include "overlay104/struct_ov104_0223BFFC.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay108/ov108_02241AE0.h"

#include "communication_information.h"
#include "field_battle_data_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "particle_system.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "spl.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02030494.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(overlay108);

#include <nitro/code16.h>

BOOL ov104_02237378(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022373DC(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022373F8(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_0223740C(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237460(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022375F8(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237720(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237734(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237748(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237CAC(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237CC8(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237CF8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02237D18(UnkStruct_ov104_0222E930 *param0);
static void ov104_02237634(UnkStruct_ov104_02238240 *param0, UnkStruct_ov104_0223BFFC *param1);
BOOL ov104_02237D48(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02236090(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022360A8(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022360C0(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237D84(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02237D98(UnkStruct_ov104_0222E930 *param0);
static void ov104_02237C30(SPLEmitter *param0);
static void ov104_02237C0C(UnkStruct_ov104_0222E930 *param0, UnkStruct_ov104_0223BFFC *param1, u16 param2);
static void ov104_0223770C(void *param0);

BOOL ov104_02237378(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);
    u16 v5 = ov104_0222FC00(param0);
    u16 v6 = ov104_0222FC00(param0);
    u16 *v7 = ov104_0222FBE4(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = ov104_02237DD8(v1->saveData, v2, v3, v4, v5, v6, v7);

    sub_0209B980(param0->unk_00->unk_00, v0);
    return 0;
}

BOOL ov104_022373DC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0;
    u16 v1 = ov104_0222FC00(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223806C(v0, v1);

    return 0;
}

BOOL ov104_022373F8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02238210(v0);

    return 0;
}

BOOL ov104_0223740C(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    UnkStruct_ov104_0223BFFC *v1;
    UnkStruct_ov104_02238240 *v2;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay108);

    static const ApplicationManagerTemplate v4 = {
        ov108_02241AE0,
        ov108_02241C38,
        ov108_02241D70,
        FS_OVERLAY_ID(overlay108)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_02238240));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02238240));
    v2->saveData = v3->saveData;

    ov104_02237634(v2, v1);
    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_0223770C);

    return 1;
}

BOOL ov104_02237460(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0;
    int v1, v2, v3, v4, v5;
    u32 v6, v7, v8;
    UnkStruct_ov104_0223BFFC *v9;
    FieldBattleDTO *v10;
    Pokemon *v11;
    Pokemon *v12;

    v9 = sub_0209B978(param0->unk_00->unk_00);
    v10 = v9->unk_0C;

    v9->unk_1D = ov104_02238538(v9, v10->parties[0], v10->parties[2], v10->totalTurnsElapsed);
    v9->unk_28 = CheckPlayerWonBattle(v10->resultMask);

    if (v9->unk_13 == 27) {
        v2 = 1;
        v3 = 3;
    } else {
        v2 = 0;
        v3 = 2;
    }

    ov104_02239054(v10->parties[v2], v9->unk_70, 0, 0);
    ov104_02239054(v10->parties[v2], v9->unk_70, 1, 1);

    if (ov104_0223BA14(v9->unk_10) == 0) {
        ov104_02239054(v10->parties[v2], v9->unk_70, 2, 2);
    } else {
        ov104_02239054(v10->parties[v3], v9->unk_70, 0, 2);
        ov104_02239054(v10->parties[v3], v9->unk_70, 1, 3);
    }

    if (v9->unk_13 == 17) {
        v0 = ov104_0223BD70(v9->unk_10, 1);

        for (v1 = 0; v1 < v0; v1++) {
            v11 = Party_GetPokemonBySlotIndex(v9->unk_70, v1);
            v7 = Pokemon_GetValue(v11, MON_DATA_LEVEL, NULL);
            v7 -= 3;
            v6 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v11, MON_DATA_SPECIES, NULL), v7);

            Pokemon_SetValue(v11, MON_DATA_EXPERIENCE, &v6);
            Pokemon_CalcLevelAndStats(v11);
        }
    }

    v4 = Party_GetCurrentCount(v9->unk_70);

    for (v1 = 0; v1 < v4; v1++) {
        v11 = Party_GetPokemonBySlotIndex(v9->unk_70, v1);

        v5 = v9->unk_94[v1];
        Pokemon_SetValue(v11, MON_DATA_MAX_HP, &v5);
        Pokemon_SetValue(v11, MON_DATA_HP, &v5);

        v5 = v9->unk_A4[v1];
        Pokemon_SetValue(v11, MON_DATA_ATK, &v5);

        v5 = v9->unk_B4[v1];
        Pokemon_SetValue(v11, MON_DATA_DEF, &v5);

        v5 = v9->unk_C4[v1];
        Pokemon_SetValue(v11, MON_DATA_SPEED, &v5);

        v5 = v9->unk_D4[v1];
        Pokemon_SetValue(v11, MON_DATA_SP_ATK, &v5);

        v5 = v9->unk_E4[v1];
        Pokemon_SetValue(v11, MON_DATA_SP_DEF, &v5);
    }

    FieldBattleDTO_Free(v10);
    return 0;
}

BOOL ov104_022375F8(UnkStruct_ov104_0222E930 *param0)
{
    FieldBattleDTO *v0;
    UnkStruct_ov104_0223BFFC *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223BDD8(v1, v2);

    v1->unk_0C = v0;
    sub_0209B988(param0->unk_00->unk_00, &gBattleApplicationTemplate, v0, 0, NULL);

    return 1;
}

static void ov104_02237634(UnkStruct_ov104_02238240 *param0, UnkStruct_ov104_0223BFFC *param1)
{
    int v0, v1;
    Pokemon *v2;

    param0->unk_04 = param1->unk_10;
    param0->unk_1E = ov104_0223C124(param1);
    param0->unk_14 = &param1->unk_20;
    param0->unk_10 = &param1->unk_13;
    param0->unk_07 = param1->unk_1D;
    param0->unk_1C = param1->unk_18;
    param0->unk_18 = param1->unk_A78;
    param0->unk_0C = &param1->unk_1C;
    param0->unk_30 = param1->unk_70;
    param0->unk_34 = param1->unk_74;
    param0->unk_3C = param1;
    param1->unk_14 = 0;
    param0->unk_08 = &param1->unk_14;
    param0->unk_40 = param1->unk_12;
    param1->unk_12 = 0;
    param1->unk_1F = 0;

    v1 = Party_GetCurrentCount(param1->unk_70);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param1->unk_70, v0);

        param1->unk_94[v0] = Pokemon_GetValue(v2, MON_DATA_MAX_HP, NULL);
        param1->unk_A4[v0] = Pokemon_GetValue(v2, MON_DATA_ATK, NULL);
        param1->unk_B4[v0] = Pokemon_GetValue(v2, MON_DATA_DEF, NULL);
        param1->unk_C4[v0] = Pokemon_GetValue(v2, MON_DATA_SPEED, NULL);
        param1->unk_D4[v0] = Pokemon_GetValue(v2, MON_DATA_SP_ATK, NULL);
        param1->unk_E4[v0] = Pokemon_GetValue(v2, MON_DATA_SP_DEF, NULL);
    }

    return;
}

static void ov104_0223770C(void *param0)
{
    int v0;
    UnkStruct_ov104_02238240 *v1 = param0;

    ov104_02238240(v1->unk_3C, param0);
    Heap_Free(param0);

    return;
}

BOOL ov104_02237720(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022384D4(v0);

    return 0;
}

BOOL ov104_02237734(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022384DC(v0);

    return 0;
}

BOOL ov104_02237748(UnkStruct_ov104_0222E930 *param0)
{
    Strbuf *v0;
    Pokemon *v1;
    Party *v2;
    UnkStruct_ov104_0223BFFC *v3;
    u8 v4, v5, v6;
    u32 v7[9][2];
    u32 v8, v9;
    u16 v10;
    int v11, v12, v13;
    UnkStruct_ov104_02230BE4 *v14;
    UnkStruct_ov104_0223C4CC *v15;
    TrainerInfo *v16;
    u8 v17 = (*((param0)->unk_1C++));
    u8 v18 = ov104_0222FC00(param0);
    u8 v19 = ov104_0222FC00(param0);
    u16 *v20 = ov104_0222FBE4(param0);

    v3 = sub_0209B978(param0->unk_00->unk_00);
    v14 = sub_0209B970(param0->unk_00->unk_00);
    v15 = ov104_0222E924(param0->unk_00);

    switch (v17) {
    case 2:
        v3->unk_10 = v18;
        break;
    case 3:
        *v20 = v3->unk_418[v18];
        break;
    case 4:
        *v20 = v3->unk_18;
        break;
    case 5:
        if (v3->unk_18 < 9999) {
            v3->unk_18++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *v20 = sub_020304B0(v3->unk_08);
        break;
    case 10:
        ov104_02238278(v3, 2);
        break;
    case 12:
        *v20 = ov104_0223C0BC(v3, v3->unk_13);
        break;
    case 14:
        *v20 = ov104_02238454(v3);
        break;
    case 15:
        if (v18 == 0) {
            v1 = Party_GetPokemonBySlotIndex(v3->unk_70, 0);
        } else {
            v1 = Party_GetPokemonBySlotIndex(v3->unk_74, 0);
        }

        *v20 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);
        break;
    case 16:
        *v20 = v3->unk_13;
        break;
    case 18:
        v2 = SaveData_GetParty(v14->saveData);

        for (v11 = 0; v11 < 3; v11++) {
            v1 = Party_GetPokemonBySlotIndex(v2, v3->unk_2C[v11]);
            Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &v3->unk_412[v11]);
        }
        break;
    case 19:
        *v20 = ov104_0223C124(v3);
        break;
    case 20:
        *v20 = ov104_02238464(v3, v18);
        break;
    case 21:
        ov104_022384A8(v3);
        break;
    case 22:
        ov104_022384B4(v3);
        break;
    case 23:
        *v20 = ov104_02238460(v3);
        break;
    case 24:
        *v20 = v3->unk_A74;
        break;
    case 25:
        if (v3->unk_13 == 27) {
            v4 = ov104_0223BD70(v3->unk_10, 1);
            v5 = ov104_0223BDA4(v3->unk_10, 1);

            {
                VecFx32 v21;
                VecFx32 v22;
                Sprite *v23;
                Sprite *v24;

                for (v11 = 0; v11 < v4; v11++) {
                    v23 = v3->unk_30[v11]->sprite;
                    v21 = *(Sprite_GetPosition((const Sprite *)v23));

                    v24 = v3->unk_40[v11]->sprite;
                    v22 = *(Sprite_GetPosition((const Sprite *)v24));

                    Sprite_SetPosition(v23, &v22);
                    Sprite_SetPosition(v24, &v21);

                    v23 = v3->unk_50[v11]->sprite;
                    v21 = *(Sprite_GetPosition((const Sprite *)v23));

                    v24 = v3->unk_60[v11]->sprite;
                    v22 = *(Sprite_GetPosition((const Sprite *)v24));

                    Sprite_SetPosition(v23, &v22);
                    Sprite_SetPosition(v24, &v21);
                }
            }
        }
        break;
    case 6:
        sub_0209BA80(v3);
        break;
    case 28:
        *v20 = ov104_0223C000(v3->unk_10);
        break;
    case 17:
        *v20 = v3->unk_10;
        break;
    case 29:
        ov104_02232EC0(v15);
        break;
    case 30:
        ov104_02232F28(v15);
        break;
    case 31:
        ov104_02238764(v3, v15, v18);

        v4 = ov104_0223BD70(v3->unk_10, 1);
        v5 = ov104_0223BDA4(v3->unk_10, 1);

        if (v18 == 0) {
            for (v11 = 0; v11 < v4; v11++) {
                Sprite_SetExplicitPriority(v3->unk_30[v11]->sprite, 2);
            }
        } else {
            for (v11 = 0; v11 < v5; v11++) {
                Sprite_SetExplicitPriority(v3->unk_40[v11]->sprite, 2);
            }
        }
        break;
    case 32:
        ov104_02238814(v3, v15, v18);
        break;
    case 33:
        ov104_02232FEC(v15);
        break;
    case 34:
        ov104_0223307C(v15);
        break;
    case 35:
        ov104_022388DC(v3, v15, v18);
        break;
    case 36:
        ov104_022389A0(v3, v15, v18);
        break;
    case 11:
        ov104_02238658(v3, v15);
        break;
    case 37:
        if (ov104_0223C000(v3->unk_10) == 1) {
            ov104_02238728(v3, v15);
        }
        break;
    case 38:
        v6 = ov104_0223C148(v3->unk_13);

        if (v6 == 0) {
            StringTemplate_SetFrontierTrainerName(param0->unk_00->unk_44, v18, v3->unk_78[ov104_02238498(v3, v19)]);
        } else {
            if (ov104_0223C000(v3->unk_10) == 0) {
                v16 = SaveData_GetTrainerInfo(v14->saveData);
            } else {
                v16 = CommInfo_TrainerInfo(v19);
            }

            StringTemplate_SetPlayerName(param0->unk_00->unk_44, v18, v16);
        }
        break;
    case 39:
        v3->unk_A7A = v19;
        ov104_02237C0C(param0, v3, v18);
        break;
    case 40:
        ov104_0222E278(&(v3->unk_F4[0]), v3->unk_78[v3->unk_11], HEAP_ID_FIELD2, 178);
        ov104_0222E278(&(v3->unk_F4[1]), v3->unk_78[v3->unk_11 + 7], HEAP_ID_FIELD2, 178);
        break;
    case 41:
        ov104_0223886C(v3, v15, v18, v19);
        break;
    case 42:
        ov104_022388A4(v3, v15, v18, v19);
        break;
    case 43:
        ov104_02238AB4(v18, v19);
        break;
    case 44:
        if (v18 == 0) {
            PaletteData_Blend(v15->unk_04, 2, 0, 16 * 16, v18, 0x0);
        } else {
            {
                u32 v25;
                UnkStruct_ov104_0223C634 *v26;
                Sprite *v27;

                v26 = ov104_0223D5A8(param0->unk_00->unk_00, v19);
                v25 = ov63_0222D050(v26->unk_04);

                PaletteData_Blend(v15->unk_04, 2, (v25 * 16), 16, v18, 0x0);
            }
        }
        break;
    case 45:
        *v20 = ov104_02239014(v3);
        break;
    case 46:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        break;
    case 47:
        *v20 = v3->unk_1F;
        break;
    case 48:
        *v20 = 0;

        if (v3->unk_10 == 0) {
            if ((v3->unk_18 + 1) == 21) {
                *v20 = 1;
            } else if ((v3->unk_18 + 1) == 49) {
                *v20 = 2;
            }
        }
        break;
    case 49:
        ov104_0222E330(v3->unk_330, v3->unk_314, v3->unk_31C, v3->unk_320, NULL, 4, 11, 179);
        break;
    case 50:
        ov104_0223C04C(v3);
        break;
    case 51:
        *v20 = v3->unk_1E;
        v3->unk_1E = 1;
        break;
    case 52:
        v3->unk_A7C = 0;
        break;
    }

    return 0;
}

static void ov104_02237C0C(UnkStruct_ov104_0222E930 *param0, UnkStruct_ov104_0223BFFC *param1, u16 param2)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(param0->unk_00);
    ParticleSystem *v2 = ov104_0223D6D0(v1->unk_10, 0);
    ParticleSystem_CreateEmitterWithCallback(v2, param2, ov104_02237C30, param1);

    return;
}

static void ov104_02237C30(SPLEmitter *param0)
{
    VecFx32 v0;
    VecFx16 v1;
    UnkStruct_ov104_0223BFFC *v2 = ParticleSystem_GetEmitterCallbackParam();
    const VecFx32 v3[] = { FX32_ONE * -1, 0, 0 };

    if (v2->unk_A7A == 1) {
        ParticleSystem_GetEmitterAxis(param0, &v1);
        v1.x *= -1;

        SPLEmitter_SetAxis(param0, &v1);
        SPLEmitter_SetPos(param0, v3);
    }

    return;
}

BOOL ov104_02237CAC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0;
    u16 *v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_28;

    return 0;
}

BOOL ov104_02237CC8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);
    u16 *v3 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v3 = ov104_02238B40(v0, v1, v2);

    return 1;
}

BOOL ov104_02237CF8(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_02237D18);

    return 1;
}

static BOOL ov104_02237D18(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0;
    u16 v1 = ov104_0222FC8C(param0, param0->unk_78[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_A7C >= 2) {
        v0->unk_A7C = 0;
        return 1;
    }

    return 0;
}

BOOL ov104_02237D48(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    UnkStruct_ov104_0223BFFC *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);
    u16 v3 = (*((param0)->unk_1C++));

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_F4[v3].unk_00.unk_18;
    ov104_022330FC(param0, v0);

    return 1;
}

BOOL ov104_02237D84(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02238B88(v0, v0->unk_13);

    return 1;
}

BOOL ov104_02237D98(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223BFFC *v0;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(param0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022389F4(v0, v1, v2, v3, v4);

    return 0;
}
