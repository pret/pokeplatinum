#include "unk_0207AE68.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/items.h"
#include "generated/moves.h"
#include "generated/species.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_0207AE68_t.h"
#include "struct_defs/struct_0207C894.h"
#include "struct_defs/struct_02099F80.h"

#include "applications/pokemon_summary_screen/main.h"

#include "bag.h"
#include "bg_window.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hardware_palette.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "poketch.h"
#include "render_text.h"
#include "render_window.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200F174.h"
#include "unk_0201567C.h"
#include "unk_02015F84.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_02028124.h"
#include "unk_020393C8.h"
#include "unk_0207C63C.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"

UnkStruct_0207AE68 *sub_0207AE68(Party *param0, Pokemon *param1, int param2, Options *param3, int param4, Pokedex *param5, Bag *param6, GameRecords *records, Poketch *poketch, int param9, int param10, int heapID);
static void sub_0207B0A0(SysTask *param0, void *param1);
BOOL sub_0207B0D0(UnkStruct_0207AE68 *param0);
void sub_0207B0E0(UnkStruct_0207AE68 *param0);
static void sub_0207B180(UnkStruct_0207AE68 *param0);
static void sub_0207C028(UnkStruct_0207AE68 *param0);
static void sub_0207C1CC(UnkStruct_0207AE68 *param0, BgConfig *param1);
static void sub_0207C460(BgConfig *param0);
static void sub_0207C498(UnkStruct_0207AE68 *param0);
static void sub_0207C520(void *param0);
static u8 sub_0207C584(UnkStruct_0207AE68 *param0, int param1);
static BOOL sub_0207C5CC(TextPrinterTemplate *param0, u16 param1);
static void sub_0207C624(UnkStruct_0207AE68 *param0);

static const WindowTemplate Unk_020F0A30 = {
    0x2,
    0x17,
    0xD,
    0x7,
    0x4,
    0xB,
    0xA
};

static const u8 Unk_020F0A2C[] = {
    0x3,
    0x5,
    0x8
};

UnkStruct_0207AE68 *sub_0207AE68(Party *param0, Pokemon *param1, int param2, Options *param3, int param4, Pokedex *param5, Bag *param6, GameRecords *records, Poketch *poketch, int param9, int param10, int heapID)
{
    UnkStruct_0207AE68 *v0;
    ArchivedSprite v1;
    int v2;

    v0 = (UnkStruct_0207AE68 *)Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0207AE68));

    MI_CpuClearFast(v0, sizeof(UnkStruct_0207AE68));
    MI_CpuFill16((void *)GetHardwareMainBgPaletteAddress(), 0x0, GetHardwareMainBgPaletteSize());
    MI_CpuFill16((void *)GetHardwareSubBgPaletteAddress(), 0x0, GetHardwareSubBgPaletteSize());

    v0->unk_24 = param0;
    v0->unk_28 = param1;
    v0->unk_60 = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    v0->unk_86 = Pokemon_GetValue(param1, MON_DATA_FORM, NULL);
    v0->unk_62 = param2;
    v0->unk_5C = heapID;
    v0->unk_80 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, heapID);

    PokeSprite_LoadCryDelay(v0->unk_80, &(v0->unk_84), v0->unk_60, 1);
    PokeSprite_LoadCryDelay(v0->unk_80, &(v0->unk_85), v0->unk_62, 1);

    v0->unk_14 = PaletteData_New(heapID);

    PaletteData_SetAutoTransparent(v0->unk_14, 1);
    PaletteData_AllocBuffer(v0->unk_14, 0, 0x200, heapID);
    PaletteData_AllocBuffer(v0->unk_14, 1, 0x200, heapID);
    PaletteData_AllocBuffer(v0->unk_14, 2, (((16 - 2) * 16) * sizeof(u16)), heapID);
    PaletteData_AllocBuffer(v0->unk_14, 3, 0x200, heapID);

    v0->unk_00 = BgConfig_New(heapID);
    v0->unk_04 = Window_New(heapID, 1);
    v0->unk_2C = param3;
    v0->unk_34 = sub_0207C690(heapID);

    sub_0207C63C();
    sub_0207C664();
    sub_0207C730();
    sub_0207C1CC(v0, v0->unk_00);
    Window_Add(v0->unk_00, v0->unk_04, 1, 2, 0x13, 27, 4, 11, ((18 + 12) + 1));
    Window_FillTilemap(v0->unk_04, 0xff);
    Window_DrawMessageBoxWithScrollCursor(v0->unk_04, 0, 1, 10);

    v0->unk_18 = sub_0200762C(heapID);
    v0->unk_44 = sub_02015F84(heapID, 1, 0);
    v0->unk_67 = 0;
    v0->unk_66 = 2;
    v0->unk_08 = MessageLoader_Init(1, 26, 368, heapID);
    v0->unk_0C = StringTemplate_Default(heapID);
    v0->unk_10 = Strbuf_Init((2 * 160), heapID);
    v0->unk_3C = Heap_AllocFromHeap(heapID, sizeof(PokemonSummary));

    MI_CpuClearFast(v0->unk_3C, sizeof(PokemonSummary));

    v0->unk_3C->showContest = param4;
    v0->unk_48 = param5;
    v0->unk_4C = param6;
    v0->records = records;
    v0->poketch = poketch;
    v0->unk_78 = param9;
    v0->unk_7C = param10;

    sub_0207C498(v0);
    PaletteData_StartFade(v0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 16, 0, 0x0);
    sub_0200872C(v0->unk_18, 16, 0, 0, 0x0);

    v0->unk_58 = sub_0201567C(v0->unk_14, 0, 0xb, heapID);

    sub_02015738(v0->unk_58, 1);
    SysTask_Start(sub_0207B0A0, v0, 0);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    sub_02039734();

    return v0;
}

