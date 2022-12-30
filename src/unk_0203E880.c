#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
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

#include "unk_020068C8.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_02017E74.h"
#include "unk_0201D15C.h"
#include "unk_02023790.h"
#include "unk_0203A024.h"
#include "unk_0203A378.h"
#include "unk_0203A9C8.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_02079170.h"

typedef void (* UnkFuncPtr_0203E950)(UnkStruct_0203CDB0 *);

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_02061AB4 * unk_14;
    UnkStruct_0201CD38 * unk_18;
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
    UnkStruct_0205AA50 unk_14;
    UnkStruct_02001AF4 * unk_24;
    int unk_28;
    UnkStruct_02061AB4 * unk_2C;
    UnkStruct_02061AB4 * unk_30;
    u16 * unk_34;
    UnkStruct_0203E724 * unk_38[2];
    UnkStruct_0200B358 * unk_40;
    UnkStruct_02023790 * unk_44;
    UnkStruct_02023790 * unk_48;
    void * unk_4C;
    UnkStruct_0203E8B0 unk_50[2];
    u16 unk_88[14];
    UnkFuncPtr_0203E950 unk_A4;
    void * unk_A8;
    void * unk_AC;
    UnkStruct_ov101_021D5D90 * unk_B0;
    UnkStruct_0201CD38 * unk_B4;
    UnkStruct_0205AA50 unk_B8;
    UnkStruct_0205AA50 unk_C8;
    UnkStruct_ov5_021E1FF4 * unk_D8;
};

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_020EA378;

