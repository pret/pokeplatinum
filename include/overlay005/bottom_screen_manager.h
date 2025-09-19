#ifndef POKEPLATINUM_OVERLAY005_BOTTOM_SCREEN_MANAGER_H
#define POKEPLATINUM_OVERLAY005_BOTTOM_SCREEN_MANAGER_H

#include "field/field_system_decl.h"

enum BottomScreenMode {
    BOTTOM_SCREEN_MODE_NONE = 0,
    BOTTOM_SCREEN_MODE_STANDARD_FIELD,
    BOTTOM_SCREEN_MODE_UNDERGROUND,
    BOTTOM_SCREEN_MODE_COLOSSEUM,
    BOTTOM_SCREEN_MODE_POKETCH_UNAVAILABLE,
    BOTTOM_SCREEN_MODE_TRANSITION // transitional state during map changes
};

void FieldSystem_InitBottomScreen(FieldSystem *fieldSystem);
BOOL FieldSystem_IsBottomScreenRunningDummy(FieldSystem *fieldSystem);
void FieldSystem_EndBottomScreen(FieldSystem *fieldSystem);
BOOL FieldSystem_IsBottomScreenDone(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_OVERLAY005_BOTTOM_SCREEN_MANAGER_H
