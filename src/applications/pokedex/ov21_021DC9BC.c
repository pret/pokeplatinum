#include "applications/pokedex/ov21_021DC9BC.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_enc_data.h"
#include "applications/pokedex/pokedex_field_map.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "rtc.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "unk_02012744.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

#define TERMINALVALUE      0xffff
#define POKEDEXMAPXSCALE   5
#define POKEDEXMAPYSCALE   5
#define POKEDEXMAPHEIGHT   30
#define POKEDEXMAPWIDTH    30
#define POKEDEXMAPNUMCELLS (POKEDEXMAPHEIGHT * POKEDEXMAPWIDTH)
#define NUMDUNGEONS        22

static const u16 fullmoonIslandFields[] = {
    TERMINALVALUE
};

static const u16 fullmoonIslandDungeons[] = {
    TERMINALVALUE
};

static const u16 seabreakPathFields[] = {
    TERMINALVALUE
};

static const u16 seabreakPathDungeons[] = {
    TERMINALVALUE
};

static const u16 newmoonIslandFields[] = {
    TERMINALVALUE
};

static const u16 newmoonIslandDungeons[] = {
    TERMINALVALUE
};

static const u16 springPathFields[] = {
    TERMINALVALUE
};

static const u16 springPathDungeons[] = {
    10,
    TERMINALVALUE
};

enum EncounterTime {
    ENCTIME_MORNING = 0,
    ENCTIME_DAY = 1,
    ENCTIME_NIGHT = 2,
};

typedef struct {
    PokedexSortData *unk_00;
    enum EncounterTime encounterTime;
    PokedexScreenManager *unk_08;
} UnkStruct_ov21_021DCACC;

