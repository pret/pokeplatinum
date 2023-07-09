#include <nitro.h>
#include <string.h>

#include "constants/trainer.h"

#include "struct_decls/narc.h"
#include "struct_decls/message_formatter.h"
#include "struct_decls/strbuf.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/trainer_data.h"
#include "overlay006/battle_params.h"
#include "overlay016/struct_ov16_022431BC.h"
#include "overlay016/struct_ov16_022431BC_1.h"
#include "overlay016/struct_ov16_022431BC_2.h"
#include "overlay016/struct_ov16_022431BC_3.h"

#include "unk_020021B0.h"
#include "narc.h"
#include "message_data.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "unk_020277A4.h"
#include "unk_02073C2C.h"
#include "unk_02079170.h"
#include "party.h"


void sub_02079170(BattleParams * param0, const UnkStruct_021C0794 * param1, int param2);
u32 sub_02079220(int param0, int param1);
BOOL sub_02079280(int param0, int param1, int param2);
void sub_020792F8(int param0, int param1, Strbuf *param2, int param3);
void sub_0207938C(int param0, TrainerData * param1);
void sub_0207939C(int param0, void * param1);
u8 sub_020793AC(int param0);
static void sub_020793B8(BattleParams * param0, int param1, int param2);

static const u8 Unk_020F0714[] = {
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x1,
	0x0,
	0x0,
	0x1,
	0x1,
	0x2,
	0x0,
	0x1,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x2,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x2,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1,
	0x2,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x2,
	0x0,
	0x1,
	0x1,
	0x0,
	0x1,
	0x1,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1
};

void sub_02079170 (BattleParams * param0, const UnkStruct_021C0794 * param1, int param2)
{
    TrainerData v0;
    int v1;
    MessageFormatter * v2 = MessageFormatter_Init(1, 26, 618, param2);
    Strbuf *v3;
    const u16 * v4 = sub_02027870(sub_02027848(param1));

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_18[v1]) {
            sub_0207938C(param0->unk_18[v1], &v0);
            param0->trainerData[v1] = v0;

            if (v0.class == TRAINER_CLASS_RIVAL) {
                sub_020021B0(&param0->trainerData[v1].unk_14[0], v4);
            } else {
                v3 = MessageFormatter_AllocStrbuf(v2, param0->unk_18[v1]);
                Strbuf_ToChars(v3, &param0->trainerData[v1].unk_14[0], 8);
                Strbuf_Free(v3);
            }

            sub_020793B8(param0, v1, param2);
        }
    }

    param0->battleType |= v0.unk_10;

    MessageFormatter_Free(v2);
}

u32 sub_02079220 (int param0, int param1)
{
    u32 v0;
    TrainerData v1;

    sub_0207938C(param0, &v1);

    switch (param1) {
    case 0:
        v0 = v1.unk_00;
        break;
    case 1:
        v0 = v1.class;
        break;
    case 2:
        v0 = v1.unk_02;
        break;
    case 3:
        v0 = v1.unk_03;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
        v0 = v1.unk_04[param1 - 4];
        break;
    case 8:
        v0 = v1.unk_0C;
        break;
    case 9:
        v0 = v1.unk_10;
        break;
    }

    return v0;
}

BOOL sub_02079280 (int param0, int param1, int param2)
{
    NARC * v0;
    int v1;
    u16 v2;
    u16 v3[2];
    BOOL v4;

    v4 = 0;

    v1 = NARC_GetMemberSizeByIndexPair(59, 0);
    NARC_ReadFromMemberByIndexPair(&v2, 137, 0, param0 * 2, 2);
    v0 = NARC_ctor(59, param2);

    while (v2 != v1) {
        NARC_ReadFromMember(v0, 0, v2, 4, &v3[0]);

        if ((v3[0] == param0) && (v3[1] == param1)) {
            v4 = 1;
            break;
        }

        if (v3[0] != param0) {
            break;
        }

        v2 += 4;
    }

    NARC_dtor(v0);

    return v4;
}

void sub_020792F8 (int param0, int param1, Strbuf *param2, int param3)
{
    NARC * v0;
    int v1;
    u16 v2;
    u16 v3[2];

    v1 = NARC_GetMemberSizeByIndexPair(59, 0);
    NARC_ReadFromMemberByIndexPair(&v2, 137, 0, param0 * 2, 2);
    v0 = NARC_ctor(59, param3);

    while (v2 != v1) {
        NARC_ReadFromMember(v0, 0, v2, 4, &v3[0]);

        if ((v3[0] == param0) && (v3[1] == param1)) {
            MessageData_GetStrbufFromNARC(26, 617, v2 / 4, param3, param2);
            break;
        }

        v2 += 4;
    }

    NARC_dtor(v0);

    if (v2 == v1) {
        Strbuf_Clear(param2);
    }
}

