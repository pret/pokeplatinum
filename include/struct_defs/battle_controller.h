#ifndef POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
#define POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H

#include "constants/pokemon.h"

enum PartyGaugeBallStatus {
    BALL_STATUS_NO_MON = 0,
    BALL_STATUS_MON_ALIVE,
    BALL_STATUS_MON_FAINTED,
    BALL_STATUS_HAS_STATUS_CONDITION,
};

typedef struct PartyGaugeData {
    u8 command;
    u8 padding_01;

    u8 status[MAX_PARTY_SIZE];
} PartyGaugeData;

typedef struct HealthbarData {
    u8 command;
    u8 level;
    s16 curHP;
    u16 maxHP;
    u8 selectedPartySlot;
    u8 status : 5;
    u8 gender : 2;
    u8 speciesCaught : 1;
    u32 expFromLastLevel;
    u32 expToNextLevel;
    int numSafariBalls;
    u8 delay;
} HealthbarData;

// The following are message structs used by the battle controller to send smaller packets of information to the rest of the battle files

typedef struct {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    int cryModulation;
    //These arrays are set but never used
    u16 moves[4];
    u16 curPP[4];
    u16 maxPP[4];
    u16 nickname[11];
    u8 padding_3A[2];
} MonEncounterMessage;

typedef struct {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    int cryModulation;
    int selectedPartySlot;
    int capturedBall;
    int unk_14;
    u16 moves[4];
    u16 curPP[4];
    u16 maxPP[4];
    u16 nickname[10 + 1];
    u8 padding_46[2];
    int unk_48;
    int notSubstitute;
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
} MonShowMessage;

typedef struct {
    u8 command;
    u8 yOffset;
    u16 capturedBall;
    int notSubstitute;
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
} MonReturnMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u16 trainerType;
} TrainerEncounterMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u16 selectedPartySlot;
} TrainerThrowBallMessage;

#endif // POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
