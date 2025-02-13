#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _00C2
    ScriptEntry _00D5
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 133, _00B7
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _003B
    GoTo _00AC

_003B:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _00AC
    StartNpcTrade NPC_TRADE_KAZZA_ABRA
    SetVar 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    GetNpcTradeRequestedSpecies 0x800C
    GoToIfNe 0x8005, 0x800C, _009F
    ScrCmd_229 0x8004
    FinishNpcTrade
    SetFlag 133
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009F:
    FinishNpcTrade
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AC:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B7:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
