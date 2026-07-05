#include "battle/battle_subscreen.h"

#include <nitro.h>

#include "constants/moves.h"
#include "generated/genders.h"
#include "generated/moves.h"
#include "generated/pokemon_types.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/font_oam.h"
#include "struct_defs/battler_data.h"
#include "struct_defs/struct_020127E8.h"

#include "battle/battle_display.h"
#include "battle/battle_system.h"
#include "battle/cursor_renderer.h"
#include "battle/indicator.h"
#include "overlay011/move_palettes.h"

#include "assert.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "coordinates.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "message_util.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "type_icon.h"
#include "unk_02012744.h"
#include "unk_0208C098.h"

#include "res/text/bank/battle_strings.h"

static void *BattleSubscreen_Alloc(void);
static void BattleSubscreen_OpenActionMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawActionMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_OpenFirstBattleMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawFirstBattleMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_OpenPalParkMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawPalParkMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawStopMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static int BattleSubscreen_ProcessActionInput(BattleSubscreen *btlSubscreen, int selectedAction, int unused);
static int BattleSubscreen_ProcessMoveInput(BattleSubscreen *btlSubscreen, int selectedMove, int unused);
static void BattleSubscreen_DrawMoveSelectMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void DrawMoveTypeIcons(BattleSubscreen *btlSubscreen);
static void FreeMoveTypeIcons(BattleSubscreen *btlSubscreen);
static void FreeCategoryIcons(BattleSubscreen *btlSubscreen);
static void StartMenuTransitionTask(SysTaskFunc callback, BattleSubscreen *btlSubscreen);
static void StopMenuTransitionTask(BattleSubscreen *btlSubscreen);
static int BattleSubscreen_ProcessYesNoInput(BattleSubscreen *btlSubscreen, int selectedButton, int unused);
static int BattleSubscreen_ProcessStopInput(BattleSubscreen *btlSubscreen, int selectedButton, int unused);
static int BattleSubscreen_ProcessTargetInput(BattleSubscreen *btlSubscreen, int selectedTarget, int unused);
static void BattleSubscreen_DrawYesNoMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawForgetMoveMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawGiveUpMoveMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawUseNextMonMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawSwitchMonMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void BattleSubscreen_DrawTargetSelectMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2);
static void LoadMoveSelectPlttSlot(BattleSubscreen *btlSubscreen, enum PokemonType moveType, int moveSlot);
static void LoadEmptyMoveSlotBg(BattleSubscreen *btlSubscreen, int startSlot);
static void ClearMenuSlotBg(BattleSubscreen *btlSubscreen, int slotIndex);
static int GetBallStatusAnimID(u8 ballStatus);
static void BattleSubscreen_FreeSprites(BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetBallStatus(BattleSubscreen *btlSubscreen, u8 playerBallStatuses[], u8 opponentBallStatuses[]);
void BattleSubscreen_ShowBallSprites(BattleSubscreen *btlSubscreen);
void BattleSubscreen_HideBallSprites(BattleSubscreen *btlSubscreen);
static void SysTask_ConfigureBgLayers(SysTask *task, void *subscreen);
static void ResetSubscreenBgLayers(void);
static void SysTask_ResetSubscreenBg(SysTask *task, void *unused);
static void BattleSubscreen_Cleanup(BattleSubscreen *btlSubscreen, BOOL freeSprites, BOOL resetBg);
static void BattleSubscreen_FreeAllSprites(BattleSubscreen *btlSubscreen);
static void SysTask_AnimateMenuButtonPress(SysTask *unused, void *subscreen);
static void SysTask_AnimateMoveButtonPress(SysTask *unused, void *subscreen);
static void SysTask_AnimateTargetButtonPress(SysTask *unused, void *subscreen);
static void GetBattlerTargetFlags(BattleSubscreen *btlSubscreen, int selectedTarget, u8 *outFlags, int checkPresence);
static void GetTargetSlotFlags(BattleSubscreen *btlSubscreen, u8 *outFlags, BOOL checkPresence);
static void ov16_Dummy2(BattleSubscreen *unused1, int unused2);
void BattleSubscreen_StartPanelSlide(BattleSubscreen *btlSubscreen, int slideSpeed, int targetOffset);
static void SysTask_SlidePanel(SysTask *task, void *subscreen);
static void ov16_Dummy1(BattleSubscreen *unused1, int unused2);
static void BattleSubscreen_NewFontOAM(BattleSubscreen *btlSubscreen, FontOAMEntry *fontOAMEntry, const String *str, enum Font font, TextColor textColor, int plttOffset, int plttResID, int x, int y, int centerX, TextWindowLayout *precomputedLayout);
static void BattleSubscreen_FreeFontOAMs(BattleSubscreen *btlSubscreen);
static void BattleSubscreen_LoadPokeIconResources(BattleSubscreen *btlSubscreen);
static void BattleSubscreen_FreePokeIconResources(BattleSubscreen *btlSubscreen);
static void BattleSubscreen_FreePokeIconSprites(BattleSubscreen *btlSubscreen);
static ManagedSprite *BattleSubscreen_NewPokeIconSprite(BattleSubscreen *btlSubscreen, Pokemon *mon, int iconSlot, int curHP, int maxHP, int monStatus);
static void SysTask_TickPokeIconAnim(SysTask *task, void *sprite);
static void SysTask_SlideInPanel(SysTask *task, void *panelState);
static void SysTask_ApplySlideInBgOffsets(SysTask *unused, void *panelState);
static void HBlankCallback_SlideInPanel(void *panelState);
static TextColor GetPPTextColor(int currPP, int maxPP);
void ov16_Dummy3(BattleSubscreen *unused1, int unused2);
BOOL useless_0226BCD0(BattleSubscreen *btlSubscreen);
static void SysTask_PulseCursorHighlight(SysTask *unused, void *subscreen);
static void SysTask_AnimatePartyBalls(SysTask *unused, void *subscreen);
static int BattleSystem_MenuKeys(BattleSubscreen *btlSubscreen);
static int BattleSystem_Cursor_Menu(BattleSubscreen *btlSubscreen, BOOL cursorHidden);
static int BattleSystem_Cursor_Moves(BattleSubscreen *btlSubscreen, BOOL cursorHidden);
static int BattleSystem_Cursor_Battler(BattleSubscreen *btlSubscreen, BOOL isCursorHidden);
static int BattleSystem_Cursor_YesNo(BattleSubscreen *btlSubscreen, BOOL isCursorHidden);
static u32 BattleSystem_MoveCursor(MenuCursor *cursor, int width, int height, const u8 *layout);
static void SaveActionMenuCursorPos(BattleSubscreen *btlSubscreen, int selectedAction);
static void SaveMoveSelectMenuCursorPos(BattleSubscreen *btlSubscreen, int selectedMove);
static void SaveTargetSelectMenuCursorPos(BattleSubscreen *btlSubscreen, int selectedTarget);
static void ApplyMoveSlotTilemap(BattleSubscreen *btlSubscreen, const s16 *tileOffsets, const SubscreenTilemapRect *tilemapRect, int srcBufIndex, int offsetIndex);
static MoveDisplayData *GetMoveDisplayData(BattleSubscreen *btlSubscreen, int battlerSlot);
static void FreeMoveDisplayData(BattleSubscreen *btlSubscreen);
static void CalcStringDimensions(const String *str, int font, int *textWidth, int *width);
static void PrepareTextWindow(BattleSubscreen *btlSubscreen, const String *str, enum Font font, TextWindowLayout *textLayout, TextColor textColor);
static void BattleSubscreen_DrawTargetSelectBg(BattleSubscreen *btlSubscreen);
static int BattleSystem_Cursor_PalPark(BattleSubscreen *btlSubscreen, BOOL isCursorHidden);
static void SysTask_UpdateSpeedUpPalette(SysTask *unused, void *subscreen);
static int GetCatchTutorialInput(BattleSubscreen *btlSubscreen);
static int GetCatchTutorialInputStep0(BattleSubscreen *btlSubscreen);
static int GetCatchTutorialInputStep1(BattleSubscreen *btlSubscreen);
static int GetCatchTutorialLowHPInput(BattleSubscreen *btlSubscreen);

__attribute__((aligned(4))) static const u16 sBgScreenNarcIndices[] = {
    0x31,
    0x2A,
    0x2F,
    0x2B,
    0x2C,
    0x30,
    0x2D
};

__attribute__((aligned(4))) static const u16 sMoveTypeIconPositions[][2] = {
    { 0x20, 0x3E },
    { 0xA0, 0x3E },
    { 0x20, 0x7E },
    { 0xA0, 0x7E }
};

__attribute__((aligned(4))) static const u16 sMoveSlotPPLabelPositions[][2] = {
    { 0x3B, 0x3E },
    { 0xBB, 0x3E },
    { 0x3B, 0x7E },
    { 0xBB, 0x7E }
};

__attribute__((aligned(4))) static const u16 sMoveSlotPPCountPositions[][2] = {
    { 0x4C, 0x3E },
    { 0xCC, 0x3E },
    { 0x4C, 0x7E },
    { 0xCC, 0x7E }
};

__attribute__((aligned(4))) static const u16 sTargetSelectNamePositions[][2] = {
    { 0x3C, 0x74 },
    { 0xC4, 0x20 },
    { 0xC4, 0x74 },
    { 0x3C, 0x20 },
    { 0x80, 0xB2 }
};

__attribute__((aligned(4))) static const u16 sTargetSelectIconPositions[][2] = {
    { 0x3C, 0x74 },
    { 0xC4, 0x38 },
    { 0xC4, 0x74 },
    { 0x3C, 0x38 }
};

static const BgTemplate sSubscreenBgTemplates[] = {
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    }
};

