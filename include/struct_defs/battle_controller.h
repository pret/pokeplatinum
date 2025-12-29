#ifndef POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
#define POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H

#include "constants/pokemon.h"


enum BattleControlSequence {
    BATTLE_CONTROL_GET_BATTLE_MON = 0,
    BATTLE_CONTROL_START_ENCOUNTER,
    BATTLE_CONTROL_TRAINER_MESSAGE,
    BATTLE_CONTROL_SHOW_BATTLE_MON,
    BATTLE_CONTROL_INIT_COMMAND_SELECTION,
    BATTLE_CONTROL_COMMAND_SELECTION_INPUT,
    BATTLE_CONTROL_CALC_TURN_ORDER,
    BATTLE_CONTROL_CHECK_PRE_MOVE_ACTIONS,
    BATTLE_CONTROL_BRANCH_ACTIONS,
    BATTLE_CONTROL_CHECK_FIELD_CONDITIONS,
    BATTLE_CONTROL_CHECK_MON_CONDITIONS,
    BATTLE_CONTROL_CHECK_SIDE_CONDITIONS,
    BATTLE_CONTROL_TURN_END,

    BATTLE_CONTROL_FIGHT,
    BATTLE_CONTROL_ITEM,
    BATTLE_CONTROL_PARTY,
    BATTLE_CONTROL_RUN,

    BATTLE_CONTROL_SAFARI_BALL,
    BATTLE_CONTROL_SAFARI_BAIT,
    BATTLE_CONTROL_SAFARI_ROCK,
    BATTLE_CONTROL_SAFARI_WAIT,

    BATTLE_CONTROL_EXEC_SCRIPT,
    BATTLE_CONTROL_BEFORE_MOVE,
    BATTLE_CONTROL_TRY_MOVE,
    BATTLE_CONTROL_PRIMARY_EFFECT,
    BATTLE_CONTROL_MOVE_FAILED,
    BATTLE_CONTROL_USE_MOVE,
    BATTLE_CONTROL_UPDATE_HP,
    BATTLE_CONTROL_AFTER_MOVE_MESSAGE,
    BATTLE_CONTROL_29, // unused state
    BATTLE_CONTROL_AFTER_MOVE_EFFECT,
    BATTLE_CONTROL_LOOP_MULTI_HIT,
    BATTLE_CONTROL_32, // unused state
    BATTLE_CONTROL_LOOP_FAINTED,
    BATTLE_CONTROL_LOOP_SPREAD_MOVES,
    BATTLE_CONTROL_FAINT_AFTER_SELFDESTRUCT,
    BATTLE_CONTROL_TRIGGER_AFTER_HIT_EFFECTS,
    BATTLE_CONTROL_37, // unused state
    BATTLE_CONTROL_UPDATE_MOVE_BUFFERS,
    BATTLE_CONTROL_MOVE_END,
    BATTLE_CONTROL_CHECK_ANY_FAINTED,
    BATTLE_CONTROL_RESULT,
    BATTLE_CONTROL_SCREEN_WIPE,
    BATTLE_CONTROL_FIGHT_END,
    BATTLE_CONTROL_END_WAIT,
};

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
    u8 commandNext;
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
    u8 commandNext;
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
    u8 commandNext;
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
    u8 commandNext;
    u8 unk_01;
    u16 trainerType;
} TrainerEncounterMessage;

#endif // POKEPLATINUM_STRUCT_BATTLE_CONTROLLER_H
