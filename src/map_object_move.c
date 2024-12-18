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
static void sub_02063518(MapObject *mapObj);
static void sub_0206353C(MapObject *mapObj);
static void MapObject_EndMove(MapObject *mapObj);
static void sub_020635AC(MapObject *mapObj);
static void sub_0206363C(MapObject *mapObj);
static void sub_020636F0(MapObject *mapObj);
static void sub_0206375C(MapObject *mapObj);
static void sub_020637D4(MapObject *mapObj);
static void sub_02063864(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063964(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_0206397C(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063994(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A30(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A64(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A70(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063A78(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063B20(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063BB4(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C00(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C18(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C30(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C48(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C60(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063C94(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063CC8(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063CFC(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063D30(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063DA8(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063DDC(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);
static void sub_02063E14(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3);

static BOOL (*const Unk_020EE76C[4])(u8);
static BOOL (*const Unk_020EE77C[4])(u8);

void MapObject_InitMove(MapObject *mapObj)
{
    sub_02062B00(mapObj);
    sub_020673B8(mapObj);
}

void MapObject_Move(MapObject *mapObj)
{
    if (sub_02062CBC(mapObj, (1 << 1))) {
        return;
    }

    sub_020634DC(mapObj);
    sub_020634F4(mapObj);
    sub_02063518(mapObj);

    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_4)) {
        MapObject_DoMovementAction(mapObj);
    } else if (MapObject_IsMovementPaused(mapObj) == FALSE && sub_02063478(mapObj) == 1 && sub_020673C0(mapObj) == 0) {
        sub_02062B14(mapObj);
    }

    sub_0206353C(mapObj);
    MapObject_EndMove(mapObj);
}

static BOOL sub_02063478(const MapObject *mapObj)
{
    if (MapObject_IsMoving(mapObj) == 1) {
        return TRUE;
    }

    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_12 | MAP_OBJ_STATUS_11) == FALSE) {
        return TRUE;
    } else if (MapObject_GetMovementType(mapObj) == 0x32) {
        return TRUE;
    }

    u32 v0 = MapObject_GetStatus(mapObj);

    if ((v0 & (1 << 12)) && ((v0 & (1 << 23)) == 0)) {
        return FALSE;
    }

    if ((v0 & (1 << 11)) && (sub_02062FDC(mapObj) == 0)) {
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
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_11)) {
        if (sub_02064390(mapObj) == 1) {
            sub_02062D28(mapObj);
        }
    }
}

static void sub_02063518(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_START_MOVEMENT)) {
        sub_020635AC(mapObj);
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_START_MOVEMENT | MAP_OBJ_STATUS_16);
}

static void sub_0206353C(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_16)) {
        sub_020636F0(mapObj);
    } else if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_START_MOVEMENT)) {
        sub_0206363C(mapObj);
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_START_MOVEMENT | MAP_OBJ_STATUS_16);
}

static void MapObject_EndMove(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_17)) {
        sub_020637D4(mapObj);
    } else if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_END_MOVEMENT)) {
        sub_0206375C(mapObj);
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_17);
}

static void sub_020635AC(MapObject *mapObj)
{
    sub_02064390(mapObj);

    if (sub_02062DFC(mapObj) == 1) {
        u8 v0 = sub_02062BE8(mapObj);
        u8 v1 = sub_02062BF8(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063DDC(mapObj, v0, v1, v2);
        sub_02063964(mapObj, v0, v1, v2);
        sub_02063A30(mapObj, v0, v1, v2);
        sub_02063A70(mapObj, v0, v1, v2);
        sub_02063864(mapObj, v0, v1, v2);
        sub_02063C00(mapObj, v0, v1, v2);
        sub_02063C30(mapObj, v0, v1, v2);
        sub_02063D30(mapObj, v0, v1, v2);
    }
}

static void sub_0206363C(MapObject *mapObj)
{
    sub_02064390(mapObj);

    if (sub_02062DFC(mapObj) == 1) {
        u8 v0 = sub_02062BE8(mapObj);
        u8 v1 = sub_02062BF8(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063DDC(mapObj, v0, v1, v2);
        sub_0206397C(mapObj, v0, v1, v2);
        sub_02063994(mapObj, v0, v1, v2);
        sub_02063A30(mapObj, v0, v1, v2);
        sub_02063A78(mapObj, v0, v1, v2);
        sub_02063C18(mapObj, v0, v1, v2);
        sub_02063C48(mapObj, v0, v1, v2);
        sub_02063C60(mapObj, v0, v1, v2);
        sub_02063CC8(mapObj, v0, v1, v2);
        sub_02063D30(mapObj, v0, v1, v2);

        sub_02063E14(mapObj, v0, v1, v2);
    }
}

static void sub_020636F0(MapObject *mapObj)
{
    sub_02064390(mapObj);

    if (sub_02062DFC(mapObj) == 1) {
        u8 v0 = sub_02062BE8(mapObj);
        u8 v1 = sub_02062BF8(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063DDC(mapObj, v0, v1, v2);
        sub_02063A78(mapObj, v0, v1, v2);
        sub_02063D30(mapObj, v0, v1, v2);
        sub_02063A64(mapObj, v0, v1, v2);
        sub_02063E14(mapObj, v0, v1, v2);
    }
}

static void sub_0206375C(MapObject *mapObj)
{
    sub_02064390(mapObj);

    if (sub_02062DFC(mapObj) == 1) {
        u8 v0 = sub_02062BE8(mapObj);
        u8 v1 = sub_02062BF8(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063864(mapObj, v0, v1, v2);
        sub_02063C94(mapObj, v0, v1, v2);
        sub_02063CFC(mapObj, v0, v1, v2);
        sub_02063A30(mapObj, v0, v1, v2);
        sub_02063DA8(mapObj, v0, v1, v2);
        sub_02063B20(mapObj, v0, v1, v2);
    }
}

static void sub_020637D4(MapObject *mapObj)
{
    sub_02064390(mapObj);

    if (sub_02062DFC(mapObj) == 1) {
        u8 v0 = sub_02062BE8(mapObj);
        u8 v1 = sub_02062BF8(mapObj);
        const UnkStruct_ov5_021ECD10 *v2 = ov5_021ECD04(mapObj);

        sub_02063864(mapObj, v0, v1, v2);
        sub_02063C94(mapObj, v0, v1, v2);
        sub_02063CFC(mapObj, v0, v1, v2);
        sub_02063A30(mapObj, v0, v1, v2);
        sub_02063DA8(mapObj, v0, v1, v2);
        sub_02063B20(mapObj, v0, v1, v2);
        sub_0206397C(mapObj, v0, v1, v2);
        sub_02063BB4(mapObj, v0, v1, v2);
    }
}

static void sub_02063864(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (sub_02062EFC(mapObj) == 0) {
        if ((TileBehavior_IsDeepMud(param1) == 1) || (TileBehavior_IsDeepMudWithGrass(param1) == 1)) {
            VecFx32 v0 = { 0, (FX32_ONE * -14), 0 };

            sub_020630CC(mapObj, &v0);
            return;
        }

        if ((TileBehavior_IsMud(param1) == 1) || (TileBehavior_IsMudWithGrass(param1) == 1)) {
            VecFx32 v1 = { 0, (FX32_ONE * -12), 0 };

            sub_020630CC(mapObj, &v1);
            return;
        }

        if (TileBehavior_IsDeepestSnow(param1) == 1) {
            VecFx32 v2 = { 0, (FX32_ONE * -16), 0 };

            sub_020630CC(mapObj, &v2);
            return;
        }

        if (TileBehavior_IsDeeperSnow(param1) == 1) {
            VecFx32 v3 = { 0, (FX32_ONE * -14), 0 };

            sub_020630CC(mapObj, &v3);
            return;
        }

        if (TileBehavior_IsDeepSnow(param1) == 1) {
            VecFx32 v4 = { 0, (FX32_ONE * -12), 0 };

            sub_020630CC(mapObj, &v4);
            return;
        }
    }

    VecFx32 v5 = { 0, 0, 0 };
    sub_020630CC(mapObj, &v5);
}

static void sub_02063964(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsTallGrass(param1) == 1) {
        ov5_021F2EA4(mapObj, 0);
    }
}

static void sub_0206397C(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsTallGrass(param1) == 1) {
        ov5_021F2EA4(mapObj, 1);
    }
}

static void sub_02063994(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (param3->unk_04_6 == 0) {
        return;
    }

    if (TileBehavior_IsSnowWithShadows(param2) == 1) {
        if (param3->unk_04_6 == 1) {
            ov5_021F1EBC(mapObj);
        } else if (param3->unk_04_6 == 2) {
            ov5_021F1EC8(mapObj);
        }
    }

    if (sub_020640A0(mapObj, param2) == 1) {
        if (param3->unk_04_6 == 1) {
            ov5_021F1E8C(mapObj);
        } else if (param3->unk_04_6 == 2) {
            ov5_021F1E98(mapObj);
        }
        return;
    }

    if ((TileBehavior_IsDeeperSnow(param2) == 1) || (TileBehavior_IsDeepestSnow(param2) == 1) || TileBehavior_IsDeepSnow(param2)) {
        ov5_021F1EB0(mapObj);
        return;
    }

    if (sub_02064108(mapObj, param2) == 1) {
        ov5_021F1EA4(mapObj);
        return;
    }
}

static void sub_02063A30(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsShallowWater(param1) == 1) {
        if (sub_02062EC8(mapObj) == 0) {
            ov5_021F331C(mapObj, 1);
            sub_02062EAC(mapObj, 1);
        }
    } else {
        sub_02062EAC(mapObj, 0);
    }
}

static void sub_02063A64(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    sub_02062EAC(mapObj, 0);
}

static void sub_02063A70(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    sub_02063A78(mapObj, param1, param2, param3);
}

static void sub_02063A78(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (sub_02062CE4(mapObjMan) == 0) {
        return;
    }

    if (param3->unk_04_4 == 0) {
        return;
    }

    if ((TileBehavior_IsTallGrass(param1) == 1) || (TileBehavior_IsVeryTallGrass(param1) == 1) || (sub_0206406C(mapObj, param1) == 1) || (TileBehavior_IsPuddle(param1) == 1) || (TileBehavior_IsShallowWater(param1) == 1) || (MapObject_IsOnSnow(mapObj, param1) == 1) || (TileBehavior_IsMud(param1) == 1) || (TileBehavior_IsMudWithGrass(param1) == 1) || TileBehavior_IsReflective(param1)) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    } else {
        if (!MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_15)) {
            ov5_021F1570(mapObj);
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_15);
        }
    }
}

static void sub_02063B20(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (sub_02062CE4(mapObjMan) == 0) {
        return;
    }

    if (param3->unk_04_4 == 0) {
        return;
    }

    if ((TileBehavior_IsTallGrass(param1) == 1) || (TileBehavior_IsVeryTallGrass(param1) == 1) || (sub_0206406C(mapObj, param1) == 1) || (TileBehavior_IsPuddle(param1) == 1) || (TileBehavior_IsShallowWater(param1) == 1) || (MapObject_IsOnSnow(mapObj, param1) == 1) || (TileBehavior_IsMud(param1) == 1) || (TileBehavior_IsMudWithGrass(param1) == 1) || TileBehavior_IsReflective(param1)) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    }
}

static void sub_02063BB4(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if ((sub_0206406C(mapObj, param1) == 1) || (TileBehavior_IsShallowWater(param1) == 1) || (TileBehavior_IsIce(param1) == 1) || (TileBehavior_IsMud(param1) == 1) || (TileBehavior_IsMudWithGrass(param1) == 1) || (MapObject_IsOnSnow(mapObj, param1) == 1)) {
        return;
    }

    ov5_021F3638(mapObj);
}

static void sub_02063C00(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsVeryTallGrass(param1) == 1) {
        ov5_021F3844(mapObj, 0);
    }
}

static void sub_02063C18(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsVeryTallGrass(param1) == 1) {
        ov5_021F3844(mapObj, 1);
    }
}

