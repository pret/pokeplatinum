#ifndef POKEPLATINUM_CONTEST_H
#define POKEPLATINUM_CONTEST_H

#include "struct_defs/contest_camera_flash_task.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/struct_02095C48_sub1.h"
#include "struct_defs/struct_02095C60.h"
#include "struct_defs/visual_competition_app_args.h"

#include "game_options.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef struct Contest {
    UnkStruct_02095C48_sub1 unk_00;
    Party *party;
    void *chatotCry[CONTEST_NUM_PARTICIPANTS];
    void *unk_150;
    u8 unk_154;
    u8 isLinkContest;
    u8 unk_156[4];
    u8 linkState;
    u8 unk_15B;
    int unk_15C;
    int padding_160;
    SysTask *commTask;
    u8 unk_168[4][256];
    u8 unk_568;
    u8 unk_569[1024];
    u8 unk_969[4][1024];
    u8 padding_1969[3];
    const Options *options;
    SaveData *saveData;
    Pokemon *playerMon;
    const TrainerInfo *trainerInfo;
    u8 monPartySlot;
    u8 isGameCompleted;
    u8 isNatDexObtained;
    u8 padding_197F;
    ImageClips *imageClips;
    UnkStruct_02095C60 unk_1984;
    VisualCompetitionAppArgs *visualCompetitionAppArgs;
    ContestCameraFlashTask *cameraFlashTask;
    u32 rngSeed;
} Contest;

#endif // POKEPLATINUM_CONTEST_H
