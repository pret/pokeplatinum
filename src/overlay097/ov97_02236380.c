#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"

#include "overlay097/struct_ov97_02236380_sub1.h"
#include "overlay097/struct_ov97_02236380_sub2.h"
#include "overlay097/struct_ov97_02236380_sub3.h"
#include "overlay097/struct_ov97_02236380_sub4.h"
#include "overlay097/struct_ov97_0223685C.h"

#include "unk_02073C2C.h"
#include "item.h"
#include "overlay097/ov97_02236380.h"
#include "overlay097/ov97_022392E4.h"

#include "constants/species.h"
#include "constants/pokemon.h"
#include "constants/pokemon_gba.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov97_0223ED5C;

UnkStruct_ov97_0223ED5C Unk_ov97_0223ED5C[] = {
    { 0x115, 0xFC },
    { 0x116, 0xFD },
    { 0x117, 0xFE },
    { 0x118, 0xFF },
    { 0x119, 0x100 },
    { 0x11A, 0x101 },
    { 0x11B, 0x102 },
    { 0x11C, 0x103 },
    { 0x11D, 0x104 },
    { 0x11E, 0x105 },
    { 0x11F, 0x106 },
    { 0x120, 0x107 },
    { 0x121, 0x108 },
    { 0x122, 0x109 },
    { 0x123, 0x10A },
    { 0x124, 0x10B },
    { 0x125, 0x10C },
    { 0x126, 0x10D },
    { 0x127, 0x10E },
    { 0x128, 0x10F },
    { 0x129, 0x110 },
    { 0x12A, 0x111 },
    { 0x12B, 0x112 },
    { 0x12C, 0x113 },
    { 0x12D, 0x122 },
    { 0x12E, 0x123 },
    { 0x12F, 0x124 },
    { 0x130, 0x114 },
    { 0x131, 0x115 },
    { 0x132, 0x11D },
    { 0x133, 0x11E },
    { 0x134, 0x147 },
    { 0x135, 0x116 },
    { 0x136, 0x117 },
    { 0x137, 0x11B },
    { 0x138, 0x11C },
    { 0x139, 0x140 },
    { 0x13A, 0x141 },
    { 0x13B, 0x12C },
    { 0x13C, 0x12D },
    { 0x13D, 0x160 },
    { 0x13E, 0x157 },
    { 0x13F, 0x158 },
    { 0x140, 0x12B },
    { 0x141, 0x144 },
    { 0x142, 0x12E },
    { 0x143, 0x153 },
    { 0x144, 0x154 },
    { 0x145, 0x172 },
    { 0x146, 0x155 },
    { 0x147, 0x156 },
    { 0x148, 0x15D },
    { 0x149, 0x15E },
    { 0x14A, 0x13E },
    { 0x14B, 0x13F },
    { 0x14C, 0x148 },
    { 0x14D, 0x149 },
    { 0x14E, 0x14A },
    { 0x14F, 0x128 },
    { 0x150, 0x129 },
    { 0x151, 0x135 },
    { 0x152, 0x136 },
    { 0x153, 0x142 },
    { 0x154, 0x143 },
    { 0x155, 0x16B },
    { 0x156, 0x16C },
    { 0x157, 0x16D },
    { 0x158, 0x14B },
    { 0x159, 0x14C },
    { 0x15A, 0x169 },
    { 0x15B, 0x16A },
    { 0x15C, 0x151 },
    { 0x15D, 0x152 },
    { 0x15E, 0x12A },
    { 0x15F, 0x145 },
    { 0x160, 0x146 },
    { 0x161, 0x137 },
    { 0x162, 0x138 },
    { 0x163, 0x12F },
    { 0x164, 0x133 },
    { 0x165, 0x134 },
    { 0x166, 0x14D },
    { 0x167, 0x14E },
    { 0x168, 0x168 },
    { 0x169, 0x163 },
    { 0x16A, 0x164 },
    { 0x16B, 0x13B },
    { 0x16C, 0x11F },
    { 0x16D, 0x120 },
    { 0x16E, 0x121 },
    { 0x16F, 0x13C },
    { 0x170, 0x13D },
    { 0x171, 0x165 },
    { 0x172, 0x125 },
    { 0x173, 0x126 },
    { 0x174, 0x127 },
    { 0x175, 0x16E },
    { 0x176, 0x16F },
    { 0x177, 0x170 },
    { 0x178, 0x167 },
    { 0x179, 0x161 },
    { 0x17A, 0x162 },
    { 0x17B, 0x150 },
    { 0x17C, 0x14F },
    { 0x17D, 0x171 },
    { 0x17E, 0x130 },
    { 0x17F, 0x131 },
    { 0x180, 0x132 },
    { 0x181, 0x15F },
    { 0x182, 0x139 },
    { 0x183, 0x13A },
    { 0x184, 0x159 },
    { 0x185, 0x15A },
    { 0x186, 0x15B },
    { 0x187, 0x15C },
    { 0x188, 0x118 },
    { 0x189, 0x119 },
    { 0x18A, 0x11A },
    { 0x18B, 0x173 },
    { 0x18C, 0x174 },
    { 0x18D, 0x175 },
    { 0x18E, 0x176 },
    { 0x18F, 0x177 },
    { 0x190, 0x178 },
    { 0x191, 0x179 },
    { 0x192, 0x17A },
    { 0x193, 0x17B },
    { 0x194, 0x17E },
    { 0x195, 0x17F },
    { 0x196, 0x180 },
    { 0x197, 0x17C },
    { 0x198, 0x17D },
    { 0x199, 0x181 },
    { 0x19A, 0x182 },
    { 0x19B, 0x166 },
    { 0x19C, 0x19C },
    { 0x19D, 0x19D },
    { 0x19E, 0x19E },
    { 0x19F, 0x19F },
    { 0x1A0, 0x1A0 },
    { 0x1A1, 0x1A1 },
    { 0x1A2, 0x1A2 },
    { 0x1A3, 0x1A3 },
    { 0x1A4, 0x1A4 }
};

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_1;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_2;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_3;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_4;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_5;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_6;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_7;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_8;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_9;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_10;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_11;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_12;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_13;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_14;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_15;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_16;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_17;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_18;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_19;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_20;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_21;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_22;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_23;

