#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "struct_decls/struct_0207D3B0_decl.h"
#include "struct_decls/struct_02098700_decl.h"
#include "overlay016/struct_ov16_0224B9DC_decl.h"
#include "overlay016/struct_ov16_0224B9DC_sub3_decl.h"
#include "overlay016/struct_ov16_0224B9DC_sub4_decl.h"
#include "overlay016/struct_ov16_0224B9DC_sub5_decl.h"
#include "overlay016/struct_ov16_02252060_decl.h"
#include "overlay016/struct_ov16_0225433C_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "overlay016/const_ov16_0226EBE0.h"

#include "overlay016/struct_ov16_0224B9DC_sub3_t.h"
#include "overlay016/struct_ov16_0224B9DC_sub4_t.h"
#include "overlay016/struct_ov16_0224B9DC_sub5_t.h"
#include "overlay016/struct_ov16_0224B9DC_t.h"
#include "overlay016/struct_ov16_02252060_t.h"
#include "overlay016/struct_ov16_0225433C_t.h"
#include "overlay016/struct_ov16_0225C300.h"

#include "unk_020021B0.h"
#include "narc.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "unk_020366A0.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "unk_02079170.h"
#include "party.h"
#include "item.h"
#include "unk_0208C098.h"
#include "unk_02098700.h"
#include "unk_02098988.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"

typedef struct {
    u16 unk_00;
    s16 unk_02;
    u16 unk_04;
    u16 unk_06;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
} UnkStruct_ov16_0225A280;

