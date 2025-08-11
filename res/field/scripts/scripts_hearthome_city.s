#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city.h"


    ScriptEntry _0082
    ScriptEntry _0084
    ScriptEntry _0097
    ScriptEntry _00AA
    ScriptEntry _00BD
    ScriptEntry _00D0
    ScriptEntry _00E3
    ScriptEntry _00F6
    ScriptEntry _0109
    ScriptEntry _011C
    ScriptEntry _013B
    ScriptEntry _02E4
    ScriptEntry _02F7
    ScriptEntry _030A
    ScriptEntry _031B
    ScriptEntry _0984
    ScriptEntry _0709
    ScriptEntry _071C
    ScriptEntry _072D
    ScriptEntry _0740
    ScriptEntry _0753
    ScriptEntry _08A4
    ScriptEntry _08BB
    ScriptEntry _08D0
    ScriptEntry _08E7
    ScriptEntry _08FE
    ScriptEntry _0915
    ScriptEntry _092C
    ScriptEntry _0943
    ScriptEntry _095A
    ScriptEntry _0971
    ScriptEntry _0997
    ScriptEntryEnd

_0082:
    End

_0084:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0097:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0109:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message 22
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, _01A7
    Message 14
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _01B2
    Message 15
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 0, _01BD
    GoToIfEq VAR_0x8004, 1, _01D7
    GoToIfEq VAR_0x8004, 2, _01F1
    GoToIfEq VAR_0x8004, 3, _020B
    End

_01A7:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B2:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BD:
    ApplyMovement 0, _0240
    ApplyMovement LOCALID_PLAYER, _027C
    WaitMovement
    GoTo _0225
    End

_01D7:
    ApplyMovement 0, _0240
    ApplyMovement LOCALID_PLAYER, _0294
    WaitMovement
    GoTo _0225
    End

_01F1:
    ApplyMovement 0, _0240
    ApplyMovement LOCALID_PLAYER, _02AC
    WaitMovement
    GoTo _0225
    End

_020B:
    ApplyMovement 0, _0258
    ApplyMovement LOCALID_PLAYER, _02C4
    WaitMovement
    GoTo _0225
    End

_0225:
    SetFlag FLAG_UNK_0x0001
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCity_UnusedMovement:
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_0240:
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0258:
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth
    WalkNormalWest 18
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_027C:
    WalkNormalNorth
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_0294:
    WalkNormalSouth
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_02AC:
    WalkNormalWest
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_02C4:
    Delay8 2
    Delay4
    WalkOnSpotNormalWest
    WalkNormalWest 19
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

_02E4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02F7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_030A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_031B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 24
    Message 25
    GoToIfUnset FLAG_UNK_0x014A, _03AC
    GoToIfUnset FLAG_UNK_0x014B, _03AC
    GoToIfUnset FLAG_UNK_0x014C, _03AC
    GoToIfUnset FLAG_UNK_0x014D, _03AC
    GoToIfUnset FLAG_UNK_0x014E, _03AC
    GoToIfUnset FLAG_UNK_0x014F, _03AC
    GoToIfUnset FLAG_UNK_0x0150, _03AC
    GoToIfUnset FLAG_UNK_0x0151, _03AC
    GoToIfUnset FLAG_UNK_0x0152, _03AC
    GoToIfUnset FLAG_UNK_0x0153, _03AC
    GoToIfUnset FLAG_UNK_0x0154, _03AC
    SetFlag FLAG_UNK_0x015B
    GoTo _06E8

_03AC:
    GoToIfSet FLAG_UNK_0x014A, _03F4
    GoToIfUnset FLAG_CONNECTED_TO_WIFI, _03F4
    Message 33
    SetVar VAR_0x8004, 46
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x014A
    CloseMessage
    ReleaseAll
    End

_03F4:
    GoToIfSet FLAG_UNK_0x014B, _0442
    CountBadgesAcquired VAR_RESULT
    GoToIfLt VAR_RESULT, 8, _0442
    Message 34
    SetVar VAR_0x8004, 47
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x014B
    CloseMessage
    ReleaseAll
    End

_0442:
    GoToIfSet FLAG_UNK_0x014C, _048A
    GoToIfUnset FLAG_CONTEST_MASTER_BEAUTY, _048A
    Message 35
    SetVar VAR_0x8004, 72
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x014C
    CloseMessage
    ReleaseAll
    End

_048A:
    GoToIfSet FLAG_UNK_0x014D, _04D2
    GoToIfUnset FLAG_CONTEST_MASTER_COOL, _04D2
    Message 36
    SetVar VAR_0x8004, 73
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x014D
    CloseMessage
    ReleaseAll
    End

_04D2:
    GoToIfSet FLAG_UNK_0x014E, _051A
    GoToIfUnset FLAG_CONTEST_MASTER_CUTE, _051A
    Message 37
    SetVar VAR_0x8004, 74
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x014E
    CloseMessage
    ReleaseAll
    End

