#include "macros/scrcmd.inc"
#include "res/text/bank/contest_hall_lobby.h"
#include "res/field/events/events_contest_hall_lobby.h"


    ScriptEntry ContestHallLobby_OnFrameFirstEntry
    ScriptEntry ContestHallLobby_Frame0
    ScriptEntry ContestHallLobby_Frame1
    ScriptEntry ContestHallLobby_Frame2
    ScriptEntry ContestHallLobby_Frame3
    ScriptEntry ContestHallLobby_Frame4
    ScriptEntry ContestHallLobby_AceTrainerF
    ScriptEntry ContestHallLobby_Clown
    ScriptEntry ContestHallLobby_SchoolKidF
    ScriptEntry ContestHallLobby_RichBoy
    ScriptEntry ContestHallLobby_Fantina
    ScriptEntryEnd

ContestHallLobby_OnFrameFirstEntry:
    LockAll
    ApplyMovement LOCALID_KEIRA, ContestHallLobby_Movement_KeiraNoticePlayer
    WaitMovement
    Message ContestHallLobby_Text_OhMyHero
    CloseMessage
    ApplyMovement LOCALID_MOM, ContestHallLobby_Movement_MomWalkOnSpotSouth
    WaitMovement
    BufferPlayerName 0
    Message ContestHallLobby_Text_OhHiPlayer
    CloseMessage
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerWalkNorth
    WaitMovement
    ApplyMovement LOCALID_KEIRA, ContestHallLobby_Movement_KeiraWalkOnSpotWestSouth
    WaitMovement
    Message ContestHallLobby_Text_WaitJohannaIsYourMom
    BufferPlayerName 0
    Message ContestHallLobby_Text_IveNeverSpokenToPlayerAboutContests
    Message ContestHallLobby_Text_INeedToThankYouForEarlier
    SetVar VAR_0x8004, ACCESSORY_GLITTER_POWDER
    SetVar VAR_0x8005, 1
    Common_GiveAccessory
    Message ContestHallLobby_Text_PutThatAccessoryOnYourPokemon
    ApplyMovement LOCALID_KEIRA, ContestHallLobby_Movement_KeiraFaceMom
    ApplyMovement LOCALID_MOM, ContestHallLobby_Movement_MomFaceKeira
    WaitMovement
    Message ContestHallLobby_Text_JohannaIllSeeYou
    CloseMessage
    ApplyMovement LOCALID_KEIRA, ContestHallLobby_Movement_KeiraLeave
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerWatchKeiraLeave
    WaitMovement
    RemoveObject LOCALID_KEIRA
    SetVar VAR_CONTEST_HALL_LOBBY_STATE, 1
    ApplyMovement LOCALID_MOM, ContestHallLobby_Movement_MomFacePlayer
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerFaceMom
    WaitMovement
    BufferPlayerName 0
    Message ContestHallLobby_Text_WereYouSurprisedToSeeMe
    CloseMessage
    PlayFanfare SEQ_FANFA4
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, ContestHallLobby_PlayerObtainedATuxedo
    GoTo ContestHallLobby_PlayerObtainedADress
    End

ContestHallLobby_PlayerObtainedATuxedo:
    Message ContestHallLobby_Text_PlayerObtainedATuxedo
    GoTo ContestHallLobby_MomLeave
    End

ContestHallLobby_PlayerObtainedADress:
    Message ContestHallLobby_Text_PlayerObtainedADress
    GoTo ContestHallLobby_MomLeave
    End

ContestHallLobby_MomLeave:
    WaitFanfare
    Message ContestHallLobby_Text_ImSureItWillLookGoodOnYou
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerWatchMomLeave
    ApplyMovement LOCALID_MOM, ContestHallLobby_Movement_MomLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_MOM
    WaitSE SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_CONTEST_HALL_VISITED
    ReleaseAll
    End

    .balign 4, 0
ContestHallLobby_Movement_PlayerWalkNorth:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_KeiraNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_KeiraWalkOnSpotWestSouth:
    WalkOnSpotFastWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_KeiraFaceMom:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_KeiraLeave:
    WalkNormalEast 3
    WalkNormalNorth 3
    WalkNormalEast 3
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_MomWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_MomFaceKeira:
    Delay4
    WalkOnSpotNormalEast
    EndMovement

ContestHallLobby_UnusedMovement:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_MomFacePlayer:
    WalkOnSpotNormalSouth
    EndMovement

ContestHallLobby_UnusedMovement2:
    WalkNormalWest 8
    EndMovement

ContestHallLobby_UnusedMovement3:
    WalkNormalNorth 6
    EndMovement

