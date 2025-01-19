#include "map_object_move.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021F134C.h"
#include "overlay005/ov5_021F17B8.h"
#include "overlay005/ov5_021F1CC8.h"
#include "overlay005/ov5_021F2A7C.h"
#include "overlay005/ov5_021F2BD0.h"
#include "overlay005/ov5_021F2D20.h"
#include "overlay005/ov5_021F3284.h"
#include "overlay005/ov5_021F348C.h"
#include "overlay005/ov5_021F37A8.h"
#include "overlay005/ov5_021F3A50.h"
#include "overlay005/struct_ov5_021ECD10.h"

#include "map_object.h"
#include "map_tile_behavior.h"
#include "unk_02054D00.h"
#include "unk_020655F4.h"
#include "unk_020673B8.h"

static int sub_02063478(const MapObject *mapObj);
static void sub_020634DC(MapObject *mapObj);
static void sub_020634F4(MapObject *mapObj);
static void MapObject_StartMove(MapObject *mapObj);
static void sub_0206353C(MapObject *mapObj);
static void MapObject_EndMove(MapObject *mapObj);
static void sub_020635AC(MapObject *mapObj);
static void sub_0206363C(MapObject *mapObj);
static void sub_020636F0(MapObject *mapObj);
static void sub_0206375C(MapObject *mapObj);
static void sub_020637D4(MapObject *mapObj);
static void sub_02063864(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063964(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_0206397C(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063994(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A30(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A64(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A70(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A78(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063B20(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063BB4(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C00(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C18(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C30(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C48(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C60(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C94(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063CC8(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063CFC(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063D30(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063DA8(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063DDC(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063E14(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3);

static BOOL (*const Unk_020EE76C[4])(u8);
static BOOL (*const Unk_020EE77C[4])(u8);

void MapObject_InitMove(MapObject *mapObj)
{
    sub_02062B00(mapObj);
    sub_020673B8(mapObj);
}

void MapObject_Move(MapObject *mapObj)
{
    if (MapObject_CheckManagerStatus(mapObj, (1 << 1))) {
        return;
    }

    sub_020634DC(mapObj);
    sub_020634F4(mapObj);
    MapObject_StartMove(mapObj);

    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_4)) {
        MapObject_DoMovementAction(mapObj);
    } else if (MapObject_IsMovementPaused(mapObj) == FALSE && sub_02063478(mapObj) == TRUE && sub_020673C0(mapObj) == FALSE) {
        sub_02062B14(mapObj);
    }

    sub_0206353C(mapObj);
    MapObject_EndMove(mapObj);
}

static BOOL sub_02063478(const MapObject *mapObj)
{
    if (MapObject_IsMoving(mapObj) == TRUE) {
        return TRUE;
    }

    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_12 | MAP_OBJ_STATUS_11) == FALSE) {
        return TRUE;
    } else if (MapObject_GetMovementType(mapObj) == 0x32) {
        return TRUE;
    }

    u32 status = MapObject_GetStatus(mapObj);

    if (status & (1 << 12) && (status & (1 << 23)) == FALSE) {
        return FALSE;
    }

    if (status & (1 << 11) && sub_02062FDC(mapObj) == FALSE) {
        return FALSE;
    }

    return TRUE;
}

static void sub_020634DC(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_12)) {
        sub_020642F8(mapObj);
    }
}

static void sub_020634F4(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_11) && MapObject_SetTileBehaviors(mapObj) == TRUE) {
        MapObject_SetStartMovement(mapObj);
    }
}

static void MapObject_StartMove(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_START_MOVEMENT)) {
        sub_020635AC(mapObj);
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_START_MOVEMENT | MAP_OBJ_STATUS_START_JUMP);
}

static void sub_0206353C(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_START_JUMP)) {
        sub_020636F0(mapObj);
    } else if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_START_MOVEMENT)) {
        sub_0206363C(mapObj);
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_START_MOVEMENT | MAP_OBJ_STATUS_START_JUMP);
}

static void MapObject_EndMove(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_END_JUMP)) {
        sub_020637D4(mapObj);
    } else if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_END_MOVEMENT)) {
        sub_0206375C(mapObj);
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP);
}

static void sub_020635AC(MapObject *mapObj)
{
    MapObject_SetTileBehaviors(mapObj);

    if (sub_02062DFC(mapObj) == TRUE) {
        u8 currTileBehavior = MapObject_GetCurrTileBehavior(mapObj);
        u8 prevTileBehavior = MapObject_GetPrevTileBehavior(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063DDC(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063964(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A30(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A70(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063864(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C00(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C30(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063D30(mapObj, currTileBehavior, prevTileBehavior, v2);
    }
}

static void sub_0206363C(MapObject *mapObj)
{
    MapObject_SetTileBehaviors(mapObj);

    if (sub_02062DFC(mapObj) == TRUE) {
        u8 currTileBehavior = MapObject_GetCurrTileBehavior(mapObj);
        u8 prevTileBehavior = MapObject_GetPrevTileBehavior(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063DDC(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_0206397C(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063994(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A30(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A78(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C18(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C48(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C60(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063CC8(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063D30(mapObj, currTileBehavior, prevTileBehavior, v2);

        sub_02063E14(mapObj, currTileBehavior, prevTileBehavior, v2);
    }
}

static void sub_020636F0(MapObject *mapObj)
{
    MapObject_SetTileBehaviors(mapObj);

    if (sub_02062DFC(mapObj) == TRUE) {
        u8 currTileBehavior = MapObject_GetCurrTileBehavior(mapObj);
        u8 prevTileBehavior = MapObject_GetPrevTileBehavior(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063DDC(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A78(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063D30(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A64(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063E14(mapObj, currTileBehavior, prevTileBehavior, v2);
    }
}

static void sub_0206375C(MapObject *mapObj)
{
    MapObject_SetTileBehaviors(mapObj);

    if (sub_02062DFC(mapObj) == TRUE) {
        u8 currTileBehavior = MapObject_GetCurrTileBehavior(mapObj);
        u8 prevTileBehavior = MapObject_GetPrevTileBehavior(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063864(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C94(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063CFC(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A30(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063DA8(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063B20(mapObj, currTileBehavior, prevTileBehavior, v2);
    }
}

static void sub_020637D4(MapObject *mapObj)
{
    MapObject_SetTileBehaviors(mapObj);

    if (sub_02062DFC(mapObj) == TRUE) {
        u8 currTileBehavior = MapObject_GetCurrTileBehavior(mapObj);
        u8 prevTileBehavior = MapObject_GetPrevTileBehavior(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063864(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063C94(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063CFC(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063A30(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063DA8(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063B20(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_0206397C(mapObj, currTileBehavior, prevTileBehavior, v2);
        sub_02063BB4(mapObj, currTileBehavior, prevTileBehavior, v2);
    }
}

static void sub_02063864(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (sub_02062EFC(mapObj) == FALSE) {
        if (TileBehavior_IsDeepMud(currTileBehavior) == TRUE || TileBehavior_IsDeepMudWithGrass(currTileBehavior) == TRUE) {
            VecFx32 v0 = { 0, (FX32_ONE * -14), 0 };

            sub_020630CC(mapObj, &v0);
            return;
        }

        if (TileBehavior_IsMud(currTileBehavior) == TRUE || TileBehavior_IsMudWithGrass(currTileBehavior) == TRUE) {
            VecFx32 v1 = { 0, (FX32_ONE * -12), 0 };

            sub_020630CC(mapObj, &v1);
            return;
        }

        if (TileBehavior_IsDeepestSnow(currTileBehavior) == TRUE) {
            VecFx32 v2 = { 0, (FX32_ONE * -16), 0 };

            sub_020630CC(mapObj, &v2);
            return;
        }

        if (TileBehavior_IsDeeperSnow(currTileBehavior) == TRUE) {
            VecFx32 v3 = { 0, (FX32_ONE * -14), 0 };

            sub_020630CC(mapObj, &v3);
            return;
        }

        if (TileBehavior_IsDeepSnow(currTileBehavior) == TRUE) {
            VecFx32 v4 = { 0, (FX32_ONE * -12), 0 };

            sub_020630CC(mapObj, &v4);
            return;
        }
    }

    VecFx32 v5 = { 0, 0, 0 };
    sub_020630CC(mapObj, &v5);
}

static void sub_02063964(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsTallGrass(currTileBehavior) == TRUE) {
        ov5_021F2EA4(mapObj, 0);
    }
}

static void sub_0206397C(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsTallGrass(currTileBehavior) == TRUE) {
        ov5_021F2EA4(mapObj, 1);
    }
}

static void sub_02063994(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (param3->unk_04_6 == 0) {
        return;
    }

    if (TileBehavior_IsSnowWithShadows(prevTileBehavior) == TRUE) {
        if (param3->unk_04_6 == 1) {
            ov5_021F1EBC(mapObj);
        } else if (param3->unk_04_6 == 2) {
            ov5_021F1EC8(mapObj);
        }
    }

    if (MapObject_IsOnSand(mapObj, prevTileBehavior) == TRUE) {
        if (param3->unk_04_6 == 1) {
            ov5_021F1E8C(mapObj);
        } else if (param3->unk_04_6 == 2) {
            ov5_021F1E98(mapObj);
        }
        return;
    }

    if (TileBehavior_IsDeeperSnow(prevTileBehavior) == TRUE
        || TileBehavior_IsDeepestSnow(prevTileBehavior) == TRUE
        || TileBehavior_IsDeepSnow(prevTileBehavior)) {
        ov5_021F1EB0(mapObj);
        return;
    }

    if (MapObject_IsOnShallowSnow(mapObj, prevTileBehavior) == TRUE) {
        ov5_021F1EA4(mapObj);
        return;
    }
}

static void sub_02063A30(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsShallowWater(currTileBehavior) == TRUE) {
        if (sub_02062EC8(mapObj) == FALSE) {
            ov5_021F331C(mapObj, 1);
            sub_02062EAC(mapObj, 1);
        }
    } else {
        sub_02062EAC(mapObj, 0);
    }
}

static void sub_02063A64(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    sub_02062EAC(mapObj, 0);
}

static void sub_02063A70(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    sub_02063A78(mapObj, currTileBehavior, prevTileBehavior, param3);
}

static void sub_02063A78(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (sub_02062CE4(mapObjMan) == FALSE) {
        return;
    }

    if (param3->unk_04_4 == 0) {
        return;
    }

    if (TileBehavior_IsTallGrass(currTileBehavior) == TRUE
        || TileBehavior_IsVeryTallGrass(currTileBehavior) == TRUE
        || MapObject_IsOnWater(mapObj, currTileBehavior) == TRUE
        || TileBehavior_IsPuddle(currTileBehavior) == TRUE
        || TileBehavior_IsShallowWater(currTileBehavior) == TRUE
        || MapObject_IsOnSnow(mapObj, currTileBehavior) == TRUE
        || TileBehavior_IsMud(currTileBehavior) == TRUE
        || TileBehavior_IsMudWithGrass(currTileBehavior) == TRUE
        || TileBehavior_IsReflective(currTileBehavior)) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    } else {
        if (!MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_SHOW_SHADOW)) {
            ov5_021F1570(mapObj);
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_SHOW_SHADOW);
        }
    }
}

static void sub_02063B20(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (sub_02062CE4(mapObjMan) == FALSE) {
        return;
    }

    if (param3->unk_04_4 == 0) {
        return;
    }

    if (TileBehavior_IsTallGrass(currTileBehavior) == TRUE
        || TileBehavior_IsVeryTallGrass(currTileBehavior) == TRUE
        || MapObject_IsOnWater(mapObj, currTileBehavior) == TRUE
        || TileBehavior_IsPuddle(currTileBehavior) == TRUE
        || TileBehavior_IsShallowWater(currTileBehavior) == TRUE
        || MapObject_IsOnSnow(mapObj, currTileBehavior) == TRUE
        || TileBehavior_IsMud(currTileBehavior) == TRUE
        || TileBehavior_IsMudWithGrass(currTileBehavior) == TRUE
        || TileBehavior_IsReflective(currTileBehavior)) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    }
}

static void sub_02063BB4(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (MapObject_IsOnWater(mapObj, currTileBehavior) == TRUE
        || TileBehavior_IsShallowWater(currTileBehavior) == TRUE
        || TileBehavior_IsIce(currTileBehavior) == TRUE
        || TileBehavior_IsMud(currTileBehavior) == TRUE
        || TileBehavior_IsMudWithGrass(currTileBehavior) == TRUE
        || MapObject_IsOnSnow(mapObj, currTileBehavior) == TRUE) {
        return;
    }

    ov5_021F3638(mapObj);
}

static void sub_02063C00(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsVeryTallGrass(currTileBehavior) == TRUE) {
        ov5_021F3844(mapObj, 0);
    }
}

static void sub_02063C18(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsVeryTallGrass(currTileBehavior) == TRUE) {
        ov5_021F3844(mapObj, 1);
    }
}

static void sub_02063C30(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMudWithGrass(currTileBehavior) == TRUE) {
        ov5_021F3AEC(mapObj, 0);
    }
}

static void sub_02063C48(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMudWithGrass(currTileBehavior) == TRUE) {
        ov5_021F3AEC(mapObj, 1);
    }
}

static void sub_02063C60(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsPuddle(prevTileBehavior) == TRUE) {
        ov5_021F2AE4(mapObj, MapObject_GetXPrev(mapObj), MapObject_GetYPrev(mapObj), MapObject_GetZPrev(mapObj));
    }
}

static void sub_02063C94(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsPuddle(currTileBehavior) == TRUE) {
        ov5_021F2AE4(mapObj, MapObject_GetX(mapObj), MapObject_GetY(mapObj), MapObject_GetZ(mapObj));
    }
}

static void sub_02063CC8(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMud(prevTileBehavior) == TRUE) {
        ov5_021F2C38(mapObj, MapObject_GetXPrev(mapObj), MapObject_GetYPrev(mapObj), MapObject_GetZPrev(mapObj));
    }
}

static void sub_02063CFC(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMud(currTileBehavior) == TRUE) {
        ov5_021F2C38(mapObj, MapObject_GetX(mapObj), MapObject_GetY(mapObj), MapObject_GetZ(mapObj));
    }
}

static void sub_02063D30(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (param3->unk_04_10 == 0) {
        return;
    }

    if (sub_02062F64(mapObj) == FALSE) {
        u8 tileBehavior = GetNullTileBehaviorID();

        if (TileBehavior_HasReflectiveSurface(currTileBehavior) == TRUE) {
            tileBehavior = currTileBehavior;
        } else {
            u8 southTileBehavior = MapObject_GetTileBehaviorFromDir(mapObj, DIR_SOUTH);

            if (TileBehavior_HasReflectiveSurface(southTileBehavior) == TRUE) {
                tileBehavior = southTileBehavior;
            }
        }

        if (tileBehavior != GetNullTileBehaviorID()) {
            int v2;

            sub_02062F48(mapObj, 1);

            if (TileBehavior_IsReflective(tileBehavior) == TRUE) {
                v2 = 2;
            } else if (TileBehavior_IsPuddle(tileBehavior) == TRUE) {
                v2 = 0;
            } else {
                v2 = 1;
            }

            ov5_021F1800(mapObj, v2);
        }
    }
}

static void sub_02063DA8(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (param3->unk_04_10 == 0 || sub_02062F64(mapObj) == FALSE) {
        return;
    }

    u8 southTileBehavior = MapObject_GetTileBehaviorFromDir(mapObj, DIR_SOUTH);

    if (TileBehavior_HasReflectiveSurface(southTileBehavior) == FALSE) {
        sub_02062F48(mapObj, 0);
    }
}

static void sub_02063DDC(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsBridgeStart(currTileBehavior) == TRUE) {
        sub_02062F14(mapObj, 1);
    } else if (sub_02062F30(mapObj) == TRUE && TileBehavior_IsBridge(currTileBehavior) == FALSE) {
        sub_02062F14(mapObj, 0);
    }
}

static void sub_02063E14(MapObject *mapObj, u8 currTileBehavior, u8 prevTileBehavior, const UnkStruct_ov5_021ECD10 *param3)
{
    return;
}

u32 sub_02063E18(const MapObject *mapObj, const VecFx32 *pos, int x, int y, int z, int dir)
{
    u32 v0 = 0;

    if (MapObject_IsOutOfRange(mapObj, x, y, z) == TRUE) {
        v0 |= (1 << 0);
    }

    s8 v1;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (sub_02055024(fieldSystem, pos, x, z, &v1) == TRUE) {
        v0 |= (1 << 1);

        if (v1 != 0) {
            v0 |= (1 << 3);
        }
    }

    if (sub_02064004(mapObj, x, z, dir) == TRUE) {
        v0 |= (1 << 1);
    }

    if (sub_02063F00(mapObj, x, y, z) == TRUE) {
        v0 |= (1 << 2);
    }

    return v0;
}

u32 sub_02063E94(const MapObject *mapObj, int x, int y, int z, int dir)
{
    VecFx32 pos;

    MapObject_GetPosPtr(mapObj, &pos);
    return sub_02063E18(mapObj, &pos, x, y, z, dir);
}

u32 sub_02063EBC(const MapObject *mapObj, int dir)
{
    int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
    int y = MapObject_GetY(mapObj);
    int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);

    return sub_02063E94(mapObj, x, y, z, dir);
}

int sub_02063F00(const MapObject *mapObj, int x, int y, int z)
{
    int maxObjects, objX, objZ;
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);
    const MapObject *v4 = MapObjectMan_GetMapObjectConst(mapObjMan);

    maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);

    do {
        if (v4 != mapObj
            && MapObject_CheckStatus(v4, MAP_OBJ_STATUS_0)
            && !MapObject_CheckStatus(v4, MAP_OBJ_STATUS_18)) {
            objX = MapObject_GetX(v4);
            objZ = MapObject_GetZ(v4);

            if (objX == x && objZ == z) {
                int objY = MapObject_GetY(v4);
                int v6 = objY - y;

                if (v6 < 0) {
                    v6 = -v6;
                }

                if (v6 < (1 * 2)) {
                    return TRUE;
                }
            }

            objX = MapObject_GetXPrev(v4);
            objZ = MapObject_GetZPrev(v4);

            if (objX == x && objZ == z) {
                int objY = MapObject_GetY(v4);
                int v8 = objY - y;

                if (v8 < 0) {
                    v8 = -v8;
                }

                if (v8 < (1 * 2)) {
                    return TRUE;
                }
            }
        }

        sub_02062880(&v4);
        maxObjects--;
    } while (maxObjects);

    return FALSE;
}

int MapObject_IsOutOfRange(const MapObject *mapObj, int x, int y, int z)
{
    int initialPos, movementRange, minPos, maxPos;

    initialPos = MapObject_GetXInitial(mapObj);
    movementRange = MapObject_GetMovementRangeX(mapObj);

    if (movementRange != -1) {
        minPos = initialPos - movementRange;
        maxPos = initialPos + movementRange;

        if (minPos > x || maxPos < x) {
            return TRUE;
        }
    }

    initialPos = MapObject_GetZInitial(mapObj);
    movementRange = MapObject_GetMovementRangeZ(mapObj);

    if (movementRange != -1) {
        minPos = initialPos - movementRange;
        maxPos = initialPos + movementRange;

        if (minPos > z || maxPos < z) {
            return TRUE;
        }
    }

    return FALSE;
}

int sub_02064004(const MapObject *mapObj, int x, int z, int dir)
{
    if (sub_02062FDC(mapObj) == FALSE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        u8 v1 = MapObject_GetCurrTileBehavior(mapObj);
        u8 v2 = FieldSystem_GetTileBehavior(fieldSystem, x, z);

        if (v2 == GetNullTileBehaviorID()) {
            return TRUE;
        }

        if (Unk_020EE76C[dir](v1) == TRUE || Unk_020EE77C[dir](v2) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL (*const Unk_020EE76C[4])(u8) = {
    TileBehavior_BlocksMovementNorthward,
    TileBehavior_BlocksMovementSouthward,
    TileBehavior_BlocksMovementWestward,
    TileBehavior_BlocksMovementEastward
};

static BOOL (*const Unk_020EE77C[4])(u8) = {
    TileBehavior_BlocksMovementSouthward,
    TileBehavior_BlocksMovementNorthward,
    TileBehavior_BlocksMovementEastward,
    TileBehavior_BlocksMovementWestward
};

int MapObject_IsOnWater(MapObject *mapObj, u32 tileBehavior)
{
    if (TileBehavior_IsBridgeOverWater(tileBehavior)) {
        if (sub_02062F30(mapObj) == FALSE) {
            return TRUE;
        }
    } else if (TileBehavior_IsSurfable(tileBehavior)) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_IsOnSand(MapObject *mapObj, u32 tileBehavior)
{
    if (TileBehavior_IsBridgeOverSand(tileBehavior)) {
        if (sub_02062F30(mapObj) == FALSE) {
            return TRUE;
        }
    } else if (TileBehavior_IsSand(tileBehavior)) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_IsOnSnow(MapObject *mapObj, u32 tileBehavior)
{
    if (TileBehavior_IsBridgeOverSnow(tileBehavior)) {
        if (sub_02062F30(mapObj) == FALSE) {
            return TRUE;
        }
    } else if (TileBehavior_IsSnow(tileBehavior)) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_IsOnShallowSnow(MapObject *mapObj, u32 tileBehavior)
{
    if (TileBehavior_IsBridgeOverSnow(tileBehavior)) {
        if (sub_02062F30(mapObj) == FALSE) {
            return TRUE;
        }
    } else if (TileBehavior_IsShallowSnow(tileBehavior)) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_IsOnBridge(MapObject *mapObj, u32 tileBehavior)
{
    if (sub_02062F30(mapObj) == TRUE && TileBehavior_IsBridge(tileBehavior) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_IsOnBikeBridgeNorthSouth(MapObject *mapObj, u32 tileBehavior)
{
    if (sub_02062F30(mapObj) == TRUE && TileBehavior_IsBikeBridgeNorthSouth(tileBehavior) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_IsOnBikeBridgeEastWest(MapObject *mapObj, u32 tileBehavior)
{
    if (sub_02062F30(mapObj) == TRUE && TileBehavior_IsBikeBridgeEastWest(tileBehavior) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static const int sMapObjectDxDir[] = {
    [DIR_NORTH] = 0,
    [DIR_SOUTH] = 0,
    [DIR_WEST] = -1,
    [DIR_EAST] = 1
};

static const int UNUSED_GPosY_Dir4AddTbl[] = {
    0,
    0,
    0,
    0
};

static const int sMapObjectDzDir[] = {
    [DIR_NORTH] = -1,
    [DIR_SOUTH] = 1,
    [DIR_WEST] = 0,
    [DIR_EAST] = 0
};

int MapObject_GetDxFromDir(int dir)
{
    return sMapObjectDxDir[dir];
}

int MapObject_GetDzFromDir(int dir)
{
    return sMapObjectDzDir[dir];
}

void MapObject_StepDir(MapObject *mapObj, int dir)
{
    MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
    MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
    MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));

    MapObject_AddX(mapObj, MapObject_GetDxFromDir(dir));
    MapObject_AddY(mapObj, 0);
    MapObject_AddZ(mapObj, MapObject_GetDzFromDir(dir));
}

void MapObject_UpdateCoords(MapObject *mapObj)
{
    MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
    MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
    MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));
}

u32 MapObject_GetTileBehaviorFromDir(MapObject *mapObj, int dir)
{
    int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
    int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    u8 tileBehavior = FieldSystem_GetTileBehavior(fieldSystem, x, z);

    return tileBehavior;
}

void MapObject_AddVecToPos(MapObject *mapObj, const VecFx32 *vec)
{
    VecFx32 pos;

    MapObject_GetPosPtr(mapObj, &pos);

    pos.x += vec->x;
    pos.y += vec->y;
    pos.z += vec->z;

    MapObject_SetPos(mapObj, &pos);
}

void MapObject_MovePosInDir(MapObject *mapObj, int dir, fx32 distance)
{
    VecFx32 pos;

    MapObject_GetPosPtr(mapObj, &pos);

    switch (dir) {
    case DIR_NORTH:
        pos.z -= distance;
        break;
    case DIR_SOUTH:
        pos.z += distance;
        break;
    case DIR_WEST:
        pos.x -= distance;
        break;
    case DIR_EAST:
        pos.x += distance;
        break;
    }

    MapObject_SetPos(mapObj, &pos);
}

int sub_020642F8(MapObject *mapObj)
{
    VecFx32 pos, v1;

    MapObject_GetPosPtr(mapObj, &pos);
    v1 = pos;

    if (sub_02062E44(mapObj) == 1) {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_12);
        return 0;
    }

    int v2 = sub_02062FAC(mapObj);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    int v4 = sub_020644D0(fieldSystem, &v1, v2);

    if (v4 == TRUE) {
        pos.y = v1.y;
        MapObject_SetPos(mapObj, &pos);
        MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
        MapObject_SetY(mapObj, (((pos.y) >> 3) / FX32_ONE));
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_12);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_12);
    }

    return v4;
}

int MapObject_SetTileBehaviors(MapObject *mapObj)
{
    u8 prevTileBehavior = GetNullTileBehaviorID();
    u8 currTileBehavior = prevTileBehavior;

    if (sub_02062FDC(mapObj) == FALSE) {
        int x = MapObject_GetXPrev(mapObj);
        int z = MapObject_GetZPrev(mapObj);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        prevTileBehavior = FieldSystem_GetTileBehavior(fieldSystem, x, z);
        x = MapObject_GetX(mapObj);
        z = MapObject_GetZ(mapObj);
        currTileBehavior = FieldSystem_GetTileBehavior(fieldSystem, x, z);
    }

    MapObject_SetPrevTileBehavior(mapObj, prevTileBehavior);
    MapObject_SetCurrTileBehavior(mapObj, currTileBehavior);

    if (TileBehavior_IsNull(currTileBehavior) == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_11);
        return FALSE;
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_11);
    return TRUE;
}

void VecFx32_StepDirection(int dir, VecFx32 *vec, fx32 val)
{
    switch (dir) {
    case DIR_NORTH:
        vec->z -= val;
        break;
    case DIR_SOUTH:
        vec->z += val;
        break;
    case DIR_WEST:
        vec->x -= val;
        break;
    case DIR_EAST:
        vec->x += val;
        break;
    }
}

void sub_02064450(int x, int z, VecFx32 *pos)
{
    pos->x = ((x << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    pos->z = ((z << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
}

void sub_02064464(MapObject *mapObj)
{
    int movementType = MapObject_GetMovementType(mapObj);

    if (movementType == 0x33 || movementType == 0x34 || movementType == 0x35 || movementType == 0x36) {
        sub_02062B14(mapObj);
    }
}

static const int sOppositeDirections[] = {
    [DIR_NORTH] = DIR_SOUTH,
    [DIR_SOUTH] = DIR_NORTH,
    [DIR_WEST] = DIR_EAST,
    [DIR_EAST] = DIR_WEST
};

int Direction_GetOpposite(int dir)
{
    return sOppositeDirections[dir];
}

int sub_02064488(int param0, int param1, int param2, int param3)
{
    if (param0 > param2) {
        return DIR_WEST;
    }

    if (param0 < param2) {
        return DIR_EAST;
    }

    if (param1 > param3) {
        return DIR_NORTH;
    }

    return DIR_SOUTH;
}

int sub_020644A4(FieldSystem *fieldSystem, VecFx32 *pos)
{
    fx32 v0;
    u8 v1;

    v0 = sub_02054FBC(fieldSystem, pos->y, pos->x, pos->z, &v1);

    if (v1 == 0) {
        return FALSE;
    }

    pos->y = v0;
    return TRUE;
}

int sub_020644D0(FieldSystem *fieldSystem, VecFx32 *pos, int param2)
{
    fx32 v0;
    u8 v1;

    v0 = sub_02054FBC(fieldSystem, pos->y, pos->x, pos->z, &v1);

    if (v1 == 0) {
        return FALSE;
    }

    if (v1 == 2 && param2 == 0) {
        return FALSE;
    }

    pos->y = v0;
    return TRUE;
}
