#include "applications/capsule_menu/graphics.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_defs/seal_case.h"
#include "struct_defs/struct_020127E8.h"

#include "applications/capsule_menu/defs.h"
#include "applications/capsule_menu/main.h"
#include "applications/capsule_menu/manager.h"
#include "battle_anim/battle_anim_helpers.h"

#include "ball_seal_info.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "g3d_pipeline.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02012744.h"
#include "unk_0202419C.h"

#define CAPSULE_MENU_EDIT           0
#define CAPSULE_MENU_QUIT           1
#define CAPSULE_MENU_SET            2
#define CAPSULE_MENU_REMOVE         3
#define CAPSULE_MENU_SHIFT          4
#define CAPSULE_MON_X_OFFSET        -16
#define CAPSULE_MON_Y_OFFSET        12
#define MESSAGE_BOX_PLTT_OFFSET     15
#define MESSAGE_BOX_TILE_OFFSET     1
#define SEAL_COUNT_TEXT_XOFFSET     7
#define SPRITE_SYSTEM_MAX_SPRITES   128
#define SPRITE_SYSTEM_PLTT_CAPACITY 32
#define STD_WINDOW_PLTT_OFFSET      13
#define STD_WINDOW_TILE_OFFSET      31
#define WINDOW_BGLAYER              6
#define WINDOW_PALETTE              11

typedef struct {
    XYTransformContext transforms[9];
    ManagedSprite *sprites[8];
    BgConfig *bgConfig;
    int bgOffset;
    BOOL *result;
} CapsuleGraphicsTask;

static void CapsuleGraphics_OffsetSprite(TouchScreenRect *rect, ManagedSprite *sprite, int xOffset, int yOffset)
{
    s16 x, y;

    ManagedSprite_GetPositionXY(sprite, &x, &y);

    rect->rect.top = y - yOffset;
    rect->rect.bottom = y + yOffset;
    rect->rect.left = x - xOffset;
    rect->rect.right = x + xOffset;
}

void CapsuleGraphics_InitFontOAMManager(CapsuleAppManager *appMan)
{
    appMan->graphicsMan.fontOAMManager = sub_02012744(2, HEAP_ID_53);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_53);
}

void CapsuleGraphics_FreeFonts(CapsuleAppManager *appMan)
{
    Font_Free(FONT_SUBSCREEN);
    sub_02012870(appMan->graphicsMan.fontOAM[0]);
    CharTransfer_ClearRange(&appMan->graphicsMan.charTransfer[0]);
    sub_02012870(appMan->graphicsMan.fontOAM[1]);
    CharTransfer_ClearRange(&appMan->graphicsMan.charTransfer[1]);
    sub_020127BC(appMan->graphicsMan.fontOAMManager);
}

void CapsuleGraphics_LoadPaletteBuffer(CapsuleAppManager *appMan)
{
    SpriteSystem_LoadPaletteBuffer(appMan->graphicsMan.paletteData, PLTTBUF_SUB_OBJ, appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, NARC_INDEX_GRAPHIC__PL_FONT, 7, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 30000);
}

void ov76_0223B940(CapsuleAppManager *appMan)
{
    CapsuleGraphics_LoadPaletteBuffer(appMan);
    ov76_0223B98C(appMan, 0, 104, 165, 0);
    ov76_0223B98C(appMan, 1, 192, 165, 0);
}

void CapsuleGraphics_SetFontOAMDrawFlag(CapsuleAppManager *appMan, BOOL flag)
{
    sub_020129D0(appMan->graphicsMan.fontOAM[0], flag);
    sub_020129D0(appMan->graphicsMan.fontOAM[1], flag);
}

void ov76_0223B98C(CapsuleAppManager *appMan, int index, int param2, int param3, int param4)
{
    UnkStruct_020127E8 fontOAMManager;
    String *string;
    int resID;
    int v3;
    MessageLoader *messageLoader;
    Window window;

    messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);
    string = MessageLoader_GetNewString(messageLoader, 5 + index);

    Window_Init(&window);
    Window_AddToTopLeftCorner(appMan->graphicsMan.bgConfig, &window, 10, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(&window, FONT_SUBSCREEN, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 2), NULL);

    resID = 30000;
    v3 = sub_02012898(&window, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_53);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &appMan->graphicsMan.charTransfer[index]);

    fontOAMManager.unk_00 = appMan->graphicsMan.fontOAMManager;
    fontOAMManager.unk_04 = &window;
    fontOAMManager.unk_08 = SpriteManager_GetSpriteList(appMan->graphicsMan.spriteManager);
    fontOAMManager.unk_0C = SpriteManager_FindPlttResourceProxy(appMan->graphicsMan.spriteManager, resID);
    fontOAMManager.unk_10 = NULL;
    fontOAMManager.unk_14 = appMan->graphicsMan.charTransfer[index].offset;
    fontOAMManager.unk_18 = param2 - Font_CalcStringWidth(FONT_SUBSCREEN, string, 0) / 2;
    fontOAMManager.unk_1C = param3 + 192;
    fontOAMManager.unk_20 = 1;
    fontOAMManager.unk_24 = 40;
    fontOAMManager.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    fontOAMManager.heapID = HEAP_ID_53;
    appMan->graphicsMan.fontOAM[index] = sub_020127E8(&fontOAMManager);

    sub_02012AC0(appMan->graphicsMan.fontOAM[index], param4);
    String_Free(string);
    MessageLoader_Free(messageLoader);
    Window_Remove(&window);
}

