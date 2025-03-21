#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/rotoms_room.h"

    .data

    ScriptEntry _00ED
    ScriptEntry _0101
    ScriptEntry _0115
    ScriptEntry _0129
    ScriptEntry _013D
    ScriptEntry _07AA
    ScriptEntry _0030
    ScriptEntry _002E
    ScriptEntry _07BB
    ScriptEntry _0908
    ScriptEntry _081E
    ScriptEntryEnd

_002E:
    End

_0030:
    SetFlag 0x2BB
    SetFlag 0x2BC
    SetFlag 0x2BD
    SetFlag 0x2BE
    SetFlag 0x2BF
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, 0x4000
    GoToIfEq 0x4000, FALSE, _00A5
    ScrCmd_302 0x4000, 0x4001, 0x4002, 0x4003, 0x4004
    CallIfEq 0x4000, 0, _00CF
    CallIfEq 0x4001, 0, _00D5
    CallIfEq 0x4002, 0, _00DB
    CallIfEq 0x4003, 0, _00E1
    CallIfEq 0x4004, 0, _00E7
    End

_00A5:
    ScrCmd_18B 0, 4, 1
    ScrCmd_18B 1, 4, 1
    ScrCmd_18B 2, 4, 1
    ScrCmd_18B 3, 4, 1
    ScrCmd_18B 4, 4, 1
    End

_00CF:
    ClearFlag 0x2BB
    Return

_00D5:
    ClearFlag 0x2BC
    Return

_00DB:
    ClearFlag 0x2BD
    Return

_00E1:
    ClearFlag 0x2BE
    Return

_00E7:
    ClearFlag 0x2BF
    Return

_00ED:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 1
    GoTo _0151
    End

_0101:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 3
    GoTo _0151
    End

_0115:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 2
    GoTo _0151
    End

_0129:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 4
    GoTo _0151
    End

_013D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 5
    GoTo _0151
    End

_0151:
    PartyHasSpecies 0x800C, SPECIES_ROTOM
    GoToIfEq 0x800C, 0, _06DE
    CheckItem ITEM_SECRET_KEY, 1, 0x800C
    GoToIfEq 0x800C, 0, _06DE
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, 0x800C
    GoToIfEq 0x800C, FALSE, _06DE
    CallIfEq 0x8004, 1, _06C5
    CallIfEq 0x8004, 3, _06CA
    CallIfEq 0x8004, 2, _06CF
    CallIfEq 0x8004, 4, _06D4
    CallIfEq 0x8004, 5, _06D9
    ScrCmd_303 0x8003, 0x800C
    GoToIfGe 0x8003, 1, _0254
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0740
    GoTo _01F8
    End

_01F8:
    CallIfEq 0x8004, 1, _069D
    CallIfEq 0x8004, 3, _06A5
    CallIfEq 0x8004, 2, _06AD
    CallIfEq 0x8004, 4, _06B5
    CallIfEq 0x8004, 5, _06BD
    ScrCmd_2CB 0x800C, 0x1DF
    GoToIfEq 0x800C, 1, _03F5
    GoTo _0403
    End

_0254:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 14, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01F8
    GoToIfEq 0x8008, 2, _0295
    GoTo _0740
    End

_0295:
    ScrCmd_303 0x8003, 0x800C
    SetVar 0x8000, 0x800C
    GoToIfGe 0x8003, 2, _037B
    GoTo _02B6
    End

_02B6:
    BufferPartyMonNickname 0, 0x8000
    Message RotomsRoom_Text_PokemonEmergedFromTheMotor
    ScrCmd_304 0x8000, 0, 0, 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_305 0x8000, 0x8004
    CallIfEq 0x8004, 1, _0349
    CallIfEq 0x8004, 4, _0367
    CallIfEq 0x8004, 3, _0353
    CallIfEq 0x8004, 2, _035D
    CallIfEq 0x8004, 5, _0371
    GoTo _0325
    End

_0325:
    GetPlayerMapPos 0x8006, 0x8007
    GetPlayerDir 0x800C
    Warp MAP_HEADER_ROTOMS_ROOM, 0, 0x8006, 0x8007, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0349:
    ClearFlag 0x2BB
    AddObject 0
    Return

