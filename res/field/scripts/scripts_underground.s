#include "macros/scrcmd.inc"
#include "res/text/bank/underground_npcs.h"
#include "constants/map_object.h"
#include "res/field/events/events_underground.h"


    ScriptEntry Underground_SetVendorPositions
    ScriptEntry Underground_SetRoarkPositionIfFirstEntry
    ScriptEntry Underground_TrapsVendor_Unused
    ScriptEntry Underground_GoodsVendor_Unused
    ScriptEntry Underground_TreasuresVendor_Unused // see UndergroundVendors_StartShopMenuTask for the actual code that handles these
    ScriptEntry Underground_RoarkIntro
    ScriptEntryEnd

Underground_SetVendorPositions:
    Dummy14F
    SetObjectEventPos LOCALID_GOODS_VENDOR_1, 72, 104
    SetObjectEventPos LOCALID_GOODS_VENDOR_2, 424, 87
    SetObjectEventPos LOCALID_GOODS_VENDOR_3, 200, 185
    SetObjectEventPos LOCALID_GOODS_VENDOR_4, 335, 264
    SetObjectEventPos LOCALID_GOODS_VENDOR_5, 175, 279
    SetObjectEventPos LOCALID_GOODS_VENDOR_6, 424, 439
    SetObjectEventPos LOCALID_GOODS_VENDOR_7, 87, 456
    SetObjectEventPos LOCALID_GOODS_VENDOR_8, 311, 358
    SetObjectEventPos LOCALID_TRAPS_VENDOR_1, 232, 87
    SetObjectEventPos LOCALID_TRAPS_VENDOR_2, 328, 151
    SetObjectEventPos LOCALID_TRAPS_VENDOR_3, 232, 215
    SetObjectEventPos LOCALID_TRAPS_VENDOR_4, 232, 298
    SetObjectEventPos LOCALID_TRAPS_VENDOR_5, 279, 328
    SetObjectEventPos LOCALID_TRAPS_VENDOR_6, 279, 456
    SetObjectEventPos LOCALID_TRAPS_VENDOR_7, 183, 392
    SetObjectEventPos LOCALID_TRAPS_VENDOR_8, 279, 245
    SetObjectEventPos LOCALID_TREASURES_VENDOR_1, 40, 471
    SetObjectEventPos LOCALID_TREASURES_VENDOR_2, 471, 72
    SetObjectEventPos LOCALID_TREASURES_VENDOR_3, 471, 471
    SetObjectEventPos LOCALID_TREASURES_VENDOR_4, 40, 72
    End

Underground_SetRoarkPositionIfFirstEntry:
    GoToIfEq VAR_HAS_SEEN_UNDERGROUND_ROARK_INTRO, 0, Underground_PutRoarkNextToPlayer
    End

Underground_PutRoarkNextToPlayer:
    GetPlayerMapPos VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1
    AddVar VAR_MAP_LOCAL_0, 1
    SetPosition LOCALID_ROARK, VAR_MAP_LOCAL_0, 1, VAR_MAP_LOCAL_1, DIR_SOUTH
    End

Underground_TrapsVendor_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_IllTradeYouSomething
    GoTo Underground_TrapsVendorShopMenu_Dummy
    End

Underground_TrapsVendorShopMenu_Dummy:
    Dummy19E 1, VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, -5, Underground_TrapsVendorSphereTooSmall_Unused
    GoToIfEq VAR_0x8008, -4, Underground_TrapsVendorNoRoom_Unused
    GoToIfEq VAR_0x8008, -3, Underground_TrapsVendorWrongSphere_Unused
    GoToIfEq VAR_0x8008, -1, Underground_VendorSeeYou_Unused
    GoTo Underground_TrapsVendorWaitABPress_Unused
    End

Underground_TrapsVendorSphereTooSmall_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_SphereTooSmall
    GoTo Underground_TrapsVendorNeedAnythingElse_Unused
    End

Underground_TrapsVendorNoRoom_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_YouDontHaveRoom
    GoTo Underground_TrapsVendorNeedAnythingElse_Unused
    End

Underground_TrapsVendorWrongSphere_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_WrongKindOfSphere
    GoTo Underground_TrapsVendorNeedAnythingElse_Unused
    End

Underground_VendorSeeYou_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_BeSeeingYouThen
    GoTo Underground_VendorClose_Unused
    End

