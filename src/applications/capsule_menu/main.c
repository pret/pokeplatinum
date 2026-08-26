#include "applications/capsule_menu/main.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/defs.h"
#include "applications/capsule_menu/graphics.h"
#include "applications/capsule_menu/manager.h"
#include "applications/capsule_menu/placement.h"
#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "field/field_system.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "ball_seal_info.h"
#include "bg_window.h"
#include "field_task.h"
#include "field_transition.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "mail.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "system.h"
#include "touch_pad.h"
#include "touch_screen_actions.h"
#include "tv_segment.h"
#include "vram_transfer.h"

#include "constdata/const_020F64C0.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(battle_anim);
FS_EXTERN_OVERLAY(capsule_menu);

typedef struct {
    int unk_00;
} UnkStruct_02097F38_sub1;

typedef struct {
    CapsuleAppManager *capsuleAppMan;
    UnkStruct_02097F38_sub1 *unk_04;
    CapsuleAppData *appData;
    PartyMenu *partyMenu;
    SaveData *saveData;
    int state;
} CapsuleMenuFieldTask;

static int CapsuleMenu_Init(ApplicationManager *appMan, int *unused);
static int CapsuleMenu_Main(ApplicationManager *appMan, int *field);
static int CapsuleMenu_Exit(ApplicationManager *appMan, int *unused);

const ApplicationManagerTemplate appManTemplate = {
    CapsuleMenu_Init,
    CapsuleMenu_Main,
    CapsuleMenu_Exit,
    FS_OVERLAY_ID(capsule_menu),
};

static int CapsuleMenu_Init(ApplicationManager *appMan, int *unused)
{
    CapsuleAppManager *capsuleAppMan;
    CapsuleAppData *sealAppData;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_53, 0x80000);
    CapsuleManager_InitGraphicsPlane(HEAP_ID_53);
    CapsuleManager_SetNormalAlpha();

    capsuleAppMan = ApplicationManager_NewData(appMan, sizeof(CapsuleAppManager), HEAP_ID_53);
    memset(capsuleAppMan, 0, sizeof(CapsuleAppManager));

    capsuleAppMan->graphicsMan.pipelineBuffers = CapsuleGraphics_PipelineInit();
    sealAppData = ApplicationManager_Args(appMan);
    capsuleAppMan->appData = sealAppData;
    capsuleAppMan->narc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_53);
    capsuleAppMan->pokemon = Pokemon_New(HEAP_ID_53);
    capsuleAppMan->graphicsMan.index = 0xFF;
    capsuleAppMan->sealPages.page = 0;

    int offset = 0;
    int sealCount;

    sealCount = (SealCase_CountUniqueSeals(capsuleAppMan->appData->sealCase));

    if (sealCount % 8) {
        offset = 1;
    }

    capsuleAppMan->sealPages.maxPage = (SealCase_CountUniqueSeals(capsuleAppMan->appData->sealCase) / 8) + offset;

    if (capsuleAppMan->sealPages.maxPage > (SEAL_ID_MAX / 8)) {
        capsuleAppMan->sealPages.maxPage = (SEAL_ID_MAX / 8);
    }

    capsuleAppMan->capsuleIndex[0] = CapsuleMenu_GetCapsuleIndex(capsuleAppMan->appData);
    capsuleAppMan->capsuleIndex[1] = CapsuleMenu_GetCapsuleIndex(capsuleAppMan->appData);

    int i;
    int capsuleId;
    BallCapsule *capsule;

    capsuleAppMan->sealCount = SealCase_GetSealsObtained(capsuleAppMan->appData->sealCase);

    for (i = 0; i < CAPSULE_NUM; i++) {
        capsule = SealCase_GetCapsuleById(capsuleAppMan->appData->sealCase, i);
        capsuleAppMan->capsules[i].pokemonIndex = 0xFF;
        capsuleAppMan->capsules[i].capsule = capsule;
    }

    for (i = 0; i < 6; i++) {
        if (capsuleAppMan->appData->pokemon[i] == NULL) {
            continue;
        }

        capsuleId = Pokemon_GetValue(capsuleAppMan->appData->pokemon[i], MON_DATA_BALL_CAPSULE_ID, 0);

        if (capsuleId != 0) {
            capsuleAppMan->capsules[capsuleId - 1].pokemonIndex = i;
        }
    }

    capsuleAppMan->graphicsMan.bgConfig = BgConfig_New(HEAP_ID_53);
    VramTransfer_New(64, HEAP_ID_53);
    capsuleAppMan->graphicsMan.paletteData = PaletteData_New(HEAP_ID_53);
    PaletteData_SetAutoTransparent(capsuleAppMan->graphicsMan.paletteData, TRUE);
    PaletteData_AllocBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_53);
    PaletteData_AllocBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_53);
    PaletteData_AllocBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * 16, HEAP_ID_53);
    PaletteData_AllocBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_SUB_OBJ, PALETTE_SIZE_BYTES * 16, HEAP_ID_53);

    CapsuleManager_InitBgConfig(capsuleAppMan->graphicsMan.bgConfig);
    CapsuleGraphics_AllocTexPlttVram();

    capsuleAppMan->graphicsMan.pokemonSpriteManager = PokemonSpriteManager_New(HEAP_ID_53);
    capsuleAppMan->graphicsMan.pokemonAnimManager = PokemonAnimManager_New(HEAP_ID_53, 1, FALSE);

    int optionsFrame = Options_Frame(capsuleAppMan->appData->options);
    CapsuleGraphics_LoadMainWindow(capsuleAppMan->graphicsMan.bgConfig, capsuleAppMan->graphicsMan.paletteData, optionsFrame);
    CapsuleGraphics_LoadSubWindow(capsuleAppMan->graphicsMan.bgConfig, capsuleAppMan->graphicsMan.paletteData, optionsFrame);

    CapsuleGraphics_InitSpriteManager(&capsuleAppMan->graphicsMan);

    u32 result;

    EnableTouchPad();
    result = InitializeTouchPad(4);

    if (result != 1) {
        (void)0;
    }

    CapsuleManager_InitTouchRects(capsuleAppMan);
    SetVBlankCallback(CapsuleManager_VBlankCallback, capsuleAppMan);
    CapsuleGraphics_InitFontOAMManager(capsuleAppMan);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_59, SEQ_NONE, 0);

    return 1;
}

