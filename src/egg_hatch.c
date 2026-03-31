#include "egg_hatch.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/species.h"

#include "applications/naming_screen.h"
#include "cutscenes/egg_hatch/graphics.h"
#include "cutscenes/egg_hatch/main.h"
#include "field/field_system.h"
#include "overlay005/daycare.h"

#include "bg_window.h"
#include "field_system.h"
#include "field_task.h"
#include "field_transition.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_header.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "system.h"
#include "trainer_info.h"
#include "unk_0202F180.h"
#include "unk_02092494.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(egg_hatch_cutscene);

static BOOL EggHatch_Init(ApplicationManager *appMan, int *state);
static BOOL EggHatch_Main(ApplicationManager *appMan, int *state);
static BOOL EggHatch_Exit(ApplicationManager *appMan, int *state);

static const ApplicationManagerTemplate sEggHatchAppTemplate = {
    EggHatch_Init,
    EggHatch_Main,
    EggHatch_Exit,
    FS_OVERLAY_ID(egg_hatch_cutscene)
};

static BOOL EggHatch_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_EGG_HATCH, HEAP_SIZE_EGG_HATCH);

    EggHatchCutscene *eggHatch = ApplicationManager_NewData(appMan, sizeof(EggHatchCutscene), HEAP_ID_EGG_HATCH);
    memset(eggHatch, 0, sizeof(EggHatchCutscene));

    EggHatchApp *app = ApplicationManager_Args(appMan);

    eggHatch->app = app;
    eggHatch->graphics.renderDelay = Options_TextFrameDelay(eggHatch->app->args.options);
    eggHatch->graphics.frame = Options_Frame(eggHatch->app->args.options);
    eggHatch->graphics.g3dPipeline = EggHatch_InitG3DPipeline();
    eggHatch->graphics.monSpriteMan = PokemonSpriteManager_New(HEAP_ID_EGG_HATCH);
    eggHatch->graphics.monDataNarc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_EGG_HATCH);
    eggHatch->graphics.bgConfig = BgConfig_New(HEAP_ID_EGG_HATCH);

    VramTransfer_New(64, HEAP_ID_EGG_HATCH);

    eggHatch->graphics.animMan = PokemonAnimManager_New(HEAP_ID_EGG_HATCH, 1, FALSE);
    eggHatch->graphics.plttData = PaletteData_New(HEAP_ID_EGG_HATCH);

    PaletteData_SetAutoTransparent(eggHatch->graphics.plttData, TRUE);
    PaletteData_AllocBuffer(eggHatch->graphics.plttData, PLTTBUF_MAIN_BG, 0x200, HEAP_ID_EGG_HATCH);
    PaletteData_AllocBuffer(eggHatch->graphics.plttData, PLTTBUF_MAIN_OBJ, 0x200, HEAP_ID_EGG_HATCH);
    PaletteData_AllocBuffer(eggHatch->graphics.plttData, PLTTBUF_SUB_BG, 0x200, HEAP_ID_EGG_HATCH);
    PaletteData_AllocBuffer(eggHatch->graphics.plttData, PLTTBUF_SUB_OBJ, 0x200, HEAP_ID_EGG_HATCH);

    EggHatch_InitGraphicsPlane();
    EggHatch_SetBlendAlphas();
    EggHatch_ZeroParticleSystem();

    EggHatch_InitBackgrounds(eggHatch->graphics.bgConfig);
    EggHatch_InitSpriteSystem(&eggHatch->graphics);

    Sound_StopWaveOutAndSequences();
    SetVBlankCallback(EggHatch_VBlankCallback, eggHatch);

    return TRUE;
}

static BOOL EggHatch_Main(ApplicationManager *appMan, int *state)
{
    EggHatchCutscene *eggHatch = ApplicationManager_Data(appMan);

    switch (*state) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            (*state)++;
        }

        int species = Pokemon_GetValue(eggHatch->app->args.mon, MON_DATA_SPECIES, NULL);

        PokemonSprite_LoadCryDelay(eggHatch->graphics.monDataNarc, &eggHatch->cryDelay, species, 1);

        if (species == SPECIES_MANAPHY) {
            eggHatch->isManaphy = TRUE;
        } else {
            eggHatch->isManaphy = FALSE;
        }
        break;
    case 1: {
        if (!EggHatch_PlayCutscene(eggHatch)) {
            (*state)++;
            break;
        }

        PokemonSpriteManager_DrawSprites(eggHatch->graphics.monSpriteMan);
        EggHatchParticleSystem_Update();
    } break;
    default:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}

