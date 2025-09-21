#include "overlay005/ov5_021D5BC0.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay056/ov56_022561C0.h"

#include "field_comm_manager.h"
#include "game_overlay.h"

FS_EXTERN_OVERLAY(overlay56);

typedef struct BottomScreenHandlers {
    // clang-format off
    void (* initFn)(FieldSystem *);
    BOOL (* isRunningDummyFn)(FieldSystem *);
    void (* endFn)(FieldSystem *);
    BOOL (* isDoneFn)(FieldSystem *);
    // clang-format on
} BottomScreenHandlers;

static void ov5_021D5C4C(FieldSystem *fieldSystem);
static void ov5_021D5C54(FieldSystem *fieldSystem);
static void ov5_021D5C5C(FieldSystem *fieldSystem);
static void ov5_021D5C78(FieldSystem *fieldSystem);
static void ov5_021D5C80(FieldSystem *fieldSystem);
static void ov5_021D5C88(FieldSystem *fieldSystem);
static BOOL ov5_021D5CA0(FieldSystem *fieldSystem);
static BOOL ov5_021D5CAC(FieldSystem *fieldSystem);
static BOOL ov5_021D5CA8(FieldSystem *fieldSystem);

static const BottomScreenHandlers sBottomScreenHandlers[] = {
    { ov5_021D5C4C, NULL, ov5_021D5C78, ov5_021D5CA0 },
    { ov5_021D5C54, NULL, ov5_021D5C80, ov5_021D5CAC },
    { ov5_021D5C5C, NULL, ov5_021D5C88, ov5_021D5CA8 },
    { ov5_021EA830, NULL, ov5_021EA848, ov5_021EA854 }
};

static int FieldSystem_GetBottomScreenIndex(FieldSystem *fieldSystem)
{
    int fieldBottomScreen = fieldSystem->bottomScreen;

    GF_ASSERT(fieldBottomScreen != 0);
    GF_ASSERT(fieldBottomScreen < 5);

    return fieldBottomScreen - 1;
}

void FieldSystem_InitBottomScreen(FieldSystem *fieldSystem)
{
    sBottomScreenHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].initFn(fieldSystem);
}

BOOL FieldSystem_IsBottomScreenRunningDummy(FieldSystem *fieldSystem)
{
    // clang-format off
    BOOL (* isRunningDummyFn)(FieldSystem *);
    // clang-format on

    isRunningDummyFn = sBottomScreenHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].isRunningDummyFn;

    if (isRunningDummyFn == NULL) {
        return 1;
    }

    return isRunningDummyFn(fieldSystem);
}

void FieldSystem_EndBottomScreen(FieldSystem *fieldSystem)
{
    sBottomScreenHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].endFn(fieldSystem);
}

BOOL FieldSystem_IsBottomScreenDone(FieldSystem *fieldSystem)
{
    return sBottomScreenHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].isDoneFn(fieldSystem);
}

static void ov5_021D5C4C(FieldSystem *fieldSystem)
{
    ov5_021EA728(fieldSystem);
}

static void ov5_021D5C54(FieldSystem *fieldSystem)
{
    sub_0205A0BC();
}

static void ov5_021D5C5C(FieldSystem *fieldSystem)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay56), 2);
    fieldSystem->unk_84 = ov56_02256410(fieldSystem);
}

static void ov5_021D5C78(FieldSystem *fieldSystem)
{
    ov5_021EA790(fieldSystem);
}

static void ov5_021D5C80(FieldSystem *fieldSystem)
{
    sub_0205A0A0();
}

static void ov5_021D5C88(FieldSystem *fieldSystem)
{
    ov56_02256468(fieldSystem->unk_84);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay56));
}

static BOOL ov5_021D5CA0(FieldSystem *fieldSystem)
{
    return ov5_021EA7CC(fieldSystem);
}

static BOOL ov5_021D5CA8(FieldSystem *fieldSystem)
{
    return 1;
}

static BOOL ov5_021D5CAC(FieldSystem *fieldSystem)
{
    return 1;
}
