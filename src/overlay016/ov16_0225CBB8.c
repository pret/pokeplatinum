#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"
#include "assert.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay016/struct_ov16_0224B9DC_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"
#include "overlay016/struct_ov16_02268A14_decl.h"
#include "overlay016/struct_ov16_0226D160_decl.h"

#include "overlay012/const_ov12_0223B0DC.h"
#include "overlay012/const_ov12_0223B0A0.h"
#include "overlay012/const_ov12_0223B0B8.h"

#include "struct_defs/struct_02007C10.h"
#include "functypes/funcptr_02007C34.h"
#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/trainer_data.h"
#include "overlay012/struct_ov12_02236030.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay012/struct_ov12_02237F38.h"
#include "overlay012/struct_ov12_022380DC.h"
#include "overlay013/struct_ov13_0221FC20.h"
#include "overlay013/struct_ov13_022264F4.h"
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
#include "overlay016/struct_ov16_0225C840.h"
#include "overlay016/struct_ov16_0225C9F0.h"
#include "overlay016/struct_ov16_0225CA4C.h"
#include "overlay016/struct_ov16_0225CA60.h"
#include "overlay016/struct_ov16_0225CBB8.h"
#include "overlay016/struct_ov16_0225D1C4.h"
#include "overlay016/struct_ov16_0225D360.h"
#include "overlay016/struct_ov16_0225D3CC.h"
#include "overlay016/struct_ov16_0225D5B8.h"
#include "overlay016/struct_ov16_0225D698.h"
#include "overlay016/struct_ov16_0225D708.h"
#include "overlay016/struct_ov16_0225D794.h"
#include "overlay016/struct_ov16_0225D840.h"
#include "overlay016/struct_ov16_0225D8AC.h"
#include "overlay016/struct_ov16_0225D8F0.h"
#include "overlay016/struct_ov16_0225D9A8.h"
#include "overlay016/struct_ov16_0225DA44.h"
#include "overlay016/struct_ov16_0225DB74.h"
#include "overlay016/struct_ov16_0225DC7C.h"
#include "overlay016/struct_ov16_0225DCB0.h"
#include "overlay016/struct_ov16_0225DF34.h"
#include "overlay016/struct_ov16_0225DF6C.h"
#include "overlay016/struct_ov16_0225E0BC.h"
#include "overlay016/struct_ov16_0225E0F4.h"
#include "overlay016/struct_ov16_0225E134.h"
#include "overlay016/struct_ov16_0225E2C8.h"
#include "overlay016/struct_ov16_0225E300.h"
#include "overlay016/struct_ov16_0225E4E8.h"
#include "overlay016/struct_ov16_0225EA80.h"
#include "overlay016/struct_ov16_0225F764.h"
#include "overlay016/struct_ov16_02260384.h"
#include "overlay016/struct_ov16_02260C00.h"
#include "overlay016/struct_ov16_02260F14.h"
#include "overlay016/struct_ov16_022623F0.h"
#include "overlay016/struct_ov16_02264408.h"
#include "overlay016/struct_ov16_02264650.h"
#include "overlay016/struct_ov16_02264650_1.h"
#include "overlay016/struct_ov16_02264EF8.h"
#include "overlay016/struct_ov16_02265050.h"
#include "overlay016/struct_ov16_02265124.h"
#include "overlay016/struct_ov16_02265154.h"
#include "overlay016/struct_ov16_022651A8.h"
#include "overlay016/struct_ov16_022656F0.h"
#include "overlay016/struct_ov16_02265BBC.h"
#include "overlay016/struct_ov16_022664F8.h"
#include "overlay016/struct_ov16_022674C4.h"
#include "overlay016/struct_ov16_022674C4_sub1.h"
#include "overlay016/struct_ov16_02269668.h"
#include "overlay016/struct_ov16_0226AC98.h"
#include "overlay016/struct_ov16_0226C378.h"

#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200762C.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_020131EC.h"
#include "unk_0201567C.h"
#include "unk_02015F84.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_02025E68.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "party.h"
#include "item.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02235E94.h"
#include "overlay012/ov12_02237EFC.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay013/ov13_0221FC20.h"
#include "overlay013/ov13_022264F4.h"
#include "overlay014/ov14_0221FC20.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_02264798.h"
#include "overlay016/ov16_0226485C.h"
#include "overlay016/ov16_02266F1C.h"
#include "overlay016/ov16_0226871C.h"
#include "overlay016/ov16_0226D094.h"

void ov16_0225CBB8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225CBDC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C168 * param2);
void ov16_0225CE1C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C17C * param2);
void ov16_0225CF70(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C17C * param2);
void ov16_0225D118(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02264EF8 * param2);
void ov16_0225D1C4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265050 * param2);
void ov16_0225D228(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265124 * param2);
void ov16_0225D360(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265154 * param2);
void ov16_0225D3CC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225D414(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_022651A8 * param2);
void ov16_0225D4A8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C23C * param2);
void ov16_0225D570(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225D5B8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C260 * param2);
void ov16_0225D698(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_022656F0 * param2);
void ov16_0225D708(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C29C * param2);
void ov16_0225D794(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2B0 * param2);
void ov16_0225D840(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2C4 * param2);
void ov16_0225D8AC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2D8 * param2);
void ov16_0225D8F0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2EC * param2);
void ov16_0225D958(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2);
void ov16_0225D9A8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265BBC * param2);
void ov16_0225DA44(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225DA74(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C35C * param2);
void ov16_0225DB00(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C370 * param2);
void ov16_0225DB74(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C384 * param2);
void ov16_0225DC4C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C398 * param2);
void ov16_0225DC7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225DCB0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3BC * param2);
void ov16_0225DD44(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3D0 * param2);
void ov16_0225DD7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3E4 * param2);
void ov16_0225DDD8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3F8 * param2);
void ov16_0225DE30(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C40C * param2);
void ov16_0225DE88(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225DEDC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C430 * param2);
void ov16_0225DF34(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225DF6C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C454 * param2);
void ov16_0225E008(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C468 * param2);
void ov16_0225E0BC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C65C * param2);
void ov16_0225E0F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_022664F8 * param2);
void ov16_0225E134(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2);
void ov16_0225E17C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2);
void ov16_0225E1B4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2);
void ov16_0225E200(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2);
void ov16_0225E23C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225E294(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265BBC * param2);
void ov16_0225E2C8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225E300(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225E338(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225E38C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C9F0 * param2);
void ov16_0225E3E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
void ov16_0225E434(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265BBC * param2);
void ov16_0225E468(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225CA4C * param2);
void ov16_0225E4C8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225CA60 * param2);
static void ov16_0225E4E8(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225E894(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225EA80(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225F0C0(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225F764(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225FA00(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225FA70(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0225FD5C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260384(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260284(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226040C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260480(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022604C8(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260AB4(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260AE4(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260B04(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260B84(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260BAC(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260C00(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260DB0(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260E78(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260E98(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02260F14(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022610A8(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022610EC(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226110C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022611DC(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02261D50(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02261DA8(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02261DE0(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02261E8C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262258(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226230C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226232C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022623F0(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226262C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226264C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226266C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022626C0(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226292C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262988(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022629DC(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262A9C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262D28(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262DC4(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262F30(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262F7C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02262FC0(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02263014(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022633A4(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022634DC(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226354C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02263604(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02263688(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_022636D4(UnkStruct_0201CD38 * param0, void * param1);
void ov16_02263730(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1);
u8 ov16_02263AE4(UnkStruct_ov16_0225BFFC * param0);
u8 ov16_02263AF0(UnkStruct_ov16_0225BFFC * param0);
UnkStruct_02007C7C * ov16_02263AFC(UnkStruct_ov16_0225BFFC * param0);
UnkStruct_ov16_022674C4 * ov16_02263B08(UnkStruct_ov16_0225BFFC * param0);
UnkStruct_ov16_0226C378 * ov16_02263B0C(UnkStruct_ov16_0225BFFC * param0);
void ov16_02263B10(UnkStruct_ov16_0225BFFC * param0);
void ov16_02263B20(UnkStruct_ov16_0225BFFC * param0, int param1);
static UnkStruct_02007C7C * ov16_02263B30(UnkStruct_0207ADB4 * param0, UnkStruct_02007768 * param1, UnkStruct_02008A90 * param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, UnkStruct_02007C10 * param11, UnkFuncPtr_02007C34 * param12);
static void ov16_02263C1C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3F8 * param2, UnkStruct_ov16_0225C300 * param3);
static void ov16_02263CF0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C40C * param2, UnkStruct_ov16_0225C300 * param3);
static void ov16_02263DD0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2);
static void ov16_02263E7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C430 * param2, UnkStruct_ov16_0225C300 * param3);
static void ov16_022641B4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2);
static void ov16_02264270(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C9F0 * param2, UnkStruct_ov16_0225C300 * param3);
static void ov16_02264360(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2);
static UnkStruct_0200D0F4 * ov16_022643B8(UnkStruct_0207ADB4 * param0, int param1, int param2, int param3, s16 param4, s16 param5);
static void ov16_02264408(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov12_0221FCDC * param2, UnkStruct_ov16_02265BBC * param3);
static void ov16_02264530(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_02265BBC * param1, UnkStruct_ov12_022380DC * param2, int param3);
static void ov16_022645B8(u8 * param0, u8 * param1, int param2, int param3, u16 param4);
static BOOL ov16_02264650(UnkStruct_ov16_02264650_1 * param0, UnkStruct_0200D0F4 * param1);
static void ov16_022646C8(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02264730(UnkStruct_0207ADB4 * param0);
static void ov16_0226474C(UnkStruct_0207ADB4 * param0);
static u8 ov16_02264768(UnkStruct_0207ADB4 * param0, u8 param1, u8 param2);

static const u16 Unk_ov16_0226F1AE[] = {
    0x0,
    0x7297,
    0x3FFF,
    0x7AF0,
    0x7ADF,
    0x53D7,
    0x67F5,
    0x7B2C,
    0x2B7E,
    0x431F,
    0x7BDD,
    0x2A3F,
    0x293F,
    0x45CE,
    0x731F,
    0x7F51,
    0x151E
};

void ov16_0225CBB8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225CBB8 * v0;

    v0 = (UnkStruct_ov16_0225CBB8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225CBB8));
    v0->unk_00 = param0;
    v0->unk_14 = 0;
    v0->unk_15 = 0;
    v0->unk_16 = 0;

    sub_0200D9E8(ov16_02263014, v0, 0);
}

void ov16_0225CBDC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C168 * param2)
{
    int v0;
    UnkStruct_02008A90 v1;
    UnkStruct_02007768 * v2;
    UnkStruct_02007C10 v3[10];
    UnkStruct_ov16_0225E4E8 * v4;
    int v5;
    u8 v6;
    s8 v7;
    s8 v8;
    u8 v9;

    v2 = ov16_0223E000(param0);
    v5 = ov16_0223DF0C(param0);
    v4 = (UnkStruct_ov16_0225E4E8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E4E8));

    v4->unk_12 = 0;

    if (param1->unk_191 & 0x1) {
        v4->unk_13 = 2;
        v4->unk_0C = ov16_0223E020(param0, 1);
        sub_0200D4C4(v4->unk_0C->unk_00, Unk_ov12_0223B0B8[param1->unk_191 & 1][0], (8 * 11));
    } else {
        v4->unk_13 = 0;
        v4->unk_0C = ov16_0223E020(param0, 0);
        sub_0200D4C4(v4->unk_0C->unk_00, Unk_ov12_0223B0B8[param1->unk_191 & 1][0], (128 + 8));
    }

    if (param2->unk_01_2) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    sub_02075FB4(&v1, param2->unk_02, param2->unk_01_0, v4->unk_13, v0, param2->unk_01_3, param2->unk_04);

    v6 = sub_02076648(param2->unk_02, param2->unk_01_0, v4->unk_13, param2->unk_01_3, param2->unk_04);

    sub_02078A80(param1->unk_1A0, &v7, param2->unk_02);
    sub_02078AA4(param1->unk_1A0, &v8, param2->unk_02);
    sub_02078AC8(param1->unk_1A0, &v9, param2->unk_02);
    sub_020789BC(param1->unk_1A0, &v3[0], param2->unk_02, param1->unk_191);

    v4->unk_08 = param1->unk_20 = ov16_02263B30(param0, v2, &v1, Unk_ov12_0223B0B8[param1->unk_191][0], Unk_ov12_0223B0B8[param1->unk_191][1], Unk_ov12_0223B0B8[param1->unk_191][2], v6, v7, v8, v9, param1->unk_190, &v3[0], NULL);

    if (v4->unk_13 == 2) {
        sub_020086FC(v4->unk_08, 8, 8, 0, 0x0);
    }

    if ((v4->unk_13 == 2) && (ov16_0223EBEC(param0) & 0x40)) {
        int v10, v11;

        v11 = sub_020080C0(v4->unk_08, 1);
        v10 = ((24 * 8) - -80) / 2;

        sub_02007DEC(v4->unk_08, 46, 0);
        sub_02007DEC(v4->unk_08, 0, (256 - 64));
        sub_02007DEC(v4->unk_08, 1, v11 - v10);

        v4->unk_14 = v11;
    } else {
        v4->unk_14 = Unk_ov12_0223B0A0[param1->unk_191][0];
    }

    v4->unk_00 = param0;
    v4->unk_04 = param1;
    v4->unk_10 = param2->unk_00;
    v4->unk_11 = param1->unk_190;
    v4->unk_16 = param2->unk_02;
    v4->unk_2C = param2->unk_01_3;
    v4->unk_18 = param2->unk_08;
    v4->unk_1C = param1->unk_191;
    v4->unk_24 = GetNatureFromPersonality(param2->unk_04);
    v4->unk_28 = param2->unk_01_2;

    if ((v4->unk_13 == 2) && (ov16_0223EBEC(param0) & 0x40)) {
        sub_0200D9E8(ov16_0225E894, v4, 0);
    } else {
        sub_0200D9E8(ov16_0225E4E8, v4, 0);
    }

    sub_02005454(1);
}

void ov16_0225CE1C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C17C * param2)
{
    int v0;
    UnkStruct_ov16_0225EA80 * v1;
    int v2;

    v2 = ov16_0223DF0C(param0);
    v1 = (UnkStruct_ov16_0225EA80 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225EA80));

    if (param1->unk_191 & 0x1) {
        v1->unk_84 = 2;
    } else {
        v1->unk_84 = 0;
    }

    if (param2->unk_01_2) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    sub_02075FB4(&v1->unk_14, param2->unk_02, param2->unk_01_0, v1->unk_84, v0, param2->unk_01_3, param2->unk_04);

    v1->unk_85 = sub_02076648(param2->unk_02, param2->unk_01_0, v1->unk_84, param2->unk_01_3, param2->unk_04);

    sub_02078A80(param1->unk_1A0, &v1->unk_90, param2->unk_02);
    sub_02078AA4(param1->unk_1A0, &v1->unk_91, param2->unk_02);
    sub_02078AC8(param1->unk_1A0, &v1->unk_93, param2->unk_02);
    ov16_02263B10(param1);

    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_83 = 0;
    v1->unk_96 = 0;
    v1->unk_80 = param2->unk_00;
    v1->unk_81 = param1->unk_190;
    v1->unk_86 = param2->unk_02;
    v1->unk_97 = param2->unk_01_3;
    v1->unk_82 = param1->unk_191;
    v1->unk_88 = param2->unk_08;
    v1->unk_8C = param2->unk_0C;
    v1->unk_8D = GetNatureFromPersonality(param2->unk_04);
    v1->unk_8E = param2->unk_10;
    v1->unk_92 = param2->unk_01_2;
    v1->unk_94 = 0;

    sub_02005454(1);
    sub_0200D9E8(ov16_0225EA80, v1, 0);
}

void ov16_0225CF70 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C17C * param2)
{
    int v0;
    int v1;
    UnkStruct_ov16_0225EA80 * v2;
    int v3;

    v3 = ov16_0223DF0C(param0);
    v2 = (UnkStruct_ov16_0225EA80 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225EA80));
    v2->unk_83 = 0;

    if (param1->unk_191 & 0x1) {
        v2->unk_84 = 2;
    } else {
        v2->unk_84 = 0;
    }

    if (param2->unk_01_2) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    sub_02075FB4(&v2->unk_14, param2->unk_02, param2->unk_01_0, v2->unk_84, v1, param2->unk_01_3, param2->unk_04);

    v2->unk_85 = sub_02076648(param2->unk_02, param2->unk_01_0, v2->unk_84, param2->unk_01_3, param2->unk_04);

    sub_02078A80(param1->unk_1A0, &v2->unk_90, param2->unk_02);
    sub_02078AA4(param1->unk_1A0, &v2->unk_91, param2->unk_02);
    sub_02078AC8(param1->unk_1A0, &v2->unk_93, param2->unk_02);
    ov16_02263B10(param1);

    v2->unk_00 = param0;
    v2->unk_04 = param1;
    v2->unk_80 = param2->unk_00;
    v2->unk_81 = param1->unk_190;
    v2->unk_86 = param2->unk_02;
    v2->unk_97 = param2->unk_01_3;
    v2->unk_82 = param1->unk_191;
    v2->unk_88 = param2->unk_08;
    v2->unk_8C = param2->unk_0C;
    v2->unk_8D = GetNatureFromPersonality(param2->unk_04);
    v2->unk_8E = param2->unk_10;
    v2->unk_92 = param2->unk_01_2;
    v2->unk_94 = param2->unk_14;
    v2->unk_96 = 0;
    v2->unk_98 = param2->unk_4C;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_28.unk_18[v0] = param2->unk_50[v0];
        v2->unk_28.unk_20[v0] = param2->unk_58[v0];
        v2->unk_28.unk_24[v0] = param2->unk_5C[v0];
        v2->unk_28.unk_28[v0] = param2->unk_60[v0];
        v2->unk_28.unk_2C[v0] = param2->unk_64[v0];
    }

    sub_0200D9E8(ov16_0225F0C0, v2, 0);
}

void ov16_0225D118 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02264EF8 * param2)
{
    int v0;
    UnkStruct_ov16_0225F764 * v1;

    v1 = (UnkStruct_ov16_0225F764 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225F764));
    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_08 = param1->unk_20;
    v1->unk_68 = param2->unk_00;
    v1->unk_69 = param1->unk_190;
    v1->unk_6A = param1->unk_191;
    v1->unk_6B = 0;
    v1->unk_6C = param2->unk_01;
    v1->unk_6E = param2->unk_02;
    v1->unk_70 = param2->unk_04;

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_10.unk_18[v0] = param2->unk_08[v0];
        v1->unk_10.unk_20[v0] = param2->unk_10[v0];
        v1->unk_10.unk_24[v0] = param2->unk_14[v0];
        v1->unk_10.unk_28[v0] = param2->unk_18[v0];
        v1->unk_10.unk_2C[v0] = param2->unk_1C[v0];
    }

    sub_0200D9E8(ov16_0225F764, v1, 0);
}

void ov16_0225D1C4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265050 * param2)
{
    UnkStruct_ov16_0225D1C4 * v0;

    v0 = (UnkStruct_ov16_0225D1C4 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D1C4));

    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->unk_190;
    v0->unk_0A = param1->unk_191;
    v0->unk_0B = 0;
    v0->unk_0C = param2->unk_01;

    sub_020086FC(v0->unk_04, 0, 16, 0, Unk_ov16_0226F1AE[param2->unk_02]);
    sub_02007DEC(v0->unk_04, 45, 1);
    sub_0200D9E8(ov16_0225FA00, v0, 0);
}

void ov16_0225D228 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265124 * param2)
{
    int v0;
    UnkStruct_ov16_02264650_1 * v1;
    int v2;

    v1 = (UnkStruct_ov16_02264650_1 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02264650_1));
    v1->unk_0E = 0;

    if (param1->unk_191 & 0x1) {
        v1->unk_0F = 2;
        v1->unk_04 = ov16_0223E020(param0, 1);
        sub_0200D4C4(v1->unk_04->unk_00, Unk_ov12_0223B0B8[param1->unk_191 & 1][0], (8 * 11));
    } else {
        v1->unk_0F = 0;
        v1->unk_04 = ov16_0223E020(param0, 0);
        sub_0200D4C4(v1->unk_04->unk_00, Unk_ov12_0223B0B8[param1->unk_191 & 1][0], (128 + 8));
    }

    if ((ov16_0223DF0C(param0) & 0x8) || ((ov16_0223DF0C(param0) & 0x10) && (param1->unk_191 & 0x1))) {
        v2 = param1->unk_191;
    } else {
        v2 = param1->unk_191 & 1;
    }

    param2->unk_02 = ov16_02264768(param0, param1->unk_190, param2->unk_02);

    v1->unk_08 = param1->unk_18 = ov16_022643B8(param0, v2, param2->unk_02, param1->unk_191, Unk_ov12_0223B0B8[v2][0], Unk_ov12_0223B0B8[v2][1]);
    v1->unk_10 = Unk_ov12_0223B0A0[v2][0];
    v1->unk_00 = param0;
    v1->unk_0C = param2->unk_00;
    v1->unk_0D = param1->unk_190;
    v1->unk_14 = param1->unk_191;
    v1->unk_1C = 0;

    if ((v1->unk_14 == 0) || (v1->unk_14 == 2)) {
        sub_02019184(ov16_0223DF00(param0), 3, 2, 4 * 33);
    }

    sub_0200D9E8(ov16_0225FA70, v1, 0);
}

void ov16_0225D360 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265154 * param2)
{
    UnkStruct_ov16_0225D360 * v0;

    v0 = (UnkStruct_ov16_0225D360 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D360));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_10 = param2->unk_01;
    v0->unk_09 = param1->unk_190;
    v0->unk_04 = param1;

    if (param1->unk_191 & 0x1) {
        v0->unk_0B = 2;
        v0->unk_0C = 0;
    } else {
        {
            TrainerData * v1;

            v1 = ov16_0223E120(param0, param1->unk_190);
            v0->unk_0B = 0;
            v0->unk_0C = sub_020788D0(ov16_02264768(param0, param1->unk_190, v1->class));
        }
    }

    sub_0200D9E8(ov16_0225FD5C, v0, 0);
}

void ov16_0225D3CC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225D3CC * v0;

    v0 = (UnkStruct_ov16_0225D3CC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D3CC));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param1->unk_90[0];
    v0->unk_09 = param1->unk_190;
    v0->unk_04 = param1;

    if (param1->unk_191 & 0x1) {
        v0->unk_0B = 2;
    } else {
        v0->unk_0B = 0;
    }

    sub_0200D9E8(ov16_02260284, v0, 0);
}

void ov16_0225D414 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_022651A8 * param2)
{
    int v0;
    UnkStruct_02008A90 v1;
    UnkStruct_02007768 * v2;
    UnkStruct_ov16_02260384 * v3;
    u32 v4;

    v2 = ov16_0223E000(param0);
    v3 = (UnkStruct_ov16_02260384 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02260384));
    v3->unk_0A = 0;

    if (param1->unk_191 & 0x1) {
        v3->unk_0B = 2;
    } else {
        v3->unk_0B = 0;
    }

    v3->unk_04 = param1->unk_18 = ov16_022643B8(param0, param1->unk_191 & 1, param2->unk_02, param1->unk_191, Unk_ov12_0223B0DC[param1->unk_191 & 1][0], Unk_ov12_0223B0DC[param1->unk_191 & 1][1]);
    v3->unk_0C = Unk_ov12_0223B0A0[param1->unk_191 & 1][param2->unk_04];
    v3->unk_00 = param0;
    v3->unk_08 = param2->unk_00;
    v3->unk_09 = param1->unk_190;

    sub_0200D9E8(ov16_02260384, v3, 0);
}

void ov16_0225D4A8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C23C * param2)
{
    UnkStruct_ov16_022674C4 * v0;

    v0 = &param1->unk_28;
    MI_CpuClearFast(&v0->unk_00, sizeof(UnkStruct_ov16_022674C4_sub1));

    v0->unk_0C = param0;
    v0->unk_24 = param1->unk_190;
    v0->unk_25 = ov16_0226825C(param1->unk_191, ov16_0223DF0C(param0));
    v0->unk_4C = param2->unk_00;
    v0->unk_28 = param2->unk_02;
    v0->unk_2C = param2->unk_04;
    v0->unk_48 = param2->unk_01;
    v0->unk_49 = param2->unk_07_5;
    v0->unk_30 = 0;
    v0->unk_38 = param2->unk_08;
    v0->unk_3C = param2->unk_0C;
    v0->unk_26 = param2->unk_06;
    v0->unk_4A = param2->unk_07_0;
    v0->unk_4B = param2->unk_07_7;
    v0->unk_4D = param2->unk_14;
    v0->unk_27 = param2->unk_10;

    ov16_02267620(v0, 0);
    ov16_02267084(v0, v0->unk_28, 0xffffffff);

    v0->unk_10 = sub_0200D9E8(ov16_0226040C, v0, 1000);
}

void ov16_0225D570 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_022674C4 * v0;

    v0 = &param1->unk_28;
    MI_CpuClearFast(&v0->unk_00, sizeof(UnkStruct_ov16_022674C4_sub1));
    v0->unk_0C = param0;
    v0->unk_24 = param1->unk_190;
    v0->unk_4C = param1->unk_90[0];

    ov16_022676A8(v0, 1);
    v0->unk_10 = sub_0200D9E8(ov16_02260480, v0, 1000);
}

void ov16_0225D5B8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C260 * param2)
{
    UnkStruct_ov16_0225D5B8 * v0;
    int v1, v2;

    v0 = (UnkStruct_ov16_0225D5B8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D5B8));
    MI_CpuClearFast(v0, sizeof(UnkStruct_ov16_0225D5B8));

    v0->unk_0A = 0;
    v0->unk_0B = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->unk_190;
    v0->unk_34 = param1->unk_191;
    v0->unk_04 = &param1->unk_28;
    v0->unk_23 = param2->unk_01;
    v0->unk_36 = param2->unk_24;
    v0->unk_38 = param2->unk_26;
    v0->unk_3A = param2->unk_28;
    v0->unk_3B = param2->unk_29;

    for (v1 = 0; v1 < 2; v1++) {
        for (v2 = 0; v2 < 6; v2++) {
            v0->unk_10[v1][v2] = param2->unk_08[v1][v2];
        }
    }

    for (v1 = 0; v1 < 6; v1++) {
        if (param2->unk_08[0][v1] == 2) {
            v0->unk_1C[v1] = 0;
        } else {
            v0->unk_1C[v1] = param2->unk_02[v1];
        }
    }

    {
        int v3;

        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_24[v3] = param2->unk_14[v3];
            v0->unk_2C[v3] = param2->unk_1C[v3];
            v0->unk_30[v3] = param2->unk_20[v3];
        }
    }

    sub_0200D9E8(param1->unk_00.unk_00, v0, 0);
}

void ov16_0225D698 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_022656F0 * param2)
{
    UnkStruct_ov16_0225D698 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225D698 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D698));

    v0->unk_20 = 0;
    v0->unk_00 = param0;
    v0->unk_1C = param1->unk_90[0];
    v0->unk_1D = param1->unk_190;
    v0->unk_1E = param1->unk_191;
    v0->unk_04 = &param1->unk_28;
    v0->unk_1F = param2->unk_01;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_0C[v1] = param2->unk_04[v1];
        v0->unk_14[v1] = param2->unk_0C[v1];
        v0->unk_18[v1] = param2->unk_10[v1];
    }

    v0->unk_22 = param2->unk_02;

    sub_0200D9E8(param1->unk_00.unk_04, v0, 0);
}

void ov16_0225D708 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C29C * param2)
{
    UnkStruct_ov16_0225D708 * v0;
    int v1, v2;
    u32 v3;
    u8 v4[6];

    v0 = (UnkStruct_ov16_0225D708 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D708));

    v0->unk_0F = 0;
    v0->unk_00 = param0;
    v0->unk_0C = param1->unk_90[0];
    v0->unk_0D = param1->unk_190;
    v0->unk_0E = param1->unk_191;
    v0->unk_30 = param2->unk_02;
    v0->unk_04 = &param1->unk_28;
    v0->unk_32 = param2->unk_01;

    ov16_0223F87C(param0, &v4[0]);

    v2 = ov16_0223DF1C(param0);
    v3 = ov16_0223DF0C(param0);

    for (v1 = 0; v1 < v2; v1++) {
        v0->unk_10[v1] = param2->unk_04[v1];
    }

    sub_0200D9E8(param1->unk_00.unk_08, v0, 0);
}

void ov16_0225D794 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2B0 * param2)
{
    UnkStruct_ov16_0225D794 * v0;
    int v1, v2;

    v0 = (UnkStruct_ov16_0225D794 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D794));

    v0->unk_08 = (UnkStruct_ov16_0225D840 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D840));
    v0->unk_08->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_0221FC20));
    v0->unk_08->unk_04->unk_00 = sub_02079FF4(5);
    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_0C = param2->unk_00;
    v0->unk_0D = param1->unk_190;
    v0->unk_0F = param1->unk_191;
    v0->unk_14 = param2->unk_01;
    v0->unk_15 = param2->unk_02;
    v0->unk_16 = param2->unk_03;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_08->unk_0C[v1] = param2->unk_04[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0->unk_18[v1][v2] = param2->unk_08[v1][v2];
        }

        v0->unk_30[v1] = param2->unk_20[v1];
    }

    sub_0200D9E8(param1->unk_00.unk_0C, v0, 0);
}