static void sub_02063C30(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMudWithGrass(param1) == 1) {
        ov5_021F3AEC(mapObj, 0);
    }
}

static void sub_02063C48(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMudWithGrass(param1) == 1) {
        ov5_021F3AEC(mapObj, 1);
    }
}

static void sub_02063C60(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsPuddle(param2) == 1) {
        ov5_021F2AE4(mapObj, MapObject_GetXPrev(mapObj), MapObject_GetYPrev(mapObj), MapObject_GetZPrev(mapObj));
    }
}

static void sub_02063C94(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsPuddle(param1) == 1) {
        ov5_021F2AE4(mapObj, MapObject_GetX(mapObj), MapObject_GetY(mapObj), MapObject_GetZ(mapObj));
    }
}

static void sub_02063CC8(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMud(param2) == 1) {
        ov5_021F2C38(mapObj, MapObject_GetXPrev(mapObj), MapObject_GetYPrev(mapObj), MapObject_GetZPrev(mapObj));
    }
}

static void sub_02063CFC(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsMud(param1) == 1) {
        ov5_021F2C38(mapObj, MapObject_GetX(mapObj), MapObject_GetY(mapObj), MapObject_GetZ(mapObj));
    }
}

static void sub_02063D30(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (param3->unk_04_10 == 0) {
        return;
    }

    if (sub_02062F64(mapObj) == 0) {
        u8 v0 = GetNullTileBehaviorID();

        if (TileBehavior_HasReflectiveSurface(param1) == 1) {
            v0 = param1;
        } else {
            u8 v1 = sub_02064238(mapObj, 1);

            if (TileBehavior_HasReflectiveSurface(v1) == 1) {
                v0 = v1;
            }
        }

        if (v0 != GetNullTileBehaviorID()) {
            int v2;

            sub_02062F48(mapObj, 1);

            if (TileBehavior_IsReflective(v0) == 1) {
                v2 = 2;
            } else if (TileBehavior_IsPuddle(v0) == 1) {
                v2 = 0;
            } else {
                v2 = 1;
            }

            ov5_021F1800(mapObj, v2);
        }
    }
}

