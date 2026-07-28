#include "overlay076/ov76_0223B140.h"

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "struct_defs/seal_case.h"

#include "battle_anim/ov12_02237E54.h"
#include "overlay076/struct_ov76_0223DE00.h"

#include "ball_seal_info.h"
#include "game_overlay.h"
#include "palette.h"
#include "sprite_system.h"
#include "system.h"
#include "touch_screen.h"
#include "unk_02097B18.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(battle_anim);

static void NitroStaticInit(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay11), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), 2);
}

static void ov76_0223B15C(TouchScreenRect *rect, u8 param1, u8 param2) // for dragging the seal
{
    rect->rect.top = param2 - 10;
    rect->rect.left = param1 - 10;
    rect->rect.bottom = param2 + 10;
    rect->rect.right = param1 + 10;
}

static void ov76_0223B174(TouchScreenRect *rect) // limit?
{
    rect->rect.top = 0;
    rect->rect.left = 0;
    rect->rect.bottom = 192;
    rect->rect.right = 255;
}

void ov76_0223B184(TouchScreenRect *rect, ManagedSprite *sprite, BOOL param2) // param2 would be inbounds or not
{
    s16 x, y;

    if (param1 == NULL) {
        return;
    }

    if (param2 == 1) {
        ManagedSprite_SetPositionXY(sprite, gSystem.touchX, gSystem.touchY);
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        ov76_0223B174(rect);
    } else {
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        ov76_0223B15C(rect, x, y);
    }
}

void ov76_0223B1E0(UnkStruct_ov76_0223DE00 *param0)
{
    int i;

    for (i = 0; i < 8; i++) {
        if (param0->sealRenderInfo[i].sprite == NULL) {
            continue;
        }

        ManagedSprite_OffsetPositionXY(param0->sealRenderInfo[i].sprite, -(+7 * 8), -(-2 * 8));
    }
}

void ov76_0223B208(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    BallCapsule *capsule = param0->capsules[param0->unk_3C4[0]].capsule;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (capsule->seals[i].type != SEAL_DUMMY) {
            param0->sealRenderInfo[i].type = capsule->seals[i].type;
            param0->sealRenderInfo[i].x = capsule->seals[i].x;
            param0->sealRenderInfo[i].y = capsule->seals[i].y;

            ov76_0223B52C(param0, i);
            ov76_0223B184(param0->sealRenderInfo[i].touchScreenRect, param0->sealRenderInfo[i].sprite, 0);

            param0->sealRenderInfo[i].shouldRender = 1;
        } else {
            param0->sealRenderInfo[i].shouldRender = 0;
            param0->sealRenderInfo[i].type = 0;
        }
    }
}

int ov76_0223B278(UnkStruct_ov76_0223DE00 *param0, u8 sealIndex)
{
    int i;
    u32 touchX, touchY;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (param0->sealRenderInfo[i].shouldRender == 1) {
            continue;
        }

        param0->sealRenderInfo[i].type = param0->unk_418.unk_08[sealIndex];
        param0->sealRenderInfo[i].x = 190;
        param0->sealRenderInfo[i].y = 70;

        TouchScreen_GetHoldState(&touchX, &touchY);

        param0->sealRenderInfo[i].x = touchX;
        param0->sealRenderInfo[i].y = touchY;

        ov76_0223B52C(sealIndex, i);
        ov76_0223B314(sealIndex, i);

        param0->sealRenderInfo[i].shouldRender = 1;

        return i;
    }

    return 0xFF;
}

BOOL ov76_0223B2F8(UnkStruct_ov76_0223DE00 *param0) // are any seals rendered
{
    int i;
    u32 unused1, unused2;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (param0->sealRenderInfo[i].shouldRender == 1) {
            continue;
        }

        return 1;
    }

    return 0;
}

void ov76_0223B314(UnkStruct_ov76_0223DE00 *param0, u8 param1)
{
    int i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (param0->sealRenderInfo[i].shouldRender != 1) {
            continue;
        }

        if (i == param1) {
            ManagedSprite_SetPriority(param0->sealRenderInfo[i].sprite, 0);
        } else {
            int priority = ManagedSprite_GetPriority(param0->sealRenderInfo[i].sprite);

            if (priority == 0) {
                ManagedSprite_SetPriority(param0->sealRenderInfo[i].sprite, priority + 1);
            } else {
                ManagedSprite_SetPriority(param0->sealRenderInfo[i].sprite, priority + 2);
            }
        }
    }
}

