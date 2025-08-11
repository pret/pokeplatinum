#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area.h"


    ScriptEntry _005C
    ScriptEntry _006F
    ScriptEntry _0082
    ScriptEntry _0095
    ScriptEntry _00BE
    ScriptEntry _00D5
    ScriptEntry _0130
    ScriptEntry _002A
    ScriptEntry _0045
    ScriptEntry _0141
    ScriptEntryEnd

_002A:
    GoTo _0032
    End

_0032:
    GetRandom VAR_UNK_0x40C2, 3
    GoToIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _0052
    End

_0045:
    GoToIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _0052
    End

_0052:
    SetWarpEventPos 0, 0x28C, 0x150
    End

_005C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0095:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D7, _00B3
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B3:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BE:
    ShowMapSign 13
    End

_00D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message 0
    CloseMessage
    ApplyMovement 8, _011C
    WaitMovement
    ScrCmd_168 20, 10, 12, 18, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 8, _0124
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 8
    ReleaseAll
    End

    .balign 4, 0
_011C:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0124:
    WalkNormalNorth
    SetInvisible
    EndMovement

_0130:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0141:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SUNDAY, _01BE
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SATURDAY, _01BE
    BufferRivalName 0
    BufferPlayerName 1
    SetVar VAR_0x8008, VAR_UNK_0x40C2
    GoToIfEq VAR_0x8008, 0, _0195
    GoToIfEq VAR_0x8008, 1, _01A0
    GoTo _01AB
    End

_0195:
    Message 4
    GoTo _01B6
    End

_01A0:
    Message 5
    GoTo _01B6
    End

_01AB:
    Message 6
    GoTo _01B6
    End

_01B6:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BE:
    GoToIfSet FLAG_UNK_0x0AB2, _02CB
    BufferRivalName 0
    BufferPlayerName 1
    Message 2
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, _0236
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, _0272
    GoTo _01FA
    End

_01FA:
    ScrCmd_28F VAR_RESULT
    GoToIfLt VAR_RESULT, 20, _021A
    GoToIfGe VAR_RESULT, 20, _0228
    End

_021A:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_1_PIPLUP
    GoTo _02AE
    End

_0228:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_2_PIPLUP
    GoTo _02AE
    End

_0236:
    ScrCmd_28F VAR_RESULT
    GoToIfLt VAR_RESULT, 20, _0256
    GoToIfGe VAR_RESULT, 20, _0264
    End

_0256:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_1_TURTWIG
    GoTo _02AE
    End

_0264:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_2_TURTWIG
    GoTo _02AE
    End

_0272:
    ScrCmd_28F VAR_RESULT
    GoToIfLt VAR_RESULT, 20, _0292
    GoToIfGe VAR_RESULT, 20, _02A0
    End

_0292:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_1_CHIMCHAR
    GoTo _02AE
    End

_02A0:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_2_CHIMCHAR
    GoTo _02AE
    End

_02AE:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _02DC
    SetFlag FLAG_UNK_0x0AB2
    GoTo _02CB
    End

_02CB:
    BufferRivalName 0
    BufferPlayerName 1
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DC:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
