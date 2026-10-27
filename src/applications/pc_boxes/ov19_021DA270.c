#include "applications/pc_boxes/ov19_021DA270.h"

#include <nitro.h>
#include <string.h>

#include "generated/items.h"

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

BOOL MonIconHelper_Init(MonIconHelper *iconHelper, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc)
{
    NNSG2dImagePaletteProxy plttProxy;
    NNSG2dPaletteData *plttData;
    void *data;

    iconHelper->iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_BOX_GRAPHICS);

    NNS_G2dInitImagePaletteProxy(&plttProxy);
    Graphics_LoadPartialPaletteFromOpenNARC(iconHelper->iconNarc, PokeIconPalettesFileIndex(), NNS_G2D_VRAM_TYPE_2DMAIN, PLTT_OFFSET(2), HEAP_ID_BOX_GRAPHICS, &plttProxy);

    data = Graphics_GetPlttDataFromOpenNARC(iconHelper->iconNarc, PokeIconPalettesFileIndex(), &plttData, HEAP_ID_BOX_GRAPHICS);

    if (data != NULL) {
        BOOL hasCompressInfo;
        NNSG2dPaletteCompressInfo *plttCompressInfo;

        NNS_G2dInitImagePaletteProxy(&plttProxy);
        hasCompressInfo = NNS_G2dGetUnpackedPaletteCompressInfo(data, &plttCompressInfo);
        BoxGraphics_BlendPltt(plttData->pRawData, plttData->pRawData, plttData->szByte / sizeof(u16), 0x57f, 8);

        if (hasCompressInfo) {
            NNS_G2dLoadPaletteEx(plttData, plttCompressInfo, PLTT_OFFSET(6), NNS_G2D_VRAM_TYPE_2DMAIN, &plttProxy);
        } else {
            NNS_G2dLoadPalette(plttData, PLTT_OFFSET(6), NNS_G2D_VRAM_TYPE_2DMAIN, &plttProxy);
        }

        Heap_Free(data);
    }

    iconHelper->iconCellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 21, 1, &iconHelper->iconCellBank, HEAP_ID_BOX_GRAPHICS);
    iconHelper->iconAnimBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 22, 1, &iconHelper->iconAnimBank, HEAP_ID_BOX_GRAPHICS);
    iconHelper->itemIconCellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 23, 1, &iconHelper->itemIconCellBank, HEAP_ID_BOX_GRAPHICS);
    iconHelper->itemIconAnimBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 24, 1, &iconHelper->itemIconAnimBank, HEAP_ID_BOX_GRAPHICS);

    if ((iconHelper->iconCellBankBuffer == NULL) || (iconHelper->iconAnimBankBuffer == NULL) || (iconHelper->iconNarc == NULL)) {
        return FALSE;
    }

    iconHelper->spriteList = spriteList;
    iconHelper->boxApp = boxApp;
    iconHelper->boxGraphics = boxGraphics;

    return TRUE;
}

void MonIconHelper_Free(MonIconHelper *iconHelper)
{
    if (iconHelper->iconCellBankBuffer != NULL) {
        Heap_Free(iconHelper->iconCellBankBuffer);
        iconHelper->iconCellBankBuffer = NULL;
    }

    if (iconHelper->iconAnimBankBuffer != NULL) {
        Heap_Free(iconHelper->iconAnimBankBuffer);
        iconHelper->iconAnimBankBuffer = NULL;
    }

    if (iconHelper->itemIconCellBankBuffer != NULL) {
        Heap_Free(iconHelper->itemIconCellBankBuffer);
        iconHelper->itemIconCellBankBuffer = NULL;
    }

    if (iconHelper->itemIconAnimBankBuffer != NULL) {
        Heap_Free(iconHelper->itemIconAnimBankBuffer);
        iconHelper->itemIconAnimBankBuffer = NULL;
    }

    if (iconHelper->iconNarc != NULL) {
        NARC_dtor(iconHelper->iconNarc);
    }
}

void MonIconHelper_InitIcons(MonIconHelper *unused, MonIcon *monIcon, u32 count)
{
    while (count--) {
        monIcon->sprite = NULL;
        NNS_G2dInitImageProxy(&(monIcon->imageProxy));
        monIcon++;
    }
}

void MonIconHelper_DeleteIcons(MonIconHelper *unused, MonIcon *monIcon, u32 count)
{
    while (count--) {
        if (monIcon->sprite != NULL) {
            Sprite_Delete(monIcon->sprite);
            monIcon->sprite = NULL;
        }

        monIcon++;
    }
}

void MonIcon_Copy(const MonIcon *src, MonIcon *dest, u32 count)
{
    MI_CpuCopy32(src, dest, sizeof(MonIcon) * count);
}

