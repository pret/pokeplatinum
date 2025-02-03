#include "overlay021/ov21_021DC9BC.h"

#include <nitro.h>
#include <string.h>

#include "generated/text_banks.h"

#include "struct_decls/sprite_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_enc_data.h"
#include "overlay021/pokedex_field_map.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "rtc.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_02012744.h"

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
    UnkStruct_ov21_021D3320 *unk_00;
    enum EncounterTime encounterTime;
    UnkStruct_ov21_021E68F4 *unk_08;
} UnkStruct_ov21_021DCACC;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
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

typedef struct {
    int encounterTime;
    CellActor *cellActorArray[NUMDUNGEONS * 2];
    SpriteResource *unk_B4[4];
    int numDungeons;
    CellActor *AreaUnknownCellActor;
    UnkStruct_ov21_021D4CA0 *AreaUnknownSpriteManager;
    SpriteResource *unk_D0[4];
    UnkStruct_ov21_021D4CA0 *unk_E0[3];
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
    UnkStruct_ov21_021D2648 unk_814;
    u32 numVisibleDungeons;
    u32 numVisibleFields;
    u32 dungeonsZero; // as far as I can tell these will always be zero
    u32 fieldsZero;
} PokedexMapDisplay;

static UnkStruct_ov21_021DCACC *ov21_021DCA5C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021DCAE0 *ov21_021DCAA0(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021DCACC(UnkStruct_ov21_021DCACC *param0);
static void ov21_021DCAE0(UnkStruct_ov21_021DCAE0 *param0);
static int ov21_021DCAF4(void);
static int PokedexEncounters_PopulateEncounterCollection(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DCB6C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DCBA8(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DCBD8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021DCCD8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021DCD04(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021DDCF4(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1);
static void PokedexMapDisplay_OAMMode_XLU(PokedexMapDisplay *mapDisplay);
static void PokedexMapDisplay_OAMMode_Normal(PokedexMapDisplay *mapDisplay);
static void ov21_021DD490(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static BOOL ov21_021DD508(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static void ov21_021DD554(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static BOOL ov21_021DD5E4(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3);
static void ov21_021DCDD0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, enum HeapId heapID);
static void ov21_021DCE20(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DCE40(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1, enum HeapId heapID);
static void ov21_021DD668(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapId heapID);
static void ov21_021DD6C0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DCFC8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapId heapID);
static void ov21_021DD114(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DD1A8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapId heapID);
static void PokedexMapDisplay_DeleteCellActors(PokedexMapDisplay *mapDisplay);
static void ov21_021DD2E0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, enum HeapId heapID);
static void ov21_021DD3FC(PokedexMapDisplay *mapDisplay);
static void ov21_021DD9E8(PokedexMapDisplay *mapDisplay, const EncounterCollection *encounterCollection);
static void ov21_021DDA48(PokedexMapDisplay *mapDisplay, int param1);
static void ov21_021DDA80(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, int param4);
static void ov21_021DD710(PokedexMapDisplay *mapDisplay, const UnkStruct_ov21_021DCACC *param1, const EncounterCollection *encounterCollection, enum HeapId heapID);
static void ov21_021DD8B4(PokedexMapDisplay *mapDisplay);
static u8 *PokedexEncounters_InvisibleFields(u32 heapID, const UnkStruct_ov21_021DCACC *param1, u32 *param2);
static u8 *PokedexEncounters_InvisibleDungeons(u32 param0, const UnkStruct_ov21_021DCACC *param1, u32 *param2);
static void ov21_021DD964(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1);
static void ov21_021DDB8C(PokedexMapDisplay *mapDisplay);
static void ov21_021DDBCC(PokedexMapDisplay *mapDisplay);
static void ov21_021DDC14(PokedexMapDisplay *mapDisplay);
static void PokedexSort_PopulateDexStatus(EncounterCollection *encounterCollection, UnkStruct_ov21_021DCACC *param1, enum HeapId heapID);
static void ov21_021DDB68(EncounterCollection *encounterCollection);

void ov21_021DC9BC(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021DCACC *v0;
    UnkStruct_ov21_021DCAE0 *v1;

    v0 = ov21_021DCA5C(heapID, param1);
    v1 = ov21_021DCAA0(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021DCAF4();
    param0->unk_08[0] = PokedexEncounters_PopulateEncounterCollection;
    param0->unk_08[1] = ov21_021DCB6C;
    param0->unk_08[2] = ov21_021DCBA8;
    param0->unk_14[0] = ov21_021DCBD8;
    param0->unk_14[1] = ov21_021DCCD8;
    param0->unk_14[2] = ov21_021DCD04;
}

void ov21_021DCA14(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021DCACC(param0->unk_00);
    ov21_021DCAE0(param0->unk_04);
}

int ov21_021DCA28(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021DCACC *v0 = param0->unk_00;
    return v0->encounterTime;
}

void ov21_021DCA30(UnkStruct_ov21_021E68F4 *param0, int encounterTime)
{
    UnkStruct_ov21_021DCACC *v0 = param0->unk_00;

    GF_ASSERT(encounterTime < 3);
    v0->encounterTime = encounterTime;
}

void ov21_021DCA44(UnkStruct_ov21_021E68F4 *param0, int param1, int param2)
{
    UnkStruct_ov21_021DCAE0 *v0 = param0->unk_04;

    v0->unk_04 = param1;
    v0->unk_08 = param2;
}

void ov21_021DCA4C(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021DCAE0 *v0 = param0->unk_04;
    v0->unk_0C = param1;
}

void ov21_021DCA54(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021DCAE0 *v0 = param0->unk_04;
    v0->unk_10 = param1;
}

static UnkStruct_ov21_021DCACC *ov21_021DCA5C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021DCACC *v0;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DCACC));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DCACC));

    v0->unk_00 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);

    return v0;
}

