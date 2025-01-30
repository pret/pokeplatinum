#include "overlay005/ov5_021F6454.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"
#include "consts/items.h"
#include "consts/species.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/struct_ov5_021F6704_decl.h"

#include "bag.h"
#include "bg_window.h"
#include "field_script_context.h"
#include "font.h"
#include "game_records.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "map_object.h"
#include "math.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex_data.h"
#include "pokemon.h"
#include "render_window.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02020AEC.h"
#include "unk_0202C858.h"
#include "unk_02030880.h"
#include "unk_02038F8C.h"
#include "unk_0205DFC4.h"
#include "unk_020677F4.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov5_02200C90;

struct UnkStruct_ov5_021F6704_t {
    FieldSystem *fieldSystem;
    SysTask *unk_04;
    Window unk_08;
    Window *unk_18;
    Strbuf *unk_1C[120];
    MessageLoader *unk_1FC;
    StringTemplate *unk_200;
    u8 unk_204;
    u8 unk_205;
    u8 unk_206;
    u8 unk_207_0 : 1;
    u8 unk_207_1 : 1;
    u8 unk_207_2 : 6;
    u8 unk_208;
    u8 unk_209;
    u8 unk_20A;
    u8 unk_20B;
    u16 *unk_20C;
    u16 *unk_210;
    u16 *unk_214;
    u16 *unk_218;
    ListMenuTemplate unk_21C;
    ListMenu *unk_23C;
    u16 unk_240;
    u16 unk_242;
    StringList unk_244[120];
    u16 unk_604[120];
    u16 unk_6F4;
};

static u16 *ov5_021F65FC(int param0, int param1, int *param2);
BOOL ScrCmd_2DE(ScriptContext *ctx);
static BOOL ov5_021F65D4(ScriptContext *ctx);
static void ov5_021F70CC(Pokemon *param0, int *param1, int *param2);
BOOL ScrCmd_300(ScriptContext *ctx);
BOOL ScrCmd_301(ScriptContext *ctx);
BOOL ScrCmd_30F(ScriptContext *ctx);
BOOL ScrCmd_JudgeStats(ScriptContext *ctx);
BOOL ScrCmd_2F1(ScriptContext *ctx);
static void ov5_021F661C(UnkStruct_ov5_021F6704 *param0, MessageLoader *param1);
static void ov5_021F6624(FieldSystem *fieldSystem, UnkStruct_ov5_021F6704 *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, Window *param8, MessageLoader *param9, u16 *param10, u16 *param11);
UnkStruct_ov5_021F6704 *ov5_021F6704(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8, u16 *param9, u16 *param10);
void ov5_021F6760(UnkStruct_ov5_021F6704 *param0, u32 param1, u32 param2, u32 param3);
static void ov5_021F6768(UnkStruct_ov5_021F6704 *param0);
static void ov5_021F6830(UnkStruct_ov5_021F6704 *param0, u32 param1, u32 param2, u32 param3);
static void ov5_021F68BC(UnkStruct_ov5_021F6704 *param0);
static void ov5_021F69CC(ListMenu *param0, u32 param1, u8 param2);
static void ov5_021F69F0(ListMenu *param0, u32 param1, u8 param2);
static void ov5_021F6A34(SysTask *param0, void *param1);
static void ov5_021F6AD4(UnkStruct_ov5_021F6704 *param0);

static u16 Unk_ov5_0220210C[] = {
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x19,
    0x1A
};

