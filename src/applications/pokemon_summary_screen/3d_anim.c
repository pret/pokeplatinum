

#include "applications/pokemon_summary_screen/3d_anim.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_02091850.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/sprite.h"
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

    CONDITION_STATE_FINISH_DRAW = 3,
    CONDITION_STATE_FLASH,
};

static void DrawConditionShape(ConditionVtx *vtx);
static void UpdateConditionVec(VecFx16 *currVec, VecFx16 *deltaVec);
static void UpdateConditionShapeOrFlash(PokemonSummaryScreen *summaryScreen);
static void SetConditionVecFromStat(const ConditionVtxBounds *bounds, VecFx16 *vector, u8 statValue);
static void SetConditionVecDifference(VecFx16 *startVec, VecFx16 *endVec, VecFx16 *outVec);

static const ConditionVtxBounds sVtxBounds[][CONDITION_VTX_COUNT] = {
    {
        {
            { 0x1412, 0xEC8, 0x0 },
            { 0x1412, 0x2DF, 0x0 },
            { 0x0, 0xC, 0x0 },
        },
        {
            { 0x2098, 0x3C5, 0x0 },
            { 0x15A2, 0x17F, 0x0 },
            { 0xB, 0x2, 0x0 },
        },
        {
            { 0x1BA7, 0xFFFFFFFFFFFFF475, 0x0 },
            { 0x1504, 0xFFFFFFFFFFFFFF96, 0x0 },
            { 0x7, 0xFFFFFFFFFFFFFFF5, 0x0 },
        },
        {
            { 0x1412, 0x12C, 0x0 },
            { 0x1412, 0x12C, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
    },
    {
        {
            { 0x733, 0x3C5, 0x0 },
            { 0x1225, 0x17F, 0x0 },
            { 0xFFFFFFFFFFFFFFF5, 0x2, 0x0 },
        },
        {
            { 0x13B5, 0xEC8, 0x0 },
            { 0x13B5, 0x2DF, 0x0 },
            { 0x0, 0xC, 0x0 },
        },
        {
            { 0x13B5, 0x12C, 0x0 },
            { 0x13B5, 0x12C, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
        {
            { 0xC22, 0xFFFFFFFFFFFFF475, 0x0 },
            { 0x12C3, 0xFFFFFFFFFFFFFF96, 0x0 },
            { 0xFFFFFFFFFFFFFFF9, 0xFFFFFFFFFFFFFFF5, 0x0 },
        },
    },
    {
        {
            { 0x733, 0x3C5, 0x0 },
            { 0x1225, 0x17F, 0x0 },
            { 0xFFFFFFFFFFFFFFF5, 0x2, 0x0 },
        },
        {
            { 0x13B5, 0x12C, 0x0 },
            { 0x13B5, 0x12C, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
        {
            { 0x1BA7, 0xFFFFFFFFFFFFF475, 0x0 },
            { 0x14B3, 0xFFFFFFFFFFFFFF96, 0x0 },
            { 0x7, 0xFFFFFFFFFFFFFFF5, 0x0 },
        },
        {
            { 0xC22, 0xFFFFFFFFFFFFF475, 0x0 },
            { 0x12C3, 0xFFFFFFFFFFFFFF96, 0x0 },
            { 0xFFFFFFFFFFFFFFF9, 0xFFFFFFFFFFFFFFF5, 0x0 },
        },
    },
    {
        {
            { 0x1412, 0x12C, 0x0 },
            { 0x1412, 0x12C, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
        {
            { 0x2098, 0x3C5, 0x0 },
            { 0x15A2, 0x17F, 0x0 },
            { 0xB, 0x2, 0x0 },
        },
        {
            { 0x1BA7, 0xFFFFFFFFFFFFF475, 0x0 },
            { 0x1504, 0xFFFFFFFFFFFFFF96, 0x0 },
            { 0x7, 0xFFFFFFFFFFFFFFF5, 0x0 },
        },
        {
            { 0xC22, 0xFFFFFFFFFFFFF475, 0x0 },
            { 0x1314, 0xFFFFFFFFFFFFFF96, 0x0 },
            { 0xFFFFFFFFFFFFFFF9, 0xFFFFFFFFFFFFFFF5, 0x0 },
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
    G3X_SetClearColor(0, 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    G3_ViewPort(0, 0, 255, 191);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(2);
}

void PokemonSummaryScreen_Update3DGfx(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page == PSS_PAGE_CONDITION) {
        sub_020241B4();
        Camera_ComputeViewMatrix();

        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_Identity();
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
        G3_Identity();

        NNS_G3dGlbFlush();
        DrawConditionShape(summaryScreen->currVtxs);
        NNS_G3dGlbFlush();
        UpdateConditionShapeOrFlash(summaryScreen);
    }

    NNS_G2dSetupSoftwareSpriteCamera();
    sub_02007768(summaryScreen->monSprite.spriteManager);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void PokemonSummaryScreen_FreeCameraAndSpriteData(PokemonSummaryScreen *summaryScreen)
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

static void DrawConditionShape(ConditionVtx *vtx)
{
    G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 18, 20, 0);
    G3_Begin(GX_BEGIN_QUADS);

    for (u32 i = 0; i < CONDITION_VTX_COUNT; i++) {
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(vtx[i].unk_00.x, vtx[i].unk_00.y, vtx[i].unk_00.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(vtx[i].unk_06.x, vtx[i].unk_06.y, vtx[i].unk_06.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(vtx[i].unk_12.x, vtx[i].unk_12.y, vtx[i].unk_12.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(vtx[i].unk_0C.x, vtx[i].unk_0C.y, vtx[i].unk_0C.z);
    }

    G3_End();
}

static void UpdateConditionVec(VecFx16 *currVec, VecFx16 *deltaVec)
{
    currVec->x += deltaVec->x;
    currVec->y += deltaVec->y;
    currVec->z += deltaVec->z;
}

static void UpdateConditionShapeOrFlash(PokemonSummaryScreen *summaryScreen)
{
    u32 i;

    if (summaryScreen->conditionState == CONDITION_STATE_FLASH) {
        PokemonSummaryScreen_UpdateConditionFlashAnim(summaryScreen);
        return;
    }

    if (summaryScreen->conditionState == CONDITION_STATE_FINISH_DRAW) {
        for (i = 0; i < CONDITION_VTX_COUNT; i++) {
            summaryScreen->currVtxs[i] = summaryScreen->maxVtxs[i];
        }
    } else {
        for (i = 0; i < CONDITION_VTX_COUNT; i++) {
            UpdateConditionVec(&summaryScreen->currVtxs[i].unk_00, &summaryScreen->deltaVtxs[i].unk_00);
            UpdateConditionVec(&summaryScreen->currVtxs[i].unk_06, &summaryScreen->deltaVtxs[i].unk_06);
            UpdateConditionVec(&summaryScreen->currVtxs[i].unk_0C, &summaryScreen->deltaVtxs[i].unk_0C);
            UpdateConditionVec(&summaryScreen->currVtxs[i].unk_12, &summaryScreen->deltaVtxs[i].unk_12);
        }
    }

    summaryScreen->conditionState++;

    if (summaryScreen->conditionState == CONDITION_STATE_FLASH) {
        PokemonSummaryScreen_UpdateConditionFlashSprites(summaryScreen, TRUE);
    } else {
        PokemonSummaryScreen_UpdateConditionFlashSprites(summaryScreen, FALSE);
    }
}

void PokemonSummaryScreen_InitConditionShape(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page != PSS_PAGE_CONDITION) {
        return;
    }

    summaryScreen->currVtxs[0].unk_00 = sVtxBounds[0][3].min;
    summaryScreen->currVtxs[0].unk_06 = sVtxBounds[0][3].min;
    summaryScreen->currVtxs[0].unk_0C = sVtxBounds[0][3].min;
    summaryScreen->currVtxs[0].unk_12 = sVtxBounds[0][3].min;

    summaryScreen->currVtxs[1].unk_00 = sVtxBounds[1][2].min;
    summaryScreen->currVtxs[1].unk_06 = sVtxBounds[1][2].min;
    summaryScreen->currVtxs[1].unk_0C = sVtxBounds[1][2].min;
    summaryScreen->currVtxs[1].unk_12 = sVtxBounds[1][2].min;

    summaryScreen->currVtxs[2].unk_00 = sVtxBounds[2][1].min;
    summaryScreen->currVtxs[2].unk_06 = sVtxBounds[2][1].min;
    summaryScreen->currVtxs[2].unk_0C = sVtxBounds[2][1].min;
    summaryScreen->currVtxs[2].unk_12 = sVtxBounds[2][1].min;

    summaryScreen->currVtxs[3].unk_00 = sVtxBounds[3][0].min;
    summaryScreen->currVtxs[3].unk_06 = sVtxBounds[3][0].min;
    summaryScreen->currVtxs[3].unk_0C = sVtxBounds[3][0].min;
    summaryScreen->currVtxs[3].unk_12 = sVtxBounds[3][0].min;

    PokemonSummaryScreen_InitMaxAndDeltaConditionShape(summaryScreen);
}

static void SetConditionVecFromStat(const ConditionVtxBounds *bounds, VecFx16 *vec, u8 statValue)
{
    if (statValue == 0xFF) {
        *vec = bounds->max;
    } else if (statValue == 0) {
        *vec = bounds->min;
    } else {
        vec->x = bounds->min.x + bounds->valueLength.x * statValue;
        vec->y = bounds->min.y + bounds->valueLength.y * statValue;
        vec->z = bounds->min.z + bounds->valueLength.z * statValue;
    }
}

static void SetConditionVecDifference(VecFx16 *startVec, VecFx16 *endVec, VecFx16 *outVec)
{
    outVec->x = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->x - startVec->x) / 4);
    outVec->y = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->y - startVec->y) / 4);
    outVec->z = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->z - startVec->z) / 4);
}

void PokemonSummaryScreen_InitMaxAndDeltaConditionShape(PokemonSummaryScreen *summaryScreen)
{
    SetConditionVecFromStat(&sVtxBounds[0][0], &summaryScreen->maxVtxs[0].unk_00, summaryScreen->monData.cool);
    SetConditionVecFromStat(&sVtxBounds[0][1], &summaryScreen->maxVtxs[0].unk_06, summaryScreen->monData.beauty);
    SetConditionVecFromStat(&sVtxBounds[0][2], &summaryScreen->maxVtxs[0].unk_12, summaryScreen->monData.cute);
    SetConditionVecFromStat(&sVtxBounds[0][3], &summaryScreen->maxVtxs[0].unk_0C, 0);

    SetConditionVecFromStat(&sVtxBounds[1][0], &summaryScreen->maxVtxs[1].unk_00, summaryScreen->monData.tough);
    SetConditionVecFromStat(&sVtxBounds[1][1], &summaryScreen->maxVtxs[1].unk_06, summaryScreen->monData.cool);
    SetConditionVecFromStat(&sVtxBounds[1][2], &summaryScreen->maxVtxs[1].unk_12, 0);
    SetConditionVecFromStat(&sVtxBounds[1][3], &summaryScreen->maxVtxs[1].unk_0C, summaryScreen->monData.smart);

    SetConditionVecFromStat(&sVtxBounds[2][0], &summaryScreen->maxVtxs[2].unk_00, summaryScreen->monData.tough);
    SetConditionVecFromStat(&sVtxBounds[2][1], &summaryScreen->maxVtxs[2].unk_06, 0);
    SetConditionVecFromStat(&sVtxBounds[2][2], &summaryScreen->maxVtxs[2].unk_12, summaryScreen->monData.cute);
    SetConditionVecFromStat(&sVtxBounds[2][3], &summaryScreen->maxVtxs[2].unk_0C, summaryScreen->monData.smart);

    SetConditionVecFromStat(&sVtxBounds[3][0], &summaryScreen->maxVtxs[3].unk_00, 0);
    SetConditionVecFromStat(&sVtxBounds[3][1], &summaryScreen->maxVtxs[3].unk_06, summaryScreen->monData.beauty);
    SetConditionVecFromStat(&sVtxBounds[3][2], &summaryScreen->maxVtxs[3].unk_12, summaryScreen->monData.cute);
    SetConditionVecFromStat(&sVtxBounds[3][3], &summaryScreen->maxVtxs[3].unk_0C, summaryScreen->monData.smart);

    for (u32 i = 0; i < CONDITION_VTX_COUNT; i++) {
        SetConditionVecDifference(&summaryScreen->currVtxs[i].unk_00, &summaryScreen->maxVtxs[i].unk_00, &summaryScreen->deltaVtxs[i].unk_00);
        SetConditionVecDifference(&summaryScreen->currVtxs[i].unk_06, &summaryScreen->maxVtxs[i].unk_06, &summaryScreen->deltaVtxs[i].unk_06);
        SetConditionVecDifference(&summaryScreen->currVtxs[i].unk_0C, &summaryScreen->maxVtxs[i].unk_0C, &summaryScreen->deltaVtxs[i].unk_0C);
        SetConditionVecDifference(&summaryScreen->currVtxs[i].unk_12, &summaryScreen->maxVtxs[i].unk_12, &summaryScreen->deltaVtxs[i].unk_12);
    }

    summaryScreen->conditionState = CONDITION_STATE_INITIAL;
}

void PokemonSummaryScreen_LoadMonSprite(PokemonSummaryScreen *summaryScreen)
{
    summaryScreen->monSprite.spriteManager = sub_0200762C(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    void *monData = PokemonSummaryScreen_MonData(summaryScreen);

    ArchivedSprite sprite;

    if (summaryScreen->data->dataType == PSS_DATA_BOX_MON) {
        BoxPokemon_BuildArchivedSprite(&sprite, monData, 2, 0);
    } else {
        Pokemon_BuildArchivedSprite(&sprite, monData, 2);
    }

    PokeSprite_LoadAnimationFrames(summaryScreen->narcPlPokeData, summaryScreen->monSprite.frames, summaryScreen->monData.species, 1);

    summaryScreen->monSprite.flip = PokemonPersonalData_GetFormValue(summaryScreen->monData.species, summaryScreen->monData.form, 28) ^ 1;
    summaryScreen->monSprite.sprite = sub_02007C34(summaryScreen->monSprite.spriteManager, &sprite, 52, 104, 0, 0, summaryScreen->monSprite.frames, NULL);

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
