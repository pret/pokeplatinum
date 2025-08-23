#include "applications/pc_boxes/ov19_021DA270.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"

BOOL ov19_021DA270(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021D61B0 *param1, const BoxApplication *param2, SpriteList *param3, NARC *param4)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dPaletteData *v1;
    void *v2;

    param0->unk_48 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_BOX_GRAPHICS);

    NNS_G2dInitImagePaletteProxy(&v0);
    Graphics_LoadPartialPaletteFromOpenNARC(param0->unk_48, PokeIconPalettesFileIndex(), NNS_G2D_VRAM_TYPE_2DMAIN, 2 * 0x20, 10, &v0);

    v2 = Graphics_GetPlttDataFromOpenNARC(param0->unk_48, PokeIconPalettesFileIndex(), &v1, HEAP_ID_BOX_GRAPHICS);

    if (v2) {
        BOOL v3;
        NNSG2dPaletteCompressInfo *v4;

        NNS_G2dInitImagePaletteProxy(&v0);
        v3 = NNS_G2dGetUnpackedPaletteCompressInfo(v2, &v4);
        ov19_021D78C8(v1->pRawData, v1->pRawData, v1->szByte / sizeof(u16), 0x57f, 8);

        if (v3) {
            NNS_G2dLoadPaletteEx(v1, v4, 6 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v0);
        } else {
            NNS_G2dLoadPalette(v1, 6 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v0);
        }

        Heap_Free(v2);
    }

    param0->unk_08 = Graphics_GetCellBankFromOpenNARC(param4, 21, 1, &(param0->unk_10), HEAP_ID_BOX_GRAPHICS);
    param0->unk_00 = Graphics_GetAnimBankFromOpenNARC(param4, 22, 1, &(param0->unk_04), HEAP_ID_BOX_GRAPHICS);
    param0->unk_14 = Graphics_GetCellBankFromOpenNARC(param4, 23, 1, &(param0->unk_1C), HEAP_ID_BOX_GRAPHICS);
    param0->unk_18 = Graphics_GetAnimBankFromOpenNARC(param4, 24, 1, &(param0->unk_20), HEAP_ID_BOX_GRAPHICS);

    if ((param0->unk_08 == NULL) || (param0->unk_00 == NULL) || (param0->unk_48 == NULL)) {
        return 0;
    }

    param0->unk_24 = param3;
    param0->unk_40 = param2;
    param0->unk_44 = param1;

    return 1;
}