void ov97_02236E90(BoxPokemonGBA * param0, BoxPokemon *boxMon);

static u16 Unk_ov97_0223ECA0[] = {
	0x10,
	0x11,
	0x12,
	0x1D,
	0x1E,
	0x1F,
	0x20,
	0x21,
	0x22,
	0x23,
	0x24,
	0x2E,
	0x2F,
	0x30,
	0x31,
	0x34,
	0x35,
	0x38,
	0x39,
	0x42,
	0x43,
	0x44,
	0x56,
	0x57,
	0x5A,
	0x5B,
	0x60,
	0x61,
	0x6A,
	0x6B,
	0x72,
	0x73,
	0x74,
	0x75,
	0x7A,
	0x7B,
	0x7C,
	0x7F,
	0x80,
	0x85,
	0x86,
	0x87,
	0x88,
	0x89,
	0xAD,
	0xBB,
	0xBC,
	0xBD,
	0xBF,
	0xC0,
	0xC4,
	0xC5,
	0xC6,
	0xD2,
	0xD4,
	0xD5,
	0xD8,
	0xD9,
	0xDC,
	0xDD,
	0xDF,
	0xE0,
	0xE6,
	0xE9,
	0xEA,
	0xEB,
	0xEC,
	0xED,
	0xEE,
	0xF1,
	0x105,
	0x106,
	0x107,
	0x108,
	0x11D,
	0x11E,
	0x12C,
	0x12D,
	0x12E,
	0x13A,
	0x142,
	0x143,
	0x147,
	0x153,
	0x154,
	0x161,
	0x162,
	0x165,
	0x167,
	0x169,
	0x16A,
	0x16B,
	0x16C,
	0x16D
};

