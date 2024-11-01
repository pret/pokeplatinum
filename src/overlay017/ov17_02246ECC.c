#include "overlay017/ov17_02246ECC.h"

#include <nitro.h>
#include <string.h>

#include "overlay017/ov17_022413D8.h"
#include "overlay017/struct_ov17_0223BE58.h"
#include "overlay017/struct_ov17_02246F24.h"
#include "overlay017/struct_ov17_022472F8.h"

#include "heap.h"
#include "move_table.h"
#include "pokemon.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"

typedef struct {
    u16 unk_00;
    s16 unk_02;
    s16 unk_04[3];
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_ov17_02246F9C_sub1;

typedef struct {
    UnkStruct_ov17_02246F9C_sub1 unk_00[4];
    u8 unk_30;
} UnkStruct_ov17_02246F9C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    s8 unk_03;
    s16 unk_04[4];
} UnkStruct_ov17_02253C30;

static void ov17_02246F24(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_02246F9C *param1, int param2);
static void ov17_02246F9C(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_02246F9C *param1, int param2, u16 *param3, u8 *param4);
static int ov17_022472F8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247308(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247320(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247338(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247350(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247368(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247380(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247398(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022473B0(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022473C8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022473E0(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022473F8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247424(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247454(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247474(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247490(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022474D8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247520(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247538(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247550(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_0224757C(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022475A8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022475D4(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247600(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_0224762C(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247658(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_02247684(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);
static int ov17_022476B0(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4);

static int (*const Unk_ov17_02253BBC[])(UnkStruct_ov17_022472F8 *, int, UnkStruct_ov17_02246F9C *, u8 *, int) = {
    NULL,
    ov17_022472F8,
    ov17_02247308,
    ov17_02247320,
    ov17_02247338,
    ov17_02247350,
    ov17_02247368,
    ov17_02247380,
    ov17_02247398,
    ov17_022473B0,
    ov17_022473C8,
    ov17_022473E0,
    ov17_022473F8,
    ov17_02247424,
    ov17_02247454,
    ov17_02247474,
    ov17_02247490,
    ov17_022474D8,
    ov17_02247520,
    ov17_02247538,
    ov17_02247550,
    ov17_0224757C,
    ov17_022475A8,
    ov17_022475D4,
    ov17_02247600,
    ov17_0224762C,
    ov17_02247658,
    ov17_02247684,
    ov17_022476B0
};

static const UnkStruct_ov17_02253C30 Unk_ov17_02253C30[] = {
    {
        0x1,
        0x14,
        0xf0,
        0x1,
        { 0x46, 0x14, 0x14, -20 },
    },
    {
        0x1,
        0x14,
        0x16,
        0x1,
        { 0x64, 0x14, 0x14, -20 },
    },
    {
        0x1,
        0x14,
        0x8,
        0x1,
        { 0x28, 0x14, 0x14, -20 },
    },
    {
        0x1,
        0x14,
        0x17,
        0x2,
        { 0xA, 0x14, 0x0, 0x0 },
    },
    {
        0x1,
        0x15,
        0xf0,
        0x2,
        { 0x0, 0x14, 0x0, 0x0 },
    },
    {
        0x1,
        0x16,
        0x10,
        0x1,
        { 0x28, 0x14, 0x14, -20 },
    },
    {
        0x1,
        0x17,
        0xA,
        0x0,
        { 0x14, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x18,
        0x9,
        0x0,
        { -1000, 0x14, -20, 0x0 },
    },
    {
        0x1,
        0x19,
        0x9,
        0x1,
        { 0x14, 0x14, -20, 0x0 },
    },
    {
        0x1,
        0x1A,
        0x6,
        0x3,
        { 0xA, 0x14, 0x0, 0x0 },
    },
    {
        0x1,
        0x1B,
        0x6,
        0x1,
        { 0xA, 0x14, 0x0, 0x0 },
    },
    {
        0x1,
        0x1C,
        0xD,
        0x1,
        { 0x1E, 0x0, 0x0, -20 },
    },
    {
        0x1,
        0xE,
        0x4,
        0x0,
        { 0xA, 0x0, 0x14, 0x14 },
    },
    {
        0x1,
        0xF,
        0xf0,
        0x0,
        { 0xF, 0x0, 0x14, 0x14 },
    },
    {
        0x1,
        0xF,
        0x1,
        0x0,
        { 0xA, 0x14, 0x14, 0x14 },
    },
    {
        0x1,
        0x10,
        0xD,
        0x1,
        { 0xF, 0x0, 0x0, 0x14 },
    },
    {
        0x1,
        0x11,
        0xD,
        0x1,
        { 0xA, 0x0, 0x0, 0x14 },
    },
    {
        0x1,
        0x1,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x1,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x1,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x0 },
    },
    {
        0x1,
        0x1,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x2,
        0xf1,
        0x0,
        { 0x14, 0x0, 0x14, 0x0 },
    },
    {
        0x1,
        0x2,
        0x9,
        0x0,
        { 0xA, 0x14, -20, 0x14 },
    },
    {
        0x1,
        0x2,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x2,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x2,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x0 },
    },
    {
        0x1,
        0x2,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x2,
        0x17,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x1,
        0x3,
        0x5,
        0x0,
        { 0x1E, 0x0, 0x14, -20 },
    },
    {
        0x1,
        0x3,
        0xB,
        0x0,
        { 0x19, 0x14, 0x14, -20 },
    },
    {
        0x1,
        0x4,
        0xB,
        0x0,
        { 0xA, 0x14, 0x14, -20 },
    },
    {
        0x1,
        0x5,
        0xC,
        0x0,
        { -1000, 0x14, 0x0, -20 },
    },
    {
        0x1,
        0x6,
        0x2,
        0x0,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x1,
        0x6,
        0xB,
        0x0,
        { 0x32, 0x14, 0x0, -20 },
    },
    {
        0x1,
        0x7,
        0x11,
        0x0,
        { 0x1E, 0x0, 0x14, -20 },
    },
    {
        0x1,
        0x8,
        0x12,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x1,
        0x9,
        0x13,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x1,
        0xA,
        0x14,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x1,
        0xB,
        0x15,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x1,
        0xB,
        0xB,
        0x0,
        { 0x23, 0x14, -20, -20 },
    },
    {
        0x1,
        0xB,
        0x2,
        0x0,
        { 0x28, 0x14, -20, -20 },
    },
    {
        0x1,
        0xC,
        0xE,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x1,
        0xC,
        0x9,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x1,
        0xD,
        0x9,
        0x0,
        { 0x3C, 0x14, -20, 0x14 },
    },
    {
        0x2,
        0x14,
        0xf0,
        0x1,
        { 0x32, 0x14, 0x14, -20 },
    },
    {
        0x2,
        0x14,
        0x16,
        0x1,
        { 0x50, 0x14, 0x14, -20 },
    },
    {
        0x2,
        0x14,
        0x8,
        0x1,
        { 0x28, 0x14, 0x14, -20 },
    },
    {
        0x2,
        0x14,
        0xC,
        0x1,
        { 0x32, 0x14, -20, -20 },
    },
    {
        0x2,
        0x14,
        0x14,
        0x1,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x2,
        0x14,
        0x17,
        0x2,
        { 0x14, 0x14, 0x0, -20 },
    },
    {
        0x2,
        0x16,
        0x10,
        0x1,
        { 0x1E, 0x14, 0x0, -20 },
    },
    {
        0x2,
        0x17,
        0xA,
        0x0,
        { 0x14, 0x0, 0x0, -20 },
    },
    {
        0x2,
        0x18,
        0x9,
        0x0,
        { -1000, 0x14, -20, -20 },
    },
    {
        0x2,
        0x19,
        0x9,
        0x1,
        { 0x14, 0x14, -20, -20 },
    },
    {
        0x2,
        0x1A,
        0x6,
        0x3,
        { 0x1E, 0x14, -20, -20 },
    },
    {
        0x2,
        0x1B,
        0x6,
        0x1,
        { 0xA, 0x0, 0x0, -20 },
    },
    {
        0x2,
        0x1C,
        0xD,
        0x1,
        { 0x1E, 0x0, 0x0, -20 },
    },
    {
        0x2,
        0xE,
        0x4,
        0x0,
        { 0x14, 0x0, 0x14, 0x14 },
    },
    {
        0x2,
        0xF,
        0xf0,
        0x0,
        { 0xF, 0x0, 0x14, 0x14 },
    },
    {
        0x2,
        0xF,
        0x1,
        0x0,
        { 0xA, 0x0, 0x14, 0x14 },
    },
    {
        0x2,
        0x10,
        0xD,
        0x1,
        { 0xF, 0x0, 0x0, 0x14 },
    },
    {
        0x2,
        0x1,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x1,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x1,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x14 },
    },
    {
        0x2,
        0x1,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x2,
        0xf1,
        0x0,
        { 0x14, 0x0, 0x14, 0x14 },
    },
    {
        0x2,
        0x2,
        0x17,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x2,
        0x9,
        0x0,
        { 0xA, 0x14, -20, 0x14 },
    },
    {
        0x2,
        0x2,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x2,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x2,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x14 },
    },
    {
        0x2,
        0x2,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x2,
        0x3,
        0xB,
        0x0,
        { 0x1E, 0x14, 0x14, -20 },
    },
    {
        0x2,
        0x4,
        0xB,
        0x0,
        { 0xA, 0x14, 0x14, -20 },
    },
    {
        0x2,
        0x6,
        0xB,
        0x0,
        { 0x32, 0x14, 0x14, -20 },
    },
    {
        0x2,
        0x6,
        0x2,
        0x0,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x2,
        0x6,
        0xE,
        0x0,
        { 0xA, 0x14, -20, -20 },
    },
    {
        0x2,
        0x7,
        0x11,
        0x0,
        { -1000, 0x0, -20, -20 },
    },
    {
        0x2,
        0x8,
        0x12,
        0x0,
        { -1000, 0x0, -20, -20 },
    },
    {
        0x2,
        0x9,
        0x13,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x2,
        0xB,
        0x2,
        0x0,
        { 0xA, 0x0, 0x0, -20 },
    },
    {
        0x2,
        0xB,
        0x15,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x2,
        0xB,
        0xB,
        0x0,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x2,
        0xB,
        0xE,
        0x0,
        { 0xA, 0x14, 0x0, -20 },
    },
    {
        0x2,
        0xC,
        0xE,
        0x0,
        { 0x14, 0x14, 0x0, 0x14 },
    },
    {
        0x2,
        0xC,
        0x9,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x2,
        0xD,
        0x9,
        0x0,
        { 0x3C, 0x14, -20, 0x14 },
    },
    {
        0x3,
        0x14,
        0x10,
        0x1,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x14,
        0x14,
        0x1,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x14,
        0xC,
        0x1,
        { 0x28, 0x14, -20, -20 },
    },
    {
        0x3,
        0x15,
        0x14,
        0x1,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x15,
        0xC,
        0x1,
        { 0x1E, 0x14, -20, -20 },
    },
    {
        0x3,
        0x15,
        0xf0,
        0x1,
        { 0x1E, 0x0, 0x14, -20 },
    },
    {
        0x3,
        0x17,
        0xA,
        0x0,
        { 0xA, 0x0, 0x0, -20 },
    },
    {
        0x3,
        0x18,
        0x9,
        0x0,
        { -1000, 0x14, -20, -20 },
    },
    {
        0x3,
        0x19,
        0x9,
        0x1,
        { 0x14, 0x14, -20, -20 },
    },
    {
        0x3,
        0x1A,
        0x6,
        0x3,
        { 0x1E, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x1C,
        0xD,
        0x1,
        { 0xA, 0x0, 0x0, -20 },
    },
    {
        0x3,
        0xE,
        0x4,
        0x0,
        { 0x14, 0x0, 0x14, 0x14 },
    },
    {
        0x3,
        0xF,
        0xf0,
        0x0,
        { 0xF, 0x0, 0x14, 0x14 },
    },
    {
        0x3,
        0xF,
        0x1,
        0x0,
        { 0xA, 0x14, 0x14, 0x14 },
    },
    {
        0x3,
        0x1,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x1,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x1,
        0xE,
        0x0,
        { -1000, 0x0, 0x0, 0x14 },
    },
    {
        0x3,
        0x1,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x2,
        0x17,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x2,
        0x9,
        0x0,
        { 0xA, 0x14, -20, 0x14 },
    },
    {
        0x3,
        0x2,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x2,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x2,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x14 },
    },
    {
        0x3,
        0x2,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x3,
        0x2,
        0xf1,
        0x0,
        { 0xA, 0x0, 0x14, 0x0 },
    },
    {
        0x3,
        0x3,
        0xB,
        0x0,
        { 0x1E, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x4,
        0xB,
        0x0,
        { 0xA, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x6,
        0x2,
        0x0,
        { 0x28, 0x0, 0x0, -20 },
    },
    {
        0x3,
        0x6,
        0xE,
        0x0,
        { 0xA, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x6,
        0xB,
        0x0,
        { 0x14, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0x7,
        0x11,
        0x0,
        { -1000, 0x0, -20, -20 },
    },
    {
        0x3,
        0x8,
        0x12,
        0x0,
        { -1000, 0x0, -20, -20 },
    },
    {
        0x3,
        0x9,
        0x13,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x3,
        0xB,
        0xE,
        0x0,
        { 0xA, 0x14, -20, -20 },
    },
    {
        0x3,
        0xB,
        0x2,
        0x0,
        { 0x14, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0xB,
        0xB,
        0x0,
        { 0x14, 0x14, 0x0, -20 },
    },
    {
        0x3,
        0xB,
        0x15,
        0x0,
        { 0x1E, 0x0, 0x0, -20 },
    },
    {
        0x3,
        0xC,
        0xE,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x3,
        0xC,
        0x9,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x3,
        0xD,
        0x9,
        0x0,
        { 0x3C, 0x14, -20, 0x14 },
    },
    {
        0x4,
        0x14,
        0x10,
        0x1,
        { 0x28, 0x14, 0x14, -20 },
    },
    {
        0x4,
        0x14,
        0xC,
        0x1,
        { 0x28, 0x14, -20, -20 },
    },
    {
        0x4,
        0x14,
        0x14,
        0x1,
        { 0x14, 0x14, 0x0, -20 },
    },
    {
        0x4,
        0x15,
        0x10,
        0x1,
        { 0x1E, 0x14, 0x0, -20 },
    },
    {
        0x4,
        0x15,
        0xC,
        0x1,
        { 0x1E, 0x14, -20, -20 },
    },
    {
        0x4,
        0x15,
        0x14,
        0x1,
        { 0x28, 0x14, 0x0, -20 },
    },
    {
        0x4,
        0x17,
        0xA,
        0x0,
        { 0xA, 0x0, 0x0, -20 },
    },
    {
        0x4,
        0x18,
        0x9,
        0x0,
        { -1000, 0x14, -20, -20 },
    },
    {
        0x4,
        0x19,
        0x9,
        0x1,
        { 0x14, 0x14, -20, -20 },
    },
    {
        0x4,
        0x1A,
        0x6,
        0x3,
        { 0x1E, 0x14, 0x0, -20 },
    },
    {
        0x4,
        0xE,
        0x4,
        0x0,
        { 0x14, 0x0, 0x14, 0x0 },
    },
    {
        0x4,
        0xF,
        0xf0,
        0x0,
        { 0xF, 0x0, 0x14, 0x14 },
    },
    {
        0x4,
        0xF,
        0x1,
        0x0,
        { 0xA, 0x14, 0x14, 0x14 },
    },
    {
        0x4,
        0x1,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x1,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x1,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x14 },
    },
    {
        0x4,
        0x1,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x2,
        0x17,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x2,
        0x9,
        0x0,
        { 0xA, 0x14, -20, 0x14 },
    },
    {
        0x4,
        0x2,
        0x2,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x2,
        0x1,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x2,
        0xE,
        0x0,
        { -1000, 0x0, -20, 0x14 },
    },
    {
        0x4,
        0x2,
        0xB,
        0x0,
        { -1000, 0x0, 0x0, 0x0 },
    },
    {
        0x4,
        0x2,
        0xf1,
        0x0,
        { 0xA, 0x0, 0x14, 0x14 },
    },
    {
        0x4,
        0x2,
        0x15,
        0x0,
        { 0x50, 0x14, 0x0, 0x0 },
    },
    {
        0x4,
        0x2,
        0xF,
        0x0,
        { 0x50, 0x14, 0x0, 0x0 },
    },
    {
        0x4,
        0x12,
        0x8,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x4,
        0x13,
        0xD,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x4,
        0x6,
        0xB,
        0x0,
        { 0x1E, 0x14, 0x0, -20 },
    },
    {
        0x4,
        0x6,
        0xF,
        0x0,
        { 0x3C, 0x14, 0x14, -20 },
    },
    {
        0x4,
        0x7,
        0x11,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x4,
        0x8,
        0x12,
        0x0,
        { 0x28, 0x14, 0x14, -20 },
    },
    {
        0x4,
        0x9,
        0x13,
        0x0,
        { -1000, 0x0, 0x0, -20 },
    },
    {
        0x4,
        0xB,
        0x15,
        0x0,
        { 0x3C, 0x14, 0x14, -20 },
    },
    {
        0x4,
        0xB,
        0xB,
        0x0,
        { 0xA, 0x14, 0x0, -20 },
    },
    {
        0x4,
        0xC,
        0xE,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x4,
        0xC,
        0x9,
        0x0,
        { 0x14, 0x14, -20, 0x14 },
    },
    {
        0x4,
        0xD,
        0x9,
        0x0,
        { 0x3C, 0x14, -20, 0x14 },
    },
};

void ov17_02246ECC(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BE58 *param1)
{
    int v0;
    UnkStruct_ov17_02246F9C *v1;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02246F9C));

    for (v0 = param0->unk_00->unk_00.unk_117; v0 < 4; v0++) {
        ov17_02246F24(param0, v1, v0);
        ov17_02246F9C(param0, v1, v0, &param1->unk_00[v0], &param1->unk_08[v0]);
    }

    Heap_FreeToHeap(v1);
}

static void ov17_02246F24(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_02246F9C *param1, int param2)
{
    int v0;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov17_02246F9C));

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        param1->unk_00[v0].unk_00 = Pokemon_GetValue(param0->unk_00->unk_00.unk_00[param2], MON_DATA_MOVE1 + v0, NULL);

        if (ov17_02243A98(&param0->unk_220, param2, param1->unk_00[v0].unk_00) == 1) {
            param1->unk_00[v0].unk_0A = MoveTable_LoadParam(param1->unk_00[v0].unk_00, MOVEATTRIBUTE_CONTEST_EFFECT);
            param1->unk_00[v0].unk_0B = MoveTable_LoadParam(param1->unk_00[v0].unk_00, MOVEATTRIBUTE_CONTEST_TYPE);
        } else {
            param1->unk_00[v0].unk_00 = 0;
        }
    }

    param1->unk_30 = param0->unk_00->unk_00.unk_FC[param2];
}

static void ov17_02246F9C(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_02246F9C *param1, int param2, u16 *param3, u8 *param4)
{
    int v0, v1, v2, v3, v4;
    UnkStruct_ov17_022472F8 *v5;
    int v6;
    u8 v7[1 + 2];

    v5 = &param0->unk_220;

    for (v1 = 0; v1 < 4; v1++) {
        if (v5->unk_01[v1] == param2) {
            break;
        }
    }

    v0 = v1;
    v0++;

    for (v1 = 0; v1 < 165; v1++) {
        if (Unk_ov17_02253C30[v1].unk_00 == v0) {
            for (v4 = 0; v4 < (1 + 2); v4++) {
                v7[v4] = 0;
            }

            v2 = Unk_ov17_02253BBC[Unk_ov17_02253C30[v1].unk_01](v5, param2, param1, v7, param0->unk_00->unk_00.unk_10F);

            if (v2 == 1) {
                switch (Unk_ov17_02253C30[v1].unk_03) {
                case 0:
                    for (v4 = 0; v4 < (1 + 2); v4++) {
                        v7[v4] = 0;
                    }
                    break;
                case 2:
                case 3:
                    for (v4 = 0; v4 < (1 + 2); v4++) {
                        v7[v4] ^= 1;
                    }

                    break;
                }

                v6 = Unk_ov17_02253C30[v1].unk_04[param0->unk_00->unk_00.unk_FC[param2]];

                if (param0->unk_00->unk_00.unk_FC[param2] != 0) {
                    v6 += Unk_ov17_02253C30[v1].unk_04[0];
                }

                switch (Unk_ov17_02253C30[v1].unk_02) {
                case 240:
                    for (v3 = 0; v3 < 4; v3++) {
                        if (param0->unk_00->unk_00.unk_10F == param1->unk_00[v3].unk_0B) {
                            param1->unk_00[v3].unk_02 += v6;

                            for (v4 = 0; v4 < (1 + 2); v4++) {
                                if (v7[v4] == 1) {
                                    param1->unk_00[v3].unk_04[v4] += v6;
                                }
                            }
                        }
                    }
                    break;
                case 241:
                    for (v3 = 0; v3 < 4; v3++) {
                        if (sub_02095734(param1->unk_00[v3].unk_0A) >= 10 * 2) {
                            param1->unk_00[v3].unk_02 += v6;

                            for (v4 = 0; v4 < (1 + 2); v4++) {
                                if (v7[v4] == 1) {
                                    param1->unk_00[v3].unk_04[v4] += v6;
                                }
                            }
                        }
                    }
                    break;
                default:
                    for (v3 = 0; v3 < 4; v3++) {
                        if (Unk_ov17_02253C30[v1].unk_02 == param1->unk_00[v3].unk_0A) {
                            param1->unk_00[v3].unk_02 += v6;

                            for (v4 = 0; v4 < (1 + 2); v4++) {
                                if (v7[v4] == 1) {
                                    param1->unk_00[v3].unk_04[v4] += v6;
                                }
                            }
                        }
                    }
                    break;
                }
            }
        }
    }

    {
        u16 v8[4], v9[(1 + 2)];
        int v10, v11, v12, v13, v14, v15;

        for (v1 = 0; v1 < 4; v1++) {
            v8[v1] = sub_02094E98(param0->unk_00);
        }

        for (v1 = 0; v1 < (1 + 2); v1++) {
            v9[v1] = sub_02094E98(param0->unk_00);
        }

        for (v10 = 0; param1->unk_00[v10].unk_00 == 0; v10++) {
            (void)0;
        }

        v11 = v10;
        v13 = param1->unk_00[v10].unk_02;

        for (v1 = v10 + 1; v1 < 4; v1++) {
            if (param1->unk_00[v1].unk_00 != 0) {
                v12 = param1->unk_00[v1].unk_02;

                if ((v12 > v13) || ((v12 == v13) && (v8[v1] > v8[v11]))) {
                    v11 = v1;
                    v13 = v12;
                }
            }
        }

        v15 = v11;

        if (param0->unk_00->unk_155 == 0) {
            int v16, v17, v18, v19;

            v16 = 0;

            for (v17 = 0; v17 < (1 + 2); v17++) {
                if (param1->unk_00[v15].unk_04[v17] == 0) {
                    v16++;
                }
            }

            if (v16 == (1 + 2)) {
                const u8 v20[] = {
                    230,
                    128,
                    51,
                    0,
                };

                v18 = sub_02094E98(param0->unk_00) & 0xff;

                if (v18 < v20[param0->unk_00->unk_00.unk_110]) {
                    v19 = param0->unk_220.unk_0E[param0->unk_00->unk_00.unk_113];
                    param1->unk_00[v15].unk_04[v19] -= 100;
                }
            }
        }

        v11 = 0;
        v13 = param1->unk_00[v15].unk_04[0];

        for (v1 = 1; v1 < (1 + 2); v1++) {
            v12 = param1->unk_00[v15].unk_04[v1];

            if ((v12 > v13) || ((v12 == v13) && (v9[v1] > v9[v11]))) {
                v11 = v1;
                v13 = v12;
            }
        }

        v14 = v11;

        *param3 = param1->unk_00[v15].unk_00;
        *param4 = v14;

        GF_ASSERT((*param3) != 0);
        GF_ASSERT((*param4) < (1 + 2));
    }
}

static int ov17_022472F8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    if (param0->unk_00 == 4) {
        return 1;
    }

    return 0;
}

static int ov17_02247308(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    if (param0->unk_30.unk_A0[param1].unk_00_16 != 0) {
        return 1;
    }

    return 0;
}

static int ov17_02247320(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 5) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247338(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 9) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247350(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 12) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247368(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 15) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247380(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 17) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247398(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 18) {
            return 1;
        }
    }

    return 0;
}

static int ov17_022473B0(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 19) {
            return 1;
        }
    }

    return 0;
}

static int ov17_022473C8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 20) {
            return 1;
        }
    }

    return 0;
}

static int ov17_022473E0(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 21) {
            return 1;
        }
    }

    return 0;
}

static int ov17_022473F8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v0 = param0->unk_12[param1];

    for (v1 = 0; v1 < 4; v1++) {
        if (v0 > param0->unk_12[v1]) {
            break;
        }
    }

    if (v1 == 4) {
        return 1;
    }

    return 0;
}

static int ov17_02247424(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    if (param0->unk_00 == 4) {
        v0 = param0->unk_12[param1];

        for (v1 = 0; v1 < 4; v1++) {
            if (v0 > param0->unk_12[v1]) {
                break;
            }
        }

        if (v1 == 4) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247454(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((param2->unk_00[v0].unk_0A == 4) && (param2->unk_00[v0].unk_0B == param4)) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247474(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0B == param4) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247490(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0B == param4) {
            break;
        }
    }

    if (v0 == 4) {
        return 0;
    }

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 10 * 4) {
            param3[v0] = 1;
            v1++;
        }
    }

    if (v1 > 0) {
        return 1;
    }

    return 0;
}

static int ov17_022474D8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0B == param4) {
            break;
        }
    }

    if (v0 == 4) {
        return 0;
    }

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 10 * 3) {
            v1++;
            param3[v0] = 1;
        }
    }

    if (v1 > 0) {
        return 1;
    }

    return 0;
}

