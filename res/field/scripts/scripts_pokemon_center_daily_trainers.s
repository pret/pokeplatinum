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

#define VAR_MAP_ID     VAR_MAP_LOCAL_1
#define VAR_NPC_1      VAR_OBJ_GFX_ID_A
#define VAR_NPC_2      VAR_OBJ_GFX_ID_B

#define VAR_TWO_MONS   VAR_0x8000
#define VAR_IS_NPC_2   VAR_0x8004
#define VAR_TRAINER    VAR_0x8005
#define VAR_DEFEATED   VAR_0x8006


    ScriptEntry PokemonCenterDailyTrainers_CheckUnlockedVSSeeker
    ScriptEntry PokemonCenterDailyTrainers_FirstNPC
    ScriptEntry PokemonCenterDailyTrainers_SecondNPC
    ScriptEntryEnd

PokemonCenterDailyTrainers_CheckUnlockedVSSeeker:
    SetFlag FLAG_UNK_0x0183
    SetFlag FLAG_UNK_0x0184
    GoToIfUnset FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_End
    Call PokemonCenterDailyTrainers_SetNPCs
    End

PokemonCenterDailyTrainers_End:
    End

PokemonCenterDailyTrainers_SetNPCs:
    GetDayOfWeek VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SUNDAY, PokemonCenterDailyTrainers_SetNPCsSunday
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_MONDAY, PokemonCenterDailyTrainers_SetNPCsMonday
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_TUESDAY, PokemonCenterDailyTrainers_SetNPCsTuesday
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_WEDNESDAY, PokemonCenterDailyTrainers_SetNPCsWednesday
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_THURSDAY, PokemonCenterDailyTrainers_SetNPCsThursday
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_FRIDAY, PokemonCenterDailyTrainers_SetNPCsFriday
    CallIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SATURDAY, PokemonCenterDailyTrainers_SetNPCsSaturday
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
    ClearFlag FLAG_UNK_0x0183
    SetVar VAR_NPC_1, GRACE
    Return

PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey:
    ClearFlag FLAG_UNK_0x0183
    ClearFlag FLAG_UNK_0x0184
    SetVar VAR_NPC_1, KINSEY
    SetVar VAR_NPC_2, TEVIN
    Return

PokemonCenterDailyTrainers_SetNPCsTevinAndKinsey2:
    ClearFlag FLAG_UNK_0x0183
    ClearFlag FLAG_UNK_0x0184
    SetVar VAR_NPC_1, KINSEY
    SetVar VAR_NPC_2, TEVIN
    Return

PokemonCenterDailyTrainers_SetNPCLee:
    ClearFlag FLAG_UNK_0x0183
    SetVar VAR_NPC_1, LEE
    Return

PokemonCenterDailyTrainers_SetNPCsRoxyAndOli:
    ClearFlag FLAG_UNK_0x0183
    ClearFlag FLAG_UNK_0x0184
    SetVar VAR_NPC_1, ROXY_AND_OLI_1
    SetVar VAR_NPC_2, ROXY_AND_OLI_2
    Return

PokemonCenterDailyTrainers_SetNPCAriel:
    ClearFlag FLAG_UNK_0x0183
    SetVar VAR_NPC_1, ARIEL
    Return

PokemonCenterDailyTrainers_SetNPCArturo:
    ClearFlag FLAG_UNK_0x0183
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonCenterDailyTrainers_BattleAccepted
    GoToIfEq VAR_RESULT, MENU_NO, PokemonCenterDailyTrainers_BattleDeclined
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
    GoToIfEq VAR_NPC_1, ROXY_AND_OLI_1, PokemonCenterDailyTrainers_CheckHasTwoAliveMons
    Return

PokemonCenterDailyTrainers_CheckHasTwoAliveMons:
    CheckHasTwoAliveMons VAR_TWO_MONS
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
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonCenterDailyTrainers_BattleLost
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
    BlackOutFromBattle
    ReleaseAll
    End

PokemonCenterDailyTrainers_GraceIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceIntroMessageOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceIntroMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceIntroMessageSnowpoint
    Return

PokemonCenterDailyTrainers_GraceIntroMessageOreburgh:
    Message PokemonCenterDailyTrainers_Text_GraceOreburgh_Intro
    Return

PokemonCenterDailyTrainers_GraceIntroMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_GracePastiora_Intro
    Return

PokemonCenterDailyTrainers_GraceIntroMessageSnowpoint:
    Message PokemonCenterDailyTrainers_Text_GraceSnowpoint_Intro
    Return

