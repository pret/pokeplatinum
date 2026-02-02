#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_mart.h"


    ScriptEntry SolaceonTownMart_CommonVendor
    ScriptEntry SolaceonTownMart_SpecialtyVendor
    ScriptEntry SolaceonTownMart_NinjaBoy
    ScriptEntry SolaceonTownMart_Pokefan
    ScriptEntryEnd

SolaceonTownMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

SolaceonTownMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_SOLACEON
    ReleaseAll
    End

SolaceonTownMart_NinjaBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SolaceonTownMart_Text_NeedPCToSealPokeBalls
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SolaceonTownMart_Pokefan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SolaceonTownMart_Text_ConsiderSuperRepels
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
