#include "overlay006/tv_episode.h"

#include <nitro.h>

#include "constants/tv_broadcast.h"

#include "struct_decls/struct_0202440C_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "charcode_util.h"
#include "heap.h"
#include "save_player.h"
#include "trainer_info.h"
#include "unk_0202E2CC.h"

static void TVEpisode_Clear(TVEpisode *episode)
{
    MI_CpuClear8(episode, sizeof(TVEpisode));
}

static void TVEpisode_SetGender(TVEpisode *episode, int gender)
{
    episode->gender = gender;
}

static void TVEpisode_SetLanguage(TVEpisode *episode, int language)
{
    episode->language = language;
}

static void TVEpisode_SetGameVersion(TVEpisode *episode, int gameVersion)
{
    episode->gameVersion = gameVersion;
}

static void TVEpisode_SetTrainerName(TVEpisode *episode, const u16 *name)
{
    CharCode_CopyNumChars(episode->name, name, TRAINER_NAME_LEN + 1);
}

static void TVEpisode_SetDetails(TVEpisode *episode, TVSegmentInstance *segmentInstance)
{
    episode->segmentID = sub_0202E55C(segmentInstance);
    episode->details = segmentInstance;
}

void TVEpisode_IncrementTimesPlayed(TVEpisode *episode)
{
    if (episode->details != NULL) {
        sub_0202E560(episode->details);
    }
}

int TVEpisode_GetGender(const TVEpisode *episode)
{
    return episode->gender;
}

int TVEpisode_GetLanguage(const TVEpisode *episode)
{
    return episode->language;
}

const u16 *TVEpisode_GetTrainerName(const TVEpisode *episode)
{
    return episode->name;
}

void *TVEpisode_GetSegment(TVEpisode *episode)
{
    return sub_0202E574(episode->details);
}

int TVEpisode_GetSegmentID(const TVEpisode *episode)
{
    return episode->segmentID;
}

static TVEpisode *CreateTVEpisodeFromWifiEpisode(FieldSystem *fieldSystem, TVWifiEpisode *wifiEpisode)
{
    TVEpisode *episode = Heap_Alloc(HEAP_ID_FIELD1, sizeof(TVEpisode));

    TVEpisode_Clear(episode);
    TVEpisode_SetTrainerName(episode, sub_0202E4C8(wifiEpisode));
    TVEpisode_SetLanguage(episode, sub_0202E4CC(wifiEpisode));
    TVEpisode_SetGameVersion(episode, sub_0202E4D0(wifiEpisode));
    TVEpisode_SetDetails(episode, sub_0202E4D4(wifiEpisode));

    return episode;
}

static TVEpisode *CreateTVEpisodeFromSegmentInstance(FieldSystem *fieldSystem, TVSegmentInstance *instance)
{
    TrainerInfo *playerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    TVEpisode *episode = Heap_Alloc(HEAP_ID_FIELD1, sizeof(TVEpisode));

    TVEpisode_Clear(episode);
    TVEpisode_SetTrainerName(episode, TrainerInfo_Name(playerInfo));
    TVEpisode_SetGender(episode, TrainerInfo_Gender(playerInfo));
    TVEpisode_SetLanguage(episode, GAME_LANGUAGE);
    TVEpisode_SetGameVersion(episode, GAME_VERSION);
    TVEpisode_SetDetails(episode, sub_0202E4D8(instance));

    return episode;
}

static TVEpisode *CreateEmptyTVEpisode(FieldSystem *fieldSystem, int segmentID)
{
    TrainerInfo *playerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    TVEpisode *episode = Heap_Alloc(HEAP_ID_FIELD1, sizeof(TVEpisode));

    TVEpisode_Clear(episode);
    episode->segmentID = segmentID;
    TVEpisode_SetTrainerName(episode, TrainerInfo_Name(playerInfo));
    TVEpisode_SetGender(episode, TrainerInfo_Gender(playerInfo));
    TVEpisode_SetLanguage(episode, GAME_LANGUAGE);
    TVEpisode_SetGameVersion(episode, GAME_VERSION);

    episode->details = NULL;
    return episode;
}

TVEpisode *TVEpisode_New(FieldSystem *fieldSystem, int programType, int segmentID)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    if (programType == TV_PROGRAM_TYPE_SINNOH_NOW || programType == TV_PROGRAM_TYPE_VARIETY_HOUR) {
        return CreateEmptyTVEpisode(fieldSystem, segmentID);
    }

    if (sub_0202E7C0(segmentID) == 0) {
        TVWifiEpisode *wifiEpisode = sub_0202E794(broadcast, programType, segmentID);
        return CreateTVEpisodeFromWifiEpisode(fieldSystem, wifiEpisode);
    } else {
        TVSegmentInstance *instance = sub_0202E768(broadcast, programType, segmentID);
        return CreateTVEpisodeFromSegmentInstance(fieldSystem, instance);
    }
}

void TVEpisode_Free(TVEpisode *episode)
{
    Heap_Free(episode);
}
