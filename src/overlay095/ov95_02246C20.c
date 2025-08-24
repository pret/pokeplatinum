#include "overlay095/ov95_02246C20.h"

#include <nitro.h>
#include <string.h>

#include "overlay006/struct_npc_trade_animation_template.h"
#include "overlay095/ov95_02247B6C.h"
#include "overlay095/ov95_02248590.h"
#include "overlay095/ov95_02249740.h"
#include "overlay095/ov95_02249F90.h"
#include "overlay095/ov95_0224A390.h"
#include "overlay095/ov95_0224ABC0.h"
#include "overlay095/ov95_0224B3D8.h"
#include "overlay095/struct_ov95_02247004_decl.h"
#include "overlay095/struct_ov95_022472C4_decl.h"
#include "overlay095/struct_ov95_02247568.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_020393C8.h"

struct UnkStruct_ov95_02247004_t {
    u16 unk_00[96];
    SysTask *unk_C0;
    SysTask *unk_C4[8];
    BOOL *unk_E4;
    BOOL unk_E8;
    int unk_EC;
    int unk_F0;
    int unk_F4;
    int unk_F8;
    int unk_FC;
};

typedef struct {
    UnkStruct_ov95_02247004 *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov95_02247170;

struct UnkStruct_ov95_022472C4_t {
    BgConfig *unk_00;
    volatile BOOL *unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    int unk_18;
    int unk_1C;
    SysTask *unk_20;
};

typedef void *(*UnkFuncPtr_ov95_0224BE8C)(TradeSequenceData *);
typedef BOOL (*UnkFuncPtr_ov95_0224BE8C_1)(void *, int *);
typedef void (*UnkFuncPtr_ov95_0224BE8C_2)(void *);

static BOOL DoesMonSpeciesFlipsSprite(BoxPokemon *boxMon);
static void ov95_02246F0C(SysTask *param0, void *param1);
static void ov95_02247060(SysTask *param0, void *param1);
static void ov95_02247148(UnkStruct_ov95_02247004 *param0, int param1, int param2, int param3);
static void ov95_02247170(UnkStruct_ov95_02247004 *param0);
static void ov95_02247224(UnkStruct_ov95_02247004 *param0, int param1);
static void ov95_02247254(SysTask *param0, void *param1);
static void ov95_0224732C(SysTask *param0, void *param1);
static void ov95_022473A0(UnkStruct_ov95_022472C4 *param0);
static void ov95_02247688(void);
static void ov95_02247694(void);

static const struct {
    UnkFuncPtr_ov95_0224BE8C unk_00;
    UnkFuncPtr_ov95_0224BE8C_1 unk_04;
    UnkFuncPtr_ov95_0224BE8C_2 unk_08;
    int unk_0C;
} Unk_ov95_0224BE8C[] = {
    { ov95_02247B6C, ov95_02247C34, ov95_02247BC8, 1 | 2 },
    { ov95_02248590, ov95_02248650, ov95_022485FC, 1 | 2 },
    { ov95_02249740, ov95_022497A0, ov95_02249770, 1 | 2 },
    { ov95_02249F90, ov95_02249FC8, ov95_02249FB4, 1 },
    { ov95_0224A390, ov95_0224A3FC, ov95_0224A3CC, 1 | 4 },
    { ov95_0224ABC0, ov95_0224AC2C, ov95_0224ABF4, 1 | 4 },
    { ov95_0224B3D8, ov95_0224B49C, ov95_0224B438, 1 | 4 },
};

int TradeSequence_Init(ApplicationManager *appMan, int *param1)
{
    if (IsScreenFadeDone()) {
        TradeSequenceData *tradeData;

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_57, 98304);
        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_58, 98304);
        ov95_02247688();
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_3, SEQ_KOUKAN, 1);

        tradeData = ApplicationManager_NewData(appMan, sizeof(TradeSequenceData), HEAP_ID_57);

        if (tradeData) {
            tradeData->animationConfig = ApplicationManager_Args(appMan); // this is overlay094's unk_E8
            tradeData->unk_04 = 0;
            tradeData->unk_08 = BgConfig_New(HEAP_ID_57);
            tradeData->unk_14 = Strbuf_Init(400, HEAP_ID_57);
            tradeData->unk_10 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRADE, HEAP_ID_57);
            tradeData->unk_0C = StringTemplate_Default(HEAP_ID_57);

            switch (tradeData->animationConfig->tradeType) {
            case TRADE_TYPE_NORMAL:
                StringTemplate_SetNickname(tradeData->unk_0C, 0, (BoxPokemon *)(tradeData->animationConfig->sendingPokemon));
                StringTemplate_SetNickname(tradeData->unk_0C, 1, (BoxPokemon *)(tradeData->animationConfig->receivingPokemon));
                StringTemplate_SetPlayerName(tradeData->unk_0C, 2, tradeData->animationConfig->otherTrainer);
                tradeData->unk_1AC = DoesMonSpeciesFlipsSprite((BoxPokemon *)(tradeData->animationConfig->receivingPokemon));
                break;
            case TRADE_TYPE_SEND_ONLY:
                StringTemplate_SetNickname(tradeData->unk_0C, 0, (BoxPokemon *)(tradeData->animationConfig->sendingPokemon));
                break;
            case TRADE_TYPE_RECEIVE_ONLY:
                StringTemplate_SetNickname(tradeData->unk_0C, 1, (BoxPokemon *)(tradeData->animationConfig->receivingPokemon));
                tradeData->unk_1AC = DoesMonSpeciesFlipsSprite((BoxPokemon *)(tradeData->animationConfig->receivingPokemon));
                break;
            }

            NNS_G2dInitOamManagerModule();

            RenderOam_Init(0, 128, 0, 32, 1, 127, 0, 32, 57);
            tradeData->unk_18 = SpriteList_InitRendering(64, &tradeData->unk_1C, HEAP_ID_57);
            SetSubScreenViewRect(&(tradeData->unk_1C), 0, (192 + 40 << FX32_SHIFT));

            tradeData->unk_1B0 = BoxPokemon_GetValue((BoxPokemon *)(tradeData->animationConfig->sendingPokemon), MON_DATA_SPECIES, NULL);
            tradeData->unk_1B2 = BoxPokemon_GetValue((BoxPokemon *)(tradeData->animationConfig->sendingPokemon), MON_DATA_FORM, NULL);
            tradeData->unk_1B4 = BoxPokemon_GetValue((BoxPokemon *)(tradeData->animationConfig->receivingPokemon), MON_DATA_SPECIES, NULL);
            tradeData->unk_1B6 = BoxPokemon_GetValue((BoxPokemon *)(tradeData->animationConfig->receivingPokemon), MON_DATA_FORM, NULL);
            tradeData->unk_1B8 = NULL;

            SetVBlankCallback(NULL, NULL);
            DisableHBlank();
            GXLayers_DisableEngineALayers();
            GXLayers_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);

            tradeData->unk_1A8 = SysTask_CreateOnPrintQueue(ov95_02246F0C, tradeData, 1);
            tradeData->unk_1B8 = NULL;
        }

        return 1;
    }

    return 0;
}

