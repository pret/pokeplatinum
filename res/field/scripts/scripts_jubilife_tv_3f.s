#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_3f.h"


    ScriptEntry _0012
    ScriptEntry _0054
    ScriptEntry _0067
    ScriptEntry _007A
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 0, _0044
    WaitMovement
    Message 0
    CloseMessage
    WaitTime 8, VAR_RESULT
    ApplyMovement 0, _004C
    WaitMovement
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0044:
    FaceEast
    EndMovement

    .balign 4, 0
_004C:
    FaceWest
    EndMovement

_0054:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _009C
    GoTo _015B

_009C:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_244 0, VAR_RESULT, VAR_0x8000, VAR_0x8001
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _015B
    Message 5
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_244 0, VAR_RESULT, VAR_0x8002, VAR_0x8003
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _015B
    ScrCmd_249 VAR_RESULT, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003
    GoToIfEq VAR_RESULT, 0xFF, _0131
    GoToIfEq VAR_RESULT, 0, _0131
    GoTo _0166

_0131:
    ScrCmd_2AA VAR_RESULT, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003
    GoToIfEq VAR_RESULT, 0, _0150
    GoTo _0171

_0150:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015B:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0166:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0171:
    Message 9
    WaitABXPadPress
    UnlockMysteryGift
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
