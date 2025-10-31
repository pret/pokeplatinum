#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_4f.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry VeilstoneStore4F_Attendant
    ScriptEntry VeilstoneStore4F_NinjaBoy
    ScriptEntry VeilstoneStore4F_Pokefan
    ScriptEntry VeilstoneStore4F_SchoolBoy
    ScriptEntry VeilstoneStore4F_TopDecorVendor
    ScriptEntry VeilstoneStore4F_BottomDecorVendor
    ScriptEntry VeilstoneStore4F_Directory
    ScriptEntryEnd

VeilstoneStore4F_Attendant:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckIsDepartmentStoreRegular VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, VeilstoneStore4F_AttendantPersonalized
    Message VeilstoneStore4F_Text_MayIHelpYou
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 1
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 0
    ShowMenu
    GoToIfEq VAR_RESULT, 1, _00C2
    GoTo VeilstoneStore4F_AttendantPleaseEnjoyYourself

VeilstoneStore4F_AttendantPersonalized:
    BufferPlayerName 0
    Message VeilstoneStore4F_Text_MayIHelpYouPersonalized
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 0
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 1
    ShowMenu
    GoToIfNe VAR_RESULT, 0, VeilstoneStore4F_AttendantPleaseEnjoyYourself
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, _00C2
    GoToIfEq VAR_RESULT, 1, _00CD
    GoToIfEq VAR_RESULT, 2, _00D8
    GoTo _00E3

VeilstoneStore4F_AttendantPleaseEnjoyYourself:
    Message VeilstoneStore4F_Text_PleaseEnjoyYourself
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C2:
    Message VeilstoneStore4F_Text_YellowCushionIsSoftAndFirm
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    Message VeilstoneStore4F_Text_SurprisedHowManyBuyCupboards
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    Message VeilstoneStore4F_Text_BuizelDollIsVeryPopular
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E3:
    Message VeilstoneStore4F_Text_MantykeDollHasBeenHotSeller
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore4F_NinjaBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore4F_Text_ChuckAQuickBallOrTimerBall
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore4F_Pokefan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore4F_Text_ThatBoySaysHeIsTrainingHisImage
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore4F_SchoolBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore4F_Text_NeedAnotherCopyOfGameToChallengePapa
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore4F_TopDecorVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartDecor MART_DECOR_ID_VEILSTONE_4F_UP
    ReleaseAll
    End

VeilstoneStore4F_BottomDecorVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartDecor MART_DECOR_ID_VEILSTONE_4F_DOWN
    ReleaseAll
    End

VeilstoneStore4F_Directory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore4F_Text_Directory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