static BOOL DoesMonSpeciesFlipsSprite(BoxPokemon *boxMon)
{
    int species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    return SpeciesData_GetFormValue(species, form, SPECIES_DATA_FLIP_SPRITE) == FALSE;
}

int TradeSequence_Exit(ApplicationManager *appMan, int *param1)
{
    OSIntrMode v0;
    TradeSequenceData *v1;

    v0 = OS_DisableInterrupts();
    v1 = ApplicationManager_Data(appMan);

    SysTask_Done(v1->unk_1A8);
    NetworkIcon_Destroy();
    StringTemplate_Free(v1->unk_0C);
    MessageLoader_Free(v1->unk_10);
    Strbuf_Free(v1->unk_14);
    Heap_Free(v1->unk_08);
    SpriteList_Delete(v1->unk_18);
    RenderOam_Free();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_57);
    Heap_Destroy(HEAP_ID_58);

    OS_RestoreInterrupts(v0);

    return 1;
}

int TradeSequence_Main(ApplicationManager *appMan, int *param1)
{
    TradeSequenceData *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_04 < NELEMS(Unk_ov95_0224BE8C)) {
        if (Unk_ov95_0224BE8C[v0->unk_04].unk_0C & v0->animationConfig->tradeType) {
            if (v0->unk_1B8 == NULL) {
                v0->unk_1B8 = Unk_ov95_0224BE8C[v0->unk_04].unk_00(v0);
            }

            if (Unk_ov95_0224BE8C[v0->unk_04].unk_04(v0->unk_1B8, param1)) {
                Unk_ov95_0224BE8C[v0->unk_04].unk_08(v0->unk_1B8);
                v0->unk_1B8 = NULL;

                v0->unk_04++;
                (*param1) = 0;
            }
        } else {
            v0->unk_04++;
            (*param1) = 0;
        }

        ov95_02247694();

        return 0;
    } else {
        return 1;
    }
}

