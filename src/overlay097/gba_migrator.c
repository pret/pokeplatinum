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
#include "generated/sdat.h"
#include "generated/text_banks.h"

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

#include "res/text/bank/migrate_from_gba.h"

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
    int messageEntryID;
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
    Sprite *selectionSprite;
    int boxPosition;
    int boxId;
} SelectedMonData;

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
    int gbaVersion;
    int unk_04;
    int messageEntryID;
    int unk_0C;
    SaveData *saveData;
    TrainerInfo *unk_14;
    Options *options;
    int messageBoxFrame;
    BgConfig *bgConfig;
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
    SelectedMonData selectedMonData[CATCHING_SHOW_MONS];
    int selectedCount;
    Sprite *unk_478[6];
    UnkStruct_ov97_02233DAC unk_490;
    Window unk_4DC;
    Window unk_4EC;
    Window unk_4FC;
    int unk_50C;
    int unk_510;
    u32 unk_514[14580];
    PokemonStorageGBA *pokemonStorage;
    int unk_E8E4;
    int unk_E8E8;
    UnkStruct_02015920 *unk_E8EC;
    UnkStruct_ov97_02233B8C unk_E8F0;
    UnkStruct_ov97_0223F434 unk_E8FC[30];
    void (*unk_12664)(void);
    Strbuf *unk_12668;
    Strbuf *unk_1266C;
} GBAMigrator;

static void ov97_02234A2C(GBAMigrator *migrator, int param1);
static void ov97_022349E0(GBAMigrator *migrator);
static void ov97_02234ECC(GBAMigrator *migrator);
static void ov97_02235310(GBAMigrator *migrator);
static void CopySelectedMonToPalParkTransfer(GBAMigrator *migrator);
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

static int sMigrateFromGBAGameMessageIDs[] = {
    NULL,
    [VERSION_SAPPHIRE] = migrate_from_gba_from_sapphire,
    [VERSION_RUBY] = migrate_from_gba_from_ruby,
    [VERSION_EMERALD] = migrate_from_gba_from_emerald,
    [VERSION_FIRERED] = migrate_from_gba_from_firered,
    [VERSION_LEAFGREEN] = migrate_from_gba_from_leafgreen,
};

static int sSavingOnGBAGameAndPlatinumMessageIDs[] = {
    NULL,
    [VERSION_SAPPHIRE] = migrate_from_gba_saving_on_sapphire_and_platinum,
    [VERSION_RUBY] = migrate_from_gba_saving_on_ruby_and_platinum,
    [VERSION_EMERALD] = migrate_from_gba_saving_on_emerald_and_platinum,
    [VERSION_FIRERED] = migrate_from_gba_saving_on_firered_and_platinum,
    [VERSION_LEAFGREEN] = migrate_from_gba_saving_on_leafgreen_and_platinum,
};

static u8 sGBAGameRectPalettes[] = {
    0x0,
    [VERSION_SAPPHIRE] = 0x2,
    [VERSION_RUBY] = 0x1,
    [VERSION_EMERALD] = 0x3,
    [VERSION_FIRERED] = 0x4,
    [VERSION_LEAFGREEN] = 0x5,
};

