#include "macros/scrcmd.inc"
#include "constants/great_marsh_tram.h"
#include "res/text/bank/safari_game.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry SafariGame_InitTram
    ScriptEntry SafariGame_OutOfSteps
    ScriptEntry SafariGame_OutOfSafariBalls_Field
    ScriptEntry SafariGame_QuickTramStationArea1
    ScriptEntry SafariGame_QuickTramStationArea2
    ScriptEntry SafariGame_QuickTramStationArea3
    ScriptEntry SafariGame_QuickTramStationArea4
    ScriptEntry SafariGame_QuickTramStationArea5
    ScriptEntry SafariGame_QuickTramStationArea6
    ScriptEntry SafariGame_OutOfSafariBalls_Battle
    ScriptEntry SafariGame_CallQuickTramToLocation
    ScriptEntry SafariGame_RideQuickTramToLocation
    ScriptEntry SafariGame_RideQuickTramToAreas1And2
    ScriptEntry SafariGame_RideQuickTramToAreas3And4
    ScriptEntry SafariGame_RideQuickTramToAreas5And6
    ScriptEntry SafariGame_RideQuickTramToArea1
    ScriptEntry SafariGame_RideQuickTramToArea2
    ScriptEntry SafariGame_RideQuickTramToArea3
    ScriptEntry SafariGame_RideQuickTramToArea4
    ScriptEntry SafariGame_RideQuickTramToArea5
    ScriptEntry SafariGame_RideQuickTramToArea6
    ScriptEntry SafariGame_Retire
    ScriptEntry SafariGame_OutOfRoomForPokemon
    ScriptEntryEnd

SafariGame_InitTram:
    InitGreatMarshTram
    End

SafariGame_OutOfSteps:
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    Message SafariGame_Text_TimesUp
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    EndSafariGame
    ReleaseAll
    End

SafariGame_OutOfSafariBalls_Battle:
    LockAll
    SetVar VAR_UNK_0x40DA, 2
    EndSafariGame
    ReleaseAll
    End

SafariGame_OutOfSafariBalls_Field:
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    Message SafariGame_Text_OutOfSafariBalls
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    EndSafariGame
    ReleaseAll
    End

SafariGame_OutOfRoomForPokemon:
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    Message SafariGame_Text_OutOfRoomForPokemon
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    EndSafariGame
    ReleaseAll
    End

SafariGame_Retire:
    LockAll
    Message SafariGame_Text_WouldYouLikeToExit
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfNe VAR_RESULT, MENU_YES, SafariGame_NoRetire
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    EndSafariGame
    ReleaseAll
    End

SafariGame_NoRetire:
    ReleaseAll
    End

SafariGame_QuickTramStationArea1:
    LockAll
    Message SafariGame_Text_QuickTramPrompt
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Area3, 0
    AddMenuEntryImm MenuEntries_Text_Area4, 1
    AddMenuEntryImm MenuEntries_Text_Area5, 2
    AddMenuEntryImm MenuEntries_Text_Area6, 3
    AddMenuEntryImm MenuEntries_Text_GreatMarshTramExit, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_RESULT, 4, SafariGame_ExitQuickTramMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, SafariGame_ExitQuickTramMenu
    CheckGreatMarshTramLocation GREAT_MARSH_TRAM_LOCATION_AREA_1_2, VAR_0x8004
    SetVar VAR_0x8005, GREAT_MARSH_TRAM_LOCATION_AREA_1_2
    CallIfEq VAR_0x8004, GREAT_MARSH_TRAM_NOT_AT_LOCATION, SafariGame_CallQuickTramToLocation
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_RESULT, 0, SafariGame_BoardQuickTramFromWestGoingToOddArea
    CallIfEq VAR_RESULT, 1, SafariGame_BoardQuickTramFromWestGoingToEvenArea
    CallIfEq VAR_RESULT, 2, SafariGame_BoardQuickTramFromWestGoingToOddArea
    CallIfEq VAR_RESULT, 3, SafariGame_BoardQuickTramFromWestGoingToEvenArea
    CallIfEq VAR_RESULT, 0, SafariGame_RideQuickTramToArea3
    CallIfEq VAR_RESULT, 1, SafariGame_RideQuickTramToArea4
    CallIfEq VAR_RESULT, 2, SafariGame_RideQuickTramToArea5
    CallIfEq VAR_RESULT, 3, SafariGame_RideQuickTramToArea6
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

