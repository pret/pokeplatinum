#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_pokecenter_1f.h"
#include "res/field/events/events_veilstone_city_pokecenter_1f.h"


    ScriptEntry VeilstoneCityPokecenter1F_Nurse
    ScriptEntry VeilstoneCityPokecenter1F_Socialite
    ScriptEntry VeilstoneCityPokecenter1F_SchoolKidM
    ScriptEntryEnd

VeilstoneCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

VeilstoneCityPokecenter1F_Socialite:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferTMHMMoveName 0, ITEM_HM03
    Message VeilstoneCityPokecenter1F_Text_IfYouUseFly
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCityPokecenter1F_SchoolKidM:
    NPCMessage VeilstoneCityPokecenter1F_Text_MayleneIsCute
    End

    .balign 4, 0
