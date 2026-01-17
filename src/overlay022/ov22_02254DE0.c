#include "overlay022/ov22_02254DE0.h"

#include <nitro.h>
#include <string.h>

#include "overlay022/ov22_02255094.h"
#include "overlay022/struct_ov22_02254DE0.h"
#include "overlay022/struct_ov22_0225500C.h"
#include "overlay022/struct_ov22_02255040.h"

#include "heap.h"
#include "software_sprite.h"
#include "system.h"
#include "touch_screen.h"

static UnkStruct_ov22_02255040 *ov22_02254FE0(UnkStruct_ov22_02254DE0 *param0);
static SoftwareSprite *ov22_0225500C(UnkStruct_ov22_0225500C *param0);
static void ov22_02255040(UnkStruct_ov22_02255040 *param0, TouchScreenHitTable *hitTable);

UnkStruct_ov22_02254DE0 *ov22_02254DE0(int param0, enum HeapID heapID)
{
    UnkStruct_ov22_02254DE0 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov22_02254DE0));
    v0->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov22_02255040) * param0);
    memset(v0->unk_00, 0, sizeof(UnkStruct_ov22_02255040) * param0);
    v0->unk_04 = param0;

    return v0;
}

void ov22_02254E0C(UnkStruct_ov22_02254DE0 *param0)
{
    Heap_Free(param0->unk_00);
    Heap_Free(param0);
    param0 = NULL;
}

UnkStruct_ov22_02255040 *ov22_02254E20(UnkStruct_ov22_0225500C *param0)
{
    UnkStruct_ov22_02255040 *v0 = ov22_02254FE0(param0->unk_00);
    GF_ASSERT(v0);

    v0->unk_00 = param0->unk_18;
    v0->unk_04 = ov22_0225500C(param0);

    return v0;
}

BOOL ov22_02254E44(UnkStruct_ov22_02255040 *param0)
{
    TouchScreenHitTable v0;

    ov22_02255040(param0, &v0);
    return TouchScreen_LocationHeld(&v0);
}

BOOL ov22_02254E54(UnkStruct_ov22_02255040 *param0, int *param1, int *param2, NNSG2dCharacterData *param3)
{
    BOOL v0;
    int v1, v2;
    int v3, v4;

    v0 = ov22_02254E44(param0);

    if (v0 == 0) {
        return 0;
    }

    ov22_02254F00(param0, &v1, &v2);

    *param1 = gSystem.touchX - v1;
    *param2 = gSystem.touchY - v2;

    for (v3 = (*param2 - 4); v3 < (*param2 + 4); v3++) {
        if (v3 >= 0) {
            for (v4 = (*param1 - 4); v4 < (*param1 + 4); v4++) {
                if (v4 >= 0) {
                    v0 = ov22_02255420(param3, v4, v3, 0);

                    if (v0 == 0) {
                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

BOOL ov22_02254EDC(UnkStruct_ov22_02255040 *param0, int param1, int param2)
{
    TouchScreenHitTable v0;

    ov22_02255040(param0, &v0);
    return TouchScreen_IsTouchInHitTable(&v0, param1, param2);
}

void ov22_02254EF4(UnkStruct_ov22_02255040 *param0, s16 param1, s16 param2)
{
    SoftwareSprite_SetPosition(param0->unk_04, param1, param2);
}

void ov22_02254F00(UnkStruct_ov22_02255040 *param0, int *param1, int *param2)
{
    NNSG2dSVec2 v0;

    v0 = SoftwareSprite_GetPosition(param0->unk_04);
    *param1 = v0.x;
    *param2 = v0.y;
}

void ov22_02254F30(UnkStruct_ov22_02255040 *param0, int *param1, int *param2)
{
    NNSG2dSVec2 v0;

    v0 = SoftwareSprite_GetDimensions(param0->unk_04);
    *param1 = v0.x;
    *param2 = v0.y;
}

void ov22_02254F60(UnkStruct_ov22_02255040 *param0, BOOL param1)
{
    SoftwareSprite_SetVisible(param0->unk_04, param1);
}

void ov22_02254F6C(UnkStruct_ov22_02255040 *param0, int param1)
{
    SoftwareSprite_SetPriority(param0->unk_04, param1);
}

int ov22_02254F78(UnkStruct_ov22_02255040 *param0)
{
    return SoftwareSprite_GetPriority(param0->unk_04);
}

void ov22_02254F84(UnkStruct_ov22_02255040 *param0, int *param1, int *param2)
{
    int v0, v1;

    ov22_02254F30(param0, &v0, &v1);

    switch (v0) {
    case 16:
        *param1 = 0;
        break;
    case 32:
        *param1 = 10;
        break;
    case 64:
        *param1 = 20;
        break;
    }

    switch (v1) {
    case 16:
        *param2 = 0;
        break;
    case 32:
        *param2 = 10;
        break;
    case 64:
        *param2 = 20;
        break;
    }
}

static UnkStruct_ov22_02255040 *ov22_02254FE0(UnkStruct_ov22_02254DE0 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_04 == NULL) {
            return param0->unk_00 + v0;
        }
    }

    return NULL;
}

static SoftwareSprite *ov22_0225500C(UnkStruct_ov22_0225500C *param0)
{
    SoftwareSpriteTemplate v0;

    v0.softSpriteMan = param0->unk_04;
    v0.chars = param0->unk_08;
    v0.palette = param0->unk_0C;
    v0.xPos = param0->unk_10;
    v0.yPos = param0->unk_14;
    v0.rotation = 0;
    v0.alpha = 31;
    v0.priority = 0;
    v0.paletteSlot = param0->unk_1C;

    return SoftwareSprite_Load(&v0);
}

static void ov22_02255040(UnkStruct_ov22_02255040 *param0, TouchScreenHitTable *hitTable)
{
    NNSG2dSVec2 v0 = SoftwareSprite_GetPosition(param0->unk_04);
    NNSG2dSVec2 v1 = SoftwareSprite_GetDimensions(param0->unk_04);

    hitTable->rect.top = v0.y;
    hitTable->rect.bottom = v0.y + v1.y;
    hitTable->rect.left = v0.x;
    hitTable->rect.right = v0.x + v1.x;
}