static UnkStruct_ov21_021DCAE0 *ov21_021DCAA0(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021DCAE0 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DCAE0));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DCAE0));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021DCACC(UnkStruct_ov21_021DCACC *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DCAE0(UnkStruct_ov21_021DCAE0 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021DCAF4(void)
{
    return 0;
}

static int PokedexEncounters_PopulateEncounterCollection(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DCACC *v0 = param1;
    EncounterCollection *encounterCollection;

    encounterCollection = Heap_AllocFromHeap(param0->heapID, sizeof(EncounterCollection));

    GF_ASSERT(encounterCollection);
    memset(encounterCollection, 0, sizeof(EncounterCollection));

    param0->unk_08 = encounterCollection;

    if (v0->unk_00->timeOfDay == TIMEOFDAY_MORNING) {
        v0->encounterTime = ENCTIME_MORNING;
    } else {
        if ((v0->unk_00->timeOfDay == TIMEOFDAY_DAY) || (v0->unk_00->timeOfDay == TIMEOFDAY_TWILIGHT)) {
            v0->encounterTime = ENCTIME_DAY;
        } else {
            v0->encounterTime = ENCTIME_NIGHT;
        }
    }

    encounterCollection->invisibleFields = PokedexEncounters_InvisibleFields(param0->heapID, v0, &encounterCollection->numInvisibleFields);
    encounterCollection->invisibleDungeons = PokedexEncounters_InvisibleDungeons(param0->heapID, v0, &encounterCollection->numInvisibleDungeons);

    PokedexSort_PopulateDexStatus(encounterCollection, v0, param0->heapID);

    encounterCollection->encounterTime = v0->encounterTime;

    return 1;
}

static int ov21_021DCB6C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DCACC *v0 = param1;
    EncounterCollection *encounterCollection = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (encounterCollection->encounterTime != v0->encounterTime) {
        ov21_021DDB68(encounterCollection);
        PokedexSort_PopulateDexStatus(encounterCollection, v0, param0->heapID);
        encounterCollection->encounterTime = v0->encounterTime;
    }

    return 0;
}

static int ov21_021DCBA8(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    EncounterCollection *encounterCollection = param0->unk_08;

    if (encounterCollection->invisibleFields) {
        Heap_FreeToHeap(encounterCollection->invisibleFields);
    }

    if (encounterCollection->invisibleDungeons) {
        Heap_FreeToHeap(encounterCollection->invisibleDungeons);
    }

    ov21_021DDB68(encounterCollection);
    Heap_FreeToHeap(encounterCollection);

    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021DCBD8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DCACC *v0 = param2;
    const EncounterCollection *encounterCollection = param3->unk_08;
    UnkStruct_ov21_021DCAE0 *v2 = param0;
    PokedexMapDisplay *mapDisplay = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(PokedexMapDisplay));
        memset(param1->unk_08, 0, sizeof(PokedexMapDisplay));

        mapDisplay = param1->unk_08;
        mapDisplay->encounterTime = v0->encounterTime;
        mapDisplay->dungeonCoordinatesArray = PokedexEncData_GetDungeonCoordinates(param1->heapID, NULL);
        mapDisplay->fieldCoordinatesArray = PokedexEncData_GetFieldCoordinates(param1->heapID, NULL);

        param1->unk_00++;
        break;
    case 1:
        ov21_021DCDD0(mapDisplay, v2, v0, encounterCollection, param1->heapID);
        ov21_021DD710(param1->unk_08, v0, encounterCollection, param1->heapID);
        ov21_021DD9E8(param1->unk_08, encounterCollection);
        ov21_021DDB8C(mapDisplay);
        ov21_021DD964(mapDisplay, v2);

        if (v2->unk_0C == 0) {
            ov21_021DD490(mapDisplay, v2, v0, 1);
        } else {
            ov21_021DD554(mapDisplay, v2, v0, 1);
        }

        param1->unk_00++;
        break;
    case 2:
        if (v2->unk_0C == 0) {
            v4 = ov21_021DD508(mapDisplay, v2, v0, 1);
        } else {
            v4 = ov21_021DD5E4(mapDisplay, v2, v0, 1);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021DDBCC(mapDisplay);
        return 1;
    }

    return 0;
}

