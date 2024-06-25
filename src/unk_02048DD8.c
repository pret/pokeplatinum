#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "consts/game_records.h"

#include "strbuf.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "message.h"
#include "string_template.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "unk_020298BC.h"
#include "game_records.h"
#include "unk_0202E2CC.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_02048DD8.h"
#include "unk_02054884.h"
#include "poketch_data.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "party.h"
#include "overlay006/ov6_022465FC.h"
#include "overlay006/ov6_02246A30.h"
#include "overlay025/poketch_system.h"

typedef void (* UnkFuncPtr_020EBB48)(FieldSystem *, u16);
typedef void (* UnkFuncPtr_020EBB48_1)(FieldSystem *, StringTemplate *);
typedef BOOL (* UnkFuncPtr_020EBB48_2)(FieldSystem *);

typedef struct {
    UnkFuncPtr_020EBB48 unk_00;
    UnkFuncPtr_020EBB48_1 unk_04;
    UnkFuncPtr_020EBB48_2 unk_08;
    u32 unk_0C;
} UnkStruct_020EBB48;

static int sub_020491D0(int param0, FieldSystem * fieldSystem, StringTemplate * param2);
static void sub_020491B8(FieldSystem * fieldSystem, int param1, u16 param2, u16 param3);
static BOOL sub_020491F4(FieldSystem * fieldSystem, int param1);
BOOL ScrCmd_31B(ScriptContext * param0);
BOOL ScrCmd_329(ScriptContext * param0);

BOOL ScrCmd_235 (ScriptContext * param0)
{
    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
    {
        u16 * v0 = ScriptContext_GetVarPointer(param0);

        *v0 = ov6_0224660C(param0->fieldSystem);
    }
    break;
    case 1:
    {
        u16 v1 = ScriptContext_ReadHalfWord(param0);
        u16 * v2 = ScriptContext_GetVarPointer(param0);
        u16 * v3 = ScriptContext_GetVarPointer(param0);

        *v2 = 622;
        *v3 = ov6_02246978(param0->fieldSystem, v1);
    }
    break;
    case 3:
    {
        StringTemplate ** v4 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
        u16 v5 = ScriptContext_GetVar(param0);
        u16 * v6 = ScriptContext_GetVarPointer(param0);
        u16 * v7 = ScriptContext_GetVarPointer(param0);

        ov6_022469E0(param0->fieldSystem, *v4, v5, v6, v7);
    }
    break;
    case 2:
        ov6_022465FC(param0->fieldSystem);
        break;
    case 4:
    {
        u16 * v8 = ScriptContext_GetVarPointer(param0);
        u16 * v9 = ScriptContext_GetVarPointer(param0);

        *v8 = 623;
        *v9 = ov6_02246B40(param0->fieldSystem);
    }
    break;
    case 5:
    {
        u16 v10 = ScriptContext_GetVar(param0);
        u16 v11 = ScriptContext_GetVar(param0);
        u16 * v12 = ScriptContext_GetVarPointer(param0);

        *v12 = ov6_022468B0(param0->fieldSystem, v10, v11);
    }
    break;
    case 6:
    {
        u16 * v13 = ScriptContext_GetVarPointer(param0);
        *v13 = ov6_02246920(param0->fieldSystem);
    }
    break;
    }

    return 0;
}

BOOL ScrCmd_236 (ScriptContext * param0)
{
    sub_0206D4AC(param0->fieldSystem, ScriptContext_GetVar(param0));
    return 0;
}

BOOL ScrCmd_2B8 (ScriptContext * param0)
{
    Party * v0 = Party_GetFromSavedata(param0->fieldSystem->saveData);
    Pokemon * v1 = Party_GetPokemonBySlotIndex(v0, ScriptContext_GetVar(param0));

    sub_0206D60C(param0->fieldSystem, v1);
    return 0;
}

BOOL ScrCmd_30B (ScriptContext * param0)
{
    sub_0206D7C4(param0->fieldSystem);
    return 0;
}

BOOL ScrCmd_30C (ScriptContext * param0)
{
    sub_0206DB20(param0->fieldSystem);
    return 0;
}

BOOL ScrCmd_30D (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    sub_0206DB5C(param0->fieldSystem, v0);
    return 0;
}

static const UnkStruct_020EBB48 Unk_020EBB48[19];