void ov16_0225177C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_02251C94(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_02251E1C(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
void ov16_02251E5C(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
BOOL ov16_02251EF4(UnkStruct_ov16_0224B9DC * param0);
void ov16_02251F44(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
void ov16_02251F80(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
BOOL ov16_02251FC8(UnkStruct_ov16_0224B9DC * param0);
void ov16_0225201C(UnkStruct_ov16_0224B9DC * param0);
void ov16_02252040(UnkStruct_ov16_0224B9DC * param0, int param1);
int ov16_02252060(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, void * param3);
void ov16_022523E8(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, const void * param3);
void ov16_02252A14(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
void ov16_02252A2C(UnkStruct_ov16_02252060 * param0, int param1, int param2);
u8 ov16_02252EC8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
void ov16_022535E0(UnkStruct_ov16_0224B9DC * param0, int param1);
void ov16_022535F0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_0225366C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
BOOL ov16_02253710(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
int ov16_02253954(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u16 param3, int param4, int param5);
void ov16_02253C98(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u16 param3);
BOOL ov16_02253E3C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_02253EC0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02253EF0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02253F20(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
int ov16_02253F7C(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_02253FCC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_022541C4(UnkStruct_ov16_0224B9DC * param0);
void ov16_022542B8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_0225433C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02254744(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02254990(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
int ov16_02254A6C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
BOOL ov16_02254CA8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, UnkStruct_ov16_0225C300 * param4);
int ov16_02254EE0(UnkStruct_ov16_02252060 * param0, u16 param1);
int ov16_02254FA8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, int param5, int param6, u32 * param7);
void ov16_022552D4(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, u32 * param8);
BOOL ov16_02255498(UnkStruct_ov16_0224B9DC * param0, int param1);
u8 ov16_022554E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
int ov16_02255560(UnkStruct_ov16_0224B9DC * param0, int param1);
u16 ov16_02255570(UnkStruct_ov16_0224B9DC * param0, int param1);
int ov16_022555A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
BOOL ov16_0225582C(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_0225588C(UnkStruct_0207ADB4 * param0, int param1, u8 * param2, u8 * param3, u8 * param4);
int ov16_022558CC(u8 param0, u8 param1, u8 param2);
BOOL ov16_02255918(u16 param0);
BOOL ov16_02255950(UnkStruct_ov16_0224B9DC * param0, u16 param1, int param2);
BOOL ov16_02255980(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_022559DC(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_022559FC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
u8 ov16_02255A4C(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_02255AB4(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
BOOL ov16_02255B10(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_02255C00(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, UnkStruct_ov16_0225C300 * param3);
BOOL ov16_02255DE8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_02255EC0(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_02255EF4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
BOOL ov16_02255F68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02255F94(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_02255FBC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
BOOL ov16_02256044(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
BOOL ov16_02256078(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_022560B0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
int ov16_02256128(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
int ov16_02256148(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
BOOL ov16_022562E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
int ov16_022563F8(int param0, int param1);
int ov16_02256414(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
int ov16_02257028(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_0225708C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
BOOL ov16_02257628(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
BOOL ov16_022577A4(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
BOOL ov16_02257808(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_022579A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_02258008(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_02258104(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int * param3);
BOOL ov16_022587A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
u16 ov16_02258874(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_022588A4(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_022588BC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
s32 ov16_02258AB8(UnkStruct_ov16_0224B9DC * param0, int param1);
s32 ov16_02258ACC(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
s32 ov16_02258B18(UnkStruct_ov16_0224B9DC * param0, int param1);
s32 ov16_02258B2C(UnkStruct_ov16_0224B9DC * param0, int param1);
s32 ov16_02258B40(UnkStruct_ov16_0224B9DC * param0, int param1);
s32 ov16_02258B58(UnkStruct_ov16_0224B9DC * param0, int param1);
s32 ov16_02258B80(UnkStruct_ov16_0224B9DC * param0, int param1);
int ov16_02258BA8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_02258CB4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
BOOL ov16_02259204(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_02259868(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_0225991C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
int ov16_022599D0(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
BOOL ov16_02259A28(UnkStruct_ov16_0224B9DC * param0, int param1);
void ov16_02259A5C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, Pokemon * param2);
u8 ov16_02259AB4(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_02259AC0(UnkStruct_ov16_0224B9DC * param0, int param1);
BOOL ov16_02259ADC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
BOOL ov16_02259B38(UnkStruct_0207ADB4 * param0, Pokemon * param1);
BOOL ov16_02259B9C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
void ov16_0225A1B0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_0225A200(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
int ov16_0225A280(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u32 param3, u32 param4, u16 param5, u8 param6, u8 param7, u8 param8, u8 param9);
int ov16_0225AEB8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
int ov16_0225AEE4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, u32 param5);
BOOL ov16_0225AFF4(u16 param0);
BOOL ov16_0225B02C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u16 param3);
BOOL ov16_0225B084(UnkStruct_ov16_0224B9DC * param0, u16 param1);
BOOL ov16_0225B0C0(UnkStruct_ov16_0224B9DC * param0, u16 param1);
s32 ov16_0225B0FC(UnkStruct_ov16_0224B9DC * param0, u16 param1, u16 param2);
int ov16_0225B120(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
void ov16_0225B148(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
BOOL ov16_0225B1DC(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
BOOL ov16_0225B228(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
void ov16_0225B408(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
BOOL ov16_0225B444(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
int ov16_0225B45C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
void ov16_0225B540(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
static BOOL ov16_02254EF4(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
static int ov16_0225B5D0(UnkStruct_ov16_0224B9DC * param0, int param1, u32 param2);
static int ov16_0225B63C(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3, int param4, u32 * param5);
static BOOL ov16_022553F8(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
static void ov16_02255448(int param0, u32 * param1);
static BOOL ov16_0225B6C8(UnkStruct_ov16_0224B9DC * param0, int param1);
static u8 ov16_0225B734(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
static void ov16_0225B80C(UnkStruct_ov16_0224B9DC * param0, u8 param1);
static void ov16_0225B824(UnkStruct_ov16_0224B9DC * param0, u8 param1);
static void ov16_0225B830(UnkStruct_ov16_0224B9DC * param0, u8 param1);
static int ov16_0225B840(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
static BOOL ov16_0225B8E4(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0225B910(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3);
int ov16_0225BA88(UnkStruct_0207ADB4 * param0, int param1);
int ov16_0225BE28(UnkStruct_0207ADB4 * param0, int param1);
int ov16_0225BE3C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, Pokemon * param2, int param3);

void ov16_0225177C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    Pokemon * v0 = ov16_0223DFAC(param0, param2, param3);
    int v1;
    int v2;
    UnkStruct_02098700 * v3;

    param1->unk_2D40[param2].unk_00 = sub_02074470(v0, 5, 0);
    param1->unk_2D40[param2].unk_02 = sub_02074470(v0, 165, 0);
    param1->unk_2D40[param2].unk_04 = sub_02074470(v0, 166, 0);
    param1->unk_2D40[param2].unk_06 = sub_02074470(v0, 167, 0);
    param1->unk_2D40[param2].unk_08 = sub_02074470(v0, 168, 0);
    param1->unk_2D40[param2].unk_0A = sub_02074470(v0, 169, 0);

    for (v1 = 0; v1 < 4; v1++) {
        param1->unk_2D40[param2].unk_0C[v1] = sub_02074470(v0, 54 + v1, 0);
        param1->unk_2D40[param2].unk_2C[v1] = sub_02074470(v0, 58 + v1, 0);
        param1->unk_2D40[param2].unk_30[v1] = sub_02074470(v0, 62 + v1, 0);
    }

    param1->unk_2D40[param2].unk_14_0 = sub_02074470(v0, 70, 0);
    param1->unk_2D40[param2].unk_14_5 = sub_02074470(v0, 71, 0);
    param1->unk_2D40[param2].unk_14_10 = sub_02074470(v0, 72, 0);
    param1->unk_2D40[param2].unk_14_15 = sub_02074470(v0, 73, 0);
    param1->unk_2D40[param2].unk_14_20 = sub_02074470(v0, 74, 0);
    param1->unk_2D40[param2].unk_14_25 = sub_02074470(v0, 75, 0);
    param1->unk_2D40[param2].unk_14_30 = sub_02074470(v0, 76, 0);
    param1->unk_2D40[param2].unk_14_31 = sub_02074470(v0, 77, 0);

    if ((param1->unk_213C & 0x100) == 0) {
        for (v1 = 0; v1 < 0x8; v1++) {
            param1->unk_2D40[param2].unk_18[v1] = 6;
        }
    }

    param1->unk_2D40[param2].unk_28_0 = 0;
    param1->unk_2D40[param2].unk_28_1 = 0;
    param1->unk_2D40[param2].unk_28_2 = 0;
    param1->unk_2D40[param2].unk_28_3 = 0;
    param1->unk_2D40[param2].unk_28_4 = 0;
    param1->unk_2D40[param2].unk_28_5 = 0;
    param1->unk_2D40[param2].unk_28_6 = 0;
    param1->unk_2D40[param2].unk_28_7 = 0;
    param1->unk_2D40[param2].unk_28_8 = 0;
    param1->unk_2D40[param2].unk_28_9 = 0;
    param1->unk_2D40[param2].unk_28_10 = 0;
    param1->unk_2D40[param2].unk_24 = sub_02074470(v0, 177, 0);
    param1->unk_2D40[param2].unk_25 = sub_02074470(v0, 178, 0);
    param1->unk_2D40[param2].unk_7E_0 = sub_02075D6C(v0);
    param1->unk_2D40[param2].unk_26_5 = sub_02075E0C(v0);

    if (ov16_0223DF0C(param0) & (0x20 | 0x200)) {
        param1->unk_2D40[param2].unk_27 = 0;
        param1->unk_2D40[param2].unk_6C = 0;
        param1->unk_2D40[param2].unk_78 = 0;
    } else {
        param1->unk_2D40[param2].unk_27 = sub_02074470(v0, 10, 0);
        param1->unk_2D40[param2].unk_6C = sub_02074470(v0, 160, 0);
        param1->unk_2D40[param2].unk_78 = sub_02074470(v0, 6, 0);
    }

    if ((ov16_0223DF0C(param0) & (0x20 | 0x200)) && (ov16_0223E208(param0, param2) == 0)) {
        param1->unk_2D40[param2].unk_26_0 = 0;
    } else {
        param1->unk_2D40[param2].unk_26_0 = sub_02074470(v0, 112, 0);
    }

    param1->unk_2D40[param2].unk_34 = sub_02074470(v0, 161, 0);
    param1->unk_2D40[param2].unk_35 = sub_02074470(v0, 9, 0);
    param1->unk_2D40[param2].unk_4C = sub_02074470(v0, 163, 0);
    param1->unk_2D40[param2].unk_50 = sub_02074470(v0, 164, 0);
    param1->unk_2D40[param2].unk_64 = sub_02074470(v0, 8, 0);
    param1->unk_2D40[param2].unk_68 = sub_02074470(v0, 0, 0);
    param1->unk_2D40[param2].unk_74 = sub_02074470(v0, 7, 0);
    param1->unk_2D40[param2].unk_7E_4 = sub_02074470(v0, 157, 0);
    param1->unk_2D40[param2].unk_7F = sub_02074470(v0, 155, 0);

    sub_02098988(param1->unk_2D40[param2].unk_26_0);
    v3 = sub_02098700(5);
    sub_0209872C(v3, 0, 5);

    param1->unk_2D40[param2].unk_20 = sub_02098828(v3, param1->unk_2D40[param2].unk_00);

    sub_020987BC(v3);
    sub_02098718(v3);
    sub_02074470(v0, 117, &param1->unk_2D40[param2].unk_36[0]);
    sub_02074470(v0, 144, &param1->unk_2D40[param2].unk_54[0]);

    param1->unk_2D40[param2].unk_7C = 0;
    param1->unk_2D40[param2].unk_7D = 0;

    v2 = ov16_0223E208(param0, param2);

    if (param1->unk_1C4[v2].unk_00_23 & sub_020787CC(param1->unk_219C[param2])) {
        param1->unk_2D40[param2].unk_78 = 0;
        param1->unk_2D40[param2].unk_88.unk_04_22 = 0;
    } else {
        if (param1->unk_2D40[param2].unk_78) {
            param1->unk_2D40[param2].unk_88.unk_04_22 = 1;
        }
    }
}

void ov16_02251C94 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    Pokemon * v0 = ov16_0223DFAC(param0, param2, param3);
    int v1;
    int v2;

    param1->unk_2D40[param2].unk_02 = sub_02074470(v0, 165, 0);
    param1->unk_2D40[param2].unk_04 = sub_02074470(v0, 166, 0);
    param1->unk_2D40[param2].unk_06 = sub_02074470(v0, 167, 0);
    param1->unk_2D40[param2].unk_08 = sub_02074470(v0, 168, 0);
    param1->unk_2D40[param2].unk_0A = sub_02074470(v0, 169, 0);
    param1->unk_2D40[param2].unk_34 = sub_02074470(v0, 161, 0);
    param1->unk_2D40[param2].unk_35 = sub_02074470(v0, 9, 0);
    param1->unk_2D40[param2].unk_4C = sub_02074470(v0, 163, 0);
    param1->unk_2D40[param2].unk_50 = sub_02074470(v0, 164, 0);

    if ((param1->unk_2D40[param2].unk_70 & 0x200000) == 0) {
        for (v1 = 0; v1 < 4; v1++) {
            if ((param1->unk_2D40[param2].unk_88.unk_04_2 & sub_020787CC(v1)) == 0) {
                param1->unk_2D40[param2].unk_0C[v1] = sub_02074470(v0, 54 + v1, 0);
                param1->unk_2D40[param2].unk_2C[v1] = sub_02074470(v0, 58 + v1, 0);
                param1->unk_2D40[param2].unk_30[v1] = sub_02074470(v0, 62 + v1, 0);
            }
        }

        param1->unk_2D40[param2].unk_64 = sub_02074470(v0, 8, 0);
    }
}

void ov16_02251E1C (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    GF_ASSERT(NARC_GetMemberSizeByIndexPair(param1, param2) < 400 * 4);

    param0->unk_AC = param1;
    param0->unk_B0 = param2;
    param0->unk_B4 = 0;

    NARC_ReadWholeMemberByIndexPair(&param0->unk_2700, param1, param2);
}

void ov16_02251E5C (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    GF_ASSERT(NARC_GetMemberSizeByIndexPair(param1, param2) < 400 * 4);
    GF_ASSERT(param0->unk_B8 < 4);

    param0->unk_BC[param0->unk_B8] = param0->unk_AC;
    param0->unk_CC[param0->unk_B8] = param0->unk_B0;
    param0->unk_DC[param0->unk_B8] = param0->unk_B4;
    param0->unk_B8++;
    param0->unk_AC = param1;
    param0->unk_B0 = param2;
    param0->unk_B4 = 0;

    NARC_ReadWholeMemberByIndexPair(&param0->unk_2700, param1, param2);
}

BOOL ov16_02251EF4 (UnkStruct_ov16_0224B9DC * param0)
{
    if (param0->unk_B8) {
        param0->unk_B8--;
        ov16_02251E1C(param0, param0->unk_BC[param0->unk_B8], param0->unk_CC[param0->unk_B8]);
        param0->unk_B4 = param0->unk_DC[param0->unk_B8];
        return 0;
    } else {
        return 1;
    }
}

void ov16_02251F44 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_2200[param1][param2][v0] == 0) {
            param0->unk_2200[param1][param2][v0] = param3;
            break;
        }
    }

    GF_ASSERT(v0 < 16);
}

void ov16_02251F80 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    int v0;

    GF_ASSERT(param3 != 0);

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_2200[param1][param2][v0] == param3) {
            param0->unk_2200[param1][param2][v0] = 0;
            break;
        }
    }

    GF_ASSERT(v0 < 16);
}

BOOL ov16_02251FC8 (UnkStruct_ov16_0224B9DC * param0)
{
    int v0, v1, v2;
    int v3 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            for (v2 = 0; v2 < 16; v2++) {
                v3 += param0->unk_2200[v0][v1][v2];
            }
        }
    }

    if (v3 == 0) {
        param0->unk_3148 = 0;
    }

    return v3 == 0;
}

void ov16_0225201C (UnkStruct_ov16_0224B9DC * param0)
{
    param0->unk_3148++;

    if (param0->unk_3148 > (60 * 30)) {
        sub_02038AE0(1);
    }
}

void ov16_02252040 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 256; v0++) {
        param0->unk_2300[param1][v0] = 0;
    }
}

int ov16_02252060 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, void * param3)
{
    UnkStruct_ov16_02252060 * v0;

    v0 = &param0->unk_2D40[param1];

    switch (param2) {
    case 0:
        return v0->unk_00;
        break;
    case 1:
        return v0->unk_02;
        break;
    case 2:
        return v0->unk_04;
        break;
    case 3:
        return v0->unk_06;
        break;
    case 4:
        return v0->unk_08;
        break;
    case 5:
        return v0->unk_0A;
        break;
    case 6:
    case 7:
    case 8:
    case 9:
        return v0->unk_0C[param2 - 6];
        break;
    case 10:
        return v0->unk_14_0;
        break;
    case 11:
        return v0->unk_14_5;
        break;
    case 12:
        return v0->unk_14_10;
        break;
    case 13:
        return v0->unk_14_15;
        break;
    case 14:
        return v0->unk_14_20;
        break;
    case 15:
        return v0->unk_14_25;
        break;
    case 16:
        return v0->unk_14_30;
        break;
    case 17:
        return v0->unk_14_31;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        return v0->unk_18[param2 - 18];
        break;
    case 26:
        return v0->unk_27;
        break;
    case 27:
    case 28:
        return ov16_0225B734(param0, param1, param2);
        break;
    case 29:
        return v0->unk_7E_0;
        break;
    case 30:
        return v0->unk_26_5;
        break;
    case 31:
    case 32:
    case 33:
    case 34:
        return v0->unk_2C[param2 - 31];
        break;
    case 35:
    case 36:
    case 37:
    case 38:
        return v0->unk_30[param2 - 35];
        break;
    case 39:
    case 40:
    case 41:
    case 42:
        return MoveTable_GetMoveMaxPP(v0->unk_0C[param2 - 39], v0->unk_30[param2 - 39]);
        break;
    case 43:
        return v0->unk_34;
        break;
    case 44:
        return v0->unk_35;
        break;
    case 45:
    {
        int v1;
        u16 * v2 = param3;

        for (v1 = 0; v1 < 10 + 1; v1++) {
            v2[v1] = v0->unk_36[v1];
        }
    }
    break;
    case 46:
        sub_02023D28((UnkStruct_02023790 *)param3, v0->unk_36);
        break;
    case 47:
        return v0->unk_4C;
        break;
    case 48:
        return v0->unk_50;
        break;
    case 49:
    {
        int v3;
        u16 * v4 = param3;

        for (v3 = 0; v3 < 10 + 1; v3++) {
            v4[v3] = v0->unk_54[v3];
        }
    }
    break;
    case 50:
        return v0->unk_64;
        break;
    case 51:
        return v0->unk_68;
        break;
    case 52:
        return v0->unk_6C;
        break;
    case 53:
        return v0->unk_70;
        break;
    case 54:
        return v0->unk_74;
        break;
    case 55:
        return v0->unk_78;
        break;
    case 56:
        return v0->unk_7C;
        break;
    case 57:
        return v0->unk_7D;
        break;
    case 58:
        return v0->unk_7E_4;
        break;
    case 59:
        return v0->unk_80;
        break;
    case 60:
        return v0->unk_84;
        break;
    case 61:
        return v0->unk_88.unk_00_0;
        break;
    case 62:
        return v0->unk_88.unk_00_3;
        break;
    case 63:
        return v0->unk_88.unk_00_6;
        break;
    case 64:
        return v0->unk_88.unk_00_8;
        break;
    case 65:
        return v0->unk_88.unk_00_11;
        break;
    case 66:
        return v0->unk_88.unk_00_13;
        break;
    case 67:
        return v0->unk_88.unk_00_15;
        break;
    case 68:
        return v0->unk_88.unk_00_18;
        break;
    case 69:
        return v0->unk_88.unk_00_21;
        break;
    case 70:
        return v0->unk_88.unk_00_24;
        break;
    case 71:
        return v0->unk_88.unk_00_27;
        break;
    case 72:
        return v0->unk_88.unk_00_30;
        break;
    case 73:
        return v0->unk_88.unk_00_31;
        break;
    case 74:
        return v0->unk_88.unk_04_0;
        break;
    case 75:
        return v0->unk_88.unk_04_2;
        break;
    case 76:
        return v0->unk_88.unk_04_6;
        break;
    case 77:
        return v0->unk_88.unk_04_8;
        break;
    case 78:
        return v0->unk_88.unk_04_10;
        break;
    case 79:
        return v0->unk_88.unk_04_13;
        break;
    case 80:
        return v0->unk_88.unk_04_16;
        break;
    case 81:
        return v0->unk_88.unk_04_19;
        break;
    case 82:
        return v0->unk_88.unk_04_22;
        break;
    case 83:
        return v0->unk_88.unk_04_23;
        break;
    case 84:
        return v0->unk_88.unk_04_27;
        break;
    case 85:
        return v0->unk_88.unk_04_28;
        break;
    case 86:
        return v0->unk_88.unk_04_29;
        break;
    case 87:
        return v0->unk_88.unk_08;
        break;
    case 88:
        return v0->unk_88.unk_0C;
        break;
    case 89:
        return v0->unk_88.unk_10;
        break;
    case 90:
        return v0->unk_88.unk_18;
        break;
    case 91:
        return v0->unk_88.unk_1C;
        break;
    case 92:
        return v0->unk_88.unk_20;
        break;
    case 93:
        return v0->unk_88.unk_24;
        break;
    case 94:
        return v0->unk_88.unk_22;
        break;
    case 95:
        return v0->unk_88.unk_34;
        break;
    case 96:
        return v0->unk_28_6;
        break;
    case 97:
        return v0->unk_28_7;
        break;
    case 98:
        return v0->unk_26_0;
        break;
    case 100:
        return ov16_02252060(param0, param1, param0->unk_138, param3);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

void ov16_022523E8 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, const void * param3)
{
    int v0;
    u32 * v1 = (u32 *)param3;
    u16 * v2 = (u16 *)param3;
    s16 * v3 = (s16 *)param3;
    u8 * v4 = (u8 *)param3;
    s8 * v5 = (s8 *)param3;
    UnkStruct_ov16_02252060 * v6 = &param0->unk_2D40[param1];

    switch (param2) {
    case 0:
        v6->unk_00 = v2[0];
        break;
    case 1:
        v6->unk_02 = v2[0];
        break;
    case 2:
        v6->unk_04 = v2[0];
        break;
    case 3:
        v6->unk_06 = v2[0];
        break;
    case 4:
        v6->unk_08 = v2[0];
        break;
    case 5:
        v6->unk_0A = v2[0];
        break;
    case 6:
    case 7:
    case 8:
    case 9:
        v6->unk_0C[param2 - 6] = v2[0];
        break;
    case 10:
        v6->unk_14_0 = v4[0];
        break;
    case 11:
        v6->unk_14_5 = v4[0];
        break;
    case 12:
        v6->unk_14_10 = v4[0];
        break;
    case 13:
        v6->unk_14_15 = v4[0];
        break;
    case 14:
        v6->unk_14_20 = v4[0];
        break;
    case 15:
        v6->unk_14_25 = v4[0];
        break;
    case 16:
        v6->unk_14_30 = v4[0];
        break;
    case 17:
        v6->unk_14_31 = v4[0];
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        v6->unk_18[param2 - 18] = v5[0];
        break;
    case 26:
        v6->unk_27 = v4[0];
        break;
    case 27:
        v6->unk_24 = v4[0];
        break;
    case 28:
        v6->unk_25 = v4[0];
        break;
    case 29:
        v6->unk_7E_0 = v4[0];
        break;
    case 30:
        v6->unk_26_5 = v4[0];
        break;
    case 31:
    case 32:
    case 33:
    case 34:
        v6->unk_2C[param2 - 31] = v4[0];
        break;
    case 35:
    case 36:
    case 37:
    case 38:
        v6->unk_30[param2 - 35] = v4[0];
        break;
    case 39:
    case 40:
    case 41:
    case 42:
        GF_ASSERT(0);
        break;
    case 43:
        v6->unk_34 = v4[0];
        break;
    case 44:
        v6->unk_35 = v4[0];
        break;
    case 45:
    {
        int v7;

        for (v7 = 0; v7 < 10 + 1; v7++) {
            v6->unk_36[v7] = v2[v7];
        }
    }
    break;
    case 47:
        v6->unk_4C = v3[0];
        break;
    case 48:
        v6->unk_50 = v2[0];
        break;
    case 49:
    {
        int v8;

        for (v8 = 0; v8 < 10 + 1; v8++) {
            v6->unk_54[v8] = v2[v8];
        }
    }
    break;
    case 50:
        v6->unk_64 = v1[0];
        break;
    case 51:
        v6->unk_68 = v1[0];
        break;
    case 52:
        v6->unk_6C = v1[0];
        break;
    case 53:
        v6->unk_70 = v1[0];
        break;
    case 54:
        v6->unk_74 = v1[0];
        break;
    case 55:
        v6->unk_78 = v2[0];
        break;
    case 56:
        v6->unk_7C = v4[0];
        break;
    case 57:
        v6->unk_7D = v4[0];
        break;
    case 58:
        v6->unk_7E_4 = v4[0];
        break;
    case 59:
        v6->unk_80 = v1[0];
        break;
    case 60:
        v6->unk_84 = v1[0];
        break;
    case 61:
        v6->unk_88.unk_00_0 = v4[0];
        break;
    case 62:
        v6->unk_88.unk_00_3 = v4[0];
        break;
    case 63:
        v6->unk_88.unk_00_6 = v4[0];
        break;
    case 64:
        v6->unk_88.unk_00_8 = v4[0];
        break;
    case 65:
        v6->unk_88.unk_00_11 = v4[0];
        break;
    case 66:
        v6->unk_88.unk_00_13 = v4[0];
        break;
    case 67:
        v6->unk_88.unk_00_15 = v4[0];
        break;
    case 68:
        v6->unk_88.unk_00_18 = v4[0];
        break;
    case 69:
        v6->unk_88.unk_00_21 = v4[0];
        break;
    case 70:
        v6->unk_88.unk_00_24 = v4[0];
        break;
    case 71:
        v6->unk_88.unk_00_27 = v4[0];
        break;
    case 72:
        v6->unk_88.unk_00_30 = v4[0];
        break;
    case 73:
        v6->unk_88.unk_00_31 = v4[0];
        break;
    case 74:
        v6->unk_88.unk_04_0 = v4[0];
        break;
    case 75:
        v6->unk_88.unk_04_2 = v4[0];
        break;
    case 76:
        v6->unk_88.unk_04_6 = v4[0];
        break;
    case 77:
        v6->unk_88.unk_04_8 = v4[0];
        break;
    case 78:
        v6->unk_88.unk_04_10 = v4[0];
        break;
    case 79:
        v6->unk_88.unk_04_13 = v4[0];
        break;
    case 80:
        v6->unk_88.unk_04_16 = v4[0];
        break;
    case 81:
        v6->unk_88.unk_04_19 = v4[0];
        break;
    case 82:
        v6->unk_88.unk_04_22 = v4[0];
        break;
    case 83:
        v6->unk_88.unk_04_23 = v4[0];
        break;
    case 84:
        v6->unk_88.unk_04_27 = v4[0];
        break;
    case 85:
        v6->unk_88.unk_04_28 = v4[0];
        break;
    case 86:
        v6->unk_88.unk_04_29 = v4[0];
        break;
    case 87:
        v6->unk_88.unk_08 = v1[0];
        break;
    case 88:
        v6->unk_88.unk_0C = v1[0];
        break;
    case 89:
        v6->unk_88.unk_10 = v1[0];
        break;
    case 90:
        v6->unk_88.unk_18 = v1[0];
        break;
    case 91:
        v6->unk_88.unk_1C = v1[0];
        break;
    case 92:
        v6->unk_88.unk_20 = v2[0];
        break;
    case 93:
        v6->unk_88.unk_24 = v2[0];
        break;
    case 94:
        v6->unk_88.unk_22 = v2[0];
        break;
    case 95:
        v6->unk_88.unk_34 = v1[0];
        break;
    case 96:
        v6->unk_28_6 = v4[0];
        break;
    case 97:
        v6->unk_28_7 = v4[0];
        break;
    case 98:
        v6->unk_26_0 = v4[0];
        break;
    case 100:
        ov16_022523E8(param0, param1, param0->unk_138, param3);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

void ov16_02252A14 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    ov16_02252A2C(&param0->unk_2D40[param1], param2, param3);
}

void ov16_02252A2C (UnkStruct_ov16_02252060 * param0, int param1, int param2)
{
    int v0;

    switch (param1) {
    case 1:
        param0->unk_02 += param2;
        break;
    case 2:
        param0->unk_04 += param2;
        break;
    case 3:
        param0->unk_06 += param2;
        break;
    case 4:
        param0->unk_08 += param2;
        break;
    case 5:
        param0->unk_0A += param2;
        break;
    case 10:
        param0->unk_14_0 += param2;
        break;
    case 11:
        param0->unk_14_5 += param2;
        break;
    case 12:
        param0->unk_14_10 += param2;
        break;
    case 13:
        param0->unk_14_15 += param2;
        break;
    case 14:
        param0->unk_14_20 += param2;
        break;
    case 15:
        param0->unk_14_25 += param2;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        if (param0->unk_18[param1 - 18] + param2 < 0) {
            param0->unk_18[param1 - 18] = 0;
        } else if (param0->unk_18[param1 - 18] + param2 > 12) {
            param0->unk_18[param1 - 18] = 12;
        } else {
            param0->unk_18[param1 - 18] += param2;
        }
        break;
    case 31:
    case 32:
    case 33:
    case 34:
    {
        int v1;

        v1 = MoveTable_GetMoveMaxPP(param0->unk_0C[param1 - 31], param0->unk_30[param1 - 31]);

        if (param0->unk_2C[param1 - 31] + param2 > v1) {
            param0->unk_2C[param1 - 31] = v1;
        } else {
            param0->unk_2C[param1 - 31] += param2;
        }
    }
    break;
    case 35:
    case 36:
    case 37:
    case 38:
        param0->unk_30[param1 - 35] += param2;
        break;
    case 43:
        param0->unk_34 += param2;
        break;
    case 44:
    {
        int v2;

        v2 = param0->unk_35;

        if ((v2 + param2) > 255) {
            v2 = 255;
        } else if ((v2 + param2) < 0) {
            v2 = 0;
        } else {
            v2 += param2;
        }

        param0->unk_35 = v2;
    }
    break;
    case 47:
        if (param0->unk_4C + param2 > param0->unk_50) {
            param0->unk_4C = param0->unk_50;
        } else {
            param0->unk_4C += param2;
        }
        break;
    case 48:
        param0->unk_50 += param2;
        break;
    case 50:
        param0->unk_64 += param2;
        break;
    case 51:
        param0->unk_68 += param2;
        break;
    case 61:
        param0->unk_88.unk_00_0 += param2;
        break;
    case 62:
        param0->unk_88.unk_00_3 += param2;
        break;
    case 63:
        param0->unk_88.unk_00_6 += param2;
        break;
    case 64:
        param0->unk_88.unk_00_8 += param2;
        break;
    case 65:
        param0->unk_88.unk_00_11 += param2;
        break;
    case 66:
        param0->unk_88.unk_00_13 += param2;
        break;
    case 67:
        param0->unk_88.unk_00_15 += param2;
        break;
    case 68:
        param0->unk_88.unk_00_18 += param2;
        break;
    case 69:
        param0->unk_88.unk_00_21 += param2;
        break;
    case 70:
        param0->unk_88.unk_00_24 += param2;
        break;
    case 71:
        param0->unk_88.unk_00_27 += param2;
        break;
    case 78:
        param0->unk_88.unk_04_10 += param2;
        break;
    case 79:
        param0->unk_88.unk_04_13 += param2;
        break;
    case 80:
        param0->unk_88.unk_04_16 += param2;
        break;
    case 87:
        param0->unk_88.unk_08 += param2;
        break;
    case 88:
        param0->unk_88.unk_0C += param2;
        break;
    case 89:
        param0->unk_88.unk_10 += param2;
        break;
    case 90:
        param0->unk_88.unk_18 += param2;
        break;
    case 95:
        param0->unk_88.unk_34 += param2;
        break;
    case 96:
        param0->unk_28_6 += param2;
        break;
    case 97:
        param0->unk_28_7 += param2;
        break;
    case 98:
        param0->unk_26_0 += param2;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static const u8 Unk_ov16_0226EBA8[] = {
    0x32,
    0x6A,
    0x7A,
    0x75,
    0x76,
    0x79,
    0x77,
    0x78
};

u8 ov16_02252EC8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    u8 v0 = 0;
    u32 v1, v2;
    u16 v3 = 0, v4 = 0;
    u8 v5;
    u8 v6;
    u8 v7;
    u8 v8;
    s8 v9 = 0;
    s8 v10 = 0;
    u8 v11 = 0, v12 = 0;
    u8 v13 = 0, v14 = 0;
    int v15;
    int v16;
    int v17;
    int v18;
    int v19;
    int v20;
    int v21;
    int v22;
    int v23;

    if ((param1->unk_2D40[param2].unk_4C == 0) && (param1->unk_2D40[param3].unk_4C)) {
        return 1;
    }

    if ((param1->unk_2D40[param2].unk_4C) && (param1->unk_2D40[param3].unk_4C == 0)) {
        return 0;
    }

    v19 = ov16_02255A4C(param1, param2);
    v20 = ov16_02255A4C(param1, param3);
    v5 = ov16_02258AB8(param1, param2);
    v6 = ov16_02258ACC(param1, param2, 0);
    v7 = ov16_02258AB8(param1, param3);
    v8 = ov16_02258ACC(param1, param3, 0);
    v21 = param1->unk_2D40[param2].unk_18[0x3];
    v22 = param1->unk_2D40[param3].unk_18[0x3];

    if (ov16_02255A4C(param1, param2) == 86) {
        v21 = 6 + ((v21 - 6) * 2);

        if (v21 > 12) {
            v21 = 12;
        }

        if (v21 < 0) {
            v21 = 0;
        }
    }

    if (ov16_02255A4C(param1, param3) == 86) {
        v22 = 6 + ((v22 - 6) * 2);

        if (v22 > 12) {
            v22 = 12;
        }

        if (v22 < 0) {
            v22 = 0;
        }
    }

    v1 = param1->unk_2D40[param2].unk_06 * Unk_ov16_0226EBE0[v21][0] / Unk_ov16_0226EBE0[v21][1];
    v2 = param1->unk_2D40[param3].unk_06 * Unk_ov16_0226EBE0[v22][0] / Unk_ov16_0226EBE0[v22][1];

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if (((v19 == 33) && (param1->unk_180 & 0x3)) || ((v19 == 34) && (param1->unk_180 & 0x30))) {
            v1 *= 2;
        }

        if (((v20 == 33) && (param1->unk_180 & 0x3)) || ((v20 == 34) && (param1->unk_180 & 0x30))) {
            v2 *= 2;
        }
    }

    for (v23 = 0; v23 < NELEMS(Unk_ov16_0226EBA8); v23++) {
        if (ov16_0225B0FC(param1, param1->unk_2D40[param2].unk_78, 1) == Unk_ov16_0226EBA8[v23]) {
            v1 /= 2;
            break;
        }
    }

    if (v5 == 115) {
        v1 = v1 * 15 / 10;
    }

    if ((v5 == 102) && (param1->unk_2D40[param2].unk_00 == 132)) {
        v1 *= 2;
    }

    if ((v19 == 95) && (param1->unk_2D40[param2].unk_6C & 0xff)) {
        v1 = v1 * 15 / 10;
    } else {
        if (param1->unk_2D40[param2].unk_6C & 0x40) {
            v1 /= 4;
        }
    }

    if ((v19 == 112) && ((param1->unk_150 - param1->unk_2D40[param2].unk_88.unk_10) < 5)) {
        v1 /= 2;
    }

    if ((v19 == 84) && (param1->unk_2D40[param2].unk_88.unk_04_22) && (param1->unk_2D40[param2].unk_78 == 0)) {
        v1 *= 2;
    }

    if (param1->unk_1BC[ov16_0223E208(param0, param2)] & 0x300) {
        v1 *= 2;
    }

    if (v5 == 52) {
        if ((param1->unk_310C[param2] % (100 / v6)) == 0) {
            v11 = 1;

            if (param4 == 0) {
                param1->unk_2D40[param2].unk_88.unk_04_29 = 1;
            }
        }
    }

    if (v5 == 45) {
        if (ov16_02255A4C(param1, param2) == 82) {
            v6 /= 2;
        }

        if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v6)) {
            v11 = 1;

            if (param4 == 0) {
                param1->unk_2D40[param2].unk_88.unk_04_28 = 1;
            }
        }
    }

    if (v5 == 107) {
        v13 = 1;
    }

    for (v23 = 0; v23 < NELEMS(Unk_ov16_0226EBA8); v23++) {
        if (ov16_0225B0FC(param1, param1->unk_2D40[param3].unk_78, 1) == Unk_ov16_0226EBA8[v23]) {
            v2 /= 2;
            break;
        }
    }

    if (v7 == 115) {
        v2 = v2 * 15 / 10;
    }

    if ((v7 == 102) && (param1->unk_2D40[param3].unk_00 == 132)) {
        v2 *= 2;
    }

    if ((v20 == 95) && (param1->unk_2D40[param3].unk_6C & 0xff)) {
        v2 = v2 * 15 / 10;
    } else {
        if (param1->unk_2D40[param3].unk_6C & 0x40) {
            v2 /= 4;
        }
    }

    if ((v20 == 112) && ((param1->unk_150 - param1->unk_2D40[param3].unk_88.unk_10) < 5)) {
        v2 /= 2;
    }

    if ((v20 == 84) && (param1->unk_2D40[param3].unk_88.unk_04_22) && (param1->unk_2D40[param3].unk_78 == 0)) {
        v2 *= 2;
    }

    if (param1->unk_1BC[ov16_0223E208(param0, param3)] & 0x300) {
        v2 *= 2;
    }

    if (v7 == 52) {
        if ((param1->unk_310C[param3] % (100 / v8)) == 0) {
            v12 = 1;

            if (param4 == 0) {
                param1->unk_2D40[param3].unk_88.unk_04_29 = 1;
            }
        }
    }

    if (v7 == 45) {
        if (ov16_02255A4C(param1, param3) == 82) {
            v8 /= 2;
        }

        if (param1->unk_2D40[param3].unk_4C <= (param1->unk_2D40[param3].unk_50 / v8)) {
            v12 = 1;

            if (param4 == 0) {
                param1->unk_2D40[param3].unk_88.unk_04_28 = 1;
            }
        }
    }

    if (v7 == 107) {
        v14 = 1;
    }

    param1->unk_21F0[param2] = v1;
    param1->unk_21F0[param3] = v2;

    if (param4 == 0) {
        v15 = param1->unk_21A8[param2][3];
        v16 = param1->unk_21A8[param3][3];
        v17 = param1->unk_30BC[param2];
        v18 = param1->unk_30BC[param3];

        if (v15 == 1) {
            if (param1->unk_1D4[param2].unk_00_0) {
                v3 = 165;
            } else {
                v3 = ov16_02252060(param1, param2, 6 + v17, NULL);
            }
        }

        if (v16 == 1) {
            if (param1->unk_1D4[param3].unk_00_0) {
                v4 = 165;
            } else {
                v4 = ov16_02252060(param1, param3, 6 + v18, NULL);
            }
        }

        v9 = param1->unk_354.unk_8A[v3].unk_0A;
        v10 = param1->unk_354.unk_8A[v4].unk_0A;
    }

    if (v9 == v10) {
        if ((v11) && (v12)) {
            if (v1 < v2) {
                v0 = 1;
            } else if ((v1 == v2) && (ov16_0223F4BC(param0) & 1)) {
                v0 = 2;
            }
        } else if ((v11 == 0) && (v12)) {
            v0 = 1;
        } else if ((v11) && (v12 == 0)) {
            v0 = 0;
        } else if ((v13) && (v14)) {
            if (v1 > v2) {
                v0 = 1;
            } else if ((v1 == v2) && (ov16_0223F4BC(param0) & 1)) {
                v0 = 2;
            }
        } else if ((v13) && (v14 == 0)) {
            v0 = 1;
        } else if ((v13 == 0) && (v14)) {
            v0 = 0;
        } else if ((v19 == 100) && (v20 == 100)) {
            if (v1 > v2) {
                v0 = 1;
            } else if ((v1 == v2) && (ov16_0223F4BC(param0) & 1)) {
                v0 = 2;
            }
        } else if ((v19 == 100) && (v20 != 100)) {
            v0 = 1;
        } else if ((v19 != 100) && (v20 == 100)) {
            v0 = 0;
        } else if (param1->unk_180 & 0x70000) {
            if (v1 > v2) {
                v0 = 1;
            }

            if ((v1 == v2) && (ov16_0223F4BC(param0) & 1)) {
                v0 = 2;
            }
        } else {
            if (v1 < v2) {
                v0 = 1;
            }

            if ((v1 == v2) && (ov16_0223F4BC(param0) & 1)) {
                v0 = 2;
            }
        }
    } else if (v9 < v10) {
        v0 = 1;
    }

    return v0;
}

void ov16_022535E0 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    param0->unk_A4[(param1 >> 1) & 1] = 0;
}

void ov16_022535F0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    u32 v1;

    v0 = 0;
    v1 = ov16_0223DF0C(param0);

    while (v0 <= 2) {
        if (((param1->unk_3108 & sub_020787CC(v0)) == 0) && ((param1->unk_3108 & sub_020787CC(param2)) == 0) && (param1->unk_2D40[param2].unk_4C)) {
            param1->unk_A4[(param2 >> 1) & 1] |= sub_020787CC(param1->unk_219C[v0]);
        }

        v0 += 2;

        if ((v1 == (0x2 | 0x8 | 0x40)) || (v1 == ((0x2 | 0x1) | 0x8 | 0x40))) {
            break;
        }
    }
}

BOOL ov16_0225366C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    BOOL v0 = 0;

    if (param1->unk_2170 & 0x20000000) {
        param2[0] = ov16_0225B5D0(param1, 1, param1->unk_2170);
        param1->unk_2170 = 0;

        if ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) {
            v0 = 1;
        }
    } else if (param1->unk_2170) {
        param2[0] = ov16_0225B5D0(param1, 1, param1->unk_2170);

        if ((param1->unk_2D40[param1->unk_94].unk_4C) && (((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) || ((param1->unk_2170 & 0x800000) && (param1->unk_216C & (0x8 | 0x40000))) || ((param1->unk_2170 & 0x10000000) && (param1->unk_216C & (0x1 | 0x10000))))) {
            v0 = 1;
        }

        param1->unk_2170 = 0;
    }

    return v0;
}

BOOL ov16_02253710 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    BOOL v0 = 0;
    u16 v1;

    if (param1->unk_2174 & 0x20000000) {
        param2[0] = ov16_0225B5D0(param1, 2, param1->unk_2174);
        param1->unk_2174 = 0;

        if (((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
            v0 = 1;
        }
    } else if (param1->unk_2174 & 0x1000000) {
        param2[0] = ov16_0225B5D0(param1, 2, param1->unk_2174);
        param1->unk_2174 = 0;

        if ((ov16_02259AC0(param1, param1->unk_94) == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
            v0 = 1;
        }
    } else if (param1->unk_2174 & 0x2000000) {
        param2[0] = ov16_0225B5D0(param1, 2, param1->unk_2174);
        param1->unk_2174 = 0;

        if ((param1->unk_2D40[param1->unk_94].unk_4C) && (ov16_02259AC0(param1, param1->unk_94) == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
            v0 = 1;
        }
    } else if (param1->unk_2174 & 0x10000000) {
        param2[0] = ov16_0225B5D0(param1, 2, param1->unk_2174);
        param1->unk_2174 = 0;

        if (param1->unk_2D40[param1->unk_94].unk_4C) {
            v0 = 1;
        }
    } else if (param1->unk_2174 & 0x4000000) {
        if (ov16_02255A4C(param1, param1->unk_64) == 32) {
            v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_07 * 2;
        } else {
            v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_07;
        }

        GF_ASSERT(v1 != 0);

        if ((ov16_0223F4BC(param0) % 100) < v1) {
            param1->unk_213C |= 0x400000;
        }

        param2[0] = ov16_0225B5D0(param1, 2, param1->unk_2174);
        param1->unk_2174 = 0;

        if (param1->unk_2D40[param1->unk_94].unk_4C == 0) {
            param1->unk_213C &= (0x400000 ^ 0xffffffff);
        }

        v0 = 1;
    } else if (param1->unk_2174) {
        if (ov16_02255A4C(param1, param1->unk_64) == 32) {
            v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_07 * 2;
        } else {
            v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_07;
        }

        GF_ASSERT(v1 != 0);

        if ((ov16_0223F4BC(param0) % 100) < v1) {
            param2[0] = ov16_0225B5D0(param1, 2, param1->unk_2174);
            param1->unk_2174 = 0;

            if ((param1->unk_2D40[param1->unk_94].unk_4C) && (ov16_02259AC0(param1, param1->unk_94) == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
                v0 = 1;
            }
        }
    } else if (param1->unk_2178) {
        param2[0] = ov16_0225B5D0(param1, 3, param1->unk_2178);
        param1->unk_2178 = 0;

        if (param1->unk_2D40[param1->unk_94].unk_4C) {
            v0 = 1;
        }
    }

    return v0;
}

int ov16_02253954 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u16 param3, int param4, int param5)
{
    int v0;
    int v1;

    v0 = 0xff;

    if (param3) {
        v1 = param1->unk_354.unk_8A[param3].unk_08;
    } else {
        v1 = param5;
    }

    if (v1 == 0x4) {
        {
            int v2;
            int v3 = ov16_0223DF1C(param0);
            UnkStruct_ov16_0225BFFC * v4 = ov16_0223DF14(param0, param2);
            u8 v5 = ov16_02263AE4(v4);

            for (param1->unk_217E = 0; param1->unk_217E < v3; param1->unk_217E++) {
                v2 = param1->unk_21EC[param1->unk_217E];

                if (param1->unk_2D40[v2].unk_4C != 0) {
                    v4 = ov16_0223DF14(param0, v2);

                    if (((v5 & 0x1) && ((ov16_02263AE4(v4) & 0x1) == 0)) || ((v5 & 0x1) == 0) && (ov16_02263AE4(v4) & 0x1)) {
                        v0 = v2;
                        break;
                    }
                }
            }

            if (param1->unk_217E != v3) {
                param1->unk_217E++;
            }
        }
    } else if (v1 == 0x8) {
        {
            int v6;
            int v7;

            v7 = ov16_0223DF1C(param0);

            for (param1->unk_217E = 0; param1->unk_217E < v7; param1->unk_217E++) {
                v6 = param1->unk_21EC[param1->unk_217E];

                if (param1->unk_2D40[v6].unk_4C != 0) {
                    if (v6 != param2) {
                        v0 = v6;
                        break;
                    }
                }
            }

            if (param1->unk_217E != v7) {
                param1->unk_217E++;
            }
        }
    } else if ((v1 == 0x200) && (param4 == 1)) {
        {
            int v8;

            v8 = ov16_0223DF0C(param0);

            if ((v8 & 0x2) && ((ov16_0223F4BC(param0) % 2) == 0)) {
                v0 = ov16_0223E258(param0, param2);

                if (param1->unk_2D40[v0].unk_4C == 0) {
                    v0 = param2;
                }
            } else {
                v0 = param2;
            }
        }
    } else if ((v1 == 0x400) && (param4 == 1)) {
        v0 = ov16_02257028(param0, param1, param2);
    } else if (v1 == 0x80) {
        v0 = ov16_02257028(param0, param1, param2);
    } else if ((v1 == 0x10) || (v1 == 0x20) || (v1 == 0x1) || (v1 == 0x40)) {
        v0 = param2;
    } else if (v1 == 0x100) {
        {
            int v9;

            v9 = ov16_0223DF0C(param0);

            if (v9 & 0x2) {
                v0 = ov16_0223E258(param0, param2);
            } else {
                v0 = param2;
            }
        }
    } else if (v1 == 0x200) {
        {
            int v10;

            v10 = ov16_0223DF0C(param0);

            if (v10 & 0x2) {
                v0 = param1->unk_21A8[param2][1];

                if (param1->unk_2D40[v0].unk_4C == 0) {
                    v0 = param2;
                }
            } else {
                v0 = param2;
            }
        }
    } else if ((v1 == 0x2) || (param4 == 1)) {
        {
            int v11;
            int v12;
            int v13[2];

            v11 = ov16_0223DF0C(param0);
            v12 = ov16_0223E208(param0, param2) ^ 1;
            v13[0] = ov16_0223E2A4(param0, param2, 0);
            v13[1] = ov16_0223E2A4(param0, param2, 2);

            if (v11 & 0x2) {
                if ((param1->unk_1C4[v12].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v12].unk_00_21].unk_4C)) {
                    v0 = param1->unk_1C4[v12].unk_00_21;
                } else if ((param1->unk_2D40[v13[0]].unk_4C) && (param1->unk_2D40[v13[1]].unk_4C)) {
                    v12 = ov16_0223F4BC(param0) & 1;
                    v0 = v13[v12];
                } else if (param1->unk_2D40[v13[0]].unk_4C) {
                    v0 = v13[0];
                } else if (param1->unk_2D40[v13[1]].unk_4C) {
                    v0 = v13[1];
                }
            } else {
                if (param1->unk_2D40[param2 ^ 1].unk_4C) {
                    v0 = param2 ^ 1;
                }
            }
        }
    } else {
        {
            int v14;
            int v15;
            int v16;

            v14 = ov16_0223E208(param0, param2) ^ 1;
            v15 = param1->unk_21A8[param2][1];
            v16 = ov16_0223DF1C(param0);

            if ((param1->unk_1C4[v14].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v14].unk_00_21].unk_4C)) {
                v0 = param1->unk_1C4[v14].unk_00_21;
            } else {
                if (param1->unk_2D40[v15].unk_4C) {
                    v0 = v15;
                } else {
                    v15 = ov16_02257028(param0, param1, param2);

                    if (param1->unk_2D40[v15].unk_4C) {
                        v0 = v15;
                    }
                }
            }
        }
    }

    return v0;
}

void ov16_02253C98 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u16 param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    if (param1->unk_6C == 0xff) {
        return;
    }

    if ((ov16_02255A4C(param1, param2) == 96) || (ov16_02255A4C(param1, param2) == 104)) {
        return;
    }

    v0 = ov16_0223E208(param0, param2) ^ 1;

    if ((param1->unk_1C4[v0].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v0].unk_00_21].unk_4C)) {
        return;
    }

    v3 = ov16_0225B910(param0, param1, param2, param3);

    if (v3 == 0) {
        v3 = param1->unk_354.unk_8A[param3].unk_04;
    }

    v4 = ov16_0223DF1C(param0);

    if ((v3 == 13) && ((param1->unk_354.unk_8A[param3].unk_08 == 0x0) || (param1->unk_354.unk_8A[param3].unk_08 == 0x2)) && ((param1->unk_213C & 0x20) == 0) && (ov16_022555A4(param0, param1, 9, param2, 31))) {
        for (v1 = 0; v1 < v4; v1++) {
            v2 = param1->unk_21EC[v1];

            if ((ov16_02255A4C(param1, v2) == 31) && (param1->unk_2D40[v2].unk_4C) && (param2 != v2)) {
                break;
            }
        }

        if (v2 != param1->unk_6C) {
            param1->unk_2D4[v2].unk_00_1 = 1;
            param1->unk_6C = v2;
        }
    } else if ((v3 == 11) && ((param1->unk_354.unk_8A[param3].unk_08 == 0x0) || (param1->unk_354.unk_8A[param3].unk_08 == 0x2)) && ((param1->unk_213C & 0x20) == 0) && (ov16_022555A4(param0, param1, 9, param2, 114))) {
        for (v1 = 0; v1 < v4; v1++) {
            v2 = param1->unk_21EC[v1];

            if ((ov16_02255A4C(param1, v2) == 114) && (param1->unk_2D40[v2].unk_4C) && (param2 != v2)) {
                break;
            }
        }

        if (v2 != param1->unk_6C) {
            param1->unk_2D4[v2].unk_00_2 = 1;
            param1->unk_6C = v2;
        }
    }
}

BOOL ov16_02253E3C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0 = 0;

    if (((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->unk_2D4[param1->unk_6C].unk_00_1)) {
        param1->unk_2D4[param1->unk_6C].unk_00_1 = 0;
        ov16_02251E1C(param1, 1, (0 + 180));
        param1->unk_0C = param1->unk_08;
        param1->unk_08 = 21;
        v0 = 1;
    }

    if (((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->unk_2D4[param1->unk_6C].unk_00_2)) {
        param1->unk_2D4[param1->unk_6C].unk_00_2 = 0;
        ov16_02251E1C(param1, 1, (0 + 180));
        param1->unk_0C = param1->unk_08;
        param1->unk_08 = 21;
        v0 = 1;
    }

    return v0;
}

void ov16_02253EC0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    if (param1->unk_2D40[param2].unk_78 == 0) {
        ov16_0225B830(param1, param2);
    }

    ov16_022662FC(param0, param1, param2);
}

void ov16_02253EF0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    param1->unk_2D40[param2].unk_70 |= 0x1000;
    param1->unk_304C[param2] = param1->unk_3044;
}

void ov16_02253F20 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    param1->unk_2D40[param2].unk_70 &= (0x1000 ^ 0xffffffff);
    param1->unk_2D40[param2].unk_70 &= (0x300 ^ 0xffffffff);
    param1->unk_2D40[param2].unk_80 &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
    param1->unk_2D40[param2].unk_88.unk_00_15 = 0;
    param1->unk_2D40[param2].unk_88.unk_00_18 = 0;
}

int ov16_02253F7C (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    if (param0->unk_2D40[param1].unk_6C & 0x7) {
        return 1;
    } else if (param0->unk_2D40[param1].unk_6C & 0x8) {
        return 2;
    } else if (param0->unk_2D40[param1].unk_6C & 0x10) {
        return 3;
    } else if (param0->unk_2D40[param1].unk_6C & 0x20) {
        return 4;
    } else if (param0->unk_2D40[param1].unk_6C & 0x40) {
        return 5;
    } else if (param0->unk_2D40[param1].unk_6C & 0x80) {
        return 2;
    }

    return 0;
}

BOOL ov16_02253FCC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    v0 = ov16_0223DF0C(param0);

    if (v0 & (0x4 | 0x80)) {
        return 0;
    }

    if ((v0 & 0x1) == 0) {
        return 0;
    }

    if (v0 & 0x2) {
        return 0;
    }

    v1 = ov16_0223E0D8(param0, 1);
    v2 = 0;

    do {
        switch (v2) {
        case 0:
            if ((param1->unk_2D40[1].unk_7C == 1) && ((param1->unk_2140 & 0x20) == 0)) {
                if (sub_02079280(v1, 13, 5)) {
                    param1->unk_2140 |= 0x20;
                    param1->unk_130 = 13;
                    return 1;
                }
            }

            v2++;
            break;
        case 1:
            if ((param1->unk_2D40[1].unk_7D & 0x2) == 0) {
                if (param1->unk_2D40[1].unk_4C <= (param1->unk_2D40[1].unk_50 / 2)) {
                    if (sub_02079280(v1, 14, 5)) {
                        param1->unk_2D40[1].unk_7D |= 0x2;
                        param1->unk_130 = 14;
                        return 1;
                    }
                }
            }

            v2++;
            break;
        case 2:
            if ((param1->unk_2D40[1].unk_7D & 0x3) == 0) {
                {
                    int v3;
                    int v4;
                    Party * v5;
                    Pokemon * v6;

                    v5 = ov16_0223DF20(param0, 1);
                    v4 = 0;

                    for (v3 = 0; v3 < Party_GetCurrentCount(v5); v3++) {
                        v6 = Party_GetPokemonBySlotIndex(v5, v3);

                        if (sub_02074470(v6, 163, NULL)) {
                            v4++;
                        }
                    }

                    if (v4 == 1) {
                        if (sub_02079280(v1, 15, 5)) {
                            param1->unk_2D40[1].unk_7D |= 0x3;
                            param1->unk_130 = 15;
                            return 1;
                        }
                    }
                }
            }

            v2++;
            break;
        case 3:
            if ((param1->unk_2D40[1].unk_7D & 0x4) == 0) {
                {
                    int v7;
                    int v8;
                    Party * v9;
                    Pokemon * v10;

                    v9 = ov16_0223DF20(param0, 1);
                    v8 = 0;

                    for (v7 = 0; v7 < Party_GetCurrentCount(v9); v7++) {
                        v10 = Party_GetPokemonBySlotIndex(v9, v7);

                        if (sub_02074470(v10, 163, NULL)) {
                            v8++;
                        }
                    }

                    if ((v8 == 1) && (param1->unk_2D40[1].unk_4C <= (param1->unk_2D40[1].unk_50 / 2))) {
                        if (sub_02079280(v1, 16, 5)) {
                            param1->unk_2D40[1].unk_7D |= 0x4;
                            param1->unk_130 = 16;
                            return 1;
                        }
                    }
                }
            }

            v2++;
            break;
        case 4:
            break;
        }
    } while (v2 != 4);

    return 0;
}

void ov16_022541C4 (UnkStruct_ov16_0224B9DC * param0)
{
    int v0;

    param0->unk_2144 = 0;
    param0->unk_2150 = 1;
    param0->unk_214C = 0;
    param0->unk_2154 = 0;
    param0->unk_2158 = 10;
    param0->unk_2160 = 0;
    param0->unk_2164 = 0;
    param0->unk_216C = 0;
    param0->unk_74 = 0xff;
    param0->unk_2170 = 0;
    param0->unk_2174 = 0;
    param0->unk_2178 = 0;
    param0->unk_88 = 0;
    param0->unk_8C = 0x0;
    param0->unk_94 = 0xff;
    param0->unk_217C = 0;
    param0->unk_217D = 0;
    param0->unk_217E = 0;
    param0->unk_2180 = 0;
    param0->unk_38 = 0;
    param0->unk_2184 = 0;
    param0->unk_2188 = 0;
    param0->unk_10 = 0;
    param0->unk_18 = 0;
    param0->unk_20 = 0;
    param0->unk_28 = 0;
    param0->unk_30 = 0;
    param0->unk_3C = 0;
    param0->unk_40 = 0;
    param0->unk_48 = 0;
    param0->unk_4C = 0;
    param0->unk_50 = 0;
    param0->unk_54 = 0;
    param0->unk_213C &= ((1 | 2 | 4 | 8 | 16 | 32 | 256 | 512 | 1024 | 2048 | 0x80000 | 8192) | (4096 | 16384 | 32768 | 65536 | 0x20000 | 0x40000 | 0x100000 | 0x200000 | 0x400000 | 128 | 64)) ^ 0xffffffff;
    param0->unk_2140 &= (2 | 4 | 8 | 16 | 64 | 256) ^ 0xffffffff;
    param0->unk_3120 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuClearFast(&param0->unk_2D4[v0], sizeof(UnkStruct_ov16_0224B9DC_sub4));
        param0->unk_21A4[v0] = 6;
    }
}

void ov16_022542B8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        param1->unk_306C[v1] = 0xff;
        param1->unk_21A0[v1] = 6;
        param1->unk_310C[v1] = ov16_0223F4BC(param0);
    }

    param1->unk_2168 = 1;
    param1->unk_174 = 1;

    v0 = ov16_0223DF0C(param0);

    if ((v0 & 0x2) == 0) {
        param1->unk_3108 |= sub_020787CC(2);
        param1->unk_3108 |= sub_020787CC(3);
    }

    param1->unk_311C = 6;
    param1->unk_311D = 6;
}

void ov16_0225433C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;
    u32 v2;
    u8 * v3;
    UnkStruct_ov16_0225433C v4;

    v4 = param1->unk_2D40[param2].unk_88;
    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);

    param1->unk_21A8[param2][0] = 39;

    if ((param1->unk_213C & 0x100) == 0) {
        for (v0 = 0; v0 < v1; v0++) {
            if ((param1->unk_2D40[v0].unk_70 & 0x4000000) && (param1->unk_2D40[v0].unk_88.unk_04_8 == param2)) {
                param1->unk_2D40[v0].unk_70 &= (0x4000000 ^ 0xffffffff);
            }

            if ((param1->unk_2D40[v0].unk_80 & 0x18) && (param1->unk_2D40[v0].unk_88.unk_04_0 == param2)) {
                param1->unk_2D40[v0].unk_80 &= (0x18 ^ 0xffffffff);
                param1->unk_2D40[v0].unk_88.unk_04_0 = 0;
            }
        }

        param1->unk_2D40[param2].unk_70 = 0;
        param1->unk_2D40[param2].unk_80 = 0;
    } else {
        param1->unk_2D40[param2].unk_70 &= (0x100000 | 0x4000000 | 0x7 | 0x10000000 | 0x1000000);
        param1->unk_2D40[param2].unk_80 &= (3 | 4 | 24 | 32 | 1024 | 65536 | 0x20000 | 0x8000 | 0x800000 | 0x1000000 | 0x200000 | 0x4000000 | 0x2000000 | 0x8000000);

        for (v0 = 0; v0 < v1; v0++) {
            if ((param1->unk_2D40[v0].unk_80 & 0x18) && (param1->unk_2D40[v0].unk_88.unk_04_0 == param2)) {
                param1->unk_2D40[v0].unk_80 &= (0x18 ^ 0xffffffff);
                param1->unk_2D40[v0].unk_80 |= (0x8 * 2);
            }
        }
    }

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->unk_2D40[v0].unk_70 & (sub_020787CC(param2) << 16)) {
            param1->unk_2D40[v0].unk_70 &= ((sub_020787CC(param2) << 16) ^ 0xffffffff);
        }

        if ((param1->unk_2D40[v0].unk_70 & 0xe000) && (param1->unk_2D40[v0].unk_88.unk_04_6 == param2)) {
            param1->unk_2D40[v0].unk_70 &= (0xe000 ^ 0xffffffff);
        }
    }

    v3 = (u8 *)&param1->unk_2D40[param2].unk_88;

    for (v0 = 0; v0 < sizeof(UnkStruct_ov16_0225433C); v0++) {
        v3[v0] = 0;
    }

    if (param1->unk_213C & 0x100) {
        param1->unk_2D40[param2].unk_88.unk_18 = v4.unk_18;
        param1->unk_2D40[param2].unk_88.unk_04_0 = v4.unk_04_0;
        param1->unk_2D40[param2].unk_88.unk_00_13 = v4.unk_00_13;
        param1->unk_2D40[param2].unk_88.unk_04_8 = v4.unk_04_8;
        param1->unk_2D40[param2].unk_88.unk_04_13 = v4.unk_04_13;
        param1->unk_2D40[param2].unk_88.unk_04_19 = v4.unk_04_19;
        param1->unk_2D40[param2].unk_88.unk_04_16 = v4.unk_04_16;
    }

    param1->unk_2D40[param2].unk_88.unk_0C = param1->unk_150 + 1;
    param1->unk_2D40[param2].unk_88.unk_10 = param1->unk_150 + 1;
    param1->unk_2D40[param2].unk_88.unk_00_30 = (param1->unk_150 + 1) & 1;
    param1->unk_305C[param2] = 0;
    param1->unk_3064[param2] = 0;
    param1->unk_306C[param2] = 0xff;
    param1->unk_3074[param2] = 0;
    param1->unk_307C[param2] = 0;
    param1->unk_3084[param2] = 0;
    param1->unk_308C[param2][0] = 0;
    param1->unk_308C[param2][1] = 0;
    param1->unk_308C[param2][2] = 0;
    param1->unk_308C[param2][3] = 0;
    param1->unk_30AC[param2] = 0;
    param1->unk_30C4[param2] = 0;
    param1->unk_30CC[param2] = 0;
    param1->unk_30D4[param2] = 0;
    param1->unk_30DC[param2] = 0;
    param1->unk_180 &= ((sub_020787CC(param2) << 8) ^ 0xffffffff);

    if (param1->unk_2D40[param2].unk_80 & 0x800000) {
        v0 = param1->unk_2D40[param2].unk_02;

        param1->unk_2D40[param2].unk_02 = param1->unk_2D40[param2].unk_04;
        param1->unk_2D40[param2].unk_04 = v0;
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((v0 != param2) && (ov16_0223E208(param0, v0) != ov16_0223E208(param0, param2))) {
            param1->unk_3084[v0] = 0;
        }

        param1->unk_308C[v0][param2] = 0;
    }

    ov16_0225B80C(param1, param2);
    ov16_0225B824(param1, param2);
    ov16_0225B830(param1, param2);
}

void ov16_02254744 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;
    u8 * v2;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0x0; v0 < 0x8; v0++) {
        param1->unk_2D40[param2].unk_18[v0] = 6;
    }

    param1->unk_2D40[param2].unk_70 = 0;
    param1->unk_2D40[param2].unk_80 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if ((param1->unk_2D40[v0].unk_70 & 0x4000000) && (param1->unk_2D40[v0].unk_88.unk_04_8 == param2)) {
            param1->unk_2D40[v0].unk_70 &= (0x4000000 ^ 0xffffffff);
        }

        if (param1->unk_2D40[v0].unk_70 & (sub_020787CC(param2) << 16)) {
            param1->unk_2D40[v0].unk_70 &= ((sub_020787CC(param2) << 16) ^ 0xffffffff);
        }

        if ((param1->unk_2D40[v0].unk_70 & 0xe000) && (param1->unk_2D40[v0].unk_88.unk_04_6 == param2)) {
            param1->unk_2D40[v0].unk_70 &= (0xe000 ^ 0xffffffff);
        }
    }

    v2 = (u8 *)&param1->unk_2D40[param2].unk_88;

    for (v0 = 0; v0 < sizeof(UnkStruct_ov16_0225433C); v0++) {
        v2[v0] = 0;
    }

    v2 = (u8 *)&param1->unk_1D4[param2];

    for (v0 = 0; v0 < sizeof(UnkStruct_ov16_0224B9DC_sub3); v0++) {
        v2[v0] = 0;
    }

    param1->unk_2D40[param2].unk_88.unk_0C = param1->unk_150 + 1;
    param1->unk_2D40[param2].unk_88.unk_10 = param1->unk_150 + 1;
    param1->unk_2D40[param2].unk_88.unk_00_30 = (param1->unk_150 + 1) & 1;
    param1->unk_305C[param2] = 0;
    param1->unk_3064[param2] = 0;
    param1->unk_306C[param2] = 0xff;
    param1->unk_3074[param2] = 0;
    param1->unk_307C[param2] = 0;
    param1->unk_3084[param2] = 0;
    param1->unk_308C[param2][0] = 0;
    param1->unk_308C[param2][1] = 0;
    param1->unk_308C[param2][2] = 0;
    param1->unk_308C[param2][3] = 0;
    param1->unk_30AC[param2] = 0;
    param1->unk_30C4[param2] = 0;
    param1->unk_30CC[param2] = 0;
    param1->unk_30D4[param2] = 0;
    param1->unk_30DC[param2] = 0;
    param1->unk_180 &= ((sub_020787CC(param2) << 8) ^ 0xffffffff);

    for (v0 = 0; v0 < v1; v0++) {
        if ((v0 != param2) && (ov16_0223E208(param0, v0) != ov16_0223E208(param0, param2))) {
            param1->unk_3084[v0] = 0;
        }

        param1->unk_308C[v0][param2] = 0;
    }

    param1->unk_13C[param2] &= 0x1 ^ 0xffffffff;

    ov16_0225B80C(param1, param2);
    ov16_0225B824(param1, param2);
    ov16_0225B830(param1, param2);
}

void ov16_02254990 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuClearFast(&param1->unk_1D4[v0], sizeof(UnkStruct_ov16_0224B9DC_sub3));
        MI_CpuClearFast(&param1->unk_344[v0], sizeof(UnkStruct_ov16_0224B9DC_sub5));

        param1->unk_2D40[v0].unk_70 &= (0x8 ^ 0xffffffff);

        if (param1->unk_2D40[v0].unk_88.unk_08 + 1 < param1->unk_150) {
            param1->unk_2D40[v0].unk_70 &= (0x400000 ^ 0xffffffff);
        }

        if ((param1->unk_2D40[v0].unk_6C & 0x7) && (param1->unk_2D40[v0].unk_70 & 0x1000)) {
            ov16_02253F20(param0, param1, v0);
        }

        if ((param1->unk_2D40[v0].unk_6C & 0x7) && (param1->unk_2D40[v0].unk_70 & 0xc00)) {
            param1->unk_2D40[v0].unk_70 &= (0xc00 ^ 0xffffffff);
        }
    }

    param1->unk_1C4[0].unk_00_20 = 0;
    param1->unk_1C4[1].unk_00_20 = 0;
}

int ov16_02254A6C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    int v0;
    int v1;

    v1 = ov16_02258AB8(param1, param2);

    for (v0 = 0; v0 < 4; v0++) {
        if ((param1->unk_2D40[param2].unk_0C[v0] == 0) && (param4 & 0x1)) {
            param3 |= sub_020787CC(v0);
        }

        if ((param1->unk_2D40[param2].unk_2C[v0] == 0) && (param4 & 0x2)) {
            param3 |= sub_020787CC(v0);
        }

        if ((param1->unk_2D40[param2].unk_0C[v0] == param1->unk_2D40[param2].unk_88.unk_20) && (param4 & 0x4)) {
            param3 |= sub_020787CC(v0);
        }

        if ((param1->unk_2D40[param2].unk_0C[v0] == param1->unk_307C[param2]) && (param4 & 0x8) && (param1->unk_2D40[param2].unk_70 & 0x80000000)) {
            param3 |= sub_020787CC(v0);
        }

        if ((param1->unk_2D40[param2].unk_88.unk_00_8) && (param4 & 0x10) && (param1->unk_354.unk_8A[param1->unk_2D40[param2].unk_0C[v0]].unk_03 == 0)) {
            param3 |= sub_020787CC(v0);
        }

        if ((ov16_02255EF4(param0, param1, param2, param1->unk_2D40[param2].unk_0C[v0])) && (param4 & 0x20)) {
            param3 |= sub_020787CC(v0);
        }

        if ((ov16_02256044(param0, param1, param2, param1->unk_2D40[param2].unk_0C[v0])) && (param4 & 0x40)) {
            param3 |= sub_020787CC(v0);
        }

        if ((ov16_02256078(param0, param1, param2, param1->unk_2D40[param2].unk_0C[v0])) && (param4 & 0x80)) {
            param3 |= sub_020787CC(v0);
        }

        if ((param1->unk_2D40[param2].unk_88.unk_24) && (param1->unk_2D40[param2].unk_88.unk_24 != param1->unk_2D40[param2].unk_0C[v0])) {
            param3 |= sub_020787CC(v0);
        }

        if (((v1 == 55) || (v1 == 115) || (v1 == 125)) && (param4 & 0x200)) {
            if (ov16_02254EE0(&param1->unk_2D40[param2], param1->unk_2D40[param2].unk_88.unk_30) == 4) {
                param1->unk_2D40[param2].unk_88.unk_30 = 0;
            } else {
                if ((param1->unk_2D40[param2].unk_88.unk_30) && (param1->unk_2D40[param2].unk_88.unk_30 != param1->unk_2D40[param2].unk_0C[v0])) {
                    param3 |= sub_020787CC(v0);
                }
            }
        }
    }

    return param3;
}

BOOL ov16_02254CA8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, UnkStruct_ov16_0225C300 * param4)
{
    BOOL v0;

    v0 = 1;

    if (ov16_02254A6C(param0, param1, param2, 0, 0x4) & sub_020787CC(param3)) {
        param4->unk_01 = 10;
        param4->unk_02 = 609;
        param4->unk_04[0] = ov16_02255560(param1, param2);
        param4->unk_04[1] = param1->unk_2D40[param2].unk_0C[param3];
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x8) & sub_020787CC(param3)) {
        param4->unk_01 = 2;
        param4->unk_02 = 612;
        param4->unk_04[0] = ov16_02255560(param1, param2);
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x10) & sub_020787CC(param3)) {
        param4->unk_01 = 10;
        param4->unk_02 = 613;
        param4->unk_04[0] = ov16_02255560(param1, param2);
        param4->unk_04[1] = param1->unk_2D40[param2].unk_0C[param3];
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x20) & sub_020787CC(param3)) {
        param4->unk_01 = 10;
        param4->unk_02 = 616;
        param4->unk_04[0] = ov16_02255560(param1, param2);
        param4->unk_04[1] = param1->unk_2D40[param2].unk_0C[param3];
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x40) & sub_020787CC(param3)) {
        param4->unk_01 = 10;
        param4->unk_02 = 1001;
        param4->unk_04[0] = ov16_02255560(param1, param2);
        param4->unk_04[1] = param1->unk_2D40[param2].unk_0C[param3];
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x80) & sub_020787CC(param3)) {
        param4->unk_01 = 34;
        param4->unk_02 = 1057;
        param4->unk_04[0] = ov16_02255560(param1, param2);
        param4->unk_04[1] = 377;
        param4->unk_04[2] = param1->unk_2D40[param2].unk_0C[param3];
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x200) & sub_020787CC(param3)) {
        param4->unk_01 = 24;
        param4->unk_02 = 911;
        param4->unk_04[0] = param1->unk_2D40[param2].unk_78;
        param4->unk_04[1] = param1->unk_2D40[param2].unk_88.unk_30;
        v0 = 0;
    } else if (ov16_02254A6C(param0, param1, param2, 0, 0x2) & sub_020787CC(param3)) {
        param4->unk_01 = 0;
        param4->unk_02 = 823;
        v0 = 0;
    }

    return v0;
}