static u32 ov97_02236380 (BoxPokemonGBA * param0, u32 param1, u8 param2)
{
    u32 v0 = 0;
    UnkStruct_ov97_02236380 * v1;
    UnkStruct_ov97_02236380_1 * v2;
    UnkStruct_ov97_02236380_2 * v3;
    UnkStruct_ov97_02236380_3 * v4;
    UnkStruct_ov97_02236380_4 * v5;
    UnkStruct_ov97_02236380_5 * v6;
    UnkStruct_ov97_02236380_6 * v7;
    UnkStruct_ov97_02236380_7 * v8;
    UnkStruct_ov97_02236380_8 * v9;
    UnkStruct_ov97_02236380_9 * v10;
    UnkStruct_ov97_02236380_10 * v11;
    UnkStruct_ov97_02236380_11 * v12;
    UnkStruct_ov97_02236380_12 * v13;
    UnkStruct_ov97_02236380_13 * v14;
    UnkStruct_ov97_02236380_14 * v15;
    UnkStruct_ov97_02236380_15 * v16;
    UnkStruct_ov97_02236380_16 * v17;
    UnkStruct_ov97_02236380_17 * v18;
    UnkStruct_ov97_02236380_18 * v19;
    UnkStruct_ov97_02236380_19 * v20;
    UnkStruct_ov97_02236380_20 * v21;
    UnkStruct_ov97_02236380_21 * v22;
    UnkStruct_ov97_02236380_22 * v23;
    UnkStruct_ov97_02236380_23 * v24;

    switch (param1 % 24) {
    case 0:
        v1 = (UnkStruct_ov97_02236380 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v1->unk_00;
            break;
        case 1:
            v0 = (u32) & v1->unk_0C;
            break;
        case 2:
            v0 = (u32) & v1->unk_18;
            break;
        case 3:
            v0 = (u32) & v1->unk_24;
            break;
        }
        break;
    case 1:
        v2 = (UnkStruct_ov97_02236380_1 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v2->unk_00;
            break;
        case 1:
            v0 = (u32) & v2->unk_0C;
            break;
        case 2:
            v0 = (u32) & v2->unk_24;
            break;
        case 3:
            v0 = (u32) & v2->unk_18;
            break;
        }
        break;
    case 2:
        v3 = (UnkStruct_ov97_02236380_2 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v3->unk_00;
            break;
        case 1:
            v0 = (u32) & v3->unk_18;
            break;
        case 2:
            v0 = (u32) & v3->unk_0C;
            break;
        case 3:
            v0 = (u32) & v3->unk_24;
            break;
        }
        break;
    case 3:
        v4 = (UnkStruct_ov97_02236380_3 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v4->unk_00;
            break;
        case 1:
            v0 = (u32) & v4->unk_24;
            break;
        case 2:
            v0 = (u32) & v4->unk_0C;
            break;
        case 3:
            v0 = (u32) & v4->unk_18;
            break;
        }
        break;
    case 4:
        v5 = (UnkStruct_ov97_02236380_4 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v5->unk_00;
            break;
        case 1:
            v0 = (u32) & v5->unk_18;
            break;
        case 2:
            v0 = (u32) & v5->unk_24;
            break;
        case 3:
            v0 = (u32) & v5->unk_0C;
            break;
        }
        break;
    case 5:
        v6 = (UnkStruct_ov97_02236380_5 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v6->unk_00;
            break;
        case 1:
            v0 = (u32) & v6->unk_24;
            break;
        case 2:
            v0 = (u32) & v6->unk_18;
            break;
        case 3:
            v0 = (u32) & v6->unk_0C;
            break;
        }
        break;
    case 6:
        v7 = (UnkStruct_ov97_02236380_6 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v7->unk_0C;
            break;
        case 1:
            v0 = (u32) & v7->unk_00;
            break;
        case 2:
            v0 = (u32) & v7->unk_18;
            break;
        case 3:
            v0 = (u32) & v7->unk_24;
            break;
        }
        break;
    case 7:
        v8 = (UnkStruct_ov97_02236380_7 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v8->unk_0C;
            break;
        case 1:
            v0 = (u32) & v8->unk_00;
            break;
        case 2:
            v0 = (u32) & v8->unk_24;
            break;
        case 3:
            v0 = (u32) & v8->unk_18;
            break;
        }
        break;
    case 8:
        v9 = (UnkStruct_ov97_02236380_8 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v9->unk_18;
            break;
        case 1:
            v0 = (u32) & v9->unk_00;
            break;
        case 2:
            v0 = (u32) & v9->unk_0C;
            break;
        case 3:
            v0 = (u32) & v9->unk_24;
            break;
        }
        break;
    case 9:
        v10 = (UnkStruct_ov97_02236380_9 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v10->unk_24;
            break;
        case 1:
            v0 = (u32) & v10->unk_00;
            break;
        case 2:
            v0 = (u32) & v10->unk_0C;
            break;
        case 3:
            v0 = (u32) & v10->unk_18;
            break;
        }
        break;
    case 10:
        v11 = (UnkStruct_ov97_02236380_10 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v11->unk_18;
            break;
        case 1:
            v0 = (u32) & v11->unk_00;
            break;
        case 2:
            v0 = (u32) & v11->unk_24;
            break;
        case 3:
            v0 = (u32) & v11->unk_0C;
            break;
        }
        break;
    case 11:
        v12 = (UnkStruct_ov97_02236380_11 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v12->unk_24;
            break;
        case 1:
            v0 = (u32) & v12->unk_00;
            break;
        case 2:
            v0 = (u32) & v12->unk_18;
            break;
        case 3:
            v0 = (u32) & v12->unk_0C;
            break;
        }
        break;
    case 12:
        v13 = (UnkStruct_ov97_02236380_12 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v13->unk_0C;
            break;
        case 1:
            v0 = (u32) & v13->unk_18;
            break;
        case 2:
            v0 = (u32) & v13->unk_00;
            break;
        case 3:
            v0 = (u32) & v13->unk_24;
            break;
        }
        break;
    case 13:
        v14 = (UnkStruct_ov97_02236380_13 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v14->unk_0C;
            break;
        case 1:
            v0 = (u32) & v14->unk_24;
            break;
        case 2:
            v0 = (u32) & v14->unk_00;
            break;
        case 3:
            v0 = (u32) & v14->unk_18;
            break;
        }
        break;
    case 14:
        v15 = (UnkStruct_ov97_02236380_14 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v15->unk_18;
            break;
        case 1:
            v0 = (u32) & v15->unk_0C;
            break;
        case 2:
            v0 = (u32) & v15->unk_00;
            break;
        case 3:
            v0 = (u32) & v15->unk_24;
            break;
        }
        break;
    case 15:
        v16 = (UnkStruct_ov97_02236380_15 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v16->unk_24;
            break;
        case 1:
            v0 = (u32) & v16->unk_0C;
            break;
        case 2:
            v0 = (u32) & v16->unk_00;
            break;
        case 3:
            v0 = (u32) & v16->unk_18;
            break;
        }
        break;
    case 16:
        v17 = (UnkStruct_ov97_02236380_16 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v17->unk_18;
            break;
        case 1:
            v0 = (u32) & v17->unk_24;
            break;
        case 2:
            v0 = (u32) & v17->unk_00;
            break;
        case 3:
            v0 = (u32) & v17->unk_0C;
            break;
        }
        break;
    case 17:
        v18 = (UnkStruct_ov97_02236380_17 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v18->unk_24;
            break;
        case 1:
            v0 = (u32) & v18->unk_18;
            break;
        case 2:
            v0 = (u32) & v18->unk_00;
            break;
        case 3:
            v0 = (u32) & v18->unk_0C;
            break;
        }
        break;
    case 18:
        v19 = (UnkStruct_ov97_02236380_18 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v19->unk_0C;
            break;
        case 1:
            v0 = (u32) & v19->unk_18;
            break;
        case 2:
            v0 = (u32) & v19->unk_24;
            break;
        case 3:
            v0 = (u32) & v19->unk_00;
            break;
        }
        break;
    case 19:
        v20 = (UnkStruct_ov97_02236380_19 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v20->unk_0C;
            break;
        case 1:
            v0 = (u32) & v20->unk_24;
            break;
        case 2:
            v0 = (u32) & v20->unk_18;
            break;
        case 3:
            v0 = (u32) & v20->unk_00;
            break;
        }
        break;
    case 20:
        v21 = (UnkStruct_ov97_02236380_20 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v21->unk_18;
            break;
        case 1:
            v0 = (u32) & v21->unk_0C;
            break;
        case 2:
            v0 = (u32) & v21->unk_24;
            break;
        case 3:
            v0 = (u32) & v21->unk_00;
            break;
        }
        break;
    case 21:
        v22 = (UnkStruct_ov97_02236380_21 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v22->unk_24;
            break;
        case 1:
            v0 = (u32) & v22->unk_0C;
            break;
        case 2:
            v0 = (u32) & v22->unk_18;
            break;
        case 3:
            v0 = (u32) & v22->unk_00;
            break;
        }
        break;
    case 22:
        v23 = (UnkStruct_ov97_02236380_22 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v23->unk_18;
            break;
        case 1:
            v0 = (u32) & v23->unk_24;
            break;
        case 2:
            v0 = (u32) & v23->unk_0C;
            break;
        case 3:
            v0 = (u32) & v23->unk_00;
            break;
        }
        break;
    case 23:
        v24 = (UnkStruct_ov97_02236380_23 *)param0->unk_20;

        switch (param2) {
        case 0:
            v0 = (u32) & v24->unk_24;
            break;
        case 1:
            v0 = (u32) & v24->unk_18;
            break;
        case 2:
            v0 = (u32) & v24->unk_0C;
            break;
        case 3:
            v0 = (u32) & v24->unk_00;
            break;
        }
        break;
    }

    return v0;
}

