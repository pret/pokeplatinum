#include "overlay005/ov5_021DD6FC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "heap.h"
#include "map_header.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"
#include "unk_02071CFC.h"

typedef struct UnkStruct_ov5_021DD9C8_t {
    BOOL unk_00;
    u8 unk_04;
    SysTask *unk_08;
    int unk_0C;
    u16 unk_10;
    BOOL unk_14;
    int unk_18;
    BGL *unk_1C;
    Window unk_20;
    u8 unk_30;
    u8 unk_31;
    NNSG2dCharacterData *unk_34;
    void *unk_38;
    MessageLoader *unk_3C;
    Strbuf *unk_40;
} UnkStruct_ov5_021DD9C8;

static void ov5_021DD718(UnkStruct_ov5_021DD9C8 *param0);
static void ov5_021DD744(UnkStruct_ov5_021DD9C8 *param0, u8 param1, u16 param2, u8 param3, u8 param4);
static void ov5_021DD880(UnkStruct_ov5_021DD9C8 *param0);
static void ov5_021DD894(UnkStruct_ov5_021DD9C8 *param0, BGL *param1);
static void ov5_021DD8A4(SysTask *param0, void *param1);
static void ov5_021DD7A0(UnkStruct_ov5_021DD9C8 *param0, const int param1);
static void ov5_021DD980(UnkStruct_ov5_021DD9C8 *param0);
static void ov5_021DD954(UnkStruct_ov5_021DD9C8 *param0, const Strbuf *param1);

static void ov5_021DD6FC(void *param0, u16 param1, u16 param2)
{
    DC_FlushRange((void *)param0, param1 * 32);
    GX_LoadBGPltt((const void *)param0, param2 * 32, param1 * 32);
}

static void ov5_021DD718(UnkStruct_ov5_021DD9C8 *param0)
{
    BGL_AddWindow(param0->unk_1C, &param0->unk_20, 3, 0, 0, 32, 5, 7, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (32 * 5)));
}

static void ov5_021DD744(UnkStruct_ov5_021DD9C8 *param0, u8 param1, u16 param2, u8 param3, u8 param4)
{
    void *v0;
    u32 v1;
    NNSG2dPaletteData *v2;
    u8 v3;

    v3 = param0->unk_31 * 2;

    param0->unk_38 = sub_02006F50(160, v3, 0, &param0->unk_34, 4);
    sub_0201958C(param0->unk_1C, param1, param0->unk_34->pRawData, param0->unk_34->szByte, param2);
    v0 = sub_02006F88(160, v3 + 1, &v2, 4);

    ov5_021DD6FC(v2->pRawData, 1, param3);
    Heap_FreeToHeap(v0);
}

static void ov5_021DD7A0(UnkStruct_ov5_021DD9C8 *param0, const int param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    u8 v6;
    u8 v7;

    v3 = (param1 + 8) / 8 * 8;
    v4 = v3 - param1;
    v5 = v4 / 2;

    if (8 <= (4 + v5)) {
        v6 = 0;
    } else {
        int v8;

        v8 = 8 - (4 + v5);
        v8 *= 2;
        v6 = (v8 + (8 - 1)) / 8;
    }

    v0 = param1;

    if (v0 <= 0) {
        v1 = 0;
        v2 = 0;
    } else {
        v1 = (v0 + 8) / 8;
        v1 += v6;

        v2 = (((v1 * 8) + (4 * 2)) - param1) / 2;
    }

    param0->unk_30 = (8 - 4) + v2;

    {
        int v9, v10;

        ov5_021DD744(param0, 3, (1024 - (18 + 12) - 9 - (32 * 8)), 7, 0);
        BGL_FillWindow(&param0->unk_20, 0);

        for (v9 = 0; v9 < 85; v9++) {
            sub_0201ADDC(&param0->unk_20, param0->unk_34->pRawData, v9 * 8, 0, 8, 8, (v9 % 17) * 8, (v9 / 17) * 8, 8, 8);
        }

        sub_0201A954(&param0->unk_20);
        Heap_FreeToHeap(param0->unk_38);
    }
}

static void ov5_021DD880(UnkStruct_ov5_021DD9C8 *param0)
{
    param0->unk_00 = 0;
    param0->unk_04 = 0;
    param0->unk_08 = NULL;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_14 = 0;
    param0->unk_18 = 0;
    param0->unk_1C = NULL;
}

static void ov5_021DD894(UnkStruct_ov5_021DD9C8 *param0, BGL *param1)
{
    ov5_021DD880(param0);
    param0->unk_1C = param1;
}

