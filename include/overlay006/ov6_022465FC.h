#ifndef POKEPLATINUM_OV6_022465FC_H
#define POKEPLATINUM_OV6_022465FC_H

#include "field/field_system_decl.h"

#include "string_template.h"

void FieldSystem_SetTVProgramFinished(FieldSystem *fieldSystem);
int TVBroadcast_GetPendingBroadcastType(FieldSystem *fieldSystem);
int ov6_022468B0(FieldSystem *fieldSystem, BOOL param1, BOOL param2);
int ov6_02246920(FieldSystem *fieldSystem);
int TVBroadcast_GetProgramFramingMessage(FieldSystem *fieldSystem, int framingMessageType);
BOOL TVBroadcast_LoadSegmentMessage(FieldSystem *fieldSystem, StringTemplate *template, int segmentID, u16 *bankDestVar, u16 *messageDestVar);

#endif // POKEPLATINUM_OV6_022465FC_H
