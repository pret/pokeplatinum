#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_center_daily_trainers.h"

#define ARTURO         10
#define KINSEY         22
#define TEVIN          23
#define ROXY_AND_OLI_1 22
#define ROXY_AND_OLI_2 23
#define GRACE          35
#define LEE            43
#define ARIEL          71

#define VAR_MAP_ID     0x4001
#define VAR_NPC_1      0x402A
#define VAR_NPC_2      0x402B

#define VAR_TWO_MONS   0x8000
#define VAR_IS_NPC_2   0x8004
#define VAR_TRAINER    0x8005
#define VAR_DEFEATED   0x8006

    .data

    ScriptEntry PokemonCenterDailyTrainers_CheckUnlockedVSSeeker
    ScriptEntry PokemonCenterDailyTrainers_FirstNPC
    ScriptEntry PokemonCenterDailyTrainers_SecondNPC
    TableEnd

PokemonCenterDailyTrainers_CheckUnlockedVSSeeker:
    SetFlag 0x183
    SetFlag 0x184
    GoToIfUnset FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_End
    Call PokemonCenterDailyTrainers_SetNPCs
    End

PokemonCenterDailyTrainers_End:
    End

PokemonCenterDailyTrainers_SetNPCs:
    GetWeekDay 0x4000
    CallIfEq 0x4000, SUNDAY, PokemonCenterDailyTrainers_SetNPCsSunday
    CallIfEq 0x4000, MONDAY, PokemonCenterDailyTrainers_SetNPCsMonday
    CallIfEq 0x4000, TUESDAY, PokemonCenterDailyTrainers_SetNPCsTuesday
    CallIfEq 0x4000, WEDNESDAY, PokemonCenterDailyTrainers_SetNPCsWednesday
    CallIfEq 0x4000, THURSDAY, PokemonCenterDailyTrainers_SetNPCsThursday
    CallIfEq 0x4000, FRIDAY, PokemonCenterDailyTrainers_SetNPCsFriday
    CallIfEq 0x4000, SATURDAY, PokemonCenterDailyTrainers_SetNPCsSaturday
    Return

PokemonCenterDailyTrainers_SetNPCsSunday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCGrace
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCsMonday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCGrace
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCsTuesday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCGrace
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCsWednesday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCsThursday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCGrace
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCsFriday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCGrace
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCsSaturday:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCGrace
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCLee
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCsRoxyAndOli
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCAriel
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_SetNPCArturo
    Return

PokemonCenterDailyTrainers_SetNPCGrace:
    ClearFlag 0x183
    SetVar VAR_NPC_1, GRACE
    Return

PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey:
    ClearFlag 0x183
    ClearFlag 0x184
    SetVar VAR_NPC_1, KINSEY
    SetVar VAR_NPC_2, TEVIN
    Return

PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2:
    ClearFlag 0x183
    ClearFlag 0x184
    SetVar VAR_NPC_1, KINSEY
    SetVar VAR_NPC_2, TEVIN
    Return

PokemonCenterDailyTrainers_SetNPCLee:
    ClearFlag 0x183
    SetVar VAR_NPC_1, LEE
    Return

PokemonCenterDailyTrainers_SetNPCsRoxyAndOli:
    ClearFlag 0x183
    ClearFlag 0x184
    SetVar VAR_NPC_1, ROXY_AND_OLI_1
    SetVar VAR_NPC_2, ROXY_AND_OLI_2
    Return

PokemonCenterDailyTrainers_SetNPCAriel:
    ClearFlag 0x183
    SetVar VAR_NPC_1, ARIEL
    Return

PokemonCenterDailyTrainers_SetNPCArturo:
    ClearFlag 0x183
    SetVar VAR_NPC_1, ARTURO
    Return

PokemonCenterDailyTrainers_FirstNPC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_IS_NPC_2, FALSE
    SetVar VAR_DEFEATED, FALSE
    CallIfEq VAR_NPC_1, GRACE, PokemonCenterDailyTrainers_CheckGraceDefeated
    CallIfEq VAR_NPC_1, KINSEY, PokemonCenterDailyTrainers_CheckKinseyInPokemonCenter
    CallIfEq VAR_NPC_1, LEE, PokemonCenterDailyTrainers_CheckLeeDefeated
    CallIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_CheckRoxyAndOliInPokemonCenter
    CallIfEq VAR_NPC_1, ARIEL, PokemonCenterDailyTrainers_CheckArielDefeated
    CallIfEq VAR_NPC_1, ARTURO, PokemonCenterDailyTrainers_CheckArturoDefeated
    GoToIfEq VAR_DEFEATED, TRUE, PokemonCenterDailyTrainers_PostBattle
    GoTo PokemonCenterDailyTrainers_IntroMessage
    End

PokemonCenterDailyTrainers_SecondNPC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_IS_NPC_2, TRUE
    SetVar VAR_DEFEATED, FALSE
    CallIfEq VAR_NPC_2, GRACE, PokemonCenterDailyTrainers_CheckGraceDefeated
    CallIfEq VAR_NPC_2, TEVIN, PokemonCenterDailyTrainers_CheckTevinOrRoxyAndOliDefeated
    CallIfEq VAR_NPC_2, LEE, PokemonCenterDailyTrainers_CheckLeeDefeated
    CallIfEq VAR_NPC_2, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_CheckRoxyAndOliInPokemonCenter
    CallIfEq VAR_NPC_2, ARIEL, PokemonCenterDailyTrainers_CheckArielDefeated
    CallIfEq VAR_NPC_2, ARTURO, PokemonCenterDailyTrainers_CheckArturoDefeated
    GoToIfEq VAR_DEFEATED, 1, PokemonCenterDailyTrainers_PostBattle
    GoTo PokemonCenterDailyTrainers_IntroMessage
    End

