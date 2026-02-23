#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_4f.h"


    ScriptEntry JubilifeTV4F_MiddleAgedMan
    ScriptEntry JubilifeTV4F_Receptionist
    ScriptEntry JubilifeTV4F_PokemonBreederF
    ScriptEntryEnd

JubilifeTV4F_MiddleAgedMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV4F_Text_YourExploitsAreFantastic
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV4F_Receptionist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV4F_Text_ParticipationForAllIsOurTVNetworksMotto
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV4F_PokemonBreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV4F_Text_WerePromotingTheThemeSmilesAreDreamy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
