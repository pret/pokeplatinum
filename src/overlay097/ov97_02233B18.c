#include <nitro.h>
#include <string.h>

#include "constants/gba/global.h"
#include "constants/gba/items.h"
#include "constants/gba/pokemon.h"
#include "constants/gba/species.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/screen.h"
#include "constants/species.h"

#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay077/const_ov77_021D742C.h"
#include "overlay097/gba_save.h"
#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_0223635C.h"
#include "overlay097/ov97_02236380.h"
#include "overlay097/ov97_02237694.h"
#include "overlay097/ov97_022392E4.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "main.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02015920.h"
#include "unk_0202EEC0.h"
#include "unk_0209A74C.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay77);

enum GBAMonState {
    GBA_MON_STATE_0,
    GBA_MON_STATE_1,
    GBA_MON_STATE_2,
    GBA_MON_STATE_3,
    GBA_MON_STATE_IS_EGG,
    GBA_MON_STATE_HAS_HM,
    GBA_MON_STATE_HAS_INVALID_ITEM,
    GBA_MON_STATE_IS_INVALID_SPECIES,
};

typedef struct {
    Window *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    TextColor unk_2C;
    TextColor unk_30;
    int unk_34;
    u16 *unk_38;
    Strbuf *unk_3C;
    StringTemplate *unk_40;
    int unk_44;
    int unk_48;
} UnkStruct_ov97_02233DAC;

typedef struct {
    Sprite *unk_00;
    Sprite *unk_04;
    int unk_08;
} UnkStruct_ov97_02234A2C_sub1;

typedef struct {
    Sprite *unk_00;
    int boxPosition;
    int boxId;
} UnkStruct_ov97_02234A2C_sub2;

typedef struct {
    int unk_00;
    int unk_04;
    void *unk_08;
} UnkStruct_ov97_02233B8C;

typedef struct {
    int unk_00;
    int unk_04;
    Sprite *unk_08;
    u8 unk_0C[512];
} UnkStruct_ov97_0223F434;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    SaveData *unk_10;
    TrainerInfo *unk_14;
    Options *unk_18;
    int unk_1C;
    BgConfig *unk_20;
    int unk_24;
    SpriteList *unk_28;
    G2dRenderer unk_2C;
    SpriteResourceCollection *unk_1B8[6];
    SpriteResource *unk_1D0[6];
    SpriteResourcesHeader unk_1E8;
    UnkStruct_ov97_02234A2C_sub1 unk_20C[30];
    TouchScreenRect unk_374[34];
    Sprite *unk_3FC[4];
    Sprite *unk_40C[4];
    Sprite *unk_41C[4];
    UnkStruct_ov97_02234A2C_sub2 unk_42C[6];
    int unk_474;
    Sprite *unk_478[6];
    UnkStruct_ov97_02233DAC unk_490;
    Window unk_4DC;
    Window unk_4EC;
    Window unk_4FC;
    int unk_50C;
    int unk_510;
    u32 unk_514[14580];
    PokemonStorageGBA *unk_E8E0;
    int unk_E8E4;
    int unk_E8E8;
    UnkStruct_02015920 *unk_E8EC;
    UnkStruct_ov97_02233B8C unk_E8F0;
    UnkStruct_ov97_0223F434 unk_E8FC[30];
    void (*unk_12664)(void);
    Strbuf *unk_12668;
    Strbuf *unk_1266C;
} UnkStruct_ov97_02234A2C;

static void ov97_02234A2C(UnkStruct_ov97_02234A2C *param0, int param1);
static void ov97_022349E0(UnkStruct_ov97_02234A2C *param0);
static void ov97_02234ECC(UnkStruct_ov97_02234A2C *param0);
static void ov97_02235310(UnkStruct_ov97_02234A2C *param0);
static void ov97_02233D10(UnkStruct_ov97_02234A2C *param0);
void Strbuf_CopyNumChars(Strbuf *param0, const u16 *param1, u32 param2);
void Strbuf_CopyChars(Strbuf *param0, const u16 *param1);
void BoxMonGBAToBoxMon(BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon);

UnkStruct_ov97_0223F434 *Unk_ov97_0223F434;

static int sGBAHMMoves[] = {
    MOVE_CUT,
    MOVE_FLY,
    MOVE_SURF,
    MOVE_STRENGTH,
    MOVE_FLASH,
    MOVE_ROCK_SMASH,
    MOVE_WATERFALL,
    MOVE_DIVE
};

static int Unk_ov97_0223EA80[] = {
    NULL,
    0x1,
    0x0,
    0x2,
    0x3,
    0x4
};

static int Unk_ov97_0223EA68[] = {
    NULL,
    0x14,
    0x12,
    0x16,
    0x18,
    0x1A
};

static u8 Unk_ov97_0223EA60[] = {
    0x0,
    0x2,
    0x1,
    0x3,
    0x4,
    0x5
};

static int Unk_ov97_0223EAB8[] = {
    NULL,
    0x25,
    0x1F,
    0x20,
    0x20,
    0x5,
    0x7,
    0x21
};

static BOOL IsGBASpeciesInvalid(int speciesGBA)
{
    if (speciesGBA <= SPECIES_NONE) {
        return TRUE;
    } else if (speciesGBA <= SPECIES_CELEBI) {
        return FALSE;
    } else if (speciesGBA < GBA_SPECIES_TREECKO) {
        return TRUE;
    } else if (speciesGBA <= GBA_SPECIES_CHIMECHO) {
        return FALSE;
    }

    return TRUE;
}

static void ov97_02233B44(UnkStruct_ov97_02234A2C *param0)
{
    switch (ov97_02235DB0()) {
    case 0:
        param0->unk_00 = 2;
        break;
    case 1:
        param0->unk_00 = 1;
        break;
    case 2:
        param0->unk_00 = 5;
        break;
    case 3:
        param0->unk_00 = 4;
        break;
    case 4:
        param0->unk_00 = 3;
        break;
    default:
        param0->unk_00 = -1;
        break;
    }
}

static int ov97_02233B8C(UnkStruct_ov97_02234A2C *param0)
{
    int v0;
    u8 v1[16];
    int v2;
    PalParkTransfer *transferData;
    UnkStruct_ov97_02233B8C *v4 = &param0->unk_E8F0;

    switch (v4->unk_00) {
    case 0:
        ov97_02233D10(param0);
        transferData = SaveData_PalParkTransfer(param0->unk_10);
        sub_0202EFB8(transferData, GetGBAPlayerTrainerId());
        v4->unk_00++;
        break;
    case 1:
        v4->unk_04 = 1 + OS_GetTick() % 120;
        v4->unk_00++;
        break;
    case 2:
        if (--v4->unk_04 == 0) {
            v4->unk_00++;
        }
        break;
    case 3:
        SaveData_SaveStateInit(param0->unk_10, 2);
        v4->unk_00++;
        break;
    case 4:
        v2 = SaveData_SaveStateMain(param0->unk_10);

        if (v2 == 3) {
            return 12;
        }

        if (v2 == 1) {
            v4->unk_00++;
        }
        break;
    case 5:
        CTRDG_ReadAgbFlash(0, 0, v1, sizeof(v1));
        v4->unk_00++;
        break;
    case 6:
        v0 = ov97_02236280();

        if (v0 == 0) {
            SleepUnlock(SLEEP_TYPE_SAVE_DATA);
            return 12;
        }

        v4->unk_00++;
        break;
    case 7:
        if (ov97_02236308() == 9) {
            break;
        }

        if (ov97_02236308() == 11) {
            v4->unk_00++;
        } else {
            v0 = ov97_022362C8();

            if (v0 == 8) {
                SleepUnlock(SLEEP_TYPE_SAVE_DATA);
                return 12;
            }
        }
        break;
    case 8:
        do {
            v2 = SaveData_SaveStateMain(param0->unk_10);

            if (v2 == 3) {
                return 12;
            }
        } while (v2 != 2);

        ov97_022362C8();
        SleepLock(SLEEP_TYPE_SAVE_DATA);
        v4->unk_00++;
        break;
    case 9:
        v0 = ov97_022362C8();

        if (v0 == 8) {
            SleepUnlock(SLEEP_TYPE_SAVE_DATA);
            return 12;
        }

        if (v0 == 0) {
            SleepUnlock(SLEEP_TYPE_SAVE_DATA);
            return 11;
        }
        break;
    }

    return 10;
}

static void ov97_02233CE4(UnkStruct_ov97_02234A2C *param0)
{
    int v1;
    PalParkTransfer *transferData = SaveData_PalParkTransfer(param0->unk_10);

    sub_0202EFB8(transferData, GetGBAPlayerTrainerId());
    ResetLock(4);

    v1 = SaveData_Save(param0->unk_10);
    ResetUnlock(4);
}

