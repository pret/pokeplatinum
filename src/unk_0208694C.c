#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02087A10_decl.h"

#include "constdata/const_020F2DAC.h"

#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_020021B0.h"
#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_020067E8.h"
#include "filesystem.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_0201567C.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_020279FC.h"
#include "unk_02073C2C.h"
#include "unk_020797C8.h"
#include "unk_02079D40.h"
#include "unk_0208694C.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
} UnkStruct_02087A10_sub1;

struct UnkStruct_02087A10_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    UnkStruct_020279FC * unk_18;
    UnkStruct_02087A10_sub1 unk_1C;
    u16 unk_38;
    u16 unk_3A[6][13];
    u16 unk_D6;
    u16 unk_D8[32];
    u16 unk_118[32];
    u16 unk_158;
    u16 unk_15A[3];
    UnkStruct_02018340 * unk_160;
    BOOL unk_164;
    UnkStruct_0200B358 * unk_168;
    UnkStruct_0200B144 * unk_16C;
    UnkStruct_0200B144 * unk_170;
    UnkStruct_0200B144 * unk_174;
    UnkStruct_02023790 * unk_178;
    UnkStruct_02023790 * unk_17C;
    UnkStruct_02023790 * unk_180;
    UnkStruct_02023790 * unk_184;
    UnkStruct_020218BC * unk_188;
    UnkStruct_0200C738 unk_18C;
    UnkStruct_02009714 * unk_318[4];
    UnkStruct_02009DC8 * unk_328[2][4];
    UnkStruct_ov19_021DA864 unk_348;
    UnkStruct_ov19_021DA864 unk_36C;
    UnkStruct_02022550 * unk_390[14];
    UnkStruct_02022550 * unk_3C8[12];
    UnkStruct_02022550 * unk_3F8[2];
    UnkStruct_0201CD38 * unk_400[7];
    UnkStruct_0205AA50 unk_41C[10];
    int unk_4BC;
    int unk_4C0;
    int unk_4C4;
    int unk_4C8;
    VecFx32 unk_4CC[2];
    int unk_4E4;
    int unk_4E8;
    int unk_4EC;
    int unk_4F0;
    int unk_4F4[7];
    void * unk_510;
    NNSG2dCharacterData * unk_514;
    void * unk_518;
    NNSG2dCharacterData * unk_51C;
    void * unk_520;
    NNSG2dPaletteData * unk_524;
    u8 unk_528[256];
    void * unk_628;
    BOOL unk_62C;
    int unk_630;
};

