#include "unk_0203C954.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"

#include "map_header_data.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "terrain_collision_manager.h"

static u8 sub_0203CB18(FieldSystem *fieldSystem, const BgEvent *param1);
static u8 sub_0203CAEC(FieldSystem *fieldSystem, const BgEvent *param1);

static int sub_0203C954(FieldSystem *fieldSystem, int *param1, int *param2) {
    int v0 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    *param1 = Player_GetXPos(fieldSystem->playerAvatar);
    *param2 = Player_GetZPos(fieldSystem->playerAvatar);

    switch (v0) {
    case 0:
        *param2 -= 1;
        break;
    case 1:
        *param2 += 1;
        break;
    case 2:
        *param1 -= 1;
        break;
    case 3:
        *param1 += 1;
        break;
    }

    return v0;
}

static u8 sub_0203C9B0(PlayerAvatar *playerAvatar, MapObject *param1) {
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (sub_020630DC(v0) == sub_020630DC(param1)) {
        return 1;
    }

    return 0;
}

void sub_0203C9D4(FieldSystem *fieldSystem, MapObject **param1) {
    int v0, v1;
    int v2;
    u8 v3;

    v2 = sub_0203C954(fieldSystem, &v0, &v1);
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

u8 sub_0203CA40(FieldSystem *fieldSystem, MapObject **param1) {
    sub_0203C9D4(fieldSystem, param1);

    if (*param1 != NULL) {
        if ((sub_02062D9C(*param1) == 1) && (sub_0203C9B0(fieldSystem->playerAvatar, *param1) == 1)) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0203CA6C(FieldSystem *fieldSystem, const BgEvent *param1, int param2) {
    const BgEvent *v0 = param1;
    int v1, v2;
    int v3;

    sub_0203C954(fieldSystem, &v1, &v2);

    for (v3 = 0; v3 < param2; v3++) {
        if ((v1 == v0[v3].x) && (v2 == v0[v3].z)) {
            if (v0[v3].type == 2) {
                if (sub_0203CAEC(fieldSystem, &v0[v3]) == 1) {
                    return v0[v3].script;
                }
            } else {
                if (sub_0203CB18(fieldSystem, &v0[v3]) == 1) {
                    return v0[v3].script;
                }
            }
        }
    }

    return 0xffff;
}

static u8 sub_0203CAEC(FieldSystem *fieldSystem, const BgEvent *param1) {
    if (param1->type != 2) {
        return 0;
    }

    if (FieldSystem_CheckFlag(fieldSystem, Script_GetHiddenItemFlag(param1->script)) == 1) {
        return 0;
    }

    return 1;
}

static u8 sub_0203CB18(FieldSystem *fieldSystem, const BgEvent *param1) {
    if (param1->playerFacingDir == 4) {
        return 1;
    }

    switch (PlayerAvatar_GetDir(fieldSystem->playerAvatar)) {
    case 0:
        if ((param1->playerFacingDir == 0) || (param1->playerFacingDir == 6)) {
            return 1;
        }
        break;
    case 1:
        if ((param1->playerFacingDir == 3) || (param1->playerFacingDir == 6)) {
            return 1;
        }
        break;
    case 2:
        if ((param1->playerFacingDir == 2) || (param1->playerFacingDir == 5)) {
            return 1;
        }
        break;
    case 3:
        if ((param1->playerFacingDir == 1) || (param1->playerFacingDir == 5)) {
            return 1;
        }
        break;
    }

    return 0;
}

u16 sub_0203CB80(FieldSystem *fieldSystem, const BgEvent *param1, int param2) {
    int v1, v2;
    int v3;

    if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) != 0) {
        return 0xffff;
    }

    const BgEvent *v0 = param1;
    sub_0203C954(fieldSystem, &v1, &v2);

    for (v3 = 0; v3 < param2; v3++) {
        if ((v1 == v0[v3].x) && (v2 == v0[v3].z) && (v0[v3].type == 1)) {
            return v0[v3].script;
        }
    }

    return 0xffff;
}

u8 sub_0203CBE0(FieldSystem *fieldSystem, MapObject **param1) {
    if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) != 0) {
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

u16 sub_0203CC14(FieldSystem *fieldSystem, void *param1, int param2) {
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
