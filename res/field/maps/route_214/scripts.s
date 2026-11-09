#include "macros/scrcmd.inc"
#include "res/text/bank/route_214.h"
#include "res/field/maps/locals/route_214.h"


    ScriptEntry Route214_ArrowSignpostVeilstoneCity
    ScriptEntry Route214_ArrowSignpostLakeValor
    ScriptEntry Route214_OnTransition
    ScriptEntry Route214_OnLoad
    ScriptEntryEnd

Route214_OnLoad:
    GetUnownFormsSeenCount VAR_MAP_LOCAL_0x00
    GoToIfGe VAR_MAP_LOCAL_0x00, 26, Route214_RemoveWarpsManiacCaveShortAndLong
    GoToIfGe VAR_MAP_LOCAL_0x00, 10, Route214_RemoveWarpsManiacCaveShortAndTunnel
    GoToIfLt VAR_MAP_LOCAL_0x00, 10, Route214_RemoveWarpsManiacCaveLongAndTunnel
    End

Route214_RemoveWarpsManiacCaveShortAndLong:
    SetWarpEventPos WARP_RUIN_MANIAC_CAVE_SHORT, 710, 670
    SetWarpEventPos WARP_RUIN_MANIAC_CAVE_LONG, 710, 670
    End

Route214_RemoveWarpsManiacCaveShortAndTunnel:
    SetWarpEventPos WARP_RUIN_MANIAC_CAVE_SHORT, 710, 670
    SetWarpEventPos WARP_MANIAC_TUNNEL, 710, 670
    End

Route214_RemoveWarpsManiacCaveLongAndTunnel:
    SetWarpEventPos WARP_RUIN_MANIAC_CAVE_LONG, 710, 670
    SetWarpEventPos WARP_MANIAC_TUNNEL, 710, 670
    End

Route214_OnTransition:
    GetUnownFormsSeenCount VAR_MAP_LOCAL_0x00
    GoToIfGe VAR_MAP_LOCAL_0x00, 26, Route214_RemoveWarpsManiacCaveShortAndLong
    GoToIfGe VAR_MAP_LOCAL_0x00, 10, Route214_RemoveWarpsManiacCaveShortAndTunnel
    GoToIfLt VAR_MAP_LOCAL_0x00, 10, Route214_RemoveWarpsManiacCaveLongAndTunnel
    End

Route214_ArrowSignpostVeilstoneCity:
    ShowArrowSign Route214_Text_SignVeilstoneCity
    End

Route214_ArrowSignpostLakeValor:
    ShowArrowSign Route214_Text_SignLakeValor
    End