BOOL ScrCmd_2DE(ScriptContext *ctx)
{
    int v0;
    BattleFrontierStage *v1;
    u16 v2;
    u16 *v3;
    int v4, v5;
    MessageLoader *v6;
    MessageLoader *v7;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    UnkStruct_ov5_021F6704 *v9;
    StringTemplate **v10 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v11 = ScriptContext_GetVar(ctx);
    u16 v12 = ScriptContext_GetVar(ctx);
    u16 v13 = ScriptContext_ReadHalfWord(ctx);
    u16 v14 = ScriptContext_ReadHalfWord(ctx);
    u16 v15 = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v13;

    v6 = MessageLoader_Init(0, 26, 412, 32);
    v9 = ov5_021F6704(fieldSystem, 20, 1, 0, 1, FieldSystem_GetVarPointer(fieldSystem, v13), *v10, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), v6, FieldSystem_GetVarPointer(fieldSystem, v14), FieldSystem_GetVarPointer(fieldSystem, v15));
    v1 = sub_020308A0(fieldSystem->saveData, 11, &v0);

    if (v0 == 1) {
        v3 = ov5_021F65FC(32, Unk_ov5_0220210C[v12], &v5);

        for (v4 = 0; v4 < v5; v4++) {
            v2 = sub_020308BC(fieldSystem->saveData, v1, sub_0205E584(v11), v3[v4]);

            if (v2 != 0) {
                ov5_021F6760(v9, v3[v4], 0xff, v3[v4]);
            }
        }

        Heap_FreeToHeap(v3);
    }

    if (v1 != NULL) {
        Heap_FreeToHeap(v1);
    }

    v7 = MessageLoader_Init(1, 26, 361, 32);

    ov5_021F661C(v9, v7);
    ov5_021F6760(v9, 12, 0xff, 0xfffe);

    MessageLoader_Free(v7);

    ov5_021F661C(v9, v6);
    ov5_021F6768(v9);

    ScriptContext_Pause(ctx, ov5_021F65D4);
    MessageLoader_Free(v6);

    return 1;
}

static BOOL ov5_021F65D4(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    if (*v1 == 0xeeee) {
        return 0;
    }

    return 1;
}

static u16 *ov5_021F65FC(int heapID, int fileIndex, int *pokedexLength)
{
    u32 pokedexSize;
    u16 *pokedex;

    pokedex = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, fileIndex, 0, heapID, 0, &pokedexSize);
    *pokedexLength = pokedexSize / (sizeof(u16));

    return pokedex;
}

static void ov5_021F661C(UnkStruct_ov5_021F6704 *param0, MessageLoader *param1)
{
    param0->unk_1FC = param1;
    return;
}

static void ov5_021F6624(FieldSystem *fieldSystem, UnkStruct_ov5_021F6704 *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, Window *param8, MessageLoader *param9, u16 *param10, u16 *param11)
{
    int v0;

    param1->unk_1FC = param9;
    param1->unk_207_1 = 0;
    param1->unk_200 = param7;
    param1->fieldSystem = fieldSystem;
    param1->unk_210 = param6;

    *param1->unk_210 = 0;

    param1->unk_214 = param10;
    param1->unk_218 = param11;
    param1->unk_207_0 = param5;
    param1->unk_206 = param4;
    param1->unk_208 = param2;
    param1->unk_209 = param3;
    param1->unk_20B = 0;
    param1->unk_18 = param8;
    param1->unk_204 = 3;
    param1->unk_6F4 = param4;

    for (v0 = 0; v0 < 120; v0++) {
        param1->unk_244[v0].entry = NULL;
        param1->unk_244[v0].index = 0;
        param1->unk_604[v0] = 0xff;
    }

    for (v0 = 0; v0 < 120; v0++) {
        param1->unk_1C[v0] = Strbuf_Init((40 * 2), 4);
    }

    *param1->unk_210 = 0xeeee;
    return;
}

UnkStruct_ov5_021F6704 *ov5_021F6704(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8, u16 *param9, u16 *param10)
{
    UnkStruct_ov5_021F6704 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021F6704));

    if (v0 == NULL) {
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov5_021F6704));
    ov5_021F6624(fieldSystem, v0, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);

    return v0;
}

void ov5_021F6760(UnkStruct_ov5_021F6704 *param0, u32 param1, u32 param2, u32 param3)
{
    ov5_021F6830(param0, param1, param2, param3);
    return;
}

static void ov5_021F6768(UnkStruct_ov5_021F6704 *param0)
{
    if (param0->unk_20B > 8) {
        Window_Add(param0->fieldSystem->bgConfig, &param0->unk_08, 3, param0->unk_208, param0->unk_209, 11, 8 * 2, 13, 1);
    } else {
        Window_Add(param0->fieldSystem->bgConfig, &param0->unk_08, 3, param0->unk_208, param0->unk_209, 11, param0->unk_20B * 2, 13, 1);
    }

    LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    ov5_021F68BC(param0);

    param0->unk_23C = ListMenu_New((const ListMenuTemplate *)&param0->unk_21C, *param0->unk_214, *param0->unk_218, 4);
    param0->unk_04 = SysTask_Start(ov5_021F6A34, param0, 0);

    return;
}

