#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_southwest_house_1f.h"


    ScriptEntry JubilifeCitySouthwestHouse1F_Youngster
    ScriptEntry JubilifeCitySouthwestHouse1F_Pikachu
    ScriptEntry JubilifeCitySouthwestHouse1F_MiddleAgedMan
    ScriptEntryEnd

JubilifeCitySouthwestHouse1F_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthwestHouse1F_Text_IGotMyPikachuThroughATradeFromSomeone
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthwestHouse1F_Pikachu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message JubilifeCitySouthwestHouse1F_Text_PikachuPikapikapikaaah
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthwestHouse1F_MiddleAgedMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthwestHouse1F_Text_IfEveryoneAroundTheWorldHadPOkemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