static int Unk_ov97_0223EAB8[] = {
    NULL,
    migrate_from_gba_error_reading_gba_pak,
    migrate_from_gba_full_day_hasnt_passed,
    migrate_from_gba_internal_clock_altered,
    migrate_from_gba_internal_clock_altered,
    migrate_from_gba_less_than_six,
    migrate_from_gba_game_card_already_stocked,
    migrate_from_gba_game_clock_adjusted,
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

static void ov97_02233B44(GBAMigrator *migrator)
{
    switch (ov97_02235DB0()) {
    case 0:
        migrator->gbaVersion = VERSION_RUBY;
        break;
    case 1:
        migrator->gbaVersion = VERSION_SAPPHIRE;
        break;
    case 2:
        migrator->gbaVersion = VERSION_LEAFGREEN;
        break;
    case 3:
        migrator->gbaVersion = VERSION_FIRERED;
        break;
    case 4:
        migrator->gbaVersion = VERSION_EMERALD;
        break;
    default:
        migrator->gbaVersion = -1;
        break;
    }
}

static int ov97_02233B8C(GBAMigrator *migrator)
{
    int v0;
    u8 v1[16];
    int v2;
    PalParkTransfer *transferData;
    UnkStruct_ov97_02233B8C *v4 = &migrator->unk_E8F0;

    switch (v4->unk_00) {
    case 0:
        CopySelectedMonToPalParkTransfer(migrator);
        transferData = SaveData_PalParkTransfer(migrator->saveData);
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
        SaveData_SaveStateInit(migrator->saveData, 2);
        v4->unk_00++;
        break;
    case 4:
        v2 = SaveData_SaveStateMain(migrator->saveData);

        if (v2 == SAVE_RESULT_CORRUPT) {
            return 12;
        }

        if (v2 == SAVE_RESULT_PROCEED_FINAL) {
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
            v2 = SaveData_SaveStateMain(migrator->saveData);

            if (v2 == SAVE_RESULT_CORRUPT) {
                return 12;
            }
        } while (v2 != SAVE_RESULT_OK);

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

static void ov97_02233CE4(GBAMigrator *migrator)
{
    enum SaveResult result;
    PalParkTransfer *transferData = SaveData_PalParkTransfer(migrator->saveData);

    sub_0202EFB8(transferData, GetGBAPlayerTrainerId());
    ResetLock(4);

    result = SaveData_Save(migrator->saveData);
    ResetUnlock(4);
}

static void CopySelectedMonToPalParkTransfer(GBAMigrator *migrator)
{
    int i, boxNum, boxPos;
    u16 species;
    BoxPokemonGBA *boxMonGBA;
    Pokemon mon;
    PalParkTransfer *transfer = SaveData_PalParkTransfer(migrator->saveData);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(&mon);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        boxPos = migrator->selectedMonData[i].boxPosition;
        boxNum = migrator->selectedMonData[i].boxId;
        boxMonGBA = &migrator->pokemonStorage->boxes[boxNum][boxPos];

        BoxMonGBAToBoxMon(boxMonGBA, boxMon);
        BoxMonToTransferData(transfer, boxMon, i);
    }

    species = SPECIES_NONE;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        boxPos = migrator->selectedMonData[i].boxPosition;
        boxNum = migrator->selectedMonData[i].boxId;

        if ((boxPos != -1) && (boxNum != GBA_MAX_PC_BOXES)) {
            SetGBABoxMonData(&(migrator->pokemonStorage->boxes[boxNum][boxPos]), GBA_MON_DATA_SPECIES, (u8 *)&species);
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

static void ov97_02233DD0(GBAMigrator *migrator, UnkStruct_ov97_02233DAC *param1, int param2)
{
    Strbuf *v0;
    StringTemplate *v1;
    MessageLoader *msgLoader;
    int v3, v4, v5;
    Strbuf *v6;

    if (param1->unk_44 == 0) {
        v5 = TEXT_SPEED_NO_TRANSFER;
    } else {
        v5 = param1->unk_44;
    }

    if (param1->unk_00->bgConfig == NULL) {
        Window_Add(migrator->bgConfig, param1->unk_00, param1->unk_24, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, 15, param1->unk_20);
    }

    if (!(param2 & 0x2)) {
        Window_FillTilemap(param1->unk_00, param1->unk_30);
    }

    if (param1->messageEntryID != -1) {
        msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MIGRATE_FROM_GBA, HEAP_ID_MIGRATE_FROM_GBA);

        if (param1->unk_40) {
            v1 = param1->unk_40;
        } else {
            v1 = StringTemplate_Default(HEAP_ID_MIGRATE_FROM_GBA);
        }

        Strbuf_Clear(migrator->unk_12668);

        v0 = migrator->unk_12668;
        v6 = MessageLoader_GetNewStrbuf(msgLoader, param1->messageEntryID);

        StringTemplate_Format(v1, migrator->unk_12668, v6);
        Strbuf_Free(v6);

        v3 = ov97_02233DAC(param1, v0, param2);
        param1->unk_48 = Text_AddPrinterWithParamsAndColor(param1->unk_00, param1->unk_28, v0, v3, param1->unk_1C, v5, param1->unk_2C, NULL);

        if (param1->unk_40 == NULL) {
            StringTemplate_Free(v1);
        }

        MessageLoader_Free(msgLoader);
        param1->messageEntryID = -1;
    }

    if (param1->unk_38) {
        v0 = migrator->unk_1266C;
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
            .maxTasks = 20,
            .sizeMain = 2048,
            .sizeSub = 2048,
            .heapID = HEAP_ID_MIGRATE_FROM_GBA,
        };

        CharTransfer_Init(&v0);
    }

    PlttTransfer_Init(20, HEAP_ID_MIGRATE_FROM_GBA);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov97_02233FA4(GBAMigrator *migrator)
{
    int i;

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, HEAP_ID_MIGRATE_FROM_GBA);
    migrator->unk_28 = SpriteList_InitRendering(80, &migrator->unk_2C, HEAP_ID_MIGRATE_FROM_GBA);
    SetSubScreenViewRect(&migrator->unk_2C, 0, (256 * FX32_ONE));

    for (i = 0; i < 6; i++) {
        migrator->unk_1B8[i] = SpriteResourceCollection_New(3, i, HEAP_ID_MIGRATE_FROM_GBA);
    }

    migrator->unk_1D0[0] = SpriteResourceCollection_AddTiles(migrator->unk_1B8[0], NARC_INDEX_GRAPHIC__MYSTERY, 26, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_MIGRATE_FROM_GBA);
    migrator->unk_1D0[1] = SpriteResourceCollection_AddPalette(migrator->unk_1B8[1], NARC_INDEX_GRAPHIC__MYSTERY, 23, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, HEAP_ID_MIGRATE_FROM_GBA);
    migrator->unk_1D0[2] = SpriteResourceCollection_Add(migrator->unk_1B8[2], NARC_INDEX_GRAPHIC__MYSTERY, 25, 1, 0, 2, HEAP_ID_MIGRATE_FROM_GBA);
    migrator->unk_1D0[3] = SpriteResourceCollection_Add(migrator->unk_1B8[3], NARC_INDEX_GRAPHIC__MYSTERY, 24, 1, 0, 3, HEAP_ID_MIGRATE_FROM_GBA);

    SpriteTransfer_RequestChar(migrator->unk_1D0[0]);
    SpriteTransfer_RequestPlttWholeRange(migrator->unk_1D0[1]);
    Graphics_LoadPalette(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), 1, 8 * 0x20, 0, HEAP_ID_MIGRATE_FROM_GBA);
}

static void ov97_022340B0(GBAMigrator *migrator)
{
    SpriteResourcesHeader_Init(&migrator->unk_1E8, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, migrator->unk_1B8[0], migrator->unk_1B8[1], migrator->unk_1B8[2], migrator->unk_1B8[3], NULL, NULL);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov97_022340FC(AffineSpriteListTemplate *param0, GBAMigrator *migrator, SpriteResourcesHeader *param2, int param3)
{
    param0->list = migrator->unk_28;
    param0->resourceData = &migrator->unk_1E8;
    param0->position.z = 0;
    param0->affineScale.x = FX32_ONE;
    param0->affineScale.y = FX32_ONE;
    param0->affineScale.z = FX32_ONE;
    param0->affineZRotation = 0;
    param0->priority = 20;
    param0->vramType = param3;
    param0->heapID = HEAP_ID_MIGRATE_FROM_GBA;
}

static int GetGBABoxMonSpeciesInBox(GBAMigrator *migrator, int boxId, int boxPosition)
{
    return GetGBABoxMonData(&(migrator->pokemonStorage->boxes[boxId][boxPosition]), GBA_MON_DATA_SPECIES, NULL);
}

static int IsGBABoxMonEggInBox(GBAMigrator *migrator, int boxId, int boxPosition)
{
    return GetGBABoxMonData(&(migrator->pokemonStorage->boxes[boxId][boxPosition]), GBA_MON_DATA_IS_EGG, NULL);
}

static int GetGBABoxMonPersonalityInBox(GBAMigrator *migrator, int boxId, int boxPosition)
{
    return GetGBABoxMonData(&(migrator->pokemonStorage->boxes[boxId][boxPosition]), GBA_MON_DATA_PERSONALITY, NULL);
}

static void ov97_02234190(TouchScreenRect *rect, int param1, int param2, int param3, int param4)
{
    rect->rect.top = param2 - param4 / 2;
    rect->rect.left = param1 - param3 / 2;
    rect->rect.bottom = param2 + param4 / 2;
    rect->rect.right = param1 + param3 / 2;
}

static void *ov97_022341B4(u32 param0, u32 param1, NNSG2dCharacterData **param2, u32 heapID)
{
    void *v0 = Heap_AllocFromHeapAtEnd(heapID, 4096);

    if (v0 != NULL) {
        NARC_ReadWholeMemberByIndexPair(v0, param0, param1);

        if (NNS_G2dGetUnpackedBGCharacterData(v0, param2) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

static void ov97_022341EC(u32 memberIndex, NNSG2dCharacterData **param1, void *param2, NARC *param3)
{
    NARC_ReadWholeMember(param3, memberIndex, param2);
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
        case VERSION_RUBY:
        case VERSION_SAPPHIRE:
            form = 0;
            break;
        case VERSION_FIRERED:
            form = 1;
            break;
        case VERSION_LEAFGREEN:
            form = 2;
            break;
        case VERSION_EMERALD:
            form = 3;
            break;
        }

        break;
    }

    return form;
}

static void ov97_02234278(int species, int isEgg, u32 personality, int gbaVersion, int param4, Sprite *param5)
{
    u8 *v0;
    u8 form;
    NNSG2dCharacterData *v2;

    species = ConvertGBASpeciesToDS(species);

    form = GetSpeciesGBAForm(species, personality, gbaVersion);
    v0 = ov97_022341B4(19, PokeIconSpriteIndex(species, isEgg, form), &v2, HEAP_ID_MIGRATE_FROM_GBA);

    DC_FlushRange(v2->pRawData, ((4 * 4) * 0x20));
    GX_LoadOBJ(v2->pRawData, (0x64 + param4 * (4 * 4)) * 0x20, ((4 * 4) * 0x20));

    Sprite_SetExplicitPalette(param5, PokeIconPaletteIndex(species, form, isEgg) + 8);
    Heap_FreeToHeap(v0);
}

// speciesGBA is reused to store NDS species
static void ov97_022342E4(int speciesGBA, int isEgg, int form, int param3, Sprite *param4, void *param5, NARC *param6)
{
    u32 spriteIndex;
    NNSG2dCharacterData *v1;
    UnkStruct_ov97_0223F434 *v2 = Unk_ov97_0223F434 + param3;

    if (param4) {
        if (IsGBASpeciesInvalid(speciesGBA) == FALSE) {
            speciesGBA = ConvertGBASpeciesToDS(speciesGBA);
        } else {
            speciesGBA = SPECIES_NONE;
        }

        spriteIndex = PokeIconSpriteIndex(speciesGBA, isEgg, form);

        ov97_022341EC(spriteIndex, &v1, param5, param6);
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

static void ov97_022343A8(GBAMigrator *migrator)
{
    int i, species, isEgg, gbaVersion, form;
    u32 personality;
    void *v6;
    NARC *v7 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_MIGRATE_FROM_GBA);
    v6 = Heap_AllocFromHeapAtEnd(HEAP_ID_MIGRATE_FROM_GBA, 4096);

    for (i = 0; i < GBA_MAX_MONS_PER_BOX; i++) {
        if (GetGBABoxMonData(&(migrator->pokemonStorage->boxes[migrator->unk_E8E4][i]), GBA_MON_DATA_SANITY_HAS_SPECIES, NULL)) {
            species = GetGBABoxMonSpeciesInBox(migrator, migrator->unk_E8E4, i);
            isEgg = IsGBABoxMonEggInBox(migrator, migrator->unk_E8E4, i);
            personality = GetGBABoxMonPersonalityInBox(migrator, migrator->unk_E8E4, i);
            gbaVersion = gSystem.gbaCartridgeVersion;
            form = GetSpeciesGBAForm(ConvertGBASpeciesToDS(species), personality, gbaVersion);

            ov97_022342E4(species, isEgg, form, i, migrator->unk_20C[i].unk_00, v6, v7);
            Sprite_SetDrawFlag(migrator->unk_20C[i].unk_00, TRUE);

            if (GetGBABoxMonData(&(migrator->pokemonStorage->boxes[migrator->unk_E8E4][i]), GBA_MON_DATA_HELD_ITEM, NULL)) {
                Sprite_SetDrawFlag(migrator->unk_20C[i].unk_04, TRUE);
            } else {
                Sprite_SetDrawFlag(migrator->unk_20C[i].unk_04, FALSE);
            }
        } else {
            ov97_022342E4(species, isEgg, form, i, NULL, v6, v7);
            Sprite_SetDrawFlag(migrator->unk_20C[i].unk_00, FALSE);
            Sprite_SetDrawFlag(migrator->unk_20C[i].unk_04, FALSE);
        }
    }

    Heap_FreeToHeap(v6);
    NARC_dtor(v7);

    migrator->unk_12664 = ov97_02234364;

    ov97_02234A2C(migrator, migrator->unk_E8E4);
    ov97_022349E0(migrator);
}

static void ov97_02234508(GBAMigrator *migrator)
{
    int v0, v1, v2;
    AffineSpriteListTemplate v3;

    ov97_022340FC(&v3, migrator, &migrator->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0 = 0;

    for (v2 = 0; v2 < 5; v2++) {
        for (v1 = 0; v1 < 6; v1++) {
            ov97_02234190(&migrator->unk_374[v0], v1 * 40 + 28, v2 * 24 + 40, 28, 28);

            v3.position.x = FX32_ONE * (v1 * 40 + 28);
            v3.position.y = FX32_ONE * (v2 * 24 + 40);

            if (migrator->unk_20C[v0].unk_00 == NULL) {
                migrator->unk_20C[v0].unk_00 = SpriteList_AddAffine(&v3);
            }

            Sprite_SetAnimateFlag(migrator->unk_20C[v0].unk_00, 1);
            Sprite_SetAnim(migrator->unk_20C[v0].unk_00, 10 + v0);
            Sprite_SetExplicitPriority(migrator->unk_20C[v0].unk_00, 1);
            Sprite_SetDrawFlag(migrator->unk_20C[v0].unk_00, TRUE);
            Sprite_SetPriority(migrator->unk_20C[v0].unk_00, 100 + v0);

            v3.position.x += FX32_ONE * 6;
            v3.position.y += FX32_ONE * 12;

            if (migrator->unk_20C[v0].unk_04 == NULL) {
                migrator->unk_20C[v0].unk_04 = SpriteList_AddAffine(&v3);
            }

            Sprite_SetAnimateFlag(migrator->unk_20C[v0].unk_04, 1);
            Sprite_SetAnim(migrator->unk_20C[v0].unk_04, 40);
            Sprite_SetExplicitPriority(migrator->unk_20C[v0].unk_04, 1);
            Sprite_SetDrawFlag(migrator->unk_20C[v0].unk_04, FALSE);
            Sprite_SetPriority(migrator->unk_20C[v0].unk_04, 0 + v0);

            v0++;

            if (v0 == 30) {
                return;
            }
        }
    }
}

static Sprite *ov97_02234638(GBAMigrator *migrator, int param1, int param2, int param3, int param4)
{
    AffineSpriteListTemplate v0;
    Sprite *v1;

    ov97_022340FC(&v0, migrator, &migrator->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

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

static void ov97_0223468C(GBAMigrator *migrator)
{
    int i;

    ov97_02234190(&migrator->unk_374[(30 + 0)], 228, 176, 50, 32);
    migrator->unk_3FC[0] = ov97_02234638(migrator, 228, 176, 6, 1);

    ov97_02234190(&migrator->unk_374[(30 + 2)], 176, 176, 32, 32);
    migrator->unk_40C[0] = ov97_02234638(migrator, 176, 176, 3, 1);

    ov97_02234190(&migrator->unk_374[(30 + 1)], 24, 176, 32, 32);
    migrator->unk_41C[0] = ov97_02234638(migrator, 24, 176, 0, 1);
    migrator->unk_374[(30 + 3)].rect.top = 0xff;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        migrator->selectedMonData[i].selectionSprite = ov97_02234638(migrator, 36 * i, 64, 9, 0);
        migrator->selectedMonData[i].boxPosition = -1;
        migrator->selectedMonData[i].boxId = GBA_MAX_PC_BOXES;
    }

    migrator->selectedCount = 0;
}

static BOOL BoxMonGBAIsEgg(GBAMigrator *migrator, int boxPosition)
{
    BoxPokemonGBA *boxMonGBA = &migrator->pokemonStorage->boxes[migrator->unk_E8E4][boxPosition];

    if (GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SPECIES_OR_EGG, NULL) == GBA_SPECIES_EGG) {
        return TRUE;
    }

    return FALSE;
}

static BOOL BoxMonGBAHasHM(GBAMigrator *migrator, int boxPosition)
{
    int i, j, move;
    BoxPokemonGBA *boxMon = &migrator->pokemonStorage->boxes[migrator->unk_E8E4][boxPosition];

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

static BOOL BoxMonGBAHasInvalidItem(GBAMigrator *migrator, int boxPosition)
{
    BoxPokemonGBA *boxMonGBA = &migrator->pokemonStorage->boxes[migrator->unk_E8E4][boxPosition];
    int item = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_HELD_ITEM, NULL);
    int i;

    for (i = 0; sInvalidGBAItems[i] != ITEM_NONE; i++) {
        if (item == sInvalidGBAItems[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL IsBoxMonGBAInvalidSpecies(GBAMigrator *migrator, int boxPosition)
{
    BoxPokemonGBA *boxMonGBA = &migrator->pokemonStorage->boxes[migrator->unk_E8E4][boxPosition];
    int species = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SPECIES, NULL);

    return IsGBASpeciesInvalid(species);
}

static int ov97_02234854(GBAMigrator *migrator, int boxPosition)
{
    int i, v1;

    if (migrator->unk_20C[boxPosition].unk_00 && (Sprite_GetDrawFlag(migrator->unk_20C[boxPosition].unk_00) == 0)) {
        return GBA_MON_STATE_3;
    }

    for (v1 = -1, i = 0; v1 == -1 && i < CATCHING_SHOW_MONS; i++) {
        if ((migrator->selectedMonData[i].boxId == migrator->unk_E8E4) && (migrator->selectedMonData[i].boxPosition == boxPosition)) {
            v1 = i;
        }
    }

    if (BoxMonGBAIsEgg(migrator, boxPosition) == TRUE) {
        return GBA_MON_STATE_IS_EGG;
    }

    if (BoxMonGBAHasHM(migrator, boxPosition) == TRUE) {
        return GBA_MON_STATE_HAS_HM;
    }

    if (BoxMonGBAHasInvalidItem(migrator, boxPosition) == TRUE) {
        return GBA_MON_STATE_HAS_INVALID_ITEM;
    }

    if (IsBoxMonGBAInvalidSpecies(migrator, boxPosition) == TRUE) {
        return GBA_MON_STATE_IS_INVALID_SPECIES;
    }

    if (v1 == -1) {
        const VecFx32 *v2;
        VecFx32 v3;

        if (migrator->selectedCount == CATCHING_SHOW_MONS) {
            return GBA_MON_STATE_0;
        }

        for (i = 0; i < CATCHING_SHOW_MONS; i++) {
            if (migrator->selectedMonData[i].boxPosition == -1) {
                v2 = Sprite_GetPosition(migrator->unk_20C[boxPosition].unk_00);
                Sprite_SetPosition(migrator->selectedMonData[i].selectionSprite, v2);
                v2 = Sprite_GetPosition(migrator->selectedMonData[i].selectionSprite);

                v3 = *v2;
                v3.x -= FX32_ONE * 8;
                v3.y -= FX32_ONE * 4;

                Sprite_SetPosition(migrator->selectedMonData[i].selectionSprite, &v3);
                Sprite_SetDrawFlag(migrator->selectedMonData[i].selectionSprite, TRUE);

                migrator->selectedMonData[i].boxPosition = boxPosition;
                migrator->selectedMonData[i].boxId = migrator->unk_E8E4;
                migrator->selectedCount++;

                return GBA_MON_STATE_1;
            }
        }
    } else {
        Sprite_SetDrawFlag(migrator->selectedMonData[v1].selectionSprite, FALSE);

        migrator->selectedMonData[v1].boxPosition = -1;
        migrator->selectedCount--;

        return GBA_MON_STATE_2;
    }

    return GBA_MON_STATE_0;
}

static void ov97_022349E0(GBAMigrator *migrator)
{
    int i;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        if ((migrator->selectedMonData[i].boxPosition != -1) && (migrator->selectedMonData[i].boxId == migrator->unk_E8E4)) {
            Sprite_SetDrawFlag(migrator->selectedMonData[i].selectionSprite, TRUE);
        } else {
            Sprite_SetDrawFlag(migrator->selectedMonData[i].selectionSprite, FALSE);
        }
    }
}

static void ov97_02234A2C(GBAMigrator *migrator, int param1)
{
    UnkStruct_ov97_02233DAC v0;
    u16 boxName[GBA_BOX_NAME_LEN + 1];

    memset(&v0, 0, sizeof(UnkStruct_ov97_02233DAC));

    v0.unk_00 = &migrator->unk_4DC;
    v0.unk_08 = 6;
    v0.unk_0C = 21;
    v0.unk_10 = 13;
    v0.unk_14 = 2;
    v0.messageEntryID = -1;
    v0.unk_18 = 0;
    v0.unk_1C = 0;
    v0.unk_24 = 1;
    v0.unk_28 = 1;
    v0.unk_2C = TEXT_COLOR(1, 2, 0);
    v0.unk_20 = 0xA0;

    GBAStringToDSString(migrator->pokemonStorage->boxNames[param1], boxName, GBA_BOX_NAME_LEN + 1, GBACart_GetLanguage());
    v0.unk_38 = boxName;
    ov97_02233DD0(migrator, &v0, 0x1);
}

static void ov97_02234AB4(GBAMigrator *migrator, BoxPokemonGBA *boxMonGBA)
{
    u16 *v0 = Bg_GetTilemapBuffer(migrator->bgConfig, 2);
    u8 v1;
    int i;

    if (boxMonGBA != NULL) {
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

    Bg_CopyTilemapBufferToVRAM(migrator->bgConfig, 2);
}

static void ov97_02234B0C(GBAMigrator *migrator, BoxPokemonGBA *boxMonGBA)
{
    int species, level;
    int gbaItemID, itemID;
    UnkStruct_ov97_02233DAC v4;
    MessageLoader *msgLoader;
    u8 gbaNickname[GBA_MON_NAME_LEN + 1];
    u16 dsNickname[MON_NAME_LEN + 1];
    Strbuf *strBuf;

    memset(&v4, 0, sizeof(UnkStruct_ov97_02233DAC));

    v4.unk_00 = &migrator->unk_4EC;
    v4.unk_08 = 0;
    v4.unk_0C = 0;
    v4.unk_10 = 32;
    v4.unk_14 = 4;
    v4.unk_24 = 1;
    v4.unk_28 = 1;
    v4.unk_20 = (14 * 2 + 0xA0);
    v4.unk_2C = TEXT_COLOR(15, 2, 0);
    v4.unk_38 = NULL;

    v4.messageEntryID = migrate_from_gba_item;
    v4.unk_18 = 18 * 8;
    v4.unk_1C = 0;

    ov97_02233DD0(migrator, &v4, 0x4);

    v4.messageEntryID = migrate_from_gba_level;
    v4.unk_18 = 10 * 8;
    v4.unk_1C = 8;

    ov97_02233DD0(migrator, &v4, 0x4 | 0x2);
    ov97_02234AB4(migrator, boxMonGBA);

    if (boxMonGBA == NULL) {
        Window_CopyToVRAM(v4.unk_00);
        return;
    }

    GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_NICKNAME, gbaNickname);
    GBAStringToDSString(gbaNickname, dsNickname, GBA_MON_NAME_LEN + 1, GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_LANGUAGE, NULL));

    v4.unk_38 = dsNickname;
    v4.messageEntryID = -1;
    v4.unk_18 = 1 * 8;
    v4.unk_1C = 0;

    ov97_02233DD0(migrator, &v4, 0x4 | 0x2);

    strBuf = Strbuf_Init(64, HEAP_ID_MIGRATE_FROM_GBA);
    msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_MIGRATE_FROM_GBA);
    species = ConvertGBASpeciesToDS(GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_SPECIES, NULL));

    MessageLoader_GetStrbuf(msgLoader, species, strBuf);

    v4.unk_3C = strBuf;
    v4.messageEntryID = -1;
    v4.unk_18 = 2 * 8;
    v4.unk_1C = 2 * 8;

    ov97_02233DD0(migrator, &v4, 0x4 | 0x2);

    MessageLoader_Free(msgLoader);
    Strbuf_Free(strBuf);

    gbaItemID = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_HELD_ITEM, NULL);

    if (gbaItemID) {
        itemID = Item_FromGBAID(gbaItemID);
        strBuf = Strbuf_Init(64, HEAP_ID_MIGRATE_FROM_GBA);

        Item_LoadName(strBuf, itemID, HEAP_ID_MIGRATE_FROM_GBA);

        v4.unk_3C = strBuf;
        v4.messageEntryID = -1;
        v4.unk_18 = 19 * 8;
        v4.unk_1C = 2 * 8;

        ov97_02233DD0(migrator, &v4, 0x4 | 0x2);
        Strbuf_Free(strBuf);
    }

    level = GetBoxMonGBALevel(boxMonGBA);
    strBuf = Strbuf_Init(10, HEAP_ID_MIGRATE_FROM_GBA);

    Strbuf_FormatInt(strBuf, level, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);

    v4.unk_3C = strBuf;
    v4.messageEntryID = -1;
    v4.unk_18 = 12 * 8 + 4;
    v4.unk_1C = 1 * 8;

    ov97_02233DD0(migrator, &v4, 0x2);

    Strbuf_Free(strBuf);
    sub_02005844(species, 0);
}

static void ov97_02234CC4(GBAMigrator *migrator, int param1, int param2, int *param3)
{
    StartScreenTransition(0, param1, param1, 0x0, 6, 1, HEAP_ID_MIGRATE_FROM_GBA);

    if (param3) {
        *param3 = 23;
    }

    migrator->unk_24 = param2;
}

static void ov97_02234CF4(GBAMigrator *migrator, int param1, int param2, int *param3)
{
    StartScreenTransition(0, param1, param1, 0x7fff, 6, 1, HEAP_ID_MIGRATE_FROM_GBA);

    if (param3) {
        *param3 = 23;
    }

    migrator->unk_24 = param2;
}

static void ov97_02234D28(BgConfig *bgConfig)
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
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = 1,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .dummy = 0,
            .mosaic = 0,
        };

        Bg_InitFromTemplate(bgConfig, 0, &v1, 0);
        Bg_ClearTilemap(bgConfig, 0);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = 1,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .dummy = 0,
            .mosaic = 0,
        };

        Bg_InitFromTemplate(bgConfig, 1, &v2, 0);
        Bg_ClearTilemap(bgConfig, 1);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = 1,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 2,
            .areaOver = 0,
            .dummy = 0,
            .mosaic = 0,
        };

        Bg_InitFromTemplate(bgConfig, 2, &v3, 0);
        Bg_ClearTilemap(bgConfig, 2);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = 1,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .dummy = 0,
            .mosaic = 0,
        };

        Bg_InitFromTemplate(bgConfig, 3, &v4, 0);
        Bg_ClearTilemap(bgConfig, 3);
    }
}