void CapsuleGraphics_PopulateSealPage(CapsuleAppManager *appMan, int pageCutoff)
{
    int i;
    int sealIndex;
    int uniqueSeals;
    int maxSeals;
    BOOL sealOnCapsule;
    int sealCounts;

    sealIndex = 0;
    uniqueSeals = 0;
    maxSeals = pageCutoff;
    maxSeals *= 8;

    for (i = 0; i < SEALS_PER_PAGE; i++) {
        appMan->sealPages.sealIDs[i] = 0;
    }

    for (i = 0; i < SEAL_ID_MAX; i++) {
        for (int j = 0; j < CAPSULE_NUM; j++) {
            sealOnCapsule = SealIsOnCapsule(appMan->capsules[j].capsule, i);

            if (sealOnCapsule) {
                break;
            }
        }

        sealCounts = appMan->sealCounts[i];

        if ((sealCounts != 0) || (sealOnCapsule == 1)) {
            uniqueSeals++;

            if (uniqueSeals <= maxSeals) {
                continue;
            }

            appMan->sealPages.sealIDs[sealIndex] = (i + 1);
            sealIndex++;

            if (sealIndex >= 8) {
                break;
            }
        }
    }
}

void CapsuleGraphics_LoadPageSprites(CapsuleAppManager *appMan)
{
    int i;
    int memberIdx;
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;

    for (i = 0; i < SEALS_PER_PAGE; i++) {
        memberIdx = CapsuleMenu_GetSealMemberIdx(appMan->sealPages.sealIDs[i]);
        SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, memberIdx, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, i + 25000);
    }

    SpriteSystem_LoadPaletteBuffer(paletteData, PLTTBUF_SUB_OBJ, spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 293, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 26292);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 180, TRUE, 27180);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 88, TRUE, 28088);
}

void CapsuleGraphics_InitPageSprites(CapsuleAppManager *appMan)
{
    int i;
    CapsulePageSprites *pageSprites;
    SpriteTemplate spriteTemplate;
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;
    pageSprites = &appMan->pageSprites;

    spriteTemplate.x = 0;
    spriteTemplate.y = 0;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.priority = 60;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteTemplate.bgPriority = 1;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.resources[1] = 26292;
    spriteTemplate.resources[2] = 27180;
    spriteTemplate.resources[3] = 28088;

    for (i = 0; i < SEALS_PER_PAGE; i++) {
        spriteTemplate.resources[0] = (i + 25000);
        pageSprites->sprites[i] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);
    }

    const s16 initialXY[][2] = {
        { 19, 23 },
        { 75, 23 },
        { 19, 47 },
        { 75, 47 },
        { 19, 71 },
        { 75, 71 },
        { 19, 95 },
        { 75, 95 },
    };

    for (i = 0; i < SEALS_PER_PAGE; i++) {
        ManagedSprite_SetPositionXY(appMan->pageSprites.sprites[i], initialXY[i][0], initialXY[i][1] - 1);
        ManagedSprite_TickFrame(appMan->pageSprites.sprites[i]);
        ManagedSprite_SetAnimationFrame(appMan->pageSprites.sprites[i], 0);
    }
}

void CapsuleGraphics_FreePageSprites(CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEALS_PER_PAGE; i++) {
        SpriteManager_UnloadCharObjById(appMan->graphicsMan.spriteManager, i + 25000);
        Sprite_DeleteAndFreeResources(appMan->pageSprites.sprites[i]);
    }
}

static void CapsuleGraphics_TaskTick(SysTask *sysTask, void *capsuleSysTask)
{
    CapsuleGraphicsTask *capsuleSysTask_dupe = (CapsuleGraphicsTask *)capsuleSysTask;
    BOOL result = FALSE;

    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (capsuleSysTask_dupe->sprites[i] == NULL) {
            continue;
        }

        if (PosLerpContext_UpdateAndApplyToSprite(&capsuleSysTask_dupe->transforms[i], capsuleSysTask_dupe->sprites[i]) == 1) {
            result = TRUE;
        }
    }

    if (PosLerpContext_Update(&capsuleSysTask_dupe->transforms[8]) == 1) {
        result = TRUE;
        Bg_SetOffset(capsuleSysTask_dupe->bgConfig, BG_LAYER_SUB_1, 0, capsuleSysTask_dupe->transforms[8].x);
        Bg_SetOffset(capsuleSysTask_dupe->bgConfig, BG_LAYER_SUB_1, 3, capsuleSysTask_dupe->transforms[8].y);
    }

    if (result == FALSE) {
        *(capsuleSysTask_dupe->result) = FALSE;
        Heap_Free(capsuleSysTask_dupe);
        SysTask_Done(sysTask);
    }
}

