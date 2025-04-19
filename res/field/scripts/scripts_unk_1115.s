#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0622.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    IncrementGameRecord RECORD_UNK_048
    ScrCmd_235 0, VAR_RESULT
    Dummy1F9 VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _005C
    GoToIfEq VAR_0x8008, 1, _0074
    GoToIfEq VAR_0x8008, 2, _0092
    GoToIfEq VAR_0x8008, 3, _00AA
    GoTo _005C
    End

_005C:
    ScrCmd_235 4, VAR_0x8004, VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    WaitABXPadPress
    GoTo _0129
    End

_0074:
    ScrCmd_235 1, 2, VAR_0x8004, VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    WaitABXPadPress
    ScrCmd_235 2
    GoTo _0129
    End

_0092:
    ScrCmd_235 1, 0, VAR_0x8004, VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    GoTo _00AA
    End

_00AA:
    ScrCmd_235 6, VAR_0x8006
    GoToIfNe VAR_0x8006, 0, _00EB
    GoTo _00C5
    End

_00C5:
    ScrCmd_235 1, 3, VAR_0x8004, VAR_0x8005
    Dummy1F9 VAR_0x8004
    Dummy1F9 VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    ScrCmd_235 2
    WaitABXPadPress
    GoTo _0129
    End

_00EB:
    ScrCmd_235 1, 1, VAR_0x8004, VAR_0x8005
    Dummy1F9 VAR_0x8004
    Dummy1F9 VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    ScrCmd_235 3, VAR_0x8006, VAR_0x8004, VAR_0x8005
    Dummy1F9 VAR_0x8006
    Dummy1F9 VAR_0x8004
    Dummy1F9 VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    WaitABXPadPress
    GoTo _0129
    End

_0129:
    CloseMessage
    ReleaseAll
    End

    .byte 0