const UnkStruct_020EA378 Unk_020EA378[] = {
	{ 0x29, 0x1, 0x2, 0x0, 0x0 },
	{ 0x134, 0x1, 0x0, 0x0, 0x1 },
	{ 0x137, 0x1, 0x0, 0x0, 0x2 },
	{ 0x3, 0x1, 0x2, 0x0, 0x3 },
	{ 0x26, 0x1, 0x2, 0x0, 0x4 },
	{ 0x56, 0x1, 0x2, 0x0, 0x5 },
	{ 0x4A, 0x1, 0x2, 0x0, 0x6 },
	{ 0x33, 0x1, 0x2, 0x0, 0x7 },
	{ 0x48, 0x1, 0x2, 0x0, 0x8 },
	{ 0x3, 0x1, 0x2, 0x0, 0x9 },
	{ 0x6C, 0x1, 0x2, 0x0, 0xA },
	{ 0x5A, 0x1, 0x2, 0x0, 0xB },
	{ 0x32, 0x1, 0x2, 0x0, 0xC },
	{ 0x5A, 0x1, 0x2, 0x0, 0xD },
	{ 0x5B, 0x1, 0x2, 0x0, 0xE },
	{ 0x56, 0x1, 0x2, 0x0, 0xF },
	{ 0x57, 0x1, 0x2, 0x0, 0x10 },
	{ 0x58, 0x1, 0x2, 0x0, 0x11 },
	{ 0x2, 0x1, 0x2, 0x0, 0x12 },
	{ 0x27, 0x1, 0x2, 0x0, 0x13 },
	{ 0x57, 0x1, 0x2, 0x0, 0x14 },
	{ 0x32, 0x1, 0x1, 0x0, 0x15 },
	{ 0x2, 0x1, 0x1, 0x0, 0x16 },
	{ 0x4D, 0x1, 0x1, 0x0, 0x17 },
	{ 0x19, 0x1, 0x1, 0x0, 0x18 },
	{ 0x1B, 0x1, 0x1, 0x0, 0x19 },
	{ 0x6D, 0x1, 0x1, 0x0, 0x1A },
	{ 0x34, 0x1, 0x2, 0x0, 0x1B },
	{ 0x58, 0x1, 0x2, 0x0, 0x1C },
	{ 0x59, 0x1, 0x2, 0x0, 0x1D },
	{ 0x2D, 0x1, 0x2, 0x0, 0x1E },
	{ 0x50, 0x1, 0x2, 0x0, 0x1F },
	{ 0x3, 0x1, 0x2, 0x0, 0x20 },
	{ 0x5A, 0x1, 0x2, 0x0, 0x21 },
	{ 0x57, 0x1, 0x2, 0x0, 0x22 },
	{ 0x1C, 0x1, 0x2, 0x0, 0x23 },
	{ 0x52, 0x1, 0x2, 0x0, 0x24 },
	{ 0x54, 0x1, 0x2, 0x0, 0x25 },
	{ 0x53, 0x1, 0x2, 0x0, 0x26 },
	{ 0x1B, 0x1, 0x1, 0x0, 0x27 },
	{ 0x33, 0x1, 0x2, 0x0, 0x28 },
	{ 0x31, 0x1, 0x2, 0x0, 0x29 },
	{ 0x57, 0x1, 0x2, 0x0, 0x2A },
	{ 0x30, 0x1, 0x2, 0x0, 0x2B },
	{ 0x12D, 0x1, 0x0, 0x0, 0x2C },
	{ 0x6B, 0x1, 0x2, 0x0, 0x2D },
	{ 0x2E, 0x1, 0x2, 0x0, 0x2E },
	{ 0x5B, 0x1, 0x2, 0x0, 0x2F },
	{ 0x59, 0x1, 0x2, 0x0, 0x30 },
	{ 0x57, 0x1, 0x2, 0x0, 0x31 },
	{ 0x19, 0x1, 0x2, 0x0, 0x32 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x33 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x34 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x35 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x36 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x37 },
	{ 0x139, 0x1, 0x0, 0x0, 0x38 },
	{ 0x2D, 0x1, 0x2, 0x0, 0x39 },
	{ 0x5E, 0x1, 0x2, 0x0, 0x3A },
	{ 0x5E, 0x1, 0x2, 0x0, 0x3B },
	{ 0x31, 0x1, 0x2, 0x0, 0x3C },
	{ 0x4A, 0x1, 0x2, 0x0, 0x3D },
	{ 0x22, 0x1, 0x2, 0x0, 0x3E },
	{ 0x5C, 0x1, 0x2, 0x0, 0x3F },
	{ 0x5A, 0x1, 0x2, 0x0, 0x40 },
	{ 0x48, 0x1, 0x2, 0x0, 0x41 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x42 },
	{ 0x4B, 0x1, 0x2, 0x0, 0x43 },
	{ 0x49, 0x1, 0x2, 0x0, 0x44 },
	{ 0x32, 0x1, 0x2, 0x0, 0x45 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x46 },
	{ 0x33, 0x1, 0x2, 0x0, 0x47 },
	{ 0x2F, 0x1, 0x2, 0x0, 0x48 },
	{ 0x1D, 0x1, 0x2, 0x0, 0x49 },
	{ 0x33, 0x1, 0x2, 0x0, 0x4A },
	{ 0x3F, 0x1, 0x2, 0x0, 0x4B },
	{ 0x18, 0x1, 0x2, 0x0, 0x4C },
	{ 0x32, 0x1, 0x2, 0x0, 0x4D },
	{ 0x28, 0x1, 0x2, 0x0, 0x4E },
	{ 0x5C, 0x1, 0x2, 0x0, 0x4F },
	{ 0x146, 0x1, 0x2, 0x0, 0x50 },
	{ 0x48, 0x1, 0x2, 0x0, 0x51 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x52 },
	{ 0x4D, 0x1, 0x2, 0x0, 0x53 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x54 },
	{ 0x5A, 0x1, 0x2, 0x0, 0x55 },
	{ 0x17, 0x1, 0x2, 0x0, 0x56 },
	{ 0x58, 0x1, 0x2, 0x0, 0x57 },
	{ 0x51, 0x1, 0x2, 0x0, 0x58 },
	{ 0x49, 0x1, 0x2, 0x0, 0x59 },
	{ 0x18, 0x1, 0x2, 0x0, 0x5A },
	{ 0x4, 0x1, 0x2, 0x0, 0x5B },
	{ 0x5B, 0x1, 0x2, 0x0, 0x5C },
	{ 0x50, 0x1, 0x2, 0x0, 0x5D },
	{ 0x1B, 0x1, 0x2, 0x0, 0x5E },
	{ 0x1D, 0x1, 0x2, 0x0, 0x5F },
	{ 0x5A, 0x1, 0x2, 0x0, 0x60 },
	{ 0x4A, 0x1, 0x2, 0x0, 0x61 },
	{ 0x24, 0x1, 0x2, 0x0, 0x62 },
	{ 0x135, 0x1, 0x0, 0x0, 0x63 },
	{ 0x29, 0x1, 0x2, 0x0, 0x64 },
	{ 0x32, 0x1, 0x2, 0x0, 0x65 },
	{ 0x17, 0x1, 0x2, 0x0, 0x66 },
	{ 0x5A, 0x1, 0x2, 0x0, 0x67 },
	{ 0x24, 0x1, 0x2, 0x0, 0x68 },
	{ 0x4B, 0x1, 0x2, 0x0, 0x69 },
	{ 0x32, 0x1, 0x2, 0x0, 0x6A },
	{ 0x18, 0x1, 0x2, 0x0, 0x6B },
	{ 0x4B, 0x1, 0x2, 0x0, 0x6C },
	{ 0x17, 0x1, 0x2, 0x0, 0x6D },
	{ 0x12C, 0x1, 0x0, 0x0, 0x6E },
	{ 0x30, 0x1, 0x2, 0x0, 0x6F },
	{ 0x5D, 0x1, 0x2, 0x0, 0x70 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x71 },
	{ 0x2, 0x1, 0x2, 0x0, 0x72 },
	{ 0x1D, 0x1, 0x2, 0x0, 0x73 },
	{ 0x17, 0x1, 0x2, 0x0, 0x74 },
	{ 0x32, 0x1, 0x2, 0x0, 0x75 },
	{ 0x5D, 0x1, 0x2, 0x0, 0x76 },
	{ 0x29, 0x1, 0x2, 0x0, 0x77 },
	{ 0x132, 0x1, 0x0, 0x0, 0x78 },
	{ 0x2, 0x1, 0x2, 0x0, 0x79 },
	{ 0x2D, 0x1, 0x2, 0x0, 0x7A },
	{ 0x5D, 0x1, 0x2, 0x0, 0x7B },
	{ 0x32, 0x1, 0x2, 0x0, 0x7C },
	{ 0x58, 0x1, 0x2, 0x0, 0x7D },
	{ 0x5D, 0x1, 0x2, 0x0, 0x7E },
	{ 0x59, 0x1, 0x2, 0x0, 0x7F },
	{ 0x2, 0x1, 0x2, 0x0, 0x80 },
	{ 0x32, 0x1, 0x2, 0x0, 0x81 },
	{ 0x32, 0x1, 0x2, 0x0, 0x82 },
	{ 0x33, 0x1, 0x2, 0x0, 0x83 },
	{ 0x56, 0x1, 0x2, 0x0, 0x84 },
	{ 0x35, 0x1, 0x2, 0x0, 0x85 },
	{ 0x57, 0x1, 0x2, 0x0, 0x86 },
	{ 0x5D, 0x1, 0x2, 0x0, 0x87 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x88 },
	{ 0x4D, 0x1, 0x2, 0x0, 0x89 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x8A },
	{ 0x12A, 0x1, 0x0, 0x0, 0x8B },
	{ 0x5A, 0x1, 0x2, 0x0, 0x8C },
	{ 0x2F, 0x1, 0x2, 0x0, 0x8D },
	{ 0x31, 0x1, 0x2, 0x0, 0x8E },
	{ 0x5B, 0x1, 0x2, 0x0, 0x8F },
	{ 0x17, 0x1, 0x2, 0x0, 0x90 },
	{ 0x53, 0x1, 0x2, 0x0, 0x91 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x92 },
	{ 0x2, 0x1, 0x2, 0x0, 0x93 },
	{ 0x54, 0x1, 0x2, 0x0, 0x94 },
	{ 0x2, 0x1, 0x1, 0x0, 0x95 },
	{ 0x1A, 0x1, 0x2, 0x0, 0x96 },
	{ 0x3, 0x1, 0x2, 0x0, 0x97 },
	{ 0x19, 0x1, 0x2, 0x0, 0x98 },
	{ 0x4C, 0x1, 0x2, 0x0, 0x99 },
	{ 0x32, 0x1, 0x1, 0x0, 0x9A },
	{ 0x57, 0x1, 0x2, 0x0, 0x9B },
	{ 0x2, 0x1, 0x2, 0x0, 0x9C },
	{ 0x56, 0x1, 0x2, 0x0, 0x9D },
	{ 0x2, 0x1, 0x2, 0x0, 0x9E },
	{ 0x32, 0x1, 0x2, 0x0, 0x9F },
	{ 0x56, 0x1, 0x2, 0x0, 0xA0 },
	{ 0x5A, 0x1, 0x2, 0x0, 0xA1 },
	{ 0x4B, 0x1, 0x2, 0x0, 0xA2 },
	{ 0x2E, 0x1, 0x2, 0x0, 0xA3 },
	{ 0x58, 0x1, 0x2, 0x0, 0xA4 },
	{ 0x58, 0x1, 0x2, 0x0, 0xA5 },
	{ 0x1D, 0x1, 0x2, 0x0, 0xA6 },
	{ 0x5E, 0x3, 0x2, 0x0, 0xA7 },
	{ 0x147, 0x1, 0x2, 0x0, 0xA8 },
	{ 0x34, 0x1, 0x2, 0x0, 0xA9 },
	{ 0x58, 0x1, 0x2, 0x0, 0xAA },
	{ 0x34, 0x1, 0x2, 0x0, 0xAB },
	{ 0x2, 0x1, 0x2, 0x0, 0xAC },
	{ 0x57, 0x1, 0x2, 0x0, 0xAD },
	{ 0x1D, 0x1, 0x2, 0x0, 0xAE },
	{ 0x1D, 0x1, 0x2, 0x0, 0xAF },
	{ 0x5B, 0x1, 0x2, 0x0, 0xB0 },
	{ 0x2, 0x1, 0x2, 0x0, 0xB1 },
	{ 0x32, 0x1, 0x2, 0x0, 0xB2 },
	{ 0x17, 0x1, 0x2, 0x0, 0xB3 },
	{ 0x57, 0x1, 0x2, 0x0, 0xB4 },
	{ 0x1C, 0x1, 0x2, 0x0, 0xB5 },
	{ 0x2, 0x1, 0x2, 0x0, 0xB6 },
	{ 0x2F, 0x1, 0x2, 0x0, 0xB7 },
	{ 0x5D, 0x1, 0x2, 0x0, 0xB8 },
	{ 0x59, 0x1, 0x2, 0x0, 0xB9 },
	{ 0x5D, 0x1, 0x2, 0x0, 0xBA },
	{ 0x5E, 0x3, 0x2, 0x0, 0xBB },
	{ 0x3, 0x1, 0x2, 0x0, 0xBC },
	{ 0x19, 0x1, 0x1, 0x0, 0xBD },
	{ 0x2, 0x1, 0x2, 0x0, 0xBE },
	{ 0x30, 0x1, 0x2, 0x0, 0xBF },
	{ 0x1D, 0x1, 0x2, 0x0, 0xC0 },
	{ 0x2, 0x1, 0x2, 0x0, 0xC1 },
	{ 0x25, 0x1, 0x2, 0x0, 0xC2 },
	{ 0x4D, 0x1, 0x2, 0x0, 0xC3 },
	{ 0x2, 0x1, 0x2, 0x0, 0xC4 },
	{ 0x2E, 0x1, 0x2, 0x0, 0xC5 },
	{ 0x18, 0x1, 0x2, 0x0, 0xC6 },
	{ 0x1B, 0x1, 0x2, 0x0, 0xC7 },
	{ 0x5C, 0x1, 0x2, 0x0, 0xC8 },
	{ 0x6F, 0x1, 0x2, 0x0, 0xC9 },
	{ 0x2, 0x1, 0x1, 0x0, 0xCA },
	{ 0x55, 0x1, 0x2, 0x0, 0xCB },
	{ 0x2, 0x1, 0x2, 0x0, 0xCC },
	{ 0x32, 0x1, 0x2, 0x0, 0xCD },
	{ 0x4D, 0x1, 0x2, 0x0, 0xCE },
	{ 0x35, 0x1, 0x2, 0x0, 0xCF },
	{ 0x1A, 0x1, 0x2, 0x0, 0xD0 },
	{ 0x49, 0x1, 0x2, 0x0, 0xD1 },
	{ 0x32, 0x1, 0x1, 0x0, 0xD2 },
	{ 0x130, 0x1, 0x0, 0x0, 0xD3 },
	{ 0x55, 0x1, 0x1, 0x0, 0xD4 },
	{ 0x19, 0x1, 0x1, 0x0, 0xD5 },
	{ 0x57, 0x1, 0x2, 0x0, 0xD6 },
	{ 0x4D, 0x1, 0x1, 0x0, 0xD7 },
	{ 0x1C3, 0x1, 0x2, 0x0, 0xD8 },
	{ 0x5A, 0x1, 0x2, 0x0, 0xD9 },
	{ 0x59, 0x1, 0x2, 0x0, 0xDA },
	{ 0x5E, 0x1, 0x2, 0x0, 0xDB },
	{ 0x5E, 0x1, 0x2, 0x0, 0xDC },
	{ 0x5E, 0x1, 0x2, 0x0, 0xDD },
	{ 0x5E, 0x1, 0x2, 0x0, 0xDE },
	{ 0x19, 0x1, 0x2, 0x0, 0xDF },
	{ 0x1C, 0x1, 0x2, 0x0, 0xE0 },
	{ 0x1B, 0x1, 0x2, 0x0, 0xE1 },
	{ 0x33, 0x1, 0x2, 0x0, 0xE2 },
	{ 0x1D, 0x1, 0x2, 0x0, 0xE3 },
	{ 0x51, 0x1, 0x2, 0x0, 0xE4 },
	{ 0x1C, 0x1, 0x2, 0x0, 0x100 },
	{ 0x5D, 0x1, 0x2, 0x0, 0x101 },
	{ 0x58, 0x1, 0x2, 0x0, 0x102 },
	{ 0x5B, 0x1, 0x2, 0x0, 0x103 },
	{ 0x25, 0x1, 0x2, 0x0, 0x104 },
	{ 0x2, 0x1, 0x2, 0x0, 0x105 },
	{ 0x25, 0x1, 0x2, 0x0, 0x106 },
	{ 0x57, 0x1, 0x2, 0x0, 0x107 },
	{ 0x58, 0x1, 0x2, 0x0, 0x108 },
	{ 0x5D, 0x1, 0x2, 0x0, 0x109 },
	{ 0x5D, 0x1, 0x2, 0x0, 0x10A },
	{ 0x5D, 0x1, 0x2, 0x0, 0x10B },
	{ 0x52, 0x1, 0x2, 0x0, 0x10C },
	{ 0x23, 0x1, 0x2, 0x0, 0x10D },
	{ 0x23, 0x1, 0x2, 0x0, 0x10E },
	{ 0x22, 0x1, 0x2, 0x0, 0x10F },
	{ 0x1C, 0x1, 0x2, 0x0, 0x110 },
	{ 0xDD, 0x1, 0x2, 0x0, 0x111 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x112 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x113 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x114 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x115 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x116 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x117 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x118 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x119 },
	{ 0x5C, 0x1, 0x2, 0x0, 0x11A },
	{ 0x5C, 0x1, 0x2, 0x0, 0x11B }
};

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
        v3->unk_44 = sub_02023790(1024, 11);
        v3->unk_48 = sub_02023790(1024, 11);
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
            sub_020237BC(v3->unk_44);
            sub_020237BC(v3->unk_48);
            v3->unk_00 = 0;
            sub_020181C4(v3);

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

    v0 = sub_02018144(11, sizeof(UnkStruct_0203EF60));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    memset(v0, 0, sizeof(UnkStruct_0203EF60));

    v0->unk_00 = 0x3643f;

    return v0;
}