void ov16_0225D840 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2C4 * param2)
{
    UnkStruct_ov16_0225D840 * v0;
    int v1, v2;

    v0 = (UnkStruct_ov16_0225D840 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D840));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param2->unk_01;
    v0->unk_0B = param2->unk_02;
    v0->unk_10 = param2->unk_20;
    v0->unk_16 = param2->unk_03;
    v0->unk_14 = 0;
    v0->unk_18 = param2->unk_24;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_0C[v1] = param2->unk_04[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0->unk_1C[v1][v2] = param2->unk_08[v1][v2];
        }
    }

    sub_0200D9E8(param1->unk_00.unk_10, v0, 0);
}

void ov16_0225D8AC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2D8 * param2)
{
    UnkStruct_ov16_0225D8AC * v0;

    v0 = (UnkStruct_ov16_0225D8AC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8AC));

    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_0C = param2->unk_00;
    v0->unk_0D = param1->unk_190;
    v0->unk_04 = &param1->unk_28;
    v0->unk_10 = param2->unk_02;
    v0->unk_0F = param2->unk_01;
    v0->unk_18 = param2->unk_04;
    v0->unk_14 = param2->unk_08;

    sub_0200D9E8(param1->unk_00.unk_14, v0, 0);
}

void ov16_0225D8F0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C2EC * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    v1 = ov16_0223E060(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;

    v2.unk_02 = 0 + param2->unk_02 * 3;
    v2.unk_01 = 2;
    v2.unk_04[0] = param1->unk_190 | (param2->unk_01 << 8);

    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225D958 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_90[0];
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, param2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225D9A8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265BBC * param2)
{
    UnkStruct_ov16_0225D9A8 * v0;

    v0 = (UnkStruct_ov16_0225D9A8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D9A8));

    v0->unk_6A = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_68 = param1->unk_90[0];
    v0->unk_69 = param1->unk_190;
    v0->unk_0C = ov16_0223E008(param0);
    v0->unk_10 = *param2;
    v0->unk_08 = param1->unk_20;

    if ((param2->unk_4C == 1) && (param2->unk_50 == 25)) {
        param1->unk_19C = 1;
    }

    if ((param2->unk_4C == 1) && (param2->unk_50 == 26)) {
        param1->unk_19C = 0;
    }

    ov16_022645B8(&v0->unk_6B, &v0->unk_6C, param2->unk_4C, param2->unk_50, param2->unk_02);
    sub_0200D9E8(ov16_022626C0, v0, 0);
}

void ov16_0225DA44 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225DA44 * v0;

    v0 = (UnkStruct_ov16_0225DA44 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DA44));

    v0->unk_09 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param1->unk_190;
    v0->unk_0A = 0;

    sub_0200D9E8(ov16_0226292C, v0, 0);
}

void ov16_0225DA74 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C35C * param2)
{
    UnkStruct_ov16_022674C4 * v0;

    GF_ASSERT(param1->unk_28.unk_04 != NULL);

    v0 = &param1->unk_28;
    MI_CpuClear8(&v0->unk_00, sizeof(UnkStruct_ov16_022674C4_sub1));

    v0->unk_0C = param0;
    v0->unk_4C = param2->unk_00;
    v0->unk_24 = param1->unk_190;
    v0->unk_25 = ov16_0226825C(param1->unk_191, ov16_0223DF0C(param0));
    v0->unk_28 = param2->unk_02;
    v0->unk_2C = param2->unk_04;
    v0->unk_30 = param2->unk_08;
    v0->unk_48 = param2->unk_01;

    if (param2->unk_08 == 0x7fff) {
        v0->unk_28 = 0;
        v0->unk_30 = 0;
    }

    v0->unk_10 = sub_0200D9E8(ov16_02262988, v0, 1000);
}

void    ov16_0225DB00 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C370 * param2)
{
    UnkStruct_ov16_022674C4 * v0;

    GF_ASSERT(param1->unk_28.unk_04 != NULL);

    v0 = &param1->unk_28;

    MI_CpuClear8(&v0->unk_00, sizeof(UnkStruct_ov16_022674C4_sub1));

    v0->unk_0C = param0;
    v0->unk_4C = param2->unk_00;
    v0->unk_24 = param1->unk_190;
    v0->unk_38 = param2->unk_04;
    v0->unk_3C = param2->unk_0C;
    v0->unk_40 = param2->unk_08 - v0->unk_38;

    if (param1->unk_191 == 0) {
        v0->unk_10 = sub_0200D9E8(ov16_022629DC, v0, 1000);
        return;
    } else {
        ov16_02266ABC(v0->unk_0C, v0->unk_24, v0->unk_4C);
    }
}

void ov16_0225DB74 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C384 * param2)
{
    UnkStruct_ov16_0225DB74 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225DB74 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DB74));

    if (param1->unk_191 & 0x1) {
        v0->unk_67 = 2;
    } else {
        v0->unk_67 = 0;
    }

    v0->unk_66 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_64 = param2->unk_00;
    v0->unk_65 = param1->unk_190;
    v0->unk_08 = param1->unk_20;
    v0->unk_68 = param2->unk_02;
    v0->unk_6A = param2->unk_01;
    v0->unk_6B = param2->unk_08;
    v0->unk_6C = param2->unk_04;
    v0->unk_70 = param2->unk_09;
    v0->unk_72 = param2->unk_0A;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_0C.unk_18[v1] = param2->unk_0C[v1];
        v0->unk_0C.unk_20[v1] = param2->unk_14[v1];
        v0->unk_0C.unk_24[v1] = param2->unk_18[v1];
        v0->unk_0C.unk_28[v1] = param2->unk_1C[v1];
        v0->unk_0C.unk_2C[v1] = param2->unk_20[v1];
    }

    sub_0200D9E8(ov16_02262A9C, v0, 0);
}

void ov16_0225DC4C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C398 * param2)
{
    int v0;

    if (param1->unk_191 & 0x1) {
        v0 = 117;
    } else {
        v0 = -117;
    }

    ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
    sub_02005728(param2->unk_04, v0);
}

void ov16_0225DC7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225DC7C * v0;

    v0 = (UnkStruct_ov16_0225DC7C *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DC7C));

    v0->unk_06 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_90[0];
    v0->unk_05 = param1->unk_190;

    sub_0200D9E8(ov16_02262D28, v0, 0);
}

void ov16_0225DCB0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3BC * param2)
{
    UnkStruct_ov16_0225DCB0 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225DCB0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DCB0));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_60 = param2->unk_00;
    v0->unk_61 = param1->unk_190;
    v0->unk_62 = 0;
    v0->unk_63 = param2->unk_01;
    v0->unk_64 = param2->unk_02;

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_08.unk_18[v1] = param2->unk_04[v1];
        v0->unk_08.unk_20[v1] = param2->unk_0C[v1];
        v0->unk_08.unk_24[v1] = param2->unk_10[v1];
        v0->unk_08.unk_28[v1] = param2->unk_14[v1];
        v0->unk_08.unk_2C[v1] = param2->unk_18[v1];
    }

    sub_0200D9E8(ov16_02262DC4, v0, 0);
}

void ov16_0225DD44 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3D0 * param2)
{
    GF_ASSERT(param1->unk_28.unk_04 != NULL);

    param1->unk_28.unk_4A = param2->unk_01;

    ov16_02267084(&param1->unk_28, param1->unk_28.unk_28, (1 << 8));
    ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
}

void ov16_0225DD7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3E4 * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    int v1;

    v1 = ov16_0223E0D8(param0, param1->unk_190);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223F9FC(param0, v1, param1->unk_190, param2->unk_01, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225DDD8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3F8 * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_02263C1C(param0, param1, param2, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225DE30 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C40C * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_02263CF0(param0, param1, param2, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225DE88 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_02263DD0(param0, param1, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = 34;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225DEDC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C430 * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_02263E7C(param0, param1, param2, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225DF34 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225DF34 * v0;

    v0 = (UnkStruct_ov16_0225DF34 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DF34));

    v0->unk_00 = param0;
    v0->unk_08 = param1->unk_90[0];
    v0->unk_09 = param1->unk_190;
    v0->unk_0A = 0;
    v0->unk_04 = &param1->unk_28;

    sub_0200D9E8(ov16_02262F30, v0, 0);
}

void ov16_0225DF6C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C454 * param2)
{
    UnkStruct_ov16_0225DF6C * v0;
    UnkStruct_0200B144 * v1;

    if (param1->unk_192 == 0x0) {
        v1 = ov16_0223E05C(param0);
        v0 = (UnkStruct_ov16_0225DF6C *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225DF6C));

        v0->unk_00 = param0;
        v0->unk_04 = param2->unk_00;
        v0->unk_05 = param1->unk_190;
        v0->unk_07 = 0;
        v0->unk_06 = ov16_0223FB24(param0, v1, &param2->unk_04, ov16_0223EDF0(param0));

        sub_0200D9E8(ov16_02262FC0, v0, 0);
    } else if (param1->unk_192 == 0x1) {
        ov16_022661B0(param0, param1->unk_190);
        ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
    } else {
        if ((ov16_0223DF0C(param0) & 0x4) == 0) {
            ov16_022661B0(param0, param1->unk_190);
        }

        ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
    }
}

void ov16_0225E008 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C468 * param2)
{
    UnkStruct_ov16_022674C4 * v0;

    v0 = &param1->unk_28;

    MI_CpuClearFast(&v0->unk_00, sizeof(UnkStruct_ov16_022674C4_sub1));

    v0->unk_0C = param0;
    v0->unk_24 = param1->unk_190;
    v0->unk_25 = ov16_0226825C(param1->unk_191, ov16_0223DF0C(param0));
    v0->unk_4C = param2->unk_00;
    v0->unk_28 = param2->unk_02;
    v0->unk_2C = param2->unk_04;
    v0->unk_48 = param2->unk_01;
    v0->unk_49 = param2->unk_07_5;
    v0->unk_30 = 0;
    v0->unk_38 = param2->unk_08;
    v0->unk_3C = param2->unk_0C;
    v0->unk_26 = param2->unk_06;
    v0->unk_4A = param2->unk_07_0;
    v0->unk_4B = param2->unk_07_7;
    v0->unk_27 = param2->unk_10;

    ov16_02267084(v0, v0->unk_28, 0xffffffff ^ (1 << 5));
    ov16_02266ABC(v0->unk_0C, v0->unk_24, v0->unk_4C);
}

void ov16_0225E0BC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C65C * param2)
{
    UnkStruct_ov16_0225E0BC * v0;

    v0 = (UnkStruct_ov16_0225E0BC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E0BC));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->unk_190;
    v0->unk_0C = param2->unk_02;
    v0->unk_0E = param2->unk_01;

    sub_0200D9E8(ov16_022633A4, v0, 0);
}

void ov16_0225E0F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_022664F8 * param2)
{
    UnkStruct_ov16_0225E0F4 * v0;

    v0 = (UnkStruct_ov16_0225E0F4 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E0F4));

    v0->unk_0A = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1->unk_20;
    v0->unk_08 = param2->unk_00;
    v0->unk_09 = param1->unk_190;
    v0->unk_0B = param2->unk_01;
    v0->unk_0C = 0;
    v0->unk_0D = param2->unk_02;

    sub_0200D9E8(ov16_022634DC, v0, 0);
}

void ov16_0225E134 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2)
{
    UnkStruct_ov16_0225E134 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225E134 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E134));

    v0->unk_07 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = param1->unk_191;

    for (v1 = 0; v1 < 6; v1++) {
        v0->unk_08[v1] = param2->unk_02[v1];
    }

    v0->unk_0E = 0;
    sub_0200D9E8(ov16_0226354C, v0, 0);
}

void ov16_0225E17C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2)
{
    UnkStruct_ov16_0225E134 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225E134 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E134));

    v0->unk_07 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = param1->unk_191;
    v0->unk_0E = 0;

    sub_0200D9E8(ov16_02263604, v0, 0);
}

void ov16_0225E1B4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2)
{
    UnkStruct_ov16_0225E134 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225E134 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E134));

    v0->unk_07 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = param1->unk_191;

    for (v1 = 0; v1 < 6; v1++) {
        v0->unk_08[v1] = param2->unk_02[v1];
    }

    v0->unk_0E = 1;

    sub_0200D9E8(ov16_0226354C, v0, 0);
}

void ov16_0225E200 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C840 * param2)
{
    UnkStruct_ov16_0225E134 * v0;
    int v1;

    v0 = (UnkStruct_ov16_0225E134 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E134));

    v0->unk_07 = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param2->unk_00;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = param1->unk_191;
    v0->unk_0E = 1;

    sub_0200D9E8(ov16_02263604, v0, 0);
}

void ov16_0225E23C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_ov16_0225C300 v1;

    if (param1->unk_192 == 0x0) {
        v0 = ov16_0223E05C(param0);

        v1.unk_02 = 923;
        v1.unk_01 = 0;

        ov16_0223FB24(param0, v0, &v1, NULL);
        ov16_0223F2A4(param0, sub_0200E7FC(ov16_0223DF04(param0, 0), 1));
    }

    ov16_02266ABC(param0, param1->unk_190, 55);
}

void ov16_0225E294 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265BBC * param2)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(param0, param2, &v0, param1->unk_190);
    ov12_022382BC(&v0, 5);
    ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
}

void ov16_0225E2C8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225E2C8 * v0;

    v0 = (UnkStruct_ov16_0225E2C8 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E2C8));

    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_0C = param1->unk_90[0];
    v0->unk_0D = param1->unk_190;
    v0->unk_08 = param1->unk_20;

    sub_0200D9E8(ov16_02263688, v0, 0);
}

void ov16_0225E300 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225E300 * v0;

    v0 = (UnkStruct_ov16_0225E300 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225E300));

    v0->unk_0E = 0;
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_0C = param1->unk_90[0];
    v0->unk_0D = param1->unk_190;
    v0->unk_08 = param1->unk_20;

    sub_0200D9E8(ov16_022636D4, v0, 0);
}

void ov16_0225E338 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_022641B4(param0, param1, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = 59;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225E38C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C9F0 * param2)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_02264270(param0, param1, param2, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = 60;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225E3E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    UnkStruct_ov16_0225D8F0 * v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov16_0225C300 v2;

    ov16_02264360(param0, param1, &v2);

    v1 = ov16_0223E05C(param0);
    v0 = (UnkStruct_ov16_0225D8F0 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0225D8F0));

    v0->unk_00 = param0;
    v0->unk_04 = 61;
    v0->unk_05 = param1->unk_190;
    v0->unk_06 = ov16_0223FB24(param0, v1, &v2, ov16_0223EDF0(param0));

    sub_0200D9E8(ov16_02262F7C, v0, 0);
}

void ov16_0225E434 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_02265BBC * param2)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(param0, param2, &v0, param1->unk_190);
    ov12_02238390(&v0, 5);
    ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
}

void ov16_0225E468 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225CA4C * param2)
{
    int v0;

    if (param1->unk_191 & 0x1) {
        v0 = 117;
    } else {
        v0 = -117;
    }

    switch (param2->unk_01) {
    case 0:
        sub_02005728(1790, v0);
        break;
    case 2:
        sub_02005728(1788, v0);
        break;
    case 1:
        sub_02005728(1789, v0);
        break;
    }

    ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
}

void ov16_0225E4C8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225CA60 * param2)
{
    sub_0200549C(param2->unk_02);
    ov16_02266ABC(param0, param1->unk_190, param2->unk_00);
}