static void ov97_02234DFC(GBAMigrator *migrator)
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
    ov97_02234D28(migrator->bgConfig);

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;

    GXLayers_SwapDisplay();
    Text_ResetAllPrinters();

    Font_LoadTextPalette(0, 15 * 32, HEAP_ID_MIGRATE_FROM_GBA);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, 19, 0, 0, 32 * 6, HEAP_ID_MIGRATE_FROM_GBA);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 22, migrator->bgConfig, 2, 0, 10 * 16 * 0x20, 1, HEAP_ID_MIGRATE_FROM_GBA);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_MIGRATE_FROM_GBA);
}

static void ov97_02234E7C(GBAMigrator *migrator)
{
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 20, migrator->bgConfig, 2, 0, 32 * 24 * 2, 1, HEAP_ID_MIGRATE_FROM_GBA);
    Bg_ChangeTilemapRectPalette(migrator->bgConfig, 2, 0, 0, 32, 24, sGBAGameRectPalettes[migrator->gbaVersion]);
    Bg_CopyTilemapBufferToVRAM(migrator->bgConfig, 2);
}

static void ov97_02234ECC(GBAMigrator *migrator)
{
    Font_LoadTextPalette(0, 14 * 32, HEAP_ID_MIGRATE_FROM_GBA);
    LoadStandardWindowGraphics(migrator->bgConfig, 0, 0x3F0, 14, 0, HEAP_ID_MIGRATE_FROM_GBA);
    LoadMessageBoxGraphics(migrator->bgConfig, 0, (0x3F0 - (18 + 12)), 13, migrator->messageBoxFrame, HEAP_ID_MIGRATE_FROM_GBA);

    memset(&migrator->unk_490, 0, sizeof(UnkStruct_ov97_02233DAC));

    migrator->unk_490.unk_00 = &migrator->unk_4FC;
    migrator->unk_490.unk_08 = 2;
    migrator->unk_490.unk_0C = 1;
    migrator->unk_490.unk_10 = 27;
    migrator->unk_490.unk_14 = 4;
    migrator->unk_490.unk_24 = 0;
    migrator->unk_490.unk_28 = 1;
    migrator->unk_490.unk_20 = 0 + 1;
    migrator->unk_490.unk_2C = TEXT_COLOR(1, 2, 15);
    migrator->unk_490.unk_30 = TEXT_COLOR(15, 2, 15);
    migrator->unk_490.unk_38 = NULL;
    migrator->unk_490.unk_3C = NULL;
}

