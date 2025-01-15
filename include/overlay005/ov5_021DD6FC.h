#ifndef POKEPLATINUM_OV5_021DD6FC_H
#define POKEPLATINUM_OV5_021DD6FC_H

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021DD9C8_decl.h"

#include "bg_window.h"

MapNamePopUp *MapNamePopUp_Create(BgConfig *param0);
void MapNamePopUp_DestroyTextWindow(MapNamePopUp *mapPopUp);
void MapNamePop_Show(MapNamePopUp *mapPopUp, const int param1, const int param2);
void MapNamePopUp_Hide(MapNamePopUp *mapPopUp);
void FieldSystem_RequestLocationName(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_OV5_021DD6FC_H