static void ov97_0223685C (BoxPokemonGBA * param0)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&param0->unk_20;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= param0->unk_04;
        v1[v0] ^= param0->unk_00;
    }
}

static void ov97_0223687C (BoxPokemonGBA * param0)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&param0->unk_20;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= param0->unk_00;
        v1[v0] ^= param0->unk_04;
    }
}

static u16 ov97_0223689C (BoxPokemonGBA * param0)
{
    int v0;
    u16 * v1;
    u16 * v2;
    u16 * v3;
    u16 * v4;
    u16 v5 = 0;

    v1 = (u16 *)ov97_02236380(param0, param0->unk_00, 0);
    v2 = (u16 *)ov97_02236380(param0, param0->unk_00, 1);
    v3 = (u16 *)ov97_02236380(param0, param0->unk_00, 2);
    v4 = (u16 *)ov97_02236380(param0, param0->unk_00, 3);

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v1[v0];
    }

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v2[v0];
    }

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v3[v0];
    }

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v4[v0];
    }

    return v5;
}

u32 GetGBABoxMonData (BoxPokemonGBA * param0, int param1, u8 * param2)
{
    int v0;
    u32 v1 = 0;
    PokemonGBASubstruct0 * substruct0 = 0;
    PokemonGBASubstruct1 * substruct1 = 0;
    PokemonGBASubstruct2 * substruct2 = 0;
    PokemonGBASubstruct3 * substruct3 = 0;
    u16 v6;
    u16 * v7;

    if (param1 > 10) {
        substruct0 = (PokemonGBASubstruct0 *)ov97_02236380(param0, param0->unk_00, 0);
        substruct1 = (PokemonGBASubstruct1 *)ov97_02236380(param0, param0->unk_00, 1);
        substruct2 = (PokemonGBASubstruct2 *)ov97_02236380(param0, param0->unk_00, 2);
        substruct3 = (PokemonGBASubstruct3 *)ov97_02236380(param0, param0->unk_00, 3);

        ov97_0223685C(param0);
        v6 = ov97_0223689C(param0);

        if (v6 != param0->unk_1C) {
            param0->unk_13_0 = 1;
            param0->unk_13_2 = 1;
            substruct3->unk_04_30 = 1;
        }
    }

    switch (param1) {
    case 0:
        v1 = param0->unk_00;
        break;
    case 1:
        v1 = param0->unk_04;
        break;
    case 2:
        if (param0->unk_13_0) {
            v1 = 0;
        } else {
            for (v1 = 0; v1 < 10; v1++) {
                param2[v1] = param0->unk_08[v1];
            }
        }

        param2[v1] = 0xff;
        break;
    case 3:
        v1 = param0->unk_12;
        break;
    case 4:
        v1 = param0->unk_13_0;
        break;
    case 5:
        v1 = param0->unk_13_1;
        break;
    case 6:
        v1 = param0->unk_13_2;
        break;
    case 7:
        for (v1 = 0; v1 < 7; v1++) {
            param2[v1] = param0->unk_14[v1];
        }

        param2[v1] = 0xffff;
        break;
    case 8:
        v1 = param0->unk_1B;
        break;
    case 9:
        v1 = param0->unk_1C;
        break;
    case 10:
        v1 = param0->unk_1E;
        break;
    case 11:
        if (param0->unk_13_0) {
            v1 = 412;
        } else {
            v1 = substruct0->unk_00;
        }
        break;
    case 12:
        v1 = substruct0->unk_02;
        break;
    case 25:
        v1 = substruct0->unk_04;
        break;
    case 21:
        v1 = substruct0->unk_08;
        break;
    case 32:
        v1 = substruct0->unk_09;
        break;
    case 13:
    case 14:
    case 15:
    case 16:
        v1 = substruct1->unk_00[param1 - 13];
        break;
    case 17:
    case 18:
    case 19:
    case 20:
        v1 = substruct1->unk_08[param1 - 17];
        break;
    case 26:
        v1 = substruct2->unk_00;
        break;
    case 27:
        v1 = substruct2->unk_01;
        break;
    case 28:
        v1 = substruct2->unk_02;
        break;
    case 29:
        v1 = substruct2->unk_03;
        break;
    case 30:
        v1 = substruct2->unk_04;
        break;
    case 31:
        v1 = substruct2->unk_05;
        break;
    case 22:
        v1 = substruct2->unk_06;
        break;
    case 23:
        v1 = substruct2->unk_07;
        break;
    case 24:
        v1 = substruct2->unk_08;
        break;
    case 33:
        v1 = substruct2->unk_09;
        break;
    case 47:
        v1 = substruct2->unk_0A;
        break;
    case 48:
        v1 = substruct2->unk_0B;
        break;
    case 34:
        v1 = substruct3->unk_00_0;
        break;
    case 35:
        v1 = substruct3->unk_00_8;
        break;
    case 36:
        v1 = substruct3->unk_00_16;
        break;
    case 37:
        v1 = substruct3->unk_00_23;
        break;
    case 38:
        v1 = substruct3->unk_00_27;
        break;
    case 49:
        v1 = substruct3->unk_00_31;
        break;
    case 39:
        v1 = substruct3->unk_04_0;
        break;
    case 40:
        v1 = substruct3->unk_04_5;
        break;
    case 41:
        v1 = substruct3->unk_04_10;
        break;
    case 42:
        v1 = substruct3->unk_04_15;
        break;
    case 43:
        v1 = substruct3->unk_04_20;
        break;
    case 44:
        v1 = substruct3->unk_04_25;
        break;
    case 45:
        v1 = substruct3->unk_04_30;
        break;
    case 46:
        v1 = substruct3->unk_04_31;
        break;
    case 50:
        v1 = substruct3->unk_08_0;
        break;
    case 51:
        v1 = substruct3->unk_08_3;
        break;
    case 52:
        v1 = substruct3->unk_08_6;
        break;
    case 53:
        v1 = substruct3->unk_08_9;
        break;
    case 54:
        v1 = substruct3->unk_08_12;
        break;
    case 67:
        v1 = substruct3->unk_08_15;
        break;
    case 68:
        v1 = substruct3->unk_08_16;
        break;
    case 69:
        v1 = substruct3->unk_08_17;
        break;
    case 70:
        v1 = substruct3->unk_08_18;
        break;
    case 71:
        v1 = substruct3->unk_08_19;
        break;
    case 72:
        v1 = substruct3->unk_08_20;
        break;
    case 73:
        v1 = substruct3->unk_08_21;
        break;
    case 74:
        v1 = substruct3->unk_08_22;
        break;
    case 75:
        v1 = substruct3->unk_08_23;
        break;
    case 76:
        v1 = substruct3->unk_08_24;
        break;
    case 77:
        v1 = substruct3->unk_08_25;
        break;
    case 78:
        v1 = substruct3->unk_08_26;
        break;
    case 79:
        v1 = substruct3->unk_08_27;
        break;
    case 80:
        v1 = substruct3->unk_08_31;
        break;
    case 65:
        v1 = substruct0->unk_00;

        if (v1 == 0) {
            break;
        }

        if ((substruct3->unk_04_30) || (param0->unk_13_0)) {
            v1 = 412;
        }
        break;
    case 66:
        v1 = (substruct3->unk_04_0 << 0) | (substruct3->unk_04_5 << 5) | (substruct3->unk_04_10 << 10) | (substruct3->unk_04_15 << 15) | (substruct3->unk_04_20 << 20) | (substruct3->unk_04_25 << 25);
        break;
    }

    if (param1 > 10) {
        ov97_0223687C(param0);
    }

    return v1;
}