static void sub_02063DA8(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if ((param3->unk_04_10 == 0) || (sub_02062F64(mapObj) == 0)) {
        return;
    }

    u8 v0 = sub_02064238(mapObj, 1);

    if (TileBehavior_HasReflectiveSurface(v0) == 0) {
        sub_02062F48(mapObj, 0);
    }
}

static void sub_02063DDC(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    if (TileBehavior_IsBridgeStart(param1) == 1) {
        sub_02062F14(mapObj, 1);
    } else if (sub_02062F30(mapObj) == 1) {
        if (TileBehavior_IsBridge(param1) == 0) {
            sub_02062F14(mapObj, 0);
        }
    }
}

static void sub_02063E14(MapObject *mapObj, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 *param3)
{
    return;
}

u32 sub_02063E18(const MapObject *mapObj, const VecFx32 *param1, int param2, int param3, int param4, int param5)
{
    u32 v0;

    v0 = 0;

    if (sub_02063FAC(mapObj, param2, param3, param4) == 1) {
        v0 |= (1 << 0);
    }

    s8 v1;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (sub_02055024(fieldSystem, param1, param2, param4, &v1) == 1) {
        v0 |= (1 << 1);

        if (v1 != 0) {
            v0 |= (1 << 3);
        }
    }

    if (sub_02064004(mapObj, param2, param4, param5) == 1) {
        v0 |= (1 << 1);
    }

    if (sub_02063F00(mapObj, param2, param3, param4) == 1) {
        v0 |= (1 << 2);
    }

    return v0;
}