void CapsuleGraphics_TaskStart(CapsuleAppManager *appMan, s8 scale, int steps)
{
    CapsuleGraphicsTask *capsuleSysTask = Heap_Alloc(HEAP_ID_53, sizeof(CapsuleGraphicsTask));
    capsuleSysTask->bgConfig = appMan->graphicsMan.bgConfig;

    s16 x, y;
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].shouldRender == 0) {
            capsuleSysTask->sprites[i] = NULL;
            continue;
        }

        capsuleSysTask->sprites[i] = appMan->sealRenderInfo[i].sprite;

        ManagedSprite_GetPositionXY(capsuleSysTask->sprites[i], &x, &y);
        PosLerpContext_Init(&capsuleSysTask->transforms[i], x, x + (56 * scale), y, y + (-16 * scale), steps);
        PosLerpContext_UpdateAndApplyToSprite(&capsuleSysTask->transforms[i], capsuleSysTask->sprites[i]);
        PosLerpContext_UpdateAndApplyToSprite(&capsuleSysTask->transforms[i], capsuleSysTask->sprites[i]);
    }

    int xOffset = Bg_GetXOffset(capsuleSysTask->bgConfig, 5);
    int yOffset = Bg_GetYOffset(capsuleSysTask->bgConfig, 5);
    PosLerpContext_Init(&capsuleSysTask->transforms[8], xOffset, xOffset + (-56 * scale), yOffset, yOffset + (16 * scale), steps);

    capsuleSysTask->result = &appMan->graphicsMan.graphicsTaskResult;
    *(capsuleSysTask->result) = 1;

    SysTask_Start(CapsuleGraphics_TaskTick, capsuleSysTask, 0x1000);
}

G3DPipelineBuffers *CapsuleGraphics_PipelineInit(void)
{
    return G3DPipeline_Init(HEAP_ID_53, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, CapsuleGraphics_G3DSetupCB);
}

void CapsuleGraphics_G3DSetupCB(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7FFF, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void CapsuleGraphics_AllocTexPlttVram(void)
{
    NNSGfdTexKey texKey;
    NNSGfdPlttKey plttKey;
    u32 texKeyAddr, plttKeyAddr;

    texKey = NNS_GfdAllocTexVram(0x8000, 0, 0);
    plttKey = NNS_GfdAllocPlttVram(0x80, 0, 0);

    GF_ASSERT(texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    texKeyAddr = NNS_GfdGetTexKeyAddr(texKey);
    plttKeyAddr = NNS_GfdGetPlttKeyAddr(plttKey);

    ParticleSystem_ZeroAll();
}

void CapsuleGraphics_SwapBuffers(void)
{
    int result;

    G3_ResetG3X();

    result = ParticleSystem_DrawAll();

    if (result > 0) {
        G3_ResetG3X();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void CapsuleGraphics_OpenCapsuleSelectionMenu(BgConfig *bgConfig, Window *window, int bgLayer, CapsuleAppManager *appMan, int capsuleIndex)
{
    MenuTemplate menuTemplate;
    int field;
    int tilemapLeft, tilemapTop, width, height, baseTile, ySize;
    int stringIDs[4];

    field = SealManger_CapsuleMenuField(appMan, capsuleIndex);
    baseTile = ((9 * 8) + ((27 * 2) + (0 + ((1 + (18 + 12)) + 9))));
    tilemapLeft = 21;
    width = 9;

    switch (field) {
    case CAPSULE_MENU_EMPTY_CAPSULE:
        tilemapTop = (15 - 2);
        height = 6;
        stringIDs[0] = CAPSULE_MENU_EDIT;
        stringIDs[1] = CAPSULE_MENU_SHIFT;
        stringIDs[2] = CAPSULE_MENU_QUIT;
        break;
    case CAPSULE_MENU_HAS_SEALS:
        tilemapTop = 11;
        height = 8;
        stringIDs[0] = CAPSULE_MENU_SET;
        stringIDs[1] = CAPSULE_MENU_EDIT;
        stringIDs[2] = CAPSULE_MENU_SHIFT;
        stringIDs[3] = CAPSULE_MENU_QUIT;
        break;
    case CAPSULE_MENU_HAS_POKEMON:
        tilemapTop = 11;
        height = 8;
        stringIDs[0] = CAPSULE_MENU_REMOVE;
        stringIDs[1] = CAPSULE_MENU_EDIT;
        stringIDs[2] = CAPSULE_MENU_SHIFT;
        stringIDs[3] = CAPSULE_MENU_QUIT;
        break;
    case CAPSULE_MENU_UNREACHABLE_CASE:
        tilemapTop = 11;
        height = 8;
        stringIDs[0] = CAPSULE_MENU_SET;
        stringIDs[1] = CAPSULE_MENU_EDIT;
        stringIDs[2] = CAPSULE_MENU_SHIFT;
        stringIDs[3] = CAPSULE_MENU_QUIT;
        break;
    }

    ySize = (height / 2);

    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapLeft, tilemapTop, width, height, 14, baseTile);

    appMan->graphicsMan.stringList = StringList_New(ySize, HEAP_ID_53);

    String *string;
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);

    for (int i = 0; i < ySize; i++) {
        string = MessageLoader_GetNewString(messageLoader, gSealListMenuEntries[stringIDs[i]].index);

        StringList_AddFromString(appMan->graphicsMan.stringList, string, gSealListMenuEntries[stringIDs[i]].func);
        String_Free(string);
    }

    MessageLoader_Free(messageLoader);

    menuTemplate.choices = appMan->graphicsMan.stringList;
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.window = window;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = ySize;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = TRUE;

    Window_DrawStandardFrame(window, 1, 31, 13);
    appMan->graphicsMan.menu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, HEAP_ID_53, PAD_BUTTON_B);
}

void CapsuleGraphics_GetCapsuleGridLocation(int index, s16 *x, s16 *y)
{
    int tile = (index % 4);
    *x = 32 + 8 + (tile * 56);
    tile = (index >> 2);
    *y = 27 + (tile * 53);
}

void CapsuleGraphics_LoadPokemonIcons(CapsuleAppManager *appMan)
{
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;

    SpriteSystem_LoadPaletteBuffer(paletteData, 2, spriteSystem, spriteManager, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 16000);

    int iconIndex = PokeIcon64KCellsFileIndex();
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, iconIndex, 0, 17000);

    iconIndex = PokeIcon64KAnimationFileIndex();
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, iconIndex, 0, 18000);
}

