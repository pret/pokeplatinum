#include "generated/accessories.h"
#include "generated/badges.h"
#include "generated/catching_show_points_category.h"
#include "generated/days_of_week.h"
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
#include "generated/moves.h"
#include "generated/mystery_gift_delivery_stages.h"
#include "generated/npc_trades.h"
#include "generated/poketch_apps.h"
#include "generated/roaming_slots.h"
#include "generated/save_types.h"
#include "generated/sdat.h"
#include "generated/signpost_commands.h"
#include "generated/signpost_types.h"
#include "generated/trainer_score_events.h"
#include "generated/trainers.h"
#include "constants/forms.h"
#include "constants/honey_tree.h"
#include "constants/items.h"
#include "constants/map_object.h"
#include "constants/savedata/vars_flags.h"
#include "constants/scrcmd.h"

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

    .macro ScrCmd_004 arg0, arg1
    .short 4
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_005 arg0, arg1
    .short 5
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_006 arg0, arg1
    .short 6
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_007 arg0, arg1
    .short 7
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_008 arg0, arg1
    .short 8
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_009 arg0, arg1
    .short 9
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_00A arg0, arg1
    .short 10
    .long \arg0
    .long \arg1
    .endm

    .macro ScrCmd_00B arg0, arg1
    .short 11
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_00C arg0, arg1
    .short 12
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_00D arg0, arg1
    .short 13
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_00E arg0, arg1
    .short 14
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_00F arg0, arg1
    .short 15
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_010 arg0, arg1
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

    .macro ScrCmd_013 arg0
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

    .macro ScrCmd_017 arg0, arg1
    .short 23
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro ScrCmd_018 arg0, arg1
    .short 24
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro ScrCmd_019 arg0, arg1
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

    .macro ScrCmd_02A arg0, arg1
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

    .macro ScrCmd_02E arg0
    .short 46
    .short \arg0
    .endm

    .macro ScrCmd_02F arg0
    .short 47
    .byte \arg0
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

    .macro ScrCmd_035
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

    .macro ScrCmd_03F
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

    .macro ScrCmd_057 seqID
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

    .macro ScrCmd_062 arg0
    .short 98
    .short \arg0
    .endm

    .macro ScrCmd_063 arg0
    .short 99
    .short \arg0
    .endm

    .macro AddObject arg0
    .short 100
    .short \arg0
    .endm

    .macro RemoveObject localID
    .short 101
    .short \localID
    .endm

    .macro ScrCmd_066 arg0, arg1
    .short 102
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_067
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

    .macro ScrCmd_06A arg0, arg1, arg2
    .short 106
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_06B arg0, arg1, arg2
    .short 107
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_06E
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

    .macro ScrCmd_083 arg0, arg1, arg2
    .short 131
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_084 arg0, arg1, arg2
    .short 132
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_085 arg0, arg1, arg2
    .short 133
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_086 arg0, arg1, arg2
    .short 134
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_087 arg0, arg1, arg2
    .short 135
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_088 arg0, arg1, arg2
    .short 136
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_089 arg0, arg1, arg2
    .short 137
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_08A arg0, arg1, arg2
    .short 138
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_08B arg0, arg1, arg2
    .short 139
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_08C arg0, arg1, arg2
    .short 140
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_08D arg0, arg1, arg2
    .short 141
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_08E arg0, arg1, arg2
    .short 142
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_08F arg0, arg1, arg2
    .short 143
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_090 arg0, arg1, arg2
    .short 144
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_091 arg0, arg1, arg2
    .short 145
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_092 arg0, arg1, arg2
    .short 146
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_098 arg0, arg1, arg2
    .short 152
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro CheckPartyMonHasMove destVar, move, partySlot
    .short 153
    .short \destVar
    .short \move
    .short \partySlot
    .endm

    .macro ScrCmd_09A arg0, arg1
    .short 154
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_09B arg0, arg1
    .short 155
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_09C
    .short 156
    .endm

    .macro ScrCmd_09D
    .short 157
    .endm

    .macro ScrCmd_09E
    .short 158
    .endm

    .macro ScrCmd_09F
    .short 159
    .endm

    .macro ScrCmd_0A0
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

    .macro ScrCmd_0A4 arg0
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

    .macro ScrCmd_0AA
    .short 170
    .endm

    .macro ScrCmd_0AB arg0
    .short 171
    .byte \arg0
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

    .macro ScrCmd_0B2 arg0, arg1
    .short 178
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_0B6 arg0
    .short 182
    .short \arg0
    .endm

    .macro ScrCmd_0B7 arg0, arg1
    .short 183
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0B8 arg0
    .short 184
    .short \arg0
    .endm

    .macro ScrCmd_0B9 arg0, arg1
    .short 185
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0BA arg0
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

    .macro ScrCmd_0BF arg0
    .short 191
    .short \arg0
    .endm

    .macro ScrCmd_0C0 arg0
    .short 192
    .short \arg0
    .endm

    .macro ScrCmd_0C1 arg0
    .short 193
    .short \arg0
    .endm

    .macro ScrCmd_0C2 arg0, arg1, arg2
    .short 194
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_0D8 arg0, arg1
    .short 216
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0D9 arg0
    .short 217
    .byte \arg0
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

    .macro ScrCmd_0E2 arg0, arg1
    .short 226
    .byte \arg0
    .short \arg1
    .endm

    .macro GetSwarmMapAndSpecies arg0, arg1
    .short 227
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E4 arg0
    .short 228
    .short \arg0
    .endm

    .macro StartTrainerBattle enemyTrainer1, enemyTrainer2=0
    .short 229
    .short \enemyTrainer1
    .short \enemyTrainer2
    .endm

    .macro ScrCmd_0E6 arg0, arg1
    .short 230
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E7 arg0, arg1, arg2
    .short 231
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_0E8 arg0, arg1, arg2
    .short 232
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_0E9 arg0
    .short 233
    .short \arg0
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

    .macro ScrCmd_0F0
    .short 240
    .endm

    .macro ScrCmd_0F1 arg0
    .short 241
    .long \arg0-.-4
    .endm

    .macro ScrCmd_0F2 arg0, arg1, arg2, arg3
    .short 242
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_0F3 arg0, arg1, arg2, arg3
    .short 243
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_0F4 arg0
    .short 244
    .short \arg0
    .endm

    .macro ScrCmd_0F5 arg0
    .short 245
    .short \arg0
    .endm

    .macro StartLinkBattle
    .short 246
    .endm

    .macro ScrCmd_0F7
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

    .macro ScrCmd_11A arg0, arg1
    .short 282
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_11B arg0, arg1, arg2, arg3, arg4
    .short 283
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
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

    .macro ScrCmd_11E arg0
    .short 286
    .short \arg0
    .endm

    .macro ScrCmd_11F arg0
    .short 287
    .short \arg0
    .endm

    .macro ScrCmd_120 arg0
    .short 288
    .short \arg0
    .endm

    .macro ScrCmd_121 arg0
    .short 289
    .short \arg0
    .endm

    .macro ScrCmd_122
    .short 290
    .endm

    .macro ScrCmd_123 arg0, arg1
    .short 291
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_12D arg0
    .short 301
    .short \arg0
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

    .macro ScrCmd_135 arg0
    .short 309
    .short \arg0
    .endm

    .macro ScrCmd_136
    .short 310
    .endm

    .macro ScrCmd_137 arg0
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

    .macro ScrCmd_14B
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

    .macro ScrCmd_150
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

    .macro ScrCmd_154
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

    .macro ScrCmd_168 arg0, arg1, arg2, arg3, arg4
    .short 360
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .byte \arg4
    .endm

    .macro ScrCmd_169 arg0
    .short 361
    .byte \arg0
    .endm

    .macro ScrCmd_16A arg0
    .short 362
    .byte \arg0
    .endm

    .macro ScrCmd_16B arg0
    .short 363
    .byte \arg0
    .endm

    .macro ScrCmd_16C arg0
    .short 364
    .byte \arg0
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

    .macro ScrCmd_170
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

    .macro ScrCmd_176 arg0
    .short 374
    .byte \arg0
    .endm

    .macro GetPartyCount destVarID
    .short 375
    .short \destVarID
    .endm

    .macro ScrCmd_178 arg0
    .short 376
    .byte \arg0
    .endm

    .macro ScrCmd_179 arg0
    .short 377
    .short \arg0
    .endm

    .macro ScrCmd_17A arg0, arg1
    .short 378
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_17B arg0, arg1, arg2
    .short 379
    .byte \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_17C arg0, arg1
    .short 380
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_17D arg0
    .short 381
    .short \arg0
    .endm

    .macro ScrCmd_17E arg0
    .short 382
    .short \arg0
    .endm

    .macro ScrCmd_17F arg0
    .short 383
    .short \arg0
    .endm

    .macro ScrCmd_180 arg0
    .short 384
    .short \arg0
    .endm

    .macro ScrCmd_181 arg0
    .short 385
    .short \arg0
    .endm

    .macro ScrCmd_182 arg0
    .short 386
    .short \arg0
    .endm

    .macro ScrCmd_183 arg0
    .short 387
    .short \arg0
    .endm

    .macro ScrCmd_184 arg0
    .short 388
    .short \arg0
    .endm

    .macro ScrCmd_185
    .short 389
    .endm

    .macro SetObjectEventPos localID, x, z
    .short 390
    .short \localID
    .short \x
    .short \z
    .endm

    .macro ScrCmd_187 arg0, arg1, arg2, arg3, arg4
    .short 391
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_188 arg0, arg1
    .short 392
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_18D
    .short 397
    .endm

    .macro ScrCmd_18E
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

    .macro ScrCmd_191
    .short 401
    .endm

    .macro ScrCmd_192
    .short 402
    .endm

    .macro GetSelectedPartySlot destVar
    .short 403
    .short \destVar
    .endm

    .macro ScrCmd_194 arg0, arg1, arg2, arg3
    .short 404
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_199 arg0, arg1
    .short 409
    .short \arg0
    .short \arg1
    .endm

    .macro GetPartyCountHatched destVarID
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

    .macro ScrCmd_19C arg0
    .short 412
    .short \arg0
    .endm

    .macro ScrCmd_19D arg0
    .short 413
    .short \arg0
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

    .macro ScrCmd_1A1 arg0, arg1
    .short 417
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1A2 arg0, arg1
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

    .macro ScrCmd_1B1 arg0
    .short 433
    .short \arg0
    .endm

    .macro ScrCmd_1B2 arg0
    .short 434
    .short \arg0
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

    .macro ScrCmd_1BA arg0, arg1
    .short 442
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1BB arg0, arg1
    .short 443
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_1C9 arg0, arg1
    .short 457
    .short \arg0
    .short \arg1
    .endm

    .macro GetPartyMonMove destVar, partySlot, moveSlot
    .short 458
    .short \destVar
    .short \partySlot
    .short \moveSlot
    .endm

    .macro ScrCmd_1CB arg0, arg1, arg2
    .short 459
    .byte \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_1CE
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

    .macro ScrCmd_1D2 arg0, arg1
    .short 466
    .short \arg0
    .short \arg1
    .endm

    // destVarID will be set to TRUE if the player has space for at least 'count' accessories of the specified type in their bag
    .macro CanFitAccessory accessory, count, destVarID
    .short 467
    .short \accessory
    .short \count
    .short \destVarID
    .endm

    .macro ScrCmd_1D4 arg0, arg1, arg2
    .short 468
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1D5 arg0
    .short 469
    .short \arg0
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

    .macro ScrCmd_1DA
    .short 474
    .endm

    .macro ScrCmd_1DB arg0, arg1
    .short 475
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1DC
    .short 476
    .endm

    .macro ScrCmd_1DD arg0, arg1, arg2
    .short 477
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1DE arg0, arg1, arg2, arg3
    .short 478
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
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

    .macro ScrCmd_1E6 arg0, arg1, arg2
    .short 486
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1E7 arg0, arg1, arg2, arg3
    .short 487
    .short \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro ScrCmd_1E8 arg0
    .short 488
    .short \arg0
    .endm

    .macro ScrCmd_1E9 arg0
    .short 489
    .short \arg0
    .endm

    .macro ScrCmd_1EA
    .short 490
    .endm

    .macro ScrCmd_1EB
    .short 491
    .endm

    .macro AddTrophyGardenMon
    .short 492
    .endm

    .macro GetTrophyGardenSlot1Species destVar
    .short 493
    .short \destVar
    .endm

    .macro ScrCmd_1EE arg0, arg1
    .short 494
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1EF arg0
    .short 495
    .short \arg0
    .endm

    .macro ScrCmd_1F0 arg0
    .short 496
    .short \arg0
    .endm

    .macro ScrCmd_1F1 arg0
    .short 497
    .short \arg0
    .endm

    .macro ScrCmd_1F2
    .short 498
    .endm

    .macro ScrCmd_1F3
    .short 499
    .endm

    .macro ScrCmd_1F4 arg0, arg1
    .short 500
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1F5 arg0, arg1, arg2
    .short 501
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1F6 arg0, arg1
    .short 502
    .short \arg0
    .short \arg1
    .endm

    .macro SurvivePoison destVarID, partySlot
    .short 503
    .short \destVarID
    .short \partySlot
    .endm

    .macro ScrCmd_1F8
    .short 504
    .endm

    // this is a dummy function that doesn't do anything
    .macro Dummy1F9 dummy
    .short 505
    .short \dummy
    .endm

    .macro ScrCmd_1FA arg0, arg1
    .short 506
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1FB arg0, arg1
    .short 507
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1FC arg0, arg1, arg2, arg3
    .short 508
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_1FD arg0, arg1, arg2, arg3
    .short 509
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_1FE arg0
    .short 510
    .byte \arg0
    .endm

    .macro ScrCmd_1FF arg0, arg1, arg2, arg3
    .short 511
    .byte \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro GetPreviousMapID destVarID
    .short 512
    .short \destVarID
    .endm

    .macro GetCurrentMapID destVarID
    .short 513
    .short \destVarID
    .endm

    .macro ScrCmd_202 arg0
    .short 514
    .byte \arg0
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

    .macro ScrCmd_207 arg0
    .short 519
    .short \arg0
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

    .macro ScrCmd_20C
    .short 524
    .endm

    .macro ScrCmd_20D arg0, arg1
    .short 525
    .byte \arg0
    .short \arg1
    .endm

    .macro InitPersistedMapFeaturesForGreatMarsh
    .short 526
    .endm

    .macro ScrCmd_20F arg0, arg1
    .short 527
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_210 arg0, arg1
    .short 528
    .short \arg0
    .short \arg1
    .endm

    .macro SetPlayerHeightCalculationEnabled heightCalculationEnabled
    .short 529
    .byte \heightCalculationEnabled
    .endm

    .macro ScrCmd_212 arg0, arg1
    .short 530
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_213 arg0, arg1
    .short 531
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_21F arg0, arg1
    .short 543
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_220
    .short 544
    .endm

    .macro ScrCmd_221 arg0
    .short 545
    .short \arg0
    .endm

    .macro ScrCmd_222
    .short 546
    .endm

    .macro ScrCmd_223 arg0
    .short 547
    .short \arg0
    .endm

    .macro ScrCmd_224 arg0, arg1
    .short 548
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_225 arg0
    .short 549
    .short \arg0
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

    .macro ScrCmd_22E arg0, arg1
    .short 558
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_22F arg0
    .short 559
    .short \arg0
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

    .macro ScrCmd_232 arg0, arg1
    .short 562
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_233 arg0, arg1
    .short 563
    .short \arg0
    .short \arg1
    .endm

    .macro GetDayOfWeek destVarID
    .short 564
    .short \destVarID
    .endm

    .macro ScrCmd_235 arg0, arg1=0, arg2=0, arg3=0
    .short 565
    .short \arg0
    .if \arg0 == 0 || \arg0 == 6
        .short \arg1
    .else
        .if \arg0 == 1 || \arg0 == 3 || \arg0 == 5
            .short \arg1
            .short \arg2
            .short \arg3
        .else
            .if \arg0 == 4
                .short \arg1
                .short \arg2
            .endif
        .endif
    .endif
    .endm

    .macro ScrCmd_236 arg0
    .short 566
    .short \arg0
    .endm

    .macro ScrCmd_237 arg0, arg1, arg2, arg3
    .short 567
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_238 arg0, arg1
    .short 568
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_23B arg0
    .short 571
    .short \arg0
    .endm

    .macro ScrCmd_23C arg0, arg1
    .short 572
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_23D arg0, arg1, arg2, arg3, arg4
    .short 573
    .byte \arg0
    .byte \arg1
    .short \arg2
    .short \arg3
    .short \arg4
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

    .macro ScrCmd_246 arg0
    .short 582
    .short \arg0
    .endm

    .macro GetFirstNonEggInParty partySlot
    .short 583
    .short \partySlot
    .endm

    .macro ScrCmd_248 arg0, arg1, arg2
    .short 584
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_249 arg0, arg1, arg2, arg3, arg4
    .short 585
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_24A arg0
    .short 586
    .short \arg0
    .endm

    .macro ScrCmd_24B arg0
    .short 587
    .byte \arg0
    .endm

    .macro ScrCmd_24C arg0
    .short 588
    .byte \arg0
    .endm

    .macro ScrCmd_24D arg0
    .short 589
    .byte \arg0
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

    .macro ScrCmd_251 arg0, arg1
    .short 593
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_25A arg0
    .short 602
    .short \arg0
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

    .macro ScrCmd_260 arg0
    .short 608
    .short \arg0
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

    .macro ScrCmd_26B arg0
    .short 619
    .short \arg0
    .endm

    .macro TryGetRandomMassageGirlAccessory destAccessoryID
    .short 620
    .short \destAccessoryID
    .endm

    .macro ScrCmd_26D arg0
    .short 621
    .short \arg0
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

    .macro ScrCmd_272 arg0
    .short 626
    .byte \arg0
    .endm

    .macro ScrCmd_273 arg0, arg1
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

    .macro ScrCmd_278 arg0, arg1
    .short 632
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_279 arg0, arg1
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

    .macro ScrCmd_280 arg0, arg1, arg2, arg3
    .short 640
    .byte \arg0
    .short \arg1
    .byte \arg2
    .byte \arg3
    .endm

    .macro ScrCmd_281 arg0, arg1, arg2
    .short 641
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_282 arg0
    .short 642
    .short \arg0
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

    .macro ScrCmd_285 arg0, arg1
    .short 645
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_289 arg0, arg1, arg2, arg3, arg4, arg5, arg6
    .short 649
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .short \arg6
    .endm

    .macro ScrCmd_28A arg0
    .short 650
    .short \arg0
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

    .macro ScrCmd_290 arg0
    .short 656
    .short \arg0
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

    .macro ScrCmd_2A1 arg0, arg1, arg2
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

    .macro ScrCmd_2A5
    .short 677
    .endm

    .macro GetGameCornerPrizeData index, item, price
    .short 678
    .short \index
    .short \item
    .short \price
    .endm

    .macro ScrCmd_2A7 arg0, arg1
    .short 679
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2AC
    .short 684
    .endm

    .macro ScrCmd_2AD arg0, arg1
    .short 685
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2B3 arg0, arg1
    .short 691
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_2B7 arg0
    .short 695
    .short \arg0
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

    .macro ScrCmd_2BE arg0
    .short 702
    .short \arg0
    .endm

    .macro ScrCmd_2BF
    .short 703
    .endm

    .macro ScrCmd_2C0 arg0
    .short 704
    .short \arg0
    .endm

    .macro ScrCmd_2C1
    .short 705
    .endm

    .macro ScrCmd_2C2
    .short 706
    .endm

    .macro ScrCmd_2C3 arg0
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

    .macro ScrCmd_2CA
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

    .macro ScrCmd_2CE
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

    .macro ScrCmd_2D6
    .short 726
    .endm

    .macro ScrCmd_2D7 arg0
    .short 727
    .short \arg0
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

    .macro ScrCmd_2EF arg0, arg1
    .short 751
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_2F3 arg0, arg1
    .short 755
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2F4 arg0, arg1, arg2, arg3
    .short 756
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro BufferNumberPaddingDigits templateArg, value, paddingMode, maxDigits
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

    .macro ScrCmd_2FD arg0, arg1
    .short 765
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_307 arg0
    .short 775
    .short \arg0
    .endm

    .macro ScrCmd_308 arg0, arg1
    .short 776
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_309
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

    .macro ScrCmd_313 arg0
    .short 787
    .short \arg0
    .endm

    .macro ScrCmd_314 arg0
    .short 788
    .short \arg0
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

    .macro ScrCmd_31B arg0
    .short 795
    .short \arg0
    .endm

    .macro CheckPartyHasFatefulEncounter destVar, species
    .short 796
    .short \destVar
    .short \species
    .endm

    .macro ScrCmd_31D arg0
    .short 797
    .short \arg0
    .endm

    .macro ScrCmd_31E arg0, arg1
    .short 798
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_31F
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

    .macro ScrCmd_330
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

    .macro ScrCmd_33C arg0, arg1
    .short 828
    .byte \arg0
    .short \arg1
    .endm

    .macro BufferItemNamePlural templateArg, item
    .short 829
    .byte \templateArg
    .short \item
    .endm

    .macro ScrCmd_33E arg0, arg1
    .short 830
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_33F arg0, arg1
    .short 831
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_340 arg0, arg1
    .short 832
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_341 arg0, arg1, arg2, arg3
    .short 833
    .byte \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro BufferPlayerCounterpartStarterSpeciesNameWithArticle templateArg
    .short 834
    .byte \templateArg
    .endm

    .macro ScrCmd_343 arg0, arg1
    .short 835
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_344 arg0, arg1
    .short 836
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_345 arg0, arg1
    .short 837
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_346 arg0
    .short 838
    .byte \arg0
    .endm

    .macro ScrCmd_347 arg0, arg1
    .short 839
    .byte \arg0
    .byte \arg1
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

    .macro GoToIfCannotFitItem item, count, destVarID, offset
    CanFitItem \item, \count, \destVarID
    GoToIfEq \destVarID, FALSE, \offset
    .endm
