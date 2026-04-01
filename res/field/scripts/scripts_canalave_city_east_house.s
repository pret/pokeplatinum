#include "constants/moves.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_east_house.h"


    ScriptEntry CanalaveCityEastHouse_MoveDeleter
    ScriptEntryEnd

CanalaveCityEastHouse_MoveDeleter:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, CanalaveCityEastHouse_AskForgetSomeMoves
    Message CanalaveCityEastHouse_Text_ImTheMoveDeleter
    SetFlag FLAG_UNK_0x0001
    GoTo CanalaveCityEastHouse_AskForgetSomeMoves

CanalaveCityEastHouse_AskForgetSomeMoves:
    Message CanalaveCityEastHouse_Text_ForgetSomeMoves
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveCityEastHouse_WhichPokemon
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveCityEastHouse_RememberMe
    End

CanalaveCityEastHouse_WhichPokemon:
    Message CanalaveCityEastHouse_Text_WhichPokemon
    CloseMessage
    GoTo CanalaveCityEastHouse_TryForgetMove

CanalaveCityEastHouse_TryForgetMove:
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8002
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8002, PARTY_SLOT_NONE, CanalaveCityEastHouse_RememberMe
    GetPartyMonSpecies VAR_0x8002, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, CanalaveCityEastHouse_NoEggKnowsMoves
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8002
    GoToIfEq VAR_RESULT, 1, CanalaveCityEastHouse_KnowsOnlyOneMove
    Message CanalaveCityEastHouse_Text_WhichMove
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPartyMonMove VAR_0x8002
    GetSelectedPartyMonMove VAR_0x8001
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8001, MOVE_NOT_SELECTED, CanalaveCityEastHouse_WhichPokemon
    BufferPartyMoveName 0, VAR_0x8002, VAR_0x8001
    Message CanalaveCityEastHouse_Text_ShouldMoveBeForgotten
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveCityEastHouse_ForgotMoveCompletely
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveCityEastHouse_WhichPokemon
    End

CanalaveCityEastHouse_ForgotMoveCompletely:
    ClearPartyMonMoveSlot VAR_0x8002, VAR_0x8001
    Message CanalaveCityEastHouse_Text_ForgotMoveCompletely
    PlayFanfare SEQ_WASURE
    WaitFanfare
    WaitButton
    CloseMessage
    End

CanalaveCityEastHouse_NoEggKnowsMoves:
    Message CanalaveCityEastHouse_Text_NoEggKnowsMoves
    CloseMessage
    GoTo CanalaveCityEastHouse_TryForgetMove

CanalaveCityEastHouse_KnowsOnlyOneMove:
    Message CanalaveCityEastHouse_Text_KnowsOnlyOneMove
    CloseMessage
    GoTo CanalaveCityEastHouse_TryForgetMove

CanalaveCityEastHouse_RememberMe:
    Message CanalaveCityEastHouse_Text_RememberMe
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