u32 sub_02063E94(const MapObject *mapObj, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;

    MapObject_GetPosPtr(mapObj, &v0);
    return sub_02063E18(mapObj, &v0, param1, param2, param3, param4);
}

u32 sub_02063EBC(const MapObject *mapObj, int param1)
{
    int x, y, z;

    x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param1);
    y = MapObject_GetY(mapObj);
    z = MapObject_GetZ(mapObj) + MapObject_GetDyFromDir(param1);

    return sub_02063E94(mapObj, x, y, z, param1);
}

int sub_02063F00(const MapObject *mapObj, int param1, int param2, int param3)
{
    int v0, v1, v2;
    const MapObjectManager *mapObjMan;
    const MapObject *v4;

    mapObjMan = MapObject_MapObjectManager(mapObj);
    v4 = sub_02062868(mapObjMan);
    v0 = MapObjectMan_GetMaxObjects(mapObjMan);

    do {
        if (v4 != mapObj
            && MapObject_CheckStatus(v4, MAP_OBJ_STATUS_0)
            && !MapObject_CheckStatus(v4, MAP_OBJ_STATUS_18)) {
            v1 = MapObject_GetX(v4);
            v2 = MapObject_GetZ(v4);

            if ((v1 == param1) && (v2 == param3)) {
                int v5 = MapObject_GetY(v4);
                int v6 = v5 - param2;

                if (v6 < 0) {
                    v6 = -v6;
                }

                if (v6 < (1 * 2)) {
                    return 1;
                }
            }

            v1 = MapObject_GetXPrev(v4);
            v2 = MapObject_GetZPrev(v4);

            if ((v1 == param1) && (v2 == param3)) {
                int v7 = MapObject_GetY(v4);
                int v8 = v7 - param2;

                if (v8 < 0) {
                    v8 = -v8;
                }

                if (v8 < (1 * 2)) {
                    return 1;
                }
            }
        }

        sub_02062880(&v4);
        v0--;
    } while (v0);

    return 0;
}