void CapsuleGraphics_InitPokemonIcons(CapsuleAppManager *appMan)
{
    int isEgg;
    int species;
    int paletteIndex;
    int form;
    Pokemon *pokemon;
    SpriteTemplate spriteTemplate;

    for (int i = 0; i < appMan->appData->partySize; i++) {
        pokemon = appMan->appData->pokemon[i];

        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(pokemon), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, i + 15000);

        spriteTemplate.x = 0;
        spriteTemplate.y = 0;
        spriteTemplate.z = 0;
        spriteTemplate.animIdx = 0;
        spriteTemplate.priority = 10;
        spriteTemplate.plttIdx = 0;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resources[0] = i + 15000;
        spriteTemplate.resources[1] = 16000;
        spriteTemplate.resources[2] = 17000;
        spriteTemplate.resources[3] = 18000;
        spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

        appMan->pokemonSprites[i] = SpriteSystem_NewSprite(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, &spriteTemplate);

        species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
        isEgg = Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL);
        form = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);
        paletteIndex = PokeIconPaletteIndex(species, form, isEgg);

        Sprite_SetExplicitPaletteOffsetAutoAdjust(appMan->pokemonSprites[i]->sprite, paletteIndex);
        ManagedSprite_SetAnim(appMan->pokemonSprites[i], 1);
    }
}

void CapsuleGraphics_SetPokemonSpritesPosition(CapsuleAppManager *appMan)
{
    int i;
    int index;
    s16 x, y;

    for (i = 0; i < appMan->appData->partySize; i++) {
        ManagedSprite_SetDrawFlag(appMan->pokemonSprites[i], 0);
    }

    for (i = 0; i < CAPSULE_NUM; i++) {
        index = appMan->capsules[i].pokemonIndex;

        if (index != 0xFF) {
            CapsuleGraphics_GetCapsuleGridLocation(i, &x, &y);
            ManagedSprite_SetPositionXY(appMan->pokemonSprites[index], x + CAPSULE_MON_X_OFFSET, y + CAPSULE_MON_Y_OFFSET);
            ManagedSprite_SetDrawFlag(appMan->pokemonSprites[index], 1);
        }
    }
}

void CapsuleGraphics_TickPokemonSprites(CapsuleAppManager *appMan)
{
    for (int i = 0; i < appMan->appData->partySize; i++) {
        ManagedSprite_TickFrame(appMan->pokemonSprites[i]);
    }
}

void CapsuleGraphics_FreePokemonSprites(CapsuleAppManager *appMan)
{
    for (int i = 0; i < appMan->appData->partySize; i++) {
        Sprite_DeleteAndFreeResources(appMan->pokemonSprites[i]);
    }
}

void CapsuleGraphics_AssignCapsules(CapsuleAppManager *appMan)
{
    int dummy = 0;
    BallCapsule *capsule;

    for (int i = 0; i < CAPSULE_NUM; i++) {
        capsule = appMan->capsules[i].capsule;
        appMan->capsuleSprites[i].animIdx = CapsuleManager_AnySealsOnCapsule(capsule);
        appMan->capsuleSprites[i].pokemonIndex = appMan->capsules[i].pokemonIndex;

        if ((appMan->capsuleSprites[i].animIdx == 0) && (appMan->capsuleSprites[i].pokemonIndex != 0xFF)) {
            CapsuleManager_AssignCapsuleMon(appMan, i);
        }
    }
}

void CapsuleGraphics_InitSpriteManager(CapsuleGraphicsManager *graphicsMan)
{
    graphicsMan->spriteSystem = SpriteSystem_Alloc(HEAP_ID_53);
    const RenderOamTemplate renderOAMTemplate = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };
    const CharTransferTemplateWithModes transferTemplate = {
        48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
    };

    SpriteSystem_Init(graphicsMan->spriteSystem, &renderOAMTemplate, &transferTemplate, SPRITE_SYSTEM_PLTT_CAPACITY);

    BOOL result;
    const SpriteResourceCapacities spriteResourceCapacities = {
        48 + 48,
        16 + 16,
        64,
        64,
        16,
        16,
    };

    graphicsMan->spriteManager = SpriteManager_New(graphicsMan->spriteSystem);
    result = SpriteSystem_InitSprites(graphicsMan->spriteSystem, graphicsMan->spriteManager, 128);
    GF_ASSERT(result);

    result = SpriteSystem_InitManagerWithCapacities(graphicsMan->spriteSystem, graphicsMan->spriteManager, &spriteResourceCapacities);
    GF_ASSERT(result);
}

