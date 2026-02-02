#ifndef POKEPLATINUM_STRUCT_BATTLE_MESSAGE_DEFS_H
#define POKEPLATINUM_STRUCT_BATTLE_MESSAGE_DEFS_H

#include "constants/battle.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/sound.h"

#include "battle/battle_message.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0225C29C_sub1.h"

#include "pokemon.h"

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

typedef struct BattleMessageInfo {
    u8 recipient;
    u8 battler;
    u16 size;
} BattleMessageInfo;

// The following are message structs used by the battle controller to send smaller packets of information to the rest of the battle files

typedef struct UISetupMessage {
    int command;
    u32 unk_04;
} UISetupMessage;

typedef struct MonEncounterMessage {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    enum PokemonCryMod cryModulation;
    // These arrays are set but never used
    u16 moves[LEARNED_MOVES_MAX];
    u16 curPP[LEARNED_MOVES_MAX];
    u16 maxPP[LEARNED_MOVES_MAX];
    u16 nickname[MON_NAME_LEN + 1];
    u8 padding_3A[2];
} MonEncounterMessage;

typedef struct MonShowMessage {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    enum PokemonCryMod cryModulation;
    int selectedPartySlot;
    int capturedBall;
    int unk_14;
    u16 moves[LEARNED_MOVES_MAX];
    u16 curPP[LEARNED_MOVES_MAX];
    u16 maxPP[LEARNED_MOVES_MAX];
    u16 nickname[MON_NAME_LEN + 1];
    u8 padding_46[2];
    int partnerPartySlot;
    int notSubstitute;
    u16 battleMonSpecies[MAX_BATTLERS];
    u8 battleMonGenders[MAX_BATTLERS];
    u8 battleMonIsShiny[MAX_BATTLERS];
    u8 battleMonFormNums[MAX_BATTLERS];
    u32 battleMonPersonalities[MAX_BATTLERS];
} MonShowMessage;

typedef struct MonReturnMessage {
    u8 command;
    u8 yOffset;
    u16 capturedBall;
    int notSubstitute;
    u16 battleMonSpecies[MAX_BATTLERS];
    u8 battleMonGenders[MAX_BATTLERS];
    u8 battleMonIsShiny[MAX_BATTLERS];
    u8 battleMonFormNums[MAX_BATTLERS];
    u32 battleMonPersonalities[MAX_BATTLERS];
} MonReturnMessage;

typedef struct CaptureOpenBallMessage {
    u8 command;
    u8 yOffset;
    u16 ball;
} CaptureOpenBallMessage;

typedef struct TrainerEncounterMessage {
    u8 command;
    u8 unk_01;
    u16 trainerType;
} TrainerEncounterMessage;

typedef struct TrainerThrowBallMessage {
    u8 command;
    u8 ballTypeIn;
    u16 selectedPartySlot;
} TrainerThrowBallMessage;

typedef struct TrainerSlideInMessage {
    u8 command;
    u8 unk_01;
    u16 trainerType;
    int posIn;
} TrainerSlideInMessage;

typedef struct CommandSetMessage {
    u8 command;
    u8 partySlot;
    u8 expPercents[MAX_PARTY_SIZE];
    u8 ballStatus[PARTY_GAUGE_COUNT][MAX_PARTY_SIZE];
    u16 moves[LEARNED_MOVES_MAX];
    u8 curPP[LEARNED_MOVES_MAX];
    u8 maxPP[LEARNED_MOVES_MAX];
    s16 curHP;
    u16 maxHP;
    u8 ballStatusBattler;
    u8 unk_29;
    u16 padding_2A;
} CommandSetMessage;

typedef struct MoveSelectMenuMessage {
    u8 command;
    u8 partySlot;
    u16 invalidMoves;
    u16 moves[LEARNED_MOVES_MAX];
    u8 ppCur[LEARNED_MOVES_MAX];
    u8 ppMax[LEARNED_MOVES_MAX];
} MoveSelectMenuMessage;

typedef struct TargetSelectMenuMessage {
    u8 command;
    u8 unk_01;
    u16 range;
    UnkStruct_ov16_0225C29C_sub1 targetMon[MAX_BATTLERS];
} TargetSelectMenuMessage;

typedef struct BagMenuMessage {
    u8 command;
    u8 unk_01;
    u8 semiInvulnerable;
    u8 substitute;
    u8 partySlots[MAX_BATTLERS];
    u8 partyOrder[MAX_BATTLERS][MAX_PARTY_SIZE];
    u8 embargoTurns[MAX_BATTLERS];
} BagMenuMessage;

typedef struct PartyMenuMessage {
    u8 command;
    u8 battler;
    u8 listMode;
    u8 doubles;
    u8 selectedPartySlot[MAX_BATTLERS];
    u8 partyOrder[MAX_BATTLERS][MAX_PARTY_SIZE];
    int canSwitch;
    u8 battlersSwitchingMask;
    u8 padding_25[3];
} PartyMenuMessage;

typedef struct YesNoMenuMessage {
    u8 command;
    u8 yesnoType;
    u16 promptMsg;
    int move;
    int nickname;
} YesNoMenuMessage;

typedef struct AttackMsgMessage {
    u8 command;
    u8 partySlot;
    u16 move;
} AttackMsgMessage;