PokemonCenterDailyTrainers_KinseyIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyIntroMessageJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyIntroMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyIntroMessageFightArea
    Return

PokemonCenterDailyTrainers_KinseyIntroMessageJubilife:
    Message PokemonCenterDailyTrainers_Text_KinseyJubilife_Intro
    Return

PokemonCenterDailyTrainers_KinseyIntroMessageHearthome:
    Message PokemonCenterDailyTrainers_Text_KinseyHearthome_Intro
    Return

PokemonCenterDailyTrainers_KinseyIntroMessageFightArea:
    Message PokemonCenterDailyTrainers_Text_KinseyFightArea_Intro
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
    Message PokemonCenterDailyTrainers_Text_TevinJubilife_Intro
    Return

PokemonCenterDailyTrainers_TevinIntroMessageHearthome:
    Message PokemonCenterDailyTrainers_Text_TevinHearthome_Intro
    Return

PokemonCenterDailyTrainers_TevinIntroMessageFightArea:
    Message PokemonCenterDailyTrainers_Text_TevinFightArea_Intro
    Return

PokemonCenterDailyTrainers_LeeIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeIntroMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeIntroMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeeIntroMessageCelestic
    Return

PokemonCenterDailyTrainers_LeeIntroMessageHearthome:
    Message PokemonCenterDailyTrainers_Text_LeeHearthome_Intro
    Return

PokemonCenterDailyTrainers_LeeIntroMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_LeePastoria_Intro
    Return

PokemonCenterDailyTrainers_LeeIntroMessageCelestic:
    Message PokemonCenterDailyTrainers_Text_LeeCelestic_Intro
    Return

PokemonCenterDailyTrainers_RoxyIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyIntroMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyIntroMessageVeilstone
    Return

PokemonCenterDailyTrainers_RoxyIntroMessageEterna:
    Message PokemonCenterDailyTrainers_Text_RoxyEterna_Intro
    Return

PokemonCenterDailyTrainers_RoxyIntroMessageVeilstone:
    Message PokemonCenterDailyTrainers_Text_RoxyVeilstone_Intro
    Return

PokemonCenterDailyTrainers_OliIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliIntroMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliIntroMessageVeilstone
    Return

PokemonCenterDailyTrainers_OliIntroMessageEterna:
    Message PokemonCenterDailyTrainers_Text_OliEterna_Intro
    Return

PokemonCenterDailyTrainers_OliIntroMessageVeilstone:
    Message PokemonCenterDailyTrainers_Text_OliVeilstone_Intro
    Return

PokemonCenterDailyTrainers_ArielIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielIntroMessageFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielIntroMessageSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielIntroMessageResortArea
    Return

PokemonCenterDailyTrainers_ArielIntroMessageFloaroma:
    Message PokemonCenterDailyTrainers_Text_ArielFloaroma_Intro
    Return

PokemonCenterDailyTrainers_ArielIntroMessageSolaceon:
    Message PokemonCenterDailyTrainers_Text_ArielSolaceon_Intro
    Return

PokemonCenterDailyTrainers_ArielIntroMessageResortArea:
    Message PokemonCenterDailyTrainers_Text_ArielResortArea_Intro
    Return

PokemonCenterDailyTrainers_ArturoIntroMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoIntroMessageCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoIntroMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoIntroMessageSunyshore
    Return

PokemonCenterDailyTrainers_ArturoIntroMessageCanalave:
    Message PokemonCenterDailyTrainers_Text_ArturoCanalave_Intro
    Return

PokemonCenterDailyTrainers_ArturoIntroMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_ArturoPastoria_Intro
    Return

PokemonCenterDailyTrainers_ArturoIntroMessageSunyshore:
    Message PokemonCenterDailyTrainers_Text_ArturoSunyshore_Intro
    Return

PokemonCenterDailyTrainers_GraceBattleAccepted:
    Call PokemonCenterDailyTrainers_SetGraceTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleAcceptedMessageOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleAcceptedMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleAcceptedMessageSnowpoint
    Return

PokemonCenterDailyTrainers_GraceBattleAcceptedMessageOreburgh:
    Message PokemonCenterDailyTrainers_Text_GraceOreburgh_BattleAccepted
    Return

PokemonCenterDailyTrainers_GraceBattleAcceptedMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_GracePastiora_BattleAccepted
    Return

PokemonCenterDailyTrainers_GraceBattleAcceptedMessageSnowpoint:
    Message PokemonCenterDailyTrainers_Text_GraceSnowpoint_BattleAccepted
    Return

