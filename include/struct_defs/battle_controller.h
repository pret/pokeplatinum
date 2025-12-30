#ifndef POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
#define POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H

#include "constants/pokemon.h"
#include "constants/moves.h"

#include "battle/struct_ov16_0225C29C_sub1.h"

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
    int command;
    u32 unk_04;
} UISetupMessage;

typedef struct {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    int cryModulation;
    //These arrays are set but never used
    u16 moves[LEARNED_MOVES_MAX];
    u16 curPP[LEARNED_MOVES_MAX];
    u16 maxPP[LEARNED_MOVES_MAX];
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
    int partnerPartySlot;
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
    u8 yOffset;
    u16 ball;
} CaptureOpenBallMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u16 trainerType;
} TrainerEncounterMessage;

typedef struct {
    u8 command;
    u8 ballTypeIn;
    u16 selectedPartySlot;
} TrainerThrowBallMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u16 trainerType;
    int posIn;
} TrainerSlideInMessage;

typedef struct {
    u8 command;
    u8 partySlot;
    u8 expPercents[6];
    u8 ballStatus[2][6];
    u16 moves[LEARNED_MOVES_MAX];
    u8 curPP[LEARNED_MOVES_MAX];
    u8 maxPP[LEARNED_MOVES_MAX];
    s16 curHP;
    u16 maxHP;
    u8 ballStatusBattler;
    u8 unk_29;
    u16 padding_2A;
} CommandSetMessage;

typedef struct {
    u8 command;
    u8 partySlot;
    u16 invalidMoves;
    u16 moves[LEARNED_MOVES_MAX];
    u8 ppCur[LEARNED_MOVES_MAX];
    u8 ppMax[LEARNED_MOVES_MAX];
} MoveSelectMenuMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u16 range;
    UnkStruct_ov16_0225C29C_sub1 targetMon[4];
} TargetSelectMenuMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u8 semiInvulnerable;
    u8 substitute;
    u8 partySlots[4];
    u8 partyOrder[4][6];
    u8 embargoTurns[4];
} BagMenuMessage;

#endif // POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