int ov16_02254EE0 (UnkStruct_ov16_02252060 * param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_0C[v0] == param1) {
            break;
        }
    }

    return v0;
}

static const u8 Unk_ov16_0226ECD4[][3] = {
    {0x0, 0x5, 0x5},
    {0x0, 0x8, 0x5},
    {0xA, 0xA, 0x5},
    {0xA, 0xB, 0x5},
    {0xA, 0xC, 0x14},
    {0xA, 0xF, 0x14},
    {0xA, 0x6, 0x14},
    {0xA, 0x5, 0x5},
    {0xA, 0x10, 0x5},
    {0xA, 0x8, 0x14},
    {0xB, 0xA, 0x14},
    {0xB, 0xB, 0x5},
    {0xB, 0xC, 0x5},
    {0xB, 0x4, 0x14},
    {0xB, 0x5, 0x14},
    {0xB, 0x10, 0x5},
    {0xD, 0xB, 0x14},
    {0xD, 0xD, 0x5},
    {0xD, 0xC, 0x5},
    {0xD, 0x4, 0x0},
    {0xD, 0x2, 0x14},
    {0xD, 0x10, 0x5},
    {0xC, 0xA, 0x5},
    {0xC, 0xB, 0x14},
    {0xC, 0xC, 0x5},
    {0xC, 0x3, 0x5},
    {0xC, 0x4, 0x14},
    {0xC, 0x2, 0x5},
    {0xC, 0x6, 0x5},
    {0xC, 0x5, 0x14},
    {0xC, 0x10, 0x5},
    {0xC, 0x8, 0x5},
    {0xF, 0xB, 0x5},
    {0xF, 0xC, 0x14},
    {0xF, 0xF, 0x5},
    {0xF, 0x4, 0x14},
    {0xF, 0x2, 0x14},
    {0xF, 0x10, 0x14},
    {0xF, 0x8, 0x5},
    {0xF, 0xA, 0x5},
    {0x1, 0x0, 0x14},
    {0x1, 0xF, 0x14},
    {0x1, 0x3, 0x5},
    {0x1, 0x2, 0x5},
    {0x1, 0xE, 0x5},
    {0x1, 0x6, 0x5},
    {0x1, 0x5, 0x14},
    {0x1, 0x11, 0x14},
    {0x1, 0x8, 0x14},
    {0x3, 0xC, 0x14},
    {0x3, 0x3, 0x5},
    {0x3, 0x4, 0x5},
    {0x3, 0x5, 0x5},
    {0x3, 0x7, 0x5},
    {0x3, 0x8, 0x0},
    {0x4, 0xA, 0x14},
    {0x4, 0xD, 0x14},
    {0x4, 0xC, 0x5},
    {0x4, 0x3, 0x14},
    {0x4, 0x2, 0x0},
    {0x4, 0x6, 0x5},
    {0x4, 0x5, 0x14},
    {0x4, 0x8, 0x14},
    {0x2, 0xD, 0x5},
    {0x2, 0xC, 0x14},
    {0x2, 0x1, 0x14},
    {0x2, 0x6, 0x14},
    {0x2, 0x5, 0x5},
    {0x2, 0x8, 0x5},
    {0xE, 0x1, 0x14},
    {0xE, 0x3, 0x14},
    {0xE, 0xE, 0x5},
    {0xE, 0x11, 0x0},
    {0xE, 0x8, 0x5},
    {0x6, 0xA, 0x5},
    {0x6, 0xC, 0x14},
    {0x6, 0x1, 0x5},
    {0x6, 0x3, 0x5},
    {0x6, 0x2, 0x5},
    {0x6, 0xE, 0x14},
    {0x6, 0x7, 0x5},
    {0x6, 0x11, 0x14},
    {0x6, 0x8, 0x5},
    {0x5, 0xA, 0x14},
    {0x5, 0xF, 0x14},
    {0x5, 0x1, 0x5},
    {0x5, 0x4, 0x5},
    {0x5, 0x2, 0x14},
    {0x5, 0x6, 0x14},
    {0x5, 0x8, 0x5},
    {0x7, 0x0, 0x0},
    {0x7, 0xE, 0x14},
    {0x7, 0x11, 0x5},
    {0x7, 0x8, 0x5},
    {0x7, 0x7, 0x14},
    {0x10, 0x10, 0x14},
    {0x10, 0x8, 0x5},
    {0x11, 0x1, 0x5},
    {0x11, 0xE, 0x14},
    {0x11, 0x7, 0x14},
    {0x11, 0x11, 0x5},
    {0x11, 0x8, 0x5},
    {0x8, 0xA, 0x5},
    {0x8, 0xB, 0x5},
    {0x8, 0xD, 0x5},
    {0x8, 0xF, 0x14},
    {0x8, 0x5, 0x14},
    {0x8, 0x8, 0x5},
    {0xFE, 0xFE, 0x0},
    {0x0, 0x7, 0x0},
    {0x1, 0x7, 0x0},
    {0xFF, 0xFF, 0x0}
};

static BOOL ov16_02254EF4 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    BOOL v0;
    int v1;

    v1 = ov16_02258AB8(param0, param2);
    v0 = 1;

    if ((v1 == 106) || (param0->unk_2D40[param2].unk_80 & 0x400)) {
        if ((Unk_ov16_0226ECD4[param3][1] == 2) && (Unk_ov16_0226ECD4[param3][2] == 0)) {
            v0 = 0;
        }
    }

    if (param0->unk_1D4[param2].unk_00_6) {
        if (Unk_ov16_0226ECD4[param3][1] == 2) {
            v0 = 0;
        }
    }

    if (param0->unk_180 & 0x7000) {
        if ((Unk_ov16_0226ECD4[param3][1] == 2) && (Unk_ov16_0226ECD4[param3][2] == 0)) {
            v0 = 0;
        }
    }

    if (param0->unk_2D40[param2].unk_80 & 0x400000) {
        if ((Unk_ov16_0226ECD4[param3][1] == 17) && (Unk_ov16_0226ECD4[param3][2] == 0)) {
            v0 = 0;
        }
    }

    return v0;
}

