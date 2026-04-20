#ifndef POKEPLATINUM_STRUCT_OV5_021ED0A4_H
#define POKEPLATINUM_STRUCT_OV5_021ED0A4_H

#include "struct_decls/map_object_manager.h"

#include "overlay005/resource_heap.h"
#include "overlay005/struct_ov5_021EDF3C.h"

#include "billboard.h"
#include "resource_collection.h"

typedef struct UnkStruct_ov5_021ED0A4_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20[8];
    int unk_40[8];
    int unk_60[32];
    BillboardList *unk_E0;
    BillboardResources *unk_E4;
    ResourceCollection *unk_E8;
    ResourceCollection *unk_EC;
    TextureResourceManager *unk_F0;
    UnkStruct_ov5_021ED110 *unk_F4;
    ResourceHeap *unk_F8;
    ResourceHeap *unk_FC;
    UnkStruct_ov5_021EDF3C *unk_100;
    const MapObjectManager *unk_104;
} UnkStruct_ov5_021ED0A4;

#endif // POKEPLATINUM_STRUCT_OV5_021ED0A4_H
