#ifndef POKEPLATINUM_BATTLE_BATTLE_SUBSCREEN_H
#define POKEPLATINUM_BATTLE_BATTLE_SUBSCREEN_H

#include "constants/battle.h"
#include "constants/moves.h"
#include "constants/pokemon.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02012B20_decl.h"

#include "battle/cursor_renderer.h"
#include "battle/indicator.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "coordinates.h"
#include "narc.h"
#include "sys_task.h"
#include "touch_screen.h"

typedef struct SubscreenTilemapRect {
    u8 top;
    u8 bottom;
    u8 left;
    u8 right;
} SubscreenTilemapRect;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
} UnusedStruct_ov16_0226A3F4;

typedef struct {
    SysTask *unk_00;
    u8 *unk_04;
    void *unk_08;
    u8 *unk_0C;
    UnusedStruct_ov16_0226A3F4 unk_10;
    u16 unk_1C;
} UnusedStruct_ov16_02268A14_sub3_sub1;

typedef struct MenuButtonPressAnimState {
    s16 phase;
    s16 waitTimer;
    union {
        struct {
            const s16 *keyframes;
            const SubscreenTilemapRect *subscreenTilemapRect;
            int selectedButton;
            u8 srcBufIndex;
            u8 fontOAMIdx;
            u8 spriteIndex;
            u8 unread;
            u8 freeSprites;
            CoordinatesS16 screenPos;
        } ButtonPressAnimationState;
        struct {
            UnusedStruct_ov16_02268A14_sub3_sub1 *unused_00[4];
            UnusedStruct_ov16_02268A14_sub3_sub1 *unused_10;
            NNSG2dCharacterData *unused_14;
            void *unused_18;
            int selectedTarget;
        } TargetSelectAnimationState;
    };
} MenuButtonPressAnimState;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    u8 unk_08;
    u8 unk_09;
} UnusedStruct_ov16_02268A14_sub4;

typedef struct {
    const SubscreenTilemapRect *unk_00;
    u8 unk_04;
    s8 unk_05;
} UnusedStruct_ov16_02268A14_sub1;

typedef struct FontOAMEntry {
    FontOAM *fontOAM;
    CharTransferAllocation allocation;
    u16 textWidth;
} FontOAMEntry;

typedef struct PartyBallAnimState {
    s16 xOffset;
    u8 expPercent;
    u8 phase;
    u8 unused_04;
    u8 delay;
    u8 frameCount;
    u8 duration;
    u8 bounceCount;
} PartyBallAnimState;

typedef struct MenuCursor {
    u8 isActive;
    s8 y;
    s8 x;
    u8 unused_03;
} MenuCursor;

typedef struct ActionSelectData {
    u8 battlerType;
    u8 battler;
    u8 partySlot;
    u8 ballStatusBattler;
    s16 curHp;
    u16 maxHp;
    u8 isWaitingForPartner;
} ActionSelectData;

typedef struct MoveSelectData {
    u16 moveIDs[4];
    u8 currPP[4];
    u8 maxPP[4];
    u8 battlerType;
} MoveSelectData;

typedef struct TargetMonData {
    u8 partySlot;
    u8 gender : 2;
    u8 isPresent : 1;
    u8 : 5;
    u8 stockStatus;
    u8 padding_03;
    s16 curHP;
    u16 maxHP;
} TargetMonData;

typedef struct TargetSelectData {
    TargetMonData targetMonData[MAX_BATTLERS];
    u8 battlerType;
    u8 targetingLayout;
} TargetSelectData;

typedef struct GiveUpMoveData {
    u16 move;
    u16 unused_02;
} GiveUpMoveData;

typedef union ActiveMenuData {
    ActionSelectData actionData;
    MoveSelectData moveData;
    TargetSelectData targetSelectData;
    GiveUpMoveData giveUpMoveData;
} ActiveMenuData;

typedef struct TextWindowLayout {
    Window window;
    u16 width;
    u16 height;
} TextWindowLayout;

typedef struct MoveDisplayInfo {
    u16 move[LEARNED_MOVES_MAX];
    u16 curPP[LEARNED_MOVES_MAX];
    u16 maxPP[LEARNED_MOVES_MAX];
} MoveDisplayInfo;

typedef struct MoveDisplayData {
    MoveDisplayInfo moveDisplayInfo;
    u16 *moveIcons[LEARNED_MOVES_MAX];
    TextWindowLayout moveNameWindows[LEARNED_MOVES_MAX];
    TextWindowLayout ppCountWindows[LEARNED_MOVES_MAX];
    TextWindowLayout ppLabelWindows[LEARNED_MOVES_MAX];
} MoveDisplayData;

