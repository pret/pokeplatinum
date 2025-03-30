#include "macros/scrcmd.inc"
#include "res/text/bank/route_228_north_house.h"

    .data

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
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0055
    GoTo _028F

_003B:
    Message 1
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0055
    GoTo _028F

_0055:
    Message 2
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot 0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _028F
    GetPartyMonSpecies 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _02A5
    Call _0195
    GoToIfEq 0x800C, 0, _029A
    SetVar 0x8002, 0x800C
    Call _0251
    GoToIfEq 0x800C, 1, _02BB
    GetPartyMonFriendship 0x800C, 0x8000
    GoToIfLt 0x800C, 0xFF, _02B0
    BufferPartyMonSpecies 0, 0x8000
    GoToIfEq 0x8002, 1, _00FE
    GoToIfEq 0x8002, 2, _011E
    GoTo _013E

_00FE:
    Message 9
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _028F
    SetVar 0x8003, 0x133
    GoTo _015E

_011E:
    Message 10
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _028F
    SetVar 0x8003, 0x134
    GoTo _015E

_013E:
    Message 11
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _028F
    SetVar 0x8003, 0x152
    GoTo _015E

_015E:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_224 0x8000, 0x8003
    ScrCmd_225 0x800C
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _028F
    ReleaseAll
    End

_0195:
    GoToIfEq 0x8001, 6, _0239
    GoToIfEq 0x8001, 157, _0239
    GoToIfEq 0x8001, 0x101, _0239
    GoToIfEq 0x8001, 0x188, _0239
    GoToIfEq 0x8001, 9, _0241
    GoToIfEq 0x8001, 160, _0241
    GoToIfEq 0x8001, 0x104, _0241
    GoToIfEq 0x8001, 0x18B, _0241
    GoToIfEq 0x8001, 3, _0249
    GoToIfEq 0x8001, 154, _0249
    GoToIfEq 0x8001, 254, _0249
    GoToIfEq 0x8001, 0x185, _0249
    SetVar 0x800C, 0
    Return

_0239:
    SetVar 0x800C, 1
    Return

_0241:
    SetVar 0x800C, 2
    Return

_0249:
    SetVar 0x800C, 3
    Return

_0251:
    GoToIfEq 0x8002, 1, _0271
    GoToIfEq 0x8002, 2, _027B
    GoTo _0285

_0271:
    CheckPartyMonHasMove 0x800C, MOVE_BLAST_BURN, 0x8000
    Return

_027B:
    CheckPartyMonHasMove 0x800C, MOVE_HYDRO_CANNON, 0x8000
    Return

_0285:
    CheckPartyMonHasMove 0x800C, MOVE_FRENZY_PLANT, 0x8000
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

    .byte 0