static void ov97_02233D10(UnkStruct_ov97_02234A2C *param0)
{
    int i, boxNum, boxPos;
    u16 species;
    BoxPokemonGBA *boxMonGBA;
    Pokemon mon;
    PalParkTransfer *transfer = SaveData_PalParkTransfer(param0->unk_10);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(&mon);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        boxPos = param0->unk_42C[i].boxPosition;
        boxNum = param0->unk_42C[i].boxId;
        boxMonGBA = &param0->unk_E8E0->boxes[boxNum][boxPos];

        BoxMonGBAToBoxMon(boxMonGBA, boxMon);
        BoxMonToTransferData(transfer, boxMon, i);
    }

    species = SPECIES_NONE;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        boxPos = param0->unk_42C[i].boxPosition;
        boxNum = param0->unk_42C[i].boxId;

        if ((boxPos != -1) && (boxNum != GBA_MAX_PC_BOXES)) {
            SetGBABoxMonData(&(param0->unk_E8E0->boxes[boxNum][boxPos]), GBA_MON_DATA_SPECIES, (u8 *)&species);
        }
    }
}

static int ov97_02233DAC(UnkStruct_ov97_02233DAC *param0, Strbuf *param1, int param2)
{
    int v0, v1;

    if (param2 & 0x1) {
        v0 = Font_CalcStrbufWidth(FONT_MESSAGE, (const Strbuf *)param1, 0);
        v1 = param0->unk_10 * 8;
        return (v1 - v0) / 2;
    } else {
        return param0->unk_18;
    }
}

static void ov97_02233DD0(UnkStruct_ov97_02234A2C *param0, UnkStruct_ov97_02233DAC *param1, int param2)
{
    Strbuf *v0;
    StringTemplate *v1;
    MessageLoader *v2;
    int v3, v4, v5;
    Strbuf *v6;

    if (param1->unk_44 == 0) {
        v5 = TEXT_SPEED_NO_TRANSFER;
    } else {
        v5 = param1->unk_44;
    }

    if (param1->unk_00->bgConfig == NULL) {
        Window_Add(param0->unk_20, param1->unk_00, param1->unk_24, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, 15, param1->unk_20);
    }

    if (!(param2 & 0x2)) {
        Window_FillTilemap(param1->unk_00, param1->unk_30);
    }

    if (param1->unk_34 != -1) {
        v2 = MessageLoader_Init(1, 26, 454, HEAP_ID_78);

        if (param1->unk_40) {
            v1 = param1->unk_40;
        } else {
            v1 = StringTemplate_Default(HEAP_ID_78);
        }

        Strbuf_Clear(param0->unk_12668);

        v0 = param0->unk_12668;
        v6 = MessageLoader_GetNewStrbuf(v2, param1->unk_34);

        StringTemplate_Format(v1, param0->unk_12668, v6);
        Strbuf_Free(v6);

        v3 = ov97_02233DAC(param1, v0, param2);
        param1->unk_48 = Text_AddPrinterWithParamsAndColor(param1->unk_00, param1->unk_28, v0, v3, param1->unk_1C, v5, param1->unk_2C, NULL);

        if (param1->unk_40 == NULL) {
            StringTemplate_Free(v1);
        }

        MessageLoader_Free(v2);
        param1->unk_34 = -1;
    }

    if (param1->unk_38) {
        v0 = param0->unk_1266C;
        Strbuf_CopyNumChars(v0, param1->unk_38, 64);
        v3 = ov97_02233DAC(param1, v0, param2);
        param1->unk_48 = Text_AddPrinterWithParamsAndColor(param1->unk_00, param1->unk_28, v0, v3, param1->unk_1C, v5, param1->unk_2C, NULL);
        param1->unk_38 = NULL;
    }

    if (param1->unk_3C) {
        v3 = ov97_02233DAC(param1, param1->unk_3C, param2);

        param1->unk_48 = Text_AddPrinterWithParamsAndColor(param1->unk_00, param1->unk_28, param1->unk_3C, v3, param1->unk_1C, v5, param1->unk_2C, NULL);
        param1->unk_3C = NULL;
    }

    if (!(param2 & 0x4)) {
        Window_CopyToVRAM(param1->unk_00);
    }

    if (param2 & 0x8) {
        if (param2 & 0x10) {
            Window_DrawMessageBoxWithScrollCursor(param1->unk_00, 0, (0x3F0 - (18 + 12)), 13);
        } else {
            Window_DrawStandardFrame(param1->unk_00, 0, 0x3F0, 14);
        }
    }
}

static void ov97_02233F74(void)
{
    {
        CharTransferTemplate v0 = {
            20,
            2048,
            2048,
            78,
        };

        CharTransfer_Init(&v0);
    }

    PlttTransfer_Init(20, 78);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov97_02233FA4(UnkStruct_ov97_02234A2C *param0)
{
    int i;

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, 78);
    param0->unk_28 = SpriteList_InitRendering(80, &param0->unk_2C, 78);
    SetSubScreenViewRect(&param0->unk_2C, 0, (256 * FX32_ONE));

    for (i = 0; i < 6; i++) {
        param0->unk_1B8[i] = SpriteResourceCollection_New(3, i, 78);
    }

    param0->unk_1D0[0] = SpriteResourceCollection_AddTiles(param0->unk_1B8[0], 116, 26, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 78);
    param0->unk_1D0[1] = SpriteResourceCollection_AddPalette(param0->unk_1B8[1], 116, 23, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 78);
    param0->unk_1D0[2] = SpriteResourceCollection_Add(param0->unk_1B8[2], 116, 25, 1, 0, 2, 78);
    param0->unk_1D0[3] = SpriteResourceCollection_Add(param0->unk_1B8[3], 116, 24, 1, 0, 3, 78);

    SpriteTransfer_RequestChar(param0->unk_1D0[0]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_1D0[1]);
    Graphics_LoadPalette(19, PokeIconPalettesFileIndex(), 1, 8 * 0x20, 0, HEAP_ID_78);
}