static void ov5_021F6830(UnkStruct_ov5_021F6704 *param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void *v1;

    {
        Strbuf *v2 = Strbuf_Init((40 * 2), 4);

        MessageLoader_GetStrbuf(param0->unk_1FC, param1, v2);
        StringTemplate_Format(param0->unk_200, param0->unk_1C[param0->unk_20B], v2);
        param0->unk_244[param0->unk_20B].entry = (const void *)param0->unk_1C[param0->unk_20B];
        Strbuf_Free(v2);
    }

    if (param3 == 0xfa) {
        param0->unk_244[param0->unk_20B].index = 0xfffffffd;
    } else {
        param0->unk_244[param0->unk_20B].index = param3;
    }

    param0->unk_604[param0->unk_20B] = param2;
    param0->unk_20B++;

    return;
}

static void ov5_021F68BC(UnkStruct_ov5_021F6704 *param0)
{
    param0->unk_21C.choices = param0->unk_244;
    param0->unk_21C.cursorCallback = ov5_021F69F0;
    param0->unk_21C.printCallback = ov5_021F69CC;
    param0->unk_21C.window = &param0->unk_08;
    param0->unk_21C.count = param0->unk_20B;
    param0->unk_21C.maxDisplay = 8;
    param0->unk_21C.headerXOffset = 1;
    param0->unk_21C.textXOffset = 12;
    param0->unk_21C.cursorXOffset = 2;
    param0->unk_21C.yOffset = 1;
    param0->unk_21C.textColorFg = 1;
    param0->unk_21C.textColorBg = 15;
    param0->unk_21C.textColorShadow = 2;
    param0->unk_21C.letterSpacing = 0;
    param0->unk_21C.lineSpacing = 0;
    param0->unk_21C.pagerMode = PAGER_MODE_LEFT_RIGHT_PAD;
    param0->unk_21C.fontID = FONT_SYSTEM;
    param0->unk_21C.cursorType = 0;
    param0->unk_21C.tmp = (void *)param0;

    return;
}

static void ov5_021F69CC(ListMenu *param0, u32 param1, u8 param2)
{
    if (param1 == 0xfffffffd) {
        ListMenu_SetAltTextColors(param0, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(param0, 1, 15, 2);
    }
}

static void ov5_021F69F0(ListMenu *param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2 = 0;
    u16 v3 = 0;
    UnkStruct_ov5_021F6704 *v4 = (UnkStruct_ov5_021F6704 *)ListMenu_GetAttribute(param0, 19);

    ListMenu_GetListAndCursorPos(param0, &v2, &v3);

    if ((v4->unk_214 != NULL) && (v4->unk_218 != NULL)) {
        *v4->unk_214 = v2;
        *v4->unk_218 = v3;
    }

    return;
}

static void ov5_021F6A34(SysTask *param0, void *param1)
{
    u16 v0;
    u32 v1;
    UnkStruct_ov5_021F6704 *v2;

    v2 = (UnkStruct_ov5_021F6704 *)param1;

    if (v2->unk_204 != 0) {
        v2->unk_204--;
        return;
    }

    if (IsScreenTransitionDone() == 0) {
        return;
    }

    v1 = ListMenu_ProcessInput(v2->unk_23C);
    v0 = v2->unk_6F4;

    ListMenu_CalcTrueCursorPos(v2->unk_23C, &v2->unk_6F4);

    if (v0 != v2->unk_6F4) {
        Sound_PlayEffect(1500);
    }

    switch (v1) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        if (v2->unk_207_0 == 1) {
            Sound_PlayEffect(1500);
            *v2->unk_210 = 0xfffe;
            ov5_021F6AD4(param1);
        }
        break;
    default:
        Sound_PlayEffect(1500);
        *v2->unk_210 = v1;
        ov5_021F6AD4(param1);
        break;
    }

    return;
}

