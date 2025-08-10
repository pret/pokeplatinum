#ifndef POKEPLATINUM_UNK_0206C784_H
#define POKEPLATINUM_UNK_0206C784_H

#include "field/field_system_decl.h"
#include "overlay005/model_attributes.h"

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
    u8 startDir;
    u8 padding_01[3];
    ModelAttributes *areaModelAttrs;
} BoatTravelCutscene;

void FieldSystem_PlayBoatCutscene(FieldSystem *fieldSystem, const u8 startDir, const u8 endDir, const int mapID, const int x, const int z);

#endif // POKEPLATINUM_UNK_0206C784_H