static void ov97_02234F88(GBAMigrator *migrator)
{
    int i, species, isEgg, gbaVersion;
    u32 personality;
    AffineSpriteListTemplate v5;

    for (i = 0; i < 30; i++) {
        Sprite_SetDrawFlag(migrator->unk_20C[i].unk_00, FALSE);
        Sprite_SetDrawFlag(migrator->unk_20C[i].unk_04, FALSE);
    }

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        Sprite_SetDrawFlag(migrator->selectedMonData[i].selectionSprite, FALSE);
    }

    Sprite_SetDrawFlag(migrator->unk_3FC[0], FALSE);
    Sprite_SetDrawFlag(migrator->unk_41C[0], FALSE);
    Sprite_SetDrawFlag(migrator->unk_40C[0], FALSE);

    ov97_022340FC(&v5, migrator, &migrator->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        v5.position.x = FX32_ONE * (i * 40 + 28);
        v5.position.y = FX32_ONE * 142;

        migrator->unk_478[i] = SpriteList_AddAffine(&v5);

        Sprite_SetAnimateFlag(migrator->unk_478[i], 1);
        Sprite_SetAnim(migrator->unk_478[i], 10 + i);
        Sprite_SetExplicitPriority(migrator->unk_478[i], 1);
        Sprite_SetDrawFlag(migrator->unk_478[i], TRUE);

        species = GetGBABoxMonSpeciesInBox(migrator, migrator->selectedMonData[i].boxId, migrator->selectedMonData[i].boxPosition);
        isEgg = IsGBABoxMonEggInBox(migrator, migrator->selectedMonData[i].boxId, migrator->selectedMonData[i].boxPosition);
        personality = GetGBABoxMonPersonalityInBox(migrator, migrator->selectedMonData[i].boxId, migrator->selectedMonData[i].boxPosition);
        gbaVersion = gSystem.gbaCartridgeVersion;

        ov97_02234278(species, isEgg, personality, gbaVersion, i, migrator->unk_478[i]);
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 21, migrator->bgConfig, 2, 0, 32 * 24 * 2, 1, HEAP_ID_MIGRATE_FROM_GBA);
    Bg_ChangeTilemapRectPalette(migrator->bgConfig, 2, 0, 0, 32, 24, sGBAGameRectPalettes[migrator->gbaVersion]);
    Bg_CopyTilemapBufferToVRAM(migrator->bgConfig, 2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Font_LoadTextPalette(0, 14 * 32, HEAP_ID_MIGRATE_FROM_GBA);
    LoadStandardWindowGraphics(migrator->bgConfig, 0, 0x3F0, 14, 0, HEAP_ID_MIGRATE_FROM_GBA);
    LoadMessageBoxGraphics(migrator->bgConfig, 0, (0x3F0 - (18 + 12)), 13, migrator->messageBoxFrame, HEAP_ID_MIGRATE_FROM_GBA);

    ov97_02234ECC(migrator);
    migrator->unk_490.messageEntryID = migrate_from_gba_six_chosen_will_migrate;
    ov97_02233DD0(migrator, &migrator->unk_490, 0x8 | 0x10);
}

