#include "overlay005/ov5_021E622C.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"
#include "constants/species.h"
#include "generated/game_records.h"

#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026224_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_defs/chatot_cry.h"

#include "field/field_system.h"
#include "overlay005/egg_moves.h"

#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "math.h"
#include "message.h"
#include "message_util.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02017038.h"
#include "unk_020261E4.h"
#include "unk_0202CC64.h"
#include "unk_020559DC.h"
#include "unk_02092494.h"

typedef struct {
    int unk_00[4];
    int unk_10[4];
    int unk_20[4];
    u16 unk_30[50];
    u16 unk_94[16];
} UnkStruct_ov5_021E6948;

void ov5_021E6DE8(Pokemon *param0, u16 param1, UnkStruct_02026310 *param2, u32 param3, u8 param4);
void sub_020262C0(UnkStruct_02026224 *param0);
static u8 ov5_021E70FC(UnkStruct_02026310 *param0);
static int ov5_021E6F6C(Party *param0);
static u8 ov5_021E6FF0(BoxPokemon **param0);
void ov5_021E6B40(UnkStruct_02026310 *param0);
int ov5_021E6630(UnkStruct_02026310 *param0, u8 param1, StringTemplate *param2);
u8 ov5_021E6640(UnkStruct_02026310 *param0, int param1, StringTemplate *param2);
u16 ov5_021E73A0(Party *param0, int param1, StringTemplate *param2);
u8 ov5_021E73C8(UnkStruct_02026310 *param0);
void ov5_021E72BC(UnkStruct_02026310 *param0, StringTemplate *param1);
static void ov5_021E62C4(Party *param0, int param1, UnkStruct_02026218 *param2, SaveData *param3);
static int ov5_021E7110(FieldSystem *fieldSystem);

static BoxPokemon *ov5_021E622C(UnkStruct_02026310 *param0, int param1)
{
    return sub_02026220(sub_02026218(param0, param1));
}

static UnkStruct_02026310 *Unk_ov5_02202124;

u8 ov5_021E6238(UnkStruct_02026310 *param0)
{
    u8 v0, v1;
    BoxPokemon *v2;

    v0 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        v2 = sub_02026220(sub_02026218(param0, v1));

        if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) != 0) {
            v0++;
        }
    }

    return v0;
}

int ov5_021E6270(UnkStruct_02026310 *param0)
{
    u8 v0;
    BoxPokemon *v1;

    Unk_ov5_02202124 = param0;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = sub_02026220(sub_02026218(param0, v0));

        if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL) == 0) {
            return v0;
        }
    }

    return -1;
}

static int BoxPokemon_HoldsMail(BoxPokemon *boxMon)
{
    int item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    return Item_IsMail(item);
}

static void ov5_021E62C4(Party *param0, int param1, UnkStruct_02026218 *param2, SaveData *param3)
{
    int v0;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0, param1);
    const u16 *v2;
    u16 v3[10 + 1];
    UnkStruct_02026224 *v4 = sub_02026224(param2);
    BoxPokemon *v5 = sub_02026220(param2);
    TrainerInfo *v6 = SaveData_GetTrainerInfo(param3);

    v2 = TrainerInfo_Name(v6);
    Pokemon_GetValue(v1, MON_DATA_NICKNAME, v3);

    if (BoxPokemon_HoldsMail(Pokemon_GetBoxPokemon(v1))) {
        Pokemon_GetValue(v1, MON_DATA_170, sub_02026230(v4));
    }

    BoxPokemon_FromPokemon(v1, v5);
    BoxPokemon_SetShayminForm(v5, 0);
    sub_02026258(param2, 0);
    Party_RemovePokemonBySlotIndex(param0, param1);

    if (Party_HasSpecies(param0, 441) == 0) {
        ChatotCry *v7 = GetChatotCryDataFromSave(param3);
        ResetChatotCryDataStatus(v7);
    }
}

void ov5_021E6358(Party *param0, int param1, UnkStruct_02026310 *param2, SaveData *param3)
{
    int v0;
    GameRecords *v1 = SaveData_GetGameRecordsPtr(param3);

    GameRecords_IncrementRecordValue(v1, RECORD_UNK_040);
    v0 = ov5_021E6270(param2);
    ov5_021E62C4(param0, param1, sub_02026218(param2, v0), param3);
}

static void ov5_021E638C(UnkStruct_02026310 *param0)
{
    UnkStruct_02026218 *v0, *v1;
    BoxPokemon *v2, *v3;

    v0 = sub_02026218(param0, 0);
    v1 = sub_02026218(param0, 1);
    v2 = sub_02026220(v0);
    v3 = sub_02026220(v1);

    if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) == 0) {
        if (BoxPokemon_GetValue(v3, MON_DATA_SPECIES, NULL) != 0) {
            sub_020262A8(v0, v1);
            sub_020262F4(v1);
        }
    }
}

