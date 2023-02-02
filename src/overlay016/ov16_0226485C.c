#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "overlay016/struct_ov16_0224B9DC_decl.h"

#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_0207A81C.h"
#include "struct_defs/struct_0207ADB4_t.h"
#include "overlay016/struct_ov16_0224B9DC_t.h"
#include "overlay016/struct_ov16_0224DDA8.h"
#include "overlay016/struct_ov16_0225BFFC_t.h"
#include "overlay016/struct_ov16_0225C168.h"
#include "overlay016/struct_ov16_0225C17C.h"
#include "overlay016/struct_ov16_0225C23C.h"
#include "overlay016/struct_ov16_0225C260.h"
#include "overlay016/struct_ov16_0225C29C.h"
#include "overlay016/struct_ov16_0225C2B0.h"
#include "overlay016/struct_ov16_0225C2C4.h"
#include "overlay016/struct_ov16_0225C2D8.h"
#include "overlay016/struct_ov16_0225C2EC.h"
#include "overlay016/struct_ov16_0225C300.h"
#include "overlay016/struct_ov16_0225C35C.h"
#include "overlay016/struct_ov16_0225C370.h"
#include "overlay016/struct_ov16_0225C384.h"
#include "overlay016/struct_ov16_0225C398.h"
#include "overlay016/struct_ov16_0225C3BC.h"
#include "overlay016/struct_ov16_0225C3D0.h"
#include "overlay016/struct_ov16_0225C3E4.h"
#include "overlay016/struct_ov16_0225C3F8.h"
#include "overlay016/struct_ov16_0225C40C.h"
#include "overlay016/struct_ov16_0225C430.h"
#include "overlay016/struct_ov16_0225C454.h"
#include "overlay016/struct_ov16_0225C468.h"
#include "overlay016/struct_ov16_0225C65C.h"
#include "overlay016/struct_ov16_0225C684.h"
#include "overlay016/struct_ov16_0225C840.h"
#include "overlay016/struct_ov16_0225C988.h"
#include "overlay016/struct_ov16_0225C9F0.h"
#include "overlay016/struct_ov16_0225CA14.h"
#include "overlay016/struct_ov16_0225CA4C.h"
#include "overlay016/struct_ov16_0225CA60.h"
#include "overlay016/struct_ov16_02264A8C.h"
#include "overlay016/struct_ov16_02264EF8.h"
#include "overlay016/struct_ov16_02265050.h"
#include "overlay016/struct_ov16_02265124.h"
#include "overlay016/struct_ov16_02265154.h"
#include "overlay016/struct_ov16_022651A8.h"
#include "overlay016/struct_ov16_022656F0.h"
#include "overlay016/struct_ov16_02265BBC.h"
#include "overlay016/struct_ov16_022662FC.h"
#include "overlay016/struct_ov16_02266498.h"
#include "overlay016/struct_ov16_022664F8.h"
#include "overlay016/struct_ov16_022666BC.h"
#include "overlay016/struct_ov16_02266A38.h"
#include "overlay016/struct_ov16_02266ABC.h"

#include "unk_0202F1D4.h"
#include "unk_02034198.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "party.h"
#include "unk_0207A6DC.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0226485C.h"

