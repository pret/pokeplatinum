#include "unk_020677F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/const_ov5_021FB67C.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F204C.h"
#include "overlay005/struct_ov5_021ED01C.h"
#include "overlay005/struct_ov5_021FB67C.h"

#include "map_header_data.h"
#include "map_object.h"
#include "unk_02020AEC.h"
#include "unk_02055C50.h"

typedef struct {
    u16 growthStage;
    u16 needsUpdate;
} BerryPatchData;

typedef struct {
    int graphicsResourceID;
    int lastGrowthStage;
    UnkStruct_020216E0 *graphicsObject;
    UnkStruct_ov5_021ED01C graphicsState;
} BerryPatchGraphics;

static int BerryPatch_GetGraphicsResourceID(int berryID, int growthStage);

int BerryPatch_IsBerryPatch(int graphicsID)
{
    if (graphicsID == 0x64) {
        return 1;
    }

    return 0;
}

int BerryPatch_GetCurrentGraphicsResourceID(const MapObject *mapObject)
{
    {
        BerryPatchData *patchData = sub_02062A78((MapObject *)mapObject);

        if (patchData->growthStage == 0) {
            return 0xffff;
        }
    }

    if (sub_02062DFC(mapObject) == 1) {
        BerryPatchGraphics *graphicsData = sub_02062AF0((MapObject *)mapObject);

        if (graphicsData->lastGrowthStage != 0) {
            return graphicsData->graphicsResourceID;
        }
    }

    return 0xffff;
}

void BerryPatch_MarkForUpdate(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78(mapObject);
    patchData->needsUpdate = 1;
}

void BerryPatch_InitData(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A54(mapObject, (sizeof(BerryPatchData)));
    patchData->growthStage = 0;
}

void BerryPatch_UpdateGrowthStage(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78(mapObject);
    patchData->growthStage = BerryPatches_GetGrowthStage(MapObject_FieldSystem(mapObject), mapObject);
}

void BerryPatch_NoOp(MapObject *mapObject)
{
    return;
}

void BerryPatch_InitGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062ACC(mapObject, (sizeof(BerryPatchGraphics)));

    graphicsData->graphicsResourceID = 0xffff;
    graphicsData->lastGrowthStage = 0;

    ov5_021F20D4(mapObject);
}

void BerryPatch_UpdateGraphics(MapObject *mapObject)
{
    BerryPatchData *patchData = sub_02062A78(mapObject);
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);
    u32 currentGrowthStage = BerryPatches_GetGrowthStage(MapObject_FieldSystem(mapObject), mapObject);

    if (ov5_021EDD94(mapObject) == 1) {
        return;
    }

    if (currentGrowthStage != graphicsData->lastGrowthStage) {
        ov5_021ECFD8(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);

        graphicsData->graphicsResourceID = BerryPatch_GetGraphicsResourceID(
            BerryPatches_GetBerryID(MapObject_FieldSystem(mapObject), mapObject), currentGrowthStage);

        if (graphicsData->graphicsResourceID != 0xffff) {
            if (graphicsData->lastGrowthStage != 0) {
                ov5_021F22BC(mapObject);
            }

            ov5_021ECEB4(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
        } else {
            if ((graphicsData->lastGrowthStage != 0) && (patchData->needsUpdate == 0)) {
                ov5_021F22BC(mapObject);
            }
        }

        patchData->needsUpdate = 0;
    }

    graphicsData->lastGrowthStage = currentGrowthStage;

    if (ov5_021EDD94(mapObject) == 1) {
        return;
    }

    if (graphicsData->graphicsObject != NULL) {
        ov5_021EDEB4(mapObject, graphicsData->graphicsObject);

        if (ov5_021ECD38(mapObject) == 0) {
            sub_02021368(graphicsData->graphicsObject, (FX32_ONE));
        }

        ov5_021EDED8(mapObject, graphicsData->graphicsObject);
    }
}

void BerryPatch_CleanupGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);
    ov5_021ECFD8(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
}

void BerryPatch_PauseGraphics(MapObject *mapObject)
{
    BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);

    if (graphicsData->graphicsObject != NULL) {
        ov5_021ED01C(graphicsData->graphicsObject, &graphicsData->graphicsState);
    }

    ov5_021ECFD8(mapObject, &graphicsData->graphicsObject, graphicsData->graphicsResourceID);
    MapObject_SetStatusFlagOn(mapObject, MAP_OBJ_STATUS_21);
}

void BerryPatch_ResumeGraphics(MapObject *mapObject)
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

static int BerryPatch_GetGraphicsResourceID(int berryID, int growthStage)
{
    switch (growthStage) {
    case 0:
        return 0xffff;
    case 1:
        return 0xffff;
    default: {
        berryID--;

        {
            const BerryGraphicsData *graphicsData = &BerryGraphicsTable[berryID];

            switch (growthStage) {
            case 2:
                return 0x1000 + 0x0;
            case 3:
                return graphicsData->stage3ResourceID;
            case 4:
                return graphicsData->stage4ResourceID;
            case 5:
                return graphicsData->stage5ResourceID;
            }
        }
    }
    }

    GF_ASSERT(FALSE);
    return 0xffff;
}

UnkStruct_020216E0 *BerryPatch_GetGraphicsObject(MapObject *mapObject)
{
    UnkStruct_020216E0 *graphicsObject = NULL;

    GF_ASSERT(BerryPatch_IsBerryPatch(MapObject_GetGraphicsID(mapObject)));

    if (sub_02062D4C(mapObject) == 1) {
        BerryPatchGraphics *graphicsData = sub_02062AF0(mapObject);

        graphicsObject = graphicsData->graphicsObject;
    }

    return graphicsObject;
}
