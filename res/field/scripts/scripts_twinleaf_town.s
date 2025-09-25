#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town.h"
#include "res/field/events/events_twinleaf_town.h"


    ScriptEntry _0026
    ScriptEntry _04D0
    ScriptEntry _0067
    ScriptEntry _00CD
    ScriptEntry _05D4
    ScriptEntry _05E7
    ScriptEntry _0628
    ScriptEntry _063F
    ScriptEntry _0659
    ScriptEntryEnd

_0026:
    CallIfEq VAR_UNK_0x40F4, 1, _004F
    CallIfEq VAR_UNK_0x40A4, 4, _005F
    CallIfEq VAR_UNK_0x40A4, 6, _0057
    End

_004F:
    SetVar VAR_UNK_0x40F4, 2
    Return

_0057:
    SetVar VAR_UNK_0x40A4, 7
    Return

_005F:
    SetVar VAR_UNK_0x40A4, 5
    Return

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, _00A3
    GoToIfGe VAR_UNK_0x4095, 1, _00AE
    GoToIfSet FLAG_UNK_0x00EA, _00BC
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTown_Text_RivalWasLookingForYou2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    Message TwinleafTown_Text_EveryoneGoesOnAdventures
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AE:
    BufferRivalName 0
    Message TwinleafTown_Text_RivalWentTearingOffOuch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BC:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTown_Text_RivalWentTearingOff
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    LockAll
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _03B0
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 108, _0140
    GoToIfEq VAR_0x8004, 109, _0158
    GoToIfEq VAR_0x8004, 110, _0170
    GoToIfEq VAR_0x8004, 111, _0188
    GoToIfEq VAR_0x8004, 112, _01A0
    GoToIfEq VAR_0x8004, 113, _01B8
    GoToIfEq VAR_0x8004, 114, _01D0
    GoTo _01E8

_0140:
    ApplyMovement LOCALID_PLAYER, _02F0
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _03C4
    WaitMovement
    GoTo _0200

_0158:
    ApplyMovement LOCALID_PLAYER, _0308
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _03E0
    WaitMovement
    GoTo _0200

_0170:
    ApplyMovement LOCALID_PLAYER, _0320
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _03F4
    WaitMovement
    GoTo _0200

_0188:
    ApplyMovement LOCALID_PLAYER, _0338
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _0408
    WaitMovement
    GoTo _0200

_01A0:
    ApplyMovement LOCALID_PLAYER, _0350
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _041C
    WaitMovement
    GoTo _0200

_01B8:
    ApplyMovement LOCALID_PLAYER, _0368
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _0430
    WaitMovement
    GoTo _0200

_01D0:
    ApplyMovement LOCALID_PLAYER, _0380
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _0444
    WaitMovement
    GoTo _0200

_01E8:
    ApplyMovement LOCALID_PLAYER, _0398
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _0458
    WaitMovement
    GoTo _0200

_0200:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTown_Text_RivalWasLookingForYou1
    CloseMessage
    GoToIfEq VAR_0x8004, 108, _026C
    GoToIfEq VAR_0x8004, 109, _027C
    GoToIfEq VAR_0x8004, 110, _028C
    GoToIfEq VAR_0x8004, 111, _029C
    GoToIfEq VAR_0x8004, 112, _02AC
    GoToIfEq VAR_0x8004, 113, _02BC
    GoToIfEq VAR_0x8004, 114, _02CC
    GoTo _02DC

_026C:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _046C
    WaitMovement
    GoTo _02EC

_027C:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _047C
    WaitMovement
    GoTo _02EC

_028C:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _0488
    WaitMovement
    GoTo _02EC

_029C:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _0494
    WaitMovement
    GoTo _02EC

_02AC:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _04A0
    WaitMovement
    GoTo _02EC

_02BC:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _04AC
    WaitMovement
    GoTo _02EC

_02CC:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _04B8
    WaitMovement
    GoTo _02EC

_02DC:
    ApplyMovement TWINLEAF_TOWN_GUITARIST, _04C4
    WaitMovement
    GoTo _02EC