static BOOL EggHatch_Exit(ApplicationManager *appMan, int *state)
{
    EggHatchCutscene *eggHatch = ApplicationManager_Data(appMan);

    G3DPipelineBuffers_Free(eggHatch->graphics.g3dPipeline);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, FALSE);

    PaletteData_FreeBuffer(eggHatch->graphics.plttData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(eggHatch->graphics.plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(eggHatch->graphics.plttData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(eggHatch->graphics.plttData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(eggHatch->graphics.plttData);

    Bg_FreeTilemapBuffer(eggHatch->graphics.bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(eggHatch->graphics.bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(eggHatch->graphics.bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(eggHatch->graphics.bgConfig, BG_LAYER_SUB_0);

    Heap_Free(eggHatch->graphics.bgConfig);
    VramTransfer_Free();
    PokemonSpriteManager_Free(eggHatch->graphics.monSpriteMan);
    PokemonAnimManager_Free(eggHatch->graphics.animMan);
    NARC_dtor(eggHatch->graphics.monDataNarc);

    EggHatch_FreeSpriteSystem(&eggHatch->graphics);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_EGG_HATCH);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    return TRUE;
}

static BOOL FieldTask_HatchEgg(FieldTask *fieldTask)
{
    EggHatchApp *app = FieldTask_GetEnv(fieldTask);

    switch (app->state) {
    case 0:
        Egg_CreateHatchedMon(app->args.mon, HEAP_ID_FIELD2);
        FieldTransition_FinishMap(fieldTask);
        app->state++;
        break;
    case 1:
        FieldTask_RunApplication(fieldTask, &sEggHatchAppTemplate, app);
        app->state++;
        break;
    case 2: {
        FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);

        Pokemon *mon = app->args.mon;
        TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
        int location = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
        int isEgg = FALSE;

        Pokemon_SetValue(mon, MON_DATA_IS_EGG, &isEgg);
        UpdateMonStatusAndTrainerInfo(mon, trainerInfo, 6, location, HEAP_ID_FIELD2);
        Pokemon_SetValue(mon, MON_DATA_SPECIES_NAME, NULL);

        SaveData_UpdateCatchRecords(FieldSystem_GetSaveData(fieldSystem), app->args.mon);

        if (app->nicknameMon == TRUE) {
            app->state = 3;
        } else {
            app->state = 5;
        }
    } break;
    case 3: {
        FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);

        int species = Pokemon_GetValue(app->args.mon, MON_DATA_SPECIES, 0);

        app->nameScreenArgs = NamingScreenArgs_Init(HEAP_ID_FIELD2, NAMING_SCREEN_TYPE_POKEMON, species, MON_NAME_LEN, SaveData_GetOptions(FieldSystem_GetSaveData(fieldSystem)));
        app->nameScreenArgs->monGender = Pokemon_GetValue(app->args.mon, MON_DATA_GENDER, NULL);
        app->nameScreenArgs->monForm = Pokemon_GetValue(app->args.mon, MON_DATA_FORM, NULL);
        FieldTask_RunApplication(fieldTask, &gNamingScreenAppTemplate, app->nameScreenArgs);
        app->state++;
    } break;
    case 4:
        if (app->nameScreenArgs->returnCode == NAMING_SCREEN_CODE_OK) {
            Pokemon_SetValue(app->args.mon, MON_DATA_NICKNAME_STRING_AND_FLAG, app->nameScreenArgs->textInputStr);

            FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
            GameRecords *records = SaveData_GetGameRecords(FieldSystem_GetSaveData(fieldSystem));
            GameRecords_IncrementRecordValue(records, RECORD_POKEMON_NICKNAMED);
        }

        NamingScreenArgs_Free(app->nameScreenArgs);
        app->state++;
        break;
    case 5:
        FieldTransition_StartMap(fieldTask);
        app->state++;
        break;
    case 6:
        Heap_Free(app);
        return TRUE;
    }

    return FALSE;
}

void EggHatch_HatchEgg(FieldTask *task, void *args)
{
    EggHatchApp *app = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(EggHatchApp));
    memset(app, 0, sizeof(EggHatchApp));

    app->args = *(EggHatchArgs *)args;

    FieldTask_InitCall(task, FieldTask_HatchEgg, app);
}