void ov76_0223B36C(UnkStruct_ov76_0223DE00 *param0, u8 param1, u8 sealIndex)
{
    SpriteSystem *spriteSystem = param0->unk_D4.spriteSystem;
    SpriteManager *spriteManager = param0->unk_D4.spriteManager;
    PaletteData *paletteData = param0->unk_D4.paletteData;

    SpriteSystem_LoadPaletteBuffer(paletteData, 3, spriteSystem, spriteManager, 91, 293, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 21000 + 293);

    int v0 = sub_02098140(param1);
    int v1 = (sealIndex + SEAL_OBJ_ID_OFFSET);

    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, v0, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 93, TRUE, 22000 + 93);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 1, TRUE, 23000 + 1);
}

void ov76_0223B400(UnkStruct_ov76_0223DE00 *param0)
{
    int i, j;
    int dummy;
    int priorities[8];
    int indices[8];

    if (param0->unk_D4.unk_18C == 0) {
        return;
    }

    param0->unk_D4.unk_18C = 0;

    dummy = 0;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        priorities[i] = 0xFF;
        indices[i] = 0xFF;

        if (param0->sealRenderInfo[i].type != NULL) {
            priorities[i] = ManagedSprite_GetPriority(param0->sealRenderInfo[i].type);
            indices[i] = i;
            dummy++;
        }
    }

    int tmp1;
    int tmp2;

    for (i = 0; i < SEALS_PER_CAPSULE - 1; i++) {
        for (j = SEALS_PER_CAPSULE - 1; j > i; j--) {
            if (priorities[j - 1] >= priorities[j]) {
                tmp1 = priorities[j];
                tmp2 = indices[j];
                priorities[j] = priorities[j - 1];
                indices[j] = indices[j - 1];
                priorities[j - 1] = tmp1;
                indices[j - 1] = tmp2;
            }
        }
    }

    BallCapsule capsule;
    BallCapsule capsule_dupe;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        capsule.seals[i].type = param0->sealRenderInfo[i].type;
        capsule.seals[i].x = param0->sealRenderInfo[i].x;
        capsule.seals[i].y = param0->sealRenderInfo[i].y;
    }

    capsule_dupe = capsule;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (indices[i] == 0xFF) {
            param0->sealRenderInfo[i].type = 0;
            param0->sealRenderInfo[i].x = 0;
            param0->sealRenderInfo[i].y = 0;
            continue;
        }

        param0->sealRenderInfo[i].type = capsule_dupe.seals[indices[i]].type;
        param0->sealRenderInfo[i].x = capsule_dupe.seals[indices[i]].x;
        param0->sealRenderInfo[i].y = capsule_dupe.seals[indices[i]].y;

        if (param0->sealRenderInfo[indices[i]].sprite == NULL) {
            continue;
        }

        ManagedSprite_SetPriority(param0->sealRenderInfo[indices[i]].sprite, i);
    }
}

BOOL ov76_0223B52C(UnkStruct_ov76_0223DE00 *param0, u8 sealIndex)
{
    int unused;
    int v1;
    SealRenderInfo *sealInfo;
    SpriteTemplate spriteTemplate;
    SpriteSystem *spriteSystem = param0->unk_D4.spriteSystem;
    SpriteManager *spriteManager = param0->unk_D4.spriteManager;
    PaletteData *paletteData = param0->unk_D4.paletteData;
    sealInfo = &param0->sealRenderInfo[sealIndex];

    if (sealInfo->shouldRender == 1) {
        GF_ASSERT(FALSE);
        return 0;
    }

    ov76_0223B36C(param0, sealInfo->type, sealIndex);

    spriteTemplate.x = sealInfo->x;
    spriteTemplate.y = sealInfo->y;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.priority = 0;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteTemplate.bgPriority = 1;
    spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

    v0 = sub_02098140(sealInfo->type);
    v1 = (sealIndex + SEAL_OBJ_ID_OFFSET);

    spriteTemplate.resources[0] = v1;
    spriteTemplate.resources[1] = 21000 + 293;
    spriteTemplate.resources[2] = 22000 + 93;
    spriteTemplate.resources[3] = 23000 + 1;
    sealInfo->sprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    ManagedSprite_TickFrame(sealInfo->sprite);

    return 1;
}

