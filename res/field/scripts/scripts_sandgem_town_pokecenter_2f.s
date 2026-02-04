#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokecenter_2f.h"


    ScriptEntry SandgemTownPokecenter2F_Lass
    ScriptEntryEnd

SandgemTownPokecenter2F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownPokecenter2F_Text_WhatKindOfTrainersSignWillGetPeopleLaughing
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
