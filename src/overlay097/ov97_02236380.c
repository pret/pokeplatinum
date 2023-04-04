#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"
#include "struct_defs/box_pokemon.h"

#include "overlay097/box_pokemon_gba.h"

#include "unk_02073C2C.h"
#include "item.h"
#include "overlay097/ov97_02236380.h"
#include "overlay097/ov97_022392E4.h"

#include "constants/species.h"
#include "constants/gba/pokemon.h"
#include "constants/gba/species.h"

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

void BoxMonGBAToBoxMon(BoxPokemonGBA * param0, BoxPokemon * param1);

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
        v1 = (UnkStruct_ov97_02236380 *)param0->secure;

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
        v2 = (UnkStruct_ov97_02236380_1 *)param0->secure;

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
        v3 = (UnkStruct_ov97_02236380_2 *)param0->secure;

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
        v4 = (UnkStruct_ov97_02236380_3 *)param0->secure;

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
        v5 = (UnkStruct_ov97_02236380_4 *)param0->secure;

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
        v6 = (UnkStruct_ov97_02236380_5 *)param0->secure;

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
        v7 = (UnkStruct_ov97_02236380_6 *)param0->secure;

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
        v8 = (UnkStruct_ov97_02236380_7 *)param0->secure;

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
        v9 = (UnkStruct_ov97_02236380_8 *)param0->secure;

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
        v10 = (UnkStruct_ov97_02236380_9 *)param0->secure;

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
        v11 = (UnkStruct_ov97_02236380_10 *)param0->secure;

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
        v12 = (UnkStruct_ov97_02236380_11 *)param0->secure;

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
        v13 = (UnkStruct_ov97_02236380_12 *)param0->secure;

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
        v14 = (UnkStruct_ov97_02236380_13 *)param0->secure;

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
        v15 = (UnkStruct_ov97_02236380_14 *)param0->secure;

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
        v16 = (UnkStruct_ov97_02236380_15 *)param0->secure;

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
        v17 = (UnkStruct_ov97_02236380_16 *)param0->secure;

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
        v18 = (UnkStruct_ov97_02236380_17 *)param0->secure;

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
        v19 = (UnkStruct_ov97_02236380_18 *)param0->secure;

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
        v20 = (UnkStruct_ov97_02236380_19 *)param0->secure;

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
        v21 = (UnkStruct_ov97_02236380_20 *)param0->secure;

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
        v22 = (UnkStruct_ov97_02236380_21 *)param0->secure;

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
        v23 = (UnkStruct_ov97_02236380_22 *)param0->secure;

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
        v24 = (UnkStruct_ov97_02236380_23 *)param0->secure;

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

static void GBADecryptBoxMon (BoxPokemonGBA * param0)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&param0->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= param0->otId;
        v1[v0] ^= param0->personality;
    }
}

static void GBAEncryptBoxMon (BoxPokemonGBA * param0)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&param0->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= param0->personality;
        v1[v0] ^= param0->otId;
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

    v1 = (u16 *)ov97_02236380(param0, param0->personality, 0);
    v2 = (u16 *)ov97_02236380(param0, param0->personality, 1);
    v3 = (u16 *)ov97_02236380(param0, param0->personality, 2);
    v4 = (u16 *)ov97_02236380(param0, param0->personality, 3);

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