int ov16_02254FA8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, int param5, int param6, u32 * param7)
{
    int v0;
    int v1;
    u8 v2;
    u32 v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u8 v7;

    v1 = 1;

    if (param2 == 165) {
        return param6;
    }

    v4 = ov16_02258AB8(param1, param4);
    v6 = ov16_02258ACC(param1, param4, 0);
    v5 = ov16_02258AB8(param1, param5);
    v7 = ov16_02258ACC(param1, param5, 0);

    if (ov16_02255A4C(param1, param4) == 96) {
        v2 = 0;
    } else if (param3) {
        v2 = param3;
    } else {
        v2 = param1->unk_354.unk_8A[param2].unk_04;
    }

    v3 = param1->unk_354.unk_8A[param2].unk_03;

    if (((param1->unk_213C & 0x800) == 0) && ((ov16_02252060(param1, param4, 27, NULL) == v2) || (ov16_02252060(param1, param4, 28, NULL) == v2))) {
        if (ov16_02255A4C(param1, param4) == 91) {
            param6 *= 2;
        } else {
            param6 = param6 * 15 / 10;
        }
    }

    if ((ov16_02255AB4(param1, param4, param5, 26) == 1) && (v2 == 4) && (v5 != 106)) {
        param7[0] |= 0x800;
    } else if ((param1->unk_2D40[param5].unk_88.unk_04_13) && ((param1->unk_2D40[param5].unk_80 & 0x400) == 0) && (v2 == 4) && (v5 != 106)) {
        param7[0] |= 0x100000;
    } else {
        v0 = 0;

        while (Unk_ov16_0226ECD4[v0][0] != 0xff) {
            if (Unk_ov16_0226ECD4[v0][0] == 0xfe) {
                if ((param1->unk_2D40[param5].unk_70 & 0x20000000) || (ov16_02255A4C(param1, param4) == 113)) {
                    break;
                } else {
                    v0++;
                    continue;
                }
            }

            if (Unk_ov16_0226ECD4[v0][0] == v2) {
                if (Unk_ov16_0226ECD4[v0][1] == ov16_02252060(param1, param5, 27, NULL)) {
                    if (ov16_02254EF4(param1, param4, param5, v0) == 1) {
                        param6 = ov16_0225B63C(param1, param4, Unk_ov16_0226ECD4[v0][2], param6, v3, param7);

                        if (Unk_ov16_0226ECD4[v0][2] == 20) {
                            v1 *= 2;
                        }
                    }
                }

                if ((Unk_ov16_0226ECD4[v0][1] == ov16_02252060(param1, param5, 28, NULL)) && (ov16_02252060(param1, param5, 27, NULL) != ov16_02252060(param1, param5, 28, NULL))) {
                    if (ov16_02254EF4(param1, param4, param5, v0) == 1) {
                        param6 = ov16_0225B63C(param1, param4, Unk_ov16_0226ECD4[v0][2], param6, v3, param7);

                        if (Unk_ov16_0226ECD4[v0][2] == 20) {
                            v1 *= 2;
                        }
                    }
                }
            }

            v0++;
        }
    }

    if ((ov16_02255AB4(param1, param4, param5, 25) == 1) && (ov16_0225B6C8(param1, param2)) && (((param7[0] & 0x2) == 0) || ((param7[0] & (2 | 4)) == (2 | 4))) && (v3)) {
        param7[0] |= 0x40000;
    } else {
        if (((param1->unk_213C & 0x800) == 0) && ((param1->unk_213C & 0x8000) == 0)) {
            if ((param7[0] & 0x2) && (v3)) {
                if ((ov16_02255AB4(param1, param4, param5, 111) == 1) || (ov16_02255AB4(param1, param4, param5, 116) == 1)) {
                    param6 = ov16_022563F8(param6 * 3, 4);
                }

                if (v4 == 96) {
                    param6 = param6 * (100 + v6) / 100;
                }
            }

            if ((param7[0] & 0x4) && (v3)) {
                if (ov16_02255A4C(param1, param4) == 110) {
                    param6 *= 2;
                }
            }
        } else {
            param7[0] &= (0x2 ^ 0xffffffff);
            param7[0] &= (0x4 ^ 0xffffffff);
        }
    }

    return param6;
}

void ov16_022552D4 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, u32 * param8)
{
    int v0;
    u8 v1;

    if (param1 == 165) {
        return;
    }

    if (param3 == 96) {
        v1 = 0;
    } else if (param2) {
        v1 = param2;
    } else {
        v1 = param0->unk_354.unk_8A[param1].unk_04;
    }

    if ((param3 != 104) && (param4 == 26) && (v1 == 4) && ((param0->unk_180 & 0x7000) == 0) && (param5 != 106)) {
        param8[0] |= 0x8;
    } else {
        v0 = 0;

        while (Unk_ov16_0226ECD4[v0][0] != 0xff) {
            if (Unk_ov16_0226ECD4[v0][0] == 0xfe) {
                if (param3 == 113) {
                    break;
                } else {
                    v0++;
                    continue;
                }
            }

            if (Unk_ov16_0226ECD4[v0][0] == v1) {
                if (Unk_ov16_0226ECD4[v0][1] == param6) {
                    if (ov16_022553F8(param0, param5, v0) == 1) {
                        ov16_02255448(Unk_ov16_0226ECD4[v0][2], param8);
                    }
                }

                if ((Unk_ov16_0226ECD4[v0][1] == param7) && (param6 != param7)) {
                    if (ov16_022553F8(param0, param5, v0) == 1) {
                        ov16_02255448(Unk_ov16_0226ECD4[v0][2], param8);
                    }
                }
            }

            v0++;
        }
    }

    if ((param3 != 104) && (param4 == 25) && (ov16_0225B6C8(param0, param1)) && (((param8[0] & 0x2) == 0) || ((param8[0] & (2 | 4)) == (2 | 4)))) {
        param8[0] |= 0x8;
    }

    return;
}

static BOOL ov16_022553F8 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    BOOL v0;

    v0 = 1;

    if (param1 == 106) {
        if ((Unk_ov16_0226ECD4[param2][1] == 2) && (Unk_ov16_0226ECD4[param2][2] == 0)) {
            v0 = 0;
        }
    }

    if (param0->unk_180 & 0x7000) {
        if ((Unk_ov16_0226ECD4[param2][1] == 2) && (Unk_ov16_0226ECD4[param2][2] == 0)) {
            v0 = 0;
        }
    }

    return v0;
}

static void ov16_02255448 (int param0, u32 * param1)
{
    switch (param0) {
    case 0:
        param1[0] |= 0x8;
        param1[0] &= (0x4 ^ 0xffffffff);
        param1[0] &= (0x2 ^ 0xffffffff);
        break;
    case 5:
        if (param1[0] & 0x2) {
            param1[0] &= (0x2 ^ 0xffffffff);
        } else {
            param1[0] |= 0x4;
        }
        break;
    case 20:
        if (param1[0] & 0x4) {
            param1[0] &= (0x4 ^ 0xffffffff);
        } else {
            param1[0] |= 0x2;
        }
        break;
    }

    return;
}

BOOL ov16_02255498 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    if ((param0->unk_344[param1].unk_00_0) || (param0->unk_344[param1].unk_00_1) || (param0->unk_344[param1].unk_00_2) || (param0->unk_344[param1].unk_00_3) || (param0->unk_344[param1].unk_00_4) || (param0->unk_344[param1].unk_00_5) || (param0->unk_344[param1].unk_00_6) || (param0->unk_344[param1].unk_00_8) || (param0->unk_344[param1].unk_00_7)) {
        return 1;
    } else {
        return 0;
    }
}

u8 ov16_022554E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;
    u8 v1;
    int v2;

    v1 = 0;
    v2 = ov16_0223DF1C(param0);

    switch (param2) {
    case 0:
        for (v0 = 0; v0 < v2; v0++) {
            if ((v0 != param3) && (param1->unk_2D40[v0].unk_4C)) {
                v1++;
            }
        }
        break;
    case 1:
        for (v0 = 0; v0 < v2; v0++) {
            if ((ov16_0223E208(param0, v0) == ov16_0223E208(param0, param3)) && (param1->unk_2D40[v0].unk_4C)) {
                v1++;
            }
        }
        break;
    }

    return v1;
}

int ov16_02255560 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    return param1 | (param0->unk_219C[param1] << 8);
}

u16 ov16_02255570 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    u16 v0;

    v0 = 0;

    if ((param0->unk_21A8[param1][3] == 1) && (param0->unk_21A8[param1][2])) {
        v0 = param0->unk_2D40[param1].unk_0C[param0->unk_21A8[param1][2] - 1];
    }

    return v0;
}

int ov16_022555A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    int v0;
    int v1;
    int v2;

    v0 = 0;
    v2 = ov16_0223DF1C(param0);

    switch (param2) {
    case 0:
        for (v1 = 0; v1 < v2; v1++) {
            if ((ov16_0223E208(param0, v1) == ov16_0223E208(param0, param3)) && (ov16_02255A4C(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 1:
        for (v1 = 0; v1 < v2; v1++) {
            if ((ov16_0223E208(param0, v1) == ov16_0223E208(param0, param3)) && (param1->unk_2D40[v1].unk_4C) && (ov16_02255A4C(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 2:
        for (v1 = 0; v1 < v2; v1++) {
            if ((ov16_0223E208(param0, v1) != ov16_0223E208(param0, param3)) && (ov16_02255A4C(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 3:
        for (v1 = 0; v1 < v2; v1++) {
            if ((ov16_0223E208(param0, v1) != ov16_0223E208(param0, param3)) && (param1->unk_2D40[v1].unk_4C) && (ov16_02255A4C(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 4:
        for (v1 = 0; v1 < v2; v1++) {
            if ((ov16_0223E208(param0, v1) != ov16_0223E208(param0, param3)) && (param1->unk_2D40[v1].unk_4C) && (ov16_02255A4C(param1, v1) == param4)) {
                v0 |= sub_020787CC(v1);
            }
        }
        break;
    case 5:
        for (v1 = 0; v1 < v2; v1++) {
            if (ov16_02255A4C(param1, v1) == param4) {
                v0++;
            }
        }
        break;
    case 6:
        for (v1 = 0; v1 < v2; v1++) {
            if ((v1 != param3) && (ov16_02255A4C(param1, v1) == param4)) {
                v0++;
            }
        }
        break;
    case 7:
        for (v1 = 0; v1 < v2; v1++) {
            if ((v1 != param3) && (ov16_02255A4C(param1, v1) == param4)) {
                v0 = v1 + 1;
                break;
            }
        }
        break;
    case 8:
        for (v1 = 0; v1 < v2; v1++) {
            if ((ov16_02255A4C(param1, v1) == param4) && (param1->unk_2D40[v1].unk_4C)) {
                v0++;
            }
        }
        break;
    case 9:
        for (v1 = 0; v1 < v2; v1++) {
            if ((v1 != param3) && (ov16_02255A4C(param1, v1) == param4) && (param1->unk_2D40[v1].unk_4C)) {
                v0++;
            }
        }
        break;
    }

    return v0;
}

BOOL ov16_0225582C (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    switch (param0->unk_354.unk_8A[param1].unk_00) {
    case 26:
    case 39:
    case 75:
    case 145:
    case 151:
    case 155:
    case 255:
    case 256:
    case 263:
    case 272:
        return 1;
        break;
    }

    return 0;
}

BOOL ov16_0225588C (UnkStruct_0207ADB4 * param0, int param1, u8 * param2, u8 * param3, u8 * param4)
{
    BOOL v0;

    v0 = 1;

    if (param1 >= NELEMS(Unk_ov16_0226ECD4)) {
        param1 = ov16_0223F4BC(param0) % (NELEMS(Unk_ov16_0226ECD4));
        v0 = 0;
    }

    param2[0] = Unk_ov16_0226ECD4[param1][0];
    param3[0] = Unk_ov16_0226ECD4[param1][1];
    param4[0] = Unk_ov16_0226ECD4[param1][2];

    return v0;
}

int ov16_022558CC (u8 param0, u8 param1, u8 param2)
{
    int v0;
    int v1;

    v0 = 0;
    v1 = 40;

    while (Unk_ov16_0226ECD4[v0][0] != 0xff) {
        if (Unk_ov16_0226ECD4[v0][0] == param0) {
            if (Unk_ov16_0226ECD4[v0][1] == param1) {
                v1 = v1 * Unk_ov16_0226ECD4[v0][2] / 10;
            }

            if ((Unk_ov16_0226ECD4[v0][1] == param2) && (param1 != param2)) {
                v1 = v1 * Unk_ov16_0226ECD4[v0][2] / 10;
            }
        }

        v0++;
    }

    return v1;
}

BOOL ov16_02255918 (u16 param0)
{
    if ((param0 == 0) || (param0 == 214) || (param0 == 383) || (param0 == 274) || (param0 == 382) || (param0 == 119) || (param0 == 118)) {
        return 1;
    }

    return 0;
}

BOOL ov16_02255950 (UnkStruct_ov16_0224B9DC * param0, u16 param1, int param2)
{
    return (param1 == 174) && ((ov16_02252060(param0, param2, 27, NULL) == 7) || (ov16_02252060(param0, param2, 28, NULL) == 7));
}

BOOL ov16_02255980 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;

    v0 = 0;
    v1 = ov16_0223E208(param0, param2);

    if ((param1->unk_2D40[param2].unk_78) && ((param1->unk_1C4[v1].unk_00_23 & sub_020787CC(param1->unk_219C[param2])) == 0) && (Item_IsMail(param1->unk_2D40[param2].unk_78) == 0)) {
        v0 = 1;
    }

    return v0;
}

BOOL ov16_022559DC (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    return Item_IsMail(param0->unk_2D40[param1].unk_78) == 0;
}

BOOL ov16_022559FC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->unk_2D40[param1->unk_64].unk_34 >= param1->unk_2D40[param1->unk_6C].unk_34) {
        v0 = 1;
    } else {
        {
            int v1;

            v1 = (((ov16_0223F4BC(param0) & 0xff) * (param1->unk_2D40[param1->unk_64].unk_34 + param1->unk_2D40[param1->unk_6C].unk_34)) >> 8) + 1;

            if (v1 > (param1->unk_2D40[param1->unk_6C].unk_34 / 4)) {
                v0 = 1;
            }
        }
    }

    return v0;
}

u8 ov16_02255A4C (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    if ((param0->unk_2D40[param1].unk_80 & 0x200000) && (param0->unk_2D40[param1].unk_27 != 121)) {
        return 0;
    } else if ((param0->unk_180 & 0x7000) && (param0->unk_2D40[param1].unk_27 == 26)) {
        return 0;
    } else if ((param0->unk_2D40[param1].unk_80 & 0x400) && (param0->unk_2D40[param1].unk_27 == 26)) {
        return 0;
    } else {
        return param0->unk_2D40[param1].unk_27;
    }
}

BOOL ov16_02255AB4 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    BOOL v0;

    v0 = 0;

    if (ov16_02255A4C(param0, param1) != 104) {
        if (ov16_02255A4C(param0, param2) == param3) {
            v0 = 1;
        }
    } else {
        if ((ov16_02255A4C(param0, param2) == param3) && (param0->unk_2D4[param1].unk_00_3 == 0)) {
            param0->unk_2D4[param1].unk_00_3 = 1;
            param0->unk_213C |= 0x800000;
        }
    }

    return v0;
}

BOOL ov16_02255B10 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    Party * v1;
    Pokemon * v2;
    int v3;
    int v4 = 0, v5, v6, v7, v8, v9;
    int v10, v11;
    u32 v12;

    v0 = 0;
    v12 = ov16_0223DF0C(param0);
    v1 = ov16_0223DF20(param0, param2);
    v3 = ov16_0223DF60(param0, param2);

    if ((v12 & 0x8) || ((v12 & 0x10) && (ov16_0223E1F8(param0, param2) & 0x1))) {
        v7 = 0;
        v8 = v3;
        v9 = v3;
        v5 = 1;
        v10 = param1->unk_219C[param2];
        v11 = param1->unk_219C[param2];
    } else if (v12 & 0x2) {
        v7 = 0;
        v8 = v3;
        v9 = v3;
        v5 = 1;
        v10 = param1->unk_219C[param2];
        v11 = param1->unk_219C[ov16_0223E258(param0, param2)];
    } else {
        v7 = 0;
        v8 = v3;
        v9 = v3;
        v5 = 1;
        v10 = param1->unk_219C[param2];
        v11 = param1->unk_219C[param2];
    }

    for (v6 = v7; v6 < v8; v6++) {
        v2 = Party_GetPokemonBySlotIndex(v1, v6);

        if ((sub_02074470(v2, 5, NULL)) && (sub_02074470(v2, 76, NULL) == 0) && (sub_02074470(v2, 163, NULL)) && (v10 != v6) && (v11 != v6)) {
            v4++;
        }
    }

    if (v4 >= v5) {
        v0 = 1;
    }

    return v0;
}

BOOL ov16_02255C00 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, UnkStruct_ov16_0225C300 * param3)
{
    int v0;
    int v1;
    u8 v2;
    int v3;
    u32 v4;

    v4 = ov16_0223DF0C(param0);
    v3 = ov16_02258AB8(param1, param2);

    if ((v3 == 63) || (v4 & (0x4 | 0x20 | 0x200 | 0x80)) || (ov16_02255A4C(param1, param2) == 50)) {
        return 0;
    }

    v2 = ov16_0223E208(param0, param2);
    v1 = ov16_0223DF1C(param0);

    if ((v0 = ov16_022555A4(param0, param1, 9, param2, 23)) && (ov16_02255A4C(param1, param2) != 23)) {
        if (param3 == NULL) {
            return 1;
        }

        param3->unk_01 = 11;
        param3->unk_02 = 39;
        param3->unk_04[0] = ov16_02255560(param1, v0);
        param3->unk_04[1] = 23;
        return 1;
    }

    if ((v0 = ov16_022555A4(param0, param1, 3, param2, 71))) {
        if (((param1->unk_180 & 0x7000) == 0) && (v3 != 106)) {
            if ((ov16_02255A4C(param1, param2) != 26) && (param1->unk_2D40[param2].unk_88.unk_04_13 == 0) && ((ov16_02252060(param1, param2, 27, NULL) != 2) && (ov16_02252060(param1, param2, 28, NULL) != 2))) {
                if (param3 == NULL) {
                    return 1;
                }

                param3->unk_01 = 11;
                param3->unk_02 = 39;
                param3->unk_04[0] = ov16_02255560(param1, v0);
                param3->unk_04[1] = 71;
                return 1;
            }
        } else {
            if (param3 == NULL) {
                return 1;
            }

            param3->unk_01 = 11;
            param3->unk_02 = 39;
            param3->unk_04[0] = ov16_02255560(param1, v0);
            param3->unk_04[1] = 71;
            return 1;
        }
    }

    if ((v0 = ov16_022555A4(param0, param1, 3, param2, 42)) && ((ov16_02252060(param1, param2, 27, NULL) == 8) || (ov16_02252060(param1, param2, 28, NULL) == 8))) {
        if (param3 == NULL) {
            return 1;
        }

        param3->unk_01 = 11;
        param3->unk_02 = 39;
        param3->unk_04[0] = ov16_02255560(param1, v0);
        param3->unk_04[1] = 42;
        return 1;
    }

    if ((param1->unk_2D40[param2].unk_70 & (0xe000 | 0x4000000)) || (param1->unk_2D40[param2].unk_80 & 0x400)) {
        if (param3 == NULL) {
            return 1;
        }

        param3->unk_01 = 0;
        param3->unk_02 = 794;
        return 1;
    }

    return 0;
}

BOOL ov16_02255DE8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    u8 v1;
    int v2;
    u8 v3;
    u32 v4;

    v4 = ov16_0223DF0C(param0);
    v2 = ov16_02258AB8(param1, param2);
    v0 = 0;

    if (v2 == 63) {
        param1->unk_1D4[param2].unk_00_7 = 1;
        v0 = 1;
    } else if (v4 & (0x4 | 0x20 | 0x200 | 0x80)) {
        v0 = 1;
    } else if (ov16_02255A4C(param1, param2) == 50) {
        param1->unk_1D4[param2].unk_00_7 = 2;
        v0 = 1;
    } else {
        if (param1->unk_2D40[param2].unk_06 < param1->unk_2D40[param2 ^ 1].unk_06) {
            v1 = param1->unk_2D40[param2].unk_06 * 128 / param1->unk_2D40[param2 ^ 1].unk_06 + param1->unk_311E * 30;

            if (v1 > (ov16_0223F4BC(param0) % 256)) {
                v0 = 1;
            }
        } else {
            v0 = 1;
        }

        if (v0 == 0) {
            ov16_022666BC(param0, param2, 0, (((70 + 1)) + 27));
        }

        param1->unk_311E++;
    }

    return v0;
}

BOOL ov16_02255EC0 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    BOOL v0;

    v0 = 0;

    if (ov16_02255A4C(param0, param1) == 54) {
        if (param0->unk_2D40[param1].unk_88.unk_00_30 != (param0->unk_150 & 1)) {
            v0 = 1;
        }
    }

    return v0;
}

BOOL ov16_02255EF4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    BOOL v4;

    v4 = 0;
    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223E208(param0, param2);

    for (v0 = 0; v0 < v1; v0++) {
        if ((v2 != ov16_0223E208(param0, v0)) && (param1->unk_2D40[v0].unk_80 & 0x2000)) {
            for (v3 = 0; v3 < 4; v3++) {
                if (param3 == param1->unk_2D40[v0].unk_0C[v3]) {
                    break;
                }
            }

            if (v3 != 4) {
                v4 = 1;
            }
        }
    }

    return v4;
}

BOOL ov16_02255F68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;
    BOOL v2;

    v2 = 0;
    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->unk_2D40[v0].unk_80 & param2) {
            v2 = 1;
            break;
        }
    }

    return v2;
}

void ov16_02255F94 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    param1->unk_216C = 0;
    param1->unk_2150 = 1;
    param1->unk_213C &= (0x100000 ^ 0xffffffff);
}

void ov16_02255FBC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2, v3;
    int v4, v5;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        param1->unk_21EC[v0] = v0;
    }

    for (v2 = 0; v2 < v1 - 1; v2++) {
        for (v3 = v2 + 1; v3 < v1; v3++) {
            v4 = param1->unk_21EC[v2];
            v5 = param1->unk_21EC[v3];

            if (ov16_02252EC8(param0, param1, v4, v5, 1)) {
                param1->unk_21EC[v2] = v5;
                param1->unk_21EC[v3] = v4;
            }
        }
    }
}

static const u16 Unk_ov16_0226EBD4[] = {
    0x13,
    0x154,
    0x1A,
    0x88,
    0x96,
    0x189
};

BOOL ov16_02256044 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;
    BOOL v1;

    v1 = 0;

    if (param1->unk_180 & 0x7000) {
        for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EBD4); v0++) {
            if (Unk_ov16_0226EBD4[v0] == param3) {
                v1 = 1;
                break;
            }
        }
    }

    return v1;
}

static const u16 Unk_ov16_0226EBFA[] = {
    0x69,
    0x87,
    0x9C,
    0xD0,
    0xEA,
    0xEB,
    0xEC,
    0x100,
    0x1C8,
    0x12F,
    0x163,
    0x1CD,
    0x169,
    0x111
};

BOOL ov16_02256078 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;
    BOOL v1;

    v1 = 0;

    if (param1->unk_2D40[param2].unk_88.unk_04_16) {
        for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EBFA); v0++) {
            if (Unk_ov16_0226EBFA[v0] == param3) {
                v1 = 1;
                break;
            }
        }
    }

    return v1;
}

void ov16_022560B0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    if ((param1->unk_3040 == 387) || (param1->unk_2D40[param1->unk_64].unk_88.unk_04_10 == 4)) {
        return;
    }

    for (v0 = 0; v0 < param1->unk_2D40[param1->unk_64].unk_88.unk_04_10; v0++) {
        if (param1->unk_2D40[param1->unk_64].unk_88.unk_28[v0] == param1->unk_3040) {
            return;
        }
    }

    param1->unk_2D40[param1->unk_64].unk_88.unk_28[v0] = param1->unk_3040;
    param1->unk_2D40[param1->unk_64].unk_88.unk_04_10++;
}

int ov16_02256128 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->unk_2D40[param2].unk_0C[v0] == 0) {
            break;
        }
    }

    return v0;
}

static u16 Unk_ov16_02270B8C[] = {
    0x2D,
    0x2E,
    0x2F,
    0x30,
    0x67,
    0xAD,
    0xFD,
    0x13F,
    0x140,
    0x130,
    0x195,
    0x1C0
};

int ov16_02256148 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    int v0;
    int v1;

    v0 = 0;

    if (ov16_02255A4C(param0, param1) == 96) {
        v1 = 0;
    } else if (param0->unk_2160) {
        v1 = param0->unk_2160;
    } else {
        v1 = param0->unk_354.unk_8A[param0->unk_3044].unk_04;
    }

    if (ov16_02255AB4(param0, param1, param2, 10) == 1) {
        if ((v1 == 13) && (param1 != param2)) {
            param0->unk_215C = ov16_022563F8(param0->unk_2D40[param2].unk_50, 4);
            v0 = (0 + 178);
        }
    }

    if (ov16_02255AB4(param0, param1, param2, 11) == 1) {
        if ((v1 == 11) && ((param0->unk_213C & 0x20) == 0) && (param0->unk_354.unk_8A[param0->unk_3044].unk_03)) {
            param0->unk_215C = ov16_022563F8(param0->unk_2D40[param2].unk_50, 4);
            v0 = (0 + 178);
        }
    }

    if (ov16_02255AB4(param0, param1, param2, 18) == 1) {
        if ((v1 == 10) && ((param0->unk_2D40[param2].unk_6C & 0x20) == 0) && ((param0->unk_213C & 0x20) == 0) && ((param0->unk_354.unk_8A[param0->unk_3044].unk_03) || (param0->unk_3044 == 261))) {
            v0 = (0 + 179);
        }
    }

    if (ov16_02255AB4(param0, param1, param2, 43) == 1) {
        {
            int v2;

            for (v2 = 0; v2 < NELEMS(Unk_ov16_02270B8C); v2++) {
                if (Unk_ov16_02270B8C[v2] == param0->unk_3044) {
                    v0 = (0 + 181);
                    break;
                }
            }
        }
    }

    if (ov16_02255AB4(param0, param1, param2, 78) == 1) {
        if ((v1 == 13) && (param1 != param2)) {
            v0 = (0 + 182);
        }
    }

    if (ov16_02255AB4(param0, param1, param2, 87) == 1) {
        if ((v1 == 11) && ((param0->unk_213C & 0x20) == 0) && (param0->unk_354.unk_8A[param0->unk_3044].unk_03)) {
            param0->unk_215C = ov16_022563F8(param0->unk_2D40[param2].unk_50, 4);
            v0 = (0 + 178);
        }
    }

    return v0;
}

