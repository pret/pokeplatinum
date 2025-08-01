#include "macros/scrcmd.inc"
#include "res/text/bank/wayward_cave_1f.h"


    ScriptEntry _0012
    ScriptEntry _002B
    ScriptEntry _00E0
    ScriptEntry _00E2
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09D7
    GoToIfUnset FLAG_UNK_0x00E4, _0023
    End

_0023:
    SetVar VAR_UNK_0x4091, 0
    End

_002B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetPlayerBike FALSE
    GoToIfGe VAR_UNK_0x4091, 1, _0095
    BufferPlayerName 0
    CallIfUnset FLAG_UNK_0x00E0, _008B
    CallIfSet FLAG_UNK_0x00E0, _0090
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag FLAG_UNK_0x00E0
    SetVar VAR_UNK_0x4091, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_MIRA_WAYWARD_CAVE
    SetHasPartner
    ScrCmd_06D 4, 48
    ReleaseAll
    End

_008B:
    Message 0
    Return

_0090:
    Message 3
    Return

_0095:
    GoToIfGe VAR_FOLLOWER_MIRA_TIMES_TALKED, 2, _00C4
    GoToIfEq VAR_FOLLOWER_MIRA_TIMES_TALKED, 1, _00BB
    BufferPlayerName 0
    Message 9
    GoTo _00D2

_00BB:
    Message 10
    GoTo _00D2

_00C4:
    BufferPlayerName 0
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D2:
    AddVar VAR_FOLLOWER_MIRA_TIMES_TALKED, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E0:
    End

_00E2:
    LockAll
    ClearHasPartner
    ScrCmd_06D 4, 16
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 2, _0103
    GoTo _011B

_0103:
    ApplyMovement LOCALID_PLAYER, _0194
    ApplyMovement 4, _01D8
    WaitMovement
    GoTo _0133

_011B:
    ApplyMovement LOCALID_PLAYER, _019C
    ApplyMovement 4, _01E4
    WaitMovement
    GoTo _0133

_0133:
    BufferPlayerName 0
    Message 5
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 3, _0152
    GoTo _016A

_0152:
    ApplyMovement LOCALID_PLAYER, _01A4
    ApplyMovement 4, _01F0
    WaitMovement
    GoTo _0182

_016A:
    ApplyMovement LOCALID_PLAYER, _01B0
    ApplyMovement 4, _0200
    WaitMovement
    GoTo _0182

_0182:
    RemoveObject 4
    SetFlag FLAG_UNK_0x00E4
    SetVar VAR_UNK_0x4091, 2
    ReleaseAll
    End

    .balign 4, 0
_0194:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_019C:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01A4:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01B0:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

WaywardCave1F_UnusedMovement:
    Delay8 5
    WalkNormalWest
    EndMovement

WaywardCave1F_UnusedMovement2:
    Delay8 5
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01D8:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_01E4:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_01F0:
    Delay8 3
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0200:
    Delay8 3
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement
