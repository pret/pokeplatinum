#include "macros/scrcmd.inc"
#include "res/text/bank/poketch_co_2f.h"


    ScriptEntry PoketchCo2F_PokefanM
    ScriptEntry PoketchCo2F_OldMan
    ScriptEntry PoketchCo2F_Clefairy
    ScriptEntry PoketchCo2F_Pachirisu
    ScriptEntryEnd

PoketchCo2F_PokefanM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo2F_Text_WellTryToThinkLikeATrainerAndFindWhatPoketchAppsWouldBeGood
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo2F_OldMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo2F_Text_PokemonWatchThatsPoketchForShort
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo2F_Clefairy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message PoketchCo2F_Text_ClefairyCleffy
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo2F_Pachirisu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message PoketchCo2F_Text_PachirisuPatchii
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