static void ov5_021DD8A4(SysTask *param0, void *param1)
{
    u16 v0[22];
    u32 v1;
    UnkStruct_ov5_021DD9C8 *v2 = (UnkStruct_ov5_021DD9C8 *)(param1);

    switch (v2->unk_04) {
    case 1:
        v2->unk_0C -= 4;

        if (v2->unk_0C < 0) {
            v2->unk_0C = 0;
        }

        sub_02019184(v2->unk_1C, 3, 3, v2->unk_0C);

        if (v2->unk_0C == 0) {
            v2->unk_10 = 0;
            v2->unk_04 = 3;
        }

        break;
    case 3:
        v2->unk_10++;

        if (v2->unk_10 >= 60) {
            v2->unk_10 = 0;
            v2->unk_04 = 2;
        }

        break;
    case 2:
        v2->unk_0C += 4;

        if (v2->unk_0C > 38) {
            v2->unk_0C = 38;
        }

        sub_02019184(v2->unk_1C, 3, 3, v2->unk_0C);

        if (v2->unk_0C == 38) {
            if (v2->unk_14) {
                v2->unk_14 = 0;

                v1 = sub_02071CFC(v2->unk_3C, v2->unk_18, v2->unk_40);

                ov5_021DD7A0(v2, v1);
                ov5_021DD954(v2, v2->unk_40);
                v2->unk_04 = 1;
            } else {
                ov5_021DDA78(v2);
                return;
            }
        }

        break;
    case 0:
    default:
        break;
    }
}

static void ov5_021DD954(UnkStruct_ov5_021DD9C8 *param0, const Strbuf *param1)
{
    u32 v0;

    v0 = TEXT_COLOR(3, 2, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param1, param0->unk_30, (8 * 2), TEXT_SPEED_INSTANT, v0, NULL);
}

static void ov5_021DD980(UnkStruct_ov5_021DD9C8 *param0)
{
    param0->unk_04 = 2;
    param0->unk_10 = 0;
}

UnkStruct_ov5_021DD9C8 *ov5_021DD98C(BGL *param0)
{
    UnkStruct_ov5_021DD9C8 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DD9C8));
    v0->unk_40 = Strbuf_Init(22, 4);

    ov5_021DD894(v0, param0);
    ov5_021DD718(v0);

    v0->unk_3C = MessageLoader_Init(1, 26, 433, 4);
    return v0;
}

void ov5_021DD9C8(UnkStruct_ov5_021DD9C8 *param0)
{
    MessageLoader_Free(param0->unk_3C);
    BGL_DeleteWindow(&param0->unk_20);
    Strbuf_Free(param0->unk_40);
    Heap_FreeToHeap(param0);

    param0 = NULL;
}

void ov5_021DD9E8(UnkStruct_ov5_021DD9C8 *param0, const int param1, const int param2)
{
    u16 v0[22];
    u32 v1;

    param0->unk_18 = param1;

    if (param0->unk_00 == 0) {
        param0->unk_00 = 1;

        sub_02019184(param0->unk_1C, 3, 3, 38);

        param0->unk_0C = 38;
        param0->unk_08 = SysTask_Start(ov5_021DD8A4, param0, 0);
        param0->unk_04 = 1;

        v1 = sub_02071CFC(param0->unk_3C, param0->unk_18, param0->unk_40);
        param0->unk_31 = param2;

        ov5_021DD7A0(param0, v1);
        ov5_021DD954(param0, param0->unk_40);
    } else {
        switch (param0->unk_04) {
        case 1:
        case 3:
            ov5_021DD980(param0);
            param0->unk_14 = 1;
            param0->unk_31 = param2;
            break;
        case 2:
            param0->unk_14 = 1;
            param0->unk_31 = param2;
            break;
        case 0:
        default:
            GF_ASSERT(0);
            break;
        }
    }
}

void ov5_021DDA78(UnkStruct_ov5_021DD9C8 *param0)
{
    if (param0->unk_08 != NULL) {
        SysTask_Done(param0->unk_08);
    }

    sub_0201ACF4(&param0->unk_20);
    sub_02019184(param0->unk_1C, 3, 3, 0);

    {
        BGL *v0 = param0->unk_1C;
        ov5_021DD894(param0, v0);
    }
}

void FieldSystem_RequestLocationName(FieldSystem *fieldSystem)
{
    int v0;
    int v1;

    if (MapHeader_GetMapLabelWindowID(fieldSystem->location->mapId) == 0) {
        return;
    }

    if (!sub_0203A288(fieldSystem->location->mapId)) {
        v0 = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
        v1 = MapHeader_GetMapLabelWindowID(fieldSystem->location->mapId);

        if (v1 != 0) {
            v1--;
        }

        ov5_021DD9E8(fieldSystem->unk_04->unk_08, v0, v1);
    }
}
