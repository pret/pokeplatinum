#include "unk_02054D00.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02055130.h"

#include "field/field_system.h"
#include "overlay005/bdhc.h"
#include "overlay005/dynamic_terrain_height.h"
#include "overlay005/land_data.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/map_prop.h"

#include "map_matrix.h"
#include "map_tile_behavior.h"
#include "unk_02054BD0.h"
#include "unk_02068344.h"

static const fx32 sub_02054D0C(const FieldSystem *fieldSystem, const fx32 param1, const fx32 param2, const fx32 param3, u8 *param4);
static const fx32 sub_02054E50(const FieldSystem *fieldSystem, const fx32 param1, const fx32 param2, const fx32 param3, u8 *param4);
static BOOL sub_02054E84(const FieldSystem *fieldSystem, const int param1, const int param2, u16 *param3);
static BOOL sub_02054EF4(const FieldSystem *fieldSystem, const int param1, const int param2, u16 *param3);
static int sub_02054FD0(const FieldSystem *fieldSystem, const VecFx32 *param1, const int param2, const int param3, u8 *param4);

static const TerrainCollisionManager Unk_020EC3D0 = {
    sub_02054D0C,
    sub_02054E84
};

static const TerrainCollisionManager Unk_020EC3D8 = {
    sub_02054E50,
    sub_02054EF4
};

static fx32 sub_02054D00(const fx32 param0, const fx32 param1)
{
    fx32 v0;

    if (param0 >= param1) {
        v0 = param0 - param1;
    } else {
        v0 = param1 - param0;
    }

    return v0;
}

static const fx32 sub_02054D0C(const FieldSystem *fieldSystem, const fx32 param1, const fx32 param2, const fx32 param3, u8 *param4)
{
    BOOL v0, v1;
    u8 v2;
    u32 v3, v4;
    u32 v5, v6;
    u32 v7;
    u32 v8;
    u32 v9;
    u8 v10;
    VecFx32 v11;
    fx32 v12, v13;
    u8 v14;
    fx32 v15;
    fx32 v16;
    VecFx32 v17;
    const LandDataManager *v18 = fieldSystem->landDataMan;

    LandDataManager_GetOffset(v18, &v17);

    v16 = param1 - v17.y;
    v0 = 0;
    v1 = 0;
    v15 = 0;

    v11.x = param2 - v17.x;
    v11.z = param3 - v17.z;
    v11.y = 0;

    {
        int v19;
        int v20;

        v19 = MapMatrix_GetWidth(fieldSystem->mapMatrix);
        v20 = v19 * 32;
        v3 = (param2 - v17.x) / (16 * FX32_ONE);
        v4 = (param3 - v17.z) / (16 * FX32_ONE);
        v0 = DynamicTerrainHeightManager_GetPlateIndexOfTile(v3, v4, fieldSystem->dynamicTerrainHeightMan, &v14);
        v5 = v3 / 32;
        v6 = v4 / 32;
        v7 = v5 + v6 * v19;
        v12 = ((v5 * 32) + (32 / 2)) * 16 * FX32_ONE;
        v13 = ((v6 * 32) + (32 / 2)) * 16 * FX32_ONE;

        v11.x = param2 - v12 - v17.x;
        v11.z = param3 - v13 - v17.z;

        v9 = v3 + v4 * v20;
        v10 = LandDataManager_CalculateMapQuadrantOfTile(v9, v20);
        v8 = LandDataManager_GetRelativeLoadedMapsQuadrant(v7, v10, v18);

        if (v8 > 3) {
            v1 = 0;
        } else {
            {
                const BDHC *v21 = LandDataManager_GetLoadedMapBDHC(v18, v8);
                v1 = CalculateObjectHeight(v16, v11.x, v11.z, v21, &v11.y);
            }
        }
    }

    if (v0) {
        fx32 v22;

        v22 = DynamicTerrainHeightManager_GetHeight(v14, fieldSystem->dynamicTerrainHeightMan);

        if (v1) {
            if (v22 <= v11.y) {
                v2 = 1;
                v15 = v11.y;
            } else {
                fx32 v23, v24;

                v23 = sub_02054D00(v11.y, v16);
                v24 = sub_02054D00(v22, v16);

                if (v23 <= v24) {
                    v15 = v11.y;
                    v2 = 1;
                } else {
                    v15 = v22;
                    v2 = 2;
                }
            }
        } else {
            v2 = 2;
            v15 = v22;
        }
    } else {
        if (v1) {
            v2 = 1;
            v15 = v11.y;
        } else {
            v2 = 0;
        }
    }

    if (param4 != NULL) {
        *param4 = v2;
    }

    v15 += v17.y;

    return v15;
}

