#include "overlay005/ov5_021DFB54.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F25C0.h"
#include "overlay005/ov5_021F2850.h"
#include "overlay005/ov5_021F8560.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02248050.h"
#include "overlay009/ov9_02249960.h"
#include "overlay009/struct_ov9_0224F6EC_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "core_sys.h"
#include "encounter.h"
#include "field_battle_data_transfer.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_020553DC.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "unk_02071B10.h"

typedef struct {
    u32 unk_00;
    int unk_04;
    Pokemon *unk_08;
    SysTask *unk_0C;
} UnkStruct_ov5_021E1050;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_10;
    UnkStruct_ov9_0224F6EC *unk_14;
} UnkStruct_ov5_021DFF88;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov5_021E1050 unk_0C;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_24;
    UnkStruct_ov101_021D5D90 *unk_28;
} UnkStruct_ov5_021E00B0;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_10;
    UnkStruct_ov101_021D5D90 *unk_14;
} UnkStruct_ov5_021E0390;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_14;
    UnkStruct_ov101_021D5D90 *unk_18;
    UnkStruct_ov5_021E1050 unk_1C;
    UnkStruct_ov5_021D1BEC *unk_2C;
} UnkStruct_ov5_021F9B54;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    fx32 unk_18;
    VecFx32 unk_1C;
    VecFx32 unk_28;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_3C;
    UnkStruct_ov5_021E1050 unk_40;
    UnkStruct_ov5_021D1BEC *unk_50;
} UnkStruct_ov5_021F9B10;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
} UnkStruct_ov5_021E0534;

typedef struct {
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_08;
    int unk_0C;
    int unk_10;
    SysTask *unk_14;
} UnkStruct_ov5_021E0DE0;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
} UnkStruct_ov5_021E0FF0;