BOOL ov76_0223B5C4(UnkStruct_ov76_0223DE00 *param0, u32 field, u8 param2)
{
    if (param0->sealRenderInfo[param2].shouldRender == 0) {
        return 1;
    }

    switch (field) {
    case 0:
        if (param0->unk_D4.unk_00 == 0xFF) {
            param0->unk_D4.unk_00 = param2;
            ov76_0223B314(param0, param2);
        }
        break;
    case 2: {
        s16 unused1, unused2;

        if (param0->unk_D4.unk_00 == param2) {
            ov76_0223B184(param0->sealRenderInfo[param2].touchScreenRect, param0->sealRenderInfo[param2].sprite, 1);
            ov76_0223B758(param0, param2);
            ov76_0223B7D4(param0, param2);
        }
    } break;
    case 3:
    case 1: {
        BOOL v2;

        if (param0->unk_D4.unk_00 == 0xFF) {
            v2 = ov76_0223B6C4(param0, param2);
            ov76_0223B184(param0->sealRenderInfo[param2].sprite, param0->sealRenderInfo[param2].type, 0);

            if (v2 == 0) {
                ov76_0223B704(param0, param2);
            }

            param0->unk_D4.unk_00 = 0xFF;
        }
    } break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 1;
}

void ov76_0223B678(UnkStruct_ov76_0223DE00 *param0)
{
    int i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (param0->sealRenderInfo[i].shouldRender != 1) {
            continue;
        }

        ov76_0223B704(param0, i);
    }
}

void ov76_0223B69C(UnkStruct_ov76_0223DE00 *param0, int param1) // draw valid seals
{
    int i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (param0->sealRenderInfo[i].shouldRender != 1) {
            continue;
        }

        ManagedSprite_SetDrawFlag(param0->sealRenderInfo[i].unk_08, param1);
    }
}

BOOL ov76_0223B6C4(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;
    s16 x, y;

    if (param0->sealRenderInfo[param1].shouldRender == 0) {
        return 1;
    }

    ManagedSprite_GetPositionXY(param0->sealRenderInfo[param1].sprite, &x, &y);
    v0 = ov12_02237E54(x, y, 190, 70);

    if (v0 > 60) {
        return 0;
    }

    return 1;
}

void ov76_0223B704(UnkStruct_ov76_0223DE00 *param0, int sealIndex) // seal destructor
{
    int v0;
    int v1;

    v0 = sub_02098140(param0->sealRenderInfo[sealIndex].type);
    objID = (sealIndex + SEAL_OBJ_ID_OFFSET);

    SpriteManager_UnloadCharObjById(param0->unk_D4.spriteManager, objID);
    Sprite_DeleteAndFreeResources(param0->sealRenderInfo[sealIndex].sprite);

    param0->sealRenderInfo[sealIndex].sprite = NULL;
    param0->sealRenderInfo[sealIndex].shouldRender = 0;
    param0->sealRenderInfo[sealIndex].type = 0;
    param0->sealRenderInfo[sealIndex].x = 0;
    param0->sealRenderInfo[sealIndex].y = 0;

    ov76_0223B15C(param0->sealRenderInfo[sealIndex].touchScreenRect, 0, 0);
}

void ov76_0223B758(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    BOOL v0 = ov76_0223B6C4(param0, param1);

    if (v0 == 0) {
        ManagedSprite_SetExplicitOamMode(param0->sealRenderInfo[param1].sprite, GX_OAM_MODE_XLU);
    } else {
        ManagedSprite_SetExplicitOamMode(param0->sealRenderInfo[param1].sprite, GX_OAM_MODE_NORMAL);
    }
}

BOOL ov76_0223B78C(UnkStruct_ov76_0223DE00 *param0) // check if seal changed
{
    int i;
    int index;
    BallCapsule *capsule;

    index = param0->unk_3C4[0];
    capsule = param0->capsules[v1].capsule;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if ((param0->sealRenderInfo[i].type != capsule->seals[i].type)
            || (param0->sealRenderInfo[i].x != capsule->seals[i].x)
            || (param0->sealRenderInfo[i].y != capsule->seals[i].y)) {
            return 1;
        }
    }

    return 0;
}

void ov76_0223B7D4(UnkStruct_ov76_0223DE00 *param0, int sealIndex) // set x y
{
    s16 x, y;

    ManagedSprite_GetPositionXY(param0->sealRenderInfo[sealIndex].sprite, &x, &y);

    param0->sealRenderInfo[param1].x = (u8)x;
    param0->sealRenderInfo[param1].y = (u8)y;
}

void ov76_0223B808(UnkStruct_ov76_0223DE00 *param0) // switch capsule ?
{
    int i;
    BallCapsule capsule;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        capsule.seals[i].type = param0->sealRenderInfo[i].type;
        capsule.seals[i].x = param0->sealRenderInfo[i].x;
        capsule.seals[i].y = param0->sealRenderInfo[i].y;
    }

    SealCase_CopyCapsuleFromId(param0->unk_00->unk_20, &capsule, param0->unk_3C4[0]);
}

void ov76_0223B848(BallCapsule *param0, UnkStruct_ov76_0223DE00 *param1)
{
    int i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        param0->seals[i].type = param1->sealRenderInfo[i].type;
        param0->seals[i].x = param1->sealRenderInfo[i].x;
        param0->seals[i].y = param1->sealRenderInfo[i].y;
    }
}