void ov16_02264A8C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02264AB4(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02264BB4(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02264CE8(UnkStruct_0207ADB4 * param0, int param1, int param2, int param3);
void ov16_02264EF8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02265050(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_02265108(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02265124(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02265154(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_0226518C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_022651A8(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_022651DC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_02265314(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02265330(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_022656D4(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_022656F0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02265790(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_022657AC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_022658CC(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_022658E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02265A70(UnkStruct_0207ADB4 * param0, int param1, UnkStruct_ov16_0224DDA8 param2);
void ov16_02265A8C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, int param5);
void ov16_02265B10(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_02265B2C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, int param5, int param6);
void ov16_02265B68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_02265BA0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_0225C300 * param2);
void ov16_02265BBC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, u16 param2);
void ov16_02265BEC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, u16 param2, int param3, int param4);
void ov16_02265C1C(UnkStruct_0207ADB4 * param0, int param1, u32 param2);
void ov16_02265C38(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02265D14(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_02265D98(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02265EAC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_02265ECC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_02265EE8(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_02265FB8(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_02265FD8(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_02265FF8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_02266028(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
void ov16_02266058(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_0226609C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_022660E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02266100(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_0226614C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02266168(UnkStruct_0207ADB4 * param0, int param1, UnkStruct_ov16_0225C300 param2);
void ov16_022661B0(UnkStruct_0207ADB4 * param0, int param1);
void ov16_022661CC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_022662FC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02266460(UnkStruct_0207ADB4 * param0, int param1);
void ov16_0226647C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02266498(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_022664C4(UnkStruct_0207ADB4 * param0, int param1, int param2, int param3);
void ov16_022664F8(UnkStruct_0207ADB4 * param0, int param1, int param2, int param3);
void ov16_0226651C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_022665AC(UnkStruct_0207ADB4 * param0, int param1);
void ov16_022665C8(UnkStruct_0207ADB4 * param0, int param1);
void ov16_022665E4(UnkStruct_0207ADB4 * param0, int param1);
void ov16_0226660C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02266634(UnkStruct_0207ADB4 * param0, int param1);
void ov16_0226665C(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02266684(UnkStruct_0207ADB4 * param0);
void ov16_022666A0(UnkStruct_0207ADB4 * param0);
void ov16_022666BC(UnkStruct_0207ADB4 * param0, int param1, int param2, int param3);
void ov16_022666E0(UnkStruct_0207ADB4 * param0, int param1);
void ov16_0226673C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_022667E8(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02266804(UnkStruct_0207ADB4 * param0, int param1);
void ov16_02266820(UnkStruct_0207ADB4 * param0);
void ov16_0226683C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_022668D0(UnkStruct_0207ADB4 * param0);
void ov16_0226692C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_022669D8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02266A18(UnkStruct_0207ADB4 * param0, int param1, int param2);
void ov16_02266A38(UnkStruct_0207ADB4 * param0);
void ov16_02266ABC(UnkStruct_0207ADB4 * param0, int param1, int param2);
BOOL ov16_02266AE4(UnkStruct_0207ADB4 * param0, void * param1);
void ov16_02266B78(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_02265BBC * param2, int param3, int param4, int param5, int param6, u16 param7);
void ov16_02264988(UnkStruct_0207ADB4 * param0, int param1);
static void ov16_0226485C(UnkStruct_0207ADB4 * param0, int param1, int param2, void * param3, u8 param4);
static void ov16_02264A04(UnkStruct_0207ADB4 * param0, int param1, int param2, void * param3, u8 param4);
static void ov16_02266CF0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_0225C840 * param2, int param3, int param4);

static void ov16_0226485C (UnkStruct_0207ADB4 * param0, int param1, int param2, void * param3, u8 param4)
{
    int v0;
    UnkStruct_0207A81C v1;
    u8 * v2;
    u8 * v3;
    u16 * v4;
    u16 * v5;

    if (param1 == 1) {
        v3 = ov16_0223E074(param0);
        v4 = ov16_0223E0B0(param0);
        v5 = ov16_0223E0BC(param0);
    } else {
        v3 = ov16_0223E06C(param0);
        v4 = ov16_0223E08C(param0);
        v5 = ov16_0223E098(param0);
    }

    if (v4[0] + sizeof(UnkStruct_0207A81C) + param4 + 1 > 0x1000) {
        v5[0] = v4[0];
        v4[0] = 0;
    }

    v1.unk_00 = param1;
    v1.unk_01 = param2;
    v1.unk_02 = param4;

    v2 = (u8 *)&v1;

    for (v0 = 0; v0 < sizeof(UnkStruct_0207A81C); v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }

    v2 = (u8 *)param3;

    for (v0 = 0; v0 < param4; v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }
}

static BOOL ov16_022648F4 (UnkStruct_0207ADB4 * param0, void * param1)
{
    u8 * v0 = (u8 *)param1;
    u8 v1;
    u8 v2;
    int v3;
    int v4;
    BOOL v5 = 0;

    v1 = v0[0];
    v2 = v0[1];
    v3 = v0[2] | (v0[3] << 8);

    v0 += sizeof(UnkStruct_0207A81C);

    if (v1 == 0) {
        if (param0->unk_30->unk_2300[v2][0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                param0->unk_30->unk_2300[v2][v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 1) {
        if (param0->unk_34[v2]->unk_90[0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                param0->unk_34[v2]->unk_90[v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int v7;

            v6 = v0[0];
            v7 = v0[1];

            if (ov16_0223ED60(param0)) {
                ov16_02251F80(param0->unk_30, v7, v2, v6);
            }
        }
        v5 = 1;
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02264988 (UnkStruct_0207ADB4 * param0, int param1)
{
    u8 * v0;
    u16 * v1;
    u16 * v2;
    u16 * v3;
    int v4;

    if (param1 == 1) {
        v0 = ov16_0223E074(param0);
        v1 = ov16_0223E0A4(param0);
        v2 = ov16_0223E0B0(param0);
        v3 = ov16_0223E0BC(param0);
    } else {
        v0 = ov16_0223E06C(param0);
        v1 = ov16_0223E080(param0);
        v2 = ov16_0223E08C(param0);
        v3 = ov16_0223E098(param0);
    }

    if (v1[0] == v2[0]) {
        return;
    }

    if (v1[0] == v3[0]) {
        v1[0] = 0;
        v3[0] = 0;
    }

    if (ov16_022648F4(param0, (void *)&v0[v1[0]]) == 1) {
        v4 = sizeof(UnkStruct_0207A81C) + (v0[v1[0] + 2] | (v0[v1[0] + 3] << 8));
        v1[0] += v4;
    }
}

static void ov16_02264A04 (UnkStruct_0207ADB4 * param0, int param1, int param2, void * param3, u8 param4)
{
    int v0;
    u8 * v1 = (u8 *)param3;

    if ((param0->unk_2C & 0x4) && ((param0->unk_2408 & 0x10) == 0)) {
        if (param1 == 1) {
            {
                int v2;

                for (v2 = 0; v2 < sub_02035E18(); v2++) {
                    ov16_02251F44(param0->unk_30, v2, param2, v1[0]);
                }
            }
        }

        sub_0207A81C(param0, param1, param2, param3, param4);
    } else {
        if (param1 == 1) {
            ov16_02251F44(param0->unk_30, 0, param2, v1[0]);
        }

        ov16_0226485C(param0, param1, param2, param3, param4);
    }
}

void ov16_02264A8C (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_02264A8C v0;

    v0.unk_00 = 1;
    v0.unk_04 = ov16_0223F4E8(param0);

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02264A8C));
}

void ov16_02264AB4 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C168 v0;
    int v1;

    v0.unk_00 = 2;
    v0.unk_01_0 = param0->unk_30->unk_2D40[param1].unk_7E_0;
    v0.unk_01_2 = param0->unk_30->unk_2D40[param1].unk_26_5;
    v0.unk_02 = param0->unk_30->unk_2D40[param1].unk_00;
    v0.unk_04 = param0->unk_30->unk_2D40[param1].unk_68;
    v0.unk_08 = ov16_022599D0(param0->unk_30, param1, ov16_0223E1F8(param0, param1), 1);
    v0.unk_01_3 = param0->unk_30->unk_2D40[param1].unk_26_0;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = ov16_02252060(param0->unk_30, param1, 6 + v1, NULL);
        v0.unk_14[v1] = ov16_02252060(param0->unk_30, param1, 31 + v1, NULL);
        v0.unk_1C[v1] = ov16_02252060(param0->unk_30, param1, 39 + v1, NULL);
    }

    ov16_02252060(param0->unk_30, param1, 45, &v0.unk_24);
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C168));
}

void ov16_02264BB4 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C17C v0;
    int v1;

    v0.unk_00 = 3;
    v0.unk_01_0 = param0->unk_30->unk_2D40[param1].unk_7E_0;
    v0.unk_01_2 = param0->unk_30->unk_2D40[param1].unk_26_5;
    v0.unk_02 = param0->unk_30->unk_2D40[param1].unk_00;
    v0.unk_04 = param0->unk_30->unk_2D40[param1].unk_68;
    v0.unk_08 = ov16_022599D0(param0->unk_30, param1, ov16_0223E1F8(param0, param1), 1);
    v0.unk_0C = param0->unk_30->unk_219C[param1];
    v0.unk_01_3 = param0->unk_30->unk_2D40[param1].unk_26_0;
    v0.unk_10 = param0->unk_30->unk_2D40[param1].unk_7F;
    v0.unk_48 = param0->unk_30->unk_219C[ov16_0223E258(param0, param1)];

    ov16_0223EF2C(param0, param1, v0.unk_0C);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_18[v1] = ov16_02252060(param0->unk_30, param1, 6 + v1, NULL);
        v0.unk_20[v1] = ov16_02252060(param0->unk_30, param1, 31 + v1, NULL);
        v0.unk_28[v1] = ov16_02252060(param0->unk_30, param1, 39 + v1, NULL);
    }

    ov16_02252060(param0->unk_30, param1, 45, &v0.unk_30);
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C17C));
}

void ov16_02264CE8 (UnkStruct_0207ADB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_0225C17C v0;
    int v1;

    v0.unk_00 = 4;

    if (param0->unk_30->unk_2D40[param1].unk_70 & 0x200000) {
        v0.unk_01_0 = param0->unk_30->unk_2D40[param1].unk_88.unk_32;
        v0.unk_04 = param0->unk_30->unk_2D40[param1].unk_88.unk_1C;
    } else {
        v0.unk_01_0 = param0->unk_30->unk_2D40[param1].unk_7E_0;
        v0.unk_04 = param0->unk_30->unk_2D40[param1].unk_68;
    }

    v0.unk_01_2 = param0->unk_30->unk_2D40[param1].unk_26_5;
    v0.unk_02 = param0->unk_30->unk_2D40[param1].unk_00;
    v0.unk_08 = ov16_022599D0(param0->unk_30, param1, ov16_0223E1F8(param0, param1), 0);
    v0.unk_0C = param0->unk_30->unk_219C[param1];
    v0.unk_01_3 = param0->unk_30->unk_2D40[param1].unk_26_0;

    if (param2) {
        v0.unk_10 = param2;
    } else {
        v0.unk_10 = param0->unk_30->unk_2D40[param1].unk_7F;
    }

    v0.unk_14 = param3;
    v0.unk_4C = ((param0->unk_30->unk_2D40[param1].unk_70 & 0x1000000) != 0);

    ov16_0223EF2C(param0, param1, v0.unk_0C);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_18[v1] = ov16_02252060(param0->unk_30, param1, 6 + v1, NULL);
        v0.unk_20[v1] = ov16_02252060(param0->unk_30, param1, 31 + v1, NULL);
        v0.unk_28[v1] = ov16_02252060(param0->unk_30, param1, 39 + v1, NULL);
    }

    ov16_02252060(param0->unk_30, param1, 45, &v0.unk_30);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_50[v1] = param0->unk_30->unk_2D40[v1].unk_00;
        v0.unk_5C[v1] = param0->unk_30->unk_2D40[v1].unk_26_5;
        v0.unk_60[v1] = param0->unk_30->unk_2D40[v1].unk_26_0;

        if (param0->unk_30->unk_2D40[v1].unk_70 & 0x200000) {
            v0.unk_58[v1] = param0->unk_30->unk_2D40[v1].unk_88.unk_32;
            v0.unk_64[v1] = param0->unk_30->unk_2D40[v1].unk_88.unk_1C;
        } else {
            v0.unk_58[v1] = param0->unk_30->unk_2D40[v1].unk_7E_0;
            v0.unk_64[v1] = param0->unk_30->unk_2D40[v1].unk_68;
        }
    }

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C17C));
}

void ov16_02264EF8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_02264EF8 v0;
    int v1;
    int v2;
    int v3;

    if (param0->unk_34[param2]->unk_191 & 0x1) {
        v1 = 2;
    } else {
        v1 = 0;
    }

    v2 = param0->unk_30->unk_2D40[param2].unk_26_0;
    v0.unk_00 = 5;

    if (param0->unk_30->unk_2D40[param2].unk_70 & 0x200000) {
        v0.unk_01 = sub_02076648(param0->unk_30->unk_2D40[param2].unk_00, param0->unk_30->unk_2D40[param2].unk_88.unk_32, v1, v2, param0->unk_30->unk_2D40[param2].unk_88.unk_1C);
    } else {
        v0.unk_01 = sub_02076648(param0->unk_30->unk_2D40[param2].unk_00, param0->unk_30->unk_2D40[param2].unk_7E_0, v1, v2, param0->unk_30->unk_2D40[param2].unk_68);
    }

    v0.unk_02 = param0->unk_30->unk_2D40[param2].unk_7F;
    v0.unk_04 = ((param0->unk_30->unk_2D40[param2].unk_70 & 0x1000000) != 0);

    for (v3 = 0; v3 < 4; v3++) {
        v0.unk_08[v3] = param1->unk_2D40[v3].unk_00;
        v0.unk_14[v3] = param1->unk_2D40[v3].unk_26_5;
        v0.unk_18[v3] = param1->unk_2D40[v3].unk_26_0;

        if (param1->unk_2D40[v3].unk_70 & 0x200000) {
            v0.unk_10[v3] = param1->unk_2D40[v3].unk_88.unk_32;
            v0.unk_1C[v3] = param1->unk_2D40[v3].unk_88.unk_1C;
        } else {
            v0.unk_10[v3] = param1->unk_2D40[v3].unk_7E_0;
            v0.unk_1C[v3] = param1->unk_2D40[v3].unk_68;
        }
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02264EF8));
}

void ov16_02265050 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_02265050 v0;
    int v1;
    int v2;

    if (param0->unk_34[param1]->unk_191 & 0x1) {
        v1 = 2;
    } else {
        v1 = 0;
    }

    v2 = param0->unk_30->unk_2D40[param1].unk_26_0;
    v0.unk_00 = 6;

    if (param0->unk_30->unk_2D40[param1].unk_70 & 0x200000) {
        v0.unk_01 = sub_02076648(param0->unk_30->unk_2D40[param1].unk_00, param0->unk_30->unk_2D40[param1].unk_88.unk_32, v1, v2, param0->unk_30->unk_2D40[param1].unk_88.unk_1C);
    } else {
        v0.unk_01 = sub_02076648(param0->unk_30->unk_2D40[param1].unk_00, param0->unk_30->unk_2D40[param1].unk_7E_0, v1, v2, param0->unk_30->unk_2D40[param1].unk_68);
    }

    v0.unk_02 = param2;
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02265050));
}

void ov16_02265108 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 7;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02265124 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_02265124 v0;

    v0.unk_00 = 8;
    v0.unk_02 = param0->unk_AC[param1].unk_01;
    v0.unk_01 = param0->unk_A8[param1];

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02265124));
}

void ov16_02265154 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_02265154 v0;

    v0.unk_00 = 9;
    v0.unk_01 = param2;
    v0.unk_02 = param0->unk_30->unk_219C[ov16_0223E258(param0, param1)];

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02265154));
}

void ov16_0226518C (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 10;

    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_022651A8 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_022651A8 v0;

    v0.unk_00 = 11;
    v0.unk_02 = param0->unk_AC[param1].unk_01;
    v0.unk_01 = param0->unk_A8[param1];
    v0.unk_04 = param2;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_022651A8));
}