PokemonCenterDailyTrainers_IntroMessage:
    SetVar VAR_TWO_MONS, TRUE
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckDoubleBattleTwoAliveMons
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckDoubleBattleTwoAliveMons
    GoToIfEq VAR_TWO_MONS, FALSE, PokemonCenterDailyTrainers_NotEnoughAliveMons
    GoToIfEq VAR_IS_NPC_2, TRUE, PokemonCenterDailyTrainers_IntroMessageSecondNPC
    CallIfEq VAR_NPC_1, GRACE, PokemonCenterDailyTrainers_GraceIntroMessage
    CallIfEq VAR_NPC_1, KINSEY, PokemonCenterDailyTrainers_KinseyIntroMessage
    CallIfEq VAR_NPC_1, LEE, PokemonCenterDailyTrainers_LeeIntroMessage
    CallIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_RoxyIntroMessage
    CallIfEq VAR_NPC_1, ARIEL, PokemonCenterDailyTrainers_ArielIntroMessage
    CallIfEq VAR_NPC_1, ARTURO, PokemonCenterDailyTrainers_ArturoIntroMessage
    GoTo PokemonCenterDailyTrainers_AskForBattle
    End

PokemonCenterDailyTrainers_IntroMessageSecondNPC:
    CallIfEq VAR_NPC_2, GRACE, PokemonCenterDailyTrainers_GraceIntroMessage
    CallIfEq VAR_NPC_2, TEVIN, PokemonCenterDailyTrainers_TevinOrOliIntroMessage
    CallIfEq VAR_NPC_2, LEE, PokemonCenterDailyTrainers_LeeIntroMessage
    CallIfEq VAR_NPC_2, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_OliIntroMessage
    CallIfEq VAR_NPC_2, ARIEL, PokemonCenterDailyTrainers_ArielIntroMessage
    CallIfEq VAR_NPC_2, ARTURO, PokemonCenterDailyTrainers_ArturoIntroMessage
    GoTo PokemonCenterDailyTrainers_AskForBattle
    End

PokemonCenterDailyTrainers_AskForBattle:
    YesNoMenu 0x800C
    GoToIfEq 0x800C, YES, PokemonCenterDailyTrainers_BattleAccepted
    GoToIfEq 0x800C, NO, PokemonCenterDailyTrainers_BattleDeclined
    End

PokemonCenterDailyTrainers_NotEnoughAliveMons:
    GoToIfEq VAR_IS_NPC_2, TRUE, PokemonCenterDailyTrainers_OliNotEnoughAliveMons
    Call PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessage
    GoTo PokemonCenterDailyTrainers_CloseMessage
    End

PokemonCenterDailyTrainers_OliNotEnoughAliveMons:
    Call PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessage
    GoTo PokemonCenterDailyTrainers_CloseMessage
    End

PokemonCenterDailyTrainers_CheckDoubleBattleTwoAliveMons:
    GoToIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_HasTwoAliveMons
    Return

PokemonCenterDailyTrainers_HasTwoAliveMons:
    HasTwoAliveMons VAR_TWO_MONS
    Return

PokemonCenterDailyTrainers_BattleAccepted:
    GoToIfEq VAR_IS_NPC_2, TRUE, PokemonCenterDailyTrainers_BattleAcceptedSecondNPC
    CallIfEq VAR_NPC_1, GRACE, PokemonCenterDailyTrainers_GraceBattleAccepted
    CallIfEq VAR_NPC_1, KINSEY, PokemonCenterDailyTrainers_KinseyBattleAccepted
    CallIfEq VAR_NPC_1, LEE, PokemonCenterDailyTrainers_LeeBattleAccepted
    CallIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_RoxyBattleAccepted
    CallIfEq VAR_NPC_1, ARIEL, PokemonCenterDailyTrainers_ArielBattleAccepted
    CallIfEq VAR_NPC_1, ARTURO, PokemonCenterDailyTrainers_ArturoBattleAccepted
    GoTo PokemonCenterDailyTrainers_Battle
    End

PokemonCenterDailyTrainers_BattleAcceptedSecondNPC:
    CallIfEq VAR_NPC_2, GRACE, PokemonCenterDailyTrainers_GraceBattleAccepted
    CallIfEq VAR_NPC_2, TEVIN, PokemonCenterDailyTrainers_TevinOrOliBattleAccepted
    CallIfEq VAR_NPC_2, LEE, PokemonCenterDailyTrainers_LeeBattleAccepted
    CallIfEq VAR_NPC_2, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_OliBattleAccepted
    CallIfEq VAR_NPC_2, ARIEL, PokemonCenterDailyTrainers_ArielBattleAccepted
    CallIfEq VAR_NPC_2, ARTURO, PokemonCenterDailyTrainers_ArturoBattleAccepted
    GoTo PokemonCenterDailyTrainers_Battle
    End

PokemonCenterDailyTrainers_Battle:
    CloseMessage
    StartTrainerBattle VAR_TRAINER
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, PokemonCenterDailyTrainers_BattleLost
    GoTo PokemonCenterDailyTrainers_PostBattle
    End

