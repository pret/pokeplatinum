#ifndef POKEPLATINUM_MAP_NAME_POPUP_H
#define POKEPLATINUM_MAP_NAME_POPUP_H

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "message.h"
#include "string_gf.h"
#include "sys_task_manager.h"

typedef struct MapNamePopUp {
    BOOL isInited;
    u8 state;
    SysTask *task;
    s32 yOffset;
    u16 timer;
    BOOL shouldSlideIn;
    u32 entryID;
    BgConfig *bgConfig;
    Window window;
    u8 xOffset;
    u8 windowID;
    NNSG2dCharacterData *charData;
    void *tiles;
    MessageLoader *msgLoader;
    String *string;
} MapNamePopUp;

MapNamePopUp *MapNamePopUp_Create(BgConfig *bgConfig);
void MapNamePopUp_Destroy(MapNamePopUp *mapPopUp);
void MapNamePopUp_Show(MapNamePopUp *mapPopUp, s32 mapLabelTextID, s32 mapLabelWindowID);
void MapNamePopUp_Hide(MapNamePopUp *mapPopUp);
void FieldSystem_RequestLocationName(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_MAP_NAME_POPUP_H