u32 GetGBABoxMonData (BoxPokemonGBA *boxMonGBA, int field, u8 * param2)
{
    u32 retVal = 0;
    PokemonGBASubstruct0 * substruct0 = 0;
    PokemonGBASubstruct1 * substruct1 = 0;
    PokemonGBASubstruct2 * substruct2 = 0;
    PokemonGBASubstruct3 * substruct3 = 0;
    u16 checksum;

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR)
    {
        substruct0 = (PokemonGBASubstruct0 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 0);
        substruct1 = (PokemonGBASubstruct1 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 1);
        substruct2 = (PokemonGBASubstruct2 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 2);
        substruct3 = (PokemonGBASubstruct3 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 3);

        GBADecryptBoxMon(boxMonGBA);
        checksum = ov97_0223689C(boxMonGBA);

        if (checksum != boxMonGBA->checksum) {
            boxMonGBA->isBadEgg = TRUE;
            boxMonGBA->isEgg = TRUE;
            substruct3->isEgg = TRUE;
        }
    }

    switch (field) {
    case GBA_MON_DATA_PERSONALITY:
        retVal = boxMonGBA->personality;
        break;
    case GBA_MON_DATA_OT_ID:
        retVal = boxMonGBA->otId;
        break;
    case GBA_MON_DATA_NICKNAME:
        if (boxMonGBA->isBadEgg)
            retVal = 0;
        else {
            for (retVal = 0; retVal < 10; retVal++) {
                param2[retVal] = boxMonGBA->nickname[retVal];
            }
        }

        param2[retVal] = 0xff;
        break;
    case GBA_MON_DATA_LANGUAGE:
        retVal = boxMonGBA->language;
        break;
    case GBA_MON_DATA_SANITY_IS_BAD_EGG:
        retVal = boxMonGBA->isBadEgg;
        break;
    case GBA_MON_DATA_SANITY_HAS_SPECIES:
        retVal = boxMonGBA->hasSpecies;
        break;
    case GBA_MON_DATA_SANITY_IS_EGG:
        retVal = boxMonGBA->isEgg;
        break;
    case GBA_MON_DATA_OT_NAME:
        for (retVal = 0; retVal < 7; retVal++)
            param2[retVal] = boxMonGBA->otName[retVal];

        param2[retVal] = 0xffff;
        break;
    case GBA_MON_DATA_MARKINGS:
        retVal = boxMonGBA->markings;
        break;
    case GBA_MON_DATA_CHECKSUM:
        retVal = boxMonGBA->checksum;
        break;
    case GBA_MON_DATA_ENCRYPT_SEPARATOR:
        retVal = boxMonGBA->unknown;
        break;
    case GBA_MON_DATA_SPECIES:
        if (boxMonGBA->isBadEgg)
            retVal = GBA_SPECIES_EGG;
        else
            retVal = substruct0->species;
        break;
    case GBA_MON_DATA_HELD_ITEM:
        retVal = substruct0->heldItem;
        break;
    case GBA_MON_DATA_EXP:
        retVal = substruct0->experience;
        break;
    case GBA_MON_DATA_PP_BONUSES:
        retVal = substruct0->ppBonuses;
        break;
    case GBA_MON_DATA_FRIENDSHIP:
        retVal = substruct0->friendship;
        break;
    case GBA_MON_DATA_MOVE1:
    case GBA_MON_DATA_MOVE2:
    case GBA_MON_DATA_MOVE3:
    case GBA_MON_DATA_MOVE4:
        retVal = substruct1->moves[field - GBA_MON_DATA_MOVE1];
        break;
    case GBA_MON_DATA_PP1:
    case GBA_MON_DATA_PP2:
    case GBA_MON_DATA_PP3:
    case GBA_MON_DATA_PP4:
        retVal = substruct1->pp[field - GBA_MON_DATA_PP1];
        break;
    case GBA_MON_DATA_HP_EV:
        retVal = substruct2->hpEV;
        break;
    case GBA_MON_DATA_ATK_EV:
        retVal = substruct2->attackEV;
        break;
    case GBA_MON_DATA_DEF_EV:
        retVal = substruct2->defenseEV;
        break;
    case GBA_MON_DATA_SPEED_EV:
        retVal = substruct2->speedEV;
        break;
    case GBA_MON_DATA_SPATK_EV:
        retVal = substruct2->spAttackEV;
        break;
    case GBA_MON_DATA_SPDEF_EV:
        retVal = substruct2->spDefenseEV;
        break;
    case GBA_MON_DATA_COOL:
        retVal = substruct2->cool;
        break;
    case GBA_MON_DATA_BEAUTY:
        retVal = substruct2->beauty;
        break;
    case GBA_MON_DATA_CUTE:
        retVal = substruct2->cute;
        break;
    case GBA_MON_DATA_SMART:
        retVal = substruct2->smart;
        break;
    case GBA_MON_DATA_TOUGH:
        retVal = substruct2->tough;
        break;
    case GBA_MON_DATA_SHEEN:
        retVal = substruct2->sheen;
        break;
    case GBA_MON_DATA_POKERUS:
        retVal = substruct3->pokerus;
        break;
    case GBA_MON_DATA_MET_LOCATION:
        retVal = substruct3->metLocation;
        break;
    case GBA_MON_DATA_MET_LEVEL:
        retVal = substruct3->metLevel;
        break;
    case GBA_MON_DATA_MET_GAME:
        retVal = substruct3->metGame;
        break;
    case GBA_MON_DATA_POKEBALL:
        retVal = substruct3->pokeball;
        break;
    case GBA_MON_DATA_OT_GENDER:
        retVal = substruct3->otGender;
        break;
    case GBA_MON_DATA_HP_IV:
        retVal = substruct3->hpIV;
        break;
    case GBA_MON_DATA_ATK_IV:
        retVal = substruct3->attackIV;
        break;
    case GBA_MON_DATA_DEF_IV:
        retVal = substruct3->defenseIV;
        break;
    case GBA_MON_DATA_SPEED_IV:
        retVal = substruct3->speedIV;
        break;
    case GBA_MON_DATA_SPATK_IV:
        retVal = substruct3->spAttackIV;
        break;
    case GBA_MON_DATA_SPDEF_IV:
        retVal = substruct3->spDefenseIV;
        break;
    case GBA_MON_DATA_IS_EGG:
        retVal = substruct3->isEgg;
        break;
    case GBA_MON_DATA_ABILITY_NUM:
        retVal = substruct3->abilityNum;
        break;
    case GBA_MON_DATA_COOL_RIBBON:
        retVal = substruct3->coolRibbon;
        break;
    case GBA_MON_DATA_BEAUTY_RIBBON:
        retVal = substruct3->beautyRibbon;
        break;
    case GBA_MON_DATA_CUTE_RIBBON:
        retVal = substruct3->cuteRibbon;
        break;
    case GBA_MON_DATA_SMART_RIBBON:
        retVal = substruct3->smartRibbon;
        break;
    case GBA_MON_DATA_TOUGH_RIBBON:
        retVal = substruct3->toughRibbon;
        break;
    case GBA_MON_DATA_CHAMPION_RIBBON:
        retVal = substruct3->championRibbon;
        break;
    case GBA_MON_DATA_WINNING_RIBBON:
        retVal = substruct3->winningRibbon;
        break;
    case GBA_MON_DATA_VICTORY_RIBBON:
        retVal = substruct3->victoryRibbon;
        break;
    case GBA_MON_DATA_ARTIST_RIBBON:
        retVal = substruct3->artistRibbon;
        break;
    case GBA_MON_DATA_EFFORT_RIBBON:
        retVal = substruct3->effortRibbon;
        break;
    case GBA_MON_DATA_MARINE_RIBBON:
        retVal = substruct3->marineRibbon;
        break;
    case GBA_MON_DATA_LAND_RIBBON:
        retVal = substruct3->landRibbon;
        break;
    case GBA_MON_DATA_SKY_RIBBON:
        retVal = substruct3->skyRibbon;
        break;
    case GBA_MON_DATA_COUNTRY_RIBBON:
        retVal = substruct3->countryRibbon;
        break;
    case GBA_MON_DATA_NATIONAL_RIBBON:
        retVal = substruct3->nationalRibbon;
        break;
    case GBA_MON_DATA_EARTH_RIBBON:
        retVal = substruct3->earthRibbon;
        break;
    case GBA_MON_DATA_WORLD_RIBBON:
        retVal = substruct3->worldRibbon;
        break;
    case GBA_MON_DATA_UNUSED_RIBBONS:
        retVal = substruct3->unusedRibbons;
        break;
    case GBA_MON_DATA_MODERN_FATEFUL_ENCOUNTER:
        retVal = substruct3->modernFatefulEncounter;
        break;
    case GBA_MON_DATA_SPECIES_OR_EGG:
        retVal = substruct0->species;

        if (retVal == SPECIES_NONE)
            break;

        if (substruct3->isEgg || boxMonGBA->isBadEgg)
            retVal = GBA_SPECIES_EGG;

        break;
    case GBA_MON_DATA_IVS:
        retVal = substruct3->hpIV
              | (substruct3->attackIV << 5)
              | (substruct3->defenseIV << 10)
              | (substruct3->speedIV << 15)
              | (substruct3->spAttackIV << 20)
              | (substruct3->spDefenseIV << 25);
        break;
    }

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR)
        GBAEncryptBoxMon(boxMonGBA);

    return retVal;
}