static int CapsuleMenu_Main(ApplicationManager *appMan, int *field)
{
    CapsuleAppManager *capsuleAppMan = ApplicationManager_Data(appMan);

    switch (*field) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            *field = 1;
        }
        break;
    case 1: {
        BOOL result = CapsuleManager_CallFunction(capsuleAppMan);

        if (result == 0) {
            *field = 2;
            break;
        }

        PokemonSpriteManager_DrawSprites(capsuleAppMan->graphicsMan.pokemonSpriteManager);
        CapsuleGraphics_SwapBuffers();
    } break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static int CapsuleMenu_Exit(ApplicationManager *appMan, int *unused)
{
    CapsuleAppManager *capsuleAppMan = ApplicationManager_Data(appMan);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 1);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 2);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 3);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 4);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 5);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 6);
    Bg_FreeTilemapBuffer(capsuleAppMan->graphicsMan.bgConfig, 7);
    Heap_Free(capsuleAppMan->graphicsMan.bgConfig);
    PaletteData_FreeBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(capsuleAppMan->graphicsMan.paletteData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(capsuleAppMan->graphicsMan.paletteData);
    CapsuleMenu_SetCapsuleIndex(capsuleAppMan->appData, capsuleAppMan->capsuleIndex[0]);
    Heap_Free(capsuleAppMan->pokemon);
    SealPlacement_FreeInactiveSeals(capsuleAppMan);
    TouchScreenActions_Free(capsuleAppMan->graphicsMan.touchScreenActions);
    PokemonSpriteManager_Free(capsuleAppMan->graphicsMan.pokemonSpriteManager);
    PokemonAnimManager_Free(capsuleAppMan->graphicsMan.pokemonAnimManager);
    CapsuleGraphics_FreeFonts(capsuleAppMan);
    CapsuleGraphics_FreeSpriteSystem(&capsuleAppMan->graphicsMan);
    VramTransfer_Free();
    G3DPipelineBuffers_Free(capsuleAppMan->graphicsMan.pipelineBuffers);
    CapsuleManager_Deinit(HEAP_ID_53);
    NARC_dtor(capsuleAppMan->narc);
    ApplicationManager_FreeData(appMan);

    u32 result;

    result = DisableTouchPad();

    if (result != 1) {
        (void)0;
    }

    Heap_Destroy(HEAP_ID_53);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));

    return 1;
}

