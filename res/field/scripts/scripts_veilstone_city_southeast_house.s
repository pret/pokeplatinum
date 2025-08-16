#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_southeast_house.h"


    ScriptEntry _000A
    ScriptEntry _018C
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00BC, _00EF
    Message 0
    Message 1
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 2, _005F
    GoToIfEq VAR_RESULT, 0, _006F
    GoToIfEq VAR_RESULT, 3, _007F
    GoToIfEq VAR_RESULT, 1, _008F
    End

_005F:
    ApplyMovement 0, _0144
    WaitMovement
    GoTo _009F

_006F:
    ApplyMovement 0, _0168
    WaitMovement
    GoTo _009F

_007F:
    ApplyMovement 0, _00FC
    WaitMovement
    GoTo _009F

_008F:
    ApplyMovement 0, _0120
    WaitMovement
    GoTo _009F

_009F:
    Message 2
    InitGlobalTextMenu 1, 1, 0, VAR_0x8000, NO_EXIT_ON_B
    AddMenuEntryImm 174, 0
    AddMenuEntryImm 175, 1
    ShowMenu
    GetRandom VAR_RESULT, 2
    GoToIfEq VAR_RESULT, 0, _00E4
    Message 4
    SetVar VAR_0x8004, 0x1BC
    SetVar VAR_0x8005, 1
    SetFlag FLAG_UNK_0x00BC
    CallCommonScript CommonScript_Unk10
    CloseMessage
    ReleaseAll
    End

_00E4:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EF:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00FC:
    FaceNorth
    Delay2
    FaceEast
    Delay2
    FaceSouth
    Delay2
    FaceWest
    Delay2
    EndMovement

    .balign 4, 0
_0120:
    FaceEast
    Delay2
    FaceSouth
    Delay2
    FaceWest
    Delay2
    FaceNorth
    Delay2
    EndMovement

    .balign 4, 0
_0144:
    FaceSouth
    Delay2
    FaceWest
    Delay2
    FaceNorth
    Delay2
    FaceEast
    Delay2
    EndMovement

    .balign 4, 0
_0168:
    FaceWest
    Delay2
    FaceNorth
    Delay2
    FaceEast
    Delay2
    FaceSouth
    Delay2
    EndMovement

_018C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