static void ov16_0225E4E8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E4E8 * v0 = (UnkStruct_ov16_0225E4E8 *)param1;
    UnkStruct_ov12_0221FCDC * v1 = ov16_0223E008(v0->unk_00);
    s16 v2, v3;

    switch (v0->unk_12) {
    case 0:
        v0->unk_20 = 28;
        v0->unk_12++;
    case 1:
        if (--v0->unk_20) {
            break;
        }

        v0->unk_12++;
    case 2:
        if (v0->unk_13 == 2) {
            sub_0200D550(v0->unk_0C->unk_00, &v2, &v3);

            if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
                if (v2 < (24 * 8)) {
                    sub_0200D5DC(v0->unk_0C->unk_00, 8, 0);
                } else {
                    sub_0200D4C4(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
                }
            }

            sub_0200D550(v0->unk_0C->unk_00, &v2, &v3);

            if (v0->unk_1C == 1) {
                sub_02007DEC(v0->unk_08, 0, v2);
            } else if (v0->unk_1C == 3) {
                v2 = sub_020080C0(v0->unk_08, 0) - v2;
                v2 -= 24;

                sub_02008274(v0->unk_08, 0, -v2);
            } else if (v0->unk_1C == 5) {
                v2 = v2 - sub_020080C0(v0->unk_08, 0);
                v2 -= 16;

                sub_02008274(v0->unk_08, 0, v2);
            }

            if (sub_020080C0(v0->unk_08, 0) >= v0->unk_14) {
                sub_02007B98(v0->unk_08, 1);
                sub_02007DEC(v0->unk_08, 44, 0);
                sub_02007DEC(v0->unk_08, 45, 0);
                sub_02007DEC(v0->unk_08, 0, v0->unk_14);
                sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

                {
                    u8 v4;
                    sub_02078A4C(v0->unk_04->unk_1A0, &v4, v0->unk_16, v0->unk_1C);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, 117, 127, NULL, 5, v4);
                }

                if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
                    sub_0200D4C4(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
                }

                sub_020086FC(v0->unk_08, 8, 0, 0, 0x0);
                v0->unk_12++;
            }
        } else {
            sub_0200D550(v0->unk_0C->unk_00, &v2, &v3);

            if ((v0->unk_1C == 0) || (v0->unk_1C == 2)) {
                if (v2 > 64) {
                    sub_0200D5DC(v0->unk_0C->unk_00, -8, 0);
                } else {
                    sub_0200D4C4(v0->unk_0C->unk_00, 64, (128 + 8));
                }
            }

            sub_0200D550(v0->unk_0C->unk_00, &v2, &v3);

            if (v0->unk_1C == 0) {
                sub_02007DEC(v0->unk_08, 0, v2);
            } else if (v0->unk_1C == 2) {
                v2 = v2 - sub_020080C0(v0->unk_08, 0);
                v2 -= 24;
                sub_02008274(v0->unk_08, 0, v2);
            } else if (v0->unk_1C == 4) {
                v2 = sub_020080C0(v0->unk_08, 0) - v2;
                v2 -= 16;
                sub_02008274(v0->unk_08, 0, -v2);
            }

            if (sub_020080C0(v0->unk_08, 0) <= v0->unk_14) {
                sub_02007DEC(v0->unk_08, 0, v0->unk_14);
                sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

                {
                    u8 v5;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v5, v0->unk_16, v0->unk_1C);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, -117, 127, NULL, 5, v5);
                }

                if ((v0->unk_1C == 0) || (v0->unk_1C == 2)) {
                    sub_0200D4C4(v0->unk_0C->unk_00, 64, (128 + 8));
                }

                v0->unk_12++;
            }
        }
        break;
    case 3:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_11) == 1) && (sub_02007C24(v0->unk_08) == 0)) {
            if (v0->unk_28) {
                {
                    UnkStruct_ov16_02265BBC v6;

                    ov16_02266B78(v0->unk_00, NULL, &v6, 1, 11, v0->unk_11, v0->unk_11, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v1, &v6);
                }
                v0->unk_12 = 4;
            } else {
                v0->unk_12 = 0xff;
            }
        }
        break;
    case 4:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_12 = 0xff;
        }
        break;
    default:
        sub_02005454(0);
        ov16_02266ABC(v0->unk_00, v0->unk_11, v0->unk_10);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0225E894 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E4E8 * v0 = (UnkStruct_ov16_0225E4E8 *)param1;
    UnkStruct_ov12_0221FCDC * v1 = ov16_0223E008(v0->unk_00);
    s16 v2, v3;

    switch (v0->unk_12) {
    case 0:
        v0->unk_20 = 28;
        v0->unk_12++;
    case 1:
        if (--v0->unk_20) {
            break;
        }

        v0->unk_12++;
    case 2:
        sub_0200D550(v0->unk_0C->unk_00, &v2, &v3);

        if ((v0->unk_1C == 1) || (v0->unk_1C == 3)) {
            if (v2 < (24 * 8)) {
                sub_0200D5DC(v0->unk_0C->unk_00, 8, 0);
            } else {
                sub_0200D4C4(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
            }
        }

        sub_0200D550(v0->unk_0C->unk_00, &v2, &v3);
        sub_02008274(v0->unk_08, 1, 8 / 2);

        if (sub_020080C0(v0->unk_08, 1) >= v0->unk_14) {
            sub_02007B98(v0->unk_08, 1);
            sub_02007DEC(v0->unk_08, 44, 0);
            sub_02007DEC(v0->unk_08, 45, 0);
            sub_02007DEC(v0->unk_08, 1, v0->unk_14);
            sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_08, v0->unk_16, v0->unk_13, 0, v0->unk_11);

            {
                u8 v4;

                sub_02078A4C(v0->unk_04->unk_1A0, &v4, v0->unk_16, v0->unk_1C);
                sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_11), v0->unk_18, v0->unk_16, v0->unk_2C, 117, 127, NULL, 5, v4);
            }

            sub_0200D4C4(v0->unk_0C->unk_00, (24 * 8), (8 * 11));
            sub_020086FC(v0->unk_08, 8, 0, 0, 0x0);

            v0->unk_12++;
        }
        break;
    case 3:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_11) == 1) && (sub_02007C24(v0->unk_08) == 0)) {
            if (v0->unk_28) {
                {
                    UnkStruct_ov16_02265BBC v5;

                    ov16_02266B78(v0->unk_00, NULL, &v5, 1, 11, v0->unk_11, v0->unk_11, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v1, &v5);
                }
                v0->unk_12 = 4;
            } else {
                v0->unk_12 = 0xff;
            }
        }
        break;
    case 4:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_12 = 0xff;
        }
        break;
    default:
        sub_02005454(0);
        ov16_02266ABC(v0->unk_00, v0->unk_11, v0->unk_10);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

const u8 Unk_ov16_0226F174[] = {
    0x6,
    0x1,
    0x8,
    0x3,
    0x7,
    0x5
};