_051A:
    GoToIfSet FLAG_UNK_0x014F, _0562
    GoToIfUnset FLAG_CONTEST_MASTER_TOUGH, _0562
    Message 38
    SetVar VAR_0x8004, 75
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x014F
    CloseMessage
    ReleaseAll
    End

_0562:
    GoToIfSet FLAG_UNK_0x0150, _05AA
    GoToIfUnset FLAG_CONTEST_MASTER_SMART, _05AA
    Message 39
    SetVar VAR_0x8004, 76
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x0150
    CloseMessage
    ReleaseAll
    End

_05AA:
    GoToIfSet FLAG_UNK_0x0151, _05F8
    GetUndergroundTalkCounter VAR_RESULT
    GoToIfLt VAR_RESULT, 100, _05F8
    Message 40
    SetVar VAR_0x8004, 77
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x0151
    CloseMessage
    ReleaseAll
    End

_05F8:
    GoToIfSet FLAG_UNK_0x0152, _0646
    GetUndergroundItemsGivenAway VAR_RESULT
    GoToIfLt VAR_RESULT, 100, _0646
    Message 41
    SetVar VAR_0x8004, 78
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x0152
    CloseMessage
    ReleaseAll
    End

_0646:
    GoToIfSet FLAG_UNK_0x0153, _0694
    GetUndergroundFossilsUnearthed VAR_RESULT
    GoToIfLt VAR_RESULT, 100, _0694
    Message 42
    SetVar VAR_0x8004, 79
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x0153
    CloseMessage
    ReleaseAll
    End

_0694:
    GoToIfSet FLAG_UNK_0x0154, _06E2
    GetUndergroundTrapsSet VAR_RESULT
    GoToIfLt VAR_RESULT, 100, _06E2
    Message 43
    SetVar VAR_0x8004, 80
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06F3
    CallCommonScript 0x7DC
    SetFlag FLAG_UNK_0x0154
    CloseMessage
    ReleaseAll
    End

_06E2:
    GoTo _06FE

_06E8:
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F3:
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06FE:
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0709:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_071C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_072D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0740:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0753:
    LockAll
    ApplyMovement LOCALID_PLAYER, _087C
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x2D5, _07A8
    GoToIfEq VAR_0x8005, 0x2D6, _07C0
    GoToIfEq VAR_0x8005, 0x2D7, _07D8
    GoToIfEq VAR_0x8005, 0x2D8, _07F0
    GoToIfEq VAR_0x8005, 0x2D9, _0808
    End

_07A8:
    SetObjectEventPos 32, 0x1D7, 0x2D5
    SetObjectEventPos 31, 0x1D7, 0x2D5
    GoTo _0820
    End

_07C0:
    SetObjectEventPos 32, 0x1D7, 0x2D6
    SetObjectEventPos 31, 0x1D7, 0x2D6
    GoTo _0820
    End

_07D8:
    SetObjectEventPos 32, 0x1D7, 0x2D7
    SetObjectEventPos 31, 0x1D7, 0x2D7
    GoTo _0820
    End

_07F0:
    SetObjectEventPos 32, 0x1D7, 0x2D8
    SetObjectEventPos 31, 0x1D7, 0x2D8
    GoTo _0820
    End

_0808:
    SetObjectEventPos 32, 0x1D7, 0x2D9
    SetObjectEventPos 31, 0x1D7, 0x2D9
    GoTo _0820
    End

_0820:
    ClearFlag FLAG_UNK_0x023C
    ClearFlag FLAG_UNK_0x023D
    AddObject 32
    AddObject 31
    ApplyMovement 31, _0884
    WaitMovement
    PlayCry SPECIES_BUNEARY
    WaitCry
    ApplyMovement 32, _0894
    WaitMovement
    Message 0
    Message 1
    PlayCry SPECIES_BUNEARY
    WaitCry
    RemoveObject 31
    Message 2
    CloseMessage
    ApplyMovement 32, _089C
    WaitMovement
    RemoveObject 32
    SetVar VAR_UNK_0x40F6, 1
    ReleaseAll
    End

    .balign 4, 0
_087C:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0884:
    WalkFastWest 9
    EndMovement

HearthomeCity_UnusedMovement2:
    WalkFastEast 8
    EndMovement

    .balign 4, 0
_0894:
    WalkFastWest 8
    EndMovement

    .balign 4, 0
_089C:
    WalkNormalEast 8
    EndMovement

_08A4:
    ShowMapSign 52
    End

_08BB:
    ShowScrollingSign 53
    End

_08D0:
    ShowLandmarkSign 54
    End

_08E7:
    ShowLandmarkSign 55
    End

_08FE:
    ShowArrowSign 56
    End

_0915:
    ShowArrowSign 57
    End

_092C:
    ShowLandmarkSign 58
    End

_0943:
    ShowLandmarkSign 59
    End

_095A:
    ShowLandmarkSign 60
    End

_0971:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0984:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0997:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