static void sub_0207B0A0(SysTask *param0, void *param1)
{
    UnkStruct_0207AE68 *v0 = (UnkStruct_0207AE68 *)param1;

    sub_0207B180(v0);
    sub_02007768(v0->unk_18);
    sub_0207C770();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    if (v0->unk_67) {
        SysTask_Done(param0);
    }
}

BOOL sub_0207B0D0(UnkStruct_0207AE68 *param0)
{
    return param0->unk_67 == 1;
}

void sub_0207B0E0(UnkStruct_0207AE68 *param0)
{
    int v0;

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
    SetVBlankCallback(NULL, NULL);
    Windows_Delete(param0->unk_04, 1);
    PaletteData_FreeBuffer(param0->unk_14, 0);
    PaletteData_FreeBuffer(param0->unk_14, 1);
    PaletteData_FreeBuffer(param0->unk_14, 2);
    PaletteData_FreeBuffer(param0->unk_14, 3);
    PaletteData_Free(param0->unk_14);
    sub_02007B6C(param0->unk_18);
    sub_02015FB8(param0->unk_44);
    sub_020242C4(param0->unk_34);
    sub_0207C460(param0->unk_00);
    MessageLoader_Free(param0->unk_08);
    StringTemplate_Free(param0->unk_0C);
    Heap_FreeToHeap(param0->unk_10);
    Heap_FreeToHeap(param0->unk_3C);
    sub_02015760(param0->unk_58);
    Heap_FreeToHeap(param0->unk_00);
    NARC_dtor(param0->unk_80);
    Heap_FreeToHeap(param0);
    RenderControlFlags_SetCanABSpeedUpPrint(0);
}

