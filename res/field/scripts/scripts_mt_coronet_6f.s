#include "macros/scrcmd.inc"


    ScriptEntry MtCoronet6F_OnTransition
    ScriptEntry MtCoronet6F_OnLoad
    ScriptEntryEnd

MtCoronet6F_OnTransition:
    GoToIfSet FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_SetWarpEventSpearPillarDistorted
    GoToIfUnset FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_TrySetWarpEventSpearPillarDialgaPalkia
    End

MtCoronet6F_OnLoad:
    Call MtCoronet6F_SetDefaultWarpEvents
    GoToIfSet FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_SetWarpEventSpearPillarDistorted
    GoToIfUnset FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_TrySetWarpEventSpearPillarDialgaPalkia
    End

MtCoronet6F_SetWarpEventSpearPillarDistorted:
    SetWarpEventPos 2, 7, 5
    End

MtCoronet6F_TrySetWarpEventSpearPillarDialgaPalkia:
    GoToIfGe VAR_EXITED_DISTORTION_WORLD_STATE, 2, MtCoronet6F_TrySetWarpEventSpearPillarDialga
    GoTo MtCoronet6F_SetWarpEventSpearPillar
    End

MtCoronet6F_SetWarpEventSpearPillar:
    SetWarpEventPos 1, 7, 5
    End

MtCoronet6F_TrySetWarpEventSpearPillarDialga:
    GoToIfUnset FLAG_UNK_0x0145, MtCoronet6F_SetWarpEventSpearPillar
    GoToIfSet FLAG_CAUGHT_DIALGA, MtCoronet6F_TrySetWarpEventSpearPillarPalkia
    GoToIfGe VAR_SPEAR_PILLAR_DIALGA_STATE, 1, MtCoronet6F_TrySetWarpEventSpearPillarPalkia
    CheckItem ITEM_ADAMANT_ORB, 1, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 1, MtCoronet6F_SetWarpEventSpearPillarDialga
    CheckPartyHasHeldItem ITEM_ADAMANT_ORB, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 1, MtCoronet6F_SetWarpEventSpearPillarDialga
    GoTo MtCoronet6F_TrySetWarpEventSpearPillarPalkia
    End

MtCoronet6F_TrySetWarpEventSpearPillarPalkia:
    GoToIfSet FLAG_CAUGHT_PALKIA, MtCoronet6F_SetWarpEventSpearPillar
    GoToIfGe VAR_SPEAR_PILLAR_PALKIA_STATE, 1, MtCoronet6F_SetWarpEventSpearPillar
    CheckItem ITEM_LUSTROUS_ORB, 1, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 1, MtCoronet6F_SetWarpEventSpearPillarPalkia
    CheckPartyHasHeldItem ITEM_LUSTROUS_ORB, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 1, MtCoronet6F_SetWarpEventSpearPillarPalkia
    GoTo MtCoronet6F_SetWarpEventSpearPillar
    End

MtCoronet6F_SetWarpEventSpearPillarDialga:
    SetWarpEventPos 3, 7, 5
    End

MtCoronet6F_SetWarpEventSpearPillarPalkia:
    SetWarpEventPos 4, 7, 5
    End

MtCoronet6F_SetDefaultWarpEvents:
    SetWarpEventPos 1, 1, 5
    SetWarpEventPos 2, 1, 5
    SetWarpEventPos 3, 1, 5
    SetWarpEventPos 4, 1, 5
    Return

    .balign 4, 0