static void ov97_02235158(Window *param0)
{
    if (param0->bgConfig != NULL) {
        Window_EraseMessageBox(param0, 0);
        Window_ClearAndCopyToVRAM(param0);
        Window_Remove(param0);
    }
}

static void ov97_02235178(GBAMigrator *migrator)
{
    int i;

    for (i = 0; i < 6; i++) {
        Sprite_Delete(migrator->unk_478[i]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    ov97_02235158(&migrator->unk_4FC);

    Sprite_SetDrawFlag(migrator->unk_3FC[0], TRUE);
    Sprite_SetDrawFlag(migrator->unk_41C[0], TRUE);
    Sprite_SetDrawFlag(migrator->unk_40C[0], TRUE);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        migrator->selectedMonData[i].boxPosition = -1;
        migrator->selectedMonData[i].boxId = GBA_MAX_PC_BOXES;
    }

    migrator->selectedCount = 0;
}

static void ov97_022351F0(GBAMigrator *migrator)
{
    int i;

    SetVBlankCallback(NULL, NULL);

    for (i = 0; i < 30; i++) {
        if (migrator->unk_20C[i].unk_00) {
            Sprite_Delete(migrator->unk_20C[i].unk_00);
        }

        if (migrator->unk_20C[i].unk_04) {
            Sprite_Delete(migrator->unk_20C[i].unk_04);
        }
    }

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        if (migrator->selectedMonData[i].selectionSprite) {
            Sprite_Delete(migrator->selectedMonData[i].selectionSprite);
        }
    }

    if (migrator->unk_3FC[0]) {
        Sprite_Delete(migrator->unk_3FC[0]);
    }

    if (migrator->unk_41C[0]) {
        Sprite_Delete(migrator->unk_41C[0]);
    }

    if (migrator->unk_40C[0]) {
        Sprite_Delete(migrator->unk_40C[0]);
    }

    ov97_02235158(&migrator->unk_4DC);
    ov97_02235158(&migrator->unk_4EC);
    ov97_02235158(&migrator->unk_4FC);

    Font_Free(FONT_SUBSCREEN);
    SpriteTransfer_ResetCharTransfer(migrator->unk_1D0[0]);
    SpriteTransfer_ResetPlttTransfer(migrator->unk_1D0[1]);

    for (i = 0; i < 6; i++) {
        SpriteResourceCollection_Delete(migrator->unk_1B8[i]);
    }

    SpriteList_Delete(migrator->unk_28);
    migrator->unk_28 = NULL;

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    sub_02015938(migrator->unk_E8EC);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();

    Bg_FreeTilemapBuffer(migrator->bgConfig, 0);
    Bg_FreeTilemapBuffer(migrator->bgConfig, 1);
    Bg_FreeTilemapBuffer(migrator->bgConfig, 2);
    Bg_FreeTilemapBuffer(migrator->bgConfig, 3);
}

