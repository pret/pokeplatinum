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
#include "generated/object_events_gfx.h"
#include "generated/player_transitions.h"
#include "generated/poketch_apps.h"
#include "generated/roaming_slots.h"
#include "generated/save_types.h"
#include "generated/sdat.h"
#include "generated/signpost_commands.h"
#include "generated/signpost_types.h"
#include "generated/string_padding_mode.h"
#include "generated/time_of_day.h"
#include "generated/trainer_score_events.h"
#include "generated/trainers.h"
#include "generated/villa_furniture_type.h"
#include "constants/accessories.h"
#include "constants/animation_tags.h"
#include "constants/battle.h"
#include "constants/battle_tower.h"
#include "constants/battle/battle_script.h"
#include "constants/boat_cutscene.h"
#include "constants/colors.h"
#include "constants/elevator_dirs.h"
#include "constants/fade_screen.h"
#include "constants/forms.h"
#include "constants/honey_tree.h"
#include "constants/init_script_types.h"
#include "constants/items.h"
#include "constants/map_object.h"
#include "constants/moves.h"
#include "constants/overworld_weather.h"
#include "constants/pokemon.h"
#include "constants/regi_ruins.h"
#include "constants/roamer_states.h"
#include "constants/savedata/vars_flags.h"
#include "constants/scrcmd.h"
#include "constants/sound_volume.h"
#include "constants/tv_broadcast.h"
#include "constants/union_room_message_types.h"
#include "constants/villa_visitors.h"