static const TouchScreenRect sActionMenuTouchRects[] = {
    { 0x18, 0x90, 0x0, 0xFF },
    { 0x90, 0xC0, 0x0, 0x50 },
    { 0x90, 0xC0, 0xB0, 0xFF },
    { 0x98, 0xC0, 0x58, 0xA8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int sActionMenuButtonResults[NELEMS(sActionMenuTouchRects) - 1] = {
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 Unused_ov16_02270A08[NELEMS(sActionMenuTouchRects) - 1] = {
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 sBattleMenuButtonLayout[2][3] = {
    { 0x0, 0x0, 0x0 },
    { 0x1, 0x3, 0x2 }
};

static const TouchScreenRect sFirstBattleMenuTouchRects[] = {
    { 0x18, 0x90, 0x0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect sPalParkMenuTouchRects[] = {
    { 0x28, 0x80, 0x18, 0xE8 },
    { 0x98, 0xC0, 0x58, 0xA8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int sFightRunButtonResults[NELEMS(sActionMenuTouchRects) - 1] = {
    0x1,
    0x4
};

__attribute__((aligned(4))) static const u8 sFightRunButtonSlots[NELEMS(sActionMenuTouchRects) - 1] = {
    0x1,
    0x4
};

__attribute__((aligned(4))) static const u8 palParkMenuButtonLayout[2][1] = {
    { 0x0 },
    { 0x1 }
};

static const TouchScreenRect sMoveSelectMenuTouchRects[] = {
    { 0x98, 0xC0, 0x8, 0xF8 },
    { 0x18, 0x50, 0x0, 0x80 },
    { 0x18, 0x50, 0x80, 0xFF },
    { 0x58, 0x90, 0x0, 0x80 },
    { 0x58, 0x90, 0x80, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int sMoveSelectButtonResults[NELEMS(sMoveSelectMenuTouchRects) - 1] = {
    0xFF,
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 sMoveSelectButtonSlots[NELEMS(sMoveSelectMenuTouchRects) - 1] = {
    0x4,
    0x8,
    0x9,
    0xA,
    0xB
};

__attribute__((aligned(4))) static const u8 sMoveMenuButtonLayout[3][2] = {
    { 0x1, 0x2 },
    { 0x3, 0x4 },
    { 0x0, 0x0 }
};

static const TouchScreenRect sYesNoMenuTouchRects[] = {
    { 0x28, 0x60, 0x8, 0xF8 },
    { 0x70, 0xA8, 0x8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int sYesNoButtonResults[NELEMS(sYesNoMenuTouchRects) - 1] = {
    0x1,
    0xFF
};

__attribute__((aligned(4))) static const u8 sYesNoButtonSlots[NELEMS(sYesNoMenuTouchRects) - 1] = {
    0x1,
    0x4
};

__attribute__((aligned(4))) static const u8 sYesNoMenuButtonLayout[2][1] = {
    { 0x0 },
    { 0x1 }
};

static const TouchScreenRect sTargetSelectMenuTouchRects[] = {
    { 0x58, 0x90, 0x0, 0x78 },
    { 0x8, 0x50, 0x88, 0xFF },
    { 0x58, 0x90, 0x88, 0xFF },
    { 0x8, 0x50, 0x0, 0x78 },
    { 0x98, 0xC0, 0x8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int sTargetSelectButtonResults[NELEMS(sTargetSelectMenuTouchRects) - 1] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0xFF
};

__attribute__((aligned(4))) static const u8 sTargetSelectButtonSlots[NELEMS(sTargetSelectMenuTouchRects) - 1] = {
    0x6,
    0xC,
    0xD,
    0x5,
    0x4
};

__attribute__((aligned(4))) static const u8 sSelectTargetMenuButtonLayout[3][2] = {
    { 0x3, 0x1 },
    { 0x0, 0x2 },
    { 0x4, 0x4 }
};

static const TouchScreenRect sStopMenuTouchRects[] = {
    { 0x98, 0xC0, 0x0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int sStopMenuButtonResults[NELEMS(sStopMenuTouchRects) - 1] = {
    0x1
};

__attribute__((aligned(4))) static const u8 sStopMenuButtonSlots[NELEMS(sStopMenuTouchRects) - 1] = {
    0x4
};

static const BattleMenuConfig sBattleMenuConfigs[] = {
    // Menu structures
    {
        0x1C,
        0xF2,
        { 0xFFFF, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sActionMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_OpenActionMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sActionMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_OpenActionMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sActionMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_DrawActionMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sActionMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_DrawActionMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sFirstBattleMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_OpenFirstBattleMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sFirstBattleMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_DrawFirstBattleMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sActionMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_OpenActionMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sActionMenuTouchRects,
        sActionMenuButtonResults,
        Unused_ov16_02270A08,
        BattleSystem_Cursor_Menu,
        SaveActionMenuCursorPos,
        BattleSubscreen_DrawActionMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sPalParkMenuTouchRects,
        sFightRunButtonResults,
        sFightRunButtonSlots,
        BattleSystem_Cursor_PalPark,
        NULL,
        BattleSubscreen_OpenPalParkMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sPalParkMenuTouchRects,
        sFightRunButtonResults,
        sFightRunButtonSlots,
        BattleSystem_Cursor_PalPark,
        NULL,
        BattleSubscreen_DrawPalParkMenu,
        BattleSubscreen_ProcessActionInput,
    },
    {
        0x1C,
        0xF2,
        { 0x3, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sMoveSelectMenuTouchRects,
        sMoveSelectButtonResults,
        sMoveSelectButtonSlots,
        BattleSystem_Cursor_Moves,
        SaveMoveSelectMenuCursorPos,
        BattleSubscreen_DrawMoveSelectMenu,
        BattleSubscreen_ProcessMoveInput,
    },
    {
        0x1C,
        0xF2,
        { 0x4, 0x5, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sTargetSelectMenuTouchRects,
        sTargetSelectButtonResults,
        sTargetSelectButtonSlots,
        BattleSystem_Cursor_Battler,
        SaveTargetSelectMenuCursorPos,
        BattleSubscreen_DrawTargetSelectMenu,
        BattleSubscreen_ProcessTargetInput,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sYesNoMenuTouchRects,
        sYesNoButtonResults,
        sYesNoButtonSlots,
        BattleSystem_Cursor_YesNo,
        NULL,
        BattleSubscreen_DrawYesNoMenu,
        BattleSubscreen_ProcessYesNoInput,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sYesNoMenuTouchRects,
        sYesNoButtonResults,
        sYesNoButtonSlots,
        BattleSystem_Cursor_YesNo,
        NULL,
        BattleSubscreen_DrawForgetMoveMenu,
        BattleSubscreen_ProcessYesNoInput,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sYesNoMenuTouchRects,
        sYesNoButtonResults,
        sYesNoButtonSlots,
        BattleSystem_Cursor_YesNo,
        NULL,
        BattleSubscreen_DrawGiveUpMoveMenu,
        BattleSubscreen_ProcessYesNoInput,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sYesNoMenuTouchRects,
        sYesNoButtonResults,
        sYesNoButtonSlots,
        BattleSystem_Cursor_YesNo,
        NULL,
        BattleSubscreen_DrawUseNextMonMenu,
        BattleSubscreen_ProcessYesNoInput,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        sYesNoMenuTouchRects,
        sYesNoButtonResults,
        sYesNoButtonSlots,
        BattleSystem_Cursor_YesNo,
        NULL,
        BattleSubscreen_DrawSwitchMonMenu,
        BattleSubscreen_ProcessYesNoInput,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0x4, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        sStopMenuTouchRects,
        sStopMenuButtonResults,
        sStopMenuButtonSlots,
        NULL,
        NULL,
        BattleSubscreen_DrawStopMenu,
        BattleSubscreen_ProcessStopInput,
    },
};

static const SpriteTemplate sPlayerPartyBallTemplate = {
    0xC,
    0xD,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E37, 0x4E37, 0x4E2F, 0x4E2F, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

static const SpriteTemplate sOpponentPartyBallTemplate = {
    0xF6,
    0x9,
    0x0,
    0x0,
    0xB,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E38, 0x4E37, 0x4E30, 0x4E30, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

static const SpriteTemplate sMoveTypeIconTemplate = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E39, 0x4E34, 0x4E31, 0x4E31, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

static const SpriteTemplate sTargetSelectPokeIconTemplate = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E45, 0x4E36, 0x4E35, 0x4E35, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

__attribute__((aligned(4))) static const s16 sMenuButtonPressKeyframes[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sMenuButtonPressTilemapRects[] = {
    { 0x4, 0xF, 0x2, 0x1D },
    { 0x11, 0x17, 0x0, 0x9 },
    { 0x11, 0x17, 0x16, 0x1F },
    { 0x12, 0x17, 0xB, 0x14 },
};

__attribute__((aligned(4))) static const s16 sMoveButtonPressKeyframes[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sMoveButtonPressTilemapRects[] = {
    { 0x2, 0x9, 0x0, 0xF },
    { 0x2, 0x9, 0x10, 0x1F },
    { 0xA, 0x11, 0x0, 0xF },
    { 0xA, 0x11, 0x10, 0x1F },
    { 0x12, 0x17, 0x1, 0x1E },
};

__attribute__((aligned(4))) static const s16 sEmptyMoveSlotTileOffsets[] = {
    0x22F,
    0x22C,
    0x229,
    0x226,
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sEmptyMoveSlotTilemapRects[] = {
    { 0x3, 0x9, 0x0, 0xF },
    { 0x3, 0x9, 0x10, 0x1F },
    { 0xB, 0x11, 0x0, 0xF },
    { 0xB, 0x11, 0x10, 0x1F },
};

__attribute__((aligned(4))) static const s16 sTargetSelectButtonPressKeyframes[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sTargetSelectButtonPressTilemapRects[] = {
    { 0xA, 0x11, 0x0, 0xE },
    { 0x0, 0x9, 0x11, 0x1F },
    { 0xA, 0x11, 0x11, 0x1F },
    { 0x0, 0x9, 0x0, 0xE },
    { 0x12, 0x17, 0x1, 0x1E },
};

__attribute__((aligned(4))) static const s16 sClearMenuSlotTileOffsets[] = {
    0x238,
    0x235,
    0x232,
    0x23B,
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sClearMenuSlotTilemapRects[] = {
    { 0xB, 0x11, 0x0, 0xE },
    { 0x1, 0x9, 0x11, 0x1F },
    { 0xB, 0x11, 0x11, 0x1F },
    { 0x1, 0x9, 0x0, 0xE },
};

__attribute__((aligned(4))) static const s16 sYesNoButtonPressKeyframes[][3] = {
    { 0x0, 0x5, 0xA },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sYesNoButtonPressTilemapRects[] = {
    { 0xD, 0x14, 0x0, 0x1F },
    { 0x4, 0xB, 0x0, 0x1F },
};

__attribute__((aligned(4))) static const s16 sStopButtonPressKeyframes[3] = {
    0x0,
    0xC0,
    0x180
};

__attribute__((aligned(4))) static const SubscreenTilemapRect sStopButtonPressTilemapRects[] = {
    { 0x12, 0x17, 0x0, 0x1F }
};

static const CoordinatesS16 screenPos[] = {
    { 0x80, 0x4C },
    { 0x28, 0xA4 },
    { 0xD8, 0xA4 },
    { 0x80, 0xA8 }
};

__attribute__((aligned(4))) static const int sMoveTargetSlotFlags[][4] = {
    { 0x1, 0x1, 0x1, 0x1 },
    { 0x0, 0x1, 0x0, 0x1 },
    { 0x0, 0x1, 0x1, 0x1 },
    { 0x1, 0x1, 0x1, 0x1 },
    { 0x1, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x1, 0x0, 0x1 },
    { 0x0, 0x1, 0x1, 0x1 },
    { 0x1, 0x1, 0x0, 0x1 },
    { 0x1, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x0, 0x1 },
};

static const struct {
    u16 bgPlttIndex;
    u16 moveSlotPlttIndex;
} sSubscreenBgPlttIndices[] = {
    { 0xF3, 0x10B },
    { 0xF4, 0x10C },
    { 0xF5, 0x10D },
    { 0xF6, 0x10E },
    { 0xF7, 0x10F },
    { 0xF8, 0x110 },
    { 0xF9, 0x111 },
    { 0xFA, 0x112 },
    { 0xFB, 0x113 },
    { 0xFC, 0x114 },
    { 0xFD, 0x115 },
    { 0xFE, 0x116 },
    { 0xFF, 0x117 },
    { 0x100, 0x118 },
    { 0x101, 0x119 },
    { 0x102, 0x11A },
    { 0x103, 0x11B },
    { 0x11C, 0x11D },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
};

static void *BattleSubscreen_Alloc(void)
{
    BattleSubscreen *btlSubscreen = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleSubscreen));
    MI_CpuClear8(btlSubscreen, sizeof(BattleSubscreen));
    btlSubscreen->activeMenuConfigIndex = -1;

    return btlSubscreen;
}

void BattleSubscreenBg_Init(BgConfig *bgConfig)
{
    for (int i = 0; i < NELEMS(sSubscreenBgTemplates); i++) {
        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0 + i, &sSubscreenBgTemplates[i], 0);
        Bg_FillTilemap(bgConfig, 4 + i, 0x6000 / 0x20 - 1);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0 + i, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0 + i, 3, 0);
    }
}

void BattleSubscreenBg_Free(BgConfig *bgConfig)
{
    for (int i = 0; i < NELEMS(sSubscreenBgTemplates); i++) {
        Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 0);
        Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0 + i);
    }
}

void *BattleSubscreen_New(NARC *unused1, NARC *unused2, BattleSystem *battleSys, int trainerGender, u8 *subscreenCursorOn)
{
    BattleSubscreen *btlSubscreen = BattleSubscreen_Alloc();
    btlSubscreen->battleSys = battleSys;
    btlSubscreen->trainerGender = trainerGender;
    btlSubscreen->suppressActivationSfxPtr = subscreenCursorOn;

    if (btlSubscreen->suppressActivationSfxPtr) {
        btlSubscreen->suppressActivationSfx = *subscreenCursorOn;
    }

    PaletteData *pltData = BattleSystem_GetPaletteData(battleSys);
    int bg = BattleSystem_GetBackground(battleSys);

    if (bg >= NELEMS(sSubscreenBgPlttIndices)) {
        bg = 0;
        GF_ASSERT(FALSE);
    }

    btlSubscreen->fontOAMManager = sub_02012744(13, HEAP_ID_BATTLE);
    btlSubscreen->pulseCursorTask = SysTask_Start(SysTask_PulseCursorHighlight, btlSubscreen, 1310);

    NNSG2dScreenData *screenData;
    int bgNarcIndex;

    for (int i = 0; i < SNELEMS(btlSubscreen->tilemapBuffers); i++) {
        btlSubscreen->tilemapBuffers[i] = Heap_Alloc(HEAP_ID_BATTLE, 0x800);

        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER && sBgScreenNarcIndices[i] == 49) {
            bgNarcIndex = 170;
        } else {
            bgNarcIndex = sBgScreenNarcIndices[i];
        }

        void *scrnAlloc = Graphics_GetScrnData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, bgNarcIndex, TRUE, &screenData, HEAP_ID_BATTLE);

        MI_CpuCopy32(screenData->rawData, btlSubscreen->tilemapBuffers[i], 0x800);
        Heap_Free(scrnAlloc);
    }

    int narcMemberIdx = BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER ? 340 : 242;
    btlSubscreen->subscreenPaletteBuf = Heap_Alloc(HEAP_ID_BATTLE, 0x200);

    PaletteData_LoadBufferFromFileStart(pltData, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, narcMemberIdx, HEAP_ID_BATTLE, PLTTBUF_SUB_BG, 0, PLTT_DEST(PLTT_0));

    if (sSubscreenBgPlttIndices[bg].bgPlttIndex != 0xffff) {
        PaletteData_LoadBufferFromFileStart(pltData, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, sSubscreenBgPlttIndices[bg].bgPlttIndex, HEAP_ID_BATTLE, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(PLTT_0));
    }

    u16 *unfadedPltBuf = PaletteData_GetUnfadedBuffer(pltData, 1);
    MI_CpuCopy16(unfadedPltBuf, btlSubscreen->subscreenPaletteBuf, 0x200);

    for (int i = 0; i < SNELEMS(btlSubscreen->moveDisplayData); i++) {
        MI_CpuFill8(&btlSubscreen->moveDisplayData[i].moveDisplayInfo, 0xff, sizeof(MoveDisplayInfo));
    }

    int j;

    for (int i = 0; i < SNELEMS(btlSubscreen->moveDisplayData); i++) {
        for (j = 0; j < SNELEMS(btlSubscreen->moveDisplayData[0].moveIcons); j++) {
            btlSubscreen->moveDisplayData[i].moveIcons[j] = Heap_Alloc(HEAP_ID_BATTLE, sub_0208C098(6));
        }
    }

    NNSG2dPaletteData *paletteData;
    int moveSlotPlttNarcIndex;

    btlSubscreen->normalMovePalBuf = Heap_Alloc(HEAP_ID_BATTLE, 0x40);
    btlSubscreen->speedUpMovePalBuf = Heap_Alloc(HEAP_ID_BATTLE, 0x40);

    MI_CpuCopy16(btlSubscreen->subscreenPaletteBuf, btlSubscreen->normalMovePalBuf, 0x20);
    MI_CpuCopy16(&btlSubscreen->subscreenPaletteBuf[7 * 16], &btlSubscreen->normalMovePalBuf[16], 0x20);

    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
        moveSlotPlttNarcIndex = 341;
    } else if (sSubscreenBgPlttIndices[bg].moveSlotPlttIndex != 0xffff) {
        moveSlotPlttNarcIndex = sSubscreenBgPlttIndices[bg].moveSlotPlttIndex;
    } else {
        moveSlotPlttNarcIndex = 267;
    }

    void *plttAlloc = Graphics_GetPlttData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, moveSlotPlttNarcIndex, &paletteData, HEAP_ID_BATTLE);

    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
        MI_CpuCopy16(paletteData->pRawData, btlSubscreen->speedUpMovePalBuf, 0x40);
    } else {
        MI_CpuCopy16(paletteData->pRawData, btlSubscreen->speedUpMovePalBuf, 0x20);
    }

    Heap_Free(plttAlloc);
    RenderControlFlags_ZeroSpeedUpBattle();
    RenderControlFlags_ZeroWaitBattle();

    btlSubscreen->speedUpPaletteTask = SysTask_Start(SysTask_UpdateSpeedUpPalette, btlSubscreen, 55000);

    return btlSubscreen;
}

void BattleSubscreen_Free(BattleSubscreen *btlSubscreen)
{
    if (btlSubscreen->suppressActivationSfxPtr) {
        *btlSubscreen->suppressActivationSfxPtr = btlSubscreen->suppressActivationSfx;
    }

    BattleSubscreen_FreeAllSprites(btlSubscreen);
    BattleSubscreen_FreeSprites(btlSubscreen);
    BattleSubscreen_FreeGraphics(btlSubscreen);

    sub_020127BC(btlSubscreen->fontOAMManager);
    SysTask_Done(btlSubscreen->pulseCursorTask);

    for (int i = 0; i < SNELEMS(btlSubscreen->tilemapBuffers); i++) {
        Heap_Free(btlSubscreen->tilemapBuffers[i]);
    }

    Heap_Free(btlSubscreen->subscreenPaletteBuf);
    FreeMoveDisplayData(btlSubscreen);
    Heap_Free(btlSubscreen->normalMovePalBuf);
    Heap_Free(btlSubscreen->speedUpMovePalBuf);
    SysTask_Done(btlSubscreen->speedUpPaletteTask);
    Heap_Free(btlSubscreen);
}

void BattleSubscreen_LoadGraphics(BattleSubscreen *btlSubscreen)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);
    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    int battleType = BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_FRONTIER ? 169 : 28;

    Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, battleType, bgConfig, 4, 0, 0x6000, 1, HEAP_ID_BATTLE);

    TypeIcon_LoadAnim(spriteSys, spriteMan, 20017, 20017);
    TypeIcon_LoadPltt(BattleSystem_GetPaletteData(btlSubscreen->battleSys), PLTTBUF_SUB_OBJ, spriteSys, spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, 20020);

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        TypeIcon_LoadChar(spriteSys, spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, TYPE_NORMAL, 20025 + i);
    }

    if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        Indicator_LoadResources(spriteSys, spriteMan, 5, paletteData, 20412, 20036, 20406, 20395);
        btlSubscreen->catchTutorialState.indicator = Indicator_New(spriteSys, spriteMan, HEAP_ID_BATTLE, 20412, 20036, 20406, 20395, 10, 0);
    }
}

void BattleSubscreen_FreeGraphics(BattleSubscreen *btlSubscreen)
{
    int i;
    SpriteSystem *unused = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    for (i = 0; i < 4; i++) {
        TypeIcon_UnloadChar(spriteMan, 20025 + i);
    }

    TypeIcon_UnloadPlttSrc(spriteMan, 20020);
    TypeIcon_UnloadAnim(spriteMan, 20017, 20017);

    if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        Indicator_Delete(btlSubscreen->catchTutorialState.indicator);
        Indicator_UnloadResources(spriteMan, 20412, 20036, 20406, 20395);
    }
}

void BattleSubscreen_SetupBackground(NARC *unused, NARC *spriteNarc, BattleSubscreen *btlSubscreen, int menuConfigIndex, int forceRedraw, void *battleDisplayData)
{
    const BattleMenuConfig *newBattleMenuConfig, *activeBattleMenuConfig;

    if (battleDisplayData) {
        MI_CpuCopy8(battleDisplayData, &btlSubscreen->activeMenuData, sizeof(ActiveMenuData));
    }

    btlSubscreen->isPanelSliding = 0;

    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    if (btlSubscreen->activeMenuConfigIndex == -1) {
        forceRedraw = 1;
        activeBattleMenuConfig = NULL;
    } else {
        activeBattleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];
    }

    newBattleMenuConfig = &sBattleMenuConfigs[menuConfigIndex];

    PaletteData_LoadBuffer(BattleSystem_GetPaletteData(btlSubscreen->battleSys), btlSubscreen->subscreenPaletteBuf, PLTTBUF_SUB_BG, 0, PALETTE_SIZE_BYTES * 16);

    for (int i = 0; i < SNELEMS(newBattleMenuConfig->bgTilemapBufIndices); i++) {
        if (newBattleMenuConfig->bgTilemapBufIndices[i] != 0xffff && (forceRedraw == TRUE || newBattleMenuConfig->bgTilemapBufIndices[i] != activeBattleMenuConfig->bgTilemapBufIndices[i])) {
            Bg_LoadTilemapBuffer(bgConfig, 4 + i, btlSubscreen->tilemapBuffers[newBattleMenuConfig->bgTilemapBufIndices[i]], 0x800);
            Bg_ScheduleTilemapTransfer(bgConfig, 4 + i);
        }
    }

    SpriteSystem_LoadPaletteBufferFromOpenNarc(BattleSystem_GetPaletteData(btlSubscreen->battleSys), 3, spriteSys, spriteMan, spriteNarc, 72, 0, 7, NNS_G2D_VRAM_TYPE_2DSUB, 20023);
    btlSubscreen->activeMenuConfigIndex = menuConfigIndex;

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_BGALL, 8, 12);
    BattleSubscreen_FreeAllSprites(btlSubscreen);

    if (newBattleMenuConfig->drawMenu) {
        newBattleMenuConfig->drawMenu(btlSubscreen, menuConfigIndex, forceRedraw);
    }

    SysTask_ExecuteAfterVBlank(SysTask_ConfigureBgLayers, btlSubscreen, 10);
}

void BattleSubscreen_LoadSprites(NARC *spriteNarc, BattleSubscreen *btlSubscreen)
{
    GF_ASSERT(!btlSubscreen->playerPartyBallSprites[0] && !btlSubscreen->opponentPartyBallSprites[0]);

    int i;
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, spriteNarc, 208, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 20023);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, spriteNarc, 207, TRUE, 20015);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, spriteNarc, 209, TRUE, 20015);

    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, spriteNarc, 205, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 20024);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, spriteNarc, 204, TRUE, 20016);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, spriteNarc, 206, TRUE, 20016);

    for (i = 0; i < SNELEMS(btlSubscreen->playerPartyBallSprites); i++) {
        btlSubscreen->playerPartyBallSprites[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &sPlayerPartyBallTemplate);
        Sprite_SetPositionXYWithSubscreenOffset(btlSubscreen->playerPartyBallSprites[i]->sprite, 12 + 19 * i, 13, (192 + 80) << FX32_SHIFT);
        ManagedSprite_SetAffineOverwriteMode(btlSubscreen->playerPartyBallSprites[i], AFFINE_OVERWRITE_MODE_NORMAL);

        btlSubscreen->opponentPartyBallSprites[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &sOpponentPartyBallTemplate);
        Sprite_SetPositionXYWithSubscreenOffset(btlSubscreen->opponentPartyBallSprites[i]->sprite, 246 + -12 * i, 9, (192 + 80) << FX32_SHIFT);
    }

    BattleSubscreen_HideBallSprites(btlSubscreen);

    GF_ASSERT(!btlSubscreen->animatePartyBallsTask);
    btlSubscreen->animatePartyBallsTask = SysTask_Start(SysTask_AnimatePartyBalls, btlSubscreen, 1300);

    PaletteData *pltData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);
    CursorRenderer_LoadResources(spriteSys, spriteMan, pltData, 5, 20411, 20035, 20405, 20394);
    btlSubscreen->cursorRenderer = CursorRenderer_New(spriteSys, spriteMan, HEAP_ID_BATTLE, 20411, 20035, 20405, 20394, 5, 0);
}

static void BattleSubscreen_FreeSprites(BattleSubscreen *btlSubscreen)
{
    GF_ASSERT(btlSubscreen->playerPartyBallSprites[0] && btlSubscreen->opponentPartyBallSprites[0]);

    SpriteSystem *unused = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    SpriteManager_UnloadCharObjById(spriteMan, 20023);
    SpriteManager_UnloadCellObjById(spriteMan, 20015);
    SpriteManager_UnloadAnimObjById(spriteMan, 20015);
    SpriteManager_UnloadCharObjById(spriteMan, 20024);
    SpriteManager_UnloadCellObjById(spriteMan, 20016);
    SpriteManager_UnloadAnimObjById(spriteMan, 20016);
    SpriteManager_UnloadPlttObjById(spriteMan, 20023);

    for (int i = 0; i < SNELEMS(btlSubscreen->playerPartyBallSprites); i++) {
        Sprite_DeleteAndFreeResources(btlSubscreen->playerPartyBallSprites[i]);
        btlSubscreen->playerPartyBallSprites[i] = NULL;

        Sprite_DeleteAndFreeResources(btlSubscreen->opponentPartyBallSprites[i]);
        btlSubscreen->opponentPartyBallSprites[i] = NULL;
    }

    SysTask_Done(btlSubscreen->animatePartyBallsTask);
    btlSubscreen->animatePartyBallsTask = NULL;

    CursorRenderer_UnloadResources(spriteMan, 20411, 20035, 20405, 20394);
    CursorRenderer_Delete(btlSubscreen->cursorRenderer);
}

static void SysTask_AnimatePartyBalls(SysTask *unused, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;

    for (int i = 0; i < SNELEMS(btlSubscreen->partyBallAnimState); i++) {
        PartyBallAnimState *ballAnimState = &btlSubscreen->partyBallAnimState[i];

        switch (ballAnimState->phase) {
        case 0:
        default:
            if (!Sprite_GetDrawFlag2(btlSubscreen->playerPartyBallSprites[i]->sprite)) {
                break;
            }

            if (ballAnimState->expPercent >= 87) {
                ballAnimState->unused_04 = 0;
                ballAnimState->delay = 10;
            } else {
                break;
            }

            ballAnimState->delay += LCRNG_Next() % 8;
            ballAnimState->duration = 2;
            ballAnimState->phase++;
            break;
        case 1:
            if (ballAnimState->delay > 0) {
                ballAnimState->delay--;
                break;
            }

            ballAnimState->phase++;
            break;
        case 2:
        case 4:
            ManagedSprite_OffsetAffineZRotation(btlSubscreen->playerPartyBallSprites[i], 0x800);
            ballAnimState->xOffset += 0x180;

            ManagedSprite_SetPositionXYWithSubscreenOffset(btlSubscreen->playerPartyBallSprites[i], 12 + 19 * i + ballAnimState->xOffset / 0x100, 13, (192 + 80) << FX32_SHIFT);
            ballAnimState->frameCount++;

            if (ballAnimState->frameCount >= ballAnimState->duration) {
                ballAnimState->frameCount = 0;

                if (ballAnimState->phase == 2) {
                    ballAnimState->phase++;
                } else {
                    ManagedSprite_SetAffineZRotation(btlSubscreen->playerPartyBallSprites[i], 0);
                    ManagedSprite_SetPositionXYWithSubscreenOffset(btlSubscreen->playerPartyBallSprites[i], 12 + 19 * i, 13, (192 + 80) << FX32_SHIFT);

                    ballAnimState->xOffset = 0;

                    if (ballAnimState->bounceCount < 1) {
                        ballAnimState->bounceCount++;

                        if (ballAnimState->duration > 1) {
                            ballAnimState->duration--;
                        }

                        ballAnimState->phase = 2;
                    } else {
                        ballAnimState->bounceCount = 0;
                        ballAnimState->phase = 0;
                    }
                }
            }

            break;
        case 3:
            ManagedSprite_OffsetAffineZRotation(btlSubscreen->playerPartyBallSprites[i], -0x800);
            ballAnimState->xOffset -= 0x180;

            ManagedSprite_SetPositionXYWithSubscreenOffset(btlSubscreen->playerPartyBallSprites[i], 12 + 19 * i + ballAnimState->xOffset / 0x100, 13, (192 + 80) << FX32_SHIFT);
            ballAnimState->frameCount++;

            if (ballAnimState->frameCount >= ballAnimState->duration * 2) {
                ballAnimState->frameCount = 0;
                ballAnimState->phase++;
            }
            break;
        }
    }
}

void BattleSubscreen_SetExpPercents(BattleSubscreen *btlSubscreen, const u8 *expPercents)
{
    for (int i = 0; i < SNELEMS(btlSubscreen->partyBallAnimState); i++) {
        btlSubscreen->partyBallAnimState[i].expPercent = expPercents[i];
    }
}

void BattleSubscreen_SetBallStatus(BattleSubscreen *btlSubscreen, u8 playerBallStatuses[], u8 opponentBallStatuses[])
{
    for (int i = 0; i < SNELEMS(btlSubscreen->playerPartyBallSprites); i++) {
        int animID = GetBallStatusAnimID(playerBallStatuses[i]);

        Sprite_SetAnim(btlSubscreen->playerPartyBallSprites[i]->sprite, animID);
        Sprite_TickFrame(btlSubscreen->playerPartyBallSprites[i]->sprite);

        animID = GetBallStatusAnimID(opponentBallStatuses[i]);

        Sprite_SetAnim(btlSubscreen->opponentPartyBallSprites[i]->sprite, animID);
        Sprite_TickFrame(btlSubscreen->opponentPartyBallSprites[i]->sprite);
    }
}

void BattleSubscreen_ShowBallSprites(BattleSubscreen *btlSubscreen)
{
    GF_ASSERT(btlSubscreen->playerPartyBallSprites[0] && btlSubscreen->opponentPartyBallSprites[0]);

    for (int i = 0; i < SNELEMS(btlSubscreen->playerPartyBallSprites); i++) {
        Sprite_SetDrawFlag2(btlSubscreen->playerPartyBallSprites[i]->sprite, 1);
    }

    if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_TRAINER) {
        for (int i = 0; i < SNELEMS(btlSubscreen->opponentPartyBallSprites); i++) {
            Sprite_SetDrawFlag2(btlSubscreen->opponentPartyBallSprites[i]->sprite, 1);
        }
    }
}