BOOL ov16_022562E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;

    v0 = 0;

    switch (ov16_02255A4C(param1, param2)) {
    case 3:
        if ((param1->unk_2D40[param2].unk_4C) && (param1->unk_2D40[param2].unk_18[0x3] < 12) && (param1->unk_2D40[param2].unk_88.unk_0C != param1->unk_150 + 1)) {
            param1->unk_8C = 0x11;
            param1->unk_88 = 3;
            param1->unk_94 = param2;
            v1 = (0 + 12);
            v0 = 1;
        }
        break;
    case 61:
        if ((param1->unk_2D40[param2].unk_6C & 0xff) && (param1->unk_2D40[param2].unk_4C) && (ov16_0223F4BC(param0) % 10 < 3)) {
            if (param1->unk_2D40[param2].unk_6C & 0x7) {
                param1->unk_130 = 0;
            } else if (param1->unk_2D40[param2].unk_6C & 0xf88) {
                param1->unk_130 = 1;
            } else if (param1->unk_2D40[param2].unk_6C & 0x10) {
                param1->unk_130 = 2;
            } else if (param1->unk_2D40[param2].unk_6C & 0x40) {
                param1->unk_130 = 3;
            } else {
                param1->unk_130 = 4;
            }

            param1->unk_118 = param2;

            v1 = (0 + 190);
            v0 = 1;
        }
        break;
    default:
        break;
    }

    if (v0 == 1) {
        ov16_02251E1C(param1, 1, v1);
        param1->unk_0C = param1->unk_08;
        param1->unk_08 = 21;
    }

    return v0;
}

int ov16_022563F8 (int param0, int param1)
{
    int v0;

    if (param0 == 0) {
        return param0;
    }

    if (param0 < 0) {
        v0 = -1;
    } else {
        v0 = 1;
    }

    param0 /= param1;

    if (param0 == 0) {
        param0 = v0;
    }

    return param0;
}

int ov16_02256414 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v5 = ov16_0223DF1C(param0);
    v2 = 0;
    v3 = 0;

    do {
        switch (param1->unk_58) {
        case 0:
            if (param1->unk_3121 == 0) {
                switch (ov16_0223F21C(param0)) {
                case 2:
                case 3:
                case 4:
                    v2 = (0 + 271);
                    v3 = 1;
                    break;
                case 5:
                case 6:
                case 7:
                    v2 = (0 + 272);
                    v3 = 1;
                    break;
                case 10:
                    v2 = (0 + 273);
                    v3 = 1;
                    break;
                case 14:
                case 15:
                    v2 = (0 + 274);
                    v3 = 1;
                    break;
                case 1001:
                    v2 = (0 + 294);
                    v3 = 1;
                    break;
                case 1002:
                    v2 = (0 + 295);
                    v3 = 1;
                    break;
                default:
                    break;
                }

                if (v3 == 1) {
                    param1->unk_3121 = 1;
                }
            }

            param1->unk_58++;
            break;
        case 1:
        {
            int v6, v7;

            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];
                v6 = ov16_0223E2A4(param0, v4, 0);
                v7 = ov16_0223E2A4(param0, v4, 2);

                param1->unk_120 = ov16_0225B840(param0, param1, v6, v7);

                if ((param1->unk_2D40[v4].unk_28_2 == 0) && (param1->unk_120 != 0xff) && (param1->unk_2D40[v4].unk_4C) && (param1->unk_2D40[v4].unk_78 != 112) && (param1->unk_2D40[param1->unk_120].unk_4C) && (ov16_02255A4C(param1, v4) == 36)) {
                    param1->unk_2D40[v4].unk_28_2 = 1;
                    param1->unk_118 = v4;
                    v2 = (0 + 187);
                    v3 = 1;
                    break;
                }
            }
        }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 2:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_0 == 0) && (param1->unk_2D40[v4].unk_4C)) {
                    switch (ov16_02255A4C(param1, v4)) {
                    case 2:
                        param1->unk_2D40[v4].unk_28_0 = 1;

                        if ((param1->unk_180 & 0x2) == 0) {
                            v2 = (0 + 183);
                            v3 = 1;
                        }
                        break;
                    case 45:
                        param1->unk_2D40[v4].unk_28_0 = 1;

                        if ((param1->unk_180 & 0x8) == 0) {
                            v2 = (0 + 184);
                            v3 = 1;
                        }
                        break;
                    case 70:
                        param1->unk_2D40[v4].unk_28_0 = 1;

                        if ((param1->unk_180 & 0x20) == 0) {
                            v2 = (0 + 185);
                            v3 = 1;
                        }
                        break;
                    case 117:
                        param1->unk_2D40[v4].unk_28_0 = 1;

                        if ((param1->unk_180 & 0x80) == 0) {
                            v2 = (0 + 252);
                            v3 = 1;
                        }
                        break;
                    }
                }

                if (v3 == 1) {
                    param1->unk_118 = v4;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 3:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_1 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 22)) {
                    param1->unk_2D40[v4].unk_28_1 = 1;
                    param1->unk_118 = v4;
                    v2 = (0 + 186);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 4:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_3 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 88)) {
                    {
                        int v8;
                        int v9, v10;

                        v9 = 0;
                        v10 = 0;

                        for (v8 = 0; v8 < v5; v8++) {
                            if ((ov16_0223E208(param0, v4) != ov16_0223E208(param0, v8)) && ((param1->unk_2D40[v8].unk_70 & 0x1000000) == 0) && (param1->unk_2D40[v8].unk_4C)) {
                                v9 += param1->unk_2D40[v8].unk_04 * Unk_ov16_0226EBE0[param1->unk_2D40[v8].unk_18[0x2]][0] / Unk_ov16_0226EBE0[param1->unk_2D40[v8].unk_18[0x2]][1];
                                v10 += param1->unk_2D40[v8].unk_0A * Unk_ov16_0226EBE0[param1->unk_2D40[v8].unk_18[0x5]][0] / Unk_ov16_0226EBE0[param1->unk_2D40[v8].unk_18[0x5]][1];
                            }
                        }

                        param1->unk_2D40[v4].unk_28_3 = 1;

                        if ((v9 + v10) != 0) {
                            if (v9 >= v10) {
                                param1->unk_8C = 0x12;
                            } else {
                                param1->unk_8C = 0xf;
                            }

                            param1->unk_88 = 3;
                            param1->unk_94 = v4;
                            v2 = (0 + 12);
                            v3 = 1;
                            break;
                        }
                    }
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 5:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_4 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 107)) {
                    param1->unk_2D40[v4].unk_28_4 = 1;
                    {
                        int v11, v12;
                        u16 v13;
                        u32 v14;

                        for (v11 = 0; v11 < v5; v11++) {
                            if ((ov16_0223E208(param0, v4) != ov16_0223E208(param0, v11)) && (param1->unk_2D40[v11].unk_4C)) {
                                for (v12 = 0; v12 < 4; v12++) {
                                    v13 = param1->unk_2D40[v11].unk_0C[v12];

                                    if (v13) {
                                        v14 = 0;
                                        param1->unk_2144 = ov16_02254FA8(param0, param1, v13, NULL, v11, v4, param1->unk_2144, &v14);

                                        if (((v14 & 0x8) == 0) && (ov16_0225B8E4(param1, v13) == 0) && ((v14 & 0x2) || ((param1->unk_354.unk_8A[v13].unk_00 == 38) && (param1->unk_2D40[v4].unk_34 <= param1->unk_2D40[v11].unk_34)))) {
                                            v3 = 1;
                                            break;
                                        }
                                    }
                                }

                                if (v3 == 1) {
                                    break;
                                }
                            }
                        }

                        if (v3 == 1) {
                            param1->unk_118 = v4;
                            v2 = (0 + 194);
                        }
                        break;
                    }
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 6:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_5 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 108)) {
                    param1->unk_2D40[v4].unk_28_5 = 1;
                    {
                        int v15, v16;
                        u16 v17;
                        u32 v18, v19;
                        int v20;

                        v19 = 0;
                        v20 = 0;

                        for (v15 = 0; v15 < v5; v15++) {
                            if ((ov16_0223E208(param0, v4) != ov16_0223E208(param0, v15)) && (param1->unk_2D40[v15].unk_4C)) {
                                v20 += param1->unk_2D40[v15].unk_4C;

                                for (v16 = 0; v16 < 4; v16++) {
                                    v17 = param1->unk_2D40[v15].unk_0C[v16];

                                    v18 = param1->unk_354.unk_8A[v17].unk_03;

                                    switch (v18) {
                                    case 1:
                                        switch (param1->unk_354.unk_8A[v17].unk_00) {
                                        case 38:
                                            if ((v19 < 150) || ((v19 == 150) && (ov16_0223F4BC(param0) & 1))) {
                                                v19 = 150;
                                                param1->unk_124 = v17;
                                            }
                                            break;
                                        case 89:
                                        case 144:
                                        case 227:
                                            if ((v19 < 120) || ((v19 == 120) && (ov16_0223F4BC(param0) & 1))) {
                                                v19 = 120;
                                                param1->unk_124 = v17;
                                            }
                                            break;
                                        default:
                                            if ((v19 < 80) || ((v19 == 80) && (ov16_0223F4BC(param0) & 1))) {
                                                v19 = 80;
                                                param1->unk_124 = v17;
                                            }
                                            break;
                                        }
                                        break;
                                    default:
                                        if ((v19 < v18) || ((v19 == v18) && (ov16_0223F4BC(param0) & 1))) {
                                            v19 = v18;
                                            param1->unk_124 = v17;
                                        }
                                        break;
                                    }
                                }
                            }
                        }

                        if (v19) {
                            param1->unk_118 = v4;

                            v2 = (0 + 195);
                            v3 = 1;
                        } else if (v20) {
                            v15 = ov16_02257028(param0, param1, v4);
                            v16 = ov16_02256128(param0, param1, v15);

                            param1->unk_124 = param1->unk_2D40[v15].unk_0C[ov16_0223F4BC(param0) % v16];
                            param1->unk_118 = v4;

                            v2 = (0 + 195);
                            v3 = 1;
                        }
                        break;
                    }
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 7:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_8 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 119)) {
                    param1->unk_2D40[v4].unk_28_8 = 1;

                    if (ov16_0223DF0C(param0) & 0x2) {
                        {
                            int v21[2];

                            v21[0] = ov16_0223E2A4(param0, v4, 0);
                            v21[1] = ov16_0223E2A4(param0, v4, 2);

                            if ((param1->unk_2D40[v21[0]].unk_4C) && (param1->unk_2D40[v21[0]].unk_78) && (param1->unk_2D40[v21[1]].unk_4C) && (param1->unk_2D40[v21[1]].unk_78)) {
                                param1->unk_128 = param1->unk_2D40[v21[ov16_0223F4BC(param0) & 1]].unk_78;
                                v3 = 1;
                            } else if ((param1->unk_2D40[v21[0]].unk_4C) && (param1->unk_2D40[v21[0]].unk_78)) {
                                param1->unk_128 = param1->unk_2D40[v21[0]].unk_78;
                                v3 = 1;
                            } else if ((param1->unk_2D40[v21[1]].unk_4C) && (param1->unk_2D40[v21[1]].unk_78)) {
                                param1->unk_128 = param1->unk_2D40[v21[1]].unk_78;
                                v3 = 1;
                            }
                        }
                    } else {
                        if ((param1->unk_2D40[v4 ^ 1].unk_4C) && (param1->unk_2D40[v4 ^ 1].unk_78)) {
                            param1->unk_128 = param1->unk_2D40[v4 ^ 1].unk_78;
                            v3 = 1;
                        }
                    }
                }

                if (v3 == 1) {
                    param1->unk_118 = v4;
                    v2 = (0 + 253);
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 8:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_6 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 112) && (param1->unk_150 <= param1->unk_2D40[v4].unk_88.unk_10)) {
                    param1->unk_2D40[v4].unk_28_6 = 1;
                    param1->unk_118 = v4;
                    v2 = (0 + 196);
                    v3 = 1;
                    break;
                }

                if ((param1->unk_2D40[v4].unk_28_7 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 112) && ((param1->unk_150 - param1->unk_2D40[v4].unk_88.unk_10) == 5)) {
                    param1->unk_2D40[v4].unk_28_7 = 1;
                    param1->unk_118 = v4;
                    v2 = (0 + 197);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 9:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_9 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 104)) {
                    param1->unk_2D40[v4].unk_28_9 = 1;
                    param1->unk_118 = v4;
                    v2 = (0 + 177);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 10:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if ((param1->unk_2D40[v4].unk_28_10 == 0) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) == 46)) {
                    param1->unk_2D40[v4].unk_28_10 = 1;
                    param1->unk_118 = v4;
                    v2 = (0 + 285);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 11:
            if (ov16_02259B9C(param0, param1, &v2) == 1) {
                v3 = 1;
            } else {
                param1->unk_58++;
            }
            break;
        case 12:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if (ov16_0225B0FC(param1, param1->unk_2D40[v4].unk_78, 1) == 58) {
                    param1->unk_2168 = 2;
                }
            }

            param1->unk_58++;
            break;
        case 13:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if (ov16_02257628(param0, param1, v4, 1) == 1) {
                    v2 = (0 + 221);
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 14:
            for (v0 = 0; v0 < v5; v0++) {
                v4 = param1->unk_21EC[v0];

                if (ov16_02258104(param0, param1, v4, &v2) == 1) {
                    param1->unk_118 = v4;
                    v3 = 1;
                    break;
                }
            }

            if (v0 == v5) {
                param1->unk_58++;
            }
            break;
        case 15:
            param1->unk_58 = 0;
            v3 = 2;
            break;
        }
    } while (v3 == 0);

    return v2;
}

int ov16_02257028 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    u32 v0;
    int v1;
    int v2[2];
    int v3;

    v0 = ov16_0223DF0C(param0);

    if (v0 & 0x2) {
        v2[0] = ov16_0223E2A4(param0, param2, 0);
        v2[1] = ov16_0223E2A4(param0, param2, 2);
        v3 = ov16_0223F4BC(param0) & 1;
        v1 = v2[v3];

        if (param1->unk_2D40[v1].unk_4C == 0) {
            v1 = v2[v3 ^ 1];
        }
    } else {
        v1 = param2 ^ 1;
    }

    return v1;
}

BOOL ov16_0225708C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    BOOL v0;

    v0 = 0;

    if (param1->unk_6C == 0xff) {
        return v0;
    }

    if (ov16_02259AC0(param1, param1->unk_6C) == 1) {
        return v0;
    }

    switch (ov16_02255A4C(param1, param1->unk_6C)) {
    case 9:

        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_2D40[param1->unk_64].unk_6C == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_213C & 0x20) == 0) && ((param1->unk_2140 & 0x10) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1) && (ov16_0223F4BC(param0) % 10 < 3)) {
            param1->unk_88 = 3;
            param1->unk_94 = param1->unk_64;
            param1->unk_118 = param1->unk_6C;
            param2[0] = (0 + 31);
            v0 = 1;
        }
        break;
    case 16:
    {
        u8 v1;

        if (ov16_02255A4C(param1, param1->unk_64) == 96) {
            v1 = 0;
        } else if (param1->unk_2160) {
            v1 = param1->unk_2160;
        } else {
            v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_04;
        }

        if ((param1->unk_2D40[param1->unk_6C].unk_4C) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->unk_3044 != 165) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && ((param1->unk_2140 & 0x10) == 0) && (param1->unk_354.unk_8A[param1->unk_3044].unk_03) && (ov16_02252060(param1, param1->unk_6C, 27, NULL) != v1) && (ov16_02252060(param1, param1->unk_6C, 28, NULL) != v1)) {
            param2[0] = (0 + 188);
            param1->unk_130 = v1;
            v0 = 1;
        }
    }
    break;
    case 24:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (ov16_02255A4C(param1, param1->unk_64) != 98) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_213C & 0x20) == 0) && ((param1->unk_2140 & 0x10) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1)) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, 8);
            param1->unk_118 = param1->unk_64;
            param2[0] = (0 + 189);
            v0 = 1;
        }
        break;
    case 27:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_2D40[param1->unk_64].unk_6C == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_213C & 0x20) == 0) && ((param1->unk_2140 & 0x10) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1) && (ov16_0223F4BC(param0) % 10 < 3)) {
            switch (ov16_0223F4BC(param0) % 3) {
            case 0:
            default:
                param2[0] = (0 + 22);
                break;
            case 1:
                param2[0] = (0 + 31);
                break;
            case 2:
                param2[0] = (0 + 18);
                break;
            }

            param1->unk_88 = 3;
            param1->unk_94 = param1->unk_64;
            param1->unk_118 = param1->unk_6C;

            v0 = 1;
        }
        break;
    case 38:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_2D40[param1->unk_64].unk_6C == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_213C & 0x20) == 0) && ((param1->unk_2140 & 0x10) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1) && (ov16_0223F4BC(param0) % 10 < 3)) {
            param1->unk_88 = 3;
            param1->unk_94 = param1->unk_64;
            param1->unk_118 = param1->unk_6C;
            param2[0] = (0 + 22);
            v0 = 1;
        }
        break;
    case 49:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_2D40[param1->unk_64].unk_6C == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_213C & 0x20) == 0) && ((param1->unk_2140 & 0x10) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1) && (ov16_0223F4BC(param0) % 10 < 3)) {
            param1->unk_88 = 3;
            param1->unk_94 = param1->unk_64;
            param1->unk_118 = param1->unk_6C;
            param2[0] = (0 + 25);
            v0 = 1;
        }
        break;
    case 56:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0xf0000) == 0) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_213C & 0x20) == 0) && ((param1->unk_2140 & 0x10) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1) && (param1->unk_2D40[param1->unk_6C].unk_4C) && (ov16_0223F4BC(param0) % 10 < 3)) {
            param1->unk_88 = 3;
            param1->unk_94 = param1->unk_64;
            param1->unk_118 = param1->unk_6C;
            param2[0] = (0 + 106);
            v0 = 1;
        }
        break;
    case 106:
        if ((param1->unk_6C == param1->unk_74) && (ov16_02255A4C(param1, param1->unk_64) != 98) && (ov16_022555A4(param0, param1, 8, 0, 6) == 0) && ((param1->unk_2140 & 0x10) == 0) && (param1->unk_2D40[param1->unk_64].unk_4C) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1)) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, 4);
            param1->unk_118 = param1->unk_64;
            param2[0] = (0 + 193);
            v0 = 1;
        }
        break;
    default:
        break;
    }

    return v0;
}

BOOL ov16_02257628 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    BOOL v0;

    v0 = 0;

    switch (ov16_02255A4C(param1, param2)) {
    case 17:
        if (param1->unk_2D40[param2].unk_6C & 0xf88) {
            param1->unk_130 = 1;
            v0 = 1;
        }
        break;
    case 20:
        if (param1->unk_2D40[param2].unk_70 & 0x7) {
            param1->unk_130 = 5;
            v0 = 1;
        }
        break;
    case 7:
        if (param1->unk_2D40[param2].unk_6C & 0x40) {
            param1->unk_130 = 3;
            v0 = 1;
        }
        break;
    case 15:
    case 72:
        if (param1->unk_2D40[param2].unk_6C & 0x7) {
            param1->unk_130 = 0;
            v0 = 1;
        }
        break;
    case 41:
        if (param1->unk_2D40[param2].unk_6C & 0x10) {
            param1->unk_130 = 2;
            v0 = 1;
        }
        break;
    case 40:
        if (param1->unk_2D40[param2].unk_6C & 0x20) {
            param1->unk_130 = 4;
            v0 = 1;
        }
        break;
    case 12:
        if (param1->unk_2D40[param2].unk_70 & 0xf0000) {
            param1->unk_130 = 6;
            v0 = 1;
        }
        break;
    case 84:
        if (param1->unk_2D40[param2].unk_78) {
            param1->unk_2D40[param2].unk_88.unk_04_22 = 1;
        }
        break;
    }

    if (v0 == 1) {
        param1->unk_118 = param2;
        param1->unk_12C = ov16_02255A4C(param1, param2);

        if (param3 == 0) {
            ov16_02251E1C(param1, 1, (0 + 221));
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
        }
    }

    return v0;
}

BOOL ov16_022577A4 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    BOOL v0;

    v0 = 0;

    switch (param1) {
    case 17:
        if (param2 & 0xf88) {
            v0 = 1;
        }
        break;
    case 7:
        if (param2 & 0x40) {
            v0 = 1;
        }
        break;
    case 15:
    case 72:
        if (param2 & 0x7) {
            v0 = 1;
        }
        break;
    case 41:
        if (param2 & 0x10) {
            v0 = 1;
        }
        break;
    case 40:
        if (param2 & 0x20) {
            v0 = 1;
        }
        break;
    }

    return v0;
}

BOOL ov16_02257808 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;

    v0 = 0;
    v1 = 0;

    if ((param1->unk_6C != 0xff) && (ov16_02255A4C(param1, param1->unk_6C) == 28) && (param1->unk_6C == param1->unk_94) && (param1->unk_213C & 0x80)) {
        param1->unk_118 = param1->unk_6C;
        param1->unk_94 = param1->unk_64;
        v0 = 1;
    } else if ((ov16_02255A4C(param1, param1->unk_64) == 28) && (param1->unk_64 == param1->unk_94) && (param1->unk_213C & 0x80)) {
        param1->unk_118 = param1->unk_64;
        param1->unk_94 = param1->unk_6C;
        v0 = 1;
    }

    if (v0 == 1) {
        if (param1->unk_2D40[param1->unk_118].unk_6C & 0xf88) {
            v1 = (0 + 22);
        } else if (param1->unk_2D40[param1->unk_118].unk_6C & 0x10) {
            v1 = (0 + 25);
        } else if (param1->unk_2D40[param1->unk_118].unk_6C & 0x40) {
            v1 = (0 + 31);
        }

        if (v1) {
            param1->unk_88 = 3;
            ov16_02251E1C(param1, 1, v1);
            param1->unk_0C = param2;
            param1->unk_08 = 21;
            return v0;
        }
    }

    v0 = ov16_02259B9C(param0, param1, &v1);

    if (v0 == 1) {
        ov16_02251E1C(param1, 1, v1);
        param1->unk_0C = param2;
        param1->unk_08 = 21;
        return v0;
    }

    if ((param1->unk_6C != 0xff) && (ov16_02258AB8(param1, param1->unk_6C) == 108) && (param1->unk_6C == param1->unk_94) && (param1->unk_2D4[param1->unk_6C].unk_14 & 0x4)) {
        param1->unk_118 = param1->unk_6C;
        param1->unk_94 = param1->unk_64;
        v0 = 1;
    } else if ((ov16_02258AB8(param1, param1->unk_64) == 108) && (param1->unk_64 == param1->unk_94) && (param1->unk_2D4[param1->unk_64].unk_14 & 0x4)) {
        param1->unk_118 = param1->unk_64;
        param1->unk_94 = param1->unk_6C;
        v0 = 1;
    }

    if (v0 == 1) {
        v1 = (0 + 106);
        param1->unk_88 = 5;
        ov16_02251E1C(param1, 1, v1);
        param1->unk_0C = param2;
        param1->unk_08 = 21;
        return v0;
    }

    return 0;
}

BOOL ov16_022579A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;

    v0 = 0;
    v2 = ov16_02258AB8(param1, param2);
    v3 = ov16_02258ACC(param1, param2, 0);

    if (param1->unk_2D40[param2].unk_4C) {
        switch (v2) {
        case 1:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = v3;
                v1 = (0 + 198);
                v0 = 1;
            }
            break;
        case 13:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50 * v3, 100);
                v1 = (0 + 198);
                v0 = 1;
            }
            break;
        case 5:
            if (param1->unk_2D40[param2].unk_6C & 0x40) {
                v1 = (0 + 199);
                v0 = 1;
            }
            break;
        case 6:
            if (param1->unk_2D40[param2].unk_6C & 0x7) {
                v1 = (0 + 200);
                v0 = 1;
            }
            break;
        case 7:
            if (param1->unk_2D40[param2].unk_6C & 0xf88) {
                v1 = (0 + 201);
                v0 = 1;
            }
            break;
        case 8:
            if (param1->unk_2D40[param2].unk_6C & 0x10) {
                v1 = (0 + 202);
                v0 = 1;
            }
            break;
        case 9:
            if (param1->unk_2D40[param2].unk_6C & 0x20) {
                v1 = (0 + 203);
                v0 = 1;
            }
            break;
        case 10:
        {
            int v4;

            for (v4 = 0; v4 < 4; v4++) {
                if ((param1->unk_2D40[param2].unk_0C[v4]) && (param1->unk_2D40[param2].unk_2C[v4] == 0)) {
                    break;
                }
            }

            if (v4 != 4) {
                ov16_02252A2C(&param1->unk_2D40[param2], 31 + v4, v3);
                ov16_02253EC0(param0, param1, param2);
                param1->unk_124 = param1->unk_2D40[param2].unk_0C[v4];
                v1 = (0 + 204);
                v0 = 1;
            }
        }
        break;
        case 11:
            if (param1->unk_2D40[param2].unk_70 & 0x7) {
                v1 = (0 + 205);
                v0 = 1;
            }
            break;
        case 12:
            if ((param1->unk_2D40[param2].unk_6C & 0xff) || (param1->unk_2D40[param2].unk_70 & 0x7)) {
                if (param1->unk_2D40[param2].unk_6C & 0x40) {
                    v1 = (0 + 199);
                }

                if (param1->unk_2D40[param2].unk_6C & 0x7) {
                    v1 = (0 + 200);
                }

                if (param1->unk_2D40[param2].unk_6C & 0xf88) {
                    v1 = (0 + 201);
                }

                if (param1->unk_2D40[param2].unk_6C & 0x10) {
                    v1 = (0 + 202);
                }

                if (param1->unk_2D40[param2].unk_6C & 0x20) {
                    v1 = (0 + 203);
                }

                if (param1->unk_2D40[param2].unk_70 & 0x7) {
                    v1 = (0 + 205);
                }

                if ((param1->unk_2D40[param2].unk_6C & 0xff) && (param1->unk_2D40[param2].unk_70 & 0x7)) {
                    v1 = (0 + 206);
                }

                v0 = 1;
            }
            break;
        case 14:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 0;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 0) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 15:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 1;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 1) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 16:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 2;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 2) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 17:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 3;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 3) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 18:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 4;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 4) == -1) {
                    v1 = (0 + 207);
                } else {
                    v1 = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 36:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x1] < 12)) {
                param1->unk_130 = 0x1;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 37:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x2] < 12)) {
                param1->unk_130 = 0x2;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 38:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x3] < 12)) {
                param1->unk_130 = 0x3;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 39:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x4] < 12)) {
                param1->unk_130 = 0x4;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 40:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x5] < 12)) {
                param1->unk_130 = 0x5;
                v1 = (0 + 208);
                v0 = 1;
            }
            break;
        case 41:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && ((param1->unk_2D40[param2].unk_70 & 0x100000) == 0)) {
                v1 = (0 + 209);
                v0 = 1;
            }
            break;
        case 42:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) {
                {
                    int v5;

                    for (v5 = 0; v5 < 5; v5++) {
                        if (param1->unk_2D40[param2].unk_18[0x1 + v5] < 12) {
                            break;
                        }
                    }

                    if (v5 != 5) {
                        do {
                            v5 = ov16_0223F4BC(param0) % 5;
                        } while (param1->unk_2D40[param2].unk_18[0x1 + v5] == 12);

                        param1->unk_130 = 0x1 + v5;

                        v1 = (0 + 210);
                        v0 = 1;
                    }
                }
            }
            break;
        case 49:
        {
            int v6;

            for (v6 = 0; v6 < 0x8; v6++) {
                if (param1->unk_2D40[param2].unk_18[v6] < 6) {
                    param1->unk_2D40[param2].unk_18[v6] = 6;
                    v0 = 1;
                }
            }

            if (v0 == 1) {
                v1 = (0 + 211);
            }
        }
        break;
        case 54:
            if (param1->unk_2D40[param2].unk_70 & 0xf0000) {
                param1->unk_130 = 6;
                v1 = (0 + 212);
                v0 = 1;
            }
            break;
        case 44:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) {
                v1 = (0 + 265);
                v0 = 1;
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->unk_118 = param2;
            param1->unk_128 = ov16_02258874(param1, param2);
            ov16_02251E1C(param1, 1, v1);
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
        }
    }

    return v0;
}