int sub_02063FAC(const MapObject *mapObj, int param1, int param2, int param3)
{
    int v0, v1, v2, v3;

    v0 = MapObject_GetXInitial(mapObj);
    v1 = MapObject_GetMovementRangeX(mapObj);

    if (v1 != -1) {
        v2 = v0 - v1;
        v3 = v0 + v1;

        if ((v2 > param1) || (v3 < param1)) {
            return 1;
        }
    }

    v0 = MapObject_GetZInitial(mapObj);
    v1 = MapObject_GetMovementRangeZ(mapObj);

    if (v1 != -1) {
        v2 = v0 - v1;
        v3 = v0 + v1;

        if ((v2 > param3) || (v3 < param3)) {
            return 1;
        }
    }

    return 0;
}

int sub_02064004(const MapObject *mapObj, int param1, int param2, int param3)
{
    if (sub_02062FDC(mapObj) == 0) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        u8 v1 = sub_02062BE8(mapObj);
        u8 v2 = FieldSystem_GetTileBehavior(fieldSystem, param1, param2);

        if (v2 == GetNullTileBehaviorID()) {
            return 1;
        }

        if ((Unk_020EE76C[param3](v1) == 1) || (Unk_020EE77C[param3](v2) == 1)) {
            return 1;
        }
    }

    return 0;
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

int sub_0206406C(MapObject *mapObj, u32 param1)
{
    if (TileBehavior_IsBridgeOverWater(param1)) {
        if (sub_02062F30(mapObj) == 0) {
            return 1;
        }
    } else if (TileBehavior_IsSurfable(param1)) {
        return 1;
    }

    return 0;
}

int sub_020640A0(MapObject *mapObj, u32 param1)
{
    if (TileBehavior_IsBridgeOverSand(param1)) {
        if (sub_02062F30(mapObj) == 0) {
            return 1;
        }
    } else if (TileBehavior_IsSand(param1)) {
        return 1;
    }

    return 0;
}

int MapObject_IsOnSnow(MapObject *mapObj, u32 param1)
{
    if (TileBehavior_IsBridgeOverSnow(param1)) {
        if (sub_02062F30(mapObj) == 0) {
            return 1;
        }
    } else if (TileBehavior_IsSnow(param1)) {
        return 1;
    }

    return 0;
}

int sub_02064108(MapObject *mapObj, u32 param1)
{
    if (TileBehavior_IsBridgeOverSnow(param1)) {
        if (sub_02062F30(mapObj) == 0) {
            return 1;
        }
    } else if (TileBehavior_IsShallowSnow(param1)) {
        return 1;
    }

    return 0;
}

int sub_0206413C(MapObject *mapObj, u32 param1)
{
    if (sub_02062F30(mapObj) == 1) {
        if (TileBehavior_IsBridge(param1) == 1) {
            return 1;
        }
    }

    return 0;
}

