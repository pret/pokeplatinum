#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_2f.h"


    ScriptEntry _001E
    ScriptEntry _007A
    ScriptEntry _008B
    ScriptEntry _009C
    ScriptEntry _00AD
    ScriptEntry _00CF
    ScriptEntry _00BE
    ScriptEntryEnd

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _003E
    GoTo _0074

_003E:
    BufferPlayerName 0
    Message 1
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message 2
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0074:
    CloseMessage
    ReleaseAll
    End

_007A:
    EventMessage 7
    End

_008B:
    EventMessage 8
    End

_009C:
    EventMessage 9
    End

_00AD:
    EventMessage 10
    End

_00BE:
    EventMessage 11
    End

_00CF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _010A
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _010A
    Message 6
    GoTo _010A
    End

_010A:
    BufferPlayerName 0
    Message 4
    GoTo _0118
    End

_0118:
    WaitButton
    CloseMessage
    ReleaseAll
    End