static void ov5_021E63E0(Pokemon *param0)
{
    int v0, v1 = 0, v2;
    u16 v3;
    u16 v4;

    for (v0 = 0; v0 < 100; v0++) {
        if (Pokemon_ShouldLevelUp(param0)) {
            v1 = 0;

            while ((v4 = Pokemon_LevelUpMove(param0, &v1, &v3)) != 0) {
                if (v4 == 0xffff) {
                    Pokemon_ReplaceMove(param0, v3);
                }
            }
        } else {
            break;
        }
    }

    Pokemon_CalcLevelAndStats(param0);
}

static int ov5_021E6444(Party *param0, UnkStruct_02026218 *param1, StringTemplate *param2)
{
    Pokemon *v0 = Pokemon_New(HEAP_ID_FIELD);
    BoxPokemon *v1 = sub_02026220(param1);
    UnkStruct_02026224 *v2 = sub_02026224(param1);
    u32 v3;
    u16 v4;

    StringTemplate_SetNickname(param2, 0, v1);
    v4 = BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    Pokemon_FromBoxPokemon(v1, v0);

    if (Pokemon_GetValue(v0, MON_DATA_LEVEL, NULL) != 100) {
        v3 = Pokemon_GetValue(v0, MON_DATA_EXP, NULL);
        v3 += sub_02026228(param1);
        Pokemon_SetValue(v0, MON_DATA_EXP, (u8 *)&v3);
        ov5_021E63E0(v0);
    }

    if (BoxPokemon_HoldsMail(v1)) {
        Pokemon_SetValue(v0, MON_DATA_170, sub_02026230(v2));
    }

    Party_AddPokemon(param0, v0);
    BoxPokemon_Init(v1);
    sub_02026258(param1, 0);
    Heap_FreeToHeap(v0);

    return v4;
}

u16 ov5_021E64F8(Party *param0, StringTemplate *param1, UnkStruct_02026310 *param2, u8 param3)
{
    u16 v0;
    UnkStruct_02026218 *v1 = sub_02026218(param2, param3);

    v0 = ov5_021E6444(param0, v1, param1);
    ov5_021E638C(param2);

    return v0;
}

int BoxPokemon_GiveExperience(BoxPokemon *boxMon, u32 givenExp)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD);
    BoxPokemon *boxMonRef = Pokemon_GetBoxPokemon(mon);
    int level;
    u32 exp;

    BoxPokemon_Copy(boxMon, boxMonRef);

    exp = BoxPokemon_GetValue(boxMonRef, MON_DATA_EXP, NULL);
    exp += givenExp;

    BoxPokemon_SetValue(boxMonRef, MON_DATA_EXP, (u8 *)&exp);
    level = BoxPokemon_GetLevel(boxMonRef);
    Heap_FreeToHeap(mon);

    return level;
}

int ov5_021E6568(UnkStruct_02026218 *param0)
{
    u8 v0, v1;
    BoxPokemon *v2 = sub_02026220(param0);
    v0 = BoxPokemon_GetLevel(v2);
    v1 = BoxPokemon_GiveExperience(v2, sub_02026228(param0));

    return v1 - v0;
}

int ov5_021E6590(UnkStruct_02026218 *param0)
{
    u8 v0;
    BoxPokemon *v1 = sub_02026220(param0);
    v0 = BoxPokemon_GiveExperience(v1, sub_02026228(param0));

    return v0;
}

u8 ov5_021E65B0(UnkStruct_02026218 *param0, StringTemplate *param1)
{
    int v0;
    Strbuf *v1;
    u16 v2[10 + 1];
    BoxPokemon *v3 = sub_02026220(param0);

    v0 = ov5_021E6568(param0);

    StringTemplate_SetNumber(param1, 1, v0, 3, 0, 1);
    StringTemplate_SetNickname(param1, 0, v3);

    return v0;
}

int ov5_021E65EC(UnkStruct_02026218 *param0, StringTemplate *param1)
{
    u16 v0;
    BoxPokemon *v1 = sub_02026220(param0);

    v0 = ov5_021E6568(param0);
    StringTemplate_SetNickname(param1, 0, v1);

    v0 = v0 * 100 + 100;
    StringTemplate_SetNumber(param1, 1, v0, 5, 0, 1);

    return v0;
}

int ov5_021E6630(UnkStruct_02026310 *param0, u8 param1, StringTemplate *param2)
{
    UnkStruct_02026218 *v0 = sub_02026218(param0, param1);
    return ov5_021E65EC(v0, param2);
}

u8 ov5_021E6640(UnkStruct_02026310 *param0, int param1, StringTemplate *param2)
{
    UnkStruct_02026218 *v0 = sub_02026218(param0, param1);
    BoxPokemon *v1 = sub_02026220(v0);

    if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL)) {
        return ov5_021E65B0(v0, param2);
    }

    return 0;
}

static void ov5_021E6668(UnkStruct_02026310 *param0, BoxPokemon *boxMon[])
{
    boxMon[0] = ov5_021E622C(param0, 0);
    boxMon[1] = ov5_021E622C(param0, 1);
}

