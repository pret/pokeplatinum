#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_mansion_office.h"

    .data

    ScriptEntry _001E
    ScriptEntry _0067
    ScriptEntry _0224
    ScriptEntry _0325
    ScriptEntry _0354
    ScriptEntry _0388
    ScriptEntry _0399
    ScriptEntryEnd

_001E:
    GetHour VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _004F
    GoToIfEq VAR_0x4000, 1, _004F
    GoToIfLe VAR_0x4000, 5, _005B
    GoTo _004F

_004F:
    ClearFlag FLAG_UNK_0x028B
    SetVar VAR_UNK_0x4116, 0
    End

_005B:
    SetFlag FLAG_UNK_0x028B
    SetVar VAR_UNK_0x4116, 1
    End

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA2, _0155
    GoToIfEq VAR_0x400B, 1, _0155
    ScrCmd_22D 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00AA
    GoTo _009F

_009F:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AA:
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00D8
    GoToIfEq VAR_RESULT, MENU_NO, _00CD
    End

_00CD:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00FB
    GoToIfEq VAR_RESULT, MENU_NO, _00CD
    End

_00FB:
    AddTrophyGardenMon
    GetTrophyGardenSlot1Species VAR_0x8000
    BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
    Message 6
    GetPlayerMapPos VAR_0x8001, VAR_0x8002
    ApplyMovement 2, _01D4
    WaitMovement
    Message 7
    ApplyMovement 1, _01E4
    WaitMovement
    Message 8
    Message 9
    CloseMessage
    ApplyMovement 2, _01F0
    WaitMovement
    RemoveObject 2
    SetVar VAR_0x400B, 1
    Call _016C
    SetFlag FLAG_UNK_0x0AA2
    GoTo _0155

_0155:
    GetTrophyGardenSlot1Species VAR_0x8000
    BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016C:
    GoToIfEq VAR_0x8001, 4, _0199
    GoToIfEq VAR_0x8001, 6, _01A5
    GoToIfEq VAR_0x8002, 6, _01B1
    GoTo _01BD

_0199:
    ApplyMovement 1, _0204
    WaitMovement
    Return

_01A5:
    ApplyMovement 1, _020C
    WaitMovement
    Return

_01B1:
    ApplyMovement 1, _0214
    WaitMovement
    Return

_01BD:
    ApplyMovement 1, _021C
    WaitMovement
    Return

    .balign 4, 0
_01CC:
    MoveAction_001
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_075
    MoveAction_065
    MoveAction_003
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_075
    MoveAction_034
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_013 2
    MoveAction_015
    MoveAction_001
    MoveAction_069
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_034
    EndMovement

    .balign 4, 0
_020C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_032
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_033
    EndMovement

_0224:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_22D 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0244
    GoTo _0270

_0244:
    GoToIfSet FLAG_UNK_0x0164, _0270
    GoTo _0257
    End

_0257:
    Message 15
    SetFlag FLAG_UNK_0x0164
    WaitABXPadPress
    CloseMessage
    ApplyMovement 2, _01CC
    WaitMovement
    ReleaseAll
    End

_0270:
    GoToIfSet FLAG_UNK_0x0AA2, _0304
    CheckGameCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _02C8
    GetRandom VAR_RESULT, 2
    CallIfEq VAR_RESULT, 0, _02BE
    CallIfEq VAR_RESULT, 1, _02C3
    WaitABXPadPress
    CloseMessage
    ApplyMovement 2, _01CC
    WaitMovement
    ReleaseAll
    End

_02BE:
    Message 11
    Return

_02C3:
    Message 12
    Return

_02C8:
    GetRandom VAR_RESULT, 2
    CallIfEq VAR_RESULT, 0, _02FA
    CallIfEq VAR_RESULT, 1, _02FF
    WaitABXPadPress
    CloseMessage
    ApplyMovement 2, _01CC
    WaitMovement
    ReleaseAll
    End

_02FA:
    Message 11
    Return

_02FF:
    Message 13
    Return

_0304:
    GetTrophyGardenSlot1Species VAR_0x8000
    BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
    Message 14
    WaitABXPadPress
    CloseMessage
    ApplyMovement 2, _01CC
    WaitMovement
    ReleaseAll
    End

_0325:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ApplyMovement 3, _0344
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0344:
    MoveAction_001
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_002
    EndMovement

_0354:
    LockAll
    ApplyMovement 3, _034C
    WaitMovement
    Message 17
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _037C
    ApplyMovement 3, _0344
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_037C:
    MoveAction_013
    MoveAction_000
    EndMovement

_0388:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0399:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 19
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _03C2
    GoToIfEq VAR_RESULT, MENU_NO, _0408
    End

_03C2:
    Message 20
    GoToIfSet FLAG_UNK_0x00FB, _0408
    CheckHasSeenSpecies SPECIES_MANAPHY, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _03FC
    DrawPokemonPreview SPECIES_MANAPHY, GENDER_MALE
    WaitABPress
    ScrCmd_209
    SetFlag FLAG_UNK_0x00FB
    Message 21
    GoTo _0416
    End

_03FC:
    SetFlag FLAG_UNK_0x00FB
    GoTo _0408
    End

_0408:
    BufferPlayerName 0
    Message 22
    GoTo _0416
    End

_0416:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
