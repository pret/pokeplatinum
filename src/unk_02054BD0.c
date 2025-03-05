#include "unk_02054BD0.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "heap.h"
#include "map_matrix.h"
#include "narc.h"

typedef struct UnkStruct_02054C18_t {
    u8 unk_00[225];
    u16 unk_E2[16384];
} UnkStruct_02054C18;

static void sub_02054C18(MapMatrix *param0, UnkStruct_02054C18 *param1, const u8 param2);
static const u8 sub_02054CC4(const u16 param0, u16 *param1, u8 *param2);

void sub_02054BD0(FieldSystem *fieldSystem, const u8 param1)
{
    int v0;
    void *v1;

    if (fieldSystem->unk_58 == NULL) {
        fieldSystem->unk_58 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_02054C18));

        sub_02054C18(fieldSystem->mapMatrix, fieldSystem->unk_58, param1);
    }
}

void sub_02054BF8(FieldSystem *fieldSystem)
{
    if (fieldSystem->unk_58 != NULL) {
        Heap_FreeToHeap(fieldSystem->unk_58);
        fieldSystem->unk_58 = NULL;
    }
}

u16 const *sub_02054C0C(const u32 param0, const UnkStruct_02054C18 *param1)
{
    u16 const *v0;
    u8 v1 = param1->unk_00[param0];
    v0 = (u16 const *)&(param1->unk_E2[(32 * 32) * v1]);

    return v0;
}

static void sub_02054C18(MapMatrix *param0, UnkStruct_02054C18 *param1, const u8 param2)
{
    u8 v0;
    u16 v1;
    u8 v2;
    u16 v3;
    int v4, v5;
    int v6, v7;
    u16 v8[16];
    void *v9;
    NARC *v10;

    v0 = 0;
    v7 = MapMatrix_GetWidth(param0);
    v6 = MapMatrix_GetHeight(param0);

    for (v5 = 0; v5 < v6; v5++) {
        for (v4 = 0; v4 < v7; v4++) {
            v3 = v5 * v7 + v4;
            v1 = MapMatrix_GetLandDataIdByIndex2(v3, param0);
            v2 = sub_02054CC4(v1, v8, &v0);
            param1->unk_00[v3] = v2;
        }
    }

    v10 = NARC_ctor(NARC_INDEX_FIELDDATA__LAND_DATA__LAND_DATA, 11);

    for (v4 = 0; v4 < param2; v4++) {
        v1 = v8[v4];
        v9 = &(param1->unk_E2[(32 * 32) * v4]);

        NARC_ReadFromMember(v10, v1, 0x10, 0x800, v9);
    }

    NARC_dtor(v10);
}

static const u8 sub_02054CC4(const u16 param0, u16 *param1, u8 *param2)
{
    u8 v0;

    for (v0 = 0; v0 < (*param2); v0++) {
        if (param1[v0] == param0) {
            return v0;
        }
    }

    GF_ASSERT(v0 < 16);

    param1[v0] = param0;
    (*param2)++;

    return v0;
}