static int ov5_021E6684(UnkStruct_02026310 *param0)
{
    int v0;
    int v1[2], v2 = -1, v3;
    BoxPokemon *v4[2];

    ov5_021E6668(param0, v4);

    for (v0 = 0; v0 < 2; v0++) {
        if (BoxPokemon_GetGender(v4[v0]) == 1) {
            v2 = v0;
        }
    }

    for (v3 = 0, v0 = 0; v0 < 2; v0++) {
        if ((v1[v0] = BoxPokemon_GetValue(v4[v0], MON_DATA_SPECIES, NULL)) == SPECIES_DITTO) {
            v3++;
            v2 = v0;
        }
    }

    if (v3 == 2) {
        if (LCRNG_Next() >= (0xffff / 2)) {
            v2 = 0;
        } else {
            v2 = 1;
        }
    }

    if (BoxPokemon_GetValue(v4[v2], MON_DATA_HELD_ITEM, NULL) == ITEM_EVERSTONE) {
        if (LCRNG_Next() >= (0xffff / 2)) {
            return -1;
        }
    } else {
        return -1;
    }

    return v2;
}

void ov5_021E6720(UnkStruct_02026310 *param0)
{
    u32 v0 = 0, v1;
    int v2, v3;
    int v4 = 0;

    if ((v2 = ov5_021E6684(param0)) < 0) {
        sub_02026270(param0, MTRNG_Next());
    } else {
        BoxPokemon *v5 = ov5_021E622C(param0, v2);

        v0 = BoxPokemon_GetValue(v5, MON_DATA_PERSONALITY, NULL);
        v3 = Pokemon_GetNatureOf(v0);

        while (TRUE) {
            v1 = MTRNG_Next();

            if ((v3 == Pokemon_GetNatureOf(v1)) && (v1 != 0)) {
                break;
            }

            if (++v4 > 2400) {
                break;
            }
        }

        sub_02026270(param0, v1);
    }
}

static void ov5_021E6778(u8 *param0, u8 param1)
{
    int v0, v1;
    u8 v2[6];

    param0[param1] = 0xff;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = param0[v0];
    }

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v2[v0] != 0xff) {
            param0[v1++] = v2[v0];
        }
    }
}

static void ov5_021E67B0(Pokemon *param0, UnkStruct_02026310 *param1)
{
    u8 v0[3], v1, v2[6], v3[3], v4;

    for (v1 = 0; v1 < 6; v1++) {
        v2[v1] = v1;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0[v1] = v2[LCRNG_Next() % (6 - v1)];
        ov5_021E6778(v2, v1);
    }

    for (v1 = 0; v1 < 3; v1++) {
        v3[v1] = LCRNG_Next() % 2;
    }

    for (v1 = 0; v1 < 3; v1++) {
        BoxPokemon *v5 = ov5_021E622C(param1, v3[v1]);

        switch (v0[v1]) {
        case 0:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_HP_IV, NULL);
            Pokemon_SetValue(param0, MON_DATA_HP_IV, (u8 *)&v4);
            break;
        case 1:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_ATK_IV, NULL);
            Pokemon_SetValue(param0, MON_DATA_ATK_IV, (u8 *)&v4);
            break;
        case 2:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_DEF_IV, NULL);
            Pokemon_SetValue(param0, MON_DATA_DEF_IV, (u8 *)&v4);
            break;
        case 3:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_SPEED_IV, NULL);
            Pokemon_SetValue(param0, MON_DATA_SPEED_IV, (u8 *)&v4);
            break;
        case 4:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_SPATK_IV, NULL);
            Pokemon_SetValue(param0, MON_DATA_SPATK_IV, (u8 *)&v4);
            break;
        case 5:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_SPDEF_IV, NULL);
            Pokemon_SetValue(param0, MON_DATA_SPDEF_IV, (u8 *)&v4);
            break;
        }
    }
}

static u8 ov5_021E68D8(Pokemon *mon, u16 *param1)
{
    u16 species, v1, v2, i;

    v2 = 0;
    v1 = 0;
    species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    for (i = 0; i < NELEMS(sEggMoves) - 1; i++) {
        if (sEggMoves[i] == (EGG_MOVES_SPECIES_OFFSET + species)) {
            v1 = i + 1;
            break;
        }
    }

    for (i = 0; i < 16; i++) {
        if (sEggMoves[v1 + i] > EGG_MOVES_SPECIES_OFFSET) {
            break;
        } else {
            param1[i] = sEggMoves[v1 + i];
            v2++;
        }
    }

    return v2;
}

