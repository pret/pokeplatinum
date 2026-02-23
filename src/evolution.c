#include "evolution.h"

#include <nitro.h>
#include <string.h>

#include "generated/evolution_methods.h"
#include "generated/game_records.h"
#include "generated/items.h"
#include "generated/moves.h"
#include "generated/species.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/mail.h"
#include "struct_defs/seal_case.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_0207C894.h"

#include "applications/pokemon_summary_screen/main.h"

#include "bag.h"
#include "bg_window.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hardware_palette.h"
#include "heap.h"
#include "mail.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "poketch.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_0202419C.h"
#include "unk_020393C8.h"
#include "unk_0207C63C.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"
#include "res/graphics/diploma/diploma.naix"
#include "res/text/bank/battle_strings.h"

static void SysTask_Evolution(SysTask *task, void *data);
BOOL Evolution_IsDone(EvolutionData *evolutionData);
void Evolution_Free(EvolutionData *evolutionData);
static void Evolution_Main(EvolutionData *evolutionData);
static void Evolution_ProcessEvolutionEffects(EvolutionData *evolutionData);
static void Evolution_InitGraphics(EvolutionData *evolutionData, BgConfig *bgConfig);
static void Evolution_FreeBgs(BgConfig *bgConfig);
static void Evolution_CreateSprites(EvolutionData *evolutionData);
static void Evolution_VBlankCallback(void *data);
static u8 Evolution_PrintString(EvolutionData *evolutionData, int entryID);
static BOOL Evolution_TextPrinterCallback(TextPrinterTemplate *template, u16 param1);
static void Evolution_NewSummaryScreenApplicationManager(EvolutionData *evolutionData);

static const WindowTemplate sYesNowWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_2,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = 7,
    .height = 4,
    .palette = PLTT_11,
    .baseTile = 10,
};

static const u8 summaryPages[] = {
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_MAX
};

EvolutionData *Evolution_Begin(Party *party, Pokemon *mon, int targetSpecies, Options *options, int showContest, Pokedex *pokedex, Bag *bag, GameRecords *records, Poketch *poketch, int method, int flags, enum HeapID heapID)
{
    EvolutionData *evolutionData = (EvolutionData *)Heap_Alloc(heapID, sizeof(EvolutionData));

    MI_CpuClearFast(evolutionData, sizeof(EvolutionData));
    MI_CpuFill16((void *)GetHardwareMainBgPaletteAddress(), 0, GetHardwareMainBgPaletteSize());
    MI_CpuFill16((void *)GetHardwareSubBgPaletteAddress(), 0, GetHardwareSubBgPaletteSize());

    evolutionData->party = party;
    evolutionData->mon = mon;
    evolutionData->currentSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    evolutionData->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    evolutionData->targetSpecies = targetSpecies;
    evolutionData->heapID = heapID;
    evolutionData->narc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, heapID);

    PokemonSprite_LoadCryDelay(evolutionData->narc, &(evolutionData->currentSpeciesCryDelay), evolutionData->currentSpecies, 1);
    PokemonSprite_LoadCryDelay(evolutionData->narc, &(evolutionData->targetSpeciesCryDelay), evolutionData->targetSpecies, 1);

    evolutionData->paletteData = PaletteData_New(heapID);

    PaletteData_SetAutoTransparent(evolutionData->paletteData, 1);
    PaletteData_AllocBuffer(evolutionData->paletteData, PLTTBUF_MAIN_BG, 0x200, heapID);
    PaletteData_AllocBuffer(evolutionData->paletteData, PLTTBUF_SUB_BG, 0x200, heapID);
    PaletteData_AllocBuffer(evolutionData->paletteData, PLTTBUF_MAIN_OBJ, ((16 - 2) * 16) * sizeof(u16), heapID);
    PaletteData_AllocBuffer(evolutionData->paletteData, PLTTBUF_SUB_OBJ, 0x200, heapID);

    evolutionData->bgConfig = BgConfig_New(heapID);
    evolutionData->window = Window_New(heapID, 1);
    evolutionData->options = options;
    evolutionData->pipelineBuffers = sub_0207C690(heapID);

    sub_0207C63C();
    sub_0207C664();
    sub_0207C730();
    Evolution_InitGraphics(evolutionData, evolutionData->bgConfig);
    Window_Add(evolutionData->bgConfig, evolutionData->window, BG_LAYER_MAIN_1, 2, 19, 27, 4, PLTT_11, (18 + 12) + 1);
    Window_FillTilemap(evolutionData->window, 0xFF);
    Window_DrawMessageBoxWithScrollCursor(evolutionData->window, 0, 1, PLTT_10);

    evolutionData->monSpriteMan = PokemonSpriteManager_New(heapID);
    evolutionData->monAnimMan = PokemonAnimManager_New(heapID, 1, FALSE);
    evolutionData->done = FALSE;
    evolutionData->delay = 2;
    evolutionData->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_STRINGS, heapID);
    evolutionData->strTemplate = StringTemplate_Default(heapID);
    evolutionData->string = String_Init(2 * 160, heapID);
    evolutionData->monSummary = Heap_Alloc(heapID, sizeof(PokemonSummary));

    MI_CpuClearFast(evolutionData->monSummary, sizeof(PokemonSummary));

    evolutionData->monSummary->showContest = showContest;
    evolutionData->pokedex = pokedex;
    evolutionData->bag = bag;
    evolutionData->records = records;
    evolutionData->poketch = poketch;
    evolutionData->method = method;
    evolutionData->flags = flags;

    Evolution_CreateSprites(evolutionData);
    PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 1, 16, 0, 0);
    PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 16, 0, 0, 0);

    evolutionData->unk_58 = sub_0201567C(evolutionData->paletteData, 0, 11, heapID);

    sub_02015738(evolutionData->unk_58, 1);
    SysTask_Start(SysTask_Evolution, evolutionData, 0);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    sub_02039734();

    return evolutionData;
}