_0353:
    ClearFlag 0x2BD
    AddObject 2
    Return

_035D:
    ClearFlag 0x2BC
    AddObject 3
    Return

_0367:
    ClearFlag 0x2BE
    AddObject 1
    Return

_0371:
    ClearFlag 0x2BF
    AddObject 4
    Return

_037B:
    Message RotomsRoom_Text_WhichRotomAreYouChoosing
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _03F3
    ScrCmd_198 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _045D
    GoToIfNe 0x800C, 0x1DF, _0468
    ScrCmd_305 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _03E8
    GoTo _02B6
    End

_03E8:
    Message RotomsRoom_Text_ThatRotomHasntEnteredAMotor
    GoTo _07A2
    End

_03F3:
    End

_03F5:
    GetPartyIDWithSpecies 0x8000, SPECIES_ROTOM
    GoTo _0473
    End

_0403:
    Message RotomsRoom_Text_WhichRotomAreYouChoosing
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _0740
    ScrCmd_198 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _045D
    GoToIfNe 0x800C, 0x1DF, _0468
    GoTo _0473
    End

_045D:
    Message RotomsRoom_Text_AnEggCantEnterAMotor
    GoTo _07A2
    End

_0468:
    Message RotomsRoom_Text_ThatPokemonCantEnterAMotor
    GoTo _07A2
    End

_0473:
    ScrCmd_099 0x800C, 0x13B, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 59, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 56, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 0x193, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 0x1B5, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    GoToIfEq 0x800C, 4, _051B
    GoTo _050B
    End

_04FD:
    SetVar 0x8002, 0
    GoTo _050B
    End

_050B:
    BufferPartyMonNickname 0, 0x8000
    Message RotomsRoom_Text_PokemonEnteredMotor
    GoTo _0613
    End

_051B:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_PokemonEnteredTheMotorTryingToLearnMove
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _05FE
    GoTo _0541
    End

_0541:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_2E7 0x8000, 0x8001
    ScrCmd_2E8 0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 4, _05DD
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    BufferMoveName 1, 0x800C
    Message RotomsRoom_Text_TheMoveWillBeForgotten
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _05FE
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    BufferMoveName 1, 0x800C
    Message RotomsRoom_Text_12andPoof
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, 0x800C
    Message RotomsRoom_Text_PokemonForgotHowToUseMove
    WaitTime 32, 0x800C
    PlaySound SEQ_FANFA1
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_PokemonLearnedMove
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0613
    End

_05DD:
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_GiveUpLearningMove
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0541
    GoTo _05FE
    End

_05FE:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_PokemonDidNotLearnMoveEmergedFromTheMotor
    GoTo _07A2
    End

_0613:
    ScrCmd_304 0x8000, 0x8002, 0x8001, 0x8004
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    CallIfEq 0x8004, 1, _067F
    CallIfEq 0x8004, 4, _0691
    CallIfEq 0x8004, 3, _0685
    CallIfEq 0x8004, 2, _068B
    CallIfEq 0x8004, 5, _0697
    GoToIfUnset 119, _080C
    GoTo _0325
    End

_067F:
    RemoveObject 0
    Return

_0685:
    RemoveObject 2
    Return

_068B:
    RemoveObject 3
    Return

_0691:
    RemoveObject 1
    Return

_0697:
    RemoveObject 4
    Return

_069D:
    SetVar 0x8001, 0x13B
    Return

_06A5:
    SetVar 0x8001, 59
    Return

_06AD:
    SetVar 0x8001, 56
    Return

_06B5:
    SetVar 0x8001, 0x193
    Return

_06BD:
    SetVar 0x8001, 0x1B5
    Return

_06C5:
    Message RotomsRoom_Text_ItsAMicrowaveOvenRotomWantsToGoIntoTheMotor
    Return

_06CA:
    Message RotomsRoom_Text_ItsARefrigeratorRotomWantsToGoIntoTheMotor
    Return

_06CF:
    Message RotomsRoom_Text_ItsAWashingMachineRotomWantsToGoIntoTheMotor
    Return