void ov16_022651DC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C23C v0;
    UnkStruct_02073C74 * v1;
    int v2;
    int v3;

    v1 = ov16_0223DFAC(param0, param2, param1->unk_219C[param2]);
    v2 = sub_02074470(v1, 5, NULL);
    v3 = sub_02074470(v1, 161, NULL);

    v0.unk_00 = 12;
    v0.unk_01 = param1->unk_2D40[param2].unk_34;
    v0.unk_02 = param1->unk_2D40[param2].unk_4C;
    v0.unk_04 = param1->unk_2D40[param2].unk_50;
    v0.unk_06 = param1->unk_219C[param2];
    v0.unk_07_0 = ov16_02253F7C(param1, param2);

    if (((param1->unk_2D40[param2].unk_00 == 29) || (param1->unk_2D40[param2].unk_00 == 32)) && (param1->unk_2D40[param2].unk_14_31 == 0)) {
        v0.unk_07_5 = 2;
    } else {
        v0.unk_07_5 = param1->unk_2D40[param2].unk_7E_0;
    }

    v0.unk_08 = param1->unk_2D40[param2].unk_64 - sub_02075AD0(v2, v3);
    v0.unk_0C = sub_02075AD0(v2, v3 + 1) - sub_02075AD0(v2, v3);
    v0.unk_07_7 = ov16_0223F9E0(param0, param1->unk_2D40[param2].unk_00);
    v0.unk_10 = ov16_0223ED8C(param0);
    v0.unk_14 = param3;

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C23C));
}

