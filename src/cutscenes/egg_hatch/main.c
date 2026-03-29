#include "cutscenes/egg_hatch/main.h"

#include <nitro.h>

#include "constants/menu.h"

#include "cutscenes/egg_hatch/graphics.h"

#include "gx_layers.h"
#include "menu.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "text.h"

#include "res/graphics/egg_hatch/egg_particles.naix"
#include "res/text/bank/egg_hatch.h"

enum EggAnimFrame {
    ANIM_FRAME_WHOLE_EGG = 0,
    ANIM_FRAME_ONE_CRACK,
    ANIM_FRAME_COUPLE_CRACKS,
    ANIM_FRAME_BIG_CRACKS,
    ANIM_FRAME_GAPING_HOLE,
    ANIM_FRAME_READY_TO_SHATTER,
};

enum EggNormalEmitter {
    EMITTER_FIRST_EGG_SHARDS = 0,
    EMITTER_MORE_EGG_SHARDS,
    EMITTER_EGG_EXPLODES,
    EMITTER_SPARKLES,
};

enum EggManaphyEmitter {
    EMITTER_MANAPHY_GLOW = 0,
    EMITTER_MANAPHY_SPARKLES,
    EMITTER_MANAPHY_RING,
    EMITTER_MANAPHY_GLOW_EGG,
};

static BOOL
EggHatchCutscene_Normal(EggHatchCutscene *eggHatch);
static BOOL EggHatchCutscene_Manaphy(EggHatchCutscene *eggHatch);
static BOOL InitializeEggAnimation(EggHatchCutscene *eggHatch);
static BOOL StartBreakingEgg(EggHatchCutscene *eggHatch);
static BOOL FirstEggShardsBreakOff(EggHatchCutscene *eggHatch);
static BOOL MoreEggShardsBreakAway(EggHatchCutscene *eggHatch);
static BOOL CompleteEggAnimation(EggHatchCutscene *eggHatch);
static BOOL ManaphyEggAnimation(EggHatchCutscene *eggHatch);

static BOOL (*const sCutsceneVariants[])(EggHatchCutscene *) = {
    EggHatchCutscene_Normal,
    EggHatchCutscene_Manaphy,
};

BOOL EggHatch_PlayCutscene(EggHatchCutscene *eggHatch)
{
    return sCutsceneVariants[eggHatch->isManaphy](eggHatch);
}