static void ov5_021E6948(Pokemon *param0, BoxPokemon *param1, BoxPokemon *param2)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    UnkStruct_ov5_021E6948 *v7 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E6948));

    v2 = 0;

    MI_CpuClearFast(v7, sizeof(UnkStruct_ov5_021E6948));

    v3 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    v6 = Pokemon_GetValue(param0, MON_DATA_FORM, NULL);
    v4 = Pokemon_LoadLevelUpMoveIdsOf(v3, v6, v7->unk_30);

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        v7->unk_00[v0] = BoxPokemon_GetValue(param1, MON_DATA_MOVE1 + v0, NULL);
        v7->unk_20[v0] = BoxPokemon_GetValue(param2, MON_DATA_MOVE1 + v0, NULL);
    }

    v5 = ov5_021E68D8(param0, v7->unk_94);

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < v5; v1++) {
                if (v7->unk_00[v0] == v7->unk_94[v1]) {
                    if (Pokemon_AddMove(param0, v7->unk_00[v0]) == 0xffff) {
                        Pokemon_ReplaceMove(param0, v7->unk_00[v0]);
                    }
                    break;
                }
            }
        } else {
            break;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < 100; v1++) {
                if (v7->unk_00[v0] == Item_MoveForTMHM(328 + v1)) {
                    if (CanPokemonFormLearnTM(v3, v6, v1)) {
                        if (Pokemon_AddMove(param0, v7->unk_00[v0]) == 0xffff) {
                            Pokemon_ReplaceMove(param0, v7->unk_00[v0]);
                        }
                    }
                }
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < 4; v1++) {
            if ((v7->unk_00[v0] == v7->unk_20[v1]) && (v7->unk_00[v0] != 0)) {
                v7->unk_10[v2++] = v7->unk_00[v0];
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_10[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < v4; v1++) {
            if (v7->unk_30[v1] != 0) {
                if (v7->unk_10[v0] == v7->unk_30[v1]) {
                    if (Pokemon_AddMove(param0, v7->unk_10[v0]) == 0xffff) {
                        Pokemon_ReplaceMove(param0, v7->unk_10[v0]);
                    }
                    break;
                }
            }
        }
    }

    Heap_FreeToHeap(v7);
}

void ov5_021E6B40(UnkStruct_02026310 *param0)
{
    sub_02026270(param0, 0);
    sub_02026278(param0, 0);
}

static const u16 Unk_ov5_021F9F6C[9][3] = {
    { 0x168, 0xFF, 0xCA },
    { 0x12A, 0xFE, 0xB7 },
    { 0x1B7, 0x13A, 0x7A },
    { 0x1B6, 0x13B, 0xB9 },
    { 0x1BE, 0x13C, 0x8F },
    { 0x1CA, 0x13D, 0xE2 },
    { 0x196, 0x13E, 0x13B },
    { 0x1B8, 0x13F, 0x71 },
    { 0x1B1, 0x140, 0x166 }
};

static u16 ov5_021E6B54(u16 param0, UnkStruct_02026310 *param1)
{
    u16 v0, v1, v2, v3;
    BoxPokemon *v4[2];

    ov5_021E6668(param1, v4);

    for (v3 = 0; v3 < 9; v3++) {
        if (param0 == Unk_ov5_021F9F6C[v3][0]) {
            v2 = v3;
            break;
        }
    }

    if (v3 == 9) {
        return param0;
    }

    v0 = BoxPokemon_GetValue(v4[0], MON_DATA_HELD_ITEM, NULL);
    v1 = BoxPokemon_GetValue(v4[1], MON_DATA_HELD_ITEM, NULL);

    if ((v0 != Unk_ov5_021F9F6C[v2][1]) && (v1 != Unk_ov5_021F9F6C[v2][1])) {
        param0 = Unk_ov5_021F9F6C[v2][2];
    }

    return param0;
}

static void ov5_021E6BD0(Pokemon *param0, UnkStruct_02026310 *param1)
{
    int v0, v1;
    BoxPokemon *v2[2];

    ov5_021E6668(param1, v2);

    v0 = BoxPokemon_GetValue(v2[0], MON_DATA_HELD_ITEM, NULL);
    v1 = BoxPokemon_GetValue(v2[1], MON_DATA_HELD_ITEM, NULL);

    if ((v0 == 236) || (v1 == 236)) {
        if (Pokemon_AddMove(param0, 344) == 0xffff) {
            Pokemon_ReplaceMove(param0, 344);
        }
    }
}

static u16 ov5_021E6C20(UnkStruct_02026310 *param0, u8 param1[])
{
    u16 v0[2], v1, v2, v3, v4, v5;
    BoxPokemon *v6[2];

    ov5_021E6668(param0, v6);

    v2 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        if ((v0[v1] = BoxPokemon_GetValue(v6[v1], MON_DATA_SPECIES, NULL)) == 132) {
            param1[0] = v1 ^ 1;
            param1[1] = v1;
        } else if (BoxPokemon_GetGender(v6[v1]) == 1) {
            param1[0] = v1;
            param1[1] = v1 ^ 1;
        }
    }

    v3 = v0[param1[0]];
    v4 = sub_02076F84(v3);

    if (v4 == 29) {
        if (sub_02026248(param0) & 0x8000) {
            v4 = 32;
        } else {
            v4 = 29;
        }
    }

    if (v4 == 314) {
        if (sub_02026248(param0) & 0x8000) {
            v4 = 313;
        } else {
            v4 = 314;
        }
    }

    if (v4 == 490) {
        v4 = 489;
    }

    if ((v0[param1[1]] == 132) && (BoxPokemon_GetGender(v6[param1[0]]) != 1)) {
        v5 = param1[1];
        param1[1] = param1[0];
        param1[0] = v5;
    }

    return v4;
}

