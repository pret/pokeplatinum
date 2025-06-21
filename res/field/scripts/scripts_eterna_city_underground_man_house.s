#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_underground_man_house.h"

    .data

    ScriptEntry _001A
    ScriptEntry _0634
    ScriptEntry _0647
    ScriptEntry _0674
    ScriptEntry _0685
    ScriptEntry _0747
    ScriptEntryEnd

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x40B6, 9, _00B2
    GoToIfSet FLAG_UNK_0x0113, _0164
    GoToIfSet FLAG_UNK_0x0079, _007E
    Message 0
    SetVar VAR_0x8004, 0x1AC
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0079
    ClearFlag FLAG_UNK_0x0111
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _009C
    SetFlag FLAG_UNK_0x0113
    GoTo _0164

_007E:
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _009C
    SetFlag FLAG_UNK_0x0113
    GoTo _0164

_009C:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B2:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BD:
    SetFlag FLAG_UNK_0x0111
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    SetFlag FLAG_UNK_0x0111
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DB:
    SetFlag FLAG_UNK_0x0111
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EA:
    SetFlag FLAG_UNK_0x0111
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F9:
    SetFlag FLAG_UNK_0x0111
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0108:
    SetFlag FLAG_UNK_0x0111
    Message 24
    CloseMessage
    Call _057F
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0122:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012D:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0138:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0143:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014E:
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0159:
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0164:
    GoToIfEq VAR_UNK_0x40B6, 0, _01DF
    GoToIfEq VAR_UNK_0x40B6, 1, _023D
    GoToIfEq VAR_UNK_0x40B6, 2, _029B
    GoToIfEq VAR_UNK_0x40B6, 3, _02D9
    GoToIfEq VAR_UNK_0x40B6, 4, _0347
    GoToIfEq VAR_UNK_0x40B6, 5, _03D9
    GoToIfEq VAR_UNK_0x40B6, 6, _0448
    GoToIfEq VAR_UNK_0x40B6, 7, _04A9
    GoToIfEq VAR_UNK_0x40B6, 8, _050A
    GoTo _00B2

_01DF:
    GoToIfUnset FLAG_UNK_0x0111, _00BD
    GoToIfUnset FLAG_ENTERED_UNDERGROUND, _0122
    SetVar VAR_UNK_0x40B6, 1
    ClearFlag FLAG_UNK_0x0111
    Message 6
    SetVar VAR_0x8004, 1
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DD
    SetVar VAR_0x8004, 23
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DD
    SetVar VAR_0x8004, 28
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DD
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_023D:
    GoToIfUnset FLAG_UNK_0x0111, _00CC
    GoToIfUnset FLAG_DIGGING_FOR_FOSSILS, _012D
    SetVar VAR_UNK_0x40B6, 2
    ClearFlag FLAG_UNK_0x0111
    Message 10
    SetVar VAR_0x8004, 1
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DE
    SetVar VAR_0x8004, 3
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DE
    SetVar VAR_0x8004, 4
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DE
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_029B:
    GoToIfUnset FLAG_UNK_0x0111, _00DB
    GoToIfUnset FLAG_SPHERE_ACQUIRED, _0138
    SetVar VAR_UNK_0x40B6, 3
    ClearFlag FLAG_UNK_0x0111
    Message 14
    SetVar VAR_0x8004, 33
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DD
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02D9:
    GoToIfUnset FLAG_UNK_0x0111, _00EA
    GoToIfUnset FLAG_CREATED_SECRET_BASE, _0143
    SetVar VAR_UNK_0x40B6, 4
    ClearFlag FLAG_UNK_0x0111
    Message 18
    SetVar VAR_0x8004, 11
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    SetVar VAR_0x8004, 9
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    SetVar VAR_0x8004, 17
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    SetVar VAR_0x8004, 113
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0347:
    GoToIfUnset FLAG_UNK_0x0111, _00F9
    GoToIfUnset FLAG_DECORATED_SECRET_BASE, _014E
    SetVar VAR_UNK_0x40B6, 5
    ClearFlag FLAG_UNK_0x0111
    ClearFlag FLAG_UNK_0x00FC
    Message 22
    Call _037F
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_037F:
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, _03A3
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, _03B5
    GoTo _03C7

_03A3:
    SetVar VAR_0x8004, 101
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    Return

_03B5:
    SetVar VAR_0x8004, 102
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    Return

_03C7:
    SetVar VAR_0x8004, 103
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    Return

