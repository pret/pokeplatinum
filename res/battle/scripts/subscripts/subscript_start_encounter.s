#include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _118
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_SAFARI, _215
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_PAL_PARK, _237
    SetPokemonEncounter BTLSCR_ENEMY
    SetTrainerEncounter BTLSCR_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BTLSCR_ENEMY
    Wait 
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_SYS_STATUS, BATTLE_STATUS_DISTORTION, _073
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_SYS_STATUS, BATTLE_STATUS_LEGENDARY, _067
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_SYS_STATUS, BATTLE_STATUS_FIRST_BATTLE, _055
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_SYS_STATUS, BATTLE_STATUS_HONEY_TREE, _061
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _079
    // A wild {0} appeared!
    PrintGlobalMessage pl_msg_00000368_00965, TAG_NICKNAME, BTLSCR_ENEMY
    GoTo _084

_055:
    // Whoa! A wild {0} came charging!
    PrintGlobalMessage pl_msg_00000368_01167, TAG_NICKNAME, BTLSCR_ENEMY
    GoTo _084

_061:
    // A wild {0} appeared from the tree you slathered with Honey!
    PrintGlobalMessage pl_msg_00000368_00968, TAG_NICKNAME, BTLSCR_ENEMY
    GoTo _084

_067:
    // A wild {0} appeared!
    PrintGlobalMessage pl_msg_00000368_01246, TAG_NICKNAME, BTLSCR_ENEMY
    GoTo _084

_073:
    // The Distortion World’s {0} appeared!
    PrintGlobalMessage pl_msg_00000368_01268, TAG_NICKNAME, BTLSCR_ENEMY
    GoTo _084

_079:
    // A wild {0} and {1} appeared!
    PrintGlobalMessage pl_msg_00000368_00967, TAG_NICKNAME_NICKNAME, BTLSCR_ENEMY_SLOT_1, BTLSCR_ENEMY_SLOT_2

_084:
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_2vs2, _098
    // Go! {0}!
    PrintMessage pl_msg_00000368_00979, TAG_NICKNAME, BTLSCR_PLAYER
    GoTo _100

_098:
    PrintFirstSendOutMessage BTLSCR_PLAYER

_100:
    SpriteToOAM BTLSCR_ENEMY
    Wait 
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BTLSCR_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BTLSCR_PLAYER
    Wait 
    OAMToSprite BTLSCR_ENEMY
    Wait 
    GoTo _258

_118:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_SYS_STATUS, BATTLE_STATUS_RECORDED, _169
    PlayEncounterAnimation 
    SetTrainerEncounter BTLSCR_ALL_BATTLERS
    WaitTime 96
    LoadPartyGaugeGraphics 
    ShowBattleStartPartyGauge BTLSCR_ENEMY
    ShowBattleStartPartyGauge BTLSCR_PLAYER
    PrintEncounterMessage BTLSCR_ENEMY
    Wait 
    WaitButtonABTime 30
    PrintFirstSendOutMessage BTLSCR_ENEMY
    HideBattleStartPartyGauge BTLSCR_ENEMY
    ThrowPokeball BTLSCR_ENEMY, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BTLSCR_ENEMY
    WaitTime 112
    HealthbarSlideInDelay BTLSCR_ENEMY
    Wait 
    PrintFirstSendOutMessage BTLSCR_PLAYER
    HideBattleStartPartyGauge BTLSCR_PLAYER
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BTLSCR_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BTLSCR_PLAYER
    Wait 
    FreePartyGaugeGraphics 
    GoTo _258

_169:
    PlayEncounterAnimation 
    SetTrainerEncounter BTLSCR_ALL_BATTLERS
    WaitTime 96
    LoadPartyGaugeGraphics 
    ShowBattleStartPartyGauge BTLSCR_ENEMY
    ShowBattleStartPartyGauge BTLSCR_PLAYER
    PrintEncounterMessage BTLSCR_ENEMY
    Wait 
    WaitButtonABTime 30
    PrintFirstSendOutMessage BTLSCR_PLAYER
    HideBattleStartPartyGauge BTLSCR_PLAYER
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BTLSCR_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BTLSCR_PLAYER
    Wait 
    PrintFirstSendOutMessage BTLSCR_ENEMY
    HideBattleStartPartyGauge BTLSCR_ENEMY
    ThrowPokeball BTLSCR_ENEMY, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BTLSCR_ENEMY
    WaitTime 112
    HealthbarSlideInDelay BTLSCR_ENEMY
    Wait 
    FreePartyGaugeGraphics 
    GoTo _258

_215:
    SetPokemonEncounter BTLSCR_ENEMY
    SetTrainerEncounter BTLSCR_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BTLSCR_ENEMY
    Wait 
    // A wild {0} appeared!
    PrintGlobalMessage pl_msg_00000368_00965, TAG_NICKNAME, BTLSCR_ENEMY
    Wait 
    HealthbarSlideIn BTLSCR_PLAYER
    WaitButtonABTime 7
    Wait 
    GoTo _258

_237:
    SetPokemonEncounter BTLSCR_ENEMY
    SetTrainerEncounter BTLSCR_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BTLSCR_ENEMY
    Wait 
    // Wow! {0}’s {1} is drawing close!
    PrintGlobalMessage pl_msg_00000368_01219, TAG_TRNAME_NICKNAME, BTLSCR_ENEMY, BTLSCR_ENEMY
    Wait 
    HealthbarSlideIn BTLSCR_PLAYER
    WaitButtonABTime 7
    Wait 

_258:
    SetBattleBackground 
    End 
