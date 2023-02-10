#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"

#include "overlay097/struct_ov97_02236380_sub.h"
#include "overlay097/struct_ov97_0223685C.h"

#include "unk_02073C2C.h"
#include "item.h"
#include "pal_park.h"
#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_0223635C.h"
#include "overlay097/ov97_022392E4.h"

#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/pokemon_gba.h"
#include "constants/species.h"

typedef struct {
    u8 unk_00[8];
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A[4];
    u16 unk_0E;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u16 unk_14_0 : 3;
    u16 unk_14_3 : 5;
    u16 unk_14_8 : 1;
    u16 unk_14_9 : 1;
    u16 unk_14_10 : 1;
    u16 unk_14_11 : 1;
    u16  : 4;
} UnkStruct_ov97_0223635C;

u32 ov97_0223635C (void)
{
    UnkStruct_ov97_0223635C * v0 = ov97_02236350();
    return v0->unk_0A[3] << 24 | v0->unk_0A[2] << 16 | v0->unk_0A[1] << 8 | v0->unk_0A[0];
}

u8 * ov97_02236378 (void)
{
    UnkStruct_ov97_0223635C * v0 = ov97_02236350();
    return v0->unk_00;
}

struct {
    u16 speciesGBA;
    u16 speciesDS;
} GBAToDSSpeciesArray[] =
{
    { 0x115, SPECIES_TREECKO },
    { 0x116, SPECIES_GROVYLE },
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

void ov97_02236E90(BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon);

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


#define GBA_SUBSTRUCT_CASE(n, v1, v2, v3, v4)                               \
case n:                                                                     \
    {                                                                       \
    PokemonGBASubstruct *substructs0 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs1 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs2 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs3 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs4 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs5 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs6 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs7 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs8 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs9 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct *substructs10 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs11 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs12 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs13 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs14 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs15 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs16 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs17 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs18 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs19 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs20 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs21 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs22 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct *substructs23 = boxMonGBA->secure.substructs; \
                                                                        \
        switch (substructType)                                          \
        {                                                               \
        case 0:                                                         \
            substruct = &substructs ## n [v1];                          \
            break;                                                      \
        case 1:                                                         \
            substruct = &substructs ## n [v2];                          \
            break;                                                      \
        case 2:                                                         \
            substruct = &substructs ## n [v3];                          \
            break;                                                      \
        case 3:                                                         \
            substruct = &substructs ## n [v4];                          \
            break;                                                      \
        }                                                               \
        break;                                                          \
    }

static PokemonGBASubstruct *GetGBASubstruct(BoxPokemonGBA *boxMonGBA, u32 personality, u8 substructType)
{
    PokemonGBASubstruct *substruct = NULL;

    switch (personality % 24)
    {
        GBA_SUBSTRUCT_CASE( 0,0,1,2,3)
        GBA_SUBSTRUCT_CASE( 1,0,1,3,2)
        GBA_SUBSTRUCT_CASE( 2,0,2,1,3)
        GBA_SUBSTRUCT_CASE( 3,0,3,1,2)
        GBA_SUBSTRUCT_CASE( 4,0,2,3,1)
        GBA_SUBSTRUCT_CASE( 5,0,3,2,1)
        GBA_SUBSTRUCT_CASE( 6,1,0,2,3)
        GBA_SUBSTRUCT_CASE( 7,1,0,3,2)
        GBA_SUBSTRUCT_CASE( 8,2,0,1,3)
        GBA_SUBSTRUCT_CASE( 9,3,0,1,2)
        GBA_SUBSTRUCT_CASE(10,2,0,3,1)
        GBA_SUBSTRUCT_CASE(11,3,0,2,1)
        GBA_SUBSTRUCT_CASE(12,1,2,0,3)
        GBA_SUBSTRUCT_CASE(13,1,3,0,2)
        GBA_SUBSTRUCT_CASE(14,2,1,0,3)
        GBA_SUBSTRUCT_CASE(15,3,1,0,2)
        GBA_SUBSTRUCT_CASE(16,2,3,0,1)
        GBA_SUBSTRUCT_CASE(17,3,2,0,1)
        GBA_SUBSTRUCT_CASE(18,1,2,3,0)
        GBA_SUBSTRUCT_CASE(19,1,3,2,0)
        GBA_SUBSTRUCT_CASE(20,2,1,3,0)
        GBA_SUBSTRUCT_CASE(21,3,1,2,0)
        GBA_SUBSTRUCT_CASE(22,2,3,1,0)
        GBA_SUBSTRUCT_CASE(23,3,2,1,0)
    }

    return substruct;
}

static void ov97_0223685C (BoxPokemonGBA *boxMonGBA)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&boxMonGBA->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= boxMonGBA->unk_04;
        v1[v0] ^= boxMonGBA->personality;
    }
}