Pokemon *CapsuleMenu_GetPokemonIndex(CapsuleAppData *appData, int index)
{
    int index_dupe = index;

    if (appData->partySize < index_dupe) {
        GF_ASSERT(FALSE);
        index_dupe = 0;
    }

    return appData->pokemon[index_dupe];
}

u8 CapsuleMenu_GetCapsuleIndex(CapsuleAppData *appData)
{
    return appData->capsuleIndex;
}

void CapsuleMenu_SetCapsuleIndex(CapsuleAppData *appData, u8 value)
{
    appData->capsuleIndex = value;
}

u8 CapsuleMenu_GetAction(CapsuleAppData *appData)
{
    return appData->action;
}

void CapsuleMenu_SetAction(CapsuleAppData *appData, u8 value)
{
    appData->action = value;
}

static BOOL CapsuleMenu_FieldTaskCB(FieldTask *fieldTask)
{
    CapsuleMenuFieldTask *capsuleFieldTask = FieldTask_GetEnv(fieldTask);
    CapsuleAppData *appData = capsuleFieldTask->appData;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);

    switch (capsuleFieldTask->state) {
    case CAPSULE_MENU_INIT_STATE_ID:
        FieldTransition_FinishMap(fieldTask);
        appData->sealCase = SaveData_GetSealCase(capsuleFieldTask->saveData);
        CapsuleMenu_SetCapsuleIndex(appData, 0);

        {
            int i;
            appData->party = SaveData_GetParty(capsuleFieldTask->saveData);
            int partySize = Party_GetCurrentCount(appData->party);
            appData->partySize = partySize;

            for (i = 0; i < partySize; i++) {
                appData->pokemon[i] = Party_GetPokemonBySlotIndex(appData->party, i);
            }

            for (; i < MAX_PARTY_SIZE; i++) {
                appData->pokemon[i] = NULL;
            }
        }
        capsuleFieldTask->state = CAPSULE_MENU_RUN_APP_STATE_ID;
        break;
    case CAPSULE_MENU_RUN_APP_STATE_ID:
        FieldTask_RunApplication(fieldTask, &appManTemplate, appData);
        capsuleFieldTask->state = CAPSULE_MENU_SWITCH_ACTION_STATE_ID;
        break;
    case CAPSULE_MENU_SWITCH_ACTION_STATE_ID: {
        u8 action = CapsuleMenu_GetAction(capsuleFieldTask->appData);

        switch (action) {
        default:
            GF_ASSERT(FALSE);
        case CAPSULE_MENU_GO_TO_FIELD:
            capsuleFieldTask->state = CAPSULE_MENU_START_MAP_STATE_ID;
            break;

        case CAPSULE_MENU_GO_TO_PARTY_MENU:
            capsuleFieldTask->state = CAPSULE_MENU_PARTY_MENU_STATE_ID;
            break;
        }
    } break;
    case CAPSULE_MENU_PARTY_MENU_STATE_ID: {
        PartyMenu *partyMenu = capsuleFieldTask->partyMenu;

        partyMenu->party = appData->party;
        partyMenu->bag = SaveData_GetBag(capsuleFieldTask->saveData);
        partyMenu->mailbox = SaveData_GetMailbox(capsuleFieldTask->saveData);
        partyMenu->selectedMonSlot = 0;
        partyMenu->type = PARTY_MENU_TYPE_BASIC;
        partyMenu->mode = PARTY_MENU_MODE_BALL_SEAL;
        partyMenu->options = appData->options;

        FieldTask_RunApplication(fieldTask, &gPokemonPartyAppTemplate, partyMenu);
        capsuleFieldTask->state = CAPSULE_MENU_ATTACH_CAPSULE_STATE_ID;
    } break;
    case CAPSULE_MENU_ATTACH_CAPSULE_STATE_ID: {
        PartyMenu *partyMenu = capsuleFieldTask->partyMenu;
        int capsuleID = CapsuleMenu_GetCapsuleIndex(capsuleFieldTask->appData) + 1;

        if (partyMenu->selectedMonSlot != PARTY_MENU_SLOT_CANCEL) {
            Pokemon *pokemon = CapsuleMenu_GetPokemonIndex(capsuleFieldTask->appData, partyMenu->selectedMonSlot);

            Pokemon_SetValue(pokemon, MON_DATA_BALL_CAPSULE_ID, (u8 *)&capsuleID);
            Pokemon_SetValue(pokemon, MON_DATA_BALL_CAPSULE, SealCase_GetCapsuleById(appData->sealCase, capsuleID - 1));

            BallCapsule *capsule = SealCase_GetCapsuleById(appData->sealCase, capsuleID - 1);
            BallSeal *seal = BallCapsule_GetBallSeals(capsule, 0);
            int sealType = BallSeal_GetSealType(seal);
            int sealIndex = CapsuleMenu_GetSealNameIndex(sealType);
            TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

            FieldSystem_SaveTVSegment_SealClubShow(broadcast, pokemon, sealIndex);
        }
    }
        capsuleFieldTask->state = CAPSULE_MENU_RUN_APP_STATE_ID;
        break;
    case CAPSULE_MENU_START_MAP_STATE_ID:
        FieldTransition_StartMap(fieldTask);
        capsuleFieldTask->state = CAPSULE_MENU_FREE_STATE_ID;
        break;
    case CAPSULE_MENU_FREE_STATE_ID:
        Heap_Free(capsuleFieldTask->partyMenu);
        Heap_Free(capsuleFieldTask->appData);
        Heap_Free(capsuleFieldTask);
        return 1;
    }

    return 0;
}

