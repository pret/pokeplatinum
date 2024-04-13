#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "message.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "pokemon.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay006/battle_params.h"

#include "unk_02005474.h"
#include "message.h"
#include "string_template.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_0202CD50.h"
#include "unk_020508D4.h"
#include "unk_02050A74.h"
#include "unk_02051D8C.h"
#include "unk_0205D8CC.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_020655F4.h"
#include "unk_0206CCB0.h"
#include "unk_020711EC.h"
#include "party.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F08CC.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay006/ov6_02240C9C.h"

typedef struct {
    int unk_00;
    u32 unk_04;
    BOOL unk_08;
    int unk_0C;
    BattleParams * unk_10;
    SysTask * unk_14;
} UnkStruct_ov5_021F08CC;

typedef struct {
    BOOL unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    FieldSystem * unk_20;
    UnkStruct_ov101_021D5D90 * unk_24;
    u8 unk_28;
    Strbuf* unk_2C;
    Strbuf* unk_30;
    StringTemplate * unk_34;
    Window unk_38;
    MessageLoader * unk_48;
} UnkStruct_ov5_021F0D6C;

static void ov5_021F0A04(SysTask * param0, void * param1);
static void * ov5_021F0D1C(u32 param0);
static int ov5_021F0D40(void);
static int ov5_021F0D54(void);
static void ov5_021F0D6C(UnkStruct_ov5_021F0D6C * param0);
static void ov5_021F0DA4(UnkStruct_ov5_021F0D6C * param0);
static void ov5_021F0DC4(UnkStruct_ov5_021F0D6C * param0);
static void ov5_021F0DE8(UnkStruct_ov5_021F0D6C * param0, u32 param1);
static int ov5_021F0E24(UnkStruct_ov5_021F0D6C * param0);
static u16 ov5_021F0E58(int param0);

int(*const Unk_ov5_021FFA0C[])(UnkStruct_ov5_021F0D6C *, PlayerAvatar *, LocalMapObject *);
const int Unk_ov5_021FFA00[];

void * ov5_021F08CC (FieldSystem * param0, u32 param1, int param2)
{
    UnkStruct_ov5_021F08CC * v0 = Heap_AllocFromHeapAtEnd(param1, sizeof(UnkStruct_ov5_021F08CC));

    memset(v0, 0, sizeof(UnkStruct_ov5_021F08CC));

    v0->unk_0C = param2;
    v0->unk_04 = ov5_021F0E58(param2);

    return v0;
}

BOOL ov5_021F08F8 (TaskManager * param0)
{
    FieldSystem * v0 = TaskMan_FieldSystem(param0);
    UnkStruct_ov5_021F08CC * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        MapObjectMan_PauseAllMovement(v0->unk_38);
        v1->unk_10 = NULL;
        v1->unk_08 = ov6_0224106C(v0, v1->unk_0C, &v1->unk_10);
        v1->unk_14 = ov5_021F09B4(v0, v1->unk_0C, v1->unk_08);
        v1->unk_00++;
        break;
    case 1:
        if (ov5_021F09D8(v1->unk_14) == 1) {
            int v2 = ov5_021F09E4(v1->unk_14);

            ov5_021F09F0(v1->unk_14);

            if (v2 == 1) {
                {
                    Pokemon * v3 = Party_GetPokemonBySlotIndex(v1->unk_10->parties[1], 0);
                    sub_0206D340(v0, 1, v1->unk_04, v3);
                }

                {
                    UnkStruct_0202CD88 * v4 = sub_0202CD88(v0->saveData);
                    sub_0202CF28(v4, (1 + 9));
                }

                sub_02050E78(v0, param0, v1->unk_10);
                Heap_FreeToHeap(v1);

                return 0;
            }

            if (v1->unk_10 != NULL) {
                sub_020520A4(v1->unk_10);
            }

            MapObjectMan_UnpauseAllMovement(v0->unk_38);
            Heap_FreeToHeap(v1);

            return 1;
        }
        break;
    }

    return 0;
}

SysTask * ov5_021F09B4 (FieldSystem * param0, int param1, BOOL param2)
{
    SysTask * v0;
    UnkStruct_ov5_021F0D6C * v1 = ov5_021F0D1C(sizeof(UnkStruct_ov5_021F0D6C));

    v1->unk_20 = param0;
    v1->unk_1C = param1;
    v1->unk_00 = param2;

    v0 = SysTask_Start(ov5_021F0A04, v1, 128);

    return v0;
}

int ov5_021F09D8 (SysTask * param0)
{
    UnkStruct_ov5_021F0D6C * v0 = sub_0201CED0(param0);
    return v0->unk_04;
}