void Egg_CreateEgg(Pokemon *egg, u16 species, u8 param2, TrainerInfo *trainerInfo, int param4, int metLocation)
{
    u8 metLvl, isEgg;
    u16 ball;
    u8 hatchCycles = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_HATCH_CYCLES);
    Strbuf *eggName;

    Pokemon_InitWith(egg, species, 1, INIT_IVS_RANDOM, FALSE, 0, OTID_NOT_SET, 0);

    metLvl = 0;
    ball = ITEM_POKE_BALL;

    Pokemon_SetValue(egg, MON_DATA_POKEBALL, &ball);
    Pokemon_SetValue(egg, MON_DATA_FRIENDSHIP, &hatchCycles);
    Pokemon_SetValue(egg, MON_DATA_MET_LEVEL, &metLvl);

    if (param2) {
        Pokemon_SetValue(egg, MON_DATA_MET_LOCATION, &param2);
    }

    isEgg = TRUE;
    Pokemon_SetValue(egg, MON_DATA_IS_EGG, &isEgg);

    eggName = MessageUtil_SpeciesName(SPECIES_EGG, HEAP_ID_FIELD);
    Pokemon_SetValue(egg, MON_DATA_NICKNAME_STRBUF, eggName);
    Strbuf_Free(eggName);

    if (param4 == 4) {
        u32 trainerId = TrainerInfo_ID(trainerInfo);
        u32 gender = TrainerInfo_Gender(trainerInfo);
        Strbuf *otName = TrainerInfo_NameNewStrbuf(trainerInfo, 32);

        Pokemon_SetValue(egg, MON_DATA_OTNAME_STRBUF, otName);
        Pokemon_SetValue(egg, MON_DATA_OT_ID, &trainerId);
        Pokemon_SetValue(egg, MON_DATA_OT_GENDER, &gender);
        Strbuf_Free(otName);
    }

    UpdateMonStatusAndTrainerInfo(egg, trainerInfo, param4, metLocation, HEAP_ID_SYSTEM);
}

void ov5_021E6DE8(Pokemon *param0, u16 param1, UnkStruct_02026310 *param2, u32 param3, u8 param4)
{
    u8 v0;
    u16 v1;
    u32 v2;
    Strbuf *v3;
    u8 hatchCycles = SpeciesData_GetSpeciesValue(param1, SPECIES_DATA_HATCH_CYCLES);

    v2 = sub_02026248(param2);

    if (sub_02026280(param2)) {
        int v5;

        if (Pokemon_IsPersonalityShiny(param3, v2) == 0) {
            for (v5 = 0; v5 < 4; v5++) {
                v2 = ARNG_Next(v2);

                if (Pokemon_IsPersonalityShiny(param3, v2)) {
                    break;
                }
            }
        } else {
            (void)0;
        }
    }

    Pokemon_InitWith(param0, param1, 1, INIT_IVS_RANDOM, TRUE, v2, OTID_NOT_SET, 0);

    v0 = 0;
    v1 = ITEM_POKE_BALL;

    Pokemon_SetValue(param0, MON_DATA_POKEBALL, &v1);
    Pokemon_SetValue(param0, MON_DATA_FRIENDSHIP, &hatchCycles);
    Pokemon_SetValue(param0, MON_DATA_MET_LEVEL, &v0);
    Pokemon_SetValue(param0, MON_DATA_FORM, &param4);

    v3 = MessageUtil_SpeciesName(SPECIES_EGG, 4);

    Pokemon_SetValue(param0, MON_DATA_NICKNAME_STRBUF, v3);
    Strbuf_Free(v3);
}

void ov5_021E6EA8(UnkStruct_02026310 *param0, Party *param1, TrainerInfo *param2)
{
    u16 v0;
    u8 v1[2], v2;
    Pokemon *v3 = Pokemon_New(HEAP_ID_FIELD);

    v0 = ov5_021E6C20(param0, v1);
    v0 = ov5_021E6B54(v0, param0);

    {
        u32 v4 = TrainerInfo_ID(param2);
        BoxPokemon *v5 = ov5_021E622C(param0, v1[0]);
        u8 v6 = BoxPokemon_GetValue(v5, MON_DATA_FORM, NULL);

        ov5_021E6DE8(v3, v0, param0, v4, v6);
    }

    ov5_021E67B0(v3, param0);
    ov5_021E6948(v3, ov5_021E622C(param0, v1[1]), ov5_021E622C(param0, v1[0]));

    UpdateMonStatusAndTrainerInfo(v3, param2, 3, SpecialMetLoc_GetId(1, 0), HEAP_ID_FIELD);

    if (v0 == 172) {
        ov5_021E6BD0(v3, param0);
    }

    v2 = 1;
    Pokemon_SetValue(v3, MON_DATA_IS_EGG, &v2);

    Party_AddPokemon(param1, v3);
    ov5_021E6B40(param0);
    Heap_FreeToHeap(v3);
}