void ov97_02236CA4 (BoxPokemonGBA * param0, int param1, const u8 * param2)
{
    int v0;
    u32 v1;
    PokemonGBASubstruct0 * v2 = 0;
    PokemonGBASubstruct1 * v3 = 0;
    PokemonGBASubstruct2 * v4 = 0;
    PokemonGBASubstruct3 * v5 = 0;
    u16 v6;

    if (param1 > 10) {
        v2 = (PokemonGBASubstruct0 *)ov97_02236380(param0, param0->unk_00, 0);
        v3 = (PokemonGBASubstruct1 *)ov97_02236380(param0, param0->unk_00, 1);
        v4 = (PokemonGBASubstruct2 *)ov97_02236380(param0, param0->unk_00, 2);
        v5 = (PokemonGBASubstruct3 *)ov97_02236380(param0, param0->unk_00, 3);

        ov97_0223685C(param0);
        v6 = ov97_0223689C(param0);

        if (v6 != param0->unk_1C) {
            param0->unk_13_0 = 1;
            param0->unk_13_2 = 1;
            v5->unk_04_30 = 1;
            ov97_0223687C(param0);
            return;
        }
    }

    switch (param1) {
    case 2:
        for (v0 = 0; v0 < 10; v0++) {
            param0->unk_08[v0] = param2[v0];
        }
        break;
    case 3:
        param0->unk_12 = param2[0];
        break;
    case 4:
        param0->unk_13_0 = param2[0];
        break;
    case 5:
        param0->unk_13_1 = param2[0];
        break;
    case 6:
        param0->unk_13_2 = param2[0];
        break;
    case 7:
        for (v0 = 0; v0 < 7; v0++) {
            param0->unk_14[v0] = param2[v0];
        }
        break;
    case 11:
        v2->unk_00 = param2[0] + (param2[1] << 8);

        if (v2->unk_00) {
            param0->unk_13_1 = 1;
        } else {
            param0->unk_13_1 = 0;
        }
        break;
    }

    if (param1 > 10) {
        param0->unk_1C = ov97_0223689C(param0);
        ov97_0223687C(param0);
    }
}