void ov16_02265314 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 13;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02265330 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C260 v0;
    int v1;
    int v2;
    int v3, v4;
    int v5;
    int v6;
    Party * v7;
    UnkStruct_02073C74 * v8;
    u32 v9;
    int v10;

    MI_CpuClearFast(&v0, sizeof(UnkStruct_ov16_0225C260));
    ov16_02252040(ov16_0223DF10(param0), param2);

    v10 = 0;

    for (v1 = 0; v1 < ov16_0223DF1C(param0); v1++) {
        if (ov16_02259A28(param1, v1) == 0) {
            v10 |= sub_020787CC(v1);
        }
    }

    v0.unk_00 = 14;
    v0.unk_01 = param3;
    v0.unk_29 = param1->unk_3108 | v10;

    v9 = ov16_0223DF0C(param0);

    if ((v9 & 0x2) && ((v9 & 0x8) == 0)) {
        v2 = param2 & 1;
    } else {
        v2 = param2;
    }

    v7 = ov16_0223DF20(param0, v2);
    v6 = 0;

    for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
        v8 = Party_GetPokemonBySlotIndex(v7, param1->unk_312C[v2][v1]);
        v5 = sub_02074470(v8, 174, NULL);

        if ((v5) && (v5 != 494)) {
            if (sub_02074470(v8, 163, NULL)) {
                if (sub_02074470(v8, 160, NULL)) {
                    v0.unk_08[0][v6] = 3;
                } else {
                    v0.unk_08[0][v6] = 1;
                }
            } else {
                v0.unk_08[0][v6] = 2;
            }

            if (v9 & (0x4 | 0x20 | 0x80 | 0x200)) {
                v0.unk_02[v6] = 0;
            } else {
                v0.unk_02[v6] = sub_02075A10(v8);
            }

            v6++;
        }
    }

    if (((v9 & (0x4 | 0x8)) == (0x4 | 0x8)) || ((v9 & 0x10)) || ((v9 == ((0x2 | 0x1) | 0x8 | 0x40))) || ((v9 == (((0x2 | 0x1) | 0x8 | 0x40) | 0x80)))) {
        if (ov16_0223E208(param0, param2)) {
            v2 = ov16_0223E1C4(param0, 2);
        } else {
            v2 = ov16_0223E1C4(param0, 3);
        }

        v7 = ov16_0223DF20(param0, v2);
        v6 = 0;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, param1->unk_312C[v2][v1]);
            v5 = sub_02074470(v8, 174, NULL);

            if ((v5) && (v5 != 494)) {
                if (sub_02074470(v8, 163, NULL)) {
                    if (sub_02074470(v8, 160, NULL)) {
                        v0.unk_08[1][v6] = 3;
                    } else {
                        v0.unk_08[1][v6] = 1;
                    }
                } else {
                    v0.unk_08[1][v6] = 2;
                }

                v6++;
            }
        }

        if (ov16_0223E208(param0, param2)) {
            v2 = ov16_0223E1C4(param0, 4);
        } else {
            v2 = ov16_0223E1C4(param0, 5);
        }

        v7 = ov16_0223DF20(param0, v2);
        v6 = 3;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, param1->unk_312C[v2][v1]);
            v5 = sub_02074470(v8, 174, NULL);

            if ((v5) && (v5 != 494)) {
                if (sub_02074470(v8, 163, NULL)) {
                    if (sub_02074470(v8, 160, NULL)) {
                        v0.unk_08[1][v6] = 3;
                    } else {
                        v0.unk_08[1][v6] = 1;
                    }
                } else {
                    v0.unk_08[1][v6] = 2;
                }

                v6++;
            }
        }
    } else {
        v2 = ov16_0223E2A4(param0, param2, 2);
        v7 = ov16_0223DF20(param0, v2);
        v6 = 0;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, param1->unk_312C[v2][v1]);
            v5 = sub_02074470(v8, 174, NULL);

            if ((v5) && (v5 != 494)) {
                if (sub_02074470(v8, 163, NULL)) {
                    if (sub_02074470(v8, 160, NULL)) {
                        v0.unk_08[1][v6] = 3;
                    } else {
                        v0.unk_08[1][v6] = 1;
                    }
                } else {
                    v0.unk_08[1][v6] = 2;
                }

                v6++;
            }
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_14[v1] = ov16_02252060(param1, param2, 6 + v1, NULL);
        v0.unk_1C[v1] = ov16_02252060(param1, param2, 31 + v1, NULL);
        v0.unk_20[v1] = ov16_02252060(param1, param2, 39 + v1, NULL);
    }

    v0.unk_24 = param1->unk_2D40[param2].unk_4C;
    v0.unk_26 = param1->unk_2D40[param2].unk_50;

    if (v0.unk_24) {
        if (param1->unk_2D40[param2].unk_6C) {
            v0.unk_28 = 3;
        } else {
            v0.unk_28 = 1;
        }
    } else {
        v0.unk_28 = 2;
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C260));
}

void ov16_022656D4 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    ov16_02264A04(param0, 0, param1, &param2, 4);
}

void ov16_022656F0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_022656F0 v0;
    int v1;

    ov16_02252040(ov16_0223DF10(param0), param2);

    v0.unk_00 = 15;
    v0.unk_01 = param1->unk_219C[param2];

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = param1->unk_2D40[param2].unk_0C[v1];
        v0.unk_0C[v1] = param1->unk_2D40[param2].unk_2C[v1];
        v0.unk_10[v1] = MoveTable_GetMoveMaxPP(param1->unk_2D40[param2].unk_0C[v1], param1->unk_2D40[param2].unk_30[v1]);
    }

    v0.unk_02 = ov16_02254A6C(param0, param1, param2, 0, 0xffffffff);

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_022656F0));
}

void ov16_02265790 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    ov16_02264A04(param0, 0, param1, &param2, 4);
}

void ov16_022657AC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C29C v0;
    int v1;
    u32 v2;

    ov16_02252040(param1, param3);

    v2 = ov16_0223DF0C(param0);

    v0.unk_00 = 16;
    v0.unk_02 = param2;

    if (((v2 & 0x2) == 0) || (v2 & 0x8) || ((v2 & 0x2) && (param3 >= 2))) {
        v0.unk_01 = 1;
    } else {
        v0.unk_01 = 0;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (param1->unk_2D40[v1].unk_4C) {
            v0.unk_04[v1].unk_04 = param1->unk_2D40[v1].unk_4C;
            v0.unk_04[v1].unk_06 = param1->unk_2D40[v1].unk_50;
            v0.unk_04[v1].unk_01_2 = 1;

            if (((param1->unk_2D40[v1].unk_00 == 29) || (param1->unk_2D40[v1].unk_00 == 32)) && (param1->unk_2D40[v1].unk_14_31 == 0)) {
                v0.unk_04[v1].unk_01_0 = 2;
            } else {
                v0.unk_04[v1].unk_01_0 = param1->unk_2D40[v1].unk_7E_0;
            }

            v0.unk_04[v1].unk_00 = param1->unk_219C[v1];

            if (param1->unk_2D40[v1].unk_6C) {
                v0.unk_04[v1].unk_02 = 3;
            } else {
                v0.unk_04[v1].unk_02 = 1;
            }
        } else {
            v0.unk_04[v1].unk_01_2 = 0;
            v0.unk_04[v1].unk_02 = 2;
        }
    }

    ov16_02264A04(param0, 1, param3, &v0, sizeof(UnkStruct_ov16_0225C29C));
}

void ov16_022658CC (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    ov16_02264A04(param0, 0, param1, &param2, 4);
}