SafariGame_QuickTramStationArea2:
    LockAll
    Message SafariGame_Text_QuickTramPrompt
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Area3, 0
    AddMenuEntryImm MenuEntries_Text_Area4, 1
    AddMenuEntryImm MenuEntries_Text_Area5, 2
    AddMenuEntryImm MenuEntries_Text_Area6, 3
    AddMenuEntryImm MenuEntries_Text_GreatMarshTramExit, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_RESULT, 4, SafariGame_ExitQuickTramMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, SafariGame_ExitQuickTramMenu
    CheckGreatMarshTramLocation GREAT_MARSH_TRAM_LOCATION_AREA_1_2, VAR_0x8004
    SetVar VAR_0x8005, GREAT_MARSH_TRAM_LOCATION_AREA_1_2
    CallIfEq VAR_0x8004, GREAT_MARSH_TRAM_NOT_AT_LOCATION, SafariGame_CallQuickTramToLocation
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_RESULT, 0, SafariGame_BoardQuickTramFromEastGoingToOddArea
    CallIfEq VAR_RESULT, 1, SafariGame_BoardQuickTramFromEastGoingToEvenArea
    CallIfEq VAR_RESULT, 2, SafariGame_BoardQuickTramFromEastGoingToOddArea
    CallIfEq VAR_RESULT, 3, SafariGame_BoardQuickTramFromEastGoingToEvenArea
    CallIfEq VAR_RESULT, 0, SafariGame_RideQuickTramToArea3
    CallIfEq VAR_RESULT, 1, SafariGame_RideQuickTramToArea4
    CallIfEq VAR_RESULT, 2, SafariGame_RideQuickTramToArea5
    CallIfEq VAR_RESULT, 3, SafariGame_RideQuickTramToArea6
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

SafariGame_QuickTramStationArea3:
    LockAll
    Message SafariGame_Text_QuickTramPrompt
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Area1, 0
    AddMenuEntryImm MenuEntries_Text_Area2, 1
    AddMenuEntryImm MenuEntries_Text_Area5, 2
    AddMenuEntryImm MenuEntries_Text_Area6, 3
    AddMenuEntryImm MenuEntries_Text_GreatMarshTramExit, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_RESULT, 4, SafariGame_ExitQuickTramMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, SafariGame_ExitQuickTramMenu
    CheckGreatMarshTramLocation GREAT_MARSH_TRAM_LOCATION_AREA_3_4, VAR_0x8004
    SetVar VAR_0x8005, GREAT_MARSH_TRAM_LOCATION_AREA_3_4
    CallIfEq VAR_0x8004, GREAT_MARSH_TRAM_NOT_AT_LOCATION, SafariGame_CallQuickTramToLocation
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_RESULT, 0, SafariGame_BoardQuickTramFromWestGoingToOddArea
    CallIfEq VAR_RESULT, 1, SafariGame_BoardQuickTramFromWestGoingToEvenArea
    CallIfEq VAR_RESULT, 2, SafariGame_BoardQuickTramFromWestGoingToOddArea
    CallIfEq VAR_RESULT, 3, SafariGame_BoardQuickTramFromWestGoingToEvenArea
    CallIfEq VAR_RESULT, 0, SafariGame_RideQuickTramToArea1
    CallIfEq VAR_RESULT, 1, SafariGame_RideQuickTramToArea2
    CallIfEq VAR_RESULT, 2, SafariGame_RideQuickTramToArea5
    CallIfEq VAR_RESULT, 3, SafariGame_RideQuickTramToArea6
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

SafariGame_QuickTramStationArea4:
    LockAll
    Message SafariGame_Text_QuickTramPrompt
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Area1, 0
    AddMenuEntryImm MenuEntries_Text_Area2, 1
    AddMenuEntryImm MenuEntries_Text_Area5, 2
    AddMenuEntryImm MenuEntries_Text_Area6, 3
    AddMenuEntryImm MenuEntries_Text_GreatMarshTramExit, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_RESULT, 4, SafariGame_ExitQuickTramMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, SafariGame_ExitQuickTramMenu
    CheckGreatMarshTramLocation GREAT_MARSH_TRAM_LOCATION_AREA_3_4, VAR_0x8004
    SetVar VAR_0x8005, GREAT_MARSH_TRAM_LOCATION_AREA_3_4
    CallIfEq VAR_0x8004, GREAT_MARSH_TRAM_NOT_AT_LOCATION, SafariGame_CallQuickTramToLocation
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_RESULT, 0, SafariGame_BoardQuickTramFromEastGoingToOddArea
    CallIfEq VAR_RESULT, 1, SafariGame_BoardQuickTramFromEastGoingToEvenArea
    CallIfEq VAR_RESULT, 2, SafariGame_BoardQuickTramFromEastGoingToOddArea
    CallIfEq VAR_RESULT, 3, SafariGame_BoardQuickTramFromEastGoingToEvenArea
    CallIfEq VAR_RESULT, 0, SafariGame_RideQuickTramToArea1
    CallIfEq VAR_RESULT, 1, SafariGame_RideQuickTramToArea2
    CallIfEq VAR_RESULT, 2, SafariGame_RideQuickTramToArea5
    CallIfEq VAR_RESULT, 3, SafariGame_RideQuickTramToArea6
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