void CapsuleGraphics_FreeSpriteSystem(CapsuleGraphicsManager *graphicsMan)
{
    SpriteSystem_FreeResourcesAndManager(graphicsMan->spriteSystem, graphicsMan->spriteManager);
    SpriteSystem_Free(graphicsMan->spriteSystem);
}

void CapsuleGraphics_LoadSelectionResources(CapsuleAppManager *appMan, NARC *narc)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, narc, 265, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 45000);
    SpriteSystem_LoadCellResObjFromOpenNarc(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, narc, 173, TRUE, 47000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, narc, 81, TRUE, 48000);
}

void CapsuleGraphics_InitSelectionIndicator(CapsuleAppManager *appMan)
{
    SpriteTemplate spriteTemplate;
    int startingStates[][3] = {
        { 136, 16, 1 },
        { 136, 128, 3 },
        { 240, 16, 0 },
        { 240, 128, 2 },
    };

    for (int i = 0; i < CAPSULE_SELECTION_ARROWS; i++) {
        spriteTemplate.x = startingStates[i][0];
        spriteTemplate.y = startingStates[i][1];
        spriteTemplate.z = 0;
        spriteTemplate.animIdx = 0;
        spriteTemplate.priority = 40;
        spriteTemplate.plttIdx = 2;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        spriteTemplate.bgPriority = 1;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resources[0] = 45000;
        spriteTemplate.resources[1] = 26290;
        spriteTemplate.resources[2] = 47000;
        spriteTemplate.resources[3] = 48000;
        spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;
        appMan->selectionIndicator[i] = SpriteSystem_NewSprite(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, &spriteTemplate);

        ManagedSprite_SetFlipMode(appMan->selectionIndicator[i], startingStates[i][2]);
    }
}

void CapsuleGraphics_TickSelectionIndicator(CapsuleAppManager *appMan)
{
    if (appMan->graphicsMan.selectedCapsule == 0) {
        return;
    }

    for (int i = 0; i < CAPSULE_SELECTION_ARROWS; i++) {
        ManagedSprite_TickFrame(appMan->selectionIndicator[i]);
    }
}

void CapsuleGraphics_SetSelectionIndicatorDrawFlags(CapsuleAppManager *appMan, int flag)
{
    for (int i = 0; i < CAPSULE_SELECTION_ARROWS; i++) {
        ManagedSprite_SetDrawFlag(appMan->selectionIndicator[i], flag);
    }
}

void CapsuleGraphics_FreeSelectionIndicator(CapsuleAppManager *appMan)
{
    for (int i = 0; i < CAPSULE_SELECTION_ARROWS; i++) {
        Sprite_DeleteAndFreeResources(appMan->selectionIndicator[i]);
    }
}

void CapsuleGraphics_LoadCapsuleSprites(SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *paletteData, int memberIdx1, int memberIdx2, int memberIdx3, int memberIdx4, int vramType, int bufferId, int paletteIdx, NARC *narc)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, memberIdx1, TRUE, vramType, memberIdx1 + 11000);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(paletteData, bufferId, spriteSystem, spriteManager, narc, memberIdx2, FALSE, paletteIdx, vramType, memberIdx2 + 11000);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, memberIdx3, TRUE, memberIdx3 + 11000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, memberIdx4, TRUE, memberIdx4 + 11000);
}

void CapsuleGraphics_InitCapsuleSprites(CapsuleAppManager *appMan, NARC *narc)
{
    CapsuleGraphics_LoadCapsuleSprites(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, appMan->graphicsMan.paletteData, 266, 286, 174, 82, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, narc);
    CapsuleGraphics_LoadCapsuleSprites(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, appMan->graphicsMan.paletteData, 275, 291, 179, 87, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, narc);
    SpriteTemplate spriteTemplate;

    for (int i = 0; i < CAPSULE_NUM; i++) {
        spriteTemplate.x = 0;
        spriteTemplate.y = 0;
        spriteTemplate.z = 0;
        spriteTemplate.animIdx = appMan->capsuleSprites[i].animIdx;
        spriteTemplate.priority = 40 - i;
        spriteTemplate.plttIdx = 0;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resources[0] = 11266;
        spriteTemplate.resources[1] = 11286;
        spriteTemplate.resources[2] = 11174;
        spriteTemplate.resources[3] = 11082;
        spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

        appMan->capsuleSprites[i].sprite = SpriteSystem_NewSprite(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, &spriteTemplate);
        s16 x, y;

        CapsuleGraphics_GetCapsuleGridLocation(i, &x, &y);
        ManagedSprite_SetPositionXY(appMan->capsuleSprites[i].sprite, x, y);
    }

    spriteTemplate.x = 0;
    spriteTemplate.y = 0;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.priority = 20;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.bgPriority = 2;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.resources[0] = 11275;
    spriteTemplate.resources[1] = 11291;
    spriteTemplate.resources[2] = 11179;
    spriteTemplate.resources[3] = 11087;
    spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

    appMan->cursor[0] = SpriteSystem_NewSprite(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, &spriteTemplate);
    appMan->cursor[1] = SpriteSystem_NewSprite(appMan->graphicsMan.spriteSystem, appMan->graphicsMan.spriteManager, &spriteTemplate);

    s16 x, y;

    CapsuleGraphics_GetCapsuleGridLocation(*appMan->capsuleIndex, &x, &y);
    ManagedSprite_SetPositionXY(appMan->cursor[0], x, y);
    ManagedSprite_SetPositionXY(appMan->cursor[1], x, y);
    ManagedSprite_SetPriority(appMan->cursor[1], 25);
    ManagedSprite_SetAnim(appMan->cursor[0], 0);
    ManagedSprite_SetAnim(appMan->cursor[1], 0);
}

