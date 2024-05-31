#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02095E80_decl.h"

#include "struct_defs/struct_02027F8C.h"
#include "struct_defs/struct_02039A58.h"
#include "field/field_system.h"
#include "struct_defs/struct_02095E80_t.h"

#include "unk_02027F84.h"
#include "unk_0202D778.h"
#include "unk_02032798.h"
#include "communication_system.h"
#include "party.h"
#include "unk_02095CD4.h"
#include "overlay088/ov88_0223B140.h"

void sub_02095DFC(int param0, int param1, void * param2, void * param3);
void sub_02095E28(int param0, int param1, void * param2, void * param3);
void sub_02095DBC(int param0, int param1, void * param2, void * param3);
void sub_02095DCC(int param0, int param1, void * param2, void * param3);
static int sub_02095CE8(u8 param0);
static int sub_02095E78(void);
static int sub_02095E74(void);
static u8 * sub_02095E80(int param0, void * param1, int param2);
static int sub_02095E68(void);
static int sub_02095E70(void);

static const CommCmdTable Unk_020F59BC[] = {
    {sub_02095CFC, sub_02095E78, sub_02095E80},
    {sub_02095D74, CommPacketSizeOf_NetId},
    {sub_02095D94, CommPacketSizeOf_NetId},
    {sub_02095DA4, CommPacketSizeOf_NetId},
    {sub_02095DA8, CommPacketSizeOf_NetId},
    {sub_02095DAC, CommPacketSizeOf_NetId},
    {sub_02095DFC, sub_02095E74, sub_02095E80},
    {sub_02095E28, sub_02095E68, sub_02095E80},
    {sub_02095DB8, sub_0203294C},
    {sub_02095DBC, CommPacketSizeOf_NetId},
    {sub_02095DCC, sub_02095E70}
};

void sub_02095CD4 (void * param0)
{
    int v0 = sizeof(Unk_020F59BC) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F59BC, v0, param0);
}

static int sub_02095CE8 (u8 param0)
{
    if (param0 == 12) {
        return 12;
    }

    if (param0 < 6) {
        return param0 + 6;
    }

    return param0 - 6;
}

void sub_02095CFC (int param0, int param1, void * param2, void * param3)
{
    FieldSystem * fieldSystem = (FieldSystem *)param3;
    UnkStruct_02095E80 * v1 = fieldSystem->unk_88;

    if (param0 != CommSys_CurNetId()) {
        memcpy((void *)v1->unk_2274, param2, (236 * 6 + 4 * 2));
        v1->unk_58++;

        if ((v1->unk_58) * (236 * 6 + 4 * 2) >= Party_SaveSize()) {
            if (CommSys_CurNetId() == 1) {
                ov88_0223D058(v1, 27, 0);
            } else {
                ov88_0223D098(CommSys_CurNetId(), v1->unk_2270, v1->unk_50);
            }
        } else {
            ov88_0223D098(CommSys_CurNetId(), v1->unk_2270, v1->unk_50);
        }

        v1->unk_50++;
    }
}

void sub_02095D74 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param3)->unk_88;
    u8 * v1 = (u8 *)param2;

    if (param0 != CommSys_CurNetId()) {
        v0->unk_88[1] = sub_02095CE8(*v1);
    }
}

void sub_02095D94 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param3)->unk_88;
    u8 * v1 = (u8 *)param2;

    v0->unk_60[param0] = *v1;
}

void sub_02095DA4 (int param0, int param1, void * param2, void * param3)
{
    return;
}

void sub_02095DA8 (int param0, int param1, void * param2, void * param3)
{
    return;
}

void sub_02095DAC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param3)->unk_88;
    v0->unk_54 = 2;
}

void sub_02095DB8 (int param0, int param1, void * param2, void * param3)
{
    return;
}

void sub_02095DBC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param3)->unk_88;
    u8 * v1 = (u8 *)param2;

    v0->unk_2318 = *v1;
}

void sub_02095DCC (int param0, int param1, void * param2, void * param3)
{
    FieldSystem * fieldSystem = (FieldSystem *)param3;
    int v1;
    u8 * v2 = sub_0202D79C(fieldSystem->saveData);
    u8 * v3 = (u8 *)param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    for (v1 = 0; v1 < 14; v1++) {
        if (v3[v1] != 0) {
            if (v2[v1] != v3[v1]) {
                v2[v1] = v3[v1];
            }
        }
    }
}

void sub_02095DFC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param3)->unk_88;

    if (CommSys_CurNetId() != param0) {
        sub_02027FEC(v0->unk_227C, (UnkStruct_02027F8C *)param2, 1, 26);
        v0->unk_54 = 3;
    }
}

void sub_02095E28 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param3)->unk_88;

    if (CommSys_CurNetId() != param0) {
        MI_CpuCopyFast(param2, v0->unk_2E6C[param0], 1000);
        v0->unk_54 = 4;
        sub_0203632C(0);
    }
}

void sub_02095E60 (FieldSystem * fieldSystem, UnkStruct_02095E80 * param1)
{
    fieldSystem->unk_88 = param1;
}

static int sub_02095E68 (void)
{
    return 1000 + 4;
}

static int sub_02095E70 (void)
{
    return 14;
}

static int sub_02095E74 (void)
{
    return sizeof(UnkStruct_02027F8C);
}

static int sub_02095E78 (void)
{
    return 236 * 6 + 4 * 2;
}

static u8 * sub_02095E80 (int param0, void * param1, int param2)
{
    UnkStruct_02095E80 * v0 = ((FieldSystem *)param1)->unk_88;
    return (u8 *)v0->unk_234C[param0];
}