PokemonCenterDailyTrainers_KinseyBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleAcceptedJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleAcceptedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleAcceptedFightArea
    Return

PokemonCenterDailyTrainers_KinseyBattleAcceptedJubilife:
    Call PokemonCenterDailyTrainers_SetKinseyTeam
    Message PokemonCenterDailyTrainers_Text_KinseyJubilife_BattleAccepted
    Return

PokemonCenterDailyTrainers_KinseyBattleAcceptedHearthome:
    Call PokemonCenterDailyTrainers_SetKinseyTeam
    Message PokemonCenterDailyTrainers_Text_KinseyHearthome_BattleAccepted
    Return

PokemonCenterDailyTrainers_KinseyBattleAcceptedFightArea:
    Call PokemonCenterDailyTrainers_SetKinseyTeam
    Message PokemonCenterDailyTrainers_Text_KinseyFightArea_BattleAccepted
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
    Message PokemonCenterDailyTrainers_Text_TevinJubilife_BattleAccepted
    Return

PokemonCenterDailyTrainers_TevinBattleAcceptedHearthome:
    Call PokemonCenterDailyTrainers_SetTevinTeam
    Message PokemonCenterDailyTrainers_Text_TevinHearthome_BattleAccepted
    Return

PokemonCenterDailyTrainers_TevinBattleAcceptedFightArea:
    Call PokemonCenterDailyTrainers_SetTevinTeam
    Message PokemonCenterDailyTrainers_Text_TevinFightArea_BattleAccepted
    Return

PokemonCenterDailyTrainers_LeeBattleAccepted:
    Call PokemonCenterDailyTrainers_SetLeeTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleAcceptedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleAcceptedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleAcceptedCelestic
    Return

PokemonCenterDailyTrainers_LeeBattleAcceptedHearthome:
    Message PokemonCenterDailyTrainers_Text_LeeHearthome_BattleAccepted
    Return

PokemonCenterDailyTrainers_LeeBattleAcceptedPastoria:
    Message PokemonCenterDailyTrainers_Text_LeePastiora_BattleAccepted
    Return

PokemonCenterDailyTrainers_LeeBattleAcceptedCelestic:
    Message PokemonCenterDailyTrainers_Text_LeeCelestic_BattleAccepted
    Return

PokemonCenterDailyTrainers_RoxyBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleAcceptedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleAcceptedVeilstone
    Return

PokemonCenterDailyTrainers_RoxyBattleAcceptedEterna:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message PokemonCenterDailyTrainers_Text_RoxyEterna_BattleAccepted
    Return

PokemonCenterDailyTrainers_RoxyBattleAcceptedVeilstone:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message PokemonCenterDailyTrainers_Text_RoxyVeilstone_BattleAccepted
    Return

PokemonCenterDailyTrainers_OliBattleAccepted:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleAcceptedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleAcceptedVeilstone
    Return

PokemonCenterDailyTrainers_OliBattleAcceptedEterna:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message PokemonCenterDailyTrainers_Text_OliEterna_BattleAccepted
    Return

PokemonCenterDailyTrainers_OliBattleAcceptedVeilstone:
    Call PokemonCenterDailyTrainers_SetRoxyAndOliTeam
    Message PokemonCenterDailyTrainers_Text_OliVeilstone_BattleAccepted
    Return

PokemonCenterDailyTrainers_ArielBattleAccepted:
    Call PokemonCenterDailyTrainers_SetArielTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleAcceptedFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleAcceptedSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleAcceptedResortArea
    Return

PokemonCenterDailyTrainers_ArielBattleAcceptedFloaroma:
    Message PokemonCenterDailyTrainers_Text_ArielFloaroma_BattleAccepted
    Return

PokemonCenterDailyTrainers_ArielBattleAcceptedSolaceon:
    Message PokemonCenterDailyTrainers_Text_ArielSolaceon_BattleAccepted
    Return

PokemonCenterDailyTrainers_ArielBattleAcceptedResortArea:
    Message PokemonCenterDailyTrainers_Text_ArielResortArea_BattleAccepted
    Return

PokemonCenterDailyTrainers_ArturoBattleAccepted:
    Call PokemonCenterDailyTrainers_SetArturoTeam
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleAcceptedCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleAcceptedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleAcceptedSunyshore
    Return

PokemonCenterDailyTrainers_ArturoBattleAcceptedCanalave:
    Message PokemonCenterDailyTrainers_Text_ArturoCanalave_BattleAccepted
    Return