static void ov95_02246F0C(SysTask *param0, void *param1)
{
    TradeSequenceData *v0 = param1;

    SpriteList_Update(v0->unk_18);
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

UnkStruct_ov95_02247004 *ov95_02246F30(BOOL *param0, int param1)
{
    UnkStruct_ov95_02247004 *v0 = Heap_Alloc(HEAP_ID_57, sizeof(UnkStruct_ov95_02247004));

    *param0 = 0;

    if (v0) {
        NNSG2dPaletteData *v1;
        void *v2;
        u32 v3;
        int v4;

        v2 = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__DEMO_TRADE, 6, &v1, HEAP_ID_57);

        if (v2) {
            MI_CpuFill16(v0->unk_00, 0x0, 96);
            Heap_Free(v2);
        }

        v0->unk_EC = 0;
        v0->unk_E8 = 0;
        v0->unk_F0 = 0;
        v0->unk_F4 = 0;
        v0->unk_E4 = param0;
        v0->unk_F8 = 0;
        v0->unk_FC = param1;

        for (v4 = 0; v4 < 8; v4++) {
            v0->unk_C4[v4] = NULL;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 16, 8);
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 16, 8);

        v0->unk_C0 = SysTask_ExecuteAfterVBlank(ov95_02247060, v0, 20);

        if (v0->unk_C0) {
            *(v0->unk_E4) = 1;
        }
    }

    return v0;
}

void ov95_02247004(UnkStruct_ov95_02247004 *param0)
{
    if (*(param0->unk_E4) == 1) {
        param0->unk_E8 = 1;
    }
}

void ov95_02247018(UnkStruct_ov95_02247004 *param0)
{
    if (*(param0->unk_E4) == 1) {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_C4[v0]) {
                ov95_02247224(param0, v0);
            }
        }

        *(param0->unk_E4) = 0;
        SysTask_Done(param0->unk_C0);
        Heap_Free(param0);
    }
}

static void ov95_02247060(SysTask *param0, void *param1)
{
    UnkStruct_ov95_02247004 *v0 = param1;

    if (v0->unk_E8 == 0) {
        if (--(v0->unk_F0) <= 0) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN08);
            v0->unk_F0 = 30;
            ov95_02247170(v0);
        }

        if (v0->unk_EC) {
            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();

            DC_FlushRange(v0->unk_00, 96);
            GX_LoadBGExtPltt(v0->unk_00, 0x6000, 96);
            GXS_LoadBGExtPltt(v0->unk_00, 0x6000, 96);

            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            v0->unk_EC = 0;
        }
    } else {
        if (v0->unk_EC) {
            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();

            DC_FlushRange(v0->unk_00, 96);
            GX_LoadBGExtPltt(v0->unk_00, 0x6000, 96);
            GXS_LoadBGExtPltt(v0->unk_00, 0x6000, 96);

            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            v0->unk_EC = 0;
        }

        if (v0->unk_F4 == 0) {
            *(v0->unk_E4) = 0;
            Heap_Free(v0);
            SysTask_Done(param0);
        }
    }
}