PokemonCenterDailyTrainers_PostBattle:
    GoToIfEq VAR_IS_NPC_2, TRUE, PokemonCenterDailyTrainers_PostBattleSecondNPC
    CallIfEq VAR_NPC_1, GRACE, PokemonCenterDailyTrainers_GracePostBattle
    CallIfEq VAR_NPC_1, KINSEY, PokemonCenterDailyTrainers_KinseyPostBattle
    CallIfEq VAR_NPC_1, LEE, PokemonCenterDailyTrainers_LeePostBattle
    CallIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_RoxyPostBattle
    CallIfEq VAR_NPC_1, ARIEL, PokemonCenterDailyTrainers_ArielPostBattle
    CallIfEq VAR_NPC_1, ARTURO, PokemonCenterDailyTrainers_ArturoPostBattle
    GoTo PokemonCenterDailyTrainers_CloseMessage
    End

PokemonCenterDailyTrainers_PostBattleSecondNPC:
    CallIfEq VAR_NPC_2, GRACE, PokemonCenterDailyTrainers_GracePostBattle
    CallIfEq VAR_NPC_2, TEVIN, PokemonCenterDailyTrainers_TevinOrOliPostBattle
    CallIfEq VAR_NPC_2, LEE, PokemonCenterDailyTrainers_LeePostBattle
    CallIfEq VAR_NPC_2, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_OliPostBattle
    CallIfEq VAR_NPC_2, ARIEL, PokemonCenterDailyTrainers_ArielPostBattle
    CallIfEq VAR_NPC_2, ARTURO, PokemonCenterDailyTrainers_ArturoPostBattle
    GoTo PokemonCenterDailyTrainers_CloseMessage
    End

PokemonCenterDailyTrainers_BattleDeclined:
    GoToIfEq VAR_IS_NPC_2, TRUE, PokemonCenterDailyTrainers_BattleDeclinedSecondNPC
    CallIfEq VAR_NPC_1, GRACE, PokemonCenterDailyTrainers_GraceBattleDeclined
    CallIfEq VAR_NPC_1, KINSEY, PokemonCenterDailyTrainers_KinseyBattleDeclined
    CallIfEq VAR_NPC_1, LEE, PokemonCenterDailyTrainers_LeeBattleDeclined
    CallIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_RoxyBattleDeclined
    CallIfEq VAR_NPC_1, ARIEL, PokemonCenterDailyTrainers_ArielBattleDeclined
    CallIfEq VAR_NPC_1, ARTURO, PokemonCenterDailyTrainers_ArturoBattleDeclined
    GoTo PokemonCenterDailyTrainers_CloseMessage
    End

PokemonCenterDailyTrainers_BattleDeclinedSecondNPC:
    CallIfEq VAR_NPC_2, GRACE, PokemonCenterDailyTrainers_GraceBattleDeclined
    CallIfEq VAR_NPC_2, TEVIN, PokemonCenterDailyTrainers_TevinOrOliBattleDeclined
    CallIfEq VAR_NPC_2, LEE, PokemonCenterDailyTrainers_LeeBattleDeclined
    CallIfEq VAR_NPC_2, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_OliBattleDeclined
    CallIfEq VAR_NPC_2, ARIEL, PokemonCenterDailyTrainers_ArielBattleDeclined
    CallIfEq VAR_NPC_2, ARTURO, PokemonCenterDailyTrainers_ArturoBattleDeclined
    GoTo PokemonCenterDailyTrainers_CloseMessage
    End

PokemonCenterDailyTrainers_CloseMessage:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonCenterDailyTrainers_BattleLost:
    WhiteOut
    ReleaseAll
    End

PokemonCenterDailyTrainers_GraceIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceIntroMessageOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceIntroMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceIntroMessageSnowpoint
    Return

PokemonCenterDailyTrainers_GraceIntroMessageOreburgh:
    Message pokemon_center_daily_trainers_grace_intro_oreburgh
    Return

PokemonCenterDailyTrainers_GraceIntroMessagePastoria:
    Message pokemon_center_daily_trainers_grace_intro_pastiora
    Return

PokemonCenterDailyTrainers_GraceIntroMessageSnowpoint:
    Message pokemon_center_daily_trainers_grace_intro_snowpoint
    Return

PokemonCenterDailyTrainers_KinseyIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyIntroMessageJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyIntroMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyIntroMessageFightArea
    Return

PokemonCenterDailyTrainers_KinseyIntroMessageJubilife:
    Message pokemon_center_daily_trainers_kinsey_intro_jubilife
    Return

PokemonCenterDailyTrainers_KinseyIntroMessageHearthome:
    Message pokemon_center_daily_trainers_kinsey_intro_hearthome
    Return

PokemonCenterDailyTrainers_KinseyIntroMessageFightArea:
    Message pokemon_center_daily_trainers_kinsey_intro_fight_area
    Return

PokemonCenterDailyTrainers_TevinOrOliIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_TevinIntroMessageJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_TevinIntroMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_TevinIntroMessageFightArea
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliIntroMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliIntroMessageVeilstone
    Return

PokemonCenterDailyTrainers_TevinIntroMessageJubilife:
    Message pokemon_center_daily_trainers_tevin_intro_jubilife
    Return

PokemonCenterDailyTrainers_TevinIntroMessageHearthome:
    Message pokemon_center_daily_trainers_tevin_intro_hearthome
    Return

