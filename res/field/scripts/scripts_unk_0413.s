#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _055F
    ScriptEntry _0583
    ScriptEntry _0598
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_17E 0x8000
    ScrCmd_181 0x8001
    ScrCmd_17D 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _033E
    GoToIfEq 0x8008, 1, _0082
    GoToIfEq 0x8008, 2, _00B9
    GoToIfEq 0x8008, 3, _00EE
    GoToIfEq 0x8008, 4, _0123
    GoToIfEq 0x8008, 5, _021B
    GoTo _033E
    End

_0082:
    Call _0158
    GoToIfEq 0x800C, 0, _00A6
    ScrCmd_33C 0, 0x8000
    ScrCmd_346 0
    Message 13
    GoTo _01F2

_00A6:
    ScrCmd_33C 0, 0x8000
    ScrCmd_346 0
    Message 31
    WaitABXPadPress
    GoTo _053A

_00B9:
    Call _0158
    GoToIfEq 0x800C, 0, _00DC
    ScrCmd_17B 0, 0x8000, 0x8001
    Message 14
    GoTo _01F2

_00DC:
    ScrCmd_17B 0, 0x8000, 0x8001
    Message 32
    WaitABXPadPress
    GoTo _053A

_00EE:
    Call _0158
    GoToIfEq 0x800C, 0, _0111
    ScrCmd_17B 0, 0x8000, 0x8001
    Message 15
    GoTo _01F2

_0111:
    ScrCmd_17B 0, 0x8000, 0x8001
    Message 33
    WaitABXPadPress
    GoTo _053A

_0123:
    Call _0158
    GoToIfEq 0x800C, 0, _0146
    ScrCmd_17B 0, 0x8000, 0x8001
    Message 16
    GoTo _01F2

_0146:
    ScrCmd_17B 0, 0x8000, 0x8001
    Message 34
    WaitABXPadPress
    GoTo _053A

_0158:
    ScrCmd_1BD 0x800C
    GoToIfNe 0x800C, 0, _0186
    CheckItem ITEM_SPRAYDUCK, 1, 0x800C
    GoToIfEq 0x800C, 0, _0186
    SetVar 0x800C, 1
    Return

_0186:
    SetVar 0x800C, 0
    Return

_018E:
    CheckItem ITEM_GROWTH_MULCH, 1, 0x800C
    GoToIfEq 0x800C, 1, _01EA
    CheckItem ITEM_DAMP_MULCH, 1, 0x800C
    GoToIfEq 0x800C, 1, _01EA
    CheckItem ITEM_STABLE_MULCH, 1, 0x800C
    GoToIfEq 0x800C, 1, _01EA
    CheckItem ITEM_GOOEY_MULCH, 1, 0x800C
    GoToIfEq 0x800C, 1, _01EA
    SetVar 0x800C, 0
    Return

_01EA:
    SetVar 0x800C, 1
    Return

_01F2:
    Message 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _053A
    CloseMessage
    ScrCmd_184 0
    Message 20
    WaitABXPadPress
    ScrCmd_184 1
    GoTo _053A

_021B:
    BufferNumber 1, 0x8001
    GoToIfGt 0x8001, 1, _023B
    ScrCmd_33C 0, 0x8000
    Message 35
    GoTo _0243

_023B:
    ScrCmd_33D 0, 0x8000
    Message 21
_0243:
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02F7
    ScrCmd_07D 0x8000, 0x8001, 0x800C
    GoToIfEq 0x800C, 0, _02CF
    BufferNumber 1, 0x8001
    GoToIfGt 0x8001, 1, _0289
    BufferItemName 0, 0x8000
    Message 37
    GoTo _0291

_0289:
    ScrCmd_33D 0, 0x8000
    Message 25
_0291:
    PlaySound SEQ_KINOMI
    WaitSound
    ScrCmd_185
    BufferPlayerName 0
    GoToIfGt 0x8001, 1, _02B4
    BufferItemName 1, 0x8000
    GoTo _02B9