static BOOL EggHatchCutscene_Normal(EggHatchCutscene *eggHatch)
{
    BOOL inProgress = TRUE;

    switch (eggHatch->state) {
    case 0:
        EggHatch_LoadMainBackground(eggHatch->graphics.bgConfig, eggHatch->graphics.plttData);
        EggHatch_LoadSubScreenBackground(eggHatch->graphics.bgConfig, eggHatch->graphics.plttData);

        EggHatch_LoadMessageBoxGraphics(eggHatch->graphics.bgConfig, eggHatch->graphics.plttData, eggHatch->graphics.frame);
        EggHatch_CreateMessageWindow(eggHatch->graphics.bgConfig, &eggHatch->graphics.windows[WINDOW_MESSAGE_BOX], BG_LAYER_MAIN_1, 2, 19, 27, 4, BASE_TILE_OFFSET + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT, 14);

        EggHatch_LoadSpriteResources(eggHatch);
        EggHatch_CreateSprites(eggHatch);

        EggHatch_CreateMonSprite(eggHatch);
        EggHatch_HideMonSprite(eggHatch, TRUE);

        EggHatchParticleSystemArgs epsArgs;

        epsArgs.heapID = HEAP_ID_EGG_HATCH;
        epsArgs.narcIdx = normal_spa;

        eggHatch->graphics.eps = EggHatchParticleSystem_New(&epsArgs);

        eggHatch->state++;
        break;
    case 1:
        EggHatch_FadeIn();
        eggHatch->state++;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            Sound_StopWaveOutAndSequences();
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_13, SEQ_SHINKA, 1);
            eggHatch->state++;
        }
        break;
    case 3:
        if (!InitializeEggAnimation(eggHatch)) {
            eggHatch->state++;
        }
        break;
    case 4:
        if (!StartBreakingEgg(eggHatch)) {
            eggHatch->state++;
        }
        break;
    case 5:
        if (!FirstEggShardsBreakOff(eggHatch)) {
            eggHatch->state++;
        }
        break;
    case 6:
        if (!MoreEggShardsBreakAway(eggHatch)) {
            eggHatch->state++;
        }
        break;
    case 7:
        if (!CompleteEggAnimation(eggHatch)) {
            EggHatch_PlayMonAnim(eggHatch);
            int species = Pokemon_GetValue(eggHatch->app->args.mon, MON_DATA_SPECIES, NULL);
            int form = Pokemon_GetValue(eggHatch->app->args.mon, MON_DATA_FORM, NULL);
            Sound_PlayPokemonCry(species, form);
            eggHatch->graphics.printerID = EggHatch_PrintMessage(&eggHatch->graphics.windows[WINDOW_MESSAGE_BOX], EggHatch_Text_MonHatched, eggHatch->app->args.mon, eggHatch->graphics.renderDelay);
            eggHatch->state++;
        }
        break;
    case 8:
        if (Sound_IsPokemonCryPlaying()) {
            break;
        }

        Sound_PlayFanfare(SEQ_FANFA5);
        eggHatch->state++;
    case 9:
        if (Sound_IsBGMPausedByFanfare()) {
            break;
        }

        eggHatch->state++;
    case 10:
        if (Text_IsPrinterActive(eggHatch->graphics.printerID)) {
            break;
        }

        eggHatch->graphics.printerID = EggHatch_PrintMessage(&eggHatch->graphics.windows[WINDOW_MESSAGE_BOX], EggHatch_Text_WantToNickname, eggHatch->app->args.mon, eggHatch->graphics.renderDelay);
        eggHatch->state++;
    case 11:
        if (Text_IsPrinterActive(eggHatch->graphics.printerID)) {
            break;
        }

        if (PokemonAnimManager_HasAnimCompleted(eggHatch->graphics.animMan, 0) != TRUE) {
            break;
        }

        if (PokemonSprite_IsAnimActive(eggHatch->monSprite)) {
            break;
        }

        EggHatch_CreateYesNoMenu(eggHatch, eggHatch->graphics.bgConfig, &eggHatch->graphics.windows[WINDOW_MENU], BG_LAYER_MAIN_1, 25, 13, 6, 4, BASE_TILE_OFFSET + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT + MESSAGE_WINDOW_TILE_COUNT, 14);
        eggHatch->state++;
        break;
    case 12: {
        u32 input = Menu_ProcessInput(eggHatch->graphics.yesNoMenu);

        switch (input) {
        case MENU_CANCEL:
            eggHatch->app->nicknameMon = FALSE;
            eggHatch->state++;
            break;
        case MENU_NOTHING_CHOSEN:
            break;
        default:
            if (input == MENU_YES) {
                eggHatch->app->nicknameMon = TRUE;
            } else {
                eggHatch->app->nicknameMon = FALSE;
            }

            eggHatch->state++;
            break;
        }
    } break;
    case 13:
        EggHatch_FreeMenu(eggHatch);
        eggHatch->state++;
        break;
    case 14:
        eggHatch->state++;
        break;
    case 15:
        EggHatch_FadeOut();
        eggHatch->state++;
    case 16:
        if (IsScreenFadeDone() == TRUE) {
            eggHatch->state++;
        }
        break;
    case 17:
    default:
        EggHatch_DeleteMonSprite(eggHatch);
        EggHatch_DeleteSprites(eggHatch);
        EggHatch_FreeWindow(&eggHatch->graphics.windows[WINDOW_MESSAGE_BOX]);
        EggHatchParticleSystem_FreeParticleSystem(eggHatch->graphics.eps->ps);
        EggHatchParticleSystem_Free(eggHatch->graphics.eps);
        inProgress = FALSE;
        break;
    }

    SpriteSystem_DrawSprites(eggHatch->graphics.spriteMan);

    return inProgress;
}

