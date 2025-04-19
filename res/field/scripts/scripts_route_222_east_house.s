#include "macros/scrcmd.inc"
#include "res/text/bank/route_222_east_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09F0
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasSpecies VAR_RESULT, SPECIES_REMORAID
    GoToIfEq VAR_RESULT, 0, _00CF
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 0xFF, _011E
    GetPartyMonSpecies VAR_0x8002, VAR_0x8001
    GoToIfNe VAR_0x8001, 223, _0108
    ScrCmd_1C1 VAR_RESULT, VAR_0x8002
    GoToIfEq VAR_RESULT, 0, _00ED
    GoToIfEq VAR_RESULT, 1, _00DA
    ScrCmd_1C3 0, 1, VAR_0x8002
    Message 2
    SetVar VAR_0x8004, ITEM_NET_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0113
    CallCommonScript 0x7FC
    ScrCmd_1C2 VAR_0x8002
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CF:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DA:
    ScrCmd_1C4 0, 1, 223
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00ED:
    ScrCmd_1C3 0, 1, VAR_0x8002
    ScrCmd_1C4 2, 3, 223
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0108:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0113:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