static void ov16_0225EA80 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225EA80 * v0 = (UnkStruct_ov16_0225EA80 *)param1;

    switch (v0->unk_83) {
    case 0:
        v0->unk_96 = 0;

        {
            v0->unk_10 = NULL;

            if (ov16_0223DF0C(v0->unk_00) & 0x8) {
                if ((ov16_0223EBEC(v0->unk_00) & 0x20) == 0) {
                    if (v0->unk_82 == 2) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, 5);
                    }
                }
            } else {
                if ((ov16_0223EBEC(v0->unk_00) & 0x20) == 0) {
                    if (((ov16_0223ED60(v0->unk_00) == 1) && (v0->unk_82 == 2))) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, 5);
                    } else if (v0->unk_82 == 0) {
                        v0->unk_10 = ov12_02223764(v0->unk_00, 5);
                    } else {
                        (void)0;
                    }
                }
            }
        }

        v0->unk_83++;
        break;
    case 1:
    {
        UnkStruct_ov12_02236030 v1 = {0};

        v1.unk_00 = v0->unk_82;
        v1.unk_08 = ov16_0223DFAC(v0->unk_00, v0->unk_81, v0->unk_8C);
        v0->unk_08 = ov12_02236004(5, &v1);

        ov12_02236320(v0->unk_08);
    }
        v0->unk_83++;
        break;
    case 2:
        if (ov12_02237890(v0->unk_04->unk_84) != 0) {
            break;
        }

        if (ov12_02236374(v0->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(v0->unk_04->unk_84) == 1) {
            if (v0->unk_82 == 4) {
                v0->unk_96++;

                if (v0->unk_96 >= 12) {
                    v0->unk_96 = 0;
                } else {
                    break;
                }
            }

            {
                UnkStruct_02007768 * v2;
                UnkStruct_02007C10 v3[10];

                v2 = ov16_0223E000(v0->unk_00);
                sub_020789BC(v0->unk_04->unk_1A0, &v3[0], v0->unk_86, v0->unk_82);
                v0->unk_04->unk_20 = ov16_02263B30(v0->unk_00, v2, &v0->unk_14, Unk_ov12_0223B0A0[v0->unk_82][0], Unk_ov12_0223B0B8[v0->unk_82][1], Unk_ov12_0223B0B8[v0->unk_82][2], v0->unk_85, v0->unk_90, v0->unk_91, v0->unk_93, v0->unk_81, &v3[0], NULL);

                sub_02007DEC(v0->unk_04->unk_20, 12, 0x0);
                sub_02007DEC(v0->unk_04->unk_20, 13, 0x0);
                sub_02007DEC(v0->unk_04->unk_20, 44, 0);
                sub_02007DEC(v0->unk_04->unk_20, 6, 1);
            }

            sub_020086FC(v0->unk_04->unk_20, 16, 16, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            sub_02007DEC(v0->unk_04->unk_20, 6, 0);

            ov12_022363B4(v0->unk_08);

            if (v0->unk_84 == 2) {
                sub_02005728(1798, 117);
            } else {
                sub_02005728(1798, -117);
            }

            if (v0->unk_10) {
                ov12_02223770(v0->unk_10);
                v0->unk_10 = NULL;
            }

            v0->unk_83++;
        }
        break;
    case 3:
        if (ov12_022377F8(v0->unk_04->unk_84) != 1) {
            v0->unk_83++;
        }
    case 4:
        if ((sub_020080C0(v0->unk_04->unk_20, 12) == 0x100) && (ov12_022363C4(v0->unk_08) == 0)) {
            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v4;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v4, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v4);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v5;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v5, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v5);
                }
            }

            sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 0, Unk_ov16_0226F1AE[v0->unk_8E]);

            v0->unk_83 = 5;
        } else if (sub_020080C0(v0->unk_04->unk_20, 12) >= 0x100) {
            sub_02007DEC(v0->unk_04->unk_20, 12, 0x100);
            sub_02007DEC(v0->unk_04->unk_20, 13, 0x100);

            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v6;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v6, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v6);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v7;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v7, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v7);
                }
            }

            sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 1, Unk_ov16_0226F1AE[v0->unk_8E]);

            v0->unk_83 = 5;
        } else {
            sub_02008274(v0->unk_04->unk_20, 12, 0x20);
            sub_02008274(v0->unk_04->unk_20, 13, 0x20);
            sub_020087C8(v0->unk_04->unk_20, v0->unk_90);
        }
        break;
    case 5:
        if (ov12_022363C4(v0->unk_08) == 0) {
            v0->unk_83 = 6;
        }
        break;
    case 6:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_81) == 1) && (sub_02007C24(v0->unk_04->unk_20) == 0)) {
            ov12_0223783C(v0->unk_04->unk_84);
            v0->unk_04->unk_84 = NULL;
            ov12_02236428(v0->unk_08);

            if (v0->unk_92) {
                {
                    UnkStruct_ov16_02265BBC v8;

                    v0->unk_24 = ov12_0221FCDC(5);
                    ov16_02266B78(v0->unk_00, NULL, &v8, 1, 11, v0->unk_81, v0->unk_81, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_24, &v8);
                }
                v0->unk_83 = 7;
            } else {
                v0->unk_83 = 0xff;
            }
        }
        break;
    case 7:
        ov12_0222016C(v0->unk_24);

        if (ov12_02220188(v0->unk_24) == 0) {
            ov12_02220198(v0->unk_24);
            ov12_0221FDF4(v0->unk_24);
            v0->unk_83 = 0xff;
        }
        break;
    default:
        sub_02005454(0);
        ov16_02266ABC(v0->unk_00, v0->unk_81, v0->unk_80);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0225F0C0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225EA80 * v0 = (UnkStruct_ov16_0225EA80 *)param1;
    UnkStruct_ov12_0221FCDC * v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_83) {
    case 0:
    {
        UnkStruct_ov12_02237728 v2;

        v2.unk_00 = Unk_ov16_0226F174[v0->unk_82];
        v2.unk_04 = 5;
        v2.unk_0C = v0->unk_81;
        v2.unk_10 = v0->unk_8E;
        v2.unk_1C = ov16_0223E010(v0->unk_00);
        v2.unk_20 = ov16_0223E064(v0->unk_00);
        v2.unk_14 = 1;
        v2.unk_18 = 0;

        if (v0->unk_94 == 1) {
            v2.unk_08 = 1;
        } else {
            v2.unk_08 = 0;
        }

        v0->unk_0C = ov12_02237728(&v2);
    }
        {
            UnkStruct_02007768 * v3;
            UnkStruct_02007C10 v4[10];

            v3 = ov16_0223E000(v0->unk_00);
            sub_020789BC(v0->unk_04->unk_1A0, &v4[0], v0->unk_86, v0->unk_82);
            v0->unk_04->unk_20 = ov16_02263B30(v0->unk_00, v3, &v0->unk_14, Unk_ov12_0223B0A0[v0->unk_82][0], Unk_ov12_0223B0B8[v0->unk_82][1], Unk_ov12_0223B0B8[v0->unk_82][2], v0->unk_85, v0->unk_90, v0->unk_91, v0->unk_93, v0->unk_81, &v4[0], NULL);

            sub_02007DEC(v0->unk_04->unk_20, 12, 0x0);
            sub_02007DEC(v0->unk_04->unk_20, 13, 0x0);
            sub_02007DEC(v0->unk_04->unk_20, 44, 0);
            sub_02007DEC(v0->unk_04->unk_20, 6, 1);
        }
        {
            v0->unk_10 = NULL;
            v0->unk_10 = ov12_02223764(v0->unk_00, 5);
        }
        v0->unk_83++;
        break;
    case 1:
    {
        UnkStruct_ov12_02236030 v5 = {0};

        v5.unk_00 = v0->unk_82;
        v5.unk_08 = ov16_0223DFAC(v0->unk_00, v0->unk_81, v0->unk_8C);
        v5.unk_04 = v0->unk_8E;

        v0->unk_08 = ov12_02236004(5, &v5);
        ov12_02236320(v0->unk_08);
    }
        v0->unk_83++;
        break;
    case 2:
        if ((ov12_02237890(v0->unk_0C) != 0) && (v0->unk_94 == 0)) {
            break;
        }

        if (ov12_02236374(v0->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(v0->unk_0C) == 1) {
            if (v0->unk_10) {
                ov12_02223770(v0->unk_10);
            }

            sub_020086FC(v0->unk_04->unk_20, 16, 16, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            sub_02007DEC(v0->unk_04->unk_20, 6, 0);

            ov12_022363B4(v0->unk_08);

            if (v0->unk_84 == 2) {
                sub_02005728(1798, 117);
            } else {
                sub_02005728(1798, -117);
            }

            v0->unk_83++;
        }
        break;
    case 3:
        if (ov12_022377F8(v0->unk_0C) != 1) {
            v0->unk_83++;
        }
    case 4:
        if ((sub_020080C0(v0->unk_04->unk_20, 12) == 0x100) && (ov12_022363C4(v0->unk_08) == 0)) {
            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v6;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v6, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v6);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v7;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v7, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v7);
                }
            }

            sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 0, Unk_ov16_0226F1AE[v0->unk_8E]);
            v0->unk_83 = 5;
        } else if (sub_020080C0(v0->unk_04->unk_20, 12) >= 0x100) {
            sub_02007DEC(v0->unk_04->unk_20, 12, 0x100);
            sub_02007DEC(v0->unk_04->unk_20, 13, 0x100);

            if (v0->unk_84 == 2) {
                sub_02007B98(v0->unk_04->unk_20, 1);
                sub_02007DEC(v0->unk_04->unk_20, 45, 0);

                {
                    u8 v8;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v8, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, 117, 127, NULL, 5, v8);
                }
            } else {
                sub_02007B98(v0->unk_04->unk_20, 1);

                {
                    u8 v9;

                    sub_02078A4C(v0->unk_04->unk_1A0, &v9, v0->unk_86, v0->unk_82);
                    sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_81), v0->unk_88, v0->unk_86, v0->unk_97, -117, 127, NULL, 5, v9);
                }
            }

            sub_020789F4(v0->unk_04->unk_1A0, ov16_0223EE28(v0->unk_00), v0->unk_04->unk_20, v0->unk_86, v0->unk_84, 0, v0->unk_81);
            sub_020086FC(v0->unk_04->unk_20, 16, 0, 1, Unk_ov16_0226F1AE[v0->unk_8E]);
            v0->unk_83 = 5;
        } else {
            sub_02008274(v0->unk_04->unk_20, 12, 0x20);
            sub_02008274(v0->unk_04->unk_20, 13, 0x20);
            sub_020087C8(v0->unk_04->unk_20, v0->unk_90);
        }
        break;
    case 5:
        if (ov12_022363C4(v0->unk_08) == 0) {
            v0->unk_83 = 6;
        }
        break;
    case 6:
        if ((sub_020160F4(ov16_0223EE28(v0->unk_00), v0->unk_81) == 1) && (sub_02007C24(v0->unk_04->unk_20) == 0)) {
            ov12_0223783C(v0->unk_0C);
            ov12_02236428(v0->unk_08);

            if (v0->unk_92) {
                {
                    UnkStruct_ov16_02265BBC v10;

                    ov16_02266B78(v0->unk_00, NULL, &v10, 1, 11, v0->unk_81, v0->unk_81, NULL);
                    ov16_02264408(v0->unk_00, v0->unk_04, v1, &v10);
                }
                v0->unk_83 = 7;
            } else {
                v0->unk_83 = 8;
            }
        }
        break;
    case 7:
    case 9:
    case 11:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_83++;
        }
        break;
    case 8:
        if (v0->unk_98) {
            {
                UnkStruct_ov16_02265BBC v11;

                ov16_02266B78(v0->unk_00, NULL, &v11, 1, 15, v0->unk_81, v0->unk_81, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v11);
            }
            v0->unk_83++;
        } else {
            v0->unk_83 = 0xff;
        }
        break;
    case 10:
    {
        UnkStruct_ov12_022380DC v12;
        UnkStruct_ov16_02265BBC v13;

        ov16_02264530(v0->unk_00, &v0->unk_28, &v12, v0->unk_81);
        ov12_02238390(&v12, 5);
        ov16_02266B78(v0->unk_00, NULL, &v13, 1, 16, v0->unk_81, v0->unk_81, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v13);

        v0->unk_04->unk_19C = 1;
    }
        v0->unk_83++;
        break;
    default:
        ov16_02266ABC(v0->unk_00, v0->unk_81, v0->unk_80);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0225F764 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225F764 * v0 = (UnkStruct_ov16_0225F764 *)param1;
    UnkStruct_ov12_0221FCDC * v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_6B) {
    case 0:
        if (v0->unk_70) {
            {
                UnkStruct_ov16_02265BBC v2;

                ov16_02266B78(v0->unk_00, NULL, &v2, 1, 15, v0->unk_69, v0->unk_69, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v2);
            }
            v0->unk_6B++;
        } else {
            v0->unk_6B = 4;
        }
        break;
    case 2:
    {
        UnkStruct_ov12_022380DC v3;
        UnkStruct_ov16_02265BBC v4;

        ov16_02264530(v0->unk_00, &v0->unk_10, &v3, v0->unk_69);
        ov12_022382BC(&v3, 5);
        ov16_02266B78(v0->unk_00, NULL, &v4, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_6B++;
        break;
    case 1:
    case 3:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_6B++;
        }
        break;
    case 4:
        if (v0->unk_6A & 0x1) {
            {
                UnkStruct_ov12_02237728 v5;

                v5.unk_00 = Unk_ov16_0226F174[v0->unk_6A];
                v5.unk_04 = 5;
                v5.unk_08 = 5;
                v5.unk_0C = v0->unk_69;
                v5.unk_10 = v0->unk_6E;
                v5.unk_1C = ov16_0223E010(v0->unk_00);
                v5.unk_20 = ov16_0223E064(v0->unk_00);
                v5.unk_14 = 1;
                v5.unk_18 = 0;
                v0->unk_0C = ov12_02237728(&v5);
            }
        } else {
            {
                UnkStruct_ov12_02237728 v6;
                int v7[] = {0, 1, 2, 3, 4, 5};

                v6.unk_00 = v7[v0->unk_6A];
                v6.unk_04 = 5;
                v6.unk_08 = 5;
                v6.unk_0C = v0->unk_69;
                v6.unk_10 = v0->unk_6E;
                v6.unk_1C = ov16_0223E010(v0->unk_00);
                v6.unk_20 = ov16_0223E064(v0->unk_00);
                v6.unk_14 = 1;
                v6.unk_18 = 0;
                v0->unk_0C = ov12_02237728(&v6);
            }
        }

        v0->unk_6B = 5;
        sub_020086FC(v0->unk_08, 0, 16, 0, Unk_ov16_0226F1AE[v0->unk_6E]);

        switch (v0->unk_6A) {
        case 0:
        case 2:
        case 4:
            sub_02005728(1798, -117);
            break;
        case 1:
        case 3:
        case 5:
            sub_02005728(1798, 117);
            break;
        }
        break;
    case 5:
        if (sub_020087B4(v0->unk_08) == 0) {
            v0->unk_6B++;
        }
        break;
    case 6:
        sub_02008274(v0->unk_08, 12, -0x20);
        sub_02008274(v0->unk_08, 13, -0x20);
        sub_020087C8(v0->unk_08, v0->unk_6C);

        if (sub_020080C0(v0->unk_08, 12) <= 0x0) {
            sub_02007DC8(v0->unk_08);

            if (v0->unk_6A & 0x1) {
                v0->unk_6B = 7;
            } else {
                v0->unk_6B = 7;
            }
        }

        break;
    case 7:
        if (ov12_022377F8(v0->unk_0C) == 0) {
            ov12_0223783C(v0->unk_0C);
            v0->unk_6B = 8;
        }
        break;
    case 8:
        ov16_02266ABC(v0->unk_00, v0->unk_69, v0->unk_68);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void  ov16_0225FA00 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D1C4 * v0 = (UnkStruct_ov16_0225D1C4 *)param1;

    switch (v0->unk_0B) {
    case 0:
        sub_02008274(v0->unk_04, 12, -0x20);
        sub_02008274(v0->unk_04, 13, -0x20);

        if (v0->unk_0C) {
            v0->unk_0C--;
            sub_02008274(v0->unk_04, 1, -1);
        }

        if (sub_020080C0(v0->unk_04, 12) <= 0x0) {
            sub_02007DC8(v0->unk_04);
            v0->unk_0B++;
        }
        break;
    case 1:
        ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0225FA70 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_02264650_1 * v0 = (UnkStruct_ov16_02264650_1 *)param1;
    s16 v1, v2, v3, v4;
    u32 v5;

    v5 = ov16_0223DF0C(v0->unk_00);

    if ((v0->unk_1C < 33) && (v0->unk_0E >= 2) && ((v0->unk_14 == 0) || (v0->unk_14 == 2))) {
        sub_02019184(ov16_0223DF00(v0->unk_00), 3, 1, 4);
        v0->unk_1C++;
    }

    switch (v0->unk_0E) {
    case 0:
        if (sub_0200D358(v0->unk_08) > 2) {
            sub_0200D3CC(v0->unk_08, 0);
            sub_0200D364(v0->unk_08, 2);
        }

        v0->unk_18 = 28;
        v0->unk_0E = 1;
    case 1:
        if (--v0->unk_18) {
            break;
        }

        v0->unk_0E = 2;
    case 2:
        sub_0200D550(v0->unk_04->unk_00, &v1, &v2);
        sub_0200D550(v0->unk_08, &v3, &v4);

        if (v0->unk_0F == 2) {
            if ((v0->unk_14 == 1) || (v0->unk_14 == 3)) {
                if (v1 < (24 * 8)) {
                    sub_0200D5DC(v0->unk_04->unk_00, 8, 0);
                } else {
                    sub_0200D4C4(v0->unk_04->unk_00, (24 * 8), (8 * 11));
                }
            }

            sub_0200D550(v0->unk_04->unk_00, &v1, &v2);

            if ((v0->unk_14 == 1) || ((v0->unk_14 == 3) && ((v5 == (0x2 | 0x1)) || (v5 == ((0x2 | 0x1) | 0x80)) || (v5 == ((0x4 | 0x1) | 0x2))))) {
                sub_0200D4C4(v0->unk_08, v1, v4);
            } else if (v0->unk_14 == 3) {
                v1 = v3 - v1;
                v1 -= 24;

                sub_0200D5DC(v0->unk_08, -v1, 0);
            } else if (v0->unk_14 == 5) {
                v1 = v1 - v3;
                v1 -= 16;

                sub_0200D5DC(v0->unk_08, v1, 0);
            }

            sub_0200D550(v0->unk_08, &v3, &v4);

            if (v3 >= v0->unk_10) {
                sub_0200D4C4(v0->unk_08, v0->unk_10, v4);

                if ((v0->unk_14 == 1) || (v0->unk_14 == 3)) {
                    sub_0200D4C4(v0->unk_04->unk_00, (24 * 8), (8 * 11));
                }

                if (sub_0200D358(v0->unk_08) > 1) {
                    sub_0200D3CC(v0->unk_08, 0);
                    sub_0200D364(v0->unk_08, 1);
                    v0->unk_12_0 = 0;
                    v0->unk_0E = 3;
                } else {
                    v0->unk_0E = 4;
                }
            }
        } else {
            if ((v0->unk_14 == 0) || (v0->unk_14 == 2)) {
                if (v1 > 64) {
                    sub_0200D5DC(v0->unk_04->unk_00, -8, 0);
                } else {
                    sub_0200D4C4(v0->unk_04->unk_00, 64, (128 + 8));
                }
            }

            sub_0200D550(v0->unk_04->unk_00, &v1, &v2);

            if ((v0->unk_14 == 0) || ((v0->unk_14 == 2) && ((v5 == (0x2 | 0x1)) || (v5 == ((0x2 | 0x1) | 0x80)) || (v5 == ((0x2 | 0x1) | 0x10)) || (v5 == ((0x4 | 0x1) | 0x2))))) {
                sub_0200D4C4(v0->unk_08, v1, v4);
            } else if (v0->unk_14 == 2) {
                v1 = v1 - v3;
                v1 -= 24;

                sub_0200D5DC(v0->unk_08, v1, 0);
            } else if (v0->unk_14 == 4) {
                v1 = v3 - v1;
                v1 -= 16;

                sub_0200D5DC(v0->unk_08, -v1, 0);
            }

            sub_0200D550(v0->unk_08, &v3, &v4);

            if (v3 <= v0->unk_10) {
                sub_0200D4C4(v0->unk_08, v0->unk_10, v4);

                if ((v0->unk_14 == 0) || (v0->unk_14 == 2)) {
                    sub_0200D4C4(v0->unk_04->unk_00, 64, (128 + 8));
                }

                v0->unk_0E = 4;
            }
        }
        break;
    case 3:
        if (sub_0200D3B8(v0->unk_08) == 1) {
            if (ov16_02264650(v0, v0->unk_08) == 0) {
                break;
            }
        }

        v0->unk_0E = 4;
    case 4:
        ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0225FD5C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D360 * v0 = (UnkStruct_ov16_0225D360 *)param1;
    s16 v1, v2;
    int v3;
    u32 v4;
    s16 v5[][6][2] = {
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDF, 0xFFFFFFFFFFFFFFFA},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFEE},
            {0x32, 0xFFFFFFFFFFFFFFDC},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDF, 0xFFFFFFFFFFFFFFFE},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFEE},
            {0x32, 0xFFFFFFFFFFFFFFE4},
            {0x7FFF, 0x7FFF},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE9, 0xFFFFFFFFFFFFFFFF},
            {0x32, 0xFFFFFFFFFFFFFFFE},
            {0x7FFF, 0x7FFF},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF}
        },
        {
            {0x0, 0x80},
            {0xFFFFFFFFFFFFFFDE, 0x4},
            {0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x32, 0xFFFFFFFFFFFFFFF4},
            {0x7FFF, 0x7FFF}
        }
    };

    v4 = ov16_0223DF0C(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:
        if (v0->unk_10 == 0) {
            v0->unk_0A = 1;
        } else {
            {
                UnkStruct_ov12_02237728 v6;

                switch (v0->unk_10) {
                default:
                case 1:
                    v6.unk_00 = 15;
                    v0->unk_18 = 3;
                    v6.unk_10 = 5;
                    break;
                case 2:
                    v6.unk_00 = 12;
                    v0->unk_18 = 0;
                    v6.unk_10 = (0xFF + 18);
                    break;
                case 3:
                    v6.unk_00 = 13;
                    v0->unk_18 = 0;
                    v6.unk_10 = (0xFF + 19);
                    break;
                case 4:
                    v6.unk_00 = 15;
                    v0->unk_18 = 3;
                    v6.unk_10 = (0xFF + 17);
                    break;
                }

                v6.unk_04 = 5;
                v6.unk_08 = 4;
                v6.unk_0C = v0->unk_09;
                v6.unk_1C = ov16_0223E010(v0->unk_00);
                v6.unk_20 = ov16_0223E064(v0->unk_00);
                v6.unk_18 = 0;
                v6.unk_24 = v0->unk_00;

                v0->unk_04->unk_84 = ov12_02237728(&v6);

                ov12_02237E34(v0->unk_04->unk_84, 100);
                ov12_02237E40(v0->unk_04->unk_84, 2);
                ov12_02237E30(v0->unk_04->unk_84, 0);

                sub_0200D3CC(v0->unk_04->unk_18, 0);
                sub_0200D364(v0->unk_04->unk_18, 1);
                sub_0200D390(v0->unk_04->unk_18, 1);

                v0->unk_0A = 3;
            }
        }
        break;
    case 1:
        if (v0->unk_0B == 2) {
            sub_0200D5DC(v0->unk_04->unk_18, 5, 0);
            sub_0200D550(v0->unk_04->unk_18, &v1, &v2);

            if ((v1 >= (256 - 48) - 48) && (ov12_02237890(v0->unk_04->unk_84) != 0)) {
                ov12_02237E0C(v0->unk_04->unk_84, 1);
                ov12_0223786C(v0->unk_04->unk_84, 0);

                if ((v4 & 0x2) && ((v4 & 0x8) == 0)) {
                    {
                        UnkStruct_ov16_0225BFFC * v7;

                        v7 = ov16_0223DF14(v0->unk_00, ov16_0223E258(v0->unk_00, v0->unk_09));

                        ov12_02237E0C(v7->unk_84, 1);
                        ov12_0223786C(v7->unk_84, 0);
                        ov12_02237E4C(v7->unk_84, 12);
                    }
                }
            } else if (v1 >= (256 + 40)) {
                {
                    UnkStruct_0200C704 * v8;

                    v8 = ov16_0223E018(v0->unk_00);
                    sub_0200D0F4(v0->unk_04->unk_18);
                    v0->unk_04->unk_18 = NULL;

                    sub_0200D070(v8, 20015 + v0->unk_04->unk_191);
                    sub_0200D080(v8, 20010 + v0->unk_04->unk_191);
                    sub_0200D090(v8, 20007 + v0->unk_04->unk_191);
                    sub_0200D0A0(v8, 20007 + v0->unk_04->unk_191);
                }
                v0->unk_0A = 6;
            }
        } else {
            sub_0200D3CC(v0->unk_04->unk_18, 0);
            sub_0200D364(v0->unk_04->unk_18, 1);
            sub_0200D390(v0->unk_04->unk_18, 1);
            v0->unk_0A = 2;
        }
        break;
    case 2:
        sub_0200D5DC(v0->unk_04->unk_18, -5, 0);
        sub_0200D550(v0->unk_04->unk_18, &v1, &v2);

        if (v0->unk_04->unk_84) {
            v3 = sub_0200D3E0(v0->unk_04->unk_18);

            if (v5[v0->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E0C(v0->unk_04->unk_84, 1);
                ov12_02237E18(v0->unk_04->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(v0->unk_04->unk_84) != 0)) {
                    ov12_0223786C(v0->unk_04->unk_84, 0);
                    ov12_02237E30(v0->unk_04->unk_84, 1);

                    if ((v4 & 0x2) && ((v4 & 0x8) == 0)) {
                        {
                            UnkStruct_ov16_0225BFFC * v9;

                            v9 = ov16_0223DF14(v0->unk_00, ov16_0223E258(v0->unk_00, v0->unk_09));

                            ov12_02237E18(v9->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);
                            ov12_02237E0C(v9->unk_84, 1);
                            ov12_0223786C(v9->unk_84, 0);
                            ov12_02237E30(v9->unk_84, 1);
                        }
                    }
                }
            }
        }

        if (v1 <= -40) {
            {
                UnkStruct_0200C704 * v10;

                v10 = ov16_0223E018(v0->unk_00);

                sub_0200D0F4(v0->unk_04->unk_18);
                v0->unk_04->unk_18 = NULL;

                sub_0200D070(v10, 20015 + v0->unk_04->unk_191);
                sub_0200D080(v10, 20010 + v0->unk_04->unk_191);
                sub_0200D090(v10, 20007 + v0->unk_04->unk_191);
                sub_0200D0A0(v10, 20007 + v0->unk_04->unk_191);
            }
            v0->unk_0A = 6;
        }
        break;
    case 3:
        sub_0200D550(v0->unk_04->unk_18, &v1, &v2);
        v3 = sub_0200D3E0(v0->unk_04->unk_18);

        if (v3 == 4) {
            v0->unk_14 = 8;
            v0->unk_0A = 4;
        } else if (v0->unk_04->unk_84 != NULL) {
            if (v5[v0->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E18(v0->unk_04->unk_84, v1 + v5[v0->unk_0C][v3][0], v2 + v5[v0->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(v0->unk_04->unk_84) != v0->unk_18)) {
                    ov12_0223786C(v0->unk_04->unk_84, v0->unk_18);
                    ov12_02237E40(v0->unk_04->unk_84, 1);
                    ov12_02237E30(v0->unk_04->unk_84, 1);

                    if (v0->unk_18 != 3) {
                        sub_02005748(1802);
                    }
                }
            }
        }
        break;
    case 4:
        if (--v0->unk_14 == 0) {
            if (v0->unk_18 == 3) {
                v0->unk_0A = 6;
            } else {
                v0->unk_0A = 5;
            }
        }
        break;
    case 5:
        if (ov12_022377F8(v0->unk_04->unk_84) == 1) {
            break;
        }

        ov12_0223783C(v0->unk_04->unk_84);

        v0->unk_04->unk_84 = NULL;
        v0->unk_0A = 6;
        break;
    case 6:
        ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void    ov16_02260284 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D3CC * v0 = (UnkStruct_ov16_0225D3CC *)param1;
    s16 v1;
    s16 v2;

    switch (v0->unk_0A) {
    case 0:
        if (v0->unk_0B == 2) {
            sub_0200D5DC(v0->unk_04->unk_18, 5, 0);
            sub_0200D550(v0->unk_04->unk_18, &v1, &v2);

            if (v1 >= (256 + 40)) {
                v0->unk_0A++;
            }
        } else {
            sub_0200D5DC(v0->unk_04->unk_18, -5, 0);
            sub_0200D550(v0->unk_04->unk_18, &v1, &v2);

            if (v1 <= -40) {
                v0->unk_0A++;
            }
        }
        break;
    case 1:
    {
        UnkStruct_0200C704 * v3;

        v3 = ov16_0223E018(v0->unk_00);
        sub_0200D0F4(v0->unk_04->unk_18);
        v0->unk_04->unk_18 = NULL;

        sub_0200D070(v3, 20015 + v0->unk_04->unk_191);
        sub_0200D080(v3, 20010 + v0->unk_04->unk_191);
        sub_0200D090(v3, 20007 + v0->unk_04->unk_191);
        sub_0200D0A0(v3, 20007 + v0->unk_04->unk_191);
    }
        ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02260384 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_02260384 * v0 = (UnkStruct_ov16_02260384 *)param1;
    s16 v1, v2;

    switch (v0->unk_0A) {
    case 0:
        sub_0200D550(v0->unk_04, &v1, &v2);

        if (v0->unk_0B == 0) {
            v1 += 5;

            if (v1 >= v0->unk_0C) {
                v1 = v0->unk_0C;
                v0->unk_0A++;
            }
        } else {
            v1 -= 5;

            if (v1 <= v0->unk_0C) {
                v1 = v0->unk_0C;
                v0->unk_0A++;
            }
        }

        sub_0200D4C4(v0->unk_04, v1, v2);
        break;
    case 1:
        ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0226040C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_022674C4 * v0 = param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if (v0->unk_4D > 0) {
            v0->unk_4D--;
            break;
        }

        ov16_022676A8(v0, 0);
        ov16_02267620(v0, 1);
        v0->unk_00.unk_00++;
        break;
    case 1:
        if (v0->unk_4F_1 == 1) {
            v0->unk_00.unk_00++;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_0C, v0->unk_24, v0->unk_4C);
        v0->unk_10 = NULL;
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02260480 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_022674C4 * v0 = param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if (v0->unk_4F_1 == 1) {
            v0->unk_00.unk_00++;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_0C, v0->unk_24, v0->unk_4C);
        v0->unk_10 = NULL;
        sub_0200DA58(param0);
        ov16_02267620(v0, 0);
        break;
    }
}

static void ov16_022604C8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D5B8 * v0;
    UnkStruct_02018340 * v1;
    UnkStruct_ov16_02268A14 * v2;
    UnkStruct_ov16_0225BFFC * v3;
    u32 v4;
    int v5;
    UnkStruct_ov16_022674C4 * v6;

    v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    v1 = ov16_0223DF00(v0->unk_00);
    v2 = ov16_0223E02C(v0->unk_00);
    v3 = ov16_0223DF14(v0->unk_00, v0->unk_09);
    v4 = ov16_0223DF0C(v0->unk_00);
    v5 = ov16_0223E258(v0->unk_00, v0->unk_09);

    if (v5 != v0->unk_09) {
        v6 = ov16_0223F35C(v0->unk_00, v5);
    } else {
        v6 = NULL;
    }

    switch (v0->unk_0A) {
    case 0:

    {
        UnkStruct_ov16_0226AC98 v7;
        int v8;

        for (v8 = 0; v8 < 4; v8++) {
            v7.unk_00[v8] = v0->unk_24[v8];
            v7.unk_08[v8] = v0->unk_2C[v8];
            v7.unk_10[v8] = v0->unk_30[v8];
        }

        ov16_0226AC98(ov16_0223E02C(v0->unk_00), v0->unk_34, &v7);
    }
        v0->unk_0A++;

    case 1:
    {
        UnkStruct_0200B144 * v9;
        UnkStruct_ov16_0225C300 v10;

        v9 = ov16_0223E05C(v0->unk_00);

        if (v4 & 0x400) {
            switch (ov16_0223F228(v0->unk_00)) {
            case 0:
                v10.unk_01 = 2;
                v10.unk_04[0] = v0->unk_09 | (v0->unk_23 << 8);
                v10.unk_02 = 921;
                ov16_0223FB24(v0->unk_00, v9, &v10, 0);
                v0->unk_0A = 3;
                break;
            case 1:
                v10.unk_01 = 0;
                v10.unk_02 = 1226 + ov16_0223E1B4(v0->unk_00, 0);
                v0->unk_35 = ov16_0223FB24(v0->unk_00, v9, &v10, ov16_0223EDF0(v0->unk_00));
                v0->unk_0A = 2;
                break;
            }
        } else {
            if (v4 & 0x20) {
                v10.unk_01 = 8;
                v10.unk_04[0] = ov16_0223E0D8(v0->unk_00, v0->unk_09);
                v10.unk_02 = 922;
            } else if (v4 & 0x200) {
                v10.unk_01 = 8;
                v10.unk_04[0] = ov16_0223E0D8(v0->unk_00, v0->unk_09);
                v10.unk_02 = 1222;
            } else {
                v10.unk_01 = 2;
                v10.unk_04[0] = v0->unk_09 | (v0->unk_23 << 8);
                v10.unk_02 = 921;
            }

            ov16_0223FB24(v0->unk_00, v9, &v10, 0);
            v0->unk_0A = 3;
        }
    }
    break;
    case 2:
        if (sub_0201D724(v0->unk_35) == 0) {
            v0->unk_0A = 3;
        }
        break;
    case 3:
        ov16_0226757C(v0->unk_04);
        ov16_02264798(v3, v0->unk_00);
        v0->unk_0A = 4;
    case 4:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_ov16_02269668 v11;
            NARC * v12;
            NARC * v13;

            v12 = NARC_ctor(7, 5);
            v13 = NARC_ctor(27, 5);

            v11.unk_01 = v0->unk_09;
            v11.unk_00 = v0->unk_34;
            v11.unk_02 = v0->unk_23;
            v11.unk_04 = v0->unk_36;
            v11.unk_06 = v0->unk_38;
            v11.unk_03 = v0->unk_3A;
            v11.unk_08 = ov16_0223EC58(v0->unk_00, v0->unk_09, v0->unk_3B);

            if (v3->unk_193) {
                ov16_0226BCCC(v2, 1);

                if (ov16_0223EBEC(v0->unk_00) & 0x1) {
                    ov16_02268C04(v12, v13, v2, 6, 0, &v11);
                } else if (ov16_0223DF0C(v0->unk_00) & 0x200) {
                    ov16_02268C04(v12, v13, v2, 10, 0, &v11);
                } else if (ov16_0223DF0C(v0->unk_00) & 0x20) {
                    ov16_02268C04(v12, v13, v2, 8, 0, &v11);
                } else if ((v11.unk_00 == 4) && ((ov16_0223DF0C(v0->unk_00) & 0x8) == 0)) {
                    ov16_02268C04(v12, v13, v2, 4, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 3, 0, &v11);
                }

                ov16_0223F288(v0->unk_00, 1);
            } else {
                if (ov16_0223EBEC(v0->unk_00) & 0x1) {
                    ov16_02268C04(v12, v13, v2, 5, 0, &v11);
                } else if (ov16_0223DF0C(v0->unk_00) & 0x200) {
                    ov16_02268C04(v12, v13, v2, 9, 0, &v11);
                } else if (ov16_0223DF0C(v0->unk_00) & 0x20) {
                    ov16_02268C04(v12, v13, v2, 7, 0, &v11);
                } else if (v11.unk_00 != 4) {
                    ov16_02268C04(v12, v13, v2, 1, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 2, 0, &v11);
                }

                v3->unk_193 = 1;
            }

            ov16_0226914C(v2, v0->unk_1C);
            ov16_02269168(v2, v0->unk_10[0], v0->unk_10[1]);
            ov16_022691BC(v2);
            NARC_dtor(v12);
            NARC_dtor(v13);
        }

        if (v6 != NULL) {
            ov16_02268468(v6);
        }

        v0->unk_0A = 5;
        break;
    case 5:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_START) {
            UnkStruct_ov16_0225BFFC * v14;
            int v15;

            for (v15 = 0; v15 < ov16_0223DF1C(v0->unk_00); v15++) {
                v14 = ov16_0223DF14(v0->unk_00, v15);
                ov16_0226737C(&v14->unk_28);
            }
        }

        v0->unk_0C = ov16_0226925C(v2);

        if (v0->unk_0C != 0xffffffff) {
            v0->unk_0B = 10;
            sub_02005748(1501);
            v0->unk_0A = 6;
        }
        break;
    case 6:
        if ((ov16_02269348(v2) == 1) || (v0->unk_0C == 1)) {
            switch (v0->unk_0C) {
            case 1:
                if (ov16_0223DF0C(v0->unk_00) & (0x20 | 0x200)) {
                    v0->unk_0A = 7;
                }
                break;
            case 2:
            {
                NARC * v16 = NARC_ctor(7, 5);
                NARC * v17 = NARC_ctor(27, 5);

                ov16_02268C04(v16, v17, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(v6);
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v3);
                NARC_dtor(v16);
                NARC_dtor(v17);
            }
            break;
            case 3:
            {
                NARC * v18 = NARC_ctor(7, 5);
                NARC * v19 = NARC_ctor(27, 5);

                ov16_02268C04(v18, v19, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(v6);
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v3);
                NARC_dtor(v18);
                NARC_dtor(v19);
            }
            break;
            case 4:
            {
                NARC * v20 = NARC_ctor(7, 5);
                NARC * v21 = NARC_ctor(27, 5);

                if ((ov16_0226D088(v2) == 1)) {
                    ov16_0226846C(v6);
                    v0->unk_0C = 0xff;
                }

                ov16_02268C04(v20, v21, v2, 0, 0, NULL);
                NARC_dtor(v20);
                NARC_dtor(v21);
            }
            break;
            default:
                GF_ASSERT(0);
                break;
            }

            ov16_02269218(v2);
            v0->unk_0A = 8;
        }
        break;
    case 7:
        if (ov16_02269348(v2) == 1) {
            NARC * v22 = NARC_ctor(7, 5);
            NARC * v23 = NARC_ctor(27, 5);

            ov16_02268C04(v22, v23, v2, 0, 0, NULL);
            ov16_0226BCCC(v2, 0);
            ov16_0226846C(v6);
            ov16_022675AC(v0->unk_04);
            ov16_022647D8(v3);
            ov16_02269218(v2);

            v0->unk_0A = 8;

            NARC_dtor(v22);
            NARC_dtor(v23);
        }
        break;
    case 8:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(v0->unk_00, v0->unk_09, v0->unk_0C);
            ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_02260AB4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D5B8 * v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    int v1;

    v1 = ov14_022243BC(v0->unk_00, v0->unk_09);

    ov16_022656D4(v0->unk_00, v0->unk_09, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260AE4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D5B8 * v0 = (UnkStruct_ov16_0225D5B8 *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static const u8 Unk_ov16_0226F194[][2] = {
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

static void ov16_02260B04 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D5B8 * v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    int v1;
    u16 v2;
    u8 v3;

    v3 = ov16_0223ED6C(v0->unk_00);
    v2 = ov16_02252060(ov16_0223DF10(v0->unk_00), v0->unk_09, 0, NULL);
    v1 = sub_020759F0(v2, 26);
    v1 = v1 * Unk_ov16_0226F194[v3][0] / Unk_ov16_0226F194[v3][1];

    if ((ov16_0223F4BC(v0->unk_00) % 255) <= v1) {
        ov16_022656D4(v0->unk_00, v0->unk_09, 4);
    } else {
        ov16_022656D4(v0->unk_00, v0->unk_09, 5);
    }

    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260B84 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D5B8 * v0 = (UnkStruct_ov16_0225D5B8 *)param1;

    ov16_022656D4(v0->unk_00, v0->unk_09, 4);
    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260BAC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D5B8 * v0 = (UnkStruct_ov16_0225D5B8 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_09, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 4) || (v1 == 2)) {
        ov16_02264730(v0->unk_00);
    }

    ov16_022656D4(v0->unk_00, v0->unk_09, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260C00 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D698 * v0 = (UnkStruct_ov16_0225D698 *)param1;
    UnkStruct_02018340 * v1 = ov16_0223DF00(v0->unk_00);
    UnkStruct_ov16_02268A14 * v2;
    int v3;
    UnkStruct_ov16_022674C4 * v4;
    UnkStruct_ov16_0225BFFC * v5;

    v2 = ov16_0223E02C(v0->unk_00);
    v5 = ov16_0223DF14(v0->unk_00, v0->unk_1D);
    v3 = ov16_0223E258(v0->unk_00, v0->unk_1D);

    if (v3 != v0->unk_1D) {
        v4 = ov16_0223F35C(v0->unk_00, v3);
    } else {
        v4 = NULL;
    }

    switch (v0->unk_20) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_0200B144 * v6;
            UnkStruct_ov16_0225C300 v7;

            v6 = ov16_0223E05C(v0->unk_00);
            v7.unk_01 = 2;
            v7.unk_04[0] = v0->unk_1D | (v0->unk_1F << 8);
            v7.unk_02 = 921;

            ov16_0223FB24(v0->unk_00, v6, &v7, 0);
        }

        ov16_02269218(v2);

        {
            UnkStruct_ov16_02260C00 v8;
            int v9;
            NARC * v10 = NARC_ctor(7, 5);
            NARC * v11 = NARC_ctor(27, 5);

            for (v9 = 0; v9 < 4; v9++) {
                v8.unk_00[v9] = v0->unk_0C[v9];
                v8.unk_08[v9] = v0->unk_14[v9];
                v8.unk_0C[v9] = v0->unk_18[v9];
            }

            v8.unk_10 = v0->unk_1E;

            ov16_02268C04(v10, v11, v2, 11, 0, &v8);
            NARC_dtor(v10);
            NARC_dtor(v11);
        }
        v0->unk_20++;
        break;
    case 1:
        v0->unk_08 = ov16_0226925C(v2);

        if (v0->unk_08 != 0xffffffff) {
            sub_02005748(1501);
            v0->unk_20++;
        }
        break;
    case 2:
        if (1) {
            if (v0->unk_08 != 0xff) {
                if ((ov16_0223DF0C(v0->unk_00) & 0x2) == 0) {
                    ov16_0226BCCC(v2, 0);
                    ov16_0226846C(v4);
                    ov16_022675AC(v0->unk_04);
                    ov16_022647D8(v5);
                }
            }

            ov16_02265790(v0->unk_00, v0->unk_1D, v0->unk_08);
            v0->unk_20++;
        }
        break;
    case 3:
        v0->unk_20++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_0223F234(v0->unk_00, 1);
            ov16_02266ABC(v0->unk_00, v0->unk_1D, v0->unk_1C);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_02260DB0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D698 * v0 = (UnkStruct_ov16_0225D698 *)param1;
    UnkStruct_ov16_0224B9DC * v1;
    int v2;
    u32 v3;

    v3 = ov16_0223DF0C(v0->unk_00);
    v1 = ov16_0223DF10(v0->unk_00);

    if ((v3 & (0x1 | 0x100)) || (ov16_0223EBEC(v0->unk_00) & 0x1) || (ov16_0223E208(v0->unk_00, v0->unk_1D) == 0)) {
        v2 = ov14_0221FCF4(v0->unk_00, v0->unk_1D);

        switch (v2) {
        case 0xff:
            return;
            break;
        default:
            v2++;
            break;
        }
    } else {
        {
            int v4;
            int v5[4];
            int v6;

            v6 = 0;

            for (v4 = 0; v4 < 4; v4++) {
                if ((v0->unk_22 & sub_020787CC(v4)) == 0) {
                    v5[v6] = v4 + 1;
                    v6++;
                }
            }

            v2 = v5[ov16_0223F4BC(v0->unk_00) % v6];
        }

        ov16_0225B540(v0->unk_00, v1, 11, v0->unk_1D, ov16_02253954(v0->unk_00, v1, v0->unk_1D, v0->unk_0C[v2 - 1], 1, NULL));
    }

    ov16_02265790(v0->unk_00, v0->unk_1D, v2);
    ov16_02266ABC(v0->unk_00, v0->unk_1D, v0->unk_1C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260E78 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D698 * v0 = (UnkStruct_ov16_0225D698 *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_1D, v0->unk_1C);
    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260E98 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D698 * v0 = (UnkStruct_ov16_0225D698 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_1D, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 4)) {
        ov16_02264730(v0->unk_00);
    } else {
        {
            u16 v2;

            v2 = ov16_02252060(ov16_0223DF10(v0->unk_00), v0->unk_1D, 6 + (v1 - 1), NULL);

            if ((!v2) || (v2 > 467)) {
                ov16_02264730(v0->unk_00);
            }
        }
    }

    ov16_02265790(v0->unk_00, v0->unk_1D, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_1D, v0->unk_1C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02260F14 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D708 * v0 = (UnkStruct_ov16_0225D708 *)param1;
    UnkStruct_02018340 * v1 = ov16_0223DF00(v0->unk_00);
    UnkStruct_ov16_02268A14 * v2;
    int v3;
    UnkStruct_ov16_022674C4 * v4;
    UnkStruct_ov16_0225BFFC * v5;

    v5 = ov16_0223DF14(v0->unk_00, v0->unk_0D);
    v2 = ov16_0223E02C(v0->unk_00);
    v3 = ov16_0223E258(v0->unk_00, v0->unk_0D);

    if (v3 != v0->unk_0D) {
        v4 = ov16_0223F35C(v0->unk_00, v3);
    } else {
        v4 = NULL;
    }

    switch (v0->unk_0F) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_ov16_02260F14 v6;
            int v7;
            NARC * v8 = NARC_ctor(7, 5);
            NARC * v9 = NARC_ctor(27, 5);

            for (v7 = 0; v7 < 4; v7++) {
                v6.unk_00[v7] = v0->unk_10[v7];
            }

            v6.unk_20 = v0->unk_0E;
            v6.unk_21 = ov16_02269368(v0->unk_30, v0->unk_0E);

            ov16_02268C04(v8, v9, v2, 12, 0, &v6);
            NARC_dtor(v8);
            NARC_dtor(v9);
        }

        v0->unk_0F++;
        break;
    case 1:
        v0->unk_08 = ov16_0226925C(v2);

        if (v0->unk_08 != 0xffffffff) {
            sub_02005748(1501);
            v0->unk_0F++;
        }
        break;
    case 2:
        if (1) {
            if (v0->unk_08 != 0xff) {
                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v5);
                ov16_0226846C(v4);

                if (v0->unk_32 == 1) {
                    ov16_0226BCCC(v2, 0);
                }
            }

            v0->unk_0F++;
        }
        break;
    case 3:
        v0->unk_0F++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            {
                u8 v10[6];
                u32 v11;
                int v12;

                v12 = v0->unk_08;
                v11 = ov16_0223DF0C(v0->unk_00);

                if (v12 != 0xff) {
                    ov16_0223F858(v0->unk_00, &v10[0]);

                    if (v11 & 0x2) {
                        v12 = v10[2 + (v0->unk_08 - 1)] + 1;
                    } else {
                        v12 = v10[0 + (v0->unk_08 - 1)] + 1;
                    }
                }

                ov16_022658CC(v0->unk_00, v0->unk_0D, v12);
                ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);
                Heap_FreeToHeap(param1);
                sub_0200DA58(param0);
            }
        }
        break;
    }
}

