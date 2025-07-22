#include "overlay006/feebas_fishing.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "heap.h"
#include "inlines.h"
#include "map_matrix.h"
#include "narc.h"
#include "record_mixed_rng.h"
#include "unk_0205F180.h"

// Calculates if the player is facing a Feebas tile, but exits early 50% of the time
// to simulate Feebas having a 50% encounter rate.
BOOL PlayerAvatar_IsFacingFeebasTile(FieldSystem *fieldSystem) {
    u8 i;
    int numFishingtiles;
    int groupSize;
    u8 excessTiles;
    u8 tileOverflow;
    void *narcData;
    u16 *tileData;
    int mapCoordsSize;
    int randTiles[4];
    int feebasTileIndexes[4];
    int feebasTileCoords[4];
    int facingTileCoord;
    BOOL isFeebasTile;
    u32 rand;
    int mapMatrixWidth;
    int x, z;

    // 50% failure rate, responsible for the 50% encounter chance when on a Feebas tile
    if (LCRNG_RandMod(2) == 0) {
        return 0;
    }

    rand = RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(fieldSystem->saveData));

    PlayerAvatar_GetFacingTileCoords(fieldSystem->playerAvatar, &x, &z);

    // Value of 1 for the map this is actually used on
    mapMatrixWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
    isFeebasTile = FALSE;

    randTiles[0] = (rand >> 24) & 0xff;
    randTiles[1] = (rand >> 16) & 0xff;
    randTiles[2] = (rand >> 8) & 0xff;
    randTiles[3] = rand & 0xff;

    // The first 3 members of this narc are (2, 228, 300) from encounters_mt_coronet_b1f.json. They are u32, hence the cast to int
    narcData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 1, HEAP_ID_FIELD);
    mapCoordsSize = ((int *)narcData)[0];
    numFishingtiles = 0;

    for (i = 0; i < mapCoordsSize; i++) {
        numFishingtiles += ((int *)narcData)[1 + i];
    }

    // The rest of the narc is u16 tile coordinates in the form (z * 32) + x
    tileData = &((u16 *)narcData)[2 + mapCoordsSize * 2]; // 2+mapCoordsSize*2 because those members are u32

    // Fishing tiles are split into 4 equivalent-sized groups
    groupSize = numFishingtiles / 4;

    GF_ASSERT(groupSize < 256);

    // The number of tiles in the lake ended up evenly dividing into 4 in vanilla, but if it didn't, the excess tiles would be accounted for.
    excessTiles = numFishingtiles % 4;
    tileOverflow = 0;

    for (i = 0; i < 4; i++) {
        feebasTileIndexes[i] = groupSize * i + (randTiles[i] % groupSize) + tileOverflow;
        feebasTileCoords[i] = tileData[feebasTileIndexes[i]];

        if (excessTiles != 0) {
            tileOverflow++;
            excessTiles--;
        }
    }

    facingTileCoord = (mapMatrixWidth * 32 * z) + x;

    for (i = 0; i < 4; i++) {
        if (feebasTileCoords[i] == facingTileCoord) {
            isFeebasTile = TRUE;
            break;
        }
    }

    Heap_Free(narcData);

    return isFeebasTile;
}

void LoadFeebasLevelRange(u8 *maxLevel, u8 *minLevel) {
    (*maxLevel) = 20;
    (*minLevel) = 10;
}

// I guess they didn't want to hardcode this...for some reason...
void LoadFeebasFromNARC(int *species) {
    int *narcData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 0, HEAP_ID_FIELD);
    (*species) = (*narcData);

    Heap_Free(narcData);
}