typedef struct {
    PokedexGraphicData *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov21_021DCAE0;

typedef struct {
    int encounterTime;
    u8 *invisibleFields;
    u8 *invisibleDungeons;
    u32 numInvisibleFields;
    u32 numInvisibleDungeons;
    EncounterLocations dungeonsEncounteredOn;
    EncounterLocations fieldsEncounteredOn;
    EncounterLocations dungeonSpecialEncounters;
    EncounterLocations fieldSpecialEncounters;
} EncounterCollection;

typedef struct PokedexMapDisplay {
    int encounterTime;
    Sprite *cellActorArray[NUMDUNGEONS * 2];
    SpriteResource *unk_B4[4];
    int numDungeons;
    Sprite *AreaUnknownCellActor;
    PokedexTextData *AreaUnknownSpriteManager;
    SpriteResource *unk_D0[4];
    PokedexTextData *unk_E0[3];
    u8 pokedexFieldMap_1[POKEDEXMAPNUMCELLS];
    u8 pokedexFieldMap_2[POKEDEXMAPNUMCELLS];
    void *unk_7F4;
    NNSG2dCharacterData *unk_7F8;
    void *unk_7FC;
    NNSG2dCharacterData *unk_800;
    DungeonCoordinates *dungeonCoordinatesArray;
    FieldCoordinates *fieldCoordinatesArray;
    int unk_80C;
    int unk_810;
    SpriteTransformation unk_814;
    u32 numVisibleDungeons;
    u32 numVisibleFields;
    u32 dungeonsZero; // as far as I can tell these will always be zero
    u32 fieldsZero;
} PokedexMapDisplay;

static UnkStruct_ov21_021DCACC *ov21_021DCA5C(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021DCAE0 *ov21_021DCAA0(enum HeapID heapID, PokedexApp *param1);
static void ov21_021DCACC(UnkStruct_ov21_021DCACC *param0);
static void ov21_021DCAE0(UnkStruct_ov21_021DCAE0 *param0);
static int ov21_021DCAF4(void);
static int PokedexEncounters_PopulateEncounterCollection(PokedexDataManager *dataMan, void *data);
static int ov21_021DCB6C(PokedexDataManager *dataMan, void *data);
static int ov21_021DCBA8(PokedexDataManager *dataMan, void *data);
static int ov21_021DCBD8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021DCCD8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021DCD04(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021DDCF4(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1);
static void PokedexMapDisplay_OAMMode_XLU(PokedexMapDisplay *mapDisplay);
static void PokedexMapDisplay_OAMMode_Normal(PokedexMapDisplay *mapDisplay);
static void ov21_021DD490(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static BOOL ov21_021DD508(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static void ov21_021DD554(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static BOOL ov21_021DD5E4(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static void ov21_021DCDD0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, enum HeapID heapID);
static void ov21_021DCE20(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DCE40(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1, enum HeapID heapID);
static void ov21_021DD668(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapID heapID);
static void ov21_021DD6C0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DCFC8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapID heapID);
static void ov21_021DD114(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DD1A8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapID heapID);
static void PokedexMapDisplay_DeleteCellActors(PokedexMapDisplay *mapDisplay);
static void ov21_021DD2E0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, enum HeapID heapID);
static void ov21_021DD3FC(PokedexMapDisplay *mapDisplay);
static void ov21_021DD9E8(PokedexMapDisplay *mapDisplay, const EncounterCollection *encounterCollection);
static void ov21_021DDA48(PokedexMapDisplay *mapDisplay, int param1);
static void ov21_021DDA80(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, int param4);
static void ov21_021DD710(PokedexMapDisplay *mapDisplay, const UnkStruct_ov21_021DCACC *param1, const EncounterCollection *encounterCollection, enum HeapID heapID);
static void ov21_021DD8B4(PokedexMapDisplay *mapDisplay);
static u8 *PokedexEncounters_InvisibleFields(u32 heapID, const UnkStruct_ov21_021DCACC *param1, u32 *param2);
static u8 *PokedexEncounters_InvisibleDungeons(u32 heapID, const UnkStruct_ov21_021DCACC *param1, u32 *param2);
static void ov21_021DD964(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DDB8C(PokedexMapDisplay *mapDisplay);
static void ov21_021DDBCC(PokedexMapDisplay *mapDisplay);
static void ov21_021DDC14(PokedexMapDisplay *mapDisplay);
static void PokedexSort_PopulateDexStatus(EncounterCollection *encounterCollection, UnkStruct_ov21_021DCACC *param1, enum HeapID heapID);
static void ov21_021DDB68(EncounterCollection *encounterCollection);

void ov21_021DC9BC(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021DCACC *v0 = ov21_021DCA5C(heapID, param1);
    UnkStruct_ov21_021DCAE0 *v1 = ov21_021DCAA0(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = NULL;
    param0->numStates = ov21_021DCAF4();
    param0->dataFunc[0] = PokedexEncounters_PopulateEncounterCollection;
    param0->dataFunc[1] = ov21_021DCB6C;
    param0->dataFunc[2] = ov21_021DCBA8;
    param0->graphicsFunc[0] = ov21_021DCBD8;
    param0->graphicsFunc[1] = ov21_021DCCD8;
    param0->graphicsFunc[2] = ov21_021DCD04;
}

void ov21_021DCA14(PokedexScreenManager *param0)
{
    ov21_021DCACC(param0->pageData);
    ov21_021DCAE0(param0->pageGraphics);
}

int ov21_021DCA28(const PokedexScreenManager *param0)
{
    const UnkStruct_ov21_021DCACC *v0 = param0->pageData;
    return v0->encounterTime;
}

void ov21_021DCA30(PokedexScreenManager *param0, int encounterTime)
{
    UnkStruct_ov21_021DCACC *v0 = param0->pageData;

    GF_ASSERT(encounterTime < 3);
    v0->encounterTime = encounterTime;
}

void ov21_021DCA44(PokedexScreenManager *param0, int param1, int param2)
{
    UnkStruct_ov21_021DCAE0 *v0 = param0->pageGraphics;

    v0->unk_04 = param1;
    v0->unk_08 = param2;
}

void ov21_021DCA4C(PokedexScreenManager *param0, int param1)
{
    UnkStruct_ov21_021DCAE0 *v0 = param0->pageGraphics;
    v0->unk_0C = param1;
}

void ov21_021DCA54(PokedexScreenManager *param0, int param1)
{
    UnkStruct_ov21_021DCAE0 *v0 = param0->pageGraphics;
    v0->unk_10 = param1;
}

static UnkStruct_ov21_021DCACC *ov21_021DCA5C(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DCACC *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021DCACC));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DCACC));

    v0->unk_00 = PokedexMain_GetSortData(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);

    return v0;
}

static UnkStruct_ov21_021DCAE0 *ov21_021DCAA0(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DCAE0 *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021DCAE0));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DCAE0));

    v0->unk_00 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static void ov21_021DCACC(UnkStruct_ov21_021DCACC *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021DCAE0(UnkStruct_ov21_021DCAE0 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static int ov21_021DCAF4(void)
{
    return 0;
}

static int PokedexEncounters_PopulateEncounterCollection(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DCACC *v0 = data;
    EncounterCollection *encounterCollection;

    encounterCollection = Heap_Alloc(dataMan->heapID, sizeof(EncounterCollection));

    GF_ASSERT(encounterCollection);
    memset(encounterCollection, 0, sizeof(EncounterCollection));

    dataMan->pageData = encounterCollection;

    if (v0->unk_00->timeOfDay == TIMEOFDAY_MORNING) {
        v0->encounterTime = ENCTIME_MORNING;
    } else {
        if ((v0->unk_00->timeOfDay == TIMEOFDAY_DAY) || (v0->unk_00->timeOfDay == TIMEOFDAY_TWILIGHT)) {
            v0->encounterTime = ENCTIME_DAY;
        } else {
            v0->encounterTime = ENCTIME_NIGHT;
        }
    }

    encounterCollection->invisibleFields = PokedexEncounters_InvisibleFields(dataMan->heapID, v0, &encounterCollection->numInvisibleFields);
    encounterCollection->invisibleDungeons = PokedexEncounters_InvisibleDungeons(dataMan->heapID, v0, &encounterCollection->numInvisibleDungeons);

    PokedexSort_PopulateDexStatus(encounterCollection, v0, dataMan->heapID);

    encounterCollection->encounterTime = v0->encounterTime;

    return 1;
}

static int ov21_021DCB6C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DCACC *v0 = data;
    EncounterCollection *encounterCollection = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (encounterCollection->encounterTime != v0->encounterTime) {
        ov21_021DDB68(encounterCollection);
        PokedexSort_PopulateDexStatus(encounterCollection, v0, dataMan->heapID);
        encounterCollection->encounterTime = v0->encounterTime;
    }

    return 0;
}

static int ov21_021DCBA8(PokedexDataManager *dataMan, void *data)
{
    EncounterCollection *encounterCollection = dataMan->pageData;

    if (encounterCollection->invisibleFields) {
        Heap_Free(encounterCollection->invisibleFields);
    }

    if (encounterCollection->invisibleDungeons) {
        Heap_Free(encounterCollection->invisibleDungeons);
    }

    ov21_021DDB68(encounterCollection);
    Heap_Free(encounterCollection);

    dataMan->pageData = NULL;

    return 1;
}

static int ov21_021DCBD8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DCACC *v0 = data;
    const EncounterCollection *encounterCollection = dataMan->pageData;
    UnkStruct_ov21_021DCAE0 *v2 = graphics;
    PokedexMapDisplay *mapDisplay = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(PokedexMapDisplay));
        memset(graphicsMan->pageGraphics, 0, sizeof(PokedexMapDisplay));

        mapDisplay = graphicsMan->pageGraphics;
        mapDisplay->encounterTime = v0->encounterTime;
        mapDisplay->dungeonCoordinatesArray = PokedexEncData_GetDungeonCoordinates(graphicsMan->heapID, NULL);
        mapDisplay->fieldCoordinatesArray = PokedexEncData_GetFieldCoordinates(graphicsMan->heapID, NULL);

        graphicsMan->state++;
        break;
    case 1:
        ov21_021DCDD0(mapDisplay, v2, v0, encounterCollection, graphicsMan->heapID);
        ov21_021DD710(graphicsMan->pageGraphics, v0, encounterCollection, graphicsMan->heapID);
        ov21_021DD9E8(graphicsMan->pageGraphics, encounterCollection);
        ov21_021DDB8C(mapDisplay);
        ov21_021DD964(mapDisplay, v2);

        if (v2->unk_0C == 0) {
            ov21_021DD490(mapDisplay, v2, v0, 1);
        } else {
            ov21_021DD554(mapDisplay, v2, v0, 1);
        }

        graphicsMan->state++;
        break;
    case 2:
        if (v2->unk_0C == 0) {
            v4 = ov21_021DD508(mapDisplay, v2, v0, 1);
        } else {
            v4 = ov21_021DD5E4(mapDisplay, v2, v0, 1);
        }

        if (v4) {
            graphicsMan->state++;
        }
        break;
    case 3:
        ov21_021DDBCC(mapDisplay);
        return 1;
    }

    return 0;
}

