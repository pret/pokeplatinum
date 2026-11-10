#ifndef POKEPLATINUM_CONTEST_COMMON_H
#define POKEPLATINUM_CONTEST_COMMON_H

#include "constants/contests.h"
#include "constants/moves.h"

#include "struct_defs/contest_photo.h"
#include "struct_defs/photo_accessory.h"

#include "pokemon.h"
#include "string_gf.h"

typedef struct ContestantResult {
    s16 conditionScore;
    s16 dressUpScore;
    s16 danceScore;
    s16 actingScore;
    u8 contestPlacement;
    u8 padding_09[3];
} ContestantResult;

typedef struct ContestJudge {
    u16 judgeNameMessageID;
    u8 padding_02[2];
    u16 coolRole : 2;
    u16 beautyRole : 2;
    u16 cuteRole : 2;
    u16 smartRole : 2;
    u16 toughRole : 2;
    u16 rank : 2;
    u16 : 4;
    u16 padding_06;
} ContestJudge;

enum ContestantAvailability {
    CONTESTANT_AVAILABILITY_ALWAYS = 0,
    CONTESTANT_AVAILABILITY_PRE_POSTGAME,
    CONTESTANT_AVAILABILITY_POSTGAME,
    CONTESTANT_AVAILABILITY_POSTGAME_GUEST,
};

typedef struct Contestant {
    u32 unused_00;
    u32 unused_04;
    u16 objEventGFX;
    u16 trainerSprite;
    u16 moves[LEARNED_MOVES_MAX];
    u16 species;
    u16 nicknameID;
    u16 otNameID;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
    u16 rank : 3;
    u16 inCoolContests : 1;
    u16 inBeautyContests : 1;
    u16 inCuteContests : 1;
    u16 inSmartContests : 1;
    u16 inToughContests : 1;
    u16 inSingleCompetitions : 1;
    u16 inPracticeCompetitions : 1;
    u16 availability : 2;
    u16 gender : 2;
    u16 npcSkillLevel : 2;
    u8 dressUpIDs[DRESS_UP_THEME_MAX];
    u8 monContestFame;
    u8 padding_2F;
} Contestant;

typedef struct ContestantLinkInfo {
    u8 trainerGender;
    u8 npcSkillLevel;
    u8 monContestFame;
    u8 padding_03;
    u16 contestantObjEventGFX;
} ContestantLinkInfo;

typedef struct ContestData {
    Pokemon *contestMons[CONTEST_NUM_PARTICIPANTS];
    Contestant contestants[CONTEST_NUM_PARTICIPANTS];
    ContestJudge judges[CONTEST_NUM_JUDGES];
    String *trainerNames[CONTEST_NUM_PARTICIPANTS];
    ContestPhoto *photos[CONTEST_NUM_PARTICIPANTS];
    u8 trainerGenders[CONTEST_NUM_PARTICIPANTS];
    u8 npcSkillLevels[CONTEST_NUM_PARTICIPANTS];
    u8 monContestFame[CONTEST_NUM_PARTICIPANTS];
    u16 contestantObjEventGFX[CONTEST_NUM_PARTICIPANTS];
    u8 hostContestantID;
    u8 hostLinkVersion;
    u8 headJudgeID;
    u8 contestType;
    u8 contestRank;
    u8 competitionType;
    u8 dressUpTheme;
    u8 playerContestantID;
    u8 netID;
    u8 linkVersion;
    u8 npcCount;
    u8 connectionCount;
    ContestantResult results[CONTEST_NUM_PARTICIPANTS];
} ContestData;

#define CONTEST_EFFECT_ACTING_MESSAGE_NONE 0xFFFF

enum ContestEffectActingMessage { // TODO: name these properly after getting more context from overlay017.
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_1 = 0,
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_2,
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_3,
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_4,
    CONTEST_EFFECT_ACTING_MESSAGE_PREVIEW,
    CONTEST_EFFECT_NUM_ACTING_MESSAGES,
};

typedef struct ContestEffectMessage {
    u16 messageID;
    u8 format;
} ContestEffectMessage;

typedef struct ContestEffectData {
    u16 lineOneEffectMessageID;
    u16 lineTwoEffectMessageID;
    s8 appeal;
    ContestEffectMessage actingMessages[CONTEST_EFFECT_NUM_ACTING_MESSAGES];
} ContestEffectData;

typedef struct OpponentDressUp {
    PhotoAccessory accessories[CONTEST_PHOTO_ACCESSORY_COUNT];
    u8 numAccessories;
    s8 monPriority;
    s8 backdrop;
    u8 padding_53;
} OpponentDressUp;

#endif // POKEPLATINUM_CONTEST_COMMON_H