static void ov5_021F6AD4(UnkStruct_ov5_021F6704 *param0)
{
    int v0;

    Sound_PlayEffect(1500);
    ListMenu_Free(param0->unk_23C, NULL, NULL);
    Window_EraseStandardFrame(param0->unk_21C.window, 0);
    Window_Remove(&param0->unk_08);

    for (v0 = 0; v0 < 120; v0++) {
        Strbuf_Free(param0->unk_1C[v0]);
    }

    if (param0->unk_207_1 == 1) {
        MessageLoader_Free(param0->unk_1FC);
    }

    SysTask_Done(param0->unk_04);
    Heap_FreeToHeap(param0);

    return;
}

// See message_bank_battle_tower.gmm
static const u16 highestIVMessageIndices[] = {
    122,
    123,
    124,
    127,
    125,
    126
};

BOOL ScrCmd_JudgeStats(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 selectedIndex = ScriptContext_GetVar(ctx);
    u16 *totalIVs = ScriptContext_GetVarPointer(ctx);
    u16 *highestIVIndex = ScriptContext_GetVarPointer(ctx);
    u16 *highestIVValue = ScriptContext_GetVarPointer(ctx);

    Pokemon *targetPokemon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), selectedIndex);

    u32 pokemonIVs[6];
    pokemonIVs[0] = Pokemon_GetValue(targetPokemon, MON_DATA_HP_IV, NULL);
    pokemonIVs[1] = Pokemon_GetValue(targetPokemon, MON_DATA_ATK_IV, NULL);
    pokemonIVs[2] = Pokemon_GetValue(targetPokemon, MON_DATA_DEF_IV, NULL);
    pokemonIVs[3] = Pokemon_GetValue(targetPokemon, MON_DATA_SPEED_IV, NULL);
    pokemonIVs[4] = Pokemon_GetValue(targetPokemon, MON_DATA_SPATK_IV, NULL);
    pokemonIVs[5] = Pokemon_GetValue(targetPokemon, MON_DATA_SPDEF_IV, NULL);

    *totalIVs = 0;
    u8 i;

    for (i = 0; i < 6; i++) {
        *totalIVs += pokemonIVs[i];
    }

    *highestIVIndex = 0;
    *highestIVValue = pokemonIVs[0];

    for (i = 1; i < 6; i++) {
        if (pokemonIVs[*highestIVIndex] < pokemonIVs[i]) {
            *highestIVIndex = i;
            *highestIVValue = pokemonIVs[i];
        } else if (pokemonIVs[*highestIVIndex] == pokemonIVs[i]) {
            if ((LCRNG_Next() % 2) == 0) {
                *highestIVIndex = i;
                *highestIVValue = pokemonIVs[i];
            }
        }
    }

    *highestIVIndex = highestIVMessageIndices[*highestIVIndex];
    return 0;
}

BOOL ScrCmd_31D(ScriptContext *param0)
{
    Pokemon *v0;
    Party *v1;
    int v2, v3, v4;
    int v5, v6;
    u32 v7;
    int v8[6];
    int v9 = 0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v11 = ScriptContext_GetVarPointer(param0);

    v1 = Party_GetFromSavedata(fieldSystem->saveData);
    v2 = Party_GetCurrentCount(v1);
    *v11 = 0;

    for (v3 = 0; v3 < v2; v3++) {
        v0 = Party_GetPokemonBySlotIndex(v1, v3);
        v8[v3] = Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, NULL);

        if (v8[v3] == ITEM_GRISEOUS_ORB) {
            v9++;
        }
    }

    if (v9 > 0) {
        v4 = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), ITEM_GRISEOUS_ORB, v9, 4);

        if (v4 == 0) {
            *v11 = 0xff;
            return 0;
        }

        v7 = 0;

        for (v3 = 0; v3 < v2; v3++) {
            if (v8[v3] == ITEM_GRISEOUS_ORB) {
                v0 = Party_GetPokemonBySlotIndex(v1, v3);
                Pokemon_SetValue(v0, MON_DATA_HELD_ITEM, &v7);
            }
        }
    }

    for (v3 = 0; v3 < v2; v3++) {
        v0 = Party_GetPokemonBySlotIndex(v1, v3);
        v6 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

        if (v6 > 0) {
            v5 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);

            switch (v5) {
            case SPECIES_GIRATINA:
                Pokemon_SetGiratinaForm(v0);
                break;
            case SPECIES_ROTOM:
                Pokemon_SetRotomForm(v0, 0, 0);
                break;
            case SPECIES_SHAYMIN:
                Pokemon_SetShayminForm(v0, 0);
                break;
            }
        }
    }

    return 0;
}