static void sub_0207B180(UnkStruct_0207AE68 *param0)
{
    if (param0->unk_70) {
        if ((param0->unk_70 & 1) == 0) {
            sub_02008274(param0->unk_1C[0], 12, param0->unk_71 * -1);
            sub_02008274(param0->unk_1C[0], 13, param0->unk_71 * -1);
            sub_02008274(param0->unk_1C[1], 12, param0->unk_71);
            sub_02008274(param0->unk_1C[1], 13, param0->unk_71);

            if (sub_020080C0(param0->unk_1C[0], 12) == 0) {
                param0->unk_70 ^= 1;
            }
        } else {
            sub_02008274(param0->unk_1C[0], 12, param0->unk_71);
            sub_02008274(param0->unk_1C[0], 13, param0->unk_71);
            sub_02008274(param0->unk_1C[1], 12, param0->unk_71 * -1);
            sub_02008274(param0->unk_1C[1], 13, param0->unk_71 * -1);

            if (sub_020080C0(param0->unk_1C[1], 12) == 0) {
                param0->unk_70 ^= 1;

                if (param0->unk_71 < 0x40) {
                    param0->unk_71 *= 2;
                }
            }
        }
    }

    if ((param0->unk_7C & 0x1) && (param0->unk_64 == 8) && (gSystem.pressedKeys & PAD_BUTTON_B)) {
        PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), (0xc00 ^ 0xffff), 0, 0, 16, 0x7fff);
        param0->unk_64 = 41;
    }

    switch (param0->unk_64) {
    case 0:
        if (--param0->unk_66 == 0) {
            param0->unk_64++;
        }
        break;
    case 1:
        sub_0200F338(0);
        sub_0200F338(1);
        sub_02015738(param0->unk_58, 0);

        if (param0->unk_7C & 0x2) {
            param0->unk_64 = 2;
        } else {
            param0->unk_64 = 4;
        }
        break;
    case 2:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            param0->unk_65 = sub_0207C584(param0, 916);
            param0->unk_64++;
        }
        break;
    case 3:
        if (Text_IsPrinterActive(param0->unk_65) == 0) {
            param0->unk_64 = 4;
        }
        break;
    case 4:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            {
                SpriteAnimationFrame v0[10];

                PokeSprite_LoadAnimation(param0->unk_80, param0->unk_44, param0->unk_1C[0], param0->unk_60, 2, 0, 0);
                PokeSprite_LoadAnimationFrames(param0->unk_80, &v0[0], param0->unk_60, 1);
                sub_02007C10(param0->unk_1C[0], &v0[0]);
                sub_02007B98(param0->unk_1C[0], NULL);
            }

            sub_0200590C(param0->unk_60, param0->unk_84, param0->unk_86);
            StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));

            if (param0->unk_7C & 0x2) {
                param0->unk_65 = sub_0207C584(param0, 917);
            } else {
                param0->unk_65 = sub_0207C584(param0, 915);
            }

            param0->unk_64 = 5;
        }
        break;
    case 5:
        if ((Text_IsPrinterActive(param0->unk_65) == 0) && (sub_0200598C() == 0) && (sub_020160F4(param0->unk_44, 0) == 1) && (sub_02007C24(param0->unk_1C[0]) == 0)) {
            sub_02015738(param0->unk_58, 1);
            sub_02005474(1141);
            param0->unk_66 = 20;
            param0->unk_64 = 6;
        }
        break;
    case 6:
        if (--param0->unk_66 == 0) {
            {
                UnkStruct_0207C894 v1;

                v1.heapID = param0->unk_5C;
                v1.unk_04 = 0;
                param0->unk_30 = sub_0207C894(&v1);

                sub_0207C8C4(param0->unk_30, 0);
                sub_020086FC(param0->unk_1C[0], 0, 16, 4, 0x7fff);
                sub_020086FC(param0->unk_1C[1], 0, 16, 4, 0x7fff);

                GF_ASSERT(Heap_FndGetTotalFreeSizeForExpHeap(param0->unk_5C) > 0x8000);
                Sound_PlayEffect(1529);
            }
            param0->unk_66 = 40;
            param0->unk_64++;
        }
        break;
    case 7:
        if (param0->unk_73 < 0x28) {
            param0->unk_73 += 2;
            param0->unk_75 -= 2;
        }

        if (--param0->unk_66 == 0) {
            sub_0207C8C4(param0->unk_30, 1);
            sub_0207C8C4(param0->unk_30, 2);
            sub_0207C8C4(param0->unk_30, 7);
            sub_0207C8C4(param0->unk_30, 8);
            sub_0207C8C4(param0->unk_30, 9);
            sub_0207C8C4(param0->unk_30, 11);
            Sound_PlayEffect(1530);
            param0->unk_70 = 0x10;
            param0->unk_71 = 8;
            param0->unk_64++;
        }
        break;
    case 8:
        if (sub_0207C8E0(param0->unk_30) == 0) {
            sub_0207C8C4(param0->unk_30, 3);
            sub_0207C8C4(param0->unk_30, 4);
            sub_0207C8C4(param0->unk_30, 5);
            sub_0207C8C4(param0->unk_30, 6);
            sub_0207C8C4(param0->unk_30, 10);
            PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), (0xc00 ^ 0xffff), 2, 0, 16, 0x7fff);
            sub_02007DEC(param0->unk_1C[0], 12, 0x0);
            sub_02007DEC(param0->unk_1C[0], 13, 0x0);
            sub_02007DEC(param0->unk_1C[1], 12, 0x100);
            sub_02007DEC(param0->unk_1C[1], 13, 0x100);
            Sound_PlayEffect(1531);
            param0->unk_70 = 0;
            param0->unk_66 = 8;
            param0->unk_64++;
        }
        break;
    case 9:
        if (param0->unk_73) {
            param0->unk_73 -= 2;
            param0->unk_75 += 2;
        }

        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            if (--param0->unk_66 == 0) {
                sub_0207C8C4(param0->unk_30, 12);
                PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), (0xc00 ^ 0xffff), 4, 16, 0, 0x7fff);
                sub_0200872C(param0->unk_18, 16, 0, 3, 0x7fff);
                Sound_PlayEffect(1532);
                param0->unk_64++;
            }
        }
        break;
    case 10:
        if ((PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) && (sub_0207C8E0(param0->unk_30) == 0)) {
            {
                SpriteAnimationFrame v2[10];

                PokeSprite_LoadAnimation(param0->unk_80, param0->unk_44, param0->unk_1C[1], param0->unk_62, 2, 0, 0);
                PokeSprite_LoadAnimationFrames(param0->unk_80, &v2[0], param0->unk_62, 1);
                sub_02007C10(param0->unk_1C[1], &v2[0]);
                sub_02007B98(param0->unk_1C[1], NULL);
            }

            sub_0200590C(param0->unk_62, param0->unk_85, param0->unk_86);
            param0->unk_64++;
        }
        break;
    case 11:
        if ((sub_0200598C() == 0) && (sub_020160F4(param0->unk_44, 0) == 1) && (sub_02007C24(param0->unk_1C[1]) == 0)) {
            Pokemon_SetValue(param0->unk_28, MON_DATA_SPECIES, (u8 *)&param0->unk_62);
            Pokemon_CalcAbility(param0->unk_28);
            Pokemon_CalcLevelAndStats(param0->unk_28);
            StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
            StringTemplate_SetSpeciesName(param0->unk_0C, 1, Pokemon_GetBoxPokemon(param0->unk_28));
            param0->unk_65 = sub_0207C584(param0, 918);
            param0->unk_66 = 40;
            param0->unk_64++;
        }
        break;
    case 12:
        if (Text_IsPrinterActive(param0->unk_65) == 0) {
            if (--param0->unk_66 == 0) {
                Pokedex_Capture(param0->unk_48, param0->unk_28);
                GameRecords_IncrementRecordValue(param0->records, RECORD_UNK_012);
                GameRecords_IncrementTrainerScore(param0->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
                Poketch_PokemonHistoryEnqueue(param0->poketch, Pokemon_GetBoxPokemon(param0->unk_28));

                if (Pokemon_GetValue(param0->unk_28, MON_DATA_HAS_NICKNAME, NULL) == 0) {
                    Pokemon_SetValue(param0->unk_28, MON_DATA_SPECIES_NAME, NULL);
                }

                param0->unk_64++;
            }
        }
        break;
    case 13: {
        u16 v3;

        switch (Pokemon_LevelUpMove(param0->unk_28, &param0->unk_68, &v3)) {
        case 0xfffe:
            break;
        case 0x0:
            param0->unk_64 = 39;
            break;
        case 0xffff:
            param0->unk_6C = v3;
            param0->unk_64 = 14;
            break;
        default:
            StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
            StringTemplate_SetMoveName(param0->unk_0C, 1, v3);
            param0->unk_65 = sub_0207C584(param0, 4);
            param0->unk_66 = 30;
            param0->unk_64 = 37;
            break;
        }
    } break;
    case 14:
        StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
        StringTemplate_SetMoveName(param0->unk_0C, 1, param0->unk_6C);
        param0->unk_65 = sub_0207C584(param0, 1193);
        param0->unk_66 = 30;
        param0->unk_64++;
        break;
    case 16:
        StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
        param0->unk_65 = sub_0207C584(param0, 1194);
        param0->unk_66 = 30;
        param0->unk_64++;
        break;
    case 18:
        param0->unk_65 = sub_0207C584(param0, 1195);
        param0->unk_66 = 1;
        param0->unk_64++;
        break;
    case 15:
    case 17:
    case 19:
    case 26:
    case 28:
    case 30:
    case 33:
        if (Text_IsPrinterActive(param0->unk_65) == 0) {
            if (--param0->unk_66 == 0) {
                param0->unk_64++;
            }
        }
        break;
    case 20:
        param0->unk_40 = Menu_MakeYesNoChoice(param0->unk_00, &Unk_020F0A30, 1, 8, param0->unk_5C);
        param0->unk_64++;
        break;
    case 21:
        switch (Menu_ProcessInputAndHandleExit(param0->unk_40, param0->unk_5C)) {
        case 0:
            param0->unk_64 = 22;
            PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
            sub_0200872C(param0->unk_18, 0, 16, 0, 0x0);
            break;
        case 0xfffffffe:
            param0->unk_64 = 32;
            break;
        }
        break;
    case 22:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);
            sub_0207C460(param0->unk_00);
            sub_02007DEC(param0->unk_1C[0], 6, 1);
            sub_02007DEC(param0->unk_1C[1], 6, 1);
            param0->unk_3C->monData = param0->unk_28;
            param0->unk_3C->options = param0->unk_2C;
            param0->unk_3C->dataType = SUMMARY_DATA_MON;
            param0->unk_3C->monIndex = 0;
            param0->unk_3C->monMax = 1;
            param0->unk_3C->move = param0->unk_6C;
            param0->unk_3C->mode = SUMMARY_MODE_SELECT_MOVE;
            param0->unk_3C->chatotCry = NULL;
            PokemonSummaryScreen_FlagVisiblePages(param0->unk_3C, Unk_020F0A2C);
            sub_0207C624(param0);
            param0->unk_64++;
        }
        break;
    case 23:
        if (OverlayManager_Exec(param0->unk_38)) {
            OverlayManager_Free(param0->unk_38);
            sub_0207C1CC(param0, param0->unk_00);
            Window_DrawMessageBoxWithScrollCursor(param0->unk_04, 0, 1, 10);
            sub_02007DEC(param0->unk_1C[0], 6, 0);
            sub_02007DEC(param0->unk_1C[1], 6, 0);
            sub_020089A0(param0->unk_1C[0]);
            sub_020089A0(param0->unk_1C[1]);
            PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 16, 0, 0x0);
            sub_0200872C(param0->unk_18, 16, 0, 0, 0x0);
            sub_02039734();
            param0->unk_64++;
        }
        break;
    case 24:
        sub_0200F338(0);
        sub_0200F338(1);

        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            if (param0->unk_3C->selectedMoveSlot == LEARNED_MOVES_MAX) {
                param0->unk_64 = 32;
            } else {
                param0->unk_6E = param0->unk_3C->selectedMoveSlot;
                param0->unk_64 = 25;
            }
        }
        break;
    case 32:
        StringTemplate_SetMoveName(param0->unk_0C, 0, param0->unk_6C);
        param0->unk_65 = sub_0207C584(param0, 1197);
        param0->unk_66 = 1;
        param0->unk_64++;
        break;
    case 34:
        param0->unk_40 = Menu_MakeYesNoChoice(param0->unk_00, &Unk_020F0A30, 1, 8, param0->unk_5C);
        param0->unk_64++;
        break;
    case 35:
        switch (Menu_ProcessInputAndHandleExit(param0->unk_40, param0->unk_5C)) {
        case 0:
            StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
            StringTemplate_SetMoveName(param0->unk_0C, 1, param0->unk_6C);
            param0->unk_65 = sub_0207C584(param0, 1198);
            param0->unk_66 = 30;
            param0->unk_64 = 36;
            break;
        case 0xfffffffe:
            param0->unk_64 = 14;
            break;
        }
        break;
        break;
    case 36:
        if (Text_IsPrinterActive(param0->unk_65) == 0) {
            if (--param0->unk_66 == 0) {
                param0->unk_64 = 13;
            }
        }
        break;
    case 25:
        param0->unk_65 = sub_0207C584(param0, 1199);
        param0->unk_66 = 30;
        param0->unk_64++;
        break;
    case 27:
        StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
        StringTemplate_SetMoveName(param0->unk_0C, 1, Pokemon_GetValue(param0->unk_28, 54 + param0->unk_6E, NULL));
        param0->unk_65 = sub_0207C584(param0, 1200);
        param0->unk_66 = 30;
        param0->unk_64++;
        break;
    case 29:
        param0->unk_65 = sub_0207C584(param0, 1201);
        param0->unk_66 = 30;
        param0->unk_64++;
        break;
    case 31:
        StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
        StringTemplate_SetMoveName(param0->unk_0C, 1, param0->unk_6C);
        param0->unk_65 = sub_0207C584(param0, 1202);
        param0->unk_66 = 0;
        Pokemon_SetValue(param0->unk_28, 62 + param0->unk_6E, &param0->unk_66);
        Pokemon_SetMoveSlot(param0->unk_28, param0->unk_6C, param0->unk_6E);
        param0->unk_66 = 30;
        param0->unk_64 = 37;
        break;
    case 37:
        if (Text_IsPrinterActive(param0->unk_65) == 0) {
            param0->unk_64++;
        }
        break;
    case 38:
        if (sub_020061E4() == 0) {
            if (--param0->unk_66 == 0) {
                param0->unk_64 = 13;
            }
        }
        break;
    case 39:
        PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
        sub_0200872C(param0->unk_18, 0, 16, 0, 0x0);
        param0->unk_64++;
        break;
    case 40:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            sub_0207C8F4(param0->unk_30);
            sub_0207C028(param0);
            param0->unk_67 = 1;
        }
        break;
    case 41:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            sub_02007DEC(param0->unk_1C[0], 12, 0x100);
            sub_02007DEC(param0->unk_1C[0], 13, 0x100);
            sub_02007DEC(param0->unk_1C[1], 12, 0x0);
            sub_02007DEC(param0->unk_1C[1], 13, 0x0);
            sub_02007DEC(param0->unk_1C[1], 6, 1);
            PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), (0xc00 ^ 0xffff), 0, 16, 0, 0x7fff);
            sub_0200872C(param0->unk_18, 16, 0, 0, 0x7fff);
            param0->unk_72 = 0;
            param0->unk_73 = 0;
            param0->unk_74 = 0xff;
            param0->unk_75 = 0xa0;
            param0->unk_70 = 0;
            sub_020055D0(1141, 0);
            sub_0207C8F4(param0->unk_30);
            param0->unk_64++;
        }
        break;
    case 42:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            {
                SpriteAnimationFrame v4[10];

                PokeSprite_LoadAnimation(param0->unk_80, param0->unk_44, param0->unk_1C[0], param0->unk_60, 2, 0, 0);
                PokeSprite_LoadAnimationFrames(param0->unk_80, &v4[0], param0->unk_60, 1);
                sub_02007C10(param0->unk_1C[0], &v4[0]);
                sub_02007B98(param0->unk_1C[0], NULL);
            }

            sub_0200590C(param0->unk_60, param0->unk_84, param0->unk_86);
            param0->unk_64++;
        }
        break;
    case 43:
        if ((sub_0200598C() == 0) && (sub_020160F4(param0->unk_44, 0) == 1) && (sub_02007C24(param0->unk_1C[0]) == 0)) {
            StringTemplate_SetNickname(param0->unk_0C, 0, Pokemon_GetBoxPokemon(param0->unk_28));
            param0->unk_65 = sub_0207C584(param0, 919);
            param0->unk_66 = 20;
            param0->unk_64++;
        }
        break;
    case 44:
        if (Text_IsPrinterActive(param0->unk_65) == 0) {
            if (--param0->unk_66 == 0) {
                PaletteData_StartFade(param0->unk_14, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                sub_0200872C(param0->unk_18, 0, 16, 0, 0x0);
                param0->unk_64++;
            }
        }
        break;
    case 45:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_14) == 0) {
            param0->unk_67 = 1;
        }
        break;
    }
}