static void SysTask_Evolution(SysTask *task, void *data)
{
    EvolutionData *evolutionData = (EvolutionData *)data;

    Evolution_Main(evolutionData);
    PokemonSpriteManager_DrawSprites(evolutionData->monSpriteMan);
    sub_0207C770();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    if (evolutionData->done) {
        SysTask_Done(task);
    }
}

BOOL Evolution_IsDone(EvolutionData *evolutionData)
{
    return evolutionData->done == TRUE;
}

void Evolution_Free(EvolutionData *evolutionData)
{
    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
    SetVBlankCallback(NULL, NULL);
    Windows_Delete(evolutionData->window, 1);
    PaletteData_FreeBuffer(evolutionData->paletteData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(evolutionData->paletteData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(evolutionData->paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(evolutionData->paletteData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(evolutionData->paletteData);
    PokemonSpriteManager_Free(evolutionData->monSpriteMan);
    PokemonAnimManager_Free(evolutionData->monAnimMan);
    G3DPipelineBuffers_Free(evolutionData->pipelineBuffers);
    Evolution_FreeBgs(evolutionData->bgConfig);
    MessageLoader_Free(evolutionData->msgLoader);
    StringTemplate_Free(evolutionData->strTemplate);
    Heap_Free(evolutionData->string);
    Heap_Free(evolutionData->monSummary);
    sub_02015760(evolutionData->unk_58);
    Heap_Free(evolutionData->bgConfig);
    NARC_dtor(evolutionData->narc);
    Heap_Free(evolutionData);
    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
}

enum EvolutionState {
    EVOLUTION_STATE_START_DELAY,
    EVOLUTION_STATE_START_RESET_SCREEN_BRIGHTNESS,
    EVOLUTION_STATE_PRINT_WHAT,
    EVOLUTION_STATE_WAIT_PRINT_WHAT,
    EVOLUTION_STATE_PRINT_POKEMON_IS_EVOLVING,
    EVOLUTION_STATE_WAIT_PRINT_POKEMON_IS_EVOLVING,
    EVOLUTION_STATE_START_FADE,
    EVOLUTION_STATE_CLAMP_IN,
    EVOLUTION_STATE_ANIMATION_ALTERNATE_POKEMON,
    EVOLUTION_STATE_CLAMP_OUT_AND_FADE,
    EVOLUTION_STATE_PLAY_EVOLVED_POKEMON_ANIMATION_AND_CRY,
    EVOLUTION_STATE_SET_POKEMON_VALUES_AND_PRINT_CONGRATULATIONS,
    EVOLUTION_STATE_LOG_EVOLVED_POKEMON,
    EVOLUTION_STATE_CHECK_LEARN_MOVE,
    EVOLUTION_STATE_PRINT_WANTS_TO_LEARN_MOVE,
    EVOLUTION_STATE_WAIT_PRINT_WANTS_TO_LEARN_MOVE,
    EVOLUTION_STATE_PRINT_ALREADY_KNOWS_FOUR_MOVES,
    EVOLUTION_STATE_WAIT_PRINT_ALREADY_KNOWS_FOUR_MOVES,
    EVOLUTION_STATE_PRINT_SHOULD_A_MOVE_BE_DELETED,
    EVOLUTION_STATE_WAIT_PRINT_SHOULD_A_MOVE_BE_DELETED,
    EVOLUTION_STATE_PRINT_YES_NO_SHOULD_A_MOVE_BE_DELETED,
    EVOLUTION_STATE_PROCESS_INPUT_SHOULD_A_MOVE_BE_DELETED,
    EVOLUTION_STATE_SET_SUMMARY_DATA,
    EVOLUTION_STATE_CHOOSE_MOVE_TO_DELETE,
    EVOLUTION_STATE_WAIT_FADE_FROM_SUMMARY_SCREEN,
    EVOLUTION_STATE_PRINT_ONE_TWO_THREE_POOF,
    EVOLUTION_STATE_WAIT_PRINT_ONE_TWO_THREE_POOF,
    EVOLUTION_STATE_PRINT_FORGOT_HOW_TO_USE_MOVE,
    EVOLUTION_STATE_WAIT_PRINT_FORGOT_HOW_TO_USE_MOVE,
    EVOLUTION_STATE_PRINT_AND_DOT_DOT_DOT,
    EVOLUTION_STATE_WAIT_PRINT_AND_DOT_DOT_DOT,
    EVOLUTION_STATE_PRINT_POKEMON_LEARNED_MOVE,
    EVOLUTION_STATE_PRINT_STOP_TRYING_TO_TEACH_MOVE,
    EVOLUTION_STATE_WAIT_PRINT_STOP_TRYING_TO_TEACH_MOVE,
    EVOLUTION_STATE_PRINT_YES_NO_STOP_TRYING_TO_TEACH_MOVE,
    EVOLUTION_STATE_PROCESS_INPUT_STOP_TRYING_TO_TEACH_MOVE,
    EVOLUTION_STATE_WAIT_PRINT_DID_NOT_LEARN_MOVE,
    EVOLUTION_STATE_WAIT_PRINT_POKEMON_LEARNED_MOVE,
    EVOLUTION_STATE_WAIT_LEARNED_MOVE_FANFARE,
    EVOLUTION_STATE_NO_MOVE_TO_LEARN,
    EVOLUTION_STATE_END,
    EVOLUTION_STATE_CANCEL_EVOLUTION,
    EVOLUTION_STATE_CANCEL_EVOLUTION_ANIMATION,
    EVOLUTION_STATE_PRINT_POKEMON_STOPPED_EVOLVING,
    EVOLUTION_STATE_FADE_CANCELED_EVOLUTION,
    EVOLUTION_STATE_END_CANCELED_EVOLUTION
};

static void Evolution_Main(EvolutionData *evolutionData)
{
    if (evolutionData->shrinkAndGrowState) {
        if ((evolutionData->shrinkAndGrowState & 1) == 0) {
            PokemonSprite_AddAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_X, evolutionData->attributeDelta * -1);
            PokemonSprite_AddAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_Y, evolutionData->attributeDelta * -1);
            PokemonSprite_AddAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_X, evolutionData->attributeDelta);
            PokemonSprite_AddAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_Y, evolutionData->attributeDelta);

            if (PokemonSprite_GetAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_X) == 0) {
                evolutionData->shrinkAndGrowState ^= 1;
            }
        } else {
            PokemonSprite_AddAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_X, evolutionData->attributeDelta);
            PokemonSprite_AddAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_Y, evolutionData->attributeDelta);
            PokemonSprite_AddAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_X, evolutionData->attributeDelta * -1);
            PokemonSprite_AddAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_Y, evolutionData->attributeDelta * -1);

            if (PokemonSprite_GetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_X) == 0) {
                evolutionData->shrinkAndGrowState ^= 1;

                if (evolutionData->attributeDelta < 64) {
                    evolutionData->attributeDelta *= 2;
                }
            }
        }
    }

    if ((evolutionData->flags & 0x1) && evolutionData->state == EVOLUTION_STATE_ANIMATION_ALTERNATE_POKEMON && JOY_NEW(PAD_BUTTON_B)) {
        PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xC00 ^ 0xFFFF, 0, 0, 16, 0x7FFF);
        evolutionData->state = EVOLUTION_STATE_CANCEL_EVOLUTION;
    }

    switch (evolutionData->state) {
    case EVOLUTION_STATE_START_DELAY:
        if (--evolutionData->delay == 0) {
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_START_RESET_SCREEN_BRIGHTNESS:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_SUB);
        sub_02015738(evolutionData->unk_58, 0);

        if (evolutionData->flags & 0x2) {
            evolutionData->state = EVOLUTION_STATE_PRINT_WHAT;
        } else {
            evolutionData->state = EVOLUTION_STATE_PRINT_POKEMON_IS_EVOLVING;
        }
        break;
    case EVOLUTION_STATE_PRINT_WHAT:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_What);
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_WAIT_PRINT_WHAT:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE) {
            evolutionData->state = EVOLUTION_STATE_PRINT_POKEMON_IS_EVOLVING;
        }
        break;
    case EVOLUTION_STATE_PRINT_POKEMON_IS_EVOLVING:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];

            PokemonSprite_LoadAnim(evolutionData->narc, evolutionData->monAnimMan, evolutionData->monSprites[0], evolutionData->currentSpecies, 2, 0, 0);
            PokemonSprite_LoadAnimFrames(evolutionData->narc, &animFrames[0], evolutionData->currentSpecies, 1);
            PokemonSprite_SetAnimFrames(evolutionData->monSprites[0], &animFrames[0]);
            PokemonSprite_InitAnim(evolutionData->monSprites[0], NULL);

            Sound_PlayDelayedPokemonCry(evolutionData->currentSpecies, evolutionData->currentSpeciesCryDelay, evolutionData->form);
            StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));

            if (evolutionData->flags & 0x2) {
                evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_PokemonIsEvolving);
            } else {
                evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_WhatPokemonIsEvolving);
            }

            evolutionData->state = EVOLUTION_STATE_WAIT_PRINT_POKEMON_IS_EVOLVING;
        }
        break;
    case EVOLUTION_STATE_WAIT_PRINT_POKEMON_IS_EVOLVING:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE
            && Sound_IsPokemonCryPlaying() == FALSE
            && PokemonAnimManager_HasAnimCompleted(evolutionData->monAnimMan, 0) == TRUE
            && PokemonSprite_IsAnimActive(evolutionData->monSprites[0]) == FALSE) {
            sub_02015738(evolutionData->unk_58, 1);
            Sound_PlayBasicBGM(SEQ_SHINKA);
            evolutionData->delay = 20;
            evolutionData->state = EVOLUTION_STATE_START_FADE;
        }
        break;
    case EVOLUTION_STATE_START_FADE:
        if (--evolutionData->delay == 0) {
            UnkStruct_0207C894 v1;

            v1.heapID = evolutionData->heapID;
            v1.unk_04 = 0;
            evolutionData->unk_30 = sub_0207C894(&v1);

            sub_0207C8C4(evolutionData->unk_30, 0);
            PokemonSprite_StartFade(evolutionData->monSprites[0], 0, 16, 4, 0x7FFF);
            PokemonSprite_StartFade(evolutionData->monSprites[1], 0, 16, 4, 0x7FFF);

            GF_ASSERT(HeapExp_FndGetTotalFreeSize(evolutionData->heapID) > 0x8000);
            Sound_PlayEffect(SEQ_SE_DP_W025);

            evolutionData->delay = 40;
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_CLAMP_IN:
        if (evolutionData->windowTop < 40) {
            evolutionData->windowTop += 2;
            evolutionData->windowBottom -= 2;
        }

        if (--evolutionData->delay == 0) {
            sub_0207C8C4(evolutionData->unk_30, 1);
            sub_0207C8C4(evolutionData->unk_30, 2);
            sub_0207C8C4(evolutionData->unk_30, 7);
            sub_0207C8C4(evolutionData->unk_30, 8);
            sub_0207C8C4(evolutionData->unk_30, 9);
            sub_0207C8C4(evolutionData->unk_30, 11);
            Sound_PlayEffect(SEQ_SE_DP_W060C);
            evolutionData->shrinkAndGrowState = 0x10;
            evolutionData->attributeDelta = 8;
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_ANIMATION_ALTERNATE_POKEMON:
        if (sub_0207C8E0(evolutionData->unk_30) == FALSE) {
            sub_0207C8C4(evolutionData->unk_30, 3);
            sub_0207C8C4(evolutionData->unk_30, 4);
            sub_0207C8C4(evolutionData->unk_30, 5);
            sub_0207C8C4(evolutionData->unk_30, 6);
            sub_0207C8C4(evolutionData->unk_30, 10);
            PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xC00 ^ 0xFFFF, 2, 0, 16, 0x7FFF);
            PokemonSprite_SetAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_X, 0);
            PokemonSprite_SetAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_Y, 0);
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            Sound_PlayEffect(SEQ_SE_DP_W062);
            evolutionData->shrinkAndGrowState = 0;
            evolutionData->delay = 8;
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_CLAMP_OUT_AND_FADE:
        if (evolutionData->windowTop) {
            evolutionData->windowTop -= 2;
            evolutionData->windowBottom += 2;
        }

        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            if (--evolutionData->delay == 0) {
                sub_0207C8C4(evolutionData->unk_30, 12);
                PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xC00 ^ 0xFFFF, 4, 16, 0, 0x7FFF);
                PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 16, 0, 3, 0x7FFF);
                Sound_PlayEffect(SEQ_SE_DP_W080);
                evolutionData->state++;
            }
        }
        break;
    case EVOLUTION_STATE_PLAY_EVOLVED_POKEMON_ANIMATION_AND_CRY:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0 && sub_0207C8E0(evolutionData->unk_30) == FALSE) {
            SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];

            PokemonSprite_LoadAnim(evolutionData->narc, evolutionData->monAnimMan, evolutionData->monSprites[1], evolutionData->targetSpecies, FACE_FRONT, 0, 0);
            PokemonSprite_LoadAnimFrames(evolutionData->narc, &animFrames[0], evolutionData->targetSpecies, 1);
            PokemonSprite_SetAnimFrames(evolutionData->monSprites[1], &animFrames[0]);
            PokemonSprite_InitAnim(evolutionData->monSprites[1], NULL);

            Sound_PlayDelayedPokemonCry(evolutionData->targetSpecies, evolutionData->targetSpeciesCryDelay, evolutionData->form);
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_SET_POKEMON_VALUES_AND_PRINT_CONGRATULATIONS:
        if (Sound_IsPokemonCryPlaying() == FALSE && PokemonAnimManager_HasAnimCompleted(evolutionData->monAnimMan, 0) == TRUE && PokemonSprite_IsAnimActive(evolutionData->monSprites[1]) == FALSE) {
            Pokemon_SetValue(evolutionData->mon, MON_DATA_SPECIES, (u8 *)&evolutionData->targetSpecies);
            Pokemon_CalcAbility(evolutionData->mon);
            Pokemon_CalcLevelAndStats(evolutionData->mon);
            StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
            StringTemplate_SetSpeciesName(evolutionData->strTemplate, 1, Pokemon_GetBoxPokemon(evolutionData->mon));
            evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_CongratulationsYourPokemonEvolvedIntoPokemon);
            evolutionData->delay = 40;
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_LOG_EVOLVED_POKEMON:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE) {
            if (--evolutionData->delay == 0) {
                Pokedex_Capture(evolutionData->pokedex, evolutionData->mon);
                GameRecords_IncrementRecordValue(evolutionData->records, RECORD_POKEMON_EVOLVED);
                GameRecords_IncrementTrainerScore(evolutionData->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
                Poketch_PokemonHistoryEnqueue(evolutionData->poketch, Pokemon_GetBoxPokemon(evolutionData->mon));

                if (Pokemon_GetValue(evolutionData->mon, MON_DATA_HAS_NICKNAME, NULL) == 0) {
                    Pokemon_SetValue(evolutionData->mon, MON_DATA_SPECIES_NAME, NULL);
                }

                evolutionData->state++;
            }
        }
        break;
    case EVOLUTION_STATE_CHECK_LEARN_MOVE:
        u16 moveID;

        switch (Pokemon_LevelUpMove(evolutionData->mon, &evolutionData->levelUpMoveIndex, &moveID)) {
        case LEARNSET_MOVE_ALREADY_KNOWN:
            break;
        case LEARNSET_NO_MOVE_TO_LEARN:
            evolutionData->state = EVOLUTION_STATE_NO_MOVE_TO_LEARN;
            break;
        case LEARNSET_ALL_SLOTS_FILLED:
            evolutionData->moveID = moveID;
            evolutionData->state = EVOLUTION_STATE_PRINT_WANTS_TO_LEARN_MOVE;
            break;
        default:
            StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
            StringTemplate_SetMoveName(evolutionData->strTemplate, 1, moveID);
            evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_PokemonLearnedMove);
            evolutionData->delay = 30;
            evolutionData->state = EVOLUTION_STATE_WAIT_PRINT_POKEMON_LEARNED_MOVE;
            break;
        }
        break;
    case EVOLUTION_STATE_PRINT_WANTS_TO_LEARN_MOVE:
        StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
        StringTemplate_SetMoveName(evolutionData->strTemplate, 1, evolutionData->moveID);
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_PokemonWantsToLearnTheMove);
        evolutionData->delay = 30;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PRINT_ALREADY_KNOWS_FOUR_MOVES:
        StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_HoweverPokemonAlreadyKnowsFourMoves);
        evolutionData->delay = 30;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PRINT_SHOULD_A_MOVE_BE_DELETED:
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_ShouldAMoveBeDeleted);
        evolutionData->delay = 1;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_WAIT_PRINT_WANTS_TO_LEARN_MOVE:
    case EVOLUTION_STATE_WAIT_PRINT_ALREADY_KNOWS_FOUR_MOVES:
    case EVOLUTION_STATE_WAIT_PRINT_SHOULD_A_MOVE_BE_DELETED:
    case EVOLUTION_STATE_WAIT_PRINT_ONE_TWO_THREE_POOF:
    case EVOLUTION_STATE_WAIT_PRINT_FORGOT_HOW_TO_USE_MOVE:
    case EVOLUTION_STATE_WAIT_PRINT_AND_DOT_DOT_DOT:
    case EVOLUTION_STATE_WAIT_PRINT_STOP_TRYING_TO_TEACH_MOVE:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE) {
            if (--evolutionData->delay == 0) {
                evolutionData->state++;
            }
        }
        break;
    case EVOLUTION_STATE_PRINT_YES_NO_SHOULD_A_MOVE_BE_DELETED:
        evolutionData->menu = Menu_MakeYesNoChoice(evolutionData->bgConfig, &sYesNowWindowTemplate, 1, 8, evolutionData->heapID);
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PROCESS_INPUT_SHOULD_A_MOVE_BE_DELETED:
        switch (Menu_ProcessInputAndHandleExit(evolutionData->menu, evolutionData->heapID)) {
        case 0:
            evolutionData->state = EVOLUTION_STATE_SET_SUMMARY_DATA;
            PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 1, 0, 16, 0);
            PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 0, 16, 0, 0);
            break;
        case MENU_CANCELED:
            evolutionData->state = EVOLUTION_STATE_PRINT_STOP_TRYING_TO_TEACH_MOVE;
            break;
        }
        break;
    case EVOLUTION_STATE_SET_SUMMARY_DATA:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
            SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
            Evolution_FreeBgs(evolutionData->bgConfig);
            PokemonSprite_SetAttribute(evolutionData->monSprites[0], MON_SPRITE_HIDE, 1);
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_HIDE, 1);
            evolutionData->monSummary->monData = evolutionData->mon;
            evolutionData->monSummary->options = evolutionData->options;
            evolutionData->monSummary->dataType = SUMMARY_DATA_MON;
            evolutionData->monSummary->monIndex = 0;
            evolutionData->monSummary->monMax = 1;
            evolutionData->monSummary->move = evolutionData->moveID;
            evolutionData->monSummary->mode = SUMMARY_MODE_SELECT_MOVE;
            evolutionData->monSummary->chatotCry = NULL;
            PokemonSummaryScreen_FlagVisiblePages(evolutionData->monSummary, summaryPages);
            Evolution_NewSummaryScreenApplicationManager(evolutionData);
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_CHOOSE_MOVE_TO_DELETE:
        if (ApplicationManager_Exec(evolutionData->summaryScreenAppMan)) {
            ApplicationManager_Free(evolutionData->summaryScreenAppMan);
            Evolution_InitGraphics(evolutionData, evolutionData->bgConfig);
            Window_DrawMessageBoxWithScrollCursor(evolutionData->window, 0, 1, PLTT_10);
            PokemonSprite_SetAttribute(evolutionData->monSprites[0], MON_SPRITE_HIDE, 0);
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_HIDE, 0);
            PokemonSprite_ScheduleReloadFromNARC(evolutionData->monSprites[0]);
            PokemonSprite_ScheduleReloadFromNARC(evolutionData->monSprites[1]);
            PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 1, 16, 0, 0);
            PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 16, 0, 0, 0);
            sub_02039734();
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_WAIT_FADE_FROM_SUMMARY_SCREEN:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_SUB);

        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            if (evolutionData->monSummary->selectedMoveSlot == LEARNED_MOVES_MAX) {
                evolutionData->state = EVOLUTION_STATE_PRINT_STOP_TRYING_TO_TEACH_MOVE;
            } else {
                evolutionData->moveSlot = evolutionData->monSummary->selectedMoveSlot;
                evolutionData->state = EVOLUTION_STATE_PRINT_ONE_TWO_THREE_POOF;
            }
        }
        break;
    case EVOLUTION_STATE_PRINT_STOP_TRYING_TO_TEACH_MOVE:
        StringTemplate_SetMoveName(evolutionData->strTemplate, 0, evolutionData->moveID);
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_StopTryingToTeachMove);
        evolutionData->delay = 1;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PRINT_YES_NO_STOP_TRYING_TO_TEACH_MOVE:
        evolutionData->menu = Menu_MakeYesNoChoice(evolutionData->bgConfig, &sYesNowWindowTemplate, 1, 8, evolutionData->heapID);
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PROCESS_INPUT_STOP_TRYING_TO_TEACH_MOVE:
        switch (Menu_ProcessInputAndHandleExit(evolutionData->menu, evolutionData->heapID)) {
        case 0:
            StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
            StringTemplate_SetMoveName(evolutionData->strTemplate, 1, evolutionData->moveID);
            evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_PokemonDidNotLearnTheMove);
            evolutionData->delay = 30;
            evolutionData->state = EVOLUTION_STATE_WAIT_PRINT_DID_NOT_LEARN_MOVE;
            break;
        case MENU_CANCELED:
            evolutionData->state = EVOLUTION_STATE_PRINT_WANTS_TO_LEARN_MOVE;
            break;
        }
        break;
        break;
    case EVOLUTION_STATE_WAIT_PRINT_DID_NOT_LEARN_MOVE:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE) {
            if (--evolutionData->delay == 0) {
                evolutionData->state = EVOLUTION_STATE_CHECK_LEARN_MOVE;
            }
        }
        break;
    case EVOLUTION_STATE_PRINT_ONE_TWO_THREE_POOF:
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_EvolutionOneTwoAndPoof);
        evolutionData->delay = 30;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PRINT_FORGOT_HOW_TO_USE_MOVE:
        StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
        StringTemplate_SetMoveName(evolutionData->strTemplate, 1, Pokemon_GetValue(evolutionData->mon, MON_DATA_MOVE1 + evolutionData->moveSlot, NULL));
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_PokemonForgotHowToUseMove);
        evolutionData->delay = 30;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PRINT_AND_DOT_DOT_DOT:
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_EvolutionAndDotDotDot);
        evolutionData->delay = 30;
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_PRINT_POKEMON_LEARNED_MOVE:
        StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
        StringTemplate_SetMoveName(evolutionData->strTemplate, 1, evolutionData->moveID);
        evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_EvolvedPokemonLearnedMove);
        evolutionData->delay = 0;
        Pokemon_SetValue(evolutionData->mon, MON_DATA_MOVE1_PP_UPS + evolutionData->moveSlot, &evolutionData->delay);
        Pokemon_SetMoveSlot(evolutionData->mon, evolutionData->moveID, evolutionData->moveSlot);
        evolutionData->delay = 30;
        evolutionData->state = EVOLUTION_STATE_WAIT_PRINT_POKEMON_LEARNED_MOVE;
        break;
    case EVOLUTION_STATE_WAIT_PRINT_POKEMON_LEARNED_MOVE:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE) {
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_WAIT_LEARNED_MOVE_FANFARE:
        if (Sound_IsBGMPausedByFanfare() == FALSE) {
            if (--evolutionData->delay == 0) {
                evolutionData->state = EVOLUTION_STATE_CHECK_LEARN_MOVE;
            }
        }
        break;
    case EVOLUTION_STATE_NO_MOVE_TO_LEARN:
        PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 1, 0, 16, 0);
        PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 0, 16, 0, 0);
        evolutionData->state++;
        break;
    case EVOLUTION_STATE_END:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            sub_0207C8F4(evolutionData->unk_30);
            Evolution_ProcessEvolutionEffects(evolutionData);
            evolutionData->done = TRUE;
        }
        break;
    case EVOLUTION_STATE_CANCEL_EVOLUTION:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            PokemonSprite_SetAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(evolutionData->monSprites[0], MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_X, 0);
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_Y, 0);
            PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_HIDE, 1);
            PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xC00 ^ 0xFFFF, 0, 16, 0, 0x7FFF);
            PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 16, 0, 0, 0x7FFF);
            evolutionData->windowLeft = 0;
            evolutionData->windowTop = 0;
            evolutionData->windowRight = HW_LCD_WIDTH - 1;
            evolutionData->windowBottom = 160;
            evolutionData->shrinkAndGrowState = 0;
            Sound_StopBGM(SEQ_SHINKA, 0);
            sub_0207C8F4(evolutionData->unk_30);
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_CANCEL_EVOLUTION_ANIMATION:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];

            PokemonSprite_LoadAnim(evolutionData->narc, evolutionData->monAnimMan, evolutionData->monSprites[0], evolutionData->currentSpecies, FACE_FRONT, 0, 0);
            PokemonSprite_LoadAnimFrames(evolutionData->narc, &animFrames[0], evolutionData->currentSpecies, 1);
            PokemonSprite_SetAnimFrames(evolutionData->monSprites[0], &animFrames[0]);
            PokemonSprite_InitAnim(evolutionData->monSprites[0], NULL);

            Sound_PlayDelayedPokemonCry(evolutionData->currentSpecies, evolutionData->currentSpeciesCryDelay, evolutionData->form);
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_PRINT_POKEMON_STOPPED_EVOLVING:
        if (Sound_IsPokemonCryPlaying() == FALSE && PokemonAnimManager_HasAnimCompleted(evolutionData->monAnimMan, 0) == TRUE && PokemonSprite_IsAnimActive(evolutionData->monSprites[0]) == FALSE) {
            StringTemplate_SetNickname(evolutionData->strTemplate, 0, Pokemon_GetBoxPokemon(evolutionData->mon));
            evolutionData->printerID = Evolution_PrintString(evolutionData, BattleStrings_Text_HuhPokemonStoppedEvolving);
            evolutionData->delay = 20;
            evolutionData->state++;
        }
        break;
    case EVOLUTION_STATE_FADE_CANCELED_EVOLUTION:
        if (Text_IsPrinterActive(evolutionData->printerID) == FALSE) {
            if (--evolutionData->delay == 0) {
                PaletteData_StartFade(evolutionData->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 1, 0, 16, 0);
                PokemonSpriteManager_StartFadeAll(evolutionData->monSpriteMan, 0, 16, 0, 0);
                evolutionData->state++;
            }
        }
        break;
    case EVOLUTION_STATE_END_CANCELED_EVOLUTION:
        if (PaletteData_GetSelectedBuffersMask(evolutionData->paletteData) == 0) {
            evolutionData->done = TRUE;
        }
        break;
    }
}