void BattleSubscreen_HideBallSprites(BattleSubscreen *btlSubscreen)
{
    GF_ASSERT(btlSubscreen->playerPartyBallSprites[0] && btlSubscreen->opponentPartyBallSprites[0]);

    for (int i = 0; i < SNELEMS(btlSubscreen->playerPartyBallSprites); i++) {
        Sprite_SetDrawFlag2(btlSubscreen->playerPartyBallSprites[i]->sprite, 0);
        Sprite_SetDrawFlag2(btlSubscreen->opponentPartyBallSprites[i]->sprite, 0);
    }
}

int BattleSystem_MenuInput(BattleSubscreen *btlSubscreen)
{
    int isKeyInput = 0;
    GF_ASSERT(btlSubscreen->activeMenuConfigIndex != -1);

    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];

    if (!battleMenuConfig->touchScreenRects || btlSubscreen->isPanelSliding == TRUE) {
        return 0xffffffff;
    }

    GF_ASSERT(battleMenuConfig->buttonResults);

    int buttonResult, buttonIndex, buttonSlot;

    if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        buttonIndex = GetCatchTutorialInput(btlSubscreen);
    } else {
        buttonIndex = TouchScreen_CheckRectanglePressed(battleMenuConfig->touchScreenRects);

        if (buttonIndex == TOUCHSCREEN_INPUT_NONE) {
            buttonIndex = BattleSystem_MenuKeys(btlSubscreen);
            isKeyInput++;
        }
    }

    if (buttonIndex == 0xffffffff) {
        buttonResult = 0xffffffff;
        buttonSlot = 0xff;
    } else {
        buttonResult = battleMenuConfig->buttonResults[buttonIndex];
        buttonSlot = battleMenuConfig->buttonSlots[buttonIndex];
    }

    if (battleMenuConfig->processInput) {
        buttonResult = battleMenuConfig->processInput(btlSubscreen, buttonResult, buttonSlot);

        if (buttonResult != 0xffffffff) {
            if (battleMenuConfig->saveCursorPos) {
                battleMenuConfig->saveCursorPos(btlSubscreen, buttonIndex);
            }

            MI_CpuClear8(&btlSubscreen->cursor, sizeof(MenuCursor));
            CursorRenderer_HideAllSprites(btlSubscreen->cursorRenderer);

            if (isKeyInput > 0) {
                btlSubscreen->suppressActivationSfx = 1;
            } else {
                btlSubscreen->suppressActivationSfx = 0;
            }
        }
    }

    return buttonResult;
}

BOOL BattleSubscreen_IsReady(BattleSubscreen *btlSubscreen)
{
    return !btlSubscreen->menuTransitionTask && !btlSubscreen->unused_10 && useless_0226BCD0(btlSubscreen) == TRUE;
}

int GetTargetSelectLayout(int range, int battlerType)
{
    switch (range) {
    case RANGE_SINGLE_TARGET:
        return battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2 ? 9 : 8;
    case RANGE_SINGLE_TARGET_SPECIAL:
    case RANGE_RANDOM_OPPONENT:
    case RANGE_USER:
        return battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2 ? 6 : 4;
    case RANGE_ADJACENT_OPPONENTS:
    case RANGE_OPPONENT_SIDE:
        return 1;
    case RANGE_ALL_ADJACENT:
        return battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2 ? 7 : 2;
    case RANGE_ALLY:
        return battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2 ? 4 : 6;
    case RANGE_FIELD:
        return 3;
    case RANGE_USER_OR_ALLY:
        return 10;
    case RANGE_USER_SIDE:
        return 5;
    case RANGE_SINGLE_TARGET_ME_FIRST:
        return 11;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }
}

void BattleSubscreen_UpdateSlideWindow(BattleSubscreen *btlSubscreen)
{

    GXS_SetVisibleWnd(GX_WNDMASK_W0);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);

    int windowXPos = 255 - btlSubscreen->panelScrollPos / 0x100;

    if (windowXPos < 0) {
        windowXPos = 0;
    }

    G2S_SetWnd0Position(windowXPos, 0, 255, 192);
}

void BattleSubscreen_StartPanelSlide(BattleSubscreen *btlSubscreen, int slideSpeed, int targetOffset)
{
    if (btlSubscreen->panelScrollPos == targetOffset * 0x100) {
        return;
    }

    btlSubscreen->slideSpeed = slideSpeed;
    btlSubscreen->targetOffset = targetOffset << 8;

    SysTask_Start(SysTask_SlidePanel, btlSubscreen, 1200);
}

static void SysTask_SlidePanel(SysTask *task, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    int isFinished = 0;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    btlSubscreen->panelScrollPos += btlSubscreen->slideSpeed;

    if (btlSubscreen->slideSpeed <= 0 && btlSubscreen->panelScrollPos <= btlSubscreen->targetOffset || btlSubscreen->slideSpeed > 0 && btlSubscreen->panelScrollPos >= btlSubscreen->targetOffset) {
        btlSubscreen->panelScrollPos = btlSubscreen->targetOffset;
        isFinished = 1;
    }

    Bg_SetOffset(bgConfig, BG_LAYER_SUB_2, 0, btlSubscreen->panelScrollPos / 0x100);
    BattleSubscreen_UpdateSlideWindow(btlSubscreen);

    if (isFinished == TRUE) {
        Bg_FillTilemap(bgConfig, 7, 0x6000 / 0x20 - 1);
        Bg_ToggleLayer(BG_LAYER_SUB_3, 0);
        Bg_SetPriority(BG_LAYER_SUB_3, 0);
        GXS_SetVisibleWnd(GX_WNDMASK_NONE);
        SysTask_Done(task);
    }
}

static void BattleSubscreen_SlideInPanel(BattleSubscreen *btlSubscreen, int direction)
{
    btlSubscreen->isPanelSliding = 1;

    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
    G2S_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
    G2S_SetWnd0Position(0, 0, 255, 18 * 8);
    G2S_SetWnd1Position(0, 18 * 8, 255, 192);
    GXS_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);

    SlideInPanelState *slideInPanelState = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideInPanelState));
    MI_CpuClear8(slideInPanelState, sizeof(SlideInPanelState));

    slideInPanelState->btlSubscreen = btlSubscreen;
    slideInPanelState->direction = direction;
    slideInPanelState->xShift = -(255 * 100);
    slideInPanelState->yShift = 40 * 100;
    slideInPanelState->bgXOffset = (255 * 100 - slideInPanelState->xShift) / 100;
    slideInPanelState->bgYOffset = (40 * 100 - slideInPanelState->yShift) / 100;

    Sound_PlayEffect(SEQ_SE_DP_SLIDEIN);
    SysTask_Start(SysTask_SlideInPanel, slideInPanelState, 1210);

    BOOL success = SetHBlankCallback(HBlankCallback_SlideInPanel, slideInPanelState);
    GF_ASSERT(success == TRUE);

    slideInPanelState->task = SysTask_ExecuteOnVBlank(SysTask_ApplySlideInBgOffsets, slideInPanelState, 10);
}

static void BattleSubscreen_OpenActionMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    int direction = btlSubscreen->activeMenuData.actionData.battlerType;

    BattleSubscreen_DrawActionMenu(btlSubscreen, unused1, unused2);
    BattleSubscreen_SlideInPanel(btlSubscreen, direction);
}

static void BattleSubscreen_DrawActionMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    String *fightOrBallText, *bagOrBaitText, *pokemonOrMudText, *runOrCancelText;
    ActionSelectData *actionData = &btlSubscreen->activeMenuData.actionData;
    int battlerType = actionData->battlerType;

    btlSubscreen->isWaitingForPartner = actionData->isWaitingForPartner;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    btlSubscreen->battlerType = battlerType;

    if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_SAFARI) {
        fightOrBallText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Ball);
        bagOrBaitText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Bait);
        pokemonOrMudText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Mud);
    } else if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_PAL_PARK) {
        fightOrBallText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_BallPalPark);
        bagOrBaitText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Bait);
        pokemonOrMudText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Mud);
    } else {
        fightOrBallText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Fight);
        bagOrBaitText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Bag);
        pokemonOrMudText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Pokemon);
    }

    if (btlSubscreen->isWaitingForPartner == TRUE) {
        runOrCancelText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Cancel);
        btlSubscreen->hasCancelButton = TRUE;
    } else {
        runOrCancelText = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Run);
        btlSubscreen->hasCancelButton = FALSE;
    }

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], fightOrBallText, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 84, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], bagOrBaitText, FONT_SUBSCREEN, TEXT_COLOR(4, 5, 6), 2, 20023, 40, 170, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[2], pokemonOrMudText, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 2, 20023, 216, 170, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[3], runOrCancelText, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 178, 1, NULL);

    String_Free(fightOrBallText);
    String_Free(bagOrBaitText);
    String_Free(pokemonOrMudText);
    String_Free(runOrCancelText);

    if (!(BattleSystem_GetBattleType(btlSubscreen->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK))) {
        Pokemon *partyMon = BattleSystem_GetPartyPokemon(btlSubscreen->battleSys, actionData->battler, actionData->partySlot);
        BattleSubscreen_LoadPokeIconResources(btlSubscreen);
        ManagedSprite *manSprite = BattleSubscreen_NewPokeIconSprite(btlSubscreen, partyMon, battlerType, actionData->curHp, actionData->maxHp, actionData->ballStatusBattler);

        int x, y;

        FontOAM_GetXY(btlSubscreen->fontOAMEntry[0].fontOAM, &x, &y);

        if (battlerType == 4) {
            x += btlSubscreen->fontOAMEntry[0].textWidth + 32 / 2;
        } else {
            x -= 32 / 2;
        }

        ManagedSprite_SetPositionXYWithSubscreenOffset(manSprite, x, y - (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT), (192 + 80) << FX32_SHIFT);
    }
}

static void BattleSubscreen_OpenFirstBattleMenu(BattleSubscreen *btlSubscreen, int unsed1, int unused2)
{
    int direction = btlSubscreen->activeMenuData.actionData.battlerType;

    BattleSubscreen_DrawFirstBattleMenu(btlSubscreen, unsed1, unused2);
    BattleSubscreen_SlideInPanel(btlSubscreen, direction);
}

static void BattleSubscreen_DrawFirstBattleMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    BattleSubscreen_DrawActionMenu(btlSubscreen, unused1, unused2);

    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);

    Bg_FillTilemapRect(bgConfig, 4, 0x6000 / 0x20 - 1, 0, 0x10, 32, 8, 17);
    Bg_ScheduleTilemapTransfer(bgConfig, 5);

    sub_020129D0(btlSubscreen->fontOAMEntry[1].fontOAM, 0);
    sub_020129D0(btlSubscreen->fontOAMEntry[2].fontOAM, 0);
    sub_020129D0(btlSubscreen->fontOAMEntry[3].fontOAM, 0);
}

static void BattleSubscreen_OpenPalParkMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    int direction = btlSubscreen->activeMenuData.actionData.battlerType;

    BattleSubscreen_DrawPalParkMenu(btlSubscreen, unused1, unused2);
    BattleSubscreen_SlideInPanel(btlSubscreen, direction);
}

static void BattleSubscreen_DrawPalParkMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    BattleSubscreen_DrawActionMenu(btlSubscreen, unused1, unused2);

    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);

    Bg_FillTilemapRect(bgConfig, 4, 0x6000 / 0x20 - 1, 0, 0x10, 10, 8, 17);
    Bg_FillTilemapRect(bgConfig, 4, 0x6000 / 0x20 - 1, 0x16, 0x10, 10, 8, 17);
    Bg_ScheduleTilemapTransfer(bgConfig, 5);

    sub_020129D0(btlSubscreen->fontOAMEntry[1].fontOAM, 0);
    sub_020129D0(btlSubscreen->fontOAMEntry[2].fontOAM, 0);
}

