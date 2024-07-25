#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _00F4
    ScriptEntry _01A3
    ScriptEntry _043C
    ScriptEntry _048E
    ScriptEntry _0650
    .short 0xFD13

_001A:
    LockAll
    Message 0
    CloseMessage
    ApplyMovement 0xFF, _00D8
    WaitMovement
    Message 1
    SetVar 0x8004, 0x1B5
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    GoTo _0046
    End

_0046:
    Message 2
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 153, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0086
    GoToIfEq 0x8008, 1, _00C6
    GoTo _00C6
    End

_0086:
    Message 3
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 155, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0086
    GoToIfEq 0x8008, 1, _00C6
    GoTo _00C6
    End

_00C6:
    SetVar 0x40D4, 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00D8:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00C 4
    MoveAction_00E
    MoveAction_000
    MoveAction_03F 2
    EndMovement

_00F4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0123
    GoTo _0118
    End

_0118:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0123:
    Message 6
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 153, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0163
    GoToIfEq 0x8008, 1, _0118
    GoTo _0118
    End

_0163:
    Message 3
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 155, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0163
    GoToIfEq 0x8008, 1, _0118
    GoTo _0118
    End

_01A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0430
    GoTo _01C4
    End

_01C4:
    Message 7
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_042 15, 1
    ScrCmd_042 16, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0213
    GoToIfEq 0x8008, 1, _0208
    GoTo _026C
    End

_0208:
    Message 13
    GoTo _01C4
    End

_0213:
    ScrCmd_2A4 0x800C
    GoToIfEq 0x800C, 0, _022C
    GoTo _0277
    End

_022C:
    ScrCmd_2A3 0x800C
    GoToIfEq 0x800C, 1, _0261
    GoTo _0245
    End

_0245:
    Message 11
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0277
    GoTo _026C
    End

_0261:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026C:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0277:
    ScrCmd_31D 0x800C
    GoToIfEq 0x800C, 0xFF, _02A9
    ScrCmd_14E
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _02AF
    GoTo _026C
    End

_02A9:
    CallCommonScript 0x809
    End

_02AF:
    Message 10
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    ApplyMovement 0xFF, _03B8
    WaitMovement
    GoTo _02CC
    End

_02CC:
    ScrCmd_168 0, 0, 9, 5, 77
    Call _0320
    ApplyMovement 0xFF, _03C4
    WaitMovement
    Call _0328
    ApplyMovement 0xFF, _03CC
    WaitMovement
    ScrCmd_168 0, 0, 9, 2, 77
    Call _0320
    ApplyMovement 0xFF, _03D4
    WaitMovement
    Call _0328
    GoTo _0333
    End

_0320:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_0328:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_0333:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_2A4 0x800C
    GoToIfEq 0x800C, 0, _035A
    ScrCmd_0A3
    GoTo _035C

_035A:
    ScrCmd_0A3
_035C:
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_168 0, 0, 8, 2, 77
    Call _0320
    ApplyMovement 0xFF, _03EC
    WaitMovement
    Call _0328
    ApplyMovement 0xFF, _03FC
    WaitMovement
    ScrCmd_168 0, 0, 8, 5, 77
    Call _0320
    ApplyMovement 0xFF, _0404
    WaitMovement
    Call _0328
    End

    .balign 4, 0
_03B8:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_001
    MoveAction_046
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_00C
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_00C
    MoveAction_045
    EndMovement

_0430:
    CallCommonScript 0x2338
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043C:
    Dummy1 0x40B8
    SetVar 0x40DD, 0
    SetVar 0x40DE, 0
    SetVar 0x40B8, 0
    SetVar 0x40B9, 0
    SetVar 0x40BD, 0
    SetVar 0x40BB, 0
    SetVar 0x40BE, 0
    SetVar 0x40D8, 0
    SetVar 0x40B7, 0
    SetVar 0x40BC, 0
    SetVar 0x40BA, 0
    SetVar 0x40BF, 0
    Dummy1 0x40B8
    End

_048E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_323 0x800C
    GoToIfEq 0x800C, 0, _04BC
    ScrCmd_201 0x405C
    SetVar 0x405D, 0x800D
    Message 17
    GoTo _04C7
    End

_04BC:
    Message 25
    GoTo _0513
    End

_04C7:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 22, 0
    ScrCmd_042 23, 1
    ScrCmd_042 24, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0526
    GoToIfEq 0x8008, 1, _051B
    GoTo _0508
    End

_0508:
    Message 20
    GoTo _0513
    End

_0513:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_051B:
    Message 21
    GoTo _04C7
    End

_0526:
    ScrCmd_14E
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0508
    Message 19
    CloseMessage
    ApplyMovement 0xFF, _03B8
    WaitMovement
    ScrCmd_168 0, 0, 5, 5, 77
    Call _0320
    ApplyMovement 0x800D, _040C
    ApplyMovement 0xFF, _03C4
    WaitMovement
    Call _0328
    ApplyMovement 0x800D, _0414
    WaitMovement
    ScrCmd_168 0, 0, 5, 2, 77
    Call _0320
    ApplyMovement 0xFF, _03E0
    ApplyMovement 0x800D, _0424
    WaitMovement
    Call _0328
    SetVar 0x4003, 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_WIFI_PLAZA_ENTRANCE, 0, 20, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 248
    .byte 1
    .byte 179
    .byte 0
    .byte 12
    .byte 128
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 12
    .byte 128
    .byte 247
    .byte 2
    .byte 4
    .byte 128
    .byte 161
    .byte 0
    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 104
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0
    .byte 2
    .byte 0
    .byte 77
    .byte 26
    .byte 0
    .byte 15
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 211
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 26
    .byte 0
    .byte 7
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 211
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 104
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 77
    .byte 26
    .byte 0
    .byte 228
    .byte 252
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 192
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 26
    .byte 0
    .byte 220
    .byte 252
    .byte 0xFF
    .byte 0xFF
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0650:
    LockAll
    ScrCmd_168 0, 0, 5, 2, 77
    Call _0320
    ApplyMovement 0xFF, _03EC
    WaitMovement
    Call _0328
    ApplyMovement 0xFF, _03FC
    WaitMovement
    ScrCmd_168 0, 0, 5, 5, 77
    Call _0320
    ApplyMovement 0xFF, _0404
    WaitMovement
    Call _0328
    SetVar 0x4080, 0
    ReleaseAll
    End