typedef struct {
    UnkStruct_02022550 * unk_00;
    UnkStruct_02022550 * unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_020879DC;

typedef struct {
    UnkStruct_02022550 * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_02087CDC;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02_0 : 2;
    u16  : 14;
    u8 unk_04_0 : 5;
    u8  : 3;
    u8 unk_05_0 : 5;
    u8  : 3;
} UnkStruct_020F2A14;

static int sub_0208694C(UnkStruct_020067E8 * param0, int * param1);
static int sub_02086B64(UnkStruct_020067E8 * param0, int * param1);
static int sub_02086F3C(UnkStruct_020067E8 * param0, int * param1);
static void sub_02087190(void * param0);
static void sub_020871CC(void);
static void sub_020871EC(UnkStruct_02018340 * param0);
static void sub_0208765C(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);
static void sub_0208769C(UnkStruct_02087A10 * param0, NARC * param1);
static void sub_02087D64(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, int * param2, int param3, int * param4, VecFx32 param5[], UnkStruct_02022550 ** param6, void * param7);
static void sub_0208737C(UnkStruct_02087A10 * param0, UnkStruct_020067E8 * param1);
static void sub_02088240(UnkStruct_02018340 * param0, int param1, VecFx32 param2[]);
static void sub_02088260(VecFx32 param0[], int param1);
static void sub_020877F4(UnkStruct_02087A10 * param0, NARC * param1);
static void sub_02087A10(UnkStruct_02087A10 * param0);
static void sub_020877C4(void);
static void sub_02087FC0(UnkStruct_02087A10 * param0, UnkStruct_020067E8 * param1, NARC * param2);
static void sub_02088350(UnkStruct_02087A10 * param0);
static void sub_02088514(u16 * param0);
static void sub_02088554(UnkStruct_0205AA50 * param0, const u16 * param1, int param2, int param3, int param4, int param5, u32 param6, u8 * param7);
static void sub_02088678(UnkStruct_0205AA50 * param0, const u16 * param1, u8 * param2, UnkStruct_02023790 * param3);
static void sub_02088844(u16 param0[][13], const int param1);
static void sub_02088754(UnkStruct_0205AA50 * param0, u16 * param1, int param2, u16 * param3, u8 * param4, UnkStruct_02023790 * param5);
static int sub_02088898(UnkStruct_02087A10 * param0, u16 param1, int param2);
static int sub_02088D08(int param0, int param1, int param2, int param3, u16 * param4, int param5);
static int sub_02088C9C(int param0, int param1, u16 * param2, int param3);
static void sub_02088E1C(UnkStruct_02022550 ** param0, int param1, int param2);
static void sub_020871B0(UnkStruct_02087A10 * param0, UnkStruct_0208737C * param1);
static void sub_02088E58(UnkStruct_0205AA50 * param0, u16 param1, int param2, u32 param3, u8 * param4);
static void sub_02088454(UnkStruct_02087A10 * param0, int param1);
static void sub_02088F40(int param0[], UnkStruct_02022550 ** param1, int param2);
static void sub_020879DC(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02087CDC(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02086B30(NNSG2dCharacterData * param0, NNSG2dPaletteData * param1, int param2, int param3);
static void sub_0208732C(int param0);
static void sub_02087544(UnkStruct_02087A10 * param0, UnkStruct_020067E8 * param1);
static void sub_02087BE4(UnkStruct_02087A10 * param0, UnkStruct_ov115_02261520 * param1);
static void sub_02086E6C(UnkStruct_02087A10 * param0, UnkStruct_0208737C * param1);
static void sub_02087F48(UnkStruct_0205AA50 * param0, int param1, UnkStruct_02023790 * param2);
static void sub_02088FD0(UnkStruct_02087A10 * param0);
static int sub_02086D38(UnkStruct_02087A10 * param0, int param1);
static int sub_02086F14(u16 * param0);
static void * sub_02088654(UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, u8 param2, u32 param3);
static BOOL sub_0208903C(UnkStruct_02087A10 * param0);

static const int Unk_020F2984[][4] = {
	{ 0x4, 0x44, 0x3, 0x1 },
	{ 0x24, 0x44, 0x8, 0x1 },
	{ 0x44, 0x44, 0xD, 0x1 },
	{ 0x0, 0xC8, 0x12, 0x1 },
	{ 0x65, 0x44, 0x14, 0x1 },
	{ 0x88, 0x44, 0x17, 0x1 },
	{ 0xB0, 0x44, 0x19, 0x1 },
	{ 0x16, 0x38, 0x25, 0x2 },
	{ 0x1A, 0x5B, 0x27, 0x0 }
};

static const u16 Unk_020F255A[] = {
	0xE002,
	0xE002,
	0xE003,
	0xE003,
	0xE004,
	0xE004,
	0xD004,
	0xD004,
	0xE007,
	0xE007,
	0xE007,
	0xE008,
	0xE008
};

static const u16 Unk_020F2574[] = {
	0xD004,
	0xD004,
	0xD004,
	0xD004,
	0xD004,
	0xD004,
	0xD004,
	0xD004,
	0xE007,
	0xE007,
	0xE007,
	0xE008,
	0xE008
};

static const u16 *Unk_02100C40[] = {
	Unk_020F255A,
	Unk_020F255A,
	Unk_020F255A,
	Unk_020F255A,
	Unk_020F2574
};

static const u16 Unk_020F251C[] = {
	0x19,
	0x39,
	0x59,
	0x61,
	0x7A,
	0x9E,
	0xC6,
	0x0
};

static const u8 Unk_020F24E8[] = {
	0x28,
	0x28,
	0x28,
	0x28,
	0x29,
	0x29,
	0x29
};

static const u16 Unk_020F261C[] = {
	0x12B,
	0x12C,
	0x12D,
	0x12E,
	0x12f,
	0x130,
	0x131,
	0x132,
	0x133,
	0x134,
	0x1DE,
	0x1AD,
	0x1AE,
	0xffff
};

static const u16 Unk_020F2638[] = {
	0x135,
	0x136,
	0x137,
	0x138,
	0x139,
	0x13A,
	0x13B,
	0x13C,
	0x13D,
	0x13E,
	0x1DE,
	0x1B3,
	0x1BE,
	0xffff
};

static const u16 Unk_020F2654[] = {
	0x13f,
	0x140,
	0x141,
	0x142,
	0x143,
	0x144,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1BB,
	0x1BC,
	0xffff
};

static const u16 Unk_020F25C8[] = {
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F2600[] = {
	0x121,
	0x122,
	0x123,
	0x124,
	0x125,
	0x126,
	0x127,
	0x128,
	0x129,
	0x12A,
	0x1DE,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F268C[] = {
	0x145,
	0x146,
	0x147,
	0x148,
	0x149,
	0x14A,
	0x14B,
	0x14C,
	0x14D,
	0x14E,
	0x1DE,
	0x1AD,
	0x1AE,
	0xffff
};

static const u16 Unk_020F26A8[] = {
	0x14f,
	0x150,
	0x151,
	0x152,
	0x153,
	0x154,
	0x155,
	0x156,
	0x157,
	0x158,
	0x1DE,
	0x1B3,
	0x1BE,
	0xffff
};

static const u16 Unk_020F27F8[] = {
	0x159,
	0x15A,
	0x15B,
	0x15C,
	0x15D,
	0x15E,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1BB,
	0x1BC,
	0xffff
};

static const u16 Unk_020F26FC[] = {
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F27C0[] = {
	0x121,
	0x122,
	0x123,
	0x124,
	0x125,
	0x126,
	0x127,
	0x128,
	0x129,
	0x12A,
	0x1DE,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F2734[] = {
	0x1AD,
	0x1AE,
	0x1C4,
	0x1C5,
	0x1AB,
	0x1AC,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1BB,
	0x1BC,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F276C[] = {
	0x1B4,
	0x1B5,
	0x1B2,
	0x1B3,
	0x1B9,
	0x1BA,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F2788[] = {
	0x1af,
	0x1B0,
	0x1C3,
	0x1D0,
	0x1C0,
	0x1D2,
	0x1BD,
	0x1BE,
	0x1bf,
	0x1B1,
	0x1C1,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F27A4[] = {
	0x1CB,
	0x1CC,
	0x1CD,
	0x1CE,
	0x1cf,
	0x1C6,
	0x1C8,
	0x1C9,
	0x1C7,
	0x1CA,
	0x1D1,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F27DC[] = {
	0x1D3,
	0x1D4,
	0x1D5,
	0x1D6,
	0x1D7,
	0x1D8,
	0x1D9,
	0x1DA,
	0x1DD,
	0x1DB,
	0x1DC,
	0x1DE,
	0x1DE,
	0xffff
};

static const u16 Unk_020F2718[] = {
	0xA2,
	0xA3,
	0xA4,
	0xA5,
	0xA6,
	0xA7,
	0xA8,
	0xA9,
	0xAA,
	0xAB,
	0x1,
	0xE1,
	0xE2,
	0xffff
};

static const u16 Unk_020F258E[] = {
	0xE3,
	0xE4,
	0xf9,
	0xf8,
	0xE5,
	0xE6,
	0xf5,
	0xf6,
	0xf7,
	0xE7,
	0x1,
	0xEE,
	0xef,
	0xffff
};

static const u16 Unk_020F26E0[] = {
	0xE8,
	0xE9,
	0xEA,
	0xEB,
	0xEC,
	0xED,
	0xf0,
	0xf1,
	0xf2,
	0xf3,
	0xf4,
	0x106,
	0x104,
	0xffff
};

static const u16 Unk_020F26C4[] = {
	0xff,
	0x100,
	0x101,
	0x102,
	0x103,
	0xfc,
	0xfa,
	0xfd,
	0xfb,
	0xfe,
	0x105,
	0x1,
	0x1,
	0xffff
};

static const u16 Unk_020F25E4[] = {
	0x107,
	0x108,
	0x109,
	0x10A,
	0x10B,
	0x10C,
	0x10D,
	0x10E,
	0x111,
	0x10f,
	0x110,
	0x1,
	0x1,
	0xffff
};

static const u16 Unk_020F2870[] = {
	0x121,
	0x122,
	0x123,
	0x124,
	0x125,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0xffff
};

static const u16 Unk_020F2894[] = {
	0x126,
	0x127,
	0x128,
	0x129,
	0x12A,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0xffff
};

static const u16 Unk_020F28B8[] = {
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0x1,
	0xffff
};

const u16 *Unk_02100C54[][5] = {
	{ Unk_020F261C, Unk_020F2638, Unk_020F2654, Unk_020F25C8, Unk_020F2600 },
	{ Unk_020F268C, Unk_020F26A8, Unk_020F27F8, Unk_020F26FC, Unk_020F27C0 },
	{ Unk_020F2734, Unk_020F276C, Unk_020F2788, Unk_020F27A4, Unk_020F27DC },
	{ Unk_020F2718, Unk_020F258E, Unk_020F26E0, Unk_020F26C4, Unk_020F25E4 },
	{ Unk_020F2870, Unk_020F2894, Unk_020F28B8, Unk_020F28B8, Unk_020F28B8 }
};

static const u16 Unk_020F2BBE[][3] = {
	{ 0x3, 0x1, 0x2 },
	{ 0x5, 0x1, 0x4 },
	{ 0x7, 0x1, 0x6 },
	{ 0x9, 0x1, 0x8 },
	{ 0xB, 0x1, 0xA },
	{ 0x53, 0x1, 0x52 },
	{ 0x55, 0x1, 0x54 },
	{ 0x57, 0x1, 0x56 },
	{ 0x59, 0x1, 0x58 },
	{ 0x5B, 0x1, 0x5A },
	{ 0x45, 0x1, 0x44 },
	{ 0x47, 0x1, 0x46 },
	{ 0x49, 0x1, 0x48 },
	{ 0x95, 0x1, 0x94 },
	{ 0x97, 0x1, 0x96 },
	{ 0x99, 0x1, 0x98 },
	{ 0xAC, 0x1, 0xC6 },
	{ 0xAD, 0x1, 0xC7 },
	{ 0xAE, 0x1, 0xC8 },
	{ 0xaf, 0x1, 0xC9 },
	{ 0xB0, 0x1, 0xCA },
	{ 0xB1, 0x1, 0xCB },
	{ 0xB2, 0x1, 0xCC },
	{ 0xB3, 0x1, 0xCD },
	{ 0xB4, 0x1, 0xCE },
	{ 0xB5, 0x1, 0xcf },
	{ 0xB6, 0x1, 0xD0 },
	{ 0xB7, 0x1, 0xD1 },
	{ 0xB8, 0x1, 0xD2 },
	{ 0xB9, 0x1, 0xD3 },
	{ 0xBA, 0x1, 0xD4 },
	{ 0xBB, 0x1, 0xD5 },
	{ 0xBC, 0x1, 0xD6 },
	{ 0xBD, 0x1, 0xD7 },
	{ 0xBE, 0x1, 0xD8 },
	{ 0xbf, 0x1, 0xD9 },
	{ 0xC0, 0x1, 0xDA },
	{ 0xC1, 0x1, 0xDB },
	{ 0xC2, 0x1, 0xDC },
	{ 0xC3, 0x1, 0xDD },
	{ 0xC4, 0x1, 0xDE },
	{ 0xC5, 0x1, 0xdf },
	{ 0x25, 0x26, 0x24 },
	{ 0x75, 0x76, 0x74 },
	{ 0xC, 0xD, 0x1 },
	{ 0xE, 0x0f, 0x1 },
	{ 0x10, 0x11, 0x1 },
	{ 0x12, 0x13, 0x1 },
	{ 0x14, 0x15, 0x1 },
	{ 0x16, 0x17, 0x1 },
	{ 0x18, 0x19, 0x1 },
	{ 0x1A, 0x1B, 0x1 },
	{ 0x1C, 0x1D, 0x1 },
	{ 0x1E, 0x1f, 0x1 },
	{ 0x20, 0x21, 0x1 },
	{ 0x22, 0x23, 0x1 },
	{ 0x27, 0x28, 0x1 },
	{ 0x29, 0x2A, 0x1 },
	{ 0x5C, 0x5D, 0x1 },
	{ 0x5E, 0x5f, 0x1 },
	{ 0x60, 0x61, 0x1 },
	{ 0x62, 0x63, 0x1 },
	{ 0x64, 0x65, 0x1 },
	{ 0x66, 0x67, 0x1 },
	{ 0x68, 0x69, 0x1 },
	{ 0x6A, 0x6B, 0x1 },
	{ 0x6C, 0x6D, 0x1 },
	{ 0x6E, 0x6f, 0x1 },
	{ 0x70, 0x71, 0x1 },
	{ 0x72, 0x73, 0x1 },
	{ 0x77, 0x78, 0x1 },
	{ 0x79, 0x7A, 0x1 },
	{ 0x30, 0x31, 0x32 },
	{ 0x33, 0x34, 0x35 },
	{ 0x36, 0x37, 0x38 },
	{ 0x39, 0x3A, 0x3B },
	{ 0x3C, 0x3D, 0x3E },
	{ 0x80, 0x81, 0x82 },
	{ 0x83, 0x84, 0x85 },
	{ 0x86, 0x87, 0x88 },
	{ 0x89, 0x8A, 0x8B },
	{ 0x8C, 0x8D, 0x8E }
};

static const u16 Unk_020F2954[][2] = {
	{ 0x24, 0x26 },
	{ 0x74, 0x76 },
	{ 0x32, 0x31 },
	{ 0x35, 0x34 },
	{ 0x38, 0x37 },
	{ 0x3B, 0x3A },
	{ 0x3E, 0x3D },
	{ 0x82, 0x81 },
	{ 0x85, 0x84 },
	{ 0x88, 0x87 },
	{ 0x8B, 0x8A },
	{ 0x8E, 0x8D }
};

static const u16 Unk_020F292C[][2] = {
	{ 0x31, 0x32 },
	{ 0x34, 0x35 },
	{ 0x37, 0x38 },
	{ 0x3A, 0x3B },
	{ 0x3D, 0x3E },
	{ 0x81, 0x82 },
	{ 0x84, 0x85 },
	{ 0x87, 0x88 },
	{ 0x8A, 0x8B },
	{ 0x8D, 0x8E }
};

static const int Unk_020F24F0[] = {
	0x70,
	0x4C,
	0x48
};

static const u8 Unk_020F24DC[4] = {
	0x4,
	0x7,
	0xD,
	0xA
};

const u16 Unk_020F252C[] = {
	0x3,
	0x2B,
	0x20,
	0x2f,
	0x1,
	0x2B,
	0x3f,
	0x9,
	0x30,
	0xE2,
	0xffff
};

const u16 Unk_020F2830[] = {
	0x8E,
	0x62,
	0x93,
	0xA1,
	0x2f,
	0x1,
	0x7C,
	0x74,
	0x60,
	0x7E,
	0xf1,
	0x91,
	0x30,
	0xE2,
	0xffff
};

const u16 Unk_020F2542[] = {
	0x8D,
	0x74,
	0x60,
	0x6A,
	0x2f,
	0x1,
	0x2B,
	0x3f,
	0x9,
	0x30,
	0xE2,
	0xffff
};

static const u16 *dummy[] = {
    Unk_020F252C,
	Unk_020F2830,
	Unk_020F2542,
};

static const int Unk_020F2850[] = {
	0x0,
	0x1,
	0x2,
	0x3,
	0x4,
	0x5,
	0x6,
	0x3
};

const UnkStruct_0208BE5C Unk_020F2DAC = {
    sub_0208694C,
    sub_02086B64,
    sub_02086F3C,
    0xFFFFFFFF
};

static UnkStruct_02087A10 * Unk_021C0A30;

static int sub_0208694C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02087A10 * v0;
    NARC * v1;

    switch (*param1) {
    case 0:
        sub_02017798(NULL, NULL);
        sub_020177A4();
        GX_DisableEngineALayers();
        GX_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        CreateHeap(3, 18, 0x20000 + 0x8000);

        v0 = sub_0200681C(param0, sizeof(UnkStruct_02087A10), 18);
        memset(v0, 0, sizeof(UnkStruct_02087A10));
        v0->unk_160 = sub_02018340(18);
        v1 = NARC_ctor(31, 18);

        v0->unk_168 = sub_0200B358(18);
        v0->unk_16C = sub_0200B144(0, 26, 422, 18);
        v0->unk_170 = sub_0200B144(1, 26, 427, 18);
        v0->unk_174 = sub_0200B144(1, 26, 368, 18);

        sub_02017DD4(4, 8);
        sub_020871CC();
        sub_020871EC(v0->unk_160);
        sub_020871B0(v0, (UnkStruct_0208737C *)sub_02006840(param0));
        sub_0208769C(v0, v1);
        sub_02002BB8(2, 18);
        sub_02017798(sub_02087190, NULL);
        sub_0208737C(v0, param0);
        sub_02002BEC(0, 18);
        sub_020877C4();
        sub_020877F4(v0, v1);
        sub_02087A10(v0);
        sub_02087FC0(v0, param0, v1);
        sub_02088754(&v0->unk_41C[4], v0->unk_D8, v0->unk_158, v0->unk_15A, v0->unk_528, v0->unk_17C);
        sub_02004550(52, 0, 0);
        sub_0200F174(0, 1, 1, 0x0, 16, 1, 18);
        sub_0208732C(1);

        {
            Unk_021BF67C.unk_65 = 1;
            GX_SwapDisplay();
        }

        NARC_dtor(v1);
        (*param1)++;
        break;
    case 1:
        v0 = sub_0200682C(param0);

        if (v0->unk_00 == 1) {
            sub_02086B30(v0->unk_51C, v0->unk_524, v0->unk_04, v0->unk_08);
        }

        Unk_021C0A30 = v0;
        v0->unk_628 = sub_0201567C(NULL, 1, 12, 18);

        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

static void sub_02086B30 (NNSG2dCharacterData * param0, NNSG2dPaletteData * param1, int param2, int param3)
{
    u8 * v0;

    GX_LoadOBJ(param0->pRawData, (21 * 32 + 31) * 0x20, 0x20 * 4 * 4);
    v0 = (u8 *)param1->pRawData;
    GX_LoadOBJPltt((void *)(v0 + sub_02079EDC(param2, param3, 0) * 0x20), 6 * 0x20, 0x20);
}

static int sub_02086B64 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02087A10 * v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        if (sub_0200F2AC()) {
            *param1 = 1;
            v0->unk_630 = 0;
        }
        break;
    case 1:
        v0->unk_630++;

        sub_02088FD0(v0);
        sub_02088F40(v0->unk_4F4, v0->unk_390, v0->unk_4C4);

        if (v0->unk_630 > 5) {
            *param1 = 2;
            v0->unk_630 = 0;
        }
        break;
    case 2:
        switch (v0->unk_4C0) {
        case 4:
            *param1 = sub_02086D38(v0, *param1);
            sub_02088FD0(v0);
            break;
        case 5:
            sub_02087544(v0, param0);
            sub_0201ADA4(&v0->unk_41C[9], 0xf0f);
            sub_0200E060(&v0->unk_41C[9], 0, ((32 * 8)), 10);
            v0->unk_4BC = sub_0201D738(&v0->unk_41C[9], 1, v0->unk_180, 0, 0, 1, NULL);
            sub_0201A954(&v0->unk_41C[9]);
            v0->unk_4C0 = 6;
            break;
        case 6:
            if (sub_0201D724(v0->unk_4BC) == 0) {
                sub_02005748(1506);
                v0->unk_4F4[6]++;
                v0->unk_630 = 0;
                v0->unk_4C0 = 7;
            }
            break;
        case 7:
            v0->unk_630++;

            if (v0->unk_630 > 30) {
                sub_0200F174(2, 0, 0, 0x0, 16, 1, 18);
                *param1 = 3;
            }
            break;
        }

        sub_02087D64(v0->unk_160, &v0->unk_41C[0], &v0->unk_4C0, v0->unk_4C4, &v0->unk_4C8, v0->unk_4CC, v0->unk_390, v0->unk_514->pRawData);
        sub_02088F40(v0->unk_4F4, v0->unk_390, v0->unk_4C4);
        sub_02088514(&v0->unk_38);
        break;
    case 3:
        if (sub_0200F2AC()) {
            return 1;
        }
        break;
    }

    sub_020219F8(v0->unk_188);

    return 0;
}

static int sub_02086D38 (UnkStruct_02087A10 * param0, int param1)
{
    sub_02088350(param0);

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_SELECT) {
        if (sub_02021D34(param0->unk_390[8]) == 0) {
            sub_02021CAC(param0->unk_390[8], 1);
            return param1;
        }

        if (param0->unk_00 != 4) {
            param0->unk_4C0 = 0;
            param0->unk_4C4++;

            if (param0->unk_4C4 >= 3) {
                param0->unk_4C4 = 0;
            }

            param0->unk_4F4[param0->unk_4C4]++;

            sub_02088844(param0->unk_3A, param0->unk_4C4);
            sub_02005748(1694);

            param0->unk_1C.unk_14 = 1;
        }

        param0->unk_4F4[param0->unk_4C4]++;

        sub_02088844(param0->unk_3A, param0->unk_4C4);
        sub_02005748(1694);
    } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        param1 = sub_02088898(param0, param0->unk_3A[param0->unk_1C.unk_04][param0->unk_1C.unk_00], 1);
        param0->unk_1C.unk_14 = 1;
    } else if (param0->unk_62C == 1) {
        param1 = sub_02088898(param0, param0->unk_3A[param0->unk_1C.unk_04][param0->unk_1C.unk_00], 0);
        param0->unk_1C.unk_14 = 0;
    } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        param1 = sub_02088898(param0, (0xe001 + 6), 1);
    } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_R) {
        param1 = sub_02088898(param0, (0xe001 + 5), 1);
    }

    return param1;
}

static void sub_02086E6C (UnkStruct_02087A10 * param0, UnkStruct_0208737C * param1)
{
    if (param0->unk_00 == 0) {
        UnkStruct_02023790 * v0;

        if (param0->unk_04 == 0) {
            v0 = sub_0200B1EC(param0->unk_170, 0 + sub_0201D2E8() % 18);
        } else if (param0->unk_04 == 1) {
            v0 = sub_0200B1EC(param0->unk_170, 18 + sub_0201D2E8() % 18);
        }

        sub_02023810(param1->unk_18, v0);
        sub_020237BC(v0);
        sub_02023DF0(param1->unk_18, param1->unk_1C, 10);
    } else if (param0->unk_00 == 3) {
        UnkStruct_02023790 * v1;

        v1 = sub_0200B1EC(param0->unk_170, 88 + (sub_0201D2E8() % 2));

        sub_02023810(param1->unk_18, v1);
        sub_020237BC(v1);
        sub_02023DF0(param1->unk_18, param1->unk_1C, 10);
    } else {
        param1->unk_14 = 1;
    }
}

static int sub_02086F14 (u16 * param0)
{
    int v0 = 1;
    int v1;

    for (v1 = 0;; v1++) {
        if (param0[v1] == 0xffff) {
            break;
        }

        if (param0[v1] != 0x1de) {
            v0 = 0;
        }
    }

    return v0;
}

static int sub_02086F3C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02087A10 * v0 = sub_0200682C(param0);
    UnkStruct_0208737C * v1 = (UnkStruct_0208737C *)sub_02006840(param0);
    int v2;

    v0->unk_D8[v0->unk_158] = 0xffff;

    if (v0->unk_00 == 1) {
        u16 v3[10 + 1];
        UnkStruct_02073C74 * v4;

        v4 = sub_02073C74(18);
        sub_02073D80(v4, v0->unk_04, 5, 10, 10, 10, 10, 10);
        FreeToHeap(v4);
    }

    if ((v0->unk_158 == 0) || (sub_0200220C(v0->unk_D8, v0->unk_118) == 0) || sub_02086F14(v0->unk_D8)) {
        sub_02086E6C(v0, v1);
    } else {
        sub_020021B0(v0->unk_118, v0->unk_D8);
        sub_020021B0(v1->unk_1C, v0->unk_D8);
        sub_02023D28(v1->unk_18, v0->unk_D8);
    }

    sub_020237BC(v0->unk_184);

    for (v2 = 0; v2 < 7; v2++) {
        sub_020067D0(v0->unk_400[v2]);
    }

    sub_0200A4E4(v0->unk_328[0][0]);
    sub_0200A4E4(v0->unk_328[1][0]);
    sub_0200A6DC(v0->unk_328[0][1]);
    sub_0200A6DC(v0->unk_328[1][1]);

    for (v2 = 0; v2 < 4; v2++) {
        sub_02009754(v0->unk_318[v2]);
    }

    sub_02021964(v0->unk_188);
    sub_0200A878();
    FreeToHeapExplicit(18, v0->unk_510);

    if (v0->unk_00 == 1) {
        FreeToHeapExplicit(18, v0->unk_518);
        FreeToHeapExplicit(18, v0->unk_520);
    }

    sub_02019044(v0->unk_160, 7);
    sub_0201E958();
    sub_0201F8B4();
    sub_0208765C(v0->unk_160, v0->unk_41C);
    sub_02002C28(0);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    sub_02002C60(2);

    if (v0->unk_180) {
        sub_020237BC(v0->unk_180);
    }

    sub_020237BC(v0->unk_178);
    sub_020237BC(v0->unk_17C);
    sub_0200B190(v0->unk_174);
    sub_0200B190(v0->unk_170);
    sub_0200B190(v0->unk_16C);
    sub_0200B3F0(v0->unk_168);
    sub_02006830(param0);
    sub_02017798(NULL, NULL);
    DestroyHeap(18);

    {
        Unk_021BF67C.unk_65 = 0;
        GX_SwapDisplay();
    }

    return 1;
}

UnkStruct_0208737C * sub_0208712C (int param0, int param1, int param2, int param3, UnkStruct_020279FC * param4)
{
    UnkStruct_0208737C * v0;

    v0 = (UnkStruct_0208737C *)AllocFromHeap(param0, sizeof(UnkStruct_0208737C));

    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_0C = param3;
    v0->unk_14 = 0;
    v0->unk_1C[0] = 0xffff;
    v0->unk_18 = sub_02023790(32, param0);
    v0->unk_44 = 0;
    v0->unk_48 = NULL;
    v0->unk_10 = 0;
    v0->unk_4C = param4;
    v0->unk_08 = 0;

    return v0;
}

void sub_0208716C (UnkStruct_0208737C * param0)
{
    GF_ASSERT((param0->unk_18) != NULL);
    GF_ASSERT((param0) != NULL);

    sub_020237BC(param0->unk_18);
    FreeToHeap(param0);
}

static void sub_02087190 (void * param0)
{
    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void sub_020871B0 (UnkStruct_02087A10 * param0, UnkStruct_0208737C * param1)
{
    param0->unk_00 = param1->unk_00;
    param0->unk_04 = param1->unk_04;
    param0->unk_08 = param1->unk_08;
    param0->unk_0C = param1->unk_0C;
    param0->unk_10 = param1->unk_10;
    param0->unk_18 = param1->unk_4C;
}

static void sub_020871CC (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GX_SetBanks(&v0);
}

static void sub_020871EC (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v4, 0);
        sub_02019EBC(param0, 4);
    }

    sub_0208732C(0);
    sub_02019690(0, 32, 0, 18);
    sub_02019690(4, 32, 0, 18);

    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd0Position(0, 0, 255, 64);
    G2S_BlendNone();
}

static void sub_0208732C (int param0)
{
    GX_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG0, param0);
    GX_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, param0);
    GX_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG2, param0);
    GX_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG3, 0);
    GX_EngineAToggleLayers(GX_BLEND_PLANEMASK_OBJ, param0);
    GX_EngineBToggleLayers(GX_BLEND_PLANEMASK_BG0, param0);
    GX_EngineBToggleLayers(GX_BLEND_PLANEMASK_BG1, 0);
    GX_EngineBToggleLayers(GX_BLEND_PLANEMASK_OBJ, 0);
}

