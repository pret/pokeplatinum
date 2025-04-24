#ifndef POKEPLATINUM_UNK_020482D4_H
#define POKEPLATINUM_UNK_020482D4_H

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
BOOL ScrCmd_2F8(ScriptContext *param0);
BOOL ScrCmd_2F9(ScriptContext *param0);
BOOL ScrCmd_2FA(ScriptContext *param0);

#endif // POKEPLATINUM_UNK_020482D4_H
