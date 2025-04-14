#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island_b2f_left_room.h"
#include "res/text/bank/special_met_location_names.h"

    .data

    ScriptEntry _0026
    ScriptEntry _0060
    ScriptEntry _0064
    ScriptEntry _00F3
    ScriptEntry _01A8
    ScriptEntry _0464
    ScriptEntry _0466
    ScriptEntry _0468
    ScriptEntry _01AA
    ScriptEntryEnd

_0026:
    InitPersistedMapFeaturesForPlatformLift
    GoToIfUnset FLAG_UNK_0x00E5, _0035
    End

_0035:
    GoToIfEq VAR_UNK_0x4092, 2, _004A
    SetVar VAR_UNK_0x4092, 0
    End

_004A:
    SetObjectEventPos 4, 19, 41
    ScrCmd_188 4, 17
    ScrCmd_189 4, 3
    End

_0060:
    TriggerPlatformLift
    End

_0064:
    LockAll
    SetPlayerBike FALSE
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 2, _00D1
    CallIfEq 0x8005, 3, _00DD
    BufferPlayerName 0
    CallIfUnset FLAG_UNK_0x00E1, _00E9
    CallIfSet FLAG_UNK_0x00E1, _00EE
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag FLAG_UNK_0x00E1
    SetVar VAR_UNK_0x4092, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_RILEY_IRON_ISLAND
    SetHasPartner
    ScrCmd_06D 4, 48
    ReleaseAll
    End

_00D1:
    ApplyMovement 4, _0170
    WaitMovement
    Return

_00DD:
    ApplyMovement 4, _0184
    WaitMovement
    Return

_00E9:
    Message 0
    Return

_00EE:
    Message 3
    Return

_00F3:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0158
    ApplyMovement 4, _0160
    WaitMovement
    Message 4
    CloseMessage
    SetVar VAR_UNK_0x4092, 0
    ClearHasPartner
    ScrCmd_06D 4, 16
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 2, _013E
    CallIfEq 0x8005, 3, _014A
    ReleaseAll
    End

_013E:
    ApplyMovement 4, _0190
    WaitMovement
    Return

_014A:
    ApplyMovement 4, _01A0
    WaitMovement
    Return

    .balign 4, 0
_0158:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_003
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0170:
    MoveAction_035
    MoveAction_075
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_035
    MoveAction_075
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_014
    MoveAction_013
    MoveAction_034
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_014
    EndMovement

_01A8:
    End

_01AA:
    LockAll
    ClearHasPartner
    ScrCmd_06D 4, 16
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 40, _0291
    CallIfEq 0x8005, 41, _02A5
    Message 5
    CloseMessage
    ApplyMovement 5, _0384
    WaitMovement
    Message 6
    CloseMessage
    ApplyMovement 6, _038C
    WaitMovement
    Message 7
    CloseMessage
    ApplyMovement 4, _040C
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    SetHasPartner
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_IRON_ISLAND_1, TRAINER_GALACTIC_GRUNT_IRON_ISLAND_2
    ClearHasPartner
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _037D
    ApplyMovement 5, _0394
    WaitMovement
    Message 9
    CloseMessage
    ApplyMovement 6, _039C
    WaitMovement
    Message 10
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 5
    RemoveObject 6
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 40, _02D1
    CallIfEq 0x8005, 41, _02E5
    Call _02F9
    ScrCmd_2B6 4, 1
    ReleaseAll
    End

_0291:
    ApplyMovement 4, _03D4
    ApplyMovement LOCALID_PLAYER, _0434
    WaitMovement
    Return

_02A5:
    ApplyMovement 4, _03E4
    ApplyMovement LOCALID_PLAYER, _044C
    WaitMovement
    Return

    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 51
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0
    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 51
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_02D1:
    ApplyMovement 4, _0414
    ApplyMovement LOCALID_PLAYER, _0424
    WaitMovement
    Return

_02E5:
    ApplyMovement 4, _041C
    ApplyMovement LOCALID_PLAYER, _042C
    WaitMovement
    Return

_02F9:
    Message 11
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _031C
    GoToIfEq 0x800C, MENU_NO, _0366
    End

_031C:
    GetPartyCount 0x800C
    GoToIfEq 0x800C, 6, _0353
    PlaySound SEQ_FANFA4
    WaitSound
    Message 12
    GiveEgg SPECIES_RIOLU, SPECIAL_METLOC_NAME_RILEY
    SetFlag FLAG_UNK_0x01E5
    ClearFlag FLAG_UNK_0x00E2
    Call _0371
    Message 15
    WaitABXPadPress
    CloseMessage
    Return

_0353:
    SetFlag FLAG_UNK_0x00E2
    SetVar VAR_UNK_0x4092, 2
    Message 13
    WaitABXPadPress
    CloseMessage
    Return

_0366:
    Message 14
    GoTo _02F9
    End

_0371:
    SetFlag FLAG_UNK_0x00E5
    SetVar VAR_UNK_0x4092, 2
    Return

_037D:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0384:
    MoveAction_035
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0394:
    MoveAction_033
    EndMovement

    .balign 4, 0
_039C:
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
    .byte 12
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
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_03D4:
    MoveAction_034
    MoveAction_013
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_034
    MoveAction_012
    MoveAction_014 2
    EndMovement

    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_040C:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_032
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_033
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_063 2
    MoveAction_033
    MoveAction_063
    MoveAction_061
    MoveAction_014
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_063 2
    MoveAction_032
    MoveAction_063
    MoveAction_061
    MoveAction_014
    EndMovement

_0464:
    End

_0466:
    End

_0468:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00E2, _0504
    GoToIfEq VAR_UNK_0x4092, 2, _0513
    GoToIfGe VAR_UNK_0x40E3, 4, _04EB
    GoToIfEq VAR_UNK_0x40E3, 3, _04E0
    GoToIfEq VAR_UNK_0x40E3, 2, _04D5
    GoToIfEq VAR_UNK_0x40E3, 1, _04CA
    BufferPlayerName 0
    Message 18
    GoTo _04F6
    End

_04CA:
    Message 19
    GoTo _04F6
    End

_04D5:
    Message 20
    GoTo _04F6
    End

_04E0:
    Message 21
    GoTo _04F6
    End

_04EB:
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04F6:
    AddVar 0x40E3, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0504:
    Call _02F9
    ScrCmd_2B6 4, 1
    ReleaseAll
    End

_0513:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
