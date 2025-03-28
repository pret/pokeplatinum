#include "unk_0207070C.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map_load.h"
#include "generated/journal_location_events.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_02070950.h"
#include "struct_defs/struct_020709CC.h"
#include "struct_defs/struct_020711C8.h"

#include "field/field_system.h"
#include "functypes/funcptr_0203B7C0.h"
#include "functypes/funcptr_02084808.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F101C.h"
#include "overlay006/ov6_02247100.h"

#include "field_overworld_state.h"
#include "field_task.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "map_header.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "save_player.h"
#include "script_manager.h"
#include "start_menu.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_0203C954.h"
#include "unk_0203D1B8.h"
#include "unk_0205F180.h"
#include "unk_0206B70C.h"
#include "unk_020711C8.h"
#include "vars_flags.h"

typedef struct {
    UnkFuncPtr_0203B7C0 unk_00;
    UnkFuncPtr_02084808 unk_04;
} UnkStruct_020F0368;

typedef struct {
    u32 unk_00;
    MapObject *unk_04;
    UnkStruct_020709CC unk_08;
} UnkStruct_0207086C;

static void sub_02070838(FieldSystem *fieldSystem, UnkStruct_02070950 *param1);
static int sub_02070950(const UnkStruct_02070950 *param0);
static void sub_020709CC(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static int sub_02070EEC(const UnkStruct_02070950 *param0);
static void sub_02070F54(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070F94(FieldTask *taskMan);
static int sub_02070A24(const UnkStruct_02070950 *param0);
static void sub_02070A80(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070AB4(FieldTask *taskMan);
static int sub_02070CF8(const UnkStruct_02070950 *param0);
static void sub_02070D30(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070D64(FieldTask *taskMan);
static int sub_02070DA0(const UnkStruct_02070950 *param0);
static void sub_02070DEC(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070E20(FieldTask *taskMan);
static int sub_02070E5C(const UnkStruct_02070950 *param0);
static void sub_02070E7C(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070EB0(FieldTask *taskMan);
static int sub_02070B98(const UnkStruct_02070950 *param0);
static void sub_02070BD0(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070C04(FieldTask *taskMan);
static int sub_02070C40(const UnkStruct_02070950 *param0);
static void sub_02070C88(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070CBC(FieldTask *taskMan);
static int sub_02070AF0(const UnkStruct_02070950 *param0);
static void sub_02070B28(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070B5C(FieldTask *taskMan);
static int sub_02070FCC(const UnkStruct_02070950 *param0);
static void sub_02071010(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02071050(FieldTask *taskMan);
static int sub_020710A4(const UnkStruct_02070950 *param0);
static void sub_020710D4(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static int sub_02071130(const UnkStruct_02070950 *param0);
static void sub_02071150(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_0207118C(FieldTask *taskMan);
static int sub_020708AC(const UnkStruct_02070950 *param0);
static void sub_020708E0(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1);
static BOOL sub_02070914(FieldTask *taskMan);

static const UnkStruct_020F0368 Unk_020F0368[] = {
    { sub_020708E0, sub_020708AC },
    { sub_020709CC, sub_02070950 },
    { sub_02070A80, sub_02070A24 },
    { sub_02070B28, sub_02070AF0 },
    { sub_02070BD0, sub_02070B98 },
    { sub_02070C88, sub_02070C40 },
    { sub_02070D30, sub_02070CF8 },
    { sub_02070DEC, sub_02070DA0 },
    { sub_02070E7C, sub_02070E5C },
    { sub_02070F54, sub_02070EEC },
    { sub_02071010, sub_02070FCC },
    { sub_020710D4, sub_020710A4 },
    { sub_02071150, sub_02071130 }
};

static inline BOOL inline_020708AC(const UnkStruct_02070950 *param0, int param1)
{
    if ((param0->unk_0C & (1 << param1)) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static inline BOOL inline_02070950(const UnkStruct_02070950 *param0, int param1)
{
    return TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->fieldSystem->saveData), param1);
}

static inline BOOL inline_02070A24(const UnkStruct_02070950 *param0)
{
    return SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
}

static inline BOOL inline_02070EEC(const UnkStruct_02070950 *param0)
{
    if ((SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(param0->fieldSystem->saveData)) == 1) || (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(param0->fieldSystem->saveData)) == 1)) {
        return 1;
    }

    return 0;
}

static inline BOOL inline_020710A4(const UnkStruct_02070950 *param0)
{
    if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(param0->fieldSystem->saveData)) == 1) {
        return 1;
    }

    return 0;
}

static inline BOOL inline_02070AF0(const UnkStruct_02070950 *param0)
{
    if ((param0->fieldSystem->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) || (param0->fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION)) {
        return 0;
    }

    return 1;
}

u32 sub_0207070C(u16 param0, u16 param1)
{
    if (param0 == 0) {
        return (u32)Unk_020F0368[param1].unk_00;
    }

    return (u32)Unk_020F0368[param1].unk_04;
}

void sub_02070728(FieldSystem *fieldSystem, UnkStruct_02070950 *param1)
{
    MapObject *mapObj;
    int v1, v2;
    int v3;
    int v4;

    param1->fieldSystem = fieldSystem;
    param1->unk_00 = fieldSystem->location->mapId;
    param1->unk_0C = 0;

    if (PlayerAvatar_DistortionGravityChanged(fieldSystem->playerAvatar) == TRUE) {
        sub_02070838(fieldSystem, param1);
        return;
    }

    sub_0203C9D4(fieldSystem, &mapObj);
    param1->unk_08 = mapObj;

    if (mapObj != NULL) {
        switch (MapObject_GetGraphicsID(mapObj)) {
        case 0x54:
            param1->unk_0C |= (1 << 3);
            break;
        case 0x55:
            param1->unk_0C |= (1 << 5);
            break;
        case 0x56:
            param1->unk_0C |= (1 << 0);
            break;
        }
    }

    v1 = Player_GetXPos(fieldSystem->playerAvatar);
    v2 = Player_GetZPos(fieldSystem->playerAvatar);
    v4 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

    PlayerAvatar_GetFacingTileCoords(fieldSystem->playerAvatar, &v1, &v2);
    v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

    if (ov5_021E0118(fieldSystem->playerAvatar, v4, v3)) {
        param1->unk_0C |= (1 << 2);
    }

    if (ov5_021E0760(v3, PlayerAvatar_GetDir(fieldSystem->playerAvatar))) {
        param1->unk_0C |= (1 << 7);
    }

    if (TileBehavior_IsWaterfall(v3)) {
        param1->unk_0C |= (1 << 6);
    }

    switch (FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData))) {
    case 14:
        param1->unk_0C |= (1 << 4);
        break;
    case 16:
        param1->unk_0C |= (1 << 8);
        break;
    }
}

static void sub_02070838(FieldSystem *fieldSystem, UnkStruct_02070950 *param1)
{
    int v0;
    u32 v1, v2;

    v0 = sub_0205EAA0(fieldSystem->playerAvatar);
    v2 = sub_020616F0(fieldSystem->playerAvatar, v0);
    v1 = sub_02061760(fieldSystem->playerAvatar);

    if (ov5_021E0118(fieldSystem->playerAvatar, v1, v2) == 1) {
        param1->unk_0C |= (1 << 2);
    }
}

static UnkStruct_0207086C *sub_0207086C(const UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    UnkStruct_0207086C *v0 = Heap_AllocFromHeap(HEAP_ID_FIELD_TASK, sizeof(UnkStruct_0207086C));

    v0->unk_00 = 0x19740205;
    v0->unk_04 = param1->unk_08;
    v0->unk_08 = *param0;

    return v0;
}

static void sub_02070890(UnkStruct_0207086C *param0)
{
    GF_ASSERT(param0->unk_00 == 0x19740205);
    Heap_FreeToHeap(param0);
}

static int sub_020708AC(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 1) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 0)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_020708E0(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070914;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070914(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10008, v0->unk_04);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070950(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 2) == 0) {
        return 2;
    }

    if (MapHeader_IsFlyAllowed(param0->unk_00) == 0) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    if (inline_02070EEC(param0) == 1) {
        return 1;
    }

    return 0;
}

static void sub_020709CC(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;

    fieldSystem = FieldTask_GetFieldSystem(param0->unk_00);
    menu = FieldTask_GetEnv(param0->unk_00);

    u32 *v2 = (u32 *)Heap_AllocFromHeap(HEAP_ID_FIELDMAP, 4);
    *v2 = param0->unk_04;
    menu->unk_260 = (void *)v2;

    menu->unk_25C = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(fieldSystem, menu->unk_25C, 1);
    sub_0203D884(fieldSystem, menu->unk_25C);
    sub_0203B674(menu, sub_0203C434);
}

static int sub_02070A24(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 3) == 0) {
        return 2;
    }

    if (PlayerAvatar_GetPlayerState(param0->fieldSystem->playerAvatar) == 0x2) {
        return 4;
    }

    if (!(inline_020708AC(param0, 2))) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    return 0;
}

static void sub_02070A80(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070AB4;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070AB4(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10012, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070AF0(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 5) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 3)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070B28(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070B5C;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070B5C(FieldTask *param0)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    ScriptManager_Change(param0, 10010, v0->unk_04);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070B98(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 4) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 4)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070BD0(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070C04;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070C04(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10014, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070C40(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 0) == 0) {
        return 2;
    }

    if (PlayerAvatar_GetPlayerState(param0->fieldSystem->playerAvatar) == 0x2) {
        return 1;
    }

    if (inline_020708AC(param0, 5)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070C88(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070CBC;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070CBC(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10009, v0->unk_04);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070CF8(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 7) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 6)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070D30(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070D64;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070D64(FieldTask *param0)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    ScriptManager_Change(param0, 10013, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070DA0(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 6) == 0) {
        return 2;
    }

    if (!(inline_020708AC(param0, 7))) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    return 0;
}

static void sub_02070DEC(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070E20;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070E20(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10011, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070E5C(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_020708AC(param0, 8)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070E7C(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    StartMenu *menu;
    UnkStruct_0207086C *v1;

    menu = FieldTask_GetEnv(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(param1->fieldSystem);

    menu->unk_22C = sub_02070EB0;
    menu->unk_25C = v1;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070EB0(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10015, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070EEC(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (MapHeader_IsTeleportAllowed(param0->unk_00) == 0) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    if (inline_02070EEC(param0) == 1) {
        return 1;
    }

    return 0;
}

static void sub_02070F54(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;

    fieldSystem = FieldTask_GetFieldSystem(param0->unk_00);
    menu = FieldTask_GetEnv(param0->unk_00);

    FieldSystem_StartFieldMap(fieldSystem);

    UnkStruct_020711C8 *v2 = sub_020711C8(11, param0->unk_04, fieldSystem->saveData);

    menu->unk_22C = sub_02070F94;
    menu->unk_25C = v2;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_02070F94(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(param0);
    void *v2 = ov6_02247530(fieldSystem, v1->unk_00, 4);

    Heap_FreeToHeap(v1);
    FieldTask_InitJump(param0, ov6_02247554, v2);

    return 0;
}

static int sub_02070FCC(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (!((MapHeader_IsCave(param0->unk_00) == 1) && (MapHeader_IsEscapeRopeAllowed(param0->unk_00) == 1))) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    return 0;
}

static void sub_02071010(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *v1;

    fieldSystem = FieldTask_GetFieldSystem(param0->unk_00);
    v1 = FieldTask_GetEnv(param0->unk_00);

    FieldSystem_StartFieldMap(fieldSystem);

    {
        UnkStruct_020711C8 *v2;

        v2 = sub_020711C8(11, param0->unk_04, fieldSystem->saveData);

        v1->unk_22C = sub_02071050;
        v1->unk_25C = v2;
        v1->state = START_MENU_STATE_10;
    }
}

static BOOL sub_02071050(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(param0);
    void *v2 = ov6_02247488(fieldSystem, v1->unk_00, 11);

    void *journalEntryLocationEvent = JournalEntry_CreateEventUsedMove((LOCATION_EVENT_USED_DIG - LOCATION_EVENT_USED_CUT), fieldSystem->location->mapId, HEAP_ID_FIELD);
    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);

    Heap_FreeToHeap(v1);
    FieldTask_InitJump(param0, ov6_022474AC, v2);

    return FALSE;
}

static int sub_020710A4(const UnkStruct_02070950 *param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_020710A4(param0) == 1) {
        return 1;
    }

    return 0;
}

static void sub_020710D4(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *v1;
    UnkStruct_020711C8 *v2;
    int v3;
    void *v4;

    fieldSystem = FieldTask_GetFieldSystem(param0->unk_00);
    v1 = FieldTask_GetEnv(param0->unk_00);

    v2 = sub_020711C8(11, param0->unk_04, fieldSystem->saveData);
    FieldSystem_StartFieldMap(fieldSystem);

    v1->unk_22C = ov5_021F101C;
    v1->unk_25C = v2;
    v1->state = START_MENU_STATE_10;

    v4 = JournalEntry_CreateEventUsedMove((30 - 19), fieldSystem->location->mapId, 11);
    JournalEntry_SaveData(fieldSystem->journalEntry, v4, JOURNAL_LOCATION);
}

static int sub_02071130(const UnkStruct_02070950 *param0)
{
    if ((inline_02070AF0(param0) == 0) || (PersistedMapFeatures_IsCurrentDynamicMap(param0->fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1)) {
        return 1;
    }

    return 0;
}

static void sub_02071150(UnkStruct_020709CC *param0, const UnkStruct_02070950 *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    UnkStruct_0207086C *v2;

    fieldSystem = FieldTask_GetFieldSystem(param0->unk_00);
    menu = FieldTask_GetEnv(param0->unk_00);
    v2 = sub_0207086C(param0, param1);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->unk_22C = sub_0207118C;
    menu->unk_25C = v2;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_0207118C(FieldTask *taskMan)
{
    UnkStruct_0207086C *v0 = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 8900, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}
