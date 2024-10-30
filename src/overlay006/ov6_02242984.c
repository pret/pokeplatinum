#include "overlay006/ov6_02242984.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02242F74.h"
#include "overlay006/ov6_022477B8.h"
#include "overlay006/wild_encounters.h"

#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "location.h"
#include "map_header_data.h"
#include "narc.h"
#include "player_avatar.h"
#include "unk_0202631C.h"
#include "unk_0202D7A8.h"
#include "unk_02039C80.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov6_02242A10;

typedef struct UnkStruct_ov6_02242A8C_t {
    UnkStruct_ov6_02242A10 unk_00[6];
    Location unk_18;
    FieldSystem *fieldSystem;
    int unk_30;
} UnkStruct_ov6_02242A8C;

int ov6_02242984(FieldSystem *fieldSystem)
{
    int v2[MAX_GRASS_ENCOUNTERS];

    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);

    for (u8 i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
        v2[i] = encounterData->grassEncounters.encounters[i].species;
    }

    BOOL v1 = Pokedex_IsNationalDexObtained(SaveData_Pokedex(FieldSystem_GetSaveData(fieldSystem)));

    ov6_02242F74(sub_0202D814(sub_0202D834(fieldSystem->saveData), 1), v1, fieldSystem->location->mapId, &v2[6], &v2[7]);
    WildEncounters_ReplaceTimedEncounters(encounterData, &v2[2], &v2[3]);
    WildEncounters_ReplaceDualSlotEncounters(encounterData, v1, &v2[8], &v2[9]);

    return v2[inline_020564D0(MAX_GRASS_ENCOUNTERS)];
}

UnkStruct_ov6_02242A8C *ov6_02242A10(const int param0, FieldSystem *fieldSystem)
{
    u8 v0;
    UnkStruct_ov6_02242A8C *v1;

    v1 = Heap_AllocFromHeapAtEnd(param0, sizeof(UnkStruct_ov6_02242A8C));
    v1->fieldSystem = fieldSystem;

    {
        u8 v2;
        UnkStruct_ov6_02242A10 *v3;

        v3 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 11, 4);

        for (v0 = 0; v0 < 5; v0++) {
            v2 = inline_020564D0(36);
            v1->unk_00[v0].unk_00 = v3[v2].unk_00;
            v1->unk_00[v0].unk_02 = v3[v2].unk_02;
        }

        {
            v1->unk_00[5].unk_00 = Player_GetXPos(fieldSystem->playerAvatar);
            v1->unk_00[5].unk_02 = Player_GetZPos(fieldSystem->playerAvatar);
            v1->unk_30 = fieldSystem->location->mapId;
        }

        Heap_FreeToHeap(v3);
    }

    return v1;
}

void ov6_02242A8C(UnkStruct_ov6_02242A8C *param0)
{
    Heap_FreeToHeap(param0);
}

void ov6_02242A94(const u8 param0, UnkStruct_ov6_02242A8C *param1)
{
    int v0;
    int v1, v2;

    if (param0 == 0) {
        int v3;

        v3 = 240;
        v1 = param1->unk_00[param0].unk_00 / 32;
        v2 = param1->unk_00[param0].unk_02 / 32;
        v0 = sub_02039F10(v3, v1, v2);
    } else if (param0 == 5) {
        v0 = param1->unk_30;
    } else {
        v1 = param1->unk_00[param0].unk_00 / 32;
        v2 = param1->unk_00[param0].unk_02 / 32;
        v0 = sub_02039E30(param1->fieldSystem->unk_2C, v1, v2);
    }

    Location_Set(&param1->unk_18, v0, -1, param1->unk_00[param0].unk_00, param1->unk_00[param0].unk_02, 0);
}

Location *ov6_02242AEC(UnkStruct_ov6_02242A8C *param0)
{
    return &param0->unk_18;
}
