#include "macros/scrcmd.inc"
#include "constants/battle_frontier.h"
#include "constants/menu.h"
#include "res/text/bank/battle_frontier_records.h"


    ScriptEntry FrontierRecords_BattleTower
    ScriptEntry FrontierRecords_BattleTowerDupe
    ScriptEntry FrontierRecords_BattleFactory
    ScriptEntry FrontierRecords_BattleHall
    ScriptEntry FrontierRecords_BattleCastle
    ScriptEntry FrontierRecords_BattleArcade
    ScriptEntryEnd

FrontierRecords_BattleTower:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, FRONTIER_RECORDS_APP_TOWER
    GoTo FrontierRecords_BattleTowerMenus
    End

FrontierRecords_BattleTowerMenus:
    Call FrontierRecords_WhichRecord
    Call FrontierRecords_SelectChallengeType
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, FrontierRecords_CloseAndExit
    GoToIfEq VAR_0x8008, MENU_CANCEL, FrontierRecords_CloseAndExit
    Call FrontierRecords_OpenRecordDisplay
    GoTo FrontierRecords_BattleTowerMenus
    End

FrontierRecords_BattleTowerDupe:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, FRONTIER_RECORDS_APP_TOWER
    GoTo FrontierRecords_BattleTowerMenusDupe
    End

FrontierRecords_BattleTowerMenusDupe:
    Call FrontierRecords_WhichRecord
    Call FrontierRecords_SelectChallengeType
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, FrontierRecords_CloseAndExit
    GoToIfEq VAR_0x8008, MENU_CANCEL, FrontierRecords_CloseAndExit
    Call FrontierRecords_OpenRecordDisplay
    GoTo FrontierRecords_BattleTowerMenusDupe
    End

FrontierRecords_BattleFactory:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, FRONTIER_RECORDS_APP_FACTORY
    GoTo FrontierRecords_BattleFactoryMenus
    End

FrontierRecords_BattleFactoryMenus:
    Call FrontierRecords_WhichRecord
    Call FrontierRecords_SelectChallengeType
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, FrontierRecords_CloseAndExit
    GoToIfEq VAR_0x8008, MENU_CANCEL, FrontierRecords_CloseAndExit
    Call FrontierRecords_OpenRecordDisplay
    GoTo FrontierRecords_BattleFactoryMenus
    End

FrontierRecords_BattleHall:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, FRONTIER_RECORDS_APP_HALL
    GoTo FrontierRecords_BattleHallMenus
    End

FrontierRecords_BattleHallMenus:
    Call FrontierRecords_WhichRecord
    Call FrontierRecords_SelectChallengeType
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, FrontierRecords_CloseAndExit
    GoToIfEq VAR_0x8008, MENU_CANCEL, FrontierRecords_CloseAndExit
    ScrCmd_2CC 1, VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0174
    ScrCmd_2CC 2, VAR_0x8001, VAR_RESULT
    BufferSpeciesNameFromVar 0, VAR_RESULT, 0, 0
    Message BattleFrontierRecords_Text_OnChallengeNow
    GoTo _017F
    End

_0174:
    Message BattleFrontierRecords_Text_WhichPokemon
    GoTo _017F
    End

_017F:
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8004, 0
    SetVar VAR_0x8005, 0
    GoTo _0199
    End

_0199:
    Call FrontierRecords_SelectStartingLetters
    GoToIfEq VAR_0x8002, 9, FrontierRecords_BattleHallMenus
    GoToIfEq VAR_0x8002, MENU_CANCEL, FrontierRecords_BattleHallMenus
    SetVar VAR_0x8003, 0
    SetVar VAR_0x8006, 0
    SetVar VAR_0x8007, 0
    GoTo _01D3
    End

_01D3:
    ShowBattleHallRecordMonSelectionMenu VAR_0x8001, VAR_0x8002, VAR_0x8003, VAR_0x8006, VAR_0x8007
    GoToIfEq VAR_0x8003, MENU_CANCEL, _0199
    Call FrontierRecords_OpenRecordDisplay
    Message BattleFrontierRecords_Text_WhichPokemon
    GoTo _01D3
    End

FrontierRecords_BattleCastle:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, FRONTIER_RECORDS_APP_CASTLE
    GoTo FrontierRecords_BattleCastleMenus
    End

FrontierRecords_BattleCastleMenus:
    Call FrontierRecords_WhichRecord
    Call FrontierRecords_SelectChallengeType
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, FrontierRecords_CloseAndExit
    GoToIfEq VAR_0x8008, MENU_CANCEL, FrontierRecords_CloseAndExit
    Call FrontierRecords_OpenRecordDisplay
    GoTo FrontierRecords_BattleCastleMenus
    End

FrontierRecords_BattleArcade:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, FRONTIER_RECORDS_APP_ARCADE
    GoTo FrontierRecords_BattleArcadeMenus
    End

FrontierRecords_BattleArcadeMenus:
    Call FrontierRecords_WhichRecord
    Call FrontierRecords_SelectChallengeType
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, FrontierRecords_CloseAndExit
    GoToIfEq VAR_0x8008, MENU_CANCEL, FrontierRecords_CloseAndExit
    Call FrontierRecords_OpenRecordDisplay
    GoTo FrontierRecords_BattleArcadeMenus
    End

FrontierRecords_WhichRecord:
    Message BattleFrontierRecords_Text_WhichRecord
    Return

FrontierRecords_SelectChallengeType:
    InitLocalTextMenu 31, 9, 0, VAR_0x8001
    SetMenuXOriginToRight
    AddMenuEntryImm BattleFrontierRecords_Text_Single, FRONTIER_CHALLENGE_SINGLE
    AddMenuEntryImm BattleFrontierRecords_Text_Double, FRONTIER_CHALLENGE_DOUBLE
    AddMenuEntryImm BattleFrontierRecords_Text_Multi, FRONTIER_CHALLENGE_MULTI
    AddMenuEntryImm BattleFrontierRecords_Text_Cancel, 3
    ShowMenu
    Return

FrontierRecords_SelectStartingLetters:
    InitLocalTextListMenu 25, 1, 0, VAR_0x8002
    AddListMenuEntry BattleFrontierRecords_Text_ABC, 0
    AddListMenuEntry BattleFrontierRecords_Text_DEF, 1
    AddListMenuEntry BattleFrontierRecords_Text_GHI, 2
    AddListMenuEntry BattleFrontierRecords_Text_JKL, 3
    AddListMenuEntry BattleFrontierRecords_Text_MNO, 4
    AddListMenuEntry BattleFrontierRecords_Text_PQR, 5
    AddListMenuEntry BattleFrontierRecords_Text_STU, 6
    AddListMenuEntry BattleFrontierRecords_Text_VWX, 7
    AddListMenuEntry BattleFrontierRecords_Text_YZ, 8
    AddListMenuEntry BattleFrontierRecords_Text_Exit, 9
    ShowListMenuRememberCursor VAR_0x8004, VAR_0x8005
    Return

FrontierRecords_CloseAndExit:
    CloseMessage
    GoTo FrontierRecords_Exit
    End

FrontierRecords_Exit:
    ReleaseAll
    End

FrontierRecords_OpenRecordDisplay:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    Call FrontierRecords_OpenApp
    Return

FrontierRecords_OpenApp:
    OpenFrontierRecordsApp VAR_0x8001, VAR_0x8000, VAR_0x8003
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    Return

    .balign 4, 0