BOOL ScrCmd_31E(ScriptContext *param0)
{
    Pokemon *v0;
    Party *v1;
    int v2, v3;
    u32 v4;
    int v5;
    int v6;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v8 = ScriptContext_GetVar(param0);
    u16 *v9 = ScriptContext_GetVarPointer(param0);

    v1 = Party_GetFromSavedata(fieldSystem->saveData);
    v0 = Party_GetPokemonBySlotIndex(v1, v8);

    *v9 = 0;

    if (v8 == 0xff) {
        return 0;
    }

    v5 = Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, NULL);

    if (v5 == ITEM_GRISEOUS_ORB) {
        v6 = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), ITEM_GRISEOUS_ORB, 1, 4);

        if (v6 == 0) {
            *v9 = 0xff;
            return 0;
        }

        v4 = 0;
        Pokemon_SetValue(v0, MON_DATA_HELD_ITEM, &v4);
    }

    v3 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

    if (v3 > 0) {
        v2 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);

        switch (v2) {
        case SPECIES_GIRATINA:
            Pokemon_SetGiratinaForm(v0);
            break;
        case SPECIES_ROTOM:
            Pokemon_SetRotomForm(v0, 0, 0);
            break;
        case SPECIES_SHAYMIN:
            Pokemon_SetShayminForm(v0, 0);
            break;
        }
    }

    return 0;
}

BOOL ScrCmd_2F1(ScriptContext *param0)
{
    Pokemon *v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v2);
    Pokemon_SetValue(v0, MON_DATA_FORM, &v3);

    return 0;
}

BOOL ScrCmd_303(ScriptContext *param0)
{
    u32 v0, v1, v2;
    int v3, v4, v5;
    Pokemon *v6;
    Party *v7;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v9 = ScriptContext_GetVarPointer(param0);
    u16 *v10 = ScriptContext_GetVarPointer(param0);

    v5 = 0;
    *v10 = 0xff;
    v7 = Party_GetFromSavedata(fieldSystem->saveData);
    v3 = Party_GetCurrentCount(v7);

    for (v4 = 0; v4 < v3; v4++) {
        v6 = Party_GetPokemonBySlotIndex(v7, v4);
        v0 = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
        v1 = Pokemon_GetValue(v6, MON_DATA_FORM, NULL);
        v2 = Pokemon_GetValue(v6, MON_DATA_IS_EGG, NULL);

        if ((v0 == SPECIES_ROTOM) && (v1 != 0) && (v2 == 0)) {
            if (*v10 == 0xff) {
                *v10 = v4;
            }

            v5++;
        }
    }

    *v9 = v5;
    return 0;
}

BOOL ScrCmd_304(ScriptContext *param0)
{
    u32 v0, v1;
    u16 v2, v3;
    Pokemon *v4;
    Party *v5;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v7 = ScriptContext_GetVar(param0);
    u16 v8 = ScriptContext_GetVar(param0);
    u16 v9 = ScriptContext_GetVar(param0);
    u16 v10 = ScriptContext_GetVar(param0);

    v5 = Party_GetFromSavedata(fieldSystem->saveData);
    v4 = Party_GetPokemonBySlotIndex(v5, v7);

    Pokemon_SetRotomForm(v4, v10, v8);
    PokedexData_Capture(SaveData_PokedexData(fieldSystem->saveData), v4);

    return 0;
}