static int ov21_021DCCD8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DCACC *v0 = data;
    const EncounterCollection *encounterCollection = dataMan->pageData;
    UnkStruct_ov21_021DCAE0 *v2 = graphics;
    PokedexMapDisplay *mapDisplay = graphicsMan->pageGraphics;

    ov21_021DDC14(mapDisplay);
    ov21_021DDA80(mapDisplay, v2, v0, encounterCollection, graphicsMan->heapID);

    return 0;
}

static int ov21_021DCD04(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DCACC *v0 = data;
    const EncounterCollection *encounterCollection = dataMan->pageData;
    UnkStruct_ov21_021DCAE0 *v2 = graphics;
    PokedexMapDisplay *mapDisplay = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        ov21_021DDB8C(mapDisplay);

        if (v2->unk_0C == 0) {
            ov21_021DD490(mapDisplay, v2, v0, 0);
        } else {
            ov21_021DD554(mapDisplay, v2, v0, 0);
        }

        graphicsMan->state++;
        break;
    case 1:
        if (v2->unk_0C == 0) {
            v4 = ov21_021DD508(mapDisplay, v2, v0, 0);
        } else {
            v4 = ov21_021DD5E4(mapDisplay, v2, v0, 0);
        }

        if (v4) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021DD8B4(mapDisplay);
        ov21_021DCE20(mapDisplay, v2);
        graphicsMan->state++;
        break;
    case 3:
        GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);
        Heap_Free(mapDisplay->dungeonCoordinatesArray);
        Heap_Free(mapDisplay->fieldCoordinatesArray);
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021DCDD0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, enum HeapID heapID)
{
    ov21_021DCE40(param1, param2, heapID);
    ov21_021DD668(mapDisplay, param1, heapID);
    ov21_021DCFC8(mapDisplay, param1, heapID);
    ov21_021DD1A8(mapDisplay, param1, heapID);
    ov21_021DD2E0(mapDisplay, param1, param2, heapID);
    ov21_021DDA48(mapDisplay, param2->encounterTime);
    ov21_021DDCF4(param1, param2);
}

static void ov21_021DCE20(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1)
{
    ov21_021DD6C0(mapDisplay, param1);
    ov21_021DD3FC(mapDisplay);
    PokedexMapDisplay_DeleteCellActors(mapDisplay);
    ov21_021DD114(mapDisplay, param1);
}

static void ov21_021DCE40(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(param0->unk_00, entry_main_NCGR_lz, param0->unk_00->bgConfig, 3, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, area_map_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);

    if (param1->unk_00->newmoonIslandVisible) {
        v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, map_newmoon_island_NSCR_lz, TRUE, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 13, 8, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_Free(v0);
    }

    if (param1->unk_00->seabreakPathVisible) {
        v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, map_seabreak_path_NSCR_lz, TRUE, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 28, 7, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_Free(v0);
    }

    if (param1->unk_00->fullmoonIslandVisible) {
        v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, map_fullmoon_island_NSCR_lz, TRUE, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 11, 8, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_Free(v0);
    }

    if (param1->unk_00->springPathVisible) {
        v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, map_spring_path_NSCR_lz, TRUE, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 25, 16, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_Free(v0);
    }

    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 3);
}