static int ov21_021DCCD8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DCACC *v0 = param2;
    const EncounterCollection *encounterCollection = param3->unk_08;
    UnkStruct_ov21_021DCAE0 *v2 = param0;
    PokedexMapDisplay *mapDisplay = param1->unk_08;

    ov21_021DDC14(mapDisplay);
    ov21_021DDA80(mapDisplay, v2, v0, encounterCollection, param1->heapID);

    return 0;
}

static int ov21_021DCD04(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DCACC *v0 = param2;
    const EncounterCollection *encounterCollection = param3->unk_08;
    UnkStruct_ov21_021DCAE0 *v2 = param0;
    PokedexMapDisplay *mapDisplay = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        ov21_021DDB8C(mapDisplay);

        if (v2->unk_0C == 0) {
            ov21_021DD490(mapDisplay, v2, v0, 0);
        } else {
            ov21_021DD554(mapDisplay, v2, v0, 0);
        }

        param1->unk_00++;
        break;
    case 1:
        if (v2->unk_0C == 0) {
            v4 = ov21_021DD508(mapDisplay, v2, v0, 0);
        } else {
            v4 = ov21_021DD5E4(mapDisplay, v2, v0, 0);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021DD8B4(mapDisplay);
        ov21_021DCE20(mapDisplay, v2);
        param1->unk_00++;
        break;
    case 3:
        GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);
        Heap_FreeToHeap(mapDisplay->dungeonCoordinatesArray);
        Heap_FreeToHeap(mapDisplay->fieldCoordinatesArray);
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021DCDD0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, const EncounterCollection *encounterCollection, enum HeapId heapID)
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

