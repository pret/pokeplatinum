#ifndef POKEPLATINUM_OV6_TV_EPISODE_H
#define POKEPLATINUM_OV6_TV_EPISODE_H

#include "struct_defs/tv.h"

#include "field/field_system_decl.h"

void TVEpisode_IncrementTimesPlayed(TVEpisode *episode);
int TVEpisode_GetGender(const TVEpisode *episode);
int TVEpisode_GetLanguage(const TVEpisode *episode);
const u16 *TVEpisode_GetTrainerName(const TVEpisode *episode);
void *TVEpisode_GetSegment(TVEpisode *episode);
int TVEpisode_GetSegmentID(const TVEpisode *episode);
TVEpisode *TVEpisode_New(FieldSystem *fieldSystem, int programType, int segmentID);
void TVEpisode_Free(TVEpisode *episode);

#endif // POKEPLATINUM_OV6_TV_EPISODE_H
