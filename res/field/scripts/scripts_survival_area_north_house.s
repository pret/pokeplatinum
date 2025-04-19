#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/survival_area_north_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0253
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _004C
    GoToIfEq VAR_RESULT, MENU_NO, _0232
    End

_004C:
    Message 2
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8000, 0xFF, _0232
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, _0227
    CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_SURVIVAL_AREA, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _023D
    BufferPartyMonNickname 0, VAR_0x8000
    Message 5
    ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_SURVIVAL_AREA, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, -2, _0232
    CheckCanAffordMove VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0248
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, _00FD
    GoTo _01F2
    End

_00FD:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _01B7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove VAR_0x8000, VAR_0x8003
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 4, _01B7
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message 12
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _01B7
    BufferPartyMonNickname 0, VAR_0x8000
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message 13
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message 14
    WaitTime 32, VAR_RESULT
    PlaySound SEQ_FANFA1
    BufferMoveName 1, VAR_0x8003
    Message 15
    WaitSound
    WaitTime 16, VAR_RESULT
    GoTo _0213
    End

_01B7:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _01DD
    GoTo _00FD
    End

_01DD:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 11
    GoTo _0232
    End

_01F2:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 8
    PlaySound SEQ_FANFA1
    WaitSound
    WaitTime 16, VAR_RESULT
    GoTo _0213
    End

_0213:
    PayShardsCost VAR_0x8003
    ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
    GoTo _0232
    End

_0227:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0232:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_023D:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0248:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0253:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
