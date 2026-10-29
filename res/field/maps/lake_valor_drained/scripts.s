#include "macros/scrcmd.inc"
#include "res/text/bank/lake_valor_drained.h"


    ScriptEntry LakeValorDrained_GruntM1
    ScriptEntry LakeValorDrained_GruntF
    ScriptEntry LakeValorDrained_GruntM2
    ScriptEntry LakeValorDrained_Magikarp
    ScriptEntryEnd

LakeValorDrained_GruntM1:
    NPCMessage LakeValorDrained_Text_WhatYouDoWant
    End

LakeValorDrained_GruntF:
    NPCMessage LakeValorDrained_Text_MagikarpWorthless
    End

LakeValorDrained_GruntM2:
    NPCMessage LakeValorDrained_Text_NextStopLakeVerity
    End

LakeValorDrained_Magikarp:
    PokemonCryAndMessage SPECIES_MAGIKARP, LakeValorDrained_Text_MagikarpIsFlopping, 11
    End

    .balign 4, 0