static void sub_0208737C (UnkStruct_02087A10 * param0, UnkStruct_020067E8 * param1)
{
    UnkStruct_0208737C * v0 = (UnkStruct_0208737C *)sub_02006840(param1);

    param0->unk_4C0 = 4;

    sub_02088260(param0->unk_4CC, 0);
    sub_02019184(param0->unk_160, 0 + param0->unk_4C8, 0, param0->unk_4CC[param0->unk_4C8].x);
    sub_02019184(param0->unk_160, 0 + param0->unk_4C8, 3, param0->unk_4CC[param0->unk_4C8].y);
    sub_02019184(param0->unk_160, 0 + ((param0->unk_4C8) ^ 1), 0, param0->unk_4CC[((param0->unk_4C8) ^ 1)].x);
    sub_02019184(param0->unk_160, 0 + ((param0->unk_4C8) ^ 1), 3, param0->unk_4CC[((param0->unk_4C8) ^ 1)].y);

    param0->unk_118[0] = 0xffff;

    if (v0->unk_18) {
        sub_02023DF0(v0->unk_18, param0->unk_118, 32);
    }

    MI_CpuFill16(param0->unk_D8, 0x1, 32 * 2);

    if (param0->unk_00 == 1) {
        UnkStruct_02073C74 * v1;

        v1 = sub_02073C74(18);
        sub_02073D80(v1, param0->unk_04, 5, 10, 10, 10, 10, 10);
        sub_0200B538(param0->unk_168, 0, sub_02076B10(v1));
        FreeToHeap(v1);
    }

    if (v0->unk_44 != 0) {
        param0->unk_14 = 1;
    }

    param0->unk_178 = sub_0200B29C(param0->unk_168, param0->unk_16C, Unk_020F2850[param0->unk_00], 18);
    param0->unk_17C = sub_0200B29C(param0->unk_168, param0->unk_16C, 8, 18);
    param0->unk_184 = sub_0200B1EC(param0->unk_16C, 7);
    param0->unk_158 = sub_020021F0(param0->unk_118);
    param0->unk_1C.unk_00 = 0;
    param0->unk_1C.unk_04 = 1;
    param0->unk_1C.unk_08 = -1;
    param0->unk_1C.unk_0C = -1;
    param0->unk_1C.unk_14 = 0;
    param0->unk_1C.unk_18 = 0;
    param0->unk_4E8 = 0xffffffff;
    param0->unk_4EC = 0;
    param0->unk_4F0 = 0;
    param0->unk_D8[param0->unk_0C] = 0xffff;

    {
        int v2;

        for (v2 = 0; v2 < 7; v2++) {
            param0->unk_4F4[v2] = 0;
        }

        switch (param0->unk_00) {
        case 4:
            param0->unk_4F4[3] = 1;
            break;
        default:
            param0->unk_4F4[0] = 1;
            break;
        }
    }
}

