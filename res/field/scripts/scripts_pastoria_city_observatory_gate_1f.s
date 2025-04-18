#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_observatory_gate_1f.h"

    .data

    ScriptEntry _0020
    ScriptEntry _0022
    ScriptEntry _01CC
    ScriptEntry _0298
    ScriptEntry _02BF
    ScriptEntry _0300
    ScriptEntry _001E
    ScriptEntryEnd

_001E:
    End

_0020:
    End

_0022:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0194
    WaitMovement
    GetPlayerMapPos 0x4000, 0x4001
    CallIfEq 0x4000, 5, _017D
    ShowMoney 20, 2
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _006A
    GoToIfEq 0x800C, MENU_NO, _0156
    End

_006A:
    ScrCmd_252 0x800C
    GoToIfNe 0x800C, 0, _008C
    GetPartyCount 0x800C
    GoToIfEq 0x800C, 6, _0168
_008C:
    Message 1
    GoToIfNotEnoughMoney 500, _0141
    PlayFanfare SEQ_SE_DP_REGI
    ScrCmd_070 500
    UpdateMoneyDisplay
    Message 2
    BufferPlayerName 0
    Message 3
    Message 4
    CloseMessage
    HideMoney
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 4, _00E2
    GoToIfEq 0x8004, 5, _00F2
    End

_00E2:
    ApplyMovement LOCALID_PLAYER, _019C
    WaitMovement
    GoTo _0102

_00F2:
    ApplyMovement LOCALID_PLAYER, _01B4
    WaitMovement
    GoTo _0102

_0102:
    SetVar 0x40DA, 1
    ScrCmd_202 0
    ScrCmd_11B 125, 2, 5, 2, 1
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_GREAT_MARSH_6, 0, 68, 116, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0141:
    Message 6
    CloseMessage
    HideMoney
    ApplyMovement LOCALID_PLAYER, _01C4
    WaitMovement
    ReleaseAll
    End

_0156:
    CloseMessage
    HideMoney
    ApplyMovement LOCALID_PLAYER, _01C4
    WaitMovement
    ReleaseAll
    End

_0168:
    HideMoney
    Message 7
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _01C4
    WaitMovement
    ReleaseAll
    End

_017D:
    ApplyMovement LOCALID_PLAYER, _018C
    WaitMovement
    Return

    .balign 4, 0
_018C:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_034
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_032
    MoveAction_012 3
    MoveAction_015
    MoveAction_012
    MoveAction_069
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_032
    MoveAction_012 4
    MoveAction_069
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_013
    EndMovement

_01CC:
    LockAll
    Message 9
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _01F1
    GoToIfEq 0x800C, MENU_NO, _024E
    End

_01F1:
    Message 10
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0280
    WaitMovement
    SetVar 0x40DA, 0
    ScrCmd_202 1
    ScrCmd_31B 0x4002
    GoToIfGe 0x4002, 5, _021E
    ReleaseAll
    End

_021E:
    GoToIfSet FLAG_UNK_0x00A3, _024A
    ApplyMovement 2, _0334
    WaitMovement
    Message 18
    SetVar 0x8004, 22
    CallCommonScript 0x7D9
    SetFlag FLAG_UNK_0x00A3
    CloseMessage
    ReleaseAll
    End

_024A:
    ReleaseAll
    End

_024E:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0288
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_GREAT_MARSH_6, 0, 68, 116, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0280:
    MoveAction_013 5
    EndMovement

    .balign 4, 0
_0288:
    MoveAction_000
    MoveAction_012
    MoveAction_069
    EndMovement

_0298:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0280
    WaitMovement
    SetVar 0x40DA, 0
    ScrCmd_31B 0x4002
    GoToIfGe 0x4002, 5, _021E
    ReleaseAll
    End

_02BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _02EA
    GoToIfEq 0x800C, MENU_NO, _02F5
    End

_02EA:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02F5:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0300:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00A3, _031E
    Message 15
    GoTo _0329
    End

_031E:
    Message 19
    GoTo _0329
    End

_0329:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0334:
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
