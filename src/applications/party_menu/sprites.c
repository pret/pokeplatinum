#include "applications/party_menu/sprites.h"

#include <nitro/gx/gx_load.h>
#include <nnsys/g2d/g2d_Image.h>

#include "constants/pokemon.h"
#include "generated/items.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"

#include "graphics.h"
#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

void PartyMenu_InitSpriteResources(PartyMenuApplication *application)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VramTransfer_New(32, HEAP_ID_PARTY_MENU);

    application->spriteSystem = SpriteSystem_Alloc(12);
    application->spriteMan = SpriteManager_New(application->spriteSystem);

    RenderOamTemplate oamTemplate = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };
    CharTransferTemplateWithModes transferTemplate = {
        NUM_PARTY_MENU_SPRITES + MAX_PARTY_SIZE, 1024, 1024, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K
    };

    SpriteSystem_Init(application->spriteSystem, &oamTemplate, &transferTemplate, 32);
    SpriteSystem_InitSprites(application->spriteSystem, application->spriteMan, NUM_PARTY_MENU_SPRITES + MAX_PARTY_SIZE);

    G2dRenderer *renderer = SpriteSystem_GetRenderer(application->spriteSystem);
    SetSubScreenViewRect(renderer, 0, 256 * FX32_ONE);

    SpriteResourceDataPaths resdat = {
        "data/plist_chr.resdat",
        "data/plist_pal.resdat",
        "data/plist_cell.resdat",
        "data/plist_canm.resdat",
        NULL,
        NULL,
        "data/plist_h.cldat"
    };
    SpriteSystem_LoadResourceDataFromFilepaths(application->spriteSystem, application->spriteMan, &resdat);
}

#define SPECIES_ICON_PLTT_SLOT 3

void PartyMenu_DrawMemberSpeciesIcon(PartyMenuApplication *application, u8 slot, u16 x, u16 y, NARC *narc)
{
#define partyMenuMember application->partyMembers[slot]

    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    partyMenuMember.spriteXDelta = x;
    partyMenuMember.spriteYDelta = y;

    SpriteSystem_ReplaceCharResObjFromOpenNarc(
        application->spriteSystem,
        application->spriteMan,
        narc,
        Pokemon_IconSpriteIndex(mon),
        0,
        4 + slot);

    u32 isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);

    SpriteTemplateFromResourceHeader template;
    template.resourceHeaderID = 4 + slot;
    template.x = x;
    template.y = y;
    template.z = 0;
    template.animIdx = 0;
    template.priority = 0;
    template.plttIdx = PokeIconPaletteIndex(partyMenuMember.species, partyMenuMember.form, isEgg) + SPECIES_ICON_PLTT_SLOT;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.dummy18 = 0;
    template.dummy1C = 0;
    template.dummy20 = 0;
    template.dummy24 = 0;

    partyMenuMember.sprite = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &template);

#undef partyMenuMember
}

