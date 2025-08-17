#ifndef POKEPLATINUM_OV5_021EA714_H
#define POKEPLATINUM_OV5_021EA714_H

#include "applications/poketch/poketch_system.h"
#include "field/field_system_decl.h"

void FieldSystem_SendPoketchEvent(FieldSystem *fieldSystem, enum PoketchEventID eventID, u32 dummy);
void ov5_021EA728(FieldSystem *fieldSystem);
void ov5_021EA790(FieldSystem *fieldSystem);
u8 ov5_021EA7CC(FieldSystem *fieldSystem);
void ov5_021EA830(FieldSystem *fieldSystem);
void ov5_021EA848(FieldSystem *fieldSystem);
BOOL ov5_021EA854(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_OV5_021EA714_H