void CapsuleGraphics_SetCapsuleSpriteAnim(CapsuleAppManager *appMan)
{
    CapsuleGraphics_AssignCapsules(appMan);
    CapsuleGraphics_SetPokemonSpritesPosition(appMan);

    for (int i = 0; i < CAPSULE_NUM; i++) {
        if (appMan->capsuleSprites[i].sprite == NULL) {
            continue;
        }

        ManagedSprite_SetAnim(appMan->capsuleSprites[i].sprite, appMan->capsuleSprites[i].animIdx);
    }
}

void CapsuleGraphics_SwapCapsules(CapsuleAppManager *appMan, int capsuleIdx1, int capsuleIdx2)
{
    int tmp;
    int index1;
    int index2;
    int capsuleID1;
    int capsuleID2;
    BallCapsule tmpCapsule;

    index1 = appMan->capsules[capsuleIdx1].pokemonIndex;
    index2 = appMan->capsules[capsuleIdx2].pokemonIndex;

    if (index1 != 0xFF) {
        capsuleID1 = capsuleIdx2 + 1;
        Pokemon_SetValue(appMan->appData->pokemon[index1], MON_DATA_BALL_CAPSULE_ID, (u8 *)&capsuleID1);
    }

    if (index2 != 0xFF) {
        capsuleID2 = capsuleIdx1 + 1;
        Pokemon_SetValue(appMan->appData->pokemon[index2], MON_DATA_BALL_CAPSULE_ID, (u8 *)&capsuleID2);
    }

    tmp = appMan->capsules[capsuleIdx1].pokemonIndex;
    appMan->capsules[capsuleIdx1].pokemonIndex = appMan->capsules[capsuleIdx2].pokemonIndex;
    appMan->capsules[capsuleIdx2].pokemonIndex = tmp;

    BallCapsule_Copy(appMan->capsules[capsuleIdx1].capsule, &tmpCapsule);
    BallCapsule_Copy(appMan->capsules[capsuleIdx2].capsule, appMan->capsules[capsuleIdx1].capsule);
    BallCapsule_Copy(&tmpCapsule, appMan->capsules[capsuleIdx2].capsule);
    CapsuleGraphics_SetCapsuleSpriteAnim(appMan);
}

void CapsuleGraphics_TickCursor(CapsuleAppManager *appMan)
{
    for (int i = 0; i < CAPSULE_NUM; i++) {
        ManagedSprite_TickFrame(appMan->capsuleSprites[i].sprite);
    }

    ManagedSprite_TickFrame(appMan->cursor[0]);
    ManagedSprite_TickFrame(appMan->cursor[1]);
}

void CapsuleGraphics_FreeCapsuleSprites(CapsuleAppManager *appMan)
{
    for (int i = 0; i < CAPSULE_NUM; i++) {
        Sprite_DeleteAndFreeResources(appMan->capsuleSprites[i].sprite);
    }

    Sprite_DeleteAndFreeResources(appMan->cursor[0]);
    Sprite_DeleteAndFreeResources(appMan->cursor[1]);
}

void CapsuleGraphics_LoadMainWindow(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame)
{
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_1, MESSAGE_BOX_TILE_OFFSET, MESSAGE_BOX_PLTT_OFFSET, messageBoxFrame, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(messageBoxFrame), HEAP_ID_53, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(12));
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_1, STD_WINDOW_TILE_OFFSET, STD_WINDOW_PLTT_OFFSET, STANDARD_WINDOW_SYSTEM, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetStandardWindowPaletteNARCMember(), HEAP_ID_53, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(13));
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_FONT, 7, HEAP_ID_53, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(14));
}

void CapsuleGraphics_LoadSubWindow(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame)
{
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_SUB_0, MESSAGE_BOX_TILE_OFFSET, MESSAGE_BOX_PLTT_OFFSET, messageBoxFrame, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(messageBoxFrame), HEAP_ID_53, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(12));
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_SUB_0, STD_WINDOW_TILE_OFFSET, STD_WINDOW_PLTT_OFFSET, STANDARD_WINDOW_SYSTEM, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetStandardWindowPaletteNARCMember(), HEAP_ID_53, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(13));
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_FONT, 7, HEAP_ID_53, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(14));
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_GRAPHIC__PL_FONT, 7, HEAP_ID_53, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(3));
    PaletteData_LoadBufferFromFileStart(paletteData, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 294, HEAP_ID_53, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(11));
}

