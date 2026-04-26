#include "generated/battle_tower_functions.h"
#include "generated/battle_tower_modes.h"
#include "generated/fade_types.h"
#include "generated/game_records.h"
#include "generated/sdat.h"
#include "generated/trainer_score_events.h"
#include "generated/vars_flags.h"
#include "constants/battle_tower.h"
#include "constants/colors.h"
#include "constants/fade_screen.h"
#include "constants/scrcmd.h"

#include "data/scripts/frscrcmd.h"

    .set FALSE, 0
    .set TRUE, 1

    .macro Noop
    .short FRSCRCMD_NOOP
    .endm

    .macro End
    .short FRSCRCMD_END
    .endm

    .macro FrontierScrCmd_02
    .short FRSCRCMD_02
    .endm

    .macro FrontierScrCmd_03 arg0
    .short FRSCRCMD_03
    .short \arg0
    .endm

    .macro FrontierScrCmd_04 arg0, arg1
    .short FRSCRCMD_04
    .short \arg0
    .short \arg1
    .endm

    .macro WaitTime frames, countdownVarID
    .short FRSCRCMD_WAITTIME
    .short \frames
    .short \countdownVarID
    .endm

    .macro SetVar destVarID, valueOrVarID
    .if \valueOrVarID < 0x8000
        .short FRSCRCMD_SETVARFROMVALUE
    .else
        .short FRSCRCMD_SETVARFROMVAR
    .endif
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro AddVar destVarID, valueOrVarID
    .short FRSCRCMD_ADDVAR
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro SubVar destVarID, valueOrVarID
    .short FRSCRCMD_SUBVAR
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro GoTo offset
    .short FRSCRCMD_GOTO
    .long \offset-.-4
    .endm

    .macro GoToIf condition, offset
    .short FRSCRCMD_GOTOIF
    .byte \condition
    .long \offset-.-4
    .endm

    .macro Call offset
    .short FRSCRCMD_CALL
    .long \offset-.-4
    .endm

    .macro Return
    .short FRSCRCMD_RETURN
    .endm

    .macro CallIf condition, offset
    .short FRSCRCMD_CALLIF
    .byte \condition
    .long \offset-.-4
    .endm

    .macro MessageInstant messageID
    .short FRSCRCMD_MESSAGEINSTANT
    .short \messageID
    .endm

    .macro MessageNoSkip messageID
    .short FRSCRCMD_MESSAGENOSKIP
    .short \messageID
    .endm

    .macro Message messageID
    .short FRSCRCMD_MESSAGE
    .short \messageID
    .endm

    .macro CloseMessage
    .short FRSCRCMD_CLOSEMESSAGE
    .endm

    .macro FadeScreen transition, frames, type, color
    .short FRSCRCMD_FADESCREEN
    .short \transition
    .short \frames
    .short \type
    .short \color
    .endm

    .macro WaitFadeScreen
    .short FRSCRCMD_WAITFADESCREEN
    .endm

    .macro FadeScreenOut color=COLOR_BLACK
    FadeScreen FADE_SCREEN_CMD_STEPS, FADE_SCREEN_SPEED_FAST, FADE_TYPE_BRIGHTNESS_OUT, \color
    WaitFadeScreen
    .endm

    .macro FadeScreenIn color=COLOR_BLACK
    FadeScreen FADE_SCREEN_CMD_STEPS, FADE_SCREEN_SPEED_FAST, FADE_TYPE_BRIGHTNESS_IN, \color
    WaitFadeScreen
    .endm

    .macro InitGlobalTextMenu anchorX, anchorY, initialCursorPos, canExitWithB, selectedOption
    .short FRSCRCMD_INITGLOBALTEXTMENU
    .byte \anchorX
    .byte \anchorY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOption
    .endm

    .macro InitLocalTextMenu anchorX, anchorY, initialCursorPos, canExitWithB, selectedOption
    .short FRSCRCMD_INITLOCALTEXTMENU
    .byte \anchorX
    .byte \anchorY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOption
    .endm

    .macro AddMenuEntry entryID, index
    .short FRSCRCMD_ADDMENUENTRY
    .short \entryID
    .short \index
    .endm

    .macro AddMenuEntryWithDesc entryID, descriptionID, index
    .short FRSCRCMD_ADDMENUENTRYWITHDESC
    .short \entryID
    .short \descriptionID
    .short \index
    .endm

    .macro ShowMenu
    .short FRSCRCMD_SHOWMENU
    .endm

    .macro InitGlobalTextListMenu anchorX, anchorY, initialCursorPos, canExitWithB, selectedOption
    .short FRSCRCMD_INITGLOBALTEXTLISTMENU
    .byte \anchorX
    .byte \anchorY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOption
    .endm

    .macro InitLocalTextListMenu anchorX, anchorY, initialCursorPos, canExitWithB, selectedOption
    .short FRSCRCMD_INITLOCALTEXTLISTMENU
    .byte \anchorX
    .byte \anchorY
    .byte \initialCursorPos
    .byte \canExitWithB
    .short \selectedOption
    .endm

    .macro AddListMenuEntry entryID, descriptionID, index
    .short FRSCRCMD_ADDLISTMENUENTRY
    .short \entryID
    .short \descriptionID
    .short \index
    .endm

    .macro ShowListMenu
    .short FRSCRCMD_SHOWLISTMENU
    .endm

    .macro FreeListMenu
    .short FRSCRCMD_FREELISTMENU
    .endm

    .macro ShowYesNoMenu destVarID, cursorStart
    .short FRSCRCMD_SHOWYESNOMENU
    .short \destVarID
    .byte \cursorStart
    .endm

    .macro CompareVar varID, valueOrVarID
    .if \valueOrVarID < 0x8000
        .short FRSCRCMD_COMPAREVARTOVALUE
    .else
        .short FRSCRCMD_COMPAREVARTOVAR
    .endif
    .short \varID
    .short \valueOrVarID
    .endm

    .macro FrontierScrCmd_22 offset
    .short FRSCRCMD_22
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_23 arg0
    .short FRSCRCMD_23
    .short \arg0
    .endm

    .macro FrontierScrCmd_24 offset
    .short FRSCRCMD_24
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_25 arg0
    .short FRSCRCMD_25
    .short \arg0
    .endm

    .macro FrontierScrCmd_26 arg0, arg1
    .short FRSCRCMD_26
    .short \arg0
    .byte \arg1
    .endm

    .macro FrontierScrCmd_Dummy27
    .short FRSCRCMD_DUMMY27
    .endm

    .macro FrontierScrCmd_28 arg0, offset
    .short FRSCRCMD_28
    .short \arg0
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_29
    .short FRSCRCMD_29
    .endm

    .macro FrontierScrCmd_2A offset
    .short FRSCRCMD_2A
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_2B arg0
    .short FRSCRCMD_2B
    .short \arg0
    .endm

    .macro FrontierScrCmd_2C offset
    .short FRSCRCMD_2C
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_2D arg0
    .short FRSCRCMD_2D
    .short \arg0
    .endm

    .macro FrontierScrCmd_2E arg0, draw
    .short FRSCRCMD_2E
    .short \arg0
    .byte \draw
    .endm

    .macro FrontierScrCmd_2F arg0
    .short FRSCRCMD_2F
    .short \arg0
    .endm

    .macro FrontierScrCmd_30 arg0, arg1
    .short FRSCRCMD_30
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_31 arg0, arg1
    .short FRSCRCMD_31
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_32 arg0
    .short FRSCRCMD_32
    .short \arg0
    .endm

    .macro FrontierScrCmd_33 arg0
    .short FRSCRCMD_33
    .short \arg0
    .endm

    .macro FrontierScrCmd_34
    .short FRSCRCMD_34
    .endm

    .macro SyncConnectedPlayers syncNo
    .short FRSCRCMD_SYNCCONNECTEDPLAYERS
    .short \syncNo
    .endm

    .macro ClearReceivedTempDataAllPlayers
    .short FRSCRCMD_CLEARRECEIVEDTEMPDATAALLPLAYERS
    .endm

    .macro EndCommunication
    .short FRSCRCMD_ENDCOMMUNICATION
    .endm

    .macro GetRandom destVarID, upperBound
    .short FRSCRCMD_GETRANDOM
    .short \destVarID
    .short \upperBound
    .endm

    .macro HealParty
    .short FRSCRCMD_HEALPARTY
    .endm

    .macro WaitABPress
    .short FRSCRCMD_WAITABPRESS
    .endm

    .macro WaitABPressTime frames
    .short FRSCRCMD_WAITABPRESSTIME
    .short \frames
    .endm

    .macro FrontierScrCmd_Dummy3C unused
    .short FRSCRCMD_DUMMY3C
    .short \unused
    .endm

    .macro FrontierScrCmd_3D destVar, value
    .short FRSCRCMD_3D
    .short \destVar
    .short \value
    .endm

    .macro FrontierScrCmd_3E srcVar, destVar
    .short FRSCRCMD_3E
    .short \srcVar
    .short \destVar
    .endm

    .macro FrontierScrCmd_3F arg0
    .short FRSCRCMD_3F
    .short \arg0
    .endm

    .macro GetPlayerObjEventGfx destVar
    .short FRSCRCMD_GETPLAYEROBJEVENTGFX
    .short \destVar
    .endm

    .macro InitParticleSystem index, narcIdx, projection=1
    .short FRSCRCMD_INITPARTICLESYSTEM
    .short \index
    .short \narcIdx
    .short \projection
    .endm

    .macro FreeParticleSystem index
    .short FRSCRCMD_FREEPARTICLESYSTEM
    .short \index
    .endm

    .macro CreateParticleSystemEmitter index, resourceID
    .short FRSCRCMD_CREATEPARTICLESYSTEMEMITTER
    .short \index
    .short \resourceID
    .endm

    .macro WaitForParticleSystemEmitters
    .short FRSCRCMD_WAITFORPARTICLESYSTEMEMITTERS
    .endm

    .macro FrontierScrCmd_45 slot, x, y, arg3, blendFraction, blendTarget
    .short FRSCRCMD_45
    .short \slot
    .short \x
    .short \y
    .short \arg3
    .short \blendFraction
    .short \blendTarget
    .endm

    .macro FrontierScrCmd_46 arg0
    .short FRSCRCMD_46
    .short \arg0
    .endm

    .macro FrontierScrCmd_47 arg0
    .short FRSCRCMD_47
    .short \arg0
    .endm

    .macro IncrementRecordValue recordID
    .short FRSCRCMD_INCREMENTRECORDVALUE
    .short \recordID
    .endm

    .macro AddToRecordValue recordID, value
    .short FRSCRCMD_ADDTORECORDVALUE
    .short \recordID
    .short \value
    .endm

    .macro IncrementTrainerScore scoreID
    .short FRSCRCMD_INCREMENTTRAINERSCORE
    .short \scoreID
    .endm

    .macro FrontierScrCmd_4B destVar
    .short FRSCRCMD_4B
    .short \destVar
    .endm

    .macro FrontierScrCmd_4C arg0, arg1, arg2, arg3
    .short FRSCRCMD_4C
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_4D
    .short FRSCRCMD_4D
    .endm

    .macro FrontierScrCmd_4E arg0, arg1, arg2, arg3, arg4, arg5
    .short FRSCRCMD_4E
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_4F
    .short FRSCRCMD_4F
    .endm

    .macro FrontierScrCmd_50
    .short FRSCRCMD_50
    .endm

    .macro FrontierScrCmd_51
    .short FRSCRCMD_51
    .endm

    .macro FrontierScrCmd_52
    .short FRSCRCMD_52
    .endm

    .macro FrontierScrCmd_53 arg0
    .short FRSCRCMD_53
    .short \arg0
    .endm

    .macro FrontierScrCmd_54
    .short FRSCRCMD_54
    .endm

    .macro PlaySoundEffect seqID
    .short FRSCRCMD_PLAYSOUNDEFFECT
    .short \seqID
    .endm

    .macro StopSoundEffect seqID
    .short FRSCRCMD_STOPSOUNDEFFECT
    .short \seqID
    .endm

    .macro WaitSoundEffect seqID
    .short FRSCRCMD_WAITSOUNDEFFECT
    .short \seqID
    .endm

    .macro PlayFanfare seqID
    .short FRSCRCMD_PLAYFANFARE
    .short \seqID
    .endm

    .macro WaitFanfare
    .short FRSCRCMD_WAITFANFARE
    .endm

    .macro PlayBGM seqID
    .short FRSCRCMD_PLAYBGM
    .short \seqID
    .endm

    .macro StopBGM seqID
    .short FRSCRCMD_STOPBGM
    .short \seqID
    .endm

    .macro FrontierScrCmd_5C arg0, arg1, arg2
    .short FRSCRCMD_5C
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_5D arg0
    .short FRSCRCMD_5D
    .short \arg0
    .endm

    .macro FrontierScrCmd_5E
    .short FRSCRCMD_5E
    .endm

    .macro FrontierScrCmd_5F
    .short FRSCRCMD_5F
    .endm

    .macro FrontierScrCmd_60
    .short FRSCRCMD_60
    .endm

    .macro FrontierScrCmd_61
    .short FRSCRCMD_61
    .endm

    .macro FrontierScrCmd_62
    .short FRSCRCMD_62
    .endm

    .macro FrontierScrCmd_63
    .short FRSCRCMD_63
    .endm

    .macro FrontierScrCmd_64
    .short FRSCRCMD_64
    .endm

    .macro FrontierScrCmd_65
    .short FRSCRCMD_65
    .endm

    .macro FrontierScrCmd_66
    .short FRSCRCMD_66
    .endm

    .macro FrontierScrCmd_67 arg0, arg1, arg2, arg3
    .short FRSCRCMD_67
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_68 arg0
    .short FRSCRCMD_68
    .short \arg0
    .endm

    .macro FrontierScrCmd_69 arg0, arg1, arg2
    .short FRSCRCMD_69
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_6A arg0
    .short FRSCRCMD_6A
    .short \arg0
    .endm

    .macro FrontierScrCmd_6B arg0
    .short FRSCRCMD_6B
    .byte \arg0
    .endm

    .macro InitNewBattleRecording
    .short FRSCRCMD_INITNEWBATTLERECORDING
    .endm

    .macro FrontierScrCmd_6D arg0, arg1, arg2, arg3
    .short FRSCRCMD_6D
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_6E
    .short FRSCRCMD_6E
    .endm

    .macro FreeBattleRecording
    .short FRSCRCMD_FREEBATTLERECORDING
    .endm

    .macro FrontierScrCmd_70 arg0
    .short FRSCRCMD_70
    .short \arg0
    .endm

    .macro FrontierScrCmd_71 destVar
    .short FRSCRCMD_71
    .short \destVar
    .endm

    .macro FrontierScrCmd_72 arg0
    .short FRSCRCMD_72
    .short \arg0
    .endm

    .macro FrontierScrCmd_73 arg0
    .short FRSCRCMD_73
    .short \arg0
    .endm

    .macro SaveDataExtraInit
    .short FRSCRCMD_SAVEDATAEXTRAINIT
    .endm

    .macro FrontierScrCmd_GetMiscSaveBlockInitFlag destVar
    .short FRSCRCMD_GETMISCSAVEBLOCKINITFLAG
    .short \destVar
    .endm

    .macro BattleHall_UpdateWinRecord destVar
    .short FRSCRCMD_BATTLEHALL_UPDATEWINRECORD
    .short \destVar
    .endm

    .macro ShowSavingIcon
    .short FRSCRCMD_SHOWSAVINGICON
    .endm

    .macro HideSavingIcon
    .short FRSCRCMD_HIDESAVINGICON
    .endm

    .macro BufferItemName templateArg, item
    .short FRSCRCMD_BUFFERITEMNAME
    .byte \templateArg
    .short \item
    .endm

    .macro BufferNumber templateArg, number
    .short FRSCRCMD_BUFFERNUMBER
    .byte \templateArg
    .short \number
    .endm

    .macro BufferPlayerName templateArg
    .short FRSCRCMD_BUFFERPLAYERNAME
    .byte \templateArg
    .endm

    .macro BufferPartnerName templateArg
    .short FRSCRCMD_BUFFERPARTNERNAME
    .byte \templateArg
    .endm

    .macro BufferMoveName templateArg, move
    .short FRSCRCMD_BUFFERMOVENAME
    .byte \templateArg
    .short \move
    .endm

    .macro BufferSpeciesName templateArg, species, unused1=0, unused2=0
    .short FRSCRCMD_BUFFERSPECIESNAME
    .byte \templateArg
    .short \species
    .short \unused1
    .byte \unused2
    .endm

    .macro BufferTypeName templateArg, type
    .short FRSCRCMD_BUFFERTYPENAME
    .byte \templateArg
    .short \type
    .endm

    .macro BufferRivalName templateArg
    .short FRSCRCMD_BUFFERRIVALNAME
    .byte \templateArg
    .endm

    .macro GetNumBattlePoints destVar
    .short FRSCRCMD_GETNUMBATTLEPOINTS
    .short \destVar
    .endm

    .macro GiveBattlePoints battlePoints
    .short FRSCRCMD_GIVEBATTLEPOINTS
    .short \battlePoints
    .endm

    .macro RemoteBattlePoints battlePoints
    .short FRSCRCMD_REMOTEBATTLEPOINTS
    .short \battlePoints
    .endm

    .macro CallBattleTowerFunction functionIndex, functionArgument, destVar
    .short FRSCRCMD_CALLBATTLETOWERFUNCTION
    .short \functionIndex
    .short \functionArgument
    .short \destVar
    .endm

    .macro FrontierScrCmd_85 arg0
    .short FRSCRCMD_85
    .byte \arg0
    .endm

    .macro FreeTowerStruct
    .short FRSCRCMD_FREETOWERSTRUCT
    .endm

    .macro FrontierScrCmd_87
    .short FRSCRCMD_87
    .endm

    .macro CheckWonTowerBattle destVar
    .short FRSCRCMD_CHECKWONTOWERBATTLE
    .short \destVar
    .endm

    .macro FrontierScrCmd_89 arg0, arg1, arg2
    .short FRSCRCMD_89
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_8A arg0, arg1
    .short FRSCRCMD_8A
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_8B arg0, arg1, arg2, arg3
    .short FRSCRCMD_8B
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_8C arg0
    .short FRSCRCMD_8C
    .short \arg0
    .endm

    .macro FrontierScrCmd_8D
    .short FRSCRCMD_8D
    .endm

    .macro OpenBattleHallApp
    .short FRSCRCMD_OPENBATTLEHALLAPP
    .endm

    .macro BattleHall_CheckWonBattle
    .short FRSCRCMD_BATTLEHALL_CHECKWONBATTLE
    .endm

    .macro BattleHall_StartBattle
    .short FRSCRCMD_BATTLEHALL_STARTBATTLE
    .endm

    .macro CallBattleHallFunction command, arg1, arg2, returnVar
    .short FRSCRCMD_CALLBATTLEHALLFUNCTION
    .byte \command
    .byte \arg1
    .byte \arg2
    .short \returnVar
    .endm

    .macro BattleHall_GetBattleResult destVar
    .short FRSCRCMD_BATTLEHALL_GETBATTLERESULT
    .short \destVar
    .endm

    .macro FrontierScrCmd_93 arg0, arg1, arg2
    .short FRSCRCMD_93
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_94 arg0
    .short FRSCRCMD_94
    .short \arg0
    .endm

    .macro FrontierScrCmd_95 arg0
    .short FRSCRCMD_95
    .byte \arg0
    .endm

    .macro FrontierScrCmd_Dummy96 arg0
    .short FRSCRCMD_DUMMY96
    .short \arg0
    .endm

    .macro FrontierScrCmd_97 arg0, arg1, arg2, arg3, arg4, arg5
    .short FRSCRCMD_97
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_98 arg0
    .short FRSCRCMD_98
    .short \arg0
    .endm

    .macro FrontierScrCmd_99
    .short FRSCRCMD_99
    .endm

    .macro FrontierScrCmd_9A
    .short FRSCRCMD_9A
    .endm

    .macro FrontierScrCmd_9B
    .short FRSCRCMD_9B
    .endm

    .macro FrontierScrCmd_9C
    .short FRSCRCMD_9C
    .endm

    .macro FrontierScrCmd_9D
    .short FRSCRCMD_9D
    .endm

    .macro FrontierScrCmd_9E
    .short FRSCRCMD_9E
    .endm

    .macro FrontierScrCmd_9F
    .short FRSCRCMD_9F
    .endm

    .macro FrontierScrCmd_A0 arg0, arg1, arg2, arg3
    .short FRSCRCMD_A0
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_A1 arg0
    .short FRSCRCMD_A1
    .short \arg0
    .endm

    .macro FrontierScrCmd_A2 arg0, arg1, arg2
    .short FRSCRCMD_A2
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_A3 arg0
    .short FRSCRCMD_A3
    .short \arg0
    .endm

    .macro FrontierScrCmd_A4
    .short FRSCRCMD_A4
    .endm

    .macro FrontierScrCmd_A5 arg0
    .short FRSCRCMD_A5
    .short \arg0
    .endm

    .macro FrontierScrCmd_A6 arg0, arg1
    .short FRSCRCMD_A6
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_A7 arg0, arg1
    .short FRSCRCMD_A7
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_A8 arg0, arg1
    .short FRSCRCMD_A8
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_A9 arg0
    .short FRSCRCMD_A9
    .byte \arg0
    .endm

    .macro FrontierScrCmd_AA
    .short FRSCRCMD_AA
    .endm

    .macro FrontierScrCmd_AB
    .short FRSCRCMD_AB
    .endm

    .macro FrontierScrCmd_AC arg0, arg1, arg2, arg3
    .short FRSCRCMD_AC
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_AD arg0
    .short FRSCRCMD_AD
    .short \arg0
    .endm

    .macro FrontierScrCmd_AE arg0, arg1
    .short FRSCRCMD_AE
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_AF arg0, arg1, arg2
    .short FRSCRCMD_AF
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_B0 arg0, arg1
    .short FRSCRCMD_B0
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_B1 arg0
    .short FRSCRCMD_B1
    .short \arg0
    .endm

    .macro FrontierScrCmd_B2 arg0, arg1, arg2, arg3
    .short FRSCRCMD_B2
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_B3
    .short FRSCRCMD_B3
    .endm

    .macro FrontierScrCmd_B4 arg0
    .short FRSCRCMD_B4
    .short \arg0
    .endm

    .macro FrontierScrCmd_B5
    .short FRSCRCMD_B5
    .endm

    .macro ClearTowerStruct
    .short FRSCRCMD_CLEARTOWERSTRUCT
    .endm

    .macro SetWiFiListHostFriendCurrentDate
    .short FRSCRCMD_SETWIFILISTHOSTFRIENDCURRENTDATE
    .endm

    .macro FrontierScrCmd_B8 arg0, arg1, arg2, arg3, arg4, arg5
    .short FRSCRCMD_B8
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_B9 arg0
    .short FRSCRCMD_B9
    .short \arg0
    .endm

    .macro FrontierScrCmd_BA
    .short FRSCRCMD_BA
    .endm

    .macro FrontierScrCmd_BB
    .short FRSCRCMD_BB
    .endm

    .macro FrontierScrCmd_BC
    .short FRSCRCMD_BC
    .endm

    .macro FrontierScrCmd_BD
    .short FRSCRCMD_BD
    .endm

    .macro FrontierScrCmd_BE
    .short FRSCRCMD_BE
    .endm

    .macro FrontierScrCmd_BF arg0, arg1, arg2, arg3
    .short FRSCRCMD_BF
    .byte \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_C0 arg0
    .short FRSCRCMD_C0
    .short \arg0
    .endm

    .macro FrontierScrCmd_C1 arg0, arg1, arg2
    .short FRSCRCMD_C1
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_C2 arg0
    .short FRSCRCMD_C2
    .short \arg0
    .endm

    .macro FrontierScrCmd_C3
    .short FRSCRCMD_C3
    .endm

    .macro FrontierScrCmd_C4 arg0
    .short FRSCRCMD_C4
    .byte \arg0
    .endm

    .macro FrontierScrCmd_C5
    .short FRSCRCMD_C5
    .endm

    .macro FrontierScrCmd_C6 arg0, arg1, arg2
    .short FRSCRCMD_C6
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_C7
    .short FRSCRCMD_C7
    .endm

    .macro FrontierScrCmd_C8 arg0
    .short FRSCRCMD_C8
    .short \arg0
    .endm

    .macro FrontierScrCmd_C9 arg0
    .short FRSCRCMD_C9
    .short \arg0
    .endm

    .macro SetMenuXOriginSide isRightSide
    .short FRSCRCMD_SETMENUXORIGINSIDE
    .byte \isRightSide
    .endm

    .macro SetMenuYOriginSide isBottomSide
    .short FRSCRCMD_SETMENUYORIGINSIDE
    .byte \isBottomSide
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



    .text
    .globl _start
_start:
