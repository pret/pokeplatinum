#include "generated/accessories.h"
#include "generated/badges.h"
#include "generated/battle_tower_modes.h"
#include "generated/battle_tower_functions.h"
#include "generated/berry_growth_stages.h"
#include "generated/catching_show_points_category.h"
#include "generated/comm_club_ret_codes.h"
#include "generated/days_of_week.h"
#include "generated/fade_types.h"
#include "generated/game_records.h"
#include "generated/genders.h"
#include "generated/items.h"
#include "generated/journal_location_events.h"
#include "generated/journal_online_events.h"
#include "generated/map_headers.h"
#include "generated/mart_decor_id.h"
#include "generated/mart_frontier_id.h"
#include "generated/mart_seal_id.h"
#include "generated/mart_specialties_id.h"
#include "generated/movement_types.h"
#include "generated/moves.h"
#include "generated/mystery_gift_delivery_stages.h"
#include "generated/npc_trades.h"
#include "generated/poketch_apps.h"
#include "generated/roaming_slots.h"
#include "generated/save_types.h"
#include "generated/sdat.h"
#include "generated/signpost_commands.h"
#include "generated/signpost_types.h"
#include "generated/string_padding_mode.h"
#include "generated/trainer_score_events.h"
#include "generated/trainers.h"
#include "constants/animation_tags.h"
#include "constants/battle_tower.h"
#include "constants/boat_cutscene.h"
#include "constants/colors.h"
#include "constants/elevator_dirs.h"
#include "constants/fade_screen.h"
#include "constants/forms.h"
#include "constants/honey_tree.h"
#include "constants/init_script_types.h"
#include "constants/items.h"
#include "constants/map_object.h"
#include "constants/savedata/vars_flags.h"
#include "constants/scrcmd.h"
#include "constants/tv_broadcast.h"
#include "constants/battle.h"

