#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/hidden_locations.h"
#include "res/text/bank/route_224.h"

    .data

    ScriptEntry _001A
    ScriptEntry _0082
    ScriptEntry _00B8
    ScriptEntry _00E4
    ScriptEntry _0458
    ScriptEntry _05F4
    ScriptEntryEnd

_001A:
    CallIfEq VAR_SHAYMIN_EVENT_STATE, 1, _00AA
    GoToIfSet FLAG_UNK_0x012D, _0080
    CheckGameCompleted VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _0080
    ScrCmd_22D 2, VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _0080
    CheckItem ITEM_OAKS_LETTER, 1, VAR_0x4000
    GoToIfEq VAR_0x4000, FALSE, _0080
    CheckDistributionEvent DISTRIBUTION_EVENT_SHAYMIN, VAR_0x4000
    GoToIfEq VAR_0x4000, FALSE, _0080
    ClearFlag FLAG_UNK_0x0252
_0080:
    End

_0082:
    GoToIfSet FLAG_UNK_0x012D, _009A
    CallIfEq VAR_UNK_0x408D, 1, _009C
_009A:
    End

_009C:
    ScrCmd_18C 3, 0
    Return

    .byte 30
    .byte 0
    .byte 202
    .byte 2
    .byte 27
    .byte 0

_00AA:
    SetVar VAR_SHAYMIN_EVENT_STATE, 2
    SetVar VAR_UNK_0x4085, 1
    Return

_00B8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x012D, _00D6
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D6:
    ScrCmd_272 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E4:
    GoToIfSet FLAG_UNK_0x012D, _022D
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_UNK_0x408D, 1
    BufferPlayerName 0
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _0219
    Message 0
_0114:
    CloseMessage
    Call _0240
    BufferPlayerName 0
    Message 2
    CloseMessage
_0124:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_271 VAR_0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x800C, 1, _0222
    BufferPlayerName 0
    ScrCmd_272 1
    Message 3
    ShowYesNoMenu VAR_0x800C
    CloseMessage
    GoToIfEq VAR_0x800C, MENU_NO, _0124
    Call _029A
    WaitTime 15, VAR_0x800C
    FadeOutMusic 0, 10
    FadeScreen 6, 6, 0, 0x7FFF
    WaitFadeScreen
    EnableHiddenLocation HIDDEN_LOCATION_SEABREAK_PATH
    ScrCmd_333 0
    Warp MAP_HEADER_ROUTE_224, 0, 0x38C, 0x1EC, 0
    WaitTime 15, VAR_0x800C
    FadeScreen 6, 6, 1, 0x7FFF
    WaitFadeScreen
    Call _02B8
    CallIfNe VAR_SHAYMIN_EVENT_STATE, 2, _01F0
    CallIfEq VAR_SHAYMIN_EVENT_STATE, 2, _01F5
    WaitABXPadPress
    CloseMessage
    ScrCmd_333 127
    ScrCmd_055 10
    SetFlag FLAG_UNK_0x012D
    SetFlag FLAG_UNK_0x0252
    SetFlag FLAG_UNK_0x02CA
    SetVar VAR_UNK_0x408D, 0
    ReleaseAll
    End

_01F0:
    Message 5
    Return

_01F5:
    Message 4
    CloseMessage
    ApplyMovement 21, _05EC
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0438
    WaitMovement
    WaitTime 15, VAR_0x800C
    Message 11
    Return

_0219:
    Message 1
    GoTo _0114

_0222:
    Message 6
    CloseMessage
    GoTo _0124

_022D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0240:
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    SetVar VAR_0x8008, VAR_0x8000
    GoToIfEq VAR_0x8008, 0x38D, _0272
    GoToIfEq VAR_0x8008, 0x38E, _0286
    ApplyMovement LOCALID_PLAYER, _0328
    WaitMovement
    Return

_0272:
    ApplyMovement LOCALID_PLAYER, _0338
    ApplyMovement 3, _0364
    WaitMovement
    Return

_0286:
    ApplyMovement LOCALID_PLAYER, _034C
    ApplyMovement 3, _0370
    WaitMovement
    Return

_029A:
    ApplyMovement LOCALID_PLAYER, _0384
    ApplyMovement 3, _0384
    WaitMovement
    Return

_02AE:
    ApplyMovement 21, _066C
    Return

_02B8:
    ApplyMovement 3, _0404
    ApplyMovement LOCALID_PLAYER, _03C8
    ApplyMovement 16, _0440
    WaitMovement
    PlayCry SPECIES_SHAYMIN
    WaitCry
    CallIfEq VAR_SHAYMIN_EVENT_STATE, 2, _02AE
    ApplyMovement 3, _038C
    ApplyMovement 16, _03B0
    ApplyMovement LOCALID_PLAYER, _039C
    WaitMovement
    ApplyMovement 16, _0448
    WaitMovement
    SetFlag FLAG_UNK_0x025C
    RemoveObject 16
    PlayCry SPECIES_SHAYMIN
    WaitCry
    ApplyMovement 3, _03C0
    WaitMovement
    Return

    .balign 4, 0