void ov16_022658E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_0225C2B0 v0;
    int v1, v2;

    ov16_02252040(param1, param2);

    v0.unk_00 = 17;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = param1->unk_219C[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0.unk_08[v1][v2] = param1->unk_312C[v1][v2];
        }

        v0.unk_20[v1] = param1->unk_2D40[v1].unk_88.unk_04_19;
    }

    if (ov16_0223DF0C(param0) == (0x2 | 0x8 | 0x40)) {
        if (((param1->unk_3108 & sub_020787CC(1)) == 0) && ((param1->unk_3108 & sub_020787CC(3)) == 0)) {
            v0.unk_01 = 1;
            v0.unk_02 = 0;
            v0.unk_03 = 0;
        } else if ((param1->unk_3108 & sub_020787CC(1)) == 0) {
            v0.unk_01 = 0;

            if (param1->unk_2D40[1].unk_80 & (0x40 | 0x80 | 0x40000 | 0x20000000)) {
                v0.unk_02 = 1;
                v0.unk_03 = 0;
            } else if (param1->unk_2D40[1].unk_70 & 0x1000000) {
                v0.unk_02 = 0;
                v0.unk_03 = 1;
            } else {
                v0.unk_02 = 0;
                v0.unk_03 = 0;
            }
        } else {
            v0.unk_01 = 0;

            if (param1->unk_2D40[3].unk_80 & (0x40 | 0x80 | 0x40000 | 0x20000000)) {
                v0.unk_02 = 1;
                v0.unk_03 = 0;
            } else if (param1->unk_2D40[3].unk_70 & 0x1000000) {
                v0.unk_02 = 0;
                v0.unk_03 = 1;
            } else {
                v0.unk_02 = 0;
                v0.unk_03 = 0;
            }
        }
    } else if (ov16_0223DF0C(param0) == (0x0 | 0x0)) {
        v0.unk_01 = 0;

        if (param1->unk_2D40[1].unk_80 & (0x40 | 0x80 | 0x40000 | 0x20000000)) {
            v0.unk_02 = 1;
            v0.unk_03 = 0;
        } else if (param1->unk_2D40[1].unk_70 & 0x1000000) {
            v0.unk_02 = 0;
            v0.unk_03 = 1;
        } else {
            v0.unk_02 = 0;
            v0.unk_03 = 0;
        }
    } else {
        v0.unk_01 = 0;
        v0.unk_02 = 0;
        v0.unk_03 = 0;
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C2B0));
}

void ov16_02265A70 (UnkStruct_0207ADB4 * param0, int param1, UnkStruct_ov16_0224DDA8 param2)
{
    ov16_02264A04(param0, 0, param1, &param2, sizeof(UnkStruct_ov16_0224DDA8));
}

void ov16_02265A8C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_ov16_0225C2C4 v0;
    int v1, v2;

    ov16_02252040(param1, param2);

    v0.unk_00 = 18;
    v0.unk_01 = param2;
    v0.unk_02 = param3;
    v0.unk_20 = param4;
    v0.unk_03 = param5;
    v0.unk_24 = param1->unk_3108;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = param1->unk_219C[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0.unk_08[v1][v2] = param1->unk_312C[v1][v2];
        }
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C2C4));
}

void ov16_02265B10 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    ov16_02264A04(param0, 0, param1, &param2, 4);
}

void ov16_02265B2C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_ov16_0225C2D8 v0;

    ov16_02252040(param1, param2);

    v0.unk_00 = 19;
    v0.unk_02 = param3;
    v0.unk_01 = param4;
    v0.unk_04 = param5;
    v0.unk_08 = param6;

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C2D8));
}

void ov16_02265B68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_0225C2EC v0;

    v0.unk_00 = 20;
    v0.unk_01 = param1->unk_219C[param1->unk_64];
    v0.unk_02 = param1->unk_3044;

    ov16_02264A04(param0, 1, param1->unk_64, &v0, sizeof(UnkStruct_ov16_0225C2EC));
}

void ov16_02265BA0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_0225C300 * param2)
{
    param2->unk_00 = 21;
    ov16_02264A04(param0, 1, param1->unk_64, param2, sizeof(UnkStruct_ov16_0225C300));
}

void ov16_02265BBC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, u16 param2)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 0, NULL, param1->unk_64, param1->unk_6C, param2);
    ov16_02264A04(param0, 1, param1->unk_64, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void ov16_02265BEC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, u16 param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 0, NULL, param3, param4, param2);
    ov16_02264A04(param0, 1, param3, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void ov16_02265C1C (UnkStruct_0207ADB4 * param0, int param1, u32 param2)
{
    int v0 = 23;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02265C38 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_0225C35C v0;
    UnkStruct_02073C74 * v1;
    int v2;
    int v3;

    v1 = ov16_0223DFAC(param0, param2, param1->unk_219C[param2]);
    v2 = sub_02074470(v1, 5, NULL);
    v3 = sub_02074470(v1, 161, NULL);

    v0.unk_00 = 24;
    v0.unk_01 = param1->unk_2D40[param2].unk_34;
    v0.unk_02 = param1->unk_2D40[param2].unk_4C;
    v0.unk_04 = param1->unk_2D40[param2].unk_50;
    v0.unk_08 = param1->unk_215C;

    if (((param1->unk_2D40[param2].unk_00 == 29) || (param1->unk_2D40[param2].unk_00 == 32)) && (param1->unk_2D40[param2].unk_14_31 == 0)) {
        v0.unk_07 = 2;
    } else {
        v0.unk_07 = param1->unk_2D40[param2].unk_7E_0;
    }

    v0.unk_0C = param1->unk_2D40[param2].unk_64 - sub_02075AD0(v2, v3);
    v0.unk_10 = sub_02075AD0(v2, v3 + 1) - sub_02075AD0(v2, v3);

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C35C));
}

void ov16_02265D14 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C370 v0;
    UnkStruct_02073C74 * v1;
    int v2;
    int v3;

    v1 = ov16_0223DFAC(param0, param2, param1->unk_219C[param2]);
    v2 = sub_02074470(v1, 5, NULL);
    v3 = sub_02074470(v1, 161, NULL);

    v0.unk_00 = 25;
    v0.unk_04 = param3;
    v0.unk_08 = param1->unk_2D40[param2].unk_64 - sub_02075AD0(v2, v3);
    v0.unk_0C = sub_02075AD0(v2, v3 + 1) - sub_02075AD0(v2, v3);

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C370));
}

void ov16_02265D98 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_0225C384 v0;
    int v1;

    v0.unk_00 = 26;
    v0.unk_02 = param1->unk_2D40[param2].unk_00;
    v0.unk_08 = param1->unk_2D40[param2].unk_26_0;
    v0.unk_09 = ((param1->unk_2D40[param2].unk_70 & 0x1000000) != 0);
    v0.unk_0A = ((param1->unk_2D40[param2].unk_70 & 0x200000) != 0);

    if (param1->unk_2D40[param2].unk_70 & 0x200000) {
        v0.unk_01 = param1->unk_2D40[param2].unk_88.unk_32;
        v0.unk_04 = param1->unk_2D40[param2].unk_88.unk_1C;
    } else {
        v0.unk_01 = param1->unk_2D40[param2].unk_7E_0;
        v0.unk_04 = param1->unk_2D40[param2].unk_68;
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = param1->unk_2D40[v1].unk_00;
        v0.unk_18[v1] = param1->unk_2D40[v1].unk_26_5;
        v0.unk_1C[v1] = param1->unk_2D40[v1].unk_26_0;

        if (param1->unk_2D40[v1].unk_70 & 0x200000) {
            v0.unk_14[v1] = param1->unk_2D40[v1].unk_88.unk_32;
            v0.unk_20[v1] = param1->unk_2D40[v1].unk_88.unk_1C;
        } else {
            v0.unk_14[v1] = param1->unk_2D40[v1].unk_7E_0;
            v0.unk_20[v1] = param1->unk_2D40[v1].unk_68;
        }
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C384));
}