BOOL ov16_02258008 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;

    v0 = 0;
    v2 = ov16_02258AB8(param1, param2);
    v3 = ov16_02258ACC(param1, param2, 0);

    if (param1->unk_2D40[param2].unk_4C) {
        switch (v2) {
        case 69:
            if (param1->unk_2D40[param2].unk_4C < (param1->unk_2D40[param2].unk_50)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, 16);
                v1 = (0 + 213);
                v0 = 1;
            }
            break;
        case 109:
            if ((ov16_02252060(param1, param2, 27, NULL) == 3) || (ov16_02252060(param1, param2, 28, NULL) == 3)) {
                if (param1->unk_2D40[param2].unk_4C < (param1->unk_2D40[param2].unk_50)) {
                    param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, 16);
                    v1 = (0 + 213);
                    v0 = 1;
                }
            } else if (ov16_02255A4C(param1, param2) != 98) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50 * -1, 8);
                v1 = (0 + 215);
                v0 = 1;
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->unk_118 = param2;
            param1->unk_128 = ov16_02258874(param1, param2);
            ov16_02251E1C(param1, 1, v1);
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
        }
    }

    return v0;
}

BOOL ov16_02258104 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int * param3)
{
    BOOL v0;
    u16 v1;
    int v2;
    int v3;

    v0 = 0;
    v2 = ov16_02258AB8(param1, param2);
    v3 = ov16_02258ACC(param1, param2, 0);

    if (param1->unk_2D40[param2].unk_4C) {
        switch (v2) {
        case 1:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = v3;
                param3[0] = (0 + 198);
                v0 = 1;
            }
            break;
        case 13:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50 * v3, 100);
                param3[0] = (0 + 198);
                v0 = 1;
            }
            break;
        case 5:
            if (param1->unk_2D40[param2].unk_6C & 0x40) {
                param3[0] = (0 + 199);
                v0 = 1;
            }
            break;
        case 6:
            if (param1->unk_2D40[param2].unk_6C & 0x7) {
                param3[0] = (0 + 200);
                v0 = 1;
            }
            break;
        case 7:
            if (param1->unk_2D40[param2].unk_6C & 0xf88) {
                param3[0] = (0 + 201);
                v0 = 1;
            }
            break;
        case 8:
            if (param1->unk_2D40[param2].unk_6C & 0x10) {
                param3[0] = (0 + 202);
                v0 = 1;
            }
            break;
        case 9:
            if (param1->unk_2D40[param2].unk_6C & 0x20) {
                param3[0] = (0 + 203);
                v0 = 1;
            }
            break;
        case 10:
        {
            int v4;

            for (v4 = 0; v4 < 4; v4++) {
                if ((param1->unk_2D40[param2].unk_0C[v4]) && (param1->unk_2D40[param2].unk_2C[v4] == 0)) {
                    break;
                }
            }

            if (v4 != 4) {
                ov16_02252A2C(&param1->unk_2D40[param2], 31 + v4, v3);
                ov16_02253EC0(param0, param1, param2);
                param1->unk_124 = param1->unk_2D40[param2].unk_0C[v4];
                param3[0] = (0 + 204);
                v0 = 1;
            }
        }
        break;
        case 11:
            if (param1->unk_2D40[param2].unk_70 & 0x7) {
                param3[0] = (0 + 205);
                v0 = 1;
            }
            break;
        case 12:
            if ((param1->unk_2D40[param2].unk_6C & 0xff) || (param1->unk_2D40[param2].unk_70 & 0x7)) {
                if (param1->unk_2D40[param2].unk_6C & 0x40) {
                    param3[0] = (0 + 199);
                }

                if (param1->unk_2D40[param2].unk_6C & 0x7) {
                    param3[0] = (0 + 200);
                }

                if (param1->unk_2D40[param2].unk_6C & 0xf88) {
                    param3[0] = (0 + 201);
                }

                if (param1->unk_2D40[param2].unk_6C & 0x10) {
                    param3[0] = (0 + 202);
                }

                if (param1->unk_2D40[param2].unk_6C & 0x20) {
                    param3[0] = (0 + 203);
                }

                if (param1->unk_2D40[param2].unk_70 & 0x7) {
                    param3[0] = (0 + 205);
                }

                if ((param1->unk_2D40[param2].unk_6C & 0xff) && (param1->unk_2D40[param2].unk_70 & 0x7)) {
                    param3[0] = (0 + 206);
                }

                v0 = 1;
            }
            break;
        case 49:
        {
            int v5;

            for (v5 = 0; v5 < 0x8; v5++) {
                if (param1->unk_2D40[param2].unk_18[v5] < 6) {
                    param1->unk_2D40[param2].unk_18[v5] = 6;
                    v0 = 1;
                }
            }

            if (v0 == 1) {
                param3[0] = (0 + 211);
            }
        }
        break;
        case 54:
            if (param1->unk_2D40[param2].unk_70 & 0xf0000) {
                param1->unk_130 = 6;
                param3[0] = (0 + 212);
                v0 = 1;
            }
            break;
        case 44:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) {
                param3[0] = (0 + 265);
                v0 = 1;
            }
            break;
        case 14:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 0;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 0) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 15:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 1;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 1) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 16:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 2;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 2) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 17:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 3;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 3) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 18:
            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / 2)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50, v3);
                param1->unk_130 = 4;

                if (sub_02077648(param1->unk_2D40[param2].unk_68, 4) == -1) {
                    param3[0] = (0 + 207);
                } else {
                    param3[0] = (0 + 198);
                }

                v0 = 1;
            }
            break;
        case 36:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x1] < 12)) {
                param1->unk_130 = 0x1;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 37:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x2] < 12)) {
                param1->unk_130 = 0x2;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 38:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x3] < 12)) {
                param1->unk_130 = 0x3;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 39:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x4] < 12)) {
                param1->unk_130 = 0x4;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 40:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && (param1->unk_2D40[param2].unk_18[0x5] < 12)) {
                param1->unk_130 = 0x5;
                param3[0] = (0 + 208);
                v0 = 1;
            }
            break;
        case 41:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if ((param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) && ((param1->unk_2D40[param2].unk_70 & 0x100000) == 0)) {
                param3[0] = (0 + 209);
                v0 = 1;
            }
            break;
        case 42:
            if (ov16_02255A4C(param1, param2) == 82) {
                v3 /= 2;
            }

            if (param1->unk_2D40[param2].unk_4C <= (param1->unk_2D40[param2].unk_50 / v3)) {
                {
                    int v6;

                    for (v6 = 0; v6 < 5; v6++) {
                        if (param1->unk_2D40[param2].unk_18[0x1 + v6] < 12) {
                            break;
                        }
                    }

                    if (v6 != 5) {
                        do {
                            v6 = ov16_0223F4BC(param0) % 5;
                        } while (param1->unk_2D40[param2].unk_18[0x1 + v6] == 12);

                        param1->unk_130 = 0x1 + v6;
                        param3[0] = (0 + 210);
                        v0 = 1;
                    }
                }
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->unk_128 = ov16_02258874(param1, param2);
        }
    }

    return v0;
}

BOOL ov16_022587A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;
    u16 v2;
    int v3;
    int v4;

    v0 = 0;
    v3 = ov16_02258AB8(param1, param2);
    v4 = ov16_02258ACC(param1, param2, 0);

    if (param1->unk_2D40[param2].unk_4C) {
        switch (v3) {
        case 100:
            param1->unk_94 = param2;
            param1->unk_88 = 5;
            v1 = (0 + 47);
            v0 = 1;
            break;
        case 101:
            param1->unk_94 = param2;
            param1->unk_88 = 5;
            v1 = (0 + 25);
            v0 = 1;
            break;
        case 116:
            if (ov16_02255A4C(param1, param2) != 98) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param2].unk_50 * -1, v4);
                v1 = (0 + 215);
                v0 = 1;
            }
            break;
        default:
            break;
        }

        if (v0 == 1) {
            param1->unk_118 = param2;
            param1->unk_128 = ov16_02258874(param1, param2);
            ov16_02251E1C(param1, 1, v1);
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
        }
    }

    return v0;
}

u16 ov16_02258874 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    if ((ov16_02255A4C(param0, param1) == 103)) {
        return 0;
    }

    if (param0->unk_2D40[param1].unk_88.unk_04_19) {
        return 0;
    }

    return param0->unk_2D40[param1].unk_78;
}

BOOL ov16_022588A4 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    return param0->unk_21A8[param1][0] == 39;
}

BOOL ov16_022588BC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    BOOL v0;
    u16 v1;
    int v2;
    int v3;
    int v4;

    v0 = 0;

    if (param1->unk_6C == 0xff) {
        return v0;
    }

    if (ov16_02259AC0(param1, param1->unk_6C) == 1) {
        return v0;
    }

    v2 = ov16_02258AB8(param1, param1->unk_6C);
    v3 = ov16_02258ACC(param1, param1->unk_6C, 0);
    v4 = ov16_0223E208(param0, param1->unk_64);

    switch (v2) {
    case 116:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_2D40[param1->unk_64].unk_78 == 0) && ((param1->unk_1C4[v4].unk_00_23 & sub_020787CC(param1->unk_219C[param1->unk_64])) == 0) && (param1->unk_3044 != 282) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && ((param1->unk_2140 & 0x10) == 0) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1)) {
            param2[0] = (0 + 216);
            v0 = 1;
        }
        break;
    case 46:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (ov16_02255A4C(param1, param1->unk_64) != 98) && ((param1->unk_2140 & 0x10) == 0) && (param1->unk_2D4[param1->unk_6C].unk_04)) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, v3);
            param2[0] = (0 + 266);
            v0 = 1;
        }
        break;
    case 47:
        if ((param1->unk_2D40[param1->unk_64].unk_4C) && (ov16_02255A4C(param1, param1->unk_64) != 98) && (param1->unk_2D4[param1->unk_6C].unk_0C)) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, v3);
            param2[0] = (0 + 266);
            v0 = 1;
        }
        break;
    case 43:
        if ((param1->unk_2D40[param1->unk_6C].unk_4C) && (param1->unk_216C & 0x2)) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, v3);
            param2[0] = (0 + 198);
            param1->unk_118 = param1->unk_6C;
            param1->unk_128 = param1->unk_2D40[param1->unk_6C].unk_78;
            v0 = 1;
        }
        break;
    default:
        break;
    }

    return v0;
}

s32 ov16_02258AB8 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    u16 v0;

    v0 = ov16_02258874(param0, param1);
    return ov16_0225B0FC(param0, v0, 1);
}

s32 ov16_02258ACC (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    u16 v0;

    switch (param2) {
    case 0:
        v0 = ov16_02258874(param0, param1);
        break;
    case 2:
        if (param0->unk_2D40[param1].unk_88.unk_04_19) {
            return 0;
        }
    case 1:
        v0 = param0->unk_2D40[param1].unk_78;
        break;
    }

    return ov16_0225B0FC(param0, v0, 2);
}

s32 ov16_02258B18 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    u16 v0;

    v0 = ov16_02258874(param0, param1);
    return ov16_0225B0FC(param0, v0, 11);
}

s32 ov16_02258B2C (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    u16 v0;

    v0 = ov16_02258874(param0, param1);
    return ov16_0225B0FC(param0, v0, 12);
}

s32 ov16_02258B40 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    u16 v0;
    int v1;

    v0 = param0->unk_2D40[param1].unk_78;
    v1 = ov16_0225B0FC(param0, v0, 8);

    return v1;
}

s32 ov16_02258B58 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    if (param0->unk_2D40[param1].unk_88.unk_04_19) {
        return 0;
    }

    return ov16_0225B0FC(param0, param0->unk_2D40[param1].unk_78, 9);
}

s32 ov16_02258B80 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    if (param0->unk_2D40[param1].unk_88.unk_04_19) {
        return 0;
    }

    return ov16_0225B0FC(param0, param0->unk_2D40[param1].unk_78, 10);
}

int ov16_02258BA8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;

    v0 = 0;

    if (ov16_02258AB8(param1, param2) == 123) {
        return 0;
    }

    if ((param1->unk_2D40[param2].unk_70 & (0xe000 | 0x4000000)) || (param1->unk_2D40[param2].unk_80 & 0x400)) {
        v0 = 1;
    }

    if (((ov16_02255A4C(param1, param2) != 23) && (ov16_022555A4(param0, param1, 3, param2, 23))) || (((ov16_02252060(param1, param2, 27, NULL) == 8) || (ov16_02252060(param1, param2, 28, NULL) == 8)) && (ov16_022555A4(param0, param1, 3, param2, 42)))) {
        v0 = 1;
    }

    if ((((ov16_02255A4C(param1, param2) != 26) && (param1->unk_2D40[param2].unk_88.unk_04_13 == 0) && (ov16_02252060(param1, param2, 27, NULL) != 2) && (ov16_02252060(param1, param2, 28, NULL) != 2)) || (ov16_02258AB8(param1, param2) == 106) || (param1->unk_180 & 0x7000)) && (ov16_022555A4(param0, param1, 3, param2, 71))) {
        v0 = 1;
    }

    return v0;
}

BOOL ov16_02258CB4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;

    v0 = 0;
    v1 = 0;
    v2 = ov16_02258B40(param1, param2);
    v3 = ov16_02258ACC(param1, param2, 1);

    if (ov16_02259AC0(param1, param1->unk_6C) == 1) {
        return v0;
    }

    switch (v2) {
    case 7:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = v3;
            v1 = (0 + 198);
        }

        v0 = 1;
        break;
    case 10:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * v3, 100);
            v1 = (0 + 198);
        }

        v0 = 1;
        break;
    case 1:
        if (param1->unk_2D40[param1->unk_64].unk_6C & 0x40) {
            v1 = (0 + 199);
        }

        v0 = 1;
        break;
    case 2:
        if (param1->unk_2D40[param1->unk_64].unk_6C & 0x7) {
            v1 = (0 + 200);
        }

        v0 = 1;
        break;
    case 3:
        if (param1->unk_2D40[param1->unk_64].unk_6C & 0xf88) {
            v1 = (0 + 201);
        }

        v0 = 1;
        break;
    case 4:
        if (param1->unk_2D40[param1->unk_64].unk_6C & 0x10) {
            v1 = (0 + 202);
        }

        v0 = 1;
        break;
    case 5:
        if (param1->unk_2D40[param1->unk_64].unk_6C & 0x20) {
            v1 = (0 + 203);
        }

        v0 = 1;
        break;
    case 6:
    {
        int v4;
        int v5;
        int v6;
        int v7;

        v6 = 0;

        for (v5 = 0; v5 < 4; v5++) {
            if (param1->unk_2D40[param1->unk_64].unk_0C[v5]) {
                v4 = MoveTable_GetMoveMaxPP(param1->unk_2D40[param1->unk_64].unk_0C[v5], param1->unk_2D40[param1->unk_64].unk_30[v5]) - param1->unk_2D40[param1->unk_64].unk_2C[v5];

                if (v4 > v6) {
                    v6 = v4;
                    v7 = v5;
                }
            }
        }

        ov16_02252A2C(&param1->unk_2D40[param1->unk_64], 31 + v7, v3);
        ov16_02253EC0(param0, param1, param1->unk_64);
        param1->unk_124 = param1->unk_2D40[param1->unk_64].unk_0C[v7];
        v1 = (0 + 204);
    }
        v0 = 1;
        break;
    case 8:
        if (param1->unk_2D40[param1->unk_64].unk_70 & 0x7) {
            v1 = (0 + 205);
        }

        v0 = 1;
        break;
    case 9:
        if ((param1->unk_2D40[param1->unk_64].unk_6C & 0xff) || (param1->unk_2D40[param1->unk_64].unk_70 & 0x7)) {
            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x40) {
                v1 = (0 + 199);
            }

            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x7) {
                v1 = (0 + 200);
            }

            if (param1->unk_2D40[param1->unk_64].unk_6C & 0xf88) {
                v1 = (0 + 201);
            }

            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x10) {
                v1 = (0 + 202);
            }

            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x20) {
                v1 = (0 + 203);
            }

            if (param1->unk_2D40[param1->unk_64].unk_70 & 0x7) {
                v1 = (0 + 205);
            }

            if ((param1->unk_2D40[param1->unk_64].unk_6C & 0xff) && (param1->unk_2D40[param1->unk_64].unk_70 & 0x7)) {
                v1 = (0 + 206);
            }
        }

        v0 = 1;
        break;
    case 11:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, v3);
            param1->unk_130 = 0;

            if (sub_02077648(param1->unk_2D40[param1->unk_64].unk_68, 0) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 12:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, v3);
            param1->unk_130 = 1;

            if (sub_02077648(param1->unk_2D40[param1->unk_64].unk_68, 1) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 13:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, v3);
            param1->unk_130 = 2;

            if (sub_02077648(param1->unk_2D40[param1->unk_64].unk_68, 2) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 14:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, v3);
            param1->unk_130 = 3;

            if (sub_02077648(param1->unk_2D40[param1->unk_64].unk_68, 3) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 15:
        if (param1->unk_2D40[param1->unk_64].unk_4C != param1->unk_2D40[param1->unk_64].unk_50) {
            param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, v3);
            param1->unk_130 = 4;

            if (sub_02077648(param1->unk_2D40[param1->unk_64].unk_68, 4) == -1) {
                v1 = (0 + 207);
            } else {
                v1 = (0 + 198);
            }
        }

        v0 = 1;
        break;
    case 16:
        if (param1->unk_2D40[param1->unk_64].unk_18[0x1] < 12) {
            param1->unk_130 = 0x1;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 17:
        if (param1->unk_2D40[param1->unk_64].unk_18[0x2] < 12) {
            param1->unk_130 = 0x2;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 18:
        if (param1->unk_2D40[param1->unk_64].unk_18[0x3] < 12) {
            param1->unk_130 = 0x3;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 19:
        if (param1->unk_2D40[param1->unk_64].unk_18[0x4] < 12) {
            param1->unk_130 = 0x4;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 20:
        if (param1->unk_2D40[param1->unk_64].unk_18[0x5] < 12) {
            param1->unk_130 = 0x5;
            v1 = (0 + 208);
        }

        v0 = 1;
        break;
    case 22:
    {
        int v8;

        for (v8 = 0; v8 < 5; v8++) {
            if (param1->unk_2D40[param1->unk_64].unk_18[0x1 + v8] < 12) {
                break;
            }
        }

        if (v8 != 5) {
            do {
                v8 = ov16_0223F4BC(param0) % 5;
            } while (param1->unk_2D40[param1->unk_64].unk_18[0x1 + v8] == 12);

            param1->unk_130 = 0x1 + v8;
            v1 = (0 + 210);
        }
    }
        v0 = 1;
        break;
    case 21:
        if ((param1->unk_2D40[param1->unk_64].unk_70 & 0x100000) == 0) {
            v1 = (0 + 209);
        }

        v0 = 1;
        break;
    case 23:
        v1 = (0 + 265);
        v0 = 1;
        break;
    default:

        if (Item_IsBerry(param1->unk_2D40[param2].unk_78) == 1) {
            v0 = 1;
        }
        break;
    }

    if (v0 == 1) {
        if (((ov16_02255A4C(param1, param1->unk_64) == 103)) || (param1->unk_2D40[param1->unk_64].unk_80 & 0x4000000)) {
            param1->unk_138 = 0;
        } else {
            param1->unk_138 = v1;
        }

        param1->unk_128 = param1->unk_2D40[param2].unk_78;
        param1->unk_2D4[param1->unk_64].unk_14 |= 0x2;
    }

    return v0;
}

BOOL ov16_02259204 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;
    int v2;

    v1 = ov16_02258B58(param1, param2);
    v2 = ov16_02258ACC(param1, param2, 2);

    param1->unk_2154 = ov16_02258B80(param1, param2);
    param1->unk_3118 = 0;
    param1->unk_88 = 0;

    if (param1->unk_2154 == 0) {
        return 0;
    }

    switch (v1) {
    case 7:
        param1->unk_3114 = v2;
        param1->unk_3118 = (0 + 198);
        break;
    case 10:
        param1->unk_3114 = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50 * v2, 100);
        param1->unk_3118 = (0 + 198);
        break;
    case 1:
        if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x40) {
            param1->unk_3118 = (0 + 199);
        }
        break;
    case 2:
        if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x7) {
            param1->unk_3118 = (0 + 200);
        }
        break;
    case 3:
        if (param1->unk_2D40[param1->unk_6C].unk_6C & 0xf88) {
            param1->unk_3118 = (0 + 201);
        }
        break;
    case 4:
        if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x10) {
            param1->unk_3118 = (0 + 202);
        }
        break;
    case 5:
        if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x20) {
            param1->unk_3118 = (0 + 203);
        }
        break;
    case 6:
    {
        int v3;
        int v4;
        int v5;
        int v6;

        v5 = 0;

        for (v4 = 0; v4 < 4; v4++) {
            if (param1->unk_2D40[param1->unk_6C].unk_0C[v4]) {
                v3 = MoveTable_GetMoveMaxPP(param1->unk_2D40[param1->unk_6C].unk_0C[v4], param1->unk_2D40[param1->unk_6C].unk_30[v4]) - param1->unk_2D40[param1->unk_6C].unk_2C[v4];

                if (v3 > v5) {
                    v5 = v3;
                    v6 = v4;
                }
            }
        }

        if (v5) {
            ov16_02252A2C(&param1->unk_2D40[param1->unk_6C], 31 + v6, v2);
            ov16_02253EC0(param0, param1, param1->unk_6C);

            param1->unk_124 = param1->unk_2D40[param1->unk_6C].unk_0C[v6];
            param1->unk_3118 = (0 + 204);
        }
    }
    break;
    case 8:
        if (param1->unk_2D40[param1->unk_6C].unk_70 & 0x7) {
            param1->unk_3118 = (0 + 205);
        }
        break;
    case 9:
        if ((param1->unk_2D40[param1->unk_6C].unk_6C & 0xff) || (param1->unk_2D40[param1->unk_6C].unk_70 & 0x7)) {
            if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x40) {
                param1->unk_3118 = (0 + 199);
            }

            if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x7) {
                param1->unk_3118 = (0 + 200);
            }

            if (param1->unk_2D40[param1->unk_6C].unk_6C & 0xf88) {
                param1->unk_3118 = (0 + 201);
            }

            if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x10) {
                param1->unk_3118 = (0 + 202);
            }

            if (param1->unk_2D40[param1->unk_6C].unk_6C & 0x20) {
                param1->unk_3118 = (0 + 203);
            }

            if (param1->unk_2D40[param1->unk_6C].unk_70 & 0x7) {
                param1->unk_3118 = (0 + 205);
            }

            if ((param1->unk_2D40[param1->unk_6C].unk_6C & 0xff) && (param1->unk_2D40[param1->unk_6C].unk_70 & 0x7)) {
                param1->unk_3118 = (0 + 206);
            }
        }
        break;
    case 11:
        param1->unk_3114 = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, v2);
        param1->unk_130 = 0;

        if (sub_02077648(param1->unk_2D40[param1->unk_6C].unk_68, 0) == -1) {
            param1->unk_3118 = (0 + 207);
        } else {
            param1->unk_3118 = (0 + 198);
        }
        break;
    case 12:
        param1->unk_3114 = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, v2);
        param1->unk_130 = 1;

        if (sub_02077648(param1->unk_2D40[param1->unk_6C].unk_68, 1) == -1) {
            param1->unk_3118 = (0 + 207);
        } else {
            param1->unk_3118 = (0 + 198);
        }
        break;
    case 13:
        param1->unk_3114 = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, v2);
        param1->unk_130 = 2;

        if (sub_02077648(param1->unk_2D40[param1->unk_6C].unk_68, 2) == -1) {
            param1->unk_3118 = (0 + 207);
        } else {
            param1->unk_3118 = (0 + 198);
        }
        break;
    case 14:
        param1->unk_3114 = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, v2);
        param1->unk_130 = 3;

        if (sub_02077648(param1->unk_2D40[param1->unk_6C].unk_68, 3) == -1) {
            param1->unk_3118 = (0 + 207);
        } else {
            param1->unk_3118 = (0 + 198);
        }
        break;
    case 15:
        param1->unk_3114 = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, v2);
        param1->unk_130 = 4;

        if (sub_02077648(param1->unk_2D40[param1->unk_6C].unk_68, 4) == -1) {
            param1->unk_3118 = (0 + 207);
        } else {
            param1->unk_3118 = (0 + 198);
        }
        break;
    case 24:
    {
        int v7;

        for (v7 = 0; v7 < 0x8; v7++) {
            if (param1->unk_2D40[param1->unk_6C].unk_18[v7] < 6) {
                param1->unk_2D40[param1->unk_6C].unk_18[v7] = 6;
                param1->unk_3118 = (0 + 211);
            }
        }
    }
    break;
    case 25:
        if (param1->unk_2D40[param1->unk_6C].unk_70 & 0xf0000) {
            param1->unk_130 = 6;
            param1->unk_3118 = (0 + 212);
        }
        break;
    case 26:
        param1->unk_94 = param2;
        param1->unk_88 = 2;
        param1->unk_3118 = (0 + 14);
        break;
    case 27:
        param1->unk_94 = param2;
        param1->unk_88 = 2;
        param1->unk_3118 = (0 + 31);
        break;
    case 28:
        param1->unk_94 = param2;
        param1->unk_88 = 2;
        param1->unk_3118 = (0 + 22);
        break;
    case 29:
        param1->unk_94 = param2;
        param1->unk_88 = 2;
        param1->unk_3118 = (0 + 47);
        break;
    case 30:
        param1->unk_94 = param2;
        param1->unk_88 = 2;
        param1->unk_3118 = (0 + 25);
        break;
    case 16:
        if (param1->unk_2D40[param1->unk_6C].unk_18[0x1] < 12) {
            param1->unk_130 = 0x1;
            param1->unk_3118 = (0 + 208);
        }
        break;
    case 17:
        if (param1->unk_2D40[param1->unk_6C].unk_18[0x2] < 12) {
            param1->unk_130 = 0x2;
            param1->unk_3118 = (0 + 208);
        }
        break;
    case 18:
        if (param1->unk_2D40[param1->unk_6C].unk_18[0x3] < 12) {
            param1->unk_130 = 0x3;
            param1->unk_3118 = (0 + 208);
        }
        break;
    case 19:
        if (param1->unk_2D40[param1->unk_6C].unk_18[0x4] < 12) {
            param1->unk_130 = 0x4;
            param1->unk_3118 = (0 + 208);
        }
        break;
    case 20:
        if (param1->unk_2D40[param1->unk_6C].unk_18[0x5] < 12) {
            param1->unk_130 = 0x5;
            param1->unk_3118 = (0 + 208);
        }
        break;
    case 22:
    {
        int v8;

        for (v8 = 0; v8 < 5; v8++) {
            if (param1->unk_2D40[param1->unk_6C].unk_18[0x1 + v8] < 12) {
                break;
            }
        }

        if (v8 != 5) {
            do {
                v8 = ov16_0223F4BC(param0) % 5;
            } while (param1->unk_2D40[param1->unk_6C].unk_18[0x1 + v8] == 12);

            param1->unk_130 = 0x1 + v8;
            param1->unk_3118 = (0 + 210);
        }
    }
    break;
    case 21:
        if ((param1->unk_2D40[param1->unk_6C].unk_70 & 0x100000) == 0) {
            param1->unk_3118 = (0 + 209);
        }
        break;
    case 23:
        param1->unk_3118 = (0 + 265);
        break;
    default:
        break;
    }

    if (param1->unk_2D40[param1->unk_6C].unk_80 & 0x4000000) {
        param1->unk_3118 = 0;
    } else {
        param1->unk_128 = param1->unk_2D40[param2].unk_78;

        if ((param1->unk_88 == 0) && (param1->unk_3118)) {
            param1->unk_2D4[param1->unk_64].unk_14 |= 0x2;
        }

        param1->unk_118 = param1->unk_6C;
    }

    return 1;
}

