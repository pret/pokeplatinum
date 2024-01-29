#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_0203EF60_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DC1A4_decl.h"
#include "overlay005/struct_ov5_021E1FF4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "constdata/const_020EAC58.h"
#include "constdata/const_020EAB80.h"

#include "struct_defs/struct_0203A594.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0203F478.h"
#include "struct_defs/struct_0205AA50.h"

#include "narc.h"
#include "message.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "unk_0203A9C8.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "trainer_data.h"

typedef void (* UnkFuncPtr_0203E950)(UnkStruct_0203CDB0 *);

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_02061AB4 * unk_14;
    SysTask * unk_18;
} UnkStruct_0203E8B0;

struct UnkStruct_0203EF60_t {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u16 unk_0A;
    BOOL unk_0C;
    UnkStruct_ov5_021DC1A4 * unk_10;
    Window unk_14;
    UIControlData * unk_24;
    int unk_28;
    UnkStruct_02061AB4 * unk_2C;
    UnkStruct_02061AB4 * unk_30;
    u16 * unk_34;
    UnkStruct_0203E724 * unk_38[2];
    UnkStruct_0200B358 * unk_40;
    Strbuf* unk_44;
    Strbuf* unk_48;
    void * unk_4C;
    UnkStruct_0203E8B0 unk_50[2];
    u16 unk_88[14];
    UnkFuncPtr_0203E950 unk_A4;
    void * unk_A8;
    void * unk_AC;
    UnkStruct_ov101_021D5D90 * unk_B0;
    SysTask * unk_B4;
    Window unk_B8;
    Window unk_C8;
    UnkStruct_ov5_021E1FF4 * unk_D8;
};

#include "data/field/hidden_items.h"

void sub_0203E880(UnkStruct_0203CDB0 * param0, u16 param1, UnkStruct_02061AB4 * param2);
void sub_0203E8E0(UnkStruct_020508D4 * param0, u16 param1, UnkStruct_02061AB4 * param2, void * param3);
static BOOL sub_0203E950(UnkStruct_020508D4 * param0);
static UnkStruct_0203EF60 * sub_0203EA28();
static void sub_0203EA50(UnkStruct_0203E724 * param0);
static void sub_0203EA68(UnkStruct_0203CDB0 * param0, UnkStruct_0203EF60 * param1, u16 param2, UnkStruct_02061AB4 * param3, void * param4);
UnkStruct_0203E724 * sub_0203EAB8(UnkStruct_0203CDB0 * param0, u16 param1);
static void sub_0203EAF4(UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1, u16 param2, u8 param3);
static u16 sub_0203EB20(UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1, u16 param2);
static void sub_0203EF14(UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1, int param2, u32 param3);
static void sub_0203EF38(UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1);
void * sub_0203EF60(UnkStruct_0203EF60 * param0, u32 param1);
void * sub_0203F098(UnkStruct_0203CDB0 * param0, u32 param1);
void sub_0203F0C0(UnkStruct_0203CDB0 * param0);
static void sub_0203F0E4(UnkStruct_0203E724 * param0, u16 param1);
static void * sub_0203F0FC(int param0);
static u32 sub_0203F110(int param0);
u16 * sub_0203F118(UnkStruct_0203CDB0 * param0, u16 param1);
u16 sub_0203F150(UnkStruct_0203CDB0 * param0, u16 param1);
u16 sub_0203F164(UnkStruct_0203CDB0 * param0, u16 param1);
BOOL sub_0203F188(UnkStruct_0203CDB0 * param0, u16 param1);
void sub_0203F19C(UnkStruct_0203CDB0 * param0, u16 param1);
void sub_0203F1B0(UnkStruct_0203CDB0 * param0, u16 param1);
void sub_0203F1C4(UnkStruct_0203CDB0 * param0);
void sub_0203F1FC(UnkStruct_0203CDB0 * param0);
u16 sub_0203F254(u16 param0);
BOOL sub_0203F278(u16 param0);
BOOL sub_0203F28C(u16 param0);
BOOL sub_0203F2A0(UnkStruct_0203CDB0 * param0, u16 param1);
void sub_0203F2BC(UnkStruct_0203CDB0 * param0, u16 param1);
void sub_0203F2D8(UnkStruct_0203CDB0 * param0, u16 param1);
u16 sub_0203F2F4(u16 param0);
u16 sub_0203F304(u16 param0);
u8 sub_0203F3C8(u16 param0);
static BOOL sub_0203F404(UnkStruct_0203EF60 * param0, u16 param1);
void sub_0203F310(UnkStruct_0203CDB0 * param0);
void sub_0203F598(UnkStruct_0203CDB0 * param0);
void sub_0203F5A4(UnkStruct_0203CDB0 * param0, u16 param1);
BOOL sub_0203F5C0(UnkStruct_0203CDB0 * param0, u8 param1);
static u16 sub_0203F610(const u8 * param0, u8 param1);
static u16 sub_0203F638(UnkStruct_0203CDB0 * param0, const u8 * param1, u8 param2);
UnkStruct_0203F478 * sub_0203F478(UnkStruct_0203CDB0 * param0, int param1);