void SetGBABoxMonData (BoxPokemonGBA * boxMon, int field, const u8 * dataArg)
{
    int v0;
    u32 v1;
    PokemonGBASubstruct0 * v2 = 0;
    PokemonGBASubstruct1 * v3 = 0;
    PokemonGBASubstruct2 * v4 = 0;
    PokemonGBASubstruct3 * v5 = 0;
    u16 v6;

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        v2 = (PokemonGBASubstruct0 *)ov97_02236380(boxMon, boxMon->personality, 0);
        v3 = (PokemonGBASubstruct1 *)ov97_02236380(boxMon, boxMon->personality, 1);
        v4 = (PokemonGBASubstruct2 *)ov97_02236380(boxMon, boxMon->personality, 2);
        v5 = (PokemonGBASubstruct3 *)ov97_02236380(boxMon, boxMon->personality, 3);

        GBADecryptBoxMon(boxMon);
        v6 = ov97_0223689C(boxMon);

        if (v6 != boxMon->checksum) {
            boxMon->isBadEgg = 1;
            boxMon->isEgg = 1;
            v5->isEgg = 1;
            GBAEncryptBoxMon(boxMon);
            return;
        }
    }

    switch (field) {
    case GBA_MON_DATA_NICKNAME:
        for (v0 = 0; v0 < 10; v0++) {
            boxMon->nickname[v0] = dataArg[v0];
        }
        break;
    case GBA_MON_DATA_LANGUAGE:
        boxMon->language = dataArg[0];
        break;
    case GBA_MON_DATA_SANITY_IS_BAD_EGG:
        boxMon->isBadEgg = dataArg[0];
        break;
    case GBA_MON_DATA_SANITY_HAS_SPECIES:
        boxMon->hasSpecies = dataArg[0];
        break;
    case GBA_MON_DATA_SANITY_IS_EGG:
        boxMon->isEgg = dataArg[0];
        break;
    case GBA_MON_DATA_OT_NAME:
        for (v0 = 0; v0 < 7; v0++) {
            boxMon->otName[v0] = dataArg[v0];
        }
        break;
    case GBA_MON_DATA_SPECIES:
        v2->species = dataArg[0] + (dataArg[1] << 8);

        if (v2->species) {
            boxMon->hasSpecies = 1;
        } else {
            boxMon->hasSpecies = 0;
        }
        break;
    }

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        boxMon->checksum = ov97_0223689C(boxMon);
        GBAEncryptBoxMon(boxMon);
    }
}