static void sub_02087544 (UnkStruct_02087A10 * param0, UnkStruct_020067E8 * param1)
{
    UnkStruct_02023790 * v0 = NULL;
    UnkStruct_0208737C * v1 = (UnkStruct_0208737C *)sub_02006840(param1);

    if (v1->unk_44 != 0) {
        int v2, v3;

        v0 = sub_02023790(200, 18);
        param0->unk_180 = NULL;
        v2 = sub_0207999C(v1->unk_48);
        v3 = sub_020799A0(v1->unk_48);

        sub_0200BD40(param0->unk_168, 1, v1->unk_48, v2);

        if (v2 != v3) {
            sub_0200BD40(param0->unk_168, 2, v1->unk_48, v3);
            v1->unk_44 += 2;
        } else {
            sub_0200BD40(param0->unk_168, 2, v1->unk_48, v2);
        }

        if ((param0->unk_158 == 0) || sub_02086F14(param0->unk_D8)) {
            UnkStruct_02073C74 * v4 = sub_02073C74(18);

            sub_02073D80(v4, param0->unk_04, 1, 0, 0, 0, 0, 0);
            sub_0200B538(param0->unk_168, 0, sub_02076B10(v4));
            FreeToHeap(v4);
        } else {
            param0->unk_D8[param0->unk_158] = 0xffff;
            sub_02023D28(v0, param0->unk_D8);
            sub_0200B48C(param0->unk_168, 0, v0, 0, 0, 0);
        }

        param0->unk_180 = sub_0200B29C(param0->unk_168, param0->unk_174, v1->unk_44, 18);
        param0->unk_14 = 1;

        sub_020237BC(v0);
    }
}

static void sub_0208765C (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        sub_0201A8FC(&param1[v0]);
    }

    sub_02019044(param0, 4);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    FreeToHeapExplicit(18, param0);
}

static void sub_0208769C (UnkStruct_02087A10 * param0, NARC * param1)
{
    UnkStruct_02018340 * v0 = param0->unk_160;

    sub_02007130(param1, 0, 0, 0, 16 * 3 * 2, 18);
    sub_02006E84(12, 12, 4, 0, 16 * 2, 18);
    sub_0201975C(4, 0);
    sub_020070E8(param1, 2, v0, 2, 0, ((32 * 8) * 0x20), 1, 18);
    sub_0200710C(param1, 4, v0, 2, 0, 32 * 24 * 2, 1, 18);
    sub_020070E8(param1, 2, v0, 1, 0, 32 * 8 * 0x20, 1, 18);
    sub_0200710C(param1, 6, v0, 1, 0, (32 * 14 * 2), 1, 18);
    sub_0200710C(param1, 7, v0, 0, 0, (32 * 14 * 2), 1, 18);
    sub_02002E98(0, 12 * 32, 18);
    sub_0200DD0C(param0->unk_160, 4, ((32 * 8)), 10, sub_02027B50(param0->unk_18), 18);
    sub_02002E98(4, 12 * 32, 18);

    param0->unk_510 = sub_020071B4(param1, 16, 1, &param0->unk_514, 18);
}

void sub_020877C4 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 18
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 18);
    sub_0201E994();
    sub_0201F8E4();
}

static void sub_020877F4 (UnkStruct_02087A10 * param0, NARC * param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 18);

    param0->unk_188 = sub_020095C4(40 + 4, &param0->unk_18C, 18);

    sub_0200964C(&param0->unk_18C, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_318[v0] = sub_02009714(2, v0, 18);
    }

    param0->unk_328[0][0] = sub_02009A4C(param0->unk_318[0], param1, 10, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 18);
    param0->unk_328[0][1] = sub_02009B04(param0->unk_318[1], param1, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 9, 18);
    param0->unk_328[0][2] = sub_02009BC4(param0->unk_318[2], param1, 12, 1, 0, 2, 18);
    param0->unk_328[0][3] = sub_02009BC4(param0->unk_318[3], param1, 14, 1, 0, 3, 18);

    if (param0->unk_00 == 1) {
        param0->unk_518 = sub_02006F50(19, sub_02079D8C(param0->unk_04, 0, param0->unk_08), 0, &param0->unk_51C, 18);
        DC_FlushRange(param0->unk_51C, 0x20 * 4 * 4);

        param0->unk_520 = sub_02006F88(19, sub_02079FD0(), &param0->unk_524, 18);
        DC_FlushRange(param0->unk_524, 0x20 * 4);
    }

    param0->unk_328[1][0] = sub_02009A4C(param0->unk_318[0], param1, 11, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, 18);
    param0->unk_328[1][1] = sub_02009B04(param0->unk_318[1], param1, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, 18);
    param0->unk_328[1][2] = sub_02009BC4(param0->unk_318[2], param1, 13, 1, 1, 2, 18);
    param0->unk_328[1][3] = sub_02009BC4(param0->unk_318[3], param1, 15, 1, 1, 3, 18);

    sub_0200A328(param0->unk_328[0][0]);
    sub_0200A328(param0->unk_328[1][0]);
    sub_0200A5C8(param0->unk_328[0][1]);
    sub_0200A5C8(param0->unk_328[1][1]);
}