int GBAToDSSpecies (int species)
{
    int v0;

    if (species < GEN_3_SPECIES_IDS_BEGIN) {
        return species;
    }

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223ED5C) / sizeof(UnkStruct_ov97_0223ED5C); v0++) {
        if (Unk_ov97_0223ED5C[v0].unk_00 == species) {
            return Unk_ov97_0223ED5C[v0].unk_02;
        }
    }

    return species;
}

u32 ov97_02236E00 (BoxPokemonGBA * param0)
{
    int species;
    u32 v1;

    species = GBAToDSSpecies(GetGBABoxMonData(param0, MON_GBA_DATA_SPECIES, 0));
    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_EXP, 0);

    return sub_02075B78(species, v1);
}

static int ov97_02236E28 (BoxPokemonGBA * param0, BoxPokemon *boxMon)
{
    int v0;
    int v1;
    u16 v2;
    int v3;

    v2 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    v3 = GetGBABoxMonData(param0, MON_GBA_DATA_ABILITY_NUM, NULL);
    v1 = sub_020759F0(v2, 25);

    if (v1) {
        for (v0 = 0; v0 < (sizeof(Unk_ov97_0223ECA0) / 2); v0++) {
            if (Unk_ov97_0223ECA0[v0] == v2) {
                v1 = sub_020759F0(v2, 24);
                break;
            }
        }

        if ((v0 == (sizeof(Unk_ov97_0223ECA0) / 2)) && ((v3 & 1) == 0)) {
            v1 = sub_020759F0(v2, 24);
        }
    } else {
        v1 = sub_020759F0(v2, 24);
    }

    return v1;
}