static int ov5_021E6F6C(Party *param0)
{
    u8 v0;
    u8 v1;
    int v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        if (Pokemon_GetValue(Party_GetPokemonBySlotIndex(param0, v0), MON_DATA_EGG_EXISTS, NULL) == 0) {
            v1 = Pokemon_GetValue(Party_GetPokemonBySlotIndex(param0, v0), MON_DATA_ABILITY, NULL);

            if ((v1 == 40) || (v1 == 49)) {
                return 2;
            }
        }
    }

    return 1;
}

static u8 ov5_021E6FC0(u16 *param0, u16 *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 2; v1++) {
            if (param0[v0] == param1[v1]) {
                return 1;
            }
        }
    }

    return 0;
}

static u8 ov5_021E6FF0(BoxPokemon **param0)
{
    u16 v0[2][2], v1[2];
    u32 v2[2], v3[2], v4, v5;

    for (v5 = 0; v5 < 2; v5++) {
        v1[v5] = BoxPokemon_GetValue(param0[v5], MON_DATA_SPECIES, NULL);
        v2[v5] = BoxPokemon_GetValue(param0[v5], MON_DATA_OT_ID, NULL);
        v4 = BoxPokemon_GetValue(param0[v5], MON_DATA_PERSONALITY, NULL);
        v3[v5] = Pokemon_GetGenderOf(v1[v5], v4);
        v0[v5][0] = SpeciesData_GetSpeciesValue(v1[v5], SPECIES_DATA_EGG_GROUP_1);
        v0[v5][1] = SpeciesData_GetSpeciesValue(v1[v5], SPECIES_DATA_EGG_GROUP_2);
    }

    if ((v0[0][0] == 15) || (v0[1][0] == 15)) {
        return 0;
    }

    if ((v0[0][0] == 13) && (v0[1][0] == 13)) {
        return 0;
    }

    if ((v0[0][0] == 13) || (v0[1][0] == 13)) {
        if (v2[0] == v2[1]) {
            return 20;
        } else {
            return 50;
        }
    }

    if (v3[0] == v3[1]) {
        return 0;
    }

    if ((v3[0] == 2) || (v3[1] == 2)) {
        return 0;
    }

    if (ov5_021E6FC0(v0[0], v0[1]) == 0) {
        return 0;
    }

    if (v1[0] == v1[1]) {
        if (v2[0] != v2[1]) {
            return 70;
        } else {
            return 50;
        }
    } else {
        if (v2[0] != v2[1]) {
            return 50;
        } else {
            return 20;
        }
    }

    return 0;
}

static u8 ov5_021E70FC(UnkStruct_02026310 *param0)
{
    BoxPokemon *v0[2];

    ov5_021E6668(param0, v0);
    return ov5_021E6FF0(v0);
}

static const u16 Unk_ov5_021F9F54[] = {
    0x70,
    0xD6,
    0x12F,
    0x191,
    0x1F5,
    0x263,
    0x2C3,
    0x335,
    0x38B,
    0x3A0,
    0x461,
    0x4BE
};

static int ov5_021E7110(FieldSystem *fieldSystem)
{
    int v0 = sub_02055BB8(fieldSystem) * 100 + sub_02055BC4(fieldSystem);
    int v1;

    if (sub_02055C40(fieldSystem)) {
        return 255;
    }

    for (v1 = 0; v1 < NELEMS(Unk_ov5_021F9F54); v1++) {
        if (Unk_ov5_021F9F54[v1] == v0) {
            return 230;
        }
    }

    return 255;
}

BOOL ov5_021E7154(UnkStruct_02026310 *param0, Party *param1, FieldSystem *fieldSystem)
{
    u32 v0, v1, v2, v3, v4;
    u32 v5 = 0, v6;
    int v7;
    BoxPokemon *v8[2];

    ov5_021E6668(param0, v8);

    v2 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        if (BoxPokemon_GetValue(v8[v0], MON_DATA_SPECIES_EXISTS, NULL) != 0) {
            sub_02026260(sub_02026218(param0, v0), 1);
            v2++;
        }
    }

    if ((sub_02026234(param0) == 0) && (v2 == 2)) {
        if ((sub_02026228(sub_02026218(param0, 1)) & 0xff) == 0xff) {
            v3 = ov5_021E70FC(param0);
            v4 = LCRNG_Next();
            v4 = (v4 * 100) / 0xffff;

            if (v3 > v4) {
                ov5_021E6720(param0);
            }
        }
    }

    v6 = sub_02026250(param0);
    sub_02026278(param0, ++v6);

    if (v6 == ov5_021E7110(fieldSystem)) {
        sub_02026278(param0, 0);
        v7 = ov5_021E6F6C(param1);

        for (v0 = 0; v0 < Party_GetCurrentCount(param1); v0++) {
            Pokemon *v9 = Party_GetPokemonBySlotIndex(param1, v0);

            if (Pokemon_GetValue(v9, MON_DATA_IS_EGG, NULL)) {
                if (Pokemon_GetValue(v9, MON_DATA_IS_DATA_INVALID, NULL)) {
                    continue;
                }

                v1 = Pokemon_GetValue(v9, MON_DATA_FRIENDSHIP, NULL);

                if (v1 != 0) {
                    if (v1 >= v7) {
                        v1 -= v7;
                    } else {
                        v1--;
                    }

                    Pokemon_SetValue(v9, MON_DATA_FRIENDSHIP, (u8 *)&v1);
                } else {
                    return 1;
                }
            }
        }
    }

    return 0;
}