static BOOL EggHatchCutscene_Manaphy(EggHatchCutscene *eggHatch)
{
    BOOL notFinished = TRUE;

    switch (eggHatch->state) {
    case 0:
        EggHatch_LoadMainBackground(eggHatch->graphics.bgConfig, eggHatch->graphics.plttData);
        EggHatch_LoadSubScreenBackground(eggHatch->graphics.bgConfig, eggHatch->graphics.plttData);

        EggHatch_LoadMessageBoxGraphics(eggHatch->graphics.bgConfig, eggHatch->graphics.plttData, eggHatch->graphics.frame);
        EggHatch_CreateMessageWindow(eggHatch->graphics.bgConfig, &eggHatch->graphics.windows[WINDOW_MESSAGE_BOX], 1, 2, 19, 27, 4, BASE_TILE_OFFSET + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT, 14);

        EggHatch_LoadSpriteResources(eggHatch);
        EggHatch_CreateSprites(eggHatch);

        ManagedSprite_SetDrawFlag(eggHatch->eggSprite, FALSE);

        EggHatch_CreateMonSprite(eggHatch);
        EggHatch_HideMonSprite(eggHatch, TRUE);

        EggHatchParticleSystemArgs epsArgs;

        epsArgs.heapID = HEAP_ID_EGG_HATCH;
        epsArgs.narcIdx = manaphy_spa;
        eggHatch->graphics.eps = EggHatchParticleSystem_New(&epsArgs);

        eggHatch->state++;
        break;
    case 1:
        EggHatch_FadeIn();
        eggHatch->state++;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_13, SEQ_SHINKA, 1);
            eggHatch->state++;
        }
        break;
    case 3:
        if (!ManaphyEggAnimation(eggHatch)) {
            EggHatch_PlayMonAnim(eggHatch);
            int species = Pokemon_GetValue(eggHatch->app->args.mon, MON_DATA_SPECIES, NULL);
            int form = Pokemon_GetValue(eggHatch->app->args.mon, MON_DATA_FORM, NULL);
            Sound_PlayPokemonCry(species, form);
            eggHatch->graphics.printerID = EggHatch_PrintMessage(&eggHatch->graphics.windows[WINDOW_MESSAGE_BOX], EggHatch_Text_MonHatched, eggHatch->app->args.mon, eggHatch->graphics.renderDelay);
            eggHatch->state = 8;
        }
        break;
    case 4:
    case 5:
    case 6:
    case 7:
        GF_ASSERT(0);
        break;
    case 8:
        if (Sound_IsPokemonCryPlaying()) {
            break;
        }

        Sound_PlayFanfare(SEQ_FANFA5);
        eggHatch->state++;
    case 9:
        if (Sound_IsBGMPausedByFanfare()) {
            break;
        }

        eggHatch->state++;
    case 10:
        if (Text_IsPrinterActive(eggHatch->graphics.printerID)) {
            break;
        }

        eggHatch->graphics.printerID = EggHatch_PrintMessage(&eggHatch->graphics.windows[WINDOW_MESSAGE_BOX], EggHatch_Text_WantToNickname, eggHatch->app->args.mon, eggHatch->graphics.renderDelay);
        eggHatch->state++;
    case 11:
        if (Text_IsPrinterActive(eggHatch->graphics.printerID)) {
            break;
        }

        if (PokemonAnimManager_HasAnimCompleted(eggHatch->graphics.animMan, 0) != TRUE) {
            break;
        }

        if (PokemonSprite_IsAnimActive(eggHatch->monSprite)) {
            break;
        }

        EggHatch_CreateYesNoMenu(eggHatch, eggHatch->graphics.bgConfig, &eggHatch->graphics.windows[WINDOW_MENU], 1, 25, 13, 6, 4, BASE_TILE_OFFSET + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT + MESSAGE_WINDOW_TILE_COUNT, 14);
        eggHatch->state++;
        break;
    case 12: {
        u32 input = Menu_ProcessInput(eggHatch->graphics.yesNoMenu);

        switch (input) {
        case MENU_CANCEL:
            eggHatch->app->nicknameMon = FALSE;
            eggHatch->state++;
            break;
        case MENU_NOTHING_CHOSEN:
            break;
        default:
            if (input == MENU_YES) {
                eggHatch->app->nicknameMon = TRUE;
            } else {
                eggHatch->app->nicknameMon = FALSE;
            }

            eggHatch->state++;
            break;
        }
    } break;
    case 13:
        EggHatch_FreeMenu(eggHatch);
        eggHatch->state++;
        break;
    case 14:
        eggHatch->state++;
        break;
    case 15:
        EggHatch_FadeOut();
        eggHatch->state++;
    case 16:
        if (IsScreenFadeDone() == TRUE) {
            eggHatch->state++;
        }
        break;
    case 17:
    default:
        EggHatch_DeleteMonSprite(eggHatch);
        EggHatch_DeleteSprites(eggHatch);
        EggHatch_FreeWindow(&eggHatch->graphics.windows[WINDOW_MESSAGE_BOX]);
        EggHatchParticleSystem_FreeParticleSystem(eggHatch->graphics.eps->ps);
        EggHatchParticleSystem_Free(eggHatch->graphics.eps);
        notFinished = FALSE;
        break;
    }

    SpriteSystem_DrawSprites(eggHatch->graphics.spriteMan);

    return notFinished;
}

