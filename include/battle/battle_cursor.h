#ifndef POKEPLATINUM_OV16_0226871C_H
#define POKEPLATINUM_OV16_0226871C_H

#include "struct_decls/battle_system.h"

#include "battle/move_display_info.h"
#include "battle/struct_ov16_02268A14_decl.h"

#include "bg_window.h"
#include "narc.h"

void BattleSubscreenBg_Init(BgConfig *bgConfig);
void BattleSubscreenBg_Free(BgConfig *bgConfig);
void *BattleSubscreen_New(NARC *unused1, NARC *unused2, BattleSystem *battleSys, int trainerGender, u8 *subscreenCursorOn);
void BattleSubscreen_Free(BattleSubscreen *btlSubscreen);
void BattleSubscreen_LoadGraphics(BattleSubscreen *btlSubscreen);
void BattleSubscreen_FreeGraphics(BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetupBackground(NARC *unused, NARC *spriteNarc, BattleSubscreen *btlSubscreen, int menuConfigIndex, int forceRedraw, void *battleDisplayData);
void BattleSubscreen_LoadSprites(NARC *param0, BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetExpPercents(BattleSubscreen *btlSubscreen, const u8 *param1);
void BattleSubscreen_SetBallStatus(BattleSubscreen *btlSubscreen, u8 param1[], u8 param2[]);
void BattleSubscreen_ShowBallSprites(BattleSubscreen *btlSubscreen);
void BattleSubscreen_HideBallSprites(BattleSubscreen *btlSubscreen);
int BattleSystem_MenuInput(BattleSubscreen *btlSubscreen);
BOOL BattleSubscreen_IsReady(BattleSubscreen *btlSubscreen);
int GetTargetSelectLayout(int param0, int param1);
void BattleSubscreen_UpdateSlideWindow(BattleSubscreen *btlSubscreen);
void BattleSubscreen_StartPanelSlide(BattleSubscreen *btlSubscreen, int param1, int param2);
void BattleSubscreen_UpdateMoveDisplay(BattleSubscreen *btlSubscreen, int param1, const MoveDisplayInfo *moveDisplayInfo);
void ov16_Dummy3(BattleSubscreen *btlSubscreen, int param1);
BOOL ov16_0226BCD0(BattleSubscreen *btlSubscreen);
int BattleSubscreen_GetSuppressActivationSFX(BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetSuppressActivationSFX(BattleSubscreen *btlSubscreen, int param1);
void BattleSubscreen_ShowStopRecordingMessage(BattleSubscreen *btlSubscreen, int param1);
u8 BattleSubscreen_IsWaitingForPartner(BattleSubscreen *btlSubscreen);

#endif // POKEPLATINUM_OV16_0226871C_H
