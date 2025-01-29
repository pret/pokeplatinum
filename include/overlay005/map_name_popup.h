#ifndef POKEPLATINUM_MAP_NAME_POPUP_H
#define POKEPLATINUM_MAP_NAME_POPUP_H

#include "field/field_system_decl.h"

#include "bg_window.h"

typedef struct MapNamePopUp MapNamePopUp;

MapNamePopUp *MapNamePopUp_Create(BgConfig *bgConfig);
void MapNamePopUp_Destroy(MapNamePopUp *mapPopUp);
void MapNamePopUp_Show(MapNamePopUp *mapPopUp, s32 mapLabelTextID, s32 mapLabelWindowID);
void MapNamePopUp_Hide(MapNamePopUp *mapPopUp);
void FieldSystem_RequestLocationName(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_MAP_NAME_POPUP_H
