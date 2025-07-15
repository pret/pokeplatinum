#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_rival_house_1f.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0090, _00B0
    GoToIfGe VAR_UNK_0x4095, 1, _0082
    GoToIfSet FLAG_UNK_0x006E, _0090
    GoToIfSet FLAG_UNK_0x00EA, _009E
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _005C
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _006B
    End

_005C:
    BufferPlayerName 0
    BufferRivalName 1
    Message 0
    GoTo _007A

_006B:
    BufferPlayerName 0
    BufferRivalName 1
    Message 1
    GoTo _007A

_007A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    BufferRivalName 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0090:
    BufferRivalName 1
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009E:
    SetFlag FLAG_UNK_0x006E
    BufferRivalName 1
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B0:
    BufferRivalName 1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