ContestHallLobby_UnusedMovement4:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_MomLeave:
    WalkNormalWest
    WalkNormalSouth 2
    WalkNormalEast
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_PlayerWatchMomLeave:
    Delay4
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_PlayerWatchKeiraLeave:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_PlayerFaceMom:
    WalkOnSpotNormalNorth
    EndMovement

ContestHallLobby_Frame0:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ContestPhotoHasData 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ContestHallLobby_ItsAPhotoFrame
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0A8 0, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

ContestHallLobby_Frame1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ContestPhotoHasData 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ContestHallLobby_ItsAPhotoFrame
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0A8 1, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

ContestHallLobby_Frame2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ContestPhotoHasData 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ContestHallLobby_ItsAPhotoFrame
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0A8 2, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

ContestHallLobby_Frame3:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ContestPhotoHasData 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ContestHallLobby_ItsAPhotoFrame
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0A8 3, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

ContestHallLobby_Frame4:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ContestPhotoHasData 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ContestHallLobby_ItsAPhotoFrame
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0A8 4, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

ContestHallLobby_ItsAPhotoFrame:
    Message ContestHallLobby_Text_ItsAPhotoFrame
    WaitButton
    CloseMessage
    ReleaseAll
    End

ContestHallLobby_AceTrainerF:
    NPCMessage ContestHallLobby_Text_APokemonFedPoffinsDoesBetter
    End

ContestHallLobby_Clown:
    NPCMessage ContestHallLobby_Text_AContestHasVisualDanceAndActingParts
    End

ContestHallLobby_SchoolKidF:
    NPCMessage ContestHallLobby_Text_TheyPutUpPhotosOfTheWinners
    End

ContestHallLobby_RichBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_TALKED_TO_CONTEST_HALL_LOBBY_RICH_BOY, ContestHallLobby_RichBoyFirstInteraction
    GoToIfUnset FLAG_RECEIVED_CONTEST_HALL_LOBBY_MILD_POFFIN, ContestHallLobby_HasNotReceivedPoffinYet
ContestHallLobby_ItTakesPracticeToWinContests:
    Message ContestHallLobby_Text_ItTakesPracticeToWinContests
    WaitButton
    CloseMessage
    ReleaseAll
    End

ContestHallLobby_HasNotReceivedPoffinYet:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ContestHallLobby_ItTakesPracticeToWinContests
    Message ContestHallLobby_Text_YupYouHaveAPoffinCase
    CheckHasEmptyPoffinCaseSlot VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ContestHallLobby_PoffinCaseIsFull
    Call ContestHallLobby_GiveMildPoffin
    SetFlag FLAG_RECEIVED_CONTEST_HALL_LOBBY_MILD_POFFIN
    Message ContestHallLobby_Text_FeedThatPoffinToAPokemon2
    WaitButton
    CloseMessage
    ReleaseAll
    End

ContestHallLobby_PoffinCaseIsFull:
    Message ContestHallLobby_Text_YourPoffinCasesFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

ContestHallLobby_RichBoyFirstInteraction:
    SetFlag FLAG_TALKED_TO_CONTEST_HALL_LOBBY_RICH_BOY
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ContestHallLobby_IDontSeeAPoffinCase
    Message ContestHallLobby_Text_YupYouHaveAPoffinCase
    CheckHasEmptyPoffinCaseSlot VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ContestHallLobby_IllGiveItToYouAnotherTime
    Call ContestHallLobby_GiveMildPoffin
    SetFlag FLAG_RECEIVED_CONTEST_HALL_LOBBY_MILD_POFFIN
    Message ContestHallLobby_Text_FeedThatPoffinToAPokemon
    CloseMessage
    Call ContestHallLobby_RichBoyWalkAwayFromCounter
    ReleaseAll
    End

ContestHallLobby_IllGiveItToYouAnotherTime:
    Message ContestHallLobby_Text_IllGiveItToYouAnotherTime
    CloseMessage
    Call ContestHallLobby_RichBoyWalkAwayFromCounter
    ReleaseAll
    End

ContestHallLobby_IDontSeeAPoffinCase:
    Message ContestHallLobby_Text_IDontSeeAPoffinCase
    CloseMessage
    Call ContestHallLobby_RichBoyWalkAwayFromCounter
    ReleaseAll
    End

ContestHallLobby_GiveMildPoffin:
    GivePoffin VAR_RESULT, 60, 30, 30, 30, 30, 40
    PlayFanfare SEQ_FANFA4
    BufferPlayerName 0
    Message ContestHallLobby_Text_PlayerReceivedAMildPoffin
    WaitFanfare
    Message ContestHallLobby_Text_TheMildPoffinWasPutAway
    Return