static void sub_020879DC (UnkStruct_0201CD38 * param0, void * param1)
{
    const VecFx32 * v0;
    VecFx32 v1;
    UnkStruct_020879DC * v2 = (UnkStruct_020879DC *)param1;

    v0 = sub_02021D28(v2->unk_00);
    v1.x = v0->x + v2->unk_08;
    v1.y = FX32_ONE * Unk_020F2984[v2->unk_0C][1];
    v1.z = 0;

    sub_02021C50(v2->unk_04, &v1);
}

static void sub_02087A10 (UnkStruct_02087A10 * param0)
{
    int v0;

    sub_020093B4(&param0->unk_348, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 1, param0->unk_318[0], param0->unk_318[1], param0->unk_318[2], param0->unk_318[3], NULL, NULL);
    sub_020093B4(&param0->unk_36C, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_318[0], param0->unk_318[1], param0->unk_318[2], param0->unk_318[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v1;

        v1.unk_00 = param0->unk_188;
        v1.unk_04 = &param0->unk_348;
        v1.unk_08.x = FX32_CONST(32);
        v1.unk_08.y = FX32_CONST(96);
        v1.unk_08.z = 0;
        v1.unk_14.x = FX32_ONE;
        v1.unk_14.y = FX32_ONE;
        v1.unk_14.z = FX32_ONE;
        v1.unk_20 = 0;
        v1.unk_24 = 1;
        v1.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.unk_2C = 18;

        for (v0 = 0; v0 < 9; v0++) {
            v1.unk_08.x = FX32_ONE * Unk_020F2984[v0][0];
            v1.unk_08.y = FX32_ONE * Unk_020F2984[v0][1];

            param0->unk_390[v0] = sub_02021AA0(&v1);

            sub_02021CC8(param0->unk_390[v0], 1);
            sub_02021D6C(param0->unk_390[v0], Unk_020F2984[v0][2]);
            sub_02021F58(param0->unk_390[v0], Unk_020F2984[v0][3]);
        }

        sub_02021CAC(param0->unk_390[4], 0);
        sub_02021CAC(param0->unk_390[8], 0);

        for (v0 = 0; v0 < 7; v0++) {
            UnkStruct_020879DC * v2;

            param0->unk_400[v0] = sub_0200679C(sub_020879DC, 16, 5, 18);
            v2 = sub_0201CED0(param0->unk_400[v0]);
            v2->unk_00 = param0->unk_390[7];
            v2->unk_04 = param0->unk_390[v0];
            v2->unk_08 = FX32_ONE * Unk_020F2984[v0][0];
            v2->unk_0C = v0;
        }

        for (v0 = 0; v0 < param0->unk_0C; v0++) {
            v1.unk_08.x = FX32_ONE * ((10 * 8) + v0 * 12);
            v1.unk_08.y = FX32_ONE * (4 * 8 + 7);

            param0->unk_3C8[v0] = sub_02021AA0(&v1);

            sub_02021CC8(param0->unk_3C8[v0], 1);
            sub_02021D6C(param0->unk_3C8[v0], 43);
        }

        sub_02088E1C(param0->unk_3C8, param0->unk_158, param0->unk_0C);
        sub_02087BE4(param0, &v1);
    }

    GX_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GX_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_02087BE4 (UnkStruct_02087A10 * param0, UnkStruct_ov115_02261520 * param1)
{
    param1->unk_08.x = FX32_ONE * 24;
    param1->unk_08.y = FX32_ONE * (16 - 8);
    param0->unk_3F8[0] = sub_02021AA0(param1);

    sub_02021CC8(param0->unk_3F8[0], 1);

    switch (param0->unk_00) {
    case 0:
        if (param0->unk_04 == 0) {
            sub_02021D6C(param0->unk_3F8[0], 48);
        } else {
            sub_02021D6C(param0->unk_3F8[0], 49);
        }
        break;
    case 3:
        sub_02021D6C(param0->unk_3F8[0], 51);
        break;
    case 6:
        sub_02021D6C(param0->unk_3F8[0], 55);
        break;
    case 5:
        sub_02021D6C(param0->unk_3F8[0], 54);
        break;
    case 4:
    case 7:
        sub_02021D6C(param0->unk_3F8[0], 53);
        break;
    case 2:
        sub_02021D6C(param0->unk_3F8[0], 47);
        break;
    case 1:
        sub_02021D6C(param0->unk_3F8[0], 50);

        if (param0->unk_10 != 2) {
            param1->unk_08.x = FX32_ONE * ((10 * 8) + param0->unk_0C * 13);
            param1->unk_08.y = FX32_ONE * ((4 * 8 + 7) - 12);
            param0->unk_3F8[1] = sub_02021AA0(param1);

            if (param0->unk_10 == 0) {
                sub_02021D6C(param0->unk_3F8[1], 45);
            } else {
                sub_02021D6C(param0->unk_3F8[1], 46);
            }
        }
        break;
    }
}

static void sub_02087CDC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02087CDC * v0 = (UnkStruct_02087CDC *)param1;
    VecFx32 v1;

    v1.y = v0->unk_0C;
    v1.z = 0;

    switch (v0->unk_04) {
    case 0:
        v1.x = v0->unk_08 + 4 * FX32_ONE;
        sub_02021C50(v0->unk_00, &v1);
        break;
    case 2:
        v1.x = v0->unk_08 - 3 * FX32_ONE;
        sub_02021C50(v0->unk_00, &v1);
        break;
    case 4:
        v1.x = v0->unk_08 + 2 * FX32_ONE;
        sub_02021C50(v0->unk_00, &v1);
        break;
    case 6:
        v1.x = v0->unk_08;
        sub_02021C50(v0->unk_00, &v1);
        sub_020067D0(param0);
        break;
    }

    v0->unk_04++;
}

static void sub_02087D64 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, int * param2, int param3, int * param4, VecFx32 param5[], UnkStruct_02022550 ** param6, void * param7)
{
    int v0 = *param4;
    int v1 = v0 ^ 1;
    int v2;

    switch (*param2) {
    case 0:
    {
        u16 v3 = Unk_020F24DC[param3] | (Unk_020F24DC[param3] << 4);

        sub_02006E60(31, 6 + param3, param0, 0 + v0, 0, (32 * 14 * 2), 1, 18);
        sub_02088260(param5, v0);
        sub_02088E58(&param1[v0], v3, param3, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((0 & 0xff) << 0)), param7);
        (*param2)++;
    }
    break;
    case 1:
        sub_02019184(param0, 0 + v0, 0, 238);
        sub_02019184(param0, 0 + v0, 3, -80);
        (*param2)++;
        break;
    case 2:
        param5[v0].x -= 24;

        if (param5[v0].x < -11 + 10) {
            UnkStruct_02087CDC * v4;
            UnkStruct_0201CD38 * v5;

            v5 = sub_0200679C(sub_02087CDC, 16, 0, 18);
            v4 = sub_0201CED0(v5);
            v4->unk_00 = param6[7];
            v4->unk_04 = 0;
            v4->unk_08 = sub_02021D28(param6[7])->x;
            v4->unk_0C = sub_02021D28(param6[7])->y;

            param5[v0].x = -11;
            (*param2)++;
        }

        param5[v1].y -= 10;

        if (param5[v1].y < -196) {
            param5[v1].y = -196;
        }

        sub_02019184(param0, 0 + v0, 0, param5[v0].x);
        sub_02019184(param0, 0 + v1, 3, param5[v1].y);
        break;
    case 3:
        param5[v1].y -= 10;

        if (param5[v1].y < -196) {
            param5[v1].y = -196;
        }

        sub_02019184(param0, 0 + v0, 0, param5[v0].x);
        sub_02019184(param0, 0 + v1, 3, param5[v1].y);

        if ((param5[v0].x == -11) && (param5[v1].y == -196)) {
            (*param2)++;
            (*param4) ^= 1;
            sub_02088240(param0, *param4, param5);
            sub_02005748(1691);
        }
        break;
    case 4:
        break;
    }
}

static void sub_02087F48 (UnkStruct_0205AA50 * param0, int param1, UnkStruct_02023790 * param2)
{
    sub_0200E060(param0, 0, ((32 * 8)), 10);
    sub_0201D738(param0, 1, param2, 0, 0, 0, NULL);
    sub_0201A954(param0);
}

static void sub_02087F78 (UnkStruct_0205AA50 * param0, int param1, UnkStruct_02023790 * param2)
{
    int v0 = 16;
    int v1 = sub_02002D7C(0, param2, 0);

    if (v1 > 130) {
        v0 = 0;
    }

    sub_0201ADA4(param0, 0x101);
    sub_0201D78C(param0, 0, param2, v0, 0, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);
    sub_0201A954(param0);
}