static void ov16_022610A8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D708 * v0 = (UnkStruct_ov16_0225D708 *)param1;
    UnkStruct_ov16_0224B9DC * v1;
    int v2;

    v1 = ov16_0223DF10(v0->unk_00);
    v2 = ov16_0225B45C(v0->unk_00, v1, 11, v0->unk_0D) + 1;

    GF_ASSERT(v2 < 5);

    ov16_022658CC(v0->unk_00, v0->unk_0D, v2);
    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_022610EC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D708 * v0 = (UnkStruct_ov16_0225D708 *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_0226110C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D708 * v0 = (UnkStruct_ov16_0225D708 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 4)) {
        ov16_02264730(v0->unk_00);
    } else {
        {
            int v2 = v1 - 1;

            switch (v0->unk_30) {
            case 0x0:

                if (v0->unk_0D == v2) {
                    ov16_02264730(v0->unk_00);
                }
                break;
            case 0x200:

                if (ov16_0223E208(v0->unk_00, v0->unk_0D) != ov16_0223E208(v0->unk_00, v2)) {
                    ov16_02264730(v0->unk_00);
                }
                break;
            case 0x1:
            case 0x2:
            case 0x4:
            case 0x8:
            case 0x10:
            case 0x20:
            case 0x40:
            case 0x80:
            case 0x100:
            case 0x400:
                break;
            }
        }
    }

    ov16_022658CC(v0->unk_00, v0->unk_0D, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_022611DC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D794 * v0 = (UnkStruct_ov16_0225D794 *)param1;
    UnkStruct_02002F38 * v1;

    v1 = ov16_0223E064(v0->unk_00);

    switch (v0->unk_0E) {
    case 0:
        v0->unk_10 = ov16_0226CD08(ov16_0223E02C(v0->unk_00));
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 0, 7, 0x0);
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 0, 16, 0x0);
        v0->unk_0E++;
        break;
    case 1:
        if (sub_0200384C(v1) == 0) {
            {
                ov16_0223B384(v0->unk_00);

                v0->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_022264F4));
                memset(v0->unk_04, 0, sizeof(UnkStruct_ov13_022264F4));

                v0->unk_04->unk_00 = v0->unk_00;
                v0->unk_04->unk_04 = ov16_0223E16C(v0->unk_00, v0->unk_0D);
                v0->unk_04->unk_0C = 5;
                v0->unk_04->unk_26 = 0;
                v0->unk_04->unk_08 = ov16_0223E1AC(v0->unk_00);
                v0->unk_04->unk_10 = v0->unk_0D;
                v0->unk_04->unk_25 = v0->unk_10;
                v0->unk_04->unk_22 = v0->unk_14;
                v0->unk_04->unk_23 = v0->unk_15;
                v0->unk_04->unk_24 = v0->unk_16;
                v0->unk_04->unk_18 = v0->unk_30[v0->unk_0D];
                ov13_022264F4(v0->unk_04);
                v0->unk_0E = 3;
            }
        }
        break;
    case 2:
        v0->unk_04->unk_25 = v0->unk_10;
        ov13_022264F4(v0->unk_04);
        v0->unk_0E++;
    case 3:
        if (v0->unk_04->unk_26) {
            v0->unk_04->unk_26 = 0;
            v0->unk_10 = v0->unk_04->unk_25;

            if (v0->unk_04->unk_1C) {
                switch (v0->unk_04->unk_1E) {
                case 1:
                case 0:
                    v0->unk_0E = 4;
                    break;
                case 3:
                case 2:
                    v0->unk_0E = 6;
                    break;
                }
            } else {
                v0->unk_0E = 6;
            }
        }
        break;
    case 4:
    {
        int v2;
        int v3 = 0;
        int v4;
        Party * v5 = ov16_0223DF20(v0->unk_00, v0->unk_0D);
        Pokemon * v6;

        if ((ov16_0223DF0C(v0->unk_00) & 0x2) && ((ov16_0223DF0C(v0->unk_00) & 0x8) == 0)) {
            v4 = v0->unk_0D & 1;
        } else {
            v4 = v0->unk_0D;
        }

        Party_InitWithCapacity(v0->unk_08->unk_04->unk_00, 6);

        for (v2 = 0; v2 < Party_GetCurrentCount(v5); v2++) {
            v6 = ov16_0223DFAC(v0->unk_00, v4, v0->unk_18[v4][v2]);
            Party_AddPokemon(v0->unk_08->unk_04->unk_00, v6);
            v0->unk_08->unk_04->unk_2C[v2] = v0->unk_18[v4][v2];
        }

        v0->unk_08->unk_04->unk_08 = v0->unk_00;
        v0->unk_08->unk_04->unk_0C = 5;
        v0->unk_08->unk_04->unk_11 = 0;
        v0->unk_08->unk_04->unk_36 = 0;
        v0->unk_08->unk_04->unk_24 = 0;
        v0->unk_08->unk_04->unk_35 = 2;
        v0->unk_08->unk_04->unk_22 = v0->unk_04->unk_1C;
        v0->unk_08->unk_04->unk_33 = v0->unk_04->unk_1E;
        v0->unk_08->unk_04->unk_28 = v0->unk_04->unk_10;
        v0->unk_08->unk_04->unk_32 = v0->unk_10;
        v0->unk_08->unk_04->unk_14 = v0->unk_08->unk_0C[v0->unk_0D];
        v0->unk_08->unk_04->unk_15 = v0->unk_08->unk_0C[ov16_0223E258(v0->unk_00, v0->unk_0D)];

        if (v0->unk_0F == 4) {
            v0->unk_08->unk_04->unk_18[0] = v0->unk_30[ov16_0223E258(v0->unk_00, v0->unk_0D)];
            v0->unk_08->unk_04->unk_18[1] = v0->unk_30[v0->unk_0D];
        } else {
            v0->unk_08->unk_04->unk_18[0] = v0->unk_30[v0->unk_0D];
            v0->unk_08->unk_04->unk_18[1] = v0->unk_30[ov16_0223E258(v0->unk_00, v0->unk_0D)];
        }

        ov13_0221FC20(v0->unk_08->unk_04);
        v0->unk_0E++;
    }
    break;
    case 5:
        if (v0->unk_08->unk_04->unk_36) {
            v0->unk_10 = v0->unk_08->unk_04->unk_32;
            v0->unk_08->unk_04->unk_36 = 0;

            if (v0->unk_08->unk_04->unk_11 == 6) {
                v0->unk_0E = 2;
            } else {
                v0->unk_0E = 6;
            }
        }
        break;
    case 6:
        ov16_0223B430(v0->unk_00);
        ov16_0226CD10(ov16_0223E02C(v0->unk_00), v0->unk_10);
        sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 7, 0, 0x0);
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 16, 0, 0x0);
        v0->unk_0E++;
        break;
    case 7:
        if (sub_0200384C(v1) == 0) {
            sub_02015738(ov16_0223E220(v0->unk_00), 0);

            if (v0->unk_04->unk_1C) {
                v0->unk_0E = 9;

                switch (v0->unk_04->unk_1E) {
                case 1:
                    if ((v0->unk_04->unk_1C == 28) || (v0->unk_04->unk_1C == 29)) {
                        v0->unk_0E = 8;
                    } else if (((v0->unk_08->unk_04->unk_11 < 2) && ((ov16_0223DF0C(v0->unk_00) == (0x2 | 0x1)) || (ov16_0223DF0C(v0->unk_00) == ((0x2 | 0x1) | 0x10)))) || (v0->unk_08->unk_04->unk_11 < 1)) {
                        if (v0->unk_04->unk_1C == 23) {
                            if (ov16_0223EDAC(v0->unk_00) == 1) {
                                v0->unk_12 = 17;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 21;
                            }
                        } else {
                            if (ov16_0223EDAC(v0->unk_00) == 1) {
                                v0->unk_12 = 25;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 29;
                            }
                        }
                    } else {
                        v0->unk_0E = 8;
                    }
                    break;
                case 0:
                    if ((((v0->unk_08->unk_04->unk_11 < 2) && ((ov16_0223DF0C(v0->unk_00) == (0x2 | 0x1)) || (ov16_0223DF0C(v0->unk_00) == ((0x2 | 0x1) | 0x10)))) || (v0->unk_08->unk_04->unk_11 < 1)) && (Item_GetAttribute(v0->unk_04->unk_1C, 38, 5))) {
                        if (ov16_0223EDAC(v0->unk_00) == 1) {
                            v0->unk_12 = 17;
                        } else {
                            sub_02005728(1516, -117);
                            v0->unk_12 = 21;
                        }
                    } else {
                        v0->unk_0E = 8;
                    }
                    break;
                case 3:
                    if ((v0->unk_04->unk_1C == 63) || (v0->unk_04->unk_1C == 64)) {
                        v0->unk_0E = 8;
                    } else {
                        if (v0->unk_04->unk_1C == 55) {
                            if (ov16_0223EDAC(v0->unk_00) == 1) {
                                v0->unk_12 = 13;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 15;
                            }
                        } else {
                            if (ov16_0223EDAC(v0->unk_00) == 1) {
                                v0->unk_12 = 11;
                            } else {
                                sub_02005728(1516, -117);
                                v0->unk_12 = 15;
                            }
                        }
                    }
                    break;
                case 2:
                    v0->unk_0E = 8;
                    break;
                }
            } else {
                v0->unk_0E = 8;
            }

            if (v0->unk_0E != 8) {
                ov16_0223B748(v0->unk_00, 0);
            }
        }
        break;
    case 8:
    {
        UnkStruct_ov16_0224DDA8 v7;

        if (v0->unk_04->unk_1C == 0) {
            v7.unk_00 = 0xff;
        } else {
            v7.unk_00 = v0->unk_04->unk_1C;
            v7.unk_02 = v0->unk_04->unk_1E;

            if ((v0->unk_04->unk_1E == 1) || (v0->unk_04->unk_1E == 0)) {
                v7.unk_03 = 1 + v0->unk_08->unk_04->unk_2C[v0->unk_08->unk_04->unk_11];
            }
        }

        ov16_02265A70(v0->unk_00, v0->unk_0D, v7);
        ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

        Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
        Heap_FreeToHeap(v0->unk_08->unk_04);
        Heap_FreeToHeap(v0->unk_08);
        Heap_FreeToHeap(v0->unk_04);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
    }
    break;
    case 9:
    {
        UnkStruct_0200B144 * v8;
        UnkStruct_ov16_0225C300 v9;

        v9.unk_02 = 1206;
        v9.unk_01 = 5;
        v9.unk_04[0] = v0->unk_04->unk_1C;

        v8 = ov16_0223E05C(v0->unk_00);

        v0->unk_11 = ov16_0223FB24(v0->unk_00, v8, &v9, ov16_0223EDF0(v0->unk_00));
        v0->unk_17 = 30;
        v0->unk_0E++;
    }
    break;
    case 10:
        if (sub_0201D724(v0->unk_11) == 0) {
            if (--v0->unk_17 == 0) {
                v0->unk_0E = v0->unk_12;
            }
        }
        break;
    case 11:
    {
        UnkStruct_ov16_02265BBC v10;

        ov16_02266B78(v0->unk_00, NULL, &v10, 1, 9, v0->unk_0D, v0->unk_0D, NULL);
        ov16_02264408(v0->unk_00, ov16_0223DF14(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v10);
    }
        v0->unk_0E++;
        break;
    case 17:
    case 25:
    {
        UnkStruct_ov16_02265BBC v11;
        int v12;

        v12 = v0->unk_08->unk_04->unk_11 * 2;
        ov16_02266B78(v0->unk_00, NULL, &v11, 1, 9, v12, v12, NULL);
        ov16_02264408(v0->unk_00, ov16_0223DF14(v0->unk_00, v12), ov16_0223E008(v0->unk_00), &v11);
    }
        v0->unk_0E++;
        break;
    case 13:
    {
        UnkStruct_ov16_02265BBC v13;

        if (v0->unk_04->unk_1C == 55) {
            ov16_02266B78(v0->unk_00, NULL, &v13, 0, NULL, v0->unk_0D, v0->unk_0D, 54);
            ov16_02264408(v0->unk_00, ov16_0223DF14(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        } else if (v0->unk_04->unk_1C == 56) {
            ov16_02266B78(v0->unk_00, NULL, &v13, 0, NULL, v0->unk_0D, v0->unk_0D, 116);
            ov16_02264408(v0->unk_00, ov16_0223DF14(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        } else {
            ov16_02266B78(v0->unk_00, NULL, &v13, 1, 12, v0->unk_0D, v0->unk_0D, NULL);
            ov16_02264408(v0->unk_00, ov16_0223DF14(v0->unk_00, v0->unk_0D), ov16_0223E008(v0->unk_00), &v13);
        }

        v0->unk_0E++;
    }
    break;
    case 15:
    {
        UnkStruct_0200B144 * v14;
        UnkStruct_ov16_0225C300 v15;

        v15.unk_02 = 1203;
        v15.unk_01 = 12;
        v15.unk_04[0] = v0->unk_0D | (v0->unk_08->unk_0C[v0->unk_0D] << 8);

        switch (v0->unk_04->unk_1C) {
        case 57:
            v15.unk_04[1] = 0x1;
            break;
        case 58:
            v15.unk_04[1] = 0x2;
            break;
        case 59:
            v15.unk_04[1] = 0x3;
            break;
        case 60:
            v15.unk_04[1] = 0x6;
            break;
        case 61:
            v15.unk_04[1] = 0x4;
            break;
        case 62:
            v15.unk_04[1] = 0x5;
            break;
        case 55:
            v15.unk_02 = 1204;
            v15.unk_01 = 0;
            break;
        case 56:
            v15.unk_02 = 1205;
            v15.unk_01 = 2;
            break;
        }

        v14 = ov16_0223E05C(v0->unk_00);
        v0->unk_11 = ov16_0223FB24(v0->unk_00, v14, &v15, ov16_0223EDF0(v0->unk_00));
        v0->unk_17 = 30;
    }
        v0->unk_0E++;
        break;
    case 19:
    case 27:
    {
        UnkStruct_ov16_02265BBC v16;
        int v17;

        v17 = v0->unk_08->unk_04->unk_11 * 2;
        ov16_02266B78(v0->unk_00, NULL, &v16, 1, 14, v17, v17, NULL);
        ov16_02264408(v0->unk_00, ov16_0223DF14(v0->unk_00, v17), ov16_0223E008(v0->unk_00), &v16);
    }
        v0->unk_0E++;
        break;
    case 21:
    {
        UnkStruct_ov16_022674C4 * v18;
        Pokemon * v19;
        int v20;
        int v21;

        v20 = v0->unk_08->unk_04->unk_11 * 2;
        v21 = v0->unk_08->unk_04->unk_2C[v0->unk_08->unk_04->unk_11];

        v18 = ov16_0223F35C(v0->unk_00, v20);
        MI_CpuClear8(&v18->unk_00, sizeof(UnkStruct_ov16_022674C4_sub1));
        v18->unk_25 = ov16_0226825C(ov16_0223E1F8(v0->unk_00, v20), ov16_0223DF0C(v0->unk_00));

        v19 = ov16_0223DFAC(v0->unk_00, v20, v21);
        v18->unk_28 = GetMonData(v19, MON_DATA_163, NULL) - v0->unk_08->unk_04->unk_20;
        v18->unk_2C = GetMonData(v19, MON_DATA_164, NULL);
        v18->unk_30 = v0->unk_08->unk_04->unk_20;

        if (GetMonData(v19, MON_DATA_160, NULL) == 0) {
            v18->unk_4A = 0;
        }

        ov16_022674C4(v18, v18->unk_30);
    }
        v0->unk_0E++;
        break;
    case 22:
    {
        UnkStruct_ov16_022674C4 * v22;
        int v23;

        v23 = v0->unk_08->unk_04->unk_11 * 2;
        v22 = ov16_0223F35C(v0->unk_00, v23);

        if (ov16_022674F8(v22) == -1) {
            ov16_02267084(v22, NULL, (1 << 8));
            v0->unk_0E++;
        }
    }
    break;
    case 23:
    {
        UnkStruct_0200B144 * v24;
        UnkStruct_ov16_0225C300 v25;
        int v26;

        v24 = ov16_0223E05C(v0->unk_00);
        v26 = v0->unk_08->unk_04->unk_11 * 2;

        if (v0->unk_08->unk_04->unk_20) {
            v25.unk_02 = 1214;
            v25.unk_01 = 17;
            v25.unk_04[0] = v26 | (v0->unk_08->unk_0C[v26] << 8);
            v25.unk_04[1] = v0->unk_08->unk_04->unk_20;
        } else {
            v25.unk_02 = 1250;
            v25.unk_01 = 2;
            v25.unk_04[0] = v26 | (v0->unk_08->unk_0C[v26] << 8);
        }

        v0->unk_11 = ov16_0223FB24(v0->unk_00, v24, &v25, ov16_0223EDF0(v0->unk_00));
        v0->unk_17 = 30;

        v0->unk_0E++;
    }
    break;
    case 29:
    {
        UnkStruct_ov16_022674C4 * v27;
        int v28;
        UnkStruct_0200B144 * v29;
        UnkStruct_ov16_0225C300 v30;
        int v31;
        int v32 = 0;
        Pokemon * v33;
        int v34;

        v28 = v0->unk_08->unk_04->unk_11 * 2;
        v27 = ov16_0223F35C(v0->unk_00, v28);
        v34 = v0->unk_08->unk_04->unk_2C[v0->unk_08->unk_04->unk_11];
        v33 = ov16_0223DFAC(v0->unk_00, v28, v34);

        if (GetMonData(v33, MON_DATA_160, NULL) == 0) {
            v27->unk_4A = 0;
        }

        ov16_02267084(v27, v27->unk_28, (1 << 8));

        v30.unk_01 = 2;
        v30.unk_04[0] = v28 | (v0->unk_08->unk_0C[v28] << 8);

        if (Item_GetAttribute(v0->unk_04->unk_1C, 15, 5)) {
            v31 = 0;
            v32++;
        }

        if (Item_GetAttribute(v0->unk_04->unk_1C, 16, 5)) {
            v31 = 1;
            v32++;
        }

        if (Item_GetAttribute(v0->unk_04->unk_1C, 17, 5)) {
            v31 = 2;
            v32++;
        }

        if (Item_GetAttribute(v0->unk_04->unk_1C, 18, 5)) {
            v31 = 3;
            v32++;
        }

        if (Item_GetAttribute(v0->unk_04->unk_1C, 19, 5)) {
            v31 = 4;
            v32++;
        }

        if (Item_GetAttribute(v0->unk_04->unk_1C, 20, 5)) {
            v31 = 5;
            v32++;
        }

        if (Item_GetAttribute(v0->unk_04->unk_1C, 21, 5)) {
            v31 = 6;
            v32++;
        }

        if (v32 != 1) {
            v30.unk_02 = 1229;
        } else {
            switch (v31) {
            case 0:
                v30.unk_02 = 1210;
                break;
            case 1:
                v30.unk_02 = 1207;
                break;
            case 2:
                v30.unk_02 = 1209;
                break;
            case 3:
                v30.unk_02 = 1211;
                break;
            case 4:
                v30.unk_02 = 1208;
                break;
            case 5:
                v30.unk_02 = 1212;
                break;
            case 6:
                v30.unk_02 = 1213;
                break;
            }
        }

        v29 = ov16_0223E05C(v0->unk_00);
        v0->unk_11 = ov16_0223FB24(v0->unk_00, v29, &v30, ov16_0223EDF0(v0->unk_00));
        v0->unk_17 = 30;
    }
        v0->unk_0E++;
        break;

    case 12:
    case 14:
    case 18:
    case 20:
    case 26:
    case 28:
        ov12_0222016C(ov16_0223E008(v0->unk_00));

        if (ov12_02220188(ov16_0223E008(v0->unk_00)) == 0) {
            ov12_02220198(ov16_0223E008(v0->unk_00));
            v0->unk_0E++;
        }
        break;
    case 16:
    case 24:
    case 30:
        if (sub_0201D724(v0->unk_11) == 0) {
            if (--v0->unk_17 == 0) {
                ov16_0223B748(v0->unk_00, 1);
                v0->unk_0E = 8;
            }
        }
        break;
    }
}

static void ov16_02261D50 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D794 * v0 = (UnkStruct_ov16_0225D794 *)param1;
    UnkStruct_ov16_0224DDA8 v1;

    v1.unk_00 = 1;

    ov16_02265A70(v0->unk_00, v0->unk_0D, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
    Heap_FreeToHeap(v0->unk_08->unk_04);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02261DA8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D794 * v0 = (UnkStruct_ov16_0225D794 *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
    Heap_FreeToHeap(v0->unk_08->unk_04);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02261DE0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D794 * v0 = (UnkStruct_ov16_0225D794 *)param1;
    UnkStruct_ov16_0224DDA8 v1;
    u8 v2;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v2) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    v1.unk_00 = v2;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v2) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    v1.unk_00 |= (v2 << 8);

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v2) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    v1.unk_02 = v2 & 0xf;
    v1.unk_03 = (v2 & 0xf0) >> 8;

    ov16_02265A70(v0->unk_00, v0->unk_0D, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(v0->unk_08->unk_04->unk_00);
    Heap_FreeToHeap(v0->unk_08->unk_04);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_02261E8C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D840 * v0 = (UnkStruct_ov16_0225D840 *)param1;
    UnkStruct_02002F38 * v1;

    v1 = ov16_0223E064(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:

    {
        UnkStruct_0205AA50 * v2 = ov16_0223DF04(v0->unk_00, 0);

        sub_0201ADA4(v2, 0xff);
        sub_0201ACCC(v2);
    }

        v0->unk_17 = ov16_0226CD08(ov16_0223E02C(v0->unk_00));
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 0, 7, 0x0);
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 0, 16, 0x0);
        v0->unk_0A++;
        break;
    case 1:
        if (sub_0200384C(v1) == 0) {
            {
                int v3;
                int v4 = 0;
                int v5;
                int v6, v7;
                Party * v8;
                Pokemon * v9, * v10;

                ov16_0223B384(v0->unk_00);

                v0->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_0221FC20));
                v0->unk_04->unk_00 = sub_02079FF4(5);

                if (((ov16_0223DF0C(v0->unk_00) & (0x4 | 0x8)) == (0x4 | 0x8)) || (ov16_0223DF0C(v0->unk_00) == (((0x2 | 0x1) | 0x8 | 0x40) | 0x80))) {
                    if (ov16_0223E1F8(v0->unk_00, v0->unk_09) == 2) {
                        v6 = v0->unk_09;
                        v7 = ov16_0223E258(v0->unk_00, v0->unk_09);
                    } else {
                        v6 = ov16_0223E258(v0->unk_00, v0->unk_09);
                        v7 = v0->unk_09;
                    }

                    v9 = AllocMonZeroed(5);

                    for (v3 = 0; v3 < 6; v3++) {
                        Party_AddPokemon(v0->unk_04->unk_00, v9);
                    }

                    Heap_FreeToHeap(v9);

                    for (v3 = 0; v3 < ov16_0223DF60(v0->unk_00, v6); v3++) {
                        v9 = ov16_0223DFAC(v0->unk_00, v6, v0->unk_1C[v6][v3]);
                        v10 = Party_GetPokemonBySlotIndex(v0->unk_04->unk_00, v3 * 2);
                        sub_020775EC(v9, v10);
                        v0->unk_04->unk_2C[v3 * 2] = v0->unk_1C[v6][v3];
                    }

                    for (v3 = 0; v3 < ov16_0223DF60(v0->unk_00, v7); v3++) {
                        v9 = ov16_0223DFAC(v0->unk_00, v7, v0->unk_1C[v7][v3]);
                        v10 = Party_GetPokemonBySlotIndex(v0->unk_04->unk_00, v3 * 2 + 1);
                        sub_020775EC(v9, v10);
                        v0->unk_04->unk_2C[v3 * 2 + 1] = v0->unk_1C[v7][v3];
                    }

                    if (ov16_0223E1F8(v0->unk_00, v0->unk_09) == 4) {
                        v0->unk_04->unk_11 = 1;
                    } else {
                        v0->unk_04->unk_11 = 0;
                    }
                } else {
                    if ((ov16_0223DF0C(v0->unk_00) & 0x2) && ((ov16_0223DF0C(v0->unk_00) & 0x8) == 0)) {
                        v5 = v0->unk_09 & 1;
                    } else {
                        v5 = v0->unk_09;
                    }

                    if (ov16_0223E1F8(v0->unk_00, v0->unk_09) == 4) {
                        v0->unk_04->unk_11 = 1;
                    } else {
                        v0->unk_04->unk_11 = 0;
                    }

                    v8 = ov16_0223DF20(v0->unk_00, v0->unk_09);

                    for (v3 = 0; v3 < Party_GetCurrentCount(v8); v3++) {
                        v9 = ov16_0223DFAC(v0->unk_00, v5, v0->unk_1C[v5][v3]);
                        Party_AddPokemon(v0->unk_04->unk_00, v9);
                        v0->unk_04->unk_2C[v3] = v0->unk_1C[v5][v3];
                    }
                }

                v0->unk_04->unk_08 = v0->unk_00;
                v0->unk_04->unk_0C = 5;
                v0->unk_04->unk_36 = 0;
                v0->unk_04->unk_24 = v0->unk_10;
                v0->unk_04->unk_12 = v0->unk_16;
                v0->unk_04->unk_35 = v0->unk_0B;
                v0->unk_04->unk_22 = v0->unk_14;
                v0->unk_04->unk_28 = v0->unk_09;
                v0->unk_04->unk_32 = v0->unk_17;

                if ((v0->unk_18 & sub_020787CC(v0->unk_09)) == 0) {
                    v0->unk_04->unk_14 = v0->unk_0C[v0->unk_09];
                } else {
                    v0->unk_04->unk_14 = 6;
                }

                if (ov16_0223DF0C(v0->unk_00) & 0x8) {
                    v0->unk_04->unk_15 = 6;
                } else if ((v0->unk_18 & sub_020787CC(ov16_0223E258(v0->unk_00, v0->unk_09))) == 0) {
                    v0->unk_04->unk_15 = v0->unk_0C[ov16_0223E258(v0->unk_00, v0->unk_09)];
                } else {
                    v0->unk_04->unk_15 = 6;
                }

                ov13_0221FC20(v0->unk_04);
                v0->unk_0A++;
            }
        }
        break;
    case 2:
        if (v0->unk_04->unk_36) {
            ov16_0223B430(v0->unk_00);
            ov16_0226CD10(ov16_0223E02C(v0->unk_00), v0->unk_04->unk_32);
            sub_02003178(v1, (0x1 | 0x4), 0xc00, -8, 7, 0, 0x0);
            sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 16, 0, 0x0);
            v0->unk_0A++;
        }
        break;
    case 3:
        if (sub_0200384C(v1) == 0) {
            sub_02015738(ov16_0223E220(v0->unk_00), 0);

            if (v0->unk_04->unk_11 == 6) {
                ov16_02265B10(v0->unk_00, v0->unk_09, 0xff);
            } else {
                ov16_02265B10(v0->unk_00, v0->unk_09, 1 + v0->unk_04->unk_2C[v0->unk_04->unk_11]);
            }

            ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_FreeToHeap(v0->unk_04->unk_00);
            Heap_FreeToHeap(v0->unk_04);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_02262258 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D840 * v0 = (UnkStruct_ov16_0225D840 *)param1;
    int v1;
    Party * v2;
    Pokemon * v3;
    int v4, v5;
    u32 v6;

    v6 = ov16_0223DF0C(v0->unk_00);
    v4 = v0->unk_09;

    if ((v6 & 0x10) || (v6 & 0x8)) {
        v5 = v4;
    } else {
        v5 = ov16_0223E258(v0->unk_00, v4);
    }

    v1 = ov16_0225BE28(v0->unk_00, v4);

    if (v1 == 6) {
        v1 = ov16_0225BA88(v0->unk_00, v4);

        if (v1 == 6) {
            v2 = ov16_0223DF20(v0->unk_00, v0->unk_09);

            for (v1 = 0; v1 < Party_GetCurrentCount(v2); v1++) {
                v3 = ov16_0223DFAC(v0->unk_00, v0->unk_09, v1);

                if ((GetMonData(v3, MON_DATA_163, NULL)) && (v0->unk_0C[v4] != v1) && (v0->unk_0C[v5] != v1)) {
                    break;
                }
            }
        }
    }

    ov16_02265B10(v0->unk_00, v0->unk_09, 1 + v1);
    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_0226230C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D840 * v0 = (UnkStruct_ov16_0225D840 *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void  ov16_0226232C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D840 * v0 = (UnkStruct_ov16_0225D840 *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_09, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || (v1 > 6)) {
        ov16_02264730(v0->unk_00);
    } else {
        {
            Party * v2;
            Pokemon * v3;
            int v4 = v1 - 1;

            v2 = ov16_0223DF20(v0->unk_00, v0->unk_09);

            if ((v4 == v0->unk_0C[v0->unk_09]) || (v4 == v0->unk_16)) {
                ov16_02264730(v0->unk_00);
            } else if (v1 > Party_GetCurrentCount(v2)) {
                ov16_02264730(v0->unk_00);
            } else {
                v3 = ov16_0223DFAC(v0->unk_00, v0->unk_09, v1 - 1);

                if (GetMonData(v3, MON_DATA_163, NULL) == 0) {
                    ov16_02264730(v0->unk_00);
                }

                if (GetMonData(v3, MON_DATA_SPECIES_EGG, NULL) == 494) {
                    ov16_02264730(v0->unk_00);
                }
            }
        }
    }

    ov16_02265B10(v0->unk_00, v0->unk_09, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_022623F0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D8AC * v0 = param1;
    UnkStruct_02018340 * v1 = ov16_0223DF00(v0->unk_00);
    UnkStruct_ov16_02268A14 * v2 = ov16_0223E02C(v0->unk_00);
    int v3;
    UnkStruct_ov16_022674C4 * v4;
    UnkStruct_ov16_0225BFFC * v5;

    v5 = ov16_0223DF14(v0->unk_00, v0->unk_0D);
    v3 = ov16_0223E258(v0->unk_00, v0->unk_0D);

    if (v3 != v0->unk_0D) {
        v4 = ov16_0223F35C(v0->unk_00, v3);
    } else {
        v4 = NULL;
    }

    switch (v0->unk_0E) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        if (v0->unk_10) {
            {
                UnkStruct_0205AA50 * v6;
                UnkStruct_0200B144 * v7;
                UnkStruct_ov16_0225C300 v8;

                v7 = ov16_0223E05C(v0->unk_00);

                if (v0->unk_0F == 5) {
                    v8.unk_01 = 2 | 0x80;
                    v8.unk_04[0] = v0->unk_14;
                } else {
                    v8.unk_01 = 0;
                }

                v8.unk_02 = v0->unk_10;
                v0->unk_1A = ov16_0223FB24(v0->unk_00, v7, &v8, ov16_0223EDF0(v0->unk_00));
            }
        }

        v0->unk_0E = 1;
        break;
    case 1:
        if ((sub_0201D724(v0->unk_1A) == 0) || (v0->unk_10 == NULL)) {
            {
                NARC * v9 = NARC_ctor(7, 5);
                NARC * v10 = NARC_ctor(27, 5);
                UnkStruct_ov16_022623F0 v11;

                ov16_02269218(v2);

                v11.unk_00 = v0->unk_18;

                switch (v0->unk_0F) {
                case 0:
                case 5:
                    ov16_02268C04(v9, v10, v2, 13, 0, &v11);
                    break;
                case 1:
                    ov16_02268C04(v9, v10, v2, 14, 0, &v11);
                    break;
                case 2:
                    ov16_02268C04(v9, v10, v2, 15, 0, &v11);
                    break;
                case 3:
                    ov16_02268C04(v9, v10, v2, 16, 0, &v11);
                    break;
                case 4:
                    ov16_02268C04(v9, v10, v2, 17, 0, &v11);
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }

                v0->unk_0E = 2;

                NARC_dtor(v9);
                NARC_dtor(v10);
            }
        }
        break;
    case 2:
        v0->unk_08 = ov16_0226925C(v2);

        if (v0->unk_08 != 0xffffffff) {
            sub_02005748(1501);
            v0->unk_0E = 3;
        }
        break;
    case 3:
        if (ov16_02269348(v2) == 1) {
            {
                NARC * v12 = NARC_ctor(7, 5);
                NARC * v13 = NARC_ctor(27, 5);

                ov16_022675AC(v0->unk_04);
                ov16_022647D8(v5);
                ov16_0226846C(v4);
                ov16_02269218(v2);
                ov16_02268C04(v12, v13, v2, 0, 0, NULL);

                if (v0->unk_08 == 1) {
                    ov16_0226BCCC(v2, 0);
                }

                v0->unk_0E = 4;

                NARC_dtor(v12);
                NARC_dtor(v13);
            }
        }
        break;
    case 4:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(v0->unk_00, v0->unk_0D, v0->unk_08);
            ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_0226262C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D8AC * v0 = (UnkStruct_ov16_0225D8AC *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_0226264C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D8AC * v0 = (UnkStruct_ov16_0225D8AC *)param1;

    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_0226266C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D8AC * v0 = (UnkStruct_ov16_0225D8AC *)param1;
    u8 v1;

    if (ov16_0223F530(v0->unk_00, v0->unk_0D, &v1) == 1) {
        ov16_0226474C(v0->unk_00);
    }

    if ((!v1) || ((v1 != 0xff) && (v1 != 1))) {
        ov16_02264730(v0->unk_00);
    }

    ov16_022656D4(v0->unk_00, v0->unk_0D, v1);
    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

static void ov16_022626C0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D9A8 * v0 = (UnkStruct_ov16_0225D9A8 *)param1;

    switch (v0->unk_6A) {
    case 0:
        if ((v0->unk_10.unk_0E_0) && (v0->unk_10.unk_4C == 0) && (sub_020080C0(v0->unk_08, 6) == 0)) {
            {
                UnkStruct_ov16_02265BBC v1;

                ov16_02266B78(v0->unk_00, NULL, &v1, 1, 15, v0->unk_69, v0->unk_69, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v1);
            }
            v0->unk_6A = 1;
        } else {
            v0->unk_6A = 4;
        }
        break;
    case 2:
    {
        UnkStruct_ov12_022380DC v2;
        UnkStruct_ov16_02265BBC v3;

        ov16_02264530(v0->unk_00, &v0->unk_10, &v2, v0->unk_69);
        ov12_022382BC(&v2, 5);

        ov16_02266B78(v0->unk_00, NULL, &v3, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v3);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_6A++;
        break;
    case 4:
        ov16_0223F460(v0->unk_00, 2);

        if (v0->unk_6B) {
            ov16_0223F3EC(v0->unk_00);
        }

        if (v0->unk_6C) {
            sub_02008B54(ov16_0223E000(v0->unk_00), 0x1);
        }

        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v0->unk_10);
        v0->unk_6A++;
        break;
    case 6:
        ov16_0223F460(v0->unk_00, 0);

        if (v0->unk_6B) {
            ov16_0223F3BC(v0->unk_00);
        }

        if (v0->unk_6C) {
            sub_02008B60(ov16_0223E000(v0->unk_00), 0x1);
        }

        if ((v0->unk_10.unk_0E_0) && (v0->unk_10.unk_4C == 0) && (sub_020080C0(v0->unk_08, 6) == 0)) {
            {
                UnkStruct_ov16_02265BBC v4;

                ov16_02266B78(v0->unk_00, NULL, &v4, 1, 15, v0->unk_69, v0->unk_69, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v4);
            }
            v0->unk_6A = 7;
        } else {
            v0->unk_6A = 10;
        }
        break;
    case 8:
    {
        UnkStruct_ov12_022380DC v5;
        UnkStruct_ov16_02265BBC v6;

        ov16_02264530(v0->unk_00, &v0->unk_10, &v5, v0->unk_69);
        ov12_02238390(&v5, 5);

        ov16_02266B78(v0->unk_00, NULL, &v6, 1, 16, v0->unk_69, v0->unk_69, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v0->unk_0C, &v6);
        v0->unk_04->unk_19C = 1;
    }
        v0->unk_6A++;
        break;
    case 10:
        ov16_02266ABC(v0->unk_00, v0->unk_69, v0->unk_68);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
        ov12_0222016C(v0->unk_0C);

        if (ov12_02220188(v0->unk_0C) == 0) {
            ov12_02220198(v0->unk_0C);
            v0->unk_6A++;
        }
        break;
    }
}

static void ov16_0226292C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225DA44 * v0 = (UnkStruct_ov16_0225DA44 *)param1;
    int v1;

    if (v0->unk_09 < 6) {
        if (v0->unk_0A == 0) {
            v0->unk_0A = 2;
            v0->unk_09++;
            v1 = sub_020080C0(v0->unk_04, 6);
            v1 ^= 1;
            sub_02007DEC(v0->unk_04, 6, v1);
        } else {
            v0->unk_0A--;
        }
    } else {
        v1 = 0;
        sub_02007DEC(v0->unk_04, 6, v1);
        ov16_02266ABC(v0->unk_00, v0->unk_08, 23);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
    }
}

static void ov16_02262988 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_022674C4 * v0 = param1;
    int v1;

    switch (v0->unk_00.unk_00) {
    case 0:
        ov16_022674C4(v0, v0->unk_30);
        v0->unk_00.unk_00++;
    case 1:
        v1 = ov16_022674F8(v0);

        if (v1 == -1) {
            v0->unk_00.unk_00++;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_0C, v0->unk_24, v0->unk_4C);
        v0->unk_10 = NULL;
        sub_0200DA58(param0);
        return;
    }
}

static void ov16_022629DC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_022674C4 * v0 = param1;
    int v1;

    switch (v0->unk_00.unk_00) {
    case 0:
        v0->unk_4E = 0;
        sub_02005748(1803);
        ov16_0226752C(v0, v0->unk_40);
        v0->unk_00.unk_00++;
    case 1:
        if (v0->unk_4E < 8) {
            v0->unk_4E++;
        }

        v1 = ov16_02267560(v0);

        if (v1 == -1) {
            if (v0->unk_4E >= 8) {
                sub_020057A4(1803, 0);
                v0->unk_00.unk_00 = 100;
            } else {
                v0->unk_00.unk_00++;
            }
        }
        break;
    case 2:
        v0->unk_4E++;

        if (v0->unk_4E >= 8) {
            sub_020057A4(1803, 0);
            v0->unk_00.unk_00 = 100;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_0C, v0->unk_24, v0->unk_4C);
        v0->unk_10 = NULL;
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02262A9C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225DB74 * v0 = (UnkStruct_ov16_0225DB74 *)param1;
    UnkStruct_ov12_0221FCDC * v1 = ov16_0223E008(v0->unk_00);
    int v2;
    int v3;

    switch (v0->unk_66) {
    case 0:
        if (v0->unk_70) {
            {
                UnkStruct_ov16_02265BBC v4;

                ov16_02266B78(v0->unk_00, NULL, &v4, 1, 15, v0->unk_65, v0->unk_65, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
            }
            v0->unk_66++;
        } else {
            v0->unk_66 = 4;
        }
        break;
    case 2:
    {
        UnkStruct_ov12_022380DC v5;
        UnkStruct_ov16_02265BBC v6;

        ov16_02264530(v0->unk_00, &v0->unk_0C, &v5, v0->unk_65);
        ov12_022382BC(&v5, 5);

        ov16_02266B78(v0->unk_00, NULL, &v6, 1, 16, v0->unk_65, v0->unk_65, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v6);
        v0->unk_04->unk_19C = 0;
    }
        v0->unk_66++;
        break;
    case 1:
    case 3:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_66++;
        }
        break;
    case 4:
    {
        int v7;

        if (v0->unk_67 == 2) {
            v7 = 117;
        } else {
            v7 = -117;
        }

        sub_02077DB4(ov16_0223EE30(v0->unk_00, v0->unk_65), 5, v0->unk_68, v0->unk_6B, v7, 127, v0->unk_72, 5, 0);
        v0->unk_66++;
    }
    case 5:
        if (sub_0200598C() == 0) {
            v0->unk_66++;
        }
        break;
    case 6:
        if (v0->unk_67 == 2) {
            sub_02005728(1795, 117);
        } else {
            sub_02005728(1795, -117);
        }

        if (sub_020080C0(v0->unk_08, 41) > 0) {
            v0->unk_66 = 7;
        } else {
            v0->unk_66 = 8;
        }
        break;
    case 7:
        v3 = sub_020080C0(v0->unk_08, 41);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        sub_02007DEC(v0->unk_08, 41, v3);

        if (v3) {
            break;
        }

        v0->unk_66++;
    case 8:
        v3 = sub_02076648(v0->unk_68, v0->unk_6A, v0->unk_67, v0->unk_6B, v0->unk_6C);
        v3 = 80 - v3;
        sub_020086D4(v0->unk_08, 0, 0, 80, v3);
        v0->unk_66++;
        break;
    case 9:
        v2 = sub_020080C0(v0->unk_08, 1);
        v2 += 8;
        sub_02007DEC(v0->unk_08, 1, v2);
        v3 = sub_020080C0(v0->unk_08, 18);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        sub_02007DEC(v0->unk_08, 18, v3);

        if (v3 == 0) {
            sub_02007DC8(v0->unk_08);
            v0->unk_66++;
        }
        break;
    case 10:
        ov16_02266ABC(v0->unk_00, v0->unk_65, v0->unk_64);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02262D28 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225DC7C * v0 = (UnkStruct_ov16_0225DC7C *)param1;
    UnkStruct_02002F38 * v1;
    UnkStruct_02007768 * v2;

    v1 = ov16_0223E064(v0->unk_00);
    v2 = ov16_0223E000(v0->unk_00);

    switch (v0->unk_06) {
    case 0:
        sub_02015738(ov16_0223E220(v0->unk_00), 1);
        sub_02003178(v1, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
        sub_0200872C(v2, 0, 16, 0, 0x0);
        sub_0200564C(0, 16);
        v0->unk_06++;
    case 1:
        if (sub_0200384C(v1) == 0) {
            v0->unk_06++;
        }
        break;
    case 2:
        ov16_02266ABC(v0->unk_00, v0->unk_05, v0->unk_04);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02262DC4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225DCB0 * v0;
    UnkStruct_ov12_0221FCDC * v1;

    v0 = (UnkStruct_ov16_0225DCB0 *)param1;
    v1 = ov16_0223E008(v0->unk_00);

    switch (v0->unk_62) {
    case 0:
        if (v0->unk_04->unk_20) {
            sub_02007DEC(v0->unk_04->unk_20, 6, v0->unk_63);

            if (v0->unk_63 == 1) {
                v0->unk_62 = 0xff;
            } else {
                v0->unk_62++;
            }
        } else {
            v0->unk_62 = 0xff;
        }
        break;
    case 1:
        if ((v0->unk_64) && (v0->unk_04->unk_19C == 0)) {
            {
                UnkStruct_ov16_02265BBC v2;

                ov16_02266B78(v0->unk_00, NULL, &v2, 1, 15, v0->unk_61, v0->unk_61, NULL);
                ov16_02264408(v0->unk_00, v0->unk_04, v1, &v2);
            }
            v0->unk_62++;
        } else {
            v0->unk_62 = 0xff;
        }
        break;
    case 3:
    {
        UnkStruct_ov12_022380DC v3;
        UnkStruct_ov16_02265BBC v4;

        ov16_02264530(v0->unk_00, &v0->unk_08, &v3, v0->unk_61);
        ov12_02238390(&v3, 5);

        ov16_02266B78(v0->unk_00, NULL, &v4, 1, 16, v0->unk_61, v0->unk_61, NULL);
        ov16_02264408(v0->unk_00, v0->unk_04, v1, &v4);
        v0->unk_04->unk_19C = 1;
    }
        v0->unk_62++;
        break;
    case 2:
    case 4:
        ov12_0222016C(v1);

        if (ov12_02220188(v1) == 0) {
            ov12_02220198(v1);
            v0->unk_62++;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_00, v0->unk_61, v0->unk_60);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02262F30 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225DF34 * v0 = (UnkStruct_ov16_0225DF34 *)param1;

    switch (v0->unk_0A) {
    case 0:
        ov16_0226834C(v0->unk_04, &v0->unk_0B);
        sub_02005748(1804);
        v0->unk_0A++;
        break;
    case 1:
        if (v0->unk_0B == 1) {
            ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_02262F7C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225D8F0 * v0 = (UnkStruct_ov16_0225D8F0 *)param1;

    if (ov16_0223F29C(v0->unk_00)) {
        sub_0200EBA0(ov16_0223F29C(v0->unk_00));
        ov16_0223F2A4(v0->unk_00, NULL);
    }

    if (sub_0201D724(v0->unk_06) == 0) {
        ov16_02266ABC(v0->unk_00, v0->unk_05, v0->unk_04);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
    }
}

static void ov16_02262FC0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225DF6C * v0 = (UnkStruct_ov16_0225DF6C *)param1;

    switch (v0->unk_07) {
    case 0:
        if (sub_0201D724(v0->unk_06) == 0) {
            v0->unk_07++;
            v0->unk_08 = 0;
        }
        break;
    case 1:
        if (++v0->unk_08 == 40) {
            ov16_022661B0(v0->unk_00, v0->unk_05);
            ov16_02266ABC(v0->unk_00, v0->unk_05, v0->unk_04);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static const u8 Unk_ov16_0226F31C[] = {
    0x9,
    0x17,
    0x5,
    0x13,
    0xD,
    0x11,
    0xF,
    0x7,
    0x15,
    0xB,
    0x19,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0x15,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB
};

static const int Unk_ov16_0226F1D0[] = {
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x0,
    0x0,
    0x0,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF
};

static void  ov16_02263014 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225CBB8 * v0 = (UnkStruct_ov16_0225CBB8 *)param1;
    UnkStruct_02018340 * v1;
    UnkStruct_02002F38 * v2;
    int v3;
    int v4;

    v1 = ov16_0223DF00(v0->unk_00);
    v2 = ov16_0223E064(v0->unk_00);
    v3 = ov16_0223E22C(v0->unk_00);
    v4 = Unk_ov16_0226F1D0[ov16_0223E240(v0->unk_00)];

    v0->unk_15++;

    switch (v0->unk_14) {
    case 0:
    {
        UnkStruct_ov12_02237F38 v5;

        v0->unk_04 = ov12_02237EFC(5, NULL);

        v5.unk_00 = Unk_ov16_0226F31C[v3];
        v5.unk_04 = 1;

        v0->unk_08[0] = ov12_02237F38(v0->unk_04, &v5);

        v5.unk_00 = Unk_ov16_0226F31C[v3] + 1;
        v5.unk_04 = 1;

        v0->unk_08[1] = ov12_02237F38(v0->unk_04, &v5);

        ov12_02238004(v0->unk_08[0]);
        sub_02005748(2127);

        v0->unk_14 = 1;
    }

    case 1:

        if (v0->unk_15 == 10) {
            sub_02003178(v2, 0x1, 0xf3ff, 0, 0, 16, v4);
            sub_02003178(v2, 0x4, 0x3fff, 0, 0, 16, v4);
        }

        if ((v0->unk_15 >= 10) && (v0->unk_16 < 16)) {
            u16 v6, v7;
            u16 * v8;

            v0->unk_16++;

            if (v0->unk_16 > 16) {
                v0->unk_16 = 16;
            }

            v8 = sub_0200316C(v2, 1);

            for (v6 = 0; v6 < 256; v6++) {
                v7 = (0 + ((0x1f - 0) * v0->unk_16 >> 4));
                v8[v6] = v7 | (v7 << 5) | (v7 << 10);
            }
        }

        if (v0->unk_15 == 20) {
            ov12_02238004(v0->unk_08[1]);
        }

        if (v0->unk_15 == 23) {
            sub_02005748(2128);
        }

        if (v0->unk_15 == 28) {
            MI_CpuCopy16(ov16_0223F204(v0->unk_00), sub_02003164(v2, 0), 0x20 * 7);

            if (ov16_0223DF0C(v0->unk_00) == (0x2 | 0x8 | 0x40)) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
            } else if (ov16_0223DF0C(v0->unk_00) & 0x2) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 7);
            } else if (ov16_0223DF0C(v0->unk_00) & 0x1) {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
            } else {
                MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 4);
            }

            sub_02003178(v2, 0x1, 0xf3ff, 0, 16, 0, v4);
            sub_02003178(v2, 0x4, 0x3fff, 0, 16, 0, v4);
            sub_02003178(v2, (0x2 | 0x8), 0xffff, 0, 16, 0, v4);
        }

        if (v0->unk_15 >= 50) {
            sub_02003178(v2, 0x1, 0xc00, 0, 16, 0, 0x0);
            v0->unk_14++;
        }
        break;
    case 2:
        if (ov12_0223802C(v0->unk_08[1]) == 0) {
            ov12_02237F74(v0->unk_04);
            v0->unk_14++;
        }
        break;
    case 3:
        sub_02015738(ov16_0223E220(v0->unk_00), 0);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    case 4:
        ov12_02237F98(v0->unk_04);
        ov12_02237F74(v0->unk_04);
        v0->unk_14++;
    case 5:
        MI_CpuCopy16(ov16_0223F204(v0->unk_00), sub_02003164(v2, 0), 0x20 * 7);

        if (ov16_0223DF0C(v0->unk_00) == (0x2 | 0x8 | 0x40)) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
        } else if (ov16_0223DF0C(v0->unk_00) & 0x2) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 7);
        } else if (ov16_0223DF0C(v0->unk_00) & 0x1) {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 5);
        } else {
            MI_CpuCopy16(ov16_0223F210(v0->unk_00), sub_02003164(v2, 2), 0x20 * 4);
        }

        sub_02003178(v2, 0x1, 0xffff, 0, 0, 0, 0x7fff);
        sub_02003178(v2, 0x4, 0x3fff, 0, 0, 0, 0xffff);
        sub_02003178(v2, (0x2 | 0x8), 0xffff, 0, 0, 0, 0x7fff);
        v0->unk_14 = 3;
        break;
    }
}