static BOOL InitializeEggAnimation(EggHatchCutscene *eggHatch)
{
    switch (eggHatch->subState) {
    case 0:
        ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_WHOLE_EGG);
        eggHatch->subState++;
        break;
    case 1:
        if (++eggHatch->subStateTimer >= 25) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);
            eggHatch->subState++;
        }
        break;
    default:
        eggHatch->subState = 0;
        eggHatch->subStateTimer = 0;
        return FALSE;
    }

    return TRUE;
}

static BOOL StartBreakingEgg(EggHatchCutscene *eggHatch)
{
    switch (eggHatch->subState) {
    case 0:
        if (EggHatchParticleSystem_EmittersActive(eggHatch->graphics.eps) == TRUE) {
            break;
        }

        ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_ONE_CRACK);
        eggHatch->subState++;
        break;
    case 1:
        if (EggHatch_ShakeEgg(eggHatch, EGG_MINOR_SHAKE) == EGG_SHAKE_FINISHED) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);

            ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_COUPLE_CRACKS);
            eggHatch->subState++;
            eggHatch->subStateTimer = 0;
        }
        break;
    default:
        if (EggHatch_ShakeEgg(eggHatch, EGG_MINOR_SHAKE) == EGG_SHAKE_FINISHED) {
            ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_COUPLE_CRACKS);
            eggHatch->subState = 0;
            eggHatch->subStateTimer = 0;
            return FALSE;
        }
        break;
    }

    return TRUE;
}

static BOOL FirstEggShardsBreakOff(EggHatchCutscene *eggHatch)
{
    switch (eggHatch->subState) {
    case 0:
        eggHatch->subState++;
        break;
    case 1: {
        int shakeProgress = EggHatch_ShakeEgg(eggHatch, EGG_BIG_SHAKE);

        if (shakeProgress == EGG_SHAKE_HALF_OVER) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);
            ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_BIG_CRACKS);
            EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_FIRST_EGG_SHARDS);
        }

        if (shakeProgress == EGG_SHAKE_FINISHED) {
            eggHatch->subStateTimer = 0;
            eggHatch->subState++;
        }
    } break;
    default:
        eggHatch->subState = 0;
        eggHatch->subStateTimer = 0;
        return FALSE;
    }

    return TRUE;
}

static BOOL MoreEggShardsBreakAway(EggHatchCutscene *eggHatch)
{
    switch (eggHatch->subState) {
    case 0:
        if (EggHatchParticleSystem_EmittersActive(eggHatch->graphics.eps) == TRUE) {
            break;
        }

        eggHatch->subState++;
        break;
    case 1: {
        int shakeProgress = EggHatch_ShakeEgg(eggHatch, EGG_BIGGER_SHAKE);

        if (shakeProgress == EGG_SHAKE_HALF_OVER) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);

            ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_GAPING_HOLE);
            EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_MORE_EGG_SHARDS);
        }

        if (shakeProgress == EGG_SHAKE_FINISHED) {
            eggHatch->subStateTimer = 0;
            eggHatch->subState++;
        }
    } break;
    default:
        eggHatch->subState = 0;
        eggHatch->subStateTimer = 0;
        return FALSE;
    }

    return TRUE;
}