static void BattleSubscreen_DrawMoveSelectMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    int i;
    TextColor textColor;

    MoveSelectData *moveData = &btlSubscreen->activeMenuData.moveData;
    GF_ASSERT(moveData);

    btlSubscreen->battlerType = moveData->battlerType;

    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    MoveDisplayData *moveDisplayData = GetMoveDisplayData(btlSubscreen, moveData->battlerType);

    DrawMoveTypeIcons(btlSubscreen);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 64, 46, 1, &moveDisplayData->moveNameWindows[0]);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 192, 46, 1, &moveDisplayData->moveNameWindows[1]);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[2], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 64, 110, 1, &moveDisplayData->moveNameWindows[2]);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[3], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 192, 110, 1, &moveDisplayData->moveNameWindows[3]);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        textColor = GetPPTextColor(moveData->currPP[i], moveData->maxPP[i]);
        BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[9 + i], NULL, FONT_SYSTEM, textColor, 4, 20023, sMoveSlotPPCountPositions[i][0], sMoveSlotPPCountPositions[i][1], 0, &moveDisplayData->ppCountWindows[i]);
        BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[5 + i], NULL, FONT_SYSTEM, textColor, 4, 20023, sMoveSlotPPLabelPositions[i][0], sMoveSlotPPLabelPositions[i][1], 0, &moveDisplayData->ppLabelWindows[i]);
    }

    String *cancelMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Cancel2);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[4], cancelMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 178, 1, NULL);
    String_Free(cancelMsg);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (moveData->moveIDs[i] != 0) {
            int moveType = MoveTable_LoadParam(moveData->moveIDs[i], MOVEATTRIBUTE_TYPE);
            LoadMoveSelectPlttSlot(btlSubscreen, moveType, i);
        } else {
            LoadEmptyMoveSlotBg(btlSubscreen, i);
            break;
        }
    }

    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);

    if (!moveData->moveIDs[0]) {
        sub_020129D0(btlSubscreen->fontOAMEntry[0].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[5].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[9].fontOAM, 0);
    }

    if (!moveData->moveIDs[1]) {
        sub_020129D0(btlSubscreen->fontOAMEntry[1].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[6].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[10].fontOAM, 0);
    }

    if (!moveData->moveIDs[2]) {
        sub_020129D0(btlSubscreen->fontOAMEntry[2].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[7].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[11].fontOAM, 0);
    }

    if (!moveData->moveIDs[3]) {
        sub_020129D0(btlSubscreen->fontOAMEntry[3].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[8].fontOAM, 0);
        sub_020129D0(btlSubscreen->fontOAMEntry[12].fontOAM, 0);
    }
}

static void BattleSubscreen_DrawYesNoMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    String *yesMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Yes);
    String *noMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_No);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], yesMsg, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], noMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(yesMsg);
    String_Free(noMsg);
}

static void BattleSubscreen_DrawForgetMoveMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    String *forgetMoveMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ForgetAMove);
    String *keepMovesMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_KeepOldMoves);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], forgetMoveMsg, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], keepMovesMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(forgetMoveMsg);
    String_Free(keepMovesMsg);
}

static void BattleSubscreen_DrawGiveUpMoveMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    StringTemplate *template = BattleSystem_GetStringTemplate(btlSubscreen->battleSys);
    GiveUpMoveData *giveUpMoveData = &btlSubscreen->activeMenuData.giveUpMoveData;
    String *giveUpOnMoveFormatMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_GiveUpOnMove);
    String *dontGiveUpOnMoveFormatMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_DontGiveUpOnMove);
    String *giveUpMoveMsg = String_Init(100, HEAP_ID_BATTLE);
    String *dontGiveUpMoveMsg = String_Init(100, HEAP_ID_BATTLE);

    StringTemplate_SetMoveName(template, 0, giveUpMoveData->move);
    StringTemplate_Format(template, giveUpMoveMsg, giveUpOnMoveFormatMsg);
    StringTemplate_Format(template, dontGiveUpMoveMsg, dontGiveUpOnMoveFormatMsg);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], giveUpMoveMsg, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], dontGiveUpMoveMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(giveUpOnMoveFormatMsg);
    String_Free(dontGiveUpOnMoveFormatMsg);
    String_Free(giveUpMoveMsg);
    String_Free(dontGiveUpMoveMsg);
}

static void BattleSubscreen_DrawStopMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_BGALL, 31, 0);

    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    String *stopMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Stop);

    NNSG2dScreenData *screenData;

    void *srcDataAlloc = Graphics_GetScrnData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 46, TRUE, &screenData, HEAP_ID_BATTLE);
    MI_CpuCopy32(screenData->rawData, btlSubscreen->tilemapBuffers[6], 0x800);
    Heap_Free(srcDataAlloc);

    BgConfig *bgConfig1 = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    Bg_LoadTilemapBuffer(bgConfig1, 4, btlSubscreen->tilemapBuffers[6], 0x800);
    Bg_ScheduleTilemapTransfer(bgConfig1, 4);

    BgConfig *bgConfig2 = BattleSystem_GetBgConfig(btlSubscreen->battleSys);

    MI_CpuClear32(btlSubscreen->tilemapBuffers[4], 0x800);
    Bg_LoadTilemapBuffer(bgConfig2, 5, btlSubscreen->tilemapBuffers[4], 0x800);
    Bg_ScheduleTilemapTransfer(bgConfig2, 5);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], stopMsg, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 178, 1, NULL);
    String_Free(stopMsg);
}

static void BattleSubscreen_DrawUseNextMonMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    GiveUpMoveData *giveUpMoveData = &btlSubscreen->activeMenuData.giveUpMoveData;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    StringTemplate *template = BattleSystem_GetStringTemplate(btlSubscreen->battleSys);
    String *formatMsg1 = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_UseNextPokemon);
    String *formatMsg2 = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Flee);
    String *useNextMonMsg = String_Init(100, HEAP_ID_BATTLE);
    String *fleeMsg = String_Init(100, HEAP_ID_BATTLE);

    StringTemplate_SetMoveName(template, 0, giveUpMoveData->move);
    StringTemplate_Format(template, useNextMonMsg, formatMsg1);
    StringTemplate_Format(template, fleeMsg, formatMsg2);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], useNextMonMsg, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], fleeMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(formatMsg1);
    String_Free(formatMsg2);
    String_Free(useNextMonMsg);
    String_Free(fleeMsg);
}

static void BattleSubscreen_DrawSwitchMonMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    GiveUpMoveData *giveUpMoveData = &btlSubscreen->activeMenuData.giveUpMoveData;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    StringTemplate *template = BattleSystem_GetStringTemplate(btlSubscreen->battleSys);
    String *formatMsg1 = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SwitchPokemon);
    String *formatMsg2 = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_KeepBattling);
    String *switchMonMsg = String_Init(100, HEAP_ID_BATTLE);
    String *keepBattlingMsg = String_Init(100, HEAP_ID_BATTLE);

    StringTemplate_SetMoveName(template, 0, giveUpMoveData->move);
    StringTemplate_Format(template, switchMonMsg, formatMsg1);
    StringTemplate_Format(template, keepBattlingMsg, formatMsg2);

    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0], switchMonMsg, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1], keepBattlingMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(formatMsg1);
    String_Free(formatMsg2);
    String_Free(switchMonMsg);
    String_Free(keepBattlingMsg);
}

static void BattleSubscreen_DrawTargetSelectMenu(BattleSubscreen *btlSubscreen, int unused1, int unused2)
{
    TargetSelectData *targetSelectData = &btlSubscreen->activeMenuData.targetSelectData;

    btlSubscreen->targetingLayout = targetSelectData->targetingLayout;
    btlSubscreen->battlerType = targetSelectData->battlerType;

    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);

    u8 targetSlotFlags[4];
    String *message, *formatMsg;
    Pokemon *partyMon;
    BoxPokemon *boxMon;
    StringTemplate *template = BattleSystem_GetStringTemplate(btlSubscreen->battleSys);
    TextColor textColor;
    u8 unreadBattlerTypes[6];
    u8 battlersByType[6];

    GetTargetSlotFlags(btlSubscreen, targetSlotFlags, 0);
    BattleSubscreen_LoadPokeIconResources(btlSubscreen);
    BattleSubscreen_DrawTargetSelectBg(btlSubscreen);
    BattleSystem_SetBattlerTypes(btlSubscreen->battleSys, unreadBattlerTypes);
    BattleSystem_SetBattlersByType(btlSubscreen->battleSys, battlersByType);

    message = String_Init(12 + 2 + 5 * 2, HEAP_ID_BATTLE);

    for (int i = 0; i < SNELEMS(targetSelectData->targetMonData); i++) {
        int battlerIndex = battlersByType[2 + i];

        if (targetSelectData->targetMonData[battlerIndex].isPresent == TRUE && targetSlotFlags[i] == TRUE) {
            if (targetSelectData->targetMonData[battlerIndex].gender == GENDER_MALE) {
                formatMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_00962);
            } else if (targetSelectData->targetMonData[battlerIndex].gender == GENDER_FEMALE) {
                formatMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_00963);
            } else {
                formatMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_HealthBoxPokemonName);
            }

            partyMon = BattleSystem_GetPartyPokemon(btlSubscreen->battleSys, battlerIndex, targetSelectData->targetMonData[battlerIndex].partySlot);
            boxMon = Pokemon_GetBoxPokemon(partyMon);

            StringTemplate_SetNickname(template, 0, boxMon);
            StringTemplate_Format(template, message, formatMsg);

            textColor = i & 1 ? TEXT_COLOR(1, 2, 3) : TEXT_COLOR(4, 5, 6);

            BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[0 + i], message, FONT_SUBSCREEN, textColor, 6, 20023, sTargetSelectNamePositions[i][0], sTargetSelectNamePositions[i][1], 1, NULL);
            String_Free(formatMsg);

            switch (i) {
            case 1:
                BattleSubscreen_NewPokeIconSprite(btlSubscreen, partyMon, 3, targetSelectData->targetMonData[battlerIndex].curHP, targetSelectData->targetMonData[battlerIndex].maxHP, targetSelectData->targetMonData[battlerIndex].stockStatus);
                break;
            case 3:
                BattleSubscreen_NewPokeIconSprite(btlSubscreen, partyMon, 5, targetSelectData->targetMonData[battlerIndex].curHP, targetSelectData->targetMonData[battlerIndex].maxHP, targetSelectData->targetMonData[battlerIndex].stockStatus);
                break;
            }
        } else {
            if (!targetSlotFlags[i]) {
                ClearMenuSlotBg(btlSubscreen, i);
            }
        }
    }

    String_Free(message);

    String *cancelMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_Cancel3);
    BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[4], cancelMsg, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, sTargetSelectNamePositions[4][0], sTargetSelectNamePositions[4][1], 1, NULL);
    String_Free(cancelMsg);
}

static int BattleSubscreen_ProcessActionInput(BattleSubscreen *btlSubscreen, int selectedAction, int unused)
{
    int buttonIndex, unread;
    int battlerShift = 0xff;

    switch (selectedAction) {
    case 0xffffffff:
    default:
        return selectedAction;
    case 1:
        buttonIndex = 0;
        unread = 0;

        switch (btlSubscreen->battlerType) {
        case 0:
            battlerShift = btlSubscreen->battlerType;
            break;
        case 2:
        case 4:
            battlerShift = btlSubscreen->battlerType - 2;
            break;
        }
        break;
    case 2:
        buttonIndex = 1;
        unread = 1;
        break;
    case 3:
        buttonIndex = 2;
        unread = 1;
        break;
    case 4:
        buttonIndex = 3;
        unread = 1;
        break;
    }

    ov16_Dummy2(btlSubscreen, unused);
    StartMenuTransitionTask(SysTask_AnimateMenuButtonPress, btlSubscreen);

    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes = sMenuButtonPressKeyframes[selectedAction - 1];
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect = &sMenuButtonPressTilemapRects[selectedAction - 1];
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex = 1;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton = selectedAction;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx = buttonIndex;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex = battlerShift;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.unread = unread;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.screenPos = screenPos[selectedAction - 1];
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.freeSprites = 1;

    return selectedAction;
}

static int BattleSubscreen_ProcessMoveInput(BattleSubscreen *btlSubscreen, int selectedMove, int unused)
{
    if (selectedMove == 0xffffffff) {
        return selectedMove;
    }

    MoveSelectData *moveData = &btlSubscreen->activeMenuData.moveData;
    const s16 *keyFrames;
    const SubscreenTilemapRect *tilemapRect;

    if (selectedMove >= 1 && selectedMove <= 4) {
        if (moveData->moveIDs[selectedMove - 1] == 0) {
            return 0xffffffff;
        }
    }

    u32 unusedVar = selectedMove - 1;

    switch (selectedMove) {
    case 0xffffffff:
    default:
        return 0xffffffff;
    case 1:
    case 2:
    case 3:
    case 4:
        keyFrames = sMoveButtonPressKeyframes[selectedMove - 1];
        tilemapRect = &sMoveButtonPressTilemapRects[selectedMove - 1];
        break;
    case 0xff:
        keyFrames = sMoveButtonPressKeyframes[NELEMS(sMoveButtonPressKeyframes) - 1];
        tilemapRect = &sMoveButtonPressTilemapRects[NELEMS(sMoveButtonPressKeyframes) - 1];
        break;
    }

    ov16_Dummy2(btlSubscreen, unused);
    StartMenuTransitionTask(SysTask_AnimateMoveButtonPress, btlSubscreen);

    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes = keyFrames;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect = tilemapRect;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex = 3;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton = selectedMove;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.freeSprites = 1;

    return selectedMove;
}

static int BattleSubscreen_ProcessYesNoInput(BattleSubscreen *btlSubscreen, int selectedButton, int unused)
{
    int buttonIndex;

    switch (selectedButton) {
    case 0xffffffff:
    default:
        return selectedButton;
    case 1:
        buttonIndex = 0;
        break;
    case 0xff:
        buttonIndex = 1;
        break;
    }

    ov16_Dummy2(btlSubscreen, unused);
    StartMenuTransitionTask(SysTask_AnimateMenuButtonPress, btlSubscreen);

    if (selectedButton == TRUE) {
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes = sYesNoButtonPressKeyframes[1];
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect = &sYesNoButtonPressTilemapRects[1];
    } else {
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes = sYesNoButtonPressKeyframes[0];
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect = &sYesNoButtonPressTilemapRects[0];
    }

    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex = 6;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton = selectedButton;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx = buttonIndex;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.unread = 3;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.freeSprites = 1;

    return selectedButton;
}

static int BattleSubscreen_ProcessTargetInput(BattleSubscreen *btlSubscreen, int selectedTarget, int unused)
{
    u8 targetSlotFlags[4];

    GetTargetSlotFlags(btlSubscreen, targetSlotFlags, 1);

    switch (selectedTarget) {
    case 0xffffffff:
    default:
        return selectedTarget;
    case 1:
        if (!targetSlotFlags[2 - 2]) {
            return 0xffffffff;
        }
        break;
    case 2:
        if (!targetSlotFlags[3 - 2]) {
            return 0xffffffff;
        }
        break;
    case 3:
        if (!targetSlotFlags[4 - 2]) {
            return 0xffffffff;
        }
        break;
    case 4:
        if (!targetSlotFlags[5 - 2]) {
            return 0xffffffff;
        }
        break;
    case 0xff:
        ov16_Dummy2(btlSubscreen, NELEMS(sTargetSelectButtonSlots) - 1);
        StartMenuTransitionTask(SysTask_AnimateMenuButtonPress, btlSubscreen);

        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes = sTargetSelectButtonPressKeyframes[NELEMS(sTargetSelectButtonPressKeyframes) - 1];
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect = &sTargetSelectButtonPressTilemapRects[NELEMS(sTargetSelectButtonPressTilemapRects) - 1];
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex = 4;
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton = selectedTarget;
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx = 4;
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.unread = 3;
        btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.freeSprites = 1;

        return selectedTarget;
    }

    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    Bg_FillTilemap(bgConfig, 5, 0x6000 / 0x20 - 1);
    Bg_ScheduleTilemapTransfer(bgConfig, 5);

    ov16_Dummy1(btlSubscreen, selectedTarget);
    StartMenuTransitionTask(SysTask_AnimateTargetButtonPress, btlSubscreen);

    btlSubscreen->menuButtonPressAnimState.TargetSelectAnimationState.selectedTarget = selectedTarget;

    return selectedTarget;
}

static int BattleSubscreen_ProcessStopInput(BattleSubscreen *btlSubscreen, int selectedButton, int unused)
{
    switch (selectedButton) {
    case 0xffffffff:
    default:
        return selectedButton;
    case 1:
        break;
    }

    ov16_Dummy2(btlSubscreen, unused);
    StartMenuTransitionTask(SysTask_AnimateMenuButtonPress, btlSubscreen);

    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes = sStopButtonPressKeyframes;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect = &sStopButtonPressTilemapRects[0];
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex = 6;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton = selectedButton;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx = 0;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.unread = 3;
    btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.freeSprites = 0;

    return selectedButton;
}

static void BattleSubscreen_LoadPokeIconResources(BattleSubscreen *btlSubscreen)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);
    PaletteData *pltData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    SpriteSystem_LoadPaletteBuffer(pltData, 3, spriteSys, spriteMan, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 20022);
    SpriteSystem_LoadCellResObj(spriteSys, spriteMan, 19, PokeIcon32KCellsFileIndex(), 0, 20021);
    SpriteSystem_LoadAnimResObj(spriteSys, spriteMan, 19, PokeIcon32KAnimationFileIndex(), 0, 20021);
}

static void BattleSubscreen_FreePokeIconResources(BattleSubscreen *btlSubscreen)
{
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    SpriteManager_UnloadCharObjById(spriteMan, 20036);
    SpriteManager_UnloadCharObjById(spriteMan, 20037);
    SpriteManager_UnloadCharObjById(spriteMan, 20038);
    SpriteManager_UnloadCellObjById(spriteMan, 20021);
    SpriteManager_UnloadAnimObjById(spriteMan, 20021);
    SpriteManager_UnloadPlttObjById(spriteMan, 20022);
}

static void BattleSubscreen_FreePokeIconSprites(BattleSubscreen *btlSubscreen)
{
    for (int i = 0; i < SNELEMS(btlSubscreen->targetSelectPokeIconSprites); i++) {
        if (btlSubscreen->targetSelectPokeIconSprites[i]) {
            Sprite_DeleteAndFreeResources(btlSubscreen->targetSelectPokeIconSprites[i]);
            btlSubscreen->targetSelectPokeIconSprites[i] = NULL;
        }

        if (btlSubscreen->pokeIconAnimTasks[i]) {
            SysTask_Done(btlSubscreen->pokeIconAnimTasks[i]);
            btlSubscreen->pokeIconAnimTasks[i] = NULL;
        }
    }
}