Pokemon *ov5_021E7278(Party *param0)
{
    int v0;
    Pokemon *v1;
    int v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        v1 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL)
            && (Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL) == 0)) {
            return v1;
        }
    }

    return NULL;
}

void ov5_021E72BC(UnkStruct_02026310 *param0, StringTemplate *param1)
{
    BoxPokemon *v0[2];
    u16 v1[10 + 1];

    ov5_021E6668(param0, v0);

    if (BoxPokemon_GetValue(v0[0], MON_DATA_SPECIES, NULL) != 0) {
        StringTemplate_SetNickname(param1, 0, v0[0]);
        StringTemplate_SetOTName(param1, 2, v0[0]);
    }

    if (BoxPokemon_GetValue(v0[1], MON_DATA_SPECIES, NULL) != 0) {
        StringTemplate_SetNickname(param1, 1, v0[1]);
    }
}

void ov5_021E7308(UnkStruct_02026310 *param0, u32 param1, u32 param2, u32 param3, u8 param4, StringTemplate *param5)
{
    UnkStruct_02026218 *v0;
    BoxPokemon *v1;
    u8 v2, v3;
    u16 v4;

    v0 = sub_02026218(param0, param4);
    v1 = ov5_021E622C(param0, param4);

    StringTemplate_SetNickname(param5, param1, v1);

    v2 = BoxPokemon_GiveExperience(v1, sub_02026228(v0));
    StringTemplate_SetNumber(param5, param2, v2, 3, 0, 1);
    v3 = BoxPokemon_GetValue(v1, MON_DATA_GENDER, NULL);

    if (v3 != 2) {
        v4 = BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

        if (((v4 == SPECIES_NIDORAN_F) || (v4 == SPECIES_NIDORAN_M)) && (BoxPokemon_GetValue(v1, MON_DATA_HAS_NICKNAME, NULL) == 0)) {
            v3 = 2;
        }
    }

    StringTemplate_SetGenderMarker(param5, param3, v3);
}

u16 ov5_021E73A0(Party *param0, int param1, StringTemplate *param2)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0, param1);

    StringTemplate_SetNickname(param2, 0, Pokemon_GetBoxPokemon(v0));
    return Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
}

u8 ov5_021E73C8(UnkStruct_02026310 *param0)
{
    u8 v0;

    if (sub_02026234(param0)) {
        return 1;
    }

    if ((v0 = ov5_021E6238(param0))) {
        return v0 + 1;
    }

    return 0;
}

u8 ov5_021E73F0(u32 param0)
{
    switch (param0) {
    case 0:
        return 3;
    case 20:
        return 2;
    case 50:
        return 1;
    case 70:
        return 0;
    }

    return 0;
}

extern u32 ov5_021E7420(UnkStruct_02026310 *param0)
{
    u8 v0 = ov5_021E70FC(param0);
    u8 v1 = ov5_021E73F0(v0);

    return v1;
}