static void ov97_0223687C (BoxPokemonGBA *boxMonGBA)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&boxMonGBA->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= boxMonGBA->personality;
        v1[v0] ^= boxMonGBA->unk_04;
    }
}

static u16 ov97_0223689C (BoxPokemonGBA *boxMonGBA)
{
    int v0;
    u16 * v1;
    u16 * v2;
    u16 * v3;
    u16 * v4;
    u16 v5 = 0;

    v1 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 0);
    v2 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 1);
    v3 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 2);
    v4 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 3);

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

u32 PalPark_GetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, u8 * param2)
{
    int v0;
    u32 v1 = 0;
    PokemonGBASubstruct0 *substruct0 = 0;
    PokemonGBASubstruct1 *substruct1 = 0;
    PokemonGBASubstruct2 *substruct2 = 0;
    PokemonGBASubstruct3 *substruct3 = 0;
    u16 v6;
    u16 * v7;

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
    {
        substruct0 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 0)->type0);
        substruct1 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 1)->type1);
        substruct2 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 2)->type2);
        substruct3 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 3)->type3);

        ov97_0223685C(boxMonGBA);
        v6 = ov97_0223689C(boxMonGBA);

        if (v6 != boxMonGBA->unk_1C) {
            boxMonGBA->unk_13_0 = 1;
            boxMonGBA->unk_13_2 = 1;
            substruct3->unk_04_30 = 1;
        }
    }

    switch (field) {
    case MON_GBA_DATA_PERSONALITY:
        v1 = boxMonGBA->personality;
        break;
    case MON_GBA_DATA_OT_ID:
        v1 = boxMonGBA->unk_04;
        break;
    case MON_GBA_DATA_NICKNAME:
        if (boxMonGBA->unk_13_0) {
            v1 = 0;
        } else {
            for (v1 = 0; v1 < 10; v1++) {
                param2[v1] = boxMonGBA->unk_08[v1];
            }
        }

        param2[v1] = 0xff;
        break;
    case MON_GBA_DATA_LANGUAGE:
        v1 = boxMonGBA->unk_12;
        break;
    case MON_GBA_DATA_SANITY_IS_BAD_EGG:
        v1 = boxMonGBA->unk_13_0;
        break;
    case MON_GBA_DATA_SANITY_HAS_SPECIES:
        v1 = boxMonGBA->unk_13_1;
        break;
    case MON_GBA_DATA_SANITY_IS_EGG:
        v1 = boxMonGBA->unk_13_2;
        break;
    case MON_GBA_DATA_OT_NAME:
        for (v1 = 0; v1 < 7; v1++) {
            param2[v1] = boxMonGBA->unk_14[v1];
        }

        param2[v1] = 0xffff;
        break;
    case MON_GBA_DATA_MARKINGS:
        v1 = boxMonGBA->unk_1B;
        break;
    case MON_GBA_DATA_CHECKSUM:
        v1 = boxMonGBA->unk_1C;
        break;
    case MON_GBA_DATA_ENCRYPT_SEPARATOR:
        v1 = boxMonGBA->unk_1E;
        break;
    case MON_GBA_DATA_SPECIES:
        if (boxMonGBA->unk_13_0) {
            v1 = 412;
        } else {
            v1 = substruct0->unk_00;
        }
        break;
    case MON_GBA_DATA_HELD_ITEM:
        v1 = substruct0->unk_02;
        break;
    case MON_GBA_DATA_EXP:
        v1 = substruct0->unk_04;
        break;
    case MON_GBA_DATA_PP_BONUSES:
        v1 = substruct0->unk_08;
        break;
    case MON_GBA_DATA_FRIENDSHIP:
        v1 = substruct0->unk_09;
        break;
    case MON_GBA_DATA_MOVE1:
    case MON_GBA_DATA_MOVE2:
    case MON_GBA_DATA_MOVE3:
    case MON_GBA_DATA_MOVE4:
        v1 = substruct1->unk_00[field - 13];
        break;
    case MON_GBA_DATA_PP1:
    case MON_GBA_DATA_PP2:
    case MON_GBA_DATA_PP3:
    case MON_GBA_DATA_PP4:
        v1 = substruct1->unk_08[field - 17];
        break;
    case MON_GBA_DATA_HP_EV:
        v1 = substruct2->unk_00;
        break;
    case MON_GBA_DATA_ATK_EV:
        v1 = substruct2->unk_01;
        break;
    case MON_GBA_DATA_DEF_EV:
        v1 = substruct2->unk_02;
        break;
    case MON_GBA_DATA_SPEED_EV:
        v1 = substruct2->unk_03;
        break;
    case MON_GBA_DATA_SPATK_EV:
        v1 = substruct2->unk_04;
        break;
    case MON_GBA_DATA_SPDEF_EV:
        v1 = substruct2->unk_05;
        break;
    case MON_GBA_DATA_COOL:
        v1 = substruct2->unk_06;
        break;
    case MON_GBA_DATA_BEAUTY:
        v1 = substruct2->unk_07;
        break;
    case MON_GBA_DATA_CUTE:
        v1 = substruct2->unk_08;
        break;
    case MON_GBA_DATA_SMART:
        v1 = substruct2->unk_09;
        break;
    case MON_GBA_DATA_TOUGH:
        v1 = substruct2->unk_0A;
        break;
    case MON_GBA_DATA_SHEEN:
        v1 = substruct2->unk_0B;
        break;
    case MON_GBA_DATA_POKERUS:
        v1 = substruct3->unk_00_0;
        break;
    case MON_GBA_DATA_MET_LOCATION:
        v1 = substruct3->unk_00_8;
        break;
    case MON_GBA_DATA_MET_LEVEL:
        v1 = substruct3->unk_00_16;
        break;
    case MON_GBA_DATA_MET_GAME:
        v1 = substruct3->unk_00_23;
        break;
    case MON_GBA_DATA_POKEBALL:
        v1 = substruct3->unk_00_27;
        break;
    case MON_GBA_DATA_OT_GENDER:
        v1 = substruct3->unk_00_31;
        break;
    case MON_GBA_DATA_HP_IV:
        v1 = substruct3->unk_04_0;
        break;
    case MON_GBA_DATA_ATK_IV:
        v1 = substruct3->unk_04_5;
        break;
    case MON_GBA_DATA_DEF_IV:
        v1 = substruct3->unk_04_10;
        break;
    case MON_GBA_DATA_SPEED_IV:
        v1 = substruct3->unk_04_15;
        break;
    case MON_GBA_DATA_SPATK_IV:
        v1 = substruct3->unk_04_20;
        break;
    case MON_GBA_DATA_SPDEF_IV:
        v1 = substruct3->unk_04_25;
        break;
    case MON_GBA_DATA_IS_EGG:
        v1 = substruct3->unk_04_30;
        break;
    case MON_GBA_DATA_ABILITY_NUM:
        v1 = substruct3->unk_04_31;
        break;
    case MON_GBA_DATA_COOL_RIBBON:
        v1 = substruct3->unk_08_0;
        break;
    case MON_GBA_DATA_BEAUTY_RIBBON:
        v1 = substruct3->unk_08_3;
        break;
    case MON_GBA_DATA_CUTE_RIBBON:
        v1 = substruct3->unk_08_6;
        break;
    case MON_GBA_DATA_SMART_RIBBON:
        v1 = substruct3->unk_08_9;
        break;
    case MON_GBA_DATA_TOUGH_RIBBON:
        v1 = substruct3->unk_08_12;
        break;
    case MON_GBA_DATA_CHAMPION_RIBBON:
        v1 = substruct3->unk_08_15;
        break;
    case MON_GBA_DATA_WINNING_RIBBON:
        v1 = substruct3->unk_08_16;
        break;
    case MON_GBA_DATA_VICTORY_RIBBON:
        v1 = substruct3->unk_08_17;
        break;
    case MON_GBA_DATA_ARTIST_RIBBON:
        v1 = substruct3->unk_08_18;
        break;
    case MON_GBA_DATA_EFFORT_RIBBON:
        v1 = substruct3->unk_08_19;
        break;
    case MON_GBA_DATA_MARINE_RIBBON:
        v1 = substruct3->unk_08_20;
        break;
    case MON_GBA_DATA_LAND_RIBBON:
        v1 = substruct3->unk_08_21;
        break;
    case MON_GBA_DATA_SKY_RIBBON:
        v1 = substruct3->unk_08_22;
        break;
    case MON_GBA_DATA_COUNTRY_RIBBON:
        v1 = substruct3->unk_08_23;
        break;
    case MON_GBA_DATA_NATIONAL_RIBBON:
        v1 = substruct3->unk_08_24;
        break;
    case MON_GBA_DATA_EARTH_RIBBON:
        v1 = substruct3->unk_08_25;
        break;
    case MON_GBA_DATA_WORLD_RIBBON:
        v1 = substruct3->unk_08_26;
        break;
    case MON_GBA_DATA_UNUSED_RIBBONS:
        v1 = substruct3->unk_08_27;
        break;
    case MON_GBA_DATA_EVENT_LEGAL:
        v1 = substruct3->unk_08_31;
        break;
    case MON_GBA_DATA_SPECIES2:
        v1 = substruct0->unk_00;

        if (v1 == 0) {
            break;
        }

        if ((substruct3->unk_04_30) || (boxMonGBA->unk_13_0)) {
            v1 = 412;
        }
        break;
    case MON_GBA_DATA_IVS:
        v1 = (substruct3->unk_04_0 << 0) | (substruct3->unk_04_5 << 5) | (substruct3->unk_04_10 << 10) | (substruct3->unk_04_15 << 15) | (substruct3->unk_04_20 << 20) | (substruct3->unk_04_25 << 25);
        break;
    }

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
        ov97_0223687C(boxMonGBA);

    return v1;
}