PokemonCenterDailyTrainers_TevinIntroMessageFightArea:
    Message pokemon_center_daily_trainers_tevin_intro_fight_area
    Return

PokemonCenterDailyTrainers_LeeIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeIntroMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeIntroMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeeIntroMessageCelestic
    Return

PokemonCenterDailyTrainers_LeeIntroMessageHearthome:
    Message pokemon_center_daily_trainers_lee_intro_hearthome
    Return

PokemonCenterDailyTrainers_LeeIntroMessagePastoria:
    Message pokemon_center_daily_trainers_lee_intro_pastoria
    Return

PokemonCenterDailyTrainers_LeeIntroMessageCelestic:
    Message pokemon_center_daily_trainers_lee_intro_celestic
    Return

PokemonCenterDailyTrainers_RoxyIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyIntroMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyIntroMessageVeilstone
    Return

PokemonCenterDailyTrainers_RoxyIntroMessageEterna:
    Message pokemon_center_daily_trainers_roxy_intro_eterna
    Return

PokemonCenterDailyTrainers_RoxyIntroMessageVeilstone:
    Message pokemon_center_daily_trainers_roxy_intro_veilstone
    Return

PokemonCenterDailyTrainers_OliIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliIntroMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliIntroMessageVeilstone
    Return

PokemonCenterDailyTrainers_OliIntroMessageEterna:
    Message pokemon_center_daily_trainers_oli_intro_eterna
    Return

PokemonCenterDailyTrainers_OliIntroMessageVeilstone:
    Message pokemon_center_daily_trainers_oli_intro_veilstone
    Return

PokemonCenterDailyTrainers_ArielIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielIntroMessageFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielIntroMessageSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielIntroMessageResortArea
    Return

PokemonCenterDailyTrainers_ArielIntroMessageFloaroma:
    Message pokemon_center_daily_trainers_ariel_intro_floaroma
    Return

PokemonCenterDailyTrainers_ArielIntroMessageSolaceon:
    Message pokemon_center_daily_trainers_ariel_intro_solaceon
    Return

PokemonCenterDailyTrainers_ArielIntroMessageResortArea:
    Message pokemon_center_daily_trainers_ariel_intro_resort_area
    Return

PokemonCenterDailyTrainers_ArturoIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoIntroMessageCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoIntroMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoIntroMessageSunyshore
    Return

PokemonCenterDailyTrainers_ArturoIntroMessageCanalave:
    Message pokemon_center_daily_trainers_arturo_intro_canalave
    Return

PokemonCenterDailyTrainers_ArturoIntroMessagePastoria:
    Message pokemon_center_daily_trainers_arturo_intro_pastoria
    Return

PokemonCenterDailyTrainers_ArturoIntroMessageSunyshore:
    Message pokemon_center_daily_trainers_arturo_intro_sunyshore
    Return

PokemonCenterDailyTrainers_GraceBattleAccepted:
    Call PokemonCenterDailyTrainers_SetGraceTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleAcceptedMessageOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleAcceptedMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleAcceptedMessageSnowpoint
    Return

PokemonCenterDailyTrainers_GraceBattleAcceptedMessageOreburgh:
    Message pokemon_center_daily_trainers_grace_battle_accepted_oreburgh
    Return

PokemonCenterDailyTrainers_GraceBattleAcceptedMessagePastoria:
    Message pokemon_center_daily_trainers_grace_battle_accepted_pastiora
    Return

PokemonCenterDailyTrainers_GraceBattleAcceptedMessageSnowpoint:
    Message pokemon_center_daily_trainers_grace_battle_accepted_snowpoint
    Return

PokemonCenterDailyTrainers_KinseyBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleAcceptedJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleAcceptedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleAcceptedFightArea
    Return

PokemonCenterDailyTrainers_KinseyBattleAcceptedJubilife:
    Call PokemonCenterDailyTrainers_SetKinseyTeam
    Message pokemon_center_daily_trainers_kinsey_battle_accepted_jubilife
    Return

PokemonCenterDailyTrainers_KinseyBattleAcceptedHearthome:
    Call PokemonCenterDailyTrainers_SetKinseyTeam
    Message pokemon_center_daily_trainers_kinsey_battle_accepted_hearthome
    Return

PokemonCenterDailyTrainers_KinseyBattleAcceptedFightArea:
    Call PokemonCenterDailyTrainers_SetKinseyTeam
    Message pokemon_center_daily_trainers_kinsey_battle_accepted_fight_area
    Return

PokemonCenterDailyTrainers_TevinOrOliBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_TevinBattleAcceptedJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_TevinBattleAcceptedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_TevinBattleAcceptedFightArea
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleAcceptedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleAcceptedVeilstone
    Return

PokemonCenterDailyTrainers_TevinBattleAcceptedJubilife:
    Call PokemonCenterDailyTrainers_SetTevinTeam
    Message pokemon_center_daily_trainers_tevin_battle_accepted_jubilife
    Return

PokemonCenterDailyTrainers_TevinBattleAcceptedHearthome:
    Call PokemonCenterDailyTrainers_SetTevinTeam
    Message pokemon_center_daily_trainers_tevin_battle_accepted_hearthome
    Return

PokemonCenterDailyTrainers_TevinBattleAcceptedFightArea:
    Call PokemonCenterDailyTrainers_SetTevinTeam
    Message pokemon_center_daily_trainers_tevin_battle_accepted_fight_area
    Return