void PartyMenu_LoadMemberSpeciesIcon(PartyMenuApplication *application, u8 slot)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    int form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    NARC *iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);
    u32 offset = NNS_G2dGetImageLocation(Sprite_GetImageProxy(application->partyMembers[slot].sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    void *ncgr = LoadMemberFromOpenNARC(iconNarc, Pokemon_IconSpriteIndex(mon), FALSE, HEAP_ID_PARTY_MENU, TRUE);

    NNSG2dCharacterData *charData;
    if (NNS_G2dGetUnpackedCharacterData(ncgr, &charData)) {
        DC_FlushRange(charData->pRawData, charData->szByte);
        GX_LoadOBJ(charData->pRawData, offset, charData->szByte);
    }

    Heap_Free(ncgr);
    Sprite_SetExplicitPalette2(application->partyMembers[slot].sprite, PokeIconPaletteIndex(species, form, FALSE) + SPECIES_ICON_PLTT_SLOT);
    NARC_dtor(iconNarc);
}

enum {
    SPRITE_TEMPLATE_CURSOR_NORMAL = 0,
    SPRITE_TEMPLATE_CURSOR_SWITCH,
    SPRITE_TEMPLATE_CONFIRM_BUTTON,
    SPRITE_TEMPLATE_CANCEL_BUTTON,
    SPRITE_TEMPLATE_STATUS_ICON_MEMB0,
    SPRITE_TEMPLATE_STATUS_ICON_MEMB1,
    SPRITE_TEMPLATE_STATUS_ICON_MEMB2,
    SPRITE_TEMPLATE_STATUS_ICON_MEMB3,
    SPRITE_TEMPLATE_STATUS_ICON_MEMB4,
    SPRITE_TEMPLATE_STATUS_ICON_MEMB5,
    SPRITE_TEMPLATE_HELD_ITEM_MEMB0,
    SPRITE_TEMPLATE_HELD_ITEM_MEMB1,
    SPRITE_TEMPLATE_HELD_ITEM_MEMB2,
    SPRITE_TEMPLATE_HELD_ITEM_MEMB3,
    SPRITE_TEMPLATE_HELD_ITEM_MEMB4,
    SPRITE_TEMPLATE_HELD_ITEM_MEMB5,
    SPRITE_TEMPLATE_BALL_SEAL_MEMB0,
    SPRITE_TEMPLATE_BALL_SEAL_MEMB1,
    SPRITE_TEMPLATE_BALL_SEAL_MEMB2,
    SPRITE_TEMPLATE_BALL_SEAL_MEMB3,
    SPRITE_TEMPLATE_BALL_SEAL_MEMB4,
    SPRITE_TEMPLATE_BALL_SEAL_MEMB5,
    SPRITE_TEMPLATE_UNK_22,
};

static const SpriteTemplateFromResourceHeader sSpriteTemplates[] = {
    [SPRITE_TEMPLATE_CURSOR_NORMAL] = {
        .resourceHeaderID = 1,
        .x = 64,
        .y = 24,
        .z = 0,
        .animIdx = 1,
        .priority = 3,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_CURSOR_SWITCH] = {
        .resourceHeaderID = 1,
        .x = 64,
        .y = 72,
        .z = 0,
        .animIdx = 2,
        .priority = 2,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_CONFIRM_BUTTON] = {
        .resourceHeaderID = 2,
        .x = 232,
        .y = 168,
        .z = 0,
        .animIdx = 2,
        .priority = 1,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_CANCEL_BUTTON] = {
        .resourceHeaderID = 2,
        .x = 232,
        .y = 184,
        .z = 0,
        .animIdx = 2,
        .priority = 1,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_STATUS_ICON_MEMB0] = {
        .resourceHeaderID = 3,
        .x = 36,
        .y = 44,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_STATUS_ICON_MEMB1] = {
        .resourceHeaderID = 3,
        .x = 164,
        .y = 52,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_STATUS_ICON_MEMB2] = {
        .resourceHeaderID = 3,
        .x = 36,
        .y = 92,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_STATUS_ICON_MEMB3] = {
        .resourceHeaderID = 3,
        .x = 164,
        .y = 100,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_STATUS_ICON_MEMB4] = {
        .resourceHeaderID = 3,
        .x = 36,
        .y = 140,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_STATUS_ICON_MEMB5] = {
        .resourceHeaderID = 3,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_HELD_ITEM_MEMB0] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_HELD_ITEM_MEMB1] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_HELD_ITEM_MEMB2] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_HELD_ITEM_MEMB3] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_HELD_ITEM_MEMB4] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_HELD_ITEM_MEMB5] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_BALL_SEAL_MEMB0] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_BALL_SEAL_MEMB1] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_BALL_SEAL_MEMB2] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_BALL_SEAL_MEMB3] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_BALL_SEAL_MEMB4] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_BALL_SEAL_MEMB5] = {
        .resourceHeaderID = 10,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_UNK_22] = {
        .resourceHeaderID = 11,
        .x = 164,
        .y = 148,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
    }
};