SafariGame_QuickTramStationArea5:
    LockAll
    Message SafariGame_Text_QuickTramPrompt
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Area1, 0
    AddMenuEntryImm MenuEntries_Text_Area2, 1
    AddMenuEntryImm MenuEntries_Text_Area3, 2
    AddMenuEntryImm MenuEntries_Text_Area4, 3
    AddMenuEntryImm MenuEntries_Text_GreatMarshTramExit, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_RESULT, 4, SafariGame_ExitQuickTramMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, SafariGame_ExitQuickTramMenu
    CheckGreatMarshTramLocation GREAT_MARSH_TRAM_LOCATION_AREA_5_6, VAR_0x8004
    SetVar VAR_0x8005, GREAT_MARSH_TRAM_LOCATION_AREA_5_6
    CallIfEq VAR_0x8004, GREAT_MARSH_TRAM_NOT_AT_LOCATION, SafariGame_CallQuickTramToLocation
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_RESULT, 0, SafariGame_BoardQuickTramFromWestGoingToOddArea
    CallIfEq VAR_RESULT, 1, SafariGame_BoardQuickTramFromWestGoingToEvenArea
    CallIfEq VAR_RESULT, 2, SafariGame_BoardQuickTramFromWestGoingToOddArea
    CallIfEq VAR_RESULT, 3, SafariGame_BoardQuickTramFromWestGoingToEvenArea
    CallIfEq VAR_RESULT, 0, SafariGame_RideQuickTramToArea1
    CallIfEq VAR_RESULT, 1, SafariGame_RideQuickTramToArea2
    CallIfEq VAR_RESULT, 2, SafariGame_RideQuickTramToArea3
    CallIfEq VAR_RESULT, 3, SafariGame_RideQuickTramToArea4
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

SafariGame_QuickTramStationArea6:
    LockAll
    Message SafariGame_Text_QuickTramPrompt
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Area1, 0
    AddMenuEntryImm MenuEntries_Text_Area2, 1
    AddMenuEntryImm MenuEntries_Text_Area3, 2
    AddMenuEntryImm MenuEntries_Text_Area4, 3
    AddMenuEntryImm MenuEntries_Text_GreatMarshTramExit, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_RESULT, 4, SafariGame_ExitQuickTramMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, SafariGame_ExitQuickTramMenu
    CheckGreatMarshTramLocation GREAT_MARSH_TRAM_LOCATION_AREA_5_6, VAR_0x8004
    SetVar VAR_0x8005, GREAT_MARSH_TRAM_LOCATION_AREA_5_6
    CallIfEq VAR_0x8004, GREAT_MARSH_TRAM_NOT_AT_LOCATION, SafariGame_CallQuickTramToLocation
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_RESULT, 0, SafariGame_BoardQuickTramFromEastGoingToOddArea
    CallIfEq VAR_RESULT, 1, SafariGame_BoardQuickTramFromEastGoingToEvenArea
    CallIfEq VAR_RESULT, 2, SafariGame_BoardQuickTramFromEastGoingToOddArea
    CallIfEq VAR_RESULT, 3, SafariGame_BoardQuickTramFromEastGoingToEvenArea
    CallIfEq VAR_RESULT, 0, SafariGame_RideQuickTramToArea1
    CallIfEq VAR_RESULT, 1, SafariGame_RideQuickTramToArea2
    CallIfEq VAR_RESULT, 2, SafariGame_RideQuickTramToArea3
    CallIfEq VAR_RESULT, 3, SafariGame_RideQuickTramToArea4
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

