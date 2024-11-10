#include "overlay005/ov5_021EE75C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/struct_ov6_0223E6EC.h"

#include "map_tile_behavior.h"
#include "player_avatar.h"
#include "unk_02054D00.h"

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov5_021EE75C;

static void ov5_021EE75C(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov5_021EE75C *v0 = (UnkStruct_ov5_021EE75C *)param2;

    v0->unk_00 = 0;
    v0->unk_04 = 0;
}

static void ov5_021EE764(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    return;
}

static void ov5_021EE768(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    u8 v0;
    int v1, v2;
    u8 v3;
    UnkStruct_ov5_021EE75C *v4 = (UnkStruct_ov5_021EE75C *)param2;

    v1 = Player_GetXPos(fieldSystem->playerAvatar);
    v2 = Player_GetZPos(fieldSystem->playerAvatar);

    if ((v4->unk_00 == v1) && (v4->unk_04 == v2)) {
        return;
    }

    v4->unk_00 = v1;
    v4->unk_04 = v2;

    v0 = FieldSystem_GetTileBehavior(fieldSystem, v1, v2);

    if (TileBehavior_IsBikeSlopeBottom(v0)) {
        v3 = 0;
    } else if (TileBehavior_IsBikeSlopeTop(v0)) {
        v3 = 1;
    } else {
        return;
    }

    ov5_021D4D78(v1, v2, v3, fieldSystem);
}

static const UnkStruct_ov6_0223E6EC Unk_ov5_021FF4F0 = {
    0x2,
    sizeof(UnkStruct_ov5_021EE75C),
    ov5_021EE75C,
    ov5_021EE764,
    ov5_021EE768,
    NULL
};

void ov5_021EE7C0(FieldSystem *fieldSystem)
{
    ov5_021D1B6C(fieldSystem->unk_04->unk_04, &Unk_ov5_021FF4F0);
}