void ov19_021DA384(UnkStruct_ov19_021DA384 *param0)
{
    if (param0->unk_08 != NULL) {
        Heap_Free(param0->unk_08);
        param0->unk_08 = NULL;
    }

    if (param0->unk_00 != NULL) {
        Heap_Free(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_14 != NULL) {
        Heap_Free(param0->unk_14);
        param0->unk_14 = NULL;
    }

    if (param0->unk_18 != NULL) {
        Heap_Free(param0->unk_18);
        param0->unk_18 = NULL;
    }

    if (param0->unk_48 != NULL) {
        NARC_dtor(param0->unk_48);
    }
}

void ov19_021DA3CC(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    while (param2--) {
        param1->unk_00 = NULL;
        NNS_G2dInitImageProxy(&(param1->unk_04));
        param1++;
    }
}

void ov19_021DA3F0(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    while (param2--) {
        if (param1->unk_00 != NULL) {
            Sprite_Delete(param1->unk_00);
            param1->unk_00 = NULL;
        }

        param1++;
    }
}

void ov19_021DA418(const UnkStruct_ov19_021DCD18 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    MI_CpuCopy32(param0, param1, sizeof(UnkStruct_ov19_021DCD18) * param2);
}

void ov19_021DA428(UnkStruct_ov19_021DA384 *param0, BoxPokemon *boxMon, s32 param2, s32 param3, u32 param4, u32 param5, u32 param6, UnkStruct_ov19_021DCD18 *param7)
{
    NNSG2dCharacterData *v0;
    SpriteResourcesHeader v1;
    u16 species;
    u8 isEgg;
    u8 form;
    u8 reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    ov19_021D783C(&v1, NULL, ov19_021D77D0(param0->unk_44), param0->unk_10, param0->unk_04, param4);

    species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL);
    form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
    param7->unk_28 = BoxPokemon_IconSpriteIndex((BoxPokemon *)boxMon);
    param7->unk_2C = PokeIconPaletteIndex(species, form, isEgg);
    param7->unk_30 = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    param7->unk_2E = BoxPokemon_GetValue(boxMon, MON_DATA_MARKINGS, NULL);

    NNS_G2dInitImageProxy(&(param7->unk_04));
    NARC_ReadFromMember(param0->unk_48, param7->unk_28, 0, ((4 * 4) * 0x20 + 0x80), param0->unk_4C);
    NNS_G2dGetUnpackedCharacterData(param0->unk_4C, &v0);

    v0->mapingType = GX_GetOBJVRamModeChar();
    v0->szByte = (4 * 4) * 0x20;

    NNS_G2dLoadImage1DMapping(v0, param6 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &(param7->unk_04));

    v1.imageProxy = &(param7->unk_04);
    param7->unk_00 = ov19_021D785C(param0->unk_24, &v1, param2, param3, param5, NNS_G2D_VRAM_TYPE_2DMAIN);

    GF_ASSERT(param7->unk_00 != NULL);

    Sprite_SetExplicitPalette(param7->unk_00, 2 + param7->unk_2C);
    ov19_021DA63C(param0, param7, BoxApp_GetMonSpriteTransparencyMask(param0->unk_40));
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void ov19_021DA548(UnkStruct_ov19_021DA384 *param0, BoxPokemon *boxMon, u32 param2, u32 param3, u8 *param4, s32 param5, s32 param6, u32 param7, u32 param8, u32 param9, UnkStruct_ov19_021DCD18 *param10)
{
    NNSG2dCharacterData *v0;
    SpriteResourcesHeader v1;

    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    u8 isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL);
    u8 form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    ov19_021D783C(&v1, NULL, ov19_021D77D0(param0->unk_44), param0->unk_10, param0->unk_04, param7);

    param10->unk_28 = param3;
    param10->unk_2C = PokeIconPaletteIndex(param2, form, isEgg);
    param10->unk_30 = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    param10->unk_2E = BoxPokemon_GetValue(boxMon, MON_DATA_MARKINGS, NULL);

    NNS_G2dInitImageProxy(&(param10->unk_04));
    NNS_G2dGetUnpackedCharacterData(param4, &v0);

    v0->mapingType = GX_GetOBJVRamModeChar();
    v0->szByte = (4 * 4) * 0x20;

    NNS_G2dLoadImage1DMapping(v0, param9 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &(param10->unk_04));

    v1.imageProxy = &(param10->unk_04);
    param10->unk_00 = ov19_021D785C(param0->unk_24, &v1, param5, param6, param8, NNS_G2D_VRAM_TYPE_2DMAIN);

    GF_ASSERT(param10->unk_00 != NULL);

    Sprite_SetExplicitPalette(param10->unk_00, 2 + param10->unk_2C);
    ov19_021DA63C(param0, param10, BoxApp_GetMonSpriteTransparencyMask(param0->unk_40));
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void ov19_021DA63C(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    if (param2 != 0) {
        int v0;

        if (param2 & 1) {
            if (param1->unk_30 == 0) {
                Sprite_SetExplicitOAMMode(param1->unk_00, GX_OAM_MODE_XLU);
                return;
            }
        }

        for (v0 = 0; v0 < 6; v0++) {
            if ((param2 & (2 << v0)) && ((param1->unk_2E & (1 << v0)) == 0)) {
                Sprite_SetExplicitOAMMode(param1->unk_00, GX_OAM_MODE_XLU);
                return;
            }
        }
    }

    Sprite_SetExplicitOAMMode(param1->unk_00, GX_OAM_MODE_NORMAL);
}

void ov19_021DA68C(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    param1->unk_2E = param2;
}

void ov19_021DA690(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    param1->unk_30 = param2;
}

void ov19_021DA694(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, BOOL param2)
{
    int v0;
    u32 v1;
    NNSG2dCharacterData *v2;

    if (param1->unk_30 == 112 && param1->unk_28 == PokeIconSpriteIndex(SPECIES_GIRATINA, 0, GIRATINA_FORM_ALTERED)) {
        param1->unk_28 = PokeIconSpriteIndex(SPECIES_GIRATINA, 0, GIRATINA_FORM_ORIGIN);
    } else if (param1->unk_30 != 112 && param1->unk_28 == PokeIconSpriteIndex(SPECIES_GIRATINA, 0, GIRATINA_FORM_ORIGIN)) {
        param1->unk_28 = PokeIconSpriteIndex(SPECIES_GIRATINA, 0, GIRATINA_FORM_ALTERED);
    } else if (param2 == 1 && param1->unk_28 == PokeIconSpriteIndex(SPECIES_SHAYMIN, 0, SHAYMIN_FORM_SKY)) {
        param1->unk_28 = PokeIconSpriteIndex(SPECIES_SHAYMIN, 0, SHAYMIN_FORM_LAND);
    } else {
        return;
    }

    v1 = param1->unk_04.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN] + (u32)G2_GetOBJCharPtr();

    NARC_ReadFromMember(param0->unk_48, param1->unk_28, 0, ((4 * 4) * 0x20 + 0x80), param0->unk_4C);
    NNS_G2dGetUnpackedCharacterData(param0->unk_4C, &v2);
    MI_CpuCopy32(v2->pRawData, (void *)v1, (4 * 4) * 0x20);
}