void ov16_02259868 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_02258AB8(param1, param1->unk_64) == 105) {
        if (((param1->unk_2D40[param1->unk_64].unk_70 & 0xc00) == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x70) == 0) && ((param1->unk_213C & 0x200) == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x1000) == 0)) {
            if (param1->unk_30DC[param1->unk_64] == param1->unk_3040) {
                if (param1->unk_2D40[param1->unk_64].unk_88.unk_04_23 < 10) {
                    param1->unk_2D40[param1->unk_64].unk_88.unk_04_23++;
                }
            } else {
                param1->unk_2D40[param1->unk_64].unk_88.unk_04_23 = 0;
                param1->unk_30DC[param1->unk_64] = param1->unk_3040;
            }
        }
    } else {
        param1->unk_2D40[param1->unk_64].unk_88.unk_04_23 = 0;
    }
}

void ov16_0225991C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_02258AB8(param1, param1->unk_64) == 105) {
        if ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) && (param1->unk_30DC[param1->unk_64] == param1->unk_3040) && (param1->unk_2D40[param1->unk_64].unk_88.unk_04_23) && (param1->unk_2D4[param1->unk_64].unk_00_6 == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0xc00) == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x70) == 0) && ((param1->unk_213C & 0x200) == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x1000) == 0)) {
            param1->unk_2D40[param1->unk_64].unk_88.unk_04_23--;
        }
    } else {
        param1->unk_2D40[param1->unk_64].unk_88.unk_04_23 = 0;
    }
}

int ov16_022599D0 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;

    if ((param3 == 1) && ((param2 == 2) || (param2 == 3))) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    v0 = 0;

    if (v2 == 1) {
        v0 = 0;
    }

    v1 = sub_0208C104(param0->unk_2D40[param1].unk_4C, param0->unk_2D40[param1].unk_50, (8 * 6));

    if ((param0->unk_2D40[param1].unk_6C & 0xff) || ((v1 != 4) && (v1 != 3))) {
        if (v2 == 1) {
            v0 = 11;
        } else {
            v0 = 11;
        }
    }

    return v0;
}

BOOL ov16_02259A28 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    BOOL v0 = 1;

    if ((param0->unk_2D40[param1].unk_70 & 0x400000) || (param0->unk_2D40[param1].unk_70 & 0xc00) || (param0->unk_2D40[param1].unk_70 & 0x70) || (param0->unk_2D40[param1].unk_70 & 0x1000)) {
        v0 = 0;
    }

    return v0;
}

void ov16_02259A5C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, Pokemon * param2)
{
    UnkStruct_02025E6C * v0;
    int v1;
    int v2;
    int v3;

    v0 = ov16_0223E16C(param0, 0);
    v1 = ov16_0223E24C(param0);
    v2 = ov16_0223E22C(param0);

    if (ov16_0223DF0C(param0) & 0x200) {
        v3 = sub_02074470(param2, 155, NULL);
    } else {
        v3 = param1->unk_128;
    }

    sub_02077E64(param2, v0, v3, v1, v2, 5);
}

u8 ov16_02259AB4 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    return param0->unk_2300[param1][0];
}

BOOL ov16_02259AC0 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    BOOL v0 = 0;

    if (param0->unk_2D4[param1].unk_14 & 0x8) {
        v0 = 1;
    }

    return v0;
}

BOOL ov16_02259ADC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_02025E6C * v0;
    u32 v1;
    u32 v2;
    const u16 * v3;

    v0 = ov16_0223E16C(param0, 0);
    v1 = sub_02025F20(v0);
    v2 = sub_02025F30(v0);
    v3 = sub_02025EF0(v0);

    if ((v1 == param1->unk_2D40[param1->unk_64].unk_74) && (v2 == param1->unk_2D40[param1->unk_64].unk_7E_4) && (sub_02002238(v3, &param1->unk_2D40[param1->unk_64].unk_54[0], 7) == 0)) {
        return 1;
    }

    return 0;
}

BOOL ov16_02259B38 (UnkStruct_0207ADB4 * param0, Pokemon * param1)
{
    UnkStruct_02025E6C * v0;
    u32 v1;
    u32 v2;
    const u16 * v3;
    u16 v4[7 + 1];

    v0 = ov16_0223E16C(param0, 0);
    v1 = sub_02025F20(v0);
    v2 = sub_02025F30(v0);
    v3 = sub_02025EF0(v0);

    sub_02074470(param1, 144, &v4[0]);

    if ((v1 == sub_02074470(param1, 7, NULL)) && (v2 == sub_02074470(param1, 157, NULL)) && (sub_02002238(v3, &v4[0], 7) == 0)) {
        return 1;
    }

    return 0;
}

BOOL ov16_02259B9C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    int v0;
    int v1;
    BOOL v2 = 0;

    for (v0 = 0; v0 < ov16_0223DF1C(param0); v0++) {
        param1->unk_118 = param1->unk_21EC[v0];

        if ((param1->unk_2D40[param1->unk_118].unk_00 == 351) && (param1->unk_2D40[param1->unk_118].unk_4C) && (ov16_02255A4C(param1, param1->unk_118) == 59)) {
            if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
                if (((param1->unk_180 & (0x3 | 0x30 | 0xc0)) == 0) && (param1->unk_2D40[param1->unk_118].unk_24 != 0) && (param1->unk_2D40[param1->unk_118].unk_25 != 0)) {
                    param1->unk_2D40[param1->unk_118].unk_24 = 0;
                    param1->unk_2D40[param1->unk_118].unk_25 = 0;
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->unk_180 & 0x30) && (param1->unk_2D40[param1->unk_118].unk_24 != 10) && (param1->unk_2D40[param1->unk_118].unk_25 != 10)) {
                    param1->unk_2D40[param1->unk_118].unk_24 = 10;
                    param1->unk_2D40[param1->unk_118].unk_25 = 10;
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 1;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->unk_180 & 0x3) && (param1->unk_2D40[param1->unk_118].unk_24 != 11) && (param1->unk_2D40[param1->unk_118].unk_25 != 11)) {
                    param1->unk_2D40[param1->unk_118].unk_24 = 11;
                    param1->unk_2D40[param1->unk_118].unk_25 = 11;
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 2;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->unk_180 & 0xc0) && (param1->unk_2D40[param1->unk_118].unk_24 != 15) && (param1->unk_2D40[param1->unk_118].unk_25 != 15)) {
                    param1->unk_2D40[param1->unk_118].unk_24 = 15;
                    param1->unk_2D40[param1->unk_118].unk_25 = 15;
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 3;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            } else {
                if ((param1->unk_2D40[param1->unk_118].unk_24 != 0) && (param1->unk_2D40[param1->unk_118].unk_25 != 0)) {
                    param1->unk_2D40[param1->unk_118].unk_24 = 0;
                    param1->unk_2D40[param1->unk_118].unk_25 = 0;
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            }
        }

        if ((param1->unk_2D40[param1->unk_118].unk_00 == 421) && (param1->unk_2D40[param1->unk_118].unk_4C)) {
            if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
                if (((param1->unk_180 & (0x3 | 0x30 | 0xc0)) == 0) && (param1->unk_2D40[param1->unk_118].unk_26_0 == 1)) {
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->unk_180 & 0x30) && (param1->unk_2D40[param1->unk_118].unk_26_0 == 0)) {
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 1;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->unk_180 & 0x3) && (param1->unk_2D40[param1->unk_118].unk_26_0 == 1)) {
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else if ((param1->unk_180 & 0xc0) && (param1->unk_2D40[param1->unk_118].unk_26_0 == 1)) {
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            } else {
                if (param1->unk_2D40[param1->unk_118].unk_26_0 == 1) {
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                }
            }
        }

        if ((param1->unk_2D40[param1->unk_118].unk_00 == 493) && (param1->unk_2D40[param1->unk_118].unk_4C) && (ov16_02255A4C(param1, param1->unk_118) == 121)) {
            v1 = sub_02077988(Item_GetAttribute(param1->unk_2D40[param1->unk_118].unk_78, 1, 5));

            if (param1->unk_2D40[param1->unk_118].unk_26_0 != v1) {
                param1->unk_2D40[param1->unk_118].unk_26_0 = v1;
                *param2 = (0 + 262);
                v2 = 1;
                break;
            }
        }

        if ((param1->unk_2D40[param1->unk_118].unk_00 == 487) && (param1->unk_2D40[param1->unk_118].unk_4C) && (param1->unk_2D40[param1->unk_118].unk_26_0 == 1)) {
            if ((param1->unk_2D40[param1->unk_118].unk_70 & 0x200000) || (((ov16_0223EBEC(param0) & 0x80) == 0) && (param1->unk_2D40[param1->unk_118].unk_78 != 112))) {
                if (param1->unk_2D40[param1->unk_118].unk_70 & 0x200000) {
                    Pokemon * v3;
                    int v4;
                    int v5;

                    v3 = AllocMonZeroed(5);

                    if (ov16_0223DF0C(param0) & 0x2) {
                        v4 = param1->unk_21A8[param1->unk_118][1];
                    } else {
                        v4 = param1->unk_118 ^ 1;
                    }

                    sub_020775EC(ov16_0223DFAC(param0, v4, param1->unk_219C[v4]), v3);
                    v5 = 0;

                    sub_02074B30(v3, 6, &v5);
                    v5 = 0;

                    sub_02074B30(v3, 112, &v5);
                    sub_02077A00(v3);

                    param1->unk_2D40[param1->unk_118].unk_02 = sub_02074470(v3, 165, 0);
                    param1->unk_2D40[param1->unk_118].unk_04 = sub_02074470(v3, 166, 0);
                    param1->unk_2D40[param1->unk_118].unk_06 = sub_02074470(v3, 167, 0);
                    param1->unk_2D40[param1->unk_118].unk_08 = sub_02074470(v3, 168, 0);
                    param1->unk_2D40[param1->unk_118].unk_0A = sub_02074470(v3, 169, 0);
                    param1->unk_2D40[param1->unk_118].unk_27 = sub_02074470(v3, 10, 0);
                    param1->unk_2D40[param1->unk_118].unk_26_0 = 0;
                    param1->unk_2140 |= 0x4000000;

                    ov16_022662FC(param0, param1, param1->unk_118);
                    Heap_FreeToHeap(v3);

                    *param2 = (0 + 262);
                    v2 = 1;
                    break;
                } else {
                    *param2 = (0 + 296);
                    v2 = 1;
                    break;
                }
            }
        }
    }

    return v2;
}

void ov16_0225A1B0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < ov16_0223DF1C(param0); v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            param1->unk_312C[v0][v1] = v1;
        }

        ov16_0225A200(param0, param1, v0, param1->unk_219C[v0]);
    }
}

void ov16_0225A200 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;
    u32 v3;

    v3 = ov16_0223DF0C(param0);

    if (((v3 & 0x2) && ((v3 & (0x8 | 0x10)) == 0)) || ((v3 & 0x10) && ((ov16_0223E1F8(param0, param2) & 0x1) == 0))) {
        if ((ov16_0223E1F8(param0, param2) == 4) || (ov16_0223E1F8(param0, param2) == 5)) {
            v2 = 1;
        } else {
            v2 = 0;
        }

        param2 &= 1;
    } else {
        v2 = 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param1->unk_312C[param2][v0] == param3) {
            break;
        }
    }

    v1 = param1->unk_312C[param2][v2];

    param1->unk_312C[param2][v2] = param1->unk_312C[param2][v0];
    param1->unk_312C[param2][v0] = v1;
}

static const u8 Unk_ov16_0226EC92[][2] = {
    {0x39, 0x6},
    {0x44, 0x8},
    {0x48, 0x4},
    {0x49, 0x5},
    {0x4A, 0xC},
    {0x4B, 0x11},
    {0x4C, 0x1},
    {0x4D, 0xD},
    {0x4E, 0xB},
    {0x4F, 0x2},
    {0x50, 0x3},
    {0x51, 0xF},
    {0x52, 0x7},
    {0x53, 0xE},
    {0x54, 0xA},
    {0x55, 0x10},
    {0x56, 0x0},
    {0x7E, 0xA},
    {0x7F, 0xB},
    {0x80, 0xD},
    {0x81, 0xC},
    {0x82, 0xF},
    {0x83, 0x1},
    {0x84, 0x3},
    {0x85, 0x4},
    {0x86, 0x2},
    {0x87, 0xE},
    {0x88, 0x6},
    {0x89, 0x5},
    {0x8A, 0x7},
    {0x8B, 0x10},
    {0x8C, 0x11},
    {0x8D, 0x8}
};

const u8 Unk_ov16_0226EBE0[][2] = {
    {0xA, 0x28},
    {0xA, 0x23},
    {0xA, 0x1E},
    {0xA, 0x19},
    {0xA, 0x14},
    {0xA, 0xF},
    {0xA, 0xA},
    {0xF, 0xA},
    {0x14, 0xA},
    {0x19, 0xA},
    {0x1E, 0xA},
    {0x23, 0xA},
    {0x28, 0xA}
};

static const u16 Unk_ov16_0226EC16[] = {
    0x8,
    0x7,
    0x9,
    0xB7,
    0x108,
    0x92,
    0xDF,
    0x167,
    0x5,
    0x4,
    0x135,
    0x145,
    0x199,
    0x1A2,
    0x147
};

int ov16_0225A280 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u32 param3, u32 param4, u16 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    int v0;
    s32 v1 = 0;
    s32 v2 = 0;
    u8 v3;
    u8 v4;
    u16 v5;
    u16 v6;
    u16 v7;
    u16 v8;
    s8 v9;
    s8 v10;
    s8 v11;
    s8 v12;
    u8 v13;
    u16 v14;
    u16 v15;
    u32 v16;
    UnkStruct_ov16_0225A280 v17;
    UnkStruct_ov16_0225A280 v18;

    GF_ASSERT(((param9 == 1) || (param9 > 1)));

    v5 = ov16_02252060(param1, param7, 1, NULL);
    v6 = ov16_02252060(param1, param8, 2, NULL);
    v7 = ov16_02252060(param1, param7, 4, NULL);
    v8 = ov16_02252060(param1, param8, 5, NULL);
    v9 = ov16_02252060(param1, param7, 19, NULL) - 6;
    v10 = ov16_02252060(param1, param8, 20, NULL) - 6;
    v11 = ov16_02252060(param1, param7, 22, NULL) - 6;
    v12 = ov16_02252060(param1, param8, 23, NULL) - 6;
    v13 = ov16_02252060(param1, param7, 43, NULL);

    v17.unk_00 = ov16_02252060(param1, param7, 0, NULL);
    v18.unk_00 = ov16_02252060(param1, param8, 0, NULL);
    v17.unk_02 = ov16_02252060(param1, param7, 47, NULL);
    v18.unk_02 = ov16_02252060(param1, param8, 47, NULL);
    v17.unk_04 = ov16_02252060(param1, param7, 48, NULL);
    v18.unk_04 = ov16_02252060(param1, param8, 48, NULL);
    v17.unk_10 = ov16_02252060(param1, param7, 52, NULL);
    v18.unk_10 = ov16_02252060(param1, param8, 52, NULL);
    v17.unk_14 = ov16_02255A4C(param1, param7);
    v18.unk_14 = ov16_02255A4C(param1, param8);
    v17.unk_15 = ov16_02252060(param1, param7, 29, NULL);
    v18.unk_15 = ov16_02252060(param1, param8, 29, NULL);
    v17.unk_16 = ov16_02252060(param1, param7, 27, NULL);
    v18.unk_16 = ov16_02252060(param1, param8, 27, NULL);
    v17.unk_17 = ov16_02252060(param1, param7, 28, NULL);
    v18.unk_17 = ov16_02252060(param1, param8, 28, NULL);

    v15 = ov16_02258874(param1, param7);

    v17.unk_08 = ov16_0225B0FC(param1, v15, 1);
    v17.unk_0C = ov16_0225B0FC(param1, v15, 2);
    v15 = ov16_02258874(param1, param8);

    v18.unk_08 = ov16_0225B0FC(param1, v15, 1);
    v18.unk_0C = ov16_0225B0FC(param1, v15, 2);

    v16 = ov16_0223DF0C(param0);

    if (param5 == 0) {
        v14 = param1->unk_354.unk_8A[param2].unk_03;
    } else {
        v14 = param5;
    }

    if (v17.unk_14 == 96) {
        v3 = 0;
    } else if (param6 == 0) {
        v3 = param1->unk_354.unk_8A[param2].unk_04;
    } else {
        v3 = param6 & 0x3f;
    }

    GF_ASSERT(param1->unk_2158 >= 10);
    v14 = v14 * param1->unk_2158 / 10;

    if ((param1->unk_2D40[param7].unk_80 & 0x200) && (v3 == 13)) {
        v14 *= 2;
    }

    if (param1->unk_1D4[param7].unk_00_3) {
        v14 = v14 * 15 / 10;
    }

    if ((v17.unk_14 == 101) && (param2 != 165) && (v14 <= 60)) {
        v14 = v14 * 15 / 10;
    }

    v4 = param1->unk_354.unk_8A[param2].unk_02;

    if ((v17.unk_14 == 37) || (v17.unk_14 == 74)) {
        v5 = v5 * 2;
    }

    if ((v17.unk_14 == 112) && ((ov16_0225B45C(param0, param1, 3, NULL) - ov16_02252060(param1, param7, 89, NULL)) < 5)) {
        v5 /= 2;
    }

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EC92); v0++) {
        if ((v17.unk_08 == Unk_ov16_0226EC92[v0][0]) && (v3 == Unk_ov16_0226EC92[v0][1])) {
            v14 = v14 * (100 + v17.unk_0C) / 100;
            break;
        }
    }

    if (v17.unk_08 == 55) {
        v5 = v5 * 150 / 100;
    }

    if (v17.unk_08 == 125) {
        v7 = v7 * 150 / 100;
    }

    if ((v17.unk_08 == 60) && ((v16 & 0x80) == 0) && ((v17.unk_00 == 381) || (v17.unk_00 == 380))) {
        v7 = v7 * 150 / 100;
    }

    if ((v18.unk_08 == 60) && ((v16 & 0x80) == 0) && ((v18.unk_00 == 381) || (v18.unk_00 == 380))) {
        v8 = v8 * 150 / 100;
    }

    if ((v17.unk_08 == 61) && (v17.unk_00 == 366)) {
        v7 *= 2;
    }

    if ((v18.unk_08 == 62) && (v18.unk_00 == 366)) {
        v8 *= 2;
    }

    if ((v17.unk_08 == 71) && (v17.unk_00 == 25)) {
        v14 *= 2;
    }

    if ((v18.unk_08 == 90) && (v18.unk_00 == 132)) {
        v6 *= 2;
    }

    if ((v17.unk_08 == 91) && ((v17.unk_00 == 104) || (v17.unk_00 == 105))) {
        v5 *= 2;
    }

    if ((v17.unk_08 == 3) && ((v3 == 16) || (v3 == 8)) && (v17.unk_00 == 483)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 4) && ((v3 == 16) || (v3 == 11)) && (v17.unk_00 == 484)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 2) && ((v3 == 16) || (v3 == 7)) && ((ov16_02252060(param1, param7, 53, NULL) & 0x200000) == 0) && (v17.unk_00 == 487)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 94) && (v4 == 0)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((v17.unk_08 == 95) && (v4 == 1)) {
        v14 = v14 * (100 + v17.unk_0C) / 100;
    }

    if ((ov16_02255AB4(param1, param7, param8, 47) == 1) && ((v3 == 10) || (v3 == 15))) {
        v14 /= 2;
    }

    if (v17.unk_14 == 55) {
        v5 = v5 * 150 / 100;
    }

    if ((v17.unk_14 == 62) && (v17.unk_10)) {
        v5 = v5 * 150 / 100;
    }

    if ((ov16_02255AB4(param1, param7, param8, 63) == 1) && (v18.unk_10)) {
        v6 = v6 * 150 / 100;
    }

    if ((v17.unk_14 == 57) && (ov16_022555A4(param0, param1, 1, param7, 58))) {
        v7 = v7 * 150 / 100;
    }

    if ((v17.unk_14 == 58) && (ov16_022555A4(param0, param1, 1, param7, 57))) {
        v7 = v7 * 150 / 100;
    }

    if ((v3 == 13) && (ov16_02255F68(param0, param1, 0x10000))) {
        v14 /= 2;
    }

    if ((v3 == 10) && (ov16_02255F68(param0, param1, 0x20000))) {
        v14 /= 2;
    }

    if ((v3 == 12) && (v17.unk_14 == 65) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 10) && (v17.unk_14 == 66) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 11) && (v17.unk_14 == 67) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 6) && (v17.unk_14 == 68) && (v17.unk_02 <= (v17.unk_04 / 3))) {
        v14 = v14 * 150 / 100;
    }

    if ((v3 == 10) && (ov16_02255AB4(param1, param7, param8, 85) == 1)) {
        v14 /= 2;
    }

    if ((v3 == 10) && (ov16_02255AB4(param1, param7, param8, 87) == 1)) {
        v14 = v14 * 125 / 100;
    }

    if (v17.unk_14 == 86) {
        v9 *= 2;

        if (v9 < -6) {
            v9 = -6;
        }

        if (v9 > 6) {
            v9 = 6;
        }

        v11 *= 2;

        if (v11 < -6) {
            v11 = -6;
        }

        if (v11 > 6) {
            v11 = 6;
        }
    }

    if (ov16_02255AB4(param1, param7, param8, 86) == 1) {
        v10 *= 2;

        if (v10 < -6) {
            v10 = -6;
        }

        if (v10 > 6) {
            v10 = 6;
        }

        v12 *= 2;

        if (v12 < -6) {
            v12 = -6;
        }

        if (v12 > 6) {
            v12 = 6;
        }
    }

    if (ov16_02255AB4(param1, param7, param8, 109) == 1) {
        v9 = 0;
        v11 = 0;
    }

    if (v17.unk_14 == 109) {
        v10 = 0;
        v12 = 0;
    }

    v9 += 6;
    v10 += 6;
    v11 += 6;
    v12 += 6;

    if ((v17.unk_14 == 79) && (v17.unk_15 == v18.unk_15) && (v17.unk_15 != 2) && (v18.unk_15 != 2)) {
        v14 = v14 * 125 / 100;
    }

    if ((v17.unk_14 == 79) && (v17.unk_15 != v18.unk_15) && (v17.unk_15 != 2) && (v18.unk_15 != 2)) {
        v14 = v14 * 75 / 100;
    }

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EC16); v0++) {
        if ((Unk_ov16_0226EC16[v0] == param2) && (v17.unk_14 == 89)) {
            v14 = v14 * 12 / 10;
            break;
        }
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if ((param4 & 0x30) && (v17.unk_14 == 94)) {
            v7 = v7 * 15 / 10;
        }

        if ((param4 & 0xc) && ((v18.unk_16 == 5) || (v18.unk_17 == 5))) {
            v8 = v8 * 15 / 10;
        }

        if ((param4 & 0x30) && (ov16_022555A4(param0, param1, 1, param7, 122))) {
            v5 = v5 * 15 / 10;
        }

        if ((param4 & 0x30) && (ov16_02255A4C(param1, param7) != 104) && (ov16_022555A4(param0, param1, 1, param8, 122))) {
            v8 = v8 * 15 / 10;
        }
    }

    if (param1->unk_354.unk_8A[param2].unk_00 == 7) {
        v6 = v6 / 2;
    }

    if (v4 == 0) {
        if (param9 > 1) {
            if (v9 > 6) {
                v1 = v5 * Unk_ov16_0226EBE0[v9][0];
                v1 /= Unk_ov16_0226EBE0[v9][1];
            } else {
                v1 = v5;
            }
        } else {
            v1 = v5 * Unk_ov16_0226EBE0[v9][0];
            v1 /= Unk_ov16_0226EBE0[v9][1];
        }

        v1 *= v14;
        v1 *= (v13 * 2 / 5 + 2);

        if (param9 > 1) {
            if (v10 < 6) {
                v2 = v6 * Unk_ov16_0226EBE0[v10][0];
                v2 /= Unk_ov16_0226EBE0[v10][1];
            } else {
                v2 = v6;
            }
        } else {
            v2 = v6 * Unk_ov16_0226EBE0[v10][0];
            v2 /= Unk_ov16_0226EBE0[v10][1];
        }

        v1 /= v2;
        v1 /= 50;

        if ((v17.unk_10 & 0x10) && (v17.unk_14 != 62)) {
            v1 /= 2;
        }

        if (((param3 & 0x1) != 0) && (param9 == 1) && (param1->unk_354.unk_8A[param2].unk_00 != 186)) {
            if ((v16 & 0x2) && (ov16_022554E0(param0, param1, 1, param8) == 2)) {
                v1 = v1 * 2 / 3;
            } else {
                v1 /= 2;
            }
        }
    } else if (v4 == 1) {
        if (param9 > 1) {
            if (v11 > 6) {
                v1 = v7 * Unk_ov16_0226EBE0[v11][0];
                v1 /= Unk_ov16_0226EBE0[v11][1];
            } else {
                v1 = v7;
            }
        } else {
            v1 = v7 * Unk_ov16_0226EBE0[v11][0];
            v1 /= Unk_ov16_0226EBE0[v11][1];
        }

        v1 *= v14;
        v1 *= (v13 * 2 / 5 + 2);

        if (param9 > 1) {
            if (v12 < 6) {
                v2 = v8 * Unk_ov16_0226EBE0[v12][0];
                v2 /= Unk_ov16_0226EBE0[v12][1];
            } else {
                v2 = v8;
            }
        } else {
            v2 = v8 * Unk_ov16_0226EBE0[v12][0];
            v2 /= Unk_ov16_0226EBE0[v12][1];
        }

        v1 /= v2;
        v1 /= 50;

        if (((param3 & 0x2) != 0) && (param9 == 1) && (param1->unk_354.unk_8A[param2].unk_00 != 186)) {
            if ((v16 & 0x2) && (ov16_022554E0(param0, param1, 1, param8) == 2)) {
                v1 = v1 * 2 / 3;
            } else {
                v1 /= 2;
            }
        }
    }

    if ((v16 & 0x2) && (param1->unk_354.unk_8A[param2].unk_08 == 0x4) && (ov16_022554E0(param0, param1, 1, param8) == 2)) {
        v1 = v1 * 3 / 4;
    }

    if ((v16 & 0x2) && (param1->unk_354.unk_8A[param2].unk_08 == 0x8) && (ov16_022554E0(param0, param1, 0, param8) >= 2)) {
        v1 = v1 * 3 / 4;
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if (param4 & 0x3) {
            switch (v3) {
            case 10:
                v1 /= 2;
                break;
            case 11:
                v1 = v1 * 15 / 10;
                break;
            }
        }

        if ((param4 & (3 | 12 | 192 | 32768)) && (param2 == 76)) {
            v1 /= 2;
        }

        if (param4 & 0x30) {
            switch (v3) {
            case 10:
                v1 = v1 * 15 / 10;
                break;
            case 11:
                v1 /= 2;
                break;
            }
        }
    }

    if ((ov16_02252060(param1, param7, 73, NULL)) && (v3 == 10)) {
        v1 = v1 * 15 / 10;
    }

    return v1 + 2;
}

