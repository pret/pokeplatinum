#include "macros/scrcmd.inc"
#include "res/text/bank/route_228_north_house.h"


    ScriptEntry _000A
    ScriptEntry _02C6
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0108, _003B
    SetFlag FLAG_UNK_0x0108
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0055
    GoTo _028F

_003B:
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0055
    GoTo _028F

_0055:
    Message 2
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, 0xFF, _028F
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 0, _02A5
    Call _0195
    GoToIfEq VAR_RESULT, 0, _029A
    SetVar VAR_0x8002, VAR_RESULT
    Call _0251
    GoToIfEq VAR_RESULT, 1, _02BB
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfLt VAR_RESULT, 0xFF, _02B0
    BufferPartyMonSpecies 0, VAR_0x8000
    GoToIfEq VAR_0x8002, 1, _00FE
    GoToIfEq VAR_0x8002, 2, _011E
    GoTo _013E

_00FE:
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _028F
    SetVar VAR_0x8003, 0x133
    GoTo _015E

_011E:
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _028F
    SetVar VAR_0x8003, 0x134
    GoTo _015E

_013E:
    Message 11
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _028F
    SetVar VAR_0x8003, 0x152
    GoTo _015E

_015E:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenMoveTutorMenu VAR_0x8000, VAR_0x8003
    CheckLearnedTutorMove VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, _028F
    ReleaseAll
    End

_0195:
    GoToIfEq VAR_0x8001, 6, _0239
    GoToIfEq VAR_0x8001, 157, _0239
    GoToIfEq VAR_0x8001, 0x101, _0239
    GoToIfEq VAR_0x8001, 0x188, _0239
    GoToIfEq VAR_0x8001, 9, _0241
    GoToIfEq VAR_0x8001, 160, _0241
    GoToIfEq VAR_0x8001, 0x104, _0241
    GoToIfEq VAR_0x8001, 0x18B, _0241
    GoToIfEq VAR_0x8001, 3, _0249
    GoToIfEq VAR_0x8001, 154, _0249
    GoToIfEq VAR_0x8001, 254, _0249
    GoToIfEq VAR_0x8001, 0x185, _0249
    SetVar VAR_RESULT, 0
    Return

_0239:
    SetVar VAR_RESULT, 1
    Return

_0241:
    SetVar VAR_RESULT, 2
    Return

_0249:
    SetVar VAR_RESULT, 3
    Return

_0251:
    GoToIfEq VAR_0x8002, 1, _0271
    GoToIfEq VAR_0x8002, 2, _027B
    GoTo _0285

_0271:
    CheckPartyMonHasMove VAR_RESULT, MOVE_BLAST_BURN, VAR_0x8000
    Return

_027B:
    CheckPartyMonHasMove VAR_RESULT, MOVE_HYDRO_CANNON, VAR_0x8000
    Return

_0285:
    CheckPartyMonHasMove VAR_RESULT, MOVE_FRENZY_PLANT, VAR_0x8000
    Return

_028F:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_029A:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A5:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02B0:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02BB:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02C6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