static void sub_0207C028(UnkStruct_0207AE68 *param0)
{
    int v0;

    switch (param0->unk_78) {
    case 13:
    case 14:
        if (Bag_GetItemQuantity(param0->unk_4C, ITEM_POKE_BALL, param0->unk_5C) && (Party_GetCurrentCount(param0->unk_24) < 6)) {
            {
                Pokemon *v1;
                int v2;
                UnkStruct_0202818C *v3;
                UnkStruct_0202CA28 v4;

                v1 = Pokemon_New(param0->unk_5C);
                Pokemon_Copy(param0->unk_28, v1);

                v2 = SPECIES_SHEDINJA;
                Pokemon_SetValue(v1, MON_DATA_SPECIES, &v2);

                v2 = ITEM_POKE_BALL;
                Pokemon_SetValue(v1, MON_DATA_POKEBALL, &v2);

                v2 = 0;
                Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &v2);
                Pokemon_SetValue(v1, MON_DATA_MARKS, &v2);

                for (v0 = MON_DATA_SINNOH_CHAMP_RIBBON; v0 < MON_DATA_SINNOH_RIBBON_DUMMY + 1; v0++) {
                    Pokemon_SetValue(v1, v0, &v2);
                }

                for (v0 = MON_DATA_HOENN_COOL_RIBBON; v0 < MON_DATA_HOENN_WORLD_RIBBON + 1; v0++) {
                    Pokemon_SetValue(v1, v0, &v2);
                }

                for (v0 = MON_DATA_SINNOH_SUPER_COOL_RIBBON; v0 < MON_DATA_CONTEST_RIBBON_DUMMY + 1; v0++) {
                    Pokemon_SetValue(v1, v0, &v2);
                }

                Pokemon_SetValue(v1, MON_DATA_SPECIES_NAME, NULL);
                Pokemon_SetValue(v1, MON_DATA_HAS_NICKNAME, &v2);
                Pokemon_SetValue(v1, MON_DATA_STATUS_CONDITION, &v2);

                v3 = sub_0202818C(param0->unk_5C);
                Pokemon_SetValue(v1, MON_DATA_170, v3);
                Heap_FreeToHeap(v3);
                Pokemon_SetValue(v1, MON_DATA_MAIL_ID, &v2);

                MI_CpuClearFast(&v4, sizeof(UnkStruct_0202CA28));

                Pokemon_SetValue(v1, MON_DATA_171, (UnkStruct_0202CA28 *)&v4);
                Pokemon_CalcAbility(v1);

                v0 = Pokemon_GetGender(v1);
                Pokemon_SetValue(v1, MON_DATA_GENDER, &v0);

                Pokemon_CalcLevelAndStats(v1);
                Party_AddPokemon(param0->unk_24, v1);
                Pokedex_Capture(param0->unk_48, v1);
                GameRecords_IncrementRecordValue(param0->records, RECORD_UNK_012);
                GameRecords_IncrementTrainerScore(param0->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
                Poketch_PokemonHistoryEnqueue(param0->poketch, Pokemon_GetBoxPokemon(v1));
                Heap_FreeToHeap(v1);
                Bag_TryRemoveItem(param0->unk_4C, ITEM_POKE_BALL, 1, param0->unk_5C);
            }
        }
        break;
    case 6:
    case 18:
    case 19:
        v0 = 0;
        Pokemon_SetValue(param0->unk_28, MON_DATA_HELD_ITEM, &v0);
        break;
    }
}