static BOOL CompleteEggAnimation(EggHatchCutscene *eggHatch)
{
    switch (eggHatch->subState) {
    case 0:
        if (EggHatchParticleSystem_EmittersActive(eggHatch->graphics.eps) == TRUE) {
            break;
        }

        ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_GAPING_HOLE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        eggHatch->subState++;
        break;
    case 1: {
        int shakeProgress = EggHatch_ShakeEgg(eggHatch, EGG_EXPLOSIVE_SHAKE);

        if (shakeProgress == EGG_SHAKE_HALF_OVER) {
            ManagedSprite_SetAnimationFrame(eggHatch->eggSprite, ANIM_FRAME_READY_TO_SHATTER);
            Sound_PlayEffect(SEQ_SE_DP_BOWA3);
            EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_EGG_EXPLODES);
            EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_SPARKLES);
        }

        if (shakeProgress == EGG_SHAKE_FINISHED) {
            ManagedSprite_SetDrawFlag(eggHatch->eggSprite, FALSE);
            eggHatch->subStateTimer = 0;
            eggHatch->subState++;
        }
    } break;
    case 2:
        if (++eggHatch->subStateTimer >= 10) {
            eggHatch->subStateTimer = 0;

            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_BG_F, 0xFFFF, 0, 0, 16, 0xFFFF);

            NNSG2dImagePaletteProxy *proxy = Sprite_GetPaletteProxy(eggHatch->topBarSprite->sprite);
            int palIndex = PlttTransfer_GetPlttOffset(proxy, NNS_G2D_VRAM_TYPE_2DMAIN);

            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_OBJ_F, 0xFFFF ^ (1 << palIndex), 0, 0, 16, 0xFFFF);

            PokemonSprite_StartFade(eggHatch->monSprite, 0, 16, 0, 0xFFFF);
            eggHatch->subState++;
        }
        break;
    case 3: {
        s16 x, y;
        int barsOffScreen = 0;

        ManagedSprite_GetPositionXY(eggHatch->topBarSprite, &x, &y);

        if (y > -48) {
            ManagedSprite_OffsetPositionXY(eggHatch->topBarSprite, 0, -4);
        } else {
            barsOffScreen++;
        }

        ManagedSprite_GetPositionXY(eggHatch->bottomBarSprite, &x, &y);

        if (y < HW_LCD_HEIGHT) {
            ManagedSprite_OffsetPositionXY(eggHatch->bottomBarSprite, 0, +4);
        } else {
            barsOffScreen++;
        }

        if (PaletteData_GetSelectedBuffersMask(eggHatch->graphics.plttData) != 0 || barsOffScreen != 2 || PokemonSprite_IsFadeActive(eggHatch->monSprite) != 0) {
            break;
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        EggHatch_HideMonSprite(eggHatch, FALSE);
        ManagedSprite_SetDrawFlag(eggHatch->eggSprite, FALSE);
        ManagedSprite_SetDrawFlag(eggHatch->topBarSprite, FALSE);
        ManagedSprite_SetDrawFlag(eggHatch->bottomBarSprite, FALSE);

        eggHatch->subState++;
    } break;
    case 4:
        if (++eggHatch->subStateTimer >= 25) {
            eggHatch->subStateTimer = 0;

            PokemonSprite_StartFade(eggHatch->monSprite, 16, 0, 0, 0xFFFF);
            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_BG_F, 0xFFFF, 0, 16, 0, 0xFFFF);
            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_OBJ_F, 0xFFFF, 0, 16, 0, 0xFFFF);

            eggHatch->subState++;
        }
        break;
    case 5:
        if (PaletteData_GetSelectedBuffersMask(eggHatch->graphics.plttData) != 0 || PokemonSprite_IsFadeActive(eggHatch->monSprite) != 0) {
            break;
        }

        eggHatch->subState++;
        break;
    default:
        if (EggHatchParticleSystem_EmittersActive(eggHatch->graphics.eps) == TRUE) {
            break;
        }

        eggHatch->subState = 0;
        eggHatch->subStateTimer = 0;

        return FALSE;
    }

    return TRUE;
}