static int ov17_02247520(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 8) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247538(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0A == 13) {
            return 1;
        }
    }

    return 0;
}

static int ov17_02247550(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 10 * 4) {
            v1++;
            param3[v0] = 1;
        }
    }

    if (v1 > 0) {
        return 1;
    }

    return 0;
}

static int ov17_0224757C(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 10 * 3) {
            v1++;
            param3[v0] = 1;
        }
    }

    if (v1 > 0) {
        return 1;
    }

    return 0;
}

static int ov17_022475A8(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] <= 10 * 1) {
            v1++;
            param3[v0] = 1;
        }
    }

    if (v1 > 0) {
        return 1;
    }

    return 0;
}

static int ov17_022475D4(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] < 10 * 2) {
            return 0;
        }
    }

    for (v0 = 0; v0 < (1 + 2); v0++) {
        param3[v0] = 1;
    }

    return 1;
}

static int ov17_02247600(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] > 10 * 2) {
            return 0;
        }
    }

    for (v0 = 0; v0 < (1 + 2); v0++) {
        param3[v0] = 1;
    }

    return 1;
}

static int ov17_0224762C(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] <= 10 * 2) {
            param3[v0] = 1;
            v1++;
        }
    }

    if (v1 == 1) {
        return 1;
    }

    return 0;
}

static int ov17_02247658(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 10 * 4) {
            param3[v0] = 1;
            v1++;
        }
    }

    if (v1 == 2) {
        return 1;
    }

    return 0;
}

static int ov17_02247684(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 0) {
            param3[v0] = 1;
            v1++;
        }
    }

    if (v1 == 1) {
        return 1;
    }

    return 0;
}

static int ov17_022476B0(UnkStruct_ov17_022472F8 *param0, int param1, UnkStruct_ov17_02246F9C *param2, u8 *param3, int param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_00[v0].unk_0B == param4) {
            break;
        }
    }

    if (v0 == 4) {
        return 0;
    }

    v1 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_22[v0] == 10 * 4) {
            param3[v0] = 1;
            v1++;
        }
    }

    if (v1 > 0) {
        return 1;
    }

    return 0;
}