void sub_0203E880 (UnkStruct_0203CDB0 * param0, u16 param1, UnkStruct_02061AB4 * param2)
{
    UnkStruct_0203EF60 * v0 = sub_0203EA28();

    sub_0203EA68(param0, v0, param1, param2, NULL);
    sub_02050904(param0, sub_0203E950, v0);

    return;
}

void sub_0203E8B0 (UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_0203EF60 * v0 = sub_02050A64(param0->unk_10);
    UnkStruct_0203E8B0 * v1 = &v0->unk_50[param7];

    v1->unk_00 = param2;
    v1->unk_04 = param3;
    v1->unk_08 = param4;
    v1->unk_0C = param5;
    v1->unk_10 = param6;
    v1->unk_14 = param1;
}

void sub_0203E8E0 (UnkStruct_020508D4 * param0, u16 param1, UnkStruct_02061AB4 * param2, void * param3)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0203EF60 * v1 = sub_0203EA28();

    sub_0203EA68(v0, v1, param1, param2, param3);
    sub_02050944(param0, sub_0203E950, v1);

    return;
}

void sub_0203E918 (UnkStruct_020508D4 * param0, u16 param1, UnkStruct_02061AB4 * param2)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0203EF60 * v1 = sub_0203EA28();

    sub_0203EA68(v0, v1, param1, param2, NULL);
    sub_02050924(param0, sub_0203E950, v1);

    return;
}

static BOOL sub_0203E950 (UnkStruct_020508D4 * param0)
{
    int v0;
    UnkFuncPtr_0203E950 v1;
    UnkStruct_0203E724 * v2 = NULL;
    UnkStruct_0203EF60 * v3 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v4 = sub_02050A60(param0);

    switch (v3->unk_04) {
    case 0:
        v3->unk_38[0] = sub_0203EAB8(v4, v3->unk_0A);
        v3->unk_09 = 1;
        v3->unk_40 = sub_0200B368(8, 64, 11);
        v3->unk_44 = Strbuf_Init(1024, 11);
        v3->unk_48 = Strbuf_Init(1024, 11);
        v3->unk_04++;
    case 1:
        for (v0 = 0; v0 < 2; v0++) {
            v2 = v3->unk_38[v0];

            if (v2 != NULL) {
                if (sub_0203E778(v2) == 0) {
                    sub_0203EA50(v2);

                    if (v3->unk_09 == 0) {
                        GF_ASSERT(FALSE);
                    }

                    v3->unk_38[v0] = NULL;
                    v3->unk_09--;
                }
            }
        }

        if (v3->unk_09 <= 0) {
            v1 = v3->unk_A4;
            sub_0200B3F0(v3->unk_40);
            Strbuf_Free(v3->unk_44);
            Strbuf_Free(v3->unk_48);
            v3->unk_00 = 0;
            Heap_FreeToHeap(v3);

            if (v1 != NULL) {
                v1(v4);
                return 0;
            }

            return 1;
        }
        break;
    }

    return 0;
}

static UnkStruct_0203EF60 * sub_0203EA28 ()
{
    UnkStruct_0203EF60 * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203EF60));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    memset(v0, 0, sizeof(UnkStruct_0203EF60));

    v0->unk_00 = 0x3643f;

    return v0;
}