static int ov5_021DFE68(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static int ov5_021DFEF4(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static int ov5_021DFF1C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static void ov5_021DFF88(int param0, FieldSystem *param1, PlayerAvatar *playerAvatar, MapObject *param3);
static BOOL ov5_021DFFBC(FieldTask *param0);
static void ov5_021E00B0(FieldSystem *fieldSystem, int param1, const UnkStruct_ov5_021E1050 *param2);
static BOOL ov5_021E0160(FieldTask *param0);
static int ov5_021E032C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static void ov5_021E0390(int param0, FieldSystem *param1, PlayerAvatar *playerAvatar);
static BOOL ov5_021E03C8(FieldTask *param0);
static int ov5_021E04A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static int ov5_021E04EC(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static void ov5_021E0534(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar);
static BOOL ov5_021E0560(FieldTask *param0);
static int ov5_021E067C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2);
static int ov5_021E06A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar);
static void ov5_021E06F8(FieldSystem *fieldSystem, int param1, const UnkStruct_ov5_021E1050 *param2);
static BOOL ov5_021E07A0(FieldTask *param0);
static UnkStruct_ov5_021F9B10 *ov5_021E0948(FieldSystem *fieldSystem, int param1, const UnkStruct_ov5_021E1050 *param2);
static BOOL ov5_021E09D4(FieldTask *param0);
static SysTask *ov5_021E0F54(FieldSystem *fieldSystem, u32 param1);
static void ov5_021E0FC0(SysTask *param0);
static void ov5_021E0FF0(SysTask *param0, void *param1);
static void ov5_021E1028(FieldSystem *fieldSystem, Pokemon *param1, UnkStruct_ov5_021E1050 *param2);
static void ov5_021E103C(FieldSystem *fieldSystem, UnkStruct_ov5_021E1050 *param1);
static int ov5_021E1050(UnkStruct_ov5_021E1050 *param0);
static void PlayerAvatar_Redraw(PlayerAvatar *playerAvatar, int param1);
static void ov5_021E10C0(void *param0, const UnkStruct_020216E0 *param1);
static MapObject *ov5_021E10D4(PlayerAvatar *playerAvatar, int param1);
static void *ov5_021E1110(int param0);
static void ov5_021E1134(void *param0);
static Pokemon *ov5_021E1140(FieldSystem *fieldSystem, int param1);
static void ov5_021E0DE0(FieldSystem *fieldSystem);
static BOOL ov5_021E0E10(FieldTask *param0);

static void (*const sPlayerAvatarRequestStateTbl[10])(PlayerAvatar *);
int (*const Unk_ov5_021F9B54[])(UnkStruct_ov5_021F9B54 *);
int (*const Unk_ov5_021F9B10[])(UnkStruct_ov5_021F9B10 *);
int (*const Unk_ov5_021F9AFC[])(UnkStruct_ov5_021F9B10 *);

void PlayerAvatar_SetRequestStateBit(PlayerAvatar *playerAvatar, u32 bit)
{
    PlayerAvatar_TurnOnRequestStateBit(playerAvatar, bit);
}

void PlayerAvatar_RequestChangeState(PlayerAvatar *playerAvatar)
{
    u32 state = 0;
    u32 flag = PlayerAvatar_RequestStateFlag(playerAvatar);

    do {
        if (flag & 0x1) {
            sPlayerAvatarRequestStateTbl[state](playerAvatar);
        }

        flag >>= 1;
    } while (++state < 10);

    PlayerAvatar_SetRequestStateFlag(playerAvatar, 0);
}

static void PlayerAvatar_RequestStateWalking(PlayerAvatar *playerAvatar)
{
    int v0;
    int v1 = 0x0;

    if (PlayerAvatar_MapDistortionState(playerAvatar) != AVATAR_DISTORTION_STATE_NONE) {
        v1 = 0x18;
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (sub_02071CB4(fieldSystem, 2) == 1) {
            v1 = 0x1c;
        }
    }

    v0 = Player_MoveStateFromGender(v1, PlayerAvatar_Gender(playerAvatar));

    PlayerAvatar_Redraw(playerAvatar, v0);
    PlayerAvatar_SetPlayerState(playerAvatar, 0x0);
    PlayerAvatar_ClearSpeed(playerAvatar);

    {
        UnkStruct_ov101_021D5D90 *v4 = sub_0205EC04(playerAvatar);

        if (v4 != NULL) {
            ov5_021DF74C(v4);
        }

        sub_0205EC00(playerAvatar, NULL);
    }
}

static void PlayerAvatar_RequestStateCycle(PlayerAvatar *playerAvatar)
{
    int v0 = Player_MoveStateFromGender(PLAYER_STATE_CYCLING, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);

    PlayerAvatar_SetPlayerState(playerAvatar, PLAYER_STATE_CYCLING);
    PlayerAvatar_ClearSpeed(playerAvatar);

    {
        UnkStruct_ov101_021D5D90 *v1 = sub_0205EC04(playerAvatar);

        if (v1 != NULL) {
            ov5_021DF74C(v1);
        }

        sub_0205EC00(playerAvatar, NULL);
    }

    Sound_PlayEffect(1560);
}

static void PlayerAvatar_RequestStateSurf(PlayerAvatar *playerAvatar)
{
    int v0, v1;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);
    UnkStruct_ov101_021D5D90 *v5 = sub_0205EC04(playerAvatar);

    if (v5 != NULL) {
        ov5_021DF74C(v5);
    }

    sub_0205EC00(playerAvatar, NULL);

    if (PlayerAvatar_DistortionStateOnFloor(playerAvatar) == TRUE) {
        v1 = PlayerAvatar_GetDir(playerAvatar);
    } else {
        v1 = PlayerAvatar_GetMoveDir(playerAvatar);
    }

    if (distortionState == AVATAR_DISTORTION_STATE_NONE) {
        v5 = ov5_021F261C(mapObj, 0, 0, v1, 1);
        v0 = PLAYER_STATE_SURFING;
    } else {
        v5 = ov5_021F85BC(playerAvatar, 0, 0, 0, v1, 1, distortionState);
        v0 = 0x19;
    }

    sub_0205EC00(playerAvatar, v5);

    v0 = Player_MoveStateFromGender(v0, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);

    PlayerAvatar_SetPlayerState(playerAvatar, PLAYER_STATE_SURFING);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void ov5_021DFCE4(PlayerAvatar *playerAvatar)
{
    sub_0205EF6C(playerAvatar, 1);
}

static void ov5_021DFCF0(PlayerAvatar *playerAvatar)
{
    int v0;

    v0 = Player_MoveStateFromGender(0x11, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void ov5_021DFD0C(PlayerAvatar *playerAvatar)
{
    int v0;

    v0 = Player_MoveStateFromGender(0x13, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void PlayerAvatar_RequestStatePoketch(PlayerAvatar *playerAvatar)
{
    int v0;
    int v1 = 0x14;

    if (PlayerAvatar_MapDistortionState(playerAvatar) != AVATAR_DISTORTION_STATE_NONE) {
        v1 = 0x1b;
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (sub_02071CB4(fieldSystem, 2) == 1) {
            v1 = 0x1e;
        }
    }

    v0 = Player_MoveStateFromGender(v1, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void PlayerAvatar_RequestStateSave(PlayerAvatar *playerAvatar)
{
    int v0;
    int v1 = 0x15;

    if (PlayerAvatar_MapDistortionState(playerAvatar) != AVATAR_DISTORTION_STATE_NONE) {
        v1 = 0x1a;
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (sub_02071CB4(fieldSystem, 2) == 1) {
            v1 = 0x1d;
        }
    }

    v0 = Player_MoveStateFromGender(v1, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void ov5_021DFDA8(PlayerAvatar *playerAvatar)
{
    int v0;

    v0 = Player_MoveStateFromGender(0x16, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void ov5_021DFDC4(PlayerAvatar *playerAvatar)
{
    int v0;

    v0 = Player_MoveStateFromGender(0x17, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void (*const sPlayerAvatarRequestStateTbl[10])(PlayerAvatar *) = {
    PlayerAvatar_RequestStateWalking,
    PlayerAvatar_RequestStateCycle,
    PlayerAvatar_RequestStateSurf,
    ov5_021DFCE4,
    ov5_021DFCF0,
    ov5_021DFD0C,
    PlayerAvatar_RequestStatePoketch,
    PlayerAvatar_RequestStateSave,
    ov5_021DFDA8,
    ov5_021DFDC4
};

int ov5_021DFDE0(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int dir, int param3)
{
    {
        MapObject *v0;

        GF_ASSERT(playerAvatar != NULL);
        v0 = Player_MapObject(playerAvatar);
        GF_ASSERT(v0 != NULL);
    }

    if (sub_0205EF58(playerAvatar) == 1) {
        if (ov5_021E067C(fieldSystem, playerAvatar, param3) == 1) {
            return 1;
        }

        return 0;
    }

    if (PlayerAvatar_CheckStartMove(playerAvatar, dir) == 0) {
        return 0;
    }

    if (dir == -1) {
        if (ov5_021DFEF4(fieldSystem, playerAvatar, dir, param3) == 1) {
            return 1;
        }

        return 0;
    }

    if (ov5_021DFE68(fieldSystem, playerAvatar, dir, param3) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFE68(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    int v0 = sub_02061434(playerAvatar, param2);

    if (param3 & 1 << 2) {
        if (ov9_0224A59C(fieldSystem, param2) == 1) {
            return 1;
        }
    }

    if (param3 & 1 << 0) {
        if (ov5_021DFF1C(fieldSystem, playerAvatar, param2, v0) == 1) {
            return 1;
        }
    }

    if (param3 & 1 << 1) {
        if (ov5_021E04A8(fieldSystem, playerAvatar, param2, v0) == 1) {
            return 1;
        }
    }

    if (ov5_021E032C(fieldSystem, playerAvatar, param2, v0) == 1) {
        return 1;
    }

    if (ov5_021E04EC(fieldSystem, playerAvatar, param2, v0) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFEF4(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    int v0 = sub_02061434(playerAvatar, param2);

    if (ov5_021E04EC(fieldSystem, playerAvatar, param2, v0) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFF1C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if (param3 != 1) {
        return 0;
    }

    {
        MapObject *mapObj = ov5_021E10D4(playerAvatar, param2);

        if (mapObj == NULL) {
            return 0;
        }

        {
            int v1 = MapObject_GetGraphicsID(mapObj);

            if (v1 != 0x54) {
                return 0;
            }
        }

        {
            u32 v2 = sub_02063EBC(mapObj, param2);

            v2 &= ~(1 << 0);

            if (v2 != 0) {
                if (sub_02071CB4(fieldSystem, 9) == 1) {
                    if (ov9_0224F240(mapObj, param2) == 0) {
                        return 0;
                    }
                } else {
                    return 0;
                }
            }
        }

        ov5_021DFF88(param2, fieldSystem, playerAvatar, mapObj);
        return 1;
    }
}

static void ov5_021DFF88(int param0, FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, MapObject *param3)
{
    UnkStruct_ov5_021DFF88 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021DFF88));

    v0->unk_04 = param0;
    v0->fieldSystem = fieldSystem;
    v0->unk_10 = param3;
    v0->playerAvatar = playerAvatar;

    FieldSystem_CreateTask(fieldSystem, ov5_021DFFBC, v0);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_055);
}

static BOOL ov5_021DFFBC(FieldTask *param0)
{
    UnkStruct_ov5_021DFF88 *v0 = FieldTask_GetEnv(param0);
    MapObject *v1 = Player_MapObject(v0->playerAvatar);
    MapObject *v2 = v0->unk_10;

    switch (v0->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v2) == 0) {
            break;
        }

        if (LocalMapObj_IsAnimationSet(v1) == 0) {
            if (sub_020613AC(v0->playerAvatar) == 0) {
                break;
            }
        }

        {
            int v3 = sub_02065838(v0->unk_04, 0x8);

            LocalMapObj_SetAnimationCode(v2, v3);

            v3 = sub_02065838(v0->unk_04, 0x20);
            LocalMapObj_SetAnimationCode(v1, v3);
            Sound_PlayEffect(1575);
        }

        v0->unk_00++;
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(v2) == 0) {
            break;
        }

        if (LocalMapObj_CheckAnimationFinished(v1) == 0) {
            break;
        }

        if (sub_02071CB4(v0->fieldSystem, 9) == 1) {
            if (ov9_0224F2B0(v2) == 1) {
                v0->unk_14 = ov9_0224F2BC(v0->fieldSystem, param0, v2);
                v0->unk_00 = 3;
                break;
            }
        }

        sub_020656AC(v2);
        sub_020656AC(v1);
        v0->unk_00++;
    case 2:
        ov5_021E1134(v0);
        return 1;
    case 3:
        if (ov9_0224F6EC(v0->unk_14) == 1) {
            sub_020656AC(v2);
            sub_020656AC(v1);
            v0->unk_00 = 2;
        }
        break;
    }

    return 0;
}

static void ov5_021E00B0(FieldSystem *fieldSystem, int param1, const UnkStruct_ov5_021E1050 *param2)
{
    UnkStruct_ov5_021E00B0 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021E00B0));

    v0->unk_04 = param1;
    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = fieldSystem->playerAvatar;
    v0->unk_24 = Player_MapObject(v0->playerAvatar);
    v0->unk_0C = *param2;

    FieldTask_InitCall(fieldSystem->task, ov5_021E0160, v0);
}

void ov5_021E00EC(FieldTask *taskMan, int param1, int param2)
{
    UnkStruct_ov5_021E1050 v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    Pokemon *v2 = ov5_021E1140(fieldSystem, param2);

    ov5_021E1028(fieldSystem, v2, &v0);
    ov5_021E00B0(fieldSystem, param1, &v0);
}

int ov5_021E0118(PlayerAvatar *playerAvatar, u32 param1, u32 param2)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (TileBehavior_IsSurfable(param2) == 1) {
        if ((TileBehavior_IsBridge(param1) == 1) || (TileBehavior_IsBridgeStart(param1) == 1)) {
            if (sub_02062F30(v0) == 1) {
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

static BOOL ov5_021E0160(FieldTask *taskMan)
{
    UnkStruct_ov5_021E00B0 *v0 = FieldTask_GetEnv(taskMan);

    switch (v0->unk_00) {
    case 0:
        if (PlayerAvatar_MapDistortionState(v0->playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
            Sound_SetSpecialBGM(v0->fieldSystem, 0);
            sub_02055554(v0->fieldSystem, 1151, 1);
        }

        if (v0->unk_0C.unk_00 == 1) {
            ov5_021E103C(v0->fieldSystem, &v0->unk_0C);
            v0->unk_00++;
        } else {
            v0->unk_00 = 2;
        }
        break;
    case 1:
        if (ov5_021E1050(&v0->unk_0C) == 1) {
            v0->unk_00++;
        }
        break;
    case 2: {
        if (PlayerAvatar_MapDistortionState(v0->playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
            int v1 = Player_GetXPos(v0->playerAvatar) + MapObject_GetDxFromDir(v0->unk_04);
            int v2 = Player_GetZPos(v0->playerAvatar) + MapObject_GetDzFromDir(v0->unk_04);
            v0->unk_28 = ov5_021F261C(v0->unk_24, v1, v2, v0->unk_04, 0);
        } else {
            int v3 = MapObject_GetX(v0->unk_24);
            int v4 = (MapObject_GetY(v0->unk_24) / 2);
            int v5 = MapObject_GetZ(v0->unk_24);
            enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(v0->playerAvatar);

            sub_02061674(v0->playerAvatar, v0->unk_04, &v3, &v4, &v5);
            v0->unk_28 = ov5_021F85BC(v0->playerAvatar, v3, v4, v5, v0->unk_04, 0, distortionState);
        }

        sub_0205EC00(v0->playerAvatar, v0->unk_28);
        PlayerAvatar_SetPlayerState(v0->playerAvatar, 0x2);
    }

        v0->unk_00++;
        break;
    case 3:
        v0->unk_00++;
    case 4:
        if (LocalMapObj_IsAnimationSet(v0->unk_24) == 1) {
            int v7;
            int v8[6] = {
                0x34, 0x34, 0x34, 0x85, 0x89, 0x8d
            };
            enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(v0->playerAvatar);

            v7 = sub_02065838(v0->unk_04, v8[distortionState]);
            LocalMapObj_SetAnimationCode(v0->unk_24, v7);
            v0->unk_00++;
        }
        break;
    case 5:
        if (LocalMapObj_CheckAnimationFinished(v0->unk_24) == 0) {
            break;
        }

        sub_020656AC(v0->unk_24);

        if (PlayerAvatar_MapDistortionState(v0->playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
            int v10;

            ov5_021F2838(v0->unk_28, 1);
            v10 = Player_MoveStateFromGender(0x2, PlayerAvatar_Gender(v0->playerAvatar));
            PlayerAvatar_Redraw(v0->playerAvatar, v10);
        } else {
            int v11;

            ov5_021F88CC(v0->unk_28, 1 << 1);
            v11 = Player_MoveStateFromGender(0x19, PlayerAvatar_Gender(v0->playerAvatar));
            PlayerAvatar_Redraw(v0->playerAvatar, v11);
        }

        ov5_021E1134(v0);
        return 1;
    }

    return 0;
}

static int ov5_021E032C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if ((param3 != 1) || (PlayerAvatar_GetPlayerState(playerAvatar) != 0x2)) {
        return 0;
    }

    {
        u32 v0;
        MapObject *v1 = Player_MapObject(playerAvatar);

        if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
            v0 = sub_02060B7C(playerAvatar, v1, param2);
        } else {
            v0 = sub_020611FC(playerAvatar, v1, param2);
        }

        if (v0 == (1 << 5)) {
            return 0;
        }

        v0 &= ~(1 << 5);

        if (v0 != 0) {
            return 0;
        }
    }

    ov5_021E0390(param2, fieldSystem, playerAvatar);
    return 1;
}

static void ov5_021E0390(int param0, FieldSystem *fieldSystem, PlayerAvatar *param2)
{
    UnkStruct_ov5_021E0390 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021E0390));

    v0->unk_04 = param0;
    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = param2;
    v0->unk_10 = Player_MapObject(param2);
    v0->unk_14 = sub_0205EC04(param2);

    FieldSystem_CreateTask(fieldSystem, ov5_021E03C8, v0);
}

static BOOL ov5_021E03C8(FieldTask *param0)
{
    UnkStruct_ov5_021E0390 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v0->unk_10) == 1) {
            int v1;
            int v3[6] = {
                0x34, 0x34, 0x34, 0x85, 0x89, 0x8d
            };

            enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(v0->playerAvatar);

            if (distortionState == AVATAR_DISTORTION_STATE_NONE) {
                ov5_021F2838(v0->unk_14, 0);
                v1 = Player_MoveStateFromGender(0x0, PlayerAvatar_Gender(v0->playerAvatar));
            } else {
                ov5_021F88DC(v0->unk_14, 1 << 1);
                v1 = Player_MoveStateFromGender(0x18, PlayerAvatar_Gender(v0->playerAvatar));
            }

            PlayerAvatar_Redraw(v0->playerAvatar, v1);

            v1 = sub_02065838(v0->unk_04, v3[distortionState]);
            LocalMapObj_SetAnimationCode(v0->unk_10, v1);
            v0->unk_00++;
        }
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(v0->unk_10) == 0) {
            break;
        }

        sub_020656AC(v0->unk_10);

        if (v0->unk_14 != NULL) {
            ov5_021DF74C(v0->unk_14);
        }

        sub_0205EC00(v0->playerAvatar, NULL);
        PlayerAvatar_SetPlayerState(v0->playerAvatar, 0x0);
        sub_02055554(v0->fieldSystem, sub_020554A4(v0->fieldSystem, v0->fieldSystem->location->mapId), 1);
        ov5_021E1134(v0);
        return 1;
    }

    return 0;
}

static int ov5_021E04A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if ((param2 != 1) || (param3 != 1) || (PlayerAvatar_GetPlayerState(playerAvatar) != 0x2)) {
        return 0;
    }

    {
        u8 v0 = sub_0206156C(playerAvatar, param2);

        if (TileBehavior_IsWaterfall(v0) == 0) {
            return 0;
        }
    }

    ov5_021E097C(fieldSystem, param2);
    return 1;
}

static int ov5_021E04EC(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if (PlayerAvatar_IsNotInDeepSwamp(playerAvatar) == 1) {
        return 0;
    }

    {
        MapObject *v0 = Player_MapObject(playerAvatar);
        u8 v1 = MapObject_GetCurrTileBehavior(v0);

        if ((TileBehavior_IsDeepMud(v1) != 1) && (TileBehavior_IsDeepMudWithGrass(v1) != 1)) {
            return 0;
        }
    }

    ov5_021E0534(fieldSystem, playerAvatar);
    return 1;
}

static void ov5_021E0534(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar)
{
    UnkStruct_ov5_021E0534 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021E0534));

    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = playerAvatar;

    FieldSystem_CreateTask(fieldSystem, ov5_021E0560, v0);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_056);
}

static BOOL ov5_021E0560(FieldTask *param0)
{
    UnkStruct_ov5_021E0534 *v0 = FieldTask_GetEnv(param0);
    MapObject *v1 = Player_MapObject(v0->playerAvatar);

    switch (v0->unk_00) {
    case 0:
        Sound_PlayEffect(1617);
        v0->unk_00++;
    case 1:
        if (LocalMapObj_IsAnimationSet(v1) == 0) {
            if (sub_020613AC(v0->playerAvatar) == 0) {
                break;
            }
        }

        if (v0->unk_04 >= 5) {
            Sound_PlayEffect(1618);
            PlayerAvatar_SetInDeepSwamp(v0->playerAvatar, 1);
            ov5_021E1134(v0);
            return 1;
        }

        v0->unk_00++;
    case 2: {
        int v2 = PlayerAvatar_GetDir(v0->playerAvatar);
        u32 v3, v4 = gCoreSys.pressedKeys, v5 = gCoreSys.heldKeys;
        int v6 = sub_02061308(v0->playerAvatar, v4, v5);

        if ((v6 == -1) || (v6 == v2)) {
            break;
        }

        v0->unk_00 = 1;
        v0->unk_04++;

        {
            u8 v7 = MapObject_GetCurrTileBehavior(v1);

            if (TileBehavior_IsDeepMudWithGrass(v7) == 1) {
                FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
                FieldBattleDTO *v9;

                if (ov6_022413E4(fieldSystem, &v9) == 1) {
                    PlayerAvatar_SetInDeepSwamp(v0->playerAvatar, 1);
                    ov5_021E1134(v0);
                    Encounter_StartVsWild(fieldSystem, param0, v9);
                    return 0;
                }
            }
        }

        if (v0->unk_04 < 5) {
            v3 = 0x28;
        } else {
            v3 = 0x30;
            sub_02062EE0(v1, 1);
        }

        v3 = sub_02065838(v6, v3);
        PlayerAvatar_SetAnimationCode(v0->playerAvatar, v3, 1);
    } break;
    }

    return 0;
}

static int ov5_021E067C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(v0) == 0) {
        return 0;
    }

    if (ov5_021E06A8(fieldSystem, playerAvatar) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021E06A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_Speed(playerAvatar) < 1) {
        return 0;
    }

    {
        int v0 = PlayerAvatar_GetMoveDir(playerAvatar);
        MapObject *v1 = ov5_021E10D4(playerAvatar, v0);

        if (v1 == NULL) {
            return 0;
        }

        {
            int v2 = MapObject_GetGraphicsID(v1);

            if (v2 != 0x76) {
                return 0;
            }
        }

        ov5_021EC7F0(v1);
        MapObject_Delete(v1);
        Sound_PlayEffect(1627);
    }

    return 0;
}

static void ov5_021E06F8(FieldSystem *fieldSystem, int param1, const UnkStruct_ov5_021E1050 *param2)
{
    UnkStruct_ov5_021F9B54 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021F9B54));

    v0->unk_04 = param1;
    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = fieldSystem->playerAvatar;
    v0->unk_14 = Player_MapObject(v0->playerAvatar);
    v0->unk_1C = *param2;

    FieldTask_InitCall(fieldSystem->task, ov5_021E07A0, v0);
}