static const fx32 sub_02054E50(const FieldSystem *fieldSystem, const fx32 param1, const fx32 param2, const fx32 param3, u8 *param4)
{
    BOOL v0;
    int v1, v2;
    fx32 v3;
    u8 v4;

    v1 = param2 / (16 * FX32_ONE);
    v2 = param3 / (16 * FX32_ONE);

    v0 = LandDataManager_GetRelativeLoadedMapsQuadrantOfTile(fieldSystem->landDataMan, v1, v2, NULL);

    if (v0) {
        v4 = 1;
    } else {
        v4 = 0;
    }

    if (param4 != NULL) {
        *param4 = v4;
    }

    v3 = 0;
    return v3;
}

static BOOL sub_02054E84(const FieldSystem *fieldSystem, const int param1, const int param2, u16 *param3)
{
    BOOL v0;
    u32 v1, v2;
    u32 v3;
    u8 v4;
    int v5, v6;
    const LandDataManager *v7 = fieldSystem->landDataMan;
    u32 v8;
    u8 v9;

    v5 = param1 - LandDataManager_GetOffsetTileX(v7);
    v6 = param2 - LandDataManager_GetOffsetTileY(v7);

    {
        BOOL v10;

        v10 = LandDataManager_GetRelativeLoadedMapsQuadrantOfTile(v7, param1, param2, &v4);

        if (v10 == 0) {
            (*param3) = 0xff;
            return 0;
        }

        {
            u32 v11;
            u16 const *v12;

            v11 = (v6 % 32) * 32 + (v5 % 32);

            v12 = LandDataManager_GetLoadedMapTerrainAttributes(v7, v4);
            *param3 = v12[v11];

            return 1;
        }
    }
}

static BOOL sub_02054EF4(const FieldSystem *fieldSystem, const int param1, const int param2, u16 *param3)
{
    BOOL v0;
    u32 v1, v2;
    u32 v3;
    u32 v4;
    u32 v5;
    u8 v6;

    {
        int v7;
        int v8;
        const LandDataManager *v9 = fieldSystem->landDataMan;

        v7 = MapMatrix_GetWidth(fieldSystem->mapMatrix);
        v8 = v7 * 32;
        v1 = param1 / 32;
        v2 = param2 / 32;
        v3 = v1 + v2 * v7;

        {
            u32 v10;
            u16 const *v11;

            v10 = (param2 % 32) * 32 + (param1 % 32);

            v11 = sub_02054C0C(v3, fieldSystem->unk_58);
            *param3 = v11[v10];

            return 1;
        }
    }
}

