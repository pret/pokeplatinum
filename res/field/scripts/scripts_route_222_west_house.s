#include "macros/scrcmd.inc"
#include "res/text/bank/route_222_west_house.h"

    .data

    ScriptEntry _001E
    ScriptEntry _0024
    ScriptEntry _0043
    ScriptEntry _0062
    ScriptEntry _0081
    ScriptEntry _00A0
    ScriptEntry _00BF
    ScriptEntryEnd

_001E:
    SetFlag FLAG_UNK_0x09EF
    End

_0024:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 0
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0043:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 1
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 3
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 4
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