void ov16_02265EAC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C398 v0;

    v0.unk_00 = 27;
    v0.unk_04 = param2;

    ov16_02264A04(param0, 1, param3, &v0, sizeof(UnkStruct_ov16_0225C398));
}

void ov16_02265ECC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0 = 28;

    ov16_02264A04(param0, 1, 0, &v0, 4);
}

void ov16_02265EE8 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_0225C3BC v0;
    int v1;

    v0.unk_00 = 29;
    v0.unk_01 = param2;
    v0.unk_02 = ((param0->unk_30->unk_2D40[param1].unk_70 & 0x1000000) != 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = param0->unk_30->unk_2D40[v1].unk_00;
        v0.unk_10[v1] = param0->unk_30->unk_2D40[v1].unk_26_5;
        v0.unk_14[v1] = param0->unk_30->unk_2D40[v1].unk_26_0;

        if (param0->unk_30->unk_2D40[v1].unk_70 & 0x200000) {
            v0.unk_0C[v1] = param0->unk_30->unk_2D40[v1].unk_88.unk_32;
            v0.unk_18[v1] = param0->unk_30->unk_2D40[v1].unk_88.unk_1C;
        } else {
            v0.unk_0C[v1] = param0->unk_30->unk_2D40[v1].unk_7E_0;
            v0.unk_18[v1] = param0->unk_30->unk_2D40[v1].unk_68;
        }
    }

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3BC));
}

void ov16_02265FB8 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_0225C3D0 v0;

    v0.unk_00 = 30;
    v0.unk_01 = param2;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3D0));
}

void ov16_02265FD8 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_0225C3E4 v0;

    v0.unk_00 = 31;
    v0.unk_01 = param2;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3E4));
}

void ov16_02265FF8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 1, param3, param2, param2, NULL);
    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void ov16_02266028 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 1, param4, param2, param3, NULL);
    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void ov16_02266058 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C3F8 v0;

    v0.unk_00 = 32;
    v0.unk_01 = param3;
    v0.unk_02 = (param1->unk_3122 - param1->unk_2D40[1].unk_4C) * 100 / param1->unk_3122;

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C3F8));
}

void ov16_0226609C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C40C v0;

    v0.unk_00 = 33;
    v0.unk_01 = param3;

    if (param1->unk_2D40[1].unk_4C == 0) {
        v0.unk_02 = 1000;
    } else {
        v0.unk_02 = param1->unk_2D40[1].unk_4C * 1000 / param1->unk_2D40[1].unk_50;
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C40C));
}

void ov16_022660E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0 = 34;

    ov16_02264A04(param0, 1, param2, &v0, 4);
}

void ov16_02266100 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_0225C430 v0;
    int v1;

    v0.unk_00 = 35;

    for (v1 = 0; v1 < ov16_0223DF1C(param0); v1++) {
        v0.unk_04[v1] = param1->unk_219C[v1];
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C430));
}

void ov16_0226614C (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 36;

    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02266168 (UnkStruct_0207ADB4 * param0, int param1, UnkStruct_ov16_0225C300 param2)
{
    UnkStruct_ov16_0225C454 v0;

    ov16_02252040(ov16_0223DF10(param0), param1);

    v0.unk_00 = 37;
    v0.unk_04 = param2;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C454));
}

void ov16_022661B0 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0;

    v0 = 1;
    ov16_02264A04(param0, 0, param1, &v0, 4);
}

void ov16_022661CC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_0225C468 v0;
    UnkStruct_02073C74 * v1;
    int v2;
    int v3;

    v1 = ov16_0223DFAC(param0, param2, param1->unk_219C[param2]);
    v2 = sub_02074470(v1, 5, NULL);
    v3 = sub_02074470(v1, 161, NULL);

    v0.unk_00 = 38;
    v0.unk_01 = param1->unk_2D40[param2].unk_34;
    v0.unk_02 = param1->unk_2D40[param2].unk_4C;
    v0.unk_04 = param1->unk_2D40[param2].unk_50;
    v0.unk_06 = param1->unk_219C[param2];
    v0.unk_07_0 = ov16_02253F7C(param1, param2);

    if (((param1->unk_2D40[param2].unk_00 == 29) || (param1->unk_2D40[param2].unk_00 == 32)) && (param1->unk_2D40[param2].unk_14_31 == 0)) {
        v0.unk_07_5 = 2;
    } else {
        v0.unk_07_5 = param1->unk_2D40[param2].unk_7E_0;
    }

    v0.unk_08 = param1->unk_2D40[param2].unk_64 - sub_02075AD0(v2, v3);
    v0.unk_0C = sub_02075AD0(v2, v3 + 1) - sub_02075AD0(v2, v3);
    v0.unk_07_7 = ov16_0223F9E0(param0, param1->unk_2D40[param2].unk_00);
    v0.unk_10 = ov16_0223ED8C(param0);

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C468));
}

void ov16_022662FC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_022662FC v0;
    int v1;

    v0.unk_00 = 39;
    v0.unk_01_0 = param1->unk_219C[param2];
    v0.unk_01_4 = param1->unk_2D40[param2].unk_88.unk_04_2;
    v0.unk_02 = param1->unk_2D40[param2].unk_4C;
    v0.unk_0C = param1->unk_2D40[param2].unk_78;
    v0.unk_08 = param1->unk_1C4[ov16_0223E208(param0, param2)].unk_00_23;
    v0.unk_1C = param1->unk_2D40[param2].unk_26_0;
    v0.unk_20 = param1->unk_2D40[param2].unk_27;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0E[v1] = param1->unk_2D40[param2].unk_0C[v1];
        v0.unk_12[v1] = param1->unk_2D40[param2].unk_2C[v1];
    }

    if (v0.unk_02) {
        v0.unk_04 = (param1->unk_2D40[param2].unk_6C & (0xf00 ^ 0xffffffff));
        v0.unk_18 = param1->unk_2D40[param2].unk_70;
    } else {
        v0.unk_04 = 0;
        v0.unk_18 = param1->unk_2D40[param2].unk_70;
    }

    if (param1->unk_2140 & 0x4000000) {
        v0.unk_26 = 1;
        param1->unk_2140 &= (0x4000000 ^ 0xffffffff);
    } else {
        v0.unk_26 = 0;
    }

    if (param1->unk_2140 & 0x8000000) {
        v0.unk_24 = 1;
        v0.unk_26 = 1;
        param1->unk_2140 &= (0x8000000 ^ 0xffffffff);
    } else {
        v0.unk_24 = 0;
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_022662FC));
}

