#include "applications/party_menu/form_change.h"

#include <nitro.h>

#include "generated/species.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/windows.h"

#include "camera.h"
#include "enums.h"
#include "field_system.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "particle_system.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0202419C.h"

#include "res/graphics/party_menu/form_changes/form_change_effects.naix"
#include "res/text/bank/party_menu.h"

static void PartyMenuFormChange_Free(PartyMenuApplication *app);
static void SetupAnimation(PartyMenuApplication *app);
static void TeardownAnimation(PartyMenuApplication *app);
static void CreateParticleSystem(PartyMenuFormChange *formChanger);
static void LoadParticleResources(PartyMenuFormChange *formChanger);
static int DrawParticleSystem(void);
static void FreeParticleSystem(PartyMenuFormChange *formChanger);
static u32 AllocTexVram(u32 size, BOOL is4x4comp);
static u32 AllocPaletteVram(u32 size, BOOL is4pltt);
static void EmitterCallback(SPLEmitter *emitter);

static const fx32 sPartySlotParticlePositions[][2] = {
    { FX32_CONST(-4.0283203125), FX32_CONST(2.9296875) },
    { FX32_CONST(1.220703125), FX32_CONST(2.8076171875) },
    { FX32_CONST(-4.0283203125), FX32_CONST(1.220703125) },
    { FX32_CONST(1.220703125), FX32_CONST(0.8544921875) },
    { FX32_CONST(-4.0283203125), FX32_CONST(-0.732421875) },
    { FX32_CONST(1.220703125), FX32_CONST(-1.0986328125) }
};

void PartyMenuFormChange_Init(PartyMenuApplication *app)
{
    GF_ASSERT(app->formChanger == NULL);

    app->formChanger = Heap_Alloc(HEAP_ID_PARTY_MENU, sizeof(PartyMenuFormChange));
    MI_CpuClear8(app->formChanger, sizeof(PartyMenuFormChange));
    app->formChanger->partySlot = app->currPartySlot;
}

BOOL PartyMenuFormChange_ChangeForm(PartyMenuApplication *app)
{
    PartyMenuFormChange *formChanger = app->formChanger;
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->partyMenu->party, app->currPartySlot);

    switch (formChanger->state) {
    case 0:
        formChanger->species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

        switch (formChanger->species) {
        case SPECIES_GIRATINA:
            Pokemon_SetGiratinaFormByHeldItem(mon);
            formChanger->framesBeforeFormChange = 65;
            formChanger->narcIdx = giratina_spa;
            break;
        case SPECIES_SHAYMIN:
            Pokemon_SetShayminForm(mon, SHAYMIN_FORM_SKY);
            formChanger->framesBeforeFormChange = 35;
            formChanger->narcIdx = shaymin_spa;
            break;
        case SPECIES_ROTOM:
        default:
            GF_ASSERT(0);
            break;
        }

        Pokedex_Capture(SaveData_GetPokedex(FieldSystem_GetSaveData(app->partyMenu->fieldSystem)), mon);

        formChanger->state++;
        break;
    case 1:
    case 2:
        formChanger->state++;
        break;
    case 3:
        SetupAnimation(app);
        formChanger->state++;
        break;
    case 4:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        LoadParticleResources(formChanger);
        formChanger->state++;
        break;
    case 5:
        formChanger->elapsedFrames++;

        if (formChanger->elapsedFrames == formChanger->framesBeforeFormChange) {
            PartyMenu_LoadMemberSpeciesIcon(app, app->currPartySlot);
        }

        DrawParticleSystem();

        if (formChanger->elapsedFrames > formChanger->framesBeforeFormChange && ParticleSystem_GetActiveEmitterCount(formChanger->ps) == 0) {
            formChanger->state++;
        }
        break;
    case 6:
        TeardownAnimation(app);
        formChanger->state++;
        break;
    case 7:
        Pokemon_PlayCry(mon);
        formChanger->state++;
        break;
    case 8:
        if (!Sound_IsPokemonCryPlaying()) {
            formChanger->state++;
        }
        break;
    case 9: {
        String *msg = MessageLoader_GetNewString(app->messageLoader, PartyMenu_Text_ChangedForm);

        StringTemplate_SetNickname(app->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(app->template, app->tmpString, msg);
        String_Free(msg);
        PartyMenu_PrintLongMessage(app, PRINT_MESSAGE_PRELOADED, TRUE);
    }
        formChanger->state++;
        break;
    case 10:
        if (!Text_IsPrinterActive(app->textPrinterID)) {
            PartyMenuFormChange_Free(app);
            app->partyMenu->menuSelectionResult = 0;
            return TRUE;
        }

        break;
    }

    return FALSE;
}

