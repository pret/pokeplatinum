#include "macros/scrcmd.inc"
#include "res/text/bank/group_connection.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_21D 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0070
    Call _0102
    GoToIfEq VAR_RESULT, 1, _003C
    GoTo _0055

_003C:
    ScrCmd_21D 3, 1, 0
    ScrCmd_21D 2, 1, 1
    Message 0
    GoTo _00A8

_0055:
    ScrCmd_21D 3, 1, 0
    ScrCmd_21D 2, 1, 1
    Message 1
    GoTo _008C
    End

_0070:
    Message 2
_0073:
    Call _0102
    GoToIfEq VAR_RESULT, 1, _00A8
    GoTo _008C

_008C:
    InitLocalTextMenu 1, 1, 0, VAR_0x8004
    AddMenuEntryImm 11, 1
    AddMenuEntryImm 13, 3
    AddMenuEntryImm 14, 4
    ShowMenu
    GoTo _00C2

_00A8:
    InitLocalTextMenu 1, 1, 0, VAR_0x8004
    AddMenuEntryImm 11, 1
    AddMenuEntryImm 12, 2
    AddMenuEntryImm 13, 3
    AddMenuEntryImm 14, 4
    ShowMenu
_00C2:
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 1, _01CF
    GoToIfEq VAR_0x8008, 2, _0261
    GoToIfEq VAR_0x8008, 3, _03DA
    GoToIfEq VAR_0x8008, 4, _03E5
    GoTo _03E5

_0102:
    ScrCmd_21D 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _012C
    ScrCmd_21D 1, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01BF
_012C:
    ScrCmd_21D 0, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0156
    ScrCmd_21D 1, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01BF
_0156:
    ScrCmd_21D 0, 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0180
    ScrCmd_21D 1, 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01BF
_0180:
    ScrCmd_21D 0, 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01AA
    ScrCmd_21D 1, 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01BF
_01AA:
    ScrCmd_21D 0, 5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01C7
_01BF:
    SetVar VAR_RESULT, 1
    Return

_01C7:
    SetVar VAR_RESULT, 0
    Return

_01CF:
    ScrCmd_21D 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01F8
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfNe VAR_RESULT, MENU_YES, _03E5
_01F8:
    Message 6
    WaitABPress
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ScrCmd_21D 4, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 1, _03E5
    GoToIfEq VAR_RESULT, 2, _0256
    ScrCmd_21D 6
    ScrCmd_21D 2, 0, 0
    ScrCmd_21D 3, 0, 1
    Message 7
    WaitABXPadPress
    GoTo _03EA

_0256:
    Message 22
    WaitABXPadPress
    GoTo _03EA

_0261:
    Message 3
    InitLocalTextMenu 1, 1, 0, VAR_0x8004
    ScrCmd_21D 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _02A2
    ScrCmd_21D 1, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _02A2
    ScrCmd_21D 2, 0, 0
    AddMenuEntryImm 15, 0
_02A2:
    ScrCmd_21D 0, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _02D8
    ScrCmd_21D 1, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _02D8
    ScrCmd_21D 2, 2, 1
    AddMenuEntryImm 16, 2
_02D8:
    ScrCmd_21D 0, 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _030E
    ScrCmd_21D 1, 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _030E
    ScrCmd_21D 2, 3, 2
    AddMenuEntryImm 17, 3
_030E:
    ScrCmd_21D 0, 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0344
    ScrCmd_21D 1, 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0344
    ScrCmd_21D 2, 4, 3
    AddMenuEntryImm 18, 4
_0344:
    ScrCmd_21D 0, 5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _037A
    ScrCmd_21D 1, 5, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _037A
    ScrCmd_21D 2, 5, 4
    AddMenuEntryImm 19, 5
_037A:
    AddMenuEntryImm 20, 6
    ShowMenu
    GoToIfEq VAR_0x8004, 6, _03E5
    GoToIfEq VAR_0x8004, -2, _03E5
    ScrCmd_21D 2, VAR_0x8004, 0
    ScrCmd_21D 3, VAR_0x8004, 1
    Message 8
    ShowYesNoMenu VAR_RESULT
    GoToIfNe VAR_RESULT, MENU_YES, _0261
    ScrCmd_21D 5, VAR_0x8004
    BufferPlayerName 0
    ScrCmd_21D 2, VAR_0x8004, 1
    Message 9
    WaitABXPadPress
    GoTo _03EA

_03DA:
    Message 10
    WaitABPress
    GoTo _0073

_03E5:
    Message 4
    WaitABXPadPress
_03EA:
    CloseMessage
    ReleaseAll
    End