static void ov95_02247148(UnkStruct_ov95_02247004 *param0, int param1, int param2, int param3)
{
    if ((param1 >= 0) && (param1 < 96)) {
        param0->unk_00[param1] = 0x0;
    }

    if ((param2 >= 0) && (param2 < 96)) {
        param0->unk_00[param2] = param3;
    }

    param0->unk_EC = 1;
}

static void ov95_02247170(UnkStruct_ov95_02247004 *param0)
{
    if (param0->unk_C4[param0->unk_F8] == NULL) {
        UnkStruct_ov95_02247170 *v0 = Heap_Alloc(HEAP_ID_57, sizeof(UnkStruct_ov95_02247170));

        if (v0) {
            v0->unk_00 = param0;

            if (param0->unk_FC == 1) {
                v0->unk_04 = -1;
            } else {
                v0->unk_04 = 15;
            }

            v0->unk_0C = 0;
            v0->unk_08 = 2;
            v0->unk_10 = param0->unk_F8;
            v0->unk_14 = param0->unk_FC;
            param0->unk_C4[param0->unk_F8] = SysTask_Start(ov95_02247254, v0, 10);

            if (param0->unk_C4[param0->unk_F8]) {
                param0->unk_F4++;

                if (++(param0->unk_F8) >= 8) {
                    param0->unk_F8 = 0;
                }
            } else {
                Heap_Free(v0);
            }
        }
    }
}

static void ov95_02247224(UnkStruct_ov95_02247004 *param0, int param1)
{
    if (param0->unk_C4[param1]) {
        Heap_Free(SysTask_GetParam(param0->unk_C4[param1]));
        SysTask_Done(param0->unk_C4[param1]);
        param0->unk_C4[param1] = NULL;
        param0->unk_F4--;
    }
}

static void ov95_02247254(SysTask *param0, void *param1)
{
    UnkStruct_ov95_02247170 *v0 = param1;

    if (++(v0->unk_0C) >= v0->unk_08) {
        v0->unk_0C = 0;

        if (v0->unk_14 == 1) {
            if (v0->unk_04 + 1 >= 15) {
                ov95_02247148(v0->unk_00, v0->unk_04, v0->unk_04 + 1, 0x0);
                ov95_02247224(v0->unk_00, v0->unk_10);
            } else {
                ov95_02247148(v0->unk_00, v0->unk_04, v0->unk_04 + 1, 0x7fff);
                v0->unk_04++;
            }
        } else {
            if (v0->unk_04 < 0) {
                ov95_02247148(v0->unk_00, v0->unk_04, v0->unk_04 + 1, 0x0);
                ov95_02247224(v0->unk_00, v0->unk_10);
            } else {
                ov95_02247148(v0->unk_00, v0->unk_04 + 1, v0->unk_04, 0x7fff);
                v0->unk_04--;
            }
        }
    }
}

UnkStruct_ov95_022472C4 *ov95_022472C4(BgConfig *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, int param5, volatile BOOL *param6)
{
    UnkStruct_ov95_022472C4 *v0 = Heap_Alloc(HEAP_ID_57, sizeof(UnkStruct_ov95_022472C4));

    *param6 = 1;

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_08 = param1;
        v0->unk_0C = param2;
        v0->unk_10 = param3;
        v0->unk_14 = param4;
        v0->unk_18 = (param1 < param2) ? 0 : 1;
        v0->unk_1C = param5;
        v0->unk_04 = param6;
        *param6 = 0;

        v0->unk_20 = SysTask_ExecuteOnVBlank(ov95_0224732C, v0, 0);

        if (v0->unk_20) {
            (void)0;
        } else {
            *param6 = 1;
            Heap_Free(v0);
        }
    }

    return v0;
}

