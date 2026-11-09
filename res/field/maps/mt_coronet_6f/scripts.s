#include "macros/scrcmd.inc"
#include "res/field/maps/locals/mt_coronet_6f.h"


    ScriptEntry MtCoronet6F_OnTransition
    ScriptEntry MtCoronet6F_OnLoad
    ScriptEntryEnd

MtCoronet6F_OnTransition:
    GoToIfSet FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_SetWarpSpearPillarDistorted
    GoToIfUnset FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_TrySetWarpSpearPillarDialgaPalkia
    End

MtCoronet6F_OnLoad:
    Call MtCoronet6F_RemoveSpearPillarWarps
    GoToIfSet FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_SetWarpSpearPillarDistorted
    GoToIfUnset FLAG_SPEAR_PILLAR_IS_DISTORTED, MtCoronet6F_TrySetWarpSpearPillarDialgaPalkia
    End

MtCoronet6F_SetWarpSpearPillarDistorted:
    SetWarpEventPos WARP_SPEAR_PILLAR_DISTORTED, 7, 5
    End

MtCoronet6F_TrySetWarpSpearPillarDialgaPalkia:
    GoToIfGe VAR_EXITED_DISTORTION_WORLD_STATE, 2, MtCoronet6F_TrySetWarpSpearPillarDialga
    GoTo MtCoronet6F_SetWarpSpearPillarNormal
    End

MtCoronet6F_SetWarpSpearPillarNormal:
    SetWarpEventPos WARP_SPEAR_PILLAR, 7, 5
    End

MtCoronet6F_TrySetWarpSpearPillarDialga:
    GoToIfUnset FLAG_UNLOCKED_DIALGA_PALKIA_SPEAR_PILLAR, MtCoronet6F_SetWarpSpearPillarNormal
    GoToIfSet FLAG_CAUGHT_DIALGA, MtCoronet6F_TrySetWarpSpearPillarPalkia
    GoToIfGe VAR_SPEAR_PILLAR_DIALGA_STATE, 1, MtCoronet6F_TrySetWarpSpearPillarPalkia
    CheckItem ITEM_ADAMANT_ORB, 1, VAR_MAP_LOCAL_0x01
    GoToIfEq VAR_MAP_LOCAL_0x01, TRUE, MtCoronet6F_SetWarpSpearPillarDialga
    CheckPartyHasHeldItem ITEM_ADAMANT_ORB, VAR_MAP_LOCAL_0x01
    GoToIfEq VAR_MAP_LOCAL_0x01, TRUE, MtCoronet6F_SetWarpSpearPillarDialga
    GoTo MtCoronet6F_TrySetWarpSpearPillarPalkia
    End

MtCoronet6F_TrySetWarpSpearPillarPalkia:
    GoToIfSet FLAG_CAUGHT_PALKIA, MtCoronet6F_SetWarpSpearPillarNormal
    GoToIfGe VAR_SPEAR_PILLAR_PALKIA_STATE, 1, MtCoronet6F_SetWarpSpearPillarNormal
    CheckItem ITEM_LUSTROUS_ORB, 1, VAR_MAP_LOCAL_0x01
    GoToIfEq VAR_MAP_LOCAL_0x01, TRUE, MtCoronet6F_SetWarpSpearPillarPalkia
    CheckPartyHasHeldItem ITEM_LUSTROUS_ORB, VAR_MAP_LOCAL_0x01
    GoToIfEq VAR_MAP_LOCAL_0x01, TRUE, MtCoronet6F_SetWarpSpearPillarPalkia
    GoTo MtCoronet6F_SetWarpSpearPillarNormal
    End

MtCoronet6F_SetWarpSpearPillarDialga:
    SetWarpEventPos WARP_SPEAR_PILLAR_DIALGA, 7, 5
    End

MtCoronet6F_SetWarpSpearPillarPalkia:
    SetWarpEventPos WARP_SPEAR_PILLAR_PALKIA, 7, 5
    End

MtCoronet6F_RemoveSpearPillarWarps:
    SetWarpEventPos WARP_SPEAR_PILLAR, 1, 5
    SetWarpEventPos WARP_SPEAR_PILLAR_DISTORTED, 1, 5
    SetWarpEventPos WARP_SPEAR_PILLAR_DIALGA, 1, 5
    SetWarpEventPos WARP_SPEAR_PILLAR_PALKIA, 1, 5
    Return

    .balign 4, 0