int ov5_021F09E4 (SysTask * param0)
{
    UnkStruct_ov5_021F0D6C * v0 = sub_0201CED0(param0);
    return v0->unk_08;
}

void ov5_021F09F0 (SysTask * param0)
{
    UnkStruct_ov5_021F0D6C * v0 = sub_0201CED0(param0);

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

static void ov5_021F0A04 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021F0D6C * v0 = param1;
    PlayerAvatar * v1 = v0->unk_20->playerAvatar;
    LocalMapObject * v2 = Player_LocalMapObject(v1);

    while (Unk_ov5_021FFA0C[v0->unk_0C](v0, v1, v2)) {
        (void)0;
    }
}

static int ov5_021F0A30 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    ov5_021F0D6C(param0);
    sub_02062DDC(param2);
    param0->unk_0C = 1;

    return 1;
}

static int ov5_021F0A48 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    if (LocalMapObj_IsAnimationSet(param2) == 1) {
        sub_020656AC(param2);
        ov5_021DFB54(param1, (1 << 5));
        ov5_021DFB5C(param1);
        sub_02062A0C(param2, 0x1);
        param0->unk_0C = 2;
    }

    return 0;
}

static int ov5_021F0A80 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_10++;

    if (param0->unk_10 == 10) {
        Sound_PlayEffect(1616);
    }

    if (param0->unk_10 < 34) {
        return 0;
    }

    if (param0->unk_00 == 1) {
        param0->unk_0C = 3;
    } else {
        param0->unk_0C = 12;
    }

    param0->unk_10 = 0;
    return 1;
}

static int ov5_021F0AB8 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_14 = ((LCRNG_Next() % 4) + 1) * 30;
    param0->unk_18 = Unk_ov5_021FFA00[param0->unk_1C];
    param0->unk_0C = 4;

    return 1;
}

static int ov5_021F0AEC (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_14--;

    if (ov5_021F0D40() == 1) {
        param0->unk_0C = 10;
        return 1;
    }

    if (param0->unk_14 > 0) {
        return 0;
    }

    sub_02062A0C(param2, 0x2);

    param0->unk_24 = ov5_021F5D8C(param2, 0, 1, 0);
    param0->unk_0C = 5;

    return 1;
}

static int ov5_021F0B30 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_18--;

    if (ov5_021F0D40() == 1) {
        param0->unk_0C = 6;
        return 1;
    }

    if (param0->unk_18 > 0) {
        return 0;
    }

    param0->unk_0C = 11;

    return 0;
}

static int ov5_021F0B5C (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    ov5_021F5C58(param0->unk_24);
    sub_02062A0C(param2, 0x3);

    param0->unk_10 = 0;
    param0->unk_0C = 7;

    return 0;
}

static int ov5_021F0B7C (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_10++;

    if (param0->unk_24 != NULL) {
        sub_0207136C(param0->unk_24);
        param0->unk_24 = NULL;
    }

    if (param0->unk_10 > 15) {
        param0->unk_10 = 0;
        param0->unk_0C = 8;
        ov5_021F0DE8(param0, 57);
    }

    return 0;
}

static int ov5_021F0BB0 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    if (ov5_021F0E24(param0) == 0) {
        return 0;
    }

    param0->unk_0C = 9;
    return 1;
}

static int ov5_021F0BC8 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_08 = 1;
    param0->unk_0C = 15;

    return 1;
}

static int ov5_021F0BD4 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    sub_02062A0C(param2, 0x0);
    ov5_021F0DE8(param0, 56);

    param0->unk_10 = 16;
    param0->unk_0C = 14;

    return 1;
}

static int ov5_021F0BF4 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    sub_02062A0C(param2, 0x0);
    ov5_021F0DE8(param0, 55);

    param0->unk_10 = 16;
    param0->unk_0C = 14;

    {
        UnkStruct_0202CD88 * v0 = sub_0202CD88(param0->unk_20->saveData);
        sub_0202CF28(v0, (((70 + 1)) + 29));
    }

    sub_0206D340(param0->unk_20, 0, ov5_021F0E58(param0->unk_1C), NULL);

    return 1;
}

static int ov5_021F0C34 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_10 = 30 * 4;
    param0->unk_0C = 13;

    return 1;
}

static int ov5_021F0C40 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_10--;

    if (ov5_021F0D40() == 1) {
        param0->unk_0C = 10;
        return 1;
    }

    if (param0->unk_10) {
        return 0;
    }

    sub_02062A0C(param2, 0x0);
    ov5_021F0DE8(param0, 54);

    param0->unk_10 = 16;
    param0->unk_0C = 14;

    return 0;
}