void PartyMenu_InitSprites(PartyMenuApplication *application)
{
#define LoadSpriteFromResourceHeader(__sprite, __template)                         \
    do {                                                                           \
        application->sprites[__sprite] = SpriteSystem_NewSpriteFromResourceHeader( \
            application->spriteSystem,                                             \
            application->spriteMan,                                                \
            &sSpriteTemplates[__template]);                                        \
    } while (0)

    LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_CURSOR_NORMAL, SPRITE_TEMPLATE_CURSOR_NORMAL);
    LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_CURSOR_SWITCH, SPRITE_TEMPLATE_CURSOR_SWITCH);
    LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_CONFIRM_BUTTON, SPRITE_TEMPLATE_CONFIRM_BUTTON);
    LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_CANCEL_BUTTON, SPRITE_TEMPLATE_CANCEL_BUTTON);
    LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT, SPRITE_TEMPLATE_UNK_22);

    for (u32 i = 0; i < MAX_PARTY_SIZE; i++) {
        LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_STATUS_ICON_MEMB0 + i, SPRITE_TEMPLATE_STATUS_ICON_MEMB0 + i);

        application->partyMembers[i].statusXPos = sSpriteTemplates[SPRITE_TEMPLATE_STATUS_ICON_MEMB0 + i].x;
        application->partyMembers[i].statusYPos = sSpriteTemplates[SPRITE_TEMPLATE_STATUS_ICON_MEMB0 + i].y;
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_STATUS_ICON_MEMB0 + i], FALSE);

        LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_HELD_ITEM_MEMB0 + i, SPRITE_TEMPLATE_HELD_ITEM_MEMB0 + i);
        LoadSpriteFromResourceHeader(PARTY_MENU_SPRITE_BALL_SEAL_MEMB0 + i, SPRITE_TEMPLATE_BALL_SEAL_MEMB0 + i);
    }

    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], FALSE);

#undef LoadSpriteFromResourceHeader
}

void PartyMenu_DrawMemberPokeBall(PartyMenuApplication *application, u8 slot, u16 x, u16 y)
{
    SpriteTemplateFromResourceHeader template;
    template.resourceHeaderID = 0;
    template.x = x;
    template.y = y;
    template.z = 0;
    template.animIdx = 0;
    template.priority = 1;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.dummy18 = 0;
    template.dummy1C = 0;
    template.dummy20 = 0;
    template.dummy24 = 0;

    application->sprites[PARTY_MENU_SPRITE_POKE_BALL_MEMB0 + slot] = SpriteSystem_NewSpriteFromResourceHeader(
        application->spriteSystem,
        application->spriteMan,
        &template);
}

void PartyMenu_CleanupSprites(PartyMenuApplication *application)
{
    SpriteSystem_DestroySpriteManager(application->spriteSystem, application->spriteMan);
    SpriteSystem_Free(application->spriteSystem);
}

void PartyMenu_DrawMemberStatusCondition(PartyMenuApplication *application, u8 slot, u8 icon)
{
    Sprite **pSprite = &application->sprites[PARTY_MENU_SPRITE_STATUS_ICON_MEMB0 + slot];
    if (icon == SUMMARY_CONDITION_NONE) {
        Sprite_SetDrawFlag(*pSprite, FALSE);
        return;
    }

    Sprite_SetAnim(*pSprite, icon);
    Sprite_SetDrawFlag(*pSprite, TRUE);
}

void PartyMenu_DrawMemberHeldItem(PartyMenuApplication *application, u8 slot, u16 item)
{
    Sprite **pSprite = &application->sprites[PARTY_MENU_SPRITE_HELD_ITEM_MEMB0 + slot];
    if (item == ITEM_NONE) {
        Sprite_SetDrawFlag(*pSprite, FALSE);
        return;
    }

    if (Item_IsMail(item) == TRUE) {
        Sprite_SetAnim(*pSprite, 1);
    } else {
        Sprite_SetAnim(*pSprite, 0);
    }

    Sprite_SetDrawFlag(*pSprite, TRUE);
}

void PartyMenu_DrawMemberMail(PartyMenuApplication *application, u8 slot)
{
    Sprite **pSprite = &application->sprites[PARTY_MENU_SPRITE_HELD_ITEM_MEMB0 + slot];
    Sprite_SetAnim(*pSprite, 1);
    Sprite_SetDrawFlag(*pSprite, TRUE);
}

void PartyMenu_AlignMemberHeldItem(PartyMenuApplication *application, u8 slot, s16 x, s16 y)
{
    Sprite **pSprite = &application->sprites[PARTY_MENU_SPRITE_HELD_ITEM_MEMB0 + slot];
    application->partyMembers[slot].itemXPos = x + 8;
    application->partyMembers[slot].itemYPos = y + 8;

    Sprite_SetPositionXY(*pSprite, application->partyMembers[slot].itemXPos, application->partyMembers[slot].itemYPos);
}