static ManagedSprite *BattleSubscreen_NewPokeIconSprite(BattleSubscreen *btlSubscreen, Pokemon *mon, int iconSlot, int curHP, int maxHP, int monStatus)
{
    u32 charResID;
    int iconIndex;

    if (iconSlot >= 2) {
        iconIndex = iconSlot - 2;
    } else {
        iconIndex = iconSlot;
    }

    GF_ASSERT(btlSubscreen->targetSelectPokeIconSprites[iconIndex] == NULL);
    GF_ASSERT(btlSubscreen->pokeIconAnimTasks[iconIndex] == NULL);

    switch (iconSlot) {
    case 0:
    case 2:
    case 4:
        charResID = 20036;
        break;
    case 3:
        charResID = 20037;
        break;
    case 5:
        charResID = 20038;
        break;
    default:
        GF_ASSERT(FALSE);
        return NULL;
    }

    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    SpriteSystem_LoadCharResObj(spriteSys, spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(mon), 0, NNS_G2D_VRAM_TYPE_2DSUB, charResID);

    SpriteTemplate template = sTargetSelectPokeIconTemplate;
    template.resources[0] = charResID;
    template.x = sTargetSelectIconPositions[iconIndex][0];
    template.y = sTargetSelectIconPositions[iconIndex][1];
    ManagedSprite *sprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);

    ManagedSprite_SetPositionXYWithSubscreenOffset(sprite, template.x, template.y, (192 + 80) << FX32_SHIFT);
    Sprite_SetExplicitPaletteOffsetAutoAdjust(sprite->sprite, Pokemon_IconPaletteIndex(mon));

    int animID = 0;

    if (curHP == 0 || monStatus == 2) {
        animID = 0;
    } else if (monStatus == 3) {
        animID = 5;
    } else {
        switch (HealthBar_Color(curHP, maxHP, 8 * 6)) {
        case 4:
            animID = 1;
            break;
        case 3:
            animID = 2;
            break;
        case 2:
            animID = 3;
            break;
        case 1:
            animID = 4;
            break;
        }

        ManagedSprite_SetAnim(sprite, animID);
    }

    ManagedSprite_TickFrame(sprite);

    btlSubscreen->targetSelectPokeIconSprites[iconIndex] = sprite;
    btlSubscreen->pokeIconAnimTasks[iconIndex] = SysTask_Start(SysTask_TickPokeIconAnim, sprite, 1300);

    return sprite;
}

static void SysTask_TickPokeIconAnim(SysTask *task, void *sprite)
{
    ManagedSprite *manSprite = sprite;
    ManagedSprite_TickFrame(manSprite);
}

static int GetBallStatusAnimID(u8 ballStatus)
{
    int animID;

    switch (ballStatus) {
    case 0:
    default:
        animID = 0;
        break;
    case 1:
        animID = 1;
        break;
    case 2:
        animID = 3;
        break;
    case 3:
        animID = 2;
        break;
    }

    return animID;
}

static void CalcStringDimensions(const String *str, int font, int *textWidth, int *width)
{
    int stringWidth = Font_CalcStringWidth(font, str, 0);
    int tileWidth = stringWidth / 8;

    if (FX_ModS32(stringWidth, 8) != 0) {
        tileWidth++;
    }

    *textWidth = stringWidth;
    *width = tileWidth;
}

static void BattleSubscreen_NewFontOAM(BattleSubscreen *btlSubscreen, FontOAMEntry *fontOAMEntry, const String *str, enum Font font, TextColor textColor, int plttOffset, int plttResID, int x, int y, int centerX, TextWindowLayout *precomputedLayout)
{
    GF_ASSERT(fontOAMEntry->fontOAM == NULL);

    UnkStruct_020127E8 fontOAMParams;
    BgConfig *bgConfig;

    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);
    bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);

    int textWidth, width;

    if (precomputedLayout == NULL) {
        CalcStringDimensions(str, font, &textWidth, &width);
    } else {
        textWidth = precomputedLayout->height;
        width = precomputedLayout->width;
    }

    Window window;

    if (precomputedLayout == NULL) {
        Window_Init(&window);
        Window_AddToTopLeftCorner(bgConfig, &window, width, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&window, font, str, 0, 0, TEXT_SPEED_NO_TRANSFER, textColor, 0, 0, NULL);
    } else {
        window = precomputedLayout->window;
    }

    int charTileCount = sub_02012898(&window, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_BATTLE);
    CharTransferAllocation allocation;
    CharTransfer_AllocRange(charTileCount, 1, NNS_G2D_VRAM_TYPE_2DSUB, &allocation);

    if (centerX == 1) {
        x -= textWidth / 2;
    }

    y += (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT) - 8;

    fontOAMParams.unk_00 = btlSubscreen->fontOAMManager;
    fontOAMParams.unk_04 = &window;
    fontOAMParams.unk_08 = SpriteManager_GetSpriteList(spriteMan);
    fontOAMParams.unk_0C = SpriteManager_FindPlttResourceProxy(spriteMan, plttResID);
    fontOAMParams.unk_10 = NULL;
    fontOAMParams.unk_14 = allocation.offset;
    fontOAMParams.unk_18 = x;
    fontOAMParams.unk_1C = y;
    fontOAMParams.unk_20 = 0;
    fontOAMParams.unk_24 = 100;
    fontOAMParams.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    fontOAMParams.heapID = HEAP_ID_BATTLE;

    FontOAM *fontOAM = sub_020127E8(&fontOAMParams);

    sub_02012AC0(fontOAM, plttOffset);
    FontOAM_SetXY(fontOAM, x, y);

    if (precomputedLayout == NULL) {
        Window_Remove(&window);
    }

    fontOAMEntry->fontOAM = fontOAM;
    fontOAMEntry->allocation = allocation;
    fontOAMEntry->textWidth = textWidth;
}

static void BattleSubscreen_FreeFontOAMs(BattleSubscreen *btlSubscreen)
{
    for (int i = 0; i < SNELEMS(btlSubscreen->fontOAMEntry); i++) {
        if (btlSubscreen->fontOAMEntry[i].fontOAM) {
            sub_02012870(btlSubscreen->fontOAMEntry[i].fontOAM);
            CharTransfer_ClearRange(&btlSubscreen->fontOAMEntry[i].allocation);
            btlSubscreen->fontOAMEntry[i].fontOAM = NULL;
        }
    }
}

static void BattleSubscreen_DrawTargetSelectBg(BattleSubscreen *btlSubscreen)
{
    u8 targetSlotFlags[4], battlerTargetFlags[4];
    int j, i;
    u16 *tilemapBuf, *tilemapRow;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    tilemapBuf = Bg_GetTilemapBuffer(bgConfig, 5);

    GetTargetSlotFlags(btlSubscreen, targetSlotFlags, 0);

    if (targetSlotFlags[0] == TRUE) {
        GetBattlerTargetFlags(btlSubscreen, 1, battlerTargetFlags, 0);

        if (battlerTargetFlags[3 - 1] == TRUE) {
            for (i = 12; i <= 16; i++) {
                tilemapRow = &tilemapBuf[i * 32];

                for (j = 0xf; j <= 0x10; j++) {
                    tilemapRow[j] = 0x2a4;
                }
            }
        }

        if (battlerTargetFlags[4 - 1] == TRUE) {
            for (i = 10; i <= 10; i++) {
                tilemapRow = &tilemapBuf[i * 32];

                for (j = 2; j <= 12; j++) {
                    tilemapRow[j] = 0x2a4;
                }
            }
        }
    }

    if (targetSlotFlags[1] == TRUE) {
        GetBattlerTargetFlags(btlSubscreen, 2, battlerTargetFlags, 0);

        if (battlerTargetFlags[3 - 1] == TRUE) {
            for (i = 10; i <= 10; i++) {
                tilemapRow = &tilemapBuf[i * 32];

                for (j = 0x13; j <= 0x1d; j++) {
                    tilemapRow[j] = 0x2a4;
                }
            }
        }

        if (battlerTargetFlags[4 - 1] == TRUE) {
            for (i = 3; i <= 7; i++) {
                tilemapRow = &tilemapBuf[i * 32];

                for (j = 0xf; j <= 0x10; j++) {
                    tilemapRow[j] = 0x2a4;
                }
            }
        }
    }
}

static MoveDisplayData *GetMoveDisplayData(BattleSubscreen *btlSubscreen, int battlerSlot)
{
    if (battlerSlot >= 2) {
        battlerSlot -= 2;
    }

    return &btlSubscreen->moveDisplayData[battlerSlot];
}

static void FreeMoveDisplayData(BattleSubscreen *btlSubscreen)
{
    int j;

    for (int i = 0; i < SNELEMS(btlSubscreen->moveDisplayData); i++) {
        for (j = 0; j < SNELEMS(btlSubscreen->moveDisplayData[0].moveIcons); j++) {
            Heap_Free(btlSubscreen->moveDisplayData[i].moveIcons[j]);

            if (btlSubscreen->moveDisplayData[i].moveNameWindows[j].window.pixels) {
                Window_Remove(&btlSubscreen->moveDisplayData[i].moveNameWindows[j].window);
            }

            if (btlSubscreen->moveDisplayData[i].ppCountWindows[j].window.pixels) {
                Window_Remove(&btlSubscreen->moveDisplayData[i].ppCountWindows[j].window);
            }

            if (btlSubscreen->moveDisplayData[i].ppLabelWindows[j].window.pixels) {
                Window_Remove(&btlSubscreen->moveDisplayData[i].ppLabelWindows[j].window);
            }
        }
    }
}

void BattleSubscreen_UpdateMoveDisplay(BattleSubscreen *btlSubscreen, int battlerSlot, const MoveDisplayInfo *moveDisplayInfo)
{
    MoveDisplayData *moveDisplayData;
    int i;
    String *ppCountMsg;
    String *curPPOutOfMaxPPMsg;
    String *PPMsg;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    moveDisplayData = GetMoveDisplayData(btlSubscreen, battlerSlot);
    int charDataSize = sub_0208C098(6);
    PPMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_PP);
    strTemplate = BattleSystem_GetStringTemplate(btlSubscreen->battleSys);
    ppCountMsg = String_Init((2 + 2 + 1 + 2) * 2 + 2, HEAP_ID_BATTLE);
    curPPOutOfMaxPPMsg = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_CurPPOutOfMaxPP);
    TextColor ppTextColor;
    NNSG2dCharacterData *typeIconCharInfo;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (moveDisplayInfo->move[i] != moveDisplayData->moveDisplayInfo.move[i] && moveDisplayInfo->move[i]) {
            int moveType = MoveTable_LoadParam(moveDisplayInfo->move[i], MOVEATTRIBUTE_TYPE);
            void *charData = Graphics_GetCharData(TypeIcon_GetNARC(), TypeIcon_GetChar(moveType), TRUE, &typeIconCharInfo, HEAP_ID_BATTLE);
            MI_CpuCopy32(typeIconCharInfo->pRawData, moveDisplayData->moveIcons[i], charDataSize);
            Heap_Free(charData);
        }

        if (!moveDisplayData->moveNameWindows[i].window.pixels || moveDisplayInfo->move[i] != moveDisplayData->moveDisplayInfo.move[i] && moveDisplayInfo->move[i] != 0) {
            String *moveName = MessageUtil_MoveName(moveDisplayInfo->move[i], HEAP_ID_BATTLE);
            PrepareTextWindow(btlSubscreen, moveName, FONT_SUBSCREEN, &moveDisplayData->moveNameWindows[i], TEXT_COLOR(7, 8, 9));
            String_Free(moveName);
        }

        if (!moveDisplayData->ppCountWindows[i].window.pixels || !moveDisplayData->ppLabelWindows[i].window.pixels || moveDisplayInfo->move[i] || moveDisplayInfo->move[i] != moveDisplayData->moveDisplayInfo.move[i] || moveDisplayInfo->curPP[i] != moveDisplayData->moveDisplayInfo.curPP[i] || moveDisplayInfo->maxPP[i] != moveDisplayData->moveDisplayInfo.maxPP[i]) {
            StringTemplate_SetNumber(strTemplate, 0, moveDisplayInfo->curPP[i], 2, 1, 0);
            StringTemplate_SetNumber(strTemplate, 1, moveDisplayInfo->maxPP[i], 2, 1, 0);
            StringTemplate_Format(strTemplate, ppCountMsg, curPPOutOfMaxPPMsg);

            ppTextColor = GetPPTextColor(moveDisplayInfo->curPP[i], moveDisplayInfo->maxPP[i]);

            if (!moveDisplayData->ppCountWindows[i].window.pixels || moveDisplayInfo->move[i] != moveDisplayData->moveDisplayInfo.move[i] || moveDisplayInfo->curPP[i] != moveDisplayData->moveDisplayInfo.curPP[i]) {
                PrepareTextWindow(btlSubscreen, ppCountMsg, FONT_SYSTEM, &moveDisplayData->ppCountWindows[i], ppTextColor);
            }

            if (!moveDisplayData->ppLabelWindows[i].window.pixels || moveDisplayInfo->move[i] != moveDisplayData->moveDisplayInfo.move[i] || moveDisplayInfo->curPP[i] != moveDisplayData->moveDisplayInfo.curPP[i]) {
                PrepareTextWindow(btlSubscreen, PPMsg, FONT_SYSTEM, &moveDisplayData->ppLabelWindows[i], ppTextColor);
            }
        }
    }

    String_Free(PPMsg);
    String_Free(curPPOutOfMaxPPMsg);
    String_Free(ppCountMsg);

    moveDisplayData->moveDisplayInfo = *moveDisplayInfo;
}

static void PrepareTextWindow(BattleSubscreen *btlSubscreen, const String *str, enum Font font, TextWindowLayout *textLayout, TextColor textColor)
{
    int height, width;

    CalcStringDimensions(str, font, &height, &width);

    textLayout->height = height;
    textLayout->width = width;

    if (textLayout->window.pixels) {
        Window_Remove(&textLayout->window);
    }

    Window_Init(&textLayout->window);
    Window_AddToTopLeftCorner(BattleSystem_GetBgConfig(btlSubscreen->battleSys), &textLayout->window, width, 16 / 8, 0, 0);
    Text_AddPrinterWithParamsColorAndSpacing(&textLayout->window, font, str, 0, 0, TEXT_SPEED_NO_TRANSFER, textColor, 0, 0, NULL);
}

static void DrawMoveTypeIcons(BattleSubscreen *btlSubscreen)
{
    int i;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    SpriteTemplate spriteTemplate;
    MoveSelectData *moveData;
    MoveDisplayData *moveDisplayData;

    moveData = &btlSubscreen->activeMenuData.moveData;
    spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);
    moveDisplayData = GetMoveDisplayData(btlSubscreen, btlSubscreen->battlerType);
    spriteTemplate = sMoveTypeIconTemplate;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        GF_ASSERT(btlSubscreen->moveSelectSprites[i] == NULL);

        if (moveData->moveIDs[i] != 0) {
            int moveType = MoveTable_LoadParam(moveData->moveIDs[i], MOVEATTRIBUTE_TYPE);
            spriteTemplate.resources[0] = 20025 + i;
            spriteTemplate.x = sMoveTypeIconPositions[i][0];
            spriteTemplate.y = sMoveTypeIconPositions[i][1];

            btlSubscreen->moveSelectSprites[i] = TypeIcon_NewTypeIconSprite(spriteSys, spriteMan, moveType, &spriteTemplate);

            ManagedSprite_SetPositionXYWithSubscreenOffset(btlSubscreen->moveSelectSprites[i], spriteTemplate.x, spriteTemplate.y, (192 + 80) << FX32_SHIFT);

            {
                void *objCharPtr;
                NNSG2dImageProxy *imageProxy;

                objCharPtr = G2S_GetOBJCharPtr();
                imageProxy = Sprite_GetImageProxy(btlSubscreen->moveSelectSprites[i]->sprite);

                MI_CpuCopy16(moveDisplayData->moveIcons[i], (void *)((u32)objCharPtr + imageProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DSUB]), sub_0208C098(6));
            }
        }
    }
}

static void FreeMoveTypeIcons(BattleSubscreen *btlSubscreen)
{
    int i;
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    for (i = 0; i < SNELEMS(btlSubscreen->moveSelectSprites); i++) {
        if (btlSubscreen->moveSelectSprites[i]) {
            TypeIcon_DeleteSprite(btlSubscreen->moveSelectSprites[i]);
            btlSubscreen->moveSelectSprites[i] = NULL;
        }
    }
}

static void FreeCategoryIcons(BattleSubscreen *btlSubscreen)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);

    for (int i = 0; i < SNELEMS(btlSubscreen->categoryIconSprites); i++) {
        if (btlSubscreen->categoryIconSprites[i]) {
            CategoryIcon_DeleteSprite(btlSubscreen->categoryIconSprites[i]);
            CategoryIcon_UnloadChar(spriteMan, 20029 + i);
            btlSubscreen->categoryIconSprites[i] = NULL;
        }
    }
}

static void LoadMoveSelectPlttSlot(BattleSubscreen *btlSubscreen, enum PokemonType moveType, int moveSlot)
{
    LoadMoveSelectPltt(BattleSystem_GetPaletteData(btlSubscreen->battleSys), moveType, 5, PLTTBUF_SUB_BG, PLTT_8 + moveSlot);
}

static void LoadEmptyMoveSlotBg(BattleSubscreen *btlSubscreen, int startSlot)
{
    PaletteData *paletteSys = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    for (int i = startSlot; i < SNELEMS(sEmptyMoveSlotTileOffsets); i++) {
        ApplyMoveSlotTilemap(btlSubscreen, &sEmptyMoveSlotTileOffsets[i], &sEmptyMoveSlotTilemapRects[i], 3, 0);
        PaletteData_LoadBuffer(paletteSys, &btlSubscreen->subscreenPaletteBuf[0xe * 16], PLTTBUF_SUB_BG, PLTT_DEST(PLTT_8 + i), PALETTE_SIZE_BYTES);
    }
}

