#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/hidden_locations.h"
#include "res/text/bank/route_224.h"


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
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0080
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0080
    CheckItem ITEM_OAKS_LETTER, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _0080
    CheckDistributionEvent DISTRIBUTION_EVENT_SHAYMIN, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _0080
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
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0219
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
    ScrCmd_271 VAR_RESULT
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 1, _0222
    BufferPlayerName 0
    ScrCmd_272 1
    Message 3
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_NO, _0124
    Call _029A
    WaitTime 15, VAR_RESULT
    FadeOutBGM 0, 10
    FadeScreen 6, 6, 0, 0x7FFF
    WaitFadeScreen
    EnableHiddenLocation HIDDEN_LOCATION_SEABREAK_PATH
    ScrCmd_333 0
    Warp MAP_HEADER_ROUTE_224, 0, 0x38C, 0x1EC, 0
    WaitTime 15, VAR_RESULT
    FadeScreen 6, 6, 1, 0x7FFF
    WaitFadeScreen
    Call _02B8
    CallIfNe VAR_SHAYMIN_EVENT_STATE, 2, _01F0
    CallIfEq VAR_SHAYMIN_EVENT_STATE, 2, _01F5
    WaitABXPadPress
    CloseMessage
    ScrCmd_333 127
    FadeInBGM 10
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
    WaitTime 15, VAR_RESULT
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
    FaceNorth
    Delay16
    FaceEast
    EndMovement

    .balign 4, 0
_0338:
    WalkNormalWest
    WalkNormalNorth
    Delay16
    FaceEast
    EndMovement

    .balign 4, 0
_034C:
    WalkNormalSouth
    WalkNormalWest 2
    WalkNormalNorth
    Delay16
    FaceEast
    EndMovement

    .balign 4, 0
_0364:
    Delay8
    FaceWest
    EndMovement

    .balign 4, 0
_0370:
    Delay8
    FaceSouth
    Delay8 2
    FaceWest
    EndMovement

    .balign 4, 0
_0384:
    FaceNorth
    EndMovement

    .balign 4, 0
_038C:
    FaceEast
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_039C:
    Delay16
    FaceEast
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_03B0:
    FaceWest
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_03C0:
    FaceWest
    EndMovement

    .balign 4, 0
_03C8:
    FaceWest
    Delay16
    FaceSouth
    Delay16
    FaceEast
    Delay16
    FaceSouth
    Delay16
    FaceWest
    Delay16
    FaceNorth
    Delay16
    FaceSouth
    Delay16
    EndMovement

    .balign 4, 0
_0404:
    FaceSouth
    Delay16
    FaceEast
    Delay16
    FaceSouth
    Delay16
    FaceWest
    Delay16
    FaceNorth
    Delay16
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
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0440:
    WalkNormalSouth 12
    EndMovement

    .balign 4, 0
_0448:
    FaceNorth
    Delay16
    WalkSlightlyFastNorth 12
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
    WalkNormalNorth 8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_05A4:
    WalkNormalNorth 8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_05B0:
    WalkNormalNorth 8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_05BC:
    WalkNormalSouth
    WalkNormalEast 5
    WalkNormalNorth 4
    EndMovement

    .balign 4, 0
_05CC:
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_05DC:
    WalkNormalNorth 2
    WalkNormalEast 5
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_05EC:
    WalkOnSpotNormalEast
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
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0630:
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0644:
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0658:
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0664:
    FaceNorth
    EndMovement

    .balign 4, 0
_066C:
    FaceEast
    EmoteExclamationMark
    EndMovement