void PartyMenu_AlignMemberBallSeal(PartyMenuApplication *application, u8 slot)
{
    Sprite_SetPositionXY(
        application->sprites[PARTY_MENU_SPRITE_BALL_SEAL_MEMB0 + slot],
        application->partyMembers[slot].itemXPos + 8,
        application->partyMembers[slot].itemYPos);
}

void PartyMenu_DrawMemberBallSeal(PartyMenuApplication *application, u8 slot)
{
    Sprite **pSprite = &application->sprites[PARTY_MENU_SPRITE_BALL_SEAL_MEMB0 + slot];
    if (application->partyMembers[slot].ballSeal == 0) {
        Sprite_SetDrawFlag(*pSprite, FALSE);
        return;
    }

    Sprite_SetDrawFlag(*pSprite, TRUE);
}

static void StartSpriteAnim(Sprite *pSprite, u8 anim)
{
    if (Sprite_GetActiveAnim(pSprite) == anim) {
        return;
    }

    Sprite_SetAnimFrame(pSprite, 0);
    Sprite_SetAnim(pSprite, anim);
}

static u8 CalcMemberIconAnim(PartyMenuMember *member)
{
    if (member->curHP == 0) {
        return POKEICON_ANIM_FAINTED;
    }

    if (member->statusIcon != SUMMARY_CONDITION_NONE
        && member->statusIcon != SUMMARY_CONDITION_POKERUS
        && member->statusIcon != SUMMARY_CONDITION_FAINTED) {
        return POKEICON_ANIM_STATUSED;
    }

    switch (HealthBar_Color(member->curHP, member->maxHP, 48)) {
    case BARCOLOR_MAX:
        return POKEICON_ANIM_HP_MAX;
    case BARCOLOR_GREEN:
        return POKEICON_ANIM_HP_GREEN;
    case BARCOLOR_YELLOW:
        return POKEICON_ANIM_HP_YELLOW;
    case BARCOLOR_RED:
        return POKEICON_ANIM_HP_RED;
    }

    return POKEICON_ANIM_FAINTED;
}

void PartyMenu_UpdateMemberIcons(PartyMenuApplication *application)
{
    PartyMenuMember *member;
    u16 slot;
    u16 anim;

    for (slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        member = &application->partyMembers[slot];
        if (member->isPresent == FALSE) {
            continue;
        }

        if (application->orderSwitch.inProgress == TRUE
            && (application->orderSwitch.slots[0] == slot || application->orderSwitch.slots[1] == slot)) {
            anim = POKEICON_ANIM_FAINTED; // Be still while switching members in party order.
        } else {
            anim = CalcMemberIconAnim(member);
        }

        StartSpriteAnim(member->sprite, anim);
        Sprite_UpdateAnim(member->sprite, FX32_ONE);

        // Party members that are active and not statused have a slight vertical "bounce."
        if (application->currPartySlot == slot && anim != POKEICON_ANIM_FAINTED && anim != POKEICON_ANIM_STATUSED) {
            if (Sprite_GetAnimFrame(member->sprite) == 0) {
                Sprite_SetPositionXY(member->sprite, member->spriteXDelta, member->spriteYDelta - 3);
            } else {
                Sprite_SetPositionXY(member->sprite, member->spriteXDelta, member->spriteYDelta + 1);
            }
        } else {
            Sprite_SetPositionXY(member->sprite, member->spriteXDelta, member->spriteYDelta);
        }
    }
}

void PartyMenu_UpdateCursor(PartyMenuApplication *application, u8 slot, u8 palette)
{
    u8 x, y;
    GridMenuCursor_GetFirstCoords(&application->cursorPosTable[slot], &x, &y);

    Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, slot));
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], x, y);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], palette);
}

void PartyMenu_InitTouchButtonEffect(PartyMenuApplication *application, s16 x, s16 y)
{
    VecFx32 pos;
    pos.x = x * FX32_ONE;
    pos.y = y * FX32_ONE;
    pos.y += (256 * FX32_ONE);
    pos.z = 0;

    Sprite_SetPosition(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], &pos);
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], TRUE);
    Sprite_SetAnimFrame(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], 0);
    Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], 0);
}

void PartyMenu_UpdateTouchButtonEffect(PartyMenuApplication *application)
{
    if (Sprite_GetDrawFlag(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT]) == TRUE) {
        Sprite_UpdateAnim(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], FX32_ONE);

        if (Sprite_GetAnimFrame(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT]) == 2) {
            Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT], FALSE);
        }
    }
}
