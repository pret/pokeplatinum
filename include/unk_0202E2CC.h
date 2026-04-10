#ifndef POKEPLATINUM_UNK_0202E2CC_H
#define POKEPLATINUM_UNK_0202E2CC_H

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/struct_0202440C.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"
#include "struct_defs/tv_segment_contest_hall_showcased_pokemon.h"

int TVBroadcast_SaveSize(void);
void TVBroadcast_Init(TVBroadcast *broadcast);
void sub_0202E2EC(TVBroadcast *broadcast);
void TVBroadcast_UpdateProgramTimeSlot(TVBroadcast *broadcast, int deltaMinutes, int currentMinute);
void TVBroadcast_ClearWatchProgress(TVBroadcast *broadcast);
void TVBroadcast_SetProgramFinished(TVBroadcast *broadcast, BOOL finished);
BOOL TVBroadcast_IsProgramFinished(const TVBroadcast *broadcast);
void TVBroadcast_SetPlayedSegment(TVBroadcast *broadcast, int segmentID);
BOOL TVBroadcast_IsPlayedSegment(const TVBroadcast *broadcast, int segmentID);
int TVBroadcast_CountPlayedSegments(const TVBroadcast *broadcast);
BOOL TVBroadcast_SaveSegmentData(TVBroadcast *broadcast, int param1, int param2, const u8 *param3);
const u16 *sub_0202E4C8(const TVWifiEpisode *param0);
int sub_0202E4CC(const TVWifiEpisode *param0);
int sub_0202E4D0(const TVWifiEpisode *param0);
TVSegmentInstance *sub_0202E4D4(TVWifiEpisode *param0);
TVSegmentInstance *sub_0202E4D8(TVSegmentInstance *param0);
int sub_0202E55C(const TVSegmentInstance *param0);
void sub_0202E560(TVSegmentInstance *param0);
void *sub_0202E574(TVSegmentInstance *param0);
int sub_0202E614(const TVBroadcast *broadcast, int param1, int param2, BOOL param3, BOOL param4, u8 *param5);
BOOL sub_0202E6B0(TVBroadcast *broadcast, int param1, int param2);
TVSegmentInstance *sub_0202E768(TVBroadcast *broadcast, int param1, int param2);
TVWifiEpisode *sub_0202E794(TVBroadcast *broadcast, int param1, int param2);
BOOL sub_0202E7C0(int param0);
int sub_0202E7D0(int param0);
TVSegment_ContestHall_ShowcasedPokemon *TVBroadcast_GetShowcasedPokemon(TVBroadcast *broadcast);
UnkStruct_0202E7E4 *sub_0202E7E4(TVBroadcast *broadcast);
UnkStruct_0202E7F0 *sub_0202E7F0(TVBroadcast *broadcast);
UnkStruct_0202E7FC *sub_0202E7FC(TVBroadcast *broadcast);
UnkStruct_0202E808 *TVBroadcast_GetSafariGameData(TVBroadcast *broadcast);
UnkStruct_0202E810 *sub_0202E810(TVBroadcast *broadcast);
UnkStruct_0202E81C *sub_0202E81C(TVBroadcast *broadcast);
UnkStruct_0202E828 *sub_0202E828(TVBroadcast *broadcast);
UnkStruct_0202E834 *sub_0202E834(TVBroadcast *broadcast);

#endif // POKEPLATINUM_UNK_0202E2CC_H