static void sub_0207C1CC(UnkStruct_0207AE68 *param0, BgConfig *param1)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_C,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_AB,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v1);
    }

    {
        BgTemplate v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        Bg_InitFromTemplate(param1, 1, &v2[0], 0);
        Bg_ClearTilemap(param1, 1);
        Bg_InitFromTemplate(param1, 2, &v2[1], 0);
        Bg_ClearTilemap(param1, 2);
        Bg_InitFromTemplate(param1, 3, &v2[2], 0);
        Bg_ClearTilemap(param1, 3);

        G2_SetBG0Priority(0x1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        BgTemplate v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x6800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
        };

        Bg_InitFromTemplate(param1, 4, &v3[0], 0);
        Bg_ClearTilemap(param1, 4);
    }

    {
        int v4;
        int v5 = 118;
        int v6 = 0;
        int v7 = 1;
        int v8 = 8;
        int v9 = 3;

        v4 = Options_Frame(param0->unk_2C);

        ReplaceTransparentTiles(param1, 1, 1, 10, v4, param0->unk_5C);
        Graphics_LoadTilesToBgLayer(v5, v6, param1, v9, 0, 0, 1, param0->unk_5C);
        Graphics_LoadTilemapToBgLayer(v5, v7, param1, v9, 0, 0, 1, param0->unk_5C);
        PaletteData_LoadBufferFromFileStart(param0->unk_14, v5, v8, param0->unk_5C, 0, 0x20 * 2, 0);
        PaletteData_LoadBufferFromFileStart(param0->unk_14, 38, GetMessageBoxPaletteNARCMember(v4), param0->unk_5C, 0, 0x20, 10 * 0x10);
        PaletteData_LoadBufferFromFileStart(param0->unk_14, 14, 7, param0->unk_5C, 0, 0x20, 0xb * 0x10);
        LoadStandardWindowTiles(param0->unk_00, 2, 1, 0, param0->unk_5C);
        PaletteData_LoadBufferFromFileStart(param0->unk_14, 38, GetStandardWindowPaletteNARCMember(), param0->unk_5C, 0, 0x20, 8 * 0x10);
    }

    {
        int v10 = 12;
        int v11 = 10;
        int v12 = 11;
        int v13 = 12;
        int v14 = 4;

        Graphics_LoadTilesToBgLayer(v10, v11, param1, v14, 0, 0, 1, param0->unk_5C);
        Graphics_LoadTilemapToBgLayer(v10, v12, param1, v14, 0, 0, 1, param0->unk_5C);
        PaletteData_LoadBufferFromFileStart(param0->unk_14, v10, v13, param0->unk_5C, 1, 0x20 * 1, 0);
    }

    GX_SetVisibleWnd(GX_WNDMASK_W0);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, NULL);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ, NULL);

    param0->unk_72 = 0;
    param0->unk_73 = 0;
    param0->unk_74 = 0xff;
    param0->unk_75 = 0xa0;

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    SetVBlankCallback(sub_0207C520, param0);
}