void CapsuleGraphics_PrintMessage(Window *window, int entryID)
{
    MessageLoader *messageLoader;
    String *string;

    if (entryID == 0xFFFF) {
        Window_FillTilemap(window, 15);
        Window_CopyToVRAM(window);
        return;
    }

    messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);
    string = MessageLoader_GetNewString(messageLoader, entryID);

    Window_FillTilemap(window, 15);
    Text_AddPrinterWithParams(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(window);
    String_Free(string);
    MessageLoader_Free(messageLoader);
}

void CapsuleGraphics_InitMessageWindow(BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile)
{
    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapLeft, tilemapTop, width, height, 14, baseTile);
    Window_DrawMessageBoxWithScrollCursor(window, 1, 1, 12);
    Window_FillTilemap(window, 15);
    Window_CopyToVRAM(window);
}

static void CapsuleGraphics_InitWindow(BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile, int palette)
{
    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapLeft, tilemapTop, width, height, palette, baseTile);
    Window_FillTilemap(window, 15);
    Window_CopyToVRAM(window);
}

void CapsuleGraphics_InitWindows(CapsuleAppManager *appMan)
{
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[3], WINDOW_BGLAYER, 3, 2, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_1, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[4], WINDOW_BGLAYER, 10, 2, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_2, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[5], WINDOW_BGLAYER, 3, 5, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_3, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[6], WINDOW_BGLAYER, 10, 5, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_4, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[7], WINDOW_BGLAYER, 3, 8, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_5, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[8], WINDOW_BGLAYER, 10, 8, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_6, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[9], WINDOW_BGLAYER, 3, 11, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_7, WINDOW_PALETTE);
    CapsuleGraphics_InitWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[10], WINDOW_BGLAYER, 10, 11, CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, CAPSULE_BASE_TILE_8, WINDOW_PALETTE);
}

void CapsuleGraphics_UpdateAllSealCountText(CapsuleAppManager *appMan)
{
    int index;
    int sealID;
    int sealCount;
    String *string;
    Window *window;

    for (int i = 3; i < CAPSULE_MENU_WINDOW_NUM; i++) {
        window = &appMan->graphicsMan.windows[i];
        index = i - 3;
        sealID = appMan->sealPages.sealIDs[index];

        if (sealID == 0) {
            Window_FillTilemap(window, 0xEE);
            Window_CopyToVRAM(window);
            continue;
        }

        Window_FillTilemap(window, 0);

        string = String_Init(100, HEAP_ID_53);
        sealCount = SealCase_GetSealCount(appMan->sealCount, sealID - 1);

        String_FormatInt(string, sealCount, 3, 1, 1);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, SEAL_COUNT_TEXT_XOFFSET, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Window_CopyToVRAM(window);
        String_Free(string);
    }
}

void CapsuleGraphics_UpdateSealCountText(CapsuleAppManager *appMan, int index)
{
    int index_dupe;
    int sealID;
    int sealCount;
    String *string;
    Window *window = &appMan->graphicsMan.windows[index + 3];
    index_dupe = index;
    sealID = appMan->sealPages.sealIDs[index_dupe];

    if (sealID == 0) {
        Window_FillTilemap(window, 0xEE);
        Window_CopyToVRAM(window);
        return;
    }

    Window_FillTilemap(window, 0);

    string = String_Init(100, HEAP_ID_53);
    sealCount = SealCase_GetSealCount(appMan->sealCount, sealID - 1);

    String_FormatInt(string, sealCount, 3, 1, 1);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, SEAL_COUNT_TEXT_XOFFSET, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_CopyToVRAM(window);
    String_Free(string);
}

void CapsuleGraphics_FreeSealCountWindows(CapsuleAppManager *appMan)
{
    for (int i = 3; i < CAPSULE_MENU_WINDOW_NUM; i++) {
        Window_ClearAndCopyToVRAM(&appMan->graphicsMan.windows[i]);
        Window_Remove(&appMan->graphicsMan.windows[i]);
    }
}

void CapsuleGraphics_UpdateSealNameText(Window *window, int entryID)
{
    MessageLoader *messageLoader;
    String *string;

    if (entryID == 0xFFFF) {
        Window_FillTilemap(window, 15);
        Window_CopyToVRAM(window);
        return;
    }

    messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BALL_SEAL_NAMES, HEAP_ID_53);
    string = MessageLoader_GetNewString(messageLoader, entryID);

    Window_FillTilemap(window, 15);
    Text_AddPrinterWithParams(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(window);
    String_Free(string);
    MessageLoader_Free(messageLoader);
}

void CapsuleGraphics_StartDisplay(void)
{
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

void CapsuleGraphics_FadeIn(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_53);
}

void CapsuleGraphics_FadeOut(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_53);
}

void CapsuleGraphics_LoadBgLayer2Tilemap(CapsuleAppManager *appMan, NARC *narc)
{
    enum NarcID narcID = NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA;
    int narcTileIdx = 268;
    int narcTilemapIdx = 284;
    int narcMemberIdx = 288;
    int bgLayer = 2;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, narcTileIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, narcTilemapIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(appMan->graphicsMan.paletteData, narcID, narcMemberIdx, HEAP_ID_53, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 2, 0);

    narcTileIdx = 269;
    narcTilemapIdx = 285;
    bgLayer = 3;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, narcTileIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, narcTilemapIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
}