static void ov16_022633A4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E0BC * v0 = (UnkStruct_ov16_0225E0BC *)param1;
    UnkStruct_02002F38 * v1;

    v1 = ov16_0223E064(v0->unk_00);

    switch (v0->unk_0A) {
    case 0:
        sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 0, 16, 0x0);
        v0->unk_0A++;
        break;
    case 1:
        if (sub_0200384C(v1) == 0) {
            ov16_0223B384(v0->unk_00);

            v0->unk_04 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov13_0221FC20));
            v0->unk_04->unk_00 = ov16_0223DF20(v0->unk_00, v0->unk_09);
            v0->unk_04->unk_08 = v0->unk_00;
            v0->unk_04->unk_0C = 5;
            v0->unk_04->unk_11 = v0->unk_0E;
            v0->unk_04->unk_24 = v0->unk_0C;
            v0->unk_04->unk_36 = 0;
            v0->unk_04->unk_12 = 0;
            v0->unk_04->unk_35 = 3;
            v0->unk_04->unk_22 = 0;
            v0->unk_04->unk_28 = v0->unk_09;
            v0->unk_04->unk_32 = 0;

            ov13_0221FC20(v0->unk_04);
            v0->unk_0A++;
        }
        break;
    case 2:
        if (v0->unk_04->unk_36) {
            ov16_0223B430(v0->unk_00);
            sub_02003178(v1, (0x2 | 0x8), 0xffff, -8, 16, 0, 0x0);
            v0->unk_0A++;
        }
        break;
    case 3:
        if (sub_0200384C(v1) == 0) {
            if (v0->unk_04->unk_34 == 4) {
                ov16_02265B10(v0->unk_00, v0->unk_09, 0xff);
            } else {
                ov16_02265B10(v0->unk_00, v0->unk_09, v0->unk_04->unk_34 + 1);
            }

            ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);

            Heap_FreeToHeap(v0->unk_04);
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_022634DC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E0F4 * v0 = (UnkStruct_ov16_0225E0F4 *)param1;
    int v1;

    switch (v0->unk_0A) {
    case 0:
        if (v0->unk_0C == v0->unk_0D) {
            v0->unk_0C = 0;
            v1 = sub_020080C0(v0->unk_04, 40);

            if (v1 > v0->unk_0B) {
                v1--;
            } else if (v1 < v0->unk_0B) {
                v1++;
            }

            sub_02007DEC(v0->unk_04, 40, v1);

            if (v1 == v0->unk_0B) {
                v0->unk_0A++;
            }
        } else {
            v0->unk_0C++;
        }
        break;
    case 1:
        ov16_02266ABC(v0->unk_00, v0->unk_09, v0->unk_08);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_0226354C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E134 * v0 = (UnkStruct_ov16_0225E134 *)param1;
    UnkEnum_ov16_0226D194 v1;
    UnkEnum_ov16_0226D194_1 v2;

    if (ov16_0223E208(v0->unk_00, v0->unk_05) == 0) {
        v1 = UnkEnum_ov16_0226D194_00;
    } else {
        v1 = UnkEnum_ov16_0226D194_01;
    }

    switch (v0->unk_07) {
    case 0:
    {
        UnkStruct_ov16_0226D160 * v3;
        UnkEnum_ov16_0226D194_1 v4;
        UnkEnum_ov16_0226D194_3 v5;

        if (v0->unk_0E == 0) {
            v4 = UnkEnum_ov16_0226D194_1_00;
            v5 = UnkEnum_ov16_0226D194_3_01;
        } else {
            v4 = UnkEnum_ov16_0226D194_1_01;

            switch (v0->unk_06) {
            case 3:
                v5 = UnkEnum_ov16_0226D194_3_00;
                break;
            case 5:
                v5 = UnkEnum_ov16_0226D194_3_02;
                break;
            default:
                v5 = UnkEnum_ov16_0226D194_3_01;
                break;
            }
        }

        v3 = ov16_0226D194(v0->unk_08, v1, v4, v5, ov16_0223E010(v0->unk_00), ov16_0223E018(v0->unk_00));
        ov16_0223E040(v0->unk_00, v1, v3);
    }
        v0->unk_07++;
        break;
    case 1:
        if (ov16_0226D1FC(ov16_0223E034(v0->unk_00, v1)) == 1) {
            v0->unk_07++;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_00, v0->unk_05, v0->unk_04);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02263604 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E134 * v0 = (UnkStruct_ov16_0225E134 *)param1;
    UnkEnum_ov16_0226D194 v1;
    UnkStruct_ov16_0226D160 * v2;
    UnkEnum_ov16_0226D220 v3;
    UnkEnum_ov16_0226D194_2 v4;

    if (ov16_0223E208(v0->unk_00, v0->unk_05) == 0) {
        v1 = UnkEnum_ov16_0226D194_00;
    } else {
        v1 = UnkEnum_ov16_0226D194_01;
    }

    v2 = ov16_0223E034(v0->unk_00, v1);

    switch (v0->unk_07) {
    case 0:
        if (v0->unk_0E == 0) {
            v3 = UnkEnum_ov16_0226D220_00;
            v4 = UnkEnum_ov16_0226D194_2_00;
        } else {
            v3 = UnkEnum_ov16_0226D220_01;
            v4 = UnkEnum_ov16_0226D194_2_01;
        }

        ov16_0226D220(v2, v3, v4);
        v0->unk_07++;
        break;
    case 1:
        if (ov16_0226D258(v2) == 1) {
            ov16_0226D27C(v2);
            ov16_0223E040(v0->unk_00, v1, NULL);
            v0->unk_07++;
        }
        break;
    default:
        ov16_02266ABC(v0->unk_00, v0->unk_05, v0->unk_04);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_02263688 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E2C8 * v0 = (UnkStruct_ov16_0225E2C8 *)param1;

    switch (v0->unk_0E) {
    case 0:
        GF_ASSERT(v0->unk_04->unk_88 == NULL);
        v0->unk_04->unk_88 = ov12_022234F8(v0->unk_00, 5, v0->unk_0D);
        v0->unk_0E++;
        break;
    default:
        ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_022636D4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225E300 * v0 = (UnkStruct_ov16_0225E300 *)param1;

    GF_ASSERT(v0->unk_04->unk_88 != NULL);

    if (ov12_022237D8(v0->unk_04->unk_88) == 3) {
        if (v0->unk_0E < 5) {
            v0->unk_0E++;
            return;
        }
    }

    ov12_022237A4(v0->unk_04->unk_88, v0->unk_0D);
    v0->unk_04->unk_88 = NULL;
    ov16_02266ABC(v0->unk_00, v0->unk_0D, v0->unk_0C);

    Heap_FreeToHeap(param1);
    sub_0200DA58(param0);
}

void ov16_02263730 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1)
{
    u32 v0 = ov16_0223DF0C(param0);
    u32 v1 = ov16_0223EBEC(param0);

    if (v0 & 0x40) {
        if (param1->unk_190) {
            param1->unk_00.unk_00 = &ov16_02260AB4;
            param1->unk_00.unk_04 = &ov16_02260DB0;
            param1->unk_00.unk_08 = &ov16_022610A8;
            param1->unk_00.unk_0C = &ov16_02261D50;
            param1->unk_00.unk_10 = &ov16_02262258;
            param1->unk_00.unk_14 = &ov16_0226262C;
            param1->unk_192 = 0x1;
        } else {
            if (v1 & 0x10) {
                param1->unk_00.unk_00 = &ov16_02260BAC;
                param1->unk_00.unk_04 = &ov16_02260E98;
                param1->unk_00.unk_08 = &ov16_0226110C;
                param1->unk_00.unk_0C = &ov16_02261DE0;
                param1->unk_00.unk_10 = &ov16_0226232C;
                param1->unk_00.unk_14 = &ov16_0226266C;
                param1->unk_192 = 0x0;
            } else {
                param1->unk_00.unk_00 = &ov16_022604C8;
                param1->unk_00.unk_04 = &ov16_02260C00;
                param1->unk_00.unk_08 = &ov16_02260F14;
                param1->unk_00.unk_0C = &ov16_022611DC;
                param1->unk_00.unk_10 = &ov16_02261E8C;
                param1->unk_00.unk_14 = &ov16_022623F0;
                param1->unk_192 = 0x0;
            }
        }
    } else if ((v0 & (0x8 | 0x80)) == (0x8 | 0x80)) {
        if (param1->unk_191 & 0x1) {
            if (ov16_0223ED60(param0)) {
                param1->unk_00.unk_00 = &ov16_02260AB4;
                param1->unk_00.unk_04 = &ov16_02260DB0;
                param1->unk_00.unk_08 = &ov16_022610A8;
                param1->unk_00.unk_0C = &ov16_02261D50;
                param1->unk_00.unk_10 = &ov16_02262258;
                param1->unk_00.unk_14 = &ov16_0226262C;
                param1->unk_192 = 0x1;
            } else {
                param1->unk_00.unk_00 = &ov16_02260AE4;
                param1->unk_00.unk_04 = &ov16_02260E78;
                param1->unk_00.unk_08 = &ov16_022610EC;
                param1->unk_00.unk_0C = &ov16_02261DA8;
                param1->unk_00.unk_10 = &ov16_0226230C;
                param1->unk_00.unk_14 = &ov16_0226264C;
                param1->unk_192 = 0x2;
            }
        } else if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->unk_192 = 0x0;
        } else if (param1->unk_191 != ov16_0223E1F8(param0, ov16_0223F6E4(param0) * 2)) {
            param1->unk_00.unk_00 = &ov16_02260AE4;
            param1->unk_00.unk_04 = &ov16_02260E78;
            param1->unk_00.unk_08 = &ov16_022610EC;
            param1->unk_00.unk_0C = &ov16_02261DA8;
            param1->unk_00.unk_10 = &ov16_0226230C;
            param1->unk_00.unk_14 = &ov16_0226264C;
            param1->unk_192 = 0x2;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = &ov16_02260C00;
            param1->unk_00.unk_08 = &ov16_02260F14;
            param1->unk_00.unk_0C = &ov16_022611DC;
            param1->unk_00.unk_10 = &ov16_02261E8C;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->unk_192 = 0x0;
        }
    } else if (v0 & 0x8) {
        if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->unk_192 = 0x0;
        } else if (param1->unk_191 != ov16_0223E1F8(param0, ov16_0223F6E4(param0))) {
            param1->unk_00.unk_00 = &ov16_02260AE4;
            param1->unk_00.unk_04 = &ov16_02260E78;
            param1->unk_00.unk_08 = &ov16_022610EC;
            param1->unk_00.unk_0C = &ov16_02261DA8;
            param1->unk_00.unk_10 = &ov16_0226230C;
            param1->unk_00.unk_14 = &ov16_0226264C;
            param1->unk_192 = 0x2;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = &ov16_02260C00;
            param1->unk_00.unk_08 = &ov16_02260F14;
            param1->unk_00.unk_0C = &ov16_022611DC;
            param1->unk_00.unk_10 = &ov16_02261E8C;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->unk_192 = 0x0;
        }
    } else if (v0 & 0x4) {
        if (v1 & 0x10) {
            param1->unk_00.unk_00 = &ov16_02260BAC;
            param1->unk_00.unk_04 = &ov16_02260E98;
            param1->unk_00.unk_08 = &ov16_0226110C;
            param1->unk_00.unk_0C = &ov16_02261DE0;
            param1->unk_00.unk_10 = &ov16_0226232C;
            param1->unk_00.unk_14 = &ov16_0226266C;
            param1->unk_192 = 0x0;
        } else if (param1->unk_191 & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260AE4;
            param1->unk_00.unk_04 = &ov16_02260E78;
            param1->unk_00.unk_08 = &ov16_022610EC;
            param1->unk_00.unk_0C = &ov16_02261DA8;
            param1->unk_00.unk_10 = &ov16_0226230C;
            param1->unk_00.unk_14 = &ov16_0226264C;
            param1->unk_192 = 0x2;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = &ov16_02260C00;
            param1->unk_00.unk_08 = &ov16_02260F14;
            param1->unk_00.unk_0C = &ov16_022611DC;
            param1->unk_00.unk_10 = &ov16_02261E8C;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->unk_192 = 0x0;
        }
    } else if (v0 & 0x200) {
        if (param1->unk_191 & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260B84;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = NULL;
            param1->unk_192 = 0x1;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = NULL;
            param1->unk_192 = 0x0;
        }
    } else if (v0 & 0x20) {
        if (param1->unk_191 & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260B04;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = NULL;
            param1->unk_192 = 0x1;
        } else {
            param1->unk_00.unk_00 = &ov16_022604C8;
            param1->unk_00.unk_04 = NULL;
            param1->unk_00.unk_08 = NULL;
            param1->unk_00.unk_0C = NULL;
            param1->unk_00.unk_10 = NULL;
            param1->unk_00.unk_14 = &ov16_022623F0;
            param1->unk_192 = 0x0;
        }
    } else {
        if (param1->unk_191 & 0x1) {
            param1->unk_00.unk_00 = &ov16_02260AB4;
            param1->unk_00.unk_04 = &ov16_02260DB0;
            param1->unk_00.unk_08 = &ov16_022610A8;
            param1->unk_00.unk_0C = &ov16_02261D50;
            param1->unk_00.unk_10 = &ov16_02262258;
            param1->unk_00.unk_14 = &ov16_0226262C;
            param1->unk_192 = 0x1;
        } else {
            if (v1 & 0x10) {
                param1->unk_00.unk_00 = &ov16_02260BAC;
                param1->unk_00.unk_04 = &ov16_02260E98;
                param1->unk_00.unk_08 = &ov16_0226110C;
                param1->unk_00.unk_0C = &ov16_02261DE0;
                param1->unk_00.unk_10 = &ov16_0226232C;
                param1->unk_00.unk_14 = &ov16_0226266C;
                param1->unk_192 = 0x0;
            } else {
                param1->unk_00.unk_00 = &ov16_022604C8;
                param1->unk_00.unk_04 = &ov16_02260C00;
                param1->unk_00.unk_08 = &ov16_02260F14;
                param1->unk_00.unk_0C = &ov16_022611DC;
                param1->unk_00.unk_10 = &ov16_02261E8C;
                param1->unk_00.unk_14 = &ov16_022623F0;
                param1->unk_192 = 0x0;
            }
        }
    }
}