void MonIconHelper_CreateIcon(MonIconHelper *iconHelper, BoxPokemon *boxMon, s32 x, s32 y, u32 headerPriority, u32 priority, u32 tileOffset, MonIcon *monIcon)
{
    NNSG2dCharacterData *charData;
    SpriteResourcesHeader srHeader;
    u16 species;
    u8 isEgg;
    u8 form;
    u8 reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    SpriteResourcesHeader_InitFromProxies(&srHeader, NULL, BoxGraphics_GetImagePaletteProxy(iconHelper->boxGraphics), iconHelper->iconCellBank, iconHelper->iconAnimBank, headerPriority);

    species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL);
    form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
    monIcon->spriteIndex = BoxPokemon_IconSpriteIndex(boxMon);
    monIcon->plttIndex = PokeIconPaletteIndex(species, form, isEgg);
    monIcon->heldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    monIcon->markings = BoxPokemon_GetValue(boxMon, MON_DATA_MARKINGS, NULL);

    NNS_G2dInitImageProxy(&(monIcon->imageProxy));
    NARC_ReadFromMember(iconHelper->iconNarc, monIcon->spriteIndex, 0, MON_ICON_FILE_SIZE, iconHelper->iconCharBuffer);
    NNS_G2dGetUnpackedCharacterData(iconHelper->iconCharBuffer, &charData);

    charData->mappingType = GX_GetOBJVRamModeChar();
    charData->szByte = MON_ICON_TILE_DATA_SIZE;

    NNS_G2dLoadImage1DMapping(charData, tileOffset * TILE_SIZE_4BPP, NNS_G2D_VRAM_TYPE_2DMAIN, &(monIcon->imageProxy));

    srHeader.imageProxy = &(monIcon->imageProxy);
    monIcon->sprite = BoxGraphics_CreateSprite(iconHelper->spriteList, &srHeader, x, y, priority, NNS_G2D_VRAM_TYPE_2DMAIN);

    GF_ASSERT(monIcon->sprite != NULL);

    Sprite_SetExplicitPalette(monIcon->sprite, 2 + monIcon->plttIndex);
    MonIconHelper_UpdateTransparency(iconHelper, monIcon, BoxApp_GetMonSpriteTransparencyMask(iconHelper->boxApp));
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void MonIconHelper_CreateIconFromTiles(MonIconHelper *iconHelper, BoxPokemon *boxMon, u32 species, u32 spriteIndex, u8 *tileData, s32 x, s32 y, u32 headerPriority, u32 priority, u32 tileOffset, MonIcon *monIcon)
{
    NNSG2dCharacterData *charData;
    SpriteResourcesHeader srHeader;

    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    u8 isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL);
    u8 form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    SpriteResourcesHeader_InitFromProxies(&srHeader, NULL, BoxGraphics_GetImagePaletteProxy(iconHelper->boxGraphics), iconHelper->iconCellBank, iconHelper->iconAnimBank, headerPriority);

    monIcon->spriteIndex = spriteIndex;
    monIcon->plttIndex = PokeIconPaletteIndex(species, form, isEgg);
    monIcon->heldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    monIcon->markings = BoxPokemon_GetValue(boxMon, MON_DATA_MARKINGS, NULL);

    NNS_G2dInitImageProxy(&(monIcon->imageProxy));
    NNS_G2dGetUnpackedCharacterData(tileData, &charData);

    charData->mappingType = GX_GetOBJVRamModeChar();
    charData->szByte = MON_ICON_TILE_DATA_SIZE;

    NNS_G2dLoadImage1DMapping(charData, tileOffset * TILE_SIZE_4BPP, NNS_G2D_VRAM_TYPE_2DMAIN, &(monIcon->imageProxy));

    srHeader.imageProxy = &(monIcon->imageProxy);
    monIcon->sprite = BoxGraphics_CreateSprite(iconHelper->spriteList, &srHeader, x, y, priority, NNS_G2D_VRAM_TYPE_2DMAIN);

    GF_ASSERT(monIcon->sprite != NULL);

    Sprite_SetExplicitPalette(monIcon->sprite, 2 + monIcon->plttIndex);
    MonIconHelper_UpdateTransparency(iconHelper, monIcon, BoxApp_GetMonSpriteTransparencyMask(iconHelper->boxApp));
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void MonIconHelper_UpdateTransparency(MonIconHelper *unused, MonIcon *monIcon, u32 mask)
{
    if (mask != 0) {
        if (mask & 1) {
            if (monIcon->heldItem == ITEM_NONE) {
                Sprite_SetExplicitOAMMode(monIcon->sprite, GX_OAM_MODE_XLU);
                return;
            }
        }

        for (int i = 0; i < MAX_POKEMON_MARKINGS; i++) {
            if ((mask & (2 << i)) && ((monIcon->markings & (1 << i)) == 0)) {
                Sprite_SetExplicitOAMMode(monIcon->sprite, GX_OAM_MODE_XLU);
                return;
            }
        }
    }

    Sprite_SetExplicitOAMMode(monIcon->sprite, GX_OAM_MODE_NORMAL);
}