int ov16_0225AEB8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    if (param2) {
        param2 *= (100 - (ov16_0223F4BC(param0) % 16));
        param2 /= 100;

        if (param2 == 0) {
            param2 = 1;
        }
    }

    return param2;
}

static const u8 Unk_ov16_0226EBA0[] = {
    0x10,
    0x8,
    0x4,
    0x3,
    0x2
};

int ov16_0225AEE4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4, u32 param5)
{
    u16 v0;
    u16 v1;
    int v2;
    u16 v3;
    u32 v4;
    u32 v5;
    int v6 = 1;
    int v7;

    v1 = ov16_02258874(param1, param2);
    v2 = ov16_0225B0FC(param1, v1, 1);
    v3 = param1->unk_2D40[param2].unk_00;
    v4 = param1->unk_2D40[param2].unk_70;
    v5 = param1->unk_2D40[param3].unk_80;
    v7 = param1->unk_2D40[param2].unk_27;
    v0 = (((v4 & 0x100000) != 0) * 2) + (v2 == 67) + param4 + (v7 == 105) + (2 * ((v2 == 89) && (v3 == 113))) + (2 * ((v2 == 92) && (v3 == 83)));

    if (v0 > 4) {
        v0 = 4;
    }

    if (ov16_0223F4BC(param0) % Unk_ov16_0226EBA0[v0] == 0) {
        if ((ov16_02255AB4(param1, param2, param3, 4) == 0) && (ov16_02255AB4(param1, param2, param3, 75) == 0) && ((param5 & 0x7000) == 0) && ((v5 & 0x8000) == 0)) {
            v6 = 2;
        }
    }

    if ((v6 == 2) && (ov16_02255A4C(param1, param2) == 97)) {
        v6 = 3;
    }

    return v6;
}

static const u16 Unk_ov16_0226EC5C[] = {
    0x76,
    0xA5,
    0xA6,
    0x66,
    0x1C0,
    0xFFFE,
    0xD6,
    0x112,
    0x77,
    0x44,
    0xF3,
    0xB6,
    0xC5,
    0xCB,
    0xC2,
    0xA8,
    0x10A,
    0x121,
    0x10E,
    0x157,
    0x10F,
    0x108,
    0x16C,
    0x17F,
    0x17E,
    0x19F,
    0xFFFF
};

BOOL ov16_0225AFF4 (u16 param0)
{
    int v0;

    v0 = 0;

    while (Unk_ov16_0226EC5C[v0] != 0xfffe) {
        if (Unk_ov16_0226EC5C[v0] == param0) {
            break;
        }

        v0++;
    }

    return Unk_ov16_0226EC5C[v0] == 0xfffe;
}

BOOL ov16_0225B02C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, u16 param3)
{
    int v0;

    v0 = 0;

    if ((ov16_02256044(param0, param1, param2, param3) == 1) || (ov16_02256078(param0, param1, param2, param3) == 1)) {
        return 0;
    }

    while (Unk_ov16_0226EC5C[v0] != 0xffff) {
        if (Unk_ov16_0226EC5C[v0] == param3) {
            break;
        }

        v0++;
    }

    return Unk_ov16_0226EC5C[v0] == 0xffff;
}

static const u16 Unk_ov16_0226EBB0[] = {
    0x90,
    0x66,
    0xA6,
    0x77,
    0xE3,
    0xA5
};

BOOL ov16_0225B084 (UnkStruct_ov16_0224B9DC * param0, u16 param1)
{
    int v0;

    v0 = 0;

    while (v0 < NELEMS(Unk_ov16_0226EBB0)) {
        if (param0->unk_354.unk_8A[Unk_ov16_0226EBB0[v0]].unk_00 == param0->unk_354.unk_8A[param1].unk_00) {
            break;
        }

        v0++;
    }

    return v0 == NELEMS(Unk_ov16_0226EBB0);
}

static const u16 Unk_ov16_0226EBC8[] = {
    0x44,
    0xF3,
    0xA8,
    0x157,
    0x108,
    0x1C0
};

BOOL ov16_0225B0C0 (UnkStruct_ov16_0224B9DC * param0, u16 param1)
{
    int v0;

    v0 = 0;

    while (v0 < NELEMS(Unk_ov16_0226EBC8)) {
        if (param0->unk_354.unk_8A[Unk_ov16_0226EBC8[v0]].unk_00 == param0->unk_354.unk_8A[param1].unk_00) {
            break;
        }

        v0++;
    }

    return v0 == NELEMS(Unk_ov16_0226EBC8);
}

s32 ov16_0225B0FC (UnkStruct_ov16_0224B9DC * param0, u16 param1, u16 param2)
{
    UnkStruct_0207D3B0 * v0;
    u16 v1;

    v1 = sub_0207CE78(param1, 0);
    v0 = sub_0207D3B0(param0->unk_354.unk_1DCC, v1);

    return Item_GetAttributeFromStruct(v0, param2);
}

int ov16_0225B120 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        if (ov16_0223E208(param0, v0) == param2) {
            break;
        }
    }

    return v0;
}

void ov16_0225B148 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v5 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v5 - 1; v0++) {
        for (v1 = v0 + 1; v1 < v5; v1++) {
            v2 = param1->unk_21E8[v0];
            v3 = param1->unk_21E8[v1];

            if (param1->unk_21A8[v2][3] == param1->unk_21A8[v3][3]) {
                if (param1->unk_21A8[v2][3] == 1) {
                    v4 = 0;
                } else {
                    v4 = 1;
                }

                if (ov16_02252EC8(param0, param1, v2, v3, v4)) {
                    param1->unk_21E8[v0] = v3;
                    param1->unk_21E8[v1] = v2;
                }
            }
        }
    }
}

static const int Unk_ov16_0226EC34[] = {
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x19,
    0x1A
};

BOOL ov16_0225B1DC (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    int v0;
    BOOL v1 = 0;

    if ((param0->unk_2D40[param1].unk_70 & 0x1000000) || (param0->unk_2D40[param1].unk_80 & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
        for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EC34); v0++) {
            if (Unk_ov16_0226EC34[v0] == param2) {
                v1 = 1;
                break;
            }
        }
    } else {
        v1 = 1;
    }

    return v1;
}

BOOL ov16_0225B228 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    BOOL v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    v0 = 0;
    v2 = ov16_02258AB8(param1, param1->unk_64);
    v3 = ov16_02258ACC(param1, param1->unk_64, 0);
    v4 = ov16_02258AB8(param1, param1->unk_6C);
    v5 = ov16_02258ACC(param1, param1->unk_6C, 0);
    v6 = ov16_0223E208(param0, param1->unk_64);

    if ((v2 == 88) && (param1->unk_213C & 0x2000) && (param1->unk_2D4[param1->unk_64].unk_18) && (param1->unk_64 != param1->unk_6C) && (param1->unk_2D40[param1->unk_64].unk_4C < param1->unk_2D40[param1->unk_64].unk_50) && (param1->unk_2D40[param1->unk_64].unk_4C)) {
        param1->unk_215C = ov16_022563F8(param1->unk_2D4[param1->unk_64].unk_18 * -1, v3);
        param1->unk_118 = param1->unk_64;
        param2[0] = (0 + 213);
        v0 = 1;
    }

    if ((v2 == 98) && (ov16_02255A4C(param1, param1->unk_64) != 98) && (param1->unk_213C & 0x2000) && (param1->unk_354.unk_8A[param1->unk_3044].unk_02 != 2) && (param1->unk_2D40[param1->unk_64].unk_4C)) {
        param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, 10);
        param1->unk_118 = param1->unk_64;
        param2[0] = (0 + 214);
        v0 = 1;
    }

    if ((v4 == 46) && (param1->unk_2D40[param1->unk_64].unk_4C) && (ov16_02255A4C(param1, param1->unk_64) != 98) && (param1->unk_2D4[param1->unk_6C].unk_04)) {
        param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, v5);
        param2[0] = (0 + 266);
        v0 = 1;
    }

    if ((v4 == 116) && (param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_2D40[param1->unk_64].unk_78 == 0) && ((param1->unk_1C4[v6].unk_00_23 & sub_020787CC(param1->unk_219C[param1->unk_64])) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x1)) {
        param2[0] = (0 + 216);
        v0 = 1;
    }

    return v0;
}

void ov16_0225B408 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    if ((param2 != 0xff) && (ov16_02255A4C(param0, param2) == 46) && (param0->unk_2D40[param1].unk_2C[param0->unk_30BC[param1]])) {
        param0->unk_2D40[param1].unk_2C[param0->unk_30BC[param1]]--;
    }
}

BOOL ov16_0225B444 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_0223F710(param0)) {
        param1->unk_08 = 42;
        return 1;
    }

    return 0;
}

int ov16_0225B45C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;

    switch (param2) {
    case 0:
        v0 = ov16_0223E208(param0, param3);
        return param1->unk_1BC[v0];
        break;
    case 1:
        v0 = ov16_0223E208(param0, param3);
        return param1->unk_1C4[v0].unk_00_12;
        break;
    case 2:
        return param1->unk_219C[param3];
        break;
    case 3:
        return param1->unk_150;
        break;
    case 4:
        return param1->unk_3109;
        break;
    case 5:
        return param1->unk_311D;
        break;
    case 6:
        return param1->unk_154[param3];
        break;
    case 7:
        return param1->unk_164[param3];
        break;
    case 8:
        return param1->unk_21A8[param3][0];
        break;
    case 9:
        return param1->unk_354.unk_7C;
        break;
    case 10:
        return param1->unk_3108;
        break;
    case 11:
        return param1->unk_354.unk_86[param3];
        break;
    case 12:
        return param1->unk_21A8[param3][2];
        break;
    case 13:
        return param1->unk_08;
        break;
    case 14:
        return param1->unk_0C;
        break;
    }

    GF_ASSERT(0);
    return 0;
}

void ov16_0225B540 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    int v0;

    switch (param2) {
    case 0:
        v0 = ov16_0223E208(param0, param3);
        param1->unk_1BC[v0] = param4;
        break;
    case 1:
        v0 = ov16_0223E208(param0, param3);
        param1->unk_1C4[v0].unk_00_12 = param4;
        break;
    case 2:
        param1->unk_219C[param3] = param4;
        break;
    case 3:
        param1->unk_150 = param4;
        break;
    case 9:
        param1->unk_354.unk_7C = param4;
        break;
    case 11:
        param1->unk_354.unk_86[param3] = param4;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static const int Unk_ov16_0226EE24[] = {
    NULL,
    0x12,
    0x16,
    0x19,
    0x1B,
    0x1F,
    0x2F,
    0x25,
    0xE,
    0x37,
    0x38,
    0x30,
    0xD,
    0x3A,
    0x3F,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0x40,
    0x42,
    0x55,
    0x56,
    0x5D,
    0x77,
    0x73,
    0x82,
    0x8A,
    0x93,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0x2C,
    0x8E,
    0x95,
    0x96,
    0x94,
    0x97,
    0x98,
    0x18,
    0x21,
    0x22,
    0x23,
    0x2B,
    0x2D,
    0x2E,
    0x31,
    0x34,
    0x36,
    0x3E,
    0x43,
    0x44,
    0x46,
    0x49,
    0x4D,
    0x4E,
    0x4F,
    0x50,
    0x51,
    0x52,
    0x54,
    0x57,
    0x58,
    0x59,
    0x5B,
    0x5C,
    0x5F,
    0x60,
    0x61,
    0x7E,
    0x64,
    0x65,
    0x67,
    0x69,
    0x6A,
    0x6D,
    0x70,
    0x71,
    0x72,
    0x78,
    0x7A,
    0x7B,
    0x7C,
    0x7D,
    0x7F,
    0x80,
    0x81,
    0x83,
    0x84,
    0x86,
    0x87,
    0x8C,
    0x8D,
    0x8F,
    0x91,
    0x9A,
    0x9B,
    0x9C,
    0x9E,
    0x9F,
    0xA0,
    0xA1,
    0xA2,
    0xA3,
    0xA4,
    0xA5,
    0xA6,
    0xA7,
    0xA8,
    0xAA,
    0xAB,
    0xAD,
    0xAF,
    0xDA,
    0xDB,
    0xDC,
    0xE2,
    0xF6,
    0xF7,
    0xF8,
    0xF9,
    0x104,
    0x105,
    0x76
};

static int ov16_0225B5D0 (UnkStruct_ov16_0224B9DC * param0, int param1, u32 param2)
{
    param0->unk_88 = param1;
    param0->unk_8C = param2 & 0x7fffff;
    param0->unk_90 = param2 & (0x7fffff ^ 0xffffffff);

    if (param2 & 0x40000000) {
        param0->unk_94 = param0->unk_64;
    } else if (param2 & 0x80000000) {
        param0->unk_94 = param0->unk_6C;
    } else if ((param2 & 0x20000000) || (param2 & 0x10000000)) {
        param0->unk_94 = 0;
    } else {
        (void)0;
    }

    GF_ASSERT(NELEMS(Unk_ov16_0226EE24) > (param2 & 0x7fffff));

    return Unk_ov16_0226EE24[param2 & 0x7fffff];
}

static int ov16_0225B63C (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3, int param4, u32 * param5)
{
    if (((param0->unk_213C & 0x800) == 0) && ((param0->unk_213C & 0x8000) == 0) && (param3)) {
        param3 = ov16_022563F8(param3 * param2, 10);
    }

    switch (param2) {
    case 0:
        param5[0] |= 0x8;
        param5[0] &= (0x4 ^ 0xffffffff);
        param5[0] &= (0x2 ^ 0xffffffff);
        break;
    case 5:
        if (param4) {
            if (param5[0] & 0x2) {
                param5[0] &= (0x2 ^ 0xffffffff);
            } else {
                param5[0] |= 0x4;
            }
        }
        break;
    case 20:
        if (param4) {
            if (param5[0] & 0x4) {
                param5[0] &= (0x4 ^ 0xffffffff);
            } else {
                param5[0] |= 0x2;
            }
        }
        break;
    }

    return param3;
}

static BOOL ov16_0225B6C8 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    switch (param0->unk_354.unk_8A[param1].unk_00) {
    case 26:
    case 39:
    case 75:
    case 145:
    case 151:
    case 155:
    case 255:
    case 256:
    case 263:
    case 273:
        return param0->unk_213C & 0x200;
        break;
    }

    return 1;
}

static u8 ov16_0225B734 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    u8 v0;

    if (param2 == 27) {
        v0 = param0->unk_2D40[param1].unk_24;
    } else if (param2 == 28) {
        v0 = param0->unk_2D40[param1].unk_25;
    } else {
        GF_ASSERT(0);
    }

    if ((param0->unk_2D40[param1].unk_00 == 493) && (param0->unk_2D40[param1].unk_27 == 121)) {
        switch (ov16_0225B0FC(param0, param0->unk_2D40[param1].unk_78, 1)) {
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 128:
            v0 = 13;
            break;
        case 129:
            v0 = 12;
            break;
        case 130:
            v0 = 15;
            break;
        case 131:
            v0 = 1;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 134:
            v0 = 2;
            break;
        case 135:
            v0 = 14;
            break;
        case 136:
            v0 = 6;
            break;
        case 137:
            v0 = 5;
            break;
        case 138:
            v0 = 7;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        case 141:
            v0 = 8;
            break;
        default:
            v0 = 0;
            break;
        }
    }

    return v0;
}

static void ov16_0225B80C (UnkStruct_ov16_0224B9DC * param0, u8 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_354.unk_1C[param1][v0] = 0;
    }
}

static void ov16_0225B824 (UnkStruct_ov16_0224B9DC * param0, u8 param1)
{
    param0->unk_354.unk_3C[param1] = 0;
}

static void ov16_0225B830 (UnkStruct_ov16_0224B9DC * param0, u8 param1)
{
    param0->unk_354.unk_40[param1] = 0;
}

static int ov16_0225B840 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0 = 0xff;

    if ((param1->unk_2D40[param2].unk_27 != 59) && (param1->unk_2D40[param2].unk_27 != 36) && (param1->unk_2D40[param2].unk_27 != 121) && (param1->unk_2D40[param2].unk_4C) && (param1->unk_2D40[param3].unk_4C) && (param1->unk_2D40[param3].unk_27 != 59) && (param1->unk_2D40[param3].unk_27 != 36) && (param1->unk_2D40[param3].unk_27 != 121)) {
        if (ov16_0223F4BC(param0) & 1) {
            v0 = param3;
        } else {
            v0 = param2;
        }
    } else if ((param1->unk_2D40[param2].unk_27 != 59) && (param1->unk_2D40[param2].unk_27 != 36) && (param1->unk_2D40[param2].unk_4C) && (param1->unk_2D40[param2].unk_27 != 121)) {
        v0 = param2;
    } else if ((param1->unk_2D40[param3].unk_27 != 59) && (param1->unk_2D40[param3].unk_27 != 36) && (param1->unk_2D40[param3].unk_4C) && (param1->unk_2D40[param3].unk_27 != 121)) {
        v0 = param3;
    }

    return v0;
}

static const u16 Unk_ov16_0226EBBC[] = {
    0x29,
    0x57,
    0x58,
    0x59,
    0x90,
    0xE3
};

static BOOL ov16_0225B8E4 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226EBBC); v0++) {
        if (Unk_ov16_0226EBBC[v0] == param0->unk_354.unk_8A[param1].unk_00) {
            return 1;
        }
    }

    return 0;
}

static int ov16_0225B910 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3)
{
    int v0;

    switch (param3) {
    case 363:
        v0 = ov16_02258B2C(param1, param2);
        break;
    case 449:
        switch (ov16_02258AB8(param1, param2)) {
        case 131:
            v0 = 1;
            break;
        case 134:
            v0 = 2;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 137:
            v0 = 5;
            break;
        case 136:
            v0 = 6;
            break;
        case 138:
            v0 = 7;
            break;
        case 141:
            v0 = 8;
            break;
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 129:
            v0 = 12;
            break;
        case 128:
            v0 = 13;
            break;
        case 135:
            v0 = 14;
            break;
        case 130:
            v0 = 15;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        default:
            v0 = 0;
            break;
        }
        break;
    case 237:
        v0 = ((param1->unk_2D40[param2].unk_14_0 & 1) >> 0) | ((param1->unk_2D40[param2].unk_14_5 & 1) << 1) | ((param1->unk_2D40[param2].unk_14_10 & 1) << 2) | ((param1->unk_2D40[param2].unk_14_15 & 1) << 3) | ((param1->unk_2D40[param2].unk_14_20 & 1) << 4) | ((param1->unk_2D40[param2].unk_14_25 & 1) << 5);
        v0 = (v0 * 15 / 63) + 1;

        if (v0 >= 9) {
            v0++;
        }
        break;
    case 311:
        if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
            if (param1->unk_180 & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
                if (param1->unk_180 & 0x3) {
                    v0 = 11;
                }

                if (param1->unk_180 & 0xc) {
                    v0 = 5;
                }

                if (param1->unk_180 & 0x30) {
                    v0 = 10;
                }

                if (param1->unk_180 & 0xc0) {
                    v0 = 15;
                }
            }
        }
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}

int ov16_0225BA88 (UnkStruct_0207ADB4 * param0, int param1)
{
    int v0, v1;
    u8 v2;
    u8 v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u16 v7;
    u16 v8;
    int v9;
    u8 v10;
    u8 v11;
    u8 v12;
    u8 v13 = 6;
    u8 v14, v15;
    u32 v16;
    int v17, v18;
    Pokemon * v19;
    UnkStruct_ov16_0224B9DC * v20;

    v20 = ov16_0223DF10(param0);
    v14 = param1;

    if ((ov16_0223DF0C(param0) & 0x10) || (ov16_0223DF0C(param0) & 0x8)) {
        v15 = v14;
    } else {
        v15 = ov16_0223E258(param0, param1);
    }

    v2 = ov16_02257028(param0, v20, param1);
    v17 = 0;
    v18 = ov16_0223DF60(param0, param1);
    v10 = 0;

    while (v10 != 0x3f) {
        v12 = 0;
        v13 = 6;

        for (v0 = v17; v0 < v18; v0++) {
            v19 = ov16_0223DFAC(param0, param1, v0);
            v7 = sub_02074470(v19, 174, NULL);

            if ((v7 != 0) && (v7 != 494) && (sub_02074470(v19, 163, NULL)) && ((v10 & sub_020787CC(v0)) == 0) && (v20->unk_219C[v14] != v0) && (v20->unk_219C[v15] != v0) && (v0 != v20->unk_21A4[v14]) && (v0 != v20->unk_21A4[v15])) {
                v3 = ov16_02252060(v20, v2, 27, NULL);
                v4 = ov16_02252060(v20, v2, 28, NULL);
                v5 = sub_02074470(v19, 177, NULL);
                v6 = sub_02074470(v19, 178, NULL);
                v11 = ov16_022558CC(v5, v3, v4);
                v11 += ov16_022558CC(v6, v3, v4);

                if (v12 < v11) {
                    v12 = v11;
                    v13 = v0;
                }
            } else {
                v10 |= sub_020787CC(v0);
            }
        }

        if (v13 != 6) {
            v19 = ov16_0223DFAC(param0, param1, v13);

            for (v0 = 0; v0 < 4; v0++) {
                v8 = sub_02074470(v19, 54 + v0, NULL);
                v9 = ov16_0225BE3C(param0, v20, v19, v8);

                if (v8) {
                    v16 = 0;
                    ov16_022552D4(v20, v8, v9, sub_02074470(v19, 10, NULL), ov16_02255A4C(v20, v2), ov16_02258AB8(v20, v2), ov16_02252060(v20, v2, 27, NULL), ov16_02252060(v20, v2, 28, NULL), &v16);

                    if (v16 & 0x2) {
                        break;
                    }
                }
            }

            if (v0 == 4) {
                v10 |= sub_020787CC(v13);
            } else {
                return v13;
            }
        } else {
            v10 = 0x3f;
        }
    }

    v12 = 0;
    v13 = 6;

    for (v0 = v17; v0 < v18; v0++) {
        v19 = ov16_0223DFAC(param0, param1, v0);
        v7 = sub_02074470(v19, 174, NULL);

        if ((v7 != 0) && (v7 != 494) && (sub_02074470(v19, 163, NULL)) && (v20->unk_219C[v14] != v0) && (v20->unk_219C[v15] != v0) && (v0 != v20->unk_21A4[v14]) && (v0 != v20->unk_21A4[v15])) {
            for (v1 = 0; v1 < 4; v1++) {
                v8 = sub_02074470(v19, 54 + v1, NULL);
                v9 = ov16_0225BE3C(param0, v20, v19, v8);

                if ((v8) && (v20->unk_354.unk_8A[v8].unk_03 != 1)) {
                    v11 = ov16_0225A280(param0, v20, v8, v20->unk_1BC[ov16_0223E208(param0, v2)], v20->unk_180, 0, 0, param1, v2, 1);
                    v16 = 0;
                    v11 = ov16_02254FA8(param0, v20, v8, v9, param1, v2, v11, &v16);

                    if (v16 & (0x8 | 0x800 | 0x100000 | 0x40000)) {
                        v11 = 0;
                    }
                }

                if (v12 < v11) {
                    v12 = v11;
                    v13 = v0;
                }
            }
        }
    }

    return v13;
}

int ov16_0225BE28 (UnkStruct_0207ADB4 * param0, int param1)
{
    UnkStruct_ov16_0224B9DC * v0;

    v0 = ov16_0223DF10(param0);
    return v0->unk_21A4[param1];
}

int ov16_0225BE3C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, Pokemon * param2, int param3)
{
    int v0;

    switch (param3) {
    case 363:
        v0 = ov16_0225B0FC(param1, sub_02074470(param2, 6, NULL), 12);
        break;
    case 449:
        switch (ov16_0225B0FC(param1, sub_02074470(param2, 6, NULL), 1)) {
        case 131:
            v0 = 1;
            break;
        case 134:
            v0 = 2;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 137:
            v0 = 5;
            break;
        case 136:
            v0 = 6;
            break;
        case 138:
            v0 = 7;
            break;
        case 141:
            v0 = 8;
            break;
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 129:
            v0 = 12;
            break;
        case 128:
            v0 = 13;
            break;
        case 135:
            v0 = 14;
            break;
        case 130:
            v0 = 15;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        default:
            v0 = 0;
            break;
        }
        break;
    case 237:
        v0 = ((sub_02074470(param2, 70, NULL) & 1) >> 0) | ((sub_02074470(param2, 71, NULL) & 1) << 1) | ((sub_02074470(param2, 72, NULL) & 1) << 2) | ((sub_02074470(param2, 73, NULL) & 1) << 3) | ((sub_02074470(param2, 74, NULL) & 1) << 4) | ((sub_02074470(param2, 75, NULL) & 1) << 5);
        v0 = (v0 * 15 / 63) + 1;

        if (v0 >= 9) {
            v0++;
        }
        break;
    case 311:
        if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
            if (param1->unk_180 & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
                if (param1->unk_180 & 0x3) {
                    v0 = 11;
                }

                if (param1->unk_180 & 0xc) {
                    v0 = 5;
                }

                if (param1->unk_180 & 0x30) {
                    v0 = 10;
                }

                if (param1->unk_180 & 0xc0) {
                    v0 = 15;
                }
            }
        }
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}