static void ov21_021DCE40(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1, enum HeapId heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, heapID);

    v0 = ov21_021D27B8(param0->unk_00, 64, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    if (param1->unk_00->newmoonIslandVisible) {
        v0 = ov21_021D27B8(param0->unk_00, 65, 1, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 13, 8, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    if (param1->unk_00->seabreakPathVisible) {
        v0 = ov21_021D27B8(param0->unk_00, 66, 1, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 28, 7, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    if (param1->unk_00->fullmoonIslandVisible) {
        v0 = ov21_021D27B8(param0->unk_00, 67, 1, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 11, 8, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    if (param1->unk_00->springPathVisible) {
        v0 = ov21_021D27B8(param0->unk_00, 68, 1, &v1, heapID);

        Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 25, 16, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 3);
}

static void ov21_021DCFC8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    mapDisplay->unk_B4[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 108, 1, 108 + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    sub_0200A3DC(mapDisplay->unk_B4[0]);
    SpriteResource_ReleaseData(mapDisplay->unk_B4[0]);

    mapDisplay->unk_B4[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 106, 1, 106 + 6000, 2, heapID);
    mapDisplay->unk_B4[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 107, 1, 107 + 6000, 3, heapID);
    mapDisplay->unk_D0[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 93, 1, 93 + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    sub_0200A3DC(mapDisplay->unk_D0[0]);
    SpriteResource_ReleaseData(mapDisplay->unk_D0[0]);

    mapDisplay->unk_D0[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 14, 0, 14 + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    sub_0200A640(mapDisplay->unk_D0[1]);
    SpriteResource_ReleaseData(mapDisplay->unk_D0[1]);

    mapDisplay->unk_D0[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 91, 1, 91 + 6000, 2, heapID);
    mapDisplay->unk_D0[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 92, 1, 92 + 6000, 3, heapID);
}

static void ov21_021DD114(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(mapDisplay->unk_B4[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], mapDisplay->unk_B4[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], mapDisplay->unk_B4[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], mapDisplay->unk_B4[3]);
    sub_0200A4E4(mapDisplay->unk_D0[0]);
    sub_0200A6DC(mapDisplay->unk_D0[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], mapDisplay->unk_D0[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], mapDisplay->unk_D0[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], mapDisplay->unk_D0[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], mapDisplay->unk_D0[3]);
}

static void ov21_021DD1A8(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapId heapID)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3;

    sub_020093B4(&v0, 93 + 6000, 14 + 6000, 91 + 6000, 92 + 6000, 0xffffffff, 0xffffffff, 0, 1, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 160 * FX32_ONE;
    v1.position.y = 96 * FX32_ONE;

    mapDisplay->AreaUnknownCellActor = CellActorCollection_Add(&v1);

    CellActor_SetAnim(mapDisplay->AreaUnknownCellActor, 2);
    sub_020093B4(&v0, 108 + 6000, 14 + 6000, 106 + 6000, 107 + 6000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 0;
    v1.position.y = 0;

    for (v3 = 0; v3 < (NUMDUNGEONS * 2); v3++) {
        mapDisplay->cellActorArray[v3] = CellActorCollection_Add(&v1);
        CellActor_SetDrawFlag(mapDisplay->cellActorArray[v3], 0);
        CellActor_SetExplicitOAMMode(mapDisplay->cellActorArray[v3], GX_OAM_MODE_XLU);
    }
}

static void PokedexMapDisplay_DeleteCellActors(PokedexMapDisplay *mapDisplay)
{
    int cellActorIndex;

    CellActor_Delete(mapDisplay->AreaUnknownCellActor);
    mapDisplay->AreaUnknownCellActor = NULL;

    for (cellActorIndex = 0; cellActorIndex < (NUMDUNGEONS * 2); cellActorIndex++) {
        CellActor_Delete(mapDisplay->cellActorArray[cellActorIndex]);
        mapDisplay->cellActorArray[cellActorIndex] = NULL;
    }
}

static void ov21_021DD2E0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, enum HeapId heapID)
{
    Window *v0;
    UnkStruct_ov21_021D4CB8 v1;
    SpriteResource *v2;
    UnkStruct_ov21_021D13FC *v3 = param1->unk_00;
    int v4;
    int v5;
    u32 v6;

    GF_ASSERT(mapDisplay->AreaUnknownCellActor);

    v2 = SpriteResourceCollection_Find(param1->unk_00->unk_13C[1], 14 + 6000);

    v1.unk_00 = v3->unk_14C;
    v1.unk_08 = sub_0200A72C(v2, NULL);
    v1.unk_18 = 1;
    v1.unk_1C = 31 - 1;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;

    v4 = PlttTransfer_GetPlttOffset(v1.unk_08, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0 = ov21_021D4D6C(v3->unk_14C, 16, 2);
    v6 = Pokedex_DisplayMessage(v3->unk_14C, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_areaunknown, 0, 0);

    v1.unk_04 = v0;
    v1.unk_0C = mapDisplay->AreaUnknownCellActor;
    v1.unk_10 = -(v6 / 2);
    v1.unk_14 = -8;

    mapDisplay->AreaUnknownSpriteManager = ov21_021D4CA0(&v1);

    sub_02012A60(mapDisplay->AreaUnknownSpriteManager->unk_00, v4 + 2);
    ov21_021D4DA0(v0);

    for (v5 = 0; v5 < 3; v5++) {
        v0 = ov21_021D4D6C(v3->unk_14C, 9, 2);
        v6 = Pokedex_DisplayMessage(v3->unk_14C, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_morning + v5, 0, 0);

        v1.unk_04 = v0;
        v1.unk_0C = NULL;
        v1.unk_10 = 8 + ((9 * 8) - v6) / 2;
        v1.unk_14 = 32;

        mapDisplay->unk_E0[v5] = ov21_021D4CA0(&v1);

        sub_02012A60(mapDisplay->unk_E0[v5]->unk_00, v4 + 2);
        ov21_021D4DA0(v0);
    }
}

static void ov21_021DD3FC(PokedexMapDisplay *mapDisplay)
{
    int v0;

    ov21_021D4D1C(mapDisplay->AreaUnknownSpriteManager);

    for (v0 = 0; v0 < 3; v0++) {
        ov21_021D4D1C(mapDisplay->unk_E0[v0]);
    }
}

static void PokedexMapDisplay_OAMMode_XLU(PokedexMapDisplay *mapDisplay)
{
    int v0;

    CellActor_SetExplicitOAMMode(mapDisplay->AreaUnknownCellActor, GX_OAM_MODE_XLU);
    sub_02012AF0(mapDisplay->AreaUnknownSpriteManager->unk_00, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02012AF0(mapDisplay->unk_E0[v0]->unk_00, GX_OAM_MODE_XLU);
    }
}

static void PokedexMapDisplay_OAMMode_Normal(PokedexMapDisplay *mapDisplay)
{
    int v0;

    CellActor_SetExplicitOAMMode(mapDisplay->AreaUnknownCellActor, GX_OAM_MODE_NORMAL);
    sub_02012AF0(mapDisplay->AreaUnknownSpriteManager->unk_00, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02012AF0(mapDisplay->unk_E0[v0]->unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021DD490(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    PokedexMapDisplay_OAMMode_XLU(mapDisplay);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }

    ov21_021D24FC(param1->unk_00, &param1->unk_00->unk_168);
}

static BOOL ov21_021DD508(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0) {
        if (param3) {
            PokedexMapDisplay_OAMMode_Normal(mapDisplay);
        }

        return 1;
    } else {
        ov21_021D24FC(param1->unk_00, &param1->unk_00->unk_168);
    }

    return 0;
}

static void ov21_021DD554(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    PokedexMapDisplay_OAMMode_XLU(mapDisplay);

    if (param3 == 0) {
        ov21_021D2648(&mapDisplay->unk_814, 40, param1->unk_04, 120, param1->unk_08, param1->unk_10);
    }

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, param1->unk_10, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, param1->unk_10, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DD5E4(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, const UnkStruct_ov21_021DCACC *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021D2664(&mapDisplay->unk_814);
        ov21_021D2164(param1->unk_00, mapDisplay->unk_814.unk_00, mapDisplay->unk_814.unk_04);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_08)) {
        v0[1] = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0[1] = ov21_021D24EC(&param1->unk_00->unk_168);
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

static void ov21_021DD668(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1, enum HeapId heapID)
{
    Window_FillTilemap(&param1->unk_00->unk_04, 0);

    mapDisplay->unk_7F4 = ov21_021D2808(param1->unk_00, 30, 1, &mapDisplay->unk_7F8, heapID);
    mapDisplay->unk_7FC = ov21_021D2808(param1->unk_00, 31, 1, &mapDisplay->unk_800, heapID);

    Window_SetPalette(&param1->unk_00->unk_04, 8);
}

static void ov21_021DD6C0(PokedexMapDisplay *mapDisplay, UnkStruct_ov21_021DCAE0 *param1)
{
    Window_FillTilemap(&param1->unk_00->unk_04, 0);
    Bg_ClearTilemap(param1->unk_00->unk_00, 1);
    Heap_FreeToHeap(mapDisplay->unk_7F4);

    mapDisplay->unk_7F4 = NULL;
    mapDisplay->unk_7F8 = NULL;

    Heap_FreeToHeap(mapDisplay->unk_7FC);

    mapDisplay->unk_7FC = NULL;
    mapDisplay->unk_800 = NULL;

    Window_SetPalette(&param1->unk_00->unk_04, 0);
}

static void ov21_021DD710(PokedexMapDisplay *mapDisplay, const UnkStruct_ov21_021DCACC *param1, const EncounterCollection *encounterCollection, enum HeapId heapID)
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
    combinedMapArray = Heap_AllocFromHeapAtEnd(heapID, numCombinedMaps);

    for (index = 0; index < numCombinedMaps; index++) {
        if (index < encounterCollection->numInvisibleFields) {
            combinedMapArray[index] = encounterCollection->invisibleFields[index];
        } else {
            combinedMapArray[index] = encounterCollection->fieldsEncounteredOn.locations[index - encounterCollection->numInvisibleFields];
        }
    }

    mapDisplay->fieldsZero = PokedexEncData_LocateVisibleFields(mapDisplay->pokedexFieldMap_2, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, mapDisplay->fieldCoordinatesArray, &encounterCollection->fieldSpecialEncounters, combinedMapArray, numCombinedMaps);

    Heap_FreeToHeap(combinedMapArray);
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
    combinedMapArray = Heap_AllocFromHeapAtEnd(heapID, numCombinedMaps);

    for (index = 0; index < numCombinedMaps; index++) {
        if (index < encounterCollection->numInvisibleDungeons) {
            combinedMapArray[index] = encounterCollection->invisibleDungeons[index];
        } else {
            combinedMapArray[index] = encounterCollection->dungeonsEncounteredOn.locations[index - encounterCollection->numInvisibleDungeons];
        }
    }

    mapDisplay->numDungeons = PokedexEncData_LocateVisibleDungeons(mapDisplay->cellActorArray, mapDisplay->numDungeons, (NUMDUNGEONS * 2), xOffset, yOffset, POKEDEXMAPXSCALE, POKEDEXMAPYSCALE, mapDisplay->dungeonCoordinatesArray, &encounterCollection->dungeonSpecialEncounters, 3, v3, combinedMapArray, numCombinedMaps, &mapDisplay->dungeonsZero);

    Heap_FreeToHeap(combinedMapArray);
}

static void ov21_021DD8B4(PokedexMapDisplay *mapDisplay)
{
    int v0;

    memset(mapDisplay->pokedexFieldMap_1, 0, sizeof(u8) * (POKEDEXMAPHEIGHT * POKEDEXMAPWIDTH));
    memset(mapDisplay->pokedexFieldMap_2, 0, sizeof(u8) * (POKEDEXMAPHEIGHT * POKEDEXMAPWIDTH));

    for (v0 = 0; v0 < mapDisplay->numDungeons; v0++) {
        CellActor_SetDrawFlag(mapDisplay->cellActorArray[v0], 0);
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
        invisibleFields = Heap_AllocFromHeap(heapID, sizeof(u8) * fieldCount);
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

static u8 *PokedexEncounters_InvisibleDungeons(u32 param0, const UnkStruct_ov21_021DCACC *param1, u32 *numInvisibleDungeons)
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
        invisibleDungeons = Heap_AllocFromHeap(param0, sizeof(u8) * dungeonCount);
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
    Window_FillTilemap(&param1->unk_00->unk_04, 0);

    PokedexFieldMap_DisplayFields(&param1->unk_00->unk_04, mapDisplay->unk_800->pRawData, mapDisplay->unk_800->W * 8, mapDisplay->unk_800->H * 8, POKEDEXMAPXSCALE, mapDisplay->pokedexFieldMap_2, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, 89, 30);
    PokedexFieldMap_DisplayFields(&param1->unk_00->unk_04, mapDisplay->unk_7F8->pRawData, mapDisplay->unk_7F8->W * 8, mapDisplay->unk_7F8->H * 8, POKEDEXMAPXSCALE, mapDisplay->pokedexFieldMap_1, POKEDEXMAPHEIGHT, POKEDEXMAPWIDTH, 89, 30);

    Window_CopyToVRAM(&param1->unk_00->unk_04);
}

static void ov21_021DD9E8(PokedexMapDisplay *mapDisplay, const EncounterCollection *encounterCollection)
{
    if ((mapDisplay->numVisibleDungeons <= 0) && (mapDisplay->numVisibleFields <= 0) && (mapDisplay->dungeonsZero <= 0) && (mapDisplay->fieldsZero <= 0)) {
        CellActor_SetDrawFlag(mapDisplay->AreaUnknownCellActor, 1);
        sub_020129D0(mapDisplay->AreaUnknownSpriteManager->unk_00, 1);
    } else {
        CellActor_SetDrawFlag(mapDisplay->AreaUnknownCellActor, 0);
        sub_020129D0(mapDisplay->AreaUnknownSpriteManager->unk_00, 0);
    }
}

static void ov21_021DDA48(PokedexMapDisplay *mapDisplay, int param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (v0 == param1) {
            sub_020129D0(mapDisplay->unk_E0[v0]->unk_00, 1);
        } else {
            sub_020129D0(mapDisplay->unk_E0[v0]->unk_00, 0);
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

static void PokedexSort_PopulateDexStatus(EncounterCollection *encounterCollection, UnkStruct_ov21_021DCACC *param1, enum HeapId heapID)
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
        CellActor_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], 0);
    }
}

static void ov21_021DDBCC(PokedexMapDisplay *mapDisplay)
{
    int dungeonIndex;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG3, 0, 16);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);

    for (dungeonIndex = 0; dungeonIndex < mapDisplay->numDungeons; dungeonIndex++) {
        CellActor_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], 0);
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
                CellActor_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], 1);
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
                CellActor_SetDrawFlag(mapDisplay->cellActorArray[dungeonIndex], 0);
            }
        }
    }
}

static void ov21_021DDCF4(UnkStruct_ov21_021DCAE0 *param0, const UnkStruct_ov21_021DCACC *param1)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);
    int species = PokedexSort_CurrentSpecies(param1->unk_00);

    ov21_021D1890(param0->unk_00, param1->unk_00, species, 2, 40, 120);
    sub_02007DEC(v0, 6, 0);
}