PokemonCenterDailyTrainers_LeeBattleAccepted:
    Call PokemonCenterDailyTrainers_SetLeeTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleAcceptedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleAcceptedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleAcceptedCelestic
    Return

PokemonCenterDailyTrainers_LeeBattleAcceptedHearthome:
    Message pokemon_center_daily_trainers_lee_battle_accepted_hearthome
    Return

PokemonCenterDailyTrainers_LeeBattleAcceptedPastoria:
    Message pokemon_center_daily_trainers_lee_battle_accepted_pastiora
    Return

PokemonCenterDailyTrainers_LeeBattleAcceptedCelestic:
    Message pokemon_center_daily_trainers_lee_battle_accepted_celestic
    Return

PokemonCenterDailyTrainers_RoxyBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleAcceptedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleAcceptedVeilstone
    Return

PokemonCenterDailyTrainers_RoxyBattleAcceptedEterna:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message pokemon_center_daily_trainers_roxy_battle_accepted_eterna
    Return

PokemonCenterDailyTrainers_RoxyBattleAcceptedVeilstone:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message pokemon_center_daily_trainers_roxy_battle_accepted_veilstone
    Return

PokemonCenterDailyTrainers_OliBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleAcceptedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleAcceptedVeilstone
    Return

PokemonCenterDailyTrainers_OliBattleAcceptedEterna:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message pokemon_center_daily_trainers_oli_battle_accepted_eterna
    Return

PokemonCenterDailyTrainers_OliBattleAcceptedVeilstone:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message pokemon_center_daily_trainers_oli_battle_accepted_veilstone

    Return

PokemonCenterDailyTrainers_ArielBattleAccepted:
    Call PokemonCenterDailyTrainers_SetArielTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleAcceptedFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleAcceptedSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleAcceptedResortArea
    Return

PokemonCenterDailyTrainers_ArielBattleAcceptedFloaroma:
    Message pokemon_center_daily_trainers_ariel_battle_accepted_floaroma
    Return

PokemonCenterDailyTrainers_ArielBattleAcceptedSolaceon:
    Message pokemon_center_daily_trainers_ariel_battle_accepted_solaceon
    Return

PokemonCenterDailyTrainers_ArielBattleAcceptedResortArea:
    Message pokemon_center_daily_trainers_ariel_battle_accepted_resort_area
    Return

PokemonCenterDailyTrainers_ArturoBattleAccepted:
    Call PokemonCenterDailyTrainers_SetArturoTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleAcceptedCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleAcceptedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleAcceptedSunyshore
    Return

PokemonCenterDailyTrainers_ArturoBattleAcceptedCanalave:
    Message pokemon_center_daily_trainers_arturo_battle_accepted_canalave
    Return

PokemonCenterDailyTrainers_ArturoBattleAcceptedPastoria:
    Message pokemon_center_daily_trainers_arturo_battle_accepted_pastiora
    Return

PokemonCenterDailyTrainers_ArturoBattleAcceptedSunyshore:
    Message pokemon_center_daily_trainers_arturo_battle_accepted_sunyshore
    Return

PokemonCenterDailyTrainers_GraceBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleDeclinedOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleDeclinedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleDeclinedSnowpoint
    Return

PokemonCenterDailyTrainers_GraceBattleDeclinedOreburgh:
    Message pokemon_center_daily_trainers_grace_battle_declined_oreburgh
    Return

PokemonCenterDailyTrainers_GraceBattleDeclinedPastoria:
    Message pokemon_center_daily_trainers_grace_battle_declined_pastiora
    Return

PokemonCenterDailyTrainers_GraceBattleDeclinedSnowpoint:
    Message pokemon_center_daily_trainers_grace_battle_declined_snowpoint
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleDeclinedJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleDeclinedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleDeclinedFightArea
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclinedJubilife:
    Message pokemon_center_daily_trainers_kinsey_battle_declined_jubilife
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclinedHearthome:
    Message pokemon_center_daily_trainers_kinsey_battle_declined_hearthome
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclinedFightArea:
    Message pokemon_center_daily_trainers_kinsey_battle_declined_fight_area
    Return

PokemonCenterDailyTrainers_TevinOrOliBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KevinBattleDeclinedJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KevinBattleDeclinedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KevinBattleDeclinedFightArea
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleDeclinedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleDeclinedVeilstone
    Return

PokemonCenterDailyTrainers_KevinBattleDeclinedJubilife:
    Message pokemon_center_daily_trainers_tevin_battle_declined_jubilife
    Return

PokemonCenterDailyTrainers_KevinBattleDeclinedHearthome:
    Message pokemon_center_daily_trainers_tevin_battle_declined_hearthome
    Return

PokemonCenterDailyTrainers_KevinBattleDeclinedFightArea:
    Message pokemon_center_daily_trainers_tevin_battle_declined_fight_area
    Return

PokemonCenterDailyTrainers_LeeBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleDeclinedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleDeclinedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleDeclinedCelestic
    Return

PokemonCenterDailyTrainers_LeeBattleDeclinedHearthome:
    Message pokemon_center_daily_trainers_lee_battle_declined_hearthome
    Return

PokemonCenterDailyTrainers_LeeBattleDeclinedPastoria:
    Message pokemon_center_daily_trainers_lee_battle_declined_pastiora
    Return

PokemonCenterDailyTrainers_LeeBattleDeclinedCelestic:
    Message pokemon_center_daily_trainers_lee_battle_declined_celestic
    Return