static void ov21_021DCFC8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapID heapID)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = PokedexGraphics_GetNARC(param1->unk_00);

    mapDisplay->unk_B4[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, dungeon_highlight_NCGR_lz, TRUE, dungeon_highlight_NCGR_lz + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(mapDisplay->unk_B4[0]);
    SpriteResource_ReleaseData(mapDisplay->unk_B4[0]);

    mapDisplay->unk_B4[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, dungeon_highlight_cell_NCER_lz, TRUE, dungeon_highlight_cell_NCER_lz + 6000, 2, heapID);
    mapDisplay->unk_B4[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, dungeon_highlight_anim_NANR_lz, TRUE, dungeon_highlight_anim_NANR_lz + 6000, 3, heapID);
    mapDisplay->unk_D0[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, size_check_icons_NCGR_lz, TRUE, size_check_icons_NCGR_lz + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(mapDisplay->unk_D0[0]);
    SpriteResource_ReleaseData(mapDisplay->unk_D0[0]);

    mapDisplay->unk_D0[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, size_check_icons_NCLR, FALSE, size_check_icons_NCLR + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    SpriteTransfer_RequestPlttFreeSpace(mapDisplay->unk_D0[1]);
    SpriteResource_ReleaseData(mapDisplay->unk_D0[1]);

    mapDisplay->unk_D0[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, size_check_icons_cell_NCER_lz, TRUE, size_check_icons_cell_NCER_lz + 6000, 2, heapID);
    mapDisplay->unk_D0[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, size_check_icons_anim_NANR_lz, TRUE, size_check_icons_anim_NANR_lz + 6000, 3, heapID);
}

static void ov21_021DD114(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(mapDisplay->unk_B4[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], mapDisplay->unk_B4[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], mapDisplay->unk_B4[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], mapDisplay->unk_B4[3]);
    SpriteTransfer_ResetCharTransfer(mapDisplay->unk_D0[0]);
    SpriteTransfer_ResetPlttTransfer(mapDisplay->unk_D0[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], mapDisplay->unk_D0[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], mapDisplay->unk_D0[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], mapDisplay->unk_D0[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], mapDisplay->unk_D0[3]);
}

static void ov21_021DD1A8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapID heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3;

    SpriteResourcesHeader_Init(&v0, size_check_icons_NCGR_lz + 6000, size_check_icons_NCLR + 6000, size_check_icons_cell_NCER_lz + 6000, size_check_icons_anim_NANR_lz + 6000, 0xffffffff, 0xffffffff, FALSE, 1, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 160 * FX32_ONE;
    v1.position.y = 96 * FX32_ONE;

    mapDisplay->AreaUnknownCellActor = SpriteList_Add(&v1);

    Sprite_SetAnim(mapDisplay->AreaUnknownCellActor, 2);
    SpriteResourcesHeader_Init(&v0, dungeon_highlight_NCGR_lz + 6000, size_check_icons_NCLR + 6000, dungeon_highlight_cell_NCER_lz + 6000, dungeon_highlight_anim_NANR_lz + 6000, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 0;
    v1.position.y = 0;

    for (v3 = 0; v3 < (NUMDUNGEONS * 2); v3++) {
        mapDisplay->cellActorArray[v3] = SpriteList_Add(&v1);
        Sprite_SetDrawFlag(mapDisplay->cellActorArray[v3], FALSE);
        Sprite_SetExplicitOAMMode(mapDisplay->cellActorArray[v3], GX_OAM_MODE_XLU);
    }
}

static void PokedexMapDisplay_DeleteCellActors(PokedexMapDisplay *mapDisplay)
{
    int cellActorIndex;

    Sprite_Delete(mapDisplay->AreaUnknownCellActor);
    mapDisplay->AreaUnknownCellActor = NULL;

    for (cellActorIndex = 0; cellActorIndex < (NUMDUNGEONS * 2); cellActorIndex++) {
        Sprite_Delete(mapDisplay->cellActorArray[cellActorIndex]);
        mapDisplay->cellActorArray[cellActorIndex] = NULL;
    }
}

static void ov21_021DD2E0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, enum HeapID heapID)
{
    Window *v0;
    PokedexDisplayBox displayBox;
    SpriteResource *v2;
    PokedexGraphicData *v3 = param1->unk_00;
    int v4;
    int v5;
    u32 v6;

    GF_ASSERT(mapDisplay->AreaUnknownCellActor);

    v2 = SpriteResourceCollection_Find(param1->unk_00->spriteResourceCollection[1], size_check_icons_NCLR + 6000);

    displayBox.textMan = v3->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v2, NULL);
    displayBox.spriteResourcePriority = 1;
    displayBox.spriteListPriority = 31 - 1;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = heapID;

    v4 = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0 = PokedexTextManager_NewWindow(v3->textMan, 16, 2);
    v6 = PokedexTextManager_DisplayMessage(v3->textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_areaunknown, 0, 0);

    displayBox.window = v0;
    displayBox.sprite = mapDisplay->AreaUnknownCellActor;
    displayBox.x = -(v6 / 2);
    displayBox.y = -8;

    mapDisplay->AreaUnknownSpriteManager = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(mapDisplay->AreaUnknownSpriteManager->fontOAM, v4 + 2);
    PokedexTextManager_FreeWindow(v0);

    for (v5 = 0; v5 < 3; v5++) {
        v0 = PokedexTextManager_NewWindow(v3->textMan, 9, 2);
        v6 = PokedexTextManager_DisplayMessage(v3->textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_morning + v5, 0, 0);

        displayBox.window = v0;
        displayBox.sprite = NULL;
        displayBox.x = 8 + ((9 * 8) - v6) / 2;
        displayBox.y = 32;

        mapDisplay->unk_E0[v5] = PokedexTextManager_NextTextData(&displayBox);

        sub_02012A60(mapDisplay->unk_E0[v5]->fontOAM, v4 + 2);
        PokedexTextManager_FreeWindow(v0);
    }
}

static void ov21_021DD3FC(PokedexMapDisplay *mapDisplay)
{
    int v0;

    PokedexTextManager_FreeTextData(mapDisplay->AreaUnknownSpriteManager);

    for (v0 = 0; v0 < 3; v0++) {
        PokedexTextManager_FreeTextData(mapDisplay->unk_E0[v0]);
    }
}

static void PokedexMapDisplay_OAMMode_XLU(PokedexMapDisplay *mapDisplay)
{
    int v0;

    Sprite_SetExplicitOAMMode(mapDisplay->AreaUnknownCellActor, GX_OAM_MODE_XLU);
    sub_02012AF0(mapDisplay->AreaUnknownSpriteManager->fontOAM, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02012AF0(mapDisplay->unk_E0[v0]->fontOAM, GX_OAM_MODE_XLU);
    }
}

static void PokedexMapDisplay_OAMMode_Normal(PokedexMapDisplay *mapDisplay)
{
    int v0;

    Sprite_SetExplicitOAMMode(mapDisplay->AreaUnknownCellActor, GX_OAM_MODE_NORMAL);
    sub_02012AF0(mapDisplay->AreaUnknownSpriteManager->fontOAM, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02012AF0(mapDisplay->unk_E0[v0]->fontOAM, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021DD490(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    PokedexMapDisplay_OAMMode_XLU(mapDisplay);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }

    PokedexGraphics_BlendPokemonChar(param1->unk_00, &param1->unk_00->blendMain);
}

static BOOL ov21_021DD508(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&param1->unk_00->blendMain);
    } else {
        v0 = PokedexGraphics_BlendTransitionComplete(&param1->unk_00->blendMain);
    }

    if (v0) {
        if (param3) {
            PokedexMapDisplay_OAMMode_Normal(mapDisplay);
        }

        return 1;
    } else {
        PokedexGraphics_BlendPokemonChar(param1->unk_00, &param1->unk_00->blendMain);
    }

    return 0;
}

static void ov21_021DD554(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    PokedexMapDisplay_OAMMode_XLU(mapDisplay);

    if (param3 == 0) {
        PokedexGraphics_InitTransformation(&mapDisplay->unk_814, 40, param1->unk_04, 120, param1->unk_08, param1->unk_10);
    }

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, param1->unk_10, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, param1->unk_10, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DD5E4(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = PokedexGraphics_TakeTransformStep(&mapDisplay->unk_814);
        PokemonGraphics_SetCharCenterXY(param1->unk_00, mapDisplay->unk_814.currentX, mapDisplay->unk_814.currentY);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_08)) {
        v0[1] = PokedexGraphics_TakeBlendTransitionStep(&param1->unk_00->blendMain);
    } else {
        v0[1] = PokedexGraphics_BlendTransitionComplete(&param1->unk_00->blendMain);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            PokedexMapDisplay_OAMMode_Normal(mapDisplay);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DD668(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapID heapID)
{
    Window_FillTilemap(&param1->unk_00->window, 0);

    mapDisplay->unk_7F4 = PokedexGraphics_GetGraphicNarcCharacterData(param1->unk_00, dummy1_NCGR_lz, TRUE, &mapDisplay->unk_7F8, heapID);
    mapDisplay->unk_7FC = PokedexGraphics_GetGraphicNarcCharacterData(param1->unk_00, dummy2_NCGR_lz, TRUE, &mapDisplay->unk_800, heapID);

    Window_SetPalette(&param1->unk_00->window, 8);
}

static void ov21_021DD6C0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1)
{
    Window_FillTilemap(&param1->unk_00->window, 0);
    Bg_ClearTilemap(param1->unk_00->bgConfig, 1);
    Heap_Free(mapDisplay->unk_7F4);

    mapDisplay->unk_7F4 = NULL;
    mapDisplay->unk_7F8 = NULL;

    Heap_Free(mapDisplay->unk_7FC);

    mapDisplay->unk_7FC = NULL;
    mapDisplay->unk_800 = NULL;

    Window_SetPalette(&param1->unk_00->window, 0);
}

static void ov21_021DD710(PokedexMapDisplay *mapDisplay, const UnkStruct_ov21_021DCACC *param1, const EncounterCollection *encounterCollection, enum HeapID heapID)
{
    int index, v1;
    int v2, v3;
    int xOffset, yOffset;
    int species;
    u8 *combinedMapArray;
    int numCombinedMaps;

    ov21_021DD8B4(mapDisplay);

    mapDisplay->numVisibleFields = PokedexEncData_LocateVisibleFields(mapDisplay->pokedexFieldMap_1, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, mapDisplay->fieldCoordinatesArray, &encounterCollection->fieldsEncounteredOn, encounterCollection->invisibleFields, encounterCollection->numInvisibleFields);
    numCombinedMaps = (encounterCollection->fieldsEncounteredOn.numLocations - 1) + encounterCollection->numInvisibleFields;
    combinedMapArray = Heap_AllocAtEnd(heapID, numCombinedMaps);

    for (index = 0; index < numCombinedMaps; index++) {
        if (index < encounterCollection->numInvisibleFields) {
            combinedMapArray[index] = encounterCollection->invisibleFields[index];
        } else {
            combinedMapArray[index] = encounterCollection->fieldsEncounteredOn.locations[index - encounterCollection->numInvisibleFields];
        }
    }

    mapDisplay->fieldsZero = PokedexEncData_LocateVisibleFields(mapDisplay->pokedexFieldMap_2, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, mapDisplay->fieldCoordinatesArray, &encounterCollection->fieldSpecialEncounters, combinedMapArray, numCombinedMaps);

    Heap_Free(combinedMapArray);
    PokedexFieldMap_SmoothFields(mapDisplay->pokedexFieldMap_1, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH);
    PokedexFieldMap_SmoothFields(mapDisplay->pokedexFieldMap_2, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH);

    species = PokedexSort_CurrentSpecies(param1->unk_00);

    if (species == SPECIES_FEEBAS) {
        v2 = 4;
        v3 = 5;
        xOffset = 92 + 0;
        yOffset = 32 + -18;
    } else {
        v2 = 0;
        v3 = 1;
        xOffset = 92;
        yOffset = 32;
    }

    mapDisplay->numDungeons = 0;
    mapDisplay->numDungeons = PokedexEncData_LocateVisibleDungeons(mapDisplay->cellActorArray, mapDisplay->numDungeons, (NUMDUNGEONS * 2), xOffset, yOffset, POKEDEXMAPXSCALE, POKEDEXMAPYSCALE, mapDisplay->dungeonCoordinatesArray, &encounterCollection->dungeonsEncounteredOn, 2, v2, encounterCollection->invisibleDungeons, encounterCollection->numInvisibleDungeons, &mapDisplay->numVisibleDungeons);

    numCombinedMaps = (encounterCollection->dungeonsEncounteredOn.numLocations - 1) + encounterCollection->numInvisibleDungeons;
    combinedMapArray = Heap_AllocAtEnd(heapID, numCombinedMaps);

    for (index = 0; index < numCombinedMaps; index++) {
        if (index < encounterCollection->numInvisibleDungeons) {
            combinedMapArray[index] = encounterCollection->invisibleDungeons[index];
        } else {
            combinedMapArray[index] = encounterCollection->dungeonsEncounteredOn.locations[index - encounterCollection->numInvisibleDungeons];
        }
    }

    mapDisplay->numDungeons = PokedexEncData_LocateVisibleDungeons(mapDisplay->cellActorArray, mapDisplay->numDungeons, (NUMDUNGEONS * 2), xOffset, yOffset, POKEDEXMAPXSCALE, POKEDEXMAPYSCALE, mapDisplay->dungeonCoordinatesArray, &encounterCollection->dungeonSpecialEncounters, 3, v3, combinedMapArray, numCombinedMaps, &mapDisplay->dungeonsZero);

    Heap_Free(combinedMapArray);
}

static void ov21_021DD8B4(PokedexMapDisplay *mapDisplay)
{
    int v0;

    memset(mapDisplay->pokedexFieldMap_1, 0, sizeof(u8) * (POKEDEXMAPHEIGHT * POKEDEXMAPWIDTH));
    memset(mapDisplay->pokedexFieldMap_2, 0, sizeof(u8) * (POKEDEXMAPHEIGHT * POKEDEXMAPWIDTH));

    for (v0 = 0; v0 < mapDisplay->numDungeons; v0++) {
        Sprite_SetDrawFlag(mapDisplay->cellActorArray[v0], FALSE);
    }

    mapDisplay->numDungeons = 0;
}

static u8 *PokedexEncounters_InvisibleFields(u32 heapID, const UnkStruct_ov21_021DCACC *param1, u32 *numInvisibleFields)
{
    u32 fieldCount;
    int index;
    u8 *invisibleFields;

    fieldCount = 0;

    if (param1->unk_00->fullmoonIslandVisible == 0) {
        index = 0;

        while (fullmoonIslandFields[index] != TERMINALVALUE) {
            fieldCount++;
            index++;
        }
    }

    if (param1->unk_00->seabreakPathVisible == 0) {
        index = 0;

        while (seabreakPathFields[index] != TERMINALVALUE) {
            fieldCount++;
            index++;
        }
    }

    if (param1->unk_00->newmoonIslandVisible == 0) {
        index = 0;

        while (newmoonIslandFields[index] != TERMINALVALUE) {
            fieldCount++;
            index++;
        }
    }

    if (param1->unk_00->springPathVisible == 0) {
        index = 0;

        while (springPathFields[index] != TERMINALVALUE) {
            fieldCount++;
            index++;
        }
    }

    if (fieldCount > 0) {
        invisibleFields = Heap_Alloc(heapID, sizeof(u8) * fieldCount);
    } else {
        invisibleFields = NULL;
    }

    *numInvisibleFields = fieldCount;

    fieldCount = 0;

    if (param1->unk_00->fullmoonIslandVisible == 0) {
        index = 0;

        while (fullmoonIslandFields[index] != TERMINALVALUE) {
            invisibleFields[fieldCount] = fullmoonIslandFields[index];
            fieldCount++;
            index++;
        }
    }

    if (param1->unk_00->seabreakPathVisible == 0) {
        index = 0;

        while (seabreakPathFields[index] != TERMINALVALUE) {
            invisibleFields[fieldCount] = seabreakPathFields[index];
            fieldCount++;
            index++;
        }
    }

    if (param1->unk_00->newmoonIslandVisible == 0) {
        index = 0;

        while (newmoonIslandFields[index] != TERMINALVALUE) {
            invisibleFields[fieldCount] = newmoonIslandFields[index];
            fieldCount++;
            index++;
        }
    }

    if (param1->unk_00->springPathVisible == 0) {
        index = 0;

        while (springPathFields[index] != TERMINALVALUE) {
            invisibleFields[fieldCount] = springPathFields[index];
            fieldCount++;
            index++;
        }
    }

    return invisibleFields;
}

static u8 *PokedexEncounters_InvisibleDungeons(u32 heapID, const UnkStruct_ov21_021DCACC *param1, u32 *numInvisibleDungeons)
{
    u32 dungeonCount;
    int index;
    u8 *invisibleDungeons;

    dungeonCount = 0;

    if (param1->unk_00->fullmoonIslandVisible == 0) {
        index = 0;

        while (fullmoonIslandDungeons[index] != TERMINALVALUE) {
            dungeonCount++;
            index++;
        }
    }

    if (param1->unk_00->seabreakPathVisible == 0) {
        index = 0;

        while (seabreakPathDungeons[index] != TERMINALVALUE) {
            dungeonCount++;
            index++;
        }
    }

    if (param1->unk_00->newmoonIslandVisible == 0) {
        index = 0;

        while (newmoonIslandDungeons[index] != TERMINALVALUE) {
            dungeonCount++;
            index++;
        }
    }

    if (param1->unk_00->springPathVisible == 0) {
        index = 0;

        while (springPathDungeons[index] != TERMINALVALUE) {
            dungeonCount++;
            index++;
        }
    }

    if (dungeonCount > 0) {
        invisibleDungeons = Heap_Alloc(heapID, sizeof(u8) * dungeonCount);
    } else {
        invisibleDungeons = NULL;
    }

    *numInvisibleDungeons = dungeonCount;

    dungeonCount = 0;

    if (param1->unk_00->fullmoonIslandVisible == 0) {
        index = 0;

        while (fullmoonIslandDungeons[index] != TERMINALVALUE) {
            invisibleDungeons[dungeonCount] = fullmoonIslandDungeons[index];
            dungeonCount++;
            index++;
        }
    }

    if (param1->unk_00->seabreakPathVisible == 0) {
        index = 0;

        while (seabreakPathDungeons[index] != TERMINALVALUE) {
            invisibleDungeons[dungeonCount] = seabreakPathDungeons[index];
            dungeonCount++;
            index++;
        }
    }

    if (param1->unk_00->newmoonIslandVisible == 0) {
        index = 0;

        while (newmoonIslandDungeons[index] != TERMINALVALUE) {
            invisibleDungeons[dungeonCount] = newmoonIslandDungeons[index];
            dungeonCount++;
            index++;
        }
    }

    if (param1->unk_00->springPathVisible == 0) {
        index = 0;

        while (springPathDungeons[index] != TERMINALVALUE) {
            invisibleDungeons[dungeonCount] = springPathDungeons[index];
            dungeonCount++;
            index++;
        }
    }

    return invisibleDungeons;
}

static void ov21_021DD964(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1)
{
    Window_FillTilemap(&param1->unk_00->window, 0);

    PokedexFieldMap_DisplayFields(&param1->unk_00->window, mapDisplay->unk_800->pRawData, mapDisplay->unk_800->W * 8, mapDisplay->unk_800->H * 8, POKEDEXMAPXSCALE, mapDisplay->pokedexFieldMap_2, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, 89, 30);
    PokedexFieldMap_DisplayFields(&param1->unk_00->window, mapDisplay->unk_7F8->pRawData, mapDisplay->unk_7F8->W * 8, mapDisplay->unk_7F8->H * 8, POKEDEXMAPXSCALE, mapDisplay->pokedexFieldMap_1, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, 89, 30);

    Window_CopyToVRAM(&param1->unk_00->window);
}

static void ov21_021DD9E8(PokedexMapDisplay *mapDisplay, const EncounterCollection *encounterCollection)
{
    if ((mapDisplay->numVisibleDungeons <= 0) && (mapDisplay->numVisibleFields <= 0) && (mapDisplay->dungeonsZero <= 0) && (mapDisplay->fieldsZero <= 0)) {
        Sprite_SetDrawFlag(mapDisplay->AreaUnknownCellActor, TRUE);
        sub_020129D0(mapDisplay->AreaUnknownSpriteManager->fontOAM, 1);
    } else {
        Sprite_SetDrawFlag(mapDisplay->AreaUnknownCellActor, FALSE);
        sub_020129D0(mapDisplay->AreaUnknownSpriteManager->fontOAM, 0);
    }
}

static void ov21_021DDA48(PokedexMapDisplay *mapDisplay, int param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (v0 == param1) {
            sub_020129D0(mapDisplay->unk_E0[v0]->fontOAM, 1);
        } else {
            sub_020129D0(mapDisplay->unk_E0[v0]->fontOAM, 0);
        }
    }
}