_02B4:
    ScrCmd_33D 1, 0x8000
_02B9:
    GetItemPocket 0x8000, 0x800C
    BufferPocketName 3, 0x800C
    Message 27
    WaitABXPadPress
    GoTo _053A

_02CF:
    GoToIfGt 0x8001, 1, _02E7
    BufferItemName 0, 0x8000
    GoTo _02EC

_02E7:
    ScrCmd_33D 0, 0x8000
_02EC:
    Message 26
    WaitABXPadPress
    GoTo _053A

_02F7:
    Call _0158
    GoToIfEq 0x800C, 0, _0310
    GoTo _01F2

_0310:
    BufferPlayerName 0
    GoToIfGt 0x8001, 1, _032E
    BufferItemName 1, 0x8000
    Message 36
    GoTo _0336

_032E:
    ScrCmd_33D 1, 0x8000
    Message 24
_0336:
    WaitABXPadPress
    GoTo _053A

_033E:
    ScrCmd_17F 0x800C
    GoToIfEq 0x800C, 0, _0374
    ScrCmd_17A 4, 0x800C
    GoToIfEq 0x800C, 0, _054B
    ScrCmd_17F 0x800C
    BufferItemName 0, 0x800C
    Message 1
    GoTo _04DA

_0374:
    ScrCmd_1BD 0x800C
    GoToIfNe 0x800C, 0, _0540
    Call _018E
    GoToIfEq 0x800C, 1, _03B4
    ScrCmd_17A 4, 0x800C
    GoToIfEq 0x800C, 0, _0540
    Message 0
    GoTo _04DA

_03B4:
    Message 0
    ScrCmd_17A 4, 0x800C
    GoToIfEq 0x800C, 0, _0413
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 2, 0
    ScrCmd_042 3, 1
    ScrCmd_042 4, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _042D
    GoToIfEq 0x8008, 1, _04EE
    GoToIfEq 0x8008, 2, _053A
    GoTo _053A

_0413:
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _042D
    GoTo _053A

_042D:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_178 0
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_179 0x8005
    SetVar 0x8008, 0x8005
    GoToIfEq 0x8008, 0, _053C
    GoToIfEq 0x8008, 95, _049D
    GoToIfEq 0x8008, 96, _049D
    GoToIfEq 0x8008, 97, _049D
    GoToIfEq 0x8008, 98, _049D
    GoTo _053C

_049D:
    RemoveItem 0x8005, 1, 0x8004
    ScrCmd_182 0x8005
    ScrCmd_17A 4, 0x800C
    GoToIfEq 0x800C, 0, _04CA
    BufferItemName 0, 0x8005
    Message 11
    GoTo _04DA

_04CA:
    BufferItemName 0, 0x8005
    Message 30
    WaitABXPadPress
    GoTo _053A

_04DA:
    Message 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _053A
_04EE:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_178 1
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_179 0x800C
    GoToIfEq 0x800C, 0, _053C
    BufferItemName 0, 0x800C
    Message 12
    WaitABXPadPress
    RemoveItem 0x800C, 1, 0x8004
    ScrCmd_183 0x800C
    GoTo _053A

_053A:
    CloseMessage
_053C:
    ReleaseAll
    End

_0540:
    Message 28
    WaitABXPadPress
    GoTo _053A

_054B:
    ScrCmd_17F 0x800C
    BufferItemName 0, 0x800C
    Message 29
    WaitABXPadPress
    GoTo _053A

_055F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, 0x8000
    Message 12
    WaitABXPadPress
    CloseMessage
    RemoveItem 0x8000, 1, 0x8004
    ScrCmd_183 0x8000
    ReleaseAll
    End

_0583:
    LockAll
    ScrCmd_184 0
    Message 20
    WaitABXPadPress
    ScrCmd_184 1
    CloseMessage
    ReleaseAll
    End

_0598:
    LockAll
    SetVar 0x800C, 0x8000
    SetVar 0x8005, 0x8000
    GoTo _049D
