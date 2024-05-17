#include <nitro.h>
#include <string.h>

#include "message.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_02025E5C_decl.h"
#include "trainer_info.h"
#include "struct_decls/pokedexdata_decl.h"
#include "savedata.h"
#include "overlay005/struct_ov5_021E1FF4_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"

#include "unk_02002B7C.h"
#include "message.h"
#include "unk_0200B29C.h"
#include "string_template.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "strbuf.h"
#include "savedata.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0202CBE4.h"
#include "unk_020366A0.h"
#include "map_header.h"
#include "unk_0203A6DC.h"
#include "player_avatar.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay005/ov5_021EA714.h"

typedef struct {
    int unk_00;
    int unk_04;
    TrainerInfo * unk_08;
    UnkStruct_02025E5C * unk_0C;
} UnkStruct_ov5_021E1D20;

struct UnkStruct_ov5_021E1FF4_t {
    FieldSystem * unk_00;
    int unk_04;
    u8 unk_08;
    BGL * unk_0C;
    Window * unk_10;
    StringTemplate * unk_14;
    MessageLoader * unk_18;
    UnkStruct_ov5_021E1D20 unk_1C;
    int unk_2C;
    int unk_30;
};

static void ov5_021E2028(FieldSystem * param0);

static const int Unk_ov5_021F9CCC[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static const int Unk_ov5_021F9CBC[] = {
    0x5,
    0x6,
    0x7,
    0x8
};

static void ov5_021E1D20 (UnkStruct_ov5_021E1D20 * param0, const FieldSystem * param1)
{
    SaveData * v0 = param1->saveData;
    UnkStruct_02049FA8 * v1 = sub_0203A720(sub_0203A790(v0));
    PokedexData * v2 = SaveData_Pokedex(v0);

    param0->unk_04 = MapHeader_GetMapLabelTextID(v1->unk_00);

    if (sub_02027520(v2)) {
        param0->unk_00 = sub_02026E48(v2);
    } else {
        param0->unk_00 = 0;
    }

    param0->unk_08 = SaveData_GetTrainerInfo(v0);
    param0->unk_0C = sub_02025E5C(v0);
}

static void ov5_021E1D6C (StringTemplate * param0, const UnkStruct_ov5_021E1D20 * param1)
{
    int v0, v1, v2;

    StringTemplate_SetLocationName(param0, 0, param1->unk_04);
    StringTemplate_SetPlayerName(param0, 1, param1->unk_08);
    StringTemplate_SetNumber(param0, 2, TrainerInfo_BadgeCount(param1->unk_08), 1, 0, 1);

    if (param1->unk_00 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (param1->unk_00 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    StringTemplate_SetNumber(param0, 3, param1->unk_00, v0, v1, 1);
    v2 = sub_0202CC58(param1->unk_0C);

    if (v2 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (v2 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    StringTemplate_SetNumber(param0, 4, v2, v0, v1, 1);
    StringTemplate_SetNumber(param0, 5, sub_0202CC5C(param1->unk_0C), 2, 2, 1);
}

static int ov5_021E1E10 (const UnkStruct_ov5_021E1D20 * param0)
{
    if (param0->unk_00 != 0) {
        return 10;
    } else {
        return 10 - 2;
    }
}

static void ov5_021E1E20 (const UnkStruct_ov5_021E1FF4 * param0)
{
    Strbuf* v0;
    int v1, v2;
    int v3;
    int v4;

    v3 = sub_02002DF8(0, 1) + sub_02002DF8(0, 3);
    v2 = 0;
    v0 = sub_0200B29C(param0->unk_14, param0->unk_18, Unk_ov5_021F9CCC[0], param0->unk_04);

    PrintStringSimple(param0->unk_10, 0, v0, 0, v2, 0xff, NULL);
    Strbuf_Free(v0);

    for (v4 = 1; v4 < NELEMS(Unk_ov5_021F9CCC); v4++) {
        if ((Unk_ov5_021F9CCC[v4] == 3) && (param0->unk_1C.unk_00 == 0)) {
            continue;
        }

        v2 += v3;
        v0 = MessageLoader_GetNewStrbuf(param0->unk_18, Unk_ov5_021F9CCC[v4]);

        PrintStringSimple(param0->unk_10, 0, v0, 0, v2, 0xff, NULL);
        Strbuf_Free(v0);

        v0 = sub_0200B29C(param0->unk_14, param0->unk_18, Unk_ov5_021F9CBC[v4 - 1], param0->unk_04);
        v1 = 13 * 8 - sub_02002D7C(0, v0, sub_02002DF8(0, 2));

        PrintStringSimple(param0->unk_10, 0, v0, v1, v2, 0xff, NULL);
        Strbuf_Free(v0);
    }
}

void ov5_021E1F04 (UnkStruct_ov5_021E1FF4 * param0)
{
    param0->unk_10 = Heap_AllocFromHeap(param0->unk_04, sizeof(Window));

    BGL_AddWindow(param0->unk_0C, param0->unk_10, param0->unk_08, 1, 1, param0->unk_2C, param0->unk_30, 13, 393);
    sub_0200DAA4(param0->unk_0C, param0->unk_08, 985, 11, 0, param0->unk_04);
    BGL_FillWindow(param0->unk_10, sub_02002DF8(0, 6));

    ov5_021E1E20(param0);
    Window_Show(param0->unk_10, 0, 985, 11);
}

void ov5_021E1F7C (UnkStruct_ov5_021E1FF4 * param0)
{
    Window_Clear(param0->unk_10, 0);
    BGL_DeleteWindow(param0->unk_10);
    Heap_FreeToHeap(param0->unk_10);
}

UnkStruct_ov5_021E1FF4 * ov5_021E1F98 (FieldSystem * param0, int param1, u8 param2)
{
    UnkStruct_ov5_021E1FF4 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov5_021E1FF4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = param0->unk_08;
    v0->unk_14 = StringTemplate_Default(param1);
    v0->unk_18 = MessageLoader_Init(1, 26, 534, param1);

    ov5_021E1D20(&v0->unk_1C, v0->unk_00);
    ov5_021E1D6C(v0->unk_14, &v0->unk_1C);

    v0->unk_2C = 13;
    v0->unk_30 = ov5_021E1E10(&v0->unk_1C);

    return v0;
}

void ov5_021E1FF4 (UnkStruct_ov5_021E1FF4 * param0)
{
    MessageLoader_Free(param0->unk_18);
    StringTemplate_Free(param0->unk_14);
    Heap_FreeToHeap(param0);
}

BOOL ov5_021E200C (FieldSystem * param0)
{
    ov5_021E2028(param0);

    if (SaveData_Save(param0->saveData) == 2) {
        return 1;
    } else {
        return 0;
    }
}

static void ov5_021E2028 (FieldSystem * param0)
{
    sub_0203A7A8(param0);
    ov5_021EA714(param0, 4, 0);

    param0->unk_1C->unk_08 = Player_XPos(param0->playerAvatar);
    param0->unk_1C->unk_0C = Player_ZPos(param0->playerAvatar);
    param0->unk_1C->unk_04 = -1;
    param0->unk_1C->unk_10 = Player_Dir(param0->playerAvatar);
}

void ov5_021E2064 (FieldSystem * param0)
{
    if (param0 == NULL) {
        GF_ASSERT(0);
        return;
    }

    switch (param0->unk_1C->unk_00) {
    case 466:
    case 332:
    case 333:
        return;
    }

    if (sub_02038EB4() == 1) {
        return;
    }

    ov5_021E2028(param0);
}
