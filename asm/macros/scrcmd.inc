    .include "macros/movement.inc"
    .include "consts/items.inc"
    .include "consts/map.inc"
    .include "consts/poketch.inc"
    .include "consts/scrcmd.inc"
    .include "consts/sdat.inc"

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
    .if \valueOrVarID < 0x4000
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

    .macro ScrCmd_021 arg0, arg1
    .short 33
    .short \arg0
    .short \arg1
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
    .if \valueOrVarID < 0x4000
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

    .macro ScrCmd_036 arg0, arg1, arg2, arg3
    .short 54
    .byte \arg0
    .byte \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_037 arg0, arg1
    .short 55
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_038 arg0
    .short 56
    .byte \arg0
    .endm

    .macro ScrCmd_039
    .short 57
    .endm

    .macro ScrCmd_03A arg0, arg1
    .short 58
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_03B arg0
    .short 59
    .short \arg0
    .endm

    .macro ScrCmd_03C
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

    .macro ScrCmd_03E arg0
    .short 62
    .short \arg0
    .endm

    .macro ScrCmd_03F
    .short 63
    .endm

    .macro ScrCmd_040 arg0, arg1, arg2, arg3, arg4
    .short 64
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro ScrCmd_041 arg0, arg1, arg2, arg3, arg4
    .short 65
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro ScrCmd_042 arg0, arg1
    .short 66
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_043
    .short 67
    .endm

    .macro ScrCmd_044 arg0, arg1, arg2, arg3, arg4
    .short 68
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro ScrCmd_045 arg0, arg1, arg2, arg3, arg4
    .short 69
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro ScrCmd_046 arg0, arg1, arg2
    .short 70
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_047
    .short 71
    .endm

    .macro ScrCmd_048 arg0
    .short 72
    .byte \arg0
    .endm

    // Plays a sound effect without interrupting the current music
    .macro PlayFanfare sdatID
    .short 73
    .short \sdatID
    .endm

    .macro ScrCmd_04A arg0
    .short 74
    .short \arg0
    .endm

    .macro WaitFanfare sdatID
    .short 75
    .short \sdatID
    .endm

    .macro ScrCmd_04C arg0, arg1
    .short 76
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_04D
    .short 77
    .endm

    // Pauses the current music and then plays a sound effect
    .macro PlaySound sdatID
    .short 78
    .short \sdatID
    .endm

    .macro WaitSound
    .short 79
    .endm

    .macro PlayMusic sdatID
    .short 80
    .short \sdatID
    .endm

    .macro StopMusic dummy
    .short 81
    .short \dummy
    .endm

    // Plays the default music track based on the player's current location
    .macro PlayDefaultMusic
    .short 82
    .endm

    .macro ScrCmd_053 arg0
    .short 83
    .short \arg0
    .endm

    .macro FadeOutMusic targetVolume, frames
    .short 84
    .short \targetVolume
    .short \frames
    .endm

    .macro ScrCmd_055 arg0
    .short 85
    .short \arg0
    .endm

    .macro ScrCmd_056 arg0, arg1
    .short 86
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_057 arg0
    .short 87
    .short \arg0
    .endm

    .macro ScrCmd_058 arg0
    .short 88
    .byte \arg0
    .endm

    .macro ScrCmd_059 arg0
    .short 89
    .short \arg0
    .endm

    .macro ScrCmd_05A arg0
    .short 90
    .short \arg0
    .endm

    .macro ScrCmd_05B
    .short 91
    .endm

    .macro ScrCmd_05C
    .short 92
    .endm

    .macro ScrCmd_05D
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

    .macro ScrCmd_064 arg0
    .short 100
    .short \arg0
    .endm

    .macro ScrCmd_065 arg0
    .short 101
    .short \arg0
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

    .macro ScrCmd_06F arg0
    .short 111
    .long \arg0
    .endm

    .macro ScrCmd_070 arg0
    .short 112
    .long \arg0
    .endm

    .macro ScrCmd_071 arg0, arg1
    .short 113
    .short \arg0
    .long \arg1
    .endm

    .macro ScrCmd_072 arg0, arg1
    .short 114
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_073
    .short 115
    .endm

    .macro ScrCmd_074
    .short 116
    .endm

    .macro ScrCmd_075 arg0, arg1
    .short 117
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_076
    .short 118
    .endm

    .macro ScrCmd_077
    .short 119
    .endm

    .macro ScrCmd_078 arg0
    .short 120
    .short \arg0
    .endm

    .macro ScrCmd_079 arg0
    .short 121
    .short \arg0
    .endm

    .macro ScrCmd_07A arg0
    .short 122
    .short \arg0
    .endm

    // If the player has no space left in the bag, resultVar will be set to FALSE 
    .macro AddItem item, count, resultVar
    .short 123
    .short \item
    .short \count
    .short \resultVar
    .endm

    // resultVar will be set to TRUE if the player had at least 'count' items of the specified type in their bag
    .macro RemoveItem item, count, resultVar
    .short 124
    .short \item
    .short \count
    .short \resultVar
    .endm

    .macro ScrCmd_07D arg0, arg1, arg2
    .short 125
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    // resultVar will be set to TRUE if the player has at least 'count' items of the specified type in their bag
    .macro CheckItem item, count, resultVar
    .short 126
    .short \item
    .short \count
    .short \resultVar
    .endm

    .macro ScrCmd_07F arg0, arg1
    .short 127
    .short \arg0
    .short \arg1
    .endm

    .macro GetItemPocket item, destVarID
    .short 128
    .short \item
    .short \destVarID
    .endm

    .macro ScrCmd_081
    .short 129
    .endm

    .macro ScrCmd_082
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

    .macro ScrCmd_095 arg0, arg1
    .short 149
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_096 arg0, arg1, arg2, arg3
    .short 150
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_097 arg0, arg1
    .short 151
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_098 arg0, arg1, arg2
    .short 152
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_099 arg0, arg1, arg2
    .short 153
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_0A1
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

    .macro ScrCmd_0B4
    .short 180
    .endm

    .macro ScrCmd_0B5
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

    .macro ScrCmd_0D3 arg0, arg1
    .short 211
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0D4 arg0, arg1
    .short 212
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_0DA arg0, arg1, arg2, arg3
    .short 218
    .byte \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro ScrCmd_0DB arg0
    .short 219
    .byte \arg0
    .endm

    .macro ScrCmd_0DC arg0
    .short 220
    .byte \arg0
    .endm

    .macro ScrCmd_0DD arg0
    .short 221
    .byte \arg0
    .endm

    .macro ScrCmd_0DE arg0
    .short 222
    .short \arg0
    .endm

    .macro ScrCmd_0DF arg0, arg1
    .short 223
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E0 arg0, arg1
    .short 224
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E1 arg0, arg1
    .short 225
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E2 arg0, arg1
    .short 226
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E3 arg0, arg1
    .short 227
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_0E4 arg0
    .short 228
    .short \arg0
    .endm

    .macro ScrCmd_0E5 arg0, arg1
    .short 229
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_0EA arg0
    .short 234
    .short \arg0
    .endm

    .macro ScrCmd_0EB
    .short 235
    .endm

    .macro ScrCmd_0EC arg0
    .short 236
    .short \arg0
    .endm

    .macro ScrCmd_0ED arg0
    .short 237
    .short \arg0
    .endm

    .macro ScrCmd_0EE arg0
    .short 238
    .short \arg0
    .endm

    .macro ScrCmd_0EF
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

    .macro ScrCmd_0F6
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

    .macro ScrCmd_119 arg0
    .short 281
    .short \arg0
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

    .macro ScrCmd_11C arg0
    .short 284
    .short \arg0
    .endm

    .macro ScrCmd_11D arg0, arg1, arg2, arg3
    .short 285
    .byte \arg0
    .byte \arg1
    .short \arg2
    .short \arg3
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

    .macro ScrCmd_124 arg0, arg1
    .short 292
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_125 arg0
    .short 293
    .short \arg0
    .endm

    .macro ScrCmd_126
    .short 294
    .endm

    .macro ScrCmd_127
    .short 295
    .endm

    .macro ScrCmd_128 arg0
    .short 296
    .short \arg0
    .endm

    .macro ScrCmd_129
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

    .macro ScrCmd_133 arg0
    .short 307
    .short \arg0
    .endm

    .macro ScrCmd_134 arg0, arg1
    .short 308
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_147 arg0
    .short 327
    .short \arg0
    .endm

    .macro ScrCmd_148 arg0
    .short 328
    .short \arg0
    .endm

    .macro ScrCmd_149 arg0
    .short 329
    .short \arg0
    .endm

    .macro ScrCmd_14A arg0
    .short 330
    .short \arg0
    .endm

    .macro ScrCmd_14B
    .short 331
    .endm

    .macro ScrCmd_14C arg0
    .short 332
    .short \arg0
    .endm

    .macro ScrCmd_14D arg0
    .short 333
    .short \arg0
    .endm

    .macro ScrCmd_14E
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

    .macro ScrCmd_157 arg0
    .short 343
    .short \arg0
    .endm

    .macro ScrCmd_158
    .short 344
    .endm

    .macro ScrCmd_159 arg0
    .short 345
    .short \arg0
    .endm

    .macro ScrCmd_15A
    .short 346
    .endm

    .macro ScrCmd_15B arg0, arg1
    .short 347
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_15C arg0
    .short 348
    .short \arg0
    .endm

    .macro ScrCmd_15D arg0
    .short 349
    .short \arg0
    .endm

    .macro ScrCmd_15E arg0
    .short 350
    .short \arg0
    .endm

    .macro ScrCmd_15F
    .short 351
    .endm

    .macro ScrCmd_160 arg0
    .short 352
    .short \arg0
    .endm

    .macro ScrCmd_161
    .short 353
    .endm

    .macro ScrCmd_162
    .short 354
    .endm

    .macro ScrCmd_163 arg0
    .short 355
    .short \arg0
    .endm

    .macro ScrCmd_164
    .short 356
    .endm

    .macro ScrCmd_165
    .short 357
    .endm

    .macro ScrCmd_166 arg0
    .short 358
    .short \arg0
    .endm

    .macro ScrCmd_167
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

    .macro ScrCmd_16D
    .short 365
    .endm

    .macro ScrCmd_16E arg0
    .short 366
    .short \arg0
    .endm

    .macro ScrCmd_16F
    .short 367
    .endm

    .macro ScrCmd_170
    .short 368
    .endm

    .macro ScrCmd_171
    .short 369
    .endm

    .macro ScrCmd_172
    .short 370
    .endm

    .macro ScrCmd_173
    .short 371
    .endm

    .macro ScrCmd_174
    .short 372
    .endm

    .macro ScrCmd_175 arg0
    .short 373
    .byte \arg0
    .endm

    .macro ScrCmd_176 arg0
    .short 374
    .byte \arg0
    .endm

    .macro ScrCmd_177 arg0
    .short 375
    .short \arg0
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

    .macro ScrCmd_186 arg0, arg1, arg2
    .short 390
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_189 arg0, arg1
    .short 393
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_18A arg0, arg1, arg2
    .short 394
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_193 arg0
    .short 403
    .short \arg0
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

    .macro ScrCmd_198 arg0, arg1
    .short 408
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_199 arg0, arg1
    .short 409
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_19A arg0
    .short 410
    .short \arg0
    .endm

    .macro ScrCmd_19B arg0, arg1
    .short 411
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_1A3 arg0
    .short 419
    .short \arg0
    .endm

    .macro ScrCmd_1A4 arg0, arg1
    .short 420
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1A5 arg0
    .short 421
    .short \arg0
    .endm

    .macro ScrCmd_1A6
    .short 422
    .endm

    .macro ScrCmd_1A7
    .short 423
    .endm

    .macro ScrCmd_1A8
    .short 424
    .endm

    .macro ScrCmd_1A9
    .short 425
    .endm

    .macro ScrCmd_1AA arg0, arg1
    .short 426
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1AB arg0, arg1
    .short 427
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1AC
    .short 428
    .endm

    .macro ScrCmd_1AD arg0
    .short 429
    .short \arg0
    .endm

    .macro ScrCmd_1AE arg0, arg1
    .short 430
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1AF arg0, arg1, arg2
    .short 431
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1B0 arg0
    .short 432
    .short \arg0
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

    .macro ScrCmd_1B7 arg0, arg1
    .short 439
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1B8 arg0, arg1
    .short 440
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1B9 arg0, arg1
    .short 441
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_1BC arg0, arg1, arg2, arg3
    .short 444
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_1BD arg0
    .short 445
    .short \arg0
    .endm

    .macro ScrCmd_1BE arg0
    .short 446
    .short \arg0
    .endm

    .macro ScrCmd_1BF arg0
    .short 447
    .short \arg0
    .endm

    .macro ScrCmd_1C0 arg0, arg1
    .short 448
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1C1 arg0, arg1
    .short 449
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1C2 arg0
    .short 450
    .short \arg0
    .endm

    .macro ScrCmd_1C3 arg0, arg1, arg2
    .short 451
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1C4 arg0, arg1, arg2
    .short 452
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1C5
    .short 453
    .endm

    .macro ScrCmd_1C6 arg0
    .short 454
    .short \arg0
    .endm

    .macro ScrCmd_1C7 arg0
    .short 455
    .short \arg0
    .endm

    .macro ScrCmd_1C8 arg0, arg1
    .short 456
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1C9 arg0, arg1
    .short 457
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1CA arg0, arg1, arg2
    .short 458
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1CB arg0, arg1, arg2
    .short 459
    .byte \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_1CC
    .short 460
    .endm

    .macro ScrCmd_1CD arg0, arg1, arg2, arg3, arg4
    .short 461
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_1CE
    .short 462
    .endm

    .macro ScrCmd_1CF arg0, arg1=0
    .short 463
    .byte \arg0
    .if \arg0 == 2
        .short \arg1
    .endif
    .endm

    .macro ScrCmd_1D0 arg0, arg1=0
    .short 464
    .byte \arg0
    .if \arg0 == 2
        .short \arg1
    .endif
    .endm

    .macro ScrCmd_1D1 arg0, arg1=0
    .short 465
    .byte \arg0
    .if \arg0 == 2
        .short \arg1
    .endif
    .endm

    .macro ScrCmd_1D2 arg0, arg1
    .short 466
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1D3 arg0, arg1, arg2
    .short 467
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_1D6 arg0, arg1
    .short 470
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_1E5 arg0
    .short 485
    .short \arg0
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

    .macro ScrCmd_1EC
    .short 492
    .endm

    .macro ScrCmd_1ED arg0
    .short 493
    .short \arg0
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

    .macro ScrCmd_1F7 arg0, arg1
    .short 503
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_1F8
    .short 504
    .endm

    /* this is a dummy function that doesn't do anything */
    .macro Dummy1 dummy
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

    .macro ScrCmd_200 arg0
    .short 512
    .short \arg0
    .endm

    .macro ScrCmd_201 arg0
    .short 513
    .short \arg0
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

    .macro ScrCmd_206
    .short 518
    .endm

    .macro ScrCmd_207 arg0
    .short 519
    .short \arg0
    .endm

    .macro ScrCmd_208 arg0, arg1
    .short 520
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_20E
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

    .macro ScrCmd_211 arg0
    .short 529
    .byte \arg0
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

    .macro ScrCmd_214 arg0
    .short 532
    .short \arg0
    .endm

    .macro ScrCmd_215
    .short 533
    .endm

    .macro ScrCmd_216 arg0
    .short 534
    .short \arg0
    .endm

    .macro ScrCmd_217 arg0, arg1
    .short 535
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_218 arg0
    .short 536
    .short \arg0
    .endm

    .macro ScrCmd_219 arg0
    .short 537
    .short \arg0
    .endm

    .macro ScrCmd_21A arg0
    .short 538
    .short \arg0
    .endm

    .macro ScrCmd_21B
    .short 539
    .endm

    .macro ScrCmd_21C arg0
    .short 540
    .byte \arg0
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

    .macro ScrCmd_21E
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

    .macro ScrCmd_226 arg0
    .short 550
    .byte \arg0
    .endm

    .macro ScrCmd_227 arg0
    .short 551
    .short \arg0
    .endm

    .macro ScrCmd_228 arg0
    .short 552
    .short \arg0
    .endm

    .macro ScrCmd_229 arg0
    .short 553
    .short \arg0
    .endm

    .macro ScrCmd_22A
    .short 554
    .endm

    .macro ScrCmd_22B
    .short 555
    .endm

    .macro ScrCmd_22C
    .short 556
    .endm

    .macro ScrCmd_22D arg0, arg1
    .short 557
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_230 arg0, arg1, arg2
    .short 560
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_231 arg0, arg1
    .short 561
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_234 arg0
    .short 564
    .short \arg0
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

    .macro ScrCmd_23A arg0, arg1, arg2
    .short 570
    .short \arg0
    .short \arg1
    .short \arg2
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

    .macro ScrCmd_23E arg0, arg1=0, arg2=0
    .short 574
    .short \arg0
    .if \arg0 == 1 || \arg0 == 2 || \arg0 == 3
        .short \arg1
    .else
        .if \arg0 == 5 || \arg0 == 6
            .short \arg1
            .short \arg2
        .endif
    .endif
    .endm

    .macro ScrCmd_23F
    .short 575
    .endm

    .macro ScrCmd_240
    .short 576
    .endm

    .macro ScrCmd_241
    .short 577
    .endm

    .macro ScrCmd_242
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

    .macro ScrCmd_247 arg0
    .short 583
    .short \arg0
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

    .macro ScrCmd_24E arg0
    .short 590
    .short \arg0
    .endm

    .macro ScrCmd_24F arg0, arg1, arg2, arg3
    .short 591
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_250
    .short 592
    .endm

    .macro ScrCmd_251 arg0, arg1
    .short 593
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_252 arg0
    .short 594
    .short \arg0
    .endm

    .macro ScrCmd_253 arg0
    .short 595
    .short \arg0
    .endm

    .macro ScrCmd_254 arg0
    .short 596
    .short \arg0
    .endm

    .macro ScrCmd_255
    .short 597
    .endm

    .macro ScrCmd_256 arg0, arg1
    .short 598
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_257
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

    .macro ScrCmd_25B
    .short 603
    .endm

    .macro ScrCmd_25C
    .short 604
    .endm

    .macro ScrCmd_25D arg0
    .short 605
    .short \arg0
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

    .macro ScrCmd_261 arg0, arg1
    .short 609
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_262 arg0, arg1
    .short 610
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_263 arg0
    .short 611
    .short \arg0
    .endm

    .macro ScrCmd_264 arg0
    .short 612
    .short \arg0
    .endm

    .macro ScrCmd_265
    .short 613
    .endm

    .macro ScrCmd_266
    .short 614
    .endm

    .macro ScrCmd_267 arg0
    .short 615
    .short \arg0
    .endm

    .macro ScrCmd_268 arg0
    .short 616
    .short \arg0
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

    .macro ScrCmd_26C arg0
    .short 620
    .short \arg0
    .endm

    .macro ScrCmd_26D arg0
    .short 621
    .short \arg0
    .endm

    .macro ScrCmd_26E arg0
    .short 622
    .short \arg0
    .endm

    .macro ScrCmd_26F
    .short 623
    .endm

    .macro ScrCmd_270 arg0, arg1
    .short 624
    .short \arg0
    .byte \arg1
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

    .macro ScrCmd_274 arg0, arg1
    .short 628
    .short \arg0
    .long \arg1
    .endm

    .macro ScrCmd_275 arg0
    .short 629
    .short \arg0
    .endm

    .macro ScrCmd_276 arg0, arg1
    .short 630
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_277 arg0
    .short 631
    .short \arg0
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

    .macro ScrCmd_27B
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

    .macro ScrCmd_27E arg0
    .short 638
    .short \arg0
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

    .macro ScrCmd_283 arg0, arg1
    .short 643
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_284 arg0
    .short 644
    .short \arg0
    .endm

    .macro ScrCmd_285 arg0, arg1
    .short 645
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_286 arg0
    .short 646
    .short \arg0
    .endm

    .macro ScrCmd_287 arg0
    .short 647
    .short \arg0
    .endm

    .macro ScrCmd_288 arg0
    .short 648
    .short \arg0
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

    .macro ScrCmd_28B arg0, arg1
    .short 651
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_28C arg0
    .short 652
    .short \arg0
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

    .macro ScrCmd_293 arg0
    .short 659
    .short \arg0
    .endm

    .macro ScrCmd_294 arg0, arg1
    .short 660
    .byte \arg0
    .byte \arg1
    .endm

    .macro ScrCmd_295
    .short 661
    .endm

    .macro ScrCmd_296
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

    .macro ScrCmd_29D arg0, arg1
    .short 669
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2A0 arg0, arg1, arg2
    .short 672
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2A1 arg0, arg1, arg2
    .short 673
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2A2 arg0
    .short 674
    .short \arg0
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

    .macro ScrCmd_2A6 arg0, arg1, arg2
    .short 678
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2A7 arg0, arg1
    .short 679
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2A8 arg0
    .short 680
    .short \arg0
    .endm

    .macro ScrCmd_2A9 arg0, arg1
    .short 681
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2AE arg0, arg1
    .short 686
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2B9
    .short 697
    .endm

    .macro ScrCmd_2BA arg0
    .short 698
    .short \arg0
    .endm

    .macro ScrCmd_2BB
    .short 699
    .endm

    .macro ScrCmd_2BC arg0
    .short 700
    .short \arg0
    .endm

    .macro ScrCmd_2BD arg0, arg1
    .short 701
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2C9
    .short 713
    .endm

    .macro ScrCmd_2CA
    .short 714
    .endm

    .macro ScrCmd_2CB arg0, arg1
    .short 715
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2D8 arg0
    .short 728
    .byte \arg0
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

    .macro ScrCmd_2DD arg0, arg1
    .short 733
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2DE arg0, arg1, arg2, arg3, arg4
    .short 734
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_2DF arg0
    .short 735
    .short \arg0
    .endm

    .macro ScrCmd_2E0 arg0, arg1
    .short 736
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2E1 arg0, arg1
    .short 737
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_2E5 arg0, arg1, arg2
    .short 741
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2E6 arg0, arg1, arg2
    .short 742
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2E7 arg0, arg1
    .short 743
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2E8 arg0
    .short 744
    .short \arg0
    .endm

    .macro ScrCmd_2E9 arg0, arg1, arg2
    .short 745
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro ScrCmd_2EA arg0, arg1
    .short 746
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2EB arg0
    .short 747
    .short \arg0
    .endm

    .macro ScrCmd_2EC arg0, arg1, arg2, arg3
    .short 748
    .byte \arg0
    .byte \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_2ED
    .short 749
    .endm

    .macro ScrCmd_2EE arg0, arg1, arg2, arg3
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

    .macro ScrCmd_2F0
    .short 752
    .endm

    .macro ScrCmd_2F1 arg0, arg1
    .short 753
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_2F2
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

    .macro ScrCmd_2F5 arg0, arg1, arg2, arg3
    .short 757
    .byte \arg0
    .long \arg1
    .byte \arg2
    .byte \arg3
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

    .macro ScrCmd_2F8
    .short 760
    .endm

    .macro ScrCmd_2F9 arg0
    .short 761
    .short \arg0
    .endm

    .macro ScrCmd_2FA arg0
    .short 762
    .short \arg0
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

    .macro ScrCmd_2FE arg0, arg1
    .short 766
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_302 arg0, arg1, arg2, arg3, arg4
    .short 770
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .endm

    .macro ScrCmd_303 arg0, arg1
    .short 771
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_304 arg0, arg1, arg2, arg3
    .short 772
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro ScrCmd_305 arg0, arg1
    .short 773
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_306 arg0, arg1
    .short 774
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_30A arg0
    .short 778
    .short \arg0
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

    .macro ScrCmd_318 arg0, arg1
    .short 792
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_319 arg0, arg1
    .short 793
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_31A arg0
    .short 794
    .short \arg0
    .endm

    .macro ScrCmd_31B arg0
    .short 795
    .short \arg0
    .endm

    .macro ScrCmd_31C arg0, arg1
    .short 796
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_327 arg0
    .short 807
    .short \arg0
    .endm

    .macro ScrCmd_328 arg0
    .short 808
    .short \arg0
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

    .macro ScrCmd_32B arg0
    .short 811
    .short \arg0
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

    .macro ScrCmd_32F arg0, arg1
    .short 815
    .short \arg0
    .short \arg1
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

    .macro ScrCmd_334 arg0, arg1
    .short 820
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_335 arg0, arg1
    .short 821
    .short \arg0
    .long \arg1
    .endm

    .macro ScrCmd_336 arg0
    .short 822
    .short \arg0
    .endm

    .macro ScrCmd_337 arg0, arg1
    .short 823
    .short \arg0
    .short \arg1
    .endm

    .macro ScrCmd_338
    .short 824
    .endm

    .macro ScrCmd_339
    .short 825
    .endm

    .macro ScrCmd_33A arg0
    .short 826
    .byte \arg0
    .endm

    .macro ScrCmd_33B arg0
    .short 827
    .byte \arg0
    .endm

    .macro ScrCmd_33C arg0, arg1
    .short 828
    .byte \arg0
    .short \arg1
    .endm

    .macro ScrCmd_33D arg0, arg1
    .short 829
    .byte \arg0
    .short \arg1
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

    .macro ScrCmd_342 arg0
    .short 834
    .byte \arg0
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

    .macro ScriptEntry name
    .long \name-.-4
    .endm