static void ov95_0224732C(SysTask *param0, void *param1)
{
    UnkStruct_ov95_022472C4 *v0 = param1;
    fx32 v1;

    v1 = ((v0->unk_08 * v0->unk_10) >> FX32_SHIFT) / 32;

    switch (v0->unk_18) {
    case 0:
        if ((v0->unk_08 + v1) < v0->unk_0C) {
            v0->unk_08 += v1;
        } else {
            v0->unk_08 = v0->unk_0C;
            *(v0->unk_04) = 1;
        }
        break;
    case 1:
        if ((v0->unk_08 - v1) > v0->unk_0C) {
            v0->unk_08 -= v1;
        } else {
            v0->unk_08 = v0->unk_0C;
            *(v0->unk_04) = 1;
        }
        break;
    }

    ov95_022473A0(v0);

    if (*(v0->unk_04)) {
        ov95_022476C8(v0);
        SysTask_Done(param0);
    } else {
        v0->unk_10 += v0->unk_14;
    }
}

static void ov95_022473A0(UnkStruct_ov95_022472C4 *param0)
{
    static const int v0[] = {
        144,
        56,
    };
    MtxFx22 v1;

    v1._00 = param0->unk_08;
    v1._01 = 1 << FX32_ONE;
    v1._10 = 0;
    v1._11 = param0->unk_08;

    Bg_SetAffineParams(param0->unk_00, 2, &v1, 128, v0[param0->unk_1C]);
    Bg_SetAffineParams(param0->unk_00, 6, &v1, 128, v0[param0->unk_1C]);
}

void ov95_022473E8(TradeSequenceData *param0, int param1, u32 param2, u32 param3, BOOL param4)
{
    PokemonSpriteTemplate v0;
    u32 v1;
    u32 v2;
    void *v3;

    v2 = (param4) ? 0x20 * 200 : 0x20 * 100;
    v3 = Heap_AllocAtEnd(HEAP_ID_57, v2);

    if (v3) {
        TileRegion v4 = FRAME_0_REGION;
        BoxPokemon *v5;
        BOOL v6;
        u32 personality;
        u16 species;

        v5 = (BoxPokemon *)((param1 == 0) ? param0->animationConfig->sendingPokemon : param0->animationConfig->receivingPokemon);
        v6 = BoxPokemon_EnterDecryptionContext(v5);

        BoxPokemon_BuildSpriteTemplate(&v0, v5, 2, 0);

        personality = BoxPokemon_GetValue(v5, MON_DATA_PERSONALITY, NULL);
        species = BoxPokemon_GetValue(v5, MON_DATA_SPECIES, NULL);

        if (param4) {
            v4.width *= 2;
        }

        CharacterSprite_LoadPokemonSpriteRegion(v0.narcID, v0.character, HEAP_ID_57, &v4, v3, personality, param4, FACE_FRONT, species);
        DC_FlushRange(v3, v2);
        Bg_LoadTiles(param0->unk_08, param2, v3, v2, 0);

        BoxPokemon_ExitDecryptionContext(v5, v6);
        Heap_Free(v3);
    }

    v1 = (param2 >= 4) ? 4 : 0;
    Graphics_LoadPalette(v0.narcID, v0.palette, v1, param3 * 0x20, 0x20, HEAP_ID_57);
}

void ov95_022474D4(TradeSequenceData *param0, int param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    void *v0;
    NNSG2dScreenData *v1;
    u32 v2;

    if (param1 == 0) {
        v2 = 262;
    } else {
        v2 = (param0->unk_1AC) ? 263 : 262;
    }

    v0 = Graphics_GetScrnData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, v2, 0, &v1, 57);

    if (v0) {
        Bg_CopyToTilemapRect(param0->unk_08, param2, param4, param5, 10, 10, v1->rawData, 0, 0, 32, 32);
        Bg_ChangeTilemapRectPalette(param0->unk_08, param2, param4, param5, 10, 10, param3);
        Heap_Free(v0);
    }
}