static void sub_0203EA50 (UnkStruct_0203E724 * param0)
{
    sub_0200B190(param0->unk_2C);
    sub_020181C4(param0->unk_30);
    sub_020181C4(param0);

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

    v0 = sub_02018144(11, sizeof(UnkStruct_0203E724));

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
    u8 * v0 = sub_02006AC0(10, param2, 11);

    param1->unk_30 = (u8 *)v0;
    param1->unk_2C = sub_0200B144(1, 26, param3, 11);

    return;
}

static void sub_0203EF38 (UnkStruct_0203CDB0 * param0, UnkStruct_0203E724 * param1)
{
    u8 * v0 = sub_0203F0FC(param0->unk_1C->unk_00);

    param1->unk_30 = (u8 *)v0;
    param1->unk_2C = sub_0200B144(1, 26, sub_0203F110(param0->unk_1C->unk_00), 11);

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
    return sub_02006AC0(10, sub_0203A09C(param0), 11);
}

static u32 sub_0203F110 (int param0)
{
    return sub_0203A088(param0);
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
    if (sub_02079220(param0, 9) == 0x0) {
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

    v0 = (sub_0201D2E8() % (NELEMS(Unk_02100AE0)));

    if (param0->unk_1C->unk_00 != Unk_02100AE0[v0][0]) {
        sub_0203F1B0(param0, (730 + Unk_02100AE0[v0][1]));
    }

    v0 = (sub_0201D2E8() % (NELEMS(Unk_02100AE0)));

    if (param0->unk_1C->unk_00 != Unk_02100AE0[v0][0]) {
        sub_0203F1B0(param0, (730 + Unk_02100AE0[v0][1]));
    }

    if (param0->unk_1C->unk_00 != 256) {
        v0 = (sub_0201D2E8() % (NELEMS(Unk_02100AD4)));
        sub_0203F1B0(param0, (730 + Unk_02100AD4[v0]));

        v0 = (sub_0201D2E8() % (NELEMS(Unk_02100AD4)));
        sub_0203F1B0(param0, (730 + Unk_02100AD4[v0]));
    }

    return;
}

u8 sub_0203F3C8 (u16 param0)
{
    int v0;
    u16 v1;
    const UnkStruct_020EA378 * v2;

    v2 = &Unk_020EA378[0];
    v1 = sub_0203F304(param0);

    for (v0 = 0; v0 < (NELEMS(Unk_020EA378)); v0++) {
        if (v2[v0].unk_06 == v1) {
            break;
        }
    }

    if (v0 >= (NELEMS(Unk_020EA378))) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return v2[v0].unk_03;
}

static BOOL sub_0203F404 (UnkStruct_0203EF60 * param0, u16 param1)
{
    int v0;
    u16 v1;
    const UnkStruct_020EA378 * v2;
    u16 * v3 = sub_0203EF60(param0, 41);
    u16 * v4 = sub_0203EF60(param0, 42);
    u16 * v5 = sub_0203EF60(param0, 43);

    v2 = &Unk_020EA378[0];
    v1 = sub_0203F304(param1);

    for (v0 = 0; v0 < (NELEMS(Unk_020EA378)); v0++) {
        if (v2[v0].unk_06 == v1) {
            break;
        }
    }

    if (v0 >= (NELEMS(Unk_020EA378))) {
        GF_ASSERT(FALSE);
        return 0;
    }

    *v3 = v2[v0].unk_00;
    *v4 = v2[v0].unk_02;
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
    v0 = sub_02018144(param1, sizeof(UnkStruct_0203F478) * v5);

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