BOOL ScrCmd_2FF(ScriptContext *param0)
{
    u16 v0;
    int v1, v2;
    Pokemon *v3;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v5 = ScriptContext_GetVar(param0);
    u16 *v6 = ScriptContext_GetVarPointer(param0);

    v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v5);
    v0 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

    if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
        switch (v0) {
        case SPECIES_CATERPIE:
        case SPECIES_METAPOD:
        case SPECIES_WEEDLE:
        case SPECIES_KAKUNA:
        case SPECIES_MAGIKARP:
        case SPECIES_DITTO:
        case SPECIES_WOBBUFFET:
        case SPECIES_SMEARGLE:
        case SPECIES_WURMPLE:
        case SPECIES_SILCOON:
        case SPECIES_CASCOON:
        case SPECIES_WYNAUT:
        case SPECIES_BELDUM:
        case SPECIES_BURMY:
        case SPECIES_COMBEE:
        case SPECIES_KRICKETOT:
            *v6 = 0xffff;
            return 0;
        }
    }

    ov5_021F70CC(v3, &v1, &v2);
    *v6 = v2;

    return 0;
}

static void ov5_021F70CC(Pokemon *param0, int *param1, int *param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v0 = Pokemon_GetValue(param0, MON_DATA_HP_IV, NULL);
    v1 = Pokemon_GetValue(param0, MON_DATA_ATK_IV, NULL);
    v2 = Pokemon_GetValue(param0, MON_DATA_DEF_IV, NULL);
    v3 = Pokemon_GetValue(param0, MON_DATA_SPEED_IV, NULL);
    v4 = Pokemon_GetValue(param0, MON_DATA_SPATK_IV, NULL);
    v5 = Pokemon_GetValue(param0, MON_DATA_SPDEF_IV, NULL);

    if (param1 != NULL) {
        *param1 = ((v0 & 2) >> 1) | ((v1 & 2) >> 0) | ((v2 & 2) << 1) | ((v3 & 2) << 2) | ((v4 & 2) << 3) | ((v5 & 2) << 4);
        *param1 = ((*param1) * 40 / 63) + 30;
    }

    if (param2 != NULL) {
        *param2 = ((v0 & 1) >> 0) | ((v1 & 1) << 1) | ((v2 & 1) << 2) | ((v3 & 1) << 3) | ((v4 & 1) << 4) | ((v5 & 1) << 5);
        *param2 = ((*param2) * 15 / 63) + 1;

        if (*param2 >= 9) {
            *param2 = (*param2) + 1;
        }
    }
}

BOOL ScrCmd_300(ScriptContext *param0)
{
    MiscSaveBlock *v0;
    Pokemon *v1;
    FieldSystem *fieldSystem = param0->fieldSystem;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), 0);
    v0 = SaveData_MiscSaveBlock(fieldSystem->saveData);

    MiscSaveBlock_SetFavoriteMon(v0, Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), Pokemon_GetValue(v1, MON_DATA_FORM, NULL), Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL));
    return 0;
}

BOOL ScrCmd_301(ScriptContext *param0)
{
    int v0, v1, v2;
    MiscSaveBlock *v3;
    Pokemon *v4;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v6 = ScriptContext_GetVarPointer(param0);
    u16 *v7 = ScriptContext_GetVarPointer(param0);
    u16 *v8 = ScriptContext_GetVarPointer(param0);

    v3 = SaveData_MiscSaveBlock(fieldSystem->saveData);
    MiscSaveBlock_FavoriteMon(v3, &v0, &v1, &v2);

    *v6 = v0;
    *v7 = v1;
    *v8 = v2;

    return 0;
}

BOOL ScrCmd_305(ScriptContext *param0)
{
    Pokemon *v0;
    Party *v1;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v3 = ScriptContext_GetVar(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);

    v1 = Party_GetFromSavedata(fieldSystem->saveData);
    v0 = Party_GetPokemonBySlotIndex(v1, v3);
    *v4 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

    return 0;
}

