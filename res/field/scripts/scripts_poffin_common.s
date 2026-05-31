#include "macros/scrcmd.inc"
#include "res/text/bank/poffin_common.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry PoffinCommon_PokefanF
    ScriptEntryEnd
    End

PoffinCommon_PokefanF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoffinCommon_Text_HereYouMayCookPoffins
    GoTo PoffinCommon_CookingMenu
    End

PoffinCommon_CookingMenu:
    Message PoffinCommon_Text_CookAloneOrWithOthers
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm PoffinCommon_Text_Alone, 0
    AddMenuEntryImm PoffinCommon_Text_InAGroup, 1
    AddMenuEntryImm PoffinCommon_Text_Info, 2
    AddMenuEntryImm PoffinCommon_Text_Exit, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PoffinCommon_CookAlone
    GoToIfEq VAR_0x8008, 1, PoffinCommon_CookInAGroup
    GoToIfEq VAR_0x8008, 2, PoffinCommon_CookingInfo
    GoTo PoffinCommon_PleaseVisitAgain
    End

PoffinCommon_PleaseVisitAgain:
    Message PoffinCommon_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

PoffinCommon_CookingInfo:
    Message PoffinCommon_Text_ExplainCooking
    WaitButton
    GoTo PoffinCommon_CookingMenu
    End

PoffinCommon_FadeOut:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ReleaseAll
    Return

PoffinCommon_ReturnToFieldFadeIn:
    ReturnToField
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FadeScreenIn
    WaitFadeScreen
    Return

PoffinCommon_MustHavePoffinCase:
    Message PoffinCommon_Text_MustHavePoffinCase
    WaitButton
    CloseMessage
    ReleaseAll
    End

PoffinCommon_NoBerryToCook:
    Message PoffinCommon_Text_NoBerryToCook
    GoTo PoffinCommon_PleaseVisitAgain
    End

PoffinCommon_PoffinCaseIsFull:
    Message PoffinCommon_Text_PoffinCaseIsFull
    GoTo PoffinCommon_PleaseVisitAgain
    End

PoffinCommon_CookAlone:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoffinCommon_MustHavePoffinCase
    CheckCanCookPoffin VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PoffinCommon_NoBerryToCook
    GoToIfEq VAR_RESULT, 2, PoffinCommon_PoffinCaseIsFull
    WaitTime 30, VAR_RESULT
    Call PoffinCommon_FadeOut
    ScrCmd_1D7 0
    Call PoffinCommon_ReturnToFieldFadeIn
    GoTo PoffinCommon_PleaseVisitAgain
    End

PoffinCommon_CookInAGroup:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PoffinCommon_MustHavePoffinCase
    CheckCanCookPoffin VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PoffinCommon_NoBerryToCook
    GoToIfEq VAR_RESULT, 2, PoffinCommon_PoffinCaseIsFull
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, PoffinCommon_BecomeLeaderOrJoinGroup
    GoTo PoffinCommon_PleaseVisitAgain
    End

PoffinCommon_BecomeLeaderOrJoinGroup:
    Message PoffinCommon_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PoffinCommon_JoinGroup
    GoToIfEq VAR_0x8008, 1, PoffinCommon_BecomeLeader
    GoTo PoffinCommon_PleaseVisitAgain
    End

PoffinCommon_JoinGroup:
    Message PoffinCommon_Text_CommunicationsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PoffinCommon_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleClient 6, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, PoffinCommon_JoinGroupCancel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, PoffinCommon_JoinGroupError
    GoTo PoffinCommon_DoCookingInAGroup
    End

PoffinCommon_JoinGroupCancel:
    EndCommunication
    GoTo PoffinCommon_BecomeLeaderOrJoinGroup
    End

PoffinCommon_JoinGroupError:
    EndCommunication
    GoTo PoffinCommon_BecomeLeaderOrJoinGroup
    End

PoffinCommon_BecomeLeader:
    Message PoffinCommon_Text_CommunicationsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PoffinCommon_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleServer 6, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, PoffinCommon_BecomeLeaderCancel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, PoffinCommon_BecomeLeaderError
    GoTo PoffinCommon_DoCookingInAGroup
    End

PoffinCommon_BecomeLeaderCancel:
    EndCommunication
    GoTo PoffinCommon_BecomeLeaderOrJoinGroup
    End

PoffinCommon_BecomeLeaderError:
    EndCommunication
    GoTo PoffinCommon_BecomeLeaderOrJoinGroup
    End

PoffinCommon_DoCookingInAGroup:
    FadeScreenOut
    WaitFadeScreen
    ReleaseAll
    ScrCmd_1D7 1
    EndCommunication
    Call PoffinCommon_ReturnToFieldFadeIn
    GoTo PoffinCommon_PleaseVisitAgain
    End

    .balign 4, 0