SafariGame_CallQuickTramToLocation:
    MoveGreatMarshTram VAR_0x8005, GREAT_MARSH_TRAM_MOVEMENT_CALL
    Return

SafariGame_RideQuickTramToLocation:
    MoveGreatMarshTram VAR_0x8006, GREAT_MARSH_TRAM_MOVEMENT_RIDE
    Return

SafariGame_RideQuickTramToAreas1And2:
    SetVar VAR_0x8006, GREAT_MARSH_TRAM_LOCATION_AREA_1_2
    Call SafariGame_RideQuickTramToLocation
    Return

SafariGame_RideQuickTramToAreas3And4:
    SetVar VAR_0x8006, GREAT_MARSH_TRAM_LOCATION_AREA_3_4
    Call SafariGame_RideQuickTramToLocation
    Return

SafariGame_RideQuickTramToAreas5And6:
    SetVar VAR_0x8006, GREAT_MARSH_TRAM_LOCATION_AREA_5_6
    Call SafariGame_RideQuickTramToLocation
    Return

SafariGame_RideQuickTramToArea1:
    Call SafariGame_RideQuickTramToAreas1And2
    Call SafariGame_LeaveQuickTramWest
    Return

SafariGame_RideQuickTramToArea2:
    Call SafariGame_RideQuickTramToAreas1And2
    Call SafariGame_LeaveQuickTramEast
    Return

SafariGame_RideQuickTramToArea3:
    Call SafariGame_RideQuickTramToAreas3And4
    Call SafariGame_LeaveQuickTramWest
    Return

SafariGame_RideQuickTramToArea4:
    Call SafariGame_RideQuickTramToAreas3And4
    Call SafariGame_LeaveQuickTramEast
    Return

SafariGame_RideQuickTramToArea5:
    Call SafariGame_RideQuickTramToAreas5And6
    Call SafariGame_LeaveQuickTramWest
    Return

SafariGame_RideQuickTramToArea6:
    Call SafariGame_RideQuickTramToAreas5And6
    Call SafariGame_LeaveQuickTramEast
    Return

SafariGame_ExitQuickTramMenu:
    BufferPlayerName 0
    Message SafariGame_Text_PlayerDidntBoard
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SafariGame_BoardQuickTramFromWestGoingToOddArea:
    ApplyMovement LOCALID_PLAYER, SafariGame_BoardQuickTramFromWestGoingToOddArea_Movement
    WaitMovement
    Return

SafariGame_BoardQuickTramFromWestGoingToEvenArea:
    ApplyMovement LOCALID_PLAYER, SafariGame_BoardQuickTramFromWestGoingToEvenArea_Movement
    WaitMovement
    Return

SafariGame_BoardQuickTramFromEastGoingToEvenArea:
    ApplyMovement LOCALID_PLAYER, SafariGame_BoardQuickTramFromEastGoingToEvenArea_Movement
    WaitMovement
    Return

SafariGame_BoardQuickTramFromEastGoingToOddArea:
    ApplyMovement LOCALID_PLAYER, SafariGame_BoardQuickTramFromEastGoingToOddArea_Movement
    WaitMovement
    Return

SafariGame_LeaveQuickTramEast:
    ApplyMovement LOCALID_PLAYER, SafariGame_LeaveQuickTramEast_Movement
    WaitMovement
    Return

SafariGame_LeaveQuickTramWest:
    ApplyMovement LOCALID_PLAYER, SafariGame_LeaveQuickTramWest_Movement
    WaitMovement
    Return

    .balign 4, 0
SafariGame_BoardQuickTramFromWestGoingToOddArea_Movement:
    WalkNormalEast 3
    SetInvisible
    EndMovement

    .balign 4, 0
SafariGame_BoardQuickTramFromWestGoingToEvenArea_Movement:
    WalkNormalEast 4
    SetInvisible
    EndMovement

    .balign 4, 0
SafariGame_BoardQuickTramFromEastGoingToEvenArea_Movement:
    WalkNormalWest 3
    SetInvisible
    EndMovement

    .balign 4, 0
SafariGame_BoardQuickTramFromEastGoingToOddArea_Movement:
    WalkNormalWest 4
    SetInvisible
    EndMovement

    .balign 4, 0
SafariGame_LeaveQuickTramEast_Movement:
    SetVisible
    WalkNormalEast 3
    EndMovement

    .balign 4, 0
SafariGame_LeaveQuickTramWest_Movement:
    SetVisible
    WalkNormalWest 3
    EndMovement
