#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _006D
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0035
    GoToIfEq VAR_0x800C, MENU_NO, _0062
    End

_0035:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