static void sub_02087FC0 (UnkStruct_02087A10 * param0, UnkStruct_020067E8 * param1, NARC * param2)
{
    sub_0201A7E8(param0->unk_160, &param0->unk_41C[0], 0, 2, 1, 26, 12, 1, (32 * 8));
    sub_0201A7E8(param0->unk_160, &param0->unk_41C[1], 1, 2, 1, 26, 12, 1, ((32 * 8) + (26 * 12)));

    if (param0->unk_00 == 4) {
        sub_0200710C(param2, 6 + 3, param0->unk_160, 1, 0, (32 * 14 * 2), 1, 18);
        param0->unk_4C4 = 4;
        sub_02088844(param0->unk_3A, 4);
        sub_02088E58(&param0->unk_41C[1], 0xa0a, 4, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((0 & 0xff) << 0)), param0->unk_514->pRawData);
    } else {
        param0->unk_4C4 = 0;
        sub_02088844(param0->unk_3A, 0);
        sub_02088E58(&param0->unk_41C[1], 0x404, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((0 & 0xff) << 0)), param0->unk_514->pRawData);
    }

    sub_0201A7E8(param0->unk_160, &param0->unk_41C[2], 2, 7, 2, 22, 2, 0, (((32 * 8) + (26 * 12)) + (26 * 12)));

    {
        int v0 = ((param0->unk_0C * 12) / 8) + 1;

        sub_0201A7E8(param0->unk_160, &param0->unk_41C[3], 2, 10, 3, v0, 2, 0, ((((32 * 8) + (26 * 12)) + (26 * 12)) + 44));
        sub_0201ADA4(&param0->unk_41C[3], 0x101);
        sub_0201A7E8(param0->unk_160, &param0->unk_41C[8], 2, 10 + v0 - 1, 3, 7, 2, 0, (((((32 * 8) + (26 * 12)) + (26 * 12)) + 44) + 36));
        sub_0201ADA4(&param0->unk_41C[8], 0x101);
    }

    if (param0->unk_00 == 5) {
        sub_02087F78(&param0->unk_41C[8], param0->unk_00, param0->unk_184);
        sub_0201A954(&param0->unk_41C[8]);
    }

    sub_0201A7E8(param0->unk_160, &param0->unk_41C[9], 4, 2, 19, 27, 4, 12, ((120 + (2 * 2 * 3))));
    sub_0201ADA4(&param0->unk_41C[9], 0xf0f);
    sub_02087F48(&param0->unk_41C[9], param0->unk_00, param0->unk_178);

    {
        UnkStruct_0208737C * v1 = (UnkStruct_0208737C *)sub_02006840(param1);

        if (param0->unk_118[0] != 0xffff) {
            sub_020021B0(param0->unk_D8, param0->unk_118);
            sub_02088554(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);
        }
    }

    {
        int v2;

        for (v2 = 0; v2 < 3; v2++) {
            sub_0201A7E8(param0->unk_160, &param0->unk_41C[4 + v2], 2, 0, 0, 2, 2, 0, 120);
            sub_0201ADA4(&param0->unk_41C[4 + v2], 0);
        }

        sub_0201A7E8(param0->unk_160, &param0->unk_41C[7], 2, 0, 0, 16, 2, 0, (120 + (2 * 2 * 3)));
        sub_0201ADA4(&param0->unk_41C[7], 0);
    }
}

static void sub_02088240 (UnkStruct_02018340 * param0, int param1, VecFx32 param2[])
{
    sub_02019060(0 + param1, 1);
    sub_02019060(0 + param1 ^ 1, 2);
}

static void sub_02088260 (VecFx32 param0[], int param1)
{
    param0[param1].x = 238;
    param0[param1].y = -80;
    param0[param1 ^ 1].x = -11;
    param0[param1 ^ 1].y = -80;
}

static const int Unk_020F2904[][2] = {
    {0x0, 0x0},
    {0x0, 0xFFFFFFFFFFFFFFFF},
    {0x0, 0x1},
    {0xFFFFFFFFFFFFFFFF, 0x0},
    {0x1, 0x0}
};

static int sub_02088288 (int param0, int param1, int param2)
{
    if (param0 >= param2) {
        param0 = param1;
    }

    if (param0 < param1) {
        param0 = param2 - 1;
    }

    return param0;
}

static void sub_02088298 (UnkStruct_02087A10 * param0, int param1)
{
    int v0, v1;
    u16 v2;

    if (param1 == 0) {
        return;
    }

    v2 = param0->unk_3A[param0->unk_1C.unk_04][param0->unk_1C.unk_00];
    v0 = sub_02088288((param0->unk_1C.unk_00 + Unk_020F2904[param1][0]), 0, 13);
    v1 = sub_02088288((param0->unk_1C.unk_04 + Unk_020F2904[param1][1]), 0, 6);

    while (param0->unk_3A[v1][v0] == (0xd001 + 3) || (param0->unk_3A[v1][v0] == v2 && param0->unk_3A[v1][v0] > 0xe001)) {
        if ((param0->unk_1C.unk_0C == 0) && (param0->unk_3A[v1][v0] == (0xd001 + 3)) && (Unk_020F2904[param1][1] != 0)) {
            v0 += param0->unk_1C.unk_10;
            v0 = sub_02088288(v0, 0, 13);
        } else {
            v0 += Unk_020F2904[param1][0];
            v0 = sub_02088288(v0, 0, 13);
            v1 += Unk_020F2904[param1][1];
            v1 = sub_02088288(v1, 0, 6);
        }
    }

    param0->unk_1C.unk_00 = v0;
    param0->unk_1C.unk_04 = v1;
}

static void sub_02088350 (UnkStruct_02087A10 * param0)
{
    int v0 = 0;
    int v1 = 0;
    BOOL v2 = 0;

    if (sub_02021D34(param0->unk_390[8]) == 0) {
        v2 = 1;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_UP) {
        sub_02005748(1500);
        sub_02021CAC(param0->unk_390[8], 1);
        v1 = 1;
        v0++;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_DOWN) {
        sub_02005748(1500);
        sub_02021CAC(param0->unk_390[8], 1);
        v1 = 2;
        v0++;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_LEFT) {
        sub_02005748(1500);
        sub_02021CAC(param0->unk_390[8], 1);
        v1 = 3;
        v0++;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_RIGHT) {
        sub_02005748(1500);
        sub_02021CAC(param0->unk_390[8], 1);
        v1 = 4;
        v0++;
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_START) {
        sub_02005748(1500);
        sub_02021CAC(param0->unk_390[8], 1);
        param0->unk_1C.unk_00 = 12;
        param0->unk_1C.unk_04 = 0;
        v0++;
    }

    {
        if ((param0->unk_62C = sub_0208903C(param0)) == 1) {
            v1 = 0;
            v0++;
        }
    }

    if (v2 == 1) {
        v0 = 0;
        sub_02088454(param0, v1);
    }

    if (v0) {
        sub_02088298(param0, v1);
        sub_02088454(param0, v1);
    }
}

static void sub_02088454 (UnkStruct_02087A10 * param0, int param1)
{
    if (param0->unk_1C.unk_04 != 0) {
        VecFx32 v0;

        if ((param0->unk_1C.unk_0C == 0) && (param0->unk_1C.unk_0C != param0->unk_1C.unk_04)) {
            sub_02021D6C(param0->unk_390[8], 39);
        }

        v0.x = FX32_ONE * (26 + param0->unk_1C.unk_00 * 16);
        v0.y = FX32_ONE * ((111 - 20) + (param0->unk_1C.unk_04 - 1) * 19);
        sub_02021C50(param0->unk_390[8], &v0);
    } else {
        VecFx32 v1;
        int v2 = param0->unk_3A[param0->unk_1C.unk_04][param0->unk_1C.unk_00] - (0xe001 + 1);

        v1.x = FX32_ONE * Unk_020F251C[v2];
        v1.y = FX32_ONE * (88 - 20);

        sub_02021D6C(param0->unk_390[8], Unk_020F24E8[v2]);
        sub_02021C50(param0->unk_390[8], &v1);
    }

    param0->unk_38 = 180;

    sub_02021E50(param0->unk_390[8], 0);

    param0->unk_1C.unk_08 = param0->unk_1C.unk_00;
    param0->unk_1C.unk_0C = param0->unk_1C.unk_04;

    if (Unk_020F2904[param1][0] != 0) {
        param0->unk_1C.unk_10 = Unk_020F2904[param1][0];
    }
}

static void sub_02088514 (u16 * param0)
{
    fx32 v0;
    GXRgb v1;
    int v2, v3, v4;

    *param0 += 20;

    if (*param0 > 360) {
        *param0 = 0;
    }

    v0 = sub_0201D250(*param0);
    v3 = 15 + (v0 * 10) / FX32_ONE;
    v1 = GX_RGB(29, v3, 0);

    GX_LoadOBJPltt((u16 *)&v1, (16 + 13) * 2, 2);
}

static void sub_02088554 (UnkStruct_0205AA50 * param0, const u16 * param1, int param2, int param3, int param4, int param5, u32 param6, u8 * param7)
{
    int v0 = 0, v1, v2;
    u16 v3[2];
    UnkStruct_02023790 * v4;

    v4 = sub_02023790(2, 18);

    while (param1[v0] != 0xffff) {
        if ((param1[v0] == 0xd001) || (param1[v0] == (0xd001 + 1)) || (param1[v0] == (0xd001 + 2))) {
            u16 v5 = param1[v0] - 0xd001;
            sub_0201ADDC(param0, (void *)&param7[v5 * 8 * 8 * 4 / 2], 0, 0, 12, 12, param2 + v0 * param4, param3 + 2, 12, 12);
        } else {
            if (param1[v0] == (0xd001 + 3)) {
                v0++;
                continue;
            }

            v3[0] = param1[v0];
            v3[1] = 0xffff;

            v1 = sub_02002D48(0, v3, 0);
            v2 = param2 + v0 * param4 + ((param4 - v1) / 2);

            sub_02023D28(v4, v3);
            sub_0201D78C(param0, 0, v4, v2, param3, param5, param6, NULL);
        }

        v0++;
    }

    sub_020237BC(v4);
}

static const u8 Unk_020F24D8[] = {
    0x60,
    0x68,
    0x50,
    0x58
};