void ov97_02236E90 (BoxPokemonGBA * param0, BoxPokemon *boxMon)
{
    BOOL v0;
    u32 v1;
    int v2, v3;
    int v4;
    u8 v5[10 + 1];
    u16 v6[12];

    sub_02073C54(boxMon);

    v0 = sub_02073D20(boxMon);
    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_PERSONALITY, NULL);

    SetBoxMonData(boxMon, MON_DATA_PERSONALITY, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPECIES, NULL);
    v1 = GBAToDSSpecies(v1);

    SetBoxMonData(boxMon, MON_DATA_SPECIES, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_HELD_ITEM, NULL);

    if (v1) {
        v1 = sub_0207CF10(v1);
    }

    SetBoxMonData(boxMon, MON_DATA_6, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_OT_ID, NULL);
    SetBoxMonData(boxMon, MON_DATA_7, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_EXP, NULL);
    SetBoxMonData(boxMon, MON_DATA_8, (u8 *)&v1);

    v1 = 70;
    SetBoxMonData(boxMon, MON_DATA_9, (u8 *)&v1);

    v1 = ov97_02236E28(param0, boxMon);
    SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_MARKINGS, NULL);
    SetBoxMonData(boxMon, MON_DATA_11, (u8 *)&v1);

    v4 = GetGBABoxMonData(param0, MON_GBA_DATA_LANGUAGE, NULL);
    SetBoxMonData(boxMon, MON_DATA_12, (u8 *)&v4);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_HP_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_13, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_ATK_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_14, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_DEF_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_15, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPEED_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_16, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPATK_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_17, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPDEF_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_18, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_COOL, NULL);
    SetBoxMonData(boxMon, MON_DATA_19, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_BEAUTY, NULL);
    SetBoxMonData(boxMon, MON_DATA_20, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_CUTE, NULL);
    SetBoxMonData(boxMon, MON_DATA_21, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SMART, NULL);
    SetBoxMonData(boxMon, MON_DATA_22, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_TOUGH, NULL);
    SetBoxMonData(boxMon, MON_DATA_23, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SHEEN, NULL);
    SetBoxMonData(boxMon, MON_DATA_24, (u8 *)&v1);

    for (v2 = 0; v2 < 4; v2++) {
        v1 = GetGBABoxMonData(param0, 13 + v2, NULL);

        if (v1 > 354) {
            (void)0;
        }

        SetBoxMonData(boxMon, 54 + v2, (u8 *)&v1);

        v1 = GetGBABoxMonData(param0, MON_GBA_DATA_PP_BONUSES, NULL);
        v1 = (v1 & (0x3 << (v2 * 2))) >> (v2 * 2);

        SetBoxMonData(boxMon, 62 + v2, (u8 *)&v1);

        v1 = sub_02074570(boxMon, 66 + v2, NULL);
        SetBoxMonData(boxMon, 58 + v2, (u8 *)&v1);
    }

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_HP_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_70, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_ATK_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_71, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_DEF_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_72, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPEED_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_73, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPATK_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_74, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SPDEF_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_75, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_IS_EGG, NULL);
    SetBoxMonData(boxMon, MON_DATA_76, (u8 *)&v1);

    v3 = GetGBABoxMonData(param0, MON_GBA_DATA_COOL_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(boxMon, 78 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, MON_GBA_DATA_BEAUTY_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(boxMon, 82 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, MON_GBA_DATA_CUTE_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(boxMon, 86 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, MON_GBA_DATA_SMART_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(boxMon, 90 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, MON_GBA_DATA_TOUGH_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(boxMon, 94 + v2, (u8 *)&v1);
        }
    }

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_CHAMPION_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_98, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_WINNING_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_99, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_VICTORY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_100, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_ARTIST_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_101, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_EFFORT_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_102, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_MARINE_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_103, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_LAND_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_104, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_SKY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_105, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_COUNTRY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_106, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_NATIONAL_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_107, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_EARTH_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_108, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_WORLD_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_109, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_EVENT_LEGAL, NULL);
    SetBoxMonData(boxMon, MON_DATA_110, (u8 *)&v1);

    v1 = sub_02075D74(boxMon);
    SetBoxMonData(boxMon, MON_DATA_111, (u8 *)&v1);

    if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == 201) {
        v1 = GetGBABoxMonData(param0, MON_GBA_DATA_PERSONALITY, NULL);
        v1 = (((v1 & 0x3000000) >> 18) | ((v1 & 0x30000) >> 12) | ((v1 & 0x300) >> 6) | (v1 & 0x3)) % 28;

        SetBoxMonData(boxMon, MON_DATA_112, (u8 *)&v1);
    }

    if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_DEOXYS) {
        switch (Unk_021BF67C.gameId) {
        default:
        case RUBY:
        case SAPPHIRE:
            v1 = 0;
            break;
        case FIRERED:
            v1 = 1;
            break;
        case LEAFGREEN:
            v1 = 2;
            break;
        case EMERALD:
            v1 = 3;
            break;
        }

        SetBoxMonData(boxMon, MON_DATA_112, (u8 *)&v1);
    }

    GetGBABoxMonData(param0, MON_GBA_DATA_NICKNAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 12, v4);

    SetBoxMonData(boxMon, MON_DATA_118, &v6[0]);

    if (GetGBABoxMonData(param0, MON_GBA_DATA_LANGUAGE, NULL) != Unk_020E4C44) {
        v1 = 1;
        SetBoxMonData(boxMon, MON_DATA_77, &v1);
    }

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_MET_GAME, NULL);
    SetBoxMonData(boxMon, MON_DATA_122, &v1);

    GetGBABoxMonData(param0, MON_GBA_DATA_OT_NAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 8, v4);

    SetBoxMonData(boxMon, MON_DATA_144, &v6[0]);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_MET_LOCATION, NULL);
    SetBoxMonData(boxMon, MON_DATA_153, &v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_POKERUS, NULL);
    SetBoxMonData(boxMon, MON_DATA_154, &v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_POKEBALL, NULL);
    SetBoxMonData(boxMon, MON_DATA_155, &v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_MET_LEVEL, NULL);
    SetBoxMonData(boxMon, MON_DATA_156, &v1);

    v1 = GetGBABoxMonData(param0, MON_GBA_DATA_OT_GENDER, NULL);
    SetBoxMonData(boxMon, MON_DATA_157, &v1);
    sub_02073D48(boxMon, v0);
}