static void ov97_02235310(GBAMigrator *migrator)
{
    UnkStruct_02015958 v0;

    v0.unk_00 = migrator->bgConfig;
    v0.unk_04 = 0;
    v0.unk_08 = 512;
    v0.unk_0C = 8;
    v0.unk_10 = 25;
    v0.unk_11 = 7;

    sub_02015958(migrator->unk_E8EC, &v0);
}

static void ov97_02235344(GBAMigrator *migrator)
{
    UnkStruct_ov97_02233DAC v0;
    StringTemplate *strTemplate;
    Strbuf *strBuf;
    u16 playerName[GBA_PLAYER_NAME_LEN + 1];

    GBAStringToDSString(GetGBAPlayerName(), playerName, GBA_PLAYER_NAME_LEN + 1, GBACart_GetLanguage());

    strTemplate = StringTemplate_Default(HEAP_ID_MIGRATE_FROM_GBA);
    strBuf = Strbuf_Init(GBA_PLAYER_NAME_LEN + 1, HEAP_ID_MIGRATE_FROM_GBA);

    Strbuf_CopyChars(strBuf, playerName);
    StringTemplate_SetStrbuf(strTemplate, 1, strBuf, 0, 1, GAME_LANGUAGE);

    ov97_02234ECC(migrator);

    migrator->unk_490.messageEntryID = sMigrateFromGBAGameMessageIDs[migrator->gbaVersion];
    migrator->unk_490.unk_40 = strTemplate;

    ov97_02233DD0(migrator, &migrator->unk_490, 0x8 | 0x10);

    Strbuf_Free(strBuf);
    StringTemplate_Free(strTemplate);

    ov97_02235310(migrator);
}

