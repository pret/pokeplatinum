#include "macros/scrcmd.inc"
#include "res/text/bank/counterpart_talk.h"
#include "res/field/events/events_sandgem_town.h"


    ScriptEntry CounterpartTalk_Counterpart
    ScriptEntryEnd

CounterpartTalk_Counterpart:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_0x8004
    GoToIfEq VAR_SANDGEM_TOWN_LAB_STATE, 3, CounterpartTalk_CheckVisitedSunyshore
    GoTo CounterpartTalk_CounterpartMessage
    End

CounterpartTalk_CheckVisitedSunyshore:
    GoToIfUnset FLAG_FIRST_ARRIVAL_SUNYSHORE_CITY, CounterpartTalk_YouMetCreatorsOfSinnoh
    GoTo CounterpartTalk_CounterpartMessage
    End

CounterpartTalk_YouMetCreatorsOfSinnoh:
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnYouMetCreatorsOfSinnoh
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasYouMetCreatorsOfSinnoh
    WaitButton
    CloseMessage
    ReleaseAll
    End

CounterpartTalk_DawnYouMetCreatorsOfSinnoh:
    BufferPlayerName 0
    Message CounterpartTalk_Text_DawnYouMetCreatorsOfSinnoh
    Return

CounterpartTalk_LucasYouMetCreatorsOfSinnoh:
    BufferPlayerName 0
    Message CounterpartTalk_Text_LucasYouMetCreatorsOfSinnoh
    Return

CounterpartTalk_CounterpartMessage:
    CheckIsTodayPlayerBirthday VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CounterpartTalk_PlayerBirthday
    CheckLocalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CounterpartTalk_CompletedLocalDex
    GoToIfUnset FLAG_UNLOCKED_DIALGA_PALKIA_SPEAR_PILLAR, CounterpartTalk_ElderHasSomethingToTell
    Call CounterpartTalk_CheckDialgaOrPalkiaAtSpearPillar
    GoToIfEq VAR_RESULT, FALSE, CounterpartTalk_CongratulationsChamp
    GoTo CounterpartTalk_DialgaOrPalkiaAtSpearPillar

CounterpartTalk_CompletedLocalDex:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CounterpartTalk_SeenEverySinnohPokemon
    GoToIfUnset FLAG_TALKED_TO_COUNTERPART_SISTER_WITH_NATIONAL_DEX, CounterpartTalk_HaveYouTalkedToMySister
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_NORTHWEST_HOUSE_EEVEE, CounterpartTalk_HaveYouMetBebe
    CheckNationalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CounterpartTalk_CompletedNationalDex
    GoTo CounterpartTalk_PlayerHasPokeRadar
    End

CounterpartTalk_PlayerHasPokeRadar:
    GoToIfUnset FLAG_STARTED_COUNTERPART_POKE_RADAR_TUTORIAL, CounterpartTalk_StartPokeRadarTutorial
    GetRandom VAR_RESULT, 3
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, CounterpartTalk_HowsYourPokeRadar
    GoToIfEq VAR_0x8008, 1, CounterpartTalk_SometimesPatchOfGrassSparkles
    GoToIfEq VAR_0x8008, 2, CounterpartTalk_HelpingWithNationalPokedex
    End

CounterpartTalk_PlayerBirthday:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnIsTodayYourBirthday
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasIsItYourBirthdayToday
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_CompletedNationalDex:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnCompletedNationalDex
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasCompletedNationalDex
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_HelpingWithNationalPokedex:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnHelpingWithNationalPokedex
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasHelpingWithNationalPokedex
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_SometimesPatchOfGrassSparkles:
    SetFlag FLAG_DUMMY_0x0148
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnSometimesPatchOfGrassSparkles
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasSometimesPatchOfGrassSparkles
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_HowsYourPokeRadar:
    SetFlag FLAG_DUMMY_0x0147
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnHowsYourPokeRadar
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasHowsYourPokeRadar
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_StartPokeRadarTutorial:
    SetFlag FLAG_STARTED_COUNTERPART_POKE_RADAR_TUTORIAL
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnIllShowUsePokeRadar
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasIllTeachUsePokeRadar
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, CounterpartTalk_CounterpartLeaveNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, CounterpartTalk_CounterpartLeaveSouth
    GoToIfEq VAR_RESULT, DIR_WEST, CounterpartTalk_CounterpartLeaveWest
    GoToIfEq VAR_RESULT, DIR_EAST, CounterpartTalk_CounterpartLeaveEast
    End

