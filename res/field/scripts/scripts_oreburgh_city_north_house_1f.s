#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _00C2
    ScriptEntry _00D5
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0085, _00B7
    Message 0
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _003B
    GoTo _00AC

_003B:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    GetSelectedPartySlot VAR_0x800C
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x800C, 0xFF, _00AC
    StartNpcTrade NPC_TRADE_KAZZA_ABRA
    SetVar VAR_0x8004, VAR_0x800C
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNpcTradeRequestedSpecies VAR_0x800C
    GoToIfNe VAR_0x8005, VAR_0x800C, _009F
    ScrCmd_229 VAR_0x8004
    FinishNpcTrade
    SetFlag FLAG_UNK_0x0085
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