BOOL ScrCmd_30F(ScriptContext *param0)
{
    VarsFlags *v0;
    GameRecords *v1;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v3 = ScriptContext_GetVar(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);

    v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    v1 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    *v4 = 1;

    switch (v3) {
    case 13:
        if (GameRecords_GetRecordValue(v1, RECORD_UNK_029) < 1) {
            *v4 = 0;
        }

        if (GameRecords_GetRecordValue(v1, RECORD_UNK_060) < 1) {
            *v4 = 0;
        }

        if (GameRecords_GetRecordValue(v1, RECORD_UNK_061) < 1) {
            *v4 = 0;
        }

        if (GameRecords_GetRecordValue(v1, RECORD_UNK_062) < 1) {
            *v4 = 0;
        }

        if (GameRecords_GetRecordValue(v1, RECORD_UNK_063) < 1) {
            *v4 = 0;
        }
        break;
    case 14:
        *v4 = 0;

        if (sub_0206B588(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B598(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B5A8(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B5B8(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B5C8(v0) >= 2) {
            *v4 = 1;
        }
        break;
    case 15:
        if (GameRecords_GetRecordValue(v1, RECORD_UNK_073) < 10) {
            *v4 = 0;
        }
        break;
    case 16:
        if (GameRecords_GetRecordValue(v1, RECORD_UNK_057) < 50) {
            *v4 = 0;
        }
        break;
    case 17:
        if (GameRecords_GetRecordValue(v1, RECORD_UNK_004) < 50) {
            *v4 = 0;
        }
        break;
    case 18:
        if (GameRecords_GetRecordValue(v1, RECORD_UNK_011) < 30) {
            *v4 = 0;
        }
        break;
    case 20:
        if (GameRecords_GetRecordValue(v1, RECORD_UNK_000) < 300000) {
            *v4 = 0;
        }
        break;
    }

    return 0;
}

BOOL ScrCmd_316(ScriptContext *param0)
{
    return 1;
}

static const UnkStruct_ov5_02200C90 Unk_ov5_02200C90[] = {
    { 0x4, 0x7 },
    { 0x5, 0x5 },
    { 0x5, 0x9 },
    { 0x7, 0x7 },
    { 0x9, 0x5 },
    { 0x9, 0x9 },
    { 0xA, 0x7 }
};

static const UnkStruct_ov5_02200C90 Unk_ov5_02200CAC[] = {
    { 0x3, 0x7 },
    { 0x5, 0x7 },
    { 0x7, 0x5 },
    { 0x7, 0x7 },
    { 0x7, 0x9 },
    { 0x9, 0x7 },
    { 0xB, 0x7 }
};

static const UnkStruct_ov5_02200C90 Unk_ov5_02200CC8[] = {
    { 0x5, 0x5 },
    { 0x5, 0x7 },
    { 0x5, 0x9 },
    { 0x7, 0x7 },
    { 0x9, 0x5 },
    { 0x9, 0x7 },
    { 0x9, 0x9 }
};

BOOL ScrCmd_32C(ScriptContext *param0)
{
    int v0, v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);

    switch (v3) {
    case 588:
        v1 = 127;

        for (v0 = 0; v0 < (NELEMS(Unk_ov5_02200C90)); v0++) {
            if ((v4 == Unk_ov5_02200C90[v0].unk_00) && (v5 == Unk_ov5_02200C90[v0].unk_02)) {
                Sound_PlayEffect(1487);
                *v2 |= (1 << v0);
                break;
            }
        }
        break;
    case 590:
        v1 = 127;

        for (v0 = 0; v0 < (NELEMS(Unk_ov5_02200CAC)); v0++) {
            if ((v4 == Unk_ov5_02200CAC[v0].unk_00) && (v5 == Unk_ov5_02200CAC[v0].unk_02)) {
                Sound_PlayEffect(1487);
                *v2 |= (1 << v0);
                break;
            }
        }
        break;
    case 592:
        v1 = 127;

        for (v0 = 0; v0 < (NELEMS(Unk_ov5_02200CC8)); v0++) {
            if ((v4 == Unk_ov5_02200CC8[v0].unk_00) && (v5 == Unk_ov5_02200CC8[v0].unk_02)) {
                Sound_PlayEffect(1487);
                *v2 |= (1 << v0);
                break;
            }
        }
        break;
    }

    if (*v2 == v1) {
        *v2 = 260;
    }

    return 0;
}

BOOL ScrCmd_32D(ScriptContext *ctx)
{
    fx32 v0;
    VecFx32 v1;
    UnkStruct_020216E0 *v2;
    int v3 = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObject *v6 = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *v7;

    MapObject_GetPosPtr(v6, &v1);
    v0 = v1.y;

    while (sub_020625B0(mapObjMan, &v7, &v3, MAP_OBJ_STATUS_0) == 1) {
        if (v7 != v6) {
            MapObject_SetStatusFlagOn(v7, MAP_OBJ_STATUS_13);

            if (MapObject_CheckStatusFlag(v7, MAP_OBJ_STATUS_12) == 1) {
                MapObject_GetPosPtr(v7, &v1);
                v1.y = v0;
                MapObject_SetPos(v7, &v1);
                MapObject_SetY(v7, (((v0) >> 3) / FX32_ONE));
            }

            v2 = ov5_021EB1A0(v7);

            if ((v2 == NULL) && sub_020677F4(MapObject_GetGraphicsID(v7))) {
                if (sub_02062D4C(v7)) {
                    sub_02062B68(v7);
                    v2 = sub_02067A58(v7);
                }
            }

            if (v2 != NULL) {
                ov5_021EDEB4(v7, v2);
                sub_02021320(v2, 1);
            }
        }
    }

    return 0;
}

BOOL ScrCmd_32E(ScriptContext *ctx)
{
    int v0 = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObject *v3 = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *v4;

    while (sub_020625B0(mapObjMan, &v4, &v0, MAP_OBJ_STATUS_0) == 1) {
        if (v4 != v3) {
            MapObject_SetStatusFlagOff(v4, MAP_OBJ_STATUS_13);
        }
    }

    return 0;
}

static void ov5_021F7654(MapObject *param0, int param1)
{
    VecFx32 v0;
    UnkStruct_020216E0 *v1;

    MapObject_SetStatusFlagOn(param0, MAP_OBJ_STATUS_13);
    MapObject_GetPosPtr(param0, &v0);

    v0.y = (((param1) << 4) * FX32_ONE);

    MapObject_SetPos(param0, &v0);
    MapObject_SetY(param0, ((param1) * 2));

    v1 = ov5_021EB1A0(param0);

    if (v1 != NULL) {
        ov5_021EDEB4(param0, v1);
        sub_02021320(v1, 1);
    }
}

BOOL ScrCmd_331(ScriptContext *ctx)
{
    MapObject *v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;

    v0 = MapObjMan_LocalMapObjByIndex(mapObjMan, 32);

    if (v0 != NULL) {
        ov5_021F7654(v0, 9);
    }

    v0 = MapObjMan_LocalMapObjByIndex(mapObjMan, 2);

    if (v0 != NULL) {
        ov5_021F7654(v0, 9);
    }

    return 0;
}

BOOL ScrCmd_332(ScriptContext *ctx)
{
    MapObject *v0;
    MapObjectManager *v1 = ctx->fieldSystem->mapObjMan;

    v0 = MapObjMan_LocalMapObjByIndex(v1, 32);

    if (v0 != NULL) {
        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_13);
    }

    v0 = MapObjMan_LocalMapObjByIndex(v1, 2);

    if (v0 != NULL) {
        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_13);
    }

    return 0;
}

BOOL ScrCmd_338(ScriptContext *ctx)
{
    int v0;
    MapObject *v1 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 15);
    if (v1 != NULL) {
        switch (MapObject_GetX(v1)) {
        case 28:
            v0 = 6;
            break;
        case 38:
            v0 = 5;
            break;
        case 40:
            v0 = 3;
            break;
        case 48:
            v0 = 2;
            break;
        default:
            v0 = 4;
            break;
        }
        ov5_021F7654(v1, v0);
    }
    return 0;
}

BOOL ScrCmd_339(ScriptContext *ctx)
{
    MapObject *v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 15);
    if (v0 != NULL) {
        MapObject_SetStatusFlagOff(v0, 8192);
    }
    return 0;
}

BOOL ScrCmd_330(ScriptContext *ctx)
{
    UnkStruct_0202C878 *v0 = sub_0202C878(ctx->fieldSystem->saveData);

    sub_02038F8C(v0);
    return 1;
}

BOOL ScrCmd_333(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    sub_0200544C(1, v0);
    return 0;
}