static void PartyMenuFormChange_Free(PartyMenuApplication *app)
{
    Heap_Free(app->formChanger);
    app->formChanger = NULL;
}

static void SetupAnimation(PartyMenuApplication *app)
{
    PartyMenu_UpdateFormChangeGraphicsMode(app, FALSE);
    CreateParticleSystem(app->formChanger);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 0);
}

static void TeardownAnimation(PartyMenuApplication *app)
{
    FreeParticleSystem(app->formChanger);
    PartyMenu_UpdateFormChangeGraphicsMode(app, TRUE);

    G2_BlendNone();
}

static void CreateParticleSystem(PartyMenuFormChange *formChanger)
{
    ParticleSystem_ZeroAll();

    void *heap = Heap_Alloc(HEAP_ID_PARTY_MENU, 0x4800);
    formChanger->ps = ParticleSystem_New(AllocTexVram, AllocPaletteVram, heap, 0x4800, TRUE, HEAP_ID_PARTY_MENU);
    Camera *camera = ParticleSystem_GetCamera(formChanger->ps);

    Camera_SetClipping(FX32_ONE, FX32_CONST(900), camera);
}

static void LoadParticleResources(PartyMenuFormChange *formChanger)
{
    void *resource = ParticleSystem_LoadResourceFromNARC(NARC_INDEX_PARTICLEDATA__PL_POKELIST__POKELIST_PARTICLE, formChanger->narcIdx, HEAP_ID_PARTY_MENU);
    ParticleSystem_SetResource(formChanger->ps, resource, VRAM_AUTO_RELEASE_TEXTURE_LNK | VRAM_AUTO_RELEASE_PALETTE_LNK, TRUE);

    switch (formChanger->species) {
    case SPECIES_GIRATINA:
        ParticleSystem_CreateEmitterWithCallback(formChanger->ps, 0, EmitterCallback, formChanger);
        ParticleSystem_CreateEmitterWithCallback(formChanger->ps, 1, EmitterCallback, formChanger);
        ParticleSystem_CreateEmitterWithCallback(formChanger->ps, 2, EmitterCallback, formChanger);
        Sound_PlayEffect(SEQ_SE_PL_W467109);
        break;
    case SPECIES_SHAYMIN:
        ParticleSystem_CreateEmitterWithCallback(formChanger->ps, 0, EmitterCallback, formChanger);
        ParticleSystem_CreateEmitterWithCallback(formChanger->ps, 1, EmitterCallback, formChanger);
        Sound_PlayEffect(SEQ_SE_PL_W363);
        break;
    }
}

static void EmitterCallback(SPLEmitter *emitter)
{
    PartyMenuFormChange *formChanger = ParticleSystem_GetEmitterCallbackParam();

    SPLEmitter_SetPosX(emitter, sPartySlotParticlePositions[formChanger->partySlot][0]);
    SPLEmitter_SetPosY(emitter, sPartySlotParticlePositions[formChanger->partySlot][1]);
}

static int DrawParticleSystem(void)
{
    G3_ResetG3X();

    int drawn = ParticleSystem_DrawAll();
    if (drawn > 0) {
        G3_ResetG3X();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    return drawn;
}

static void FreeParticleSystem(PartyMenuFormChange *formChanger)
{
    void *heap = ParticleSystem_GetHeapStart(formChanger->ps);
    ParticleSystem_Free(formChanger->ps);
    Heap_Free(heap);
}

static u32 AllocTexVram(u32 size, BOOL is4x4comp)
{
    NNSGfdTexKey texKey = NNS_GfdAllocTexVram(size, is4x4comp, 0);
    GF_ASSERT(texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    ParticleSystem_RegisterTextureKey(texKey);

    return NNS_GfdGetTexKeyAddr(texKey);
}

static u32 AllocPaletteVram(u32 size, BOOL is4pltt)
{
    NNSGfdPlttKey plttKey = NNS_GfdAllocPlttVram(size, is4pltt, NNS_GFD_ALLOC_FROM_LOW);
    GF_ASSERT(plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    ParticleSystem_RegisterPaletteKey(plttKey);

    return NNS_GfdGetPlttKeyAddr(plttKey);
}