static void sub_0203EA50 (UnkStruct_0203E724 * param0)
{
    MessageLoader_Free(param0->unk_2C);
    Heap_FreeToHeap(param0->unk_30);
    Heap_FreeToHeap(param0);

    return;
}

static void sub_0203EA68 (UnkStruct_0203CDB0 * param0, UnkStruct_0203EF60 * param1, u16 param2, UnkStruct_02061AB4 * param3, void * param4)
{
    u16 * v0 = sub_0203EF60(param1, 54);

    param1->unk_28 = sub_0205EA78(param0->unk_3C);
    param1->unk_2C = param3;
    param1->unk_0A = param2;
    param1->unk_34 = param4;

    if (param3 != NULL) {
        *v0 = sub_02062910(param3);
    }

    if ((param2 >= 8000) && (param2 <= 8799)) {
        sub_0203F404(param1, param2);
    }

    return;
}

UnkStruct_0203E724 * sub_0203EAB8 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    UnkStruct_0203E724 * v0 = NULL;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203E724));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_0203E724(v0, Unk_020EAC58, Unk_020EAB80);
    sub_0203EAF4(param0, v0, param1, 0);

    return v0;
}

static void sub_0203EAF4 (UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1, u16 param2, u8 param3)
{
    u16 v0;

    param1->unk_34 = param0;
    v0 = sub_0203EB20(param0, param1, param2);

    sub_0203E758(param1, param1->unk_30);
    sub_0203F0E4(param1, v0);
    sub_0203E774(param1, (void *)param0->unk_10);

    return;
}

static u16 sub_0203EB20 (UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1, u16 param2)
{
    u16 v0 = param2;

    if (v0 >= 10490) {
        sub_0203EF14(param0, param1, 499, 541);
        v0 -= 10490;
    } else if (v0 >= 10450) {
        sub_0203EF14(param0, param1, 500, 16);
        v0 -= 10450;
    } else if (v0 >= 10400) {
        sub_0203EF14(param0, param1, 400, 203);
        v0 -= 10400;
    } else if (v0 >= 10300) {
        sub_0203EF14(param0, param1, 1051, 552);
        v0 -= 10300;
    } else if (v0 >= 10200) {
        sub_0203EF14(param0, param1, 407, 379);
        v0 -= 10200;
    } else if (v0 >= 10150) {
        sub_0203EF14(param0, param1, 1116, 621);
        v0 -= 10150;
    } else if (v0 >= 10100) {
        sub_0203EF14(param0, param1, 1115, 622);
        v0 -= 10100;
    } else if (v0 >= 10000) {
        sub_0203EF14(param0, param1, 409, 381);
        v0 -= 10000;
    } else if (v0 >= 9950) {
        sub_0203EF14(param0, param1, 411, 383);
        v0 -= 9950;
    } else if (v0 >= 9900) {
        sub_0203EF14(param0, param1, 397, 213);
        v0 -= 9900;
    } else if (v0 >= 9800) {
        sub_0203EF14(param0, param1, 212, 217);
        v0 -= 9800;
    } else if (v0 >= 9700) {
        sub_0203EF14(param0, param1, 422, 429);
        v0 -= 9700;
    } else if (v0 >= 9600) {
        sub_0203EF14(param0, param1, 412, 213);
        v0 -= 9600;
    } else if (v0 >= 9500) {
        sub_0203EF14(param0, param1, 501, 547);
        v0 -= 9500;
    } else if (v0 >= 9400) {
        sub_0203EF14(param0, param1, 426, 432);
        v0 -= 9400;
    } else if (v0 >= 9300) {
        sub_0203EF14(param0, param1, 406, 374);
        v0 -= 9300;
    } else if (v0 >= 9200) {
        sub_0203EF14(param0, param1, 423, 430);
        v0 -= 9200;
    } else if (v0 >= 9100) {
        sub_0203EF14(param0, param1, 0, 11);
        v0 -= 9100;
    } else if (v0 >= 9000) {
        sub_0203EF14(param0, param1, 213, 221);
        v0 -= 9000;
    } else if (v0 >= 8970) {
        sub_0203EF14(param0, param1, 425, 7);
        v0 -= 8970;
    } else if (v0 >= 8950) {
        sub_0203EF14(param0, param1, 498, 539);
        v0 -= 8950;
    } else if (v0 >= 8900) {
        sub_0203EF14(param0, param1, 424, 431);
        v0 -= 8900;
    } else if (v0 >= 8800) {
        sub_0203EF14(param0, param1, 497, 538);
        v0 -= 8800;
    } else if (v0 >= 8000) {
        sub_0203EF14(param0, param1, 408, 380);
        v0 -= 8000;
    } else if (v0 >= 7000) {
        sub_0203EF14(param0, param1, 404, 369);
        v0 -= 7000;
    } else if (v0 >= 5000) {
        sub_0203EF14(param0, param1, 1114, 213);
        v0 -= 5000;
    } else if (v0 >= 3000) {
        sub_0203EF14(param0, param1, 1114, 213);
        v0 -= 3000;
    } else if (v0 >= 2800) {
        sub_0203EF14(param0, param1, 413, 397);
        v0 -= 2800;
    } else if (v0 >= 2500) {
        sub_0203EF14(param0, param1, 1, 17);
        v0 -= 2500;
    } else if (v0 >= 2000) {
        sub_0203EF14(param0, param1, 211, 213);
        v0 -= 2000;
    } else if (v0 >= 1) {
        sub_0203EF38(param0, param1);
        v0 -= 1;
    } else {
        sub_0203EF14(param0, param1, 402, 355);
        v0 = 0;
    }

    return v0;
}

