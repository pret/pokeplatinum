#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0203CDB0.h"

#include "game_overlay.h"
#include "unk_0205964C.h"
#include "overlay005/ov5_021D5BC0.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay056/ov56_022561C0.h"

FS_EXTERN_OVERLAY(overlay56);

typedef struct {
    void (* unk_00)(UnkStruct_0203CDB0 *);
    BOOL (* unk_04)(UnkStruct_0203CDB0 *);
    void (* unk_08)(UnkStruct_0203CDB0 *);
    BOOL (* unk_0C)(UnkStruct_0203CDB0 *);
} UnkStruct_ov5_021F8C7C;


static void ov5_021D5C4C(UnkStruct_0203CDB0 * param0);
static void ov5_021D5C54(UnkStruct_0203CDB0 * param0);
static void ov5_021D5C5C(UnkStruct_0203CDB0 * param0);
static void ov5_021D5C78(UnkStruct_0203CDB0 * param0);
static void ov5_021D5C80(UnkStruct_0203CDB0 * param0);
static void ov5_021D5C88(UnkStruct_0203CDB0 * param0);
static BOOL ov5_021D5CA0(UnkStruct_0203CDB0 * param0);
static BOOL ov5_021D5CAC(UnkStruct_0203CDB0 * param0);
static BOOL ov5_021D5CA8(UnkStruct_0203CDB0 * param0);

static const UnkStruct_ov5_021F8C7C Unk_ov5_021F8C7C[] = {
    {ov5_021D5C4C, NULL, ov5_021D5C78, ov5_021D5CA0},
    {ov5_021D5C54, NULL, ov5_021D5C80, ov5_021D5CAC},
    {ov5_021D5C5C, NULL, ov5_021D5C88, ov5_021D5CA8},
    {ov5_021EA830, NULL, ov5_021EA848, ov5_021EA854}
};

static int ov5_021D5BC0 (UnkStruct_0203CDB0 * param0)
{
    int v0 = param0->unk_18;

    GF_ASSERT(v0 != 0);
    GF_ASSERT(v0 < 5);

    return v0 - 1;
}

void ov5_021D5BD8 (UnkStruct_0203CDB0 * param0)
{
    Unk_ov5_021F8C7C[ov5_021D5BC0(param0)].unk_00(param0);
}

BOOL ov5_021D5BF4 (UnkStruct_0203CDB0 * param0)
{
    BOOL (* v0)(UnkStruct_0203CDB0 *);
    v0 = Unk_ov5_021F8C7C[ov5_021D5BC0(param0)].unk_04;

    if (v0 == NULL) {
        return 1;
    }

    return v0(param0);
}

void ov5_021D5C14 (UnkStruct_0203CDB0 * param0)
{
    Unk_ov5_021F8C7C[ov5_021D5BC0(param0)].unk_08(param0);
}

BOOL ov5_021D5C30 (UnkStruct_0203CDB0 * param0)
{
    return Unk_ov5_021F8C7C[ov5_021D5BC0(param0)].unk_0C(param0);
}

static void ov5_021D5C4C (UnkStruct_0203CDB0 * param0)
{
    ov5_021EA728(param0);
}

static void ov5_021D5C54 (UnkStruct_0203CDB0 * param0)
{
    sub_0205A0BC();
}

static void ov5_021D5C5C (UnkStruct_0203CDB0 * param0)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay56), 2);
    param0->unk_84 = ov56_02256410(param0);
}

static void ov5_021D5C78 (UnkStruct_0203CDB0 * param0)
{
    ov5_021EA790(param0);
}

static void ov5_021D5C80 (UnkStruct_0203CDB0 * param0)
{
    sub_0205A0A0();
}

static void ov5_021D5C88 (UnkStruct_0203CDB0 * param0)
{
    ov56_02256468(param0->unk_84);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay56));
}

static BOOL ov5_021D5CA0 (UnkStruct_0203CDB0 * param0)
{
    return ov5_021EA7CC(param0);
}

static BOOL ov5_021D5CA8 (UnkStruct_0203CDB0 * param0)
{
    return 1;
}

static BOOL ov5_021D5CAC (UnkStruct_0203CDB0 * param0)
{
    return 1;
}
