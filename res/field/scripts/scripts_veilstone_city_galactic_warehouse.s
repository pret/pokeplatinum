#include "macros/scrcmd.inc"

    .data

    ScriptEntry _003B
    ScriptEntry _00D8
    ScriptEntry _0184
    ScriptEntry _0016
    ScriptEntry _0197
    .short 0xFD13

_0016:
    CallIfLt 0x411F, 2, _0025
    End

_0025:
    ScrCmd_186 4, 8, 10
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    Return

_003B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_STORAGE_KEY, 1, 0x800C
    GoToIfEq 0x800C, 1, _0063
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0063:
    Message 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0086
    GoToIfEq 0x800C, 1, _00C2
    End

_0086:
    SetFlag 0x10E
    RemoveItem ITEM_STORAGE_KEY, 1, 0x800C
    BufferPlayerName 0
    Message 9
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    ScrCmd_065 2
    ScrCmd_065 3
    CloseMessage
    ReleaseAll
    End

_00C2:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00C8:
    MoveAction_012
    EndMovement

    .balign 4, 0
_00D0:
    MoveAction_013
    EndMovement

_00D8:
    LockAll
    ApplyMovement 4, _012C
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0xFF, _0168
    ApplyMovement 4, _0134
    WaitMovement
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement 0xFF, _0174
    ApplyMovement 4, _015C
    WaitMovement
    SetVar 0x407C, 1
    SetVar 0x411F, 2
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_012C:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00D 2
    MoveAction_022
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 2
    MoveAction_00F 5
    MoveAction_020
    MoveAction_04B
    MoveAction_022
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_00E 5
    MoveAction_021
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_03F 9
    MoveAction_023
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_03F 4
    MoveAction_03D
    MoveAction_020
    EndMovement

_0184:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    LockAll
    ScrCmd_186 4, 8, 11
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ClearFlag 0x20D
    ScrCmd_064 4
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 8, _025A
    CallIfEq 0x8004, 9, _026E
    Message 4
    CloseMessage
    ApplyMovement 4, _0308
    WaitMovement
    Message 5
    CloseMessage
    SetFlag 0x10E
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    ScrCmd_065 2
    ScrCmd_065 3
    CallIfEq 0x8004, 8, _0282
    CallIfEq 0x8004, 9, _028E
    Message 6
    CloseMessage
    CallIfEq 0x8004, 8, _029A
    CallIfEq 0x8004, 9, _02AE
    ScrCmd_065 4
    SetFlag 0x28A
    SetVar 0x411F, 4
    ReleaseAll
    End

_025A:
    ApplyMovement 4, _02E8
    ApplyMovement 0xFF, _02C4
    WaitMovement
    Return

_026E:
    ApplyMovement 4, _02FC
    ApplyMovement 0xFF, _02D0
    WaitMovement
    Return

_0282:
    ApplyMovement 4, _0318
    WaitMovement
    Return

_028E:
    ApplyMovement 4, _0310
    WaitMovement
    Return

_029A:
    ApplyMovement 4, _0320
    ApplyMovement 0xFF, _02DC
    WaitMovement
    Return

_02AE:
    ApplyMovement 4, _0338
    ApplyMovement 0xFF, _02DC
    WaitMovement
    Return

    .balign 4, 0
_02C4:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_03F 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_00C 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_00C 5
    MoveAction_026
    MoveAction_027
    MoveAction_03F 2
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_00C 5
    MoveAction_026
    MoveAction_027
    MoveAction_03F 2
    MoveAction_013 7
    EndMovement
