#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/snowpoint_city_east_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0085
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AAD, _0064
    ScrCmd_27F 0x800C
    GoToIfEq 0x800C, 1, _007A
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _006F
    ScrCmd_27D 0x800C, 0
    GoToIfEq 0x800C, -1, _007A
    SetFlag FLAG_UNK_0x0AAD
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0064:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0085:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00B0
    GoToIfEq 0x800C, MENU_NO, _0296
    End

_00B0:
    Message 9
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot 0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _0296
    GetPartyMonSpecies 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _028B
    CheckHasLearnableTutorMoves 0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, 0x800C
    GoToIfEq 0x800C, 0, _02A1
    BufferPartyMonNickname 0, 0x8000
    Message 12
    ShowMoveTutorMoveSelectionMenu 0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, 0x800C
    SetVar 0x8003, 0x800C
    GoToIfEq 0x8003, -2, _0296
    CheckCanAffordMove 0x8003, 0x800C
    GoToIfEq 0x800C, 0, _02AC
    GetPartyMonMoveCount 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    GoToIfEq 0x800C, 4, _0161
    GoTo _0256
    End

_0161:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8003
    Message 16
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _021B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove 0x8000, 0x8003
    GetSummarySelectedMoveSlot 0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 4, _021B
    GetPartyMonMove 0x800C, 0x8000, 0x8002
    BufferMoveName 1, 0x800C
    Message 19
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _021B
    BufferPartyMonNickname 0, 0x8000
    GetPartyMonMove 0x800C, 0x8000, 0x8002
    BufferMoveName 1, 0x800C
    Message 20
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, 0x800C
    Message 21
    WaitTime 32, 0x800C
    PlaySound SEQ_FANFA1
    BufferMoveName 1, 0x8003
    Message 22
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0277
    End

_021B:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8003
    Message 17
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0241
    GoTo _0161
    End

_0241:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8003
    Message 18
    GoTo _0296
    End

_0256:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8003
    Message 15
    PlaySound SEQ_FANFA1
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0277
    End

_0277:
    PayShardsCost 0x8003
    ResetMoveSlot 0x8000, 0x8002, 0x8003
    GoTo _0296
    End

_028B:
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0296:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A1:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02AC:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