PokemonCenterDailyTrainers_RoxyBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleDeclinedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleDeclinedVeilstone
    Return

PokemonCenterDailyTrainers_RoxyBattleDeclinedEterna:
    Message pokemon_center_daily_trainers_roxy_battle_declined_eterna
    Return

PokemonCenterDailyTrainers_RoxyBattleDeclinedVeilstone:
    Message pokemon_center_daily_trainers_roxy_battle_declined_veilstone
    Return

PokemonCenterDailyTrainers_OliBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleDeclinedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleDeclinedVeilstone
    Return

PokemonCenterDailyTrainers_OliBattleDeclinedEterna:
    Message pokemon_center_daily_trainers_oli_battle_declined_eterna
    Return

PokemonCenterDailyTrainers_OliBattleDeclinedVeilstone:
    Message pokemon_center_daily_trainers_oli_battle_declined_veilstone
    Return

PokemonCenterDailyTrainers_ArielBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleDeclinedFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleDeclinedSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleDeclinedResortArea
    Return

PokemonCenterDailyTrainers_ArielBattleDeclinedFloaroma:
    Message pokemon_center_daily_trainers_ariel_battle_declined_floaroma
    Return

PokemonCenterDailyTrainers_ArielBattleDeclinedSolaceon:
    Message pokemon_center_daily_trainers_ariel_battle_declined_solaceon
    Return

PokemonCenterDailyTrainers_ArielBattleDeclinedResortArea:
    Message pokemon_center_daily_trainers_ariel_battle_declined_resort_area
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleDeclinedCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleDeclinedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleDeclinedSunyshore
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclinedCanalave:
    Message pokemon_center_daily_trainers_arturo_battle_declined_calanave
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclinedPastoria:
    Message pokemon_center_daily_trainers_arturo_battle_declined_pastiora
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclinedSunyshore:
    Message pokemon_center_daily_trainers_arturo_battle_declined_sunyshore
    Return

PokemonCenterDailyTrainers_GracePostBattle:
    SetFlag FLAG_DEFEATED_IDOL_GRACE
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GracePostBattleMessageOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GracePostBattleMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GracePostBattleMessageSnowpoint
    Return

PokemonCenterDailyTrainers_GracePostBattleMessageOreburgh:
    Message pokemon_center_daily_trainers_grace_post_battle_oreburgh
    Return

PokemonCenterDailyTrainers_GracePostBattleMessagePastoria:
    Message pokemon_center_daily_trainers_grace_post_battle_pastiora
    Return

PokemonCenterDailyTrainers_GracePostBattleMessageSnowpoint:
    Message pokemon_center_daily_trainers_grace_post_battle_snowpoint
    Return

PokemonCenterDailyTrainers_KinseyPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyPostBattleJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyPostBattleHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyPostBattleFightArea
    Return

PokemonCenterDailyTrainers_KinseyPostBattleJubilife:
    SetFlag FLAG_DEFEATED_REPORTERS_KINSEY
    Message pokemon_center_daily_trainers_kinsey_post_battle_jubilife
    Return

PokemonCenterDailyTrainers_KinseyPostBattleHearthome:
    SetFlag FLAG_DEFEATED_REPORTERS_KINSEY
    Message pokemon_center_daily_trainers_kinsey_post_battle_hearthome
    Return

PokemonCenterDailyTrainers_KinseyPostBattleFightArea:
    SetFlag FLAG_DEFEATED_REPORTERS_KINSEY
    Message pokemon_center_daily_trainers_kinsey_post_battle_fight_area
    Return

PokemonCenterDailyTrainers_TevinOrOliPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_TevinPostBattleJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_TevinPostBattleHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_TevinPostBattleFightArea
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliPostBattleEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliPostBattleVeilstone
    Return

PokemonCenterDailyTrainers_TevinPostBattleJubilife:
    SetFlag FLAG_DEFEATED_CAMERAMAN_TEVIN
    Message pokemon_center_daily_trainers_tevin_post_battle_jubilife
    Return

PokemonCenterDailyTrainers_TevinPostBattleHearthome:
    SetFlag FLAG_DEFEATED_CAMERAMAN_TEVIN
    Message pokemon_center_daily_trainers_tevin_post_battle_hearthome
    Return

PokemonCenterDailyTrainers_TevinPostBattleFightArea:
    SetFlag FLAG_DEFEATED_CAMERAMAN_TEVIN
    Message pokemon_center_daily_trainers_tevin_post_battled_fight_area
    Return

PokemonCenterDailyTrainers_LeePostBattle:
    SetFlag FLAG_DEFEATED_CLOWN_LEE
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeePostBattleMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeePostBattleMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeePostBattleMessageCelestic
    Return

PokemonCenterDailyTrainers_LeePostBattleMessageHearthome:
    Message pokemon_center_daily_trainers_lee_post_battle_hearthome
    Return

PokemonCenterDailyTrainers_LeePostBattleMessagePastoria:
    Message pokemon_center_daily_trainers_lee_post_battle_pastiora
    Return

PokemonCenterDailyTrainers_LeePostBattleMessageCelestic:
    Message pokemon_center_daily_trainers_lee_post_battle_celestic
    Return

PokemonCenterDailyTrainers_RoxyPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyPostBattleEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyPostBattleVeilstone
    Return

PokemonCenterDailyTrainers_RoxyPostBattleEterna:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message pokemon_center_daily_trainers_roxy_post_battle_eterna
    Return