static void sub_0203EF14 (UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1, int param2, u32 param3)
{
    u8 * v0 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, param2, 11);

    param1->unk_30 = (u8 *)v0;
    param1->unk_2C = MessageLoader_Init(1, 26, param3, 11);

    return;
}

static void sub_0203EF38 (UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1)
{
    u8 * v0 = sub_0203F0FC(param0->unk_1C->unk_00);

    param1->unk_30 = (u8 *)v0;
    param1->unk_2C = MessageLoader_Init(1, 26, sub_0203F110(param0->unk_1C->unk_00), 11);

    return;
}

void * sub_0203EF60 (UnkStruct_0203EF60 * param0, u32 param1)
{
    UnkStruct_0203E8B0 * v0;

    switch (param1) {
    case 0:
        return &param0->unk_10;
    case 1:
        return &param0->unk_14;
    case 2:
        return &param0->unk_24;
    case 3:
        return &param0->unk_05;
    case 4:
        return &param0->unk_06;
    case 5:
        return &param0->unk_07;
    case 6:
        return &param0->unk_08;
    case 7:
        return &param0->unk_09;
    case 8:
        return &param0->unk_0A;
    case 9:
        return &param0->unk_28;
    case 10:
        return &param0->unk_2C;
    case 11:
        return &param0->unk_30;
    case 12:
        return &param0->unk_34;
    case 13:
        return &param0->unk_38[0];
    case 14:
        return &param0->unk_38[1];
    case 15:
        return &param0->unk_40;
    case 16:
        return &param0->unk_44;
    case 17:
        return &param0->unk_48;
    case 18:
        return &param0->unk_4C;
    case 19:
        return &param0->unk_A8;
    case 20:
        return &param0->unk_AC;
    case 21:
        return &param0->unk_B0;
    case 22:
        return &param0->unk_B4;
    case 23:
        return &param0->unk_0C;
    case 24:
        v0 = &param0->unk_50[0];
        return &v0->unk_00;
    case 25:
        v0 = &param0->unk_50[0];
        return &v0->unk_04;
    case 26:
        v0 = &param0->unk_50[0];
        return &v0->unk_08;
    case 27:
        v0 = &param0->unk_50[0];
        return &v0->unk_0C;
    case 28:
        v0 = &param0->unk_50[0];
        return &v0->unk_10;
    case 29:
        v0 = &param0->unk_50[0];
        return &v0->unk_14;
    case 30:
        v0 = &param0->unk_50[0];
        return &v0->unk_18;
    case 31:
        v0 = &param0->unk_50[1];
        return &v0->unk_00;
    case 32:
        v0 = &param0->unk_50[1];
        return &v0->unk_04;
    case 33:
        v0 = &param0->unk_50[1];
        return &v0->unk_08;
    case 34:
        v0 = &param0->unk_50[1];
        return &v0->unk_0C;
    case 35:
        v0 = &param0->unk_50[1];
        return &v0->unk_10;
    case 36:
        v0 = &param0->unk_50[1];
        return &v0->unk_14;
    case 37:
        v0 = &param0->unk_50[1];
        return &v0->unk_18;
    case 38:
        return &param0->unk_B8;
    case 39:
        return &param0->unk_C8;
    case 40:
        return &param0->unk_D8;
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
        return &param0->unk_88[param1 - 41];
    }

    GF_ASSERT(FALSE);

    return NULL;
}

