#ifndef POKEPLATINUM_SCRCMD_SOUND_H
#define POKEPLATINUM_SCRCMD_SOUND_H

#include "field_script_context.h"

BOOL ScrCmd_IsSequencePlaying(ScriptContext *ctx);
BOOL ScrCmd_PlayMusic(ScriptContext *ctx);
BOOL ScrCmd_StopMusic(ScriptContext *ctx);
BOOL ScrCmd_PlayDefaultMusic(ScriptContext *ctx);
BOOL ScrCmd_SetSpecialBGM(ScriptContext *ctx);
BOOL ScrCmd_FadeOutBGM(ScriptContext *ctx);
BOOL ScrCmd_FadeInBGM(ScriptContext *ctx);
BOOL ScrCmd_SetBGMPlayerPaused(ScriptContext *ctx);
BOOL ScrCmd_057(ScriptContext *ctx);
BOOL ScrCmd_SetBGMFixed(ScriptContext *ctx);
BOOL ScrCmd_PlayFanfare(ScriptContext *ctx);
BOOL ScrCmd_StopFanfare(ScriptContext *ctx);
BOOL ScrCmd_WaitFanfare(ScriptContext *ctx);
BOOL ScrCmd_PlayCry(ScriptContext *ctx);
BOOL ScrCmd_WaitCry(ScriptContext *ctx);
BOOL ScrCmd_PlaySound(ScriptContext *ctx);
BOOL ScrCmd_WaitSound(ScriptContext *ctx);
BOOL ScrCmd_CheckRecordedChatotCryIsPlayable(ScriptContext *ctx);
BOOL ScrCmd_TryRecordChatotCry(ScriptContext *ctx);
BOOL ScrCmd_StopRecordingChatotCry(ScriptContext *ctx);
BOOL ScrCmd_StoreRecordedChatotCry(ScriptContext *ctx);
BOOL ScrCmd_SetSubScene63(ScriptContext *ctx);
BOOL ScrCmd_SetInitialVolumeForSequence(ScriptContext *ctx);
BOOL ScrCmd_SetScene22(ScriptContext *ctx);
BOOL ScrCmd_SetFieldScene(ScriptContext *ctx);
BOOL ScrCmd_GetCurrentBGM(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_SOUND_H