void CapsuleMenu_StartFieldTask(FieldTask *task, SaveData *saveData)
{
    CapsuleMenuFieldTask *capsuleFieldTask = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(CapsuleMenuFieldTask));

    memset(capsuleFieldTask, 0, sizeof(CapsuleMenuFieldTask));
    capsuleFieldTask->saveData = saveData;
    capsuleFieldTask->appData = Heap_Alloc(HEAP_ID_FIELD2, sizeof(CapsuleAppData));
    memset(capsuleFieldTask->appData, 0, sizeof(CapsuleAppData));
    capsuleFieldTask->appData->options = SaveData_GetOptions(saveData);
    capsuleFieldTask->appData->saveData = saveData;
    capsuleFieldTask->partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
    memset(capsuleFieldTask->partyMenu, 0, sizeof(PartyMenu));

    FieldTask_InitCall(task, CapsuleMenu_FieldTaskCB, capsuleFieldTask);
}

typedef struct {
    u16 memberIdx;
    u8 nameIndex;
    u8 unused;
    u8 particleIndex;
    u8 isAlphabetSeal;
    u16 price;
    u8 nonAlphabetIndex; // index, ignores alphabet seals in the count
} SealTypeValues;

static const SealTypeValues sealTypeValues[SEAL_ID_MAX] = {
    { 0xB8, 0x0, 0x125, 0x25, 0x0, 0x3E7, 0x0 },
    { 0xB9, 0x1, 0x125, 0x25, 0x0, 0x32, 0x0 },
    { 0xBA, 0x2, 0x125, 0x26, 0x0, 0x32, 0x1 },
    { 0xBB, 0x3, 0x125, 0x27, 0x0, 0x32, 0x2 },
    { 0xBC, 0x4, 0x125, 0x28, 0x0, 0x32, 0x3 },
    { 0xBD, 0x5, 0x125, 0x29, 0x0, 0x64, 0x4 },
    { 0xBE, 0x6, 0x125, 0x2A, 0x0, 0x64, 0x5 },
    { 0xC0, 0x7, 0x125, 0x2B, 0x0, 0x32, 0x6 },
    { 0xBF, 0x8, 0x125, 0x2C, 0x0, 0x32, 0x7 },
    { 0xC2, 0x9, 0x125, 0x2D, 0x0, 0x32, 0x8 },
    { 0xC1, 0xA, 0x125, 0x2E, 0x0, 0x32, 0x9 },
    { 0xC4, 0xB, 0x125, 0x2F, 0x0, 0x64, 0xA },
    { 0xC3, 0xC, 0x125, 0x30, 0x0, 0x64, 0xB },
    { 0xC5, 0xD, 0x125, 0x31, 0x0, 0x64, 0xC },
    { 0xC6, 0xE, 0x125, 0x32, 0x0, 0x64, 0xD },
    { 0xC7, 0xF, 0x125, 0x33, 0x0, 0x64, 0xE },
    { 0xC8, 0x4D, 0x125, 0x34, 0x0, 0x64, 0xF },
    { 0xC9, 0x10, 0x125, 0x39, 0x0, 0x64, 0x10 },
    { 0xCA, 0x11, 0x125, 0x3A, 0x0, 0x64, 0x11 },
    { 0xCB, 0x12, 0x125, 0x3B, 0x0, 0x64, 0x12 },
    { 0xCC, 0x13, 0x125, 0x3C, 0x0, 0x64, 0x13 },
    { 0xCD, 0x14, 0x125, 0x35, 0x0, 0x64, 0x14 },
    { 0xCE, 0x15, 0x125, 0x36, 0x0, 0x64, 0x15 },
    { 0xCF, 0x16, 0x125, 0x37, 0x0, 0x64, 0x16 },
    { 0xD0, 0x17, 0x125, 0x38, 0x0, 0x64, 0x17 },
    { 0xD1, 0x18, 0x125, 0x3D, 0x0, 0x32, 0x18 },
    { 0xD2, 0x19, 0x125, 0x3E, 0x0, 0x32, 0x19 },
    { 0xD3, 0x1A, 0x125, 0x3F, 0x0, 0x32, 0x1A },
    { 0xD4, 0x1B, 0x125, 0x40, 0x0, 0x32, 0x1B },
    { 0xD6, 0x1C, 0x125, 0x41, 0x0, 0x32, 0x1C },
    { 0xD5, 0x1D, 0x125, 0x42, 0x0, 0x32, 0x1D },
    { 0xD8, 0x1E, 0x125, 0x43, 0x0, 0x32, 0x1E },
    { 0xD7, 0x1F, 0x125, 0x44, 0x0, 0x32, 0x1F },
    { 0xD9, 0x20, 0x125, 0x45, 0x0, 0x32, 0x20 },
    { 0xDA, 0x21, 0x125, 0x46, 0x0, 0x32, 0x21 },
    { 0xDB, 0x22, 0x125, 0x47, 0x0, 0x64, 0x22 },
    { 0xDC, 0x23, 0x125, 0x48, 0x0, 0x64, 0x23 },
    { 0xDD, 0x24, 0x125, 0x49, 0x0, 0x32, 0x24 },
    { 0xDE, 0x25, 0x125, 0x4A, 0x0, 0x32, 0x25 },
    { 0xDF, 0x26, 0x125, 0x4B, 0x0, 0x32, 0x26 },
    { 0xE0, 0x27, 0x125, 0x4C, 0x0, 0x32, 0x27 },
    { 0xE1, 0x28, 0x125, 0x4D, 0x0, 0x32, 0x28 },
    { 0xE2, 0x29, 0x125, 0x4E, 0x0, 0x32, 0x29 },
    { 0xE3, 0x2A, 0x125, 0x4F, 0x0, 0x32, 0x2A },
    { 0xE4, 0x2B, 0x125, 0x50, 0x0, 0x32, 0x2B },
    { 0xE5, 0x2C, 0x125, 0x51, 0x0, 0x32, 0x2C },
    { 0xE6, 0x2D, 0x125, 0x52, 0x0, 0x32, 0x2D },
    { 0xE7, 0x2E, 0x125, 0x53, 0x0, 0x32, 0x2E },
    { 0xE8, 0x2F, 0x125, 0x54, 0x0, 0x32, 0x2F },
    { 0xE9, 0x30, 0x125, 0x55, 0x0, 0x32, 0x30 },
    { 0xEA, 0x31, 0x125, 0x56, 0x1, 0x0, 0x0 },
    { 0xEB, 0x32, 0x125, 0x57, 0x1, 0x0, 0x0 },
    { 0xEC, 0x33, 0x125, 0x58, 0x1, 0x0, 0x0 },
    { 0xED, 0x34, 0x125, 0x59, 0x1, 0x0, 0x0 },
    { 0xEE, 0x35, 0x125, 0x5A, 0x1, 0x0, 0x0 },
    { 0xEF, 0x36, 0x125, 0x5B, 0x1, 0x0, 0x0 },
    { 0xF0, 0x37, 0x125, 0x5C, 0x1, 0x0, 0x0 },
    { 0xF1, 0x38, 0x125, 0x5D, 0x1, 0x0, 0x0 },
    { 0xF2, 0x39, 0x125, 0x5E, 0x1, 0x0, 0x0 },
    { 0xF3, 0x3A, 0x125, 0x5F, 0x1, 0x0, 0x0 },
    { 0xF4, 0x3B, 0x125, 0x60, 0x1, 0x0, 0x0 },
    { 0xF5, 0x3C, 0x125, 0x61, 0x1, 0x0, 0x0 },
    { 0xF6, 0x3D, 0x125, 0x62, 0x1, 0x0, 0x0 },
    { 0xF7, 0x3E, 0x125, 0x63, 0x1, 0x0, 0x0 },
    { 0xF8, 0x3F, 0x125, 0x64, 0x1, 0x0, 0x0 },
    { 0xF9, 0x40, 0x125, 0x65, 0x1, 0x0, 0x0 },
    { 0xFA, 0x41, 0x125, 0x66, 0x1, 0x0, 0x0 },
    { 0xFB, 0x42, 0x125, 0x67, 0x1, 0x0, 0x0 },
    { 0xFC, 0x43, 0x125, 0x68, 0x1, 0x0, 0x0 },
    { 0xFD, 0x44, 0x125, 0x69, 0x1, 0x0, 0x0 },
    { 0xFE, 0x45, 0x125, 0x6A, 0x1, 0x0, 0x0 },
    { 0xFF, 0x46, 0x125, 0x6B, 0x1, 0x0, 0x0 },
    { 0x100, 0x47, 0x125, 0x6C, 0x1, 0x0, 0x0 },
    { 0x101, 0x48, 0x125, 0x6D, 0x1, 0x0, 0x0 },
    { 0x102, 0x49, 0x125, 0x6E, 0x1, 0x0, 0x0 },
    { 0x103, 0x4A, 0x125, 0x6F, 0x1, 0x0, 0x0 },
    { 0x104, 0x4B, 0x125, 0x70, 0x1, 0x0, 0x0 },
    { 0x105, 0x4C, 0x125, 0x71, 0x1, 0x0, 0x0 },
    { 0x106, 0x4E, 0x125, 0x72, 0x0, 0x0, 0x31 },
    { 0x107, 0x4F, 0x125, 0x73, 0x0, 0x0, 0x32 },
    { 0x108, 0x50, 0x125, 0x74, 0x0, 0x0, 0x33 }
};

int CapsuleMenu_GetSealMemberIdx(u8 index)
{
    GF_ASSERT(index < (sizeof(sealTypeValues)));
    return sealTypeValues[index].memberIdx;
}

int CapsuleMenu_GetSealNameIndex(u8 index)
{
    GF_ASSERT(index < (sizeof(sealTypeValues)));
    return sealTypeValues[index].nameIndex;
}

int CapsuleMenu_GetSealParticleIndex(u8 index)
{
    GF_ASSERT(index < (sizeof(sealTypeValues)));
    return sealTypeValues[index].particleIndex;
}

int CapsuleMenu_IsAlphabetSeal(u8 index)
{
    GF_ASSERT(index < (sizeof(sealTypeValues)));
    return sealTypeValues[index].isAlphabetSeal;
}

int CapsuleMenu_GetSealPrice(u8 index)
{
    GF_ASSERT(index < (sizeof(sealTypeValues)));
    return sealTypeValues[index].price;
}

int CapsuleMenu_GetSealNonAlphabetIndex(u8 index)
{
    GF_ASSERT(index < (sizeof(sealTypeValues)));
    return sealTypeValues[index].nonAlphabetIndex;
}
