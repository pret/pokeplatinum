#ifndef POKEPLATINUM_LOCATION_H
#define POKEPLATINUM_LOCATION_H

#include "generated/map_headers.h"

#include "savedata.h"

#define WARP_ID_NONE -1

enum FaceDirection {
    FACE_NONE = -1,
    FACE_UP = 0,
    FACE_DOWN,
    FACE_LEFT,
    FACE_RIGHT,
};

typedef struct Location {
    enum MapHeaderID mapHeaderID;
    int warpId;
    int x;
    int z;
    int faceDirection;
} Location;

static inline void Location_Set(Location *location, enum MapHeaderID mapHeaderID, int warpId, int x, int z, int faceDirection)
{
    location->mapHeaderID = mapHeaderID;
    location->warpId = warpId;
    location->x = x;
    location->z = z;
    location->faceDirection = faceDirection;
}

void SetPlayerStartLocation(Location *outLocation);
void SetPlayerFirstRespawnLocation(Location *outLocation);
void InitPlayerStartLocation(SaveData *saveData);

#endif // POKEPLATINUM_LOCATION_H