ContestHallLobby_RichBoyWalkAwayFromCounter:
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_WEST, ContestHallLobby_RichBoyWalkAwayFromCounterWest
    ApplyMovement CONTEST_HALL_LOBBY_RICH_BOY, ContestHallLobby_Movement_RichBoyWalkAwayFromCounterNorthSouthEast
    WaitMovement
    Return

ContestHallLobby_RichBoyWalkAwayFromCounterWest:
    ApplyMovement CONTEST_HALL_LOBBY_RICH_BOY, ContestHallLobby_Movement_RichBoyWalkAwayFromCounterWest
    WaitMovement
    Return

    .balign 4, 0
ContestHallLobby_Movement_RichBoyWalkAwayFromCounterNorthSouthEast:
    WalkNormalEast 8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_RichBoyWalkAwayFromCounterWest:
    WalkNormalSouth
    WalkNormalEast 8
    WalkNormalNorth
    WalkOnSpotFastSouth
    EndMovement

ContestHallLobby_Fantina:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitTime 30, VAR_RESULT
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, ContestHallLobby_FantinaSpinNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, ContestHallLobby_FantinaSpinSouth
    GoToIfEq VAR_RESULT, DIR_WEST, ContestHallLobby_FantinaSpinWest
    GoToIfEq VAR_RESULT, DIR_EAST, ContestHallLobby_FantinaSpinEast
    End

ContestHallLobby_FantinaLeave:
    Message ContestHallLobby_Text_IWaitForYouAtTheGym
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_SOUTH, ContestHallLobby_FantinaLeaveSouth
    GoToIfEq VAR_0x8004, DIR_NORTH, ContestHallLobby_FantinaLeaveNorth
    GoToIfEq VAR_0x8004, DIR_WEST, ContestHallLobby_FantinaLeaveWest
    GoToIfEq VAR_0x8004, DIR_EAST, ContestHallLobby_FantinaLeaveEast
    End

ContestHallLobby_FantinaSpinNorth:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaSpinNorth
    WaitMovement
    GoTo ContestHallLobby_FantinaLeave
    End

ContestHallLobby_FantinaSpinSouth:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaSpinSouth
    WaitMovement
    GoTo ContestHallLobby_FantinaLeave
    End

ContestHallLobby_FantinaSpinWest:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaSpinWest
    WaitMovement
    GoTo ContestHallLobby_FantinaLeave
    End

ContestHallLobby_FantinaSpinEast:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaSpinEast
    WaitMovement
    GoTo ContestHallLobby_FantinaLeave
    End

ContestHallLobby_FantinaLeaveSouth:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaLeaveNorthSouthWest
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerWatchFantinaLeaveNorthSouth
    WaitMovement
    GoTo ContestHallLobby_RemoveFantina
    End

ContestHallLobby_FantinaLeaveNorth:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaLeaveNorthSouthWest
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerWatchFantinaLeaveNorthSouth
    WaitMovement
    GoTo ContestHallLobby_RemoveFantina
    End

ContestHallLobby_FantinaLeaveWest:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaLeaveNorthSouthWest
    WaitMovement
    GoTo ContestHallLobby_RemoveFantina
    End

ContestHallLobby_FantinaLeaveEast:
    ApplyMovement LOCALID_FANTINA, ContestHallLobby_Movement_FantinaLeaveEast
    ApplyMovement LOCALID_PLAYER, ContestHallLobby_Movement_PlayerWatchFantinaLeaveEast
    WaitMovement
    GoTo ContestHallLobby_RemoveFantina
    End

ContestHallLobby_RemoveFantina:
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_FANTINA
    WaitSE SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_HIDE_HEARTHOME_CITY_GYM_GUIDE
    ReleaseAll
    End

    .balign 4, 0
ContestHallLobby_Movement_FantinaLeaveNorthSouthWest:
    WalkNormalWest 6
    WalkNormalSouth 4
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_FantinaLeaveEast:
    WalkNormalNorth
    WalkNormalWest 6
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_PlayerWatchFantinaLeaveNorthSouth:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_PlayerWatchFantinaLeaveEast:
    Delay8 2
    WalkOnSpotNormalNorth
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_FantinaSpinNorth:
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_FantinaSpinSouth:
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_FantinaSpinWest:
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    EndMovement

    .balign 4, 0
ContestHallLobby_Movement_FantinaSpinEast:
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    EndMovement
