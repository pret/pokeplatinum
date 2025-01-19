#include "overlay104/ov104_0222ECE8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203041C_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "party.h"

#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_ov104_0223ADA0.h"
#include "overlay104/struct_ov104_0223B5C0.h"
#include "overlay104/struct_ov104_0223BA10.h"
#include "overlay104/struct_ov104_0223BFFC.h"

#include "communication_system.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "trainer_info.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_0205DFC4.h"

BOOL ov104_0222EEF8(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0222EF30(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222EF64(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0222EF94(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222EFCC(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0222F03C(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F0B4(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0222F124(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F1A0(UnkStruct_ov104_0223ADA0 *param0, u8 param1);
void ov104_0222F1C4(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F1EC(UnkStruct_ov104_0223ADA0 *param0, u8 param1);
void ov104_0222F210(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F238(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0222F31C(int param0, int param1, void *param2, void *param3);
void ov104_0222ECE8(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222ED00(UnkStruct_ov104_0223B5C0 *param0);
void ov104_0222ED2C(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222ED44(UnkStruct_ov104_0223B5C0 *param0);
void ov104_0222ED74(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222EDA8(UnkStruct_ov104_0223B5C0 *param0);
void ov104_0222EDDC(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222EE14(UnkStruct_ov104_0223B5C0 *param0, u8 param1);
void ov104_0222EE38(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222EE60(UnkStruct_ov104_0223B5C0 *param0);
void ov104_0222EEA8(int param0, int param1, void *param2, void *param3);
u8 *ov104_0222EED8(int param0, void *param1, int param2);
BOOL ov104_0222F3B8(UnkStruct_ov104_0223BA10 *param0);
void ov104_0222F418(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F44C(UnkStruct_ov104_0223BA10 *param0);
void ov104_0222F480(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F4B8(UnkStruct_ov104_0223BA10 *param0);
void ov104_0222F530(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F5D4(UnkStruct_ov104_0223BA10 *param0);
void ov104_0222F650(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F6C8(UnkStruct_ov104_0223BA10 *param0, u16 param1);
void ov104_0222F6E8(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F710(UnkStruct_ov104_0223BA10 *param0, u16 param1);
void ov104_0222F730(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F758(UnkStruct_ov104_0223BA10 *param0);
void ov104_0222F7BC(int param0, int param1, void *param2, void *param3);
u8 *ov104_0222F84C(int param0, void *param1, int param2);
BOOL ov104_0222F86C(UnkStruct_ov104_0223BFFC *param0);
void ov104_0222F8A0(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F8D0(UnkStruct_ov104_0223BFFC *param0);
void ov104_0222F908(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222F944(UnkStruct_ov104_0223BFFC *param0);
void ov104_0222F9C0(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222FA38(UnkStruct_ov104_0223BFFC *param0, u16 param1);
void ov104_0222FA5C(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222FA84(UnkStruct_ov104_0223BFFC *param0, u16 param1);
void ov104_0222FAA8(int param0, int param1, void *param2, void *param3);
BOOL ov104_0222FAD0(UnkStruct_ov104_0223BFFC *param0);
void ov104_0222FB34(int param0, int param1, void *param2, void *param3);
u8 *ov104_0222FBC4(int param0, void *param1, int param2);

void ov104_0222ECE8(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov104_0223B5C0 *v0 = param3;
    const u16 *v1 = param2;

    v0->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    return;
}

BOOL ov104_0222ED00(UnkStruct_ov104_0223B5C0 *param0)
{
    int v0, v1;
    TrainerInfo *v2;
    u16 *v3;
    int v4, v5;

    v5 = 44;
    v3 = param0->unk_72C;
    v1 = 0;
    v2 = SaveData_GetTrainerInfo(param0->unk_6FC);

    v1 += 1;
    v1 += (7 + 1);

    if (CommSys_SendData(34, v3, v5) == 1) {
        v4 = 1;
    } else {
        v4 = 0;
    }

    return v4;
}

void ov104_0222ED2C(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223B5C0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += (7 + 1);

    return;
}

BOOL ov104_0222ED44(UnkStruct_ov104_0223B5C0 *param0)
{
    Party *v0;
    Pokemon *v1;
    int v2, v3;
    u16 *v4;
    int v5, v6;

    v6 = 44;
    v4 = param0->unk_72C;
    v3 = 0;

    for (v2 = 0; v2 < (10 * 2); v2++) {
        v4[v2 + v3] = param0->unk_18[v2];
    }

    v3 += (10 * 2);

    if (CommSys_SendData(35, v4, v6) == 1) {
        v5 = 1;
    } else {
        v5 = 0;
    }

    return v5;
}

void ov104_0222ED74(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223B5C0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < (10 * 2); v0++) {
        v2->unk_18[v0] = v3[v0 + v1];
    }

    v1 += (10 * 2);

    return;
}

BOOL ov104_0222EDA8(UnkStruct_ov104_0223B5C0 *param0)
{
    int v0, v1;
    u16 *v2;
    int v3, v4;

    v4 = 44;
    v2 = param0->unk_72C;
    v1 = 0;

    for (v0 = 0; v0 < (10 * 2); v0++) {
        v2[v0] = param0->unk_268[v0];
    }

    v1 += (10 * 2);

    if (CommSys_SendData(36, v2, v4) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

void ov104_0222EDDC(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223B5C0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < (10 * 2); v0++) {
        v2->unk_268[v0] = v3[v0];
    }

    v1 += (10 * 2);

    return;
}

BOOL ov104_0222EE14(UnkStruct_ov104_0223B5C0 *param0, u8 param1)
{
    u16 *v0;
    int v1, v2;

    v2 = 44;
    v0 = param0->unk_72C;

    v0[0] = param1;

    if (CommSys_SendData(37, v0, v2) == 1) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    return v1;
}

void ov104_0222EE38(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov104_0223B5C0 *v0 = param3;
    const u16 *v1 = param2;

    v0->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_D88 = (u8)v1[0];

    return;
}

BOOL ov104_0222EE60(UnkStruct_ov104_0223B5C0 *param0)
{
    int v0, v1, v2, v3, v4;
    Pokemon *v5;
    Party *v6;

    v1 = 0;
    v3 = 512;
    v4 = Pokemon_StructSize();
    v6 = Party_GetFromSavedata(param0->unk_6FC);
    v5 = Party_GetPokemonBySlotIndex(v6, param0->unk_260[0]);

    MI_CpuCopy8(v5, &param0->unk_784[0], v4);

    if (CommSys_SendDataHuge(38, param0->unk_784, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222EEA8(int param0, int param1, void *param2, void *param3)
{
    int v0, v1, v2;
    UnkStruct_ov104_0223B5C0 *v3 = param3;
    const u8 *v4 = param2;

    v1 = 0;
    v3->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2 = Pokemon_StructSize();
    MI_CpuCopy8(&v4[0], v3->unk_D8C, v2);

    return;
}

u8 *ov104_0222EED8(int param0, void *param1, int param2)
{
    UnkStruct_ov104_0223B5C0 *v0 = param1;

    GF_ASSERT(param2 <= 512);
    return v0->unk_984[param0];
}

BOOL ov104_0222EEF8(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1;
    TrainerInfo *v2;
    u16 *v3;
    int v4, v5;

    v5 = 60;
    v3 = param0->unk_504;
    v1 = 0;
    v2 = SaveData_GetTrainerInfo(param0->unk_4F8);

    v3[1] = param0->unk_08;
    v3[2] = param0->unk_0C;
    v3[3] = param0->unk_0E;

    v1 += 4;
    v1 += (7 + 1);

    if (CommSys_SendData(22, v3, v5) == 1) {
        v4 = 1;
    } else {
        v4 = 0;
    }

    return v4;
}

void ov104_0222EF30(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223ADA0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_580 = v3[1];
    v2->unk_582 = v3[2];
    v2->unk_57E = v3[3];

    v1 += 4;
    v1 += (7 + 1);

    return;
}

BOOL ov104_0222EF64(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1;
    u16 *v2;
    int v3, v4;

    v4 = 60;
    v2 = param0->unk_504;
    v1 = 0;

    for (v0 = 0; v0 < 7 * 2; v0++) {
        v2[v0 + v1] = param0->unk_18[v0];
    }

    v1 += (7 * 2);

    if (CommSys_SendData(23, v2, v4) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

void ov104_0222EF94(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223ADA0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < 7 * 2; v0++) {
        v2->unk_18[v0] = v3[v0 + v1];
    }

    v1 += (7 * 2);

    return;
}

BOOL ov104_0222EFCC(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1;
    u16 *v2;
    int v3, v4;

    v4 = 60;
    v2 = param0->unk_504;
    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = param0->unk_584[v0];
    }

    v1 += 6;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0 + v1] = param0->unk_590[v0];
    }

    v1 += 6;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0 + v1] = (param0->unk_598[v0] & 0xffff);
        v2[v0 + v1 + 6] = ((param0->unk_598[v0] >> 16) & 0xffff);
    }

    v1 += (6 * 2);

    if (CommSys_SendData(24, v2, v4) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

void ov104_0222F03C(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    Pokemon *v2;
    UnkStruct_ov104_0223ADA0 *v3 = param3;
    const u16 *v4 = param2;

    v1 = 0;
    v3->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v3->unk_254[v0] = v4[v0];
    }

    v1 += 6;

    for (v0 = 0; v0 < 6; v0++) {
        v3->unk_260[v0] = v4[v0 + v1];
    }

    v1 += 6;

    for (v0 = 0; v0 < 6; v0++) {
        v3->unk_268[v0] = v4[v0 + v1];
        v3->unk_268[v0] |= (v4[v0 + v1 + 6] << 16);
    }

    v1 += (6 * 2);

    return;
}

BOOL ov104_0222F0B4(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1;
    u16 *v2;
    int v3, v4;

    v4 = 60;
    v2 = param0->unk_504;
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v2[v0] = param0->unk_3D2[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2[v0 + v1] = param0->unk_3DA[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2[v0 + v1] = (param0->unk_3E0[v0] & 0xffff);
        v2[v0 + v1 + 4] = ((param0->unk_3E0[v0] >> 16) & 0xffff);
    }

    v1 += (4 * 2);

    if (CommSys_SendData(25, v2, v4) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

void ov104_0222F124(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223ADA0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_3D2[v0] = v3[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_3DA[v0] = v3[v0 + v1];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_3E0[v0] = v3[v0 + v1];
        v2->unk_3E0[v0] |= (v3[v0 + v1 + 4] << 16);
    }

    v1 += (4 * 2);

    return;
}

BOOL ov104_0222F1A0(UnkStruct_ov104_0223ADA0 *param0, u8 param1)
{
    u16 *v0;
    int v1, v2;

    v2 = 60;
    v0 = param0->unk_504;

    v0[0] = param1;

    if (CommSys_SendData(26, v0, v2) == 1) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    return v1;
}

void ov104_0222F1C4(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov104_0223ADA0 *v0 = param3;
    const u16 *v1 = param2;

    v0->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_57C = (u8)v1[0];

    return;
}

BOOL ov104_0222F1EC(UnkStruct_ov104_0223ADA0 *param0, u8 param1)
{
    u16 *v0;
    int v1, v2;

    v2 = 60;
    v0 = param0->unk_504;

    v0[0] = param1;

    if (CommSys_SendData(27, v0, v2) == 1) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    return v1;
}

void ov104_0222F210(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov104_0223ADA0 *v0 = param3;
    const u16 *v1 = param2;

    v0->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_57D = (u8)v1[0];
    return;
}

BOOL ov104_0222F238(UnkStruct_ov104_0223ADA0 *param0)
{
    u8 v0;
    int v1, v2;
    u16 *v3;
    int v4, v5;
    u32 v6[2];
    u8 v7[2];
    Pokemon *v8;

    v5 = 60;
    v3 = param0->unk_504;
    v2 = 0;
    v0 = ov104_0223AA50(param0->unk_04);

    for (v1 = 0; v1 < v0; v1++) {
        v8 = Party_GetPokemonBySlotIndex(param0->unk_4D4, v1);
        v7[v1] = Pokemon_GetValue(v8, MON_DATA_ATK_IV, NULL);
        v6[v1] = Pokemon_GetValue(v8, MON_DATA_PERSONALITY, NULL);
    }

    for (v1 = 0; v1 < v0; v1++) {
        v3[v1] = param0->unk_4E8[v1];
    }

    v2 += v0;

    for (v1 = 0; v1 < v0; v1++) {
        v3[v1 + v2] = v7[v1];
    }

    v2 += v0;

    for (v1 = 0; v1 < v0; v1++) {
        v3[v1 + v2] = (v6[v1] & 0xffff);
        v3[v1 + v2 + v0] = ((v6[v1] >> 16) & 0xffff);
    }

    v2 += (v0 * 2);

    if (CommSys_SendData(28, v3, v5) == 1) {
        v4 = 1;
    } else {
        v4 = 0;
    }

    return v4;
}

void ov104_0222F31C(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    u8 v2;
    u32 v3[2];
    u8 v4[2];
    Pokemon *v5;
    UnkStruct_ov104_0223ADA0 *v6 = param3;
    const u16 *v7 = param2;

    v1 = 0;
    v6->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2 = ov104_0223AA50(v6->unk_04);

    for (v0 = 0; v0 < v2; v0++) {
        v6->unk_584[v0] = v7[v0];
    }

    v1 += v2;

    for (v0 = 0; v0 < v2; v0++) {
        v6->unk_590[v0] = v7[v0 + v1];
    }

    v1 += v2;

    for (v0 = 0; v0 < v2; v0++) {
        v6->unk_598[v0] = v7[v0 + v1];
        v6->unk_598[v0] |= (v7[v0 + v1 + v2] << 16);
    }

    v1 += (v2 * 2);

    return;
}

BOOL ov104_0222F3B8(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1, v2, v3;
    UnkStruct_0203041C *v4;

    v4 = sub_0203041C(param0->unk_04);
    v3 = 40;
    v1 = 0;

    param0->unk_3C0[1] = param0->unk_14;
    param0->unk_3C0[2] = param0->unk_16;

    v1 += 3;
    v1 += (7 + 1);

    param0->unk_3C0[v1] = sub_02030698(sub_0203068C(param0->unk_04), sub_0205E630(param0->unk_10), sub_0205E6A8(sub_0205E630(param0->unk_10)));
    v1 += 1;

    if (CommSys_SendData(42, param0->unk_3C0, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F418(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223BA10 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_A16 = v3[1];
    v2->unk_A12 = v3[2];

    v1 += 3;
    v1 += (7 + 1);

    v2->unk_A1C = v3[v1];
    v1 += 1;

    return;
}

BOOL ov104_0222F44C(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1, v2, v3;

    v1 = 0;
    v3 = 40;

    for (v0 = 0; v0 < (7 * 2); v0++) {
        param0->unk_3C0[v0 + v1] = param0->unk_30[v0];
    }

    v1 += (7 * 2);

    if (CommSys_SendData(43, param0->unk_3C0, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F480(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223BA10 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v2->unk_30[v0] = v3[v0 + v1];
    }

    v1 += (7 * 2);

    return;
}

BOOL ov104_0222F4B8(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1, v2, v3;
    TrainerInfo *v4;

    v1 = 0;
    v3 = 40;

    param0->unk_3C0[0] = param0->unk_A18;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_A1B == 0) {
            param0->unk_A1B = param0->unk_A18;
        } else {
            if ((param0->unk_A1B - 6) == 4) {
                if (param0->unk_A18 != 4) {
                    param0->unk_A1B = param0->unk_A18;
                }
            }
        }
    } else {
        if (param0->unk_A1B == 4) {
            if (param0->unk_A18 != 4) {
                param0->unk_A1B = param0->unk_A18 + 6;
            }
        }
    }

    param0->unk_3C0[1] = param0->unk_A1B;

    if (CommSys_SendData(44, param0->unk_3C0, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F530(int param0, int param1, void *param2, void *param3)
{
    Pokemon *v0;
    int v1, v2;
    UnkStruct_ov104_0223BA10 *v3 = param3;
    const u16 *v4 = param2;

    v2 = 0;
    v3->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v3->unk_A19 = v4[0];

    if (CommSys_CurNetId() == 0) {
        if (v3->unk_A1B != 0) {
            if (v3->unk_A1B == 4) {
                if (v3->unk_A19 != 4) {
                    v3->unk_A18 = v3->unk_A19 + 6;
                    v3->unk_A1B = v3->unk_A19 + 6;
                }
            }
        } else {
            v3->unk_A1B = v3->unk_A19 + 6;

            if (v3->unk_A19 != 4) {
                *v3->unk_A20 = 0xeedd;
            }
        }
    } else {
        v3->unk_A1B = v4[1];

        if (v3->unk_A1B != 4) {
            *v3->unk_A20 = 0xeedd;
        }

        if (v3->unk_A19 == 4) {
            if (v3->unk_A18 != 0) {
                if (v3->unk_A18 != 4) {
                    v3->unk_A1B = v3->unk_A18 + 6;
                }
            }
        }
    }

    return;
}

BOOL ov104_0222F5D4(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1, v2, v3;

    v1 = 0;
    v3 = 40;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_3C0[v0] = param0->unk_26C[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_3C0[v0 + v1] = param0->unk_274[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_3C0[v0 + v1] = (param0->unk_278[v0] & 0xffff);
        param0->unk_3C0[v0 + v1 + 4] = ((param0->unk_278[v0] >> 16) & 0xffff);
    }

    v1 += (4 * 2);

    if (CommSys_SendData(45, param0->unk_3C0, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F650(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223BA10 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_26C[v0] = v3[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_274[v0] = v3[v0 + v1];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_278[v0] = v3[v0 + v1];
        v2->unk_278[v0] |= (v3[v0 + v1 + 4] << 16);
    }

    v1 += (4 * 2);

    return;
}

BOOL ov104_0222F6C8(UnkStruct_ov104_0223BA10 *param0, u16 param1)
{
    int v0, v1;

    v1 = 40;
    param0->unk_3C0[0] = param1;

    if (CommSys_SendData(46, param0->unk_3C0, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov104_0222F6E8(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_ov104_0223BA10 *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_A10 = (u8)v2[0];
    return;
}

BOOL ov104_0222F710(UnkStruct_ov104_0223BA10 *param0, u16 param1)
{
    int v0, v1;

    v1 = 40;
    param0->unk_3C0[0] = param1;

    if (CommSys_SendData(47, param0->unk_3C0, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov104_0222F730(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_ov104_0223BA10 *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_A11 = (u8)v2[0];
    return;
}

BOOL ov104_0222F758(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1, v2, v3, v4;
    u8 v5;
    Pokemon *v6;

    v1 = 0;
    v3 = 512;
    v5 = ov104_0223B7A8(param0->unk_10, 0);
    v4 = Pokemon_StructSize();

    for (v0 = 0; v0 < v5; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param0->unk_28, v0);
        MI_CpuCopy8(v6, &param0->unk_410[v0 * v4], v4);
    }

    if (CommSys_SendDataHuge(48, param0->unk_410, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F7BC(int param0, int param1, void *param2, void *param3)
{
    u8 v0;
    int v1, v2, v3;
    Pokemon *v4;
    UnkStruct_ov104_0223BA10 *v5 = param3;
    const u8 *v6 = param2;

    v2 = 0;
    v5->unk_A1A++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0 = ov104_0223B7A8(v5->unk_10, 0);
    v3 = Pokemon_StructSize();
    v4 = Pokemon_New(11);

    for (v1 = 0; v1 < v0; v1++) {
        MI_CpuCopy8(&v6[v3 * v1], v4, v3);
        Party_AddPokemon(v5->unk_28, v4);
    }

    Heap_FreeToHeap(v4);

    if (CommSys_CurNetId() != 0) {
        Party_SwapSlots(v5->unk_28, 0, 2);
        Party_SwapSlots(v5->unk_28, 1, 3);
    }

    return;
}

u8 *ov104_0222F84C(int param0, void *param1, int param2)
{
    UnkStruct_ov104_0223BA10 *v0 = param1;

    GF_ASSERT(param2 <= 512);
    return v0->unk_610[param0];
}

BOOL ov104_0222F86C(UnkStruct_ov104_0223BFFC *param0)
{
    int v0, v1, v2, v3;
    UnkStruct_020305B8 *v4;

    v4 = sub_020305B8(param0->unk_04);
    v3 = 40;
    v1 = 0;

    param0->unk_424[1] = param0->unk_18;
    param0->unk_424[2] = param0->unk_1A;

    v1 += 3;

    if (CommSys_SendData(65, param0->unk_424, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F8A0(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223BFFC *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_A78 = v3[1];
    v2->unk_A76 = v3[2];

    v1 += 3;

    return;
}

BOOL ov104_0222F8D0(UnkStruct_ov104_0223BFFC *param0)
{
    int v0, v1, v2, v3;

    v1 = 0;
    v3 = 40;

    for (v0 = 0; v0 < (7 * 2); v0++) {
        param0->unk_424[v0 + v1] = param0->unk_78[v0];
    }

    v1 += (7 * 2);

    if (CommSys_SendData(66, param0->unk_424, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F908(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223BFFC *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v2->unk_78[v0] = v3[v0 + v1];
    }

    v1 += (7 * 2);

    return;
}

BOOL ov104_0222F944(UnkStruct_ov104_0223BFFC *param0)
{
    int v0, v1, v2, v3;

    v1 = 0;
    v3 = 40;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_424[v0] = param0->unk_314[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_424[v0 + v1] = param0->unk_31C[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_424[v0 + v1] = (param0->unk_320[v0] & 0xffff);
        param0->unk_424[v0 + v1 + 4] = ((param0->unk_320[v0] >> 16) & 0xffff);
    }

    v1 += (4 * 2);

    if (CommSys_SendData(67, param0->unk_424, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222F9C0(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov104_0223BFFC *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_314[v0] = v3[v0];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_31C[v0] = v3[v0 + v1];
    }

    v1 += 4;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_320[v0] = v3[v0 + v1];
        v2->unk_320[v0] |= (v3[v0 + v1 + 4] << 16);
    }

    v1 += (4 * 2);

    return;
}

BOOL ov104_0222FA38(UnkStruct_ov104_0223BFFC *param0, u16 param1)
{
    int v0, v1;

    v1 = 40;
    param0->unk_424[0] = param1;

    if (CommSys_SendData(68, param0->unk_424, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov104_0222FA5C(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_ov104_0223BFFC *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_A74 = (u8)v2[0];
    return;
}

BOOL ov104_0222FA84(UnkStruct_ov104_0223BFFC *param0, u16 param1)
{
    int v0, v1;

    v1 = 40;
    param0->unk_424[0] = param1;

    if (CommSys_SendData(69, param0->unk_424, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov104_0222FAA8(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_ov104_0223BFFC *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_A75 = (u8)v2[0];
    return;
}

BOOL ov104_0222FAD0(UnkStruct_ov104_0223BFFC *param0)
{
    int v0, v1, v2, v3, v4;
    u8 v5;
    Pokemon *v6;

    v1 = 0;
    v3 = 512;
    v5 = ov104_0223BD70(param0->unk_10, 0);
    v4 = Pokemon_StructSize();

    for (v0 = 0; v0 < v5; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param0->unk_70, v0);
        MI_CpuCopy8(v6, &param0->unk_474[v0 * v4], v4);
    }

    if (CommSys_SendDataHuge(70, param0->unk_474, v3) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov104_0222FB34(int param0, int param1, void *param2, void *param3)
{
    u8 v0;
    int v1, v2, v3;
    Pokemon *v4;
    UnkStruct_ov104_0223BFFC *v5 = param3;
    const u8 *v6 = param2;

    v2 = 0;
    v5->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0 = ov104_0223BD70(v5->unk_10, 0);
    v3 = Pokemon_StructSize();
    v4 = Pokemon_New(11);

    for (v1 = 0; v1 < v0; v1++) {
        MI_CpuCopy8(&v6[v3 * v1], v4, v3);
        Party_AddPokemon(v5->unk_70, v4);
    }

    Heap_FreeToHeap(v4);

    if (CommSys_CurNetId() != 0) {
        Party_SwapSlots(v5->unk_70, 0, 2);
        Party_SwapSlots(v5->unk_70, 1, 3);
    }

    return;
}

u8 *ov104_0222FBC4(int param0, void *param1, int param2)
{
    UnkStruct_ov104_0223BFFC *v0 = param1;

    GF_ASSERT(param2 <= 512);
    return v0->unk_674[param0];
}
