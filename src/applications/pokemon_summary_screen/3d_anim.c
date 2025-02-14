#include "applications/pokemon_summary_screen/3d_anim.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "struct_defs/archived_sprite.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/sprites.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "gx_layers.h"
#include "pokemon.h"
#include "unk_0200762C.h"
#include "unk_02015F84.h"
#include "unk_0202419C.h"

typedef struct {
    VecFx16 max;
    VecFx16 min;
    VecFx16 valueLength;
} ConditionVtxBounds;

enum ConditionState {
    CONDITION_STATE_INITIAL = 0,
    // the states inbetween are never referred to directly, but involve drawing the rectangles
    CONDITION_STATE_FINISH_DRAW = 3,
    CONDITION_STATE_FLASH,
};

enum ConditionRectVertices {
    VTX_TOP_LEFT = 0,
    VTX_TOP_RIGHT,
    VTX_BOTTOM_LEFT,
    VTX_BOTTOM_RIGHT,

    MAX_CONDITION_RECT_VTX
};

static void DrawConditionRects(ConditionRectangle *rect);
static void UpdateConditionVec(VecFx16 *currVec, VecFx16 *deltaVec);
static void UpdateConditionRectsOrFlash(PokemonSummaryScreen *summaryScreen);
static void SetConditionVecFromStat(const ConditionVtxBounds *bounds, VecFx16 *outVec, u8 statValue);
static void SetConditionVecDifference(VecFx16 *startVec, VecFx16 *endVec, VecFx16 *outVec);

