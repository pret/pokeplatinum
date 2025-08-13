#ifndef POKEPLATINUM_BOAT_CUTSCENE_H
#define POKEPLATINUM_BOAT_CUTSCENE_H

#include "generated/boat_travel_dirs.h"

#include "field/field_system_decl.h"
#include "overlay005/model_attributes.h"

#include "overlay_manager.h"

#define BOAT_TRAVEL_CUTSCENE_HEAP_SIZE 0x20000

#define BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_ANGLE_X        -10750
#define BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_ANGLE_Y        0
#define BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_ANGLE_Z        0
#define BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_DISTANCE       0x29AEC1
#define BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_PROJECTION_MTX 0
#define BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_FOVY           1473

#define BOAT_TRAVEL_CUTSCENE_NUM_LIGHTS 4

#define BOAT_TRAVEL_CUTSCENE_STATE_SFX      0
#define BOAT_TRAVEL_CUTSCENE_STATE_FADE_OUT 1

typedef struct BoatTravelCutscene {
    u8 travelDir;
    u8 padding_01[3];
    ModelAttributes *areaModelAttrs;
} BoatTravelCutscene;

void FieldSystem_PlayBoatCutscene(FieldSystem *fieldSystem, const u8 travelDir, const u8 exitDir, const int mapID, const int x, const int z);

BOOL BoatCutscene_CanalaveShip_Init(ApplicationManager *appMan, int *state);
BOOL BoatCutscene_CanalaveShip_Main(ApplicationManager *appMan, int *state);
BOOL BoatCutscene_CanalaveShip_Exit(ApplicationManager *appMan, int *state);

BOOL BoatCutscene_SnowpointShip_Init(ApplicationManager *appMan, int *state);
BOOL BoatCutscene_SnowpointShip_Main(ApplicationManager *appMan, int *state);
BOOL BoatCutscene_SnowpointShip_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_BOAT_CUTSCENE_H