static void ov97_022340B0(UnkStruct_ov97_02234A2C *param0)
{
    SpriteResourcesHeader_Init(&param0->unk_1E8, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1B8[0], param0->unk_1B8[1], param0->unk_1B8[2], param0->unk_1B8[3], NULL, NULL);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov97_022340FC(AffineSpriteListTemplate *param0, UnkStruct_ov97_02234A2C *param1, SpriteResourcesHeader *param2, int param3)
{
    param0->list = param1->unk_28;
    param0->resourceData = &param1->unk_1E8;
    param0->position.z = 0;
    param0->affineScale.x = FX32_ONE;
    param0->affineScale.y = FX32_ONE;
    param0->affineScale.z = FX32_ONE;
    param0->affineZRotation = 0;
    param0->priority = 20;
    param0->vramType = param3;
    param0->heapID = 78;
}

static int GetGBABoxMonSpeciesInBox(UnkStruct_ov97_02234A2C *param0, int boxId, int boxPosition)
{
    return GetGBABoxMonData(&(param0->unk_E8E0->boxes[boxId][boxPosition]), GBA_MON_DATA_SPECIES, NULL);
}

static int IsGBABoxMonEggInBox(UnkStruct_ov97_02234A2C *param0, int boxId, int boxPosition)
{
    return GetGBABoxMonData(&(param0->unk_E8E0->boxes[boxId][boxPosition]), GBA_MON_DATA_IS_EGG, NULL);
}

static int GetGBABoxMonPersonalityInBox(UnkStruct_ov97_02234A2C *param0, int boxId, int boxPosition)
{
    return GetGBABoxMonData(&(param0->unk_E8E0->boxes[boxId][boxPosition]), GBA_MON_DATA_PERSONALITY, NULL);
}

static void ov97_02234190(TouchScreenRect *rect, int param1, int param2, int param3, int param4)
{
    rect->rect.top = param2 - param4 / 2;
    rect->rect.left = param1 - param3 / 2;
    rect->rect.bottom = param2 + param4 / 2;
    rect->rect.right = param1 + param3 / 2;
}

static void *ov97_022341B4(u32 param0, u32 param1, NNSG2dCharacterData **param2, u32 param3)
{
    void *v0 = Heap_AllocFromHeapAtEnd(param3, 4096);

    if (v0 != NULL) {
        NARC_ReadWholeMemberByIndexPair(v0, param0, param1);

        if (NNS_G2dGetUnpackedBGCharacterData(v0, param2) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

static void ov97_022341EC(u32 param0, NNSG2dCharacterData **param1, void *param2, NARC *param3)
{
    NARC_ReadWholeMember(param3, param0, param2);
    NNS_G2dGetUnpackedBGCharacterData(param2, param1);
}

#define NUM_UNOWN_FORMS 28

#define GET_UNOWN_LETTER_FROM_PERSONALITY(personality) ((                                          \
                                                            (((personality) & 0x03000000) >> 18)   \
                                                            | (((personality) & 0x00030000) >> 12) \
                                                            | (((personality) & 0x00000300) >> 6)  \
                                                            | (((personality) & 0x00000003) >> 0)) \
    % NUM_UNOWN_FORMS)

static u8 GetSpeciesGBAForm(int speciesNDS, u32 personality, int gbaVersion)
{
    u8 form = 0;

    switch (speciesNDS) {
    case SPECIES_UNOWN:
        form = GET_UNOWN_LETTER_FROM_PERSONALITY(personality);
        break;
    case SPECIES_DEOXYS:
        switch (gbaVersion) {
        default:
        case RUBY:
        case SAPPHIRE:
            form = 0;
            break;
        case FIRERED:
            form = 1;
            break;
        case LEAFGREEN:
            form = 2;
            break;
        case EMERALD:
            form = 3;
            break;
        }

        break;
    }

    return form;
}

static void ov97_02234278(int species, int param1, u32 personality, int gbaVersion, int param4, Sprite *param5)
{
    u8 *v0;
    u8 form;
    NNSG2dCharacterData *v2;

    species = ConvertGBASpeciesToDS(species);

    form = GetSpeciesGBAForm(species, personality, gbaVersion);
    v0 = ov97_022341B4(19, PokeIconSpriteIndex(species, param1, form), &v2, 78);

    DC_FlushRange(v2->pRawData, ((4 * 4) * 0x20));
    GX_LoadOBJ(v2->pRawData, (0x64 + param4 * (4 * 4)) * 0x20, ((4 * 4) * 0x20));

    Sprite_SetExplicitPalette(param5, PokeIconPaletteIndex(species, form, param1) + 8);
    Heap_FreeToHeap(v0);
}

// speciesGBA is reused to store NDS species
static void ov97_022342E4(int speciesGBA, int isEgg, int form, int param3, Sprite *param4, void *param5, NARC *param6)
{
    u32 v0;
    NNSG2dCharacterData *v1;
    UnkStruct_ov97_0223F434 *v2 = Unk_ov97_0223F434 + param3;

    if (param4) {
        if (IsGBASpeciesInvalid(speciesGBA) == FALSE) {
            speciesGBA = ConvertGBASpeciesToDS(speciesGBA);
        } else {
            speciesGBA = SPECIES_NONE;
        }

        v0 = PokeIconSpriteIndex(speciesGBA, isEgg, form);

        ov97_022341EC(v0, &v1, param5, param6);
        MI_CpuCopyFast(v1->pRawData, v2->unk_0C, ((4 * 4) * 0x20));

        v2->unk_00 = (0x64 + param3 * (4 * 4)) * 0x20;
        v2->unk_08 = param4;
        v2->unk_04 = PokeIconPaletteIndex(speciesGBA, form, isEgg) + 8;
    } else {
        v2->unk_08 = NULL;
    }
}

static void ov97_02234364(void)
{
    int i;
    UnkStruct_ov97_0223F434 *v1 = Unk_ov97_0223F434;

    for (i = 0; i < 30; i++, v1++) {
        if (v1->unk_08) {
            DC_FlushRange(v1->unk_0C, ((4 * 4) * 0x20));
            GX_LoadOBJ(v1->unk_0C, v1->unk_00, ((4 * 4) * 0x20));
            Sprite_SetExplicitPalette(v1->unk_08, v1->unk_04);
        }
    }
}

static void ov97_022343A8(UnkStruct_ov97_02234A2C *param0)
{
    int i, species, isEgg, gbaVersion, form;
    u32 personality;
    void *v6;
    NARC *v7 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_78);
    v6 = Heap_AllocFromHeapAtEnd(78, 4096);

    for (i = 0; i < 30; i++) {
        if (GetGBABoxMonData(&(param0->unk_E8E0->boxes[param0->unk_E8E4][i]), GBA_MON_DATA_SANITY_HAS_SPECIES, NULL)) {
            species = GetGBABoxMonSpeciesInBox(param0, param0->unk_E8E4, i);
            isEgg = IsGBABoxMonEggInBox(param0, param0->unk_E8E4, i);
            personality = GetGBABoxMonPersonalityInBox(param0, param0->unk_E8E4, i);
            gbaVersion = gSystem.gbaCartridgeVersion;
            form = GetSpeciesGBAForm(ConvertGBASpeciesToDS(species), personality, gbaVersion);

            ov97_022342E4(species, isEgg, form, i, param0->unk_20C[i].unk_00, v6, v7);
            Sprite_SetDrawFlag(param0->unk_20C[i].unk_00, 1);

            if (GetGBABoxMonData(&(param0->unk_E8E0->boxes[param0->unk_E8E4][i]), GBA_MON_DATA_HELD_ITEM, NULL)) {
                Sprite_SetDrawFlag(param0->unk_20C[i].unk_04, 1);
            } else {
                Sprite_SetDrawFlag(param0->unk_20C[i].unk_04, 0);
            }
        } else {
            ov97_022342E4(species, isEgg, form, i, NULL, v6, v7);
            Sprite_SetDrawFlag(param0->unk_20C[i].unk_00, 0);
            Sprite_SetDrawFlag(param0->unk_20C[i].unk_04, 0);
        }
    }

    Heap_FreeToHeap(v6);
    NARC_dtor(v7);

    param0->unk_12664 = ov97_02234364;

    ov97_02234A2C(param0, param0->unk_E8E4);
    ov97_022349E0(param0);
}

static void ov97_02234508(UnkStruct_ov97_02234A2C *param0)
{
    int v0, v1, v2;
    AffineSpriteListTemplate v3;

    ov97_022340FC(&v3, param0, &param0->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0 = 0;

    for (v2 = 0; v2 < 5; v2++) {
        for (v1 = 0; v1 < 6; v1++) {
            ov97_02234190(&param0->unk_374[v0], v1 * 40 + 28, v2 * 24 + 40, 28, 28);

            v3.position.x = FX32_ONE * (v1 * 40 + 28);
            v3.position.y = FX32_ONE * (v2 * 24 + 40);

            if (param0->unk_20C[v0].unk_00 == NULL) {
                param0->unk_20C[v0].unk_00 = SpriteList_AddAffine(&v3);
            }

            Sprite_SetAnimateFlag(param0->unk_20C[v0].unk_00, 1);
            Sprite_SetAnim(param0->unk_20C[v0].unk_00, 10 + v0);
            Sprite_SetExplicitPriority(param0->unk_20C[v0].unk_00, 1);
            Sprite_SetDrawFlag(param0->unk_20C[v0].unk_00, 1);
            Sprite_SetPriority(param0->unk_20C[v0].unk_00, 100 + v0);

            v3.position.x += FX32_ONE * 6;
            v3.position.y += FX32_ONE * 12;

            if (param0->unk_20C[v0].unk_04 == NULL) {
                param0->unk_20C[v0].unk_04 = SpriteList_AddAffine(&v3);
            }

            Sprite_SetAnimateFlag(param0->unk_20C[v0].unk_04, 1);
            Sprite_SetAnim(param0->unk_20C[v0].unk_04, 40);
            Sprite_SetExplicitPriority(param0->unk_20C[v0].unk_04, 1);
            Sprite_SetDrawFlag(param0->unk_20C[v0].unk_04, 0);
            Sprite_SetPriority(param0->unk_20C[v0].unk_04, 0 + v0);

            v0++;

            if (v0 == 30) {
                return;
            }
        }
    }
}

static Sprite *ov97_02234638(UnkStruct_ov97_02234A2C *param0, int param1, int param2, int param3, int param4)
{
    AffineSpriteListTemplate v0;
    Sprite *v1;

    ov97_022340FC(&v0, param0, &param0->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * param1;
    v0.position.y = FX32_ONE * param2;
    v0.priority = 10;

    v1 = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(v1, 1);
    Sprite_SetAnim(v1, param3);
    Sprite_SetExplicitPriority(v1, 1);
    Sprite_SetDrawFlag(v1, param4);

    return v1;
}

static void ov97_0223468C(UnkStruct_ov97_02234A2C *param0)
{
    int i;

    ov97_02234190(&param0->unk_374[(30 + 0)], 228, 176, 50, 32);
    param0->unk_3FC[0] = ov97_02234638(param0, 228, 176, 6, 1);

    ov97_02234190(&param0->unk_374[(30 + 2)], 176, 176, 32, 32);
    param0->unk_40C[0] = ov97_02234638(param0, 176, 176, 3, 1);

    ov97_02234190(&param0->unk_374[(30 + 1)], 24, 176, 32, 32);
    param0->unk_41C[0] = ov97_02234638(param0, 24, 176, 0, 1);
    param0->unk_374[(30 + 3)].rect.top = 0xff;

    for (i = 0; i < 6; i++) {
        param0->unk_42C[i].unk_00 = ov97_02234638(param0, 36 * i, 64, 9, 0);
        param0->unk_42C[i].boxPosition = -1;
        param0->unk_42C[i].boxId = 14;
    }

    param0->unk_474 = 0;
}

static BOOL BoxMonGBAIsEgg(UnkStruct_ov97_02234A2C *param0, int boxPosition)
{
    BoxPokemonGBA *boxMonGBA = &param0->unk_E8E0->boxes[param0->unk_E8E4][boxPosition];

    if (GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SPECIES_OR_EGG, NULL) == GBA_SPECIES_EGG) {
        return TRUE;
    }

    return FALSE;
}

static BOOL BoxMonGBAHasHM(UnkStruct_ov97_02234A2C *param0, int boxPosition)
{
    int i, j, move;
    BoxPokemonGBA *boxMon = &param0->unk_E8E0->boxes[param0->unk_E8E4][boxPosition];

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        move = GetGBABoxMonData(boxMon, GBA_MON_DATA_MOVE1 + i, NULL);

        for (j = 0; j < sizeof(sGBAHMMoves) / sizeof(int); j++) {
            if (sGBAHMMoves[j] == move) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

u16 sInvalidGBAItems[] = {
    GBA_ITEM_SAFARI_BALL,
    GBA_ITEM_034,
    GBA_ITEM_035,
    GBA_ITEM_036,
    GBA_ITEM_037,
    GBA_ITEM_038,
    GBA_ITEM_039,
    GBA_ITEM_03A,
    GBA_ITEM_03B,
    GBA_ITEM_03C,
    GBA_ITEM_03D,
    GBA_ITEM_03E,
    GBA_ITEM_048,
    GBA_ITEM_052,
    GBA_ITEM_057,
    GBA_ITEM_058,
    GBA_ITEM_059,
    GBA_ITEM_05A,
    GBA_ITEM_05B,
    GBA_ITEM_05C,
    GBA_ITEM_063,
    GBA_ITEM_064,
    GBA_ITEM_065,
    GBA_ITEM_066,
    GBA_ITEM_069,
    GBA_ITEM_070,
    GBA_ITEM_071,
    GBA_ITEM_072,
    GBA_ITEM_073,
    GBA_ITEM_074,
    GBA_ITEM_075,
    GBA_ITEM_076,
    GBA_ITEM_077,
    GBA_ITEM_078,
    GBA_ITEM_ORANGE_MAIL,
    GBA_ITEM_HARBOR_MAIL,
    GBA_ITEM_GLITTER_MAIL,
    GBA_ITEM_MECH_MAIL,
    GBA_ITEM_WOOD_MAIL,
    GBA_ITEM_WAVE_MAIL,
    GBA_ITEM_BEAD_MAIL,
    GBA_ITEM_SHADOW_MAIL,
    GBA_ITEM_TROPIC_MAIL,
    GBA_ITEM_DREAM_MAIL,
    GBA_ITEM_FAB_MAIL,
    GBA_ITEM_RETRO_MAIL,
    GBA_ITEM_UNUSED_BERRY_1,
    GBA_ITEM_UNUSED_BERRY_2,
    GBA_ITEM_UNUSED_BERRY_3,
    GBA_ITEM_0E2,
    GBA_ITEM_0E3,
    GBA_ITEM_0E4,
    GBA_ITEM_0E5,
    GBA_ITEM_0E6,
    GBA_ITEM_0E7,
    GBA_ITEM_0E8,
    GBA_ITEM_0E9,
    GBA_ITEM_0EA,
    GBA_ITEM_0EB,
    GBA_ITEM_0EC,
    GBA_ITEM_0ED,
    GBA_ITEM_0EE,
    GBA_ITEM_0EF,
    GBA_ITEM_0F0,
    GBA_ITEM_0F1,
    GBA_ITEM_0F2,
    GBA_ITEM_0F3,
    GBA_ITEM_0F4,
    GBA_ITEM_0F5,
    GBA_ITEM_0F6,
    GBA_ITEM_0F7,
    GBA_ITEM_0F8,
    GBA_ITEM_0F9,
    GBA_ITEM_0FA,
    GBA_ITEM_0FB,
    GBA_ITEM_0FC,
    GBA_ITEM_0FD,
    GBA_ITEM_MACH_BIKE,
    GBA_ITEM_COIN_CASE,
    GBA_ITEM_ITEMFINDER,
    GBA_ITEM_OLD_ROD,
    GBA_ITEM_GOOD_ROD,
    GBA_ITEM_SUPER_ROD,
    GBA_ITEM_SS_TICKET,
    GBA_ITEM_CONTEST_PASS,
    GBA_ITEM_10B,
    GBA_ITEM_WAILMER_PAIL,
    GBA_ITEM_DEVON_GOODS,
    GBA_ITEM_SOOT_SACK,
    GBA_ITEM_BASEMENT_KEY,
    GBA_ITEM_ACRO_BIKE,
    GBA_ITEM_POKEBLOCK_CASE,
    GBA_ITEM_LETTER,
    GBA_ITEM_EON_TICKET,
    GBA_ITEM_RED_ORB,
    GBA_ITEM_BLUE_ORB,
    GBA_ITEM_SCANNER,
    GBA_ITEM_GO_GOGGLES,
    GBA_ITEM_METEORITE,
    GBA_ITEM_ROOM_1_KEY,
    GBA_ITEM_ROOM_2_KEY,
    GBA_ITEM_ROOM_4_KEY,
    GBA_ITEM_ROOM_6_KEY,
    GBA_ITEM_STORAGE_KEY,
    GBA_ITEM_ROOT_FOSSIL,
    GBA_ITEM_CLAW_FOSSIL,
    GBA_ITEM_DEVON_SCOPE,
    GBA_ITEM_HM01,
    GBA_ITEM_HM02,
    GBA_ITEM_HM03,
    GBA_ITEM_HM04,
    GBA_ITEM_HM05,
    GBA_ITEM_HM06,
    GBA_ITEM_HM07,
    GBA_ITEM_HM08,
    GBA_ITEM_15B,
    GBA_ITEM_15C,
    GBA_ITEM_OAKS_PARCEL,
    GBA_ITEM_POKE_FLUTE,
    GBA_ITEM_SECRET_KEY,
    GBA_ITEM_BIKE_VOUCHER,
    GBA_ITEM_GOLD_TEETH,
    GBA_ITEM_OLD_AMBER,
    GBA_ITEM_CARD_KEY,
    GBA_ITEM_LIFT_KEY,
    GBA_ITEM_HELIX_FOSSIL,
    GBA_ITEM_DOME_FOSSIL,
    GBA_ITEM_SILPH_SCOPE,
    GBA_ITEM_BICYCLE,
    GBA_ITEM_TOWN_MAP,
    GBA_ITEM_VS_SEEKER,
    GBA_ITEM_FAME_CHECKER,
    GBA_ITEM_TM_CASE,
    GBA_ITEM_BERRY_POUCH,
    GBA_ITEM_TEACHY_TV,
    GBA_ITEM_TRI_PASS,
    GBA_ITEM_RAINBOW_PASS,
    GBA_ITEM_TEA,
    GBA_ITEM_MYSTIC_TICKET,
    GBA_ITEM_AURORA_TICKET,
    GBA_ITEM_POWDER_JAR,
    GBA_ITEM_RUBY,
    GBA_ITEM_SAPPHIRE,
    GBA_ITEM_MAGMA_EMBLEM,
    GBA_ITEM_OLD_SEA_MAP,
    ITEM_NONE
};

static BOOL BoxMonGBAHasInvalidItem(UnkStruct_ov97_02234A2C *param0, int boxPosition)
{
    BoxPokemonGBA *boxMonGBA = &param0->unk_E8E0->boxes[param0->unk_E8E4][boxPosition];
    int item = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_HELD_ITEM, NULL);
    int i;

    for (i = 0; sInvalidGBAItems[i] != ITEM_NONE; i++) {
        if (item == sInvalidGBAItems[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL IsBoxMonGBAInvalidSpecies(UnkStruct_ov97_02234A2C *param0, int boxPosition)
{
    BoxPokemonGBA *boxMonGBA = &param0->unk_E8E0->boxes[param0->unk_E8E4][boxPosition];
    int species = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SPECIES, NULL);

    return IsGBASpeciesInvalid(species);
}

static int ov97_02234854(UnkStruct_ov97_02234A2C *param0, int boxPosition)
{
    int i, v1;

    if (param0->unk_20C[boxPosition].unk_00 && (Sprite_GetDrawFlag(param0->unk_20C[boxPosition].unk_00) == 0)) {
        return GBA_MON_STATE_3;
    }

    for (v1 = -1, i = 0; v1 == -1 && i < 6; i++) {
        if ((param0->unk_42C[i].boxId == param0->unk_E8E4) && (param0->unk_42C[i].boxPosition == boxPosition)) {
            v1 = i;
        }
    }

    if (BoxMonGBAIsEgg(param0, boxPosition) == TRUE) {
        return GBA_MON_STATE_IS_EGG;
    }

    if (BoxMonGBAHasHM(param0, boxPosition) == TRUE) {
        return GBA_MON_STATE_HAS_HM;
    }

    if (BoxMonGBAHasInvalidItem(param0, boxPosition) == TRUE) {
        return GBA_MON_STATE_HAS_INVALID_ITEM;
    }

    if (IsBoxMonGBAInvalidSpecies(param0, boxPosition) == TRUE) {
        return GBA_MON_STATE_IS_INVALID_SPECIES;
    }

    if (v1 == -1) {
        const VecFx32 *v2;
        VecFx32 v3;

        if (param0->unk_474 == 6) {
            return GBA_MON_STATE_0;
        }

        for (i = 0; i < 6; i++) {
            if (param0->unk_42C[i].boxPosition == -1) {
                v2 = Sprite_GetPosition(param0->unk_20C[boxPosition].unk_00);
                Sprite_SetPosition(param0->unk_42C[i].unk_00, v2);
                v2 = Sprite_GetPosition(param0->unk_42C[i].unk_00);

                v3 = *v2;
                v3.x -= FX32_ONE * 8;
                v3.y -= FX32_ONE * 4;

                Sprite_SetPosition(param0->unk_42C[i].unk_00, &v3);
                Sprite_SetDrawFlag(param0->unk_42C[i].unk_00, 1);

                param0->unk_42C[i].boxPosition = boxPosition;
                param0->unk_42C[i].boxId = param0->unk_E8E4;
                param0->unk_474++;

                return GBA_MON_STATE_1;
            }
        }
    } else {
        Sprite_SetDrawFlag(param0->unk_42C[v1].unk_00, 0);

        param0->unk_42C[v1].boxPosition = -1;
        param0->unk_474--;

        return GBA_MON_STATE_2;
    }

    return GBA_MON_STATE_0;
}

static void ov97_022349E0(UnkStruct_ov97_02234A2C *param0)
{
    int i;

    for (i = 0; i < 6; i++) {
        if ((param0->unk_42C[i].boxPosition != -1) && (param0->unk_42C[i].boxId == param0->unk_E8E4)) {
            Sprite_SetDrawFlag(param0->unk_42C[i].unk_00, 1);
        } else {
            Sprite_SetDrawFlag(param0->unk_42C[i].unk_00, 0);
        }
    }
}

static void ov97_02234A2C(UnkStruct_ov97_02234A2C *param0, int param1)
{
    UnkStruct_ov97_02233DAC v0;
    u16 v1[8 + 1];

    memset(&v0, 0, sizeof(UnkStruct_ov97_02233DAC));

    v0.unk_00 = &param0->unk_4DC;
    v0.unk_08 = 6;
    v0.unk_0C = 21;
    v0.unk_10 = 13;
    v0.unk_14 = 2;
    v0.unk_34 = -1;
    v0.unk_18 = 0;
    v0.unk_1C = 0;
    v0.unk_24 = 1;
    v0.unk_28 = 1;
    v0.unk_2C = TEXT_COLOR(1, 2, 0);
    v0.unk_20 = 0xA0;

    ov97_0223936C(param0->unk_E8E0->boxNames[param1], v1, 8 + 1, ov97_02235DBC());
    v0.unk_38 = v1;
    ov97_02233DD0(param0, &v0, 0x1);
}

static void ov97_02234AB4(UnkStruct_ov97_02234A2C *param0, BoxPokemonGBA *boxMonGBA)
{
    u16 *v0 = Bg_GetTilemapBuffer(param0->unk_20, 2);
    u8 v1;
    int i;

    if (boxMonGBA) {
        v1 = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_MARKINGS, NULL);
    } else {
        v1 = 0;
    }

    for (i = 0; i < 4; i++) {
        if (v1 & 1) {
            v0[32 * 3 + 11 + i] = 0x80 + i;
        } else {
            v0[32 * 3 + 11 + i] = 0x60 + i;
        }

        v1 >>= 1;
    }

    Bg_CopyTilemapBufferToVRAM(param0->unk_20, 2);
}

static void ov97_02234B0C(UnkStruct_ov97_02234A2C *param0, BoxPokemonGBA *boxMonGBA)
{
    int species, level;
    int v2, v3;
    UnkStruct_ov97_02233DAC v4;
    MessageLoader *v5;
    u8 v6[10 + 1];
    u16 v7[10 + 1];
    Strbuf *v8;

    memset(&v4, 0, sizeof(UnkStruct_ov97_02233DAC));

    v4.unk_00 = &param0->unk_4EC;
    v4.unk_08 = 0;
    v4.unk_0C = 0;
    v4.unk_10 = 32;
    v4.unk_14 = 4;
    v4.unk_24 = 1;
    v4.unk_28 = 1;
    v4.unk_20 = (14 * 2 + 0xA0);
    v4.unk_2C = TEXT_COLOR(15, 2, 0);
    v4.unk_38 = NULL;

    v4.unk_34 = 44;
    v4.unk_18 = 18 * 8;
    v4.unk_1C = 0;

    ov97_02233DD0(param0, &v4, 0x4);

    v4.unk_34 = 43;
    v4.unk_18 = 10 * 8;
    v4.unk_1C = 8;

    ov97_02233DD0(param0, &v4, 0x4 | 0x2);
    ov97_02234AB4(param0, boxMonGBA);

    if (boxMonGBA == NULL) {
        Window_CopyToVRAM(v4.unk_00);
        return;
    }

    GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_NICKNAME, v6);
    ov97_0223936C(v6, v7, 10 + 1, GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_LANGUAGE, NULL));

    v4.unk_38 = v7;
    v4.unk_34 = -1;
    v4.unk_18 = 1 * 8;
    v4.unk_1C = 0;

    ov97_02233DD0(param0, &v4, 0x4 | 0x2);

    v8 = Strbuf_Init(64, HEAP_ID_78);
    v5 = MessageLoader_Init(1, 26, 412, HEAP_ID_78);
    species = ConvertGBASpeciesToDS(GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SPECIES, NULL));

    MessageLoader_GetStrbuf(v5, species, v8);

    v4.unk_3C = v8;
    v4.unk_34 = -1;
    v4.unk_18 = 2 * 8;
    v4.unk_1C = 2 * 8;

    ov97_02233DD0(param0, &v4, 0x4 | 0x2);

    MessageLoader_Free(v5);
    Strbuf_Free(v8);

    v2 = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_HELD_ITEM, NULL);

    if (v2) {
        v3 = Item_FromGBAID(v2);
        v8 = Strbuf_Init(64, HEAP_ID_78);

        Item_LoadName(v8, v3, 78);

        v4.unk_3C = v8;
        v4.unk_34 = -1;
        v4.unk_18 = 19 * 8;
        v4.unk_1C = 2 * 8;

        ov97_02233DD0(param0, &v4, 0x4 | 0x2);
        Strbuf_Free(v8);
    }

    level = GetBoxMonGBALevel(boxMonGBA);
    v8 = Strbuf_Init(10, HEAP_ID_78);

    Strbuf_FormatInt(v8, level, 3, 1, 1);

    v4.unk_3C = v8;
    v4.unk_34 = -1;
    v4.unk_18 = 12 * 8 + 4;
    v4.unk_1C = 1 * 8;

    ov97_02233DD0(param0, &v4, 0x2);

    Strbuf_Free(v8);
    sub_02005844(species, 0);
}

static void ov97_02234CC4(UnkStruct_ov97_02234A2C *param0, int param1, int param2, int *param3)
{
    StartScreenTransition(0, param1, param1, 0x0, 6, 1, HEAP_ID_78);

    if (param3) {
        *param3 = 23;
    }

    param0->unk_24 = param2;
}

static void ov97_02234CF4(UnkStruct_ov97_02234A2C *param0, int param1, int param2, int *param3)
{
    StartScreenTransition(0, param1, param1, 0x7fff, 6, 1, HEAP_ID_78);

    if (param3) {
        *param3 = 23;
    }

    param0->unk_24 = param2;
}

static void ov97_02234D28(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 0, &v1, 0);
        Bg_ClearTilemap(param0, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 1, &v2, 0);
        Bg_ClearTilemap(param0, 1);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 2, &v3, 0);
        Bg_ClearTilemap(param0, 2);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 3, &v4, 0);
        Bg_ClearTilemap(param0, 3);
    }
}