static const ConditionVtxBounds sConditionRectBounds[][MAX_CONDITION_RECT_VTX] = {
    [CONDITION_RECT_Q1] = {
        [VTX_TOP_LEFT] = {
            .max = { 5138, 3784, 0 },
            .min = { 5138, 735, 0 },
            .valueLength = { 0, 12, 0 },
        },
        [VTX_TOP_RIGHT] = {
            .max = { 8344, 965, 0 },
            .min = { 5538, 383, 0 },
            .valueLength = { 11, 2, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            .max = { 7079, -2955, 0 },
            .min = { 5380, -106, 0 },
            .valueLength = { 7, -11, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            .max = { 5138, 300, 0 },
            .min = { 5138, 300, 0 },
            .valueLength = { 0, 0, 0 },
        },
    },
    [CONDITION_RECT_Q2] = {
        [VTX_TOP_LEFT] = {
            .max = { 1843, 965, 0 },
            .min = { 4645, 383, 0 },
            .valueLength = { -11, 2, 0 },
        },
        [VTX_TOP_RIGHT] = {
            .max = { 5045, 3784, 0 },
            .min = { 5045, 735, 0 },
            .valueLength = { 0, 12, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            .max = { 5045, 300, 0 },
            .min = { 5045, 300, 0 },
            .valueLength = { 0, 0, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            .max = { 3106, -2955, 0 },
            .min = { 4803, -106, 0 },
            .valueLength = { -7, -11, 0 },
        },
    },
    [CONDITION_RECT_Q3] = {
        [VTX_TOP_LEFT] = {
            .max = { 1843, 965, 0 },
            .min = { 4645, 383, 0 },
            .valueLength = { -11, 2, 0 },
        },
        [VTX_TOP_RIGHT] = {
            .max = { 5045, 300, 0 },
            .min = { 5045, 300, 0 },
            .valueLength = { 0, 0, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            .max = { 7079, -2955, 0 },
            .min = { 5299, -106, 0 },
            .valueLength = { 7, -11, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            .max = { 3106, -2955, 0 },
            .min = { 4803, -106, 0 },
            .valueLength = { -7, -11, 0 },
        },
    },
    [CONDITION_RECT_Q4] = {
        [VTX_TOP_LEFT] = {
            .max = { 5138, 300, 0 },
            .min = { 5138, 300, 0 },
            .valueLength = { 0, 0, 0 },
        },
        [VTX_TOP_RIGHT] = {
            .max = { 8344, 965, 0 },
            .min = { 5538, 383, 0 },
            .valueLength = { 11, 2, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            .max = { 7079, -2955, 0 },
            .min = { 5380, -106, 0 },
            .valueLength = { 7, -11, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            .max = { 3106, -2955, 0 },
            .min = { 4884, -106, 0 },
            .valueLength = { -7, -11, 0 },
        },
    },
};

void PokemonSummaryScreen_Setup3DGfx(PokemonSummaryScreen *summaryScreen)
{
    NNS_G3dInit();

    G3X_Init();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_AntiAlias(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, 0, 0, 0);
    G3X_SetClearColor(0, 0, 0x7FFF, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    G3_ViewPort(0, 0, 255, 191);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(2);
}

void PokemonSummaryScreen_Update3DGfx(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page == SUMMARY_PAGE_CONDITION) {
        sub_020241B4();
        Camera_ComputeViewMatrix();

        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_Identity();
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
        G3_Identity();

        NNS_G3dGlbFlush();
        DrawConditionRects(summaryScreen->currRects);
        NNS_G3dGlbFlush();
        UpdateConditionRectsOrFlash(summaryScreen);
    }

    NNS_G2dSetupSoftwareSpriteCamera();
    sub_02007768(summaryScreen->monSprite.spriteManager);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void PokemonSummaryScreen_FreeCameraAndMonSprite(PokemonSummaryScreen *summaryScreen)
{
    Camera_Delete(summaryScreen->monSprite.camera);
    sub_02016114(summaryScreen->monSprite.animationSys, 0);
    sub_02015FB8(summaryScreen->monSprite.animationSys);
    sub_02007B6C(summaryScreen->monSprite.spriteManager);
}

void PokemonSummaryScreen_SetupCamera(PokemonSummaryScreen *summaryScreen)
{
    VecFx32 pos = { 0, 0, 0x10000 };
    CameraAngle angle = { 0, 0, 0 };
    fx32 distance = 0x10000;
    u16 fovY = 0x5C1;

    summaryScreen->monSprite.camera = Camera_Alloc(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Camera_InitWithPosition(&pos, distance, &angle, fovY, 1, summaryScreen->monSprite.camera);
    Camera_SetClipping(0, FX32_CONST(100), summaryScreen->monSprite.camera);
    Camera_ReleaseTarget(summaryScreen->monSprite.camera);
    Camera_SetAsActive(summaryScreen->monSprite.camera);
}

static void DrawConditionRects(ConditionRectangle *rects)
{
    G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 18, 20, 0);
    G3_Begin(GX_BEGIN_QUADS);

    for (u32 i = 0; i < MAX_CONDITION_RECT; i++) {
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].topLeft.x, rects[i].topLeft.y, rects[i].topLeft.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].topRight.x, rects[i].topRight.y, rects[i].topRight.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].bottomRight.x, rects[i].bottomRight.y, rects[i].bottomRight.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].bottomLeft.x, rects[i].bottomLeft.y, rects[i].bottomLeft.z);
    }

    G3_End();
}

static void UpdateConditionVec(VecFx16 *currVec, VecFx16 *deltaVec)
{
    currVec->x += deltaVec->x;
    currVec->y += deltaVec->y;
    currVec->z += deltaVec->z;
}

static void UpdateConditionRectsOrFlash(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->conditionState == CONDITION_STATE_FLASH) {
        PokemonSummaryScreen_UpdateConditionFlashAnim(summaryScreen);
        return;
    }

    u32 i;

    if (summaryScreen->conditionState == CONDITION_STATE_FINISH_DRAW) {
        for (i = 0; i < MAX_CONDITION_RECT; i++) {
            summaryScreen->currRects[i] = summaryScreen->maxRects[i];
        }
    } else {
        for (i = 0; i < MAX_CONDITION_RECT; i++) {
            UpdateConditionVec(&summaryScreen->currRects[i].topLeft, &summaryScreen->deltaRects[i].topLeft);
            UpdateConditionVec(&summaryScreen->currRects[i].topRight, &summaryScreen->deltaRects[i].topRight);
            UpdateConditionVec(&summaryScreen->currRects[i].bottomLeft, &summaryScreen->deltaRects[i].bottomLeft);
            UpdateConditionVec(&summaryScreen->currRects[i].bottomRight, &summaryScreen->deltaRects[i].bottomRight);
        }
    }

    summaryScreen->conditionState++;

    if (summaryScreen->conditionState == CONDITION_STATE_FLASH) {
        PokemonSummaryScreen_UpdateConditionFlashSprites(summaryScreen, TRUE);
    } else {
        PokemonSummaryScreen_UpdateConditionFlashSprites(summaryScreen, FALSE);
    }
}

void PokemonSummaryScreen_InitConditionRects(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page != SUMMARY_PAGE_CONDITION) {
        return;
    }

    summaryScreen->currRects[CONDITION_RECT_Q1].topLeft = sConditionRectBounds[CONDITION_RECT_Q1][VTX_BOTTOM_RIGHT].min;
    summaryScreen->currRects[CONDITION_RECT_Q1].topRight = sConditionRectBounds[CONDITION_RECT_Q1][VTX_BOTTOM_RIGHT].min;
    summaryScreen->currRects[CONDITION_RECT_Q1].bottomLeft = sConditionRectBounds[CONDITION_RECT_Q1][VTX_BOTTOM_RIGHT].min;
    summaryScreen->currRects[CONDITION_RECT_Q1].bottomRight = sConditionRectBounds[CONDITION_RECT_Q1][VTX_BOTTOM_RIGHT].min;

    summaryScreen->currRects[CONDITION_RECT_Q2].topLeft = sConditionRectBounds[CONDITION_RECT_Q2][VTX_BOTTOM_LEFT].min;
    summaryScreen->currRects[CONDITION_RECT_Q2].topRight = sConditionRectBounds[CONDITION_RECT_Q2][VTX_BOTTOM_LEFT].min;
    summaryScreen->currRects[CONDITION_RECT_Q2].bottomLeft = sConditionRectBounds[CONDITION_RECT_Q2][VTX_BOTTOM_LEFT].min;
    summaryScreen->currRects[CONDITION_RECT_Q2].bottomRight = sConditionRectBounds[CONDITION_RECT_Q2][VTX_BOTTOM_LEFT].min;

    summaryScreen->currRects[CONDITION_RECT_Q3].topLeft = sConditionRectBounds[CONDITION_RECT_Q3][VTX_TOP_RIGHT].min;
    summaryScreen->currRects[CONDITION_RECT_Q3].topRight = sConditionRectBounds[CONDITION_RECT_Q3][VTX_TOP_RIGHT].min;
    summaryScreen->currRects[CONDITION_RECT_Q3].bottomLeft = sConditionRectBounds[CONDITION_RECT_Q3][VTX_TOP_RIGHT].min;
    summaryScreen->currRects[CONDITION_RECT_Q3].bottomRight = sConditionRectBounds[CONDITION_RECT_Q3][VTX_TOP_RIGHT].min;

    summaryScreen->currRects[CONDITION_RECT_Q4].topLeft = sConditionRectBounds[CONDITION_RECT_Q4][VTX_TOP_LEFT].min;
    summaryScreen->currRects[CONDITION_RECT_Q4].topRight = sConditionRectBounds[CONDITION_RECT_Q4][VTX_TOP_LEFT].min;
    summaryScreen->currRects[CONDITION_RECT_Q4].bottomLeft = sConditionRectBounds[CONDITION_RECT_Q4][VTX_TOP_LEFT].min;
    summaryScreen->currRects[CONDITION_RECT_Q4].bottomRight = sConditionRectBounds[CONDITION_RECT_Q4][VTX_TOP_LEFT].min;

    PokemonSummaryScreen_InitMaxAndDeltaConditionRects(summaryScreen);
}

static void SetConditionVecFromStat(const ConditionVtxBounds *bounds, VecFx16 *outVec, u8 statValue)
{
    if (statValue == MAX_CONTEST_STAT) {
        *outVec = bounds->max;
    } else if (statValue == 0) {
        *outVec = bounds->min;
    } else {
        outVec->x = bounds->min.x + bounds->valueLength.x * statValue;
        outVec->y = bounds->min.y + bounds->valueLength.y * statValue;
        outVec->z = bounds->min.z + bounds->valueLength.z * statValue;
    }
}

static void SetConditionVecDifference(VecFx16 *startVec, VecFx16 *endVec, VecFx16 *outVec)
{
    outVec->x = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->x - startVec->x) / 4);
    outVec->y = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->y - startVec->y) / 4);
    outVec->z = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->z - startVec->z) / 4);
}

