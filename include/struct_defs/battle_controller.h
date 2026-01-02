#ifndef POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
#define POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H

#include "constants/pokemon.h"
#include "constants/moves.h"

#include "battle/battle_message.h"
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

typedef struct {
    u8 command;
    u8 battler;
    u8 listMode;
    u8 doubles;
    u8 selectedPartySlot[4];
    u8 partyOrder[4][6];
    int canSwitch;
    u8 battlersSwitchingMask;
    u8 padding_25[3];
} PartyMenuMessage;

typedef struct {
    u8 command;
    u8 yesnoType;
    u16 promptMsg;
    int move;
    int nickname;
} YesNoMenuMessage;

typedef struct {
    u8 command;
    u8 partySlot;
    u16 move;
} AttackMsgMessage;

typedef struct {
    u8 command;
    u8 level;
    s16 curHP;
    u16 maxHP;
    u8 padding_06;
    u8 gender;
    int hpCalcTemp;
    u32 exp; //set but unused
    u32 expToNextLevel; //set but unused
} HPGaugeUpdateMessage;

typedef struct {
    u8 command;
    u8 padding_01[3];
    u32 curExp;
    u32 gainedExp;
    u32 expToNextLevel;
} ExpGaugeUpdateMessage;

typedef struct {
    u8 command;
    u8 gender;
    u16 species;
    u32 personality;
    u8 form;
    u8 notSubstitute;
    u8 notTransformed;
    u8 unk_0B;
    u16 monSpecies[4];
    u8 monGenders[4];
    u8 monShiny[4];
    u8 monFormNums[4];
    u32 monPersonalities[4];
} FaintingSequenceMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u16 sdatID;
} PlaySoundMessage;

typedef struct {
    u8 command;
    u8 toggle;
    u8 notSubstitute;
    u8 padding_03;
    u16 species[4];
    u8 gender[4];
    u8 isShiny[4];
    u8 formNum[4];
    u32 personality[4];
} ToggleVanishMessage;

typedef struct {
    u8 command;
    u8 status;
    u16 padding_02;
} SetStatusIconMessage;

typedef struct {
    u8 command;
    u8 msg;
    u16 padding_02;
} TrainerMsgMessage;

typedef struct {
    u8 command;
    u8 partySlot;
    u16 hpPercent;
} RecallMsgMessage;

typedef struct {
    u8 command;
    u8 partySlot;
    u16 hpPercent; //out of 1000
} SendOutMsgMessage;

typedef struct {
    u8 command;
    u8 padding_01[3];
    u8 partySlot[4];
} LeadMonMsgMessage;

typedef struct {
    u8 command;
    u8 padding_01[3];
    BattleMessage msg;
} AlertMsgMessage;

typedef struct {
    u8 command;
    u8 level;
    s16 curHP;
    u16 maxHP;
    u8 partySlot;
    u8 status : 5;
    u8 gender : 2;
    u8 caughtSpecies : 1;
    u32 curExp;
    u32 maxExp;
    int numSafariBalls;
} RefreshHPGaugeMessage;

typedef struct {
    u8 command;
    u8 partySlot : 4;
    u8 mimickedMoveSlot : 4;
    s16 curHP;
    u32 status;
    u32 knockedOffItemsMask;
    u16 heldItem;
    u16 moves[4];
    u8 ppCur[4];
    u8 padding_16[2];
    u32 statusVolatile;
    u16 formNum;
    u8 padding_1E[2];
    int ability;
    u16 updateStats;
    u16 updateForm;
} UpdatePartyMonMessage;

typedef struct {
    u8 command;
    u8 ability;
    u16 move;
} RefreshPartyStatusMessage;

typedef struct {
    u8 command;
    u8 slot;
    u16 move;
} ForgetMoveMessage;

typedef struct {
    u8 command;
    u8 unk_01;
    u8 wait;
    u8 padding_03;
} MosaicSetMessage;

typedef struct {
    u8 command;
    u8 formNum;
    u16 species;
    u8 gender;
    u8 isShiny;
    u8 padding_06[2];
    u32 personality;
} MonChangeFormMessage;

typedef struct {
    u8 command;
    u8 battlerType;
    u16 record;
} RecordIncrementMessage;

#endif // POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