static void ov21_021DDA80(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, int param4)
{
    if (mapDisplay->encounterTime != encounterCollection->encounterTime) {
        ov21_021DD710(mapDisplay, param2, encounterCollection, param4);
        ov21_021DD964(mapDisplay, param1);
        ov21_021DDA48(mapDisplay, param2->encounterTime);
        ov21_021DD9E8(mapDisplay, encounterCollection);
        mapDisplay->encounterTime = encounterCollection->encounterTime;
    }
}

static void PokedexSort_PopulateDexStatus(EncounterCollection *encounterCollection, UnkStruct_ov21_021DCACC *param1, enum HeapID heapID)
{
    int dungeonCategory;
    int fieldCategory;
    int species = PokedexSort_CurrentSpecies(param1->unk_00);

    switch (param1->encounterTime) {
    case ENCTIME_MORNING:
        dungeonCategory = PEFC_DUNGEONMORNING;
        fieldCategory = PEFC_FIELDMORNING;
        break;
    case ENCTIME_DAY:
        dungeonCategory = PEFC_DUNGEONDAY;
        fieldCategory = PEFC_FIELDDAY;
        break;
    case ENCTIME_NIGHT:
        dungeonCategory = PEFC_DUNGEONNIGHT;
        fieldCategory = PEFC_FIELDNIGHT;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    PokedexEncData_PopulateEncounterLocations(&encounterCollection->dungeonsEncounteredOn, species, dungeonCategory, heapID);
    PokedexEncData_PopulateEncounterLocations(&encounterCollection->fieldsEncounteredOn, species, fieldCategory, heapID);

    if (PokedexSort_IsNationalUnlocked(param1->unk_00) == 0) {
        PokedexEncData_PopulateEncounterLocations(&encounterCollection->dungeonSpecialEncounters, species, PEFC_DUNGEONSPECIAL, heapID);
        PokedexEncData_PopulateEncounterLocations(&encounterCollection->fieldSpecialEncounters, species, PEFC_FIELDSPECIAL, heapID);
    } else {
        PokedexEncData_PopulateEncounterLocations(&encounterCollection->dungeonSpecialEncounters, species, PEFC_DUNGEONSPECIALNATDEX, heapID);
        PokedexEncData_PopulateEncounterLocations(&encounterCollection->fieldSpecialEncounters, species, PEFC_FIELDSPECIALNATDEX, heapID);
    }
}

static void ov21_021DDB68(EncounterCollection *encounterCollection)
{
    PokedexEncData_FreeEncounterLocations(&encounterCollection->dungeonsEncounteredOn);
    PokedexEncData_FreeEncounterLocations(&encounterCollection->fieldsEncounteredOn);
    PokedexEncData_FreeEncounterLocations(&encounterCollection->dungeonSpecialEncounters);
    PokedexEncData_FreeEncounterLocations(&encounterCollection->fieldSpecialEncounters);
}

static void ov21_021DDB8C(PokedexMapDisplay *mapDisplay)
{
    int dungeonIndex;

    mapDisplay->unk_80C = 0;
    mapDisplay->unk_810 = 0;

    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 0);

    for (dungeonIndex = 0; dungeonIndex < mapDisplay->numDungeons; dungeonIndex++) {
        Sprite_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], FALSE);
    }
}