_02EC:
    ReleaseAll
    End

    .balign 4, 0
_02F0:
    Delay4 6
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0308:
    Delay4 5
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0320:
    Delay4 6
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0338:
    Delay4 7
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0350:
    Delay4 8
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0368:
    Delay4 9
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0380:
    Delay4 10
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0398:
    Delay4 11
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_03B0:
    WalkOnSpotFastNorth
    EmoteExclamationMark
    Delay8
    Delay4
    EndMovement

    .balign 4, 0
_03C4:
    WalkFastNorth
    WalkFastEast
    WalkFastNorth 2
    WalkFastWest
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_03E0:
    WalkFastNorth 3
    WalkFastEast
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_03F4:
    WalkFastNorth 3
    WalkFastEast 2
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0408:
    WalkFastNorth 3
    WalkFastEast 3
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_041C:
    WalkFastNorth 3
    WalkFastEast 4
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0430:
    WalkFastNorth 3
    WalkFastEast 5
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0444:
    WalkFastNorth 3
    WalkFastEast 6
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0458:
    WalkFastNorth 3
    WalkFastEast 7
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_046C:
    WalkNormalEast
    WalkNormalSouth 2
    WalkNormalWest
    EndMovement

    .balign 4, 0
_047C:
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0488:
    WalkNormalWest 2
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0494:
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_04A0:
    WalkNormalWest 4
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_04AC:
    WalkNormalWest 5
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_04B8:
    WalkNormalWest 6
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_04C4:
    WalkNormalWest 7
    WalkNormalSouth 2
    EndMovement

_04D0:
    LockAll
    LoadDoorAnimation 3, 27, 9, 11, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ClearFlag FLAG_UNK_0x0174
    AddObject TWINLEAF_TOWN_BARRY
    ApplyMovement TWINLEAF_TOWN_BARRY, _05A4
    ApplyMovement LOCALID_PLAYER, _0588
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message TwinleafTown_Text_BigThud
    WaitTime 30, VAR_RESULT
    CallCommonScript 0x7FA
    ApplyMovement TWINLEAF_TOWN_BARRY, _059C
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message TwinleafTown_Text_GoingToSeeProfRowan
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0570
    ApplyMovement TWINLEAF_TOWN_BARRY, _05B0
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferRivalName 0
    Message TwinleafTown_Text_OhJeezForgotSomething
    CloseMessage
    ApplyMovement TWINLEAF_TOWN_BARRY, _05C8
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject TWINLEAF_TOWN_BARRY
    CallCommonScript 0x7FB
    SetVar VAR_UNK_0x4070, 1
    SetVar VAR_UNK_0x40E6, 1
    ReleaseAll
    End

    .balign 4, 0
_0570:
    Delay8
    Delay4
    WalkOnSpotNormalEast
    Delay8 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0588:
    FaceNorth
    LockDir
    WalkNormalSouth
    UnlockDir
    EndMovement

    .balign 4, 0
_059C:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_05A4:
    WalkFastSouth
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_05B0:
    WalkFastEast 4
    EmoteExclamationMark
    Delay8
    WalkFastWest 4
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_05C8:
    WalkNormalNorth
    SetInvisible
    EndMovement

_05D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message TwinleafTown_Text_TechnologyBlowsMeAway
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, _0612
    GoToIfGe VAR_UNK_0x4095, 1, _061D
    Message TwinleafTown_Text_WildPokemonAttack
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0612:
    Message TwinleafTown_Text_HelpingPutTogetherPokedex
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_061D:
    Message TwinleafTown_Text_PokemonYouLookGoodTogether
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0628:
    ShowMapSign TwinleafTown_Text_MapSign
    End

_063F:
    BufferPlayerName 0
    ShowLandmarkSign TwinleafTown_Text_PlayerMailbox
    End

_0659:
    BufferRivalName 0
    ShowLandmarkSign TwinleafTown_Text_RivalMailbox
    End

    .balign 4, 0
