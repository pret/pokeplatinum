#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"
#include "overlay116/struct_ov116_0226048C.h"
#include "overlay116/struct_ov116_02260490.h"
#include "overlay116/struct_ov116_02260494.h"
#include "overlay116/struct_ov116_02260498.h"
#include "overlay116/struct_ov116_0226139C.h"

#include "unk_0201D15C.h"
#include "unk_02032798.h"
#include "overlay116/ov116_02260440.h"
#include "overlay116/ov116_022604C4.h"

static void ov116_02260440(int param0, int param1, void * param2, void * param3);
static void ov116_02260458(int param0, int param1, void * param2, void * param3);
static void ov116_02260464(int param0, int param1, void * param2, void * param3);
static void ov116_02260478(int param0, int param1, void * param2, void * param3);
static void ov116_02260484(int param0, int param1, void * param2, void * param3);
static int ov116_02260488(void);
static int ov116_0226048C(void);
static int ov116_02260490(void);
static int ov116_02260494(void);
static int ov116_02260498(void);

static const UnkStruct_02039A58 Unk_ov116_02267740[] = {
    {ov116_02260440, ov116_0226048C, NULL},
    {ov116_02260458, ov116_02260488, NULL},
    {ov116_02260464, ov116_02260490, NULL},
    {ov116_02260478, ov116_02260494, NULL},
    {ov116_02260484, ov116_02260498, NULL}
};

static void ov116_02260440 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov116_0226139C * v0 = param3;

    v0->unk_14 = *((UnkStruct_ov116_0226048C *)param2);

    LCRNG_SetSeed(v0->unk_14.unk_04);
    ov116_022617D4(v0);
}

static void ov116_02260458 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov116_0226139C * v0 = param3;
    ov116_022617DC(v0);
}

static void ov116_02260464 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov116_0226139C * v0 = param3;
    UnkStruct_ov116_02260490 * v1;

    v1 = ((UnkStruct_ov116_02260490 *)param2);
    v0->unk_04->unk_2858[param0].unk_00 = v1->unk_00;
}

static void ov116_02260478 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov116_0226139C * v0 = param3;
    UnkStruct_ov116_02260494 * v1;

    v1 = ((UnkStruct_ov116_02260494 *)param2);
    v0->unk_24.unk_00[param0].unk_00 = v1->unk_00;
}

static void ov116_02260484 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov116_0226139C * v0 = param3;
}

static int ov116_02260488 (void)
{
    return 0;
}

static int ov116_0226048C (void)
{
    return sizeof(UnkStruct_ov116_0226048C);
}

static int ov116_02260490 (void)
{
    return sizeof(UnkStruct_ov116_02260490);
}

static int ov116_02260494 (void)
{
    return sizeof(UnkStruct_ov116_02260494);
}

static int ov116_02260498 (void)
{
    return sizeof(UnkStruct_ov116_02260498);
}

const UnkStruct_02039A58 * ov116_0226049C (void)
{
    return Unk_ov116_02267740;
}

int ov116_022604A4 (void)
{
    return sizeof(Unk_ov116_02267740) / sizeof(UnkStruct_02039A58);
}

void ov116_022604A8 (UnkStruct_ov116_0226139C * param0)
{
    CommCmd_Init(ov116_0226049C(), ov116_022604A4(), param0);
}