static void ov97_02234DFC(UnkStruct_ov97_02234A2C *param0)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    ov97_02234D28(param0->unk_20);

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;

    GXLayers_SwapDisplay();
    Text_ResetAllPrinters();

    Font_LoadTextPalette(0, 15 * 32, HEAP_ID_78);
    Graphics_LoadPalette(116, 19, 0, 0, 32 * 6, HEAP_ID_78);
    Graphics_LoadTilesToBgLayer(116, 22, param0->unk_20, 2, 0, 10 * 16 * 0x20, 1, HEAP_ID_78);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_78);
}

static void ov97_02234E7C(UnkStruct_ov97_02234A2C *param0)
{
    Graphics_LoadTilemapToBgLayer(116, 20, param0->unk_20, 2, 0, 32 * 24 * 2, 1, HEAP_ID_78);
    Bg_ChangeTilemapRectPalette(param0->unk_20, 2, 0, 0, 32, 24, Unk_ov97_0223EA60[param0->unk_00]);
    Bg_CopyTilemapBufferToVRAM(param0->unk_20, 2);
}

static void ov97_02234ECC(UnkStruct_ov97_02234A2C *param0)
{
    Font_LoadTextPalette(0, 14 * 32, HEAP_ID_78);
    LoadStandardWindowGraphics(param0->unk_20, 0, 0x3F0, 14, 0, HEAP_ID_78);
    LoadMessageBoxGraphics(param0->unk_20, 0, (0x3F0 - (18 + 12)), 13, param0->unk_1C, HEAP_ID_78);

    memset(&param0->unk_490, 0, sizeof(UnkStruct_ov97_02233DAC));

    param0->unk_490.unk_00 = &param0->unk_4FC;
    param0->unk_490.unk_08 = 2;
    param0->unk_490.unk_0C = 1;
    param0->unk_490.unk_10 = 27;
    param0->unk_490.unk_14 = 4;
    param0->unk_490.unk_24 = 0;
    param0->unk_490.unk_28 = 1;
    param0->unk_490.unk_20 = 0 + 1;
    param0->unk_490.unk_2C = TEXT_COLOR(1, 2, 15);
    param0->unk_490.unk_30 = TEXT_COLOR(15, 2, 15);
    param0->unk_490.unk_38 = NULL;
    param0->unk_490.unk_3C = NULL;
}