PokemonCenterDailyTrainers_ArturoBattleAcceptedPastoria:
    Message PokemonCenterDailyTrainers_Text_ArturoPastiora_BattleAccepted
    Return

PokemonCenterDailyTrainers_ArturoBattleAcceptedSunyshore:
    Message PokemonCenterDailyTrainers_Text_ArturoSunyshore_BattleAccepted
    Return

PokemonCenterDailyTrainers_GraceBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleDeclinedOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleDeclinedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GraceBattleDeclinedSnowpoint
    Return

PokemonCenterDailyTrainers_GraceBattleDeclinedOreburgh:
    Message PokemonCenterDailyTrainers_Text_GraceOreburgh_BattleDeclined
    Return

PokemonCenterDailyTrainers_GraceBattleDeclinedPastoria:
    Message PokemonCenterDailyTrainers_Text_GracePastiora_BattleDeclined
    Return

PokemonCenterDailyTrainers_GraceBattleDeclinedSnowpoint:
    Message PokemonCenterDailyTrainers_Text_GraceSnowpoint_BattleDeclined
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleDeclinedJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleDeclinedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyBattleDeclinedFightArea
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclinedJubilife:
    Message PokemonCenterDailyTrainers_Text_KinseyJubilife_BattleDeclined
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclinedHearthome:
    Message PokemonCenterDailyTrainers_Text_KinseyHearthome_BattleDeclined
    Return

PokemonCenterDailyTrainers_KinseyBattleDeclinedFightArea:
    Message PokemonCenterDailyTrainers_Text_KinseyFightArea_BattleDeclined
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
    Message PokemonCenterDailyTrainers_Text_TevinJubilife_BattleDeclined
    Return

PokemonCenterDailyTrainers_KevinBattleDeclinedHearthome:
    Message PokemonCenterDailyTrainers_Text_TevinHearthome_BattleDeclined
    Return

PokemonCenterDailyTrainers_KevinBattleDeclinedFightArea:
    Message PokemonCenterDailyTrainers_Text_TevinFightArea_BattleDeclined
    Return

PokemonCenterDailyTrainers_LeeBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleDeclinedHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleDeclinedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeeBattleDeclinedCelestic
    Return

PokemonCenterDailyTrainers_LeeBattleDeclinedHearthome:
    Message PokemonCenterDailyTrainers_Text_LeeHearthome_BattleDeclined
    Return

PokemonCenterDailyTrainers_LeeBattleDeclinedPastoria:
    Message PokemonCenterDailyTrainers_Text_LeePastiora_BattleDeclined
    Return

PokemonCenterDailyTrainers_LeeBattleDeclinedCelestic:
    Message PokemonCenterDailyTrainers_Text_LeeCelestic_BattleDeclined
    Return

PokemonCenterDailyTrainers_RoxyBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleDeclinedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyBattleDeclinedVeilstone
    Return

PokemonCenterDailyTrainers_RoxyBattleDeclinedEterna:
    Message PokemonCenterDailyTrainers_Text_RoxyEterna_BattleDeclined
    Return

PokemonCenterDailyTrainers_RoxyBattleDeclinedVeilstone:
    Message PokemonCenterDailyTrainers_Text_RoxyVeilstone_BattleDeclined
    Return

PokemonCenterDailyTrainers_OliBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleDeclinedEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliBattleDeclinedVeilstone
    Return

PokemonCenterDailyTrainers_OliBattleDeclinedEterna:
    Message PokemonCenterDailyTrainers_Text_OliEterna_BattleDeclined
    Return

PokemonCenterDailyTrainers_OliBattleDeclinedVeilstone:
    Message PokemonCenterDailyTrainers_Text_OliVeilstone_BattleDeclined
    Return

PokemonCenterDailyTrainers_ArielBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleDeclinedFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleDeclinedSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielBattleDeclinedResortArea
    Return

PokemonCenterDailyTrainers_ArielBattleDeclinedFloaroma:
    Message PokemonCenterDailyTrainers_Text_ArielFloaroma_BattleDeclined
    Return

PokemonCenterDailyTrainers_ArielBattleDeclinedSolaceon:
    Message PokemonCenterDailyTrainers_Text_ArielSolaceon_BattleDeclined
    Return