void PokemonSummaryScreen_InitMaxAndDeltaConditionRects(PokemonSummaryScreen *summaryScreen)
{
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q1][VTX_TOP_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q1].topLeft, summaryScreen->monData.cool);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q1][VTX_TOP_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q1].topRight, summaryScreen->monData.beauty);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q1][VTX_BOTTOM_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q1].bottomRight, summaryScreen->monData.cute);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q1][VTX_BOTTOM_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q1].bottomLeft, 0);

    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q2][VTX_TOP_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q2].topLeft, summaryScreen->monData.tough);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q2][VTX_TOP_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q2].topRight, summaryScreen->monData.cool);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q2][VTX_BOTTOM_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q2].bottomRight, 0);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q2][VTX_BOTTOM_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q2].bottomLeft, summaryScreen->monData.smart);

    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q3][VTX_TOP_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q3].topLeft, summaryScreen->monData.tough);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q3][VTX_TOP_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q3].topRight, 0);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q3][VTX_BOTTOM_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q3].bottomRight, summaryScreen->monData.cute);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q3][VTX_BOTTOM_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q3].bottomLeft, summaryScreen->monData.smart);

    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q4][VTX_TOP_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q4].topLeft, 0);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q4][VTX_TOP_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q4].topRight, summaryScreen->monData.beauty);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q4][VTX_BOTTOM_LEFT], &summaryScreen->maxRects[CONDITION_RECT_Q4].bottomRight, summaryScreen->monData.cute);
    SetConditionVecFromStat(&sConditionRectBounds[CONDITION_RECT_Q4][VTX_BOTTOM_RIGHT], &summaryScreen->maxRects[CONDITION_RECT_Q4].bottomLeft, summaryScreen->monData.smart);

    for (u32 i = 0; i < MAX_CONDITION_RECT; i++) {
        SetConditionVecDifference(&summaryScreen->currRects[i].topLeft, &summaryScreen->maxRects[i].topLeft, &summaryScreen->deltaRects[i].topLeft);
        SetConditionVecDifference(&summaryScreen->currRects[i].topRight, &summaryScreen->maxRects[i].topRight, &summaryScreen->deltaRects[i].topRight);
        SetConditionVecDifference(&summaryScreen->currRects[i].bottomLeft, &summaryScreen->maxRects[i].bottomLeft, &summaryScreen->deltaRects[i].bottomLeft);
        SetConditionVecDifference(&summaryScreen->currRects[i].bottomRight, &summaryScreen->maxRects[i].bottomRight, &summaryScreen->deltaRects[i].bottomRight);
    }

    summaryScreen->conditionState = CONDITION_STATE_INITIAL;
}

