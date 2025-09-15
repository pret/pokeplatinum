#include "berry_patch_graphics.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/berry_graphics_data.h"
#include "overlay005/berry_graphics_table.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F204C.h"
#include "overlay005/struct_ov5_021ED01C.h"

#include "berry_patch_manager.h"
#include "berry_patches.h"
#include "map_header_data.h"
#include "map_object.h"
#include "unk_02020AEC.h"

typedef struct BerryPatchData {
    u16 growthStage;
    u16 needsUpdate;
} BerryPatchData;

typedef struct BerryPatchGraphics {
    int graphicsResourceID;
    enum BerryGrowthStage lastGrowthStage;
    UnkStruct_020216E0 *graphicsObject;
    UnkStruct_ov5_021ED01C graphicsState;
} BerryPatchGraphics;

static int BerryPatchGraphics_GetGraphicsResourceID(int berryID, enum BerryGrowthStage growthStage);

BOOL BerryPatchGraphics_IsBerryPatch(int graphicsID)
{
    if (graphicsID == 100) {
        return TRUE;
    }

    return FALSE;
}

int BerryPatchGraphics_GetCurrentGraphicsResourceID(const MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78((MapObject *)mapObject);

    if (patchData->growthStage == BERRY_GROWTH_STAGE_NONE) {
        return 0xffff;
    }

    if (sub_02062DFC(mapObject) == 1) {
        BerryPatchGraphics *graphicsData = sub_02062AF0((MapObject *)mapObject);

        if (graphicsData->lastGrowthStage != BERRY_GROWTH_STAGE_NONE) {
            return graphicsData->graphicsResourceID;
        }
    }

    return 0xffff;
}

void BerryPatchGraphics_MarkForUpdate(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78(mapObject);
    patchData->needsUpdate = TRUE;
}

void BerryPatchGraphics_NewData(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A54(mapObject, sizeof(BerryPatchData));
    patchData->growthStage = BERRY_GROWTH_STAGE_NONE;
}

void BerryPatchGraphics_UpdateGrowthStage(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78(mapObject);
    patchData->growthStage = BerryPatches_GetGrowthStage(MapObject_FieldSystem(mapObject), mapObject);
}

void BerryPatchGraphics_NoOp(MapObject *mapObject)
{
    return;
}

void BerryPatchGraphics_NewGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062ACC(mapObject, sizeof(BerryPatchGraphics));

    graphicsData->graphicsResourceID = 0xffff;
    graphicsData->lastGrowthStage = BERRY_GROWTH_STAGE_NONE;

    ov5_021F20D4(mapObject);
}

void BerryPatchGraphics_UpdateGraphics(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78(mapObject);
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);
    u32 currentGrowthStage = BerryPatches_GetGrowthStage(MapObject_FieldSystem(mapObject), mapObject);

    if (ov5_021EDD94(mapObject) == 1) {
        return;
    }

    if (currentGrowthStage != graphicsData->lastGrowthStage) {
        ov5_021ECFD8(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);

        graphicsData->graphicsResourceID = BerryPatchGraphics_GetGraphicsResourceID(
            BerryPatches_GetBerryID(MapObject_FieldSystem(mapObject), mapObject), currentGrowthStage);

        if (graphicsData->graphicsResourceID != 0xffff) {
            if (graphicsData->lastGrowthStage != BERRY_GROWTH_STAGE_NONE) {
                ov5_021F22BC(mapObject);
            }

            ov5_021ECEB4(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
        } else {
            if (graphicsData->lastGrowthStage != BERRY_GROWTH_STAGE_NONE && patchData->needsUpdate == FALSE) {
                ov5_021F22BC(mapObject);
            }
        }

        patchData->needsUpdate = FALSE;
    }

    graphicsData->lastGrowthStage = currentGrowthStage;

    if (ov5_021EDD94(mapObject) == 1) {
        return;
    }

    if (graphicsData->graphicsObject != NULL) {
        ov5_021EDEB4(mapObject, graphicsData->graphicsObject);

        if (ov5_021ECD38(mapObject) == 0) {
            sub_02021368(graphicsData->graphicsObject, FX32_ONE );
        }

        ov5_021EDED8(mapObject, graphicsData->graphicsObject);
    }
}

void BerryPatchGraphics_FreeGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);
    ov5_021ECFD8(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
}

void BerryPatchGraphics_PauseGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);

    if (graphicsData->graphicsObject != NULL) {
        ov5_021ED01C(graphicsData->graphicsObject, &graphicsData->graphicsState);
    }

    ov5_021ECFD8(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
    MapObject_SetStatusFlagOn(mapObject, MAP_OBJ_STATUS_21);
}

void BerryPatchGraphics_ResumeGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);

    if (ov5_021EDD94(mapObject) == 1) {
        return;
    }

    if (graphicsData->graphicsObject == NULL) {
        if (graphicsData->graphicsResourceID != 0xffff) {
            ov5_021ECEB4(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
        } else {
            MapObject_SetStatusFlagOff(mapObject, MAP_OBJ_STATUS_21);
        }

        ov5_021F20D4(mapObject);
    }

    if (graphicsData->graphicsObject != NULL) {
        ov5_021ED03C(graphicsData->graphicsObject, &graphicsData->graphicsState);
        ov5_021EDEB4(mapObject, graphicsData->graphicsObject);
        MapObject_SetStatusFlagOff(mapObject, MAP_OBJ_STATUS_21);
    }
}

static int BerryPatchGraphics_GetGraphicsResourceID(int berryID, enum BerryGrowthStage growthStage)
{
    switch (growthStage) {
    case BERRY_GROWTH_STAGE_NONE:
        return 0xffff;
    case BERRY_GROWTH_STAGE_PLANTED:
        return 0xffff;
    default:
        berryID--;

        const BerryGraphicsData *graphicsData = &gBerryGraphicsTable[berryID];

        switch (growthStage) {
        case BERRY_GROWTH_STAGE_SPROUTED:
            return 4096;
        case BERRY_GROWTH_STAGE_GROWING:
            return graphicsData->growingResourceID;
        case BERRY_GROWTH_STAGE_BLOOMING:
            return graphicsData->bloomingResourceID;
        case BERRY_GROWTH_STAGE_FRUIT:
            return graphicsData->fruitResourceID;
        }
    }

    GF_ASSERT(FALSE);
    return 0xffff;
}

UnkStruct_020216E0 *BerryPatchGraphics_GetGraphicsObject(MapObject *mapObject)
{
    UnkStruct_020216E0 *graphicsObject = NULL;

    GF_ASSERT(BerryPatchGraphics_IsBerryPatch(MapObject_GetGraphicsID(mapObject)));

    if (sub_02062D4C(mapObject) == 1) {
        BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);

        graphicsObject = graphicsData->graphicsObject;
    }

    return graphicsObject;
}