_03D9:
    GoToIfUnset FLAG_UNK_0x0111, _0108
    GoToIfUnset FLAG_DELIVERED_STOLEN_FLAG, _0159
    CallIfSet FLAG_UNK_0x00FC, _057A
    CallIfUnset FLAG_UNK_0x00FC, _0443
    SetVar VAR_0x8004, 81
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _056B
    CallCommonScript 0x7FE
    SetVar VAR_UNK_0x40B6, 6
    ClearFlag FLAG_UNK_0x0111
    ClearFlag FLAG_UNK_0x00FC
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0443:
    Message 27
    Return

_0448:
    GetCapturedFlagCount VAR_RESULT
    GoToIfLt VAR_RESULT, 3, _00A7
    CallIfSet FLAG_UNK_0x00FC, _057A
    CallIfUnset FLAG_UNK_0x00FC, _04A4
    SetVar VAR_0x8004, 82
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _056B
    CallCommonScript 0x7DC
    SetVar VAR_UNK_0x40B6, 7
    ClearFlag FLAG_UNK_0x00FC
    CloseMessage
    ReleaseAll
    End

_04A4:
    Message 30
    Return

_04A9:
    GetCapturedFlagCount VAR_RESULT
    GoToIfLt VAR_RESULT, 10, _00A7
    CallIfSet FLAG_UNK_0x00FC, _057A
    CallIfUnset FLAG_UNK_0x00FC, _0505
    SetVar VAR_0x8004, 83
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _056B
    CallCommonScript 0x7DC
    SetVar VAR_UNK_0x40B6, 8
    ClearFlag FLAG_UNK_0x00FC
    CloseMessage
    ReleaseAll
    End

_0505:
    Message 31
    Return

_050A:
    GetCapturedFlagCount VAR_RESULT
    GoToIfLt VAR_RESULT, 50, _00A7
    CallIfSet FLAG_UNK_0x00FC, _057A
    CallIfUnset FLAG_UNK_0x00FC, _0566
    SetVar VAR_0x8004, 84
    SetVar VAR_0x8005, 1
    ScrCmd_085 VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _056B
    CallCommonScript 0x7DC
    SetVar VAR_UNK_0x40B6, 9
    ClearFlag FLAG_UNK_0x00FC
    CloseMessage
    ReleaseAll
    End

_0566:
    Message 32
    Return

_056B:
    SetFlag FLAG_UNK_0x00FC
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_057A:
    Message 35
    Return

_057F:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 5, _05B2
    GoToIfEq VAR_0x8004, 7, _05BE
    GoToIfEq VAR_0x8005, 4, _05CA
    GoTo _05D6

_05B2:
    ApplyMovement 2, _05E4
    WaitMovement
    Return

_05BE:
    ApplyMovement 2, _05F8
    WaitMovement
    Return

_05CA:
    ApplyMovement 2, _060C
    WaitMovement
    Return

_05D6:
    ApplyMovement 2, _0620
    WaitMovement
    Return

    .balign 4, 0
_05E4:
    WalkSlowNorth
    WalkSlowSouth 2
    WalkSlowNorth
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_05F8:
    WalkSlowNorth
    WalkSlowSouth 2
    WalkSlowNorth
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_060C:
    WalkSlowWest
    WalkSlowEast 2
    WalkSlowWest
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0620:
    WalkSlowWest
    WalkSlowEast 2
    WalkSlowWest
    WalkOnSpotFastSouth
    EndMovement

_0634:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 36
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0647:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00BD, _0669
    SetFlag FLAG_UNK_0x00BD
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0669:
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0674:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0685:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 41
    GoTo _0696
    End

_0696:
    Message 42
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 180, 0
    AddMenuEntryImm 181, 1
    AddMenuEntryImm 182, 2
    AddMenuEntryImm 183, 3
    AddMenuEntryImm 184, 4
    AddMenuEntryImm 12, 5
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _070A
    GoToIfEq VAR_0x8008, 1, _0715
    GoToIfEq VAR_0x8008, 2, _0720
    GoToIfEq VAR_0x8008, 3, _072B
    GoToIfEq VAR_0x8008, 4, _0736
    GoTo _0741
    End

_070A:
    Message 43
    GoTo _0696
    End

_0715:
    Message 44
    GoTo _0696
    End

_0720:
    Message 45
    GoTo _0696
    End

_072B:
    Message 46
    GoTo _0696
    End

_0736:
    Message 47
    GoTo _0696
    End

_0741:
    CloseMessage
    ReleaseAll
    End

_0747:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
