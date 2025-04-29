#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_northeast_house.h"
#include "generated/ribbons.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA4, _006A
    GoToIfSet FLAG_UNK_0x0AA7, _005F
    GoToIfUnset FLAG_UNK_0x00F7, _004C
    GetFirstNonEggInParty VAR_0x8002
    Call _0070
    GoToIfEq VAR_RESULT, 1, _0136
    GoTo _0146

_004C:
    SetFlag FLAG_UNK_0x00F7
    SetFlag FLAG_UNK_0x0AA7
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005F:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    GoTo _012B

_0070:
    GetDayOfWeek VAR_RESULT
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_SUNDAY, _00C8
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_MONDAY, _00D2
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_TUESDAY, _00DC
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_WEDNESDAY, _00E6
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_THURSDAY, _00F0
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_FRIDAY, _00FA
    GoTo _0104

_00C8:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SMILE
    Return

_00D2:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_ALERT
    Return

_00DC:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SHOCK
    Return

_00E6:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_DOWNCAST
    Return

_00F0:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_CARELESS
    Return

_00FA:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_RELAX
    Return

_0104:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SNOOZE
    Return

_010E:
    BufferPartyMonSpecies 1, VAR_0x8002
    BufferPlayerName 2
    Message 4
    PlaySound SEQ_FANFA1
    Message 5
    WaitSound
    Message 6
    GoTo _012B

_012B:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0136:
    BufferPartyMonSpecies 1, VAR_0x8002
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0146:
    GetDayOfWeek VAR_RESULT
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_SUNDAY, _019E
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_MONDAY, _01F2
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_TUESDAY, _0246
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_WEDNESDAY, _029A
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_THURSDAY, _02EE
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_FRIDAY, _0342
    GoTo _0396

_019E:
    Message 20
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 21
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_SMILE
    ScrCmd_232 3, 65
    GoTo _010E

_01F2:
    Message 2
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 3
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_ALERT
    ScrCmd_232 3, 59
    GoTo _010E

_0246:
    Message 10
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 11
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_SHOCK
    ScrCmd_232 3, 60
    GoTo _010E

_029A:
    Message 12
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 13
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_DOWNCAST
    ScrCmd_232 3, 61
    GoTo _010E

_02EE:
    Message 14
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 15
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_CARELESS
    ScrCmd_232 3, 62
    GoTo _010E

_0342:
    Message 16
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 17
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_RELAX
    ScrCmd_232 3, 63
    GoTo _010E

_0396:
    Message 18
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _03EA
    ScrCmd_245 0, VAR_0x8000
    Message 19
    SetFlag FLAG_UNK_0x0AA4
    SetPartyMonRibbon VAR_0x8002, RIBBON_SNOOZE
    ScrCmd_232 3, 64
    GoTo _010E

_03EA:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