Underground_TrapsVendorNeedAnythingElse_Unused:
    WaitABPress
    UndergroundNPCMessage UndergroundNPCs_Text_DoYouNeedAnythingElse
    GoTo Underground_TrapsVendorShopMenu_Dummy
    End

Underground_TrapsVendorWaitABPress_Unused:
    WaitABPress
    GoTo Underground_TrapsVendorNeedAnythingElse_Unused
    End

Underground_VendorClose_Unused:
    WaitABPress
    CloseUndergroundNPCMessage
    End

Underground_GoodsVendor_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_IllTradeYouSomething
    GoTo Underground_GoodsVendorShopMenu_Dummy
    End

Underground_GoodsVendorShopMenu_Dummy:
    Dummy19E 0, VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, -5, Underground_GoodsVendorSphereTooSmall_Unused
    GoToIfEq VAR_0x8008, -4, Underground_GoodsVendorNoRoom_Unused
    GoToIfEq VAR_0x8008, -3, Underground_GoodsVendorWrongSphere_Unused
    GoToIfEq VAR_0x8008, -1, Underground_VendorSeeYou_Unused
    GoTo Underground_GoodsVendorWaitABPress_Unused
    End

Underground_GoodsVendorNoRoom_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_YouDontHaveRoom
    GoTo Underground_GoodsVendorNeedAnythingElse_Unused
    End

Underground_GoodsVendorWrongSphere_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_WrongKindOfSphere
    GoTo Underground_GoodsVendorNeedAnythingElse_Unused
    End

Underground_GoodsVendorSphereTooSmall_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_SphereTooSmall
    GoTo Underground_GoodsVendorNeedAnythingElse_Unused
    End

Underground_GoodsVendorWaitABPress_Unused:
    WaitABPress
    GoTo Underground_GoodsVendorNeedAnythingElse_Unused
    End

Underground_GoodsVendorNeedAnythingElse_Unused:
    WaitABPress
    UndergroundNPCMessage UndergroundNPCs_Text_DoYouNeedAnythingElse
    GoTo Underground_GoodsVendorShopMenu_Dummy
    End

Underground_TreasuresVendor_Unused:
    UndergroundNPCMessage UndergroundNPCs_Text_IllTradeSpheresForTreasures
    GoTo _0231
    End

_0231:
    Dummy19E 2, VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, -4, _0265
    GoToIfEq VAR_0x8008, -1, Underground_VendorSeeYou_Unused
    GoTo _0271
    End

_0265:
    UndergroundNPCMessage UndergroundNPCs_Text_YouDontHaveRoom
    GoTo _027B
    End

_0271:
    WaitABPress
    GoTo _027B
    End

_027B:
    WaitABPress
    UndergroundNPCMessage UndergroundNPCs_Text_DoYouNeedAnythingElse
    GoTo _0231
    End

Underground_RoarkIntro:
    ApplyMovement LOCALID_ROARK, Underground_Movement_RoarkNoticePlayer
    WaitMovement
    SetCommPlayerDir DIR_EAST
    UndergroundNPCMessage UndergroundNPCs_Text_RoarkIntro
    WaitABPress
    CloseUndergroundNPCMessage
    ApplyMovement LOCALID_ROARK, Underground_Movement_RoarkFaceForward
    WaitMovement
    PlayFanfare SEQ_SE_DP_PYUU2
    ApplyMovement LOCALID_ROARK, Underground_Movement_RoarkExitUnderground
    WaitMovement
    RemoveObject LOCALID_ROARK
    SetVar VAR_HAS_SEEN_UNDERGROUND_ROARK_INTRO, 1
    SetFlag FLAG_HAS_SEEN_UNDERGROUND_ROARK_INTRO
    End

    .balign 4, 0
Underground_UnusedMovement:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Underground_Movement_RoarkNoticePlayer:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
Underground_Movement_RoarkFaceForward:
    WalkOnSpotNormalSouth
    Delay8 2
    EndMovement

    .balign 4, 0
Underground_Movement_RoarkExitUnderground:
    FaceEast
    Delay2
    FaceNorth
    Delay2
    FaceWest
    Delay2
    FaceSouth
    Delay2
    FaceEast
    Delay1
    FaceNorth
    Delay1
    FaceWest
    Delay1
    FaceSouth
    WarpOut
    Delay8 2
    EndMovement

    .balign 4, 0