void ov97_02236CA4 (BoxPokemonGBA *boxMonGBA, int field, const u8 * param2)
{
    int v0;
    u32 v1;
    PokemonGBASubstruct0 *substruct0 = 0;
    PokemonGBASubstruct1 *substruct1 = 0;
    PokemonGBASubstruct2 *substruct2 = 0;
    PokemonGBASubstruct3 *substruct3 = 0;
    u16 v6;

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
    {
        substruct0 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 0)->type0);
        substruct1 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 1)->type1);
        substruct2 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 2)->type2);
        substruct3 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 3)->type3);

        ov97_0223685C(boxMonGBA);
        v6 = ov97_0223689C(boxMonGBA);

        if (v6 != boxMonGBA->unk_1C) {
            boxMonGBA->unk_13_0 = 1;
            boxMonGBA->unk_13_2 = 1;
            substruct3->unk_04_30 = 1;
            ov97_0223687C(boxMonGBA);
            return;
        }
    }

    switch (field) {
    case 2:
        for (v0 = 0; v0 < 10; v0++) {
            boxMonGBA->unk_08[v0] = param2[v0];
        }
        break;
    case 3:
        boxMonGBA->unk_12 = param2[0];
        break;
    case 4:
        boxMonGBA->unk_13_0 = param2[0];
        break;
    case 5:
        boxMonGBA->unk_13_1 = param2[0];
        break;
    case 6:
        boxMonGBA->unk_13_2 = param2[0];
        break;
    case 7:
        for (v0 = 0; v0 < 7; v0++)
            boxMonGBA->unk_14[v0] = param2[v0];
        break;
    case 11:
        substruct0->unk_00 = param2[0] + (param2[1] << 8);

        if (substruct0->unk_00)
            boxMonGBA->unk_13_1 = 1;
        else
            boxMonGBA->unk_13_1 = 0;
        break;
    }

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
    {
        boxMonGBA->unk_1C = ov97_0223689C(boxMonGBA);
        ov97_0223687C(boxMonGBA);
    }
}