PokemonCenterDailyTrainers_ArielBattleDeclinedResortArea:
    Message PokemonCenterDailyTrainers_Text_ArielResortArea_BattleDeclined
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclined:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleDeclinedCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleDeclinedPastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoBattleDeclinedSunyshore
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclinedCanalave:
    Message PokemonCenterDailyTrainers_Text_ArturoCalanave_BattleDeclined
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclinedPastoria:
    Message PokemonCenterDailyTrainers_Text_ArturoPastiora_BattleDeclined
    Return

PokemonCenterDailyTrainers_ArturoBattleDeclinedSunyshore:
    Message PokemonCenterDailyTrainers_Text_ArturoSunyshore_BattleDeclined
    Return

PokemonCenterDailyTrainers_GracePostBattle:
    SetFlag FLAG_DEFEATED_IDOL_GRACE
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GracePostBattleMessageOreburgh
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GracePostBattleMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_GracePostBattleMessageSnowpoint
    Return

PokemonCenterDailyTrainers_GracePostBattleMessageOreburgh:
    Message PokemonCenterDailyTrainers_Text_GraceOreburgh_PostBattle
    Return

PokemonCenterDailyTrainers_GracePostBattleMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_GracePastiora_PostBattle
    Return

PokemonCenterDailyTrainers_GracePostBattleMessageSnowpoint:
    Message PokemonCenterDailyTrainers_Text_GraceSnowpoint_PostBattle
    Return

PokemonCenterDailyTrainers_KinseyPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyPostBattleJubilife
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyPostBattleHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_KinseyPostBattleFightArea
    Return

PokemonCenterDailyTrainers_KinseyPostBattleJubilife:
    SetFlag FLAG_DEFEATED_REPORTER_KINSEY
    Message PokemonCenterDailyTrainers_Text_KinseyJubilife_PostBattle
    Return

PokemonCenterDailyTrainers_KinseyPostBattleHearthome:
    SetFlag FLAG_DEFEATED_REPORTER_KINSEY
    Message PokemonCenterDailyTrainers_Text_KinseyHearthome_PostBattle
    Return

PokemonCenterDailyTrainers_KinseyPostBattleFightArea:
    SetFlag FLAG_DEFEATED_REPORTER_KINSEY
    Message PokemonCenterDailyTrainers_Text_KinseyFightArea_PostBattle
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
    Message PokemonCenterDailyTrainers_Text_TevinJubilife_PostBattle
    Return

PokemonCenterDailyTrainers_TevinPostBattleHearthome:
    SetFlag FLAG_DEFEATED_CAMERAMAN_TEVIN
    Message PokemonCenterDailyTrainers_Text_TevinHearthome_PostBattle
    Return

PokemonCenterDailyTrainers_TevinPostBattleFightArea:
    SetFlag FLAG_DEFEATED_CAMERAMAN_TEVIN
    Message PokemonCenterDailyTrainers_Text_TevinFightArea_PostBattle
    Return

PokemonCenterDailyTrainers_LeePostBattle:
    SetFlag FLAG_DEFEATED_CLOWN_LEE
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeePostBattleMessageHearthome
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_LeePostBattleMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_LeePostBattleMessageCelestic
    Return

PokemonCenterDailyTrainers_LeePostBattleMessageHearthome:
    Message PokemonCenterDailyTrainers_Text_LeeHearthome_PostBattle
    Return

PokemonCenterDailyTrainers_LeePostBattleMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_LeePastiora_PostBattle
    Return

PokemonCenterDailyTrainers_LeePostBattleMessageCelestic:
    Message PokemonCenterDailyTrainers_Text_LeeCelestic_PostBattle
    Return

PokemonCenterDailyTrainers_RoxyPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyPostBattleEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyPostBattleVeilstone
    Return

PokemonCenterDailyTrainers_RoxyPostBattleEterna:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message PokemonCenterDailyTrainers_Text_RoxyEterna_PostBattle
    Return

PokemonCenterDailyTrainers_RoxyPostBattleVeilstone:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message PokemonCenterDailyTrainers_Text_RoxyVeilstone_PostBattle
    Return

PokemonCenterDailyTrainers_OliPostBattle:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliPostBattleEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliPostBattleVeilstone
    Return

PokemonCenterDailyTrainers_OliPostBattleEterna:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message PokemonCenterDailyTrainers_Text_OliEterna_PostBattle
    Return

PokemonCenterDailyTrainers_OliPostBattleVeilstone:
    SetFlag FLAG_DEFEATED_INTERVIEWERS_ROXY_AND_OLI
    Message PokemonCenterDailyTrainers_Text_OliVeilstone_PostBattle
    Return