int ov97_02236DD0 (int param0)
{
    int v0;

    if (param0 < 277) {
        return param0;
    }

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223ED5C) / sizeof(UnkStruct_ov97_0223ED5C); v0++) {
        if (Unk_ov97_0223ED5C[v0].unk_00 == param0) {
            return Unk_ov97_0223ED5C[v0].unk_02;
        }
    }

    return param0;
}

u32 ov97_02236E00 (BoxPokemonGBA * param0)
{
    int v0;
    u32 v1;

    v0 = ov97_02236DD0(GetGBABoxMonData(param0, 11, 0));
    v1 = GetGBABoxMonData(param0, 25, 0);

    return sub_02075B78(v0, v1);
}

static int ov97_02236E28 (BoxPokemonGBA * param0, BoxPokemon * param1)
{
    int v0;
    int v1;
    u16 v2;
    int v3;

    v2 = sub_02074570(param1, MON_DATA_SPECIES, NULL);
    v3 = GetGBABoxMonData(param0, 46, NULL);
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

void BoxMonGBAToBoxMon (BoxPokemonGBA * param0, BoxPokemon * param1)
{
    BOOL v0;
    u32 v1;
    int v2, v3;
    int v4;
    u8 v5[10 + 1];
    u16 v6[12];

    ZeroBoxMonData(param1);

    v0 = sub_02073D20(param1);
    v1 = GetGBABoxMonData(param0, 0, NULL);

    SetBoxMonData(param1, 0, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 11, NULL);
    v1 = ov97_02236DD0(v1);

    SetBoxMonData(param1, 5, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 12, NULL);

    if (v1) {
        v1 = sub_0207CF10(v1);
    }

    SetBoxMonData(param1, 6, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 1, NULL);
    SetBoxMonData(param1, 7, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 25, NULL);
    SetBoxMonData(param1, 8, (u8 *)&v1);

    v1 = 70;
    SetBoxMonData(param1, 9, (u8 *)&v1);

    v1 = ov97_02236E28(param0, param1);
    SetBoxMonData(param1, 10, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 8, NULL);
    SetBoxMonData(param1, 11, (u8 *)&v1);

    v4 = GetGBABoxMonData(param0, 3, NULL);
    SetBoxMonData(param1, 12, (u8 *)&v4);

    v1 = GetGBABoxMonData(param0, 26, NULL);
    SetBoxMonData(param1, 13, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 27, NULL);
    SetBoxMonData(param1, 14, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 28, NULL);
    SetBoxMonData(param1, 15, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 29, NULL);
    SetBoxMonData(param1, 16, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 30, NULL);
    SetBoxMonData(param1, 17, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 31, NULL);
    SetBoxMonData(param1, 18, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 22, NULL);
    SetBoxMonData(param1, 19, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 23, NULL);
    SetBoxMonData(param1, 20, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 24, NULL);
    SetBoxMonData(param1, 21, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 33, NULL);
    SetBoxMonData(param1, 22, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 47, NULL);
    SetBoxMonData(param1, 23, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 48, NULL);
    SetBoxMonData(param1, 24, (u8 *)&v1);

    for (v2 = 0; v2 < 4; v2++) {
        v1 = GetGBABoxMonData(param0, 13 + v2, NULL);

        if (v1 > 354) {
            (void)0;
        }

        SetBoxMonData(param1, 54 + v2, (u8 *)&v1);

        v1 = GetGBABoxMonData(param0, 21, NULL);
        v1 = (v1 & (0x3 << (v2 * 2))) >> (v2 * 2);

        SetBoxMonData(param1, 62 + v2, (u8 *)&v1);

        v1 = sub_02074570(param1, 66 + v2, NULL);
        SetBoxMonData(param1, 58 + v2, (u8 *)&v1);
    }

    v1 = GetGBABoxMonData(param0, 39, NULL);
    SetBoxMonData(param1, 70, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 40, NULL);
    SetBoxMonData(param1, 71, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 41, NULL);
    SetBoxMonData(param1, 72, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 42, NULL);
    SetBoxMonData(param1, 73, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 43, NULL);
    SetBoxMonData(param1, 74, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 44, NULL);
    SetBoxMonData(param1, 75, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 45, NULL);
    SetBoxMonData(param1, 76, (u8 *)&v1);

    v3 = GetGBABoxMonData(param0, 50, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(param1, 78 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, 51, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(param1, 82 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, 52, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(param1, 86 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, 53, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(param1, 90 + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, 54, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            SetBoxMonData(param1, 94 + v2, (u8 *)&v1);
        }
    }

    v1 = GetGBABoxMonData(param0, 67, NULL);
    SetBoxMonData(param1, 98, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 68, NULL);
    SetBoxMonData(param1, 99, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 69, NULL);
    SetBoxMonData(param1, 100, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 70, NULL);
    SetBoxMonData(param1, 101, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 71, NULL);
    SetBoxMonData(param1, 102, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 72, NULL);
    SetBoxMonData(param1, 103, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 73, NULL);
    SetBoxMonData(param1, 104, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 74, NULL);
    SetBoxMonData(param1, 105, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 75, NULL);
    SetBoxMonData(param1, 106, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 76, NULL);
    SetBoxMonData(param1, 107, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 77, NULL);
    SetBoxMonData(param1, 108, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 78, NULL);
    SetBoxMonData(param1, 109, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, 80, NULL);
    SetBoxMonData(param1, 110, (u8 *)&v1);

    v1 = sub_02075D74(param1);
    SetBoxMonData(param1, 111, (u8 *)&v1);

    if (sub_02074570(param1, MON_DATA_SPECIES, NULL) == 201) {
        v1 = GetGBABoxMonData(param0, 0, NULL);
        v1 = (((v1 & 0x3000000) >> 18) | ((v1 & 0x30000) >> 12) | ((v1 & 0x300) >> 6) | (v1 & 0x3)) % 28;

        SetBoxMonData(param1, 112, (u8 *)&v1);
    }

    if (sub_02074570(param1, MON_DATA_SPECIES, NULL) == 386) {
        switch (Unk_021BF67C.unk_66) {
        default:
        case 2:
        case 1:
            v1 = 0;
            break;
        case 4:
            v1 = 1;
            break;
        case 5:
            v1 = 2;
            break;
        case 3:
            v1 = 3;
            break;
        }

        SetBoxMonData(param1, 112, (u8 *)&v1);
    }

    GetGBABoxMonData(param0, 2, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 12, v4);

    SetBoxMonData(param1, 118, &v6[0]);

    if (GetGBABoxMonData(param0, 3, NULL) != Unk_020E4C44) {
        v1 = 1;
        SetBoxMonData(param1, 77, &v1);
    }

    v1 = GetGBABoxMonData(param0, 37, NULL);
    SetBoxMonData(param1, 122, &v1);

    GetGBABoxMonData(param0, 7, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 8, v4);

    SetBoxMonData(param1, 144, &v6[0]);

    v1 = GetGBABoxMonData(param0, 35, NULL);
    SetBoxMonData(param1, 153, &v1);

    v1 = GetGBABoxMonData(param0, 34, NULL);
    SetBoxMonData(param1, 154, &v1);

    v1 = GetGBABoxMonData(param0, 38, NULL);
    SetBoxMonData(param1, 155, &v1);

    v1 = GetGBABoxMonData(param0, 36, NULL);
    SetBoxMonData(param1, 156, &v1);

    v1 = GetGBABoxMonData(param0, 49, NULL);
    SetBoxMonData(param1, 157, &v1);
    sub_02073D48(param1, v0);
}