static void ov97_022353CC(void *param0)
{
    GBAMigrator *v0 = (GBAMigrator *)param0;

    if (v0->unk_12664) {
        v0->unk_12664();
        v0->unk_12664 = NULL;
    }

    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates(v0->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

// Validation for Pal Park?
static int ov97_02235408(GBAMigrator *migrator)
{
    int v0;
    u32 gbaTrainerId;
    PalParkTransfer *transferData = SaveData_PalParkTransfer(migrator->saveData);

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
                boxMonGBA = &migrator->pokemonStorage->boxes[boxNum][boxPos];

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

static BOOL ov97_022354C4(GBAMigrator *migrator, int param1)
{
    if (migrator->unk_04) {
        ov97_02234ECC(migrator);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
        migrator->unk_490.messageEntryID = Unk_ov97_0223EAB8[param1];
        migrator->unk_490.unk_44 = 1;
        ov97_02233DD0(migrator, &migrator->unk_490, 0x8 | 0x10);
        migrator->unk_04 = 0;
    } else {
        if (Text_IsPrinterActive(migrator->unk_490.unk_48) == 0) {
            RenderControlFlags_SetSpeedUpOnTouch(FALSE);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL ov97_02235528(GBAMigrator *migrator, int param1)
{
    if (migrator->unk_04) {
        ov97_02234ECC(migrator);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
        migrator->unk_490.messageEntryID = Unk_ov97_0223EAB8[param1];
        migrator->unk_490.unk_44 = 1;
        ov97_02233DD0(migrator, &migrator->unk_490, 0x8 | 0x10);
        migrator->unk_04 = 0;
    } else {
        if (Text_IsPrinterActive(migrator->unk_490.unk_48) == 0) {
            ov97_02235310(migrator);
            RenderControlFlags_SetSpeedUpOnTouch(FALSE);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL ov97_02235590(GBAMigrator *migrator, int param1)
{
    if (migrator->messageEntryID != -1) {
        ov97_02234ECC(migrator);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
        migrator->unk_490.messageEntryID = migrator->messageEntryID;
        migrator->unk_490.unk_44 = param1;
        ov97_02233DD0(migrator, &migrator->unk_490, 0x8 | 0x10);
        migrator->messageEntryID = -1;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else {
        if (param1) {
            if (Text_IsPrinterActive(migrator->unk_490.unk_48) == 0) {
                RenderControlFlags_SetSpeedUpOnTouch(FALSE);
                return TRUE;
            }
        } else {
            if (gSystem.touchPressed || gSystem.pressedKeys) {
                RenderControlFlags_SetSpeedUpOnTouch(FALSE);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static int ov97_02235624(OverlayManager *param0, int *param1)
{
    GBAMigrator *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MIGRATE_FROM_GBA, HEAP_SIZE_MIGRATE_FROM_GBA);

    v0 = OverlayManager_NewData(param0, sizeof(GBAMigrator), HEAP_ID_MIGRATE_FROM_GBA);
    memset(v0, 0, sizeof(GBAMigrator));

    v0->bgConfig = BgConfig_New(HEAP_ID_MIGRATE_FROM_GBA);
    v0->unk_E8EC = sub_02015920(HEAP_ID_MIGRATE_FROM_GBA);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    v0->saveData = ((ApplicationArgs *)OverlayManager_Args(param0))->saveData;
    v0->unk_14 = SaveData_GetTrainerInfo(v0->saveData);
    v0->options = SaveData_Options(v0->saveData);
    v0->messageBoxFrame = Options_Frame(v0->options);
    v0->unk_12668 = Strbuf_Init(256, HEAP_ID_MIGRATE_FROM_GBA);
    v0->unk_1266C = Strbuf_Init(256, HEAP_ID_MIGRATE_FROM_GBA);

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
    int boxPos, gbaMonValidity, v2;
    GBAMigrator *v3 = OverlayManager_Data(param0);

    CTRDG_IsExisting();

    if ((CTRDG_IsPulledOut() == TRUE) || gIgnoreCartridgeForWake) {
        UnkStruct_ov97_02233B8C *v4 = &v3->unk_E8F0;

        if ((v4->unk_00 == 3) || (v4->unk_00 == 4)) {
            SaveData_SaveStateCancel(v3->saveData);
        }

        sub_0209A8E0(HEAP_ID_MIGRATE_FROM_GBA);
    }

    v3->unk_0C++;

    switch (*param1) {
    case 0:
        ov97_02235DA4();
        v3->unk_50C = ov97_02235D2C(v3->unk_514);

        if (v3->unk_50C == 0) {
            v3->unk_510 = ov97_022360D8();

            if (v3->unk_510 == 0) {
                v3->pokemonStorage = GetGBAPokemonStorage();
                v3->unk_E8E4 = v3->pokemonStorage->currentBox;
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
        boxPos = sub_020159FC(v3->unk_E8EC);

        switch (boxPos) {
        case 1:
            sub_02015A54(v3->unk_E8EC);
            v3->messageEntryID = migrate_from_gba_cannot_return_to_gba_migrate_to_platinum;
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
        boxPos = sub_020159FC(v3->unk_E8EC);

        switch (boxPos) {
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
                v3->messageEntryID = migrate_from_gba_please_choose_six;
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
        boxPos = sub_020159FC(v3->unk_E8EC);

        switch (boxPos) {
        case 1:
            sub_02015A54(v3->unk_E8EC);
            v3->unk_490.unk_44 = 0;
            v3->unk_490.messageEntryID = migrate_from_gba_making_adjustments;
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
        boxPos = TouchScreen_CheckRectanglePressed((const TouchScreenRect *)v3->unk_374);

        if (boxPos != 0xffffffff) {
            if (boxPos < GBA_MAX_MONS_PER_BOX) {
                gbaMonValidity = ov97_02234854(v3, boxPos);

                if (gbaMonValidity == GBA_MON_STATE_1) {
                    ov97_02234B0C(v3, &(v3->pokemonStorage->boxes[v3->unk_E8E4][boxPos]));

                    if (v3->selectedCount == CATCHING_SHOW_MONS) {
                        v3->unk_E8E8 = 45;
                        *param1 = 15;
                    }
                } else if (gbaMonValidity == GBA_MON_STATE_2) {
                    ov97_02234B0C(v3, NULL);
                } else if (gbaMonValidity == GBA_MON_STATE_IS_EGG) {
                    v3->messageEntryID = migrate_from_gba_egg_cannot_migrate;
                    *param1 = 14;
                } else if (gbaMonValidity == GBA_MON_STATE_HAS_HM) {
                    v3->messageEntryID = migrate_from_gba_knows_hidden_move;
                    *param1 = 14;
                } else if (gbaMonValidity == GBA_MON_STATE_HAS_INVALID_ITEM) {
                    v3->messageEntryID = migrate_from_gba_mon_not_permitted_to_migrate;
                    *param1 = 14;
                } else if (gbaMonValidity == GBA_MON_STATE_IS_INVALID_SPECIES) {
                    v3->messageEntryID = migrate_from_gba_mon_not_permitted_to_migrate;
                    *param1 = 14;
                }
            } else {
                switch (boxPos) {
                case (30 + 1):
                    if (v3->unk_E8E4 == 0) {
                        v3->unk_E8E4 = 14 - 1;
                    } else {
                        v3->unk_E8E4--;
                    }

                    ov97_022343A8(v3);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    break;
                case (30 + 2):
                    if (++v3->unk_E8E4 == 14) {
                        v3->unk_E8E4 = 0;
                    }

                    ov97_022343A8(v3);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    break;
                case (30 + 0):
                    ov97_02234CF4(v3, 0, 24, param1);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
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
        boxPos = sub_020159FC(v3->unk_E8EC);

        switch (boxPos) {
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

        v3->unk_490.messageEntryID = migrate_from_gba_cannot_return_to_gba;

        ov97_02233DD0(v3, &v3->unk_490, 0);
        ov97_02235310(v3);

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *param1 = 19;
    } break;
    case 19:
        boxPos = sub_020159FC(v3->unk_E8EC);

        switch (boxPos) {
        case 1:
            v3->unk_490.messageEntryID = sSavingOnGBAGameAndPlatinumMessageIDs[v3->gbaVersion];
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
            Sound_PlayEffect(SEQ_SE_DP_SAVE);

            if (v2 == 11) {
                v3->unk_490.messageEntryID = migrate_from_gba_safely_migrated_to_platinum;
            } else {
                v3->unk_490.messageEntryID = migrate_from_gba_save_failed;
            }

            ov97_02233DD0(v3, &v3->unk_490, 0);
            *param1 = 22;
            ResetUnlock(4);
        }
        break;
    case 22:
        if (gSystem.touchPressed || gSystem.pressedKeys) {
            ov97_02234CF4(v3, 0, 24, param1);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
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

    GBAMigrator *v0 = OverlayManager_Data(param0);

    Strbuf_Free(v0->unk_12668);
    Strbuf_Free(v0->unk_1266C);
    Heap_FreeToHeap(v0->bgConfig);
    EnqueueApplication(FS_OVERLAY_ID(overlay77), &gTitleScreenOverlayTemplate);
    OverlayManager_FreeData(param0);
    Heap_Destroy(HEAP_ID_MIGRATE_FROM_GBA);

    ov97_02238400(FALSE);

    return 1;
}

const OverlayManagerTemplate Unk_ov97_0223D864 = {
    ov97_02235624,
    ov97_022356E8,
    ov97_02235CC8,
    0xffffffff
};
