#ifndef POKEPLATINUM_FRSCRCMD_SOUND_H
#define POKEPLATINUM_FRSCRCMD_SOUND_H

#include "overlay104/frontier_script_context.h"

BOOL FrontierScrCmd_PlaySoundEffect(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_StopSoundEffect(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_WaitSoundEffect(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_PlayFanfare(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_WaitFanfare(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_PlayBGM(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_StopBGM(FrontierScriptContext *ctx);

#endif // POKEPLATINUM_FRSCRCMD_SOUND_H