static void * sub_02088654 (UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, u8 param2, const u32 param3)
{
    sub_0201D78C(param0, param2, param1, 0, 0, 0xff, param3, NULL);
    return param0->unk_0C;
}

static void sub_02088678 (UnkStruct_0205AA50 * param0, const u16 * param1, u8 * param2, UnkStruct_02023790 * param3)
{
    u16 v0[20 + 1], v1, v2;
    void * v3;
    UnkStruct_02023790 * v4;

    sub_0201ADA4(&param0[3], 0);
    v3 = sub_02088654(&param0[3], param3, 2, (u32)(((0xd & 0xff) << 16) | ((0xe & 0xff) << 8) | ((0xf & 0xff) << 0)));
    DC_FlushRange(v3, 0x20 * 4 * 16);

    for (v1 = 0; v1 < 4; v1++) {
        sub_02012C60(&param0[3], 4, 2, 4 * v1, 0, (char *)param2);
        DC_FlushRange(param2, 0x20 * 4 * 2);
        GXS_LoadOBJ(param2, Unk_020F24D8[v1] * 0x20, 0x20 * 4 * 2);
    }

    v4 = sub_02023790(20 + 1, 18);

    for (v1 = 0; v1 < 3; v1++) {
        v0[0] = param1[v1];
        v0[1] = 0xffff;

        sub_0201ADA4(&param0[v1], 0);
        sub_02023D28(v4, v0);

        v3 = sub_02088654(&param0[v1], v4, 2, (u32)(((0xd & 0xff) << 16) | ((0xe & 0xff) << 8) | ((0xf & 0xff) << 0)));

        DC_FlushRange(v3, 0x20 * 4);
        GXS_LoadOBJ(v3, Unk_020F24F0[v1] * 0x20, 0x20 * 4);
    }

    sub_020237BC(v4);
}

static void sub_02088754 (UnkStruct_0205AA50 * param0, u16 * param1, int param2, u16 * param3, u8 * param4, UnkStruct_02023790 * param5)
{
    int v0, v1;
    const u16 * v2 = NULL;
    u16 v3;

    if (param2 == 0) {
        v3 = (0xd001 + 2);
    } else {
        v3 = param1[param2 - 1];
    }

    switch (v3) {
    case 0xd001:
    case (0xd001 + 1):
    case (0xd001 + 2):
    case (0xd001 + 3):
    case (0xe001 + 1):
    case (0xe001 + 2):
    case (0xe001 + 3):
    case (0xe001 + 4):
    case (0xe001 + 5):
    case (0xe001 + 6):
    case (0xe001 + 7):
        v3 = 0x1;
        break;
    }

    for (v0 = 0; v0 < 3; v0++) {
        param3[v0] = 0x1;
    }

    param3[0] = v3;

    if (v3 != 0x1) {
        for (v0 = 0; v0 < sizeof(Unk_020F2BBE) / (3 * 2); v0++) {
            if (Unk_020F2BBE[v0][0] == v3) {
                for (v1 = 0; v1 < 3; v1++) {
                    param3[v1] = Unk_020F2BBE[v0][v1];
                }
                break;
            }

            if (Unk_020F2BBE[v0][2] == v3) {
                for (v1 = 0; v1 < 3; v1++) {
                    param3[v1] = Unk_020F2BBE[v0][v1];
                }
                break;
            }
        }
    }

    sub_02088678(param0, param3, param4, param5);
}

static void sub_02088844 (u16 param0[][13], const int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 13; v0++) {
        param0[0][v0] = Unk_02100C40[param1][v0];
    }

    for (v1 = 0; v1 < 6 - 1; v1++) {
        for (v0 = 0; v0 < 13; v0++) {
            param0[1 + v1][v0] = Unk_02100C54[param1][v1][v0];
        }
    }
}

static int sub_02088898 (UnkStruct_02087A10 * param0, u16 param1, int param2)
{
    if ((param1 == (0xd001 + 2)) || (param1 == (0xd001 + 3))) {
        param1 = 0x1;
    }

    if (param0->unk_00 == 4) {
        if ((param1 == (0xe001 + 1)) || (param1 == (0xe001 + 2)) || (param1 == (0xe001 + 3)) || (param1 == (0xe001 + 4))) {
            param1 = 0x1;
        }
    }

    if ((sub_02021D34(param0->unk_390[8]) == 0) && (Unk_021BF67C.unk_60 == 0)) {
        sub_02021CAC(param0->unk_390[8], 1);
        return 2;
    }

    switch (param1) {
    case 0xd001:
        if (sub_02088D08(42, (42 + 40), 1, 0xd001, param0->unk_D8, param0->unk_158)) {
            sub_0201ADA4(&param0->unk_41C[3], 0x101);
            sub_02088554(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);
            sub_02005748(1515);
        }
        break;
    case (0xd001 + 1):
        if (sub_02088D08(72, (72 + 10), 2, (0xd001 + 1), param0->unk_D8, param0->unk_158)) {
            sub_0201ADA4(&param0->unk_41C[3], 0x101);
            sub_02088554(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);
            sub_02005748(1515);
        }
        break;
    case (0xe001 + 5):
        if (sub_02088C9C(0, (72 + 10), param0->unk_D8, param0->unk_158)) {
            sub_0201ADA4(&param0->unk_41C[3], 0x101);
            sub_02088554(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);
            param0->unk_4F4[4]++;
            sub_02005748(1515);
        }
        break;
    case (0xe001 + 1):
    case (0xe001 + 2):
    case (0xe001 + 3):
    case (0xe001 + 4):
        if (param0->unk_4C4 != param1 - (0xe001 + 1)) {
            param0->unk_4C0 = 0;
            param0->unk_4C4 = param1 - (0xe001 + 1);
            sub_02088844(param0->unk_3A, param0->unk_4C4);
            param0->unk_4F4[param1 - (0xe001 + 1)]++;
            sub_02005748(1694);
            sub_02021CAC(param0->unk_390[8], param2);
        }
        break;
    case (0xe001 + 6):
        if (param0->unk_158 != 0) {
            param0->unk_D8[param0->unk_158 - 1] = 0xffff;
            param0->unk_158--;

            sub_0201ADA4(&param0->unk_41C[3], 0x101);

            if (param0->unk_158 == 0) {
                sub_0201A954(&param0->unk_41C[3]);
            } else {
                sub_02088554(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);
            }

            sub_02088754(&param0->unk_41C[4], param0->unk_D8, param0->unk_158, param0->unk_15A, param0->unk_528, param0->unk_17C);
            sub_02088E1C(param0->unk_3C8, param0->unk_158, param0->unk_0C);

            param0->unk_4F4[5]++;

            sub_02005748(1500);
            sub_02021CAC(param0->unk_390[8], param2);
        }
        break;
    case (0xe001 + 7):
        sub_02015760(param0->unk_628);
        sub_02021CAC(param0->unk_390[8], param2);

        if (param0->unk_14 == 0) {
            sub_02005748(1506);
            param0->unk_4F4[6]++;
            sub_0200F174(2, 0, 0, 0x0, 16, 1, 18);
            return 3;
        } else {
            param0->unk_4C0 = 5;
        }
        break;
    default:
        if ((param0->unk_4C4 == 4) && (param1 == 0x1)) {
            return 2;
        }

        if (param0->unk_158 != param0->unk_0C) {
            param0->unk_D8[param0->unk_158] = param1;

            sub_0201ADA4(&param0->unk_41C[3], 0x101);
            sub_02088554(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, 0, (u32)(((0xe & 0xff) << 16) | ((0xf & 0xff) << 8) | ((1 & 0xff) << 0)), NULL);

            param0->unk_158++;

            sub_02088E1C(param0->unk_3C8, param0->unk_158, param0->unk_0C);
            sub_02005748(1515);
            sub_02021CAC(param0->unk_390[8], 1);
            sub_02021FE0(param0->unk_390[8], GX_OAM_MODE_XLU);

            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 8, 8);
            sub_02021D6C(param0->unk_390[8], 60);

            param0->unk_1C.unk_18 = 1;

            sub_02088754(&param0->unk_41C[4], param0->unk_D8, param0->unk_158, param0->unk_15A, param0->unk_528, param0->unk_17C);
        }
    }

    return 2;
}

static u16 sub_02088C7C (const u16 * param0, int param1)
{
    do {
        param1 = sub_02088288(++param1, 0, 3);
    } while (param0[param1] == 0x1);

    return param0[param1];
}

static int sub_02088C9C (int param0, int param1, u16 * param2, int param3)
{
    int v0, v1;
    u16 v2, v3;

    if (param3 == 0) {
        return 0;
    }

    v2 = param2[param3 - 1];

    for (v0 = param0; v0 < param1; v0++) {
        for (v1 = 0; v1 < 3; v1++) {
            if ((Unk_020F2BBE[v0][v1] == v2) && (v2 != 0x1)) {
                param2[param3 - 1] = sub_02088C7C(Unk_020F2BBE[v0], v1);
                return 1;
            }
        }
    }

    return 0;
}

static int sub_02088D08 (int param0, int param1, int param2, int param3, u16 * param4, int param5)
{
    int v0;
    u16 v1;

    if ((param5 == 0) || (param4[param5 - 1] == 0x1)) {
        return 0;
    }

    v1 = param4[param5 - 1];

    for (v0 = param0; v0 < param1; v0++) {
        if (Unk_020F2BBE[v0][0] == v1) {
            param4[param5 - 1] = Unk_020F2BBE[v0][param2];
            return 1;
        }
    }

    for (v0 = param0; v0 < param1; v0++) {
        if (Unk_020F2BBE[v0][param2] == v1) {
            param4[param5 - 1] = Unk_020F2BBE[v0][0];
            return 1;
        }
    }

    switch (param3) {
    case 0xd001:
        for (v0 = 0; v0 < NELEMS(Unk_020F2954); v0++) {
            if (Unk_020F2954[v0][0] == v1) {
                param4[param5 - 1] = Unk_020F2954[v0][1];
                return 1;
            }
        }
        break;
    case (0xd001 + 1):
        for (v0 = 0; v0 < NELEMS(Unk_020F292C); v0++) {
            if (Unk_020F292C[v0][0] == v1) {
                param4[param5 - 1] = Unk_020F292C[v0][1];
                return 1;
            }
        }
        break;
    case (0xe001 + 5):
        if (v1 == 0x26) {
            param4[param5 - 1] = 0x24;
            return 1;
        }

        if (v1 == 0x76) {
            param4[param5 - 1] = 0x74;
            return 1;
        }
        break;
    }

    return 0;
}