u8 ov16_02263AE4 (UnkStruct_ov16_0225BFFC * param0)
{
    return param0->unk_191;
}

u8 ov16_02263AF0 (UnkStruct_ov16_0225BFFC * param0)
{
    return param0->unk_192;
}

UnkStruct_02007C7C * ov16_02263AFC (UnkStruct_ov16_0225BFFC * param0)
{
    if (param0->unk_20) {
        return param0->unk_20;
    } else {
        return param0->unk_1C;
    }
}

UnkStruct_ov16_022674C4 * ov16_02263B08 (UnkStruct_ov16_0225BFFC * param0)
{
    return &param0->unk_28;
}

UnkStruct_ov16_0226C378 * ov16_02263B0C (UnkStruct_ov16_0225BFFC * param0)
{
    return &param0->unk_7B;
}

void ov16_02263B10 (UnkStruct_ov16_0225BFFC * param0)
{
    MI_CpuClear8(&param0->unk_7B, sizeof(UnkStruct_ov16_0226C378));
}

void ov16_02263B20 (UnkStruct_ov16_0225BFFC * param0, int param1)
{
    if (param0->unk_18 == NULL) {
        return;
    }

    sub_0200D3F4(param0->unk_18, param1);
}

static UnkStruct_02007C7C * ov16_02263B30 (UnkStruct_0207ADB4 * param0, UnkStruct_02007768 * param1, UnkStruct_02008A90 * param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, UnkStruct_02007C10 * param11, UnkFuncPtr_02007C34 * param12)
{
    UnkStruct_02007C7C * v0;
    u8 * v1 = ov16_0223F2B8(ov16_0223E0C8(param0), param10);
    int v2;
    int v3;

    v2 = ov16_0223E1F8(param0, param10);

    if (v2 & 0x1) {
        v3 = 2;
    } else {
        v3 = 0;
    }

    sub_02013750(param2->unk_00, param2->unk_02, 5, v1, param2->unk_0C, 0, v3, param2->unk_06);
    ov16_0223F2CC(ov16_0223E0C8(param0), param10, param2->unk_00);
    ov16_0223F2E4(ov16_0223E0C8(param0), param10, param2->unk_04);
    ov16_0223F2FC(ov16_0223E0C8(param0), param10, param6);

    v0 = sub_02007C7C(param1, param2, param3, param4 + param6, param5, param10, param10, param11, param12);

    if (v2 & 0x1) {
        if (v2 > 1) {
            v2 = v2 >> 1;
        }

        sub_02007DEC(v0, 42, v2);
        sub_02007DEC(v0, 46, param9);
        sub_02007DEC(v0, 20, (param4 + param6) + (36 - param6));
        sub_02007DEC(v0, 21, param8);
        sub_02007DEC(v0, 22, 36 - param6);
        sub_02007DEC(v0, 41, param7);
    }

    return v0;
}