PokemonCenterDailyTrainers_RoxyPostBattleVeilstone:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message pokemon_center_daily_trainers_roxy_post_battle_veilstone
    Return

PokemonCenterDailyTrainers_OliPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliPostBattleEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliPostBattleVeilstone
    Return

PokemonCenterDailyTrainers_OliPostBattleEterna:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message pokemon_center_daily_trainers_oli_post_battle_eterna
    Return

PokemonCenterDailyTrainers_OliPostBattleVeilstone:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message pokemon_center_daily_trainers_oli_post_battle_veilstone
    Return

PokemonCenterDailyTrainers_ArielPostBattle:
    SetFlag FLAG_DEFEATED_POKE_KID_ARIEL
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielPostBattleMessageFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielPostBattleMessageSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielPostBattleMessageResortArea
    Return

PokemonCenterDailyTrainers_ArielPostBattleMessageFloaroma:
    Message pokemon_center_daily_trainers_ariel_post_battle_floaroma
    Return

PokemonCenterDailyTrainers_ArielPostBattleMessageSolaceon:
    Message pokemon_center_daily_trainers_ariel_post_battle_solaceon
    Return

PokemonCenterDailyTrainers_ArielPostBattleMessageResortArea:
    Message pokemon_center_daily_trainers_ariel_post_battle_resort_area
    Return

PokemonCenterDailyTrainers_ArturoPostBattle:
    SetFlag FLAG_DEFEATED_GUITARIST_ARTURO
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoPostBattleMessageCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoPostBattleMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoPostBattleMessageSunyshore
    Return

PokemonCenterDailyTrainers_ArturoPostBattleMessageCanalave:
    Message pokemon_center_daily_trainers_arturo_post_battle_canalave
    Return

PokemonCenterDailyTrainers_ArturoPostBattleMessagePastoria:
    Message pokemon_center_daily_trainers_arturo_post_battle_pastiora
    Return

PokemonCenterDailyTrainers_ArturoPostBattleMessageSunyshore:
    Message pokemon_center_daily_trainers_arturo_post_battle_sunyshore
    Return

PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageVeilstone
    Return

PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageEterna:
    Message pokemon_center_daily_trainers_roxy_not_enough_pokemon_eterna
    Return

PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageVeilstone:
    Message pokemon_center_daily_trainers_roxy_not_enough_pokemon_veilstone
    Return

PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageVeilstone
    Return

PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageEterna:
    Message pokemon_center_daily_trainers_oli_not_enough_pokemon_eterna
    Return

PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageVeilstone:
    Message pokemon_center_daily_trainers_oli_not_enough_pokemon_veilstone
    Return

PokemonCenterDailyTrainers_SetGraceTeam:
    SetVar VAR_TRAINER, TRAINER_IDOL_GRACE_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetGraceFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetGraceRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetGraceRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetGraceRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetGraceRematch4
    Return

PokemonCenterDailyTrainers_SetGraceFirstBattle:
    SetVar VAR_TRAINER, TRAINER_IDOL_GRACE
    Return

PokemonCenterDailyTrainers_SetGraceRematch1:
    SetVar VAR_TRAINER, TRAINER_IDOL_GRACE_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetGraceRematch2:
    SetVar VAR_TRAINER, TRAINER_IDOL_GRACE_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetGraceRematch3:
    SetVar VAR_TRAINER, TRAINER_IDOL_GRACE_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetGraceRematch4:
    SetVar VAR_TRAINER, TRAINER_IDOL_GRACE_REMATCH_4
    Return

PokemonCenterDailyTrainers_SetKinseyTeam:
    SetVar VAR_TRAINER, TRAINER_REPORTERS_KINSEY_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetKinseyFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetKinseyRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetKinseyRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetKinseyRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetKinseyRematch4
    Return

PokemonCenterDailyTrainers_SetKinseyFirstBattle:
    SetVar VAR_TRAINER, TRAINER_REPORTERS_KINSEY
    Return

PokemonCenterDailyTrainers_SetKinseyRematch1:
    SetVar VAR_TRAINER, TRAINER_REPORTERS_KINSEY_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetKinseyRematch2:
    SetVar VAR_TRAINER, TRAINER_REPORTERS_KINSEY_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetKinseyRematch3:
    SetVar VAR_TRAINER, TRAINER_REPORTERS_KINSEY_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetKinseyRematch4:
    SetVar VAR_TRAINER, TRAINER_REPORTERS_KINSEY_REMATCH_4
    Return

PokemonCenterDailyTrainers_SetTevinTeam:
    SetVar VAR_TRAINER, TRAINER_CAMERAMAN_TEVIN_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetTevinFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetTevinRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetTevinRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetTevinRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetTevinRematch4
    Return

PokemonCenterDailyTrainers_SetTevinFirstBattle:
    SetVar VAR_TRAINER, TRAINER_CAMERAMAN_TEVIN
    Return

PokemonCenterDailyTrainers_SetTevinRematch1:
    SetVar VAR_TRAINER, TRAINER_CAMERAMAN_TEVIN_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetTevinRematch2:
    SetVar VAR_TRAINER, TRAINER_CAMERAMAN_TEVIN_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetTevinRematch3:
    SetVar VAR_TRAINER, TRAINER_CAMERAMAN_TEVIN_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetTevinRematch4:
    SetVar VAR_TRAINER, TRAINER_CAMERAMAN_TEVIN_REMATCH_4
    Return

