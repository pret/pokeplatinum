#include "unk_02056B30.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "functypes/funcptr_020EC560.h"
#include "functypes/funcptr_020EC57C.h"
#include "overlay005/hblank_system.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/struct_ov5_021D432C_decl.h"
#include "overlay005/struct_ov5_021D4E00_decl.h"

#include "camera.h"
#include "field_map_change.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_object.h"
#include "player_avatar.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_0205DAC8.h"
#include "unk_020655F4.h"

typedef struct {
    int unk_00;
    int unk_04;
    Location unk_08;
    void *unk_1C;
    int unk_20;
} UnkStruct_02056BDC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u16 unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_02056B30;

static BOOL sub_02056B70(TaskManager *taskMan);
static BOOL sub_02056CFC(TaskManager *taskMan);
static BOOL sub_02056DE4(TaskManager *taskMan);
static BOOL sub_02056E20(TaskManager *taskMan);
static BOOL sub_02056EA4(TaskManager *taskMan);
static BOOL sub_02056F1C(TaskManager *taskMan);
static BOOL sub_02056FC0(TaskManager *taskMan);
static BOOL sub_02057008(TaskManager *taskMan);
static BOOL sub_02057050(TaskManager *taskMan);
static BOOL sub_0205711C(TaskManager *taskMan);
static BOOL sub_020571A0(TaskManager *taskMan);
static BOOL sub_02057218(TaskManager *taskMan);
static BOOL sub_020572B8(TaskManager *taskMan);
static void sub_02057300(FieldSystem *fieldSystem);
static void sub_02057368(FieldSystem *fieldSystem);

static const UnkFuncPtr_020EC560 Unk_020EC560[7] = {
    sub_02056DE4,
    sub_02056E20,
    sub_02056EA4,
    sub_02056F1C,
    sub_02056FC0,
    sub_02057008,
    sub_02056DE4
};

static const UnkFuncPtr_020EC560 Unk_020EC544[7] = {
    sub_02057050,
    sub_0205711C,
    sub_020571A0,
    sub_02057218,
    sub_0205711C,
    sub_020572B8,
    sub_0205711C
};

static const UnkFuncPtr_020EC57C Unk_020EC57C[7] = {
    NULL,
    NULL,
    sub_02057300,
    sub_02057368,
    NULL,
    NULL,
    NULL
};

void sub_02056B30(TaskManager *taskMan, int param1, int param2, int param3, u16 param4, int param5, int param6, int param7)
{
    UnkStruct_02056B30 *v0 = Heap_AllocFromHeap(param7, sizeof(UnkStruct_02056B30));

    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = param3;
    v0->unk_10 = param4;
    v0->unk_14 = param5;
    v0->unk_18 = param6;
    v0->unk_1C = param7;
    v0->unk_00 = 0;

    FieldTask_Start(taskMan, sub_02056B70, v0);
}

static BOOL sub_02056B70(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056B30 *v1 = TaskManager_Environment(taskMan);

    switch (v1->unk_00) {
    case 0:
        HBlankSystem_Stop(fieldSystem->unk_04->hBlankSystem);
        sub_0200F174(v1->unk_04, v1->unk_08, v1->unk_0C, v1->unk_10, v1->unk_14, v1->unk_18, v1->unk_1C);
        v1->unk_00++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            HBlankSystem_Start(fieldSystem->unk_04->hBlankSystem);
            Heap_FreeToHeap(v1);
            return 1;
        }
    }

    return 0;
}

void sub_02056BDC(FieldSystem *fieldSystem, const int param1, const int param2, const int param3, const int param4, const int param5, const int param6)
{
    UnkStruct_02056BDC *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02056BDC));

    v0->unk_00 = 0;
    v0->unk_04 = 0;

    Location_Set(&v0->unk_08, param1, param2, param3, param4, param5);

    v0->unk_20 = param6;

    FieldTask_Set(fieldSystem, sub_02056CFC, v0);
}

void sub_02056C18(FieldSystem *fieldSystem, const int param1, const int param2, const int param3, const int param4, const int param5)
{
    int v0;
    int v1;
    UnkStruct_02056BDC *v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02056BDC));

    v2->unk_00 = 0;
    v2->unk_04 = 0;

    Location_Set(&v2->unk_08, param1, param2, param3, param4, param5);

    v0 = fieldSystem->location->mapId;
    v1 = 0;

    if (MapHeader_IsCave(v0)) {
        if (MapHeader_IsCave(param1)) {
            v1 = 6;
        } else if (MapHeader_IsOutdoors(param1)) {
            v1 = 5;
        } else if (sub_0203A288(param1)) {
            v1 = 6;
        } else {
            GF_ASSERT(0);
        }
    } else if (MapHeader_IsOutdoors(v0)) {
        if (MapHeader_IsCave(param1)) {
            v1 = 4;
        } else if (sub_0203A288(param1)) {
            v1 = 6;
        } else {
            GF_ASSERT(0);
        }
    } else if (sub_0203A288(v0)) {
        if (MapHeader_IsOutdoors(param1)) {
            v1 = 0;
        } else if (sub_0203A288(param1)) {
            v1 = 6;
        } else if (MapHeader_IsCave(param1)) {
            v1 = 0;
        } else {
            GF_ASSERT(0);
        }
    } else {
        GF_ASSERT(0);
    }

    v2->unk_20 = v1;

    FieldTask_Set(fieldSystem, sub_02056CFC, v2);
}