static void sub_0207C460(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 3);
    Bg_FreeTilemapBuffer(param0, 4);
}

static void sub_0207C498(UnkStruct_0207AE68 *param0)
{
    ArchivedSprite v0;
    Pokemon *v1;

    Pokemon_BuildArchivedSprite(&v0, param0->unk_28, 2);

    param0->unk_1C[0] = sub_02007C34(param0->unk_18, &v0, 128, 80, 0, 0, NULL, NULL);
    v1 = Pokemon_New(param0->unk_5C);

    Pokemon_Copy(param0->unk_28, v1);
    Pokemon_SetValue(v1, MON_DATA_SPECIES, (u8 *)&param0->unk_62);
    Pokemon_CalcLevelAndStats(v1);
    Pokemon_BuildArchivedSprite(&v0, v1, 2);
    Heap_FreeToHeap(v1);

    param0->unk_1C[1] = sub_02007C34(param0->unk_18, &v0, 128, 80, 0, 0, NULL, NULL);

    sub_02007DEC(param0->unk_1C[1], 12, 0x0);
    sub_02007DEC(param0->unk_1C[1], 13, 0x0);
}

static void sub_0207C520(void *param0)
{
    UnkStruct_0207AE68 *v0 = (UnkStruct_0207AE68 *)param0;

    G2_SetWnd0Position(v0->unk_72, v0->unk_73, v0->unk_74, v0->unk_75);

    sub_02008A94(v0->unk_18);
    VramTransfer_Process();
    PaletteData_CommitFadedBuffers(v0->unk_14);
    Bg_RunScheduledUpdates(v0->unk_00);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static u8 sub_0207C584(UnkStruct_0207AE68 *param0, int param1)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param0->unk_08, param1);

    StringTemplate_Format(param0->unk_0C, param0->unk_10, v0);
    Heap_FreeToHeap(v0);
    Window_FillTilemap(param0->unk_04, 0xff);

    return Text_AddPrinterWithParams(param0->unk_04, FONT_MESSAGE, param0->unk_10, 0, 0, Options_TextFrameDelay(param0->unk_2C), sub_0207C5CC);
}

static BOOL sub_0207C5CC(TextPrinterTemplate *param0, u16 param1)
{
    BOOL v0;

    v0 = 0;

    switch (param1) {
    case 1:
        v0 = sub_020057E0();
        break;
    case 2:
        v0 = sub_020061E4();
        break;
    case 3:
        sub_02006150(1156);
        break;
    case 4:
        Sound_PlayEffect(1510);
        break;
    case 5:
        sub_02006150(1155);
        break;
    default:
        break;
    }

    return v0;
}

static void sub_0207C624(UnkStruct_0207AE68 *param0)
{
    param0->unk_38 = OverlayManager_New(&gPokemonSummaryScreenApp, param0->unk_3C, param0->unk_5C);
}