void ov5_021E0734(FieldTask *param0, int param1, int param2)
{
    UnkStruct_ov5_021E1050 v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    Pokemon *v2 = ov5_021E1140(fieldSystem, param2);

    ov5_021E1028(fieldSystem, v2, &v0);
    ov5_021E06F8(fieldSystem, param1, &v0);
}

int ov5_021E0760(u32 param0, int param1)
{
    switch (param1) {
    case 0:
    case 1:
        if (TileBehavior_IsRockClimbNorthSouth(param0) == 1) {
            return 1;
        }
        break;
    case 2:
    case 3:
        if (TileBehavior_IsRockClimbEastWest(param0) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov5_021E07A0(FieldTask *param0)
{
    int v0;
    UnkStruct_ov5_021F9B54 *v1 = FieldTask_GetEnv(param0);

    do {
        v0 = Unk_ov5_021F9B54[v1->unk_00](v1);
    } while (v0 == (1 + 1));

    if (v0 == 1) {
        ov5_021E1134(v1);
    }

    return (BOOL)v0;
}

static int ov5_021E07CC(UnkStruct_ov5_021F9B54 *param0)
{
    ov5_021E103C(param0->fieldSystem, &param0->unk_1C);

    param0->unk_00++;
    return 0;
}

static int ov5_021E07E4(UnkStruct_ov5_021F9B54 *param0)
{
    if (ov5_021E1050(&param0->unk_1C) == 1) {
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E07FC(UnkStruct_ov5_021F9B54 *param0)
{
    int v0 = Player_GetXPos(param0->playerAvatar) + MapObject_GetDxFromDir(param0->unk_04);
    int v1 = Player_GetZPos(param0->playerAvatar) + MapObject_GetDzFromDir(param0->unk_04);

    param0->unk_18 = ov5_021F28F4(param0->unk_14, v0, v1, param0->unk_04, 0);
    param0->unk_2C = ov6_0224892C(param0->fieldSystem);

    Sound_PlayEffect(1575);
    param0->unk_00++;

    return 0;
}

static int ov5_021E0850(UnkStruct_ov5_021F9B54 *param0)
{
    if (LocalMapObj_IsAnimationSet(param0->unk_14) == 1) {
        int v0 = sub_02065838(param0->unk_04, 0x34);

        LocalMapObj_SetAnimationCode(param0->unk_14, v0);
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E0878(UnkStruct_ov5_021F9B54 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_14) == 1) {
        param0->unk_00++;
        ov5_021F2974(param0->unk_18, 1);
    }

    return 0;
}

static int ov5_021E0898(UnkStruct_ov5_021F9B54 *param0)
{
    if (LocalMapObj_IsAnimationSet(param0->unk_14) == 1) {
        int v0 = sub_02065838(param0->unk_04, 0x10);

        LocalMapObj_SetAnimationCode(param0->unk_14, v0);
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E08C0(UnkStruct_ov5_021F9B54 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_14) == 0) {
        return 0;
    }

    {
        int v0 = MapObject_GetMovingDir(param0->unk_14);
        u8 v1 = MapObject_GetTileBehaviorFromDir(param0->unk_14, v0);

        if (ov5_021E0760(v1, v0) == 1) {
            param0->unk_00 = 5;
            return 1 + 1;
        }
    }

    {
        int v2 = sub_02065838(param0->unk_04, 0x34);

        LocalMapObj_SetAnimationCode(param0->unk_14, v2);
        param0->unk_08 = 0;
        param0->unk_00++;
        ov5_021F2974(param0->unk_18, 0);
    }

    ov6_02248940(param0->unk_2C);
    param0->unk_2C = NULL;

    return 0;
}

static int ov5_021E0924(UnkStruct_ov5_021F9B54 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_14) == 0) {
        return 0;
    }

    sub_020656AC(param0->unk_14);
    ov5_021DF74C(param0->unk_18);
    return 1;
}

static int (*const Unk_ov5_021F9B54[])(UnkStruct_ov5_021F9B54 *) = {
    ov5_021E07CC,
    ov5_021E07E4,
    ov5_021E07FC,
    ov5_021E0850,
    ov5_021E0878,
    ov5_021E0898,
    ov5_021E08C0,
    ov5_021E0924
};

static UnkStruct_ov5_021F9B10 *ov5_021E0948(FieldSystem *fieldSystem, int param1, const UnkStruct_ov5_021E1050 *param2)
{
    UnkStruct_ov5_021F9B10 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021F9B10));

    v0->unk_04 = param1;
    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = fieldSystem->playerAvatar;
    v0->unk_3C = Player_MapObject(fieldSystem->playerAvatar);

    if (param2 != NULL) {
        v0->unk_40 = *param2;
    }

    return v0;
}

void ov5_021E097C(FieldSystem *fieldSystem, int param1)
{
    UnkStruct_ov5_021F9B10 *v0 = ov5_021E0948(fieldSystem, param1, NULL);
    FieldSystem_CreateTask(fieldSystem, ov5_021E09D4, v0);
}

void ov5_021E0998(FieldTask *param0, int param1, int param2)
{
    UnkStruct_ov5_021E1050 v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    Pokemon *v2 = ov5_021E1140(fieldSystem, param2);

    ov5_021E1028(fieldSystem, v2, &v0);

    {
        UnkStruct_ov5_021F9B10 *v3 = ov5_021E0948(fieldSystem, param1, &v0);
        FieldTask_InitCall(param0, ov5_021E09D4, v3);
    }
}

static BOOL ov5_021E09D4(FieldTask *param0)
{
    int v0;
    UnkStruct_ov5_021F9B10 *v1 = FieldTask_GetEnv(param0);

    do {
        if (v1->unk_04 == 0) {
            v0 = Unk_ov5_021F9B10[v1->unk_00](v1);
        } else {
            v0 = Unk_ov5_021F9AFC[v1->unk_00](v1);
        }
    } while (v0 == (1 + 1));

    if (v0 == 1) {
        ov5_021E1134(v1);
        return 1;
    }

    return 0;
}

static int ov5_021E0A1C(UnkStruct_ov5_021F9B10 *param0)
{
    if (param0->unk_40.unk_00 == 1) {
        ov5_021E103C(param0->fieldSystem, &param0->unk_40);
        param0->unk_00++;
        return 0;
    }

    param0->unk_00 = 2;
    return 1;
}

static int ov5_021E0A44(UnkStruct_ov5_021F9B10 *param0)
{
    if (ov5_021E1050(&param0->unk_40) == 1) {
        Sound_PlayEffect(1613);
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E0A68(UnkStruct_ov5_021F9B10 *param0)
{
    int v0, v1;
    VecFx32 v2, v3;

    v0 = MapObject_GetX(param0->unk_3C) + (MapObject_GetDxFromDir(0) << 1);
    v1 = MapObject_GetZ(param0->unk_3C) + (MapObject_GetDzFromDir(0) << 1);

    sub_02064450(v0, v1, &param0->unk_28);
    sub_020644A4(param0->fieldSystem, &param0->unk_28);

    param0->unk_0C = v0;
    param0->unk_10 = (((param0->unk_28.y) >> 3) / FX32_ONE);
    param0->unk_14 = v1;

    MapObject_GetPosPtr(param0->unk_3C, &v2);

    GF_ASSERT(v2.z > param0->unk_28.z);
    GF_ASSERT(v2.y < param0->unk_28.y);

    v3.x = 0;
    v3.y = param0->unk_28.y - v2.y;
    v3.z = param0->unk_28.z - v2.z;
    v3.y /= 64;
    v3.z /= 64;

    param0->unk_1C = v3;
    param0->unk_50 = ov6_022485F4(param0->fieldSystem);
    param0->unk_00++;

    return 0;
}

static int ov5_021E0B24(UnkStruct_ov5_021F9B10 *param0)
{
    VecFx32 v0;

    MapObject_GetPosPtr(param0->unk_3C, &v0);

    v0.y += param0->unk_1C.y;

    if (v0.y > param0->unk_28.y) {
        v0.y = param0->unk_28.y;
    }

    MapObject_SetPos(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 >= 32) {
        param0->unk_08 = 0;
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E0B64(UnkStruct_ov5_021F9B10 *param0)
{
    VecFx32 v0;

    MapObject_GetPosPtr(param0->unk_3C, &v0);

    v0.y += param0->unk_1C.y;

    if (v0.y > param0->unk_28.y) {
        v0.y = param0->unk_28.y;
    }

    v0.z += param0->unk_1C.z;

    if (v0.z < param0->unk_28.z) {
        v0.z = param0->unk_28.z;
    }

    MapObject_SetPos(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 < 64) {
        return 0;
    }

    GF_ASSERT(v0.z == param0->unk_28.z);
    GF_ASSERT(v0.y == param0->unk_28.y);

    MapObject_SetX(param0->unk_3C, param0->unk_0C);
    MapObject_SetY(param0->unk_3C, param0->unk_10);
    MapObject_SetZ(param0->unk_3C, param0->unk_14);
    MapObject_UpdateCoords(param0->unk_3C);

    ov6_02248608(param0->unk_50);
    return 1;
}

static int (*const Unk_ov5_021F9B10[])(UnkStruct_ov5_021F9B10 *) = {
    ov5_021E0A1C,
    ov5_021E0A44,
    ov5_021E0A68,
    ov5_021E0B24,
    ov5_021E0B64
};

static int ov5_021E0BEC(UnkStruct_ov5_021F9B10 *param0)
{
    if (param0->unk_40.unk_00 == 1) {
        ov5_021E103C(param0->fieldSystem, &param0->unk_40);
        param0->unk_00++;
        return 0;
    }

    param0->unk_00 = 2;
    return 1 + 1;
}

static int ov5_021E0C10(UnkStruct_ov5_021F9B10 *param0)
{
    if (ov5_021E1050(&param0->unk_40) == 1) {
        Sound_PlayEffect(1613);
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E0C34(UnkStruct_ov5_021F9B10 *param0)
{
    int v0, v1;
    VecFx32 v2, v3;

    v0 = MapObject_GetX(param0->unk_3C) + (MapObject_GetDxFromDir(1) << 1);
    v1 = MapObject_GetZ(param0->unk_3C) + (MapObject_GetDzFromDir(1) << 1);

    sub_02064450(v0, v1, &param0->unk_28);
    sub_020644A4(param0->fieldSystem, &param0->unk_28);

    param0->unk_18 = 0;
    param0->unk_0C = v0;
    param0->unk_10 = (((param0->unk_28.y) >> 3) / FX32_ONE);
    param0->unk_14 = v1;

    MapObject_GetPosPtr(param0->unk_3C, &v2);

    GF_ASSERT(v2.z < param0->unk_28.z);
    GF_ASSERT(v2.y > param0->unk_28.y);

    v3.x = 0;
    v3.y = param0->unk_28.y - v2.y;
    v3.z = param0->unk_28.z - v2.z;
    v3.y /= 64;
    v3.z /= 64;

    param0->unk_1C = v3;
    param0->unk_50 = ov6_022485F4(param0->fieldSystem);
    param0->unk_00++;

    return 0;
}

static int ov5_021E0CF4(UnkStruct_ov5_021F9B10 *param0)
{
    VecFx32 v0;

    MapObject_GetPosPtr(param0->unk_3C, &v0);

    v0.z += param0->unk_1C.z;

    if (v0.z > param0->unk_28.z) {
        v0.z = param0->unk_28.z;
    } else {
        param0->unk_18 += param0->unk_1C.z;
    }

    MapObject_SetPos(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 >= 32) {
        param0->unk_08 = 0;
        param0->unk_00++;
    }

    return 0;
}

static int ov5_021E0D40(UnkStruct_ov5_021F9B10 *param0)
{
    VecFx32 v0;

    MapObject_GetPosPtr(param0->unk_3C, &v0);

    v0.y += param0->unk_1C.y;

    if (v0.y < param0->unk_28.y) {
        v0.y = param0->unk_28.y;
    }

    v0.z += param0->unk_1C.z;

    if (v0.z > param0->unk_28.z) {
        v0.z = param0->unk_28.z;
    } else {
        param0->unk_18 += param0->unk_1C.z;
    }

    MapObject_SetPos(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 < 64) {
        return 0;
    }

    GF_ASSERT(v0.z == param0->unk_28.z);
    GF_ASSERT(v0.y == param0->unk_28.y);

    MapObject_SetX(param0->unk_3C, param0->unk_0C);
    MapObject_SetY(param0->unk_3C, param0->unk_10);
    MapObject_SetZ(param0->unk_3C, param0->unk_14);
    MapObject_UpdateCoords(param0->unk_3C);

    ov6_02248608(param0->unk_50);

    return 1;
}

static int (*const Unk_ov5_021F9AFC[])(UnkStruct_ov5_021F9B10 *) = {
    ov5_021E0BEC,
    ov5_021E0C10,
    ov5_021E0C34,
    ov5_021E0CF4,
    ov5_021E0D40
};

static const MapObjectAnimCmd Unk_ov5_021F9B9C[] = {
    { 0x1, 0x1 },
    { 0x3C, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x2 },
    { 0x0, 0x1 },
    { 0x3C, 0x2 },
    { 0x3, 0x1 },
    { 0x3C, 0x2 },
    { 0x1, 0x1 },
    { 0x3C, 0x1 },
    { 0x2, 0x1 },
    { 0x3C, 0x1 },
    { 0x0, 0x1 },
    { 0x3C, 0x1 },
    { 0x3, 0x1 },
    { 0x3C, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov5_021F9C00[] = {
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x3C, 0x1 },
    { 0x2, 0x1 },
    { 0x3C, 0x1 },
    { 0x0, 0x1 },
    { 0x3C, 0x1 },
    { 0x3, 0x1 },
    { 0x3C, 0x1 },
    { 0x1, 0x1 },
    { 0x3C, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x4 },
    { 0x3, 0x1 },
    { 0x3C, 0x5 },
    { 0x1, 0x1 },
    { 0xfe, 0x0 }
};

void ov5_021E0DD4(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    ov5_021E0DE0(fieldSystem);
}

static void ov5_021E0DE0(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021E0DE0 *v0 = ov5_021E1110(sizeof(UnkStruct_ov5_021E0DE0));

    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = fieldSystem->playerAvatar;
    v0->unk_08 = Player_MapObject(v0->playerAvatar);
    v0->unk_10 = PlayerAvatar_Gender(v0->playerAvatar);

    FieldTask_InitCall(fieldSystem->task, ov5_021E0E10, v0);
}

static BOOL ov5_021E0E10(FieldTask *param0)
{
    UnkStruct_ov5_021E0DE0 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_0C) {
    case 0:
        v0->unk_14 = MapObject_StartAnimation(v0->unk_08, Unk_ov5_021F9B9C);
        v0->unk_0C++;
        break;
    case 1:
        if (MapObject_HasAnimationEnded(v0->unk_14) == 1) {
            int v1 = Player_MoveStateFromGender(0x12, v0->unk_10);

            PlayerAvatar_Redraw(v0->playerAvatar, v1);
            MapObject_FinishAnimation(v0->unk_14);

            v0->unk_14 = MapObject_StartAnimation(v0->unk_08, Unk_ov5_021F9C00);
            v0->unk_0C++;
        }
        break;
    case 2:
        if (MapObject_HasAnimationEnded(v0->unk_14) == 1) {
            MapObject_FinishAnimation(v0->unk_14);
            ov5_021E1134(v0);
            return 1;
        }
        break;
    }

    return 0;
}

void ov5_021E0E94(PlayerAvatar *playerAvatar)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (sub_02062DFC(v0) == 0) {
        return;
    }

    {
        int v1 = PlayerAvatar_GetPlayerState(playerAvatar);

        if (v1 != 0x0) {
            return;
        }
    }

    {
        int v2 = MapObject_GetGraphicsID(v0);

        if ((v2 == 0xc4) || (v2 == 0xc5) || (v2 == 0x10e) || (v2 == 0x10f)) {
            return;
        }
    }

    {
        u32 v3 = PlayerAvatar_RequestStateFlag(playerAvatar);

        PlayerAvatar_SetRequestStateBit(playerAvatar, (1 << 6));
        PlayerAvatar_RequestChangeState(playerAvatar);
        PlayerAvatar_SetRequestStateBit(playerAvatar, v3);
    }
}

void ov5_021E0EEC(PlayerAvatar *playerAvatar)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (sub_02062DFC(v0) == 0) {
        return;
    }

    {
        int v1 = PlayerAvatar_GetPlayerState(playerAvatar);

        if (v1 != 0x0) {
            return;
        }
    }

    {
        int v2 = MapObject_GetGraphicsID(v0);

        if ((v2 != 0xc4) && (v2 != 0xc5) && (v2 != 0x10e) && (v2 != 0x10f) && (v2 != 0x112) && (v2 != 0x113)) {
            return;
        }
    }

    {
        u32 v3 = PlayerAvatar_RequestStateFlag(playerAvatar);

        PlayerAvatar_SetRequestStateBit(playerAvatar, (1 << 0));
        PlayerAvatar_RequestChangeState(playerAvatar);
        PlayerAvatar_SetRequestStateBit(playerAvatar, v3);
    }
}

static SysTask *ov5_021E0F54(FieldSystem *fieldSystem, u32 param1)
{
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    int v1 = PlayerAvatar_GetPlayerState(playerAvatar);

    if (v1 != 0x0) {
        return NULL;
    }

    {
        SysTask *v2;
        MapObject *v3 = Player_MapObject(playerAvatar);
        UnkStruct_ov5_021E0FF0 *v4 = Heap_AllocFromHeapAtEnd(4, (sizeof(UnkStruct_ov5_021E0FF0)));

        v4->unk_00 = 0;
        v4->fieldSystem = fieldSystem;
        v4->playerAvatar = playerAvatar;
        v4->unk_04 = v1;

        MapObject_SetPauseMovementOff(v3);
        PlayerAvatar_SetRequestStateBit(playerAvatar, param1);
        PlayerAvatar_RequestChangeState(playerAvatar);

        v2 = SysTask_Start(ov5_021E0FF0, v4, 0xffff);
        GF_ASSERT(v2 != NULL);

        return v2;
    }
}

static void ov5_021E0FC0(SysTask *param0)
{
    if (param0 == NULL) {
        return;
    }

    {
        UnkStruct_ov5_021E0FF0 *v0 = SysTask_GetParam(param0);
        PlayerAvatar *playerAvatar = v0->playerAvatar;
        int v2 = Player_MoveStateFromGender(0x0, PlayerAvatar_Gender(playerAvatar));

        PlayerAvatar_RequestStateWalking(playerAvatar);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
    }
}

static void ov5_021E0FF0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021E0FF0 *v0 = param1;
    MapObject *v1 = Player_MapObject(v0->playerAvatar);

    sub_02062B68(v1);
}

SysTask *ov5_021E1000(FieldSystem *fieldSystem)
{
    return ov5_021E0F54(fieldSystem, (1 << 7));
}

void ov5_021E100C(SysTask *param0)
{
    ov5_021E0FC0(param0);
}

SysTask *FieldSystem_StartVsSeekerTask(FieldSystem *fieldSystem)
{
    return ov5_021E0F54(fieldSystem, (1 << 9));
}

void FieldSystem_EndVsSeekerTask(SysTask *param0)
{
    ov5_021E0FC0(param0);
}

static void ov5_021E1028(FieldSystem *fieldSystem, Pokemon *param1, UnkStruct_ov5_021E1050 *param2)
{
    param2->unk_00 = 1;
    param2->unk_08 = param1;
    param2->unk_04 = PlayerAvatar_Gender(fieldSystem->playerAvatar);
}

static void ov5_021E103C(FieldSystem *fieldSystem, UnkStruct_ov5_021E1050 *param1)
{
    param1->unk_0C = ov6_02243F88(fieldSystem, 0, param1->unk_08, param1->unk_04);
}

static int ov5_021E1050(UnkStruct_ov5_021E1050 *param0)
{
    if (ov6_02243FBC(param0->unk_0C) == 1) {
        ov6_02243FC8(param0->unk_0C);
        return 1;
    }

    return 0;
}

static void PlayerAvatar_Redraw(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    if (PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
        ov5_021EE3FC(v0, param1, NULL, NULL);
    } else {
        int v1;
        FieldSystem *fieldSystem;
        UnkStruct_020216E0 *v3;

        fieldSystem = MapObject_FieldSystem(v0);
        v1 = ov9_0224A520(fieldSystem, v0);
        v3 = ov5_021EE3FC(v0, param1, ov5_021E10C0, playerAvatar);

        if (v3 != NULL) {
            ov9_0224A558(fieldSystem, v3, v1);
        }
    }
}

static void ov5_021E10C0(void *param0, const UnkStruct_020216E0 *param1)
{
    PlayerAvatar *playerAvatar = param0;
    MapObject *v1 = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(v1);

    ov9_0224A564(fieldSystem, param1);
}

static MapObject *ov5_021E10D4(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = Player_GetXPos(playerAvatar) + MapObject_GetDxFromDir(param1);
    int v1 = Player_GetZPos(playerAvatar) + MapObject_GetDzFromDir(param1);
    const MapObjectManager *v2 = MapObject_MapObjectManager(Player_MapObject(playerAvatar));
    MapObject *v3 = sub_0206326C(v2, v0, v1, 0);

    return v3;
}

static void *ov5_021E1110(int param0)
{
    void *v0 = Heap_AllocFromHeapAtEnd(4, param0);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param0);

    return v0;
}

static void ov5_021E1134(void *param0)
{
    Heap_FreeToHeapExplicit(4, param0);
}

static Pokemon *ov5_021E1140(FieldSystem *fieldSystem, int param1)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), param1);
    return v0;
}