static BOOL ManaphyEggAnimation(EggHatchCutscene *eggHatch)
{
    switch (eggHatch->subState) {
    case 0:
        EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_MANAPHY_GLOW);
        EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_MANAPHY_SPARKLES);
        EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_MANAPHY_RING);
        EggHatchParticleSystem_CreateEmitter(eggHatch->graphics.eps, EMITTER_MANAPHY_GLOW_EGG);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        eggHatch->subState++;
        break;
    case 1:
        switch (eggHatch->subStateTimer) {
        case 25:
            Sound_PlayEffect(SEQ_SE_DP_W278);
            break;
        case 80:
            Sound_PlayEffect(SEQ_SE_DP_W080C);
            break;
        case 142:
            Sound_PlayEffect(SEQ_SE_DP_W361);
            break;
        }

        if (++eggHatch->subStateTimer >= 160) {
            eggHatch->subStateTimer = 0;
            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_BG_F, 0xFFFF, 0, 0, 16, 0xFFFF);

            NNSG2dImagePaletteProxy *proxy = Sprite_GetPaletteProxy(eggHatch->topBarSprite->sprite);
            int palIndex = PlttTransfer_GetPlttOffset(proxy, NNS_G2D_VRAM_TYPE_2DMAIN);

            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_OBJ_F, 0xFFFF ^ (1 << palIndex), 0, 0, 16, 0xFFFF);

            PokemonSprite_StartFade(eggHatch->monSprite, 0, 16, 0, 0xFFFF);
            eggHatch->subState++;
        }
        break;
    case 2: {
        s16 x, y;
        int barsOffScreen = 0;

        ManagedSprite_GetPositionXY(eggHatch->topBarSprite, &x, &y);

        if (y > -48) {
            ManagedSprite_OffsetPositionXY(eggHatch->topBarSprite, 0, -4);
        } else {
            barsOffScreen++;
        }

        ManagedSprite_GetPositionXY(eggHatch->bottomBarSprite, &x, &y);

        if (y < HW_LCD_HEIGHT) {
            ManagedSprite_OffsetPositionXY(eggHatch->bottomBarSprite, 0, +4);
        } else {
            barsOffScreen++;
        }

        if (PaletteData_GetSelectedBuffersMask(eggHatch->graphics.plttData) != 0 || barsOffScreen != 2 || PokemonSprite_IsFadeActive(eggHatch->monSprite) != 0) {
            break;
        }

        EggHatch_HideMonSprite(eggHatch, FALSE);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        ManagedSprite_SetDrawFlag(eggHatch->eggSprite, FALSE);
        ManagedSprite_SetDrawFlag(eggHatch->topBarSprite, FALSE);
        ManagedSprite_SetDrawFlag(eggHatch->bottomBarSprite, FALSE);

        eggHatch->subState++;
    } break;
    case 3:
        if (++eggHatch->subStateTimer >= 25) {
            eggHatch->subStateTimer = 0;

            PokemonSprite_StartFade(eggHatch->monSprite, 16, 0, 0, 0xFFFF);
            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_BG_F, 0xFFFF, 0, 16, 0, 0xFFFF);
            PaletteData_StartFade(eggHatch->graphics.plttData, PLTTBUF_MAIN_OBJ_F, 0xFFFF, 0, 16, 0, 0xFFFF);

            eggHatch->subState++;
        }
        break;
    case 4:
        if (PaletteData_GetSelectedBuffersMask(eggHatch->graphics.plttData) != 0 || PokemonSprite_IsFadeActive(eggHatch->monSprite) != FALSE) {
            break;
        }

        eggHatch->subState++;
        break;
    default:
        eggHatch->subState = 0;
        eggHatch->subStateTimer = 0;
        return FALSE;
    }

    return TRUE;
}