CounterpartTalk_CounterpartLeaveNorth:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, CounterpartTalk_Movement_CounterpartLeaveNorthSouthEast
    ApplyMovement LOCALID_PLAYER, CounterpartTalk_Movement_PlayerWatchCounterpartLeaveNorthSouth
    WaitMovement
    GoTo CounterpartTalk_RemoveCounterpart
    End

CounterpartTalk_CounterpartLeaveSouth:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, CounterpartTalk_Movement_CounterpartLeaveNorthSouthEast
    ApplyMovement LOCALID_PLAYER, CounterpartTalk_Movement_PlayerWatchCounterpartLeaveNorthSouth
    WaitMovement
    GoTo CounterpartTalk_RemoveCounterpart
    End

CounterpartTalk_CounterpartLeaveWest:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, CounterpartTalk_Movement_CounterpartLeaveWest
    ApplyMovement LOCALID_PLAYER, CounterpartTalk_Movement_PlayerWatchCounterpartLeaveWest
    WaitMovement
    GoTo CounterpartTalk_RemoveCounterpart
    End

CounterpartTalk_CounterpartLeaveEast:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, CounterpartTalk_Movement_CounterpartLeaveNorthSouthEast
    WaitMovement
    GoTo CounterpartTalk_RemoveCounterpart
    End

CounterpartTalk_RemoveCounterpart:
    RemoveObject LOCALID_SANDGEM_COUNTERPART
    ClearFlag FLAG_HIDE_ROUTE_202_COUNTERPART
    SetVar VAR_ROUTE_202_STATE, 2
    ReleaseAll
    End

CounterpartTalk_HaveYouMetBebe:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnAreYouAcquaintedWithBebe
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasHaveYouMetBebe
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_HaveYouTalkedToMySister:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnHaveYouChattedWithMySister
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasHaveYouSeenMySister
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_SeenEverySinnohPokemon:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnSeenEverySinnohPokemon
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasSeenEverySinnohPokemon
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_ElderHasSomethingToTell:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnElderHasSomethingToTell
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasElderHasSomethingToTell
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_DialgaOrPalkiaAtSpearPillar:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnDialgaOrPalkiaAtSpearPillar
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasDialgaOrPalkiaAtSpearPillar
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_CongratulationsChamp:
    BufferPlayerName 0
    CallIfEq VAR_0x8004, GENDER_MALE, CounterpartTalk_DawnCongratulationsChamp
    CallIfEq VAR_0x8004, GENDER_FEMALE, CounterpartTalk_LucasCongratulationsChamp
    GoTo CounterpartTalk_CounterpartEnd
    End

CounterpartTalk_CounterpartEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

CounterpartTalk_DawnIsTodayYourBirthday:
    Message CounterpartTalk_Text_DawnIsTodayYourBirthday
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CounterpartTalk_DawnCongratulations
    GoToIfEq VAR_RESULT, MENU_NO, CounterpartTalk_DawnWhatMadeMeThinkBirthday
    End

CounterpartTalk_DawnCongratulations:
    Message CounterpartTalk_Text_DawnCongratulations
    Return

CounterpartTalk_DawnWhatMadeMeThinkBirthday:
    Message CounterpartTalk_Text_DawnWhatMadeMeThinkBirthday
    Return

CounterpartTalk_LucasIsItYourBirthdayToday:
    Message CounterpartTalk_Text_LucasIsItYourBirthdayToday
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CounterpartTalk_LucasCongratulations
    GoToIfEq VAR_RESULT, MENU_NO, CounterpartTalk_LucasWhatMadeMeThinkBirthday
    End

CounterpartTalk_LucasCongratulations:
    Message CounterpartTalk_Text_LucasCongratulations
    Return

CounterpartTalk_LucasWhatMadeMeThinkBirthday:
    Message CounterpartTalk_Text_LucasWhatMadeMeThinkBirthday
    Return

CounterpartTalk_DawnCongratulationsChamp:
    Message CounterpartTalk_Text_DawnCongratulationsChamp
    Return

CounterpartTalk_LucasCongratulationsChamp:
    Message CounterpartTalk_Text_LucasCongratulationsChamp
    Return