#include "data/scripts/scrcmd.h"
#include "macros/movement.inc"

    .set FALSE, 0
    .set TRUE, 1

    .macro Noop
    .short SCRCMD_NOOP
    .endm

    .macro Dummy
    .short SCRCMD_DUMMY
    .endm

    .macro End
    .short SCRCMD_END
    .endm

    .macro WaitTime frames, countdownVarID
    .short SCRCMD_WAITTIME
    .short \frames
    .short \countdownVarID
    .endm

    .macro ScrCmd_Unused_004 arg0, arg1
    .short SCRCMD_UNUSED_004
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_005 arg0, arg1
    .short SCRCMD_UNUSED_005
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_006 arg0, arg1
    .short SCRCMD_UNUSED_006
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_007 arg0, arg1
    .short SCRCMD_UNUSED_007
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_008 arg0, arg1
    .short SCRCMD_UNUSED_008
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_009 arg0, arg1
    .short SCRCMD_UNUSED_009
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00A arg0, arg1
    .short SCRCMD_UNUSED_00A
    .long \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_00B arg0, arg1
    .short SCRCMD_UNUSED_00B
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00C arg0, arg1
    .short SCRCMD_UNUSED_00C
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00D arg0, arg1
    .short SCRCMD_UNUSED_00D
    .byte \arg0
    .long \arg1
    .endm

    .macro ScrCmd_Unused_00E arg0, arg1
    .short SCRCMD_UNUSED_00E
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_00F arg0, arg1
    .short SCRCMD_UNUSED_00F
    .long \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_Unused_010 arg0, arg1
    .short SCRCMD_UNUSED_010
    .long \arg0
    .long \arg1
    .endm

    .macro CompareVarToValue varID, value
    .short SCRCMD_COMPAREVARTOVALUE
    .short \varID
    .short \value
    .endm

    .macro CompareVarToVar varID1, varID2
    .short SCRCMD_COMPAREVARTOVAR
    .short \varID1
    .short \varID2
    .endm

    .macro CompareVar varID, valueOrVarID
    .if ((\valueOrVarID >= VARS_START && \valueOrVarID <= VARS_END) || (\valueOrVarID >= SCRIPT_LOCAL_VARS_START && \valueOrVarID <= SCRIPT_LOCAL_VARS_END))
        CompareVarToVar \varID, \valueOrVarID
    .else
        CompareVarToValue \varID, \valueOrVarID
    .endif
    .endm

    .macro ScrCmd_Unused_013 arg0
    .short SCRCMD_UNUSED_013
    .short \arg0
    .endm

    .macro CallCommonScript scriptID
    .short SCRCMD_CALLCOMMONSCRIPT
    .short \scriptID
    .endm

    .macro ReturnCommonScript
    .short SCRCMD_RETURNCOMMONSCRIPT
    .endm

    .macro GoTo offset
    .short SCRCMD_GOTO
    .long \offset-.-4
    .endm

    .macro ScrCmd_Unused_017 arg0, arg1
    .short SCRCMD_UNUSED_017
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro ScrCmd_Unused_018 arg0, arg1
    .short SCRCMD_UNUSED_018
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro ScrCmd_Unused_019 arg0, arg1
    .short SCRCMD_UNUSED_019
    .byte \arg0
    .long \arg1-.-4
    .endm

    .macro Call offset
    .short SCRCMD_CALL
    .long \offset-.-4
    .endm

    .macro Return
    .short SCRCMD_RETURN
    .endm

    .macro GoToIf condition, offset
    .short SCRCMD_GOTOIF
    .byte \condition
    .long \offset-.-4
    .endm

    .macro CallIf condition, offset
    .short SCRCMD_CALLIF
    .byte \condition
    .long \offset-.-4
    .endm

    .macro SetFlag flagID
    .short SCRCMD_SETFLAG
    .short \flagID
    .endm

    .macro ClearFlag flagID
    .short SCRCMD_CLEARFLAG
    .short \flagID
    .endm

    .macro CheckFlag flagID
    .short SCRCMD_CHECKFLAG
    .short \flagID
    .endm

    .macro CheckFlagFromVar flagID, destVarID
    .short SCRCMD_CHECKFLAGFROMVAR
    .short \flagID
    .short \destVarID
    .endm

    .macro SetFlagFromVar varID
    .short SCRCMD_SETFLAGFROMVAR
    .short \varID
    .endm

    .macro SetTrainerFlag trainerID
    .short SCRCMD_SETTRAINERFLAG
    .short \trainerID
    .endm

    .macro ClearTrainerFlag trainerID
    .short SCRCMD_CLEARTRAINERFLAG
    .short \trainerID
    .endm

    .macro CheckTrainerFlag trainerID
    .short SCRCMD_CHECKTRAINERFLAG
    .short \trainerID
    .endm

    .macro AddVar destVarID, valueOrVarID
    .short SCRCMD_ADDVAR
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro SubVar destVarID, valueOrVarID
    .short SCRCMD_SUBVAR
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro SetVarFromValue destVarID, value
    .short SCRCMD_SETVARFROMVALUE
    .short \destVarID
    .short \value
    .endm

    .macro SetVarFromVar destVarID, srcVarID
    .short SCRCMD_SETVARFROMVAR
    .short \destVarID
    .short \srcVarID
    .endm

    .macro SetVar destVarID, valueOrVarID
    .if ((\valueOrVarID >= VARS_START && \valueOrVarID <= VARS_END) || (\valueOrVarID >= SCRIPT_LOCAL_VARS_START && \valueOrVarID <= SCRIPT_LOCAL_VARS_END))
        SetVarFromVar \destVarID, \valueOrVarID
    .else
        SetVarFromValue \destVarID, \valueOrVarID
    .endif
    .endm

    .macro ScrCmd_Unused_02A arg0, arg1
    .short SCRCMD_UNUSED_02A
    .short \arg0
    .short \arg1
    .endm

    .macro MessageInstant messageID
    .short SCRCMD_MESSAGEINSTANT
    .byte \messageID
    .endm

    .macro Message messageID
    .short SCRCMD_MESSAGE
    .byte \messageID
    .endm

    .macro MessageVar messageVar
    .short SCRCMD_MESSAGEVAR
    .short \messageVar
    .endm

    .macro MessageNoSkip messageID
    .short SCRCMD_MESSAGENOSKIP
    .short \messageID
    .endm

    /*
     * Used in multi-player contexts to show a message such that it takes
     * a predictable amount of time, to keep connected games in sync.
     * In single-player, this behaves like the Message script command.
     */
    .macro MessageSynchronized messageID
    .short SCRCMD_MESSAGESYNCHRONIZED
    .byte \messageID
    .endm

    .macro WaitABPress
    .short SCRCMD_WAITABPRESS
    .endm

    // This also sets the player's direction appropriately when a pad
    // button is pressed, unlike the WaitABPadPress command.
    .macro WaitButton
    .short SCRCMD_WAITBUTTON
    .endm

    // As opposed to WaitButton, this does not do a turn frame,
    // i.e. it does not set the player's direction if a pad button is pressed.
    .macro WaitABPadPress
    .short SCRCMD_WAITABPADPRESS
    .endm

    // Opens a message box window without printing anything
    .macro OpenMessage
    .short SCRCMD_OPENMESSAGE
    .endm

    .macro CloseMessage
    .short SCRCMD_CLOSEMESSAGE
    .endm

    .macro CloseMessageWithoutErasing
    .short SCRCMD_CLOSEMESSAGEWITHOUTERASING
    .endm

    .macro ShowMapSign messageID
    DrawSignpostInstantMessage \messageID SIGNPOST_TYPE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput VAR_RESULT
    Common_HandleSignpostInput
    .endm

    .macro ShowArrowSign messageID
    DrawSignpostInstantMessage \messageID SIGNPOST_TYPE_ARROW
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput VAR_RESULT
    Common_HandleSignpostInput
    .endm

    .macro ShowLandmarkSign messageID
    DrawSignpostInstantMessage \messageID SIGNPOST_TYPE_LANDMARK
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput VAR_RESULT
    Common_HandleSignpostInput
    .endm

    .macro ShowScrollingSign messageID
    DrawSignpostTextBox SIGNPOST_TYPE_SCROLLING
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostScrollingMessage \messageID, VAR_RESULT
    Common_HandleSignpostInput
    .endm

    .macro DrawSignpostInstantMessage messageID, signpostType, signpostNARCMemberIdx=0, unused=VAR_RESULT
    .short SCRCMD_DRAWSIGNPOSTINSTANTMESSAGE
    .byte \messageID
    .byte \signpostType
    .short \signpostNARCMemberIdx
    .short \unused
    .endm

    .macro DrawSignpostTextBox signpostType=SIGNPOST_TYPE_SCROLLING, signpostNARCMemberIdx=0
    .short SCRCMD_DRAWSIGNPOSTTEXTBOX
    .byte \signpostType
    .short \signpostNARCMemberIdx
    .endm

    .macro SetSignpostCommand command
    .short SCRCMD_SETSIGNPOSTCOMMAND
    .byte \command
    .endm

    .macro WaitForSignpostDone
    .short SCRCMD_WAITFORSIGNPOSTDONE
    .endm

    .macro DrawSignpostScrollingMessage messageID, destVarID=VAR_RESULT
    .short SCRCMD_DRAWSIGNPOSTSCROLLINGMESSAGE
    .byte \messageID
    .short \destVarID
    .endm

    .macro GetSignpostInput destVarID=VAR_RESULT
    .short SCRCMD_GETSIGNPOSTINPUT
    .short \destVarID
    .endm

    .macro ShowStartMenu
    .short SCRCMD_SHOWSTARTMENU
    .endm

    .macro ScrollBG3 distanceX, countX, directionX, distanceY, countY, directionY
    .short SCRCMD_SCROLLBG3
    .byte \distanceX
    .byte \countX
    .byte \directionX
    .byte \distanceY
    .byte \countY
    .byte \directionY
    .endm

    .macro ShowYesNoMenu destVarID
    .short SCRCMD_SHOWYESNOMENU
    .short \destVarID
    .endm

    .macro ScrCmd_Unused_03F
    .short SCRCMD_UNUSED_03F
    .endm

    /*
     * selectedOptionVar is set to 0xEEEE as part of initializing a FieldMenuManager.
     * Once ShowMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitGlobalTextMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short SCRCMD_INITGLOBALTEXTMENU
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    /*
     * selectedOptionVar is set to 0xEEEE as part of initializing a FieldMenuManager.
     * Once ShowMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitLocalTextMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short SCRCMD_INITLOCALTEXTMENU
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
    .short SCRCMD_ADDMENUENTRYIMM
    .byte \entryStringID
    .byte \entryIndex
    .endm

    .macro ShowMenu
    .short SCRCMD_SHOWMENU
    .endm

    /*
     * selectedOptionVar is set to 0xEEEE as part of initializing a FieldMenuManager.
     * Once ShowListMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitGlobalTextListMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short SCRCMD_INITGLOBALTEXTLISTMENU
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    /*
     * selectedOptionVar is set to 0xEEEE as part of initializing a FieldMenuManager.
     * Once ShowListMenu or one of its variants is used, selectedOptionVar is set to the
     * entryIndex of the option the player selected.
     */
    .macro InitLocalTextListMenu originX, originY, initialCursorPos, selectedOptionVar, canExitWithB=TRUE
    .short SCRCMD_INITLOCALTEXTLISTMENU
    .byte \originX
    .byte \originY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOptionVar
    .endm

    .macro AddListMenuEntry entryStringID, entryIndex, altTextStringID=LIST_MENU_ENTRY_NO_ALT_TEXT
    .short SCRCMD_ADDLISTMENUENTRY
    .short \entryStringID
    .short \altTextStringID
    .short \entryIndex
    .endm

    .macro ShowListMenu
    .short SCRCMD_SHOWLISTMENU
    .endm

    .macro ShowMenuMultiColumn columnCount
    .short SCRCMD_SHOWMENUMULTICOLUMN
    .byte \columnCount
    .endm

    // Plays a sound effect without interrupting the current music
    .macro PlaySE seqID
    .short SCRCMD_PLAYSE
    .short \seqID
    .endm

    .macro StopSE seqID
    .short SCRCMD_STOPSE
    .short \seqID
    .endm

    .macro WaitSE seqID
    .short SCRCMD_WAITSE
    .short \seqID
    .endm

    .macro PlayCry species, unused=0
    .short SCRCMD_PLAYCRY
    .short \species
    .short \unused
    .endm

    .macro WaitCry
    .short SCRCMD_WAITCRY
    .endm

    // Pauses the current music and then plays a sound effect
    .macro PlayFanfare seqID
    .short SCRCMD_PLAYFANFARE
    .short \seqID
    .endm

    .macro WaitFanfare
    .short SCRCMD_WAITFANFARE
    .endm

    .macro PlayMusic seqID
    .short SCRCMD_PLAYMUSIC
    .short \seqID
    .endm

    .macro StopMusic dummy
    .short SCRCMD_STOPMUSIC
    .short \dummy
    .endm

    // Plays the default music track based on the player's current location
    .macro PlayDefaultMusic
    .short SCRCMD_PLAYDEFAULTMUSIC
    .endm

    .macro SetSpecialBGM bgmID
    .short SCRCMD_SETSPECIALBGM
    .short \bgmID
    .endm

    .macro FadeOutBGM targetVolume, frames
    .short SCRCMD_FADEOUTBGM
    .short \targetVolume
    .short \frames
    .endm

    .macro FadeInBGM frames
    .short SCRCMD_FADEINBGM
    .short \frames
    .endm

    .macro SetBGMPlayerPaused playedID, paused
    .short SCRCMD_SETBGMPLAYERPAUSED
    .byte \playedID
    .byte \paused
    .endm

    .macro SetBGM seqID
    .short SCRCMD_SETBGM
    .short \seqID
    .endm

    .macro SetBGMFixed bgmID
    .short SCRCMD_SETBGMFIXED
    .byte \bgmID
    .endm

    .macro CheckRecordedChatotCryIsPlayable destVar
    .short SCRCMD_CHECKRECORDEDCHATOTCRYISPLAYABLE
    .short \destVar
    .endm

    .macro TryRecordChatotCry destVar
    .short SCRCMD_TRYRECORDCHATOTCRY
    .short \destVar
    .endm

    .macro StopRecordingChatotCry
    .short SCRCMD_STOPRECORDINGCHATOTCRY
    .endm

    .macro StoreRecordedChatotCry
    .short SCRCMD_STORERECORDEDCHATOTCRY
    .endm

    .macro SetSubScene63
    .short SCRCMD_SETSUBSCENE63
    .endm

    .macro ApplyMovement localID, movementOffset
    .short SCRCMD_APPLYMOVEMENT
    .short \localID
    .long \movementOffset-.-4
    .endm

    .macro WaitMovement
    .short SCRCMD_WAITMOVEMENT
    .endm

    .macro LockAll
    .short SCRCMD_LOCKALL
    .endm

    .macro ReleaseAll
    .short SCRCMD_RELEASEALL
    .endm

    .macro LockObject localID
    .short SCRCMD_LOCKOBJECT
    .short \localID
    .endm

    .macro ReleaseObject localID
    .short SCRCMD_RELEASEOBJECT
    .short \localID
    .endm

    .macro AddObject arg0
    .short SCRCMD_ADDOBJECT
    .short \arg0
    .endm

    .macro RemoveObject localID
    .short SCRCMD_REMOVEOBJECT
    .short \localID
    .endm

    .macro AddFreeCamera x, z
    .short SCRCMD_ADDFREECAMERA
    .short \x
    .short \z
    .endm

    .macro ApplyFreeCameraMovement movementOffset
    ApplyMovement LOCALID_CAMERA, \movementOffset
    .endm

    .macro RestoreCamera
    .short SCRCMD_RESTORECAMERA
    .endm

    .macro FacePlayer
    .short SCRCMD_FACEPLAYER
    .endm

    .macro GetPlayerMapPos destVarIDX, destVarIDZ
    .short SCRCMD_GETPLAYERMAPPOS
    .short \destVarIDX
    .short \destVarIDZ
    .endm

    .macro ScrCmd_Unused_06A arg0, arg1, arg2
    .short SCRCMD_UNUSED_06A
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro MoveCamera x, y, z
    .short SCRCMD_MOVECAMERA
    .short \x
    .short \y
    .short \z
    .endm

    .macro SetObjectFlagIsPersistent localID, flag
    .short SCRCMD_SETOBJECTFLAGISPERSISTENT
    .short \localID
    .byte \flag
    .endm

    .macro SetMovementType localID, movementType
    .short SCRCMD_SETMOVEMENTTYPE
    .short \localID
    .short \movementType
    .endm

    .macro ScrCmd_Unused_06E
    .short SCRCMD_UNUSED_06E
    .endm

    .macro GiveMoney value
    .short SCRCMD_GIVEMONEY
    .long \value
    .endm

    .macro RemoveMoney value
    .short SCRCMD_REMOVEMONEY
    .long \value
    .endm

    .macro CheckMoney destVar, value
    .short SCRCMD_CHECKMONEY
    .short \destVar
    .long \value
    .endm

    .macro GoToIfNotEnoughMoney value, offset
    CheckMoney VAR_RESULT, \value
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro ShowMoney tilemapLeft, tilemapTop
    .short SCRCMD_SHOWMONEY
    .short \tilemapLeft
    .short \tilemapTop
    .endm

    .macro HideMoney
    .short SCRCMD_HIDEMONEY
    .endm

    .macro UpdateMoneyDisplay
    .short SCRCMD_UPDATEMONEYDISPLAY
    .endm

    .macro ShowCoins tilemapLeft, tilemapTop
    .short SCRCMD_SHOWCOINS
    .short \tilemapLeft
    .short \tilemapTop
    .endm

    .macro HideCoins
    .short SCRCMD_HIDECOINS
    .endm

    .macro UpdateCoinDisplay
    .short SCRCMD_UPDATECOINDISPLAY
    .endm

    .macro GetCoinsAmount destVar
    .short SCRCMD_GETCOINSAMOUNT
    .short \destVar
    .endm

    .macro AddCoins coins
    .short SCRCMD_ADDCOINS
    .short \coins
    .endm

    .macro SubtractCoinsFromValue value
    .short SCRCMD_SUBTRACTCOINSFROMVALUE
    .short \value
    .endm

    // If the player has no space left in the bag, destVarID will be set to FALSE
    .macro AddItem item, count, destVarID
    .short SCRCMD_ADDITEM
    .short \item
    .short \count
    .short \destVarID
    .endm

    // destVarID will be set to TRUE if the player had at least 'count' items of the specified type in their bag
    .macro RemoveItem item, count, destVarID
    .short SCRCMD_REMOVEITEM
    .short \item
    .short \count
    .short \destVarID
    .endm

    // destVarID will be set to TRUE if the player has space for at least 'count' items of the specified type in their bag
    .macro CanFitItem item, count, destVarID
    .short SCRCMD_CANFITITEM
    .short \item
    .short \count
    .short \destVarID
    .endm

    // destVarID will be set to TRUE if the player has at least 'count' items of the specified type in their bag
    .macro CheckItem item, count, destVarID
    .short SCRCMD_CHECKITEM
    .short \item
    .short \count
    .short \destVarID
    .endm

    .macro IsItemTMHM item, destVar
    .short SCRCMD_ISITEMTMHM
    .short \item
    .short \destVar
    .endm

    .macro GetItemPocket item, destVarID
    .short SCRCMD_GETITEMPOCKET
    .short \item
    .short \destVarID
    .endm

    .macro ScrCmd_Dummy081
    .short SCRCMD_DUMMY081
    .endm

    .macro ScrCmd_Dummy082
    .short SCRCMD_DUMMY082
    .endm

    .macro SendGoodToPC goodID, unused, destVar
    .short SCRCMD_SENDGOODTOPC
    .short \goodID
    .short \unused
    .short \destVar
    .endm

    .macro Dummy084 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY084
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro CheckHasRoomForGoodsInPC unused, unused2, destVar
    .short SCRCMD_CHECKHASROOMFORGOODSINPC
    .short \unused
    .short \unused2
    .short \destVar
    .endm

    .macro Dummy086 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY086
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro GiveTrap trapID, unused, destVar
    .short SCRCMD_GIVETRAP
    .short \trapID
    .short \unused
    .short \destVar
    .endm

    .macro Dummy088 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY088
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy089 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY089
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08A dummy, dummy2, dummy3
    .short SCRCMD_DUMMY08A
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08B dummy, dummy2, dummy3
    .short SCRCMD_DUMMY08B
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08C dummy, dummy2, dummy3
    .short SCRCMD_DUMMY08C
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08D dummy, dummy2, dummy3
    .short SCRCMD_DUMMY08D
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy08E dummy, dummy2, dummy3
    .short SCRCMD_DUMMY08E
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro GiveSphere type, size, destVar
    .short SCRCMD_GIVESPHERE
    .short \type
    .short \size
    .short \destVar
    .endm

    .macro Dummy090 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY090
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy091 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY091
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro Dummy092 dummy, dummy2, dummy3
    .short SCRCMD_DUMMY092
    .short \dummy
    .short \dummy2
    .short \dummy3
    .endm

    .macro CountSealOccurence sealId, destVar
    .short SCRCMD_COUNTSEALOCCURENCE
    .short \sealId
    .short \destVar
    .endm

    .macro GiveOrTakeSeal sealId, quantity
    .short SCRCMD_GIVEORTAKESEAL
    .short \sealId
    .short \quantity
    .endm

    .macro GetPartyMonForm partySlot, destVar
    .short SCRCMD_GETPARTYMONFORM
    .short \partySlot
    .short \destVar
    .endm

    .macro GivePokemon species, level, heldItem, successVar
    .short SCRCMD_GIVEPOKEMON
    .short \species
    .short \level
    .short \heldItem
    .short \successVar
    .endm

    @ eggGiverTextId corresponds to an entry in special_met_location_names.gmm.
    .macro GiveEgg species, eggGiverTextId
    .short SCRCMD_GIVEEGG
    .short \species
    .short \eggGiverTextId
    .endm

    .macro ResetPartyMonMoveSlot_Unused partySlot, moveSlot, moveID
    .short SCRCMD_RESETPARTYMONMOVESLOT_UNUSED
    .short \partySlot
    .short \moveSlot
    .short \moveID
    .endm

    .macro CheckPartyMonHasMove destVar, move, partySlot
    .short SCRCMD_CHECKPARTYMONHASMOVE
    .short \destVar
    .short \move
    .short \partySlot
    .endm

    .macro FindPartySlotWithMove destVar, move
    .short SCRCMD_FINDPARTYSLOTWITHMOVE
    .short \destVar
    .short \move
    .endm

    .macro GetRematchTrainerID trainerID, destVar
    .short SCRCMD_GETREMATCHTRAINERID
    .short \trainerID
    .short \destVar
    .endm

    .macro ScrCmd_Unused_09C
    .short SCRCMD_UNUSED_09C
    .endm

    .macro ScrCmd_Unused_09D
    .short SCRCMD_UNUSED_09D
    .endm

    .macro ScrCmd_Unused_09E
    .short SCRCMD_UNUSED_09E
    .endm

    .macro ScrCmd_Unused_09F
    .short SCRCMD_UNUSED_09F
    .endm

    .macro Dummy0A0
    .short SCRCMD_DUMMY0A0
    .endm

    .macro ReturnToField
    .short SCRCMD_RETURNTOFIELD
    .endm

    .macro ScrCmd_0A2
    .short SCRCMD_0A2
    .endm

    .macro ScrCmd_0A3
    .short SCRCMD_0A3
    .endm

    .macro ScrCmd_Unused_0A4 arg0
    .short SCRCMD_UNUSED_0A4
    .short \arg0
    .endm

    .macro ScrCmd_0A5
    .short SCRCMD_0A5
    .endm

    .macro ScrCmd_0A6 slot, destVar, arg2
    .short SCRCMD_0A6
    .short \slot
    .short \destVar
    .short \arg2
    .endm

    .macro ShowDressUpPhoto slot, destVar
    .short SCRCMD_SHOWDRESSUPPHOTO
    .short \slot
    .short \destVar
    .endm

    .macro ScrCmd_0A8 arg0, arg1
    .short SCRCMD_0A8
    .short \arg0
    .short \arg1
    .endm

    .macro OpenSealCapsuleEditor
    .short SCRCMD_OPENSEALCAPSULEEDITOR
    .endm

    .macro OpenRegionMap
    .short SCRCMD_OPENREGIONMAP
    .endm

    .macro OpenPokemonStorage boxMode
    .short SCRCMD_OPENPOKEMONSTORAGE
    .byte \boxMode
    .endm

    .macro ScrCmd_0AC
    .short SCRCMD_0AC
    .endm

    .macro OpenUnionRoomTrainerCase
    .short SCRCMD_OPENUNIONROOMTRAINERCASE
    .endm

    .macro ScrCmd_0AE
    .short SCRCMD_0AE
    .endm

    .macro ScrCmd_0AF
    .short SCRCMD_0AF
    .endm

    .macro ClearGame
    .short SCRCMD_CLEARGAME
    .endm

    .macro ScrCmd_0B1
    .short SCRCMD_0B1
    .endm

    .macro TryStartGTSApp connectToWiFi, destVar
    .short SCRCMD_TRYSTARTGTSAPP
    .short \connectToWiFi
    .short \destVar
    .endm

    .macro ScrCmd_0B3 arg0
    .short SCRCMD_0B3
    .short \arg0
    .endm

    .macro StartChooseStarterScene
    .short SCRCMD_STARTCHOOSESTARTERSCENE
    .endm

    .macro SaveChosenStarter
    .short SCRCMD_SAVECHOSENSTARTER
    .endm

    .macro ScrCmd_0B6 approachNum
    .short SCRCMD_0B6
    .short \approachNum
    .endm

    .macro CheckIsApproachingTrainerTaskDone approachNum, destVar
    .short SCRCMD_CHECKISAPPROACHINGTRAINERTASKDONE
    .short \approachNum
    .short \destVar
    .endm

    .macro ScrCmd_0B8 destVar
    .short SCRCMD_0B8
    .short \destVar
    .endm

    .macro GetApproachingTrainerID approachNum, destVar
    .short SCRCMD_GETAPPROACHINGTRAINERID
    .short \approachNum
    .short \destVar
    .endm

    .macro ScrCmd_Unused_0BA arg0
    .short SCRCMD_UNUSED_0BA
    .short \arg0
    .endm

    .macro OpenPokemonNamingScreen slot, destVar
    .short SCRCMD_OPENPOKEMONNAMINGSCREEN
    .short \slot
    .short \destVar
    .endm

    .macro FadeScreen transition, frames, type, color
    .short SCRCMD_FADESCREEN
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
    .short SCRCMD_WAITFADESCREEN
    .endm

    .macro Warp mapID, dummy, x, z, direction
    .short SCRCMD_WARP
    .short \mapID
    .short \dummy
    .short \x
    .short \z
    .short \direction
    .endm

    .macro UseRockClimb partySlot
    .short SCRCMD_USEROCKCLIMB
    .short \partySlot
    .endm

    .macro UseSurf partySlot
    .short SCRCMD_USESURF
    .short \partySlot
    .endm

    .macro UseWaterfall partySlot
    .short SCRCMD_USEWATERFALL
    .short \partySlot
    .endm

    .macro UseFly mapID, x, z
    .short SCRCMD_USEFLY
    .short \mapID
    .short \x
    .short \z
    .endm

    .macro ScrCmd_0C3
    .short SCRCMD_0C3
    .endm

    .macro ScrCmd_0C4
    .short SCRCMD_0C4
    .endm

    .macro ScrCmd_0C5 arg0
    .short SCRCMD_0C5
    .short \arg0
    .endm

    .macro ChangeIntoContestAttire
    .short SCRCMD_CHANGEINTOCONTESTATTIRE
    .endm

    .macro CheckPlayerOnBike destVarID
    .short SCRCMD_CHECKPLAYERONBIKE
    .short \destVarID
    .endm

    // If rideBike == TRUE, sets the player on the bike.
    // If rideBike == FALSE, removes the player from the bike.
    .macro SetPlayerBike rideBike
    .short SCRCMD_SETPLAYERBIKE
    .byte \rideBike
    .endm

    .macro ForceBicycling flag
    .short SCRCMD_FORCEBICYCLING
    .byte \flag
    .endm

    .macro GetPlayerState destVarID
    .short SCRCMD_GETPLAYERSTATE
    .short \destVarID
    .endm

    .macro SetPlayerState state
    .short SCRCMD_SETPLAYERSTATE
    .short \state
    .endm

    .macro ChangePlayerState
    .short SCRCMD_CHANGEPLAYERSTATE
    .endm

    .macro BufferPlayerName templateArg
    .short SCRCMD_BUFFERPLAYERNAME
    .byte \templateArg
    .endm

    .macro BufferRivalName templateArg
    .short SCRCMD_BUFFERRIVALNAME
    .byte \templateArg
    .endm

    .macro BufferCounterpartName templateArg
    .short SCRCMD_BUFFERCOUNTERPARTNAME
    .byte \templateArg
    .endm

    .macro BufferPartyMonSpecies templateArg, partySlot
    .short SCRCMD_BUFFERPARTYMONSPECIES
    .byte \templateArg
    .short \partySlot
    .endm

    .macro BufferItemName templateArg, item
    .short SCRCMD_BUFFERITEMNAME
    .byte \templateArg
    .short \item
    .endm

    .macro BufferPocketName templateArg, pocket
    .short SCRCMD_BUFFERPOCKETNAME
    .byte \templateArg
    .short \pocket
    .endm

    .macro BufferTMHMMoveName templateArg, item
    .short SCRCMD_BUFFERTMHMMOVENAME
    .byte \templateArg
    .short \item
    .endm

    .macro BufferMoveName templateArg, move
    .short SCRCMD_BUFFERMOVENAME
    .byte \templateArg
    .short \move
    .endm

    .macro BufferNumber templateArg, number
    .short SCRCMD_BUFFERNUMBER
    .byte \templateArg
    .short \number
    .endm

    .macro BufferPartyMonNickname templateArg, partySlot
    .short SCRCMD_BUFFERPARTYMONNICKNAME
    .byte \templateArg
    .short \partySlot
    .endm

    .macro BufferPoketchAppName templateArg, appID
    .short SCRCMD_BUFFERPOKETCHAPPNAME
    .byte \templateArg
    .short \appID
    .endm

    .macro BufferTrainerClassName templateArg, trainerClass
    .short SCRCMD_BUFFERTRAINERCLASSNAME
    .byte \templateArg
    .short \trainerClass
    .endm

    .macro BufferTrainerClassFromAppearance templateArg
    .short SCRCMD_BUFFERTRAINERCLASSFROMAPPEARANCE
    .byte \templateArg
    .endm

    .macro BufferSpeciesNameFromVar templateArg, var, unused1, unused2
    .short SCRCMD_BUFFERSPECIESNAMEFROMVAR
    .byte \templateArg
    .short \var
    .short \unused1
    .byte \unused2
    .endm

    .macro BufferPlayerStarterSpeciesName templateArg
    .short SCRCMD_BUFFERPLAYERSTARTERSPECIESNAME
    .byte \templateArg
    .endm

    .macro BufferRivalStarterSpeciesName templateArg
    .short SCRCMD_BUFFERRIVALSTARTERSPECIESNAME
    .byte \templateArg
    .endm

    .macro BufferPlayerCounterpartStarterSpeciesName templateArg
    .short SCRCMD_BUFFERPLAYERCOUNTERPARTSTARTERSPECIESNAME
    .byte \templateArg
    .endm

    .macro GetPlayerStarterSpecies destVar
    .short SCRCMD_GETPLAYERSTARTERSPECIES
    .short \destVar
    .endm

    .macro BufferUndergroundGoodsName templateArg, goods
    .short SCRCMD_BUFFERUNDERGROUNDGOODSNAME
    .byte \templateArg
    .short \goods
    .endm

    .macro BufferUndergroundTrapName templateArg, trap
    .short SCRCMD_BUFFERUNDERGROUNDTRAPNAME
    .byte \templateArg
    .short \trap
    .endm

    .macro BufferUndergroundItemName templateArg, item
    .short SCRCMD_BUFFERUNDERGROUNDITEMNAME
    .byte \templateArg
    .short \item
    .endm

    .macro BufferMapName templateArg, mapID
    .short SCRCMD_BUFFERMAPNAME
    .byte \templateArg
    .short \mapID
    .endm

    .macro GetSwarmMapAndSpecies arg0, arg1
    .short SCRCMD_GETSWARMMAPANDSPECIES
    .short \arg0
    .short \arg1
    .endm

    .macro GetTrainerID destVar
    .short SCRCMD_GETTRAINERID
    .short \destVar
    .endm

    .macro StartTrainerBattle enemyTrainer1, enemyTrainer2=0
    .short SCRCMD_STARTTRAINERBATTLE
    .short \enemyTrainer1
    .short \enemyTrainer2
    .endm

    .macro PrintTrainerDialogue trainerID, msgType
    .short SCRCMD_PRINTTRAINERDIALOGUE
    .short \trainerID
    .short \msgType
    .endm

    .macro GetTrainerMessageTypes destVarPreBattleMsgType, destVarPostBattleMsgType, destVarNotEnoughPokemonMessageType
    .short SCRCMD_GETTRAINERMESSAGETYPES
    .short \destVarPreBattleMsgType
    .short \destVarPostBattleMsgType
    .short \destVarNotEnoughPokemonMessageType
    .endm

    .macro GetTrainerRematchMessageTypes destVarPreBattleMsgType, destVarPostBattleMsgType, destVarNotEnoughPokemonMessageType
    .short SCRCMD_GETTRAINERREMATCHMESSAGETYPES
    .short \destVarPreBattleMsgType
    .short \destVarPostBattleMsgType
    .short \destVarNotEnoughPokemonMessageType
    .endm

    .macro CheckIsTrainerDoubleBattle destVar
    .short SCRCMD_CHECKISTRAINERDOUBLEBATTLE
    .short \destVar
    .endm

    .macro PlayTrainerEncounterBGM trainerID
    .short SCRCMD_PLAYTRAINERENCOUNTERBGM
    .short \trainerID
    .endm

    .macro BlackOutFromBattle
    .short SCRCMD_BLACKOUTFROMBATTLE
    .endm

    .macro CheckWonBattle destVarID
    .short SCRCMD_CHECKWONBATTLE
    .short \destVarID
    .endm

    .macro CheckLostBattle destVarID
    .short SCRCMD_CHECKLOSTBATTLE
    .short \destVarID
    .endm

    .macro CheckHasTwoAliveMons destVarID
    .short SCRCMD_CHECKHASTWOALIVEMONS
    .short \destVarID
    .endm

    .macro StartDummyTrainerBattle
    .short SCRCMD_STARTDUMMYTRAINERBATTLE
    .endm

    .macro SetTargetTrainerDefeated
    .short SCRCMD_SETTARGETTRAINERDEFEATED
    .endm

    .macro GoToIfTargetTrainerDefeated offset
    .short SCRCMD_GOTOIFTARGETTRAINERDEFEATED
    .long \offset-.-4
    .endm

    .macro StartBattleClient commType, arg1, arg2, destVarID
    .short SCRCMD_STARTBATTLECLIENT
    .short \commType
    .short \arg1
    .short \arg2
    .short \destVarID
    .endm

    .macro StartBattleServer commType, arg1, arg2, destVarID
    .short SCRCMD_STARTBATTLESERVER
    .short \commType
    .short \arg1
    .short \arg2
    .short \destVarID
    .endm

    .macro ScrCmd_Unused_0F4 arg0
    .short SCRCMD_UNUSED_0F4
    .short \arg0
    .endm

    .macro ScrCmd_Unused_0F5 arg0
    .short SCRCMD_UNUSED_0F5
    .short \arg0
    .endm

    .macro StartLinkBattle
    .short SCRCMD_STARTLINKBATTLE
    .endm

    .macro ScrCmd_Unused_0F7
    .short SCRCMD_UNUSED_0F7
    .endm

    .macro StartContestCommSync syncNo
    .short SCRCMD_STARTCONTESTCOMMSYNC
    .short \syncNo
    .endm

    .macro WaitForCommSyncState syncState
    .short SCRCMD_WAITFORCOMMSYNCSTATE
    .short \syncState
    .endm

    .macro NewContest contestRank, contestType, competitionType, partySlot
    .short SCRCMD_NEWCONTEST
    .short \contestRank
    .short \contestType
    .short \competitionType
    .short \partySlot
    .endm

    .macro EndContest mapID
    .short SCRCMD_ENDCONTEST
    .short \mapID
    .endm

    .macro BufferJudgeName judgeID, idx
    .short SCRCMD_BUFFERJUDGENAME
    .short \judgeID
    .short \idx
    .endm

    .macro BufferContestantTrainerName contestantEntryNum, idx
    .short SCRCMD_BUFFERCONTESTANTTRAINERNAME
    .short \contestantEntryNum
    .short \idx
    .endm

    .macro BufferContestantMonName contestantEntryNum, idx
    .short SCRCMD_BUFFERCONTESTANTMONNAME
    .short \contestantEntryNum
    .short \idx
    .endm

    .macro BufferContestRegistrationEntryNumber entryNum, strNumIdx
    .short SCRCMD_BUFFERCONTESTREGISTRATIONENTRYNUMBER
    .short \entryNum
    .short \strNumIdx
    .endm

    .macro WaitForLinkContestSetup
    .short SCRCMD_WAITFORLINKCONTESTSETUP
    .endm

    .macro RunContestApplication
    .short SCRCMD_RUNCONTESTAPPLICATION
    .endm

    .macro BufferContestRank idx
    .short SCRCMD_BUFFERCONTESTRANK
    .short \idx
    .endm

    .macro BufferContestType idx
    .short SCRCMD_BUFFERCONTESTTYPE
    .short \idx
    .endm

    .macro BufferWinningContestantTrainerName idx
    .short SCRCMD_BUFFERWINNINGCONTESTANTTRAINERNAME
    .short \idx
    .endm

    .macro SetTrue destTrue
    .short SCRCMD_SETTRUE
    .short \destTrue
    .endm

    .macro BufferWinningContestantMonName idx
    .short SCRCMD_BUFFERWINNINGCONTESTANTMONNAME
    .short \idx
    .endm

    .macro GetPlayerContestPlacement destPlayerContestPlacement
    .short SCRCMD_GETPLAYERCONTESTPLACEMENT
    .short \destPlayerContestPlacement
    .endm

    .macro GetWinningContestantEntryNum destWinningContestantEntryNum
    .short SCRCMD_GETWINNINGCONTESTANTENTRYNUM
    .short \destWinningContestantEntryNum
    .endm

    .macro GetContestRegistrationEntryNum destVarContestantEntryNum
    .short SCRCMD_GETCONTESTREGISTRATIONENTRYNUM
    .short \destVarContestantEntryNum
    .endm

    .macro GetContestantObjEventGFX contestantEntryNum, destContestantObjEventGFX
    .short SCRCMD_GETCONTESTANTOBJEVENTGFX
    .short \contestantEntryNum
    .short \destContestantObjEventGFX
    .endm

    .macro GetContestantMonContestFame contestantEntryNum, destMonContestFame
    .short SCRCMD_GETCONTESTANTMONCONTESTFAME
    .short \contestantEntryNum
    .short \destMonContestFame
    .endm

    .macro GetContestMode destContestMode
    .short SCRCMD_GETCONTESTMODE
    .short \destContestMode
    .endm

    .macro CheckPlayerMonHasRibbon destHasRibbon
    .short SCRCMD_CHECKPLAYERMONHASRIBBON
    .short \destHasRibbon
    .endm

    .macro SetRibbonName idx
    .short SCRCMD_SETRIBBONNAME
    .short \idx
    .endm

    .macro GetFirstTimeVictoryAccessory destAccessoryID
    .short SCRCMD_GETFIRSTTIMEVICTORYACCESSORY
    .short \destAccessoryID
    .endm

    .macro GetContestInfo contestRank, contestType, competitionType, monPartySlot
    .short SCRCMD_GETCONTESTINFO
    .short \contestRank
    .short \contestType
    .short \competitionType
    .short \monPartySlot
    .endm

    .macro StartContestCameraFlashTask contestantEntryNum
    .short SCRCMD_STARTCONTESTCAMERAFLASHTASK
    .short \contestantEntryNum
    .endm

    .macro WaitForContestCameraFlashTask
    .short SCRCMD_WAITFORCONTESTCAMERAFLASHTASK
    .endm

    .macro StopHBlank
    .short SCRCMD_STOPHBLANK
    .endm

    .macro StartHBlank
    .short SCRCMD_STARTHBLANK
    .endm

    .macro GetShouldSkipAwardCeremony destSkipAwardCeremony
    .short SCRCMD_GETSHOULDSKIPAWARDCEREMONY
    .short \destSkipAwardCeremony
    .endm

    .macro ShowLinkContestRecords
    .short SCRCMD_SHOWLINKCONTESTRECORDS
    .endm

    .macro LockAutoScrollForLinkContests
    .short SCRCMD_LOCKAUTOSCROLLFORLINKCONTESTS
    .endm

    .macro LockTextSpeed
    .short SCRCMD_LOCKTEXTSPEED
    .endm

    .macro CheckPartyPokerus destVarID
    .short SCRCMD_CHECKPARTYPOKERUS
    .short \destVarID
    .endm

    .macro GetPartyMonGender_Unused slot, destVar
    .short SCRCMD_GETPARTYMONGENDER_UNUSED
    .short \slot
    .short \destVar
    .endm

    .macro SetSpecialLocation mapId, warpId, x, z, dir
    .short SCRCMD_SETSPECIALLOCATION
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
    .short SCRCMD_GETFLOORSABOVE
    .short \destVarID
    .endm

    /* destVar is used to initialize a FieldMenuManager, setting it to 0xEEEE, but is otherwise left without a meaningful value */
    .macro ShowCurrentFloor tilemapLeft, tilemapTop, destVarID
    .short SCRCMD_SHOWCURRENTFLOOR
    .byte \tilemapLeft
    .byte \tilemapTop
    .short \destVarID
    .short \destVarID    /* unused */
    .endm

    .macro GetLocalDexSeenCount destVar
    .short SCRCMD_GETLOCALDEXSEENCOUNT
    .short \destVar
    .endm

    .macro GetLocalDexCaughtCount_Unused destVar
    .short SCRCMD_GETLOCALDEXCAUGHTCOUNT_UNUSED
    .short \destVar
    .endm

    .macro GetNationalDexSeenCount destVar
    .short SCRCMD_GETNATIONALDEXSEENCOUNT
    .short \destVar
    .endm

    .macro GetNationalDexCaughtCount destVar
    .short SCRCMD_GETNATIONALDEXCAUGHTCOUNT
    .short \destVar
    .endm

    .macro ScrCmd_Unused_122
    .short SCRCMD_UNUSED_122
    .endm

    .macro LoadPokedexRating hasNationalDex, destVar
    .short SCRCMD_LOADPOKEDEXRATING
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
    .short SCRCMD_STARTWILDBATTLE
    .short \species
    .short \level
    .endm

    .macro StartFirstBattle trainerID
    .short SCRCMD_STARTFIRSTBATTLE
    .short \trainerID
    .endm

    .macro StartCatchingTutorial
    .short SCRCMD_STARTCATCHINGTUTORIAL
    .endm

    .macro SlatherHoneyTree
    .short SCRCMD_SLATHERHONEYTREE
    .endm

    .macro GetHoneyTreeStatus destVar
    .short SCRCMD_GETHONEYTREESTATUS
    .short \destVar
    .endm

    .macro StartHoneyTreeBattle
    .short SCRCMD_STARTHONEYTREEBATTLE
    .endm

    .macro ScrCmd_12A
    .short SCRCMD_12A
    .endm

    .macro StartSignatureApp
    .short SCRCMD_STARTSIGNATUREAPP
    .endm

    .macro CheckSaveType destVarID
    .short SCRCMD_CHECKSAVETYPE
    .short \destVarID
    .endm

    .macro TrySaveGame destVar
    .short SCRCMD_TRYSAVEGAME
    .short \destVar
    .endm

    .macro DressUpPhotoHasData slot, destVar
    .short SCRCMD_DRESSUPPHOTOHASDATA
    .short \slot
    .short \destVar
    .endm

    .macro ContestPhotoHasData slot, destVar
    .short SCRCMD_CONTESTPHOTOHASDATA
    .short \slot
    .short \destVar
    .endm

    .macro SetDressUpPhotoTitle word
    .short SCRCMD_SETDRESSUPPHOTOTITLE
    .short \word
    .endm

    .macro ScrCmd_131
    .short SCRCMD_131
    .endm

    .macro CheckPoketchEnabled destVar
    .short SCRCMD_CHECKPOKETCHENABLED
    .short \destVar
    .endm

    .macro RegisterPoketchApp appID
    .short SCRCMD_REGISTERPOKETCHAPP
    .short \appID
    .endm

    .macro CheckPoketchAppRegistered appID, destVarID
    .short SCRCMD_CHECKPOKETCHAPPREGISTERED
    .short \appID
    .short \destVarID
    .endm

    .macro ScrCmd_135 syncNo
    .short SCRCMD_135
    .short \syncNo
    .endm

    .macro ClearReceivedTempDataAllPlayers
    .short SCRCMD_CLEARRECEIVEDTEMPDATAALLPLAYERS
    .endm

    .macro ScrCmd_Unused_137 arg0
    .short SCRCMD_UNUSED_137
    .short \arg0
    .endm

    .macro GetUnionRoomTealaMessage destVar
    .short SCRCMD_GETUNIONROOMTEALAMESSAGE
    .short \destVar
    .endm

    .macro ScrCmd_139 arg0
    .short SCRCMD_139
    .short \arg0
    .endm

    .macro ScrCmd_13A
    .short SCRCMD_13A
    .endm

    .macro ScrCmd_13B
    .short SCRCMD_13B
    .endm

    .macro DoUnionRoomGreeting arg0
    .short SCRCMD_DOUNIONROOMGREETING
    .short \arg0
    .endm

    .macro InitCommFieldCmd
    .short SCRCMD_INITCOMMFIELDCMD
    .endm

    .macro ScrCmd_13E
    .short SCRCMD_13E
    .endm

    .macro GetUnionRoomMessage msgType, destVar
    .short SCRCMD_GETUNIONROOMMESSAGE
    .short \msgType
    .short \destVar
    .endm

    .macro ScrCmd_140 arg0
    .short SCRCMD_140
    .short \arg0
    .endm

    .macro ScrCmd_141 arg0
    .short SCRCMD_141
    .short \arg0
    .endm

    .macro ScrCmd_142
    .short SCRCMD_142
    .endm

    .macro ScrCmd_143 arg0, arg1
    .short SCRCMD_143
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_144 arg0
    .short SCRCMD_144
    .short \arg0
    .endm

    .macro ScrCmd_145 arg0
    .short SCRCMD_145
    .short \arg0
    .endm

    .macro ScrCmd_146 arg0, arg1
    .short SCRCMD_146
    .short \arg0
    .short \arg1
    .endm

    .macro PokeMartCommon unused=1
    .short SCRCMD_POKEMARTCOMMON
    .short \unused
    .endm

    .macro PokeMartSpecialties martID
    .short SCRCMD_POKEMARTSPECIALTIES
    .short \martID
    .endm

    .macro PokeMartDecor martID
    .short SCRCMD_POKEMARTDECOR
    .short \martID
    .endm

    .macro PokeMartSeal martID
    .short SCRCMD_POKEMARTSEAL
    .short \martID
    .endm

    .macro BlackOutFromBattle2
    .short SCRCMD_BLACKOUTFROMBATTLE2
    .endm

    .macro SetBlackOutWarpId warpId
    .short SCRCMD_SETBLACKOUTWARPID
    .short \warpId
    .endm

    .macro GetPlayerGender destVarID
    .short SCRCMD_GETPLAYERGENDER
    .short \destVarID
    .endm

    .macro HealParty
    .short SCRCMD_HEALPARTY
    .endm

    .macro Dummy14F
    .short SCRCMD_DUMMY14F
    .endm

    .macro EndCommunication
    .short SCRCMD_ENDCOMMUNICATION
    .endm

    .macro ScrCmd_151
    .short SCRCMD_151
    .endm

    .macro SetCommPlayerDir dir
    .short SCRCMD_SETCOMMPLAYERDIR
    .short \dir
    .endm

    .macro ScrCmd_153
    .short SCRCMD_153
    .endm

    .macro LoadTrainerAppearances
    .short SCRCMD_LOADTRAINERAPPEARANCES
    .endm

    .macro GetTrainerInfoTrainerClass variant, destVar
    .short SCRCMD_GETTRAINERINFOTRAINERCLASS
    .short \variant
    .short \destVar
    .endm

    .macro SetTrainerInfoAppearance appearance
    .short SCRCMD_SETTRAINERINFOAPPEARANCE
    .short \appearance
    .endm

    .macro CheckPokedexAcquired destVarID
    .short SCRCMD_CHECKPOKEDEXACQUIRED
    .short \destVarID
    .endm

    .macro GivePokedex
    .short SCRCMD_GIVEPOKEDEX
    .endm

    .macro CheckRunningShoesAcquired destVarID
    .short SCRCMD_CHECKRUNNINGSHOESACQUIRED
    .short \destVarID
    .endm

    .macro GiveRunningShoes
    .short SCRCMD_GIVERUNNINGSHOES
    .endm

    .macro CheckBadgeAcquired badgeID, destVarID
    .short SCRCMD_CHECKBADGEACQUIRED
    .short \badgeID
    .short \destVarID
    .endm

    .macro GiveBadge badgeID
    .short SCRCMD_GIVEBADGE
    .short \badgeID
    .endm

    .macro CountBadgesAcquired destVarID
    .short SCRCMD_COUNTBADGESACQUIRED
    .short \destVarID
    .endm

    .macro CheckBagAcquired destVarID
    .short SCRCMD_CHECKBAGACQUIRED
    .short \destVarID
    .endm

    .macro GoToIfBadgeAcquired badge label
    CheckBadgeAcquired \badge, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, \label
    .endm

    .macro GiveBag
    .short SCRCMD_GIVEBAG
    .endm

    .macro CheckHasPartner destVarID
    .short SCRCMD_CHECKHASPARTNER
    .short \destVarID
    .endm

    .macro SetHasPartner
    .short SCRCMD_SETHASPARTNER
    .endm

    .macro ClearHasPartner
    .short SCRCMD_CLEARHASPARTNER
    .endm

    .macro CheckStepFlag destVarID
    .short SCRCMD_CHECKSTEPFLAG
    .short \destVarID
    .endm

    .macro SetStepFlag
    .short SCRCMD_SETSTEPFLAG
    .endm

    .macro ClearStepFlag
    .short SCRCMD_CLEARSTEPFLAG
    .endm

    .macro CheckGameCompleted destVarID
    .short SCRCMD_CHECKGAMECOMPLETED
    .short \destVarID
    .endm

    .macro SetGameCompleted
    .short SCRCMD_SETGAMECOMPLETED
    .endm

    .macro LoadDoorAnimation mapX, mapZ, tileX, tileZ, tag
    .short SCRCMD_LOADDOORANIMATION
    .short \mapX
    .short \mapZ
    .short \tileX
    .short \tileZ
    .byte \tag
    .endm

    .macro WaitForAnimation tag
    .short SCRCMD_WAITFORANIMATION
    .byte \tag
    .endm

    .macro UnloadAnimation tag
    .short SCRCMD_UNLOADANIMATION
    .byte \tag
    .endm

    .macro PlayDoorOpenAnimation tag
    .short SCRCMD_PLAYDOOROPENANIMATION
    .byte \tag
    .endm

    .macro PlayDoorCloseAnimation tag
    .short SCRCMD_PLAYDOORCLOSEANIMATION
    .byte \tag
    .endm

    .macro BufferDaycareMonNicknames
    .short SCRCMD_BUFFERDAYCAREMONNICKNAMES
    .endm

    .macro GetDaycareState destVar
    .short SCRCMD_GETDAYCARESTATE
    .short \destVar
    .endm

    .macro InitPersistedMapFeaturesForPastoriaGym
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORPASTORIAGYM
    .endm

    .macro PressPastoriaGymButton
    .short SCRCMD_PRESSPASTORIAGYMBUTTON
    .endm

    .macro InitPersistedMapFeaturesForHearthomeGym
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORHEARTHOMEGYM
    .endm

    .macro MoveHearthomeGymDPLift
    .short SCRCMD_MOVEHEARTHOMEGYMDPLIFT
    .endm

    .macro InitPersistedMapFeaturesForCanalaveGym
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORCANALAVEGYM
    .endm

    .macro InitPersistedMapFeaturesForVeilstoneGym
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORVEILSTONEGYM
    .endm

    .macro InitPersistedMapFeaturesForSunyshoreGym floorID
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORSUNYSHOREGYM
    .byte \floorID
    .endm

    .macro SunyshoreGymButton arg0
    .short SCRCMD_SUNYSHOREGYMBUTTON
    .byte \arg0
    .endm

    .macro GetPartyCount destVarID
    .short SCRCMD_GETPARTYCOUNT
    .short \destVarID
    .endm

    .macro OpenBag pocketType
    .short SCRCMD_OPENBAG
    .byte \pocketType
    .endm

    .macro OpenItemsBag
    OpenBag 0
    .endm

    .macro OpenBerriesBag
    OpenBag 1
    .endm

    .macro GetSelectedItem destVar
    .short SCRCMD_GETSELECTEDITEM
    .short \destVar
    .endm

    .macro CheckPocketHasItems pocketID, destVar
    .short SCRCMD_CHECKPOCKETHASITEMS
    .short \pocketID
    .short \destVar
    .endm

    .macro BufferBerryName templateArg, item, unused=VAR_0x8001
    .short SCRCMD_BUFFERBERRYNAME
    .byte \templateArg
    .short \item
    .short \unused
    .endm

    .macro BufferNatureName templateArg, nature
    .short SCRCMD_BUFFERNATURENAME
    .byte \templateArg
    .short \nature
    .endm

    .macro GetBerryGrowthStage destVar
    .short SCRCMD_GETBERRYGROWTHSTAGE
    .short \destVar
    .endm

    .macro GetBerryItemID destVar
    .short SCRCMD_GETBERRYITEMID
    .short \destVar
    .endm

    .macro GetBerryMulchType destVar
    .short SCRCMD_GETBERRYMULCHTYPE
    .short \destVar
    .endm

    .macro GetBerryMoisture destVar
    .short SCRCMD_GETBERRYMOISTURE
    .short \destVar
    .endm

    .macro GetBerryYield destVar
    .short SCRCMD_GETBERRYYIELD
    .short \destVar
    .endm

    .macro SetBerryMulch mulchItemID
    .short SCRCMD_SETBERRYMULCH
    .short \mulchItemID
    .endm

    .macro PlantBerry berryItemID
    .short SCRCMD_PLANTBERRY
    .short \berryItemID
    .endm

    .macro SetBerryWateringState state
    .short SCRCMD_SETBERRYWATERINGSTATE
    .short \state
    .endm

    .macro HarvestBerry
    .short SCRCMD_HARVESTBERRY
    .endm

    .macro SetObjectEventPos localID, x, z
    .short SCRCMD_SETOBJECTEVENTPOS
    .short \localID
    .short \x
    .short \z
    .endm

    .macro SetPosition localID, x, y, z, dir
    .short SCRCMD_SETPOSITION
    .short \localID
    .short \x
    .short \y
    .short \z
    .short \dir
    .endm

    .macro SetObjectEventMovementType localID, movementType
    .short SCRCMD_SETOBJECTEVENTMOVEMENTTYPE
    .short \localID
    .short \movementType
    .endm

    .macro SetObjectEventDir localID, dir
    .short SCRCMD_SETOBJECTEVENTDIR
    .short \localID
    .short \dir
    .endm

    .macro SetWarpEventPos index, x, z
    .short SCRCMD_SETWARPEVENTPOS
    .short \index
    .short \x
    .short \z
    .endm

    .macro SetBgEventPos index, x, z
    .short SCRCMD_SETBGEVENTPOS
    .short \index
    .short \x
    .short \z
    .endm

    .macro ScrCmd_18C localID, dir
    .short SCRCMD_18C
    .short \localID
    .short \dir
    .endm

    .macro ShowSavingIcon
    .short SCRCMD_SHOWSAVINGICON
    .endm

    .macro HideSavingIcon
    .short SCRCMD_HIDESAVINGICON
    .endm

    .macro StoreSaveResult result
    .short SCRCMD_STORESAVERESULT
    .short \result
    .endm

    .macro WaitABPressTime frames
    .short SCRCMD_WAITABPRESSTIME
    .short \frames
    .endm

    .macro SelectMoveTutorPokemon
    .short SCRCMD_SELECTMOVETUTORPOKEMON
    .endm

    .macro OpenPartyMenuForUnionRoomBattle
    .short SCRCMD_OPENPARTYMENUFORUNIONROOMBATTLE
    .endm

    .macro SelectPokemonForUnionRoomBattle
    OpenPartyMenuForUnionRoomBattle
    ReturnToField
    .endm

    .macro GetSelectedPartySlot destVar
    .short SCRCMD_GETSELECTEDPARTYSLOT
    .short \destVar
    .endm

    .macro OpenPartyMenuForContest partySlot, contestRank, contestType, useDefaultContestRank
    .short SCRCMD_OPENPARTYMENUFORCONTEST
    .short \partySlot
    .short \contestRank
    .short \contestType
    .short \useDefaultContestRank
    .endm

    .macro TryEnterContestMon partySlot, menuItemSelection
    .short SCRCMD_TRYENTERCONTESTMON
    .short \partySlot
    .short \menuItemSelection
    .endm

    .macro SetMonSummary partySlot
    .short SCRCMD_SETMONSUMMARY
    .short \partySlot
    .endm

    .macro GetMonPartySlot partySlot
    .short SCRCMD_GETMONPARTYSLOT
    .short \partySlot
    .endm

    .macro GetPartyMonSpecies partySlot, destVar
    .short SCRCMD_GETPARTYMONSPECIES
    .short \partySlot
    .short \destVar
    .endm

    .macro CheckIsPartyMonOutsider slot, destVar
    .short SCRCMD_CHECKISPARTYMONOUTSIDER
    .short \slot
    .short \destVar
    .endm

    .macro CountPartyNonEggs destVarID
    .short SCRCMD_COUNTPARTYNONEGGS
    .short \destVarID
    .endm

    // Counts alive mons in the party and stores the result in the destVar,
    // but excludes the one at the party slot provided.
    .macro CountAliveMonsExcept destVarID, partySlot
    .short SCRCMD_COUNTALIVEMONSEXCEPT
    .short \destVarID
    .short \partySlot
    .endm

    .macro CountAliveMonsAndBoxMons destVar
    .short SCRCMD_COUNTALIVEMONSANDBOXMONS
    .short \destVar
    .endm

    .macro CountPartyEggs destVar
    .short SCRCMD_COUNTPARTYEGGS
    .short \destVar
    .endm

    .macro Dummy19E vendorType, destVar
    .short SCRCMD_DUMMY19E
    .short \vendorType
    .short \destVar
    .endm

    .macro UndergroundNPCMessage messageID
    .short SCRCMD_UNDERGROUNDNPCMESSAGE
    .short \messageID
    .endm

    .macro CloseUndergroundNPCMessage
    .short SCRCMD_CLOSEUNDERGROUNDNPCMESSAGE
    .endm

    .macro BufferTreasureNameForUndergroundVendor_Unused templateArg, treasureID
    .short SCRCMD_BUFFERTREASURENAMEFORUNDERGROUNDVENDOR_UNUSED
    .byte \templateArg
    .short \treasureID
    .endm

    .macro BufferTrapNameForUndergroundVendor_Unused templateArg, trapID
    .short SCRCMD_BUFFERTRAPNAMEFORUNDERGROUNDVENDOR_UNUSED
    .byte \templateArg
    .short \trapID
    .endm

    .macro RemoveMoney2 valueOrVarID
    .short SCRCMD_REMOVEMONEY2
    .short \valueOrVarID
    .endm

    .macro MoveMonToPartyFromDaycareSlot destVarSpecies, daycareSlot
    .short SCRCMD_MOVEMONTOPARTYFROMDAYCARESLOT
    .short \destVarSpecies
    .short \daycareSlot
    .endm

    .macro Dummy1A5 dummy
    .short SCRCMD_DUMMY1A5
    .short \dummy
    .endm

    .macro Dummy1A6
    .short SCRCMD_DUMMY1A6
    .endm

    .macro Dummy1A7
    .short SCRCMD_DUMMY1A7
    .endm

    .macro ResetDaycarePersonalityAndStepCounter
    .short SCRCMD_RESETDAYCAREPERSONALITYANDSTEPCOUNTER
    .endm

    .macro GiveEggFromDaycare
    .short SCRCMD_GIVEEGGFROMDAYCARE
    .endm

    .macro BufferDaycarePriceBySlot destVar, daycareSlot
    .short SCRCMD_BUFFERDAYCAREPRICEBYSLOT
    .short \destVar
    .short \daycareSlot
    .endm

    .macro CheckMoney2 destVar, valueOrVarID
    .short SCRCMD_CHECKMONEY2
    .short \destVar
    .short \valueOrVarID
    .endm

    .macro HatchEgg
    .short SCRCMD_HATCHEGG
    .endm

    .macro Dummy1AD dummy
    .short SCRCMD_DUMMY1AD
    .short \dummy
    .endm

    .macro BufferDaycareGainedLevelsBySlot destVar, daycareSlot
    .short SCRCMD_BUFFERDAYCAREGAINEDLEVELSBYSLOT
    .short \destVar
    .short \daycareSlot
    .endm

    .macro BufferPartyMonNicknameReturnSpecies unused, partySlot, destVar
    .short SCRCMD_BUFFERPARTYMONNICKNAMERETURNSPECIES
    .short \unused
    .short \partySlot
    .short \destVar
    .endm

    .macro StorePartyMonIntoDaycare partySlot
    .short SCRCMD_STOREPARTYMONINTODAYCARE
    .short \partySlot
    .endm

    .macro ShowObject localID
    .short SCRCMD_SHOWOBJECT
    .short \localID
    .endm

    .macro HideObject localID
    .short SCRCMD_HIDEOBJECT
    .short \localID
    .endm

    .macro ScrCmd_1B3
    .short SCRCMD_1B3
    .endm

    .macro CountMailInMailbox destVar
    .short SCRCMD_COUNTMAILINMAILBOX
    .short \destVar
    .endm

    .macro StartRankingsMachine machineID
    .short SCRCMD_STARTRANKINGSMACHINE
    .short \machineID
    .endm

    .macro GetTimeOfDay destVarID
    .short SCRCMD_GETTIMEOFDAY
    .short \destVarID
    .endm

    /*
     * Get a random number from 0 to (upperBound - 1) and store the result in
     * a destination variable. For example, specifying upperBound = 5 will yield
     * one of 0, 1, 2, 3, or 4.
     */
    .macro GetRandom destVarID, upperBound
    .short SCRCMD_GETRANDOM
    .short \destVarID
    .short \upperBound
    .endm

    /* Functionally identical to GetRandom. */
    .macro GetRandom2 destVarID, upperBound
    .short SCRCMD_GETRANDOM2
    .short \destVarID
    .short \upperBound
    .endm

    .macro GetPartyMonFriendship destVar, partySlot
    .short SCRCMD_GETPARTYMONFRIENDSHIP
    .short \destVar
    .short \partySlot
    .endm

    .macro IncreasePartyMonFriendship value, slot
    .short SCRCMD_INCREASEPARTYMONFRIENDSHIP
    .short \value
    .short \slot
    .endm

    .macro DecreasePartyMonFriendship_Unused value, slot
    .short SCRCMD_DECREASEPARTYMONFRIENDSHIP_UNUSED
    .short \value
    .short \slot
    .endm

    .macro BufferDaycareNicknameLevelGender templateArgNickname, templateArgLevel, templateArgGender, daycareSlot
    .short SCRCMD_BUFFERDAYCARENICKNAMELEVELGENDER
    .short \templateArgNickname
    .short \templateArgLevel
    .short \templateArgGender
    .short \daycareSlot
    .endm

    .macro GetPlayerDir destVarID
    .short SCRCMD_GETPLAYERDIR
    .short \destVarID
    .endm

    .macro GetDaycareCompatibilityLevel destVar
    .short SCRCMD_GETDAYCARECOMPATIBILITYLEVEL
    .short \destVar
    .endm

    .macro CheckDaycareHasEgg destVar
    .short SCRCMD_CHECKDAYCAREHASEGG
    .short \destVar
    .endm

    // Saves TRUE or FALSE into a var depending if the player
    // has the specified Pokémon in their party.
    .macro CheckPartyHasSpecies destVarID, species
    .short SCRCMD_CHECKPARTYHASSPECIES
    .short \destVarID
    .short \species
    .endm

    .macro CalcSizeContestResult destVar, partySlot
    .short SCRCMD_CALCSIZECONTESTRESULT
    .short \destVar
    .short \partySlot
    .endm

    .macro UpdateSizeContestRecord partySlot
    .short SCRCMD_UPDATESIZECONTESTRECORD
    .short \partySlot
    .endm

    .macro BufferPartyPokemonSize intPartIdx, fracPartIdx, partySlot
    .short SCRCMD_BUFFERPARTYPOKEMONSIZE
    .short \intPartIdx
    .short \fracPartIdx
    .short \partySlot
    .endm

    .macro BufferSizeContestRecord intPartIdx, fracPartIdx, species
    .short SCRCMD_BUFFERSIZECONTESTRECORD
    .short \intPartIdx
    .short \fracPartIdx
    .short \species
    .endm

    .macro InitSizeContestRecord
    .short SCRCMD_INITSIZECONTESTRECORD
    .endm

    .macro SelectPartyMonMove partySlot
    .short SCRCMD_SELECTPARTYMONMOVE
    .short \partySlot
    .endm

    .macro GetSelectedPartyMonMove destVarID
    .short SCRCMD_GETSELECTEDPARTYMONMOVE
    .short \destVarID
    .endm

    .macro GetPartyMonMoveCount destVar, partySlot
    .short SCRCMD_GETPARTYMONMOVECOUNT
    .short \destVar
    .short \partySlot
    .endm

    .macro ClearPartyMonMoveSlot partySlot, moveSlot
    .short SCRCMD_CLEARPARTYMONMOVESLOT
    .short \partySlot
    .short \moveSlot
    .endm

    .macro GetPartyMonMove destVar, partySlot, moveSlot
    .short SCRCMD_GETPARTYMONMOVE
    .short \destVar
    .short \partySlot
    .short \moveSlot
    .endm

    .macro BufferPartyMoveName templateArg, partySlot, moveSlot
    .short SCRCMD_BUFFERPARTYMOVENAME
    .byte \templateArg
    .short \partySlot
    .short \moveSlot
    .endm

    .macro GiveJournal
    .short SCRCMD_GIVEJOURNAL
    .endm

    .macro CreateJournalEvent eventType, eventParam, unused1, unused2, unused3
    .short SCRCMD_CREATEJOURNALEVENT
    .short \eventType
    .short \eventParam
    .short \unused1
    .short \unused2
    .short \unused3
    .endm

    .macro ScrCmd_Unused_1CE
    .short SCRCMD_UNUSED_1CE
    .endm

    .macro Strength mode, checkDestVarID=0
    .short SCRCMD_STRENGTH
    .byte \mode
    .if \mode == 2
        .short \checkDestVarID
    .endif
    .endm

    .macro Flash mode, checkDestVarID=0
    .short SCRCMD_FLASH
    .byte \mode
    .if \mode == 2
        .short \checkDestVarID
    .endif
    .endm

    .macro Defog mode, checkDestVarID=0
    .short SCRCMD_DEFOG
    .byte \mode
    .if \mode == 2
        .short \checkDestVarID
    .endif
    .endm

    .macro AddAccessory accessoryID, amount
    .short SCRCMD_ADDACCESSORY
    .short \accessoryID
    .short \amount
    .endm

    // destVarID will be set to TRUE if the player has space for at least 'count' accessories of the specified type in their bag
    .macro CanFitAccessory accessory, count, destVarID
    .short SCRCMD_CANFITACCESSORY
    .short \accessory
    .short \count
    .short \destVarID
    .endm

    .macro ScrCmd_Unused_1D4 arg0, arg1, arg2
    .short SCRCMD_UNUSED_1D4
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro AddContestBackdrop backdropID
    .short SCRCMD_ADDCONTESTBACKDROP
    .short \backdropID
    .endm

    // destVarID will be set to TRUE if the player has the specified backdrop
    .macro CheckBackdrop backdrop, destVar
    .short SCRCMD_CHECKBACKDROP
    .short \backdrop
    .short \destVar
    .endm

    .macro ScrCmd_1D7 arg0
    .short SCRCMD_1D7
    .short \arg0
    .endm

    .macro ScrCmd_1D8 arg0
    .short SCRCMD_1D8
    .short \arg0
    .endm

    .macro ScrCmd_1D9 arg0, arg1
    .short SCRCMD_1D9
    .short \arg0
    .short \arg1
    .endm

    .macro SetBattleTowerNull
    .short SCRCMD_SETBATTLETOWERNULL
    .endm

    .macro InitBattleTower arg0, challengeMode
    .short SCRCMD_INITBATTLETOWER
    .short \arg0
    .short \challengeMode
    .endm

    .macro FreeBattleTower
    .short SCRCMD_FREEBATTLETOWER
    .endm

    .macro CallBattleTowerFunction functionIndex, functionArgument, destVar
    .short SCRCMD_CALLBATTLETOWERFUNCTION
    .short \functionIndex
    .short \functionArgument
    .short \destVar
    .endm

    .macro GetBattleTowerPartnerSpeciesAndMove partnerID, monID, destVar1, destVar2
    .short SCRCMD_GETBATTLETOWERPARTNERSPECIESANDMOVE
    .short \partnerID
    .short \monID
    .short \destVar1
    .short \destVar2
    .endm

    .macro ScrCmd_1DF arg0
    .short SCRCMD_1DF
    .short \arg0
    .endm

    .macro ScrCmd_1E0 arg0
    .short SCRCMD_1E0
    .short \arg0
    .endm

    .macro ScrCmd_1E1 arg0, arg1, arg2
    .short SCRCMD_1E1
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1E2 arg0, arg1
    .short SCRCMD_1E2
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1E3 arg0, arg1
    .short SCRCMD_1E3
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1E4 arg0
    .short SCRCMD_1E4
    .short \arg0
    .endm

    .macro IncrementGameRecord recordID
    .short SCRCMD_INCREMENTGAMERECORD
    .short \recordID
    .endm

    .macro ScrCmd_Unused_1E6 arg0, arg1, arg2
    .short SCRCMD_UNUSED_1E6
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_Unused_1E7 arg0, arg1, arg2, arg3
    .short SCRCMD_UNUSED_1E7
    .short \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro CheckLocalDexCompleted destVar
    .short SCRCMD_CHECKLOCALDEXCOMPLETED
    .short \destVar
    .endm

    .macro CheckNationalDexCompleted destVar
    .short SCRCMD_CHECKNATIONALDEXCOMPLETED
    .short \destVar
    .endm

    .macro ShowDiplomaSinnoh
    .short SCRCMD_SHOWDIPLOMASINNOH
    .endm

    .macro ShowDiplomaNationalDex
    .short SCRCMD_SHOWDIPLOMANATIONALDEX
    .endm

    .macro AddTrophyGardenMon
    .short SCRCMD_ADDTROPHYGARDENMON
    .endm

    .macro GetTrophyGardenSlot1Species destVar
    .short SCRCMD_GETTROPHYGARDENSLOT1SPECIES
    .short \destVar
    .endm

    .macro GetPartyMonHeldItem_Unused destVar, slot
    .short SCRCMD_GETPARTYMONHELDITEM_UNUSED
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_Unused_1EF arg0
    .short SCRCMD_UNUSED_1EF
    .short \arg0
    .endm

    .macro DeletePartyMonHeldItem_Unused slot
    .short SCRCMD_DELETEPARTYMONHELDITEM_UNUSED
    .short \slot
    .endm

    .macro GetFossilCount destVar
    .short SCRCMD_GETFOSSILCOUNT
    .short \destVar
    .endm

    .macro ScrCmd_Dummy_1F2
    .short SCRCMD_DUMMY_1F2
    .endm

    .macro ScrCmd_Dummy_1F3
    .short SCRCMD_DUMMY_1F3
    .endm

    .macro GetSpeciesFromFossil speciesVar, itemVar
    .short SCRCMD_GETSPECIESFROMFOSSIL
    .short \speciesVar
    .short \itemVar
    .endm

    .macro FindFossilAtThreshold itemVar, thresholdVar, thresholdValue
    .short SCRCMD_FINDFOSSILATTHRESHOLD
    .short \itemVar
    .short \thresholdVar
    .short \thresholdValue
    .endm

    .macro CountPartyMonsBelowLevelThreshold destVar, threshold
    .short SCRCMD_COUNTPARTYMONSBELOWLEVELTHRESHOLD
    .short \destVar
    .short \threshold
    .endm

    .macro SurvivePoison destVarID, partySlot
    .short SCRCMD_SURVIVEPOISON
    .short \destVarID
    .short \partySlot
    .endm

    .macro WaitForTransition
    .short SCRCMD_WAITFORTRANSITION
    .endm

    // this is a dummy function that doesn't do anything
    .macro Dummy1F9 dummy
    .short SCRCMD_DUMMY1F9
    .short \dummy
    .endm

    .macro MessageFromBankInstant bankID, messageID
    .short SCRCMD_MESSAGEFROMBANKINSTANT
    .short \bankID
    .short \messageID
    .endm

    .macro MessageFromBank bankID, messageID
    .short SCRCMD_MESSAGEFROMBANK
    .short \bankID
    .short \messageID
    .endm

    .macro SentenceInstant sentenceType, sentenceID, word1, word2
    .short SCRCMD_SENTENCEINSTANT
    .short \sentenceType
    .short \sentenceID
    .short \word1
    .short \word2
    .endm

    .macro Sentence sentenceType, sentenceID, word1, word2
    .short SCRCMD_SENTENCE
    .short \sentenceType
    .short \sentenceID
    .short \word1
    .short \word2
    .endm

    .macro PrintBattleTowerIntroMessage opponentID
    .short SCRCMD_PRINTBATTLETOWERINTROMESSAGE
    .byte \opponentID
    .endm

    .macro MessageSeenBanlistSpecies banlistMsgStartIdx, numPokemonRequired
    .short SCRCMD_MESSAGESEENBANLISTSPECIES
    .byte \banlistMsgStartIdx
    .short \numPokemonRequired
    .short 0
    .byte 0
    .endm

    .macro GetPreviousMapID destVarID
    .short SCRCMD_GETPREVIOUSMAPID
    .short \destVarID
    .endm

    .macro GetCurrentMapID destVarID
    .short SCRCMD_GETCURRENTMAPID
    .short \destVarID
    .endm

    .macro StartEndSafariGame activeState
    .short SCRCMD_STARTENDSAFARIGAME
    .byte \activeState
    .endm

    .macro StartSafariGame
    StartEndSafariGame SAFARI_GAME_ACTIVE
    .endm

    .macro EndSafariGame
    StartEndSafariGame SAFARI_GAME_INACTIVE
    .endm

    .macro ScrCmd_203 arg0, arg1, arg2, arg3, arg4
    .short SCRCMD_203
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_204
    .short SCRCMD_204
    .endm

    .macro ScrCmd_205
    .short SCRCMD_205
    .endm

    .macro StartGreatMarshLookout
    .short SCRCMD_STARTGREATMARSHLOOKOUT
    .endm

    .macro GetCurNetID destVarID
    .short SCRCMD_GETCURNETID
    .short \destVarID
    .endm

    .macro DrawPokemonPreview species, gender
    .short SCRCMD_DRAWPOKEMONPREVIEW
    .short \species
    .short \gender
    .endm

    .macro RemovePokemonPreview
    .short SCRCMD_REMOVEPOKEMONPREVIEW
    .endm

    .macro ScrCmd_20A arg0
    .short SCRCMD_20A
    .short \arg0
    .endm

    .macro ScrCmd_20B
    .short SCRCMD_20B
    .endm

    .macro MessageFromTrainerType
    .short SCRCMD_MESSAGEFROMTRAINERTYPE
    .endm

    .macro ScrCmd_20D arg0, arg1
    .short SCRCMD_20D
    .byte \arg0
    .short \arg1
    .endm

    .macro InitGreatMarshTram
    .short SCRCMD_INITGREATMARSHTRAM
    .endm

    .macro MoveGreatMarshTram location, movementType
    .short SCRCMD_MOVEGREATMARSHTRAM
    .short \location
    .short \movementType
    .endm

    .macro CheckGreatMarshTramLocation location, destVar
    .short SCRCMD_CHECKGREATMARSHTRAMLOCATION
    .short \location
    .short \destVar
    .endm

    .macro SetPlayerHeightCalculationEnabled heightCalculationEnabled
    .short SCRCMD_SETPLAYERHEIGHTCALCULATIONENABLED
    .byte \heightCalculationEnabled
    .endm

    .macro GetPartyMonNature destVar, slot
    .short SCRCMD_GETPARTYMONNATURE
    .short \destVar
    .short \slot
    .endm

    .macro FindPartySlotWithNature destVar, nature
    .short SCRCMD_FINDPARTYSLOTWITHNATURE
    .short \destVar
    .short \nature
    .endm

    .macro GetSpiritombCounter destVarID
    .short SCRCMD_GETSPIRITOMBCOUNTER
    .short \destVarID
    .endm

    .macro ClearAmitySquareStepCount
    .short SCRCMD_CLEARAMITYSQUARESTEPCOUNT
    .endm

    .macro GetAmitySquareStepCount destVarID
    .short SCRCMD_GETAMITYSQUARESTEPCOUNT
    .short \destVarID
    .endm

    .macro CalcAmitySquareFoundAccessory destFoundAccessoryID, followerSpecies
    .short SCRCMD_CALCAMITYSQUAREFOUNDACCESSORY
    .short \destFoundAccessoryID
    .short \followerSpecies
    .endm

    .macro GetRandomSeenSpecies destVar
    .short SCRCMD_GETRANDOMSEENSPECIES
    .short \destVar
    .endm

    .macro SetNewsPressDeadline deadlineInDays
    .short SCRCMD_SETNEWSPRESSDEADLINE
    .short \deadlineInDays
    .endm

    .macro GetNewsPressDeadline destVarID
    .short SCRCMD_GETNEWSPRESSDEADLINE
    .short \destVarID
    .endm

    .macro EnableSwarms
    .short SCRCMD_ENABLESWARMS
    .endm

    .macro ActivateRoamingPokemon slot
    .short SCRCMD_ACTIVATEROAMINGPOKEMON
    .byte \slot
    .endm

    .macro ScrCmd_21D arg0, arg1=0, arg2=0
    .short SCRCMD_21D
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
    .short SCRCMD_DUMMY21E
    .endm

    .macro CheckHasLearnableReminderMoves destVar, partySlot
    .short SCRCMD_CHECKHASLEARNABLEREMINDERMOVES
    .short \destVar
    .short \partySlot
    .endm

    .macro ScrCmd_220
    .short SCRCMD_220
    .endm

    .macro OpenMoveReminderMenu partySlot
    .short SCRCMD_OPENMOVEREMINDERMENU
    .short \partySlot
    .endm

    .macro ScrCmd_222
    .short SCRCMD_222
    .endm

    .macro CheckLearnedReminderMove destVar
    .short SCRCMD_CHECKLEARNEDREMINDERMOVE
    .short \destVar
    .endm

    .macro OpenMoveTutorMenu partySlot, move
    .short SCRCMD_OPENMOVETUTORMENU
    .short \partySlot
    .short \move
    .endm

    .macro CheckLearnedTutorMove destVar
    .short SCRCMD_CHECKLEARNEDTUTORMOVE
    .short \destVar
    .endm

    .macro InitNPCTrade npcTradeID
    .short SCRCMD_INITNPCTRADE
    .byte \npcTradeID
    .endm

    .macro GetNPCTradeSpecies destVar
    .short SCRCMD_GETNPCTRADESPECIES
    .short \destVar
    .endm

    .macro GetNPCTradeRequestedSpecies destVar
    .short SCRCMD_GETNPCTRADEREQUESTEDSPECIES
    .short \destVar
    .endm

    .macro StartNPCTrade partySlot
    .short SCRCMD_STARTNPCTRADE
    .short \partySlot
    .endm

    .macro FinishNPCTrade
    .short SCRCMD_FINISHNPCTRADE
    .endm

    .macro TurnOnPokedexLanguageDetection
    .short SCRCMD_TURNONPOKEDEXLANGUAGEDETECTION
    .endm

    .macro TurnOnPokedexFormDetection
    .short SCRCMD_TURNONPOKEDEXFORMDETECTION
    .endm

    .macro GetSetNationalDexEnabled getSet, destVar
    .short SCRCMD_GETSETNATIONALDEXENABLED
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
    .short SCRCMD_COUNTPARTYMONRIBBONS_UNUSED
    .short \destVar
    .short \slot
    .endm

    .macro CountPartyRibbons destVar
    .short SCRCMD_COUNTPARTYRIBBONS
    .short \destVar
    .endm

    .macro GetPartyMonRibbon destVar, partySlot, ribbonID
    .short SCRCMD_GETPARTYMONRIBBON
    .short \destVar
    .short \partySlot
    .short \ribbonID
    .endm

    .macro SetPartyMonRibbon partySlot, ribbonID
    .short SCRCMD_SETPARTYMONRIBBON
    .short \partySlot
    .short \ribbonID
    .endm

    .macro BufferRibbonName templateArg, ribbonID
    .short SCRCMD_BUFFERRIBBONNAME
    .byte \templateArg
    .short \ribbonID
    .endm

    .macro GetPartyMonEVTotal destVar, partySlot
    .short SCRCMD_GETPARTYMONEVTOTAL
    .short \destVar
    .short \partySlot
    .endm

    .macro GetDayOfWeek destVarID
    .short SCRCMD_GETDAYOFWEEK
    .short \destVarID
    .endm

    .macro CallTVBroadcast callID, arg1=0, arg2=0, arg3=0
    .short SCRCMD_CALLTVBROADCAST
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
    .short SCRCMD_236
    .short \arg0
    .endm

    .macro CallTVInterview callID, interviewSegmentID, arg2, arg3
    .short SCRCMD_CALLTVINTERVIEW
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
    .short SCRCMD_CHECKTVINTERVIEWELIGIBLE
    .short \interviewSegmentID
    .short \destVar
    .endm

    .macro ScrCmd_239 arg0
    .short SCRCMD_239
    .short \arg0
    .endm

    .macro GetPartyMonFootprintType hasPrintVar, printTypeVar, partySlot
    .short SCRCMD_GETPARTYMONFOOTPRINTTYPE
    .short \hasPrintVar
    .short \printTypeVar
    .short \partySlot
    .endm

    .macro PlayPokecenterHealingAnimation pokeballCount
    .short SCRCMD_PLAYPOKECENTERHEALINGANIMATION
    .short \pokeballCount
    .endm

    .macro PlayElevatorAnimation elevatorDir, loopCount
    .short SCRCMD_PLAYELEVATORANIMATION
    .short \elevatorDir
    .short \loopCount
    .endm

    .macro PlayBoatCutscene travelDir, exitDir, mapID, x, z
    .short SCRCMD_PLAYBOATCUTSCENE
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
    .short SCRCMD_MYSTERYGIFTGIVE
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
    .short SCRCMD_DUMMY23F
    .endm

    .macro Dummy240
    .short SCRCMD_DUMMY240
    .endm

    .macro Dummy241
    .short SCRCMD_DUMMY241
    .endm

    .macro Dummy242
    .short SCRCMD_DUMMY242
    .endm

    .macro ChooseCustomMessageWord unused, resultVar, destVar
    .short SCRCMD_CHOOSECUSTOMMESSAGEWORD
    .short \unused
    .short \resultVar
    .short \destVar
    .endm

    .macro ChooseTwoCustomMessageWords unused, resultVar, destVar1, destVar2
    .short SCRCMD_CHOOSETWOCUSTOMMESSAGEWORDS
    .short \unused
    .short \resultVar
    .short \destVar1
    .short \destVar2
    .endm

    .macro BufferCustomMessageWord idx, customMessageWord
    .short SCRCMD_BUFFERCUSTOMMESSAGEWORD
    .short \idx
    .short \customMessageWord
    .endm

    .macro GetGameVersion destVar
    .short SCRCMD_GETGAMEVERSION
    .short \destVar
    .endm

    .macro GetFirstNonEggInParty partySlot
    .short SCRCMD_GETFIRSTNONEGGINPARTY
    .short \partySlot
    .endm

    .macro GetPartyMonType type1DestVar, type2DestVar, slot
    .short SCRCMD_GETPARTYMONTYPE
    .short \type1DestVar
    .short \type2DestVar
    .short \slot
    .endm

    .macro GetWallpaperFromCustomMessageWords destVar, customMessageWord1, customMessageWord2, customMessageWord3, customMessageWord4
    .short SCRCMD_GETWALLPAPERFROMCUSTOMMESSAGEWORDS
    .short \destVar
    .short \customMessageWord1
    .short \customMessageWord2
    .short \customMessageWord3
    .short \customMessageWord4
    .endm

    .macro GetCapturedFlagCount destFlagCount
    .short SCRCMD_GETCAPTUREDFLAGCOUNT
    .short \destFlagCount
    .endm

    .macro LoadPCAnimation tag
    .short SCRCMD_LOADPCANIMATION
    .byte \tag
    .endm

    .macro PlayPCBootUpAnimation tag
    .short SCRCMD_PLAYPCBOOTUPANIMATION
    .byte \tag
    .endm

    .macro PlayPCShutDownAnimation tag
    .short SCRCMD_PLAYPCSHUTDOWNANIMATION
    .byte \tag
    .endm

    .macro GetJubilifeLotteryTrainerID destVarID
    .short SCRCMD_GETJUBILIFELOTTERYTRAINERID
    .short \destVarID
    .endm

    .macro CheckForJubilifeLotteryWinner winningPokemonIndex, highestMatchedDigits, isResultInBox, winningLotteryId
    .short SCRCMD_CHECKFORJUBILIFELOTTERYWINNER
    .short \winningPokemonIndex
    .short \highestMatchedDigits
    .short \isResultInBox
    .short \winningLotteryId
    .endm

    .macro RandomizeJubilifeLottery
    .short SCRCMD_RANDOMIZEJUBILIFELOTTERY
    .endm

    .macro BufferMonNicknameFromPC templateArg, boxSlotIndex
    .short SCRCMD_BUFFERMONNICKNAMEFROMPC
    .byte \templateArg
    .short \boxSlotIndex
    .endm

    .macro GetPCBoxesFreeSlotCount destVar
    .short SCRCMD_GETPCBOXESFREESLOTCOUNT
    .short \destVar
    .endm

    .macro SetClearInCatchingShowFlag getClear
    .short SCRCMD_SETCLEARINCATCHINGSHOWFLAG
    .short \getClear
    .endm

    .macro SetInCatchingShowFlag
    SetClearInCatchingShowFlag 0
    .endm

    .macro ClearInCatchingShowFlag
    SetClearInCatchingShowFlag 1
    .endm

    .macro CheckHasEnoughMonForCatchingShow destVar
    .short SCRCMD_CHECKHASENOUGHMONFORCATCHINGSHOW
    .short \destVar
    .endm

    .macro GoToIfNotEnoughMonForCatchingShow offset
    CheckHasEnoughMonForCatchingShow VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro MoveCatchingShowMonsToPCBoxes
    .short SCRCMD_MOVECATCHINGSHOWMONSTOPCBOXES
    .endm

    .macro CalcCatchingShowPoints pointsCategory, destVarID
    .short SCRCMD_CALCCATCHINGSHOWPOINTS
    .short \pointsCategory
    .short \destVarID
    .endm

    .macro ShowAccessoryShop
    .short SCRCMD_SHOWACCESSORYSHOP
    .endm

    .macro ScrCmd_258
    .short SCRCMD_258
    .endm

    .macro ScrCmd_259
    .short SCRCMD_259
    .endm

    .macro PlayHallOfFameHealingAnimation pokeballCount
    .short SCRCMD_PLAYHALLOFFAMEHEALINGANIMATION
    .short \pokeballCount
    .endm

    .macro InitPersistedMapFeaturesForPlatformLift
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORPLATFORMLIFT
    .endm

    .macro TriggerPlatformLift
    .short SCRCMD_TRIGGERPLATFORMLIFT
    .endm

    .macro CheckPlatformLiftNotUsedWhenEnteredMap destVarID
    .short SCRCMD_CHECKPLATFORMLIFTNOTUSEDWHENENTEREDMAP
    .short \destVarID
    .endm

    .macro InitLakeGuardianContainmentUnits
    .short SCRCMD_INITLAKEGUARDIANCONTAINMENTUNITS
    .endm

    .macro DeactivateLakeGuardianContainmentUnits
    .short SCRCMD_DEACTIVATELAKEGUARDIANCONTAINMENTUNITS
    .endm

    .macro IncrementTrainerScore2 scoreID
    .short SCRCMD_INCREMENTTRAINERSCORE2
    .short \scoreID
    .endm

    .macro BufferAccessoryName templateArg, accessory
    .short SCRCMD_BUFFERACCESSORYNAME
    .byte \templateArg
    .short \accessory
    .endm

    // Like CheckPartyHasSpecies, but args are reversed and it checks the species inside eggs.
    // Since it's only used for Deoxys, no bugs manifest on vanilla.
    .macro CheckPartyHasSpecies2 species, destVarID
    .short SCRCMD_CHECKPARTYHASSPECIES2
    .short \species
    .short \destVarID
    .endm

    .macro ChangeDeoxysForm form
    .short SCRCMD_CHANGEDEOXYSFORM
    .short \form
    .endm

    .macro CheckPartyCombeeGenderCount destVar
    .short SCRCMD_CHECKPARTYCOMBEEGENDERCOUNT
    .short \destVar
    .endm

    .macro HidePoketch
    .short SCRCMD_HIDEPOKETCH
    .endm

    .macro ShowPoketch
    .short SCRCMD_SHOWPOKETCH
    .endm

    .macro ScrCmd_267 slotMachineID
    .short SCRCMD_267
    .short \slotMachineID
    .endm

    .macro GetHour destVar
    .short SCRCMD_GETHOUR
    .short \destVar
    .endm

    .macro ShakeObject localID, times, speed, xOffset, zOffset
    .short SCRCMD_SHAKEOBJECT
    .short \localID
    .short \times
    .short \speed
    .short \xOffset
    .short \zOffset
    .endm

    .macro FlickerObject localID, times, delay
    .short SCRCMD_FLICKEROBJECT
    .short \localID
    .short \times
    .short \delay
    .endm

    .macro CheckHasAllLegendaryTitansInParty destVar
    .short SCRCMD_CHECKHASALLLEGENDARYTITANSINPARTY
    .short \destVar
    .endm

    .macro TryGetRandomMassageGirlAccessory destAccessoryID
    .short SCRCMD_TRYGETRANDOMMASSAGEGIRLACCESSORY
    .short \destAccessoryID
    .endm

    .macro MessageUnown messageID
    .short SCRCMD_MESSAGEUNOWN
    .short \messageID
    .endm

    .macro GetGBACartridgeVersion destVarID
    .short SCRCMD_GETGBACARTRIDGEVERSION
    .short \destVarID
    .endm

    .macro ClearSpiritombCounter
    .short SCRCMD_CLEARSPIRITOMBCOUNTER
    .endm

    .macro SetHiddenLocation hiddenLocation, enable
    .short SCRCMD_SETHIDDENLOCATION
    .short \hiddenLocation
    .byte \enable
    .endm

    /* Enable a given hidden location */
    .macro EnableHiddenLocation hiddenLocation
    SetHiddenLocation \hiddenLocation, TRUE
    .endm

    /* Disable a given hidden location */
    .macro DisableHiddenLocation hiddenLocation
    SetHiddenLocation \hiddenLocation, FALSE
    .endm

    .macro OpenShayminTabletNamingScreen destVar
    .short SCRCMD_OPENSHAYMINTABLETNAMINGSCREEN
    .short \destVar
    .endm

    .macro BufferTabletName templateArg
    .short SCRCMD_BUFFERTABLETNAME
    .byte \templateArg
    .endm

    .macro BufferContestBackdropName arg0, arg1
    .short SCRCMD_BUFFERCONTESTBACKDROPNAME
    .byte \arg0
    .short \arg1
    .endm

    .macro HasCoinsFromValue varID, value
    .short SCRCMD_HASCOINSFROMVALUE
    .short \varID
    .long \value
    .endm

    /* Returns TRUE in destVarID if the player has won at least 10 consecutive bonus rounds */
    .macro CheckBonusRoundStreak destVarID
    .short SCRCMD_CHECKBONUSROUNDSTREAK
    .short \destVarID
    .endm

    .macro CheckCanAddCoins destVar, value
    .short SCRCMD_CHECKCANADDCOINS
    .short \destVar
    .short \value
    .endm

    .macro GoToIfCannotAddCoins amount, offset
    CheckCanAddCoins VAR_RESULT, \amount
    Noop
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro GetDailyRandomLevel destVarID
    .short SCRCMD_GETDAILYRANDOMLEVEL
    .short \destVarID
    .endm

    .macro GetPartyMonLevel destVar, slot
    .short SCRCMD_GETPARTYMONLEVEL
    .short \destVar
    .short \slot
    .endm

    /* Unused */
    .macro ScrCmd_RemoveAccessory accessoryID, amount
    .short SCRCMD_REMOVEACCESSORY
    .short \accessoryID
    .short \amount
    .endm

    .macro UseVistaLighthouseBinoculars
    .short SCRCMD_USEVISTALIGHTHOUSEBINOCULARS
    .endm

    .macro InitDailyRandomLevel
    .short SCRCMD_INITDAILYRANDOMLEVEL
    .endm

    .macro ScrCmd_27C arg0, arg1
    .short SCRCMD_27C
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_27D arg0, arg1
    .short SCRCMD_27D
    .short \arg0
    .short \arg1
    .endm

    /* Returns TRUE in destVarID if the player has bought at least 5 items at the Veilstone Department Store */
    .macro CheckIsDepartmentStoreRegular destVarID
    .short SCRCMD_CHECKISDEPARTMENTSTOREREGULAR
    .short \destVarID
    .endm

    .macro ScrCmd_27F arg0
    .short SCRCMD_27F
    .short \arg0
    .endm

    .macro BufferVarPaddingDigits templateArg, varID, paddingMode, maxDigits
    .short SCRCMD_BUFFERVARPADDINGDIGITS
    .byte \templateArg
    .short \varID
    .byte \paddingMode
    .byte \maxDigits
    .endm

    .macro GetPartyMonContestStat slot, contestType, destVar
    .short SCRCMD_GETPARTYMONCONTESTSTAT
    .short \slot
    .short \contestType
    .short \destVar
    .endm

    .macro CheckIsTodayPlayerBirthday destVar
    .short SCRCMD_CHECKISTODAYPLAYERBIRTHDAY
    .short \destVar
    .endm

    .macro SetInitialVolumeForSequence seqID, volume
    .short SCRCMD_SETINITIALVOLUMEFORSEQUENCE
    .short \seqID
    .short \volume
    .endm

    .macro GetUnownFormsSeenCount destVar
    .short SCRCMD_GETUNOWNFORMSSEENCOUNT
    .short \destVar
    .endm

    .macro InitTurnbackCave varPillarsSeen, varRoomsVisited
    .short SCRCMD_INITTURNBACKCAVE
    .short \varPillarsSeen
    .short \varRoomsVisited
    .endm

    .macro GetUndergroundItemsGivenAway destVarID
    .short SCRCMD_GETUNDERGROUNDITEMSGIVENAWAY
    .short \destVarID
    .endm

    .macro GetUndergroundFossilsUnearthed destVarID
    .short SCRCMD_GETUNDERGROUNDFOSSILSUNEARTHED
    .short \destVarID
    .endm

    .macro GetUndergroundTrapsSet destVarID
    .short SCRCMD_GETUNDERGROUNDTRAPSSET
    .short \destVarID
    .endm

    .macro GivePoffin destVar, spiciness, dryness, sweetness, bitterness, sourness, smoothness
    .short SCRCMD_GIVEPOFFIN
    .short \destVar
    .short \spiciness
    .short \dryness
    .short \sweetness
    .short \bitterness
    .short \sourness
    .short \smoothness
    .endm

    .macro CheckHasEmptyPoffinCaseSlot destVar
    .short SCRCMD_CHECKHASEMPTYPOFFINCASESLOT
    .short \destVar
    .endm

    /* Check if a given distribution event has been enabled and return the boolean-state in destVarID. */
    .macro CheckDistributionEvent eventID, destVarID
    .short SCRCMD_CHECKDISTRIBUTIONEVENT
    .byte \eventID /* Refer to generated/distrubtion_events.txt */
    .short \destVarID
    .endm

    .macro DrawPokemonPreviewFromPartySlot partySlot
    .short SCRCMD_DRAWPOKEMONPREVIEWFROMPARTYSLOT
    .short \partySlot
    .endm

    .macro ScrCmd_28D
    .short SCRCMD_28D
    .endm

    .macro ScrCmd_28E arg0
    .short SCRCMD_28E
    .short \arg0
    .endm

    .macro GetLeagueVictories arg0
    .short SCRCMD_GETLEAGUEVICTORIES
    .short \arg0
    .endm

    .macro OpenPartyMenuForDaycare partySlot
    .short SCRCMD_OPENPARTYMENUFORDAYCARE
    .short \partySlot
    .endm

    .macro ScrCmd_291 arg0, arg1
    .short SCRCMD_291
    .short \arg0
    .short \arg1
    .endm

    .macro CheckShouldShowGhost percentChance, destVar
    .short SCRCMD_CHECKSHOULDSHOWGHOST
    .byte \percentChance
    .short \destVar
    .endm

    .macro GetUndergroundTalkCounter destVarID
    .short SCRCMD_GETUNDERGROUNDTALKCOUNTER
    .short \destVarID
    .endm

    .macro ShowBattlePoints tilemapLeft, tilemapTop
    .short SCRCMD_SHOWBATTLEPOINTS
    .byte \tilemapLeft
    .byte \tilemapTop
    .endm

    .macro HideBattlePoints
    .short SCRCMD_HIDEBATTLEPOINTS
    .endm

    .macro UpdateBPDisplay
    .short SCRCMD_UPDATEBPDISPLAY
    .endm

    .macro GetBattlePoints destVar
    .short SCRCMD_GETBATTLEPOINTS
    .short \destVar
    .endm

    .macro GiveBattlePoints value
    .short SCRCMD_GIVEBATTLEPOINTS
    .short \value
    .endm

    .macro RemoveBattlePoints value
    .short SCRCMD_REMOVEBATTLEPOINTS
    .short \value
    .endm

    .macro CheckBattlePoints value, destVar
    .short SCRCMD_CHECKBATTLEPOINTS
    .short \value
    .short \destVar
    .endm

    .macro GetExchangeServiceCornerItemAndCost martID, prizeID, item, cost
    .short SCRCMD_GetExchangeServiceCornerItemAndCost
    .short \martID
    .short \prizeID
    .short \item
    .short \cost
    .endm

    .macro CalculateTrainerInfoAppearance variant, destVar
    .short SCRCMD_CALCULATETRAINERINFOAPPEARANCE
    .short \variant
    .short \destVar
    .endm

    .macro AddMenuEntry entryStringID, entryIndex
    .short SCRCMD_ADDMENUENTRY
    .short \entryStringID
    .short \entryIndex
    .endm

    .macro ScrCmd_29E arg0, arg1
    .short SCRCMD_29E
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_29F arg0
    .short SCRCMD_29F
    .short \arg0
    .endm

    .macro StartTagBattle partnerTrainer, enemyTrainer1, enemyTrainer2
    .short SCRCMD_STARTTAGBATTLE
    .short \partnerTrainer
    .short \enemyTrainer1
    .short \enemyTrainer2
    .endm

    .macro ScrCmd_Unused_2A1 arg0, arg1, arg2
    .short SCRCMD_UNUSED_2A1
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro TrySetUnusedCollectedOrbFlag item
    .short SCRCMD_TRYSETUNUSEDCOLLECTEDORBFLAG
    .short \item
    .endm

    .macro ScrCmd_2A3 arg0
    .short SCRCMD_2A3
    .short \arg0
    .endm

    .macro ScrCmd_2A4 arg0
    .short SCRCMD_2A4
    .short \arg0
    .endm

    .macro OpenPartyMenuForTrade
    .short SCRCMD_OPENPARTYMENUFORTRADE
    .endm

    .macro SelectPokemonToTrade
    OpenPartyMenuForTrade
    GetSelectedPartySlot VAR_RESULT
    ReturnToField
    .endm

    .macro GetGameCornerPrizeData index, item, price
    .short SCRCMD_GETGAMECORNERPRIZEDATA
    .short \index
    .short \item
    .short \price
    .endm

    .macro CheckItemIsPlate item, destVar
    .short SCRCMD_CHECKITEMISPLATE
    .short \item
    .short \destVar
    .endm

    .macro SubtractCoinsFromVar valueVar
    .short SCRCMD_SUBTRACTCOINSFROMVAR
    .short \valueVar
    .endm

    .macro SubtractCoins valueOrVarID
    .if ((\valueOrVarID >= VARS_START && \valueOrVarID <= VARS_END) || (\valueOrVarID >= SCRIPT_LOCAL_VARS_START && \valueOrVarID <= SCRIPT_LOCAL_VARS_END))
        SubtractCoinsFromVar \valueOrVarID
    .else
        SubtractCoinsFromValue \valueOrVarID
    .endif
    .endm

    .macro HasCoinsFromVar varID, valueVar
    .short SCRCMD_HASCOINSFROMVAR
    .short \varID
    .short \valueVar
    .endm

    .macro HasCoins varID, valueOrVarID
    .if ((\valueOrVarID >= VARS_START && \valueOrVarID <= VARS_END) || (\valueOrVarID >= SCRIPT_LOCAL_VARS_START && \valueOrVarID <= SCRIPT_LOCAL_VARS_END))
        HasCoinsFromVar \varID, \valueOrVarID
    .else
        HasCoinsFromValue \varID, \valueOrVarID
    .endif
    .endm

    .macro CheckIsMysteryGiftPhrase destVar, customMessageWord1, customMessageWord2, customMessageWord3, customMessageWord4
    .short SCRCMD_CHECKISMYSTERYGIFTPHRASE
    .short \destVar
    .short \customMessageWord1
    .short \customMessageWord2
    .short \customMessageWord3
    .short \customMessageWord4
    .endm

    .macro ScrCmd_2AB arg0
    .short SCRCMD_2AB
    .short \arg0
    .endm

    .macro UnlockMysteryGift
    .short SCRCMD_UNLOCKMYSTERYGIFT
    .endm

    .macro GetMovementType destVar, localID
    .short SCRCMD_GETMOVEMENTTYPE
    .short \destVar
    .short \localID
    .endm

    .macro IsSequencePlaying seqID, destVar
    .short SCRCMD_ISSEQUENCEPLAYING
    .short \seqID
    .short \destVar
    .endm

    .macro GetTrainerCasePlayerMessage destVar
    .short SCRCMD_GETTRAINERCASEPLAYERMESSAGE
    .short \destVar
    .endm

    .macro ScrCmd_2B0
    .short SCRCMD_2B0
    .endm

    .macro DestroyNetworkIcon
    .short SCRCMD_DESTROYNETWORKICON
    .endm

    .macro ScrCmd_2B2
    .short SCRCMD_2B2
    .endm

    .macro BufferBallSealName templateArg, ballSeal
    .short SCRCMD_BUFFERBALLSEALNAME
    .byte \templateArg
    .short \ballSeal
    .endm

    /* this is unused, but the underlying function is called from LockAll */
    .macro LockLastTalked
    .short SCRCMD_LOCKLASTTALKED
    .endm

    .macro ScrCmd_2B5 mapId, x, z
    .short SCRCMD_2B5
    .short \mapId
    .short \x
    .short \z
    .endm

    .macro ScrCmd_2B6 localID, arg1
    .short SCRCMD_2B6
    .short \localID
    .byte \arg1
    .endm

    .macro CheckPartyHasBadEgg destVar
    .short SCRCMD_CHECKPARTYHASBADEGG
    .short \destVar
    .endm

    .macro ScrCmd_2B8 arg0
    .short SCRCMD_2B8
    .short \arg0
    .endm

    .macro ShowUnionRoomMenu
    .short SCRCMD_SHOWUNIONROOMMENU
    .endm

    .macro ScrCmd_2BA arg0
    .short SCRCMD_2BA
    .short \arg0
    .endm

    .macro ScrCmd_2BB
    .short SCRCMD_2BB
    .endm

    .macro CheckDidNotCapture destVarID
    .short SCRCMD_CHECKDIDNOTCAPTURE
    .short \destVarID
    .endm

    .macro StartLegendaryBattle species, level
    .short SCRCMD_STARTLEGENDARYBATTLE
    .short \species
    .short \level
    .endm

    .macro GetTrainerCardLevel destVar
    .short SCRCMD_GETTRAINERCARDLEVEL
    .short \destVar
    .endm

    .macro SetCyclingBGM
    .short SCRCMD_SETCYCLINGBGM
    .endm

    .macro MessageAutoScroll messageID
    .short SCRCMD_MESSAGEAUTOSCROLL
    .short \messageID
    .endm

    .macro OpenSaveInfo
    .short SCRCMD_OPENSAVEINFO
    .endm

    .macro CloseSaveInfo
    .short SCRCMD_CLOSESAVEINFO
    .endm

    .macro ScrCmd_Unused_2C3 arg0
    .short SCRCMD_UNUSED_2C3
    .byte \arg0
    .endm

    .macro ScrCmd_2C4 arg0
    .short SCRCMD_2C4
    .byte \arg0
    .endm

    .macro ScrCmd_2C5 arg0, arg1
    .short SCRCMD_2C5
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2C6
    .short SCRCMD_2C6
    .endm

    .macro IsCommGameCodePlatinum destVar
    .short SCRCMD_ISCOMMGAMECODEPLATINUM
    .short \destVar
    .endm

    .macro OpenFrontierRecordsApp challengeType, facility, species
    .short SCRCMD_OPENFRONTIERRECORDSAPP
    .short \challengeType
    .short \facility
    .short \species
    .endm

    .macro InitPersistedMapFeaturesForEternaGym
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORETERNAGYM
    .endm

    .macro AdvanceEternaGymClock
    .short SCRCMD_ADVANCEETERNAGYMCLOCK
    .endm

    .macro CountRepeatedSpeciesInParty destVar, species
    .short SCRCMD_COUNTREPEATEDSPECIESINPARTY
    .short \destVar
    .short \species
    .endm

    .macro ScrCmd_2CC arg0, arg1, arg2
    .short SCRCMD_2CC
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2CD
    .short SCRCMD_2CD
    .endm

    .macro ScrCmd_Unused_2CE
    .short SCRCMD_UNUSED_2CE
    .endm

    .macro CheckBattleHallPartnerUsesDifferentSpecies species, result
    .short SCRCMD_CHECKBATTLEHALLPARTNERUSESDIFFERENTSPECIES
    .short \species
    .short \result
    .endm

    .macro GetBattleHallSelectedSlots slot1, slot2
    .short SCRCMD_GETBATTLEHALLSELECTEDSLOTS
    .short \slot1
    .short \slot2
    .endm

    .macro ScrCmd_2D1 arg0
    .short SCRCMD_2D1
    .short \arg0
    .endm

    .macro ScrCmd_2D2 arg0, arg1, arg2
    .short SCRCMD_2D2
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2D3 arg0, arg1, arg2
    .short SCRCMD_2D3
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2D4 arg0, arg1, arg2
    .short SCRCMD_2D4
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2D5 arg0
    .short SCRCMD_2D5
    .short \arg0
    .endm

    .macro SaveExtraData
    .short SCRCMD_SAVEEXTRADATA
    .endm

    .macro CheckIsMiscSaveInit destVar
    .short SCRCMD_CHECKISMISCSAVEINIT
    .short \destVar
    .endm

    .macro PokeMartFrontier martID
    .short SCRCMD_POKEMARTFRONTIER
    .byte \martID
    .endm

    .macro ScrCmd_2D9 arg0, arg1, arg2
    .short SCRCMD_2D9
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2DA arg0, arg1, arg2
    .short SCRCMD_2DA
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2DB arg0, arg1, arg2
    .short SCRCMD_2DB
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2DC arg0
    .short SCRCMD_2DC
    .short \arg0
    .endm

    .macro FindPartySlotWithSpecies destVarID, species
    .short SCRCMD_FINDPARTYSLOTWITHSPECIES
    .short \destVarID
    .short \species
    .endm

    .macro ShowBattleHallRecordMonSelectionMenu challengeType, letterGroup, result, listPos, cursorPos
    .short SCRCMD_SHOWBATTLEHALLRECORDMONSELECTIONMENU
    .short \challengeType
    .short \letterGroup
    .short \result
    .short \listPos
    .short \cursorPos
    .endm

    .macro CalcAmitySquareBerryAndAccessoryManOptionID destBerryAndAccessoryManOptionID
    .short SCRCMD_CALCAMITYSQUAREBERRYANDACCESSORYMANOPTIONID
    .short \destBerryAndAccessoryManOptionID
    .endm

    .macro CheckAmitySquareManGiftIsAccessory giftID, destVar
    .short SCRCMD_CHECKAMITYSQUAREMANGIFTISACCESSORY
    .short \giftID
    .short \destVar
    .endm

    .macro GoToIfAmitySquareManGiftIsNotAccessory giftID, offset
    CheckAmitySquareManGiftIsAccessory \giftID, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, \offset
    .endm

    .macro GetAmitySquareBerryOrAccessoryIDFromMan berryAndAccessoryManOptionID, destBerryOrAccessoryID
    .short SCRCMD_GETAMITYSQUAREBERRYORACCESSORYIDFROMMAN
    .short \berryAndAccessoryManOptionID
    .short \destBerryOrAccessoryID
    .endm

    .macro ScrCmd_2E2
    .short SCRCMD_2E2
    .endm

    .macro ScrCmd_2E3
    .short SCRCMD_2E3
    .endm

    .macro ScrCmd_2E4 arg0, arg1, arg2
    .short SCRCMD_2E4
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    // destVarID will be set to TRUE if the pokemon has at least one move it can learn at the given location and doesn't know yet
    .macro CheckHasLearnableTutorMoves partySlot, location, destVarID
    .short SCRCMD_CHECKHASLEARNABLETUTORMOVES
    .short \partySlot
    .short \location
    .short \destVarID
    .endm

    .macro ShowMoveTutorMoveSelectionMenu partySlot, location, outSelectedOption
    .short SCRCMD_SHOWMOVETUTORMOVESELECTIONMENU
    .short \partySlot
    .short \location
    .short \outSelectedOption
    .endm

    .macro OpenSummaryScreenTeachMove partySlot, move
    .short SCRCMD_OPENSUMMARYSCREENTEACHMOVE
    .short \partySlot
    .short \move
    .endm

    .macro GetSummarySelectedMoveSlot destVar
    .short SCRCMD_GETSUMMARYSELECTEDMOVESLOT
    .short \destVar
    .endm

    .macro ResetMoveSlot partySlot, moveID, moveSlot
    .short SCRCMD_RESETMOVESLOT
    .short \partySlot
    .short \moveID
    .short \moveSlot
    .endm

    // destVarID will be set to TRUE if the move is available at a shards move tutor and the player can afford it
    .macro CheckCanAffordMove moveID, destVarID
    .short SCRCMD_CHECKCANAFFORDMOVE
    .short \moveID
    .short \destVarID
    .endm

    .macro PayShardCost moveID
    .short SCRCMD_PAYSHARDCOST
    .short \moveID
    .endm

    .macro ShowShardCost arg0, arg1, selectedMove, outSelectedOption
    .short SCRCMD_SHOWSHARDCOST
    .byte \arg0
    .byte \arg1
    .short \selectedMove
    .short \outSelectedOption
    .endm

    .macro CloseShardCostWindow
    .short SCRCMD_CLOSESHARDCOSTWINDOW
    .endm

    .macro JudgeStats arg0, arg1, arg2, arg3
    .short SCRCMD_JUDGESTATS
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro BufferStatName templateArg, stat
    .short SCRCMD_BUFFERSTATNAME
    .byte \templateArg
    .short \stat
    .endm

    .macro InitPersistedMapFeaturesForVilla
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORVILLA
    .endm

    .macro ScrCmd_2F1 arg0, arg1
    .short SCRCMD_2F1
    .short \arg0
    .short \arg1
    .endm

    .macro InitPersistedMapFeaturesForDistortionWorld
    .short SCRCMD_INITPERSISTEDMAPFEATURESFORDISTORTIONWORLD
    .endm

    .macro BufferTrainerName templateArg, trainerID
    .short SCRCMD_BUFFERTRAINERNAME
    .byte \templateArg
    .short \trainerID
    .endm

    .macro GetRandomBattlegroundTrainers destVar1, destVar2, destVar3, destVar4
    .short ScrCmd_GETRANDOMBATTLEGROUNDTRAINERS
    .short \destVar1
    .short \destVar2
    .short \destVar3
    .short \destVar4
    .endm

    .macro BufferValuePaddingDigits templateArg, value, paddingMode, maxDigits
    .short SCRCMD_BUFFERVALUEPADDINGDIGITS
    .byte \templateArg
    .long \value
    .byte \paddingMode
    .byte \maxDigits
    .endm

    .macro ScrCmd_2F6 arg0, arg1, arg2
    .short SCRCMD_2F6
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2F7 arg0
    .short SCRCMD_2F7
    .short \arg0
    .endm

    .macro SetScenePlayBGMMusicBox
    .short SCRCMD_SETSCENEPLAYBGMMUSICBOX
    .endm

    .macro SetFieldScene bgmID
    .short SCRCMD_SETFIELDSCENE
    .short \bgmID
    .endm

    .macro GetCurrentBGM destVar
    .short SCRCMD_GETCURRENTBGM
    .short \destVar
    .endm

    .macro ScrCmd_2FB
    .short SCRCMD_2FB
    .endm

    .macro CheckABPress destVar
    .short SCRCMD_CHECKABPRESS
    .short \destVar
    .endm

    .macro BufferTypeName templateArg, type
    .short SCRCMD_BUFFERTYPENAME
    .byte \templateArg
    .short \type
    .endm

    .macro GetItemQuantity item, destVar
    .short SCRCMD_GETITEMQUANTITY
    .short \item
    .short \destVar
    .endm

    .macro CalcHiddenPowerType partySlot, destVar
    .short SCRCMD_CALCHIDDENPOWERTYPE
    .short \partySlot
    .short \destVar
    .endm

    .macro SetFavoriteMon
    .short SCRCMD_SETFAVORITEMON
    .endm

    .macro GetFavoriteMon destVarSpecies, destVarForm, destVarIsEgg
    .short SCRCMD_GETFAVORITEMON
    .short \destVarSpecies
    .short \destVarForm
    .short \destVarIsEgg
    .endm

    .macro GetRotomFormsInSave destVarHeat, destVarWash, destVarFrost, destVarFan, destVarMow
    .short SCRCMD_GETROTOMFORMSINSAVE
    .short \destVarHeat
    .short \destVarWash
    .short \destVarFrost
    .short \destVarFan
    .short \destVarMow
    .endm

    .macro GetPartyRotomCountAndFirst destVarCount, destVarFirstSlot
    .short SCRCMD_GETPARTYROTOMCOUNTANDFIRST
    .short \destVarCount
    .short \destVarFirstSlot
    .endm

    .macro SetRotomForm partySlot, moveSlot, arg2, form
    .short SCRCMD_SETROTOMFORM
    .short \partySlot
    .short \moveSlot
    .short \arg2
    .short \form
    .endm

    .macro GetPartyMonForm2 partySlot, destVar
    .short SCRCMD_GETPARTYMONFORM2
    .short \partySlot
    .short \destVar
    .endm

    .macro ShowListMenuRememberCursor listOffsetVar, cursorPosVar
    .short SCRCMD_SHOWLISTMENUREMEMBERCURSOR
    .short \listOffsetVar
    .short \cursorPosVar
    .endm

    .macro GetEmptyPoffinCaseSlotCount destVar
    .short SCRCMD_GETEMPTYPOFFINCASESLOTCOUNT
    .short \destVar
    .endm

    .macro AddCameraOverrideObject x, z
    .short SCRCMD_ADDCAMERAOVERRIDEOBJECT
    .short \x
    .short \z
    .endm

    .macro RemoveCameraOverrideObject
    .short SCRCMD_REMOVECAMERAOVERRIDEOBJECT
    .endm

    .macro IncrementTrainerScore scoreID
    .short SCRCMD_INCREMENTTRAINERSCORE
    .short \scoreID
    .endm

    .macro ScrCmd_30B
    .short SCRCMD_30B
    .endm

    .macro SaveTVSegmentHomeAndManorNoFurniture
    .short SCRCMD_SAVETVSEGMENTHOMEANDMANORNOFURNITURE
    .endm

    .macro SaveTVSegmentHomeAndManor furniture
    .short SCRCMD_SAVETVSEGMENTHOMEANDMANOR
    .short \furniture
    .endm

    .macro ScrCmd_30E arg0
    .short SCRCMD_30E
    .short \arg0
    .endm

    .macro CheckMetFurnitureRequirements furniture, destVar
    .short SCRCMD_CHECKMETFURNITUREREQUIREMENTS
    .short \furniture
    .short \destVar
    .endm

    .macro StartLibraryTV
    .short SCRCMD_STARTLIBRARYTV
    .endm

    .macro AddDistortionWorldMapObject mapObjLocalID
    .short SCRCMD_ADDDISTORTIONWORLDMAPOBJECT
    .short \mapObjLocalID
    .endm

    .macro DeleteDistortionWorldMapObject mapObjLocalID
    .short SCRCMD_DELETEDISTORTIONWORLDMAPOBJECT
    .short \mapObjLocalID
    .endm

    .macro CheckHeapMemory assertUnchangedFreeMemory
    .short SCRCMD_CHECKHEAPMEMORY
    .short \assertUnchangedFreeMemory
    .endm

    .macro RecordHeapMemory
    CheckHeapMemory FALSE
    .endm

    .macro AssertHeapMemory
    CheckHeapMemory TRUE
    .endm

    .macro GetBattleResult destVar
    .short SCRCMD_GETBATTLERESULT
    .short \destVar
    .endm

    .macro GetOverworldWeather destVar
    .short SCRCMD_GETOVERWORLDWEATHER
    .short \destVar
    .endm

    .macro Dummy316
    .short SCRCMD_DUMMY316
    .endm

    .macro GetPlayer3DPos destVarIDX, destVarIDY, destVarIDZ
    .short SCRCMD_GETPLAYER3DPOS
    .short \destVarIDX
    .short \destVarIDY
    .short \destVarIDZ
    .endm

    .macro StartFatefulEncounter species, level
    .short SCRCMD_STARTFATEFULENCOUNTER
    .short \species
    .short \level
    .endm

    .macro StartGiratinaOriginBattle species, level
    .short SCRCMD_STARTGIRATINAORIGINBATTLE
    .short \species
    .short \level
    .endm

    .macro SetSpeciesSeen species
    .short SCRCMD_SETSPECIESSEEN
    .short \species
    .endm

    .macro GetCurrentSafariGameCaughtNum destVar
    .short SCRCMD_GETCURRENTSAFARIGAMECAUGHTNUM
    .short \destVar
    .endm

    .macro FindPartySlotWithFatefulEncounterSpecies destVar, species
    .short SCRCMD_FINDPARTYSLOTWITHFATEFULENCOUNTERSPECIES
    .short \destVar
    .short \species
    .endm

    .macro ScrCmd_31D arg0
    .short SCRCMD_31D
    .short \arg0
    .endm

    .macro TryRevertPokemonForm partySlot, destVar
    .short SCRCMD_TRYREVERTPOKEMONFORM
    .short \partySlot
    .short \destVar
    .endm

    .macro ResetDistortionWorldPersistedCameraAngles
    .short SCRCMD_RESETDISTORTIONWORLDPERSISTEDCAMERAANGLES
    .endm

    .macro DoDWWarp
    .short SCRCMD_DODWWARP
    .endm

    .macro StartDistortionWorldGiratinaShadowEvent eventIndex
    .short SCRCMD_STARTDISTORTIONWORLDGIRATINASHADOWEVENT
    .short \eventIndex
    .endm

    .macro FinishDistortionWorldGiratinaShadowEvent
    .short SCRCMD_FINISHDISTORTIONWORLDGIRATINASHADOWEVENT
    .endm

    .macro ScrCmd_323 arg0
    .short SCRCMD_323
    .short \arg0
    .endm

    .macro GetBattleHallRecordKeeperStats curStreakIdx, passedMilestoneIdx, nextMilestoneIdx, earnedBPIdx, nextMilestone, response
    .short SCRCMD_GETBATTLEHALLRECORDKEEPERSTATS
    .byte \curStreakIdx
    .byte \passedMilestoneIdx
    .byte \nextMilestoneIdx
    .byte \earnedBPIdx
    .short \nextMilestone
    .short \response
    .endm

    .macro GetNumSpeciesWithBattleHallRecords result
    .short SCRCMD_GETNUMSPECIESWITHBATTLEHALLRECORDS
    .short \result
    .endm

    .macro GetBattleHallTotalSinglesRecord result
    .short SCRCMD_GETBATTLEHALLTOTALSINGLESRECORD
    .short \result
    .endm

    .macro ShowListMenuSetWidth width
    .short SCRCMD_SHOWLISTMENUSETWIDTH
    .short \width
    .endm

    .macro SetPartyGiratinaForm form
    .short SCRCMD_SETPARTYGIRATINAFORM
    .short \form
    .endm

    .macro GetBattleFrontierReporterPosition x, z, dir, movementType
    .short SCRCMD_GETBATTLEFRONTIERREPORTERPOSITION
    .short \x
    .short \z
    .short \dir
    .short \movementType
    .endm

    .macro ScrCmd_32A arg0
    .short SCRCMD_32A
    .short \arg0
    .endm

    .macro CheckPartyHasFatefulEncounterRegigigas destVar
    .short SCRCMD_CHECKPARTYHASFATEFULENCOUNTERREGIGIGAS
    .short \destVar
    .endm

    .macro ActivateRegiRuinsDot destVar, dotType, x, z
    .short SCRCMD_ACTIVATEREGIRUINSDOT
    .short \destVar
    .short \dotType
    .short \x
    .short \z
    .endm

    .macro ScrCmd_32D
    .short SCRCMD_32D
    .endm

    .macro ScrCmd_32E
    .short SCRCMD_32E
    .endm

    .macro CheckPartyHasHeldItem item, destVar
    .short SCRCMD_CHECKPARTYHASHELDITEM
    .short \item
    .short \destVar
    .endm

    .macro LogLinkInfoInWiFiHistory
    .short SCRCMD_LOGLINKINFOINWIFIHISTORY
    .endm

    .macro ScrCmd_331
    .short SCRCMD_331
    .endm

    .macro ScrCmd_332
    .short SCRCMD_332
    .endm

    .macro SetPlayerVolume volume
    .short SCRCMD_SETPLAYERVOLUME
    .short \volume
    .endm

    .macro AddToGameRecord recordID, value
    .short SCRCMD_ADDTOGAMERECORD
    .short \recordID
    .short \value
    .endm

    // For values equals or bigger than VARS_START
    .macro AddToGameRecordBigValue recordID, value
    .short SCRCMD_ADDTOGAMERECORDBIGVALUE
    .short \recordID
    .long \value
    .endm

    .macro ScrCmd_336 arg0
    .short SCRCMD_336
    .short \arg0
    .endm

    .macro CheckHasSeenSpecies species, ret
    .short SCRCMD_CHECKHASSEENSPECIES
    .short \species
    .short \ret
    .endm

    .macro ScrCmd_338
    .short SCRCMD_338
    .endm

    .macro ScrCmd_339
    .short SCRCMD_339
    .endm

    .macro SetMenuXOriginSide rightSide
    .short SCRCMD_SETMENUXORIGINSIDE
    .byte \rightSide
    .endm

    .macro SetMenuXOriginToLeft
    SetMenuXOriginSide FALSE
    .endm

    .macro SetMenuXOriginToRight
    SetMenuXOriginSide TRUE
    .endm

    .macro SetMenuYOriginSide bottomSide
    .short SCRCMD_SETMENUYORIGINSIDE
    .byte \bottomSide
    .endm

    .macro SetMenuYOriginToTop
    SetMenuYOriginSide FALSE
    .endm

    .macro SetMenuYOriginToBottom
    SetMenuYOriginSide TRUE
    .endm

    .macro BufferItemNameWithArticle templateArg, item
    .short SCRCMD_BUFFERITEMNAMEWITHARTICLE
    .byte \templateArg
    .short \item
    .endm

    .macro BufferItemNamePlural templateArg, item
    .short SCRCMD_BUFFERITEMNAMEPLURAL
    .byte \templateArg
    .short \item
    .endm

    .macro BufferUndergroundGoodsNameWithArticle templateArg, goods
    .short SCRCMD_BUFFERUNDERGROUNDGOODSNAMEWITHARTICLE
    .byte \templateArg
    .short \goods
    .endm

    .macro BufferUndergroundTrapNameWithArticle templateArg, trap
    .short SCRCMD_BUFFERUNDERGROUNDTRAPNAMEWITHARTICLE
    .byte \templateArg
    .short \trap
    .endm

    .macro BufferUndergroundItemNameWithArticle templateArg, item
    .short SCRCMD_BUFFERUNDERGROUNDITEMNAMEWITHARTICLE
    .byte \templateArg
    .short \item
    .endm

    .macro BufferSpeciesNameWithArticle templateArg, species
    .short SCRCMD_BUFFERSPECIESNAMEWITHARTICLE
    .byte \templateArg
    .short \species
    .short 0
    .byte 0
    .endm

    .macro BufferPlayerCounterpartStarterSpeciesNameWithArticle templateArg
    .short SCRCMD_BUFFERPLAYERCOUNTERPARTSTARTERSPECIESNAMEWITHARTICLE
    .byte \templateArg
    .endm

    .macro BufferAccessoryNameWithArticle templateArg, accessory
    .short SCRCMD_BUFFERACCESSORYNAMEWITHARTICLE
    .byte \templateArg
    .short \accessory
    .endm

    .macro BufferTrainerClassNameWithArticle templateArg, trainerClass
    .short SCRCMD_BUFFERTRAINERCLASSNAMEWITHARTICLE
    .byte \templateArg
    .short \trainerClass
    .endm

    .macro BufferBallSealNamePlural templateArg, ballSeal
    .short SCRCMD_BUFFERBALLSEALNAMEPLURAL
    .byte \templateArg
    .short \ballSeal
    .endm

    .macro CapitalizeFirstLetter templateArg
    .short SCRCMD_CAPITALIZEFIRSTLETTER
    .byte \templateArg
    .endm

    .macro BufferFloorNumber templateArg, floor
    .short SCRCMD_BUFFERFLOORNUMBER
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

   .macro GoToIfInRange varID, lower, upper, offset
    CompareVar \varID, \lower
    GoToIf 1, \offset
    .if \lower < \upper
        GoToIfInRange \varID, \lower + 1, \upper, \offset
    .endif
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

    .macro NPCMessage messageID
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message \messageID
    WaitButton
    CloseMessage
    ReleaseAll
    .endm

    .macro EventMessage messageID
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message \messageID
    WaitButton
    CloseMessage
    ReleaseAll
    .endm

    .macro PokemonCryAndMessage species, messageID, unused=0
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitSE SEQ_SE_CONFIRM
    PlayCry \species, \unused
    Message \messageID
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    .endm

    .macro PokeMartCommonWithGreeting unused=1
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon \unused
    ReleaseAll
    .endm

    .macro PokeMartSpecialtiesWithGreeting martID
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties \martID
    ReleaseAll
    .endm

    /* CallCommonScript aliases below */

    .macro Common_HandleSignpostInput
    CallCommonScript 0x7D0
    .endm

    .macro Common_CheckBagPocketForItem
    CallCommonScript 0x7D1
    .endm

    .macro Common_CallPokecenterNurse nurseLocalID
    SetVar VAR_0x8007, \nurseLocalID
    CallCommonScript 0x7D2
    .endm

    .macro Common_SaveGame
    CallCommonScript 0x7D6
    .endm

    .macro Common_GivePoketchApp
    CallCommonScript 0x7D9
    .endm

    .macro Common_SendToUndergroundPC
    CallCommonScript 0x7DC
    .endm

    .macro Common_ObtainUndergroundTrap
    CallCommonScript 0x7DD
    .endm

    .macro Common_ObtainUndergroundSphere
    CallCommonScript 0x7DE
    .endm

    .macro Common_GiveAccessoryWaitForConfirm
    CallCommonScript 0x7DF
    .endm

    .macro Common_GiveItemQuantityNoLineFeed
    CallCommonScript 0x7E0
    .endm

    .macro Common_MessageBagIsFull
    CallCommonScript 0x7E1
    .endm

    .macro Common_VendorGreeting
    CallCommonScript 0x7E3
    .endm

    .macro Common_ObtainContestBackdropWaitForConfirm
    CallCommonScript 0x7F4
    .endm

    .macro Common_PrintPlateObtainedMessage
    CallCommonScript 0x7F6
    .endm

    .macro Common_SetCounterpartBGM
    CallCommonScript 0x7F8
    .endm

    .macro Common_FadeToDefaultMusic
    CallCommonScript 0x7F9
    .endm

    .macro Common_SetRivalBGM
    CallCommonScript 0x7FA
    .endm

    .macro Common_FadeToDefaultMusic2
    CallCommonScript 0x7FB
    .endm

    .macro Common_GiveItemQuantity
    CallCommonScript 0x7FC
    .endm

    .macro Common_ObtainContestBackdrop
    CallCommonScript 0x7FD
    .endm

    .macro Common_SendToUndergroundPCWithLinefeed
    CallCommonScript 0x7FE
    .endm

    .macro Common_GiveAccessory
    CallCommonScript 0x7FF
    .endm

    .macro Common_SetFollowMeBGM
    CallCommonScript 0x800
    .endm

    .macro Common_FadeToDefaultMusic3
    CallCommonScript 0x801
    .endm

    .macro Common_CheckAllFrontierGoldPrintsObtained
    CallCommonScript 0x806
    .endm

    .macro Common_SetLookerBGM
    CallCommonScript 0x807
    .endm

    .macro Common_FadeToDefaultMusic4
    CallCommonScript 0x808
    .endm

    .macro Common_GriseousOrbCouldNotBeRemoved
    CallCommonScript 0x809
    .endm

    .text
    .globl _start
_start:
