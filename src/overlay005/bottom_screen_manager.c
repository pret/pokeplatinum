#include "overlay005/bottom_screen_manager.h"

#include <nitro.h>

#include "field/field_system.h"
#include "overlay005/poketch_system.h"
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

static void BottomScreen_InitStandardField(FieldSystem *fieldSystem);
static void BottomScreen_InitUnderground(FieldSystem *fieldSystem);
static void BottomScreen_InitColosseum(FieldSystem *fieldSystem);
static void BottomScreen_EndStandardField(FieldSystem *fieldSystem);
static void BottomScreen_EndUnderground(FieldSystem *fieldSystem);
static void BottomScreen_EndColosseum(FieldSystem *fieldSystem);
static BOOL BottomScreen_IsStandardFieldDone(FieldSystem *fieldSystem);
static BOOL BottomScreen_IsUndergroundDone(FieldSystem *fieldSystem);
static BOOL BottomScreen_IsColosseumDone(FieldSystem *fieldSystem);

static const BottomScreenHandlers sBottomScreenModeHandlers[] = {
    [0] = {
        .initFn = BottomScreen_InitStandardField,
        .isRunningDummyFn = NULL,
        .endFn = BottomScreen_EndStandardField,
        .isDoneFn = BottomScreen_IsStandardFieldDone },
    [1] = { .initFn = BottomScreen_InitUnderground, .isRunningDummyFn = NULL, .endFn = BottomScreen_EndUnderground, .isDoneFn = BottomScreen_IsUndergroundDone },
    [2] = { .initFn = BottomScreen_InitColosseum, .isRunningDummyFn = NULL, .endFn = BottomScreen_EndColosseum, .isDoneFn = BottomScreen_IsColosseumDone },
    [3] = { .initFn = BottomScreen_InitPoketchUnavailable, .isRunningDummyFn = NULL, .endFn = BottomScreen_EndPoketchUnavailable, .isDoneFn = BottomScreen_IsPoketchUnavailableDone }
};

static int FieldSystem_GetBottomScreenIndex(FieldSystem *fieldSystem)
{
    enum BottomScreenMode bottomScreenMode = fieldSystem->bottomScreenMode;

    GF_ASSERT(bottomScreenMode != BOTTOM_SCREEN_MODE_NONE);
    GF_ASSERT(bottomScreenMode < BOTTOM_SCREEN_MODE_TRANSITION);

    return bottomScreenMode - 1;
}

void FieldSystem_InitBottomScreen(FieldSystem *fieldSystem)
{
    sBottomScreenModeHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].initFn(fieldSystem);
}

BOOL FieldSystem_IsBottomScreenRunningDummy(FieldSystem *fieldSystem)
{
    // clang-format off
    BOOL (* isRunningDummyFn)(FieldSystem *);
    // clang-format on

    isRunningDummyFn = sBottomScreenModeHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].isRunningDummyFn;

    if (isRunningDummyFn == NULL) {
        return TRUE;
    }

    return isRunningDummyFn(fieldSystem);
}

void FieldSystem_EndBottomScreen(FieldSystem *fieldSystem)
{
    sBottomScreenModeHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].endFn(fieldSystem);
}

BOOL FieldSystem_IsBottomScreenDone(FieldSystem *fieldSystem)
{
    return sBottomScreenModeHandlers[FieldSystem_GetBottomScreenIndex(fieldSystem)].isDoneFn(fieldSystem);
}

static void BottomScreen_InitStandardField(FieldSystem *fieldSystem)
{
    PoketchSystem_InitBottomScreen(fieldSystem);
}

static void BottomScreen_InitUnderground(FieldSystem *fieldSystem)
{
    UndergroundComm_Init();
}

static void BottomScreen_InitColosseum(FieldSystem *fieldSystem)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay56), OVERLAY_LOAD_ASYNC);
    fieldSystem->colosseumData = ColosseumSystem_Init(fieldSystem);
}

static void BottomScreen_EndStandardField(FieldSystem *fieldSystem)
{
    PoketchSystem_EndBottomScreen(fieldSystem);
}

static void BottomScreen_EndUnderground(FieldSystem *fieldSystem)
{
    UndergroundComm_End();
}

static void BottomScreen_EndColosseum(FieldSystem *fieldSystem)
{
    ColosseumSystem_End(fieldSystem->colosseumData);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay56));
}

static BOOL BottomScreen_IsStandardFieldDone(FieldSystem *fieldSystem)
{
    return PoketchSystem_IsBottomScreenDone(fieldSystem);
}

static BOOL BottomScreen_IsColosseumDone(FieldSystem *fieldSystem)
{
    return TRUE;
}

static BOOL BottomScreen_IsUndergroundDone(FieldSystem *fieldSystem)
{
    return TRUE;
}