BOOL ScrCmd_237 (ScriptContext * param0)
{
    StringTemplate ** v0;

    v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
    {
        int v1;
        u16 * v2;
        u16 * v3;

        v1 = ScriptContext_GetVar(param0);
        v2 = ScriptContext_GetVarPointer(param0);
        v3 = ScriptContext_GetVarPointer(param0);
        *v2 = 621;
        *v3 = sub_020491D0(v1, param0->fieldSystem, *v0);
    }
    break;
    case 1:
    {
        u16 v4;
        u16 v5, v6;
        GameRecords * v7 = SaveData_GetGameRecordsPtr(param0->fieldSystem->saveData);

        v4 = ScriptContext_GetVar(param0);
        v5 = ScriptContext_GetVar(param0);
        v6 = ScriptContext_GetVar(param0);

        sub_020491B8(param0->fieldSystem, v4, v5, v6);
        GameRecords_IncrementTrainerScore(v7, TRAINER_SCORE_EVENT_UNK_03);
    }
    break;
    }

    return 0;
}

BOOL ScrCmd_238 (ScriptContext * param0)
{
    u16 v0;
    u16 * v1;

    v0 = ScriptContext_GetVar(param0);
    v1 = ScriptContext_GetVarPointer(param0);
    *v1 = sub_020491F4(param0->fieldSystem, v0);

    return 0;
}

BOOL ScrCmd_27C (ScriptContext * param0)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0->fieldSystem->saveData);

    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
    {
        Party * v1 = Party_GetFromSavedata(param0->fieldSystem->saveData);
        Pokemon * v2 = Party_GetPokemonBySlotIndex(v1, ScriptContext_GetVar(param0));

        sub_0206CF48(v0, v2, 4);
    }
    break;
    case 1:
        sub_0206CFB4(v0, ScriptContext_GetVar(param0));
        break;
    case 2:
        sub_0206CF9C(v0, ScriptContext_GetVar(param0));
        break;
    }

    return 0;
}

static void sub_020491B8 (FieldSystem * fieldSystem, int param1, u16 param2, u16 param3)
{
    UnkFuncPtr_020EBB48 v0;

    v0 = Unk_020EBB48[param1 - 1].unk_00;

    if (v0 != NULL) {
        v0(fieldSystem, param2);
    }
}

static int sub_020491D0 (int param0, FieldSystem * fieldSystem, StringTemplate * param2)
{
    UnkFuncPtr_020EBB48_1 v0;

    v0 = Unk_020EBB48[param0 - 1].unk_04;

    if (v0 != NULL) {
        v0(fieldSystem, param2);
    }

    return Unk_020EBB48[param0 - 1].unk_0C;
}

static BOOL sub_020491F4 (FieldSystem * fieldSystem, int param1)
{
    UnkFuncPtr_020EBB48_2 v0;
    TVBroadcast * v1 = SaveData_TVBroadcast(fieldSystem->saveData);

    if (sub_0202E6B0(v1, 1, param1) == 0) {
        return 0;
    }

    v0 = Unk_020EBB48[param1 - 1].unk_08;

    if (v0 == NULL) {
        return 1;
    }

    return v0(fieldSystem);
}

static void sub_0204922C (StringTemplate * param0, int param1, const u16 * param2, int param3, int param4, int param5)
{
    Strbuf* v0 = Strbuf_Init(64, 4);

    Strbuf_CopyChars(v0, param2);
    StringTemplate_SetStrbuf(param0, param1, v0, param3, param5, param4);
    Strbuf_Free(v0);
}

static void sub_02049268 (FieldSystem * fieldSystem, StringTemplate * param1)
{
    Party * v0 = Party_GetFromSavedata(fieldSystem->saveData);
    Pokemon * v1 = Party_FindFirstHatchedMon(v0);

    StringTemplate_SetSpeciesName(param1, 0, Pokemon_GetBoxPokemon(v1));
}

static void sub_02049288 (FieldSystem * fieldSystem, StringTemplate * param1)
{
    int v0;

    v0 = PoketchSystem_CurrentAppID(fieldSystem->unk_04->poketchSys);
    StringTemplate_SetPoketchAppName(param1, 0, v0);
}