int sub_0206415C(MapObject *mapObj, u32 param1)
{
    if (sub_02062F30(mapObj) == 1) {
        if (TileBehavior_IsBikeBridgeNorthSouth(param1) == 1) {
            return 1;
        }
    }

    return 0;
}

int sub_0206417C(MapObject *mapObj, u32 param1)
{
    if (sub_02062F30(mapObj) == 1) {
        if (TileBehavior_IsBikeBridgeEastWest(param1) == 1) {
            return 1;
        }
    }

    return 0;
}

static const int sMapObjectDxDir[] = {
    0x0,
    0x0,
    -1,
    0x1
};

static const int DATA_GPosY_Dir4AddTbl[] = {
    0,
    0,
    0,
    0
};

static const int sMapObjectDyDir[] = {
    -1,
    0x1,
    0x0,
    0x0
};

int MapObject_GetDxFromDir(int param0)
{
    return sMapObjectDxDir[param0];
}

int MapObject_GetDyFromDir(int param0)
{
    return sMapObjectDyDir[param0];
}

void MapObject_StepDir(MapObject *mapObj, int dir)
{
    MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
    MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
    MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));

    MapObject_AddX(mapObj, MapObject_GetDxFromDir(dir));
    MapObject_AddY(mapObj, 0);
    MapObject_AddZ(mapObj, MapObject_GetDyFromDir(dir));
}

void MapObject_UpdateCoords(MapObject *mapObj)
{
    MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
    MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
    MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));
}

u32 sub_02064238(MapObject *mapObj, int param1)
{
    int v0 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param1);
    int v1 = MapObject_GetZ(mapObj) + MapObject_GetDyFromDir(param1);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    u8 v3 = FieldSystem_GetTileBehavior(fieldSystem, v0, v1);

    return v3;
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

    if (v4 == 1) {
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

int sub_02064390(MapObject *mapObj)
{
    u8 v0 = GetNullTileBehaviorID();
    u8 v1 = v0;

    if (sub_02062FDC(mapObj) == 0) {
        int v2 = MapObject_GetXPrev(mapObj);
        int z = MapObject_GetZPrev(mapObj);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        v0 = FieldSystem_GetTileBehavior(fieldSystem, v2, z);
        v2 = MapObject_GetX(mapObj);
        z = MapObject_GetZ(mapObj);
        v1 = FieldSystem_GetTileBehavior(fieldSystem, v2, z);
    }

    sub_02062BF0(mapObj, v0);
    sub_02062BE0(mapObj, v1);

    if (TileBehavior_IsNull(v1) == 1) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_11);
        return 0;
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_11);
    return 1;
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

void sub_02064450(int param0, int param1, VecFx32 *param2)
{
    param2->x = (((param0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    param2->z = (((param1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
}

void sub_02064464(MapObject *mapObj)
{
    int v0 = MapObject_GetMovementType(mapObj);

    if ((v0 == 0x33) || (v0 == 0x34) || (v0 == 0x35) || (v0 == 0x36)) {
        sub_02062B14(mapObj);
    }
}

static const int Unk_020EE79C[] = {
    DIR_SOUTH,
    DIR_NORTH,
    DIR_EAST,
    DIR_WEST
};

int Direction_GetOpposite(int dir)
{
    return Unk_020EE79C[dir];
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

int sub_020644A4(FieldSystem *fieldSystem, VecFx32 *param1)
{
    fx32 v0;
    u8 v1;

    v0 = sub_02054FBC(fieldSystem, param1->y, param1->x, param1->z, &v1);

    if (v1 == 0) {
        return 0;
    }

    param1->y = v0;
    return 1;
}

int sub_020644D0(FieldSystem *fieldSystem, VecFx32 *param1, int param2)
{
    fx32 v0;
    u8 v1;

    v0 = sub_02054FBC(fieldSystem, param1->y, param1->x, param1->z, &v1);

    if (v1 == 0) {
        return 0;
    }

    if ((v1 == 2) && (param2 == 0)) {
        return 0;
    }

    param1->y = v0;
    return 1;
}
