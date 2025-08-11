#include "macros/scrcmd.inc"
#include "res/text/bank/route_222_east_house.h"
#include "generated/size_contest_results.h"


    ScriptEntry Route222EastHouse_OnLoad
    ScriptEntry Route222EastHouse_Fisherman
    ScriptEntryEnd

Route222EastHouse_OnLoad:
    SetFlag FLAG_UNK_0x09F0
    End

Route222EastHouse_Fisherman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasSpecies VAR_RESULT, SPECIES_REMORAID
    GoToIfEq VAR_RESULT, 0, Route222EastHouse_NoRemoraid
    Message Route222EastHouse_Text_DreamtLargeRemoraidWasNoDream
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 0xFF, Route222EastHouse_ShowNoPokemon
    GetPartyMonSpecies VAR_0x8002, VAR_0x8001
    GoToIfNe VAR_0x8001, SPECIES_REMORAID, Route222EastHouse_ShowedOtherSpecies
    CalcSizeContestResult VAR_RESULT, VAR_0x8002
    GoToIfEq VAR_RESULT, SIZE_CONTEST_SMALLER, Route222EastHouse_SmallerThanRecord
    GoToIfEq VAR_RESULT, SIZE_CONTEST_SAME_SIZE, Route222EastHouse_TiedRecord
    BufferPartyPokemonSize 0, 1, VAR_0x8002
    Message Route222EastHouse_Text_BetterThanInMyDream
    SetVar VAR_0x8004, ITEM_NET_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route222EastHouse_BagFull
    CallCommonScript 0x7FC
    UpdateSizeContestRecord VAR_0x8002
    Message Route222EastHouse_Text_WillDreamOfBiggerRemoraid
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route222EastHouse_NoRemoraid:
    Message Route222EastHouse_Text_DreamtLargeRemoraid
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route222EastHouse_TiedRecord:
    BufferSizeContestRecord 0, 1, SPECIES_REMORAID
    Message Route222EastHouse_Text_RememberThisSize
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route222EastHouse_SmallerThanRecord:
    BufferPartyPokemonSize 0, 1, VAR_0x8002
    BufferSizeContestRecord 2, 3, SPECIES_REMORAID
    Message Route222EastHouse_Text_KnowAGenius
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route222EastHouse_ShowedOtherSpecies:
    Message Route222EastHouse_Text_DidYouListen
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route222EastHouse_BagFull:
    Message Route222EastHouse_Text_BagJammedFull
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route222EastHouse_ShowNoPokemon:
    Message Route222EastHouse_Text_DenyMeasureRemoraid
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
