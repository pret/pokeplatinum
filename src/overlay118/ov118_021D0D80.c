#include "overlay118/ov118_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "generated/species.h"

#include "struct_defs/struct_0207F248.h"

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
#include "spl.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0202419C.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"

typedef struct OverlayMetadata_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    int unk_14;
    ParticleSystem *unk_18;
} OverlayMetadata;

static void ov118_021D0F70(GameWindowLayout *param0);
static void ov118_021D0F88(GameWindowLayout *param0);
static void ov118_021D0FB8(GameWindowLayout *param0);
static void ov118_021D0FDC(OverlayMetadata *param0);
static void ov118_021D1028(OverlayMetadata *param0);
static int ov118_021D10E8(void);
static void ov118_021D110C(OverlayMetadata *param0);
static u32 ov118_021D1128(u32 param0, BOOL param1);
static u32 ov118_021D114C(u32 param0, BOOL param1);
static void ov118_021D10B0(SPLEmitter *param0);

static const fx32 Unk_ov118_021D1170[][2] = {
    { 0xFFFFFFFFFFFFBF8C, 0x2EE0 },
    { 0x1388, 0x2CEC },
    { 0xFFFFFFFFFFFFBF8C, 0x1388 },
    { 0x1388, 0xDAC },
    { 0xFFFFFFFFFFFFBF8C, 0xFFFFFFFFFFFFF448 },
    { 0x1388, 0xFFFFFFFFFFFFEE6C }
};

void ov118_021D0D80(GameWindowLayout *param0)
{
    GF_ASSERT(param0->unk_B24 == NULL);

    param0->unk_B24 = Heap_AllocFromHeap(HEAP_ID_12, sizeof(OverlayMetadata));
    MI_CpuClear8(param0->unk_B24, sizeof(OverlayMetadata));
    param0->unk_B24->unk_14 = param0->partySlot;
}

int ov118_021D0DBC(GameWindowLayout *param0)
{
    OverlayMetadata *v0 = param0->unk_B24;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);

    switch (v0->unk_00) {
    case 0: {
        v0->unk_0C = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

        switch (v0->unk_0C) {
        case SPECIES_GIRATINA:
            Pokemon_SetGiratinaFormByHeldItem(v1);
            v0->unk_08 = 65;
            v0->unk_10 = 0;
            break;
        case SPECIES_SHAYMIN:
            Pokemon_SetShayminForm(v1, SHAYMIN_FORM_SKY);
            v0->unk_08 = 35;
            v0->unk_10 = 1;
            break;
        case SPECIES_ROTOM:
        default:
            GF_ASSERT(0);
            break;
        }

        Pokedex_Capture(SaveData_GetPokedex(FieldSystem_GetSaveData(param0->partyManagementData->fieldSystem)), v1);
    }
        v0->unk_00++;
        break;
    case 1:
    case 2:
        v0->unk_00++;
        break;
    case 3:
        ov118_021D0F88(param0);
        v0->unk_00++;
        break;
    case 4:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        ov118_021D1028(v0);
        v0->unk_00++;
        break;
    case 5:
        v0->unk_04++;

        if (v0->unk_04 == v0->unk_08) {
            sub_02082DA8(param0, param0->partySlot);
        }

        ov118_021D10E8();

        if ((v0->unk_04 > v0->unk_08) && (ParticleSystem_GetActiveEmitterCount(v0->unk_18) == 0)) {
            v0->unk_00++;
        }
        break;
    case 6:
        ov118_021D0FB8(param0);
        v0->unk_00++;
        break;
    case 7:
        Pokemon_IsEligibleForAction(v1);
        v0->unk_00++;
        break;
    case 8:
        if (Sound_IsPokemonCryPlaying() == 0) {
            v0->unk_00++;
        }
        break;
    case 9: {
        Strbuf *v2;

        v2 = MessageLoader_GetNewStrbuf(param0->messageLoader, 202);

        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(v1));
        StringTemplate_Format(param0->template, param0->unk_6A4, v2);
        Strbuf_Free(v2);
        sub_02082708(param0, 0xffffffff, 1);
    }
        v0->unk_00++;
        break;
    case 10:
        if (Text_IsPrinterActive(param0->textPrinterID) == 0) {
            ov118_021D0F70(param0);
            param0->partyManagementData->menuSelectionResult = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static void ov118_021D0F70(GameWindowLayout *param0)
{
    Heap_Free(param0->unk_B24);
    param0->unk_B24 = NULL;
}

static void ov118_021D0F88(GameWindowLayout *param0)
{
    sub_0207EA74(param0, 0);
    ov118_021D0FDC(param0->unk_B24);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 0);
}

