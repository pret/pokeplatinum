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

    .macro SendToUndergroundPC
    CallCommonScript 0x7DC
    .endm

    .macro ObtainUndergroundTrap
    CallCommonScript 0x7DD
    .endm

    .macro ObtainUndergroundSphere
    CallCommonScript 0x7DE
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

    .macro ObtainContestBackdropWaitForConfirm
    CallCommonScript 0x7F4
    .endm

    .macro SetCounterpartBGM
    CallCommonScript 0x7F8
    .endm

    .macro FadeToDefaultMusic
    CallCommonScript 0x7F9
    .endm

    .macro SetRivalBGM
    CallCommonScript 0x7FA
    .endm

    .macro FadeToDefaultMusic2
    CallCommonScript 0x7FB
    .endm

    .macro GiveItemQuantity
    CallCommonScript 0x7FC
    .endm

    .macro ObtainContestBackdrop
    CallCommonScript 0x7FD
    .endm

    .macro SendToUndergroundPCWithLinefeed
    CallCommonScript 0x7FE
    .endm

    .macro FadeToDefaultMusic3
    CallCommonScript 0x801
    .endm

    .macro CheckAllFrontierGoldPrintsObtained
    CallCommonScript 0x806
    .endm

    .macro SetLookerBGM
    CallCommonScript 0x807
    .endm

    .macro FadeToDefaultMusic4
    CallCommonScript 0x808
    .endm

    .macro GriseousOrbCouldNotBeRemoved
    CallCommonScript 0x809
    .endm