_0328:
    MoveAction_000
    MoveAction_065
    MoveAction_003
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_014
    MoveAction_012
    MoveAction_065
    MoveAction_003
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_013
    MoveAction_014 2
    MoveAction_012
    MoveAction_065
    MoveAction_003
    EndMovement

    .balign 4, 0
_0364:
    MoveAction_063
    MoveAction_002
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_063
    MoveAction_001
    MoveAction_063 2
    MoveAction_002
    EndMovement

    .balign 4, 0
_0384:
    MoveAction_000
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_003
    MoveAction_075
    MoveAction_065
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_065
    MoveAction_003
    MoveAction_075
    MoveAction_065
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_002
    MoveAction_075
    MoveAction_065
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_002
    EndMovement

    .balign 4, 0
_03C8:
    MoveAction_002
    MoveAction_065
    MoveAction_001
    MoveAction_065
    MoveAction_003
    MoveAction_065
    MoveAction_001
    MoveAction_065
    MoveAction_002
    MoveAction_065
    MoveAction_000
    MoveAction_065
    MoveAction_001
    MoveAction_065
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_001
    MoveAction_065
    MoveAction_003
    MoveAction_065
    MoveAction_001
    MoveAction_065
    MoveAction_002
    MoveAction_065
    MoveAction_000
    MoveAction_065
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0438:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0440:
    MoveAction_013 12
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_000
    MoveAction_065
    MoveAction_076 12
    EndMovement

_0458:
    LockAll
    ClearFlag FLAG_UNK_0x02CA
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x1F0, _048D
    GoToIfEq VAR_0x8005, 0x1F1, _04AF
    GoToIfEq VAR_0x8005, 0x1F2, _04D1
    End

_048D:
    SetObjectEventPos 21, 0x386, 0x1F8
    AddObject 21
    ScrCmd_062 21
    ApplyMovement 21, _0598
    WaitMovement
    GoTo _04F3
    End

_04AF:
    SetObjectEventPos 21, 0x386, 0x1F9
    AddObject 21
    ScrCmd_062 21
    ApplyMovement 21, _05A4
    WaitMovement
    GoTo _04F3
    End

_04D1:
    SetObjectEventPos 21, 0x386, 0x1FA
    AddObject 21
    ScrCmd_062 21
    ApplyMovement 21, _05B0
    WaitMovement
    GoTo _04F3
    End

_04F3:
    ApplyMovement LOCALID_PLAYER, _0628
    WaitMovement
    Message 9
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x1F0, _0531
    GoToIfEq VAR_0x8005, 0x1F1, _054B
    GoToIfEq VAR_0x8005, 0x1F2, _0565
    End

_0531:
    ApplyMovement 21, _05BC
    ApplyMovement LOCALID_PLAYER, _0630
    WaitMovement
    GoTo _057F
    End

_054B:
    ApplyMovement 21, _05CC
    ApplyMovement LOCALID_PLAYER, _0644
    WaitMovement
    GoTo _057F
    End

_0565:
    ApplyMovement 21, _05DC
    ApplyMovement LOCALID_PLAYER, _0658
    WaitMovement
    GoTo _057F
    End

_057F:
    SetVar VAR_SHAYMIN_EVENT_STATE, 2
    SetVar VAR_UNK_0x4085, 2
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0598:
    MoveAction_012 8
    MoveAction_035
    EndMovement

    .balign 4, 0
_05A4:
    MoveAction_012 8
    MoveAction_035
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_012 8
    MoveAction_035
    EndMovement

    .balign 4, 0
_05BC:
    MoveAction_013
    MoveAction_015 5
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_05CC:
    MoveAction_012
    MoveAction_015 5
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_05DC:
    MoveAction_012 2
    MoveAction_015 5
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_05EC:
    MoveAction_035
    EndMovement

_05F4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x012D, _061C
    Message 10
    WaitABXPadPress
    CloseMessage
    ApplyMovement 21, _0664
    WaitMovement
    ReleaseAll
    End

_061C:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0628:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0630:
    MoveAction_063 2
    MoveAction_035
    MoveAction_063 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_0644:
    MoveAction_063 2
    MoveAction_035
    MoveAction_063 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_0658:
    MoveAction_063 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0664:
    MoveAction_000
    EndMovement

    .balign 4, 0
_066C:
    MoveAction_003
    MoveAction_075
    EndMovement
