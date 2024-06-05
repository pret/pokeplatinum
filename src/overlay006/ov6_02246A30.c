#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "trainer_info.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_020507E4_decl.h"

#include "field/field_system.h"

#include "unk_0201D15C.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"
#include "overlay006/ov6_02246A30.h"

typedef BOOL (* UnkStruct_ov6_022494B0)(FieldSystem *);

static BOOL ov6_02246A30(FieldSystem * fieldSystem);
static BOOL ov6_02246A34(FieldSystem * fieldSystem);
static BOOL ov6_02246A38(FieldSystem * fieldSystem);
static BOOL ov6_02246A4C(FieldSystem * fieldSystem);
static BOOL ov6_02246A60(FieldSystem * fieldSystem);
static BOOL ov6_02246A74(FieldSystem * fieldSystem);
static BOOL ov6_02246A88(FieldSystem * fieldSystem);
static BOOL ov6_02246A9C(FieldSystem * fieldSystem);
static BOOL ov6_02246AB0(FieldSystem * fieldSystem);
static BOOL ov6_02246AC8(FieldSystem * fieldSystem);
static BOOL ov6_02246AD8(FieldSystem * fieldSystem);
static BOOL ov6_02246AE8(FieldSystem * fieldSystem);

static const UnkStruct_ov6_022494B0 Unk_ov6_022494B0[] = {
    ov6_02246A30,
    ov6_02246A4C,
    ov6_02246A38,
    ov6_02246A60,
    ov6_02246A74,
    ov6_02246A88,
    ov6_02246A9C,
    ov6_02246AB0,
    ov6_02246AC8,
    ov6_02246AD8,
    ov6_02246AE8,
    ov6_02246A34
};

static u8 Unk_ov6_02249878[] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x2,
    0x1,
    0x4,
    0x4,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x7,
    0x7,
    0x3,
    0x8,
    0xA,
    0xA,
    0x8,
    0x5,
    0x5,
    0x9,
    0x9,
    0xB,
    0xB,
    0xA,
    0x6,
    0x6,
    0x6,
    0x6,
    0x3,
    0x3
};

static BOOL ov6_02246A30 (FieldSystem * fieldSystem)
{
    return 1;
}

static BOOL ov6_02246A34 (FieldSystem * fieldSystem)
{
    return 0;
}

static BOOL ov6_02246A38 (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return inline_0208BE68(v0, 7);
}

static BOOL ov6_02246A4C (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return inline_0208BE68(v0, 2);
}

static BOOL ov6_02246A60 (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return inline_0208BE68(v0, 9);
}

static BOOL ov6_02246A74 (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return inline_0208BE68(v0, 10);
}

static BOOL ov6_02246A88 (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return inline_0208BE68(v0, 11);
}

static BOOL ov6_02246A9C (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return inline_0208BE68(v0, 17);
}

static BOOL ov6_02246AB0 (FieldSystem * fieldSystem)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(fieldSystem->saveData);

    if (TrainerInfo_BadgeCount(v0) >= 5) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov6_02246AC8 (FieldSystem * fieldSystem)
{
    PokedexData * v0 = SaveData_Pokedex(fieldSystem->saveData);
    return sub_02026F0C(v0);
}

static BOOL ov6_02246AD8 (FieldSystem * fieldSystem)
{
    PokedexData * v0 = SaveData_Pokedex(fieldSystem->saveData);
    return sub_02027520(v0);
}

static BOOL ov6_02246AE8 (FieldSystem * fieldSystem)
{
    VarsFlags * v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return sub_0206A954(v0);
}

static int ov6_02246AF8 (FieldSystem * fieldSystem, u8 * param1)
{
    int v0, v1;
    BOOL v2[NELEMS(Unk_ov6_022494B0)];

    GF_ASSERT(NELEMS(Unk_ov6_022494B0) == 12);

    for (v0 = 0; v0 < NELEMS(Unk_ov6_022494B0); v0++) {
        v2[v0] = Unk_ov6_022494B0[v0](fieldSystem);
    }

    for (v0 = 0, v1 = 0; v0 < NELEMS(Unk_ov6_02249878); v0++) {
        if (v2[Unk_ov6_02249878[v0]]) {
            param1[v1] = v0;
            v1++;
        }
    }

    return v1;
}

int ov6_02246B40 (FieldSystem * fieldSystem)
{
    u8 v0[36];
    int v1;

    MI_CpuClear8(v0, 36);
    v1 = ov6_02246AF8(fieldSystem, v0);

    if (v1 == 0) {
        return 0;
    }

    return v0[MTRNG_Next() % v1];
}
