#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/snowpoint_city_east_house.h"


    ScriptEntry _000A
    ScriptEntry _0085
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AAD, _0064
    ScrCmd_27F VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _007A
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _006F
    ScrCmd_27D VAR_RESULT, 0
    GoToIfEq VAR_RESULT, -1, _007A
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00B0
    GoToIfEq VAR_RESULT, MENU_NO, _0296
    End

_00B0:
    Message 9
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8000, 0xFF, _0296
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 0, _028B
    CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _02A1
    BufferPartyMonNickname 0, VAR_0x8000
    Message 12
    ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, -2, _0296
    CheckCanAffordMove VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _02AC
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, _0161
    GoTo _0256
    End

_0161:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 16
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _021B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove VAR_0x8000, VAR_0x8003
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 4, _021B
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message 19
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _021B
    BufferPartyMonNickname 0, VAR_0x8000
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message 20
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message 21
    WaitTime 32, VAR_RESULT
    PlaySound SEQ_FANFA1
    BufferMoveName 1, VAR_0x8003
    Message 22
    WaitSound
    WaitTime 16, VAR_RESULT
    GoTo _0277
    End

_021B:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 17
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0241
    GoTo _0161
    End

_0241:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 18
    GoTo _0296
    End

_0256:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 15
    PlaySound SEQ_FANFA1
    WaitSound
    WaitTime 16, VAR_RESULT
    GoTo _0277
    End

_0277:
    PayShardsCost VAR_0x8003
    ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
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

    .balign 4, 0
