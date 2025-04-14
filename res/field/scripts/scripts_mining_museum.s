#include "macros/scrcmd.inc"
#include "res/text/bank/mining_museum.h"

    .data

    ScriptEntry _0042
    ScriptEntry _0055
    ScriptEntry _04C1
    ScriptEntry _04D4
    ScriptEntry _04E7
    ScriptEntry _04FA
    ScriptEntry _050B
    ScriptEntry _051C
    ScriptEntry _052D
    ScriptEntry _053E
    ScriptEntry _054F
    ScriptEntry _0560
    ScriptEntry _0571
    ScriptEntry _0582
    ScriptEntry _0595
    ScriptEntry _05A8
    ScriptEntryEnd

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0055:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, _03D8
    Message 1
    GoToIfUnset FLAG_UNK_0x0079, _04B6
    GoToIfNe 0x40B4, 0, _03F2
    ScrCmd_1F1 0x8000
    GoToIfEq 0x8000, 0, _04AB
    Message 2
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _03E7
    GoToIfEq 0x8000, 1, _03BC
    SetVar 0x8001, 0
    CheckItem ITEM_OLD_AMBER, 1, 0x800C
    AddVar 0x8001, 0x800C
    CheckItem ITEM_HELIX_FOSSIL, 1, 0x800C
    AddVar 0x8001, 0x800C
    CheckItem ITEM_DOME_FOSSIL, 1, 0x800C
    AddVar 0x8001, 0x800C
    CheckItem ITEM_ROOT_FOSSIL, 1, 0x800C
    AddVar 0x8001, 0x800C
    CheckItem ITEM_CLAW_FOSSIL, 1, 0x800C
    AddVar 0x8001, 0x800C
    CheckItem ITEM_ARMOR_FOSSIL, 1, 0x800C
    AddVar 0x8001, 0x800C
    CheckItem ITEM_SKULL_FOSSIL, 1, 0x800C
    AddVar 0x8001, 0x800C
    GoToIfEq 0x8001, 1, _03BC
    SetVar 0x8004, 0
    SetVar 0x8005, 0
    InitGlobalTextMenu 1, 1, 0, 0x8003
_013E:
    CallIfEq 0x8005, 0, _02DC
    CallIfEq 0x8005, 1, _02EC
    CallIfEq 0x8005, 2, _02FC
    CallIfEq 0x8005, 3, _030C
    CallIfEq 0x8005, 4, _031C
    CallIfEq 0x8005, 5, _032C
    CallIfEq 0x8005, 6, _033C
    GoToIfEq 0x800C, 0, _0219
    CallIfEq 0x8004, 0, _034C
    CallIfEq 0x8004, 1, _0354
    CallIfEq 0x8004, 2, _035C
    CallIfEq 0x8004, 3, _0364
    CallIfEq 0x8004, 4, _036C
    CallIfEq 0x8004, 5, _0374
    CallIfEq 0x8004, 6, _037C
    SetVar 0x8006, 0x8005
    AddVar 0x8006, 156
    AddMenuEntry 0x8006, 0x8004
    GoTo _0225

_0219:
    AddVar 0x8005, 1
    GoTo _013E

_0225:
    AddVar 0x8004, 1
    AddVar 0x8005, 1
    GoToIfNe 0x8004, 0x8001, _013E
    AddMenuEntry 44, 0x8004
    ShowMenu
    GoToIfEq 0x8003, 0xFF, _03E7
    GoToIfEq 0x8003, VAR_0x4000, _03E7
    CallIfEq 0x8003, 0, _0384
    CallIfEq 0x8003, 1, _038C
    CallIfEq 0x8003, 2, _0394
    CallIfEq 0x8003, 3, _039C
    CallIfEq 0x8003, 4, _03A4
    CallIfEq 0x8003, 5, _03AC
    CallIfEq 0x8003, 6, _03B4
    ScrCmd_1F4 0x40B4, 0x8002
    GoToIfEq 0x40B4, 0, _03E7
    RemoveItem 0x8002, 1, 0x800C
    GoTo _03D8

_02DC:
    SetVar VAR_0x4000, 103
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_02EC:
    SetVar VAR_0x4000, 101
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_02FC:
    SetVar VAR_0x4000, 102
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_030C:
    SetVar VAR_0x4000, 99
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_031C:
    SetVar VAR_0x4000, 100
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_032C:
    SetVar VAR_0x4000, 104
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_033C:
    SetVar VAR_0x4000, 105
    CheckItem VAR_0x4000, 1, 0x800C
    Return

_034C:
    SetVar VAR_0x4001, VAR_0x4000
    Return

_0354:
    SetVar VAR_0x4002, VAR_0x4000
    Return

_035C:
    SetVar VAR_0x4003, VAR_0x4000
    Return

_0364:
    SetVar VAR_0x4004, VAR_0x4000
    Return

_036C:
    SetVar VAR_0x4005, VAR_0x4000
    Return

_0374:
    SetVar VAR_0x4006, VAR_0x4000
    Return

_037C:
    SetVar VAR_0x4007, VAR_0x4000
    Return

_0384:
    SetVar 0x8002, VAR_0x4001
    Return

_038C:
    SetVar 0x8002, VAR_0x4002
    Return

_0394:
    SetVar 0x8002, VAR_0x4003
    Return

_039C:
    SetVar 0x8002, VAR_0x4004
    Return

_03A4:
    SetVar 0x8002, VAR_0x4005
    Return

_03AC:
    SetVar 0x8002, VAR_0x4006
    Return

_03B4:
    SetVar 0x8002, VAR_0x4007
    Return

_03BC:
    ScrCmd_1F5 0x8002, 0x8004, 1
    ScrCmd_1F4 0x40B4, 0x8002
    RemoveItem 0x8002, 1, 0x800C
    GoTo _03D8

_03D8:
    SetFlag FLAG_UNK_0x0001
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03E7:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03F2:
    BufferSpeciesNameFromVar 0, 0x40B4, 0, 0
    Message 7
    GetPartyCount 0x800C
    GoToIfEq 0x800C, 6, _04A0
    BufferSpeciesNameFromVar 1, 0x40B4, 0, 0
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message 8
    WaitSound
    GivePokemon 0x40B4, 20, ITEM_NONE, 0x800C
    IncrementGameRecord RECORD_UNK_115
    SetVar 0x40B4, 0
    Message 9
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0459
    GoToIfEq 0x800C, MENU_NO, _049A
    End

_0459:
    CloseMessage
    GetPartyCount VAR_0x4000
    SubVar VAR_0x4000, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB VAR_0x4000, 0x800C
    CallIfNe 0x800C, 1, _0494
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0494:
    IncrementGameRecord RECORD_UNK_049
    Return

_049A:
    CloseMessage
    ReleaseAll
    End

_04A0:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04AB:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04B6:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04C1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04FA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_050B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_051C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_052D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_053E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_054F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0560:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0571:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0582:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0595:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