_06D4:
    Message RotomsRoom_Text_ItsARotaryFanRotomWantsToGoIntoTheMotor
    Return

_06D9:
    Message RotomsRoom_Text_ItsALawnMowerRotomWantsToGoIntoTheMotor
    Return

_06DE:
    CallIfEq 0x8004, 1, _0727
    CallIfEq 0x8004, 3, _072C
    CallIfEq 0x8004, 2, _0731
    CallIfEq 0x8004, 4, _0736
    CallIfEq 0x8004, 5, _073B
    GoTo _07A2
    End

_0727:
    Message RotomsRoom_Text_ItsAMicrowaveOven
    Return

_072C:
    Message RotomsRoom_Text_ItsARefrigerator
    Return

_0731:
    Message RotomsRoom_Text_ItsAWashingMachine
    Return

_0736:
    Message RotomsRoom_Text_ItsARotaryFan
    Return

_073B:
    Message RotomsRoom_Text_ItsALawnMower
    Return

_0740:
    CallIfEq 0x8004, 1, _0789
    CallIfEq 0x8004, 3, _078E
    CallIfEq 0x8004, 2, _0793
    CallIfEq 0x8004, 4, _0798
    CallIfEq 0x8004, 5, _079D
    GoTo _07A2
    End

_0789:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheMicrowaveOvensMotor
    Return

_078E:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheRefrigeratorsMotor
    Return

_0793:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheWashingMachinesMotor
    Return

_0798:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheRotaryFansMotor
    Return

_079D:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheLawnMowersMotor
    Return

_07A2:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07AA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message RotomsRoom_Text_ThereIsAMysteriousNotebookHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07BB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_303 0x8003, 0x800C
    GoToIfEq 0x8003, 0, _0801
    Message RotomsRoom_Text_OhRotomWantsToRevertToItsOriginalForm
    ScrCmd_041 31, 15, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0295
    CloseMessage
    ReleaseAll
    End

_0801:
    Message RotomsRoom_Text_ThereWasAnApplianceHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_080C:
    SetFlag 119
    SetVar 0x411B, 1
    GoTo _0325
    End

_081E:
    LockAll
    ClearFlag 0x2C0
    PlayFanfare SEQ_SE_DP_KAIDAN2
    AddObject 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _08AC
    ApplyMovement 6, _08D4
    WaitMovement
    BufferPlayerName 0
    Message RotomsRoom_Text_RowanAhImagineFindingYouHere
    CloseMessage
    GetPlayerMapPos 0x8006, 0x8007
    CallIfGe 0x8006, 10, _08A8
    CallIfLe 0x8006, 4, _08AA
    ApplyMovement 6, _08DC
    WaitMovement
    Message RotomsRoom_Text_APokemonThatSlipsIntoElectricAppliancesYouSay
    CloseMessage
    ApplyMovement 6, _08F4
    WaitMovement
    Message RotomsRoom_Text_AnywayThisRotomWhatAnInterestingPokemon
    CloseMessage
    ApplyMovement 6, _0900
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x411B, 2
    ReleaseAll
    End

_08A8:
    Return

_08AA:
    Return

    .balign 4, 0
_08AC:
    MoveAction_033
    MoveAction_075
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_08D4:
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_014 2
    MoveAction_032
    MoveAction_063 2
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_08F4:
    MoveAction_014 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0900:
    MoveAction_013 2
    EndMovement

_0908:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message RotomsRoom_Text_ItsAnOldNotebook
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_OurEncounterWasASuddenOne
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_ThePokemonHoveredInTheAir
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_ThePokemonOnlyWishedToBeFriends
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_RotomIsAPokemonThatIsSensational
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_RotomAndIBecameFastFriends
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_AFeelingOfMischiefGotTheBetterOfMe
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_WhenICameToRotomDisappeared
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_MySearchForRotomCarriedMeFarFromHome
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_TheRobotEyesLitUpHappilyAsIHeldIt
    GoTo _09D5
    End

_09CF:
    CloseMessage
    ReleaseAll
    End

_09D5:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
