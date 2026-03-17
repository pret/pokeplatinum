#ifndef POKEPLATINUM_CONTEST_PLAYER_MON_DTO_H
#define POKEPLATINUM_CONTEST_PLAYER_MON_DTO_H

#include "struct_defs/image_clips.h"

#include "game_options.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_gf.h"
#include "trainer_info.h"

typedef struct PlayerMonContestDTO {
    u8 contestType;
    u8 contestRank;
    u8 competitionType;
    u8 isGameCompleted;
    u8 isNatDexObtained;
    u8 monPartySlot;
    u8 padding_06[2];
    Pokemon *mon;
    const String *trainerName;
    const TrainerInfo *trainerInfo;
    ImageClips *imageClips;
    const Options *options;
    SaveData *saveData;
    void *chatotCry;
} PlayerMonContestDTO;

#endif // POKEPLATINUM_CONTEST_PLAYER_MON_DTO_H