static void ClearMenuSlotBg(BattleSubscreen *btlSubscreen, int slotIndex)
{
    const u8 plttSlots[] = { 6, 0xc, 0xd, 5 };
    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    ApplyMoveSlotTilemap(btlSubscreen, &sClearMenuSlotTileOffsets[slotIndex], &sClearMenuSlotTilemapRects[slotIndex], 4, 0);

    PaletteData_LoadBuffer(paletteData, &btlSubscreen->subscreenPaletteBuf[0xe * 16], PLTTBUF_SUB_BG, PLTT_DEST(plttSlots[slotIndex]), PALETTE_SIZE_BYTES);
    Bg_ScheduleTilemapTransfer(bgConfig, 4);
    Bg_FillTilemapRect(bgConfig, 5, 0x6000 / 0x20 - 1, sClearMenuSlotTilemapRects[slotIndex].left, sClearMenuSlotTilemapRects[slotIndex].top, sClearMenuSlotTilemapRects[slotIndex].right - sClearMenuSlotTilemapRects[slotIndex].left + 1, sClearMenuSlotTilemapRects[slotIndex].bottom - sClearMenuSlotTilemapRects[slotIndex].top + 1, 17);
    Bg_ScheduleTilemapTransfer(bgConfig, 5);
}

static void ResetSubscreenBgLayers(void)
{
    for (int i = 0; i < 4; i++) {
        if (4 + i != 6) {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, FALSE);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, TRUE);
        }
    }
}

static void BattleSubscreen_Cleanup(BattleSubscreen *btlSubscreen, BOOL freeSprites, BOOL resetBg)
{
    if (freeSprites == TRUE) {
        BattleSubscreen_FreeAllSprites(btlSubscreen);
    }

    if (resetBg == TRUE) {
        SysTask_ExecuteAfterVBlank(SysTask_ResetSubscreenBg, btlSubscreen, 10);
    }
}

static void BattleSubscreen_FreeAllSprites(BattleSubscreen *btlSubscreen)
{
    FreeMoveTypeIcons(btlSubscreen);
    FreeCategoryIcons(btlSubscreen);
    BattleSubscreen_FreeFontOAMs(btlSubscreen);
    BattleSubscreen_FreePokeIconResources(btlSubscreen);
    BattleSubscreen_FreePokeIconSprites(btlSubscreen);
}

static void GetTargetSlotFlags(BattleSubscreen *btlSubscreen, u8 *outFlags, BOOL checkPresence)
{
    u8 battlersByType[6];

    TargetSelectData *targetSelectData = &btlSubscreen->activeMenuData.targetSelectData;
    BattleSystem_SetBattlersByType(btlSubscreen->battleSys, battlersByType);

    for (int i = 0; i < SNELEMS(outFlags); i++) {
        int battlerIdx = battlersByType[2 + i];

        if (checkPresence == TRUE && !targetSelectData->targetMonData[battlerIdx].isPresent) {
            outFlags[i] = 0;
        } else {
            outFlags[i] = sMoveTargetSlotFlags[btlSubscreen->targetingLayout][i];
        }
    }
}

static void GetBattlerTargetFlags(BattleSubscreen *btlSubscreen, int selectedTarget, u8 *outFlags, int checkPresence)
{
    switch (btlSubscreen->targetingLayout) {
    case 0:
    case 8:
    case 9:
    case 10:
    case 11:
        for (int i = 0; i < SNELEMS(outFlags); i++) {
            if (i == selectedTarget - 1) {
                outFlags[i] = TRUE;
            } else {
                outFlags[i] = FALSE;
            }
        }
        break;
    default:
        GetTargetSlotFlags(btlSubscreen, outFlags, checkPresence);
        break;
    }
}

static void StartMenuTransitionTask(SysTaskFunc callback, BattleSubscreen *btlSubscreen)
{
    GF_ASSERT(!btlSubscreen->menuTransitionTask);

    MI_CpuClear8(&btlSubscreen->menuButtonPressAnimState, sizeof(MenuButtonPressAnimState));
    btlSubscreen->menuTransitionTask = SysTask_Start(callback, btlSubscreen, 1300);
}

static void StopMenuTransitionTask(BattleSubscreen *btlSubscreen)
{
    if (btlSubscreen->menuTransitionTask) {
        SysTask_Done(btlSubscreen->menuTransitionTask);
        btlSubscreen->menuTransitionTask = NULL;
        MI_CpuClear8(&btlSubscreen->menuButtonPressAnimState, sizeof(MenuButtonPressAnimState));
    }
}

static void ov16_Dummy1(BattleSubscreen *unused1, int unused2) // CLEANUP
{
}

static void ov16_Dummy2(BattleSubscreen *unused1, int unused2) // CLEANUP
{
}

static void ApplyMoveSlotTilemap(BattleSubscreen *btlSubscreen, const s16 *tileOffsets, const SubscreenTilemapRect *tilemapRect, int srcBufIndex, int offsetIndex)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    u16 *destTilemapBuf = Bg_GetTilemapBuffer(bgConfig, 4);
    u16 *srcTilemapBuf = btlSubscreen->tilemapBuffers[srcBufIndex];
    int j;
    int tileOffset = tileOffsets[offsetIndex];

    for (int i = tilemapRect->top; i <= tilemapRect->bottom; i++) {
        u16 *destRow = &destTilemapBuf[i * 32];
        u16 *srcRow = &srcTilemapBuf[i * 32];

        for (j = tilemapRect->left; j <= tilemapRect->right; j++) {
            destRow[j] = srcRow[j] + tileOffset;
        }
    }

    Bg_ScheduleTilemapTransfer(bgConfig, 4);
}

static void SysTask_AnimateMenuButtonPress(SysTask *unused, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    BgConfig *unusedBgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    int x, y;

    switch (btlSubscreen->menuButtonPressAnimState.phase) {
    case 0:
        ApplyMoveSlotTilemap(btlSubscreen, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex, 2);
        FontOAM_GetXY(btlSubscreen->fontOAMEntry[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx].fontOAM, &x, &y);
        FontOAM_SetXY(btlSubscreen->fontOAMEntry[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx].fontOAM, x, y + -2);

        if (btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex != 0xff && btlSubscreen->targetSelectPokeIconSprites[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex]) {
            ManagedSprite_OffsetPositionXY(btlSubscreen->targetSelectPokeIconSprites[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex], 0, -2);
        }

        btlSubscreen->menuButtonPressAnimState.phase++;
        break;
    case 1:
        btlSubscreen->menuButtonPressAnimState.waitTimer++;

        if (btlSubscreen->menuButtonPressAnimState.waitTimer <= 0) {
            break;
        }

        btlSubscreen->menuButtonPressAnimState.waitTimer = 0;
        btlSubscreen->menuButtonPressAnimState.phase++;
    case 2:
        ApplyMoveSlotTilemap(btlSubscreen, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex, 1);
        FontOAM_GetXY(btlSubscreen->fontOAMEntry[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx].fontOAM, &x, &y);
        FontOAM_SetXY(btlSubscreen->fontOAMEntry[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.fontOAMIdx].fontOAM, x, y + 1);

        if (btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex != 0xff && btlSubscreen->targetSelectPokeIconSprites[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex]) {
            ManagedSprite_OffsetPositionXY(btlSubscreen->targetSelectPokeIconSprites[btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.spriteIndex], 0, 1);
        }

        btlSubscreen->menuButtonPressAnimState.phase++;
        break;
    default:
        btlSubscreen->menuButtonPressAnimState.waitTimer++;

        if (btlSubscreen->menuButtonPressAnimState.waitTimer > 0) {
            BattleSubscreen_Cleanup(btlSubscreen, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.freeSprites, 0);
            StopMenuTransitionTask(btlSubscreen);
        }
        break;
    }
}

static void SysTask_AnimateMoveButtonPress(SysTask *unused, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    BgConfig *unusedBgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    int x, y, moveNameFontOAMIdx, ppCountFontOAMIdx, ppLabelFontOAMIdx, moveSlotIndex, moveID;

    MoveSelectData *moveData = &btlSubscreen->activeMenuData.moveData;

    switch (btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton) {
    case 1:
        moveNameFontOAMIdx = 0;
        ppCountFontOAMIdx = 9;
        ppLabelFontOAMIdx = 5;
        moveSlotIndex = 0;
        moveID = moveData->moveIDs[0];
        break;
    case 2:
        moveNameFontOAMIdx = 1;
        ppCountFontOAMIdx = 10;
        ppLabelFontOAMIdx = 6;
        moveSlotIndex = 1;
        moveID = moveData->moveIDs[1];
        break;
    case 3:
        moveNameFontOAMIdx = 2;
        ppCountFontOAMIdx = 11;
        ppLabelFontOAMIdx = 7;
        moveSlotIndex = 2;
        moveID = moveData->moveIDs[2];
        break;
    case 4:
        moveNameFontOAMIdx = 3;
        ppCountFontOAMIdx = 12;
        ppLabelFontOAMIdx = 8;
        moveSlotIndex = 3;
        moveID = moveData->moveIDs[3];
        break;
    case 0xff:
    default:
        moveNameFontOAMIdx = 0;
        ppCountFontOAMIdx = 0;
        ppLabelFontOAMIdx = 0;
        moveSlotIndex = 0;
        moveID = 0;
        break;
    }

    switch (btlSubscreen->menuButtonPressAnimState.phase) {
    case 0:
        ApplyMoveSlotTilemap(btlSubscreen, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex, 2);

        if (btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton != 0xff) {
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[moveNameFontOAMIdx].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[moveNameFontOAMIdx].fontOAM, x, y + -2);
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[ppCountFontOAMIdx].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[ppCountFontOAMIdx].fontOAM, x, y + -2);
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[ppLabelFontOAMIdx].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[ppLabelFontOAMIdx].fontOAM, x, y + -2);

            if (moveID != 0) {
                Sprite_OffsetPositionXY(btlSubscreen->moveSelectSprites[moveSlotIndex]->sprite, 0, -2);

                if (btlSubscreen->categoryIconSprites[moveSlotIndex]) {
                    Sprite_OffsetPositionXY(btlSubscreen->categoryIconSprites[moveSlotIndex]->sprite, 0, -2);
                }
            }
        } else {
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[4].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[4].fontOAM, x, y + -2);
        }

        btlSubscreen->menuButtonPressAnimState.phase++;
        break;
    case 1:
        btlSubscreen->menuButtonPressAnimState.waitTimer++;

        if (btlSubscreen->menuButtonPressAnimState.waitTimer <= 0) {
            break;
        }

        btlSubscreen->menuButtonPressAnimState.waitTimer = 0;
        btlSubscreen->menuButtonPressAnimState.phase++;
    case 2:
        ApplyMoveSlotTilemap(btlSubscreen, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.keyframes, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.subscreenTilemapRect, btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.srcBufIndex, 1);

        if (btlSubscreen->menuButtonPressAnimState.ButtonPressAnimationState.selectedButton != 0xff) {
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[moveNameFontOAMIdx].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[moveNameFontOAMIdx].fontOAM, x, y + 1);
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[ppCountFontOAMIdx].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[ppCountFontOAMIdx].fontOAM, x, y + 1);
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[ppLabelFontOAMIdx].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[ppLabelFontOAMIdx].fontOAM, x, y + 1);

            if (moveID) {
                Sprite_OffsetPositionXY(btlSubscreen->moveSelectSprites[moveSlotIndex]->sprite, 0, 1);

                if (btlSubscreen->categoryIconSprites[moveSlotIndex]) {
                    Sprite_OffsetPositionXY(btlSubscreen->categoryIconSprites[moveSlotIndex]->sprite, 0, 1);
                }
            }
        } else {
            FontOAM_GetXY(btlSubscreen->fontOAMEntry[4].fontOAM, &x, &y);
            FontOAM_SetXY(btlSubscreen->fontOAMEntry[4].fontOAM, x, y + 1);
        }

        btlSubscreen->menuButtonPressAnimState.phase++;
        break;
    default:
        btlSubscreen->menuButtonPressAnimState.waitTimer++;

        if (btlSubscreen->menuButtonPressAnimState.waitTimer > 0) {
            BattleSubscreen_Cleanup(btlSubscreen, 1, 1);
            StopMenuTransitionTask(btlSubscreen);
        }
        break;
    }
}

static void SysTask_AnimateTargetButtonPress(SysTask *unused, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    BgConfig *unusedBgConig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    int i, x, y;
    u8 battlerTargetFlags[4];

    switch (btlSubscreen->menuButtonPressAnimState.phase) {
    case 0:
        GetBattlerTargetFlags(btlSubscreen, btlSubscreen->menuButtonPressAnimState.TargetSelectAnimationState.selectedTarget, battlerTargetFlags, 1);

        for (i = 0; i < SNELEMS(battlerTargetFlags); i++) {
            if (battlerTargetFlags[i] == TRUE) {
                ApplyMoveSlotTilemap(btlSubscreen, sTargetSelectButtonPressKeyframes[i], &sTargetSelectButtonPressTilemapRects[i], 4, 2);

                if (btlSubscreen->fontOAMEntry[0 + i].fontOAM) {
                    FontOAM_GetXY(btlSubscreen->fontOAMEntry[0 + i].fontOAM, &x, &y);
                    FontOAM_SetXY(btlSubscreen->fontOAMEntry[0 + i].fontOAM, x, y + -2);
                }

                if (btlSubscreen->targetSelectPokeIconSprites[i]) {
                    ManagedSprite_OffsetPositionXY(btlSubscreen->targetSelectPokeIconSprites[i], 0, -2);
                }
            }
        }

        btlSubscreen->menuButtonPressAnimState.phase++;
        break;
    case 1:
        btlSubscreen->menuButtonPressAnimState.waitTimer++;

        if (btlSubscreen->menuButtonPressAnimState.waitTimer <= 0) {
            break;
        }

        btlSubscreen->menuButtonPressAnimState.waitTimer = 0;
        btlSubscreen->menuButtonPressAnimState.phase++;
    case 2:
        GetBattlerTargetFlags(btlSubscreen, btlSubscreen->menuButtonPressAnimState.TargetSelectAnimationState.selectedTarget, battlerTargetFlags, 1);

        for (i = 0; i < SNELEMS(battlerTargetFlags); i++) {
            if (battlerTargetFlags[i] == TRUE) {
                ApplyMoveSlotTilemap(btlSubscreen, sTargetSelectButtonPressKeyframes[i], &sTargetSelectButtonPressTilemapRects[i], 4, 1);

                if (btlSubscreen->fontOAMEntry[0 + i].fontOAM) {
                    FontOAM_GetXY(btlSubscreen->fontOAMEntry[0 + i].fontOAM, &x, &y);
                    FontOAM_SetXY(btlSubscreen->fontOAMEntry[0 + i].fontOAM, x, y + 1);
                }

                if (btlSubscreen->targetSelectPokeIconSprites[i]) {
                    ManagedSprite_OffsetPositionXY(btlSubscreen->targetSelectPokeIconSprites[i], 0, 1);
                }
            }
        }

        btlSubscreen->menuButtonPressAnimState.phase++;
        break;
    case 3:
        btlSubscreen->menuButtonPressAnimState.waitTimer++;

        if (btlSubscreen->menuButtonPressAnimState.waitTimer > 0) {
            btlSubscreen->menuButtonPressAnimState.waitTimer = 0;
            btlSubscreen->menuButtonPressAnimState.phase++;
        }
        break;
    default:
        BattleSubscreen_Cleanup(btlSubscreen, 1, 1);
        StopMenuTransitionTask(btlSubscreen);
    }
}

static TextColor GetPPTextColor(int currPP, int maxPP)
{
    if (currPP == 0) {
        return TEXT_COLOR(7, 8, 0);
    }

    if (maxPP == currPP) {
        return TEXT_COLOR(1, 2, 0);
    }

    if (maxPP <= 2) {
        if (currPP == 1) {
            return TEXT_COLOR(5, 6, 0);
        }
    } else if (maxPP <= 7) {
        switch (currPP) {
        case 1:
            return TEXT_COLOR(5, 6, 0);
        case 2:
            return TEXT_COLOR(3, 4, 0);
        }
    } else {
        if (currPP <= maxPP / 4) {
            return TEXT_COLOR(5, 6, 0);
        }

        if (currPP <= maxPP / 2) {
            return TEXT_COLOR(3, 4, 0);
        }
    }

    return TEXT_COLOR(1, 2, 0);
}

static void SysTask_SlideInPanel(SysTask *task, void *panelState)
{
    SlideInPanelState *slideInPanelState = panelState;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(slideInPanelState->btlSubscreen->battleSys);

    switch (slideInPanelState->phase) {
    case 0:
        slideInPanelState->xShift += 255 * 100 / 4;
        slideInPanelState->yShift -= 40 * 100 / 4;
        slideInPanelState->bgXOffset = (255 * 100 - slideInPanelState->xShift) / 100;
        slideInPanelState->bgYOffset = -slideInPanelState->yShift / 100;

        if (slideInPanelState->xShift >= 0 || slideInPanelState->yShift <= 0) {
            slideInPanelState->xShift = 0;
            slideInPanelState->yShift = 18 * 8;
            slideInPanelState->bgXOffset = 0;
            slideInPanelState->bgYOffset = 0;
            slideInPanelState->phase++;
        }
        break;
    case 1:
        slideInPanelState->btlSubscreen->isPanelSliding = 0;
        SysTask_Done(slideInPanelState->task);
        DisableHBlank();
        GXS_SetVisibleWnd(GX_WNDMASK_NONE);
        ov16_Dummy3(slideInPanelState->btlSubscreen, 1);
        slideInPanelState->phase++;
        break;
    default:
        if (useless_0226BCD0(slideInPanelState->btlSubscreen) == 0) {
            break;
        }

        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 3, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 3, 0);
        BattleSystem_SetCommandSelectionFlags(slideInPanelState->btlSubscreen->battleSys, 1);
        Heap_Free(panelState);
        SysTask_Done(task);
    }
}

