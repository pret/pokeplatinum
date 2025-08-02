#include "unk_0203C954.h"

#include <nitro.h>
#include <string.h>

#include "generated/bg_event_dirs.h"
#include "generated/bg_event_types.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"

#include "map_header_data.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "terrain_collision_manager.h"

static u8 BgEvent_CheckPlayerFacingDirection(FieldSystem *fieldSystem, const BgEvent *param1);
static u8 BgEvent_IsHiddenItemAvailable(FieldSystem *fieldSystem, const BgEvent *param1);

static int BgEvent_GetPlayerFacingPosition(FieldSystem *fieldSystem, int *x, int *z)
{
    int facingDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    *x = Player_GetXPos(fieldSystem->playerAvatar);
    *z = Player_GetZPos(fieldSystem->playerAvatar);

    switch (facingDir) {
    case DIR_NORTH:
        *z -= 1;
        break;
    case DIR_SOUTH:
        *z += 1;
        break;
    case DIR_WEST:
        *x -= 1;
        break;
    case DIR_EAST:
        *x += 1;
        break;
    }

    return facingDir;
}

static u8 sub_0203C9B0(PlayerAvatar *playerAvatar, MapObject *param1)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (sub_020630DC(v0) == sub_020630DC(param1)) {
        return 1;
    }

    return 0;
}

void sub_0203C9D4(FieldSystem *fieldSystem, MapObject **param1)
{
    int v0, v1;
    int v2;
    u8 v3;

    v2 = BgEvent_GetPlayerFacingPosition(fieldSystem, &v0, &v1);
    v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v0, v1);

    if (TileBehavior_IsTable(v3) == 1) {
        switch (v2) {
        case 0:
            v1 -= 1;
            break;
        case 1:
            v1 += 1;
            break;
        case 2:
            v0 -= 1;
            break;
        case 3:
            v0 += 1;
            break;
        }
    }

    *param1 = sub_0206326C(fieldSystem->mapObjMan, v0, v1, 0);
}

u8 sub_0203CA40(FieldSystem *fieldSystem, MapObject **param1)
{
    sub_0203C9D4(fieldSystem, param1);

    if (*param1 != NULL) {
        if ((sub_02062D9C(*param1) == 1) && (sub_0203C9B0(fieldSystem->playerAvatar, *param1) == 1)) {
            return 1;
        }
    }

    return 0;
}

u16 FieldEvent_GetInteractedBgEventScript(FieldSystem *fieldSystem, const BgEvent *bgEvents, int numBgEvents)
{
    const BgEvent *events = bgEvents;
    int facingX, facingZ;
    int eventIndex;

    BgEvent_GetPlayerFacingPosition(fieldSystem, &facingX, &facingZ);

    for (eventIndex = 0; eventIndex < numBgEvents; eventIndex++) {
        if ((facingX == events[eventIndex].x) && (facingZ == events[eventIndex].z)) {
            if (events[eventIndex].type == BG_EVENT_TYPE_HIDDEN_ITEM) {
                if (BgEvent_IsHiddenItemAvailable(fieldSystem, &events[eventIndex]) == TRUE) {
                    return events[eventIndex].script;
                }
            } else {
                if (BgEvent_CheckPlayerFacingDirection(fieldSystem, &events[eventIndex]) == TRUE) {
                    return events[eventIndex].script;
                }
            }
        }
    }

    return 0xffff;
}

static u8 BgEvent_IsHiddenItemAvailable(FieldSystem *fieldSystem, const BgEvent *bgEvent)
{
    if (bgEvent->type != BG_EVENT_TYPE_HIDDEN_ITEM) {
        return FALSE;
    }

    if (FieldSystem_CheckFlag(fieldSystem, Script_GetHiddenItemFlag(bgEvent->script)) == TRUE) {
        return FALSE;
    }

    return TRUE;
}

static u8 BgEvent_CheckPlayerFacingDirection(FieldSystem *fieldSystem, const BgEvent *bgEvent)
{
    if (bgEvent->playerFacingDir == BG_EVENT_DIR_ALL) {
        return TRUE;
    }

    switch (PlayerAvatar_GetDir(fieldSystem->playerAvatar)) {
    case DIR_NORTH:
        if ((bgEvent->playerFacingDir == BG_EVENT_DIR_NORTH) || (bgEvent->playerFacingDir == BG_EVENT_DIR_NORTH_SOUTH)) {
            return TRUE;
        }
        break;
    case DIR_SOUTH:
        if ((bgEvent->playerFacingDir == BG_EVENT_DIR_SOUTH) || (bgEvent->playerFacingDir == BG_EVENT_DIR_NORTH_SOUTH)) {
            return TRUE;
        }
        break;
    case DIR_WEST:
        if ((bgEvent->playerFacingDir == BG_EVENT_DIR_WEST) || (bgEvent->playerFacingDir == BG_EVENT_DIR_WEST_EAST)) {
            return TRUE;
        }
        break;
    case DIR_EAST:
        if ((bgEvent->playerFacingDir == BG_EVENT_DIR_EAST) || (bgEvent->playerFacingDir == BG_EVENT_DIR_WEST_EAST)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

u16 FieldEvent_GetInteractedWallSignScript(FieldSystem *fieldSystem, const BgEvent *bgEvents, int numBgEvents)
{
    int facingX, facingZ;
    int eventIndex;

    if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) != DIR_NORTH) {
        return 0xffff;
    }

    const BgEvent *events = bgEvents;
    BgEvent_GetPlayerFacingPosition(fieldSystem, &facingX, &facingZ);

    for (eventIndex = 0; eventIndex < numBgEvents; eventIndex++) {
        if ((facingX == events[eventIndex].x) && (facingZ == events[eventIndex].z) && (events[eventIndex].type == BG_EVENT_TYPE_WALL_SIGN)) {
            return events[eventIndex].script;
        }
    }

    return 0xffff;
}

u8 sub_0203CBE0(FieldSystem *fieldSystem, MapObject **param1)
{
    if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) != DIR_NORTH) {
        return 0;
    }

    if (sub_0203CA40(fieldSystem, param1) == 1) {
        u32 v0 = MapObject_GetGraphicsID(*param1);

        if ((v0 == 0x5b) || (v0 == 0x5c) || (v0 == 0x5d) || (v0 == 0x5e) || (v0 == 0x5f) || (v0 == 0x60)) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0203CC14(FieldSystem *fieldSystem, void *param1, int param2)
{
    int v3;

    const CoordEvent *v0 = param1;
    int v1 = Player_GetXPos(fieldSystem->playerAvatar);
    int v2 = Player_GetZPos(fieldSystem->playerAvatar);

    for (v3 = 0; v3 < param2; v3++) {
        if ((v1 >= v0[v3].x) && (v1 < (v0[v3].x + v0[v3].width)) && (v2 >= v0[v3].z) && (v2 < (v0[v3].z + v0[v3].length)) && (FieldSystem_TryGetVar(fieldSystem, v0[v3].var) == v0[v3].value)) {
            return v0[v3].script;
        }
    }

    return 0xffff;
}