void * sub_0203F098 (UnkStruct_0203CDB0 * param0, u32 param1)
{
    UnkStruct_0203EF60 * v0 = sub_02050A64(param0->unk_10);

    if (v0->unk_00 != 0x3643f) {
        GF_ASSERT(FALSE);
    }

    return sub_0203EF60(v0, param1);
}

void sub_0203F0C0 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0203EF60 * v0 = sub_02050A64(param0->unk_10);

    if (sub_0203A9C8(param0) == 1) {
        v0->unk_A4 = sub_0203AB00;
    }

    return;
}

static void sub_0203F0E4 (UnkStruct_0203E724 * param0, u16 param1)
{
    param0->unk_08 += (param1 * 4);
    param0->unk_08 += sub_0203E850(param0);

    return;
}

static void * sub_0203F0FC (int param0)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, MapHeader_GetScriptsArchiveID(param0), 11);
}

static u32 sub_0203F110 (int param0)
{
    return MapHeader_GetMsgArchiveID(param0);
}

u16 * sub_0203F118 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    UnkStruct_020507E4 * v0;

    v0 = sub_020507E4(param0->unk_0C);

    if (param1 < 0x4000) {
        return NULL;
    }

    if (param1 < 0x8000) {
        return sub_020508B8(v0, param1);
    }

    return sub_0203F098(param0, (41 + param1 - 0x8000));
}

u16 sub_0203F150 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    u16 * v0 = sub_0203F118(param0, param1);

    if (v0 == NULL) {
        return param1;
    }

    return *v0;
}

u16 sub_0203F164 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    GF_ASSERT((param1 < 16));
    return sub_0203F150(param0, (((0 + 0x4000) + 32) + param1));
}

BOOL sub_0203F188 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    return sub_020507F0(sub_020507E4(param0->unk_0C), param1);
}

void sub_0203F19C (UnkStruct_0203CDB0 * param0, u16 param1)
{
    sub_0205081C(sub_020507E4(param0->unk_0C), param1);
    return;
}

void sub_0203F1B0 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    sub_02050844(sub_020507E4(param0->unk_0C), param1);
    return;
}

void sub_0203F1C4 (UnkStruct_0203CDB0 * param0)
{
    int v0;
    UnkStruct_020507E4 * v1;

    v1 = sub_020507E4(param0->unk_0C);

    memset(sub_02050870(v1, 1), 0, (64 / 8));
    memset(sub_020508B8(v1, (0 + 0x4000)), 0, 2 * 32);

    return;
}

void sub_0203F1FC (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020507E4 * v0;

    v0 = sub_020507E4(param0->unk_0C);
    memset(sub_02050870(v0, 2400 + 320), 0, 192 / 8);

    return;
}

void sub_0203F21C (UnkStruct_0203CDB0 * param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    *(u16 *)sub_0203F098(param0, 41) = param1;
    *(u16 *)sub_0203F098(param0, 42) = param2;
    *(u16 *)sub_0203F098(param0, 43) = param3;
    *(u16 *)sub_0203F098(param0, 44) = param4;
}

u16 sub_0203F254 (u16 param0)
{
    if (param0 < 5000) {
        return param0 - 3000 + 1;
    } else {
        return param0 - 5000 + 1;
    }
}

BOOL sub_0203F278 (u16 param0)
{
    if (param0 < 5000) {
        return 0;
    } else {
        return 1;
    }
}

