#ifndef POKEPLATINUM_OV5_021D0D80_H
#define POKEPLATINUM_OV5_021D0D80_H

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "overlay_manager.h"

extern const ApplicationManagerTemplate gFieldMapTemplate;

void FieldMap_ChangeZoneDistortionWorld(FieldSystem *fieldSystem, u32 mapId);
void ov5_021D1434(BgConfig *param0);
void ov5_021D143C(BgConfig *param0);
void ov5_021D16F4(FieldSystem *fieldSystem, BOOL param1);
void ov5_021D1718(FieldSystem *fieldSystem, BOOL param1);
void FieldMap_FadeScreen(const u8 fadeInOrOut);

#endif // POKEPLATINUM_OV5_021D0D80_H