static void SysTask_ApplySlideInBgOffsets(SysTask *unused, void *panelState)
{
    SlideInPanelState *slideInPanelState = panelState;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(slideInPanelState->btlSubscreen->battleSys);
    s32 wndXPos, wndYPos, clampedBgXOffset;

    if (slideInPanelState->direction == 4) {
        clampedBgXOffset = 255 - slideInPanelState->bgXOffset;

        if (clampedBgXOffset > 0) {
            clampedBgXOffset = 0;
        }

        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 0, clampedBgXOffset);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 0, 255 - slideInPanelState->bgXOffset);
        wndXPos = -slideInPanelState->xShift / 100;
    } else {
        clampedBgXOffset = slideInPanelState->bgXOffset;

        if (clampedBgXOffset < 0) {
            clampedBgXOffset = 0;
        }

        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 0, clampedBgXOffset);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 0, slideInPanelState->bgXOffset);

        wndXPos = 255 + slideInPanelState->xShift / 100;
    }

    Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 3, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 3, 0);

    wndYPos = 18 * 8 + slideInPanelState->yShift / 100;

    if (wndXPos < 0) {
        wndXPos = 0;
    } else if (wndXPos > 255) {
        wndXPos = 255;
    }

    if (wndYPos > 192) {
        wndYPos = 192;
    } else if (wndYPos < 0) {
        wndYPos = 0;
    }

    if (slideInPanelState->direction == 4) {
        G2S_SetWnd0Position(0, 0, wndXPos, 18 * 8);
    } else {
        if (wndXPos == 0) {
            wndXPos = 1;
        }

        G2S_SetWnd0Position(wndXPos, 0, 0, 18 * 8);
    }

    G2S_SetWnd1Position(0, 18 * 8, 255, wndYPos);
    slideInPanelState->prevBgYOffset = slideInPanelState->bgYOffset;
}

static void HBlankCallback_SlideInPanel(void *panelState)
{
    SlideInPanelState *slideInPanelState = panelState;
    s32 vCount;

    vCount = GX_GetVCount();

    if (vCount == 18 * 8) {
        BgConfig *bgConfig = BattleSystem_GetBgConfig(slideInPanelState->btlSubscreen->battleSys);

        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 3, slideInPanelState->prevBgYOffset);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 3, slideInPanelState->prevBgYOffset);
    } else if (vCount > 192) {
        BgConfig *bgConfig = BattleSystem_GetBgConfig(slideInPanelState->btlSubscreen->battleSys);

        if (slideInPanelState->direction == 4) {
            Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 0, 255 - slideInPanelState->bgXOffset);
            Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 0, 255 - slideInPanelState->bgXOffset);
        } else {
            Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 0, slideInPanelState->bgXOffset);
            Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 0, slideInPanelState->bgXOffset);
        }

        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, 3, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 3, 0);
    }
}

static void SysTask_ConfigureBgLayers(SysTask *task, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];
    int i;

    for (i = 0; i < SNELEMS(battleMenuConfig->bgTilemapBufIndices); i++) {
        if (battleMenuConfig->bgTilemapBufIndices[i] == 0xffff) {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 0);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 1);
        }
    }

    for (i = 0; i < SNELEMS(battleMenuConfig->bgPriorities); i++) {
        Bg_SetPriority(BG_LAYER_SUB_0 + i, battleMenuConfig->bgPriorities[i]);
    }

    SysTask_Done(task);
}

static void SysTask_ResetSubscreenBg(SysTask *task, void *unused)
{
    ResetSubscreenBgLayers();
    SysTask_Done(task);
}

void ov16_Dummy3(BattleSubscreen *unused1, int unused2)
{
}

BOOL useless_0226BCD0(BattleSubscreen *btlSubscreen)
{
    return !btlSubscreen->unused_664;
}

static void SysTask_PulseCursorHighlight(SysTask *unused, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    PaletteData *plttData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    if (PaletteData_GetSelectedBuffersMask(plttData)) {
        return;
    }

    PaletteData_Blend(plttData, PLTTBUF_SUB_BG, 16 * 0 + 1, 1, btlSubscreen->pulseCursorBlendValue >> 8, 0x7e37);

    if (btlSubscreen->pulseCursorDirection == FALSE) {
        btlSubscreen->pulseCursorBlendValue += 0x200;
    } else {
        btlSubscreen->pulseCursorBlendValue -= 0x200;
    }

    if (btlSubscreen->pulseCursorBlendValue >= (16 + 1) << 8) {
        btlSubscreen->pulseCursorBlendValue = (16 - 1) << 8;
        btlSubscreen->pulseCursorDirection = 1;
    } else if (btlSubscreen->pulseCursorBlendValue <= 0) {
        btlSubscreen->pulseCursorBlendValue = 1 << 8;
        btlSubscreen->pulseCursorDirection = 0;
    }
}

static void SysTask_UpdateSpeedUpPalette(SysTask *unused, void *subscreen)
{
    BattleSubscreen *btlSubscreen = subscreen;
    int speedUpBattle = RenderControlFlags_GetSpeedUpBattle();
    int waitBattle = RenderControlFlags_GetWaitBattle();

    RenderControlFlags_ZeroSpeedUpBattle();
    RenderControlFlags_ZeroWaitBattle();

    PaletteData *plttData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    if (PaletteData_GetSelectedBuffersMask(plttData)) {
        return;
    }

    u16 *fadedBuf = PaletteData_GetFadedBuffer(plttData, 1);
    int moveSlotPlttSize = (16 - 8) * 2;

    if (gSystem.touchHeld && (speedUpBattle == TRUE || waitBattle == TRUE)) {
        if (!memcmp(&fadedBuf[8], &btlSubscreen->normalMovePalBuf[8], moveSlotPlttSize)) {
            if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_FRONTIER) {
                MI_CpuCopy16(&btlSubscreen->speedUpMovePalBuf[0], &fadedBuf[0], 0x20);
                MI_CpuCopy16(&btlSubscreen->speedUpMovePalBuf[16], &fadedBuf[7 * 16], 0x20);
            } else {
                MI_CpuCopy16(&btlSubscreen->speedUpMovePalBuf[8], &fadedBuf[8], moveSlotPlttSize);
            }
        }
    } else {
        if (!memcmp(&fadedBuf[8], &btlSubscreen->speedUpMovePalBuf[8], moveSlotPlttSize)) {
            if (BattleSystem_GetBattleType(btlSubscreen->battleSys) & BATTLE_TYPE_FRONTIER) {
                MI_CpuCopy16(&btlSubscreen->normalMovePalBuf[0], &fadedBuf[0], 0x20);
                MI_CpuCopy16(&btlSubscreen->normalMovePalBuf[16], &fadedBuf[7 * 16], 0x20);
            } else {
                MI_CpuCopy16(&btlSubscreen->normalMovePalBuf[8], &fadedBuf[8], moveSlotPlttSize);
            }
        }
    }
}

static int BattleSystem_MenuKeys(BattleSubscreen *btlSubscreen)
{
    MenuCursor *cursor = &btlSubscreen->cursor;
    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];

    if (!battleMenuConfig->handleCursorInput) {
        return 0xffffffff;
    }

    if (!cursor->isActive) { // Check if the cursor is inactive
        if (btlSubscreen->suppressActivationSfx == TRUE || gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y | PAD_KEY_RIGHT | PAD_KEY_LEFT | PAD_KEY_UP | PAD_KEY_DOWN)) {
            if (btlSubscreen->suppressActivationSfx == 0) { // If a key was pressed, play sfx
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }

            cursor->isActive = TRUE; // Activate the cursor
            btlSubscreen->suppressActivationSfx = 0; // Unpress the key
            battleMenuConfig->handleCursorInput(btlSubscreen, 1);
        }

        return 0xffffffff;
    }

    return battleMenuConfig->handleCursorInput(btlSubscreen, 0);
}

static int BattleSystem_Cursor_Menu(BattleSubscreen *btlSubscreen, BOOL cursorHidden)
{
    // Returns the ID of the menu button pressed, or -1 if nothing was pressed
    MenuCursor *cursor;
    u32 button;
    int buttonId;

    cursor = &btlSubscreen->cursor;
    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];
    int battler = BattleSystem_GetBattlerOfType(btlSubscreen->battleSys, btlSubscreen->battlerType);
    SavedCursorPosition *savedCursorPos = BattlerData_GetSavedCursorPosition(BattleSystem_GetBattlerData(btlSubscreen->battleSys, battler));

    if (cursorHidden == TRUE) {
        cursor->x = savedCursorPos->actionMenuX;
        cursor->y = savedCursorPos->actionMenuY;
        buttonId = sBattleMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonId].rect.left + 8, battleMenuConfig->touchScreenRects[buttonId].rect.right - 8, battleMenuConfig->touchScreenRects[buttonId].rect.top + 8, battleMenuConfig->touchScreenRects[buttonId].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    switch (btlSubscreen->activeMenuConfigIndex) {
    case 6:
    case 5: // fight menus where bag, run and pokemon aren't available
        button = BattleSystem_MoveCursor(cursor, 1, 1, sBattleMenuButtonLayout[0]);
        break;
    default: // normal fight menu, with bag, run and pokemon
        buttonId = sBattleMenuButtonLayout[cursor->y][cursor->x];

        if (!(buttonId == 3 && gSystem.pressedKeys & PAD_KEY_UP)) {
            button = BattleSystem_MoveCursor(cursor, 3, 2, sBattleMenuButtonLayout[0]); // temporarily set button to the id of the new button

            if (!button && !buttonId) { // if fight is selected, and is still selected
                if (gSystem.pressedKeys & PAD_KEY_LEFT) { // Move to bag on the bottom row
                    cursor->x = 0;
                    cursor->y = 1;
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    button = PAD_KEY_LEFT;
                } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) { // Move to pokemon on the bottom row
                    cursor->x = 2;
                    cursor->y = 1;
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    button = PAD_KEY_RIGHT;
                }
            }
        }
        break;
    }

    switch (button) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        buttonId = sBattleMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonId].rect.left + 8, battleMenuConfig->touchScreenRects[buttonId].rect.right - 8, battleMenuConfig->touchScreenRects[buttonId].rect.top + 8, battleMenuConfig->touchScreenRects[buttonId].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        return sBattleMenuButtonLayout[cursor->y][cursor->x];
    case PAD_BUTTON_B:
        if (btlSubscreen->hasCancelButton == TRUE) {
            for (int i = 0; i < battleMenuConfig->touchScreenRects[i].rect.top != 0xff; i++) {
                if (4 == battleMenuConfig->buttonResults[i]) {
                    return i;
                }
            }
        }
        break;
    }

    return 0xffffffff;
}

static void SaveActionMenuCursorPos(BattleSubscreen *btlSubscreen, int selectedAction)
{
    int j;
    int battlerType = BattleSystem_GetBattlerOfType(btlSubscreen->battleSys, btlSubscreen->battlerType);

    if (selectedAction != 3 || btlSubscreen->isWaitingForPartner == FALSE) {
        SavedCursorPosition *savedCursorPos = BattlerData_GetSavedCursorPosition(BattleSystem_GetBattlerData(btlSubscreen->battleSys, battlerType));

        for (int i = 0; i < SNELEMS(sBattleMenuButtonLayout); i++) {
            for (j = 0; j < SNELEMS(sBattleMenuButtonLayout[0]); j++) {
                if (selectedAction == sBattleMenuButtonLayout[i][j]) {
                    savedCursorPos->actionMenuX = j;
                    savedCursorPos->actionMenuY = i;

                    return;
                }
            }
        }
    }
}

static int BattleSystem_Cursor_PalPark(BattleSubscreen *btlSubscreen, BOOL isCursorHidden)
{
    u32 button;
    int buttonIndex;

    MenuCursor *cursor = &btlSubscreen->cursor;
    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];

    if (isCursorHidden == TRUE) {
        cursor->x = 0;
        cursor->y = 0;
        buttonIndex = palParkMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    button = BattleSystem_MoveCursor(cursor, 1, 2, palParkMenuButtonLayout[0]);

    switch (button) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        buttonIndex = palParkMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        return palParkMenuButtonLayout[cursor->y][cursor->x];
    case PAD_BUTTON_B:
        break;
    }

    return 0xffffffff;
}

static int BattleSystem_Cursor_Moves(BattleSubscreen *btlSubscreen, BOOL cursorHidden)
{
    u32 button;
    int buttonIndex, i;
    u8 buttonLayout[3][2];
    SavedCursorPosition *savedCursorPos = BattlerData_GetSavedCursorPosition(BattleSystem_GetBattlerData(btlSubscreen->battleSys, BattleSystem_GetBattlerOfType(btlSubscreen->battleSys, btlSubscreen->battlerType)));
    MenuCursor *cursor = &btlSubscreen->cursor;
    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];
    MoveSelectData *moveData = &btlSubscreen->activeMenuData.moveData;

    if (cursorHidden == TRUE) {
        cursor->x = savedCursorPos->moveMenuX;
        cursor->y = savedCursorPos->moveMenuY;
        buttonIndex = sMoveMenuButtonLayout[cursor->y][cursor->x];

        if (buttonIndex && !moveData->moveIDs[buttonIndex - 1]) {
            savedCursorPos->moveMenuX = 0;
            savedCursorPos->moveMenuY = 0;
            cursor->x = 0;
            cursor->y = 0;
            buttonIndex = sMoveMenuButtonLayout[cursor->y][cursor->x];
        }

        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    MI_CpuCopy8(sMoveMenuButtonLayout, buttonLayout, 3 * 2);
    button = BattleSystem_MoveCursor(cursor, 2, 3, buttonLayout[0]);

    switch (button) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        buttonIndex = sMoveMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        return sMoveMenuButtonLayout[cursor->y][cursor->x];
    case PAD_BUTTON_B:
        for (i = 0; i < battleMenuConfig->touchScreenRects[i].rect.top != 0xff; i++) {
            if (0xff == battleMenuConfig->buttonResults[i]) {
                return i;
            }
        }

        break;
    }

    return 0xffffffff;
}

static void SaveMoveSelectMenuCursorPos(BattleSubscreen *btlSubscreen, int selectedMove)
{
    if (!selectedMove) {
        return;
    }

    int battlerType = BattleSystem_GetBattlerOfType(btlSubscreen->battleSys, btlSubscreen->battlerType);
    SavedCursorPosition *savedCursorPos = BattlerData_GetSavedCursorPosition(BattleSystem_GetBattlerData(btlSubscreen->battleSys, battlerType));
    int j;

    for (int i = 0; i < SNELEMS(sMoveMenuButtonLayout); i++) {
        for (j = 0; j < SNELEMS(sMoveMenuButtonLayout[0]); j++) {
            if (selectedMove == sMoveMenuButtonLayout[i][j]) {
                savedCursorPos->moveMenuX = j;
                savedCursorPos->moveMenuY = i;
                return;
            }
        }
    }
}