static void ov16_02263C1C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C3F8 * param2, UnkStruct_ov16_0225C300 * param3)
{
    if (param1->unk_191 & 0x1) {
        if (ov16_0223DF0C(param0) & 0x4) {
            param3->unk_02 = 990;
            param3->unk_01 = 27;
            param3->unk_04[0] = param1->unk_190;
            param3->unk_04[1] = param1->unk_190 | (param2->unk_01 << 8);
        } else {
            param3->unk_02 = 989;
            param3->unk_01 = 50;
            param3->unk_04[0] = param1->unk_190;
            param3->unk_04[1] = param1->unk_190;
            param3->unk_04[2] = param1->unk_190 | (param2->unk_01 << 8);
        }
    } else {
        if (((ov16_0223DF0C(param0) & 0x2) == 0) && ((ov16_0223DF0C(param0) & 0x4) == 0)) {
            if (param2->unk_02 == 0) {
                param3->unk_02 = 984;
            } else if (param2->unk_02 < 25) {
                param3->unk_02 = 985;
            } else if (param2->unk_02 < 50) {
                param3->unk_02 = 988;
            } else if (param2->unk_02 < 75) {
                param3->unk_02 = 986;
            } else {
                param3->unk_02 = 987;
            }
        } else {
            param3->unk_02 = 985;
        }

        param3->unk_01 = 2;
        param3->unk_04[0] = param1->unk_190 | (param2->unk_01 << 8);
    }
}

static void ov16_02263CF0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C40C * param2, UnkStruct_ov16_0225C300 * param3)
{
    if (param1->unk_191 & 0x1) {
        if ((ov16_0223DF0C(param0) & 0x4) == 0) {
            param3->unk_02 = 972;
            param3->unk_01 = 50;
            param3->unk_04[0] = param1->unk_190;
            param3->unk_04[1] = param1->unk_190;
            param3->unk_04[2] = param1->unk_190 | (param2->unk_01 << 8);
        } else {
            param3->unk_02 = 974;
            param3->unk_01 = 27;
            param3->unk_04[0] = param1->unk_190;
            param3->unk_04[1] = param1->unk_190 | (param2->unk_01 << 8);
        }
    } else {
        if (((ov16_0223DF0C(param0) & 0x2) == 0) && ((ov16_0223DF0C(param0) & 0x4) == 0)) {
            if (param2->unk_02 < 100) {
                param3->unk_02 = 982;
            } else if (param2->unk_02 < 325) {
                param3->unk_02 = 983;
            } else if (param2->unk_02 < 550) {
                param3->unk_02 = 981;
            } else if (param2->unk_02 < 775) {
                param3->unk_02 = 980;
            } else {
                param3->unk_02 = 979;
            }
        } else {
            param3->unk_02 = 979;
        }

        param3->unk_01 = 2;
        param3->unk_04[0] = param1->unk_190 | (param2->unk_01 << 8);
    }
}

static void ov16_02263DD0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2)
{
    u32 v0;
    int v1;
    int v2;

    v0 = ov16_0223DF0C(param0);

    if (v0 & 0x2) {
        v1 = ov16_0223E1C4(param0, 3);
        v2 = ov16_0223E1C4(param0, 5);
    } else {
        v1 = ov16_0223E1C4(param0, 1);
        v2 = v1;
    }

    if (v0 & 0x4) {
        if (v0 & 0x80) {
            param2->unk_02 = 992;
            param2->unk_01 = 59;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v1;
            param2->unk_04[2] = v2;
            param2->unk_04[3] = v2;
        } else if (v0 & 0x8) {
            param2->unk_02 = 971;
            param2->unk_01 = 26;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v2;
        } else {
            param2->unk_02 = 970;
            param2->unk_01 = 8;
            param2->unk_04[0] = v1;
        }
    } else {
        if ((v0 & 0x10) || (v0 & 0x8)) {
            param2->unk_02 = 992;
            param2->unk_01 = 59;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v1;
            param2->unk_04[2] = v2;
            param2->unk_04[3] = v2;
        } else {
            param2->unk_02 = 969;
            param2->unk_01 = 30;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v1;
        }
    }
}

static void ov16_02263E7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C430 * param2, UnkStruct_ov16_0225C300 * param3)
{
    u32 v0;
    int v1;
    int v2;

    v0 = ov16_0223DF0C(param0);

    if (param1->unk_191 & 0x1) {
        if (v0 & 0x2) {
            v1 = param1->unk_190;
            v2 = ov16_0223E258(param0, param1->unk_190);
        } else {
            v1 = param1->unk_190;
            v2 = v1;
        }

        if (v0 & 0x4) {
            if (v0 & 0x80) {
                param3->unk_02 = 991;
                param3->unk_01 = 60;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1;
                param3->unk_04[2] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[3] = v2;
                param3->unk_04[4] = v2;
                param3->unk_04[5] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x8) {
                param3->unk_02 = 976;
                param3->unk_01 = 56;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[2] = v2;
                param3->unk_04[3] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->unk_02 = 975;
                param3->unk_01 = 49;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[2] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->unk_02 = 974;
                param3->unk_01 = 27;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1 | (param2->unk_04[v1] << 8);
            }
        } else {
            if ((v0 & 0x10) || (v0 & 0x8)) {
                param3->unk_02 = 991;
                param3->unk_01 = 60;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1;
                param3->unk_04[2] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[3] = v2;
                param3->unk_04[4] = v2;
                param3->unk_04[5] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->unk_02 = 973;
                param3->unk_01 = 57;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1;
                param3->unk_04[2] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[3] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->unk_02 = 972;
                param3->unk_01 = 50;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1;
                param3->unk_04[2] = v1 | (param2->unk_04[v1] << 8);
            }
        }
    } else {
        if (v0 & 0x4) {
            {
                u8 v3 = ov16_0223F6E4(param0);

                if (v0 & 0x8) {
                    switch (ov16_0223F6F0(param0, v3)) {
                    case 0:
                    case 3:
                        v1 = ov16_0223E1C4(param0, 4);
                        v2 = ov16_0223E1C4(param0, 2);
                        break;
                    case 1:
                    case 2:
                        v1 = ov16_0223E1C4(param0, 2);
                        v2 = ov16_0223E1C4(param0, 4);
                        break;
                    }
                } else if (v0 & 0x2) {
                    v1 = ov16_0223E1C4(param0, 2);
                    v2 = ov16_0223E1C4(param0, 4);
                } else {
                    v1 = ov16_0223E1C4(param0, 0);
                    v2 = v1;
                }
            }
        } else if (v0 & 0x8) {
            v1 = ov16_0223E258(param0, param1->unk_190);
            v2 = param1->unk_190;
        } else if (v0 & 0x2) {
            v1 = ov16_0223E1C4(param0, 2);
            v2 = ov16_0223E1C4(param0, 4);
        } else {
            v1 = param1->unk_190;
            v2 = v1;
        }

        if (v0 & 0x4) {
            if (v0 & 0x8) {
                param3->unk_02 = 977;
                param3->unk_01 = 49;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[2] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->unk_02 = 978;
                param3->unk_01 = 9;
                param3->unk_04[0] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[1] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->unk_02 = 979;
                param3->unk_01 = 2;
                param3->unk_04[0] = v1 | (param2->unk_04[v1] << 8);
            }
        } else {
            if (v0 & 0x8) {
                param3->unk_02 = 993;
                param3->unk_01 = 57;
                param3->unk_04[0] = v1;
                param3->unk_04[1] = v1;
                param3->unk_04[2] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[3] = v2 | (param2->unk_04[v2] << 8);
            } else if (v0 & 0x2) {
                param3->unk_02 = 978;
                param3->unk_01 = 9;
                param3->unk_04[0] = v1 | (param2->unk_04[v1] << 8);
                param3->unk_04[1] = v2 | (param2->unk_04[v2] << 8);
            } else {
                param3->unk_02 = 979;
                param3->unk_01 = 2;
                param3->unk_04[0] = v1 | (param2->unk_04[v1] << 8);
            }
        }
    }
}

static void ov16_022641B4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2)
{
    u32 v0;
    int v1;
    int v2;
    int v3;

    v0 = ov16_0223DF0C(param0);
    v3 = ov16_0223F438(param0);

    if (v0 & 0x2) {
        v1 = ov16_0223E1C4(param0, 3);
        v2 = ov16_0223E1C4(param0, 5);
    } else {
        v1 = ov16_0223E1C4(param0, 1);
        v2 = v1;
    }

    switch (v3) {
    case 0x1:
        if (v0 & 0x8) {
            param2->unk_02 = 786;
            param2->unk_01 = 26;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v2;
        } else {
            param2->unk_02 = 785;
            param2->unk_01 = 8;
            param2->unk_04[0] = v1;
        }
        break;
    case 0x2:
        if (v0 & 0x8) {
            param2->unk_02 = 788;
            param2->unk_01 = 26;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v2;
        } else {
            param2->unk_02 = 787;
            param2->unk_01 = 8;
            param2->unk_04[0] = v1;
        }
        break;
    case 0x3:
        if (v0 & 0x8) {
            param2->unk_02 = 790;
            param2->unk_01 = 26;
            param2->unk_04[0] = v1;
            param2->unk_04[1] = v2;
        } else {
            param2->unk_02 = 789;
            param2->unk_01 = 8;
            param2->unk_04[0] = v1;
        }
        break;
    }
}

static void ov16_02264270 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C9F0 * param2, UnkStruct_ov16_0225C300 * param3)
{
    int v0;
    int v1 = 0;
    int v2 = 0;

    for (v0 = 0; v0 < ov16_0223DF1C(param0); v0++) {
        if (param2->unk_01 & sub_020787CC(v0)) {
            if (ov16_0223E208(param0, v0)) {
                v2++;
            } else {
                v1++;
            }
        }
    }

    if ((v1) && (v2)) {
        param3->unk_02 = 781;
        param3->unk_01 = 0;
        ov16_0223F444(param0, 0x3 | 0x80 | 0x40);
    } else if (v1) {
        param3->unk_02 = 781;
        param3->unk_01 = 0;
        ov16_0223F444(param0, 0x2 | 0x80 | 0x40);
    } else {
        if (ov16_0223DF0C(param0) & 0x8) {
            param3->unk_02 = 792;
            param3->unk_01 = 26;
            param3->unk_04[0] = ov16_0223E1C4(param0, 3);
            param3->unk_04[1] = ov16_0223E1C4(param0, 5);
        } else if (ov16_0223DF0C(param0) & 0x2) {
            param3->unk_02 = 791;
            param3->unk_01 = 8;
            param3->unk_04[0] = ov16_0223E1C4(param0, 3);
        } else {
            param3->unk_02 = 791;
            param3->unk_01 = 8;
            param3->unk_04[0] = ov16_0223E1C4(param0, 1);
        }

        ov16_0223F444(param0, 0x1 | 0x80 | 0x40);
    }
}

static void ov16_02264360 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov16_0225C300 * param2)
{
    param2->unk_02 = 956;
    param2->unk_01 = 8;

    if (ov16_0223DF0C(param0) & 0x4) {
        if (ov16_0223F6F0(param0, ov16_0223F6E4(param0))) {
            param2->unk_04[0] = ov16_0223E1C4(param0, 4);
        } else {
            param2->unk_04[0] = ov16_0223E1C4(param0, 2);
        }
    } else {
        param2->unk_04[0] = param1->unk_190;
    }

    ov16_0223F444(param0, 0x2 | 0x80 | 0x40);
}

static UnkStruct_0200D0F4 * ov16_022643B8 (UnkStruct_0207ADB4 * param0, int param1, int param2, int param3, s16 param4, s16 param5)
{
    UnkStruct_0200C6E4 * v0;
    UnkStruct_0200C704 * v1;
    UnkStruct_02002F38 * v2;
    UnkStruct_0200D0F4 * v3;
    int v4;

    v0 = ov16_0223E010(param0);
    v1 = ov16_0223E018(param0);
    v2 = ov16_0223E064(param0);

    if (param1 & 0x1) {
        v4 = 2;
    } else {
        v4 = 0;
    }

    v3 = sub_02076994(v0, v1, v2, param4, param5, param2, v4, param3, 5);

    return v3;
}

static void ov16_02264408 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0225BFFC * param1, UnkStruct_ov12_0221FCDC * param2, UnkStruct_ov16_02265BBC * param3)
{
    UnkStruct_ov16_02264408 v0;
    int v1;
    int v2;

    if (param3->unk_4C == 0) {
        v0.unk_50 = 8;
        v2 = param3->unk_02;
    } else {
        v0.unk_50 = 63;
        v2 = param3->unk_50;
    }

    v0.unk_04 = ov16_0223DF00(param0);
    v0.unk_08 = ov16_0223E064(param0);
    v0.unk_00 = ov16_0223E010(param0);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = ov16_0223F2AC(param0, v1);
        v0.unk_34[v1] = param3->unk_18[v1];
        v0.unk_3C[v1] = param3->unk_20[v1];
        v0.unk_40[v1] = param3->unk_24[v1];
        v0.unk_44[v1] = param3->unk_28[v1];
        v0.unk_48[v1] = param3->unk_2C[v1];
        v0.unk_4C[v1] = param3->unk_3C[v1];
    }

    ov16_0223F87C(param0, &(v0.unk_1C[0]));
    ov16_0223F8AC(param0, &(v0.unk_20[0]));

    v0.unk_30 = ov16_0223DF0C(param0);
    v0.unk_6C = ov16_0223EE30(param0, param1->unk_190);
    v0.unk_70 = ov16_0223F1E8(param0);
    v0.unk_74 = ov16_0223F1F0(param0);
    v0.unk_54.unk_00 = 7;
    v0.unk_54.unk_04 = 3 + ov16_0223E240(param0);
    v0.unk_54.unk_08 = 172 + ov16_0223E240(param0) * 3 + ov16_0223EC04(param0);
    v0.unk_54.unk_0C = 2;
    v0.unk_54.unk_10 = 0;
    v0.unk_54.unk_14 = 8;

    ov12_0221FE30(param2, param3, v2, &v0);
}

static void ov16_02264530 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_02265BBC * param1, UnkStruct_ov12_022380DC * param2, int param3)
{
    int v0;

    param2->unk_00 = param3;
    param2->unk_04 = param3;

    for (v0 = 0; v0 < 4; v0++) {
        param2->unk_08[v0] = ov16_0223F2AC(param0, v0);
        param2->unk_28[v0] = param1->unk_18[v0];
        param2->unk_30[v0] = param1->unk_20[v0];
        param2->unk_34[v0] = param1->unk_24[v0];
        param2->unk_38[v0] = param1->unk_28[v0];
        param2->unk_3C[v0] = param1->unk_2C[v0];
    }

    ov16_0223F87C(param0, &(param2->unk_4C[0]));
    ov16_0223F8AC(param0, &(param2->unk_18[0]));
}

static void ov16_022645B8 (u8 * param0, u8 * param1, int param2, int param3, u16 param4)
{
    if (param2 == 0) {
        if ((MoveTable_GetMoveAttribute(param4, 9) & 0x40) == 0) {
            param0[0] = 1;
        } else {
            param0[0] = 0;
        }

        if (MoveTable_GetMoveAttribute(param4, 9) & 0x80) {
            param1[0] = 1;
        } else {
            param1[0] = 0;
        }
    } else {
        switch (param3) {
        case 18:
        case 19:
        case 20:
        case 22:
        case 21:
        case 31:
        case 32:
        case 34:
        case 35:
        case 37:
        case 39:
            param0[0] = 1;
            param1[0] = 0;
            break;
        case 36:
        case 38:
            param0[0] = 1;
            param1[0] = 1;
            break;
        default:
            param0[0] = 0;
            param1[0] = 0;
            break;
        }
    }
}

static BOOL ov16_02264650 (UnkStruct_ov16_02264650_1 * param0, UnkStruct_0200D0F4 * param1)
{
    UnkStruct_ov16_02264650 * v0;
    int v1;
    BOOL v2 = 0;

    v1 = sub_0200D81C(param0->unk_08);

    switch (v1) {
    case 1:
        if (param0->unk_12_0 == 0) {
            param0->unk_12_0 = 1;
            v0 = (UnkStruct_ov16_02264650 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02264650));
            v0->unk_00 = 0;
            v0->unk_04 = 0;

            sub_0200D9E8(ov16_022646C8, v0, 0);
        }

        break;
    case 4095:
        v2 = 1;
        break;
    default:
        if (((v1 & 0xf00) == 0x100) && (v1 & 0xff)) {
            sub_0200D3CC(param0->unk_08, 0);
            sub_0200D364(param0->unk_08, (v1 & 0xff) - 1);
            v2 = 1;
        }

        break;
    }

    return v2;
}

static void ov16_022646C8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_02264650 * v0 = (UnkStruct_ov16_02264650 *)param1;

    switch (v0->unk_00) {
    case 0:
        sub_0200AAE0(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), 1);
        v0->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(1) == 1) {
            sub_0200AAE0(4, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), 1);
            v0->unk_00++;
        }
        break;
    case 2:
        if (sub_0200AC1C(1) == 1) {
            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static void ov16_02264730 (UnkStruct_0207ADB4 * param0)
{
    ov16_0223F720(param0, 1);
    ov16_0225B444(param0, ov16_0223DF10(param0));
}

static void ov16_0226474C (UnkStruct_0207ADB4 * param0)
{
    ov16_0223F720(param0, 2);
    ov16_0225B444(param0, ov16_0223DF10(param0));
}

static u8 ov16_02264768 (UnkStruct_0207ADB4 * param0, u8 param1, u8 param2)
{
    if (ov16_0223DF0C(param0) & 0x4) {
        if ((sub_02025FCC(ov16_0223E16C(param0, param1)) == 0) && (param2 <= 1)) {
            param2 += 103;
        }
    }

    return param2;
}
