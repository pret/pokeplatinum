#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_library_1f.h"
#include "res/field/events/events_canalave_library_1f.h"


    ScriptEntry CanalaveLibrary1F_Receptionist
    ScriptEntry CanalaveLibrary1F_Lass
    ScriptEntry CanalaveLibrary1F_Bookshelves
    ScriptEntry CanalaveLibrary1F_Shelves
    ScriptEntry CanalaveLibrary1F_Lucian
    ScriptEntryEnd

CanalaveLibrary1F_Receptionist:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveLibrary1F_ThatWasntMeScreaming
    Message CanalaveLibrary1F_Text_PleaseKeepQuiet
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary1F_ThatWasntMeScreaming:
    Message CanalaveLibrary1F_Text_ThatWasntMeScreaming
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary1F_Lass:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveLibrary1F_ImAllAgitated
    Message CanalaveLibrary1F_Text_Ellipsis
    FacePlayer
    Message CanalaveLibrary1F_Text_DontDisturbMe
    CloseMessage
    ApplyMovement LOCALID_LASS, CanalaveLibrary1F_Movement_LassFaceNorth
    WaitMovement
    ReleaseAll
    End

CanalaveLibrary1F_ImAllAgitated:
    FacePlayer
    Message CanalaveLibrary1F_Text_ImAllAgitated
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
CanalaveLibrary1F_Movement_LassFaceNorth:
    FaceNorth
    EndMovement

CanalaveLibrary1F_Bookshelves:
    EventMessage CanalaveLibrary1F_Text_BookshelvesAreCrammed
    End

CanalaveLibrary1F_Shelves:
    EventMessage CanalaveLibrary1F_Text_ShelvesLinedWithBooks
    End

CanalaveLibrary1F_Lucian:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CanalaveLibrary1F_Text_BooksAreWonderful
    GetRandom VAR_0x8000, 5
    CallIfEq VAR_0x8000, 0, CanalaveLibrary1F_LettersWrittenLongAgo
    CallIfEq VAR_0x8000, 1, CanalaveLibrary1F_AnalyticalTomeOnHumankind
    CallIfEq VAR_0x8000, 2, CanalaveLibrary1F_ObservationsWildPokemon
    CallIfEq VAR_0x8000, 3, CanalaveLibrary1F_ScieneFictionEssays
    CallIfEq VAR_0x8000, 4, CanalaveLibrary1F_BookOfPhilosophy
    GoTo CanalaveLibrary1F_SeeAtPokemonLeague
    End

CanalaveLibrary1F_LettersWrittenLongAgo:
    Message CanalaveLibrary1F_Text_LettersWrittenLongAgo
    Return

CanalaveLibrary1F_AnalyticalTomeOnHumankind:
    Message CanalaveLibrary1F_Text_AnalyticalTomeOnHumankind
    Return

CanalaveLibrary1F_ObservationsWildPokemon:
    Message CanalaveLibrary1F_Text_ObservationsWildPokemon
    Return

CanalaveLibrary1F_ScieneFictionEssays:
    Message CanalaveLibrary1F_Text_ScieneFictionEssays
    Return

CanalaveLibrary1F_BookOfPhilosophy:
    Message CanalaveLibrary1F_Text_BookOfPhilosophy
    Return

CanalaveLibrary1F_SeeAtPokemonLeague:
    Message CanalaveLibrary1F_Text_SeeAtPokemonLeague
    CloseMessage
    GetPlayerDir VAR_0x8000
    CallIfEq VAR_0x8000, DIR_NORTH, CanalaveLibrary1F_LucianLeaveNorth
    CallIfEq VAR_0x8000, DIR_WEST, CanalaveLibrary1F_LucianLeaveWest
    CallIfEq VAR_0x8000, DIR_EAST, CanalaveLibrary1F_LucianLeaveEast
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_LUCIAN
    WaitSE SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

CanalaveLibrary1F_LucianLeaveNorth:
    ApplyMovement LOCALID_LUCIAN, CanalaveLibrary1F_Movement_LucianNorthWest
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary1F_Movement_PlayerWatchLucianNorth
    WaitMovement
    Return

CanalaveLibrary1F_LucianLeaveWest:
    ApplyMovement LOCALID_LUCIAN, CanalaveLibrary1F_Movement_LucianNorthWest
    WaitMovement
    Return

CanalaveLibrary1F_LucianLeaveEast:
    ApplyMovement LOCALID_LUCIAN, CanalaveLibrary1F_Movement_LucianLeaveEast
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary1F_Movement_PlayerWatchLucianEast
    WaitMovement
    Return

    .balign 4, 0
CanalaveLibrary1F_Movement_LucianNorthWest:
    WalkNormalWest 5
    WalkNormalSouth 6
    Delay4
    EndMovement

    .balign 4, 0
CanalaveLibrary1F_Movement_LucianLeaveEast:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth 5
    Delay4
    EndMovement

    .balign 4, 0
CanalaveLibrary1F_Movement_PlayerWatchLucianNorth:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CanalaveLibrary1F_Movement_PlayerWatchLucianEast:
    Delay8 2
    Delay4
    WalkOnSpotNormalWest
    EndMovement