void ov16_02266460 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 40;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_0226647C (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 41;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02266498 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    UnkStruct_ov16_02266498 v0;

    v0.unk_00 = 42;
    v0.unk_02 = param3;
    v0.unk_01 = param1->unk_2D40[param2].unk_27;

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02266498));
}

void ov16_022664C4 (UnkStruct_0207ADB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_0225C65C v0;

    ov16_02252040(ov16_0223DF10(param0), param1);

    v0.unk_00 = 43;
    v0.unk_02 = param2;
    v0.unk_01 = param3;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02266498));
}

void ov16_022664F8 (UnkStruct_0207ADB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_022664F8 v0;

    v0.unk_00 = 44;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_022664F8));
}

void ov16_0226651C (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C684 v0;

    v0.unk_00 = 45;
    v0.unk_02 = param0->unk_30->unk_2D40[param1].unk_00;
    v0.unk_05 = param0->unk_30->unk_2D40[param1].unk_26_5;

    if (param0->unk_30->unk_2D40[param1].unk_70 & 0x200000) {
        v0.unk_04 = param0->unk_30->unk_2D40[param1].unk_88.unk_32;
        v0.unk_08 = param0->unk_30->unk_2D40[param1].unk_88.unk_1C;
    } else {
        v0.unk_04 = param0->unk_30->unk_2D40[param1].unk_7E_0;
        v0.unk_08 = param0->unk_30->unk_2D40[param1].unk_68;
    }

    v0.unk_01 = param0->unk_30->unk_2D40[param1].unk_26_0;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C684));
}

void ov16_022665AC (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 46;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_022665C8 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 47;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_022665E4 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C840 v0;

    ov16_02266CF0(param0, param0->unk_30, &v0, 48, param1);
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C840));
}

void ov16_0226660C (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C840 v0;

    ov16_02266CF0(param0, param0->unk_30, &v0, 49, param1);
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C840));
}

void ov16_02266634 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C840 v0;

    ov16_02266CF0(param0, param0->unk_30, &v0, 50, param1);
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C840));
}

void ov16_0226665C (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C840 v0;

    ov16_02266CF0(param0, param0->unk_30, &v0, 51, param1);
    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C840));
}

void ov16_02266684 (UnkStruct_0207ADB4 * param0)
{
    int v0 = 52;
    ov16_02264A04(param0, 1, 0, &v0, 4);
}

void ov16_022666A0 (UnkStruct_0207ADB4 * param0)
{
    int v0 = 53;
    ov16_02264A04(param0, 1, 0, &v0, 4);
}

void ov16_022666BC (UnkStruct_0207ADB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_022666BC v0;

    v0.unk_00 = 54;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_022666BC));
}

void ov16_022666E0 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0225C988 v0;
    u32 v1 = ov16_0223DF0C(param0);

    v0.unk_00 = 55;
    v0.unk_02 = 0;

    if ((v1 & 0x4) && (sub_0202F250() == 1) && ((param0->unk_2408 & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
        ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C988));
    }
}

void ov16_0226673C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    UnkStruct_ov16_02265BBC v1;

    v1.unk_00 = 56;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_18[v0] = param1->unk_2D40[v0].unk_00;
        v1.unk_24[v0] = param1->unk_2D40[v0].unk_26_5;
        v1.unk_28[v0] = param1->unk_2D40[v0].unk_26_0;

        if (param1->unk_2D40[v0].unk_70 & 0x200000) {
            v1.unk_20[v0] = param1->unk_2D40[v0].unk_88.unk_32;
            v1.unk_2C[v0] = param1->unk_2D40[v0].unk_88.unk_1C;
        } else {
            v1.unk_20[v0] = param1->unk_2D40[v0].unk_7E_0;
            v1.unk_2C[v0] = param1->unk_2D40[v0].unk_68;
        }
    }

    ov16_02264A04(param0, 1, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void ov16_022667E8 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 57;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02266804 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0 = 58;
    ov16_02264A04(param0, 1, param1, &v0, 4);
}

void ov16_02266820 (UnkStruct_0207ADB4 * param0)
{
    int v0 = 59;
    ov16_02264A04(param0, 1, 0, &v0, 4);
}

