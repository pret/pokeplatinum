#ifndef POKEPLATINUM_FIELD_SYSTEM_STRUCT_H
#define POKEPLATINUM_FIELD_SYSTEM_STRUCT_H

#include "struct_decls/struct_02054C18_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_decls/struct_0205C22C_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02095E80_decl.h"
#include "struct_decls/struct_0209ACBC_decl.h"
#include "struct_decls/terrain_collision_manager_decl.h"
#include "struct_defs/map_load_mode.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_0204AFC4.h"

#include "field/field_system_sub2_decl.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/struct_ov5_021D1A68_decl.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"
#include "overlay005/struct_ov5_021D41B4_decl.h"
#include "overlay005/struct_ov5_021D538C_decl.h"
#include "overlay005/struct_ov5_021D57D8_decl.h"
#include "overlay005/struct_ov5_021D5894.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay005/struct_ov5_021E1B20_decl.h"
#include "overlay005/struct_ov5_021E8F60_decl.h"
#include "overlay005/struct_ov5_021EB0E0_decl.h"
#include "overlay005/struct_ov5_021EF300_decl.h"
#include "overlay023/struct_ov23_0224942C_decl.h"
#include "overlay056/struct_ov56_02256468_decl.h"
#include "overlay066/struct_ov66_0222DCE0_sub1.h"

#include "bag.h"
#include "bg_window.h"
#include "camera.h"
#include "field_task.h"
#include "journal.h"
#include "location.h"
#include "map_header_data.h"
#include "map_matrix.h"
#include "overlay_manager.h"
#include "pokeradar.h"
#include "savedata.h"

#define NUM_HONEY_TREES 21

typedef struct HoneyTreeShake {
    u8 shakeValue;
    BOOL isShaking;
} HoneyTreeShake;

typedef struct HoneyTreeShakeList {
    HoneyTreeShake trees[NUM_HONEY_TREES];
    int unused[NUM_HONEY_TREES];
} HoneyTreeShakeList;

typedef struct FieldWildBattleMetadata {
    u16 encounterAttempts;
    u16 wildMonDefeated;
} FieldWildBattleMetadata;

typedef struct FieldProcessManager {
    OverlayManager *parent;
    OverlayManager *child;
    BOOL pause;
    BOOL kill;
} FieldProcessManager;

typedef struct FieldSystem_t {
    FieldProcessManager *processManager;
    FieldSystem_sub2 *unk_04;
    BgConfig *bgConfig;
    SaveData *saveData;
    FieldTask *task;
    MapHeaderData *mapHeaderData;
    int bottomScreen;
    Location *location;
    int unk_20;
    Camera *camera;
    UnkStruct_ov5_021E8F60 *unk_28;
    MapMatrix *mapMatrix;
    AreaDataManager *areaDataManager;
    UnkStruct_ov5_021D1A68 *unk_34;
    MapObjectManager *mapObjMan;
    PlayerAvatar *playerAvatar;
    UnkStruct_ov5_021DF47C *unk_40;
    UnkStruct_ov5_021D5894 *unk_44;
    UnkStruct_ov5_021D57D8 *unk_48;
    UnkStruct_ov5_021D538C *unk_4C;
    UnkStruct_ov5_021D3CAC *unk_50;
    UnkStruct_ov5_021D41B4 *unk_54;
    UnkStruct_02054C18 *unk_58;
    const TerrainCollisionManager *terrainCollisionMan;
    int unk_60;
    UnkStruct_ov5_021E1B20 *unk_64;
    BOOL runningFieldMap;
    UnkStruct_ov23_0224942C *unk_6C;
    int mapLoadType;
    const MapLoadMode *mapLoadMode;
    FieldWildBattleMetadata wildBattleMetadata;
    UnkStruct_0205B43C *unk_7C;
    UnkStruct_0205C22C *unk_80;
    UnkStruct_ov56_02256468 *unk_84;
    UnkStruct_02095E80 *unk_88;
    UnkStruct_ov5_021EB0E0 *unk_8C;
    int unk_90;
    RadarChain *chain;
    BagCursor *unk_98;
    JournalEntry *journalEntry;
    UnkStruct_ov5_021EF300 *unk_A0;
    MapPropManager *mapPropManager;
    HoneyTreeShakeList *unk_A8;
    UnkStruct_0204AFC4 *unk_AC;
    const BattleRegulation *unk_B0;
    UnkStruct_0209ACBC *unk_B4;
    BOOL unk_B8;
    u8 *battleSubscreenCursorOn;
    u32 unk_C0;
    UnkStruct_ov66_0222DCE0_sub1 unk_C4;
} FieldSystem;

#endif // POKEPLATINUM_FIELD_SYSTEM_H