static void ov21_021DDBCC(PokedexMapDisplay *mapDisplay)
{
    int dungeonIndex;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG3, 0, 16);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);

    for (dungeonIndex = 0; dungeonIndex < mapDisplay->numDungeons; dungeonIndex++) {
        Sprite_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], FALSE);
    }
}

static void ov21_021DDC14(PokedexMapDisplay *mapDisplay)
{
    fx32 v0;
    int v1;
    int dungeonIndex;

    if (mapDisplay->unk_80C >= 32) {
        mapDisplay->unk_80C = 0;

        if (mapDisplay->unk_810 == 0) {
            for (dungeonIndex = 0; dungeonIndex < mapDisplay->numDungeons; dungeonIndex++) {
                Sprite_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], TRUE);
            }

            mapDisplay->unk_810 = 1;
        } else {
            GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);
            mapDisplay->unk_810 = 0;
        }
    }

    if (mapDisplay->unk_80C < 16) {
        v1 = mapDisplay->unk_80C;
    } else {
        v1 = 32 - mapDisplay->unk_80C;
    }

    v0 = FX_Mul((16 << FX32_SHIFT), (v1 << FX32_SHIFT));
    v0 = FX_Div(v0, (16 << FX32_SHIFT));

    G2_ChangeBlendAlpha(v0 >> FX32_SHIFT, 16);

    mapDisplay->unk_80C++;

    if (mapDisplay->unk_80C >= 32) {
        if (mapDisplay->unk_810 == 0) {
            GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 0);
        } else {
            for (dungeonIndex = 0; dungeonIndex < mapDisplay->numDungeons; dungeonIndex++) {
                Sprite_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], FALSE);
            }
        }
    }
}

static void ov21_021DDCF4(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(param0->unk_00);
    int species = PokedexSort_CurrentSpecies(param1->unk_00);

    PokedexMain_DisplayPokemonSprite(param0->unk_00, param1->unk_00, species, 2, 40, 120);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 0);
}