static int BattleSystem_Cursor_Battler(BattleSubscreen *btlSubscreen, BOOL isCursorHidden)
{
    MenuCursor *cursor;
    u32 button;
    const BattleMenuConfig *battleMenuConfig;
    int isSingleTarget = 0;
    u8 targetSlotFlagsPresent[4], targetSlotFlags[4], buttonLayout[3][2];
    int slotIndex, buttonIndex, i, j, cursorCols, cursorRows;
    int cursorLeft, cursorRight, cursorTop, cursorBottom, splitCursorLeft;
    int splitCursorBottom, topRowTop, topRowBottom, topRowLeft;
    int topRowRight, bottomRowTop, bottomRowBottom, bottomRowLeft;
    int bottomRowRight, topBotVal1, topBotVal2, splitAnchor;
    SavedCursorPosition *savedCursorPos = BattlerData_GetSavedCursorPosition(BattleSystem_GetBattlerData(btlSubscreen->battleSys, BattleSystem_GetBattlerOfType(btlSubscreen->battleSys, btlSubscreen->battlerType)));
    cursor = &btlSubscreen->cursor;
    battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];

    MI_CpuCopy8(sSelectTargetMenuButtonLayout, buttonLayout, 3 * 2);

    GetTargetSlotFlags(btlSubscreen, targetSlotFlagsPresent, 1);
    GetTargetSlotFlags(btlSubscreen, targetSlotFlags, 0);

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            if (!targetSlotFlags[buttonLayout[i][j]]) {
                buttonLayout[i][j] = 0xff;
            }
        }
    }

    switch (btlSubscreen->targetingLayout) {
    default:
    case 0:
    case 4:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
        cursorCols = 2;
        cursorRows = 3;
        break;
    case 1:
    case 2:
    case 3:
    case 5:
    case 7:
        isSingleTarget = 1;
        cursorCols = 1;
        cursorRows = 2;

        if (targetSlotFlags[5 - 2] == TRUE && targetSlotFlags[3 - 2] == TRUE) {
            topRowLeft = battleMenuConfig->touchScreenRects[3].rect.left + 8;
            topRowRight = battleMenuConfig->touchScreenRects[1].rect.right - 8;
            topRowTop = battleMenuConfig->touchScreenRects[3].rect.top + 8;
            topRowBottom = battleMenuConfig->touchScreenRects[3].rect.bottom - 8;
        } else if (targetSlotFlags[5 - 2] == TRUE && !targetSlotFlags[3 - 2]) {
            topRowLeft = battleMenuConfig->touchScreenRects[3].rect.left + 8;
            topRowRight = battleMenuConfig->touchScreenRects[3].rect.right - 8;
            topRowTop = battleMenuConfig->touchScreenRects[3].rect.top + 8;
            topRowBottom = battleMenuConfig->touchScreenRects[3].rect.bottom - 8;
        } else if (!targetSlotFlags[5 - 2] && targetSlotFlags[3 - 2] == TRUE) {
            topRowLeft = battleMenuConfig->touchScreenRects[1].rect.left + 8;
            topRowRight = battleMenuConfig->touchScreenRects[1].rect.right - 8;
            topRowTop = battleMenuConfig->touchScreenRects[1].rect.top + 8;
            topRowBottom = battleMenuConfig->touchScreenRects[1].rect.bottom - 8;
        } else {
            topRowLeft = -1;
            topRowRight = -1;
            topRowTop = -1;
            topRowBottom = -1;
        }

        if (targetSlotFlags[2 - 2] == TRUE && targetSlotFlags[4 - 2] == TRUE) {
            bottomRowLeft = battleMenuConfig->touchScreenRects[0].rect.left + 8;
            bottomRowRight = battleMenuConfig->touchScreenRects[2].rect.right - 8;
            bottomRowTop = battleMenuConfig->touchScreenRects[0].rect.top + 8;
            bottomRowBottom = battleMenuConfig->touchScreenRects[0].rect.bottom - 8;
        } else if (targetSlotFlags[2 - 2] == TRUE && !targetSlotFlags[4 - 2]) {
            bottomRowLeft = battleMenuConfig->touchScreenRects[0].rect.left + 8;
            bottomRowRight = battleMenuConfig->touchScreenRects[0].rect.right - 8;
            bottomRowTop = battleMenuConfig->touchScreenRects[0].rect.top + 8;
            bottomRowBottom = battleMenuConfig->touchScreenRects[0].rect.bottom - 8;
        } else if (!targetSlotFlags[2 - 2] && targetSlotFlags[4 - 2] == TRUE) {
            bottomRowLeft = battleMenuConfig->touchScreenRects[2].rect.left + 8;
            bottomRowRight = battleMenuConfig->touchScreenRects[2].rect.right - 8;
            bottomRowTop = battleMenuConfig->touchScreenRects[2].rect.top + 8;
            bottomRowBottom = battleMenuConfig->touchScreenRects[2].rect.bottom - 8;
        } else {
            bottomRowLeft = -1;
            bottomRowRight = -1;
            bottomRowTop = -1;
            bottomRowBottom = -1;
        }

        splitCursorLeft = -1;
        splitCursorBottom = -1;
        topBotVal1 = -1;
        topBotVal2 = -1;

        if (topRowLeft == bottomRowLeft) {
            cursorLeft = topRowLeft;
        } else if (topRowLeft != -1 && bottomRowLeft == -1) {
            cursorLeft = topRowLeft;
        } else if (topRowLeft == -1 && bottomRowLeft != -1) {
            cursorLeft = bottomRowLeft;
        } else {
            cursorLeft = topRowLeft;
            splitCursorLeft = bottomRowLeft;
            splitAnchor = 2;
        }

        if (topRowRight == bottomRowRight) {
            cursorRight = topRowRight;
        } else if (topRowRight != -1 && bottomRowRight == -1) {
            cursorRight = topRowRight;
        } else if (topRowRight == -1 && bottomRowRight != -1) {
            cursorRight = bottomRowRight;
        } else {
            cursorRight = topRowRight;
            splitCursorLeft = bottomRowRight;
            splitAnchor = 3;
        }

        if (topRowTop != -1 && bottomRowTop == -1) {
            cursorTop = topRowTop;
        } else if (topRowTop == -1 && bottomRowTop != -1) {
            cursorTop = bottomRowTop;
        } else {
            cursorTop = topRowTop;
            splitCursorBottom = topRowBottom;
        }

        if (topRowBottom != -1 && bottomRowBottom == -1) {
            cursorBottom = topRowBottom;
        } else if (topRowBottom == -1 && bottomRowBottom != -1) {
            cursorBottom = bottomRowBottom;
        } else {
            cursorBottom = bottomRowBottom;
            splitCursorBottom = bottomRowBottom;

            if (splitAnchor == 2) {
                topBotVal2 = topRowBottom;
            } else {
                topBotVal1 = topRowBottom;
            }
        }

        break;
    }

    if (isCursorHidden == TRUE) {
        if (isSingleTarget == 0) {
            if (savedCursorPos->targetingLayout == btlSubscreen->targetingLayout) {
                cursor->x = savedCursorPos->targetSelectX;
                cursor->y = savedCursorPos->targetSelectY;
            } else if (targetSlotFlagsPresent[5 - 2] == 1) {
                cursor->x = 0;
                cursor->y = 0;
            } else if (targetSlotFlagsPresent[3 - 2] == 1) {
                cursor->x = 1;
                cursor->y = 0;
            } else if (targetSlotFlagsPresent[2 - 2] == 1) {
                cursor->x = 0;
                cursor->y = 1;
            } else {
                cursor->x = 1;
                cursor->y = 1;
            }

            buttonIndex = sSelectTargetMenuButtonLayout[cursor->y][cursor->x];
            BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        } else {
            cursor->x = 0;
            cursor->y = 0;

            if (topBotVal2 == -1 && topBotVal1 == -1 || splitCursorLeft == -1) {
                BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, cursorLeft, cursorRight, cursorTop, cursorBottom, (192 + 80) << FX32_SHIFT);
            } else if (topBotVal2 != -1 && topBotVal1 == -1) {
                BattleSystem_DrawCursorSprites(btlSubscreen->cursorRenderer, cursorLeft, cursorTop, cursorRight, cursorTop, cursorLeft, topBotVal2, cursorRight, cursorBottom, (192 + 80) << FX32_SHIFT);
            } else {
                BattleSystem_DrawCursorSprites(btlSubscreen->cursorRenderer, cursorLeft, cursorTop, cursorRight, cursorTop, cursorLeft, cursorBottom, cursorRight, topBotVal1, (192 + 80) << FX32_SHIFT);
            }

            if (splitCursorLeft != -1) {
                CursorRenderer_DrawSplitAnchor(btlSubscreen->cursorRenderer, splitCursorLeft, splitCursorBottom, splitAnchor, (192 + 80) << FX32_SHIFT);
            }
        }

        return 0xffffffff;
    }

    if (isSingleTarget == 0) {
        button = BattleSystem_MoveCursor(cursor, cursorCols, cursorRows, buttonLayout[0]);
    } else {
        button = BattleSystem_MoveCursor(cursor, cursorCols, cursorRows, NULL);
    }

    switch (button) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        if (!isSingleTarget) {
            buttonIndex = sSelectTargetMenuButtonLayout[cursor->y][cursor->x];
            BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        } else {
            if (cursor->y == 0) {
                if (topBotVal1 == -1 && topBotVal2 == -1 || splitCursorLeft == -1) {
                    BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, cursorLeft, cursorRight, cursorTop, cursorBottom, (192 + 80) << FX32_SHIFT);
                } else if (topBotVal2 != -1 && topBotVal1 == -1) {
                    BattleSystem_DrawCursorSprites(btlSubscreen->cursorRenderer, cursorLeft, cursorTop, cursorRight, cursorTop, cursorLeft, topBotVal2, cursorRight, cursorBottom, (192 + 80) << FX32_SHIFT);
                } else {
                    BattleSystem_DrawCursorSprites(btlSubscreen->cursorRenderer, cursorLeft, cursorTop, cursorRight, cursorTop, cursorLeft, cursorBottom, cursorRight, topBotVal1, (192 + 80) << FX32_SHIFT);
                }

                if (splitCursorLeft != -1) {
                    CursorRenderer_DrawSplitAnchor(btlSubscreen->cursorRenderer, splitCursorLeft, splitCursorBottom, splitAnchor, (192 + 80) << FX32_SHIFT);
                } else {
                    CursorRenderer_HideSplitAnchor(btlSubscreen->cursorRenderer);
                }
            } else {
                BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[4].rect.left + 8, battleMenuConfig->touchScreenRects[4].rect.right - 8, battleMenuConfig->touchScreenRects[4].rect.top + 8, battleMenuConfig->touchScreenRects[4].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
                CursorRenderer_HideSplitAnchor(btlSubscreen->cursorRenderer);
            }
        }
        break;
    case PAD_BUTTON_A:
        if (isSingleTarget == 1) {
            if (cursor->y > 0) {
                return 4;
            }

            for (slotIndex = 0; slotIndex < SNELEMS(targetSlotFlagsPresent); slotIndex++) {
                if (targetSlotFlagsPresent[slotIndex] == 1) {
                    return 0 + slotIndex;
                }
            }
        } else {
            buttonIndex = sSelectTargetMenuButtonLayout[cursor->y][cursor->x];

            if ((buttonIndex == 4) || (targetSlotFlagsPresent[buttonIndex - 0] == 1)) {
                return buttonIndex;
            }
        }
        break;
    case PAD_BUTTON_B:
        return 4;
    }

    return 0xffffffff;
}

static void SaveTargetSelectMenuCursorPos(BattleSubscreen *btlSubscreen, int selectedTarget)
{
    if (selectedTarget == 4) {
        return;
    }

    int battlerType = BattleSystem_GetBattlerOfType(btlSubscreen->battleSys, btlSubscreen->battlerType);
    SavedCursorPosition *savedCursorPos = BattlerData_GetSavedCursorPosition(BattleSystem_GetBattlerData(btlSubscreen->battleSys, battlerType));

    savedCursorPos->targetingLayout = btlSubscreen->targetingLayout;

    int j;

    for (int i = 0; i < SNELEMS(sSelectTargetMenuButtonLayout); i++) {
        for (j = 0; j < SNELEMS(sSelectTargetMenuButtonLayout[0]); j++) {
            if (selectedTarget == sSelectTargetMenuButtonLayout[i][j]) {
                savedCursorPos->targetSelectX = j;
                savedCursorPos->targetSelectY = i;

                return;
            }
        }
    }
}

static int BattleSystem_Cursor_YesNo(BattleSubscreen *btlSubscreen, BOOL isCursorHidden)
{
    MenuCursor *cursor = &btlSubscreen->cursor;
    const BattleMenuConfig *battleMenuConfig = &sBattleMenuConfigs[btlSubscreen->activeMenuConfigIndex];
    int buttonIndex;

    if (isCursorHidden == TRUE) {
        buttonIndex = sYesNoMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    u32 button = BattleSystem_MoveCursor(cursor, 1, 2, sYesNoMenuButtonLayout[0]);

    switch (button) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        buttonIndex = sYesNoMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(btlSubscreen->cursorRenderer, battleMenuConfig->touchScreenRects[buttonIndex].rect.left + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.right - 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.top + 8, battleMenuConfig->touchScreenRects[buttonIndex].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        buttonIndex = sYesNoMenuButtonLayout[cursor->y][cursor->x];
        return buttonIndex;
    case PAD_BUTTON_B:
        return 1;
    }

    return 0xffffffff;
}

static u32 BattleSystem_MoveCursor(MenuCursor *cursor, int width, int height, const u8 *layout)
{
    int y, x;
    u32 key;

    if (cursor->x >= width) {
        cursor->x = width - 1;
    }

    if (cursor->y >= height) {
        cursor->y = height - 1;
    }

    x = cursor->x;
    y = cursor->y;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        cursor->y--;

        if (cursor->y < 0) {
            cursor->y = 0;
        }

        if (layout) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->y--;

                if (cursor->y < 0) {
                    cursor->y = y;
                    break;
                }
            }
        }

        key = PAD_KEY_UP;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        cursor->y++;

        if (cursor->y >= height) {
            cursor->y = height - 1;
        }

        if (layout) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->y++;

                if (cursor->y >= height) {
                    cursor->y = y;
                    break;
                }
            }
        }

        key = PAD_KEY_DOWN;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        cursor->x--;

        if (cursor->x < 0) {
            cursor->x = 0;
        }

        if (layout) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->x--;

                if (cursor->x < 0) {
                    cursor->x = x;
                    break;
                }
            }
        }

        key = PAD_KEY_LEFT;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        cursor->x++;

        if (cursor->x >= width) {
            cursor->x = width - 1;
        }

        if (layout) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->x++;

                if (cursor->x >= width) {
                    cursor->x = x;
                    break;
                }
            }
        }

        key = PAD_KEY_RIGHT;
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        key = PAD_BUTTON_A;
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        key = PAD_BUTTON_B;
    } else {
        return 0;
    }

    if (layout) {
        int prevButtonIndex = layout[width * y + x];
        int newButtonIndex = layout[width * cursor->y + cursor->x];

        if (prevButtonIndex == newButtonIndex) {
            cursor->x = x;
            cursor->y = y;
        }
    }

    if (cursor->x != x || cursor->y != y) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else {
        if (key & PAD_KEY) {
            return 0;
        }
    }

    return key;
}

int BattleSubscreen_GetSuppressActivationSFX(BattleSubscreen *btlSubscreen)
{
    return btlSubscreen->suppressActivationSfx;
}

void BattleSubscreen_SetSuppressActivationSFX(BattleSubscreen *btlSubscreen, int isCursorEnabled)
{
    btlSubscreen->suppressActivationSfx = isCursorEnabled;
}

static int (*const sCatchTutorialInputHandlers[])(BattleSubscreen *) = {
    GetCatchTutorialInputStep0,
    GetCatchTutorialInputStep1
};

static int GetCatchTutorialInput(BattleSubscreen *btlSubscreen)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(btlSubscreen->battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(btlSubscreen->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);
    int input = 0xffffffff;

    if (BattleSystem_GetCatchingTutorialLowHP(btlSubscreen->battleSys) == 0) {
        GF_ASSERT(btlSubscreen->catchTutorialState.step < NELEMS(sCatchTutorialInputHandlers));
        input = sCatchTutorialInputHandlers[btlSubscreen->catchTutorialState.step](btlSubscreen);
    } else {
        input = GetCatchTutorialLowHPInput(btlSubscreen);
    }

    if (input != 0xffffffff) {
        btlSubscreen->catchTutorialState.phase = 0;
        btlSubscreen->catchTutorialState.delay = 0;
        btlSubscreen->catchTutorialState.step++;
    }

    return input;
}

static int GetCatchTutorialInputStep0(BattleSubscreen *btlSubscreen)
{
    switch (btlSubscreen->catchTutorialState.phase) {
    case 0:
        Indicator_Show(btlSubscreen->catchTutorialState.indicator, 128, 84 - 24, (192 + 80) << FX32_SHIFT);
        Indicator_SetExitTimer(btlSubscreen->catchTutorialState.indicator, 60);
        btlSubscreen->catchTutorialState.phase++;
        break;
    default:
        if (Indicator_GetHasDropped(btlSubscreen->catchTutorialState.indicator) == TRUE) {
            btlSubscreen->catchTutorialState.phase++;
            return FALSE;
        }
        break;
    }

    return 0xffffffff;
}

static int GetCatchTutorialInputStep1(BattleSubscreen *btlSubscreen)
{
    if (btlSubscreen->catchTutorialState.phase == 0) {
        Indicator_Show(btlSubscreen->catchTutorialState.indicator, 64, 46 - 24, (192 + 80) << FX32_SHIFT);
        Indicator_SetExitTimer(btlSubscreen->catchTutorialState.indicator, 60);
        btlSubscreen->catchTutorialState.phase++;
    } else if (Indicator_GetHasDropped(btlSubscreen->catchTutorialState.indicator) == TRUE) {
        btlSubscreen->catchTutorialState.phase++;
        return TRUE;
    }

    return 0xffffffff;
}

static int GetCatchTutorialLowHPInput(BattleSubscreen *btlSubscreen)
{
    switch (btlSubscreen->catchTutorialState.phase) {
    case 0:
        btlSubscreen->catchTutorialState.delay++;

        if (btlSubscreen->catchTutorialState.delay > 60) {
            btlSubscreen->catchTutorialState.delay = 0;
            btlSubscreen->catchTutorialState.phase++;
        }
        break;
    case 1:
        Indicator_Show(btlSubscreen->catchTutorialState.indicator, 40, 170 - 24, (192 + 80) << FX32_SHIFT);
        Indicator_SetExitTimer(btlSubscreen->catchTutorialState.indicator, 60);
        btlSubscreen->catchTutorialState.phase++;
        break;
    default:
        if (Indicator_GetHasDropped(btlSubscreen->catchTutorialState.indicator) == TRUE) {
            btlSubscreen->catchTutorialState.phase++;
            return 1;
        }
        break;
    }

    return 0xffffffff;
}

void BattleSubscreen_ShowStopRecordingMessage(BattleSubscreen *btlSubscreen, int flag)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(btlSubscreen->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(btlSubscreen->battleSys);

    GF_ASSERT(btlSubscreen->activeMenuConfigIndex == 18);

    LoadStandardWindowGraphics(bgConfig, BG_LAYER_SUB_1, 0x20, 1, 0, HEAP_ID_BATTLE);
    PaletteData_LoadBufferFromHardware(paletteData, PLTTBUF_SUB_BG, PLTT_DEST(PLTT_1), PALETTE_SIZE_BYTES);

    int fillVal = 0x20, palette = 1;
    int x = 1;
    int y = 6;
    int width = 30;
    int height = 6;

    Bg_FillTilemapRect(bgConfig, 5, fillVal, x, y, 1, 1, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 1, x + 1, y, width - 2, 1, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 2, x + width - 1, y, 1, 1, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 3, x, y + 1, 1, height - 2, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 5, x + width - 1, y + 1, 1, height - 2, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 6, x, y + height - 1, 1, 1, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 7, x + 1, y + height - 1, width - 2, 1, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 8, x + width - 1, y + height - 1, 1, 1, palette);
    Bg_FillTilemapRect(bgConfig, 5, fillVal + 4, x + 1, y + 1, width - 2, height - 2, palette);
    Bg_ScheduleTilemapTransfer(bgConfig, 5);

    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(btlSubscreen->battleSys);
    const u16 msgIDs[][2] = {
        { 1261, 1262 },
        { 1263, 1264 },
        { 1265, 1266 },
    };

    for (int i = 0; i < 2; i++) {
        if (btlSubscreen->fontOAMEntry[1 + i].fontOAM) {
            GF_ASSERT(FALSE);
            return;
        }

        String *message = MessageLoader_GetNewString(msgLoader, msgIDs[flag][i]);

        BattleSubscreen_NewFontOAM(btlSubscreen, &btlSubscreen->fontOAMEntry[1 + i], message, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 4, 20023, 1 * 8 + 8, 6 * 8 + 16 + 16 * i, 0, NULL);
        String_Free(message);
    }
}

u8 BattleSubscreen_IsWaitingForPartner(BattleSubscreen *btlSubscreen)
{
    return btlSubscreen->isWaitingForPartner;
}