void PokemonSummaryScreen_LoadMonSprite(PokemonSummaryScreen *summaryScreen)
{
    summaryScreen->monSprite.spriteManager = sub_0200762C(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    void *monData = PokemonSummaryScreen_MonData(summaryScreen);

    PokemonSpriteTemplate spriteTemplate;

    if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
        BoxPokemon_BuildArchivedSprite(&spriteTemplate, monData, 2, 0);
    } else {
        Pokemon_BuildArchivedSprite(&spriteTemplate, monData, 2);
    }

    PokeSprite_LoadAnimationFrames(summaryScreen->narcPlPokeData, summaryScreen->monSprite.frames, summaryScreen->monData.species, 1);

    summaryScreen->monSprite.flip = SpeciesData_GetFormValue(summaryScreen->monData.species, summaryScreen->monData.form, SPECIES_DATA_FLIP_SPRITE) ^ 1;
    summaryScreen->monSprite.sprite = sub_02007C34(summaryScreen->monSprite.spriteManager, &spriteTemplate, 52, 104, 0, 0, summaryScreen->monSprite.frames, NULL);

    sub_02007DEC(summaryScreen->monSprite.sprite, 35, summaryScreen->monSprite.flip);
}

void PokemonSummaryScreen_LoadMonAnimation(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.isEgg != FALSE) {
        PokeSprite_LoadAnimation(summaryScreen->narcPlPokeData, summaryScreen->monSprite.animationSys, summaryScreen->monSprite.sprite, 0, 2, summaryScreen->monSprite.flip, 0);
    } else {
        sub_02007B98(summaryScreen->monSprite.sprite, 1);
        PokeSprite_LoadAnimation(summaryScreen->narcPlPokeData, summaryScreen->monSprite.animationSys, summaryScreen->monSprite.sprite, summaryScreen->monData.species, 2, summaryScreen->monSprite.flip, 0);
    }
}

void PokemonSummaryScreen_ChangeMonSprite(PokemonSummaryScreen *summaryScreen)
{
    sub_02016114(summaryScreen->monSprite.animationSys, 0);
    sub_02007B6C(summaryScreen->monSprite.spriteManager);
    PokemonSummaryScreen_LoadMonSprite(summaryScreen);
    PokemonSummaryScreen_LoadMonAnimation(summaryScreen);
}