static void ov118_021D0FB8(GameWindowLayout *param0)
{
    ov118_021D110C(param0->unk_B24);
    sub_0207EA74(param0, 1);

    G2_BlendNone();
}

static void ov118_021D0FDC(OverlayMetadata *param0)
{
    void *v0;
    Camera *camera;

    ParticleSystem_ZeroAll();

    v0 = Heap_AllocFromHeap(HEAP_ID_12, 0x4800);
    param0->unk_18 = ParticleSystem_New(ov118_021D1128, ov118_021D114C, v0, 0x4800, 1, HEAP_ID_12);
    camera = ParticleSystem_GetCamera(param0->unk_18);

    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
}

static void ov118_021D1028(OverlayMetadata *param0)
{
    void *v0 = ParticleSystem_LoadResourceFromNARC(185, param0->unk_10, 12);
    ParticleSystem_SetResource(param0->unk_18, v0, (1 << 1) | (1 << 3), 1);

    switch (param0->unk_0C) {
    case SPECIES_GIRATINA:
        ParticleSystem_CreateEmitterWithCallback(param0->unk_18, 0, ov118_021D10B0, param0);
        ParticleSystem_CreateEmitterWithCallback(param0->unk_18, 1, ov118_021D10B0, param0);
        ParticleSystem_CreateEmitterWithCallback(param0->unk_18, 2, ov118_021D10B0, param0);
        Sound_PlayEffect(SEQ_SE_PL_W467109);
        break;
    case SPECIES_SHAYMIN:
        ParticleSystem_CreateEmitterWithCallback(param0->unk_18, 0, ov118_021D10B0, param0);
        ParticleSystem_CreateEmitterWithCallback(param0->unk_18, 1, ov118_021D10B0, param0);
        Sound_PlayEffect(SEQ_SE_PL_W363);
        break;
    }
}

static void ov118_021D10B0(SPLEmitter *param0)
{
    OverlayMetadata *v0 = ParticleSystem_GetEmitterCallbackParam();

    SPLEmitter_SetPosX(param0, Unk_ov118_021D1170[v0->unk_14][0]);
    SPLEmitter_SetPosY(param0, Unk_ov118_021D1170[v0->unk_14][1]);
}

static int ov118_021D10E8(void)
{
    int v0;

    sub_020241B4();

    v0 = ParticleSystem_DrawAll();

    if (v0 > 0) {
        sub_020241B4();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    return v0;
}

static void ov118_021D110C(OverlayMetadata *param0)
{
    void *v0 = ParticleSystem_GetHeapStart(param0->unk_18);
    ParticleSystem_Free(param0->unk_18);
    Heap_Free(v0);
}

static u32 ov118_021D1128(u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    ParticleSystem_RegisterTextureKey(v0);

    return NNS_GfdGetTexKeyAddr(v0);
}

static u32 ov118_021D114C(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;

    v0 = NNS_GfdAllocPlttVram(param0, param1, NNS_GFD_ALLOC_FROM_LOW);
    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    ParticleSystem_RegisterPaletteKey(v0);

    return NNS_GfdGetPlttKeyAddr(v0);
}
