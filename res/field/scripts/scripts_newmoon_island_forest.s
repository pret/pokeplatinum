#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/newmoon_island_forest.h"


    ScriptEntry _000E
    ScriptEntry _005E
    ScriptEntry _0079
    ScriptEntryEnd

_000E:
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0058
    CheckItem ITEM_MEMBER_CARD, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _0058
    CheckDistributionEvent DISTRIBUTION_EVENT_DARKRAI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _0058
    GoToIfSet FLAG_UNK_0x0158, _0058
    ClearFlag FLAG_UNK_0x0240
    End

_0058:
    SetFlag FLAG_UNK_0x0240
    End

_005E:
    GoToIfSet FLAG_UNK_0x008E, _006B
    End

_006B:
    SetFlag FLAG_UNK_0x0240
    RemoveObject 0
    ClearFlag FLAG_UNK_0x008E
    End

_0079:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    WaitFanfare SEQ_SE_CONFIRM
    Message 0
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_DARKRAI, 50
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _014C
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _00D8
    SetFlag FLAG_UNK_0x0158
_00BC:
    SetFlag FLAG_UNK_0x0241
    GoToIfEq VAR_UNK_0x40F8, 2, _00E3
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    Message 1
    CloseMessage
    GoTo _00BC

_00E3:
    Message 2
    CloseMessage
    WaitTime 30, VAR_RESULT
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    FadeScreen 6, 6, 0, 0
    WaitFadeScreen
    WaitTime 120, VAR_RESULT
    Warp MAP_HEADER_CANALAVE_CITY_HARBOR_INN, 0, 8, 6, 1
    FadeScreen 6, 6, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_014C:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
