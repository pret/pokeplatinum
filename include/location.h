#ifndef POKEPLATINUM_LOCATION_H
#define POKEPLATINUM_LOCATION_H

#include "savedata.h"

#define WARP_ID_NONE -1

enum FaceDirection {
    FACE_UP = 0,
    FACE_DOWN,
    FACE_LEFT,
    FACE_RIGHT,
};

typedef struct Location {
    int mapId;
    int warpId;
    int x;
    int z;
    int faceDirection;
} Location;

static inline void Location_Set(Location *location, int mapId, int warpId, int x, int z, int faceDirection)
{
    location->mapId = mapId;
    location->warpId = warpId;
    location->x = x;
    location->z = z;
    location->faceDirection = faceDirection;
}

void SetPlayerStartLocation(Location *outLocation);
void SetPlayerFirstRespawnLocation(Location *outLocation);
void InitPlayerStartLocation(SaveData *saveData);

#endif // POKEPLATINUM_LOCATION_H