void sub_02054F44(const TerrainCollisionManager **param0, int param1)
{
    if (param1 == 0) {
        *param0 = &Unk_020EC3D0;
    } else if (param1 == 1) {
        *param0 = &Unk_020EC3D8;
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL FieldSystem_CheckCollision(const FieldSystem *fieldSystem, const int param1, const int param2)
{
    BOOL v0;
    u16 v1;

    v0 = fieldSystem->terrainCollisionMan->getAttrFunc(fieldSystem, param1, param2, &v1);

    if (v0) {
        u8 v2;

        v2 = (u8)(v1 >> 15);
        v2 &= 0x1;

        if (v2 == 1) {
            return 1;
        }
    }

    return 0;
}

u8 FieldSystem_GetTileBehavior(const FieldSystem *fieldSystem, const int x, const int z)
{
    u16 attributes;
    if (fieldSystem->terrainCollisionMan->getAttrFunc(fieldSystem, x, z, &attributes)) {
        u8 behavior = attributes;
        behavior &= 0xFF;
        return behavior;
    }

    return 0xFF;
}

const fx32 sub_02054FBC(const FieldSystem *fieldSystem, const fx32 param1, const fx32 param2, const fx32 param3, u8 *param4)
{
    BOOL v0;
    fx32 v1;

    v1 = fieldSystem->terrainCollisionMan->getHeightFunc(fieldSystem, param1, param2, param3, param4);

    return v1;
}

static int sub_02054FD0(const FieldSystem *fieldSystem, const VecFx32 *param1, const int param2, const int param3, u8 *param4)
{
    int v0;
    fx32 v1, v2;
    fx32 v3, v4;
    fx32 v5;

    v3 = param2 * 16 * FX32_ONE + (8 * FX32_ONE);
    v4 = param3 * 16 * FX32_ONE + (8 * FX32_ONE);
    v5 = 0;
    v5 = sub_02054FBC(fieldSystem, param1->y, v3, v4, param4);

    if (v5 < param1->y) {
        v1 = param1->y;
        v2 = v5;
        v0 = -1;
    } else if (v5 > param1->y) {
        v1 = v5;
        v2 = param1->y;
        v0 = 1;
    } else {
        v0 = 0;
        return v0;
    }

    if (v1 - v2 >= (20 * FX32_ONE)) {
        GF_ASSERT(v0 != 0);
    } else {
        v0 = 0;
    }

    return v0;
}

BOOL sub_02055024(const FieldSystem *fieldSystem, const VecFx32 *pos, const int x, const int z, s8 *param4)
{
    int v0;
    u8 v1;

    v0 = sub_02054FD0(fieldSystem, pos, x, z, &v1);

    if (param4 != NULL) {
        *param4 = v0;
    }

    if (v0 == 0) {
        BOOL v2;

        v2 = FieldSystem_CheckCollision(fieldSystem, x, z);

        if ((!v2) && (v1 == 2)) {
            u8 v3 = FieldSystem_GetTileBehavior(fieldSystem, x, z);

            if (TileBehavior_IsPastoriaGymWater(v3)) {
                return TRUE;
            }
        }

        return v2;
    } else {
        return TRUE;
    }
}

BOOL sub_0205507C(FieldSystem *fieldSystem, const VecFx32 *param1, const int param2, const int param3, s8 *param4)
{
    int v0;
    u8 v1;

    v0 = sub_02054FD0(fieldSystem, param1, param2, param3, &v1);

    if (param4 != NULL) {
        *param4 = v0;
    }

    if (v0 == 0) {
        BOOL v2;
        BOOL v3;

        v3 = sub_02068390(fieldSystem, param2, param3, param1->y, &v2);

        if (!v3) {
            v2 = FieldSystem_CheckCollision(fieldSystem, param2, param3);

            if ((!v2) && (v1 == 2)) {
                u8 v4 = FieldSystem_GetTileBehavior(fieldSystem, param2, param3);

                if (TileBehavior_IsPastoriaGymWater(v4)) {
                    return 1;
                }
            }

            return v2;
        } else {
            return v2;
        }
    } else {
        return 1;
    }
}

void sub_020550F4(const int param0, const int param1, const int param2, const int param3, const u32 param4, const u32 param5, UnkStruct_02055130 *param6)
{
    int v0, v1, v2, v3;

    v0 = param0 + param2;
    v1 = param1 + param3;

    v2 = v0 + param4;
    v3 = v1 + param5;

    if ((v0 < 0) || (v1 < 0) || (v2 < 0) || (v3 < 0)) {
        GF_ASSERT(FALSE);
    }

    param6->unk_00 = v0 * 16 * FX32_ONE;
    param6->unk_04 = v1 * 16 * FX32_ONE;
    param6->unk_08 = v2 * 16 * FX32_ONE;
    param6->unk_0C = v3 * 16 * FX32_ONE;
}

BOOL sub_02055130(const MapProp *param0, const UnkStruct_02055130 *param1, const VecFx32 *param2)
{
    VecFx32 v0;

    v0 = MapProp_GetPosition(param0);

    v0.x += param2->x;
    v0.z += param2->z;

    if ((param1->unk_00 <= v0.x) && (v0.x <= param1->unk_08) && (param1->unk_04 <= v0.z) && (v0.z <= param1->unk_0C)) {
        return 1;
    }

    return 0;
}

BOOL sub_02055178(const FieldSystem *fieldSystem, const int param1, const UnkStruct_02055130 *param2, MapProp **param3)
{
    u8 v0;
    MapPropManager *v1;

    for (v0 = 0; v0 < 4; v0++) {
        LandDataManager_GetLoadedMapPropManager(v0, fieldSystem->landDataMan, &v1);

        if (v1 == NULL) {
            continue;
        }

        {
            u8 v2;
            VecFx32 v3;
            int v4;
            int v5;
            BOOL v6;

            v4 = LandDataManager_GetLoadedMapMatrixIndex(fieldSystem->landDataMan, v0);
            v5 = MapMatrix_GetWidth(fieldSystem->mapMatrix);

            sub_020553A4(v4, v5, &v3);

            for (v2 = 0; v2 < 32; v2++) {
                MapProp *v7;

                v7 = MapPropManager_GetLoadedProp(v1, v2);
                v6 = sub_02055130(v7, param2, &v3);

                if (v6) {
                    int v8;

                    v8 = MapProp_GetModelID(v7);

                    if (v8 == param1) {
                        if (param3 != NULL) {
                            *param3 = v7;
                        }

                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

BOOL sub_02055208(const FieldSystem *fieldSystem, const int *param1, const u8 param2, const UnkStruct_02055130 *param3, MapProp **param4, int *param5)
{
    u8 v0;
    MapPropManager *v1;

    for (v0 = 0; v0 < 4; v0++) {
        LandDataManager_GetLoadedMapPropManager(v0, fieldSystem->landDataMan, &v1);

        if (v1 == NULL) {
            continue;
        }

        {
            u8 v2;
            VecFx32 v3;
            int v4;
            int v5;
            BOOL v6;

            v4 = LandDataManager_GetLoadedMapMatrixIndex(fieldSystem->landDataMan, v0);
            v5 = MapMatrix_GetWidth(fieldSystem->mapMatrix);

            sub_020553A4(v4, v5, &v3);

            for (v2 = 0; v2 < 32; v2++) {
                MapProp *v7;

                v7 = MapPropManager_GetLoadedProp(v1, v2);
                v6 = sub_02055130(v7, param3, &v3);

                if (v6) {
                    u8 v8;
                    int v9;

                    v9 = MapProp_GetModelID(v7);

                    for (v8 = 0; v8 < param2; v8++) {
                        if (v9 == param1[v8]) {
                            if (param4 != NULL) {
                                (*param4) = v7;
                            }

                            if (param5 != NULL) {
                                *param5 = v9;
                            }

                            return 1;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

BOOL sub_020552B4(const FieldSystem *fieldSystem, const int param1, MapProp **param2, int *param3)
{
    u8 v0;
    MapPropManager *v1;

    for (v0 = 0; v0 < 4; v0++) {
        LandDataManager_GetLoadedMapPropManager(v0, fieldSystem->landDataMan, &v1);

        if (v1 == NULL) {
            continue;
        }

        {
            u8 v2;

            for (v2 = 0; v2 < 32; v2++) {
                MapProp *v3;

                v3 = MapPropManager_GetLoadedProp(v1, v2);
                {
                    u8 v4;
                    int v5;

                    v5 = MapProp_GetModelID(v3);

                    if (v5 == param1) {
                        if (param2 != NULL) {
                            (*param2) = v3;
                        }

                        if (param3 != NULL) {
                            (*param3) = LandDataManager_GetLoadedMapMatrixIndex(fieldSystem->landDataMan, v0);
                        }

                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

BOOL sub_02055324(const FieldSystem *fieldSystem, const int *param1, const u8 param2, MapProp **param3, int *param4)
{
    u8 v0;
    MapPropManager *v1;

    for (v0 = 0; v0 < 4; v0++) {
        LandDataManager_GetLoadedMapPropManager(v0, fieldSystem->landDataMan, &v1);

        if (v1 == NULL) {
            continue;
        }

        {
            u8 v2;

            for (v2 = 0; v2 < 32; v2++) {
                MapProp *v3;

                v3 = MapPropManager_GetLoadedProp(v1, v2);
                {
                    u8 v4;
                    int v5;

                    v5 = MapProp_GetModelID(v3);

                    for (v4 = 0; v4 < param2; v4++) {
                        if (v5 == param1[v4]) {
                            if (param3 != NULL) {
                                (*param3) = v3;
                            }

                            if (param4 != NULL) {
                                *param4 = v5;
                            }

                            return 1;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

void sub_020553A4(const int param0, const int param1, VecFx32 *param2)
{
    u16 v0;
    u16 v1;

    param2->x = (32 / 2) * 16 * FX32_ONE;
    param2->z = (32 / 2) * 16 * FX32_ONE;

    v0 = param0 % param1;
    v1 = param0 / param1;

    param2->x += v0 * 32 * 16 * FX32_ONE;
    param2->z += v1 * 32 * 16 * FX32_ONE;
}
