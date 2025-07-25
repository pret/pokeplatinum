#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_gym_room_1.h"


    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0056
    ScriptEntryEnd

_0012:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForSunyshoreGym 0
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0048
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    BufferPlayerName 0
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _007A
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    GoToIfGe VAR_UNK_0x40EF, 1, _0098
    BufferPlayerName 0
    BufferRivalName 1
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0098:
    BufferPlayerName 0
    BufferRivalName 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