void ov19_021DA744(UnkStruct_ov19_021DA384 *param0, void *param1, u32 param2, u32 param3)
{
    NARC_ReadFromMember(param0->unk_48, param2, 0, param3, param1);
}

void ov19_021DA754(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    if (param1->unk_00 != NULL) {
        NNSG2dCharacterData *v0;

        NNS_G2dInitImageProxy(&(param1->unk_04));

        NARC_ReadFromMember(param0->unk_48, param1->unk_28, 0, ((4 * 4) * 0x20 + 0x80), param0->unk_4C);
        NNS_G2dGetUnpackedCharacterData(param0->unk_4C, &v0);
        v0->mapingType = GX_GetOBJVRamModeChar();
        v0->szByte = (4 * 4) * 0x20;

        NNS_G2dLoadImage1DMapping(v0, param2 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &(param1->unk_04));

        Sprite_SetImageProxy(param1->unk_00, &(param1->unk_04));
    }
}

void ov19_021DA7B8(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    if ((param2 == 1) || (param2 == 2)) {
        Sprite_SetAffineOverwriteMode(param1->unk_00, 1);
    } else {
        Sprite_SetAffineOverwriteMode(param1->unk_00, 0);
    }

    Sprite_SetAnim(param1->unk_00, param2);
}

BOOL ov19_021DA7E0(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1)
{
    return Sprite_IsAnimated(param1->unk_00) == 0;
}

void BoxGraphics_ApplyMonInMultiSelectShading(UnkStruct_ov19_021DA384 *param0, UnkStruct_ov19_021DCD18 *param1, BOOL isSelected)
{
    u32 v0 = ((isSelected) ? 6 : 2) + param1->unk_2C;

    Sprite_SetExplicitPalette(param1->unk_00, v0);
}

NNSG2dCellDataBank *ov19_021DA80C(UnkStruct_ov19_021DA384 *param0)
{
    return param0->unk_10;
}

NNSG2dAnimBankData *ov19_021DA810(UnkStruct_ov19_021DA384 *param0)
{
    return param0->unk_04;
}