static void ov5_021E742C(Pokemon *param0, int param1)
{
    u16 v0;
    u16 v1[4];
    u8 v2[4];
    u32 v3, v4;
    u8 v5[6], v6;
    u8 v7, v8, v9, v10, v11, v12, v13, v14;
    Strbuf *v15 = Strbuf_Init(7 + 1, param1);
    Pokemon *v16 = Pokemon_New(param1);

    v0 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    for (v7 = 0; v7 < LEARNED_MOVES_MAX; v7++) {
        v1[v7] = Pokemon_GetValue(param0, MON_DATA_MOVE1 + v7, NULL);
        v2[v7] = Pokemon_GetValue(param0, MON_DATA_MOVE1_CUR_PP + v7, NULL);
    }

    v3 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);

    for (v7 = 0; v7 < 6; v7++) {
        v5[v7] = Pokemon_GetValue(param0, MON_DATA_HP_IV + v7, NULL);
    }

    v8 = Pokemon_GetValue(param0, MON_DATA_LANGUAGE, NULL);
    v9 = Pokemon_GetValue(param0, MON_DATA_MET_GAME, NULL);
    v10 = Pokemon_GetValue(param0, MON_DATA_MARKS, NULL);
    v6 = Pokemon_GetValue(param0, MON_DATA_POKERUS, NULL);
    v12 = Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    Pokemon_GetValue(param0, MON_DATA_OTNAME_STRBUF, v15);

    v14 = Pokemon_GetValue(param0, MON_DATA_OT_GENDER, NULL);
    v4 = Pokemon_GetValue(param0, MON_DATA_OT_ID, NULL);
    v13 = Pokemon_GetValue(param0, MON_DATA_FORM, NULL);

    if (v0 == SPECIES_MANAPHY) {
        int v17 = Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL);

        if (v17 == SpecialMetLoc_GetId(2, 1)) {
            while (Pokemon_IsPersonalityShiny(v4, v3)) {
                v3 = ARNG_Next(v3);
            }
        }
    }

    Pokemon_InitWith(v16, v0, 1, INIT_IVS_RANDOM, TRUE, v3, OTID_NOT_SET, 0);

    for (v7 = 0; v7 < LEARNED_MOVES_MAX; v7++) {
        Pokemon_SetValue(v16, MON_DATA_MOVE1 + v7, &(v1[v7]));
        Pokemon_SetValue(v16, MON_DATA_MOVE1_CUR_PP + v7, &(v2[v7]));
    }

    for (v7 = 0; v7 < 6; v7++) {
        Pokemon_SetValue(v16, MON_DATA_HP_IV + v7, &(v5[v7]));
    }

    Pokemon_SetValue(v16, MON_DATA_LANGUAGE, &v8);
    Pokemon_SetValue(v16, MON_DATA_MET_GAME, &v9);
    Pokemon_SetValue(v16, MON_DATA_MARKS, &v10);

    v11 = 120;

    Pokemon_SetValue(v16, MON_DATA_FRIENDSHIP, &v11);
    Pokemon_SetValue(v16, MON_DATA_POKERUS, &v6);
    Pokemon_SetValue(v16, MON_DATA_FATEFUL_ENCOUNTER, &v12);
    Pokemon_SetValue(v16, MON_DATA_OTNAME_STRBUF, v15);
    Pokemon_SetValue(v16, MON_DATA_OT_GENDER, &v14);
    Pokemon_SetValue(v16, MON_DATA_OT_ID, &v4);
    Pokemon_SetValue(v16, MON_DATA_FORM, &v13);

    {
        u16 v18;
        u8 v19, v20, v21;

        v18 = Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL);
        v19 = Pokemon_GetValue(param0, MON_DATA_MET_YEAR, NULL);
        v20 = Pokemon_GetValue(param0, MON_DATA_MET_MONTH, NULL);
        v21 = Pokemon_GetValue(param0, MON_DATA_MET_DAY, NULL);

        Pokemon_SetValue(v16, MON_DATA_MET_LOCATION, &v18);
        Pokemon_SetValue(v16, MON_DATA_MET_YEAR, &v19);
        Pokemon_SetValue(v16, MON_DATA_MET_MONTH, &v20);
        Pokemon_SetValue(v16, MON_DATA_MET_DAY, &v21);

        v18 = Pokemon_GetValue(param0, MON_DATA_HATCH_LOCATION, NULL);
        v19 = Pokemon_GetValue(param0, MON_DATA_HATCH_YEAR, NULL);
        v20 = Pokemon_GetValue(param0, MON_DATA_HATCH_MONTH, NULL);
        v21 = Pokemon_GetValue(param0, MON_DATA_HATCH_DAY, NULL);

        Pokemon_SetValue(v16, MON_DATA_HATCH_LOCATION, &v18);
        Pokemon_SetValue(v16, MON_DATA_HATCH_YEAR, &v19);
        Pokemon_SetValue(v16, MON_DATA_HATCH_MONTH, &v20);
        Pokemon_SetValue(v16, MON_DATA_HATCH_DAY, &v21);
    }

    Pokemon_Copy(v16, param0);
    Strbuf_Free(v15);
    Heap_FreeToHeap(v16);
}

void ov5_021E771C(Pokemon *param0, int param1)
{
    u8 v0, v1;
    u8 v2, v3;
    u16 v4;
    u16 v5[11];

    v0 = 70;
    v1 = 0;
    v2 = 4;
    v3 = 0;

    ov5_021E742C(param0, param1);
    Pokemon_SetValue(param0, MON_DATA_IS_EGG, &v0);

    v4 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    MessageLoader_GetSpeciesName(v4, 0, v5);
    Pokemon_SetValue(param0, MON_DATA_NICKNAME, v5);
    Pokemon_SetValue(param0, MON_DATA_HAS_NICKNAME, &v1);
    Pokemon_SetValue(param0, MON_DATA_POKEBALL, &v2);
    Pokemon_SetValue(param0, MON_DATA_MET_LEVEL, &v3);
    Pokemon_CalcLevelAndStats(param0);
}

u32 ov5_021E7790(BoxPokemon **param0)
{
    return ov5_021E73F0(ov5_021E6FF0(param0));
}
