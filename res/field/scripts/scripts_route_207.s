#include "macros/scrcmd.inc"
#include "res/text/bank/route_207.h"

    .data

    ScriptEntry _001E
    ScriptEntry _004E
    ScriptEntry _01B0
    ScriptEntry _01C3
    ScriptEntry _01EC
    ScriptEntry _0203
    ScriptEntry _021A
    ScriptEntryEnd

_001E:
    GetPlayerGender 0x4000
    GoToIfEq 0x4000, GENDER_MALE, _003E
    GoToIfEq 0x4000, GENDER_FEMALE, _0046
    End

_003E:
    SetVar 0x4020, 97
    End

_0046:
    SetVar 0x4020, 0
    End

_004E:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    SetObjectEventPos 18, 0x14B, 0x8005
    Call _008E
    ApplyMovement 18, _0194
    WaitMovement
    CallCommonScript 0x7F8
    ApplyMovement 18, _01A0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0174
    WaitMovement
    GoTo _009C
    End

_008E:
    ClearFlag FLAG_UNK_0x01CC
    AddObject 18
    ScrCmd_062 18
    Return

_009C:
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _00B3
    GoTo _00F1

_00B3:
    BufferPlayerName 0
    Message 0
    InitGlobalTextListMenu 30, 13, 0, 0x800C, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 137, 0
    AddListMenuEntry 138, 1
    ShowListMenu
    Message 1
    Call _012F
    Message 2
    Call _0145
    Message 3
    GoTo _0156

_00F1:
    BufferPlayerName 0
    Message 4
    InitGlobalTextListMenu 30, 13, 0, 0x800C, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 137, 0
    AddListMenuEntry 138, 1
    ShowListMenu
    Message 5
    Call _012F
    Message 6
    Call _0145
    Message 7
    GoTo _0156

_012F:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_1
    SetVar 0x8004, 0x1BB
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Return

_0145:
    SetVar 0x8004, 6
    CallCommonScript 0x7D9
    BufferPoketchAppName 1, POKETCH_APPID_DOWSINGMACHINE
    Return

_0156:
    CloseMessage
    ApplyMovement 18, _01A8
    WaitMovement
    RemoveObject 18
    CallCommonScript 0x7F9
    SetVar 0x408C, 1
    ReleaseAll
    End

    .balign 4, 0
_0174:
    MoveAction_034
    EndMovement

    .byte 63
    .byte 0
    .byte 8
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0194:
    MoveAction_015 3
    MoveAction_075
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_015 5
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_014 8
    EndMovement

_01B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0082, _01E1
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E1:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EC:
    ShowArrowSign 11
    End

_0203:
    ShowArrowSign 12
    End

_021A:
    ShowScrollingSign 13
    End

    .byte 0