void ov16_0226683C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_0225C9F0 v0;
    int v1;
    u32 v2 = ov16_0223DF0C(param0);

    v0.unk_00 = 60;
    v0.unk_01 = 0;
    v0.unk_02 = 0;

    for (v1 = 0; v1 < ov16_0223DF1C(param0); v1++) {
        if (param1->unk_21A8[v1][0] == 16) {
            v0.unk_01 |= sub_020787CC(v1);
        }
    }

    if ((v2 & 0x4) && (sub_0202F250() == 1) && ((param0->unk_2408 & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    ov16_02264A04(param0, 1, 0, &v0, sizeof(UnkStruct_ov16_0225C9F0));
}

void ov16_022668D0 (UnkStruct_0207ADB4 * param0)
{
    UnkStruct_ov16_0225CA14 v0;
    u32 v1 = ov16_0223DF0C(param0);

    v0.unk_00 = 61;
    v0.unk_02 = 0;

    if ((v1 & 0x4) && (sub_0202F250() == 1) && ((param0->unk_2408 & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    ov16_02264A04(param0, 1, 0, &v0, sizeof(UnkStruct_ov16_0225CA14));
}

void ov16_0226692C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    UnkStruct_ov16_02265BBC v1;

    v1.unk_00 = 62;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_18[v0] = param1->unk_2D40[v0].unk_00;
        v1.unk_24[v0] = param1->unk_2D40[v0].unk_26_5;
        v1.unk_28[v0] = param1->unk_2D40[v0].unk_26_0;

        if (param1->unk_2D40[v0].unk_70 & 0x200000) {
            v1.unk_20[v0] = param1->unk_2D40[v0].unk_88.unk_32;
            v1.unk_2C[v0] = param1->unk_2D40[v0].unk_88.unk_1C;
        } else {
            v1.unk_20[v0] = param1->unk_2D40[v0].unk_7E_0;
            v1.unk_2C[v0] = param1->unk_2D40[v0].unk_68;
        }
    }

    ov16_02264A04(param0, 1, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void ov16_022669D8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    UnkStruct_ov16_0225CA4C v0;

    v0.unk_00 = 63;

    if (param1->unk_216C & 0x2) {
        v0.unk_01 = 2;
    } else if (param1->unk_216C & 0x4) {
        v0.unk_01 = 1;
    } else {
        v0.unk_01 = 0;
    }

    ov16_02264A04(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225CA4C));
}

void ov16_02266A18 (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_0225CA60 v0;

    v0.unk_00 = 64;
    v0.unk_02 = param2;

    ov16_02264A04(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225CA60));
}

void ov16_02266A38 (UnkStruct_0207ADB4 * param0)
{
    UnkStruct_ov16_02266A38 v0;
    u32 v1 = ov16_0223DF0C(param0);

    v0.unk_00 = 65;
    v0.unk_04 = ov16_0223F438(param0);
    v0.unk_02 = 0;

    if ((v1 & 0x4) && (sub_0202F250() == 1) && ((param0->unk_2408 & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_08[0]);
        GF_ASSERT(v0.unk_02 <= 28);
    }

    ov16_02264A04(param0, 1, 0, &v0, sizeof(UnkStruct_ov16_02266A38));
}

void ov16_02266AA0 (UnkStruct_0207ADB4 * param0)
{
    int v0 = 66;
    ov16_02264A04(param0, 1, 0, &v0, 4);
}

void ov16_02266ABC (UnkStruct_0207ADB4 * param0, int param1, int param2)
{
    UnkStruct_ov16_02266ABC v0;

    v0.unk_00 = param2;
    v0.unk_01 = sub_0203608C();

    ov16_02264A04(param0, 2, param1, &v0, sizeof(UnkStruct_ov16_02266ABC));
}

BOOL ov16_02266AE4 (UnkStruct_0207ADB4 * param0, void * param1)
{
    u8 * v0 = (u8 *)param1;
    u8 v1;
    u8 v2;
    int v3;
    int v4;
    BOOL v5 = 1;

    v1 = v0[0];
    v2 = v0[1];
    v3 = v0[2] | (v0[3] << 8);

    v0 += sizeof(UnkStruct_0207A81C);

    if (v1 == 0) {
        for (v4 = 0; v4 < v3; v4++) {
            param0->unk_30->unk_2300[v2][v4] = v0[v4];
        }
    } else if (v1 == 1) {
        if (param0->unk_34[v2]->unk_1A4 == 0) {
            param0->unk_34[v2]->unk_1A4 = 1;

            for (v4 = 0; v4 < v3; v4++) {
                param0->unk_34[v2]->unk_90[v4] = v0[v4];
            }
        } else {
            v5 = 0;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int v7;

            v6 = v0[0];
            v7 = v0[1];

            if (ov16_0223ED60(param0)) {
                ov16_02251F80(param0->unk_30, v7, v2, v6);
            }
        }
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02266B78 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_02265BBC * param2, int param3, int param4, int param5, int param6, u16 param7)
{
    int v0;

    param2->unk_00 = 22;
    param2->unk_02 = param7;
    param2->unk_14 = param5;
    param2->unk_16 = param6;
    param2->unk_4C = param3;
    param2->unk_50 = param4;
    param2->unk_54 = ov16_0223E22C(param0);

    if (param1 != NULL) {
        param2->unk_04 = param1->unk_2144;

        if (param1->unk_2154) {
            param2->unk_08 = param1->unk_2154;
        } else {
            param2->unk_08 = param1->unk_354.unk_8A[param7].unk_03;
        }

        param2->unk_0C = param1->unk_2D40[param5].unk_35;

        if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
            param2->unk_10 = param1->unk_180;
        } else {
            param2->unk_10 = 0;
        }

        param2->unk_0A = param1->unk_2164;
        param2->unk_0E_0 = ((param1->unk_2D40[param5].unk_70 & 0x1000000) != 0);
        param2->unk_0E_1 = ((param1->unk_2D40[param5].unk_70 & 0x200000) != 0);

        for (v0 = 0; v0 < 4; v0++) {
            param2->unk_18[v0] = param1->unk_2D40[v0].unk_00;
            param2->unk_24[v0] = param1->unk_2D40[v0].unk_26_5;
            param2->unk_28[v0] = param1->unk_2D40[v0].unk_26_0;
            param2->unk_3C[v0] = param1->unk_2D40[v0].unk_80;

            if (param1->unk_2D40[v0].unk_70 & 0x200000) {
                param2->unk_20[v0] = param1->unk_2D40[v0].unk_88.unk_32;
                param2->unk_2C[v0] = param1->unk_2D40[v0].unk_88.unk_1C;
            } else {
                param2->unk_20[v0] = param1->unk_2D40[v0].unk_7E_0;
                param2->unk_2C[v0] = param1->unk_2D40[v0].unk_68;
            }
        }
    }
}

static void ov16_02266CF0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_0225C840 * param2, int param3, int param4)
{
    int v0;
    int v1, v2;
    int v3;
    int v4;
    u32 v5;
    Party * v6;
    UnkStruct_02073C74 * v7;

    MI_CpuClearFast(param2, sizeof(UnkStruct_ov16_0225C840));

    v5 = ov16_0223DF0C(param0);
    param2->unk_00 = param3;

    if (((v5 & (0x4 | 0x8)) == (0x4 | 0x8)) || ((v5 & 0x10) && (ov16_0223E208(param0, param4))) || ((v5 == ((0x2 | 0x1) | 0x8 | 0x40)) && (ov16_0223E208(param0, param4))) || ((v5 == (((0x2 | 0x1) | 0x8 | 0x40) | 0x80)))) {
        if ((ov16_0223E1F8(param0, param4) == 2) || (ov16_0223E1F8(param0, param4) == 3)) {
            v1 = param4;
            v2 = ov16_0223E258(param0, param4);
        } else {
            v1 = ov16_0223E258(param0, param4);
            v2 = param4;
        }

        v6 = ov16_0223DF20(param0, v1);
        v4 = 0;

        for (v0 = 0; v0 < Party_GetCurrentCount(v6); v0++) {
            v7 = Party_GetPokemonBySlotIndex(v6, param1->unk_312C[v1][v0]);
            v3 = sub_02074470(v7, 174, NULL);

            if ((v3) && (v3 != 494)) {
                if (sub_02074470(v7, 163, NULL)) {
                    if (sub_02074470(v7, 160, NULL)) {
                        param2->unk_02[v4] = 3;
                    } else {
                        param2->unk_02[v4] = 1;
                    }
                } else {
                    param2->unk_02[v4] = 2;
                }

                v4++;
            }
        }

        v6 = ov16_0223DF20(param0, v2);
        v4 = 3;

        for (v0 = 0; v0 < Party_GetCurrentCount(v6); v0++) {
            v7 = Party_GetPokemonBySlotIndex(v6, param1->unk_312C[v2][v0]);
            v3 = sub_02074470(v7, 174, NULL);

            if ((v3) && (v3 != 494)) {
                if (sub_02074470(v7, 163, NULL)) {
                    if (sub_02074470(v7, 160, NULL)) {
                        param2->unk_02[v4] = 3;
                    } else {
                        param2->unk_02[v4] = 1;
                    }
                } else {
                    param2->unk_02[v4] = 2;
                }

                v4++;
            }
        }
    } else {
        if ((v5 & 0x2) && ((v5 & 0x8) == 0)) {
            param4 = param4 & 1;
        } else {
            param4 = param4;
        }

        v6 = ov16_0223DF20(param0, param4);
        v4 = 0;

        for (v0 = 0; v0 < Party_GetCurrentCount(v6); v0++) {
            v7 = Party_GetPokemonBySlotIndex(v6, param1->unk_312C[param4][v0]);
            v3 = sub_02074470(v7, 174, NULL);

            if ((v3) && (v3 != 494)) {
                if (sub_02074470(v7, 163, NULL)) {
                    if (sub_02074470(v7, 160, NULL)) {
                        param2->unk_02[v4] = 3;
                    } else {
                        param2->unk_02[v4] = 1;
                    }
                } else {
                    param2->unk_02[v4] = 2;
                }

                v4++;
            }
        }
    }
}