typedef struct BattleSubscreen {
    BattleSystem *battleSys;
    u8 *suppressActivationSfxPtr;
    SysTask *animatePartyBallsTask;
    SysTask *menuTransitionTask;
    SysTask *unused_10;
    UnusedStruct_ov16_02268A14_sub1 unused_14;
    ActiveMenuData activeMenuData;
    u16 *tilemapBuffers[7];
    u16 *subscreenPaletteBuf;
    u16 *normalMovePalBuf;
    u16 *speedUpMovePalBuf;
    SysTask *speedUpPaletteTask;
    MoveDisplayData moveDisplayData[MAX_BATTLERS];
    UnkStruct_02012744 *fontOAMManager;
    FontOAMEntry fontOAMEntry[13];
    UnkStruct_02012B20 *unused_5B8;
    ManagedSprite *playerPartyBallSprites[MAX_PARTY_SIZE];
    ManagedSprite *opponentPartyBallSprites[MAX_PARTY_SIZE];
    ManagedSprite *moveSelectSprites[LEARNED_MOVES_MAX];
    ManagedSprite *categoryIconSprites[LEARNED_MOVES_MAX];
    ManagedSprite *targetSelectPokeIconSprites[MAX_BATTLERS];
    SysTask *pokeIconAnimTasks[MAX_BATTLERS];
    PartyBallAnimState partyBallAnimState[MAX_PARTY_SIZE];
    SysTask *unused_664;
    u8 unused_668;
    u8 unused_669;
    u8 battlerType;
    s8 activeMenuConfigIndex;
    u8 targetingLayout;
    u8 trainerGender;
    u8 isPanelSliding;
    u8 hasCancelButton;
    u8 unused_670;
    s16 unused_672;
    u8 pulseCursorDirection;
    s16 pulseCursorBlendValue;
    SysTask *pulseCursorTask;
    MenuButtonPressAnimState menuButtonPressAnimState;
    UnusedStruct_ov16_02268A14_sub4 unused_6A0;
    s32 panelScrollPos;
    s32 slideSpeed;
    s32 targetOffset;
    CursorRenderer *cursorRenderer;
    MenuCursor cursor;
    u8 suppressActivationSfx;
    u8 isWaitingForPartner;
    struct {
        Indicator *indicator;
        u8 step;
        u8 phase;
        u8 delay;
    } catchTutorialState;
} BattleSubscreen;

typedef struct SlideInPanelState {
    BattleSubscreen *btlSubscreen;
    SysTask *task;
    s16 xShift;
    s16 yShift;
    s16 bgXOffset;
    s16 bgYOffset;
    s16 prevBgYOffset;
    u8 direction;
    u8 phase;
} SlideInPanelState;

typedef struct BattleMenuConfig {
    u16 unused_00;
    u16 unused_02;
    u16 bgTilemapBufIndices[4];
    u16 bgPriorities[4];
    const TouchScreenRect *touchScreenRects;
    const int *buttonResults;
    const u8 *buttonSlots;
    int (*handleCursorInput)(BattleSubscreen *btlSubscreen, int param1);
    void (*saveCursorPos)(BattleSubscreen *btlSubscreen, int param1);
    void (*drawMenu)(BattleSubscreen *btlSubscreen, int param1, int param2);
    int (*processInput)(BattleSubscreen *btlSubscreen, int param1, int param2);
} BattleMenuConfig;

void BattleSubscreenBg_Init(BgConfig *bgConfig);
void BattleSubscreenBg_Free(BgConfig *bgConfig);
void *BattleSubscreen_New(NARC *unused1, NARC *unused2, BattleSystem *battleSys, int trainerGender, u8 *subscreenCursorOn);
void BattleSubscreen_Free(BattleSubscreen *btlSubscreen);
void BattleSubscreen_LoadGraphics(BattleSubscreen *btlSubscreen);
void BattleSubscreen_FreeGraphics(BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetupBackground(NARC *unused, NARC *spriteNarc, BattleSubscreen *btlSubscreen, int menuConfigIndex, int forceRedraw, void *battleDisplayData);
void BattleSubscreen_LoadSprites(NARC *spriteNarc, BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetExpPercents(BattleSubscreen *btlSubscreen, const u8 *expPercents);
void BattleSubscreen_SetBallStatus(BattleSubscreen *btlSubscreen, u8 playerBallStatuses[], u8 opponentBallStatuses[]);
void BattleSubscreen_ShowBallSprites(BattleSubscreen *btlSubscreen);
void BattleSubscreen_HideBallSprites(BattleSubscreen *btlSubscreen);
int BattleSystem_MenuInput(BattleSubscreen *btlSubscreen);
BOOL BattleSubscreen_IsReady(BattleSubscreen *btlSubscreen);
int GetTargetSelectLayout(int range, int battlerType);
void BattleSubscreen_UpdateSlideWindow(BattleSubscreen *btlSubscreen);
void BattleSubscreen_StartPanelSlide(BattleSubscreen *btlSubscreen, int slideSpeed, int targetOffset);
void BattleSubscreen_UpdateMoveDisplay(BattleSubscreen *btlSubscreen, int battlerSlot, const MoveDisplayInfo *moveDisplayInfo);
void ov16_Dummy3(BattleSubscreen *btlSubscreen, int param1);
BOOL useless_0226BCD0(BattleSubscreen *btlSubscreen);
int BattleSubscreen_GetSuppressActivationSFX(BattleSubscreen *btlSubscreen);
void BattleSubscreen_SetSuppressActivationSFX(BattleSubscreen *btlSubscreen, int isCursorEnabled);
void BattleSubscreen_ShowStopRecordingMessage(BattleSubscreen *btlSubscreen, int flag);
u8 BattleSubscreen_IsWaitingForPartner(BattleSubscreen *btlSubscreen);

#endif // POKEPLATINUM_BATTLE_BATTLE_SUBSCREEN_H