static BOOL sub_02056CFC(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    Location *v2 = &v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        v1->unk_04 = 0;
        Sound_TryFadeInBGM(fieldSystem, v2->mapId);
        FieldTask_Start(taskMan, Unk_020EC560[v1->unk_20], v1);
        (v1->unk_00)++;
        break;
    case 1:
        FieldTask_FinishFieldMap(taskMan);
        (v1->unk_00)++;
        break;
    case 2:
        FieldTask_ChangeMapByLocation(taskMan, &v1->unk_08);
        (v1->unk_00)++;
        break;
    case 3:
        FieldTask_StartFieldMap(taskMan);
        (v1->unk_00)++;
        break;
    case 4:
        if (Unk_020EC57C[v1->unk_20] != NULL) {
            Unk_020EC57C[v1->unk_20](fieldSystem);
        }

        (v1->unk_00)++;
        break;
    case 5:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v2->mapId);
        FieldSystem_RequestLocationName(fieldSystem);

        v1->unk_04 = 0;
        FieldTask_Start(taskMan, Unk_020EC544[v1->unk_20], v1);
        (v1->unk_00)++;
        break;
    case 6:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static BOOL sub_02056DE4(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);

    switch (v1->unk_04) {
    case 0:
        Sound_PlayEffect(1539);

        sub_020558AC(taskMan);
        (v1->unk_04)++;
        break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_02056E20(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    UnkStruct_ov5_021D432C *v2;

    switch (v1->unk_04) {
    case 0:
        v1->unk_1C = ov5_021D431C();
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;
        ov5_021D4334(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), v2);
        (v1->unk_04)++;
        break;
    case 1:
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;

        if (ov5_021D433C(fieldSystem, v2)) {
            ov5_021D432C(v1->unk_1C);
            (v1->unk_04)++;
        }
        break;
    case 2:
        sub_020558AC(taskMan);
        (v1->unk_04)++;
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL sub_02056EA4(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    UnkStruct_ov5_021D432C *v2;

    switch (v1->unk_04) {
    case 0:
        v1->unk_1C = ov5_021D431C();
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;
        ov5_021D4334(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), v2);
        (v1->unk_04)++;
        break;
    case 1:
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;

        if (ov5_021D4A24(fieldSystem, v2, PlayerAvatar_GetDir(fieldSystem->playerAvatar))) {
            ov5_021D432C(v1->unk_1C);
            (v1->unk_04)++;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static BOOL sub_02056F1C(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    MapObject *v2;

    switch (v1->unk_04) {
    case 0: {
        int v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        v2 = Player_MapObject(fieldSystem->playerAvatar);

        if (v3 == 2) {
            LocalMapObj_SetAnimationCode(v2, 0xa);
        } else if (v3 == 3) {
            LocalMapObj_SetAnimationCode(v2, 0xb);
        } else {
            GF_ASSERT(FALSE);
        }
    }
        (v1->unk_04)++;
        break;
    case 1:
        v2 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v2) == 1) {
            sub_020656AC(v2);
            (v1->unk_04)++;
        }
        break;
    case 2:
        Sound_PlayEffect(1539);
        ov5_021D1744(0);
        (v1->unk_04)++;
        break;
    case 3:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL sub_02056FC0(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    MapObject *v2 = Player_MapObject(fieldSystem->playerAvatar);

    switch (v1->unk_04) {
    case 0: {
        UnkStruct_ov5_021D4E00 *v3;

        v3 = ov5_021D4E00();
        FieldTask_Start(taskMan, ov5_021D4FA0, v3);
        v1->unk_04++;
    } break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_02057008(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    MapObject *v2 = Player_MapObject(fieldSystem->playerAvatar);

    switch (v1->unk_04) {
    case 0: {
        UnkStruct_ov5_021D4E00 *v3;

        v3 = ov5_021D4E00();
        FieldTask_Start(taskMan, ov5_021D4F14, v3);
        v1->unk_04++;
    } break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_02057050(TaskManager *taskMan)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v2 = TaskManager_Environment(taskMan);
    UnkStruct_ov5_021D432C *v3;

    switch (v2->unk_04) {
    case 0: {
        u8 v4;
        MapObject *v5 = Player_MapObject(fieldSystem->playerAvatar);

        v4 = sub_02054F94(fieldSystem, Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar));

        if (sub_0205DAEC(v4)) {
            MapObject_SetHidden(v5, 1);
            (v2->unk_04) = 1;
        } else {
            UnkStruct_ov5_021D4E00 *v6;

            v6 = ov5_021D4E00();
            FieldTask_Start(taskMan, ov5_021D5020, v6);
            (v2->unk_04) = 3;
        }
    } break;
    case 1:
        v2->unk_1C = (UnkStruct_ov5_021D432C *)ov5_021D431C();
        v3 = (UnkStruct_ov5_021D432C *)v2->unk_1C;
        ov5_021D4334(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), v3);
        (v2->unk_04)++;
        break;
    case 2:
        v3 = (UnkStruct_ov5_021D432C *)v2->unk_1C;

        if (ov5_021D453C(fieldSystem, v3)) {
            ov5_021D432C(v3);
            {
                MapObject *v7 = Player_MapObject(fieldSystem->playerAvatar);

                MapObject_SetHidden(v7, 0);
            }
            return 1;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL sub_0205711C(TaskManager *taskMan)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v2 = TaskManager_Environment(taskMan);
    UnkStruct_ov5_021D432C *v3;

    switch (v2->unk_04) {
    case 0: {
        u8 v4;
        MapObject *v5 = Player_MapObject(fieldSystem->playerAvatar);

        v4 = sub_02054F94(fieldSystem, Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar));

        if (sub_0205DAEC(v4)) {
            MapObject_SetHidden(v5, 1);
            v2->unk_04 = 1;
            FieldTask_Change(taskMan, sub_02057050, v2);
        } else {
            UnkStruct_ov5_021D4E00 *v6;

            v6 = ov5_021D4E00();
            FieldTask_Start(taskMan, ov5_021D5150, v6);
            (v2->unk_04)++;
        }
    } break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_020571A0(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    UnkStruct_ov5_021D432C *v2;

    switch (v1->unk_04) {
    case 0:
        v1->unk_1C = ov5_021D431C();
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;
        ov5_021D4334(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), v2);
        (v1->unk_04)++;
        break;
    case 1:
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;

        if (ov5_021D4858(fieldSystem, v2, PlayerAvatar_GetDir(fieldSystem->playerAvatar))) {
            ov5_021D432C(v1->unk_1C);
            (v1->unk_04)++;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static BOOL sub_02057218(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    MapObject *v2;

    switch (v1->unk_04) {
    case 0:

        ov5_021D1744(1);
        v2 = Player_MapObject(fieldSystem->playerAvatar);

        if (1) {
            int v3;

            v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

            if (v3 == 2) {
                LocalMapObj_SetAnimationCode(v2, 0xa);
            } else if (v3 == 3) {
                LocalMapObj_SetAnimationCode(v2, 0xb);
            } else {
                GF_ASSERT(FALSE);
            }
        } else {
            GF_ASSERT(FALSE);
        }

        (v1->unk_04)++;
        break;
    case 1:
        v2 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v2) == 1) {
            sub_020656AC(v2);
            (v1->unk_04)++;
        }
        break;
    case 2:
        if (ScreenWipe_Done()) {
            (v1->unk_04)++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL sub_020572B8(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02056BDC *v1 = TaskManager_Environment(taskMan);
    MapObject *v2 = Player_MapObject(fieldSystem->playerAvatar);

    switch (v1->unk_04) {
    case 0: {
        UnkStruct_ov5_021D4E00 *v3;

        v3 = ov5_021D4E00();
        FieldTask_Start(taskMan, ov5_021D4E10, v3);
        v1->unk_04++;
    } break;
    case 1:
        return 1;
    }

    return 0;
}

static void sub_02057300(FieldSystem *fieldSystem)
{
    int v0;
    VecFx32 v1;

    v0 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
    PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v1);

    if (v0 == 3) {
        v1.x -= (FX32_ONE * 16);
    } else {
        v1.x += (FX32_ONE * 16);
    }

    v1.y = sub_02054FBC(fieldSystem, v1.y, v1.x, v1.z, NULL);

    sub_0205ECB8(fieldSystem->playerAvatar, &v1, v0);
    Camera_SetTargetAndUpdatePosition(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_TrackTarget(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem->camera);
}

static void sub_02057368(FieldSystem *fieldSystem)
{
    int v0, v1, v2;
    VecFx32 v3;
    u8 v4;

    v2 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
    PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v3);

    v0 = Player_GetXPos(fieldSystem->playerAvatar);
    v1 = Player_GetZPos(fieldSystem->playerAvatar);
    v4 = sub_02054F94(fieldSystem, v0, v1);

    if (sub_0205DC44(v4)) {
        v3.x += (FX32_ONE * 16);
        v2 = 2;
    } else if (sub_0205DC50(v4)) {
        v3.x -= (FX32_ONE * 16);
        v2 = 3;
    } else {
        (void)0;
    }

    v3.y = sub_02054FBC(fieldSystem, v3.y, v3.x, v3.z, NULL);

    sub_0205ECB8(fieldSystem->playerAvatar, &v3, v2);
    Camera_SetTargetAndUpdatePosition(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_TrackTarget(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem->camera);
}