void ov95_02247568(UnkStruct_ov95_02247568 *param0, u32 param1, u32 param2, u32 param3)
{
    param0->unk_00 = Graphics_GetCellBank(param1, param2, 1, &(param0->unk_08), HEAP_ID_58);
    param0->unk_04 = Graphics_GetAnimBank(param1, param3, 1, &(param0->unk_0C), HEAP_ID_58);
}

void ov95_022475A0(UnkStruct_ov95_02247568 *param0)
{
    if (param0->unk_00) {
        Heap_Free(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_04) {
        Heap_Free(param0->unk_04);
        param0->unk_04 = NULL;
    }
}

void ov95_022475C4(SpriteResourcesHeader *param0, UnkStruct_ov95_02247568 *param1, NNSG2dImageProxy *param2, NNSG2dImagePaletteProxy *param3, u32 param4)
{
    param0->imageProxy = param2;
    param0->paletteProxy = param3;
    param0->cellBank = param1->unk_08;
    param0->cellAnimBank = param1->unk_0C;
    param0->priority = param4;
    param0->charData = NULL;
    param0->multiCellBank = NULL;
    param0->multiCellAnimBank = NULL;
    param0->isVRamTransfer = 0;
}

Sprite *ov95_022475E4(TradeSequenceData *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3, u32 param4, int param5)
{
    Sprite *v0;
    SpriteListTemplate v1;

    v1.list = param0->unk_18;
    v1.resourceData = param1;
    v1.position.x = param2 * FX32_ONE;
    v1.position.y = param3 * FX32_ONE;
    v1.position.z = 0;
    v1.priority = param4;
    v1.vramType = param5;
    v1.heapID = HEAP_ID_57;

    v0 = SpriteList_Add(&v1);

    if (v0) {
        Sprite_SetAnimateFlag(v0, 1);
        Sprite_SetAnimSpeed(v0, FX32_ONE);
    }

    return v0;
}

BgConfig *ov95_02247628(TradeSequenceData *param0)
{
    return param0->unk_08;
}

StringTemplate *ov95_0224762C(TradeSequenceData *param0)
{
    return param0->unk_0C;
}

MessageLoader *ov95_02247630(TradeSequenceData *param0)
{
    return param0->unk_10;
}

const BoxPokemon *TradeSequence_GetSendingPokemon(TradeSequenceData *tradeSequence)
{
    return tradeSequence->animationConfig->sendingPokemon;
}

const BoxPokemon *TradeSequence_GetReceivingPokemon(TradeSequenceData *tradeSequence)
{
    return tradeSequence->animationConfig->receivingPokemon;
}

enum TradeBackground TradeSequence_GetBackground(TradeSequenceData *tradeSequence)
{
    return tradeSequence->animationConfig->background;
}

u16 ov95_0224764C(TradeSequenceData *param0)
{
    return param0->unk_1B0;
}

u16 ov95_02247654(TradeSequenceData *param0)
{
    return param0->unk_1B2;
}

u16 ov95_02247660(TradeSequenceData *param0)
{
    return param0->unk_1B4;
}

u16 ov95_02247668(TradeSequenceData *param0)
{
    return param0->unk_1B6;
}

int ov95_02247674(TradeSequenceData *param0)
{
    return Options_Frame(param0->animationConfig->options);
}

enum TradeType TradeSequence_GetTradeType(TradeSequenceData *tradeSequence)
{
    return tradeSequence->animationConfig->tradeType;
}

static int Unk_ov95_0224C2E0 = 0;
static void *Unk_ov95_0224C2E4[32];

static void ov95_02247688(void)
{
    Unk_ov95_0224C2E0 = 0;
}

static void ov95_02247694(void)
{
    if (Unk_ov95_0224C2E0) {
        int i;

        for (i = 0; i < Unk_ov95_0224C2E0; i++) {
            Heap_Free(Unk_ov95_0224C2E4[i]);
        }

        Unk_ov95_0224C2E0 = 0;
    }
}

void ov95_022476C8(void *param0)
{
    GF_ASSERT(Unk_ov95_0224C2E0 < 32);
    Unk_ov95_0224C2E4[Unk_ov95_0224C2E0++] = param0;
}
