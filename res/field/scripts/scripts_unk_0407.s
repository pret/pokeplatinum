#include "macros/scrcmd.inc"
#include "res/text/bank/mystery_gift_deliveryman.h"


    ScriptEntry _000A
    ScriptEntry _0035
    ScriptEntryEnd

_000A:
    LoadMysteryGift
    CheckAvailableMysteryGift VAR_UNK_0x40ED
    GoToIfEq VAR_UNK_0x40ED, 0, _002B
    ClearFlag FLAG_UNK_0x020A
    UnloadMysteryGift
    End

_002B:
    SetFlag FLAG_UNK_0x020A
    UnloadMysteryGift
    End

_0035:
    LoadMysteryGift
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckAvailableMysteryGift VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00EE
    GetTimeOfDay VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _007E
    GoToIfEq VAR_0x8008, 1, _008A
    GoTo _0096

_007E:
    BufferPlayerName 0
    Message 0
    GoTo _00A2

_008A:
    BufferPlayerName 0
    Message 1
    GoTo _00A2

_0096:
    BufferPlayerName 0
    Message 2
    GoTo _00A2

_00A2:
    CheckCanReceiveMysteryGift VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00D8
    PlaySound SEQ_FANFA4
    PrepareMysteryGiftReceivedMsg VAR_0x8005, VAR_0x8006
    MessageFromBank VAR_0x8005, VAR_0x8006
    WaitSound
    Message 18
    WaitABXPadPress
    GiveMysteryGift
    GoTo _0103

_00D8:
    PrepareMysterGiftCantReceiveMsg VAR_0x8005, VAR_0x8006
    MessageFromBank VAR_0x8005, VAR_0x8006
    WaitABXPadPress
    GoTo _00F9

_00EE:
    Message 3
    WaitABXPadPress
    GoTo _00F9

_00F9:
    CloseMessage
    ReleaseAll
    UnloadMysteryGift
    End

_0103:
    CloseMessage
    ReleaseAll
    UnloadMysteryGift2
    End

    .balign 4, 0
