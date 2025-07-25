#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_east_house.h"


    ScriptEntry _000A
    ScriptEntry _0125
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_33C 4, 93
    GoToIfUnset FLAG_UNK_0x00E9, _003D
    CheckItem ITEM_HEART_SCALE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _005F
    GoTo _006A

_003D:
    SetFlag FLAG_UNK_0x00E9
    Message 0
    CheckItem ITEM_HEART_SCALE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _005F
    GoTo _006A

_005F:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    Message 1
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8005
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8005, 0xFF, _005F
    GetPartyMonSpecies VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _011A
    ScrCmd_21F VAR_RESULT, VAR_0x8005
    GoToIfEq VAR_RESULT, 0, _010F
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_221 VAR_0x8005
    ScrCmd_223 VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, _005F
    RemoveItem ITEM_HEART_SCALE, 1, VAR_RESULT
    BufferPlayerName 3
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010F:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011A:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0125:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
