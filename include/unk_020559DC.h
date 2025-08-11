#ifndef POKEPLATINUM_UNK_020559DC_H
#define POKEPLATINUM_UNK_020559DC_H

#include <nitro/rtc.h>

#include "field/field_system_decl.h"

#include "rtc.h"

void sub_020559DC(FieldSystem *fieldSystem);
enum TimeOfDay FieldSystem_GetTimeOfDay(const FieldSystem *fieldSystem);
int FieldSystem_GetMonth(const FieldSystem *fieldSystem);
int FieldSystem_GetDayOfMonth(const FieldSystem *fieldSystem);
int FieldSystem_GetWeek(const FieldSystem *fieldSystem);
int FieldSystem_GetHour(const FieldSystem *fieldSystem);
int FieldSystem_GetMinute(const FieldSystem *fieldSystem);
void FieldSystem_GetStartTimestamp(const FieldSystem *fieldSystem, RTCDate *param1, RTCTime *param2);
void FieldSystem_GetFirstCompletionTimestamp(const FieldSystem *fieldSystem, RTCDate *param1, RTCTime *param2);
void FieldSystem_RecordFirstCompletion(const FieldSystem *fieldSystem);
BOOL FieldSystem_HasPenalty(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_020559DC_H
