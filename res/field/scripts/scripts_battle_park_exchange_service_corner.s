#include "macros/scrcmd.inc"
#include "res/text/bank/battle_park_exchange_service_corner.h"


    ScriptEntry _0024
    ScriptEntry _002A
    ScriptEntry _0192
    ScriptEntry _01A5
    ScriptEntry _01B8
    ScriptEntry _01CB
    ScriptEntry _01DE
    ScriptEntry _01F1
    ScriptEntry _01F1

_0024:
    GoTo _0044

_002A:
    GoTo _0030

_0030:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_UP
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_DOWN
    ReleaseAll
    End

BattleParkExchangeServiceCorner_Unused:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowBattlePoints 21, 1
    Message 0
BattleParkExchangeServiceCorner_Unused2:
    Message 1
    Call BattleParkExchangeServiceCorner_Unused8
    GoToIfEq VAR_RESULT, -2, BattleParkExchangeServiceCorner_Unused3
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_1, BattleParkExchangeServiceCorner_Unused3
    SetVar VAR_MAP_LOCAL_3, VAR_RESULT
    ScrCmd_29B VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_3, VAR_0x8000, VAR_0x8001
    CallIfEq VAR_MAP_LOCAL_0, 0, BattleParkExchangeServiceCorner_Unused4
    CallIfEq VAR_MAP_LOCAL_0, 1, BattleParkExchangeServiceCorner_Unused5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleParkExchangeServiceCorner_Unused2
    ScrCmd_29A VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleParkExchangeServiceCorner_Unused6
    CanFitItem VAR_0x8000, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleParkExchangeServiceCorner_Unused7
    Message 3
    AddItem VAR_0x8000, 1, VAR_RESULT
    ScrCmd_299 VAR_0x8001
    UpdateBPDisplay
    GoTo BattleParkExchangeServiceCorner_Unused2

BattleParkExchangeServiceCorner_Unused3:
    Message 6
    WaitABXPadPress
    CloseMessage
    HideBattlePoints
    ReleaseAll
    End

BattleParkExchangeServiceCorner_Unused4:
    BufferItemName 0, VAR_0x8000
    Message 2
    Return

BattleParkExchangeServiceCorner_Unused5:
    BufferItemName 0, VAR_0x8000
    BufferTMHMMoveName 1, VAR_0x8000
    Message 7
    Return

BattleParkExchangeServiceCorner_Unused6:
    Message 4
    GoTo BattleParkExchangeServiceCorner_Unused2

BattleParkExchangeServiceCorner_Unused7:
    BufferItemName 0, VAR_0x8000
    Message 5
    GoTo BattleParkExchangeServiceCorner_Unused2

BattleParkExchangeServiceCorner_Unused8:
    SetVar VAR_0x8008, 0
    SetVar VAR_0x8009, 0
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
BattleParkExchangeServiceCorner_Unused9:
    ScrCmd_29B VAR_MAP_LOCAL_0, VAR_0x8008, VAR_0x8000, VAR_0x8001
    BufferItemName 0, VAR_0x8000
    ScrCmd_280 1, VAR_0x8001, 1, 3
    AddListMenuEntry 231, VAR_0x8008
    AddVar VAR_0x8008, 1
    GoToIfLt VAR_0x8008, VAR_MAP_LOCAL_1, BattleParkExchangeServiceCorner_Unused9
    AddListMenuEntry 232, VAR_0x8008
    ShowListMenu
    Return

_0192:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01DE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 11
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