BOOL sub_0203F28C (u16 param0)
{
    if (TrainerData_LoadParam(param0, 9) == 0x0) {
        return 0;
    }

    return 1;
}

BOOL sub_0203F2A0 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    return sub_020507F0(sub_020507E4(param0->unk_0C), 1360 + param1);
}

void sub_0203F2BC (UnkStruct_0203CDB0 * param0, u16 param1)
{
    sub_0205081C(sub_020507E4(param0->unk_0C), 1360 + param1);
    return;
}

void sub_0203F2D8 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    sub_02050844(sub_020507E4(param0->unk_0C), 1360 + param1);
    return;
}

u16 sub_0203F2F4 (u16 param0)
{
    return param0 - 8000 + 730;
}

u16 sub_0203F304 (u16 param0)
{
    return param0 - 8000;
}

static u16 Unk_02100AE0[][2] = {
    {0x123, 0x34},
    {0x124, 0x35},
    {0x125, 0x36},
    {0x125, 0x37}
};

static u16 Unk_02100AD4[] = {
    0x3A,
    0x3B,
    0xDB,
    0xDC,
    0xDD,
    0xDE
};

void sub_0203F310 (UnkStruct_0203CDB0 * param0)
{
    u8 v0;

    v0 = (LCRNG_Next() % (NELEMS(Unk_02100AE0)));

    if (param0->unk_1C->unk_00 != Unk_02100AE0[v0][0]) {
        sub_0203F1B0(param0, (730 + Unk_02100AE0[v0][1]));
    }

    v0 = (LCRNG_Next() % (NELEMS(Unk_02100AE0)));

    if (param0->unk_1C->unk_00 != Unk_02100AE0[v0][0]) {
        sub_0203F1B0(param0, (730 + Unk_02100AE0[v0][1]));
    }

    if (param0->unk_1C->unk_00 != 256) {
        v0 = (LCRNG_Next() % (NELEMS(Unk_02100AD4)));
        sub_0203F1B0(param0, (730 + Unk_02100AD4[v0]));

        v0 = (LCRNG_Next() % (NELEMS(Unk_02100AD4)));
        sub_0203F1B0(param0, (730 + Unk_02100AD4[v0]));
    }

    return;
}

u8 sub_0203F3C8 (u16 param0)
{
    int v0;
    u16 v1;
    const HiddenItem * v2;

    v2 = &gHiddenItems[0];
    v1 = sub_0203F304(param0);

    for (v0 = 0; v0 < (NELEMS(gHiddenItems)); v0++) {
        if (v2[v0].script == v1) {
            break;
        }
    }

    if (v0 >= (NELEMS(gHiddenItems))) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return v2[v0].range;
}

static BOOL sub_0203F404 (UnkStruct_0203EF60 * param0, u16 param1)
{
    int v0;
    u16 v1;
    const HiddenItem * v2;
    u16 * v3 = sub_0203EF60(param0, 41);
    u16 * v4 = sub_0203EF60(param0, 42);
    u16 * v5 = sub_0203EF60(param0, 43);

    v2 = &gHiddenItems[0];
    v1 = sub_0203F304(param1);

    for (v0 = 0; v0 < (NELEMS(gHiddenItems)); v0++) {
        if (v2[v0].script == v1) {
            break;
        }
    }

    if (v0 >= (NELEMS(gHiddenItems))) {
        GF_ASSERT(FALSE);
        return 0;
    }

    *v3 = v2[v0].item;
    *v4 = v2[v0].qty;
    *v5 = sub_0203F2F4(param1);

    return 1;
}