PokemonCenterDailyTrainers_ArielPostBattle:
    SetFlag FLAG_DEFEATED_POKE_KID_ARIEL
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielPostBattleMessageFloaroma
    CallIfEq VAR_MAP_ID, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, PokemonCenterDailyTrainers_ArielPostBattleMessageSolaceon
    CallIfEq VAR_MAP_ID, MAP_HEADER_RESORT_AREA_POKECENTER_1F, PokemonCenterDailyTrainers_ArielPostBattleMessageResortArea
    Return

PokemonCenterDailyTrainers_ArielPostBattleMessageFloaroma:
    Message PokemonCenterDailyTrainers_Text_ArielFloaroma_PostBattle
    Return

PokemonCenterDailyTrainers_ArielPostBattleMessageSolaceon:
    Message PokemonCenterDailyTrainers_Text_ArielSolaceon_PostBattle
    Return

PokemonCenterDailyTrainers_ArielPostBattleMessageResortArea:
    Message PokemonCenterDailyTrainers_Text_ArielResortArea_PostBattle
    Return

PokemonCenterDailyTrainers_ArturoPostBattle:
    SetFlag FLAG_DEFEATED_GUITARIST_ARTURO
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoPostBattleMessageCanalave
    CallIfEq VAR_MAP_ID, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoPostBattleMessagePastoria
    CallIfEq VAR_MAP_ID, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_ArturoPostBattleMessageSunyshore
    Return

PokemonCenterDailyTrainers_ArturoPostBattleMessageCanalave:
    Message PokemonCenterDailyTrainers_Text_ArturoCanalave_PostBattle
    Return

PokemonCenterDailyTrainers_ArturoPostBattleMessagePastoria:
    Message PokemonCenterDailyTrainers_Text_ArturoPastiora_PostBattle
    Return

PokemonCenterDailyTrainers_ArturoPostBattleMessageSunyshore:
    Message PokemonCenterDailyTrainers_Text_ArturoSunyshore_PostBattle
    Return

PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageVeilstone
    Return

PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageEterna:
    Message PokemonCenterDailyTrainers_Text_RoxyEterna_NotEnoughPokemon
    Return

PokemonCenterDailyTrainers_RoxyNotEnoughAliveMonsMessageVeilstone:
    Message PokemonCenterDailyTrainers_Text_RoxyVeilstone_NotEnoughPokemon
    Return

PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessage:
    GetCurrentMapID VAR_MAP_ID
    CallIfEq VAR_MAP_ID, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageEterna
    CallIfEq VAR_MAP_ID, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageVeilstone
    Return

PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageEterna:
    Message PokemonCenterDailyTrainers_Text_OliEterna_NotEnoughPokemon
    Return

PokemonCenterDailyTrainers_OliNotEnoughAliveMonsMessageVeilstone:
    Message PokemonCenterDailyTrainers_Text_OliVeilstone_NotEnoughPokemon
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
    SetVar VAR_TRAINER, TRAINER_REPORTER_KINSEY_UNUSED
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_1, PokemonCenterDailyTrainers_SetKinseyFirstBattle
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_2, PokemonCenterDailyTrainers_SetKinseyRematch1
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_3, PokemonCenterDailyTrainers_SetKinseyRematch2
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_4, PokemonCenterDailyTrainers_SetKinseyRematch3
    CallIfSet FLAG_UNLOCKED_VS_SEEKER_LVL_5, PokemonCenterDailyTrainers_SetKinseyRematch4
    Return

PokemonCenterDailyTrainers_SetKinseyFirstBattle:
    SetVar VAR_TRAINER, TRAINER_REPORTER_KINSEY
    Return

PokemonCenterDailyTrainers_SetKinseyRematch1:
    SetVar VAR_TRAINER, TRAINER_REPORTER_KINSEY_REMATCH_1
    Return

PokemonCenterDailyTrainers_SetKinseyRematch2:
    SetVar VAR_TRAINER, TRAINER_REPORTER_KINSEY_REMATCH_2
    Return

PokemonCenterDailyTrainers_SetKinseyRematch3:
    SetVar VAR_TRAINER, TRAINER_REPORTER_KINSEY_REMATCH_3
    Return

PokemonCenterDailyTrainers_SetKinseyRematch4:
    SetVar VAR_TRAINER, TRAINER_REPORTER_KINSEY_REMATCH_4
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
    GoToIfSet FLAG_DEFEATED_REPORTER_KINSEY, PokemonCenterDailyTrainers_TrainerAlreadyDefeated
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

    .balign 4, 0