static void Evolution_ProcessEvolutionEffects(EvolutionData *evolutionData)
{
    int i;

    switch (evolutionData->method) {
    case EVO_LEVEL_NINJASK:
    case EVO_LEVEL_SHEDINJA:
        if (Bag_GetItemQuantity(evolutionData->bag, ITEM_POKE_BALL, evolutionData->heapID) && Party_GetCurrentCount(evolutionData->party) < MAX_PARTY_SIZE) {
            int value;
            Mail *mail;
            BallCapsule ballCapsule;

            Pokemon *shedinja = Pokemon_New(evolutionData->heapID);
            Pokemon_Copy(evolutionData->mon, shedinja);

            value = SPECIES_SHEDINJA;
            Pokemon_SetValue(shedinja, MON_DATA_SPECIES, &value);

            value = ITEM_POKE_BALL;
            Pokemon_SetValue(shedinja, MON_DATA_POKEBALL, &value);

            value = 0;
            Pokemon_SetValue(shedinja, MON_DATA_HELD_ITEM, &value);
            Pokemon_SetValue(shedinja, MON_DATA_MARKINGS, &value);

            for (i = MON_DATA_SINNOH_CHAMP_RIBBON; i < MON_DATA_UNUSED_RIBBON_53 + 1; i++) {
                Pokemon_SetValue(shedinja, i, &value);
            }

            for (i = MON_DATA_COOL_RIBBON; i < MON_DATA_WORLD_RIBBON + 1; i++) {
                Pokemon_SetValue(shedinja, i, &value);
            }

            for (i = MON_DATA_SUPER_COOL_RIBBON; i < MON_DATA_UNUSED_RIBBON_143 + 1; i++) {
                Pokemon_SetValue(shedinja, i, &value);
            }

            Pokemon_SetValue(shedinja, MON_DATA_SPECIES_NAME, NULL);
            Pokemon_SetValue(shedinja, MON_DATA_HAS_NICKNAME, &value);
            Pokemon_SetValue(shedinja, MON_DATA_STATUS, &value);

            mail = Mail_New(evolutionData->heapID);
            Pokemon_SetValue(shedinja, MON_DATA_MAIL, mail);
            Heap_Free(mail);
            Pokemon_SetValue(shedinja, MON_DATA_BALL_CAPSULE_ID, &value);

            MI_CpuClearFast(&ballCapsule, sizeof(BallCapsule));

            Pokemon_SetValue(shedinja, MON_DATA_BALL_CAPSULE, (BallCapsule *)&ballCapsule);
            Pokemon_CalcAbility(shedinja);

            i = Pokemon_GetGender(shedinja);
            Pokemon_SetValue(shedinja, MON_DATA_GENDER, &i);

            Pokemon_CalcLevelAndStats(shedinja);
            Party_AddPokemon(evolutionData->party, shedinja);
            Pokedex_Capture(evolutionData->pokedex, shedinja);
            GameRecords_IncrementRecordValue(evolutionData->records, RECORD_POKEMON_EVOLVED);
            GameRecords_IncrementTrainerScore(evolutionData->records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
            Poketch_PokemonHistoryEnqueue(evolutionData->poketch, Pokemon_GetBoxPokemon(shedinja));
            Heap_Free(shedinja);
            Bag_TryRemoveItem(evolutionData->bag, ITEM_POKE_BALL, 1, evolutionData->heapID);
        }
        break;
    case EVO_TRADE_WITH_HELD_ITEM:
    case EVO_LEVEL_WITH_HELD_ITEM_DAY:
    case EVO_LEVEL_WITH_HELD_ITEM_NIGHT:
        i = ITEM_NONE;
        Pokemon_SetValue(evolutionData->mon, MON_DATA_HELD_ITEM, &i);
        break;
    }
}

static void Evolution_InitGraphics(EvolutionData *evolutionData, BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();

    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x1000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG0Priority(1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    BgTemplate bgTemplate[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x6800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgTemplate[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    int frame = Options_Frame(evolutionData->options);

    ReplaceTransparentTiles(bgConfig, BG_LAYER_MAIN_1, 1, 10, frame, evolutionData->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__EGG__DATA__EGG_DATA, sinnoh_document_NCGR, bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, evolutionData->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__EGG__DATA__EGG_DATA, national_dex_document_NCGR, bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, evolutionData->heapID);
    PaletteData_LoadBufferFromFileStart(evolutionData->paletteData, NARC_INDEX_DEMO__EGG__DATA__EGG_DATA, sinnoh_document_NSCR, evolutionData->heapID, PLTTBUF_MAIN_BG, 0x20 * 2, 0);
    PaletteData_LoadBufferFromFileStart(evolutionData->paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(frame), evolutionData->heapID, PLTTBUF_MAIN_BG, 0x20, 10 * 0x10);
    PaletteData_LoadBufferFromFileStart(evolutionData->paletteData, NARC_INDEX_GRAPHIC__PL_FONT, national_dex_blank_NCLR, evolutionData->heapID, PLTTBUF_MAIN_BG, 0x20, 0xb * 0x10);
    LoadStandardWindowTiles(evolutionData->bgConfig, BG_LAYER_MAIN_2, 1, 0, evolutionData->heapID);
    PaletteData_LoadBufferFromFileStart(evolutionData->paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetStandardWindowPaletteNARCMember(), evolutionData->heapID, PLTTBUF_MAIN_BG, 0x20, 8 * 0x10);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, sinnoh_blank_NSCR, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, evolutionData->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, national_dex_blank_NSCR, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, evolutionData->heapID);
    PaletteData_LoadBufferFromFileStart(evolutionData->paletteData, NARC_INDEX_GRAPHIC__POKETCH, 12, evolutionData->heapID, PLTTBUF_SUB_BG, 0x20 * 1, 0);

    GX_SetVisibleWnd(GX_WNDMASK_W0);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, NULL);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ, NULL);

    evolutionData->windowLeft = 0;
    evolutionData->windowTop = 0;
    evolutionData->windowRight = HW_LCD_WIDTH - 1;
    evolutionData->windowBottom = 160;

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    SetVBlankCallback(Evolution_VBlankCallback, evolutionData);
}

static void Evolution_FreeBgs(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
}

static void Evolution_CreateSprites(EvolutionData *evolutionData)
{
    PokemonSpriteTemplate monSpriteTemplate;
    Pokemon *mon;

    Pokemon_BuildSpriteTemplate(&monSpriteTemplate, evolutionData->mon, FACE_FRONT);

    evolutionData->monSprites[0] = PokemonSpriteManager_CreateSprite(evolutionData->monSpriteMan, &monSpriteTemplate, 128, 80, 0, 0, NULL, NULL);
    mon = Pokemon_New(evolutionData->heapID);

    Pokemon_Copy(evolutionData->mon, mon);
    Pokemon_SetValue(mon, MON_DATA_SPECIES, (u8 *)&evolutionData->targetSpecies);
    Pokemon_CalcLevelAndStats(mon);
    Pokemon_BuildSpriteTemplate(&monSpriteTemplate, mon, FACE_FRONT);
    Heap_Free(mon);

    evolutionData->monSprites[1] = PokemonSpriteManager_CreateSprite(evolutionData->monSpriteMan, &monSpriteTemplate, 128, 80, 0, 0, NULL, NULL);

    PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_X, 0);
    PokemonSprite_SetAttribute(evolutionData->monSprites[1], MON_SPRITE_SCALE_Y, 0);
}