void MonIconHelper_SetMarkings(MonIconHelper *unused, MonIcon *monIcon, u32 markings)
{
    monIcon->markings = markings;
}

void MonIconHelper_SetHeldItem(MonIconHelper *unused, MonIcon *monIcon, u32 heldItem)
{
    monIcon->heldItem = heldItem;
}

void MonIconHelper_UpdateIconForm(MonIconHelper *iconHelper, MonIcon *monIcon, BOOL isStored)
{
    u32 vramAddr;
    NNSG2dCharacterData *charData;

    if (monIcon->heldItem == ITEM_GRISEOUS_ORB && monIcon->spriteIndex == PokeIconSpriteIndex(SPECIES_GIRATINA, FALSE, GIRATINA_FORM_ALTERED)) {
        monIcon->spriteIndex = PokeIconSpriteIndex(SPECIES_GIRATINA, FALSE, GIRATINA_FORM_ORIGIN);
    } else if (monIcon->heldItem != ITEM_GRISEOUS_ORB && monIcon->spriteIndex == PokeIconSpriteIndex(SPECIES_GIRATINA, FALSE, GIRATINA_FORM_ORIGIN)) {
        monIcon->spriteIndex = PokeIconSpriteIndex(SPECIES_GIRATINA, FALSE, GIRATINA_FORM_ALTERED);
    } else if (isStored == TRUE && monIcon->spriteIndex == PokeIconSpriteIndex(SPECIES_SHAYMIN, FALSE, SHAYMIN_FORM_SKY)) {
        monIcon->spriteIndex = PokeIconSpriteIndex(SPECIES_SHAYMIN, FALSE, SHAYMIN_FORM_LAND);
    } else {
        return;
    }

    vramAddr = monIcon->imageProxy.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN] + (u32)G2_GetOBJCharPtr();

    NARC_ReadFromMember(iconHelper->iconNarc, monIcon->spriteIndex, 0, MON_ICON_FILE_SIZE, iconHelper->iconCharBuffer);
    NNS_G2dGetUnpackedCharacterData(iconHelper->iconCharBuffer, &charData);
    MI_CpuCopy32(charData->pRawData, (void *)vramAddr, MON_ICON_TILE_DATA_SIZE);
}

void MonIconHelper_ReadIconData(MonIconHelper *iconHelper, void *dest, u32 spriteIndex, u32 size)
{
    NARC_ReadFromMember(iconHelper->iconNarc, spriteIndex, 0, size, dest);
}

void MonIconHelper_MoveIconTiles(MonIconHelper *iconHelper, MonIcon *monIcon, u32 tileOffset)
{
    if (monIcon->sprite != NULL) {
        NNSG2dCharacterData *charData;

        NNS_G2dInitImageProxy(&(monIcon->imageProxy));

        NARC_ReadFromMember(iconHelper->iconNarc, monIcon->spriteIndex, 0, MON_ICON_FILE_SIZE, iconHelper->iconCharBuffer);
        NNS_G2dGetUnpackedCharacterData(iconHelper->iconCharBuffer, &charData);
        charData->mappingType = GX_GetOBJVRamModeChar();
        charData->szByte = MON_ICON_TILE_DATA_SIZE;

        NNS_G2dLoadImage1DMapping(charData, tileOffset * TILE_SIZE_4BPP, NNS_G2D_VRAM_TYPE_2DMAIN, &(monIcon->imageProxy));

        Sprite_SetImageProxy(monIcon->sprite, &(monIcon->imageProxy));
    }
}

void MonIconHelper_SetIconAnim(MonIconHelper *unused, MonIcon *monIcon, enum MonIconAnim anim)
{
    if ((anim == MON_ICON_ANIM_RELEASE) || (anim == MON_ICON_ANIM_RELEASE_REJECTED)) {
        Sprite_SetAffineOverwriteMode(monIcon->sprite, AFFINE_OVERWRITE_MODE_NORMAL);
    } else {
        Sprite_SetAffineOverwriteMode(monIcon->sprite, AFFINE_OVERWRITE_MODE_NONE);
    }

    Sprite_SetAnim(monIcon->sprite, anim);
}

BOOL MonIconHelper_IsIconAnimDone(MonIconHelper *unused, MonIcon *monIcon)
{
    return Sprite_IsAnimated(monIcon->sprite) == FALSE;
}

void MonIconHelper_SetMultiSelectShading(MonIconHelper *unused, MonIcon *monIcon, BOOL isSelected)
{
    u32 plttSlot = (isSelected ? 6 : 2) + monIcon->plttIndex;

    Sprite_SetExplicitPalette(monIcon->sprite, plttSlot);
}

NNSG2dCellDataBank *MonIconHelper_GetIconCellBank(MonIconHelper *iconHelper)
{
    return iconHelper->iconCellBank;
}

NNSG2dAnimBankData *MonIconHelper_GetIconAnimBank(MonIconHelper *iconHelper)
{
    return iconHelper->iconAnimBank;
}