static void ov97_02234F88(UnkStruct_ov97_02234A2C *param0)
{
    int i, v1, v2, v3;
    u32 personality;
    AffineSpriteListTemplate v5;

    for (i = 0; i < 30; i++) {
        Sprite_SetDrawFlag(param0->unk_20C[i].unk_00, 0);
        Sprite_SetDrawFlag(param0->unk_20C[i].unk_04, 0);
    }

    for (i = 0; i < 6; i++) {
        Sprite_SetDrawFlag(param0->unk_42C[i].unk_00, 0);
    }

    Sprite_SetDrawFlag(param0->unk_3FC[0], 0);
    Sprite_SetDrawFlag(param0->unk_41C[0], 0);
    Sprite_SetDrawFlag(param0->unk_40C[0], 0);

    ov97_022340FC(&v5, param0, &param0->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    for (i = 0; i < 6; i++) {
        v5.position.x = FX32_ONE * (i * 40 + 28);
        v5.position.y = FX32_ONE * 142;

        param0->unk_478[i] = SpriteList_AddAffine(&v5);

        Sprite_SetAnimateFlag(param0->unk_478[i], 1);
        Sprite_SetAnim(param0->unk_478[i], 10 + i);
        Sprite_SetExplicitPriority(param0->unk_478[i], 1);
        Sprite_SetDrawFlag(param0->unk_478[i], 1);

        v1 = GetGBABoxMonSpeciesInBox(param0, param0->unk_42C[i].boxId, param0->unk_42C[i].boxPosition);
        v2 = IsGBABoxMonEggInBox(param0, param0->unk_42C[i].boxId, param0->unk_42C[i].boxPosition);
        personality = GetGBABoxMonPersonalityInBox(param0, param0->unk_42C[i].boxId, param0->unk_42C[i].boxPosition);
        v3 = gSystem.gbaCartridgeVersion;

        ov97_02234278(v1, v2, personality, v3, i, param0->unk_478[i]);
    }

    Graphics_LoadTilemapToBgLayer(116, 21, param0->unk_20, 2, 0, 32 * 24 * 2, 1, HEAP_ID_78);
    Bg_ChangeTilemapRectPalette(param0->unk_20, 2, 0, 0, 32, 24, Unk_ov97_0223EA60[param0->unk_00]);
    Bg_CopyTilemapBufferToVRAM(param0->unk_20, 2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Font_LoadTextPalette(0, 14 * 32, HEAP_ID_78);
    LoadStandardWindowGraphics(param0->unk_20, 0, 0x3F0, 14, 0, HEAP_ID_78);
    LoadMessageBoxGraphics(param0->unk_20, 0, (0x3F0 - (18 + 12)), 13, param0->unk_1C, HEAP_ID_78);

    ov97_02234ECC(param0);
    param0->unk_490.unk_34 = 10;
    ov97_02233DD0(param0, &param0->unk_490, 0x8 | 0x10);
}

static void ov97_02235158(Window *param0)
{
    if (param0->bgConfig) {
        Window_EraseMessageBox(param0, 0);
        Window_ClearAndCopyToVRAM(param0);
        Window_Remove(param0);
    }
}

static void ov97_02235178(UnkStruct_ov97_02234A2C *param0)
{
    int i;

    for (i = 0; i < 6; i++) {
        Sprite_Delete(param0->unk_478[i]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    ov97_02235158(&param0->unk_4FC);

    Sprite_SetDrawFlag(param0->unk_3FC[0], 1);
    Sprite_SetDrawFlag(param0->unk_41C[0], 1);
    Sprite_SetDrawFlag(param0->unk_40C[0], 1);

    for (i = 0; i < 6; i++) {
        param0->unk_42C[i].boxPosition = -1;
        param0->unk_42C[i].boxId = 14;
    }

    param0->unk_474 = 0;
}

static void ov97_022351F0(UnkStruct_ov97_02234A2C *param0)
{
    int i;

    SetVBlankCallback(NULL, NULL);

    for (i = 0; i < 30; i++) {
        if (param0->unk_20C[i].unk_00) {
            Sprite_Delete(param0->unk_20C[i].unk_00);
        }

        if (param0->unk_20C[i].unk_04) {
            Sprite_Delete(param0->unk_20C[i].unk_04);
        }
    }

    for (i = 0; i < 6; i++) {
        if (param0->unk_42C[i].unk_00) {
            Sprite_Delete(param0->unk_42C[i].unk_00);
        }
    }

    if (param0->unk_3FC[0]) {
        Sprite_Delete(param0->unk_3FC[0]);
    }

    if (param0->unk_41C[0]) {
        Sprite_Delete(param0->unk_41C[0]);
    }

    if (param0->unk_40C[0]) {
        Sprite_Delete(param0->unk_40C[0]);
    }

    ov97_02235158(&param0->unk_4DC);
    ov97_02235158(&param0->unk_4EC);
    ov97_02235158(&param0->unk_4FC);

    Font_Free(FONT_SUBSCREEN);
    SpriteTransfer_ResetCharTransfer(param0->unk_1D0[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_1D0[1]);

    for (i = 0; i < 6; i++) {
        SpriteResourceCollection_Delete(param0->unk_1B8[i]);
    }

    SpriteList_Delete(param0->unk_28);
    param0->unk_28 = NULL;

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    sub_02015938(param0->unk_E8EC);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();

    Bg_FreeTilemapBuffer(param0->unk_20, 0);
    Bg_FreeTilemapBuffer(param0->unk_20, 1);
    Bg_FreeTilemapBuffer(param0->unk_20, 2);
    Bg_FreeTilemapBuffer(param0->unk_20, 3);
}

static void ov97_02235310(UnkStruct_ov97_02234A2C *param0)
{
    UnkStruct_02015958 v0;

    v0.unk_00 = param0->unk_20;
    v0.unk_04 = 0;
    v0.unk_08 = 512;
    v0.unk_0C = 8;
    v0.unk_10 = 25;
    v0.unk_11 = 7;

    sub_02015958(param0->unk_E8EC, &v0);
}

static void ov97_02235344(UnkStruct_ov97_02234A2C *param0)
{
    UnkStruct_ov97_02233DAC v0;
    StringTemplate *v1;
    Strbuf *v2;
    u16 v3[7 + 1];

    ov97_0223936C(GetGBAPlayerName(), v3, GBA_PLAYER_NAME_LEN + 1, ov97_02235DBC());

    v1 = StringTemplate_Default(HEAP_ID_78);
    v2 = Strbuf_Init(GBA_PLAYER_NAME_LEN + 1, HEAP_ID_78);

    Strbuf_CopyChars(v2, v3);
    StringTemplate_SetStrbuf(v1, 1, v2, 0, 1, GAME_LANGUAGE);

    ov97_02234ECC(param0);

    param0->unk_490.unk_34 = Unk_ov97_0223EA80[param0->unk_00];
    param0->unk_490.unk_40 = v1;

    ov97_02233DD0(param0, &param0->unk_490, 0x8 | 0x10);

    Strbuf_Free(v2);
    StringTemplate_Free(v1);

    ov97_02235310(param0);
}

static void ov97_022353CC(void *param0)
{
    UnkStruct_ov97_02234A2C *v0 = (UnkStruct_ov97_02234A2C *)param0;

    if (v0->unk_12664) {
        v0->unk_12664();
        v0->unk_12664 = NULL;
    }

    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates(v0->unk_20);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

// Validation for Pal Park?
static int ov97_02235408(UnkStruct_ov97_02234A2C *param0)
{
    int v0;
    u32 gbaTrainerId;
    PalParkTransfer *transferData = SaveData_PalParkTransfer(param0->unk_10);

    if (sub_0202F0E0(transferData) == 0) {
        if (sub_0202F088(transferData) == 0) {
            return 3;
        }

        if (sub_0202F0BC(transferData) == 0) {
            return 4;
        }

        gbaTrainerId = GetGBAPlayerTrainerId();
        v0 = sub_0202F050(transferData, gbaTrainerId);

        if (v0 == 0) {
            v0 = (60 * 60 * 24) * 2;
        }

        if (v0 < (60 * 60 * 24)) {
            return 2;
        }
    }

    {
        BoxPokemonGBA *boxMonGBA;
        int boxPos, boxNum, count = 0;

        for (boxNum = 0; boxNum < GBA_MAX_PC_BOXES; boxNum++) {
            for (boxPos = 0; boxPos < GBA_MAX_MONS_PER_BOX; boxPos++) {
                boxMonGBA = &param0->unk_E8E0->boxes[boxNum][boxPos];

                if (GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SANITY_HAS_SPECIES, NULL)) {
                    count++;
                }
            }
        }

        if (count < CATCHING_SHOW_MONS) {
            return 5; // Not enough mons in GBA cart to do transfer?
        }
    }

    if (GetPalParkTransferMonCount(transferData) != 0) {
        return 6; // There's transferred mon left to catch?
    }

    return 0;
}

static BOOL ov97_022354C4(UnkStruct_ov97_02234A2C *param0, int param1)
{
    if (param0->unk_04) {
        ov97_02234ECC(param0);
        RenderControlFlags_SetSpeedUpOnTouch(1);
        param0->unk_490.unk_34 = Unk_ov97_0223EAB8[param1];
        param0->unk_490.unk_44 = 1;
        ov97_02233DD0(param0, &param0->unk_490, 0x8 | 0x10);
        param0->unk_04 = 0;
    } else {
        if (Text_IsPrinterActive(param0->unk_490.unk_48) == 0) {
            RenderControlFlags_SetSpeedUpOnTouch(0);
            return 1;
        }
    }

    return 0;
}

static BOOL ov97_02235528(UnkStruct_ov97_02234A2C *param0, int param1)
{
    if (param0->unk_04) {
        ov97_02234ECC(param0);
        RenderControlFlags_SetSpeedUpOnTouch(1);
        param0->unk_490.unk_34 = Unk_ov97_0223EAB8[param1];
        param0->unk_490.unk_44 = 1;
        ov97_02233DD0(param0, &param0->unk_490, 0x8 | 0x10);
        param0->unk_04 = 0;
    } else {
        if (Text_IsPrinterActive(param0->unk_490.unk_48) == 0) {
            ov97_02235310(param0);
            RenderControlFlags_SetSpeedUpOnTouch(0);
            return 1;
        }
    }

    return 0;
}

static BOOL ov97_02235590(UnkStruct_ov97_02234A2C *param0, int param1)
{
    if (param0->unk_08 != -1) {
        ov97_02234ECC(param0);
        RenderControlFlags_SetSpeedUpOnTouch(1);
        param0->unk_490.unk_34 = param0->unk_08;
        param0->unk_490.unk_44 = param1;
        ov97_02233DD0(param0, &param0->unk_490, 0x8 | 0x10);
        param0->unk_08 = -1;
        Sound_PlayEffect(1500);
    } else {
        if (param1) {
            if (Text_IsPrinterActive(param0->unk_490.unk_48) == 0) {
                RenderControlFlags_SetSpeedUpOnTouch(0);
                return 1;
            }
        } else {
            if (gSystem.touchPressed || gSystem.pressedKeys) {
                RenderControlFlags_SetSpeedUpOnTouch(0);
                Sound_PlayEffect(1500);
                return 1;
            }
        }
    }

    return 0;
}

static int ov97_02235624(OverlayManager *param0, int *param1)
{
    UnkStruct_ov97_02234A2C *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_78, 0x38000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov97_02234A2C), HEAP_ID_78);
    memset(v0, 0, sizeof(UnkStruct_ov97_02234A2C));

    v0->unk_20 = BgConfig_New(HEAP_ID_78);
    v0->unk_E8EC = sub_02015920(HEAP_ID_78);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    v0->unk_10 = ((ApplicationArgs *)OverlayManager_Args(param0))->saveData;
    v0->unk_14 = SaveData_GetTrainerInfo(v0->unk_10);
    v0->unk_18 = SaveData_Options(v0->unk_10);
    v0->unk_1C = Options_Frame(v0->unk_18);
    v0->unk_12668 = Strbuf_Init(256, HEAP_ID_78);
    v0->unk_1266C = Strbuf_Init(256, HEAP_ID_78);

    sub_02004550(9, 1174, 1);

    if (OS_IsTickAvailable() == 0) {
        OS_InitTick();
    }

    ov97_02238440();
    Unk_ov97_0223F434 = v0->unk_E8FC;

    return 1;
}

extern int gIgnoreCartridgeForWake;

static int ov97_022356E8(OverlayManager *param0, int *param1)
{
    int v0, v1, v2;
    UnkStruct_ov97_02234A2C *v3 = OverlayManager_Data(param0);

    CTRDG_IsExisting();

    if ((CTRDG_IsPulledOut() == TRUE) || gIgnoreCartridgeForWake) {
        UnkStruct_ov97_02233B8C *v4 = &v3->unk_E8F0;

        if ((v4->unk_00 == 3) || (v4->unk_00 == 4)) {
            SaveData_SaveStateCancel(v3->unk_10);
        }

        sub_0209A8E0(78);
    }

    v3->unk_0C++;

    switch (*param1) {
    case 0:
        ov97_02235DA4();
        v3->unk_50C = ov97_02235D2C(v3->unk_514);

        if (v3->unk_50C == 0) {
            v3->unk_510 = ov97_022360D8();

            if (v3->unk_510 == 0) {
                v3->unk_E8E0 = GetGBAPokemonStorage();
                v3->unk_E8E4 = v3->unk_E8E0->currentBox;
            } else {
                v3->unk_04 = 1;
            }
        } else {
            (void)0;
        }

        ov97_02233B44(v3);
        *param1 = 1;
        break;

    case 1:
        ov97_02234DFC(v3);
        ov97_02233F74();
        ov97_02233FA4(v3);
        ov97_022340B0(v3);
        ov97_0223468C(v3);

        SetVBlankCallback(ov97_022353CC, v3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);

        if (v3->unk_04 == 1) {
            ov97_02234CC4(v3, 1, 11, param1);
        } else {
            *param1 = 2;
        }
        break;
    case 2:
        ov97_02235344(v3);
        ov97_02234CC4(v3, 1, 3, param1);
        break;
    case 3:
        v0 = sub_020159FC(v3->unk_E8EC);

        switch (v0) {
        case 1:
            sub_02015A54(v3->unk_E8EC);
            v3->unk_08 = 34;
            *param1 = 4;
            break;
        case 2:
            sub_02015A54(v3->unk_E8EC);
            ov97_02234CF4(v3, 0, 24, param1);
            break;
        }
        break;
    case 4:
        if (ov97_02235590(v3, 1)) {
            ov97_02235310(v3);
            *param1 = 5;
        }
        break;
    case 5:
        v0 = sub_020159FC(v3->unk_E8EC);

        switch (v0) {
        case 1:
            sub_02015A54(v3->unk_E8EC);

            v3->unk_04 = ov97_02235408(v3);

            if (v3->unk_04) {
                if ((v3->unk_04 == 3) || (v3->unk_04 == 4)) {
                    *param1 = 8;
                } else {
                    *param1 = 11;
                }
            } else {
                v3->unk_08 = 6;
                *param1 = 6;
            }
            break;
        case 2:
            sub_02015A54(v3->unk_E8EC);
            ov97_02234CF4(v3, 0, 24, param1);
            break;
        }
        break;
    case 6:
        if (ov97_02235590(v3, 1)) {
            *param1 = 7;
        }
        break;
    case 7:
        if (gSystem.touchPressed || gSystem.pressedKeys) {
            ov97_02234CC4(v3, 0, 12, param1);
        }
        break;
    case 8:
        if (ov97_02235528(v3, v3->unk_04)) {
            *param1 = 9;
        }
        break;
    case 9:
        v0 = sub_020159FC(v3->unk_E8EC);

        switch (v0) {
        case 1:
            sub_02015A54(v3->unk_E8EC);
            v3->unk_490.unk_44 = 0;
            v3->unk_490.unk_34 = 40;
            ov97_02233DD0(v3, &v3->unk_490, 0);
            v3->unk_E8F0.unk_08 = Window_AddWaitDial(&v3->unk_4FC, (0x3F0 - (18 + 12)));
            *param1 = 10;
            break;
        case 2:
            sub_02015A54(v3->unk_E8EC);
            ov97_02234CF4(v3, 0, 24, param1);
            break;
        }
        break;
    case 10:
        ov97_02233CE4(v3);
        DestroyWaitDial(v3->unk_E8F0.unk_08);
        v3->unk_04 = 7;
        *param1 = 11;
        break;
    case 11:
        if (ov97_022354C4(v3, v3->unk_04)) {
            *param1 = 22;
        }
        break;
    case 12:
        ov97_02235158(&v3->unk_4FC);
        ov97_02234E7C(v3);
        ov97_02234508(v3);
        ov97_022343A8(v3);

        SetVBlankCallback(ov97_022353CC, v3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        ov97_02234B0C(v3, NULL);
        ov97_02234CC4(v3, 1, 13, param1);

        break;
    case 13:
        v0 = TouchScreen_CheckRectanglePressed((const TouchScreenRect *)v3->unk_374);

        if (v0 != 0xffffffff) {
            if (v0 < 30) {
                v1 = ov97_02234854(v3, v0);

                if (v1 == GBA_MON_STATE_1) {
                    ov97_02234B0C(v3, &(v3->unk_E8E0->boxes[v3->unk_E8E4][v0]));

                    if (v3->unk_474 == 6) {
                        v3->unk_E8E8 = 45;
                        *param1 = 15;
                    }
                } else if (v1 == GBA_MON_STATE_2) {
                    ov97_02234B0C(v3, NULL);
                } else if (v1 == GBA_MON_STATE_IS_EGG) {
                    v3->unk_08 = 8;
                    *param1 = 14;
                } else if (v1 == GBA_MON_STATE_HAS_HM) {
                    v3->unk_08 = 9;
                    *param1 = 14;
                } else if (v1 == GBA_MON_STATE_HAS_INVALID_ITEM) {
                    v3->unk_08 = 38;
                    *param1 = 14;
                } else if (v1 == GBA_MON_STATE_IS_INVALID_SPECIES) {
                    v3->unk_08 = 38;
                    *param1 = 14;
                }
            } else {
                switch (v0) {
                case (30 + 1):
                    if (v3->unk_E8E4 == 0) {
                        v3->unk_E8E4 = 14 - 1;
                    } else {
                        v3->unk_E8E4--;
                    }

                    ov97_022343A8(v3);
                    Sound_PlayEffect(1500);
                    break;
                case (30 + 2):
                    if (++v3->unk_E8E4 == 14) {
                        v3->unk_E8E4 = 0;
                    }

                    ov97_022343A8(v3);
                    Sound_PlayEffect(1500);
                    break;
                case (30 + 0):
                    ov97_02234CF4(v3, 0, 24, param1);
                    Sound_PlayEffect(1500);
                    break;
                }
            }
        }
        break;
    case 14:
        if (ov97_02235590(v3, 0)) {
            ov97_02235158(&v3->unk_4FC);
            *param1 = 13;
        }
        break;
    case 15:
        if (--v3->unk_E8E8 == 0) {
            ov97_02234CC4(v3, 0, 16, param1);
        }
        break;
    case 16:
        ov97_02234F88(v3);
        ov97_02234CC4(v3, 1, 17, param1);
        ov97_02235310(v3);

        break;
    case 17:
        v0 = sub_020159FC(v3->unk_E8EC);

        switch (v0) {
        case 1:
            sub_02015A54(v3->unk_E8EC);
            *param1 = 18;
            break;
        case 2:
            sub_02015A54(v3->unk_E8EC);
            ov97_02234CC4(v3, 0, 20, param1);
            break;
        }
        break;
    case 18: {
        UnkStruct_ov97_02233DAC v5;

        v3->unk_490.unk_34 = 11;

        ov97_02233DD0(v3, &v3->unk_490, 0);
        ov97_02235310(v3);

        Sound_PlayEffect(1500);
        *param1 = 19;
    } break;
    case 19:
        v0 = sub_020159FC(v3->unk_E8EC);

        switch (v0) {
        case 1:
            v3->unk_490.unk_34 = Unk_ov97_0223EA68[v3->unk_00];
            ov97_02233DD0(v3, &v3->unk_490, 0);
            sub_02015A54(v3->unk_E8EC);
            v3->unk_E8F0.unk_00 = 0;
            v3->unk_E8F0.unk_08 = Window_AddWaitDial(&v3->unk_4FC, (0x3F0 - (18 + 12)));
            *param1 = 21;
            ResetLock(4);
            break;
        case 2:
            sub_02015A54(v3->unk_E8EC);
            ov97_02234CC4(v3, 0, 20, param1);
            break;
        }
        break;
    case 20:
        ov97_02235178(v3);
        *param1 = 12;
        break;
    case 21:
        v2 = ov97_02233B8C(v3);

        if (v2 != 10) {
            DestroyWaitDial(v3->unk_E8F0.unk_08);
            Sound_PlayEffect(1563);

            if (v2 == 11) {
                v3->unk_490.unk_34 = 29;
            } else {
                v3->unk_490.unk_34 = 36;
            }

            ov97_02233DD0(v3, &v3->unk_490, 0);
            *param1 = 22;
            ResetUnlock(4);
        }
        break;
    case 22:
        if (gSystem.touchPressed || gSystem.pressedKeys) {
            ov97_02234CF4(v3, 0, 24, param1);
            Sound_PlayEffect(1500);
        }
        break;
    case 23:
        if (IsScreenTransitionDone()) {
            *param1 = v3->unk_24;
        }
        break;
    case 24:
        ov97_022351F0(v3);
        return 1;
        break;
    }

    if (v3->unk_28 != NULL) {
        SpriteList_Update(v3->unk_28);
    }

    return 0;
}

static int ov97_02235CC8(OverlayManager *param0, int *param1)
{
    FS_EXTERN_OVERLAY(overlay77);

    UnkStruct_ov97_02234A2C *v0 = OverlayManager_Data(param0);

    Strbuf_Free(v0->unk_12668);
    Strbuf_Free(v0->unk_1266C);
    Heap_FreeToHeap(v0->unk_20);
    EnqueueApplication(FS_OVERLAY_ID(overlay77), &gTitleScreenOverlayTemplate);
    OverlayManager_FreeData(param0);
    Heap_Destroy(HEAP_ID_78);

    ov97_02238400(0);

    return 1;
}

const OverlayManagerTemplate Unk_ov97_0223D864 = {
    ov97_02235624,
    ov97_022356E8,
    ov97_02235CC8,
    0xffffffff
};