static void sub_02088E1C (UnkStruct_02022550 ** param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param2; v0++) {
        sub_02021D6C(param0[v0], 43);
    }

    if (param1 != param2) {
        sub_02021D6C(param0[param1], 44);
    }
}

static const u8 Unk_020F24E0[] = {
    0x3,
    0x6,
    0xC,
    0x9,
    0x9
};

static void sub_02088E58 (UnkStruct_0205AA50 * param0, u16 param1, int param2, u32 param3, u8 * param4)
{
    int v0, v1, v2;

    sub_0201ADA4(param0, param1);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0201AE78(param0, Unk_020F24E0[param2], 16 + 32 * v0, 0, 16, 19);
        sub_0201AE78(param0, Unk_020F24E0[param2], 16 + 32 * v0, 19 * 2, 16, 19);
        sub_0201AE78(param0, Unk_020F24E0[param2], 16 + 32 * v0, 19 * 4, 16, 19);
    }

    for (v0 = 0; v0 < 7; v0++) {
        sub_0201AE78(param0, Unk_020F24E0[param2], 32 * v0, 19, 16, 19);
        sub_0201AE78(param0, Unk_020F24E0[param2], 32 * v0, 19 * 3, 16, 19);
    }

    for (v0 = 0; v0 < 5; v0++) {
        sub_02088554(param0, Unk_02100C54[param2][v0], 0, v0 * 19 + 4, 16, 0xff, param3, param4);
    }

    sub_0201A954(param0);
}

static void sub_02088F40 (int param0[], UnkStruct_02022550 ** param1, int param2)
{
    int v0, v1;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0[v0]) {
            for (v1 = 0; v1 < 3; v1++) {
                sub_02021D6C(param1[v1], Unk_020F2984[v1][2]);
            }

            sub_02021D6C(param1[v0], Unk_020F2984[v0][2] - 3);
            break;
        }
    }

    for (v0 = 5; v0 < 7; v0++) {
        if (param0[v0]) {
            sub_02021D6C(param1[v0], Unk_020F2984[v0][2] + 1);
        }
    }

    for (v0 = 0; v0 < 7; v0++) {
        param0[v0] = 0;
    }
}

static void sub_02088FD0 (UnkStruct_02087A10 * param0)
{
    if (!sub_02021FD0(param0->unk_390[8])) {
        if (param0->unk_158 == param0->unk_0C) {
            param0->unk_1C.unk_00 = 12;
            param0->unk_1C.unk_04 = 0;
            sub_02021D6C(param0->unk_390[8], 39);
        } else {
            sub_02021D6C(param0->unk_390[8], 39);
        }

        if (param0->unk_1C.unk_14 == 0) {
            sub_02021CAC(param0->unk_390[8], 0);
        } else {
            sub_02088454(param0, 0);
        }

        param0->unk_1C.unk_18 = 0;

        sub_02021FE0(param0->unk_390[8], GX_OAM_MODE_NORMAL);
    }
}

static const UnkStruct_020F2A14 Unk_020F2A14[] = {
    {0x19, 0x3C, 0x0, 0x0, 0x0},
    {0x39, 0x3C, 0x0, 0x2, 0x0},
    {0x59, 0x3C, 0x0, 0x4, 0x0},
    {0x0, 0xC0, 0x0, 0x4, 0x0},
    {0x9D, 0x3C, 0x1, 0x8, 0x0},
    {0xC5, 0x3C, 0x1, 0xB, 0x0},
    {0x1C, 0x58, 0x2, 0x0, 0x1},
    {0x2C, 0x58, 0x2, 0x1, 0x1},
    {0x3C, 0x58, 0x2, 0x2, 0x1},
    {0x4C, 0x58, 0x2, 0x3, 0x1},
    {0x5C, 0x58, 0x2, 0x4, 0x1},
    {0x6C, 0x58, 0x2, 0x5, 0x1},
    {0x7C, 0x58, 0x2, 0x6, 0x1},
    {0x8C, 0x58, 0x2, 0x7, 0x1},
    {0x9C, 0x58, 0x2, 0x8, 0x1},
    {0xAC, 0x58, 0x2, 0x9, 0x1},
    {0xBC, 0x58, 0x2, 0xA, 0x1},
    {0xCC, 0x58, 0x2, 0xB, 0x1},
    {0xDC, 0x58, 0x2, 0xC, 0x1},
    {0x1C, 0x6B, 0x2, 0x0, 0x2},
    {0x2C, 0x6B, 0x2, 0x1, 0x2},
    {0x3C, 0x6B, 0x2, 0x2, 0x2},
    {0x4C, 0x6B, 0x2, 0x3, 0x2},
    {0x5C, 0x6B, 0x2, 0x4, 0x2},
    {0x6C, 0x6B, 0x2, 0x5, 0x2},
    {0x7C, 0x6B, 0x2, 0x6, 0x2},
    {0x8C, 0x6B, 0x2, 0x7, 0x2},
    {0x9C, 0x6B, 0x2, 0x8, 0x2},
    {0xAC, 0x6B, 0x2, 0x9, 0x2},
    {0xBC, 0x6B, 0x2, 0xA, 0x2},
    {0xCC, 0x6B, 0x2, 0xB, 0x2},
    {0xDC, 0x6B, 0x2, 0xC, 0x2},
    {0x1C, 0x7E, 0x2, 0x0, 0x3},
    {0x2C, 0x7E, 0x2, 0x1, 0x3},
    {0x3C, 0x7E, 0x2, 0x2, 0x3},
    {0x4C, 0x7E, 0x2, 0x3, 0x3},
    {0x5C, 0x7E, 0x2, 0x4, 0x3},
    {0x6C, 0x7E, 0x2, 0x5, 0x3},
    {0x7C, 0x7E, 0x2, 0x6, 0x3},
    {0x8C, 0x7E, 0x2, 0x7, 0x3},
    {0x9C, 0x7E, 0x2, 0x8, 0x3},
    {0xAC, 0x7E, 0x2, 0x9, 0x3},
    {0xBC, 0x7E, 0x2, 0xA, 0x3},
    {0xCC, 0x7E, 0x2, 0xB, 0x3},
    {0xDC, 0x7E, 0x2, 0xC, 0x3},
    {0x1C, 0x91, 0x2, 0x0, 0x4},
    {0x2C, 0x91, 0x2, 0x1, 0x4},
    {0x3C, 0x91, 0x2, 0x2, 0x4},
    {0x4C, 0x91, 0x2, 0x3, 0x4},
    {0x5C, 0x91, 0x2, 0x4, 0x4},
    {0x6C, 0x91, 0x2, 0x5, 0x4},
    {0x7C, 0x91, 0x2, 0x6, 0x4},
    {0x8C, 0x91, 0x2, 0x7, 0x4},
    {0x9C, 0x91, 0x2, 0x8, 0x4},
    {0xAC, 0x91, 0x2, 0x9, 0x4},
    {0xBC, 0x91, 0x2, 0xA, 0x4},
    {0xCC, 0x91, 0x2, 0xB, 0x4},
    {0xDC, 0x91, 0x2, 0xC, 0x4},
    {0x1C, 0xA4, 0x2, 0x0, 0x5},
    {0x2C, 0xA4, 0x2, 0x1, 0x5},
    {0x3C, 0xA4, 0x2, 0x2, 0x5},
    {0x4C, 0xA4, 0x2, 0x3, 0x5},
    {0x5C, 0xA4, 0x2, 0x4, 0x5},
    {0x6C, 0xA4, 0x2, 0x5, 0x5},
    {0x7C, 0xA4, 0x2, 0x6, 0x5},
    {0x8C, 0xA4, 0x2, 0x7, 0x5},
    {0x9C, 0xA4, 0x2, 0x8, 0x5},
    {0xAC, 0xA4, 0x2, 0x9, 0x5},
    {0xBC, 0xA4, 0x2, 0xA, 0x5},
    {0xCC, 0xA4, 0x2, 0xB, 0x5},
    {0xDC, 0xA4, 0x2, 0xC, 0x5}
};

static BOOL sub_0208903C (UnkStruct_02087A10 * param0)
{
    int v0, v1 = 0;
    u8 v2, v3, v4, v5, v6, v7;

    if (param0->unk_00 == 4) {
        v1 = 4;
    }

    if (Unk_021BF67C.unk_60) {
        v2 = Unk_021BF67C.unk_5C;
        v3 = Unk_021BF67C.unk_5E;

        for (v0 = v1; v0 < (NELEMS(Unk_020F2A14)); v0++) {
            v4 = Unk_020F2A14[v0].unk_00;
            v5 = Unk_020F2A14[v0].unk_01;

            switch (Unk_020F2A14[v0].unk_02_0) {
            case 0:
                v6 = 32 - 1;
                v7 = 22;
                break;
            case 1:
                v6 = 32;
                v7 = 22;
                break;
            case 2:
                v6 = 16;
                v7 = 19;
                break;
            }

            if ((v2 >= v4) && (v3 >= v5) && (v2 <= (v4 + v6)) && (v3 <= (v5 + v7))) {
                param0->unk_1C.unk_00 = Unk_020F2A14[v0].unk_04_0;
                param0->unk_1C.unk_04 = Unk_020F2A14[v0].unk_05_0;
                return 1;
            }
        }
    }

    return 0;
}