static void sub_020492A0 (FieldSystem * fieldSystem, StringTemplate * param1)
{
    u16 v0[10 + 1];
    TVBroadcast * v1 = SaveData_TVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E7E4 * v2 = sub_0202E7E4(v1);

    MessageLoader_GetSpeciesName(v2->unk_02, 4, v0);
    sub_0204922C(param1, 0, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_020492D4 (FieldSystem * fieldSystem, StringTemplate * param1)
{
    u16 v0[10 + 1];
    TVBroadcast * v1 = SaveData_TVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E810 * v2 = sub_0202E810(v1);

    MessageLoader_GetSpeciesName(v2->unk_02, 4, v0);
    sub_0204922C(param1, 0, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_02049308 (FieldSystem * fieldSystem, StringTemplate * param1)
{
    Strbuf* v0;
    TVBroadcast * v1 = SaveData_TVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E81C * v2 = sub_0202E81C(v1);

    v0 = Strbuf_Init(64, 4);

    Strbuf_CopyChars(v0, v2->unk_06);
    StringTemplate_SetStrbuf(param1, 0, v0, v2->unk_02, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);
}

static BOOL sub_02049348 (FieldSystem * fieldSystem)
{
    UnkStruct_0202E7FC * v0 = sub_0202E7FC(SaveData_TVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049358 (FieldSystem * fieldSystem)
{
    PoketchData *poketchData = SaveData_PoketchData(fieldSystem->saveData);
    return PoketchData_IsEnabled(poketchData);
}

static BOOL sub_02049368 (FieldSystem * fieldSystem)
{
    UnkStruct_0202E7D8 * v0 = sub_0202E7D8(SaveData_TVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049378 (FieldSystem * fieldSystem)
{
    UnkStruct_0202A750 * v0 = sub_0202A750(fieldSystem->saveData);
    return sub_02029D10(v0, 0);
}

static BOOL sub_02049388 (FieldSystem * fieldSystem)
{
    UnkStruct_0202E7F0 * v0 = sub_0202E7F0(SaveData_TVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049398 (FieldSystem * fieldSystem)
{
    UnkStruct_0202E7E4 * v0 = sub_0202E7E4(SaveData_TVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_020493A8 (FieldSystem * fieldSystem)
{
    UnkStruct_0202E810 * v0 = sub_0202E810(SaveData_TVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_020493B8 (FieldSystem * fieldSystem)
{
    UnkStruct_0202E81C * v0 = sub_0202E81C(SaveData_TVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static const UnkStruct_020EBB48 Unk_020EBB48[19] = {
    {NULL, NULL, NULL, 0x3},
    {sub_0206E0E0, NULL, sub_02049348, 0x4},
    {NULL, NULL, NULL, 0x5},
    {sub_0206E174, sub_02049268, NULL, 0x6},
    {NULL, NULL, NULL, 0x7},
    {sub_0206E264, sub_02049288, sub_02049358, 0x8},
    {sub_0206E2BC, NULL, sub_02049368, 0x9},
    {NULL, NULL, NULL, 0xA},
    {sub_0206E398, NULL, sub_02049378, 0xB},
    {sub_0206E414, NULL, NULL, 0xC},
    {sub_0206E448, NULL, sub_02049388, 0xD},
    {NULL, NULL, NULL, 0xE},
    {sub_0206E4DC, sub_020492A0, sub_02049398, 0xF},
    {sub_0206E5A0, sub_020492D4, sub_020493A8, 0x10},
    {sub_0206E668, NULL, NULL, 0x11},
    {sub_0206E6A8, NULL, NULL, 0x12},
    {sub_0206E6E8, NULL, NULL, 0x13},
    {sub_0206E728, NULL, NULL, 0x14},
    {sub_0206E768, sub_02049308, sub_020493B8, 0x15}
};

BOOL ScrCmd_31B (ScriptContext * param0)
{
    TVBroadcast * v0;
    UnkStruct_0202E808 * v1;
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    v0 = SaveData_TVBroadcast(param0->fieldSystem->saveData);
    v1 = sub_0202E808(v0);
    *v2 = v1->unk_07;

    return 0;
}

BOOL ScrCmd_329 (ScriptContext * param0)
{
    TVBroadcast * v0;
    UnkStruct_0202E81C * v1;
    u16 * v2 = ScriptContext_GetVarPointer(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);
    u16 * v4 = ScriptContext_GetVarPointer(param0);
    u16 * v5 = ScriptContext_GetVarPointer(param0);

    v0 = SaveData_TVBroadcast(param0->fieldSystem->saveData);
    v1 = sub_0202E81C(v0);

    switch (v1->unk_01) {
    case 5:
        *v2 = 25;
        *v3 = 36;
        *v4 = 0;
        *v5 = 0xe;
        break;
    case 4:
        *v2 = 37;
        *v3 = 61;
        *v4 = 1;
        *v5 = 0xf;
        break;
    case 6:
        *v2 = 59;
        *v3 = 61;
        *v4 = 1;
        *v5 = 0xf;
        break;
    case 2:
    case 3:
        *v2 = 72;
        *v3 = 36;
        *v4 = 0;
        *v5 = 0xe;
        break;
    case 1:
    default:
        *v2 = 47;
        *v3 = 21;
        *v4 = 0;
        *v5 = 0xe;
        break;
    }

    return 0;
}
