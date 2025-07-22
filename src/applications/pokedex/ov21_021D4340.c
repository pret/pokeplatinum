#include "applications/pokedex/ov21_021D4340.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "applications/pokedex/ov21_021D423C.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_updater.h"
#include "applications/pokedex/struct_ov21_021D423C_decl.h"
#include "applications/pokedex/struct_ov21_021D4340.h"
#include "applications/pokedex/struct_ov21_021D4340_1.h"
#include "applications/pokedex/struct_ov21_021D43A8.h"
#include "applications/pokedex/struct_ov21_021D4434.h"
#include "applications/pokedex/struct_ov21_021D4558.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

static void ov21_021D4628(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D423C *param1, PokedexUpdater *param2);

BOOL ov21_021D4340(UnkStruct_ov21_021D4340_1 *param0) {
    UnkStruct_ov21_021D4340 *v0 = param0->unk_08;

    switch (param0->unk_00) {
    case 0:
        PokedexUpdater_DataExit(v0->unk_04);
        param0->unk_00++;
        break;
    case 1:
        if (PokedexUpdater_IsPageExited(v0->unk_04) == 1) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov21_021D4628(v0->unk_00, v0->unk_08, v0->unk_04);
        param0->unk_00++;
        break;
    case 3:
        if (PokedexUpdater_IsPageDataActive(v0->unk_04) == 1) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

BOOL ov21_021D43A8(UnkStruct_ov21_021D4340_1 *param0) {
    UnkStruct_ov21_021D43A8 *v0 = param0->unk_08;
    BOOL v1[4];
    int v2;

    switch (param0->unk_00) {
    case 0:
        PokedexUpdater_DataExit(v0->unk_00);
        PokedexUpdater_DataExit(v0->unk_04);
        PokedexUpdater_DataExit(v0->unk_08);
        PokedexUpdater_DataExit(v0->unk_0C);
        param0->unk_00++;
        break;
    case 1:
        v1[0] = PokedexUpdater_IsPageExited(v0->unk_00);
        v1[1] = PokedexUpdater_IsPageExited(v0->unk_04);
        v1[2] = PokedexUpdater_IsPageExited(v0->unk_08);
        v1[3] = PokedexUpdater_IsPageExited(v0->unk_0C);

        for (v2 = 0; v2 < 4; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 4) {
            param0->unk_00++;
        }
        break;
    case 2:
        *v0->unk_10 = 1;
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

BOOL ov21_021D4434(UnkStruct_ov21_021D4340_1 *param0) {
    UnkStruct_ov21_021D4434 *v0 = param0->unk_08;
    BOOL v1[4];
    int v2;

    switch (param0->unk_00) {
    case 0:
        PokedexUpdater_DataExit(v0->unk_00);
        PokedexUpdater_DataExit(v0->unk_04);
        PokedexUpdater_DataExit(v0->unk_08);
        PokedexUpdater_DataExit(v0->unk_0C);
        param0->unk_00++;
        break;
    case 1:
        v1[0] = PokedexUpdater_IsPageExited(v0->unk_00);
        v1[1] = PokedexUpdater_IsPageExited(v0->unk_04);
        v1[2] = PokedexUpdater_IsPageExited(v0->unk_08);
        v1[3] = PokedexUpdater_IsPageExited(v0->unk_0C);

        for (v2 = 0; v2 < 4; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 4) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov21_021D4628(v0->unk_20, v0->unk_10, v0->unk_00);
        ov21_021D4628(v0->unk_24, v0->unk_14, v0->unk_04);
        ov21_021D4628(v0->unk_28, v0->unk_18, v0->unk_08);
        ov21_021D4628(v0->unk_2C, v0->unk_1C, v0->unk_0C);
        param0->unk_00++;
        break;
    case 3:
        if (v0->unk_20) {
            v1[0] = PokedexUpdater_IsPageDataActive(v0->unk_00);
        } else {
            v1[0] = 1;
        }

        if (v0->unk_24) {
            v1[1] = PokedexUpdater_IsPageDataActive(v0->unk_04);
        }

        if (v0->unk_28) {
            v1[2] = PokedexUpdater_IsPageDataActive(v0->unk_08);
        } else {
            v1[2] = 1;
        }

        if (v0->unk_2C) {
            v1[3] = PokedexUpdater_IsPageDataActive(v0->unk_0C);
        } else {
            v1[3] = 1;
        }

        for (v2 = 0; v2 < 4; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 4) {
            return 1;
        }

        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

BOOL ov21_021D4558(UnkStruct_ov21_021D4340_1 *param0) {
    UnkStruct_ov21_021D4558 *v0 = param0->unk_08;
    BOOL v1[2];
    int v2;

    switch (param0->unk_00) {
    case 0:
        PokedexUpdater_DataExit(v0->unk_00);
        PokedexUpdater_DataExit(v0->unk_04);
        param0->unk_00++;
        break;
    case 1:
        v1[0] = PokedexUpdater_IsPageExited(v0->unk_00);
        v1[1] = PokedexUpdater_IsPageExited(v0->unk_04);

        for (v2 = 0; v2 < 2; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 2) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov21_021D4628(v0->unk_10, v0->unk_08, v0->unk_00);
        ov21_021D4628(v0->unk_14, v0->unk_0C, v0->unk_04);
        param0->unk_00++;
        break;
    case 3:
        if (v0->unk_10) {
            v1[0] = PokedexUpdater_IsPageDataActive(v0->unk_00);
        } else {
            v1[0] = 1;
        }

        if (v0->unk_14) {
            v1[1] = PokedexUpdater_IsPageDataActive(v0->unk_04);
        } else {
            v1[1] = 1;
        }

        for (v2 = 0; v2 < 2; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 2) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov21_021D4628(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D423C *param1, PokedexUpdater *pokedexUpdater) {
    PokedexUpdaterTemplate pokedexUpdaterTemplate;

    if (param0) {
        pokedexUpdaterTemplate.pageData = param0->pageData;
        pokedexUpdaterTemplate.pageGraphics = param0->pageGraphics;
        pokedexUpdaterTemplate.dataFunc = param0->dataFunc;
        pokedexUpdaterTemplate.graphicsFunc = param0->graphicsFunc;

        PokedexUpdater_PopulateUpdater(pokedexUpdater, &pokedexUpdaterTemplate);
        ov21_021D426C(param1, param0->unk_20, param0->unk_24);
    }
}

void ov21_021D4660(UnkStruct_ov21_021D4660 *param0) {
    GF_ASSERT(param0->unk_08.unk_08);

    Heap_Free(param0->unk_08.unk_08);
    param0->unk_08.unk_08 = NULL;
}

void ov21_021D467C(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4434 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4434;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4434));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4434));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D133C(param2);
    v0->unk_14 = ov21_021D1350(param2);
    v0->unk_18 = ov21_021D1364(param2);
    v0->unk_1C = ov21_021D1378(param2);
    v0->unk_20 = ov21_021D1410(param2, 1);
    v0->unk_24 = ov21_021D1430(param2, 1);
    v0->unk_28 = NULL;
    v0->unk_2C = NULL;

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4704(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D43A8 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D43A8;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D43A8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D43A8));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D13DC(param2);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D475C(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4434 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4434;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4434));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4434));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D133C(param2);
    v0->unk_14 = ov21_021D1350(param2);
    v0->unk_18 = ov21_021D1364(param2);
    v0->unk_1C = ov21_021D1378(param2);
    v0->unk_20 = ov21_021D1410(param2, 2);
    v0->unk_24 = ov21_021D1430(param2, 2);
    v0->unk_28 = ov21_021D1410(param2, 5);
    v0->unk_2C = ov21_021D1430(param2, 3);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D47F0(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4434 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4434;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4434));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4434));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D133C(param2);
    v0->unk_14 = ov21_021D1350(param2);
    v0->unk_18 = ov21_021D1364(param2);
    v0->unk_1C = ov21_021D1378(param2);
    v0->unk_20 = ov21_021D1410(param2, 0);
    v0->unk_24 = ov21_021D1430(param2, 0);
    v0->unk_28 = NULL;
    v0->unk_2C = NULL;

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4878(UnkStruct_ov21_021D4660 *param0, PokedexApp *param1, enum HeapId heapID, int param3) {
    UnkStruct_ov21_021D4340 *v0;

    param0->unk_00 = param3;
    param0->unk_04 = ov21_021D4340;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4340));
    GF_ASSERT(v0);

    v0->unk_00 = ov21_021D1410(param1, 0);
    v0->unk_04 = ov21_021D12EC(param1);
    v0->unk_08 = ov21_021D133C(param1);

    param0->unk_08.unk_08 = v0;
}

void ov21_021D48B8(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4558 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 6);
    v0->unk_14 = ov21_021D1430(param2, 4);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D491C(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4558 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 7);
    v0->unk_14 = ov21_021D1430(param2, 5);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4980(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4558 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 8);
    v0->unk_14 = ov21_021D1430(param2, 6);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D49E4(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4340 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 8);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4A3C(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4340 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 9);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4A94(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4558 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 2);
    v0->unk_14 = ov21_021D1430(param2, 2);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4AF8(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4340 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 2);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4B50(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4558 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 3);
    v0->unk_14 = ov21_021D1430(param2, 7);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4BB4(enum HeapId heapID, UnkStruct_ov21_021D4660 *param1, PokedexApp *param2, int param3) {
    UnkStruct_ov21_021D4340 *v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 4);

    param1->unk_08.unk_08 = v0;
}