PokemonCenterDailyTrainers_SetLeeTeam:
    SetVar VAR_TRAINER, TRAINER_CLOWN_LEE_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetLeeFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetLeeRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetLeeRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetLeeRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetLeeRematch4
    Return

PokemonCenterDailyTrainers_SetLeeFirstBattle:
    SetVar VAR_TRAINER, TRAINER_CLOWN_LEE
    Return

PokemonCenterDailyTrainers_SetLeeRematch1:
    SetVar VAR_TRAINER, TRAINER_CLOWN_LEE_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetLeeRematch2:
    SetVar VAR_TRAINER, TRAINER_CLOWN_LEE_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetLeeRematch3:
    SetVar VAR_TRAINER, TRAINER_CLOWN_LEE_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetLeeRematch4:
    SetVar VAR_TRAINER, TRAINER_CLOWN_LEE_REMATCH_4
    Return

PokemonCenterDailyTrainers_SetRoxyAndOliTeam:
    SetVar VAR_TRAINER, TRAINER_INTERVIEWERS_ROXY_AND_OLI_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetRoxyAndOliFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetRoxyAndOliRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetRoxyAndOliRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetRoxyAndOliRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetRoxyAndOliRematch4
    Return

PokemonCenterDailyTrainers_SetRoxyAndOliFirstBattle:
    SetVar VAR_TRAINER, TRAINER_INTERVIEWERS_ROXY_AND_OLI
    Return

PokemonCenterDailyTrainers_SetRoxyAndOliRematch1:
    SetVar VAR_TRAINER, TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetRoxyAndOliRematch2:
    SetVar VAR_TRAINER, TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetRoxyAndOliRematch3:
    SetVar VAR_TRAINER, TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetRoxyAndOliRematch4:
    SetVar VAR_TRAINER, TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_4
    Return

PokemonCenterDailyTrainers_SetArielTeam:
    SetVar VAR_TRAINER, TRAINER_POKE_KID_ARIEL_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetArielFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetArielRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetArielRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetArielRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetArielRematch4
    Return

PokemonCenterDailyTrainers_SetArielFirstBattle:
    SetVar VAR_TRAINER, TRAINER_POKE_KID_ARIEL
    Return

PokemonCenterDailyTrainers_SetArielRematch1:
    SetVar VAR_TRAINER, TRAINER_POKE_KID_ARIEL_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetArielRematch2:
    SetVar VAR_TRAINER, TRAINER_POKE_KID_ARIEL_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetArielRematch3:
    SetVar VAR_TRAINER, TRAINER_POKE_KID_ARIEL_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetArielRematch4:
    SetVar VAR_TRAINER, TRAINER_POKE_KID_ARIEL_REMATCH_4
    Return

PokemonCenterDailyTrainers_SetArturoTeam:
    SetVar VAR_TRAINER, TRAINER_GUITARIST_ARTURO_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetArturoFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetArturoRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetArturoRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetArturoRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetArturoRematch4
    Return

PokemonCenterDailyTrainers_SetArturoFirstBattle:
    SetVar VAR_TRAINER, TRAINER_GUITARIST_ARTURO
    Return

PokemonCenterDailyTrainers_SetArturoRematch1:
    SetVar VAR_TRAINER, TRAINER_GUITARIST_ARTURO_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetArturoRematch2:
    SetVar VAR_TRAINER, TRAINER_GUITARIST_ARTURO_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetArturoRematch3:
    SetVar VAR_TRAINER, TRAINER_GUITARIST_ARTURO_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetArturoRematch4:
    SetVar VAR_TRAINER, TRAINER_GUITARIST_ARTURO_REMATCH_4
    Return

PokemonCenterDailyTrainers_CheckGraceDefeated:
    GoToIfSet FLAG_DEFEATED_IDOL_GRACE, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_CheckKinseyInPokemonCenter:
    GetCurrentMapID VAR_MAP_ID
    GoToIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckKinseyDefeated
    GoToIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckKinseyDefeated
    GoToIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_CheckKinseyDefeated
    Return

PokemonCenterDailyTrainers_CheckKinseyDefeated:
    GoToIfSet FLAG_DEFEATED_REPORTERS_KINSEY, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_CheckTevinOrRoxyAndOliDefeated:
    GetCurrentMapID VAR_MAP_ID
    GoToIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckRoxyAndOliInPokemonCenter
    GoToIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckRoxyAndOliInPokemonCenter
    GoToIfSet FLAG_DEFEATED_CAMERAMAN_TEVIN, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_CheckLeeDefeated:
    GoToIfSet FLAG_DEFEATED_CLOWN_LEE, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_CheckRoxyAndOliInPokemonCenter:
    GetCurrentMapID VAR_MAP_ID
    GoToIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckRoxyAndOliDefeated
    GoToIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_CheckRoxyAndOliDefeated
    Return

PokemonCenterDailyTrainers_CheckRoxyAndOliDefeated:
    GoToIfSet FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_CheckArielDefeated:
    GoToIfSet FLAG_DEFEATED_POKE_KID_ARIEL, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_CheckArturoDefeated:
    GoToIfSet FLAG_DEFEATED_GUITARIST_ARTURO, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
    Return

PokemonCenterDailyTrainers_TrainerAlreadyDefeated:
    SetVar VAR_DEFEATED, TRUE
    Return

    .byte 0
