#include <nitro.h>
#include <string.h>

#include "constants/gba/species.h"
#include "constants/species.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay077/const_ov77_021D742C.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/box_pokemon_gba.h"
#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_0223635C.h"
#include "overlay097/ov97_02236380.h"
#include "overlay097/ov97_02237694.h"
#include "overlay097/ov97_022392E4.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay097/struct_ov97_02236340.h"
#include "savedata/save_table.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_02000C88.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015920.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202EEC0.h"
#include "unk_0209A74C.h"

FS_EXTERN_OVERLAY(overlay77);

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
    CellActor *unk_00;
    CellActor *unk_04;
    int unk_08;
} UnkStruct_ov97_02234A2C_sub1;

typedef struct {
    CellActor *unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_ov97_02234A2C_sub2;

typedef struct {
    int unk_00;
    int unk_04;
    void *unk_08;
} UnkStruct_ov97_02233B8C;

typedef struct {
    int unk_00;
    int unk_04;
    CellActor *unk_08;
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
    BGL *unk_20;
    int unk_24;
    CellActorCollection *unk_28;
    UnkStruct_0200C738 unk_2C;
    SpriteResourceCollection *unk_1B8[6];
    SpriteResource *unk_1D0[6];
    CellActorResourceData unk_1E8;
    UnkStruct_ov97_02234A2C_sub1 unk_20C[30];
    TouchScreenRect unk_374[34];
    CellActor *unk_3FC[4];
    CellActor *unk_40C[4];
    CellActor *unk_41C[4];
    UnkStruct_ov97_02234A2C_sub2 unk_42C[6];
    int unk_474;
    CellActor *unk_478[6];
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
void BoxMonGBAToBoxMon(BoxPokemonGBA *param0, BoxPokemon *param1);

UnkStruct_ov97_0223F434 *Unk_ov97_0223F434;

static int Unk_ov97_0223EA98[] = {
    0xF,
    0x13,
    0x39,
    0x46,
    0x94,
    0xF9,
    0x7F,
    0x123
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
    PalParkTransfer *v3;
    UnkStruct_ov97_02233B8C *v4 = &param0->unk_E8F0;

    switch (v4->unk_00) {
    case 0:
        ov97_02233D10(param0);
        v3 = SaveData_PalParkTransfer(param0->unk_10);
        sub_0202EFB8(v3, ov97_0223635C());
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
            SleepUnlock(1);
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
                SleepUnlock(1);
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
        SleepLock(1);
        v4->unk_00++;
        break;
    case 9:
        v0 = ov97_022362C8();

        if (v0 == 8) {
            SleepUnlock(1);
            return 12;
        }

        if (v0 == 0) {
            SleepUnlock(1);
            return 11;
        }
        break;
    }

    return 10;
}

static void ov97_02233CE4(UnkStruct_ov97_02234A2C *param0)
{
    PalParkTransfer *v0;
    int v1;

    v0 = SaveData_PalParkTransfer(param0->unk_10);

    sub_0202EFB8(v0, ov97_0223635C());
    ResetLock(4);

    v1 = SaveData_Save(param0->unk_10);
    ResetUnlock(4);
}

static void ov97_02233D10(UnkStruct_ov97_02234A2C *param0)
{
    int v0, v1, v2;
    u16 v3;
    BoxPokemon *v4;
    BoxPokemonGBA *v5;
    Pokemon v6;
    PalParkTransfer *v7;

    v7 = SaveData_PalParkTransfer(param0->unk_10);
    v4 = Pokemon_GetBoxPokemon(&v6);

    for (v0 = 0; v0 < 6; v0++) {
        v2 = param0->unk_42C[v0].unk_04;
        v1 = param0->unk_42C[v0].unk_08;
        v5 = &param0->unk_E8E0->boxes[v1][v2];

        BoxMonGBAToBoxMon(v5, v4);
        sub_0202EFA4(v7, v4, v0);
    }

    v3 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v2 = param0->unk_42C[v0].unk_04;
        v1 = param0->unk_42C[v0].unk_08;

        if ((v2 != -1) && (v1 != 14)) {
            SetGBABoxMonData(&(param0->unk_E8E0->boxes[v1][v2]), 11, (u8 *)&v3);
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

    if (param1->unk_00->unk_00 == NULL) {
        BGL_AddWindow(param0->unk_20, param1->unk_00, param1->unk_24, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, 15, param1->unk_20);
    }

    if (!(param2 & 0x2)) {
        BGL_FillWindow(param1->unk_00, param1->unk_30);
    }

    if (param1->unk_34 != -1) {
        v2 = MessageLoader_Init(1, 26, 454, 78);

        if (param1->unk_40) {
            v1 = param1->unk_40;
        } else {
            v1 = StringTemplate_Default(78);
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
        sub_0201A954(param1->unk_00);
    }

    if (param2 & 0x8) {
        if (param2 & 0x10) {
            sub_0200E060(param1->unk_00, 0, (0x3F0 - (18 + 12)), 13);
        } else {
            Window_Show(param1->unk_00, 0, 0x3F0, 14);
        }
    }
}

static void ov97_02233F74(void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20,
            2048,
            2048,
            78,
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 78);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov97_02233FA4(UnkStruct_ov97_02234A2C *param0)
{
    int v0;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 78);
    param0->unk_28 = sub_020095C4(80, &param0->unk_2C, 78);
    sub_0200964C(&param0->unk_2C, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_1B8[v0] = SpriteResourceCollection_New(3, v0, 78);
    }

    param0->unk_1D0[0] = SpriteResourceCollection_AddTiles(param0->unk_1B8[0], 116, 26, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 78);
    param0->unk_1D0[1] = SpriteResourceCollection_AddPalette(param0->unk_1B8[1], 116, 23, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 78);
    param0->unk_1D0[2] = SpriteResourceCollection_Add(param0->unk_1B8[2], 116, 25, 1, 0, 2, 78);
    param0->unk_1D0[3] = SpriteResourceCollection_Add(param0->unk_1B8[3], 116, 24, 1, 0, 3, 78);

    sub_0200A328(param0->unk_1D0[0]);
    sub_0200A5C8(param0->unk_1D0[1]);
    sub_02006E84(19, PokeIconPalettesFileIndex(), 1, 8 * 0x20, 0, 78);
}

static void ov97_022340B0(UnkStruct_ov97_02234A2C *param0)
{
    sub_020093B4(&param0->unk_1E8, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1B8[0], param0->unk_1B8[1], param0->unk_1B8[2], param0->unk_1B8[3], NULL, NULL);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov97_022340FC(CellActorInitParamsEx *param0, UnkStruct_ov97_02234A2C *param1, CellActorResourceData *param2, int param3)
{
    param0->collection = param1->unk_28;
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

static int ov97_02234124(UnkStruct_ov97_02234A2C *param0, int param1, int param2)
{
    return GetGBABoxMonData(&(param0->unk_E8E0->boxes[param1][param2]), 11, NULL);
}

static int ov97_02234148(UnkStruct_ov97_02234A2C *param0, int param1, int param2)
{
    return GetGBABoxMonData(&(param0->unk_E8E0->boxes[param1][param2]), 45, NULL);
}

static int ov97_0223416C(UnkStruct_ov97_02234A2C *param0, int param1, int param2)
{
    return GetGBABoxMonData(&(param0->unk_E8E0->boxes[param1][param2]), 0, NULL);
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
    void *v0;

    v0 = Heap_AllocFromHeapAtEnd(param3, 4096);

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

static u8 GBASpeciesToDSFormId(int param0, u32 param1, int param2)
{
    u8 v0;

    v0 = 0;

    switch (param0) {
    case 201:
        v0 = (((param1 & 0x3000000) >> 18) | ((param1 & 0x30000) >> 12) | ((param1 & 0x300) >> 6) | (param1 & 0x3)) % 28;
        break;
    case 386:
        switch (param2) {
        default:
        case 2:
        case 1:
            v0 = 0;
            break;
        case 4:
            v0 = 1;
            break;
        case 5:
            v0 = 2;
            break;
        case 3:
            v0 = 3;
            break;
        }

        break;
    }

    return v0;
}

static void ov97_02234278(int param0, int param1, u32 param2, int param3, int param4, CellActor *param5)
{
    u8 *v0;
    u8 v1;
    NNSG2dCharacterData *v2;

    param0 = ov97_02236DD0(param0);

    v1 = GBASpeciesToDSFormId(param0, param2, param3);
    v0 = ov97_022341B4(19, PokeIconSpriteIndex(param0, param1, v1), &v2, 78);

    DC_FlushRange(v2->pRawData, ((4 * 4) * 0x20));
    GX_LoadOBJ(v2->pRawData, (0x64 + param4 * (4 * 4)) * 0x20, ((4 * 4) * 0x20));

    CellActor_SetExplicitPalette(param5, PokeIconPaletteIndex(param0, v1, param1) + 8);
    Heap_FreeToHeap(v0);
}

static void ov97_022342E4(int param0, int param1, int param2, int param3, CellActor *param4, void *param5, NARC *param6)
{
    u32 v0;
    NNSG2dCharacterData *v1;
    UnkStruct_ov97_0223F434 *v2 = Unk_ov97_0223F434 + param3;

    if (param4) {
        if (IsGBASpeciesInvalid(param0) == 0) {
            param0 = ov97_02236DD0(param0);
        } else {
            param0 = 0;
        }

        v0 = PokeIconSpriteIndex(param0, param1, param2);

        ov97_022341EC(v0, &v1, param5, param6);
        MI_CpuCopyFast(v1->pRawData, v2->unk_0C, ((4 * 4) * 0x20));

        v2->unk_00 = (0x64 + param3 * (4 * 4)) * 0x20;
        v2->unk_08 = param4;
        v2->unk_04 = PokeIconPaletteIndex(param0, param2, param1) + 8;
    } else {
        v2->unk_08 = NULL;
    }
}

static void ov97_02234364(void)
{
    int v0;
    UnkStruct_ov97_0223F434 *v1 = Unk_ov97_0223F434;

    for (v0 = 0; v0 < 30; v0++, v1++) {
        if (v1->unk_08) {
            DC_FlushRange(v1->unk_0C, ((4 * 4) * 0x20));
            GX_LoadOBJ(v1->unk_0C, v1->unk_00, ((4 * 4) * 0x20));
            CellActor_SetExplicitPalette(v1->unk_08, v1->unk_04);
        }
    }
}

static void ov97_022343A8(UnkStruct_ov97_02234A2C *param0)
{
    int v0, v1, v2, v3, v4;
    u32 v5;
    void *v6;
    NARC *v7;

    v7 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 78);
    v6 = Heap_AllocFromHeapAtEnd(78, 4096);

    for (v0 = 0; v0 < 30; v0++) {
        if (GetGBABoxMonData(&(param0->unk_E8E0->boxes[param0->unk_E8E4][v0]), 5, NULL)) {
            v1 = ov97_02234124(param0, param0->unk_E8E4, v0);
            v2 = ov97_02234148(param0, param0->unk_E8E4, v0);
            v5 = ov97_0223416C(param0, param0->unk_E8E4, v0);
            v3 = gCoreSys.unk_66;
            v4 = GBASpeciesToDSFormId(ov97_02236DD0(v1), v5, v3);

            ov97_022342E4(v1, v2, v4, v0, param0->unk_20C[v0].unk_00, v6, v7);
            CellActor_SetDrawFlag(param0->unk_20C[v0].unk_00, 1);

            if (GetGBABoxMonData(&(param0->unk_E8E0->boxes[param0->unk_E8E4][v0]), 12, NULL)) {
                CellActor_SetDrawFlag(param0->unk_20C[v0].unk_04, 1);
            } else {
                CellActor_SetDrawFlag(param0->unk_20C[v0].unk_04, 0);
            }
        } else {
            ov97_022342E4(v1, v2, v4, v0, NULL, v6, v7);
            CellActor_SetDrawFlag(param0->unk_20C[v0].unk_00, 0);
            CellActor_SetDrawFlag(param0->unk_20C[v0].unk_04, 0);
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
    CellActorInitParamsEx v3;

    ov97_022340FC(&v3, param0, &param0->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0 = 0;

    for (v2 = 0; v2 < 5; v2++) {
        for (v1 = 0; v1 < 6; v1++) {
            ov97_02234190(&param0->unk_374[v0], v1 * 40 + 28, v2 * 24 + 40, 28, 28);

            v3.position.x = FX32_ONE * (v1 * 40 + 28);
            v3.position.y = FX32_ONE * (v2 * 24 + 40);

            if (param0->unk_20C[v0].unk_00 == NULL) {
                param0->unk_20C[v0].unk_00 = CellActorCollection_AddEx(&v3);
            }

            CellActor_SetAnimateFlag(param0->unk_20C[v0].unk_00, 1);
            CellActor_SetAnim(param0->unk_20C[v0].unk_00, 10 + v0);
            CellActor_SetExplicitPriority(param0->unk_20C[v0].unk_00, 1);
            CellActor_SetDrawFlag(param0->unk_20C[v0].unk_00, 1);
            CellActor_SetPriority(param0->unk_20C[v0].unk_00, 100 + v0);

            v3.position.x += FX32_ONE * 6;
            v3.position.y += FX32_ONE * 12;

            if (param0->unk_20C[v0].unk_04 == NULL) {
                param0->unk_20C[v0].unk_04 = CellActorCollection_AddEx(&v3);
            }

            CellActor_SetAnimateFlag(param0->unk_20C[v0].unk_04, 1);
            CellActor_SetAnim(param0->unk_20C[v0].unk_04, 40);
            CellActor_SetExplicitPriority(param0->unk_20C[v0].unk_04, 1);
            CellActor_SetDrawFlag(param0->unk_20C[v0].unk_04, 0);
            CellActor_SetPriority(param0->unk_20C[v0].unk_04, 0 + v0);

            v0++;

            if (v0 == 30) {
                return;
            }
        }
    }
}

static CellActor *ov97_02234638(UnkStruct_ov97_02234A2C *param0, int param1, int param2, int param3, int param4)
{
    CellActorInitParamsEx v0;
    CellActor *v1;

    ov97_022340FC(&v0, param0, &param0->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * param1;
    v0.position.y = FX32_ONE * param2;
    v0.priority = 10;

    v1 = CellActorCollection_AddEx(&v0);

    CellActor_SetAnimateFlag(v1, 1);
    CellActor_SetAnim(v1, param3);
    CellActor_SetExplicitPriority(v1, 1);
    CellActor_SetDrawFlag(v1, param4);

    return v1;
}

static void ov97_0223468C(UnkStruct_ov97_02234A2C *param0)
{
    int v0;

    ov97_02234190(&param0->unk_374[(30 + 0)], 228, 176, 50, 32);
    param0->unk_3FC[0] = ov97_02234638(param0, 228, 176, 6, 1);

    ov97_02234190(&param0->unk_374[(30 + 2)], 176, 176, 32, 32);
    param0->unk_40C[0] = ov97_02234638(param0, 176, 176, 3, 1);

    ov97_02234190(&param0->unk_374[(30 + 1)], 24, 176, 32, 32);
    param0->unk_41C[0] = ov97_02234638(param0, 24, 176, 0, 1);
    param0->unk_374[(30 + 3)].rect.top = 0xff;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_42C[v0].unk_00 = ov97_02234638(param0, 36 * v0, 64, 9, 0);
        param0->unk_42C[v0].unk_04 = -1;
        param0->unk_42C[v0].unk_08 = 14;
    }

    param0->unk_474 = 0;
}

static BOOL ov97_0223474C(UnkStruct_ov97_02234A2C *param0, int param1)
{
    int v0;
    BoxPokemonGBA *v1 = &param0->unk_E8E0->boxes[param0->unk_E8E4][param1];

    if (GetGBABoxMonData(v1, 65, NULL) == 412) {
        return 1;
    }

    return 0;
}

static BOOL ov97_02234784(UnkStruct_ov97_02234A2C *param0, int param1)
{
    int v0, v1, v2;
    BoxPokemonGBA *v3 = &param0->unk_E8E0->boxes[param0->unk_E8E4][param1];

    for (v0 = 0; v0 < 4; v0++) {
        v2 = GetGBABoxMonData(v3, 13 + v0, NULL);

        for (v1 = 0; v1 < sizeof(Unk_ov97_0223EA98) / sizeof(int); v1++) {
            if (Unk_ov97_0223EA98[v1] == v2) {
                return 1;
            }
        }
    }

    return 0;
}

u16 Unk_ov97_0223EAD8[] = {
    0x5,
    0x34,
    0x35,
    0x36,
    0x37,
    0x38,
    0x39,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x48,
    0x52,
    0x57,
    0x58,
    0x59,
    0x5A,
    0x5B,
    0x5C,
    0x63,
    0x64,
    0x65,
    0x66,
    0x69,
    0x70,
    0x71,
    0x72,
    0x73,
    0x74,
    0x75,
    0x76,
    0x77,
    0x78,
    0x79,
    0x7A,
    0x7B,
    0x7C,
    0x7D,
    0x7E,
    0x7F,
    0x80,
    0x81,
    0x82,
    0x83,
    0x84,
    0xB0,
    0xB1,
    0xB2,
    0xE2,
    0xE3,
    0xE4,
    0xE5,
    0xE6,
    0xE7,
    0xE8,
    0xE9,
    0xEA,
    0xEB,
    0xEC,
    0xED,
    0xEE,
    0xEF,
    0xF0,
    0xF1,
    0xF2,
    0xF3,
    0xF4,
    0xF5,
    0xF6,
    0xF7,
    0xF8,
    0xF9,
    0xFA,
    0xFB,
    0xFC,
    0xFD,
    0x103,
    0x104,
    0x105,
    0x106,
    0x107,
    0x108,
    0x109,
    0x10A,
    0x10B,
    0x10C,
    0x10D,
    0x10E,
    0x10F,
    0x110,
    0x111,
    0x112,
    0x113,
    0x114,
    0x115,
    0x116,
    0x117,
    0x118,
    0x119,
    0x11A,
    0x11B,
    0x11C,
    0x11D,
    0x11E,
    0x11F,
    0x120,
    0x153,
    0x154,
    0x155,
    0x156,
    0x157,
    0x158,
    0x159,
    0x15A,
    0x15B,
    0x15C,
    0x15D,
    0x15E,
    0x15F,
    0x160,
    0x161,
    0x162,
    0x163,
    0x164,
    0x165,
    0x166,
    0x167,
    0x168,
    0x169,
    0x16A,
    0x16B,
    0x16C,
    0x16D,
    0x16E,
    0x16F,
    0x170,
    0x171,
    0x172,
    0x173,
    0x174,
    0x175,
    0x176,
    0x177,
    0x178,
    0x0
};

static BOOL ov97_022347D8(UnkStruct_ov97_02234A2C *param0, int param1)
{
    BoxPokemonGBA *v0 = &param0->unk_E8E0->boxes[param0->unk_E8E4][param1];
    int v1 = GetGBABoxMonData(v0, 12, NULL);
    int v2;

    for (v2 = 0; Unk_ov97_0223EAD8[v2]; v2++) {
        if (v1 == Unk_ov97_0223EAD8[v2]) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov97_02234828(UnkStruct_ov97_02234A2C *param0, int param1)
{
    BoxPokemonGBA *v0 = &param0->unk_E8E0->boxes[param0->unk_E8E4][param1];
    int v1 = GetGBABoxMonData(v0, 11, NULL);

    return IsGBASpeciesInvalid(v1);
}

static int ov97_02234854(UnkStruct_ov97_02234A2C *param0, int param1)
{
    int v0, v1;

    if (param0->unk_20C[param1].unk_00 && (CellActor_GetDrawFlag(param0->unk_20C[param1].unk_00) == 0)) {
        return 3;
    }

    for (v1 = -1, v0 = 0; v1 == -1 && v0 < 6; v0++) {
        if ((param0->unk_42C[v0].unk_08 == param0->unk_E8E4) && (param0->unk_42C[v0].unk_04 == param1)) {
            v1 = v0;
        }
    }

    if (ov97_0223474C(param0, param1) == 1) {
        return 4;
    }

    if (ov97_02234784(param0, param1) == 1) {
        return 5;
    }

    if (ov97_022347D8(param0, param1) == 1) {
        return 6;
    }

    if (ov97_02234828(param0, param1) == 1) {
        return 7;
    }

    if (v1 == -1) {
        const VecFx32 *v2;
        VecFx32 v3;

        if (param0->unk_474 == 6) {
            return 0;
        }

        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_42C[v0].unk_04 == -1) {
                v2 = CellActor_GetPosition(param0->unk_20C[param1].unk_00);
                CellActor_SetPosition(param0->unk_42C[v0].unk_00, v2);
                v2 = CellActor_GetPosition(param0->unk_42C[v0].unk_00);

                v3 = *v2;
                v3.x -= FX32_ONE * 8;
                v3.y -= FX32_ONE * 4;

                CellActor_SetPosition(param0->unk_42C[v0].unk_00, &v3);
                CellActor_SetDrawFlag(param0->unk_42C[v0].unk_00, 1);

                param0->unk_42C[v0].unk_04 = param1;
                param0->unk_42C[v0].unk_08 = param0->unk_E8E4;
                param0->unk_474++;

                return 1;
            }
        }
    } else {
        CellActor_SetDrawFlag(param0->unk_42C[v1].unk_00, 0);

        param0->unk_42C[v1].unk_04 = -1;
        param0->unk_474--;

        return 2;
    }

    return 0;
}

static void ov97_022349E0(UnkStruct_ov97_02234A2C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if ((param0->unk_42C[v0].unk_04 != -1) && (param0->unk_42C[v0].unk_08 == param0->unk_E8E4)) {
            CellActor_SetDrawFlag(param0->unk_42C[v0].unk_00, 1);
        } else {
            CellActor_SetDrawFlag(param0->unk_42C[v0].unk_00, 0);
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

static void ov97_02234AB4(UnkStruct_ov97_02234A2C *param0, BoxPokemonGBA *param1)
{
    u16 *v0 = sub_02019FE4(param0->unk_20, 2);
    u8 v1;
    int v2;

    if (param1) {
        v1 = GetGBABoxMonData(param1, 8, NULL);
    } else {
        v1 = 0;
    }

    for (v2 = 0; v2 < 4; v2++) {
        if (v1 & 1) {
            v0[32 * 3 + 11 + v2] = 0x80 + v2;
        } else {
            v0[32 * 3 + 11 + v2] = 0x60 + v2;
        }

        v1 >>= 1;
    }

    sub_02019448(param0->unk_20, 2);
}

static void ov97_02234B0C(UnkStruct_ov97_02234A2C *param0, BoxPokemonGBA *param1)
{
    int v0, v1;
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
    ov97_02234AB4(param0, param1);

    if (param1 == NULL) {
        sub_0201A954(v4.unk_00);
        return;
    }

    GetGBABoxMonData(param1, 2, v6);
    ov97_0223936C(v6, v7, 10 + 1, GetGBABoxMonData(param1, 3, NULL));

    v4.unk_38 = v7;
    v4.unk_34 = -1;
    v4.unk_18 = 1 * 8;
    v4.unk_1C = 0;

    ov97_02233DD0(param0, &v4, 0x4 | 0x2);

    v8 = Strbuf_Init(64, 78);
    v5 = MessageLoader_Init(1, 26, 412, 78);
    v0 = ov97_02236DD0(GetGBABoxMonData(param1, 11, NULL));

    MessageLoader_GetStrbuf(v5, v0, v8);

    v4.unk_3C = v8;
    v4.unk_34 = -1;
    v4.unk_18 = 2 * 8;
    v4.unk_1C = 2 * 8;

    ov97_02233DD0(param0, &v4, 0x4 | 0x2);

    MessageLoader_Free(v5);
    Strbuf_Free(v8);

    v2 = GetGBABoxMonData(param1, 12, NULL);

    if (v2) {
        v3 = Item_FromGBAID(v2);
        v8 = Strbuf_Init(64, 78);

        Item_LoadName(v8, v3, 78);

        v4.unk_3C = v8;
        v4.unk_34 = -1;
        v4.unk_18 = 19 * 8;
        v4.unk_1C = 2 * 8;

        ov97_02233DD0(param0, &v4, 0x4 | 0x2);
        Strbuf_Free(v8);
    }

    v1 = ov97_02236E00(param1);
    v8 = Strbuf_Init(10, 78);

    Strbuf_FormatInt(v8, v1, 3, 1, 1);

    v4.unk_3C = v8;
    v4.unk_34 = -1;
    v4.unk_18 = 12 * 8 + 4;
    v4.unk_1C = 1 * 8;

    ov97_02233DD0(param0, &v4, 0x2);

    Strbuf_Free(v8);
    sub_02005844(v0, 0);
}

static void ov97_02234CC4(UnkStruct_ov97_02234A2C *param0, int param1, int param2, int *param3)
{
    sub_0200F174(0, param1, param1, 0x0, 6, 1, 78);

    if (param3) {
        *param3 = 23;
    }

    param0->unk_24 = param2;
}

static void ov97_02234CF4(UnkStruct_ov97_02234A2C *param0, int param1, int param2, int *param3)
{
    sub_0200F174(0, param1, param1, 0x7fff, 6, 1, 78);

    if (param3) {
        *param3 = 23;
    }

    param0->unk_24 = param2;
}

static void ov97_02234D28(BGL *param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
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

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
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

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
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

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
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

        sub_020183C4(param0, 3, &v4, 0);
        sub_02019EBC(param0, 3);
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

    gCoreSys.unk_65 = 1;

    GXLayers_SwapDisplay();
    Text_ResetAllPrinters();

    Font_LoadTextPalette(0, 15 * 32, 78);
    sub_02006E84(116, 19, 0, 0, 32 * 6, 78);
    sub_02006E3C(116, 22, param0->unk_20, 2, 0, 10 * 16 * 0x20, 1, 78);
    Font_InitManager(FONT_SUBSCREEN, 78);
}

static void ov97_02234E7C(UnkStruct_ov97_02234A2C *param0)
{
    sub_02006E60(116, 20, param0->unk_20, 2, 0, 32 * 24 * 2, 1, 78);
    sub_02019E2C(param0->unk_20, 2, 0, 0, 32, 24, Unk_ov97_0223EA60[param0->unk_00]);
    sub_02019448(param0->unk_20, 2);
}

static void ov97_02234ECC(UnkStruct_ov97_02234A2C *param0)
{
    Font_LoadTextPalette(0, 14 * 32, 78);
    sub_0200DAA4(param0->unk_20, 0, 0x3F0, 14, 0, 78);
    sub_0200DD0C(param0->unk_20, 0, (0x3F0 - (18 + 12)), 13, param0->unk_1C, 78);

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
    int v0, v1, v2, v3;
    u32 v4;
    CellActorInitParamsEx v5;

    for (v0 = 0; v0 < 30; v0++) {
        CellActor_SetDrawFlag(param0->unk_20C[v0].unk_00, 0);
        CellActor_SetDrawFlag(param0->unk_20C[v0].unk_04, 0);
    }

    for (v0 = 0; v0 < 6; v0++) {
        CellActor_SetDrawFlag(param0->unk_42C[v0].unk_00, 0);
    }

    CellActor_SetDrawFlag(param0->unk_3FC[0], 0);
    CellActor_SetDrawFlag(param0->unk_41C[0], 0);
    CellActor_SetDrawFlag(param0->unk_40C[0], 0);

    ov97_022340FC(&v5, param0, &param0->unk_1E8, NNS_G2D_VRAM_TYPE_2DMAIN);

    for (v0 = 0; v0 < 6; v0++) {
        v5.position.x = FX32_ONE * (v0 * 40 + 28);
        v5.position.y = FX32_ONE * 142;

        param0->unk_478[v0] = CellActorCollection_AddEx(&v5);

        CellActor_SetAnimateFlag(param0->unk_478[v0], 1);
        CellActor_SetAnim(param0->unk_478[v0], 10 + v0);
        CellActor_SetExplicitPriority(param0->unk_478[v0], 1);
        CellActor_SetDrawFlag(param0->unk_478[v0], 1);

        v1 = ov97_02234124(param0, param0->unk_42C[v0].unk_08, param0->unk_42C[v0].unk_04);
        v2 = ov97_02234148(param0, param0->unk_42C[v0].unk_08, param0->unk_42C[v0].unk_04);
        v4 = ov97_0223416C(param0, param0->unk_42C[v0].unk_08, param0->unk_42C[v0].unk_04);
        v3 = gCoreSys.unk_66;

        ov97_02234278(v1, v2, v4, v3, v0, param0->unk_478[v0]);
    }

    sub_02006E60(116, 21, param0->unk_20, 2, 0, 32 * 24 * 2, 1, 78);
    sub_02019E2C(param0->unk_20, 2, 0, 0, 32, 24, Unk_ov97_0223EA60[param0->unk_00]);
    sub_02019448(param0->unk_20, 2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Font_LoadTextPalette(0, 14 * 32, 78);
    sub_0200DAA4(param0->unk_20, 0, 0x3F0, 14, 0, 78);
    sub_0200DD0C(param0->unk_20, 0, (0x3F0 - (18 + 12)), 13, param0->unk_1C, 78);

    ov97_02234ECC(param0);
    param0->unk_490.unk_34 = 10;
    ov97_02233DD0(param0, &param0->unk_490, 0x8 | 0x10);
}

static void ov97_02235158(Window *param0)
{
    if (param0->unk_00) {
        sub_0200E084(param0, 0);
        sub_0201ACF4(param0);
        BGL_DeleteWindow(param0);
    }
}

static void ov97_02235178(UnkStruct_ov97_02234A2C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        CellActor_Delete(param0->unk_478[v0]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    ov97_02235158(&param0->unk_4FC);

    CellActor_SetDrawFlag(param0->unk_3FC[0], 1);
    CellActor_SetDrawFlag(param0->unk_41C[0], 1);
    CellActor_SetDrawFlag(param0->unk_40C[0], 1);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_42C[v0].unk_04 = -1;
        param0->unk_42C[v0].unk_08 = 14;
    }

    param0->unk_474 = 0;
}

static void ov97_022351F0(UnkStruct_ov97_02234A2C *param0)
{
    int v0;

    SetMainCallback(NULL, NULL);

    for (v0 = 0; v0 < 30; v0++) {
        if (param0->unk_20C[v0].unk_00) {
            CellActor_Delete(param0->unk_20C[v0].unk_00);
        }

        if (param0->unk_20C[v0].unk_04) {
            CellActor_Delete(param0->unk_20C[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_42C[v0].unk_00) {
            CellActor_Delete(param0->unk_42C[v0].unk_00);
        }
    }

    if (param0->unk_3FC[0]) {
        CellActor_Delete(param0->unk_3FC[0]);
    }

    if (param0->unk_41C[0]) {
        CellActor_Delete(param0->unk_41C[0]);
    }

    if (param0->unk_40C[0]) {
        CellActor_Delete(param0->unk_40C[0]);
    }

    ov97_02235158(&param0->unk_4DC);
    ov97_02235158(&param0->unk_4EC);
    ov97_02235158(&param0->unk_4FC);

    Font_Free(FONT_SUBSCREEN);
    sub_0200A4E4(param0->unk_1D0[0]);
    sub_0200A6DC(param0->unk_1D0[1]);

    for (v0 = 0; v0 < 6; v0++) {
        SpriteResourceCollection_Delete(param0->unk_1B8[v0]);
    }

    CellActorCollection_Delete(param0->unk_28);
    param0->unk_28 = NULL;

    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    sub_02015938(param0->unk_E8EC);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();

    sub_02019044(param0->unk_20, 0);
    sub_02019044(param0->unk_20, 1);
    sub_02019044(param0->unk_20, 2);
    sub_02019044(param0->unk_20, 3);
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

    ov97_0223936C(ov97_02236378(), v3, 7 + 1, ov97_02235DBC());

    v1 = StringTemplate_Default(78);
    v2 = Strbuf_Init(7 + 1, 78);

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

    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8(v0->unk_20);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov97_02235408(UnkStruct_ov97_02234A2C *param0)
{
    int v0;
    u32 v1;
    PalParkTransfer *v2;

    v2 = SaveData_PalParkTransfer(param0->unk_10);

    if (sub_0202F0E0(v2) == 0) {
        if (sub_0202F088(v2) == 0) {
            return 3;
        }

        if (sub_0202F0BC(v2) == 0) {
            return 4;
        }

        v1 = ov97_0223635C();
        v0 = sub_0202F050(v2, v1);

        if (v0 == 0) {
            v0 = (60 * 60 * 24) * 2;
        }

        if (v0 < (60 * 60 * 24)) {
            return 2;
        }
    }

    {
        BoxPokemonGBA *v3;
        int v4, v5, v6 = 0;

        for (v5 = 0; v5 < GBA_TOTAL_BOXES_COUNT; v5++) {
            for (v4 = 0; v4 < 30; v4++) {
                v3 = &param0->unk_E8E0->boxes[v5][v4];

                if (GetGBABoxMonData(v3, 5, NULL)) {
                    v6++;
                }
            }
        }

        if (v6 < 6) {
            return 5;
        }
    }

    if (sub_0202F028(v2)) {
        return 6;
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
            if (gCoreSys.touchPressed || gCoreSys.pressedKeys) {
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

    Heap_Create(3, 78, 0x38000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov97_02234A2C), 78);
    memset(v0, 0, sizeof(UnkStruct_ov97_02234A2C));

    v0->unk_20 = sub_02018340(78);
    v0->unk_E8EC = sub_02015920(78);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    v0->unk_10 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    v0->unk_14 = SaveData_GetTrainerInfo(v0->unk_10);
    v0->unk_18 = SaveData_Options(v0->unk_10);
    v0->unk_1C = Options_Frame(v0->unk_18);
    v0->unk_12668 = Strbuf_Init(256, 78);
    v0->unk_1266C = Strbuf_Init(256, 78);

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
                v3->unk_E8E0 = ov97_02236340();
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

        SetMainCallback(ov97_022353CC, v3);
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
        if (gCoreSys.touchPressed || gCoreSys.pressedKeys) {
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
            v3->unk_E8F0.unk_08 = sub_0200E7FC(&v3->unk_4FC, (0x3F0 - (18 + 12)));
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
        DeleteWaitDial(v3->unk_E8F0.unk_08);
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

        SetMainCallback(ov97_022353CC, v3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        ov97_02234B0C(v3, NULL);
        ov97_02234CC4(v3, 1, 13, param1);

        break;
    case 13:
        v0 = sub_02022664((const TouchScreenRect *)v3->unk_374);

        if (v0 != 0xffffffff) {
            if (v0 < 30) {
                v1 = ov97_02234854(v3, v0);

                if (v1 == 1) {
                    ov97_02234B0C(v3, &(v3->unk_E8E0->boxes[v3->unk_E8E4][v0]));

                    if (v3->unk_474 == 6) {
                        v3->unk_E8E8 = 45;
                        *param1 = 15;
                    }
                } else if (v1 == 2) {
                    ov97_02234B0C(v3, NULL);
                } else if (v1 == 4) {
                    v3->unk_08 = 8;
                    *param1 = 14;
                } else if (v1 == 5) {
                    v3->unk_08 = 9;
                    *param1 = 14;
                } else if (v1 == 6) {
                    v3->unk_08 = 38;
                    *param1 = 14;
                } else if (v1 == 7) {
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
            v3->unk_E8F0.unk_08 = sub_0200E7FC(&v3->unk_4FC, (0x3F0 - (18 + 12)));
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
            DeleteWaitDial(v3->unk_E8F0.unk_08);
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
        if (gCoreSys.touchPressed || gCoreSys.pressedKeys) {
            ov97_02234CF4(v3, 0, 24, param1);
            Sound_PlayEffect(1500);
        }
        break;
    case 23:
        if (ScreenWipe_Done()) {
            *param1 = v3->unk_24;
        }
        break;
    case 24:
        ov97_022351F0(v3);
        return 1;
        break;
    }

    if (v3->unk_28 != NULL) {
        CellActorCollection_Update(v3->unk_28);
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
    sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);
    OverlayManager_FreeData(param0);
    Heap_Destroy(78);

    ov97_02238400(0);

    return 1;
}

const OverlayManagerTemplate Unk_ov97_0223D864 = {
    ov97_02235624,
    ov97_022356E8,
    ov97_02235CC8,
    0xffffffff
};
