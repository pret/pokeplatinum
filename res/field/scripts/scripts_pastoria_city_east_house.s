#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_east_house.h"


    ScriptEntry PastoriaCityEastHouse_MoveManiac
    ScriptEntry PastoriaCityEastHouse_Youngster
    ScriptEntryEnd

PastoriaCityEastHouse_MoveManiac:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemNameWithArticle 4, ITEM_HEART_SCALE
    GoToIfUnset FLAG_TALKED_TO_PASTORIA_CITY_EAST_HOUSE_MOVE_MANIAC, PastoriaCityEastHouse_CheckHeartScale
    CheckItem ITEM_HEART_SCALE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PastoriaCityEastHouse_ComeBackWithHeartScale
    GoTo PastoriaCityEastHouse_TryTeachMove

PastoriaCityEastHouse_CheckHeartScale:
    SetFlag FLAG_TALKED_TO_PASTORIA_CITY_EAST_HOUSE_MOVE_MANIAC
    Message PastoriaCityEastHouse_Text_TeachMoveForHeartScale
    CheckItem ITEM_HEART_SCALE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PastoriaCityEastHouse_ComeBackWithHeartScale
    GoTo PastoriaCityEastHouse_TryTeachMove

PastoriaCityEastHouse_ComeBackWithHeartScale:
    Message PastoriaCityEastHouse_Text_ComeBackWithHeartScale
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityEastHouse_TryTeachMove:
    Message PastoriaCityEastHouse_Text_ThatsAHeartScale
    Message PastoriaCityEastHouse_Text_TutorWhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8005
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8005, PARTY_SLOT_NONE, PastoriaCityEastHouse_ComeBackWithHeartScale
    GetPartyMonSpecies VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PastoriaCityEastHouse_EggsCantLearnMoves
    CheckHasLearnableReminderMoves VAR_RESULT, VAR_0x8005
    GoToIfEq VAR_RESULT, FALSE, PastoriaCityEastHouse_NoMovesToTeach
    Message PastoriaCityEastHouse_Text_TeachWhichMove
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenMoveReminderMenu VAR_0x8005
    CheckLearnedReminderMove VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, PastoriaCityEastHouse_ComeBackWithHeartScale
    RemoveItem ITEM_HEART_SCALE, 1, VAR_RESULT
    BufferPlayerName 3
    Message PastoriaCityEastHouse_Text_HandedOverHeartScale
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityEastHouse_NoMovesToTeach:
    Message PastoriaCityEastHouse_Text_NoMovesToTeach
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityEastHouse_EggsCantLearnMoves:
    Message PastoriaCityEastHouse_Text_EggsCantLearnMoves
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityEastHouse_Youngster:
    NPCMessage PastoriaCityEastHouse_Text_NewspaperGivesHeartScales
    End