static void Evolution_VBlankCallback(void *data)
{
    EvolutionData *evolutionData = (EvolutionData *)data;

    G2_SetWnd0Position(evolutionData->windowLeft, evolutionData->windowTop, evolutionData->windowRight, evolutionData->windowBottom);

    PokemonSpriteManager_UpdateCharAndPltt(evolutionData->monSpriteMan);
    VramTransfer_Process();
    PaletteData_CommitFadedBuffers(evolutionData->paletteData);
    Bg_RunScheduledUpdates(evolutionData->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static u8 Evolution_PrintString(EvolutionData *evolutionData, int entryID)
{
    String *string = MessageLoader_GetNewString(evolutionData->msgLoader, entryID);

    StringTemplate_Format(evolutionData->strTemplate, evolutionData->string, string);
    Heap_Free(string);
    Window_FillTilemap(evolutionData->window, 0xFF);

    return Text_AddPrinterWithParams(evolutionData->window, FONT_MESSAGE, evolutionData->string, 0, 0, Options_TextFrameDelay(evolutionData->options), Evolution_TextPrinterCallback);
}

static BOOL Evolution_TextPrinterCallback(TextPrinterTemplate *template, u16 param1)
{
    BOOL result = FALSE;

    switch (param1) {
    case 1:
        result = Sound_IsAnyEffectPlaying();
        break;
    case 2:
        result = Sound_IsBGMPausedByFanfare();
        break;
    case 3:
        Sound_PlayFanfare(SEQ_FANFA5);
        break;
    case 4:
        Sound_PlayEffect(SEQ_SE_DP_KON);
        break;
    case 5:
        Sound_PlayFanfare(SEQ_FANFA1);
        break;
    default:
        break;
    }

    return result;
}

static void Evolution_NewSummaryScreenApplicationManager(EvolutionData *evolutionData)
{
    evolutionData->summaryScreenAppMan = ApplicationManager_New(&gPokemonSummaryScreenApp, evolutionData->monSummary, evolutionData->heapID);
}
