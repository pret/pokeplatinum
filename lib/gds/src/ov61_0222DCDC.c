#include "nitro/types.h"

#include "gds.h"
#include "gds_internal.h"

BOOL ov61_0222DCDC(UnkStruct_ov62_022349A8_sub1 *param0) {
    return ov61_0222CF40("pkgdsprod.nintendo.co.jp", 12400, param0);
}

void ov61_0222DCFC(void) {
    ov61_0222CEDC();
}

int ov61_0222DD08(void) {
    ov61_0222D4C8();
    int v0 = ov61_0222D3E8();
    ov61_0222D4DC();
    return v0;
}

int ov61_0222DD24(void) {
    return ov61_0222D464();
}

BOOL ov61_0222DD30(UnkStruct_ov62_022349A8_sub3_sub1 *param0, void *param1) {
    UnkStruct_ov62_022349A8_sub3_sub1 v0 = *param0;
    ov61_0222E478(param0, "--");
    ov61_0222D1FC(0x4E20, &v0, param1, -1);
}

BOOL ov61_0222DD8C(long param0, void *param1) {
    UnkStruct_ov61_0222DD8C v0;
    v0.unk_00 = 0;
    v0.unk_02 = 0;
    v0.unk_04 = param0;
    v0.unk_08 = param0 >> 31;
    
    return ov61_0222D1FC(0x4E21, &v0, param1, -1);
}

BOOL ov61_0222DDCC(long param0, UnkStruct_ov62_022349A8_sub3_sub2 *param1, void *param2) {
    UnkStruct_ov61_0222DDCC v0;
    v0.unk_00 = param0;
    v0.unk_04 = *param1;

    ov61_0222E478(param1, "--");
    return ov61_0222D1FC(0x5208, &v0, param2, -1);
}

BOOL ov61_0222DE34(long param0, void *param1) {
    UnkStruct_ov61_0222DD8C v0;
    v0.unk_00 = 0;
    v0.unk_02 = 0;
    v0.unk_04 = param0;
    v0.unk_08 = param0 >> 31;

    return ov61_0222D1FC(0x5209, &v0, param1, -1);
}

long ov61_0222DE74(void) {
    return ov61_0222D430();
}

void *ov61_0222DE80(void) {
    return ov61_0222D3F8();
}

long ov61_0222DE8C(long param0) {
    return ov61_0222E2A8(param0);
}

BOOL ov61_0222DE98(void *param0) {
   return ov61_0222D1FC(0x55F0, NULL, param0, -1);
}

BOOL ov61_0222DEB8(UnkStruct_ov62_0223D518_sub1 *param0, void *param1) {
    UnkStruct_ov62_0223D518_sub1 v0 = *param0;
    return ov61_0222D1FC(0x55F1, &v0, param1, -1);
}

BOOL ov61_0222DF08(UnkStruct_ov62_022349A8_sub3_sub3 *param0, void *param1) {
    UnkStruct_ov62_022349A8_sub3_sub3 v0 = *param0;
    return ov61_0222D1FC(0x59D8, &v0, param1, -1);
}

BOOL ov61_0222DF60(UnkStruct_ov62_022349A8_sub3_sub4 *param0, void *param1) {
    UnkStruct_ov61_0222DF60 v0;
    v0.unk_00 = 0;
    v0.unk_04 = *param0;
    v0.unk_00 = 0; // ?
    v0.unk_02 = 0;
    
    return ov61_0222D1FC(0x59D9, &v0, param1, -1);
}

BOOL ov61_0222DFA8(UnkStruct_ov62_022349A8_sub3_sub5 *param0, void *param1) {
    UnkStruct_ov61_0222DFA8 v0 = { 0 };
    v0.unk_00 = 1;
    v0.unk_0C = param0->unk_00;

    return ov61_0222D1FC(0x59D9, &v0, param1, -1);
}

BOOL ov61_0222E000(UnkStruct_ov62_022349A8_sub3_sub5 *param0, void *param1) {
    UnkStruct_ov61_0222DFA8 v0 = { 0 };
    v0.unk_00 = 2;
    v0.unk_0C = param0->unk_00;

    return ov61_0222D1FC(0x59D9, &v0, param1, -1);
}

BOOL ov61_0222E058(u64 param0, u32 param1, void *param2) {
    UnkStruct_ov61_0222E058 v0;
    v0.unk_00 = param0;
    v0.unk_08 = param1;
    
   return ov61_0222D1FC(0x59DA, &v0, param2, -1);
}

BOOL ov61_0222E08C(u64 param0, void *param1) {
    u64 v0 = param0;
    
    return ov61_0222D1FC(0x59DB, &v0, param1, -1);
}

