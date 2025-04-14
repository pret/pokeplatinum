#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/route_212_house.h"

    .data

    ScriptEntry _0016
    ScriptEntry _001C
    ScriptEntry _002F
    ScriptEntry _0042
    ScriptEntry _0053
    ScriptEntryEnd

_0016:
    SetFlag FLAG_UNK_0x09EC
    End

_001C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0053:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _007E
    GoToIfEq VAR_0x800C, MENU_NO, _0264
    End

_007E:
    Message 2
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8000, 0xFF, _0264
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 0, _0259
    CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_ROUTE_212, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _026F
    BufferPartyMonNickname 0, VAR_0x8000
    Message 5
    ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_ROUTE_212, VAR_0x800C
    SetVar VAR_0x8003, VAR_0x800C
    GoToIfEq VAR_0x8003, -2, _0264
    CheckCanAffordMove VAR_0x8003, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _027A
    GetPartyMonMoveCount VAR_0x800C, VAR_0x8000
    SetVar VAR_0x8002, VAR_0x800C
    GoToIfEq VAR_0x800C, 4, _012F
    GoTo _0224
    End

_012F:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 9
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_NO, _01E9
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove VAR_0x8000, VAR_0x8003
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 4, _01E9
    GetPartyMonMove VAR_0x800C, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_0x800C
    Message 12
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_NO, _01E9
    BufferPartyMonNickname 0, VAR_0x8000
    GetPartyMonMove VAR_0x800C, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_0x800C
    Message 13
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, VAR_0x800C
    Message 14
    WaitTime 32, VAR_0x800C
    PlaySound SEQ_FANFA1
    BufferMoveName 1, VAR_0x8003
    Message 15
    WaitSound
    WaitTime 16, VAR_0x800C
    GoTo _0245
    End

_01E9:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 10
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _020F
    GoTo _012F
    End

_020F:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 11
    GoTo _0264
    End

_0224:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message 8
    PlaySound SEQ_FANFA1
    WaitSound
    WaitTime 16, VAR_0x800C
    GoTo _0245
    End

_0245:
    PayShardsCost VAR_0x8003
    ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
    GoTo _0264
    End

_0259:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0264:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026F:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_027A:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