static int ov5_021F0C84 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_10++;

    if (param0->unk_10 < 16) {
        return 0;
    }

    param0->unk_10 = 16;

    if (ov5_021F0E24(param0) == 0) {
        return 0;
    }

    param0->unk_0C = 15;

    return 1;
}

static int ov5_021F0CB0 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    if (param0->unk_24 != NULL) {
        ov5_021F5C58(param0->unk_24);
    }

    ov5_021F0DA4(param0);

    {
        int v0 = sub_0205EB74(param1);
        u32 v1 = sub_0205EED8(v0);

        ov5_021DFB54(param1, v1);
        ov5_021DFB5C(param1);
    }

    param0->unk_10 = 0;
    param0->unk_0C = 16;

    return 1;
}

static int ov5_021F0CEC (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    param0->unk_10++;

    if (param0->unk_10 > 2) {
        param0->unk_0C = 17;
    }

    return 0;
}

static int ov5_021F0D00 (UnkStruct_ov5_021F0D6C * param0, PlayerAvatar * param1, LocalMapObject * param2)
{
    if (param0->unk_24 != NULL) {
        sub_0207136C(param0->unk_24);
        param0->unk_24 = NULL;
    }

    param0->unk_04 = 1;
    return 0;
}

static int(*const Unk_ov5_021FFA0C[])(UnkStruct_ov5_021F0D6C *, PlayerAvatar *, LocalMapObject *) = {
    ov5_021F0A30,
    ov5_021F0A48,
    ov5_021F0A80,
    ov5_021F0AB8,
    ov5_021F0AEC,
    ov5_021F0B30,
    ov5_021F0B5C,
    ov5_021F0B7C,
    ov5_021F0BB0,
    ov5_021F0BC8,
    ov5_021F0BD4,
    ov5_021F0BF4,
    ov5_021F0C34,
    ov5_021F0C40,
    ov5_021F0C84,
    ov5_021F0CB0,
    ov5_021F0CEC,
    ov5_021F0D00
};

static void * ov5_021F0D1C (u32 param0)
{
    void * v0 = Heap_AllocFromHeapAtEnd(4, param0);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param0);

    return v0;
}

static int ov5_021F0D40 (void)
{
    if ((gCoreSys.pressedKeys & PAD_BUTTON_A)) {
        return 1;
    }

    return 0;
}

static int ov5_021F0D54 (void)
{
    if ((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
        return 1;
    }

    return 0;
}

static void ov5_021F0D6C (UnkStruct_ov5_021F0D6C * param0)
{
    FieldSystem * v0 = param0->unk_20;

    param0->unk_48 = MessageLoader_Init(1, 26, 213, 4);
    param0->unk_2C = Strbuf_Init(0x400, 4);
    param0->unk_30 = Strbuf_Init(0x400, 4);
    param0->unk_34 = StringTemplate_New(8, 64, 4);
}

static void ov5_021F0DA4 (UnkStruct_ov5_021F0D6C * param0)
{
    StringTemplate_Free(param0->unk_34);
    Strbuf_Free(param0->unk_2C);
    Strbuf_Free(param0->unk_30);
    MessageLoader_Free(param0->unk_48);
}

static void ov5_021F0DC4 (UnkStruct_ov5_021F0D6C * param0)
{
    FieldSystem * v0 = param0->unk_20;

    sub_0205D8F4(v0->unk_08, &param0->unk_38, 3);
    sub_0205D944(&param0->unk_38, sub_02025E44(v0->saveData));
}

static void ov5_021F0DE8 (UnkStruct_ov5_021F0D6C * param0, u32 param1)
{
    ov5_021F0DC4(param0);

    {
        FieldSystem * v0 = param0->unk_20;

        MessageLoader_GetStrbuf(param0->unk_48, param1, param0->unk_30);
        StringTemplate_Format(param0->unk_34, param0->unk_2C, param0->unk_30);

        param0->unk_28 = sub_0205D994(&param0->unk_38, param0->unk_2C, sub_02025E44(v0->saveData), 1);
    }
}

static int ov5_021F0E24 (UnkStruct_ov5_021F0D6C * param0)
{
    if ((sub_0205DA04(param0->unk_28) == 1) && (ov5_021F0D54() == 1)) {
        sub_0200E084(&param0->unk_38, 0);
        BGL_DeleteWindow(&param0->unk_38);
        return 1;
    }

    return 0;
}

static u16 ov5_021F0E58 (int param0)
{
    switch (param0) {
    default:
        GF_ASSERT(0);
    case 0:
        return 445;
    case 1:
        return 446;
    case 2:
        return 447;
    }
}

static const int Unk_ov5_021FFA00[] = {
    0x2D,
    0x1E,
    0xF
};