CounterpartTalk_DawnDialgaOrPalkiaAtSpearPillar:
    Message CounterpartTalk_Text_DawnDialgaOrPalkiaAtSpearPillar
    Return

CounterpartTalk_LucasDialgaOrPalkiaAtSpearPillar:
    Message CounterpartTalk_Text_LucasDialgaOrPalkiaAtSpearPillar
    Return

CounterpartTalk_DawnElderHasSomethingToTell:
    Message CounterpartTalk_Text_DawnElderHasSomethingToTell
    Return

CounterpartTalk_LucasElderHasSomethingToTell:
    Message CounterpartTalk_Text_LucasElderHasSomethingToTell
    Return

CounterpartTalk_DawnSeenEverySinnohPokemon:
    Message CounterpartTalk_Text_DawnSeenEverySinnohPokemon
    Return

CounterpartTalk_LucasSeenEverySinnohPokemon:
    Message CounterpartTalk_Text_LucasSeenEverySinnohPokemon
    Return

CounterpartTalk_DawnHaveYouChattedWithMySister:
    Message CounterpartTalk_Text_DawnHaveYouChattedWithMySister
    Return

CounterpartTalk_LucasHaveYouSeenMySister:
    Message CounterpartTalk_Text_LucasHaveYouSeenMySister
    Return

CounterpartTalk_DawnAreYouAcquaintedWithBebe:
    Message CounterpartTalk_Text_DawnAreYouAcquaintedWithBebe
    Return

CounterpartTalk_LucasHaveYouMetBebe:
    Message CounterpartTalk_Text_LucasHaveYouMetBebe
    Return

CounterpartTalk_DawnIllShowUsePokeRadar:
    Message CounterpartTalk_Text_DawnIllShowUsePokeRadar
    Return

CounterpartTalk_LucasIllTeachUsePokeRadar:
    Message CounterpartTalk_Text_LucasIllTeachUsePokeRadar
    Return

CounterpartTalk_DawnHowsYourPokeRadar:
    Message CounterpartTalk_Text_DawnHowsYourPokeRadar
    Return

CounterpartTalk_LucasHowsYourPokeRadar:
    Message CounterpartTalk_Text_LucasHowsYourPokeRadar
    Return

CounterpartTalk_DawnSometimesPatchOfGrassSparkles:
    Message CounterpartTalk_Text_DawnSometimesPatchOfGrassSparkles
    Return

CounterpartTalk_LucasSometimesPatchOfGrassSparkles:
    Message CounterpartTalk_Text_LucasSometimesPatchOfGrassSparkles
    Return

CounterpartTalk_DawnHelpingWithNationalPokedex:
    Message CounterpartTalk_Text_DawnHelpingWithNationalPokedex
    Return

CounterpartTalk_LucasHelpingWithNationalPokedex:
    Message CounterpartTalk_Text_LucasHelpingWithNationalPokedex
    Return

CounterpartTalk_DawnCompletedNationalDex:
    Message CounterpartTalk_Text_DawnCompletedNationalDex
    Return

CounterpartTalk_LucasCompletedNationalDex:
    Message CounterpartTalk_Text_LucasCompletedNationalDex
    Return

    .balign 4, 0
CounterpartTalk_Movement_CounterpartLeaveNorthSouthEast:
    WalkNormalEast 10
    EndMovement

    .balign 4, 0
CounterpartTalk_Movement_CounterpartLeaveWest:
    WalkNormalNorth
    WalkNormalEast 10
    EndMovement

    .balign 4, 0
CounterpartTalk_Movement_PlayerWatchCounterpartLeaveNorthSouth:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CounterpartTalk_Movement_PlayerWatchCounterpartLeaveWest:
    Delay8
    WalkOnSpotNormalNorth
    WalkOnSpotNormalEast
    EndMovement

CounterpartTalk_CheckDialgaOrPalkiaAtSpearPillar:
    GoToIfEq VAR_SPEAR_PILLAR_DIALGA_STATE, 1, CounterpartTalk_DialgaOrPalkiaNotAtSpearPillar
    GoToIfEq VAR_SPEAR_PILLAR_PALKIA_STATE, 1, CounterpartTalk_DialgaOrPalkiaNotAtSpearPillar
    SetVar VAR_RESULT, TRUE
    Return

CounterpartTalk_DialgaOrPalkiaNotAtSpearPillar:
    SetVar VAR_RESULT, FALSE
    Return

    .balign 4, 0