typedef struct HPGaugeUpdateMessage {
    u8 command;
    u8 level;
    s16 curHP;
    u16 maxHP;
    u8 padding_06;
    u8 gender;
    int hpCalcTemp;
    u32 exp; // set but unused
    u32 expToNextLevel; // set but unused
} HPGaugeUpdateMessage;

typedef struct ExpGaugeUpdateMessage {
    u8 command;
    u8 padding_01[3];
    u32 curExp;
    u32 gainedExp;
    u32 expToNextLevel;
} ExpGaugeUpdateMessage;

typedef struct FaintingSequenceMessage {
    u8 command;
    u8 gender;
    u16 species;
    u32 personality;
    u8 form;
    u8 notSubstitute;
    u8 notTransformed;
    u8 unk_0B;
    u16 monSpecies[MAX_BATTLERS];
    u8 monGenders[MAX_BATTLERS];
    u8 monShiny[MAX_BATTLERS];
    u8 monFormNums[MAX_BATTLERS];
    u32 monPersonalities[MAX_BATTLERS];
} FaintingSequenceMessage;

typedef struct PlaySoundMessage {
    u8 command;
    u8 unk_01;
    u16 sdatID;
} PlaySoundMessage;

typedef struct ToggleVanishMessage {
    u8 command;
    u8 toggle;
    u8 notSubstitute;
    u8 padding_03;
    u16 species[MAX_BATTLERS];
    u8 gender[MAX_BATTLERS];
    u8 isShiny[MAX_BATTLERS];
    u8 formNum[MAX_BATTLERS];
    u32 personality[MAX_BATTLERS];
} ToggleVanishMessage;

typedef struct SetStatusIconMessage {
    u8 command;
    u8 status;
    u16 padding_02;
} SetStatusIconMessage;

typedef struct TrainerMsgMessage {
    u8 command;
    u8 msg;
    u16 padding_02;
} TrainerMsgMessage;

typedef struct RecallMsgMessage {
    u8 command;
    u8 partySlot;
    u16 hpPercent;
} RecallMsgMessage;

typedef struct SendOutMsgMessage {
    u8 command;
    u8 partySlot;
    u16 hpPercent; // out of 1000
} SendOutMsgMessage;

typedef struct LeadMonMsgMessage {
    u8 command;
    u8 padding_01[3];
    u8 partySlot[MAX_BATTLERS];
} LeadMonMsgMessage;

typedef struct AlertMsgMessage {
    u8 command;
    u8 padding_01[3];
    BattleMessage msg;
} AlertMsgMessage;

typedef struct RefreshHPGaugeMessage {
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

typedef struct UpdatePartyMonMessage {
    u8 command;
    u8 partySlot : 4;
    u8 mimickedMoveSlot : 4;
    s16 curHP;
    u32 status;
    u32 knockedOffItemsMask;
    u16 heldItem;
    u16 moves[LEARNED_MOVES_MAX];
    u8 ppCur[LEARNED_MOVES_MAX];
    u8 padding_16[2];
    u32 statusVolatile;
    u16 formNum;
    u8 padding_1E[2];
    int ability;
    u16 updateStats;
    u16 updateForm;
} UpdatePartyMonMessage;

typedef struct RefreshPartyStatusMessage {
    u8 command;
    u8 ability;
    u16 move;
} RefreshPartyStatusMessage;

typedef struct ForgetMoveMessage {
    u8 command;
    u8 slot;
    u16 move;
} ForgetMoveMessage;

typedef struct MosaicSetMessage {
    u8 command;
    u8 unk_01;
    u8 wait;
    u8 padding_03;
} MosaicSetMessage;

typedef struct MonChangeFormMessage {
    u8 command;
    u8 formNum;
    u16 species;
    u8 gender;
    u8 isShiny;
    u8 padding_06[2];
    u32 personality;
} MonChangeFormMessage;

typedef struct RecordIncrementMessage {
    u8 command;
    u8 battlerType;
    u16 record;
} RecordIncrementMessage;

typedef struct LinkWaitMsgMessage {
    u8 command;
    u8 padding_01;
    u16 unk_02;
    u8 unk_04[28];
} LinkWaitMsgMessage;

typedef struct EscapeMsgMessage {
    u8 command;
    u8 unk_01;
    u16 unk_02;
    u8 unk_04[28];
} EscapeMsgMessage;

typedef struct ForfeitMsgMessage {
    u8 command;
    u8 padding_01;
    u16 unk_02;
    u8 unk_04[28];
} ForfeitMsgMessage;

typedef struct MoveHitSoundMessage {
    u8 command;
    u8 effectiveness;
    u8 padding_02[2];
} MoveHitSoundMessage;

typedef struct MusicPlayMessage {
    u8 command;
    u8 padding_01;
    u16 bgmID;
} MusicPlayMessage;

typedef struct ResultSubmitMessage {
    u8 command;
    u8 padding_01;
    u16 unk_02;
    u32 resultMask;
    u8 unk_08[28];
} ResultSubmitMessage;

typedef struct CommandClearMsg {
    u8 command;
    u8 netID;
    u16 padding_02;
} CommandClearMsg;

#endif // POKEPLATINUM_STRUCT_BATTLE_MESSAGE_DEFS_H