int PalPark_GBAToDSSpecies(int speciesGBA)
{
    int i;

    if (speciesGBA < SPECIESGBA_TREECKO)
        return speciesGBA;

    for (i = 0; i < NELEMS(GBAToDSSpeciesArray); i++)
    {
        if (GBAToDSSpeciesArray[i].speciesGBA == speciesGBA)
            return GBAToDSSpeciesArray[i].speciesDS;
    }

    return speciesGBA;
}

u32 ov97_02236E00 (BoxPokemonGBA *boxMonGBA)
{
    int species;
    u32 exp;

    species = PalPark_GBAToDSSpecies(PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPECIES, 0));
    exp = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EXP, 0);

    return sub_02075B78(species, exp);
}

static int ov97_02236E28 (BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon)
{
    int v0;
    int v1;
    u16 v2;
    int v3;

    v2 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    v3 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ABILITY_NUM, NULL);
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

void ov97_02236E90 (BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon)
{
    BOOL v0;
    u32 value;
    int v2, v3;
    int v4;
    u8 v5[10 + 1];
    u16 v6[12];

    sub_02073C54(boxMon);

    v0 = sub_02073D20(boxMon);
    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_PERSONALITY, NULL);

    SetBoxMonData(boxMon, MON_DATA_PERSONALITY, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPECIES, NULL);
    value = PalPark_GBAToDSSpecies(value);

    SetBoxMonData(boxMon, MON_DATA_SPECIES, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_HELD_ITEM, NULL);

    if (value != ITEM_NONE)
        value = Item_GBAIdToItemId(value);

    SetBoxMonData(boxMon, MON_DATA_HELD_ITEM, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_OT_ID, NULL);
    SetBoxMonData(boxMon, MON_DATA_OT_ID, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EXP, NULL);
    SetBoxMonData(boxMon, MON_DATA_EXP, (u8 *)&value);

    value = 70;
    SetBoxMonData(boxMon, MON_DATA_FRIENDSHIP, (u8 *)&value);

    value = ov97_02236E28(boxMonGBA, boxMon);
    SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MARKINGS, NULL);
    SetBoxMonData(boxMon, MON_DATA_11, (u8 *)&value);

    v4 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_LANGUAGE, NULL);
    SetBoxMonData(boxMon, MON_DATA_LANGUAGE, (u8 *)&v4);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_HP_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_HP_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ATK_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_ATK_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_DEF_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_DEF_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPEED_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPEED_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPATK_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPATK_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPDEF_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPDEF_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_COOL, NULL);
    SetBoxMonData(boxMon, MON_DATA_COOL, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_BEAUTY, NULL);
    SetBoxMonData(boxMon, MON_DATA_BEAUTY, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_CUTE, NULL);
    SetBoxMonData(boxMon, MON_DATA_CUTE, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SMART, NULL);
    SetBoxMonData(boxMon, MON_DATA_SMART, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_TOUGH, NULL);
    SetBoxMonData(boxMon, MON_DATA_TOUGH, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SHEEN, NULL);
    SetBoxMonData(boxMon, MON_DATA_SHEEN, (u8 *)&value);

    for (v2 = 0; v2 < 4; v2++)
    {
        value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MOVE1 + v2, NULL);

        if (value > 354) {
            (void)0;
        }

        SetBoxMonData(boxMon, MON_DATA_54 + v2, (u8 *)&value);

        value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_PP_BONUSES, NULL);
        value = (value & (0x3 << (v2 * 2))) >> (v2 * 2);

        SetBoxMonData(boxMon, MON_DATA_62 + v2, (u8 *)&value);

        value = sub_02074570(boxMon, 66 + v2, NULL);
        SetBoxMonData(boxMon, MON_DATA_58 + v2, (u8 *)&value);
    }

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_HP_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_HP_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ATK_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_ATK_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_DEF_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_DEF_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPEED_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPEED_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPATK_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPATK_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPDEF_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPDEF_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_IS_EGG, NULL);
    SetBoxMonData(boxMon, MON_DATA_IS_EGG, (u8 *)&value);

    v3 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_COOL_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_78 + v2, (u8 *)&value);
        }
    }

    v3 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_BEAUTY_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_82 + v2, (u8 *)&value);
        }
    }

    v3 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_CUTE_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_86 + v2, (u8 *)&value);
        }
    }

    v3 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SMART_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_90 + v2, (u8 *)&value);
        }
    }

    v3 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_TOUGH_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_94 + v2, (u8 *)&value);
        }
    }

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_CHAMPION_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_CHAMPION_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_WINNING_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_WINNING_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_VICTORY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_VICTORY_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ARTIST_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_ARTIST_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EFFORT_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_EFFORT_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MARINE_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_MARINE_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_LAND_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_LAND_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SKY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_SKY_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_COUNTRY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_COUNTRY_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_NATIONAL_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_NATIONAL_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EARTH_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_EARTH_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_WORLD_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_WORLD_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EVENT_LEGAL, NULL);
    SetBoxMonData(boxMon, MON_DATA_EVENT_LEGAL, (u8 *)&value);

    value = sub_02075D74(boxMon);
    SetBoxMonData(boxMon, MON_DATA_111, (u8 *)&value);

    if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_UNOWN) {
        value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_PERSONALITY, NULL);
        value = (((value & 0x3000000) >> 18) | ((value & 0x30000) >> 12) | ((value & 0x300) >> 6) | (value & 0x3)) % 28;

        SetBoxMonData(boxMon, MON_DATA_112, (u8 *)&value);
    }

    if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_DEOXYS) {
        switch (Unk_021BF67C.gameId) {
        default:
        case VERSION_RUBY:
        case VERSION_SAPPHIRE:
            value = 0;
            break;
        case VERSION_FIRE_RED:
            value = 1;
            break;
        case VERSION_LEAF_GREEN:
            value = 2;
            break;
        case VERSION_EMERALD:
            value = 3;
            break;
        }

        SetBoxMonData(boxMon, MON_DATA_112, (u8 *)&value);
    }

    PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_NICKNAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 12, v4);

    SetBoxMonData(boxMon, MON_DATA_118, &v6[0]);

    if (PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_LANGUAGE, NULL) != Unk_020E4C44) {
        value = 1;
        SetBoxMonData(boxMon, MON_DATA_77, &value);
    }

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MET_GAME, NULL);
    SetBoxMonData(boxMon, MON_DATA_MET_GAME, &value);

    PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_OT_NAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 8, v4);

    SetBoxMonData(boxMon, MON_DATA_144, &v6[0]);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MET_LOCATION, NULL);
    SetBoxMonData(boxMon, MON_DATA_153, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_POKERUS, NULL);
    SetBoxMonData(boxMon, MON_DATA_POKERUS, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_POKEBALL, NULL);
    SetBoxMonData(boxMon, MON_DATA_POKEBALL, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MET_LEVEL, NULL);
    SetBoxMonData(boxMon, MON_DATA_MET_LEVEL, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_OT_GENDER, NULL);
    SetBoxMonData(boxMon, MON_DATA_OT_GENDER, &value);
    sub_02073D48(boxMon, v0);
}
