#include "generated/signpost_commands.h"

    .macro ShowMapSign messageID
    DrawSignpostInstantMessage \messageID SIGNPOST_TYPE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput VAR_RESULT
    CallCommonScript 0x7D0
    .endm

    .macro ShowArrowSign messageID
    DrawSignpostInstantMessage \messageID SIGNPOST_TYPE_ARROW
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput VAR_RESULT
    CallCommonScript 0x7D0
    .endm

    .macro ShowLandmarkSign messageID
    DrawSignpostInstantMessage \messageID SIGNPOST_TYPE_LANDMARK
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput VAR_RESULT
    CallCommonScript 0x7D0
    .endm

    .macro ShowScrollingSign messageID
    DrawSignpostTextBox SIGNPOST_TYPE_SCROLLING
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostScrollingMessage \messageID, VAR_RESULT
    CallCommonScript 0x7D0
    .endm

    .macro CallPokecenterNurse nurseLocalID
    SetVar VAR_0x8007, \nurseLocalID
    CallCommonScript 0x7D2
    .endm

    .macro SaveGame
    CallCommonScript 0x7D6
    .endm

    .macro GivePoketchApp
    CallCommonScript 0x7D9
    .endm

    .macro GiveAccessoryWaitForConfirm
    CallCommonScript 0x7DF
    .endm

    .macro GiveItemQuantityNoLineFeed
    CallCommonScript 0x7E0
    .endm

    .macro MessageBagIsFull
    CallCommonScript 0x7E1
    .endm

    .macro VendorGreeting
    CallCommonScript 0x7E3
    .endm

    .macro GiveItemQuantity
    CallCommonScript 0x7FC
    .endm

    .macro CheckAllFrontierGoldPrintsObtained
    CallCommonScript 0x806
    .endm

    .macro GriseousOrbCouldNotBeRemoved
    CallCommonScript 0x809
    .endm