UnkStruct_0203F478 * sub_0203F478 (UnkStruct_0203CDB0 * param0, int param1)
{
    UnkStruct_0203F478 * v0;
    const UnkStruct_0203A594 * v1;
    int v2, v3, v4, v5, v6, v7;
    int v8, v9, v10, v11;

    v6 = 0;
    v5 = sub_0203A448(param0);
    v5++;
    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203F478) * v5);

    if (v5 == 1) {
        v0[0].unk_04 = 0xff;
        v0[0].unk_00 = 0xffff;
        v0[0].unk_02 = 0xffff;
        return v0;
    }

    v1 = sub_0203A440(param0);

    if (v1 == NULL) {
        v0[0].unk_04 = 0xff;
        v0[0].unk_00 = 0xffff;
        v0[0].unk_02 = 0xffff;
        return v0;
    }

    v2 = sub_0205EABC(param0->unk_3C);
    v3 = sub_0205EAC8(param0->unk_3C);
    v8 = v2 - 7;
    v9 = v2 + 7;
    v10 = v3 - 7;
    v11 = v3 + 6;

    if (v8 < 0) {
        v8 = 0;
    }

    if (v10 < 0) {
        v10 = 0;
    }

    for (v4 = 0; v4 < v5; v4++) {
        if ((v1[v4].unk_02 == 2) && (sub_0203F188(param0, sub_0203F2F4(v1[v4].unk_00)) == 0)) {
            if ((v1[v4].unk_04 >= v8) && (v1[v4].unk_04 <= v9) && (v1[v4].unk_08 >= v10) && (v1[v4].unk_08 <= v11)) {
                v0[v6].unk_04 = sub_0203F3C8(v1[v4].unk_00);
                v7 = (v2 - v1[v4].unk_04);
                v0[v6].unk_00 = abs(7 - v7);
                v7 = (v3 - v1[v4].unk_08);
                v0[v6].unk_02 = abs(7 - v7);
                v6++;
            }
        }
    }

    v0[v6].unk_04 = 0xff;
    v0[v6].unk_00 = 0xffff;
    v0[v6].unk_02 = 0xffff;

    return v0;
}

void sub_0203F598 (UnkStruct_0203CDB0 * param0)
{
    sub_0203F5A4(param0, 9600);
    return;
}

void sub_0203F5A4 (UnkStruct_0203CDB0 * param0, u16 param1)
{
    UnkStruct_0203E724 * v0 = sub_0203EAB8(param0, param1);

    while (sub_0203E778(v0) == 1) {
        (void)0;
    }

    sub_0203EA50(v0);
    return;
}

BOOL sub_0203F5C0 (UnkStruct_0203CDB0 * param0, u8 param1)
{
    u16 v0;
    const u8 * v1;

    v1 = sub_0203A68C(param0);

    if (v1 == NULL) {
        return 0;
    }

    if (param1 == 1) {
        v0 = sub_0203F638(param0, v1, param1);
    } else {
        v0 = sub_0203F610(v1, param1);
    }

    if (v0 == 0xffff) {
        return 0;
    }

    if (param1 == 1) {
        sub_0203E880(param0, v0, NULL);
    } else {
        sub_0203F5A4(param0, v0);
    }

    return 1;
}

static u16 sub_0203F610 (const u8 * param0, u8 param1)
{
    while (TRUE) {
        if (*param0 == 0) {
            return 0xffff;
        }

        if (*param0 == param1) {
            param0++;
            return *param0 + (*(param0 + 1) << 8);
        }

        param0 += (1 + 2 + 2);
    }

    return 0xffff;
}

static u16 sub_0203F638 (UnkStruct_0203CDB0 * param0, const u8 * param1, u8 param2)
{
    u16 v0, v1;
    u32 v2;

    v2 = 0;

    while (TRUE) {
        if (*param1 == 0) {
            return 0xffff;
        }

        if ((*param1) == param2) {
            param1++;
            v2 = (*param1 + (*(param1 + 1) << 8) + (*(param1 + 2) << 16) + (*(param1 + 3) << 24));
            param1 += 4;
            break;
        }

        param1 += (1 + 4);
    }

    if (v2 == 0) {
        return 0xffff;
    }

    param1 = (param1 + v2);

    while (TRUE) {
        if (*param1 == 0) {
            return 0xffff;
        }

        v0 = (*param1 + (*(param1 + 1) << 8));

        if (v0 == 0) {
            return 0xffff;
        }

        param1 += 2;
        v1 = (*param1 + (*(param1 + 1) << 8));
        param1 += 2;

        if (sub_0203F150(param0, v0) == sub_0203F150(param0, v1)) {
            return *param1 + (*(param1 + 1) << 8);
        }

        param1 += 2;
    }

    return 0xffff;
}
