#include "macros/scrcmd.inc"
#include "res/text/bank/record_chatot_cry.h"


    ScriptEntry RecordChatotCry_Chatter
    ScriptEntryEnd

RecordChatotCry_Chatter:
    LockAll
    WaitTime 1, VAR_RESULT
    SetVar VAR_0x8005, VAR_0x8000
    DrawPokemonPreviewFromPartySlot VAR_0x8000
    CheckRecordedChatotCryIsPlayable VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, RecordChatotCry_AskOverwriteCurrentCry
    GoTo RecordChatotCry_TryRecordCry
    End

RecordChatotCry_AskOverwriteCurrentCry:
    Message RecordChatotCry_Text_OKToForgetCurrentSaying
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, RecordChatotCry_TryRecordCry
    GoToIfEq VAR_RESULT, MENU_NO, RecordChatotCry_End
    End

RecordChatotCry_TryRecordCry:
    FadeOutBGM 42, 10
    Message RecordChatotCry_Text_PressAOrBThenSpeak
    TryRecordChatotCry VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    WaitTime 30, VAR_RESULT
    FadeInBGM 10
    WaitTime 10, VAR_RESULT
    GoToIfEq VAR_0x8004, FALSE, RecordChatotCry_FailedToLearnSaying
    StopRecordingChatotCry
    WaitTime 1, VAR_RESULT
    StoreRecordedChatotCry
    WaitTime 1, VAR_RESULT
    SetPokemonPreviewAnim
    BufferPartyMonNickname 0, VAR_0x8005
    Message RecordChatotCry_Text_ChatotLearnedSaying
    WaitPokemonPreviewAnim VAR_RESULT
    PlayCry SPECIES_CHATOT
    WaitCry
    GoTo RecordChatotCry_End
    End

RecordChatotCry_End:
    RemovePokemonPreview
    CloseMessage
    ReleaseAll
    End

RecordChatotCry_FailedToLearnSaying:
    BufferPartyMonNickname 0, VAR_0x8005
    Message RecordChatotCry_Text_ChatotFailedToLearnSaying
    Message RecordChatotCry_Text_WantToTryAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, RecordChatotCry_TryRecordCry
    GoToIfEq VAR_RESULT, MENU_NO, RecordChatotCry_End
    End

    .balign 4, 0