void CapsuleGraphics_LoadBgLayer5Tilemap(CapsuleAppManager *appMan, NARC *narc)
{
    enum NarcID narcID = NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA;
    int narcTileIdx = 267;
    int narcTilemapIdx = 283;
    int narcMemberIdx = 287;
    int bgLayer = 5;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, narcTileIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, narcTilemapIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(appMan->graphicsMan.paletteData, narcID, narcMemberIdx, HEAP_ID_53, PLTTBUF_SUB_BG, 0x20 * 2, 0);
}

void CapsuleGraphics_LoadBgLayer7Tilemap(CapsuleAppManager *appMan, NARC *narc)
{
    enum NarcID narcID = NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA;
    int narcTileIdx = 267;
    int narcTilemapIdx = 282;
    int narcMemberIdx = 287;
    int bgLayer = 7;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, narcTileIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, narcTilemapIdx, appMan->graphicsMan.bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(appMan->graphicsMan.paletteData, narcID, narcMemberIdx, HEAP_ID_53, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 2, 0);
}

void CapsuleGraphics_LoadCapsuleUI(CapsuleAppManager *appMan, NARC *narc)
{
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;

    SpriteSystem_LoadPaletteBufferFromOpenNarc(paletteData, PLTTBUF_SUB_OBJ, spriteSystem, spriteManager, narc, 290, FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, 26290);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 273, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25273);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 177, TRUE, 27177);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 85, TRUE, 28085);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 274, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25274);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 178, TRUE, 27178);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 86, TRUE, 28086);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 270, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25270);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 175, TRUE, 27175);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 83, TRUE, 28083);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 272, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 35272);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 176, TRUE, 27176);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 84, TRUE, 28084);
}

void CapsuleGraphics_InitCapsuleUI(CapsuleAppManager *appMan)
{
    int i;
    CapsulePageSprites *pageSprites;
    SpriteTemplate spriteTemplate;
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;
    pageSprites = &appMan->pageSprites;

    spriteTemplate.x = 0;
    spriteTemplate.y = 0;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.priority = 60;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteTemplate.bgPriority = 1;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

    i = 8;

    spriteTemplate.plttIdx = 1;
    spriteTemplate.resources[0] = 25273;
    spriteTemplate.resources[1] = 26290;
    spriteTemplate.resources[2] = 27177;
    spriteTemplate.resources[3] = 28085;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    spriteTemplate.resources[0] = 25274;
    spriteTemplate.resources[1] = 26290;
    spriteTemplate.resources[2] = 27178;
    spriteTemplate.resources[3] = 28086;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    spriteTemplate.bgPriority = 1;
    spriteTemplate.plttIdx = 1;
    spriteTemplate.resources[0] = 35272;
    spriteTemplate.resources[1] = 26290;
    spriteTemplate.resources[2] = 27176;
    spriteTemplate.resources[3] = 28084;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    spriteTemplate.bgPriority = 1;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.resources[0] = 25270;
    spriteTemplate.resources[1] = 26290;
    spriteTemplate.resources[2] = 27175;
    spriteTemplate.resources[3] = 28083;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    const s16 xyPos[][2] = {
        { 20, 23 },
        { 20, 47 },
        { 20, 71 },
        { 20, 95 },
        { 76, 23 },
        { 76, 47 },
        { 76, 71 },
        { 76, 95 },
        { 27, 124 },
        { 67, 124 },
        { 32, 171 },
        { 104, 171 },
        { 192, 171 },
    };
    const s16 xyOffset[][2] = {
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 0xFF, 0xFF },
        { 13, 10 },
        { 13, 10 },
        { 16, 12 },
        { 28, 12 },
        { 28, 12 },
    };

    for (i = 8; i < 13; i++) {
        ManagedSprite_SetPositionXY(appMan->pageSprites.sprites[i], xyPos[i][0], xyPos[i][1]);
        ManagedSprite_TickFrame(appMan->pageSprites.sprites[i]);
        ManagedSprite_SetAnimationFrame(appMan->pageSprites.sprites[i], 0);
        CapsuleGraphics_OffsetSprite(&appMan->graphicsMan.touchScreenRects[i], appMan->pageSprites.sprites[i], xyOffset[i][0], xyOffset[i][1]);
    }
}

void CapsuleGraphics_SetPageSpritesDrawFlag(CapsuleAppManager *appMan, int flag)
{
    for (int i = 0; i < 13; i++) {
        if (appMan->pageSprites.sprites[i] == NULL) {
            continue;
        }

        ManagedSprite_SetDrawFlag(appMan->pageSprites.sprites[i], flag);
    }
}

void CapsuleGraphics_Dummy(CapsuleAppManager *appMan)
{
    return;
}

void CapsuleGraphics_FreeUISprites(CapsuleAppManager *appMan)
{
    for (int i = 8; i < 13; i++) {
        Sprite_DeleteAndFreeResources(appMan->pageSprites.sprites[i]);
    }
}
