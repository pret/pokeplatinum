#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_grandma_wilma_house.h"
#include "generated/pokemon_types.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09EA
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0100, _0041
    SetFlag FLAG_UNK_0x0100
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _005B
    GoTo _00A2

_0041:
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _005B
    GoTo _00A2

_005B:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0066:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0071:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0087:
    BufferMoveName 0, MOVE_DRACO_METEOR
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0097:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A2:
    GetPartyCount VAR_MAP_LOCAL_0
_00A6:
    SubVar VAR_MAP_LOCAL_0, 1
    GetPartyMonSpecies VAR_MAP_LOCAL_0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00FC
    GetPartyMonType VAR_0x8004, VAR_0x8005, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8004, TYPE_DRAGON, _00E7
    GoToIfEq VAR_0x8005, TYPE_DRAGON, _00E7
    GoTo _00FC

_00E7:
    CheckPartyMonHasMove VAR_RESULT, MOVE_DRACO_METEOR, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _010F
_00FC:
    GoToIfNe VAR_MAP_LOCAL_0, 0, _00A6
    GoTo _0066

_010F:
    Message 4
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, 0xFF, _005B
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 0, _007C
    Call _01D7
    GoToIfEq VAR_RESULT, 0, _0071
    CheckPartyMonHasMove VAR_RESULT, MOVE_DRACO_METEOR, VAR_0x8000
    GoToIfEq VAR_RESULT, 1, _0087
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfLt VAR_RESULT, 0xFF, _0097
    SetVar VAR_0x8003, 0x1B2
    GoTo _019B

_019B:
    FadeScreenOut
    WaitFadeScreen
    OpenMoveTutorMenu VAR_0x8000, 0x1B2
    CheckLearnedTutorMove VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, _005B
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D7:
    GetPartyMonType VAR_0x8004, VAR_0x8005, VAR_0x8000
    GoToIfEq VAR_0x8004, TYPE_DRAGON, _0201
    GoToIfEq VAR_0x8005, TYPE_DRAGON, _0201
    SetVar VAR_RESULT, 0
    Return

_0201:
    SetVar VAR_RESULT, 1
    Return

    .balign 4, 0
