#ifndef POKEPLATINUM_OV5_LAND_DATA_H
#define POKEPLATINUM_OV5_LAND_DATA_H

#include <nitro/fx/fx.h>
#include <nitro/types.h>

#include "field/field_system_decl.h"
#include "overlay005/area_data.h"
#include "overlay005/bdhc.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/model_attributes.h"

#include "map_matrix.h"
#include "narc.h"

typedef void (*MapLoadedCallback)(void *, const int, MapPropManager *const);

void LandDataManager_Tick(FieldSystem *fieldSystem, LandDataManager *landDataMan);
LandDataManager *LandDataManager_New(MapMatrix *mapMatrix, AreaDataManager *areaDataMan, MapPropAnimationManager *mapPropAnimMan, const BOOL skipAttributes);
void LandDataManager_InitialLoad(LandDataManager *landDataMan, const int playerTileX, const int playerTileZ);
void LandDataManager_CheckLazyLoadNextMapPair(const u8 trackedTargetDirection, LandDataManager *landDataMan);
void LandDataManager_RenderLoadedMaps(const LandDataManager *landDataMan, ModelAttributes *const modelAttrs);
void LandData_ObjectPosToTilePos(fx32 objectPositionX, fx32 objectPositionZ, int *tileX, int *tileZ);
void LandDataManager_End(LandDataManager *landDataMan);
void LandDataManager_FreeNARCAndLoadedMapBuffers(LandDataManager *landDataMan);
BOOL LandDataManager_HasEnded(const LandDataManager *landDataMan);
void LandDataManager_TrackTarget(VecFx32 const *position, LandDataManager *landDataMan);
void LandDataManager_ForgetTrackedTarget(LandDataManager *landDataMan);
void LandDataManager_GetLoadedMapPropManager(const u8 index, const LandDataManager *landDataMan, MapPropManager **mapPropMan);
u8 LandDataManager_GetTrackedTargetLoadedMapsQuadrant(const LandDataManager *landDataMan);
u8 LandDataManager_CalculateMapQuadrantOfTile(const u32 tileIndex, const int mapMatrixWidthTiles);
u8 LandDataManager_GetRelativeLoadedMapsQuadrant(const int mapMatrixIndex, const u8 unused1, const LandDataManager *landDataMan);
int LandDataManager_GetLoadedMapMatrixIndex(const LandDataManager *landDataMan, const u8 loadedMapIndex);
BOOL LandDataManager_GetRelativeLoadedMapsQuadrantOfTile(const LandDataManager *landDataMan, const int tileX, const int tileZ, u8 *result);
const BDHC *LandDataManager_GetLoadedMapBDHC(const LandDataManager *landDataMan, const u8 loadedMapIndex);
u16 const *LandDataManager_GetLoadedMapTerrainAttributes(const LandDataManager *landDataMan, const u8 loadedMapIndex);
void LandDataManager_SetMapLoadedCallback(LandDataManager *landDataMan, MapLoadedCallback mapLoadedCb, void *cbUserData);
NARC *LandDataManager_GetLandDataNARC(LandDataManager *landDataMan);
void LandDataManager_SetInDistortionWorld(LandDataManager *landDataMan, BOOL inDistortionWorld);
int LandDataManager_GetOffsetTileX(const LandDataManager *landDataMan);
int LandDataManager_GetOffsetTileZ(const LandDataManager *landDataMan);
void LandDataManager_GetOffset(const LandDataManager *landDataMan, VecFx32 *offset);
void LandDataManager_SetSkipMapProps(LandDataManager *landDataMan, BOOL skipMapProps);
void LandDataManager_SetMapMatrix(LandDataManager *landDataMan, MapMatrix *mapMatrix);
void LandDataManager_SetLoadedMapValid(LandDataManager *landDataMan, int index, BOOL valid);

void LandDataManager_DistortionWorldNewLoadedMapsWithoutAttributesAndModel(LandDataManager *landDataMan);
LandDataManager *LandDataManager_DistortionWorldNew(MapMatrix *mapMatrix, AreaDataManager *areaDataMan, NARC *landDataNARC);
void LandDataManager_DistortionWorldInit(LandDataManager *landDataMan, MapMatrix *mapMatrix, AreaDataManager *areaDataMan, NARC *landDataNARC);
void LandDataManager_DistortionWorldEnd(LandDataManager *landDataMan);
void LandDataManager_DistortionWorldInitLoadedMapPropManagers(LandDataManager *landDataMan);
void LandDataManager_DistortionWorldFreeLoadedMapBuffers(LandDataManager *landDataMan);
void LandDataManager_DistortionWorldInitialLoad(LandDataManager *landDataMan, const int playerTileX, const int playerTileZ);
void LandDataManager_DistortionWorldInitLoadedMaps(LandDataManager *landDataMan, const int trackedTargetTileX, const int trackedTargetTileZ, int *loadedMapMatrixIndexes);
void LandDataManager_DistortionWorldLoadAndInvalidate(LandDataManager *landDataMan, int loadedMapIndex, int mapMatrixIndex);
void LandDataManager_DistortionWorldRenderNextFloorMaps(const LandDataManager *landDataMan, const ModelAttributes *modelAttrs);
void LandDataManager_DistortionWorldEndWithoutFreeing(LandDataManager *landDataMan);
void LandDataManager_DistortionWorldPrepareNextFloor(MapMatrix *mapMatrix, AreaDataManager *areaDataMan, LandDataManager *src, LandDataManager *dest, const int trackedTargetTileX, const int trackedTargetTileZ);
void LandDataManager_DistortionWorldPreparePreviousFloor(LandDataManager *dest, LandDataManager *src);
void LandDataManager_DistortionWorldTick(FieldSystem *fieldSystem, LandDataManager *landDataMan);
void LandDataManager_DistortionWorldInitWithoutNARC(LandDataManager *landDataMan, MapMatrix *mapMatrix, AreaDataManager *areaDataMan);
void LandDataManager_DistortionWorldInvalidateLoadedMaps(LandDataManager *landDataMan, const int trackedTargetTileX, const int trackedTargetTileZ, int *loadedMapMatrixIndexes);
void LandDataManager_DistortionWorldLoadEntire(LandDataManager *landDataMan, int loadedMapIndex, int mapMatrixIndex);
void LandDataManager_DistortionWorldSetOffsets(LandDataManager *landDataMan, int offsetTileX, int offsetAltitude, int offsetTileZ);
void LandDataManager_DistortionWorldUpdateTrackedTargetValues(LandDataManager *landDataMan, int trackedTargetTileX, int trackedTargetTileZ);

#endif // POKEPLATINUM_OV5_LAND_DATA_H