#include "macros/movement.inc"

    .set FALSE, 0
    .set TRUE, 1

    .macro Noop
    .short 0
    .endm

    .macro Dummy
    .short 1
    .endm

    .macro End
    .short 2
    .endm

    .macro WaitTime frames, countdownVarID
    .short 3
    .short \frames
    .short \countdownVarID
    .endm

    .macro ScrCmd_Unused_004 arg0, arg1
    .short 4
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_005 arg0, arg1
    .short 5
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_006 arg0, arg1
    .short 6
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_007 arg0, arg1
    .short 7
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_008 arg0, arg1
    .short 8
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_009 arg0, arg1
    .short 9
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00A arg0, arg1
    .short 10
    .long \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_00B arg0, arg1
    .short 11
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00C arg0, arg1
    .short 12
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00D arg0, arg1
    .short 13
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_00E arg0, arg1
    .short 14
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00F arg0, arg1
    .short 15
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_010 arg0, arg1
    .short 16
    .long \arg0
    .long \arg1
    .endm

    .macro CompareVar varID, valueOrVarID
    .if \valueOrVarID < VARS_START
        .short 17 /* CompareVarToValue */
    .else
        .short 18 /* CompareVarToVar */
    .endif
    .short \varID
    .short \valueOrVarID
    .endm

    .macro ScrCmd_Unused_013 arg0
    .short 19
    .short \arg0
    .endm

    .macro CallCommonScript scriptID
    .short 20
    .short \scriptID
    .endm

    .macro ReturnCommonScript
    .short 21
    .endm

    .macro GoTo offset
    .short 22
    .long \offset-.-4
    .endm

    .macro ScrCmd_Unused_017 arg0, arg1
    .short 23
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro ScrCmd_Unused_018 arg0, arg1
    .short 24
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro ScrCmd_Unused_019 arg0, arg1
    .short 25
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro Call offset
    .short 26
    .long \offset-.-4
    .endm

    .macro Return
    .short 27
    .endm

    .macro GoToIf condition, offset
    .short 28
    .byte \condition
    .long \offset-.-4
    .endm

    .macro CallIf condition, offset
    .short 29
    .byte \condition
    .long \offset-.-4
    .endm

    .macro SetFlag flagID
    .short 30
    .short \flagID
    .endm

    .macro ClearFlag flagID
    .short 31
    .short \flagID
    .endm

    .macro CheckFlag flagID
    .short 32
    .short \flagID
    .endm

    .macro CheckFlagFromVar flagID, destVarID
    .short 33
    .short \flagID
    .short \destVarID
    .endm

    .macro SetFlagFromVar varID
    .short 34
    .short \varID
    .endm

    .macro SetTrainerFlag trainerID
    .short 35
    .short \trainerID
    .endm

    .macro ClearTrainerFlag trainerID
    .short 36
    .short \trainerID
    .endm

    .macro CheckTrainerFlag trainerID
    .short 37
    .short \trainerID
    .endm

    .macro AddVar destVarID, valueOrVarID
    .short 38
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro SubVar destVarID, valueOrVarID
    .short 39
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro SetVar destVarID, valueOrVarID
    .if \valueOrVarID < VARS_START
        .short 40 /* SetVarFromValue */
    .else
        .short 41 /* SetVarFromVar */
    .endif
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro ScrCmd_Unused_02A arg0, arg1
    .short 42
    .short \arg0
    .short \arg1
    .endm

    .macro MessageInstant messageID
    .short 43
    .byte \messageID
    .endm

    .macro Message messageID
    .short 44
    .byte \messageID
    .endm

    .macro MessageVar messageVar
    .short 45
    .short \messageVar
    .endm

    .macro MessageNoSkip messageID
    .short 46
    .short \messageID
    .endm

    /*
     * Used in multi-player contexts to show a message such that it takes
     * a predictable amount of time, to keep connected games in sync.
     * In single-player, this behaves like the Message script command.
     */
    .macro MessageSynchronized messageID
    .short 47
    .byte \messageID
    .endm

    .macro WaitABPress
    .short 48
    .endm

    // This also sets the player's direction appropriately when a pad
    // button is pressed, unlike the WaitABPadPress command.
    .macro WaitABXPadPress
    .short 49
    .endm

    .macro WaitABPadPress
    .short 50
    .endm

    // Opens a message box window without printing anything
    .macro OpenMessage
    .short 51
    .endm

    .macro CloseMessage
    .short 52
    .endm

    .macro CloseMessageWithoutErasing
    .short 53
    .endm

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

    .macro DrawSignpostInstantMessage messageID, signpostType, signpostNARCMemberIdx=0, unused=VAR_RESULT
    .short 54
    .byte \messageID
    .byte \signpostType
    .short \signpostNARCMemberIdx
    .short \unused
    .endm

    .macro DrawSignpostTextBox signpostType=SIGNPOST_TYPE_SCROLLING, signpostNARCMemberIdx=0
    .short 55
    .byte \signpostType
    .short \signpostNARCMemberIdx
    .endm

    .macro SetSignpostCommand command
    .short 56
    .byte \command
    .endm

    .macro WaitForSignpostDone
    .short 57
    .endm

    .macro DrawSignpostScrollingMessage messageID, destVarID=VAR_RESULT
    .short 58
    .byte \messageID
    .short \destVarID
    .endm

    .macro GetSignpostInput destVarID=VAR_RESULT
    .short 59
    .short \destVarID
    .endm

    .macro ShowStartMenu
    .short 60
    .endm

    .macro ScrollBG3 distanceX, countX, directionX, distanceY, countY, directionY
    .short 61
    .byte \distanceX
    .byte \countX
    .byte \directionX
    .byte \distanceY
    .byte \countY
    .byte \directionY
    .endm

    .macro ShowYesNoMenu destVarID
    .short 62
    .short \destVarID
    .endm

    .macro ScrCmd_Unused_03F
    .short 63
    .endm

    /*
     * selectedOptionVar is set to 0xeeee as part of initializing a FieldMenuManager.
     * Once ShowMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitGlobalTextMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short 64
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    /*
     * selectedOptionVar is set to 0xeeee as part of initializing a FieldMenuManager.
     * Once ShowMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitLocalTextMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short 65
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    /*
     * AddMenuEntry variant that only accepts single-byte values,
     * and therefore can't use variables or string IDs larger than 0xff,
     * unlike the regular AddMenuEntry.
     */
    .macro AddMenuEntryImm entryStringID, entryIndex
    .short 66
    .byte \entryStringID
    .byte \entryIndex
    .endm

    .macro ShowMenu
    .short 67
    .endm

    /*
     * selectedOptionVar is set to 0xeeee as part of initializing a FieldMenuManager.
     * Once ShowListMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitGlobalTextListMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short 68
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    /*
     * selectedOptionVar is set to 0xeeee as part of initializing a FieldMenuManager.
     * Once ShowListMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitLocalTextListMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short 69
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    .macro AddListMenuEntry entryStringID, entryIndex, altTextStringID=LIST_MENU_ENTRY_NO_ALT_TEXT
    .short 70
    .short \entryStringID
    .short \altTextStringID
    .short \entryIndex
    .endm

    .macro ShowListMenu
    .short 71
    .endm

    .macro ShowMenuMultiColumn columnCount
    .short 72
    .byte \columnCount
    .endm

    // Plays a sound effect without interrupting the current music
    .macro PlayFanfare seqID
    .short 73
    .short \seqID
    .endm

    .macro StopFanfare seqID
    .short 74
    .short \seqID
    .endm

    .macro WaitFanfare seqID
    .short 75
    .short \seqID
    .endm

    .macro PlayCry species, unused=0
    .short 76
    .short \species
    .short \unused
    .endm

    .macro WaitCry
    .short 77
    .endm

    // Pauses the current music and then plays a sound effect
    .macro PlaySound seqID
    .short 78
    .short \seqID
    .endm

    .macro WaitSound
    .short 79
    .endm

    .macro PlayMusic seqID
    .short 80
    .short \seqID
    .endm

    .macro StopMusic dummy
    .short 81
    .short \dummy
    .endm

    // Plays the default music track based on the player's current location
    .macro PlayDefaultMusic
    .short 82
    .endm

    .macro SetSpecialBGM bgmID
    .short 83
    .short \bgmID
    .endm

    .macro FadeOutBGM targetVolume, frames
    .short 84
    .short \targetVolume
    .short \frames
    .endm

    .macro FadeInBGM frames
    .short 85
    .short \frames
    .endm

    .macro SetBGMPlayerPaused playedID, paused
    .short 86
    .byte \playedID
    .byte \paused
    .endm

    .macro SetBGM seqID
    .short 87
    .short \seqID
    .endm

    .macro SetBGMFixed bgmID
    .short 88
    .byte \bgmID
    .endm

    .macro CheckRecordedChatotCryIsPlayable destVar
    .short 89
    .short \destVar
    .endm

    .macro TryRecordChatotCry destVar
    .short 90
    .short \destVar
    .endm

    .macro StopRecordingChatotCry
    .short 91
    .endm

    .macro StoreRecordedChatotCry
    .short 92
    .endm

    .macro SetSubScene63
    .short 93
    .endm

    .macro ApplyMovement localID, movementOffset
    .short 94
    .short \localID
    .long \movementOffset-.-4
    .endm

    .macro WaitMovement
    .short 95
    .endm

    .macro LockAll
    .short 96
    .endm

    .macro ReleaseAll
    .short 97
    .endm

    .macro LockObject localID
    .short 98
    .short \localID
    .endm

    .macro ReleaseObject localID
    .short 99
    .short \localID
    .endm

    .macro AddObject arg0
    .short 100
    .short \arg0
    .endm

    .macro RemoveObject localID
    .short 101
    .short \localID
    .endm

    .macro AddFreeCamera x, z
    .short 102
    .short \x
    .short \z
    .endm

    .macro ApplyFreeCameraMovement movementOffset
    ApplyMovement 241, \movementOffset
    .endm

    .macro RestoreCamera
    .short 103
    .endm

    .macro FacePlayer
    .short 104
    .endm

    .macro GetPlayerMapPos destVarIDX, destVarIDZ
    .short 105
    .short \destVarIDX
    .short \destVarIDZ
    .endm

    .macro ScrCmd_Unused_06A arg0, arg1, arg2
    .short 106
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro MoveCamera x, y, z
    .short 107
    .short \x
    .short \y
    .short \z
    .endm

    .macro ScrCmd_06C arg0, arg1
    .short 108
    .short \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_06D arg0, arg1
    .short 109
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_Unused_06E
    .short 110
    .endm

    .macro GiveMoney value
    .short 111
    .long \value
    .endm

    .macro RemoveMoney value
    .short 112
    .long \value
    .endm

    .macro CheckMoney destVar, value
    .short 113
    .short \destVar
    .long \value
    .endm

    .macro GoToIfNotEnoughMoney value, offset
    CheckMoney VAR_RESULT, \value
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro ShowMoney tilemapLeft, tilemapTop
    .short 114
    .short \tilemapLeft
    .short \tilemapTop
    .endm

    .macro HideMoney
    .short 115
    .endm

    .macro UpdateMoneyDisplay
    .short 116
    .endm

    .macro ShowCoins tilemapLeft, tilemapTop
    .short 117
    .short \tilemapLeft
    .short \tilemapTop
    .endm

    .macro HideCoins
    .short 118
    .endm

    .macro UpdateCoinDisplay
    .short 119
    .endm

    .macro GetCoinsAmount destVar
    .short 120
    .short \destVar
    .endm

    .macro AddCoins coins
    .short 121
    .short \coins
    .endm

    /* See SubtractCoins for 122 */

    // If the player has no space left in the bag, destVarID will be set to FALSE
    .macro AddItem item, count, destVarID
    .short 123
    .short \item
    .short \count
    .short \destVarID
    .endm

    // destVarID will be set to TRUE if the player had at least 'count' items of the specified type in their bag
    .macro RemoveItem item, count, destVarID
    .short 124
    .short \item
    .short \count
    .short \destVarID
    .endm

    // destVarID will be set to TRUE if the player has space for at least 'count' items of the specified type in their bag
    .macro CanFitItem item, count, destVarID
    .short 125
    .short \item
    .short \count
    .short \destVarID
    .endm

    // destVarID will be set to TRUE if the player has at least 'count' items of the specified type in their bag
    .macro CheckItem item, count, destVarID
    .short 126
    .short \item
    .short \count
    .short \destVarID
    .endm

    .macro IsItemTMHM item, destVar
    .short 127
    .short \item
    .short \destVar
    .endm

    .macro GetItemPocket item, destVarID
    .short 128
    .short \item
    .short \destVarID
    .endm

    .macro ScrCmd_Dummy081
    .short 129
    .endm

    .macro ScrCmd_Dummy082
    .short 130
    .endm

    .macro SendGoodToPC goodID, unused, destVar
    .short 131
    .short \goodID
    .short \unused
    .short \destVar
    .endm

    .macro Dummy084 dummy, dummy2, dummy3
    .short 132
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro CheckHasRoomForGoodsInPC unused, unused2, destVar
    .short 133
    .short \unused
    .short \unused2
    .short \destVar
    .endm

    .macro Dummy086 dummy, dummy2, dummy3
    .short 134
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro GiveTrap trapID, unused, destVar
    .short 135
    .short \trapID
    .short \unused
    .short \destVar
    .endm

    .macro Dummy088 dummy, dummy2, dummy3
    .short 136
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy089 dummy, dummy2, dummy3
    .short 137
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08A dummy, dummy2, dummy3
    .short 138
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08B dummy, dummy2, dummy3
    .short 139
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08C dummy, dummy2, dummy3
    .short 140
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08D dummy, dummy2, dummy3
    .short 141
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08E dummy, dummy2, dummy3
    .short 142
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro GiveSphere type, size, destVar
    .short 143
    .short \type
    .short \size
    .short \destVar
    .endm

    .macro Dummy090 dummy, dummy2, dummy3
    .short 144
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy091 dummy, dummy2, dummy3
    .short 145
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy092 dummy, dummy2, dummy3
    .short 146
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro ScrCmd_093 arg0, arg1
    .short 147
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_094 arg0, arg1
    .short 148
    .short \arg0
    .short \arg1
    .endm

    .macro GetPartyMonForm partySlot, destVar
    .short 149
    .short \partySlot
    .short \destVar
    .endm

    .macro GivePokemon species, level, heldItem, successVar
    .short 150
    .short \species
    .short \level
    .short \heldItem
    .short \successVar
    .endm

    @ eggGiverTextId corresponds to an entry in special_met_location_names.gmm.
    .macro GiveEgg species, eggGiverTextId
    .short 151
    .short \species
    .short \eggGiverTextId
    .endm

    .macro ResetPartyMonMoveSlot_Unused partySlot, moveSlot, moveID 
    .short 152
    .short \partySlot
    .short \moveSlot
    .short \moveID
    .endm

    .macro CheckPartyMonHasMove destVar, move, partySlot
    .short 153
    .short \destVar
    .short \move
    .short \partySlot
    .endm

    .macro FindPartySlotWithMove destVar, move
    .short 154
    .short \destVar
    .short \move
    .endm

    .macro GetRematchTrainerID trainerID, destVar
    .short 155
    .short \trainerID
    .short \destVar
    .endm

    .macro ScrCmd_Unused_09C
    .short 156
    .endm

    .macro ScrCmd_Unused_09D
    .short 157
    .endm

    .macro ScrCmd_Unused_09E
    .short 158
    .endm

    .macro ScrCmd_Unused_09F
    .short 159
    .endm

    .macro Dummy0A0
    .short 160
    .endm

    .macro ReturnToField
    .short 161
    .endm

    .macro ScrCmd_0A2
    .short 162
    .endm

    .macro ScrCmd_0A3
    .short 163
    .endm

    .macro ScrCmd_Unused_0A4 arg0
    .short 164
    .short \arg0
    .endm

    .macro ScrCmd_0A5
    .short 165
    .endm

    .macro ScrCmd_0A6 arg0, arg1, arg2
    .short 166
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_0A7 arg0, arg1
    .short 167
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0A8 arg0, arg1
    .short 168
    .short \arg0
    .short \arg1
    .endm

    .macro OpenSealCapsuleEditor
    .short 169
    .endm

    .macro OpenRegionMap
    .short 170
    .endm

    .macro OpenPokemonStorage boxMode
    .short 171
    .byte \boxMode
    .endm

    .macro ScrCmd_0AC
    .short 172
    .endm

    .macro ScrCmd_0AD
    .short 173
    .endm

    .macro ScrCmd_0AE
    .short 174
    .endm

    .macro ScrCmd_0AF
    .short 175
    .endm

    .macro ScrCmd_0B0
    .short 176
    .endm

    .macro ScrCmd_0B1
    .short 177
    .endm

    .macro TryStartGTSApp connectToWiFi, destVar
    .short 178
    .short \connectToWiFi
    .short \destVar
    .endm

    .macro ScrCmd_0B3 arg0
    .short 179
    .short \arg0
    .endm

    .macro StartChooseStarterScene
    .short 180
    .endm

    .macro SaveChosenStarter
    .short 181
    .endm

    .macro ScrCmd_0B6 approachNum
    .short 182
    .short \approachNum
    .endm

    .macro CheckIsApproachingTrainerTaskDone approachNum, destVar
    .short 183
    .short \approachNum
    .short \destVar
    .endm

    .macro ScrCmd_0B8 destVar
    .short 184
    .short \destVar
    .endm

    .macro GetApproachingTrainerID approachNum, destVar
    .short 185
    .short \approachNum
    .short \destVar
    .endm

    .macro ScrCmd_Unused_0BA arg0
    .short 186
    .short \arg0
    .endm

    .macro ScrCmd_0BB arg0, arg1
    .short 187
    .short \arg0
    .short \arg1
    .endm

    .macro FadeScreen transition, frames, type, color
    .short 188
    .short \transition
    .short \frames
    .short \type
    .short \color
    .endm

    .macro FadeScreenOut frames = FADE_SCREEN_SPEED_FAST, color = COLOR_BLACK
    FadeScreen FADE_SCREEN_CMD_STEPS, \frames, FADE_TYPE_BRIGHTNESS_OUT, \color
    .endm

    .macro FadeScreenIn frames = FADE_SCREEN_SPEED_FAST, color = COLOR_BLACK
    FadeScreen FADE_SCREEN_CMD_STEPS, \frames, FADE_TYPE_BRIGHTNESS_IN, \color
    .endm

    .macro WaitFadeScreen
    .short 189
    .endm

    .macro Warp mapID, dummy, x, z, direction
    .short 190
    .short \mapID
    .short \dummy
    .short \x
    .short \z
    .short \direction
    .endm

    .macro UseRockClimb partySlot
    .short 191
    .short \partySlot
    .endm

    .macro UseSurf partySlot
    .short 192
    .short \partySlot
    .endm

    .macro UseWaterfall partySlot
    .short 193
    .short \partySlot
    .endm

    .macro UseFly mapID, x, z
    .short 194
    .short \mapID
    .short \x
    .short \z
    .endm

    .macro ScrCmd_0C3
    .short 195
    .endm

    .macro ScrCmd_0C4
    .short 196
    .endm

    .macro ScrCmd_0C5 arg0
    .short 197
    .short \arg0
    .endm

    .macro ScrCmd_0C6
    .short 198
    .endm

    .macro CheckPlayerOnBike destVarID
    .short 199
    .short \destVarID
    .endm

    // If rideBike == TRUE, sets the player on the bike.
    // If rideBike == FALSE, removes the player from the bike.
    .macro SetPlayerBike rideBike
    .short 200
    .byte \rideBike
    .endm

    .macro ScrCmd_0C9 arg0
    .short 201
    .byte \arg0
    .endm

    .macro GetPlayerState destVarID
    .short 202
    .short \destVarID
    .endm

    .macro SetPlayerState state
    .short 203
    .short \state
    .endm

    .macro ChangePlayerState
    .short 204
    .endm

    .macro BufferPlayerName templateArg
    .short 205
    .byte \templateArg
    .endm

    .macro BufferRivalName templateArg
    .short 206
    .byte \templateArg
    .endm

    .macro BufferCounterpartName templateArg
    .short 207
    .byte \templateArg
    .endm

    .macro BufferPartyMonSpecies templateArg, partySlot
    .short 208
    .byte \templateArg
    .short \partySlot
    .endm

    .macro BufferItemName templateArg, item
    .short 209
    .byte \templateArg
    .short \item
    .endm

    .macro BufferPocketName templateArg, pocket
    .short 210
    .byte \templateArg
    .short \pocket
    .endm

    .macro BufferTMHMMoveName templateArg, item
    .short 211
    .byte \templateArg
    .short \item
    .endm

    .macro BufferMoveName templateArg, move
    .short 212
    .byte \templateArg
    .short \move
    .endm

    .macro BufferNumber templateArg, number
    .short 213
    .byte \templateArg
    .short \number
    .endm

    .macro BufferPartyMonNickname templateArg, partySlot
    .short 214
    .byte \templateArg
    .short \partySlot
    .endm

    .macro BufferPoketchAppName templateArg, appID
    .short 215
    .byte \templateArg
    .short \appID
    .endm

    .macro BufferTrainerClassName templateArg, trainerClass
    .short 216
    .byte \templateArg
    .short \trainerClass
    .endm

    .macro BufferTrainerClassFromAppearance templateArg
    .short 217
    .byte \templateArg
    .endm

    .macro BufferSpeciesNameFromVar templateArg, var, unused1, unused2
    .short 218
    .byte \templateArg
    .short \var
    .short \unused1
    .byte \unused2
    .endm

    .macro BufferPlayerStarterSpeciesName templateArg
    .short 219
    .byte \templateArg
    .endm

    .macro BufferRivalStarterSpeciesName templateArg
    .short 220
    .byte \templateArg
    .endm

    .macro BufferPlayerCounterpartStarterSpeciesName templateArg
    .short 221
    .byte \templateArg
    .endm

    .macro GetPlayerStarterSpecies destVar
    .short 222
    .short \destVar
    .endm

    .macro BufferUndergroundGoodsName templateArg, goods
    .short 223
    .byte \templateArg
    .short \goods
    .endm

    .macro BufferUndergroundTrapName templateArg, trap
    .short 224
    .byte \templateArg
    .short \trap
    .endm

    .macro BufferUndergroundItemName templateArg, item
    .short 225
    .byte \templateArg
    .short \item
    .endm

    .macro BufferMapName templateArg, mapID
    .short 226
    .byte \templateArg
    .short \mapID
    .endm

    .macro GetSwarmMapAndSpecies arg0, arg1
    .short 227
    .short \arg0
    .short \arg1
    .endm

    .macro GetTrainerID destVar
    .short 228
    .short \destVar
    .endm

    .macro StartTrainerBattle enemyTrainer1, enemyTrainer2=0
    .short 229
    .short \enemyTrainer1
    .short \enemyTrainer2
    .endm

    .macro PrintTrainerDialogue trainerID, msgType
    .short 230
    .short \trainerID
    .short \msgType
    .endm

    .macro GetTrainerMessageTypes destVarPreBattleMsgType, destVarPostBattleMsgType, destVarNotEnoughPokemonMessageType
    .short 231
    .short \destVarPreBattleMsgType
    .short \destVarPostBattleMsgType
    .short \destVarNotEnoughPokemonMessageType
    .endm

    .macro GetTrainerRematchMessageTypes destVarPreBattleMsgType, destVarPostBattleMsgType, destVarNotEnoughPokemonMessageType
    .short 232
    .short \destVarPreBattleMsgType
    .short \destVarPostBattleMsgType
    .short \destVarNotEnoughPokemonMessageType
    .endm

    .macro CheckIsTrainerDoubleBattle destVar
    .short 233
    .short \destVar
    .endm

    .macro PlayTrainerEncounterBGM trainerID
    .short 234
    .short \trainerID
    .endm

    .macro BlackOutFromBattle
    .short 235
    .endm

    .macro CheckWonBattle destVarID
    .short 236
    .short \destVarID
    .endm

    .macro CheckLostBattle destVarID
    .short 237
    .short \destVarID
    .endm

    .macro CheckHasTwoAliveMons destVarID
    .short 238
    .short \destVarID
    .endm

    .macro StartDummyTrainerBattle
    .short 239
    .endm

    .macro SetTargetTrainerDefeated
    .short 240
    .endm

    .macro GoToIfTargetTrainerDefeated offset
    .short 241
    .long \offset-.-4
    .endm

    .macro StartBattleClient commType, arg1, arg2, destVarID
    .short 242
    .short \commType
    .short \arg1
    .short \arg2
    .short \destVarID
    .endm

    .macro StartBattleServer commType, arg1, arg2, destVarID
    .short 243
    .short \commType
    .short \arg1
    .short \arg2
    .short \destVarID
    .endm

    .macro ScrCmd_Unused_0F4 arg0
    .short 244
    .short \arg0
    .endm

    .macro ScrCmd_Unused_0F5 arg0
    .short 245
    .short \arg0
    .endm

    .macro StartLinkBattle
    .short 246
    .endm

    .macro ScrCmd_Unused_0F7
    .short 247
    .endm

    .macro ScrCmd_0F8 arg0
    .short 248
    .short \arg0
    .endm

    .macro ScrCmd_0F9 arg0
    .short 249
    .short \arg0
    .endm

    .macro ScrCmd_0FA arg0, arg1, arg2, arg3
    .short 250
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_0FB arg0
    .short 251
    .short \arg0
    .endm

    .macro ScrCmd_0FC arg0, arg1
    .short 252
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0FD arg0, arg1
    .short 253
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0FE arg0, arg1
    .short 254
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0FF arg0, arg1
    .short 255
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_100
    .short 256
    .endm

    .macro ScrCmd_101
    .short 257
    .endm

    .macro ScrCmd_102 arg0
    .short 258
    .short \arg0
    .endm

    .macro ScrCmd_103 arg0
    .short 259
    .short \arg0
    .endm

    .macro ScrCmd_104 arg0
    .short 260
    .short \arg0
    .endm

    .macro ScrCmd_105 arg0
    .short 261
    .short \arg0
    .endm

    .macro ScrCmd_106 arg0
    .short 262
    .short \arg0
    .endm

    .macro ScrCmd_107 arg0
    .short 263
    .short \arg0
    .endm

    .macro ScrCmd_108 arg0
    .short 264
    .short \arg0
    .endm

    .macro ScrCmd_109 arg0
    .short 265
    .short \arg0
    .endm

    .macro ScrCmd_10A arg0, arg1
    .short 266
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_10B arg0, arg1
    .short 267
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_10C arg0
    .short 268
    .short \arg0
    .endm

    .macro ScrCmd_10D arg0
    .short 269
    .short \arg0
    .endm

    .macro ScrCmd_10E arg0
    .short 270
    .short \arg0
    .endm

    .macro ScrCmd_10F arg0
    .short 271
    .short \arg0
    .endm

    .macro ScrCmd_110 arg0, arg1, arg2, arg3
    .short 272
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_111 arg0
    .short 273
    .short \arg0
    .endm

    .macro ScrCmd_112
    .short 274
    .endm

    .macro ScrCmd_113
    .short 275
    .endm

    .macro ScrCmd_114
    .short 276
    .endm

    .macro ScrCmd_115 arg0
    .short 277
    .short \arg0
    .endm

    .macro ScrCmd_116
    .short 278
    .endm

    .macro ScrCmd_117
    .short 279
    .endm

    .macro ScrCmd_118
    .short 280
    .endm

    .macro CheckPartyPokerus destVarID
    .short 281
    .short \destVarID
    .endm

    .macro GetPartyMonGender_Unused slot, destVar
    .short 282
    .short \slot
    .short \destVar
    .endm

    .macro SetSpecialLocation mapId, warpId, x, z, dir
    .short 283
    .short \mapId
    .short \warpId
    .short \x
    .short \z
    .short \dir
    .endm

    /*
     * destVar will be set to the number of floors above the current floor for maps where there's an elevator, or 1 when there isn't
     * The result is hardcoded per-map ID in FieldMenu_GetFloorsAbove
     */
    .macro GetFloorsAbove destVarID
    .short 284
    .short \destVarID
    .endm

    /* destVar is used to initialize a FieldMenuManager, setting it to 0xeeee, but is otherwise left without a meaningful value */
    .macro ShowCurrentFloor tilemapLeft, tilemapTop, destVarID
    .short 285
    .byte \tilemapLeft
    .byte \tilemapTop
    .short \destVarID
    .short \destVarID    /* unused */
    .endm

    .macro GetLocalDexSeenCount destVar
    .short 286
    .short \destVar
    .endm

    .macro GetLocalDexCaughtCount_Unused destVar
    .short 287
    .short \destVar
    .endm

    .macro GetNationalDexSeenCount destVar
    .short 288
    .short \destVar
    .endm

    .macro GetNationalDexCaughtCount destVar
    .short 289
    .short \destVar
    .endm

    .macro ScrCmd_Unused_122
    .short 290
    .endm

    .macro LoadPokedexRating hasNationalDex, destVar
    .short 291
    .byte \hasNationalDex
    .short \destVar
    .endm

    .macro LoadLocalDexRating destVar
    LoadPokedexRating FALSE, \destVar
    .endm

    .macro LoadNationalDexRating destVar
    LoadPokedexRating TRUE, \destVar
    .endm

    .macro StartWildBattle species, level
    .short 292
    .short \species
    .short \level
    .endm

    .macro StartFirstBattle trainerID
    .short 293
    .short \trainerID
    .endm

    .macro StartCatchingTutorial
    .short 294
    .endm

    .macro SlatherHoneyTree
    .short 295
    .endm

    .macro GetHoneyTreeStatus destVar
    .short 296
    .short \destVar
    .endm

    .macro StartHoneyTreeBattle
    .short 297
    .endm

    .macro ScrCmd_12A
    .short 298
    .endm

    .macro ScrCmd_12B
    .short 299
    .endm

    .macro CheckSaveType destVarID
    .short 300
    .short \destVarID
    .endm

    .macro TrySaveGame destVar
    .short 301
    .short \destVar
    .endm

    .macro ScrCmd_12E arg0, arg1
    .short 302
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_12F arg0, arg1
    .short 303
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_130 arg0
    .short 304
    .short \arg0
    .endm

    .macro ScrCmd_131
    .short 305
    .endm

    .macro ScrCmd_132 arg0
    .short 306
    .short \arg0
    .endm

    .macro RegisterPoketchApp appID
    .short 307
    .short \appID
    .endm

    .macro CheckPoketchAppRegistered appID, destVarID
    .short 308
    .short \appID
    .short \destVarID
    .endm

    .macro ScrCmd_135 syncNo
    .short 309
    .short \syncNo
    .endm

    .macro ClearReceivedTempDataAllPlayers
    .short 310
    .endm

    .macro ScrCmd_Unused_137 arg0
    .short 311
    .short \arg0
    .endm

    .macro ScrCmd_138 arg0
    .short 312
    .short \arg0
    .endm

    .macro ScrCmd_139 arg0
    .short 313
    .short \arg0
    .endm

    .macro ScrCmd_13A
    .short 314
    .endm

    .macro ScrCmd_13B
    .short 315
    .endm

    .macro ScrCmd_13C arg0
    .short 316
    .short \arg0
    .endm

    .macro ScrCmd_13D
    .short 317
    .endm

    .macro ScrCmd_13E
    .short 318
    .endm

    .macro ScrCmd_13F arg0, arg1
    .short 319
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_140 arg0
    .short 320
    .short \arg0
    .endm

    .macro ScrCmd_141 arg0
    .short 321
    .short \arg0
    .endm

    .macro ScrCmd_142
    .short 322
    .endm

    .macro ScrCmd_143 arg0, arg1
    .short 323
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_144 arg0
    .short 324
    .short \arg0
    .endm

    .macro ScrCmd_145 arg0
    .short 325
    .short \arg0
    .endm

    .macro ScrCmd_146 arg0, arg1
    .short 326
    .short \arg0
    .short \arg1
    .endm

    .macro PokeMartCommon unused=1
    .short 327
    .short \unused
    .endm

    .macro PokeMartSpecialties martID
    .short 328
    .short \martID
    .endm

    .macro PokeMartDecor martID
    .short 329
    .short \martID
    .endm

    .macro PokeMartSeal martID
    .short 330
    .short \martID
    .endm

    .macro BlackOutFromBattle2
    .short 331
    .endm

    .macro ScrCmd_14C arg0
    .short 332
    .short \arg0
    .endm

    .macro GetPlayerGender destVarID
    .short 333
    .short \destVarID
    .endm

    .macro HealParty
    .short 334
    .endm

    .macro ScrCmd_14F
    .short 335
    .endm

    .macro EndCommunication
    .short 336
    .endm

    .macro ScrCmd_151
    .short 337
    .endm

    .macro ScrCmd_152 arg0
    .short 338
    .short \arg0
    .endm

    .macro ScrCmd_153
    .short 339
    .endm

    .macro LoadTrainerAppearances
    .short 340
    .endm

    .macro ScrCmd_155 arg0, arg1
    .short 341
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_156 arg0
    .short 342
    .short \arg0
    .endm

    .macro CheckPokedexAcquired destVarID
    .short 343
    .short \destVarID
    .endm

    .macro GivePokedex
    .short 344
    .endm

    .macro CheckRunningShoesAcquired destVarID
    .short 345
    .short \destVarID
    .endm

    .macro GiveRunningShoes
    .short 346
    .endm

    .macro CheckBadgeAcquired badgeID, destVarID
    .short 347
    .short \badgeID
    .short \destVarID
    .endm

    .macro GiveBadge badgeID
    .short 348
    .short \badgeID
    .endm

    .macro CountBadgesAcquired destVarID
    .short 349
    .short \destVarID
    .endm

    .macro CheckBagAcquired destVarID
    .short 350
    .short \destVarID
    .endm

    .macro GoToIfBadgeAcquired badge label
    CheckBadgeAcquired \badge, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, \label
    .endm

    .macro GiveBag
    .short 351
    .endm

    .macro CheckHasPartner destVarID
    .short 352
    .short \destVarID
    .endm

    .macro SetHasPartner
    .short 353
    .endm

    .macro ClearHasPartner
    .short 354
    .endm

    .macro CheckStepFlag destVarID
    .short 355
    .short \destVarID
    .endm

    .macro SetStepFlag
    .short 356
    .endm

    .macro ClearStepFlag
    .short 357
    .endm

    .macro CheckGameCompleted destVarID
    .short 358
    .short \destVarID
    .endm

    .macro SetGameCompleted
    .short 359
    .endm

    .macro LoadDoorAnimation mapX, mapZ, tileX, tileZ, tag
    .short 360
    .short \mapX
    .short \mapZ
    .short \tileX
    .short \tileZ
    .byte \tag
    .endm

    .macro WaitForAnimation tag
    .short 361
    .byte \tag
    .endm

    .macro UnloadAnimation tag
    .short 362
    .byte \tag
    .endm

    .macro PlayDoorOpenAnimation tag
    .short 363
    .byte \tag
    .endm

    .macro PlayDoorCloseAnimation tag
    .short 364
    .byte \tag
    .endm

    .macro BufferDaycareMonNicknames
    .short 365
    .endm

    .macro GetDaycareState destVar
    .short 366
    .short \destVar
    .endm

    .macro InitPersistedMapFeaturesForPastoriaGym
    .short 367
    .endm

    .macro PressPastoriaGymButton
    .short 368
    .endm

    .macro InitPersistedMapFeaturesForHearthomeGym
    .short 369
    .endm

    .macro ScrCmd_172
    .short 370
    .endm

    .macro InitPersistedMapFeaturesForCanalaveGym
    .short 371
    .endm

    .macro InitPersistedMapFeaturesForVeilstoneGym
    .short 372
    .endm

    .macro InitPersistedMapFeaturesForSunyshoreGym floorID
    .short 373
    .byte \floorID
    .endm

    .macro SunyshoreGymButton arg0
    .short 374
    .byte \arg0
    .endm

    .macro GetPartyCount destVarID
    .short 375
    .short \destVarID
    .endm

    .macro OpenBag pocketType
    .short 376
    .byte \pocketType
    .endm

    .macro OpenItemsBag
    OpenBag 0
    .endm

    .macro OpenBerriesBag
    OpenBag 1
    .endm

    .macro GetSelectedItem destVar
    .short 377
    .short \destVar
    .endm

    .macro CheckPocketHasItems pocketID, destVar
    .short 378
    .short \pocketID
    .short \destVar
    .endm

    .macro BufferBerryName templateArg, item, unused=VAR_0x8001
    .short 379
    .byte \templateArg
    .short \item
    .short \unused
    .endm

    .macro BufferNatureName templateArg, nature
    .short 380
    .byte \templateArg
    .short \nature
    .endm

    .macro GetBerryGrowthStage destVar
    .short 381
    .short \destVar
    .endm

    .macro GetBerryItemID destVar
    .short 382
    .short \destVar
    .endm

    .macro GetBerryMulchType destVar
    .short 383
    .short \destVar
    .endm

    .macro GetBerryMoisture destVar
    .short 384
    .short \destVar
    .endm

    .macro GetBerryYield destVar
    .short 385
    .short \destVar
    .endm

    .macro SetBerryMulch mulchItemID
    .short 386
    .short \mulchItemID
    .endm

    .macro PlantBerry berryItemID
    .short 387
    .short \berryItemID
    .endm

    .macro SetBerryWateringState direction
    .short 388
    .short \direction
    .endm

    .macro HarvestBerry
    .short 389
    .endm

    .macro SetObjectEventPos localID, x, z
    .short 390
    .short \localID
    .short \x
    .short \z
    .endm

    .macro SetPosition localID, x, y, z, dir
    .short 391
    .short \localID
    .short \x
    .short \y
    .short \z
    .short \dir
    .endm

    .macro SetObjectEventMovementType localID, movementType
    .short 392
    .short \localID
    .short \movementType
    .endm

    .macro SetObjectEventDir localID, dir
    .short 393
    .short \localID
    .short \dir
    .endm

    .macro SetWarpEventPos index, x, z
    .short 394
    .short \index
    .short \x
    .short \z
    .endm

    .macro ScrCmd_18B arg0, arg1, arg2
    .short 395
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_18C arg0, arg1
    .short 396
    .short \arg0
    .short \arg1
    .endm

    .macro ShowSavingIcon
    .short 397
    .endm

    .macro HideSavingIcon
    .short 398
    .endm

    .macro ScrCmd_18F arg0
    .short 399
    .short \arg0
    .endm

    .macro WaitABPressTime frames
    .short 400
    .short \frames
    .endm

    .macro SelectMoveTutorPokemon
    .short 401
    .endm

    .macro OpenPartyMenuForUnionRoomBattle
    .short 402
    .endm

    .macro SelectPokemonForUnionRoomBattle
    OpenPartyMenuForUnionRoomBattle
    ReturnToField
    .endm

    .macro GetSelectedPartySlot destVar
    .short 403
    .short \destVar
    .endm

    .macro OpenPartyMenuForContest partySlot, contestRank, contestType, arg3
    .short 404
    .short \partySlot
    .short \contestRank
    .short \contestType
    .short \arg3
    .endm

    .macro ScrCmd_195 arg0, arg1
    .short 405
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_196 arg0
    .short 406
    .short \arg0
    .endm

    .macro ScrCmd_197 arg0
    .short 407
    .short \arg0
    .endm

    .macro GetPartyMonSpecies partySlot, destVar
    .short 408
    .short \partySlot
    .short \destVar
    .endm

    .macro CheckIsPartyMonOutsider slot, destVar
    .short 409
    .short \slot
    .short \destVar
    .endm

    .macro CountPartyNonEggs destVarID
    .short 410
    .short \destVarID
    .endm

    // Counts alive mons in the party and stores the result in the destVar,
    // but excludes the one at the party slot provided.
    .macro CountAliveMonsExcept destVarID, partySlot
    .short 411
    .short \destVarID
    .short \partySlot
    .endm

    .macro CountAliveMonsAndBoxMons destVar
    .short 412
    .short \destVar
    .endm

    .macro CountPartyEggs destVar
    .short 413
    .short \destVar
    .endm

    .macro ScrCmd_19E arg0, arg1
    .short 414
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_19F arg0
    .short 415
    .short \arg0
    .endm

    .macro ScrCmd_1A0
    .short 416
    .endm

    .macro ScrCmd_Unused_1A1 arg0, arg1
    .short 417
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_Unused_1A2 arg0, arg1
    .short 418
    .byte \arg0
    .short \arg1
    .endm

    .macro RemoveMoney2 valueOrVarID
    .short 419
    .short \valueOrVarID
    .endm

    .macro MoveMonToPartyFromDaycareSlot destVarSpecies, daycareSlot
    .short 420
    .short \destVarSpecies
    .short \daycareSlot
    .endm

    .macro Dummy1A5 dummy
    .short 421
    .short \dummy
    .endm

    .macro Dummy1A6
    .short 422
    .endm

    .macro Dummy1A7
    .short 423
    .endm

    .macro ResetDaycarePersonalityAndStepCounter
    .short 424
    .endm

    .macro GiveEggFromDaycare
    .short 425
    .endm

    .macro BufferDaycarePriceBySlot destVar, daycareSlot
    .short 426
    .short \destVar
    .short \daycareSlot
    .endm

    .macro CheckMoney2 destVar, valueOrVarID
    .short 427
    .short \destVar
    .short \valueOrVarID
    .endm

    .macro ScrCmd_1AC
    .short 428
    .endm

    .macro Dummy1AD dummy
    .short 429
    .short \dummy
    .endm

    .macro BufferDaycareGainedLevelsBySlot destVar, daycareSlot
    .short 430
    .short \destVar
    .short \daycareSlot
    .endm

    .macro BufferPartyMonNicknameReturnSpecies unused, partySlot, destVar
    .short 431
    .short \unused
    .short \partySlot
    .short \destVar
    .endm

    .macro StorePartyMonIntoDaycare partySlot
    .short 432
    .short \partySlot
    .endm

    .macro ShowObject localID
    .short 433
    .short \localID
    .endm

    .macro HideObject localID
    .short 434
    .short \localID
    .endm

    .macro ScrCmd_1B3
    .short 435
    .endm

    .macro ScrCmd_1B4 arg0
    .short 436
    .short \arg0
    .endm

    .macro ScrCmd_1B5 arg0
    .short 437
    .short \arg0
    .endm

    .macro GetTimeOfDay destVarID
    .short 438
    .short \destVarID
    .endm

    /*
     * Get a random number from 0 to (upperBound - 1) and store the result in
     * a destination variable. For example, specifying upperBound = 5 will yield
     * one of 0, 1, 2, 3, or 4.
     */
    .macro GetRandom destVarID, upperBound
    .short 439
    .short \destVarID
    .short \upperBound
    .endm

    /* Functionally identical to GetRandom. */
    .macro GetRandom2 destVarID, upperBound
    .short 440
    .short \destVarID
    .short \upperBound
    .endm

    .macro GetPartyMonFriendship destVar, partySlot
    .short 441
    .short \destVar
    .short \partySlot
    .endm

    .macro IncreasePartyMonFriendship value, slot
    .short 442
    .short \value
    .short \slot
    .endm

    .macro DecreasePartyMonFriendship_Unused value, slot
    .short 443
    .short \value
    .short \slot
    .endm

    .macro BufferDaycareNicknameLevelGender templateArgNickname, templateArgLevel, templateArgGender, daycareSlot
    .short 444
    .short \templateArgNickname
    .short \templateArgLevel
    .short \templateArgGender
    .short \daycareSlot
    .endm

    .macro GetPlayerDir destVarID
    .short 445
    .short \destVarID
    .endm

    .macro GetDaycareCompatibilityLevel destVar
    .short 446
    .short \destVar
    .endm

    .macro CheckDaycareHasEgg destVar
    .short 447
    .short \destVar
    .endm

    // Saves TRUE or FALSE into a var depending if the player
    // has the specified Pokémon in their party.
    .macro CheckPartyHasSpecies destVarID, species
    .short 448
    .short \destVarID
    .short \species
    .endm

    .macro CalcSizeContestResult destVar, partySlot
    .short 449
    .short \destVar
    .short \partySlot
    .endm

    .macro UpdateSizeContestRecord partySlot
    .short 450
    .short \partySlot
    .endm

    .macro BufferPartyPokemonSize intPartIdx, fracPartIdx, partySlot
    .short 451
    .short \intPartIdx
    .short \fracPartIdx
    .short \partySlot
    .endm

    .macro BufferSizeContestRecord intPartIdx, fracPartIdx, species
    .short 452
    .short \intPartIdx
    .short \fracPartIdx
    .short \species
    .endm

    .macro InitSizeContestRecord
    .short 453
    .endm

    .macro SelectPartyMonMove partySlot
    .short 454
    .short \partySlot
    .endm

    .macro GetSelectedPartyMonMove destVarID
    .short 455
    .short \destVarID
    .endm

    .macro GetPartyMonMoveCount destVar, partySlot
    .short 456
    .short \destVar
    .short \partySlot
    .endm

    .macro ClearPartyMonMoveSlot partySlot, moveSlot
    .short 457
    .short \partySlot
    .short \moveSlot
    .endm

    .macro GetPartyMonMove destVar, partySlot, moveSlot
    .short 458
    .short \destVar
    .short \partySlot
    .short \moveSlot
    .endm

    .macro BufferPartyMoveName templateArg, partySlot, moveSlot
    .short 459
    .byte \templateArg
    .short \partySlot
    .short \moveSlot
    .endm

    .macro GiveJournal
    .short 460
    .endm

    .macro CreateJournalEvent eventType, eventParam, unused1, unused2, unused3
    .short 461
    .short \eventType
    .short \eventParam
    .short \unused1
    .short \unused2
    .short \unused3
    .endm

    .macro ScrCmd_Unused_1CE
    .short 462
    .endm

    .macro Strength mode, checkDestVarID=0
    .short 463
    .byte \mode
    .if \mode == 2
        .short \checkDestVarID
    .endif
    .endm

    .macro Flash mode, checkDestVarID=0
    .short 464
    .byte \mode
    .if \mode == 2
        .short \checkDestVarID
    .endif
    .endm

    .macro Defog mode, checkDestVarID=0
    .short 465
    .byte \mode
    .if \mode == 2
        .short \checkDestVarID
    .endif
    .endm

    .macro AddAccessory accessoryID, amount
    .short 466
    .short \accessoryID
    .short \amount
    .endm

    // destVarID will be set to TRUE if the player has space for at least 'count' accessories of the specified type in their bag
    .macro CanFitAccessory accessory, count, destVarID
    .short 467
    .short \accessory
    .short \count
    .short \destVarID
    .endm

    .macro GivePoketchApp
    CallCommonScript 0x7D9
    .endm

    .macro GiveAccessoryWaitForConfirm
    CallCommonScript 0x7DF
    .endm

    .macro MessageBagIsFull
    CallCommonScript 0x7E1
    .endm

    .macro GiveItemQuantity
    CallCommonScript 0x7FC
    .endm

    .macro ScrCmd_Unused_1D4 arg0, arg1, arg2
    .short 468
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro AddContestBackdrop backdropID
    .short 469
    .short \backdropID
    .endm

    // destVarID will be set to TRUE if the player has the specified backdrop
    .macro CheckBackdrop backdrop, destVar
    .short 470
    .short \backdrop
    .short \destVar
    .endm

    .macro ScrCmd_1D7 arg0
    .short 471
    .short \arg0
    .endm

    .macro ScrCmd_1D8 arg0
    .short 472
    .short \arg0
    .endm

    .macro ScrCmd_1D9 arg0, arg1
    .short 473
    .short \arg0
    .short \arg1
    .endm

    .macro SetBattleTowerNull
    .short 474
    .endm

    .macro InitBattleTower arg0, challengeMode
    .short 475
    .short \arg0
    .short \challengeMode
    .endm

    .macro FreeBattleTower
    .short 476
    .endm

    .macro CallBattleTowerFunction functionIndex, functionArgument, destVar
    .short 477
    .short \functionIndex
    .short \functionArgument
    .short \destVar
    .endm

    .macro GetBattleTowerPartnerSpeciesAndMove partnerID, monID, destVar1, destVar2
    .short 478
    .short \partnerID
    .short \monID
    .short \destVar1
    .short \destVar2
    .endm

    .macro ScrCmd_1DF arg0
    .short 479
    .short \arg0
    .endm

    .macro ScrCmd_1E0 arg0
    .short 480
    .short \arg0
    .endm

    .macro ScrCmd_1E1 arg0, arg1, arg2
    .short 481
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1E2 arg0, arg1
    .short 482
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1E3 arg0, arg1
    .short 483
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1E4 arg0
    .short 484
    .short \arg0
    .endm

    .macro IncrementGameRecord recordID
    .short 485
    .short \recordID
    .endm

    .macro ScrCmd_Unused_1E6 arg0, arg1, arg2
    .short 486
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_Unused_1E7 arg0, arg1, arg2, arg3
    .short 487
    .short \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro CheckLocalDexCompleted destVar
    .short 488
    .short \destVar
    .endm

    .macro CheckNationalDexCompleted destVar
    .short 489
    .short \destVar
    .endm

    .macro ShowDiplomaSinnoh
    .short 490
    .endm

    .macro ShowDiplomaNationalDex
    .short 491
    .endm

    .macro AddTrophyGardenMon
    .short 492
    .endm

    .macro GetTrophyGardenSlot1Species destVar
    .short 493
    .short \destVar
    .endm

    .macro GetPartyMonHeldItem_Unused destVar, slot
    .short 494
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_Unused_1EF arg0
    .short 495
    .short \arg0
    .endm

    .macro DeletePartyMonHeldItem_Unused slot
    .short 496
    .short \slot
    .endm

    .macro GetFossilCount destVar
    .short 497
    .short \destVar
    .endm

    .macro ScrCmd_Dummy_1F2
    .short 498
    .endm

    .macro ScrCmd_Dummy_1F3
    .short 499
    .endm

    .macro GetSpeciesFromFossil speciesVar, itemVar
    .short 500
    .short \speciesVar
    .short \itemVar
    .endm

    .macro FindFossilAtThreshold itemVar, thresholdVar, thresholdValue
    .short 501
    .short \itemVar
    .short \thresholdVar
    .short \thresholdValue
    .endm

    .macro CountPartyMonsBelowLevelThreshold destVar, threshold
    .short 502
    .short \destVar
    .short \threshold
    .endm

    .macro SurvivePoison destVarID, partySlot
    .short 503
    .short \destVarID
    .short \partySlot
    .endm

    .macro WaitForTransition
    .short 504
    .endm

    // this is a dummy function that doesn't do anything
    .macro Dummy1F9 dummy
    .short 505
    .short \dummy
    .endm

    .macro MessageFromBankInstant bankID, messageID
    .short 506
    .short \bankID
    .short \messageID
    .endm

    .macro MessageFromBank bankID, messageID
    .short 507
    .short \bankID
    .short \messageID
    .endm

    .macro SentenceInstant sentenceType, sentenceID, word1, word2
    .short 508
    .short \sentenceType
    .short \sentenceID
    .short \word1
    .short \word2
    .endm

    .macro Sentence sentenceType, sentenceID, word1, word2
    .short 509
    .short \sentenceType
    .short \sentenceID
    .short \word1
    .short \word2
    .endm

    .macro PrintBattleTowerIntroMessage opponentID
    .short 510
    .byte \opponentID
    .endm

    .macro MessageSeenBanlistSpecies banlistMsgStartIdx, numPokemonRequired
    .short 511
    .byte \banlistMsgStartIdx
    .short \numPokemonRequired
    .short 0
    .byte 0
    .endm

    .macro GetPreviousMapID destVarID
    .short 512
    .short \destVarID
    .endm

    .macro GetCurrentMapID destVarID
    .short 513
    .short \destVarID
    .endm

    .macro StartEndSafariGame activeState
    .short 514
    .byte \activeState
    .endm

    .macro StartSafariGame
    StartEndSafariGame SAFARI_GAME_ACTIVE
    .endm

    .macro EndSafariGame
    StartEndSafariGame SAFARI_GAME_INACTIVE
    .endm

    .macro ScrCmd_203 arg0, arg1, arg2, arg3, arg4
    .short 515
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_204
    .short 516
    .endm

    .macro ScrCmd_205
    .short 517
    .endm

    .macro StartGreatMarshLookout
    .short 518
    .endm

    .macro GetCurNetID destVarID
    .short 519
    .short \destVarID
    .endm

    .macro DrawPokemonPreview species, gender
    .short 520
    .short \species
    .short \gender
    .endm

    .macro ScrCmd_209
    .short 521
    .endm

    .macro ScrCmd_20A arg0
    .short 522
    .short \arg0
    .endm

    .macro ScrCmd_20B
    .short 523
    .endm

    .macro MessageFromTrainerType
    .short 524
    .endm

    .macro ScrCmd_20D arg0, arg1
    .short 525
    .byte \arg0
    .short \arg1
    .endm

    .macro InitGreatMarshTram
    .short 526
    .endm

    .macro MoveGreatMarshTram location, movementType
    .short 527
    .short \location
    .short \movementType
    .endm

    .macro CheckGreatMarshTramLocation location, destVar
    .short 528
    .short \location
    .short \destVar
    .endm

    .macro SetPlayerHeightCalculationEnabled heightCalculationEnabled
    .short 529
    .byte \heightCalculationEnabled
    .endm

    .macro GetPartyMonNature destVar, slot
    .short 530
    .short \destVar
    .short \slot
    .endm

    .macro FindPartySlotWithNature destVar, nature
    .short 531
    .short \destVar
    .short \nature
    .endm

    .macro GetSpiritombCounter destVarID
    .short 532
    .short \destVarID
    .endm

    .macro ClearAmitySquareStepCount
    .short 533
    .endm

    .macro GetAmitySquareStepCount destVarID
    .short 534
    .short \destVarID
    .endm

    .macro CalcAmitySquareFoundAccessory destFoundAccessoryID, followerSpecies
    .short 535
    .short \destFoundAccessoryID
    .short \followerSpecies
    .endm

    .macro ScrCmd_218 arg0
    .short 536
    .short \arg0
    .endm

    .macro SetNewsPressDeadline deadlineInDays
    .short 537
    .short \deadlineInDays
    .endm

    .macro GetNewsPressDeadline destVarID
    .short 538
    .short \destVarID
    .endm

    .macro EnableSwarms
    .short 539
    .endm

    .macro ActivateRoamingPokemon slot
    .short 540
    .byte \slot
    .endm

    .macro ScrCmd_21D arg0, arg1=0, arg2=0
    .short 541
    .short \arg0
    .if \arg0 == 0 || \arg0 == 1 || \arg0 == 2 || \arg0 == 3
        .short \arg1
        .short \arg2
    .else
        .if \arg0 == 4 || \arg0 == 5
            .short \arg1
        .endif
    .endif
    .endm

    .macro Dummy21E
    .short 542
    .endm

    .macro CheckHasLearnableReminderMoves destVar, partySlot
    .short 543
    .short \destVar
    .short \partySlot
    .endm

    .macro ScrCmd_220
    .short 544
    .endm

    .macro OpenMoveReminderMenu partySlot
    .short 545
    .short \partySlot
    .endm

    .macro ScrCmd_222
    .short 546
    .endm

    .macro CheckLearnedReminderMove destVar
    .short 547
    .short \destVar
    .endm

    .macro OpenMoveTutorMenu partySlot, move
    .short 548
    .short \partySlot
    .short \move
    .endm

    .macro CheckLearnedTutorMove destVar
    .short 549
    .short \destVar
    .endm

    .macro StartNpcTrade npcTradeID
    .short 550
    .byte \npcTradeID
    .endm

    .macro GetNpcTradeSpecies destVar
    .short 551
    .short \destVar
    .endm

    .macro GetNpcTradeRequestedSpecies destVar
    .short 552
    .short \destVar
    .endm

    .macro ScrCmd_229 arg0
    .short 553
    .short \arg0
    .endm

    .macro FinishNpcTrade
    .short 554
    .endm

    .macro ScrCmd_22B
    .short 555
    .endm

    .macro ScrCmd_22C
    .short 556
    .endm

    .macro GetSetNationalDexEnabled getSet, destVar
    .short 557
    .byte \getSet
    .short \destVar
    .endm

    .macro SetNationalDexEnabled
    GetSetNationalDexEnabled 1, VAR_RESULT
    .endm

    .macro GetNationalDexEnabled destVar
    GetSetNationalDexEnabled 2, \destVar
    .endm

    .macro CountPartyMonRibbons_Unused destVar, slot
    .short 558
    .short \destVar
    .short \slot
    .endm

    .macro CountPartyRibbons destVar
    .short 559
    .short \destVar
    .endm

    .macro GetPartyMonRibbon destVar, partySlot, ribbonID
    .short 560
    .short \destVar
    .short \partySlot
    .short \ribbonID
    .endm

    .macro SetPartyMonRibbon partySlot, ribbonID
    .short 561
    .short \partySlot
    .short \ribbonID
    .endm

    .macro BufferRibbonName templateArg, ribbonID
    .short 562
    .byte \templateArg
    .short \ribbonID
    .endm

    .macro GetPartyMonEVTotal destVar, partySlot
    .short 563
    .short \destVar
    .short \partySlot
    .endm

    .macro GetDayOfWeek destVarID
    .short 564
    .short \destVarID
    .endm

    .macro CallTVBroadcast callID, arg1=0, arg2=0, arg3=0
    .short 565
    .short \callID
    .if \callID == 0 || \callID == 6
        .short \arg1
    .else
        .if \callID == 1 || \callID == 3 || \callID == 5
            .short \arg1
            .short \arg2
            .short \arg3
        .else
            .if \callID == 4
                .short \arg1
                .short \arg2
            .endif
        .endif
    .endif
    .endm

    .macro CheckBroadcastStatus destVar
    CallTVBroadcast TV_BROADCAST_CALL_CHECK_STATUS, \destVar
    .endm

    .macro LoadTVCommercial bankDestVar, messageDestVar
    CallTVBroadcast TV_BROADCAST_CALL_LOAD_COMMERCIAL, \bankDestVar, \messageDestVar
    .endm

    .macro LoadTVFramingMessage framingMessageType, bankDestVar, messageDestVar
    CallTVBroadcast TV_BROADCAST_CALL_LOAD_FRAMING_MESSAGE, \framingMessageType, \bankDestVar, \messageDestVar
    .endm

    .macro LoadTVSegment segmentID, bankDestVar, messageDestVar
    CallTVBroadcast TV_BROADCAST_CALL_LOAD_SEGMENT \segmentID, \bankDestVar, \messageDestVar
    .endm

    .macro LoadTVGreeting bankDestVar, messageDestVar
    LoadTVFramingMessage TV_PROGRAM_FRAMING_MESSAGE_GREETING \bankDestVar, \messageDestVar
    .endm

    .macro LoadTVSegmentIntro bankDestVar, messageDestVar
    LoadTVFramingMessage TV_PROGRAM_FRAMING_MESSAGE_SEGMENT_INTRO \bankDestVar, \messageDestVar
    .endm

    .macro LoadTVFarewell bankDestVar, messageDestVar
    LoadTVFramingMessage TV_PROGRAM_FRAMING_MESSAGE_FAREWELL \bankDestVar, \messageDestVar
    .endm

    .macro LoadTVFarewellExtended bankDestVar, messageDestVar
    LoadTVFramingMessage TV_PROGRAM_FRAMING_MESSAGE_FAREWELL_EXTENDED \bankDestVar, \messageDestVar
    .endm

    .macro GetNextTVSegmentID destVar
    CallTVBroadcast TV_BROADCAST_CALL_GET_NEXT_SEGMENT_ID, \destVar
    .endm

    .macro FinishTVProgram
    CallTVBroadcast TV_BROADCAST_CALL_FINISH_PROGRAM
    .endm

    .macro TVBroadcastDummy arg0, arg1, arg2
    Dummy1F9 \arg0
    .ifnb \arg1
        Dummy1F9 \arg1
    .endif
    .ifnb \arg2
        Dummy1F9 \arg2
    .endif
    .endm

    .macro ScrCmd_236 arg0
    .short 566
    .short \arg0
    .endm

    .macro CallTVInterview callID, interviewSegmentID, arg2, arg3
    .short 567
    .short \callID
    .short \interviewSegmentID
    .short \arg2
    .short \arg3
    .endm

    .macro LoadTVInterviewMessage interviewSegmentID, bankDestVar, messageDestVar
    CallTVInterview TV_INTERVIEW_CALL_LOAD_MESSAGE, \interviewSegmentID, \bankDestVar, \messageDestVar
    .endm

    .macro SaveTVInterviewResponse interviewSegmentID, customWordMessage, unused=VAR_0x8005
    CallTVInterview TV_INTERVIEW_CALL_SAVE_RESPONSE, \interviewSegmentID, \customWordMessage, \unused
    .endm

    .macro CheckTVInterviewEligible interviewSegmentID, destVar
    .short 568
    .short \interviewSegmentID
    .short \destVar
    .endm

    .macro ScrCmd_239 arg0
    .short 569
    .short \arg0
    .endm

    .macro GetPartyMonFootprintType hasPrintVar, printTypeVar, partySlot
    .short 570
    .short \hasPrintVar
    .short \printTypeVar
    .short \partySlot
    .endm

    .macro PlayPokecenterHealingAnimation pokeballCount
    .short 571
    .short \pokeballCount
    .endm

    .macro CallPokecenterNurse nurseLocalID
    SetVar VAR_0x8007, \nurseLocalID
    CallCommonScript 0x7D2
    .endm

    .macro VendorGreeting
    CallCommonScript 0x7E3
    .endm

    .macro PlayElevatorAnimation elevatorDir, loopCount
    .short 572
    .short \elevatorDir
    .short \loopCount
    .endm

    .macro PlayBoatCutscene travelDir, exitDir, mapID, x, z
    .short 573
    .byte \travelDir
    .byte \exitDir
    .short \mapID
    .short \x
    .short \z
    .endm

    .macro TakeShipFromCanalave exitDir, mapID, x, z
    PlayBoatCutscene BOAT_TRAVEL_DIR_NORTH_TO_SOUTH, \exitDir, \mapID, \x, \z
    .endm

    .macro TakeShipFromSnowpoint exitDir, mapID, x, z
    PlayBoatCutscene BOAT_TRAVEL_DIR_WEST_TO_EAST, \exitDir, \mapID, \x, \z
    .endm

    .macro TakeShipToCanalave
    PlayBoatCutscene BOAT_TRAVEL_DIR_SOUTH_TO_NORTH, DIR_WEST, MAP_HEADER_CANALAVE_CITY, 44, 750
    .endm

    .macro TakeShipToSnowpoint
    PlayBoatCutscene BOAT_TRAVEL_DIR_EAST_TO_WEST, DIR_NORTH, MAP_HEADER_SNOWPOINT_CITY, 356, 246
    .endm

    /* See the convenience macro below for the uses of destVar1 & destVar2 */
    .macro MysteryGiftGive stage, destVar1ID=0, destVar2ID=0
    .short 574
    .short \stage
    .if \stage == MYSTERY_GIFT_CHECK_AVAILABLE_PGT || \stage == MYSTERY_GIFT_GET_PGT_TYPE || \stage == MYSTERY_GIFT_CHECK_CAN_RECEIVE
        .short \destVar1ID
    .else
        .if \stage == MYSTERY_GIFT_RECEIVED || \stage == MYSTERY_GIFT_CANT_RECEIVE
            .short \destVar1ID
            .short \destVar2ID
        .endif
    .endif
    .endm

    .macro LoadMysteryGift
    MysteryGiftGive MYSTERY_GIFT_LOAD
    .endm

    .macro CheckAvailableMysteryGift destVarID
    MysteryGiftGive MYSTERY_GIFT_CHECK_AVAILABLE_PGT, \destVarID
    .endm

    .macro GetMysteryGiftType destVarID
    MysteryGiftGive MYSTERY_GIFT_GET_PGT_TYPE, \destVarID
    .endm

    .macro CheckCanReceiveMysteryGift destVarID
    MysteryGiftGive MYSTERY_GIFT_CHECK_CAN_RECEIVE, \destVarID
    .endm

    .macro GiveMysteryGift
    MysteryGiftGive MYSTERY_GIFT_GIVE
    .endm

    /*
     * Loads necessary information about the mystery gift into the script's
     * string loader and returns the text bank and entry ID of the message
     * to be displayed after the player receives the mystery gift.
     */
    .macro PrepareMysteryGiftReceivedMsg destTextBank, destStringID
    MysteryGiftGive MYSTERY_GIFT_RECEIVED, \destTextBank, \destStringID
    .endm

    /*
     * Loads necessary information about the mystery gift into the script's
     * string loader and returns the text bank and entry ID of the message
     * to be displayed if the player can't receive the mystery gift.
     */
    .macro PrepareMysterGiftCantReceiveMsg destTextBank, destStringID
    MysteryGiftGive MYSTERY_GIFT_CANT_RECEIVE, \destTextBank, \destStringID
    .endm

    .macro UnloadMysteryGift
    MysteryGiftGive MYSTERY_GIFT_UNLOAD_RECEIVED
    .endm

    .macro UnloadMysteryGift2
    MysteryGiftGive MYSTERY_GIFT_UNLOAD_NOT_RECEIVED
    .endm

    .macro Dummy23F
    .short 575
    .endm

    .macro Dummy240
    .short 576
    .endm

    .macro Dummy241
    .short 577
    .endm

    .macro Dummy242
    .short 578
    .endm

    .macro ScrCmd_243 arg0, arg1, arg2
    .short 579
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_244 arg0, arg1, arg2, arg3
    .short 580
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_245 arg0, arg1
    .short 581
    .short \arg0
    .short \arg1
    .endm

    .macro GetGameVersion destVar
    .short 582
    .short \destVar
    .endm

    .macro GetFirstNonEggInParty partySlot
    .short 583
    .short \partySlot
    .endm

    .macro GetPartyMonType type1DestVar, type2DestVar, slot
    .short 584
    .short \type1DestVar
    .short \type2DestVar
    .short \slot
    .endm

    .macro ScrCmd_249 arg0, arg1, arg2, arg3, arg4
    .short 585
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro GetCapturedFlagCount destFlagCount
    .short 586
    .short \destFlagCount
    .endm

    .macro LoadPCAnimation tag
    .short 587
    .byte \tag
    .endm

    .macro PlayPCBootUpAnimation tag
    .short 588
    .byte \tag
    .endm

    .macro PlayPCShutDownAnimation tag
    .short 589
    .byte \tag
    .endm

    .macro GetJubilifeLotteryTrainerID destVarID
    .short 590
    .short \destVarID
    .endm

    .macro CheckForJubilifeLotteryWinner winningPokemonIndex, highestMatchedDigits, isResultInBox, winningLotteryId
    .short 591
    .short \winningPokemonIndex
    .short \highestMatchedDigits
    .short \isResultInBox
    .short \winningLotteryId
    .endm

    .macro RandomizeJubilifeLottery
    .short 592
    .endm

    .macro BufferMonNicknameFromPC templateArg, boxSlotIndex
    .short 593
    .byte \templateArg
    .short \boxSlotIndex
    .endm

    .macro GetPCBoxesFreeSlotCount destVar
    .short 594
    .short \destVar
    .endm

    .macro SetClearInCatchingShowFlag getClear
    .short 595
    .short \getClear
    .endm

    .macro SetInCatchingShowFlag
    SetClearInCatchingShowFlag 0
    .endm

    .macro ClearInCatchingShowFlag
    SetClearInCatchingShowFlag 1
    .endm

    .macro GoToIfNotEnoughMonForCatchingShow offset
    .short 596 /* CheckHasEnoughMonForCatchingShow */
    .short VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro MoveCatchingShowMonsToPCBoxes
    .short 597
    .endm

    .macro CalcCatchingShowPoints pointsCategory, destVarID
    .short 598
    .short \pointsCategory
    .short \destVarID
    .endm

    .macro ShowAccessoryShop
    .short 599
    .endm

    .macro ScrCmd_258
    .short 600
    .endm

    .macro ScrCmd_259
    .short 601
    .endm

    .macro PlayHallOfFameHealingAnimation pokeballCount
    .short 602
    .short \pokeballCount
    .endm

    .macro InitPersistedMapFeaturesForPlatformLift
    .short 603
    .endm

    .macro TriggerPlatformLift
    .short 604
    .endm

    .macro CheckPlatformLiftNotUsedWhenEnteredMap destVarID
    .short 605
    .short \destVarID
    .endm

    .macro ScrCmd_25E
    .short 606
    .endm

    .macro ScrCmd_25F
    .short 607
    .endm

    .macro IncrementTrainerScore2 scoreID
    .short 608
    .short \scoreID
    .endm

    .macro BufferAccessoryName templateArg, accessory
    .short 609
    .byte \templateArg
    .short \accessory
    .endm

    // Like CheckPartyHasSpecies, but args are reversed and it checks the species inside eggs.
    // Since it's only used for Deoxys, no bugs manifest on vanilla.
    .macro CheckPartyHasSpecies2 species, destVarID
    .short 610
    .short \species
    .short \destVarID
    .endm

    .macro ChangeDeoxysForm form
    .short 611
    .short \form
    .endm

    .macro CheckPartyCombeeGenderCount destVar
    .short 612
    .short \destVar
    .endm

    .macro HidePoketch
    .short 613
    .endm

    .macro ShowPoketch
    .short 614
    .endm

    .macro ScrCmd_267 slotMachineID
    .short 615
    .short \slotMachineID
    .endm

    .macro GetHour destVar
    .short 616
    .short \destVar
    .endm

    .macro ScrCmd_269 arg0, arg1, arg2, arg3, arg4
    .short 617
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_26A arg0, arg1, arg2
    .short 618
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro CheckHasAllLegendaryTitansInParty destVar
    .short 619
    .short \destVar
    .endm

    .macro TryGetRandomMassageGirlAccessory destAccessoryID
    .short 620
    .short \destAccessoryID
    .endm

    .macro MessageUnown messageID
    .short 621
    .short \messageID
    .endm

    .macro GetGBACartridgeVersion destVarID
    .short 622
    .short \destVarID
    .endm

    .macro ClearSpiritombCounter
    .short 623
    .endm

    /* Enable a given hidden location */
    .macro EnableHiddenLocation hiddenLocation
    .short 624 /* SetHiddenLocation */
    .short \hiddenLocation /* Refer to generated/hidden_locations.txt */
    .byte TRUE /* Enable */
    .endm

    /* Disable a given hidden location */
    .macro DisableHiddenLocation hiddenLocation
    .short 624 /* SetHiddenLocation */
    .short \hiddenLocation /* Refer to generated/hidden_locations.txt */
    .byte FALSE /* Disable */
    .endm

    .macro ScrCmd_271 arg0
    .short 625
    .short \arg0
    .endm

    .macro BufferTabletName templateArg
    .short 626
    .byte \templateArg
    .endm

    .macro BufferContestBackdropName arg0, arg1
    .short 627
    .byte \arg0
    .short \arg1
    .endm

    /* See HasCoins for 628 */

    /* Returns TRUE in destVarID if the player has won at least 10 consecutive bonus rounds */
    .macro CheckBonusRoundStreak destVarID
    .short 629
    .short \destVarID
    .endm

    .macro GoToIfCannotAddCoins amount, offset
    .short 630
    .short VAR_RESULT
    .short \amount
    Noop
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro GetDailyRandomLevel destVarID
    .short 631
    .short \destVarID
    .endm

    .macro GetPartyMonLevel destVar, slot
    .short 632
    .short \destVar
    .short \slot
    .endm

    .macro ScrCmd_Unused_279 arg0, arg1
    .short 633
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_27A
    .short 634
    .endm

    .macro InitDailyRandomLevel
    .short 635
    .endm

    .macro ScrCmd_27C arg0, arg1
    .short 636
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_27D arg0, arg1
    .short 637
    .short \arg0
    .short \arg1
    .endm

    /* Returns TRUE in destVarID if the player has bought at least 5 items at the Veilstone Department Store */
    .macro CheckIsDepartmentStoreRegular destVarID
    .short 638
    .short \destVarID
    .endm

    .macro ScrCmd_27F arg0
    .short 639
    .short \arg0
    .endm

    .macro BufferVarPaddingDigits templateArg, varID, paddingMode, maxDigits
    .short 640
    .byte \templateArg
    .short \varID
    .byte \paddingMode
    .byte \maxDigits
    .endm

    .macro GetPartyMonContestStat slot, contestType, destVar
    .short 641
    .short \slot
    .short \contestType
    .short \destVar
    .endm

    .macro CheckIsTodayPlayerBirthday destVar
    .short 642
    .short \destVar
    .endm

    .macro SetInitialVolumeForSequence seqID, volume
    .short 643
    .short \seqID
    .short \volume
    .endm

    .macro GetUnownFormsSeenCount destVar
    .short 644
    .short \destVar
    .endm

    .macro InitTurnbackCave varPillarsSeen, varRoomsVisited
    .short 645
    .short \varPillarsSeen
    .short \varRoomsVisited
    .endm

    .macro GetUndergroundItemsGivenAway destVarID
    .short 646
    .short \destVarID
    .endm

    .macro GetUndergroundFossilsUnearthed destVarID
    .short 647
    .short \destVarID
    .endm

    .macro GetUndergroundTrapsSet destVarID
    .short 648
    .short \destVarID
    .endm

    .macro GivePoffin destVar, spiciness, dryness, sweetness, bitterness, sourness, smoothness
    .short 649
    .short \destVar
    .short \spiciness
    .short \dryness
    .short \sweetness
    .short \bitterness
    .short \sourness
    .short \smoothness
    .endm

    .macro CheckHasEmptyPoffinCaseSlot destVar
    .short 650
    .short \destVar
    .endm

    /* Check if a given distribution event has been enabled and return the boolean-state in destVarID. */
    .macro CheckDistributionEvent eventID, destVarID
    .short 651
    .byte \eventID /* Refer to generated/distrubtion_events.txt */
    .short \destVarID
    .endm

    .macro DrawPokemonPreviewFromPartySlot partySlot
    .short 652
    .short \partySlot
    .endm

    .macro ScrCmd_28D
    .short 653
    .endm

    .macro ScrCmd_28E arg0
    .short 654
    .short \arg0
    .endm

    .macro ScrCmd_28F arg0
    .short 655
    .short \arg0
    .endm

    .macro OpenPartyMenuForDaycare partySlot
    .short 656
    .short \partySlot
    .endm

    .macro ScrCmd_291 arg0, arg1
    .short 657
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_292 arg0, arg1
    .short 658
    .byte \arg0
    .short \arg1
    .endm

    .macro GetUndergroundTalkCounter destVarID
    .short 659
    .short \destVarID
    .endm

    .macro ShowBattlePoints tilemapLeft, tilemapTop
    .short 660
    .byte \tilemapLeft
    .byte \tilemapTop
    .endm

    .macro HideBattlePoints
    .short 661
    .endm

    .macro UpdateBPDisplay
    .short 662
    .endm

    .macro ScrCmd_297 arg0
    .short 663
    .short \arg0
    .endm

    .macro ScrCmd_298 arg0
    .short 664
    .short \arg0
    .endm

    .macro ScrCmd_299 arg0
    .short 665
    .short \arg0
    .endm

    .macro ScrCmd_29A arg0, arg1
    .short 666
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_29B arg0, arg1, arg2, arg3
    .short 667
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_29C arg0, arg1
    .short 668
    .short \arg0
    .short \arg1
    .endm

    .macro AddMenuEntry entryStringID, entryIndex
    .short 669
    .short \entryStringID
    .short \entryIndex
    .endm

    .macro ScrCmd_29E arg0, arg1
    .short 670
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_29F arg0
    .short 671
    .short \arg0
    .endm

    .macro StartTagBattle partnerTrainer, enemyTrainer1, enemyTrainer2
    .short 672
    .short \partnerTrainer
    .short \enemyTrainer1
    .short \enemyTrainer2
    .endm

    .macro ScrCmd_Unused_2A1 arg0, arg1, arg2
    .short 673
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro TrySetUnusedUndergroundField item
    .short 674
    .short \item
    .endm

    .macro ScrCmd_2A3 arg0
    .short 675
    .short \arg0
    .endm

    .macro ScrCmd_2A4 arg0
    .short 676
    .short \arg0
    .endm

    .macro OpenPartyMenuForTrade
    .short 677
    .endm

    .macro SelectPokemonToTrade
    OpenPartyMenuForTrade
    GetSelectedPartySlot VAR_RESULT
    ReturnToField
    .endm

    .macro GetGameCornerPrizeData index, item, price
    .short 678
    .short \index
    .short \item
    .short \price
    .endm

    .macro CheckItemIsPlate item, destVar
    .short 679
    .short \item
    .short \destVar
    .endm

    .macro SubtractCoins valueOrVarID
    .if \valueOrVarID < VARS_START
        .short 122 /* SubstractCoinsFromValue */
        .short \valueOrVarID
    .else
        .short 680 /* SubstractCoinsFromVar */
        .short \valueOrVarID
    .endif
    .endm

    .macro HasCoins varID, valueOrVarID
    .if \valueOrVarID < VARS_START
        .short 628 /* HasCoinsFromValue */
        .short \varID
        .long \valueOrVarID
    .else
        .short 681 /* HasCoinsFromVar */
        .short \varID
        .short \valueOrVarID
    .endif
    .endm

    .macro ScrCmd_2AA arg0, arg1, arg2, arg3, arg4
    .short 682
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_2AB arg0
    .short 683
    .short \arg0
    .endm

    .macro UnlockMysteryGift
    .short 684
    .endm

    .macro GetMovementType destVar, localID
    .short 685
    .short \destVar
    .short \localID
    .endm

    .macro IsSequencePlaying seqID, destVar
    .short 686
    .short \seqID
    .short \destVar
    .endm

    .macro ScrCmd_2AF arg0
    .short 687
    .short \arg0
    .endm

    .macro ScrCmd_2B0
    .short 688
    .endm

    .macro ScrCmd_2B1
    .short 689
    .endm

    .macro ScrCmd_2B2
    .short 690
    .endm

    .macro BufferBallSealName templateArg, ballSeal
    .short 691
    .byte \templateArg
    .short \ballSeal
    .endm

    /* this is unused, but the underlying function is called from LockAll */
    .macro LockLastTalked
    .short 692
    .endm

    .macro ScrCmd_2B5 arg0, arg1, arg2
    .short 693
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2B6 arg0, arg1
    .short 694
    .short \arg0
    .byte \arg1
    .endm

    .macro CheckPartyHasBadEgg destVar
    .short 695
    .short \destVar
    .endm

    .macro ScrCmd_2B8 arg0
    .short 696
    .short \arg0
    .endm

    .macro ShowUnionRoomMenu
    .short 697
    .endm

    .macro ScrCmd_2BA arg0
    .short 698
    .short \arg0
    .endm

    .macro ScrCmd_2BB
    .short 699
    .endm

    .macro CheckDidNotCapture destVarID
    .short 700
    .short \destVarID
    .endm

    .macro StartLegendaryBattle species, level
    .short 701
    .short \species
    .short \level
    .endm

    .macro GetTrainerCardLevel destVar
    .short 702
    .short \destVar
    .endm

    .macro ScrCmd_2BF
    .short 703
    .endm

    .macro MessageAutoScroll messageID
    .short 704
    .short \messageID
    .endm

    .macro OpenSaveInfo
    .short 705
    .endm

    .macro CloseSaveInfo
    .short 706
    .endm

    .macro ScrCmd_Unused_2C3 arg0
    .short 707
    .byte \arg0
    .endm

    .macro ScrCmd_2C4 arg0
    .short 708
    .byte \arg0
    .endm

    .macro ScrCmd_2C5 arg0, arg1
    .short 709
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2C6
    .short 710
    .endm

    .macro ScrCmd_2C7 arg0
    .short 711
    .short \arg0
    .endm

    .macro ScrCmd_2C8 arg0, arg1, arg2
    .short 712
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro InitPersistedMapFeaturesForEternaGym
    .short 713
    .endm

    .macro AdvanceEternaGymClock
    .short 714
    .endm

    .macro CountRepeatedSpeciesInParty destVar, species
    .short 715
    .short \destVar
    .short \species
    .endm

    .macro ScrCmd_2CC arg0, arg1, arg2
    .short 716
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2CD
    .short 717
    .endm

    .macro ScrCmd_Unused_2CE
    .short 718
    .endm

    .macro ScrCmd_2CF arg0, arg1
    .short 719
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2D0 arg0, arg1
    .short 720
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2D1 arg0
    .short 721
    .short \arg0
    .endm

    .macro ScrCmd_2D2 arg0, arg1, arg2
    .short 722
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2D3 arg0, arg1, arg2
    .short 723
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2D4 arg0, arg1, arg2
    .short 724
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2D5 arg0
    .short 725
    .short \arg0
    .endm

    .macro SaveExtraData
    .short 726
    .endm

    .macro CheckIsMiscSaveInit destVar
    .short 727
    .short \destVar
    .endm

    .macro PokeMartFrontier martID
    .short 728
    .byte \martID
    .endm

    .macro ScrCmd_2D9 arg0, arg1, arg2
    .short 729
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2DA arg0, arg1, arg2
    .short 730
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2DB arg0, arg1, arg2
    .short 731
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2DC arg0
    .short 732
    .short \arg0
    .endm

    .macro FindPartySlotWithSpecies destVarID, species
    .short 733
    .short \destVarID
    .short \species
    .endm

    .macro ScrCmd_2DE arg0, arg1, arg2, arg3, arg4
    .short 734
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro CalcAmitySquareBerryAndAccessoryManOptionID destBerryAndAccessoryManOptionID
    .short 735
    .short \destBerryAndAccessoryManOptionID
    .endm

    .macro GoToIfAmitySquareManGiftIsNotAccesory giftID, offset
    .short 736 /* CheckAmitySquareManGiftIsAccesory */
    .short \giftID
    .short VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro GetAmitySquareBerryOrAccessoryIDFromMan berryAndAccessoryManOptionID, destBerryOrAccessoryID
    .short 737
    .short \berryAndAccessoryManOptionID
    .short \destBerryOrAccessoryID
    .endm

    .macro ScrCmd_2E2
    .short 738
    .endm

    .macro ScrCmd_2E3
    .short 739
    .endm

    .macro ScrCmd_2E4 arg0, arg1, arg2
    .short 740
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    // destVarID will be set to TRUE if the pokemon has at least one move it can learn at the given location and doesn't know yet
    .macro CheckHasLearnableTutorMoves partySlot, location, destVarID
    .short 741
    .short \partySlot
    .short \location
    .short \destVarID
    .endm

    .macro ShowMoveTutorMoveSelectionMenu partySlot, location, outSelectedOption
    .short 742
    .short \partySlot
    .short \location
    .short \outSelectedOption
    .endm

    .macro OpenSummaryScreenTeachMove partySlot, move
    .short 743
    .short \partySlot
    .short \move
    .endm

    .macro GetSummarySelectedMoveSlot destVar
    .short 744
    .short \destVar
    .endm

    .macro ResetMoveSlot partySlot, moveID, moveSlot
    .short 745
    .short \partySlot
    .short \moveID
    .short \moveSlot
    .endm

    // destVarID will be set to TRUE if the move is available at a shards move tutor and the player can afford it
    .macro CheckCanAffordMove moveID, destVarID
    .short 746
    .short \moveID
    .short \destVarID
    .endm

    .macro PayShardsCost moveID
    .short 747
    .short \moveID
    .endm

    .macro ShowShardsCost arg0, arg1, selectedMove, outSelectedOption
    .short 748
    .byte \arg0
    .byte \arg1
    .short \selectedMove
    .short \outSelectedOption
    .endm

    .macro CloseShardsCostWindow
    .short 749
    .endm

    .macro JudgeStats arg0, arg1, arg2, arg3
    .short 750
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro BufferStatName templateArg, stat
    .short 751
    .byte \templateArg
    .short \stat
    .endm

    .macro InitPersistedMapFeaturesForVilla
    .short 752
    .endm

    .macro ScrCmd_2F1 arg0, arg1
    .short 753
    .short \arg0
    .short \arg1
    .endm

    .macro InitPersistedMapFeaturesForDistortionWorld
    .short 754
    .endm

    .macro BufferTrainerName templateArg, trainerID
    .short 755
    .byte \templateArg
    .short \trainerID
    .endm

    .macro ScrCmd_2F4 arg0, arg1, arg2, arg3
    .short 756
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro BufferValuePaddingDigits templateArg, value, paddingMode, maxDigits
    .short 757
    .byte \templateArg
    .long \value
    .byte \paddingMode
    .byte \maxDigits
    .endm

    .macro ScrCmd_2F6 arg0, arg1, arg2
    .short 758
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2F7 arg0
    .short 759
    .short \arg0
    .endm

    .macro SetScene22
    .short 760
    .endm

    .macro SetFieldScene bgmID
    .short 761
    .short \bgmID
    .endm

    .macro GetCurrentBGM destVar
    .short 762
    .short \destVar
    .endm

    .macro ScrCmd_2FB
    .short 763
    .endm

    .macro ScrCmd_2FC arg0
    .short 764
    .short \arg0
    .endm

    .macro BufferTypeName templateArg, type
    .short 765
    .byte \templateArg
    .short \type
    .endm

    .macro GetItemQuantity item, destVar
    .short 766
    .short \item
    .short \destVar
    .endm

    .macro ScrCmd_2FF arg0, arg1
    .short 767
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_300
    .short 768
    .endm

    .macro ScrCmd_301 arg0, arg1, arg2
    .short 769
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro GetRotomFormsInSave destVarHeat, destVarWash, destVarFrost, destVarFan, destVarMow
    .short 770
    .short \destVarHeat
    .short \destVarWash
    .short \destVarFrost
    .short \destVarFan
    .short \destVarMow
    .endm

    .macro GetPartyRotomCountAndFirst destVarCount, destVarFirstSlot
    .short 771
    .short \destVarCount
    .short \destVarFirstSlot
    .endm

    .macro SetRotomForm partySlot, moveSlot, arg2, form
    .short 772
    .short \partySlot
    .short \moveSlot
    .short \arg2
    .short \form
    .endm

    .macro GetPartyMonForm2 partySlot, destVar
    .short 773
    .short \partySlot
    .short \destVar
    .endm

    .macro ShowListMenuRememberCursor listOffsetVar, cursorPosVar
    .short 774
    .short \listOffsetVar
    .short \cursorPosVar
    .endm

    .macro GetEmptyPoffinCaseSlotCount destVar
    .short 775
    .short \destVar
    .endm

    .macro AddCameraOverrideObject x, z
    .short 776
    .short \x
    .short \z
    .endm

    .macro RemoveCameraOverrideObject
    .short 777
    .endm

    .macro IncrementTrainerScore scoreID
    .short 778
    .short \scoreID
    .endm

    .macro ScrCmd_30B
    .short 779
    .endm

    .macro ScrCmd_30C
    .short 780
    .endm

    .macro ScrCmd_30D arg0
    .short 781
    .short \arg0
    .endm

    .macro ScrCmd_30E arg0
    .short 782
    .short \arg0
    .endm

    .macro ScrCmd_30F arg0, arg1
    .short 783
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_310
    .short 784
    .endm

    .macro ScrCmd_311 arg0
    .short 785
    .short \arg0
    .endm

    .macro ScrCmd_312 arg0
    .short 786
    .short \arg0
    .endm

    .macro CheckHeapMemory assertUnchangedFreeMemory
    .short 787
    .short \assertUnchangedFreeMemory
    .endm

    .macro RecordHeapMemory
    CheckHeapMemory FALSE
    .endm

    .macro AssertHeapMemory
    CheckHeapMemory TRUE
    .endm

    .macro GetBattleResult destVar
    .short 788
    .short \destVar
    .endm

    .macro ScrCmd_315 arg0
    .short 789
    .short \arg0
    .endm

    .macro ScrCmd_316
    .short 790
    .endm

    .macro GetPlayer3DPos destVarIDX, destVarIDY, destVarIDZ
    .short 791
    .short \destVarIDX
    .short \destVarIDY
    .short \destVarIDZ
    .endm

    .macro StartFatefulEncounter species, level
    .short 792
    .short \species
    .short \level
    .endm

    .macro StartGiratinaOriginBattle species, level
    .short 793
    .short \species
    .short \level
    .endm

    .macro SetSpeciesSeen species
    .short 794
    .short \species
    .endm

    .macro GetCurrentSafariGameCaughtNum destVar
    .short 795
    .short \destVar
    .endm

    .macro FindPartySlotWithFatefulEncounterSpecies destVar, species
    .short 796
    .short \destVar
    .short \species
    .endm

    .macro ScrCmd_31D arg0
    .short 797
    .short \arg0
    .endm

    .macro TryRevertPokemonForm partySlot, destVar
    .short 798
    .short \partySlot
    .short \destVar
    .endm

    .macro ResetDistortionWorldPersistedCameraAngles
    .short 799
    .endm

    .macro ScrCmd_320
    .short 800
    .endm

    .macro ScrCmd_321 arg0
    .short 801
    .short \arg0
    .endm

    .macro ScrCmd_322
    .short 802
    .endm

    .macro ScrCmd_323 arg0
    .short 803
    .short \arg0
    .endm

    .macro ScrCmd_324 arg0, arg1, arg2, arg3, arg4, arg5
    .short 804
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro ScrCmd_325 arg0
    .short 805
    .short \arg0
    .endm

    .macro ScrCmd_326 arg0
    .short 806
    .short \arg0
    .endm

    .macro ShowListMenuSetWidth width
    .short 807
    .short \width
    .endm

    .macro SetPartyGiratinaForm form
    .short 808
    .short \form
    .endm

    .macro ScrCmd_329 arg0, arg1, arg2, arg3
    .short 809
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_32A arg0
    .short 810
    .short \arg0
    .endm

    .macro CheckPartyHasFatefulEncounterRegigigas destVar
    .short 811
    .short \destVar
    .endm

    .macro ScrCmd_32C arg0, arg1, arg2, arg3
    .short 812
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_32D
    .short 813
    .endm

    .macro ScrCmd_32E
    .short 814
    .endm

    .macro CheckPartyHasHeldItem item, destVar
    .short 815
    .short \item
    .short \destVar
    .endm

    .macro LogLinkInfoInWiFiHistory
    .short 816
    .endm

    .macro ScrCmd_331
    .short 817
    .endm

    .macro ScrCmd_332
    .short 818
    .endm

    .macro ScrCmd_333 arg0
    .short 819
    .short \arg0
    .endm

    .macro AddToGameRecord recordID, value
    .short 820
    .short \recordID
    .short \value
    .endm

    // For values equals or bigger than VARS_START
    .macro AddToGameRecordBigValue recordID, value
    .short 821
    .short \recordID
    .long \value
    .endm

    .macro ScrCmd_336 arg0
    .short 822
    .short \arg0
    .endm

    .macro CheckHasSeenSpecies species, ret
    .short 823
    .short \species
    .short \ret
    .endm

    .macro ScrCmd_338
    .short 824
    .endm

    .macro ScrCmd_339
    .short 825
    .endm

    .macro SetMenuXOriginSide rightSide
    .short 826
    .byte \rightSide
    .endm

    .macro SetMenuXOriginToLeft
    SetMenuXOriginSide FALSE
    .endm

    .macro SetMenuXOriginToRight
    SetMenuXOriginSide TRUE
    .endm

    .macro SetMenuYOriginSide bottomSide
    .short 826
    .byte \bottomSide
    .endm

    .macro SetMenuYOriginToTop
    SetMenuYOriginSide FALSE
    .endm

    .macro SetMenuYOriginToBottom
    SetMenuYOriginSide TRUE
    .endm

    .macro BufferItemNameWithArticle templateArg, item
    .short 828
    .byte \templateArg
    .short \item
    .endm

    .macro BufferItemNamePlural templateArg, item
    .short 829
    .byte \templateArg
    .short \item
    .endm

    .macro BufferUndergroundGoodsNameWithArticle templateArg, goods
    .short 830
    .byte \templateArg
    .short \goods
    .endm

    .macro BufferUndergroundTrapNameWithArticle templateArg, trap
    .short 831
    .byte \templateArg
    .short \trap
    .endm

    .macro BufferUndergroundItemNameWithArticle templateArg, item
    .short 832
    .byte \templateArg
    .short \item
    .endm

    .macro BufferSpeciesNameWithArticle templateArg, species
    .short 833
    .byte \templateArg
    .short \species
    .short 0
    .byte 0
    .endm

    .macro BufferPlayerCounterpartStarterSpeciesNameWithArticle templateArg
    .short 834
    .byte \templateArg
    .endm

    .macro BufferAccessoryNameWithArticle templateArg, accessory
    .short 835
    .byte \templateArg
    .short \accessory
    .endm

    .macro BufferTrainerClassNameWithArticle templateArg, trainerClass
    .short 836
    .byte \templateArg
    .short \trainerClass
    .endm

    .macro BufferBallSealNamePlural templateArg, ballSeal
    .short 837
    .byte \templateArg
    .short \ballSeal
    .endm

    .macro CapitalizeFirstLetter templateArg
    .short 838
    .byte \templateArg
    .endm

    .macro BufferFloorNumber templateArg, floor
    .short 839
    .byte \templateArg
    .byte \floor
    .endm



    .macro GoToIfLt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 0, \offset
    .endm

    .macro GoToIfEq varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 1, \offset
    .endm

    .macro GoToIfGt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 2, \offset
    .endm

    .macro GoToIfLe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 3, \offset
    .endm

    .macro GoToIfGe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 4, \offset
    .endm

    .macro GoToIfNe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 5, \offset
    .endm

    .macro GoToIfUnset flagID, offset
    CheckFlag \flagID
    GoToIf 0, \offset
    .endm

    .macro GoToIfSet flagID, offset
    CheckFlag \flagID
    GoToIf 1, \offset
    .endm

    .macro GoToIfNotDefeated trainerID, offset
    CheckTrainerFlag \trainerID
    GoToIf 0, \offset
    .endm

    .macro GoToIfDefeated trainerID, offset
    CheckTrainerFlag \trainerID
    GoToIf 1, \offset
    .endm

    .macro CallIfLt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 0, \offset
    .endm

    .macro CallIfEq varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 1, \offset
    .endm

    .macro CallIfGt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 2, \offset
    .endm

    .macro CallIfLe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 3, \offset
    .endm

    .macro CallIfGe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 4, \offset
    .endm

    .macro CallIfNe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 5, \offset
    .endm

    .macro CallIfUnset flagID, offset
    CheckFlag \flagID
    CallIf 0, \offset
    .endm

    .macro CallIfSet flagID, offset
    CheckFlag \flagID
    CallIf 1, \offset
    .endm

    /*
     * This flag is used by ScriptEntry and ScriptEntryEnd to control where
     * a user can add ScriptEntry commands (i.e., only at the start of the
     * input file). It is NOT meant for direct usage.
     */
    .set F_ACCEPT_SCRIPT_ENTRIES, TRUE

    .macro ScriptEntry name
    .if F_ACCEPT_SCRIPT_ENTRIES == TRUE
        .long \name-.-4
    .else
        .error "cannot specify ScriptEntry after ScriptEntryEnd"
    .endif
    .endm

    .macro ScriptEntryEnd
    .set F_ACCEPT_SCRIPT_ENTRIES, FALSE
    .short 0xFD13
    .endm
    
    .set F_INIT_SCRIPT_FRAME_TABLE_OPENED, FALSE
    .set F_INIT_SCRIPT_FRAME_TABLE_CLOSED, FALSE

    .macro InitScriptEntry_Fixed type, scriptID
    .if F_ACCEPT_SCRIPT_ENTRIES == TRUE
        .byte \type
        .short \scriptID, 0
    .else
        .error "cannot specify InitScriptEntry after InitScriptEntryEnd"
    .endif
    .endm

    .macro InitScriptEntry_OnFrameTable checksLabel
    .if F_ACCEPT_SCRIPT_ENTRIES == TRUE
        .set F_INIT_SCRIPT_FRAME_TABLE_OPENED, TRUE
        .byte INIT_SCRIPT_ON_FRAME_TABLE
        ScriptEntry \checksLabel
    .else
        .error "cannot specify InitScriptEntry after InitScriptEntryEnd"
    .endif
    .endm

    .macro InitScriptEntry_OnTransition scriptID
    InitScriptEntry_Fixed INIT_SCRIPT_ON_TRANSITION, \scriptID
    .endm

    .macro InitScriptEntry_OnResume scriptID
    InitScriptEntry_Fixed INIT_SCRIPT_ON_RESUME, \scriptID
    .endm

    .macro InitScriptEntry_OnLoad scriptID
    InitScriptEntry_Fixed INIT_SCRIPT_ON_LOAD, \scriptID
    .endm

    .macro InitScriptEntryEnd
    .set F_ACCEPT_SCRIPT_ENTRIES, FALSE
    .byte 0
    .endm

    .macro InitScriptGoToIfEqual var1, var2, scriptID
    .if F_INIT_SCRIPT_FRAME_TABLE_OPENED == TRUE
        .if F_INIT_SCRIPT_FRAME_TABLE_CLOSED == FALSE
            .short \var1, \var2, \scriptID
        .else
            .error "cannot specify InitScriptGoToIfEqual after InitScriptFrameTableEnd"
        .endif
    .else
        .error "cannot specify InitScriptGoToIfEqual before InitScriptEntry_OnFrameTable"
    .endif
    .endm

    .macro InitScriptFrameTableEnd
    .set F_INIT_SCRIPT_FRAME_TABLE_CLOSED, TRUE
    .short 0
    .endm

    .macro InitScriptEnd
    .if F_ACCEPT_SCRIPT_ENTRIES == TRUE
        .error "cannot specify InitScriptEnd before InitScriptEntryEnd"
    .endif
    .if F_INIT_SCRIPT_FRAME_TABLE_OPENED == TRUE
        .if F_INIT_SCRIPT_FRAME_TABLE_CLOSED == FALSE
            .error "must close InitScriptEntry_OnFrameTable with InitScriptFrameTableEnd before InitScriptEnd"
        .endif
    .endif
    .balign 4, 0
    .endm

    .macro GoToIfCannotFitItem item, count, destVarID, offset
    CanFitItem \item, \count, \destVarID
    GoToIfEq \destVarID, FALSE, \offset
    .endm

    .text
    .globl _start
_start:
