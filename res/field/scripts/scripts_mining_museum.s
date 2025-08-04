#include "macros/scrcmd.inc"
#include "res/text/bank/mining_museum.h"


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
    GoToIfNe VAR_UNK_0x40B4, 0, _03F2
    ScrCmd_1F1 VAR_0x8000
    GoToIfEq VAR_0x8000, 0, _04AB
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _03E7
    GoToIfEq VAR_0x8000, 1, _03BC
    SetVar VAR_0x8001, 0
    CheckItem ITEM_OLD_AMBER, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_HELIX_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_DOME_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_ROOT_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_CLAW_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_ARMOR_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_SKULL_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_0x8001, 1, _03BC
    SetVar VAR_0x8004, 0
    SetVar VAR_0x8005, 0
    InitGlobalTextMenu 1, 1, 0, VAR_0x8003
_013E:
    CallIfEq VAR_0x8005, 0, MiningMuseum_CheckFossil_OldAmber
    CallIfEq VAR_0x8005, 1, MiningMuseum_CheckFossil_HelixFossil
    CallIfEq VAR_0x8005, 2, MiningMuseum_CheckFossil_DomeFossil
    CallIfEq VAR_0x8005, 3, MiningMuseum_CheckFossil_RootFossil
    CallIfEq VAR_0x8005, 4, MiningMuseum_CheckFossil_ClawFossil
    CallIfEq VAR_0x8005, 5, MiningMuseum_CheckFossil_ArmorFossil
    CallIfEq VAR_0x8005, 6, MiningMuseum_CheckFossil_SkullFossil
    GoToIfEq VAR_RESULT, FALSE, _0219
    CallIfEq VAR_0x8004, 0, _034C
    CallIfEq VAR_0x8004, 1, _0354
    CallIfEq VAR_0x8004, 2, _035C
    CallIfEq VAR_0x8004, 3, _0364
    CallIfEq VAR_0x8004, 4, _036C
    CallIfEq VAR_0x8004, 5, _0374
    CallIfEq VAR_0x8004, 6, _037C
    SetVar VAR_0x8006, VAR_0x8005
    AddVar VAR_0x8006, 156
    AddMenuEntry VAR_0x8006, VAR_0x8004
    GoTo _0225

_0219:
    AddVar VAR_0x8005, 1
    GoTo _013E

_0225:
    AddVar VAR_0x8004, 1
    AddVar VAR_0x8005, 1
    GoToIfNe VAR_0x8004, VAR_0x8001, _013E
    AddMenuEntry 44, VAR_0x8004
    ShowMenu
    GoToIfEq VAR_0x8003, 0xFF, _03E7
    GoToIfEq VAR_0x8003, VAR_MAP_LOCAL_0, _03E7
    CallIfEq VAR_0x8003, 0, _0384
    CallIfEq VAR_0x8003, 1, _038C
    CallIfEq VAR_0x8003, 2, _0394
    CallIfEq VAR_0x8003, 3, _039C
    CallIfEq VAR_0x8003, 4, _03A4
    CallIfEq VAR_0x8003, 5, _03AC
    CallIfEq VAR_0x8003, 6, _03B4
    ScrCmd_1F4 VAR_UNK_0x40B4, VAR_0x8002
    GoToIfEq VAR_UNK_0x40B4, 0, _03E7
    RemoveItem VAR_0x8002, 1, VAR_RESULT
    GoTo _03D8

MiningMuseum_CheckFossil_OldAmber:
    SetVar VAR_MAP_LOCAL_0, ITEM_OLD_AMBER
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_HelixFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_HELIX_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_DomeFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_DOME_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_RootFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_ROOT_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_ClawFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_CLAW_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_ArmorFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_ARMOR_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_SkullFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_SKULL_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

_034C:
    SetVar VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    Return

_0354:
    SetVar VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_0
    Return

_035C:
    SetVar VAR_MAP_LOCAL_3, VAR_MAP_LOCAL_0
    Return

_0364:
    SetVar VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_0
    Return

_036C:
    SetVar VAR_MAP_LOCAL_5, VAR_MAP_LOCAL_0
    Return

_0374:
    SetVar VAR_MAP_LOCAL_6, VAR_MAP_LOCAL_0
    Return

_037C:
    SetVar VAR_MAP_LOCAL_7, VAR_MAP_LOCAL_0
    Return

_0384:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_1
    Return

_038C:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_2
    Return

_0394:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_3
    Return

_039C:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_4
    Return

_03A4:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_5
    Return

_03AC:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_6
    Return

_03B4:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_7
    Return

_03BC:
    ScrCmd_1F5 VAR_0x8002, VAR_0x8004, 1
    ScrCmd_1F4 VAR_UNK_0x40B4, VAR_0x8002
    RemoveItem VAR_0x8002, 1, VAR_RESULT
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
    BufferSpeciesNameFromVar 0, VAR_UNK_0x40B4, 0, 0
    Message 7
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, _04A0
    BufferSpeciesNameFromVar 1, VAR_UNK_0x40B4, 0, 0
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message 8
    WaitSound
    GivePokemon VAR_UNK_0x40B4, 20, ITEM_NONE, VAR_RESULT
    IncrementGameRecord RECORD_UNK_115
    SetVar VAR_UNK_0x40B4, 0
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0459
    GoToIfEq VAR_RESULT, MENU_NO, _049A
    End

_0459:
    CloseMessage
    GetPartyCount VAR_MAP_LOCAL_0
    SubVar VAR_MAP_LOCAL_0, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB VAR_MAP_LOCAL_0, VAR_RESULT
    CallIfNe VAR_RESULT, 1, _0494
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

    .balign 4, 0