void sub_0207938C (int param0, TrainerData * param1)
{
    NARC_ReadWholeMemberByIndexPair(param1, 57, param0);
}

void sub_0207939C (int param0, void * param1)
{
    NARC_ReadWholeMemberByIndexPair(param1, 58, param0);
}

u8 sub_020793AC (int param0)
{
    return Unk_020F0714[param0];
}

static void sub_020793B8 (BattleParams * param0, int param1, int param2)
{
    void * v0;
    int v1, v2;
    u32 v3, v4;
    u32 v5;
    u8 v6;
    Pokemon * v7;

    v5 = sub_0201D2D0();

    Party_InitWithCapacity(param0->parties[param1], 6);

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov16_022431BC_3) * 6);
    v7 = AllocMonZeroed(param2);

    sub_0207939C(param0->unk_18[param1], v0);

    if (sub_020793AC(param0->trainerData[param1].class) == 1) {
        v3 = 120;
    } else {
        v3 = 136;
    }

    switch (param0->trainerData[param1].unk_00) {
    case 0:
    {
        UnkStruct_ov16_022431BC * v8;
        u16 v9;
        u8 v10;

        v8 = (UnkStruct_ov16_022431BC *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].unk_03; v1++) {
            v9 = v8[v1].unk_04 & 0x3ff;
            v10 = (v8[v1].unk_04 & 0xfc00) >> 10;
            v4 = v8[v1].unk_00 + v8[v1].unk_02 + v9 + param0->unk_18[param1];

            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v8[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v9, v8[v1].unk_02, v6, 1, v4, 2, 0);
            sub_02078AEC(v8[v1].unk_06, v7, param2);
            sub_02074B30(v7, 112, &v10);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    case 1:
    {
        UnkStruct_ov16_022431BC_1 * v11;
        u16 v12;
        u8 v13;

        v11 = (UnkStruct_ov16_022431BC_1 *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].unk_03; v1++) {
            v12 = v11[v1].unk_04 & 0x3ff;
            v13 = (v11[v1].unk_04 & 0xfc00) >> 10;
            v4 = v11[v1].unk_00 + v11[v1].unk_02 + v12 + param0->unk_18[param1];

            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v11[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v12, v11[v1].unk_02, v6, 1, v4, 2, 0);

            for (v2 = 0; v2 < 4; v2++) {
                sub_02077230(v7, v11[v1].unk_06[v2], v2);
            }

            sub_02078AEC(v11[v1].unk_0E, v7, param2);
            sub_02074B30(v7, 112, &v13);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    case 2:
    {
        UnkStruct_ov16_022431BC_2 * v14;
        u16 v15;
        u8 v16;

        v14 = (UnkStruct_ov16_022431BC_2 *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].unk_03; v1++) {
            v15 = v14[v1].unk_04 & 0x3ff;
            v16 = (v14[v1].unk_04 & 0xfc00) >> 10;

            v4 = v14[v1].unk_00 + v14[v1].unk_02 + v15 + param0->unk_18[param1];
            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v14[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v15, v14[v1].unk_02, v6, 1, v4, 2, 0);
            sub_02074B30(v7, 6, (u8 *)&v14[v1].unk_06);
            sub_02078AEC(v14[v1].unk_08, v7, param2);
            sub_02074B30(v7, 112, &v16);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    case 3:
    {
        UnkStruct_ov16_022431BC_3 * v17;
        u16 v18;
        u8 v19;

        v17 = (UnkStruct_ov16_022431BC_3 *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].unk_03; v1++) {
            v18 = v17[v1].unk_04 & 0x3ff;
            v19 = (v17[v1].unk_04 & 0xfc00) >> 10;
            v4 = v17[v1].unk_00 + v17[v1].unk_02 + v18 + param0->unk_18[param1];

            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v17[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v18, v17[v1].unk_02, v6, 1, v4, 2, 0);
            sub_02074B30(v7, 6, (u8 *)&v17[v1].unk_06);

            for (v2 = 0; v2 < 4; v2++) {
                sub_02077230(v7, v17[v1].unk_08[v2], v2);
            }

            sub_02078AEC(v17[v1].unk_10, v7, param2);
            sub_02074B30(v7, 112, &v19);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    }

    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v7);
    sub_0201D2DC(v5);
}
