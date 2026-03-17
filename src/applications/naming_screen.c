#include "applications/naming_screen.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
#include "constants/graphics.h"
#include "constants/heap.h"

#include "pch/global_pch.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "charcode.h"
#include "charcode_util.h"
#include "font.h"
#include "game_options.h"
#include "genders.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pc_boxes.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "species.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_0200679C.h"
#include "unk_02012744.h"
#include "unk_0201567C.h"
#include "vram_transfer.h"

#include "res/graphics/naming_screen/namein.naix"
#include "res/text/bank/generic_names.h"
#include "res/text/bank/naming_screen.h"

// if these are modified, NamingScreen_InitializeCharsGraphics
// and calls to NamingScreen_PrintChars need to be adjusted.
#define NMS_NUM_ROWS 6
#define NMS_NUM_COLS 13

enum NamingScreenControlChars {
    NMS_CONTROL_DAKU = 0xD001,
    NMS_CONTROL_HANDAKU,
    NMS_CONTROL_SPACE,
    NMS_CONTROL_SKIP,
    NMS_BUTTON_START = 0xE001,
    NMS_BUTTON_PAGE_UPPER,
    NMS_BUTTON_PAGE_LOWER,
    NMS_BUTTON_PAGE_OTHERS,
    NMS_BUTTON_PAGE_JP_UNUSED,
    NMS_BUTTON_PAGE_JP_UNUSED_2,
    NMS_BUTTON_BACK,
    NMS_BUTTON_OK,
};

enum NamingScreenAppState {
    NMS_APP_STATE_WAIT_FADE_IN = 0,
    NMS_APP_STATE_INITIAL_DELAY,
    NMS_APP_STATE_RUNNING,
    NMS_APP_STATE_WAIT_FADE_OUT,
};

enum NamingScreenState {
    NMS_STATE_PROCESS_INPUTS = 4,
    NMS_STATE_PRINT_BATTLE_MESSAGE,
    NMS_STATE_WAIT_BATTLE_MESSAGE,
    NMS_STATE_START_FADE_OUT,
};

enum ChangeCharsState {
    CC_STATE_LOAD_GRAPHICS = 0,
    CC_STATE_SET_INITIAL_POSITION,
    CC_STATE_SLIDE_IN,
    CC_STATE_FINISH_SLIDING_OUT,
    CC_STATE_NOTHING,
};

enum NamingScreenSprite {
    NMS_SPRITE_UPPER_BUTTON = 0,
    NMS_SPRITE_LOWER_BUTTON,
    NMS_SPRITE_OTHERS_BUTTON,
    NMS_SPRITE_JP_UNUSED_BUTTON,
    NMS_SPRITE_JP_UNUSED_2_BUTTON,
    NMS_SPRITE_BACK_BUTTON,
    NMS_SPRITE_OK_BUTTON,
    // all sprites before this one are treated as children of this one,
    // and their positions will move when the overlay moves
    NMS_SPRITE_OVERLAY,
    NMS_SPRITE_CURSOR,
    NMS_SPRITE_COUNT,
};

#define NMS_SPRITE_BUTTON_START      NMS_SPRITE_BACK_BUTTON
#define NMS_SPRITE_BUTTON_END        NMS_SPRITE_OK_BUTTON
#define NMS_SPRITE_PAGE_BUTTON_START NMS_SPRITE_UPPER_BUTTON
#define NMS_SPRITE_PAGE_BUTTON_END   NMS_SPRITE_OTHERS_BUTTON

enum NamingScreenWindows {
    // there are two keyboards. when transitioning, both
    // are active (one moves in the other moves out).
    // otherwise, only one is active.
    // these must stay beside each other.
    NMS_WINDOW_KEYBOARD_0 = 0,
    NMS_WINDOW_KEYBOARD_1,
    // this window is never used, only created and destroyed
    NMS_WINDOW_DUMMY,
    NMS_WINDOW_ENTERED_TEXT,
    // these windows are used in PrintCharOnWindowAndOBJ, but I don't know what they do.
    // commenting out that function, and making these never get used, the result is that
    // nothing changes
    NMS_WINDOW_UNK_0,
    NMS_WINDOW_UNK_1,
    NMS_WINDOW_UNK_2,
    NMS_WINDOW_UNK_3,
    NMS_WINDOW_GROUP_TEXT,
    NMS_WINDOW_PROMPT,
    NMS_WINDOW_COUNT,
};

enum NamingScreenDpadMovement {
    NMS_DPAD_MOVEMENT_NONE = 0,
    NMS_DPAD_MOVEMENT_UP,
    NMS_DPAD_MOVEMENT_DOWN,
    NMS_DPAD_MOVEMENT_LEFT,
    NMS_DPAD_MOVEMENT_RIGHT,
    NMS_DPAD_MOVEMENT_COUNT,
};

typedef struct NamingScreenCursor {
    int x;
    int y;
    int prevX;
    int prevY;
    int deltaX;
    BOOL hasCharacterBeenEntered;
    BOOL ignoreInput;
} NamingScreenCursor;

typedef struct NamingScreen {
    enum NamingScreenType type;
    int playerGenderOrMonSpecies;
    int monForm;
    int maxChars;
    int monGender;
    BOOL printedFromBattleGMM;
    Options *options;
    NamingScreenCursor keyboardCursor;
    u16 plttGlowEffectAngle;
    charcode_t keyboardChars[NMS_NUM_ROWS][NMS_NUM_COLS];
    u16 dummy5;
    charcode_t entryBuf[32];
    charcode_t entryBufBak[32];
    u16 textCursorPos;
    charcode_t tmpBuf[3];
    BgConfig *bgConfig;
    BOOL dummy4;
    StringTemplate *strTemplate;
    MessageLoader *namingScreenMsgLoader;
    MessageLoader *genericNamesMsgLoader;
    MessageLoader *battleStringsMsgLoader;
    String *promptString;
    String *unkJapaneseString;
    String *battleMessageString;
    String *groupTextString;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollections[4];
    SpriteResource *spriteResources[2][4];
    SpriteResourcesHeader mainSpriteResourceHeader;
    SpriteResourcesHeader subResourceSpriteHeader;
    // I don't know where 14 comes from.
    // only the first 9 elements are used. (NMS_SPRITE_COUNT)
    Sprite *uiSprites[14];
    Sprite *textCursorSprites[12];
    Sprite *entitySprite[2];
    SysTask *spriteFollowTasks[NMS_SPRITE_OVERLAY];
    Window windows[NMS_WINDOW_COUNT];
    int battleMessagePrinter;
    union {
        enum NamingScreenState main;
        enum ChangeCharsState changeChars;
    } state;
    int currentCharsIdx;
    // initially set to 0 (in memset in init)
    // alternates between 0 and 1. (see NamingScreen_AnimateChangeChars)
    enum BgLayer freeCharsBgLayer;
    VecFx32 charsPosition[2];
    int dummy3;
    int dummy0;
    int dummy1;
    int dummy2;
    BOOL spritesToUpdate[NMS_SPRITE_OVERLAY];
    void *charDataAlloc;
    NNSG2dCharacterData *charData;
    void *monIconRawCharData;
    NNSG2dCharacterData *monIconCharData;
    void *monIconRawPlttData;
    NNSG2dPaletteData *plttData;
    u8 pixelBuf[256];
    UnkStruct_020157E4 *touchscreenIconBlinker;
    BOOL isTouchInput;
    int delayUpdateCounter;
} NamingScreen;

typedef struct SubspritePosControllerParameters {
    Sprite *parent;
    Sprite *child;
    int dx;
    int i;
} SubspritePosControllerParameters;

typedef struct OverlayWiggleParameters {
    Sprite *overlaySprite;
    int state;
    fx32 overlayXPosition;
    fx32 overlayYPosition;
} OverlayWiggleParameters;

typedef struct NamingScreenTouchHitbox {
    u8 x;
    u8 y;
    u16 sizeParam : 2;
    u8 cursorX : 5;
    u8 cursorY : 5;
} NamingScreenTouchHitbox;

typedef struct NamingScreenSpriteAnim {
    int x;
    int y;
    int anim;
    int priority;
} NamingScreenSpriteAnim;

typedef struct DpadMovement {
    int x;
    int y;
} DpadMovement;

static BOOL NamingScreen_Init(ApplicationManager *appMan, int *state);
static BOOL NamingScreen_Main(ApplicationManager *appMan, int *state);
static BOOL NamingScreen_Exit(ApplicationManager *appMan, int *state);
static void NamingScreen_VBlankCallback(void *unused);
static void NamingScreen_InitGraphicsBanks(void);
static void NamingScreen_InitBgs(BgConfig *bgConfig);
static void NamingScreen_FreeBgs(BgConfig *bgConfig, Window *windows);
static void NamingScreen_LoadGraphicsFromNarc(NamingScreen *namingScreen, NARC *narc);
static void NamingScreen_AnimateChangeChars(
    BgConfig *bgConfig,
    Window *windows,
    enum ChangeCharsState *statePtr,
    int currentCharsIdx,
    enum BgLayer *bgLayerPtr,
    VecFx32 charsPosition[],
    Sprite **param6,
    void *rawCharData);
static void NamingScreen_InitCursorsAndChars(NamingScreen *param0, ApplicationManager *appMan);
static void NamingScreen_UpdateCharsPriorities(BgConfig *unused0, enum BgLayer oldBgLayer, VecFx32 unused1[]);
static void NamingScreen_InitializeCharsPosition(VecFx32 charsPosition[], enum BgLayer freeBgLayer);
static void NamingScreen_LoadObjectGfx(NamingScreen *namingScreen, NARC *narc);
static void NamingScreen_InitSprites(NamingScreen *namingScreen);
static void NamingScreen_TransferChars(void);
static void NamingScreen_InitWindows(NamingScreen *namingScreen, ApplicationManager *appMan, NARC *narc);
static void NamingScreen_ProcessDirectionInputs(NamingScreen *namingScreen);
static void NamingScreen_PaletteGlowEffect(u16 *param0);
static void NamingScreen_PrintChars(
    Window *window,
    const charcode_t *charCodes,
    int baseXOffset,
    int yOffset,
    int charSpacing,
    int renderDelay,
    TextColor textColor,
    void *rawCharData);
static void NamingScreen_PrintCharOnWindowAndOBJ(
    Window *window,
    const charcode_t *tmpBuf,
    u8 *pixelBuf,
    String *string);
static void NamingScreen_LoadKeyboardLayout(charcode_t out[][13], const int index);
static void NamingScreen_PrintLastCharOfEntryBuf(
    Window *windows,
    charcode_t *srcChars,
    int srcCharIdx,
    charcode_t *charCodeBuf,
    u8 *pixelBuf,
    String *string);
static int NamingScreen_ProcessCharacterInput(NamingScreen *namingScreen, charcode_t charCode, BOOL isButtonInput);
static BOOL NamingScreen_JPFlipDiacritic(
    int tableStart,
    int tableEnd,
    int convColNum,
    int mode,
    charcode_t *charBuf,
    int cursorPos);
static BOOL NamingScreen_JPFlipAlphaCase(int tableStart, int tableEnd, charcode_t *charBuf, int cursorPos);
static void NamingScreen_UpdateTextCursors(Sprite **textCursorSprites, int textCursorPos, int maxChars);
static void NamingScreen_CopyParamsFromArgs(NamingScreen *namingScreen, NamingScreenArgs *namingScreenArgs);
static void NamingScreen_InitializeCharsGraphics(
    Window *param0,
    u16 param1,
    int param2,
    TextColor param3,
    void *rawCharData);
static void NamingScreen_UpdateCursorSpritePosition(
    NamingScreen *namingScreen,
    enum NamingScreenDpadMovement dpadMovement);
static void NamingScreen_UpdateSpriteAnimations(int param0[], Sprite **sprites, int unused);
static void NamingScreen_SubspritePosControllerTask(SysTask *task, void *paramsPtr);
static void NamingScreen_WiggleOverlayTask(SysTask *task, void *paramsPtr);
static void NamingScreen_LoadMonIcon(
    NNSG2dCharacterData *monIconCharData,
    NNSG2dPaletteData *plttData,
    enum Species monSpecies,
    int monForm);
static void NamingScreen_ToggleEngineLayers(BOOL enable);
static void NamingScreen_PrepareBattleMessage(NamingScreen *namingScreen, ApplicationManager *appMan);
static void NamingScreen_InitIconSprite(NamingScreen *namingScreen, AffineSpriteListTemplate *template);
static void NamingScreen_UseDefaultName(NamingScreen *namingScreen, NamingScreenArgs *args);
static void NamingScreen_PrintMessageOnWindowLeftAlign(Window *window, int unused, String *str);
static void NamingScreen_PlaceCursorSprite(NamingScreen *namingScreen);
static enum NamingScreenAppState NamingScreen_ProcessInputs(
    NamingScreen *namingScreen,
    enum NamingScreenAppState appState);
static BOOL NamingScreen_IsRawStringAllSpaces(charcode_t *rawChars);
static void *NamingScreen_PrintStringOnWindowAndGetPixelBuffer(
    Window *window,
    String *string,
    u8 fontId,
    TextColor color);
static BOOL NamingScreen_ProcessTouchInputs(NamingScreen *namingScreen);

static const NamingScreenSpriteAnim sSpriteAnimations[] = {
    { .x = 0x4, .y = 0x44, .anim = 0x3, .priority = 0x1 },
    { .x = 0x24, .y = 0x44, .anim = 0x8, .priority = 0x1 },
    { .x = 0x44, .y = 0x44, .anim = 0xD, .priority = 0x1 },
    { .x = 0x0, .y = 0xC8, .anim = 0x12, .priority = 0x1 },
    { .x = 0x65, .y = 0x44, .anim = 0x14, .priority = 0x1 },
    { .x = 0x88, .y = 0x44, .anim = 0x17, .priority = 0x1 },
    { .x = 0xB0, .y = 0x44, .anim = 0x19, .priority = 0x1 },
    { .x = 0x16, .y = 0x38, .anim = 0x25, .priority = 0x2 },
    { .x = 0x1A, .y = 0x5B, .anim = 0x27, .priority = 0x0 },
};

static const charcode_t sHomeRowAll[] = {
    NMS_BUTTON_PAGE_UPPER,
    NMS_BUTTON_PAGE_UPPER,
    NMS_BUTTON_PAGE_LOWER,
    NMS_BUTTON_PAGE_LOWER,
    NMS_BUTTON_PAGE_OTHERS,
    NMS_BUTTON_PAGE_OTHERS,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_BUTTON_BACK,
    NMS_BUTTON_BACK,
    NMS_BUTTON_BACK,
    NMS_BUTTON_OK,
    NMS_BUTTON_OK,
};

static const charcode_t sHomeRowNumpad[] = {
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_CONTROL_SKIP,
    NMS_BUTTON_BACK,
    NMS_BUTTON_BACK,
    NMS_BUTTON_BACK,
    NMS_BUTTON_OK,
    NMS_BUTTON_OK,
};

static const charcode_t *sHomeRowLayouts[] = {
    sHomeRowAll,
    sHomeRowAll,
    sHomeRowAll,
    sHomeRowAll,
    sHomeRowNumpad
};

static const u16 sHomeRowCursorXCoords[] = {
    0x19,
    0x39,
    0x59,
    0x61,
    0x7A,
    0x9E,
    0xC6,
    0,
};

static const u8 sHomeRowCursorAnimIDs[] = {
    0x28,
    0x28,
    0x28,
    0x28,
    0x29,
    0x29,
    0x29,
};

static const charcode_t sCharCodesUpper0[] = {
    CHAR_A,
    CHAR_B,
    CHAR_C,
    CHAR_D,
    CHAR_E,
    CHAR_F,
    CHAR_G,
    CHAR_H,
    CHAR_I,
    CHAR_J,
    CHAR_SPACE,
    CHAR_COMMA,
    CHAR_PERIOD,
    CHAR_EOS,
};

static const charcode_t sCharCodesUpper1[] = {
    CHAR_K,
    CHAR_L,
    CHAR_M,
    CHAR_N,
    CHAR_O,
    CHAR_P,
    CHAR_Q,
    CHAR_R,
    CHAR_S,
    CHAR_T,
    CHAR_SPACE,
    CHAR_SINGLE_QUOTE_CLOSE,
    CHAR_MINUS,
    CHAR_EOS,
};

static const charcode_t sCharCodesUpper2[] = {
    CHAR_U,
    CHAR_V,
    CHAR_W,
    CHAR_X,
    CHAR_Y,
    CHAR_Z,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_MALE,
    CHAR_FEMALE,
    CHAR_EOS,
};

static const charcode_t sCharCodesUpper3[] = {
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesUpper4[] = {
    CHAR_0,
    CHAR_1,
    CHAR_2,
    CHAR_3,
    CHAR_4,
    CHAR_5,
    CHAR_6,
    CHAR_7,
    CHAR_8,
    CHAR_9,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const u16 sCharCodesLower0[] = {
    CHAR_a,
    CHAR_b,
    CHAR_c,
    CHAR_d,
    CHAR_e,
    CHAR_f,
    CHAR_g,
    CHAR_h,
    CHAR_i,
    CHAR_j,
    CHAR_SPACE,
    CHAR_COMMA,
    CHAR_PERIOD,
    CHAR_EOS,
};

static const charcode_t sCharCodesLower1[] = {
    CHAR_k,
    CHAR_l,
    CHAR_m,
    CHAR_n,
    CHAR_o,
    CHAR_p,
    CHAR_q,
    CHAR_r,
    CHAR_s,
    CHAR_t,
    CHAR_SPACE,
    CHAR_SINGLE_QUOTE_CLOSE,
    CHAR_MINUS,
    CHAR_EOS,
};

static const charcode_t sCharCodesLower2[] = {
    CHAR_u,
    CHAR_v,
    CHAR_w,
    CHAR_x,
    CHAR_y,
    CHAR_z,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_MALE,
    CHAR_FEMALE,
    CHAR_EOS,
};

static const charcode_t sCharCodesLower3[] = {
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesLower4[] = {
    CHAR_0,
    CHAR_1,
    CHAR_2,
    CHAR_3,
    CHAR_4,
    CHAR_5,
    CHAR_6,
    CHAR_7,
    CHAR_8,
    CHAR_9,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesOthers0[] = {
    CHAR_COMMA,
    CHAR_PERIOD,
    CHAR_COLON,
    CHAR_SEMICOLON,
    CHAR_EXCLAMATION,
    CHAR_QUESTION,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_MALE,
    CHAR_FEMALE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesOthers1[] = {
    CHAR_DOUBLE_QUOTE_OPEN,
    CHAR_DOUBLE_QUOTE_CLOSE,
    CHAR_SINGLE_QUOTE_OPEN,
    CHAR_SINGLE_QUOTE_CLOSE,
    CHAR_PAREN_OPEN,
    CHAR_PAREN_CLOSE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesOthers2[] = {
    CHAR_ELLIPSIS,
    CHAR_DOT,
    CHAR_TILDE,
    CHAR_AT_SIGN,
    CHAR_HASH,
    CHAR_PERCENT,
    CHAR_PLUS,
    CHAR_MINUS,
    CHAR_ASTERISK,
    CHAR_SLASH,
    CHAR_EQUALS,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesOthers3[] = {
    CHAR_DOUBLE_CIRCLE,
    CHAR_CIRCLE,
    CHAR_SQUARE,
    CHAR_TRIANGLE,
    CHAR_DIAMOND_OPEN,
    CHAR_SPADE,
    CHAR_HEART,
    CHAR_DIAMOND,
    CHAR_CLUB,
    CHAR_STAR,
    CHAR_EIGHT_NOTE,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesOthers4[] = {
    CHAR_SUN,
    CHAR_CLOUD,
    CHAR_UMBRELLA,
    CHAR_SILHOUETTE,
    CHAR_EMOTE_SMILE,
    CHAR_EMOTE_LAUGH,
    CHAR_EMOTE_UPSET,
    CHAR_EMOTE_FROWN,
    CHAR_ZZZ,
    CHAR_ARROW_CURVE_UP,
    CHAR_ARROW_CURVE_DOWN,
    CHAR_SPACE,
    CHAR_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesJpMisc0[] = {
    CHAR_WIDE_0,
    CHAR_WIDE_1,
    CHAR_WIDE_2,
    CHAR_WIDE_3,
    CHAR_WIDE_4,
    CHAR_WIDE_5,
    CHAR_WIDE_6,
    CHAR_WIDE_7,
    CHAR_WIDE_8,
    CHAR_WIDE_9,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_EXCLAMATION,
    CHAR_WIDE_QUESTION,
    CHAR_EOS,
};

static const charcode_t sCharCodesJpMisc1[] = {
    CHAR_JP_COMMA,
    CHAR_JP_PERIOD,
    CHAR_WIDE_COMMA,
    CHAR_WIDE_PERIOD,
    CHAR_JP_ELLIPSIS,
    CHAR_JP_DOT,
    CHAR_WIDE_TILDE,
    CHAR_WIDE_COLON,
    CHAR_WIDE_SEMICOLON,
    CHAR_WIDE_SLASH,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_MALE,
    CHAR_WIDE_FEMALE,
    CHAR_EOS,
};

static const charcode_t sCharCodesJpMisc2[] = {
    CHAR_JP_SINGLE_QUOTE_OPEN,
    CHAR_JP_SINGLE_QUOTE_CLOSE,
    CHAR_JP_DOUBLE_QUOTE_OPEN,
    CHAR_JP_DOUBLE_QUOTE_CLOSE,
    CHAR_JP_PAREN_OPEN,
    CHAR_JP_PAREN_CLOSE,
    CHAR_WIDE_PLUS,
    CHAR_WIDE_MINUS,
    CHAR_WIDE_MULTIPLY,
    CHAR_WIDE_DIVIDE,
    CHAR_WIDE_EQUALS,
    CHAR_WIDE_PERCENT,
    CHAR_WIDE_AT_SIGN,
    CHAR_EOS,
};

static const charcode_t sCharCodesJpMisc3[] = {
    CHAR_WIDE_DOUBLE_CIRCLE,
    CHAR_WIDE_CIRCLE,
    CHAR_WIDE_SQUARE,
    CHAR_WIDE_TRIANGLE,
    CHAR_WIDE_DIAMOND_OPEN,
    CHAR_WIDE_HEART,
    CHAR_WIDE_SPADE,
    CHAR_WIDE_DIAMOND,
    CHAR_WIDE_CLUB,
    CHAR_WIDE_STAR,
    CHAR_WIDE_EIGHTH_NOTE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesJpMisc4[] = {
    CHAR_WIDE_SUN,
    CHAR_WIDE_CLOUD,
    CHAR_WIDE_UMBRELLA,
    CHAR_WIDE_SILHOUETTE,
    CHAR_WIDE_EMOTE_SMILE,
    CHAR_WIDE_EMOTE_LAUGH,
    CHAR_WIDE_EMOTE_UPSET,
    CHAR_WIDE_EMOTE_FROWN,
    CHAR_WIDE_ZZZ,
    CHAR_WIDE_ARROW_CURVE_UP,
    CHAR_WIDE_ARROW_CURVE_DOWN,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesNumpad0[] = {
    CHAR_0,
    CHAR_1,
    CHAR_2,
    CHAR_3,
    CHAR_4,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesNumpad1[] = {
    CHAR_5,
    CHAR_6,
    CHAR_7,
    CHAR_8,
    CHAR_9,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_EOS,
};

static const charcode_t sCharCodesNumpad345[] = {
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_WIDE_SPACE,
    CHAR_EOS,
};

static const charcode_t *sCharCodes[][5] = {
    {
        sCharCodesUpper0,
        sCharCodesUpper1,
        sCharCodesUpper2,
        sCharCodesUpper3,
        sCharCodesUpper4,
    },
    {
        sCharCodesLower0,
        sCharCodesLower1,
        sCharCodesLower2,
        sCharCodesLower3,
        sCharCodesLower4,
    },
    {
        sCharCodesOthers0,
        sCharCodesOthers1,
        sCharCodesOthers2,
        sCharCodesOthers3,
        sCharCodesOthers4,
    },
    {
        sCharCodesJpMisc0,
        sCharCodesJpMisc1,
        sCharCodesJpMisc2,
        sCharCodesJpMisc3,
        sCharCodesJpMisc4,
    },
    {
        sCharCodesNumpad0,
        sCharCodesNumpad1,
        sCharCodesNumpad345,
        sCharCodesNumpad345,
        sCharCodesNumpad345,
    }
};

static const charcode_t sJPCharConversionTable[][3] = {
    { CHAR_HIRAGANA_A, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_A },
    { CHAR_HIRAGANA_I, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_I },
    { CHAR_HIRAGANA_U, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_U },
    { CHAR_HIRAGANA_E, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_E },
    { CHAR_HIRAGANA_O, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_O },
    { CHAR_KATAKANA_A, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_A },
    { CHAR_KATAKANA_I, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_I },
    { CHAR_KATAKANA_U, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_U },
    { CHAR_KATAKANA_E, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_E },
    { CHAR_KATAKANA_O, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_O },
    { CHAR_HIRAGANA_YA, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_YA },
    { CHAR_HIRAGANA_YU, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_YU },
    { CHAR_HIRAGANA_YO, CHAR_WIDE_SPACE, CHAR_HIRAGANA_SMALL_YO },
    { CHAR_KATAKANA_YA, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_YA },
    { CHAR_KATAKANA_YU, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_YU },
    { CHAR_KATAKANA_YO, CHAR_WIDE_SPACE, CHAR_KATAKANA_SMALL_YO },
    { CHAR_WIDE_A, CHAR_WIDE_SPACE, CHAR_WIDE_a },
    { CHAR_WIDE_B, CHAR_WIDE_SPACE, CHAR_WIDE_b },
    { CHAR_WIDE_C, CHAR_WIDE_SPACE, CHAR_WIDE_c },
    { CHAR_WIDE_D, CHAR_WIDE_SPACE, CHAR_WIDE_d },
    { CHAR_WIDE_E, CHAR_WIDE_SPACE, CHAR_WIDE_e },
    { CHAR_WIDE_F, CHAR_WIDE_SPACE, CHAR_WIDE_f },
    { CHAR_WIDE_G, CHAR_WIDE_SPACE, CHAR_WIDE_g },
    { CHAR_WIDE_H, CHAR_WIDE_SPACE, CHAR_WIDE_h },
    { CHAR_WIDE_I, CHAR_WIDE_SPACE, CHAR_WIDE_i },
    { CHAR_WIDE_J, CHAR_WIDE_SPACE, CHAR_WIDE_j },
    { CHAR_WIDE_K, CHAR_WIDE_SPACE, CHAR_WIDE_k },
    { CHAR_WIDE_L, CHAR_WIDE_SPACE, CHAR_WIDE_l },
    { CHAR_WIDE_M, CHAR_WIDE_SPACE, CHAR_WIDE_m },
    { CHAR_WIDE_N, CHAR_WIDE_SPACE, CHAR_WIDE_n },
    { CHAR_WIDE_O, CHAR_WIDE_SPACE, CHAR_WIDE_o },
    { CHAR_WIDE_P, CHAR_WIDE_SPACE, CHAR_WIDE_p },
    { CHAR_WIDE_Q, CHAR_WIDE_SPACE, CHAR_WIDE_q },
    { CHAR_WIDE_R, CHAR_WIDE_SPACE, CHAR_WIDE_r },
    { CHAR_WIDE_S, CHAR_WIDE_SPACE, CHAR_WIDE_s },
    { CHAR_WIDE_T, CHAR_WIDE_SPACE, CHAR_WIDE_t },
    { CHAR_WIDE_U, CHAR_WIDE_SPACE, CHAR_WIDE_u },
    { CHAR_WIDE_V, CHAR_WIDE_SPACE, CHAR_WIDE_v },
    { CHAR_WIDE_W, CHAR_WIDE_SPACE, CHAR_WIDE_w },
    { CHAR_WIDE_X, CHAR_WIDE_SPACE, CHAR_WIDE_x },
    { CHAR_WIDE_Y, CHAR_WIDE_SPACE, CHAR_WIDE_y },
    { CHAR_WIDE_Z, CHAR_WIDE_SPACE, CHAR_WIDE_z },
    { CHAR_HIRAGANA_TSU, CHAR_HIRAGANA_DZU, CHAR_HIRAGANA_SOKUON },
    { CHAR_KATAKANA_TSU, CHAR_KATAKANA_DZU, CHAR_KATAKANA_SOKUON },
    { CHAR_HIRAGANA_KA, CHAR_HIRAGANA_GA, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_KI, CHAR_HIRAGANA_GI, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_KU, CHAR_HIRAGANA_GU, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_KE, CHAR_HIRAGANA_GE, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_KO, CHAR_HIRAGANA_GO, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_SA, CHAR_HIRAGANA_ZA, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_SHI, CHAR_HIRAGANA_JI, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_SU, CHAR_HIRAGANA_ZU, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_SE, CHAR_HIRAGANA_ZE, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_SO, CHAR_HIRAGANA_ZO, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_TA, CHAR_HIRAGANA_DA, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_CHI, CHAR_HIRAGANA_DJI, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_TE, CHAR_HIRAGANA_DE, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_TO, CHAR_HIRAGANA_DO, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_KA, CHAR_KATAKANA_GA, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_KI, CHAR_KATAKANA_GI, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_KU, CHAR_KATAKANA_GU, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_KE, CHAR_KATAKANA_GE, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_KO, CHAR_KATAKANA_GO, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_SA, CHAR_KATAKANA_ZA, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_SHI, CHAR_KATAKANA_JI, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_SU, CHAR_KATAKANA_ZU, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_SE, CHAR_KATAKANA_ZE, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_SO, CHAR_KATAKANA_ZO, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_TA, CHAR_KATAKANA_DA, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_CHI, CHAR_KATAKANA_DJI, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_TE, CHAR_KATAKANA_DE, CHAR_WIDE_SPACE },
    { CHAR_KATAKANA_TO, CHAR_KATAKANA_DO, CHAR_WIDE_SPACE },
    { CHAR_HIRAGANA_HA, CHAR_HIRAGANA_BA, CHAR_HIRAGANA_PA },
    { CHAR_HIRAGANA_HI, CHAR_HIRAGANA_BI, CHAR_HIRAGANA_PI },
    { CHAR_HIRAGANA_FU, CHAR_HIRAGANA_BU, CHAR_HIRAGANA_PU },
    { CHAR_HIRAGANA_HE, CHAR_HIRAGANA_BE, CHAR_HIRAGANA_PE },
    { CHAR_HIRAGANA_HO, CHAR_HIRAGANA_BO, CHAR_HIRAGANA_PO },
    { CHAR_KATAKANA_HA, CHAR_KATAKANA_BA, CHAR_KATAKANA_PA },
    { CHAR_KATAKANA_HI, CHAR_KATAKANA_BI, CHAR_KATAKANA_PI },
    { CHAR_KATAKANA_FU, CHAR_KATAKANA_BU, CHAR_KATAKANA_PU },
    { CHAR_KATAKANA_HE, CHAR_KATAKANA_BE, CHAR_KATAKANA_PE },
    { CHAR_KATAKANA_HO, CHAR_KATAKANA_BO, CHAR_KATAKANA_PO },
};

static const charcode_t sDakutenTable[][2] = {
    { CHAR_HIRAGANA_SOKUON, CHAR_HIRAGANA_DZU },
    { CHAR_KATAKANA_SOKUON, CHAR_KATAKANA_DZU },
    { CHAR_HIRAGANA_PA, CHAR_HIRAGANA_BA },
    { CHAR_HIRAGANA_PI, CHAR_HIRAGANA_BI },
    { CHAR_HIRAGANA_PU, CHAR_HIRAGANA_BU },
    { CHAR_HIRAGANA_PE, CHAR_HIRAGANA_BE },
    { CHAR_HIRAGANA_PO, CHAR_HIRAGANA_BO },
    { CHAR_KATAKANA_PA, CHAR_KATAKANA_BA },
    { CHAR_KATAKANA_PI, CHAR_KATAKANA_BI },
    { CHAR_KATAKANA_PU, CHAR_KATAKANA_BU },
    { CHAR_KATAKANA_PE, CHAR_KATAKANA_BE },
    { CHAR_KATAKANA_PO, CHAR_KATAKANA_BO },
};

static const charcode_t sHandakutenTable[][2] = {
    { CHAR_HIRAGANA_BA, CHAR_HIRAGANA_PA },
    { CHAR_HIRAGANA_BI, CHAR_HIRAGANA_PI },
    { CHAR_HIRAGANA_BU, CHAR_HIRAGANA_PU },
    { CHAR_HIRAGANA_BE, CHAR_HIRAGANA_PE },
    { CHAR_HIRAGANA_BO, CHAR_HIRAGANA_PO },
    { CHAR_KATAKANA_BA, CHAR_KATAKANA_PA },
    { CHAR_KATAKANA_BI, CHAR_KATAKANA_PI },
    { CHAR_KATAKANA_BU, CHAR_KATAKANA_PU },
    { CHAR_KATAKANA_BE, CHAR_KATAKANA_PE },
    { CHAR_KATAKANA_BO, CHAR_KATAKANA_PO },
};

static const int sUnkGXObjOffsets0[] = {
    0x70,
    0x4C,
    0x48
};

static const u8 sCharsBgColor[4] = {
    4,
    7,
    13,
    10,
};

// these need to be globals for some reason.
const charcode_t gNamingScreenDummy0[] = {
    CHAR_HIRAGANA_A,
    CHAR_HIRAGANA_NA,
    CHAR_HIRAGANA_TA,
    CHAR_HIRAGANA_NO,
    CHAR_WIDE_SPACE,
    CHAR_HIRAGANA_NA,
    CHAR_HIRAGANA_MA,
    CHAR_HIRAGANA_E,
    CHAR_HIRAGANA_HA,
    CHAR_WIDE_QUESTION,
    CHAR_EOS,
};

const charcode_t gNamingScreenDummy1[] = {
    CHAR_KATAKANA_PO,
    CHAR_KATAKANA_KE,
    CHAR_KATAKANA_MO,
    CHAR_KATAKANA_N,
    CHAR_HIRAGANA_NO,
    CHAR_WIDE_SPACE,
    CHAR_KATAKANA_NI,
    CHAR_KATAKANA_SOKUON,
    CHAR_KATAKANA_KU,
    CHAR_KATAKANA_NE,
    CHAR_WIDE_MINUS,
    CHAR_KATAKANA_MU,
    CHAR_HIRAGANA_HA,
    CHAR_WIDE_QUESTION,
    CHAR_EOS,
};

const charcode_t gNamingScreenDummy2[] = {
    CHAR_KATAKANA_BO,
    CHAR_KATAKANA_SOKUON,
    CHAR_KATAKANA_KU,
    CHAR_KATAKANA_SU,
    CHAR_HIRAGANA_NO,
    CHAR_WIDE_SPACE,
    CHAR_HIRAGANA_NA,
    CHAR_HIRAGANA_MA,
    CHAR_HIRAGANA_E,
    CHAR_HIRAGANA_HA,
    CHAR_WIDE_QUESTION,
    CHAR_EOS,
};

static const charcode_t *sDummy3[] = {
    gNamingScreenDummy0,
    gNamingScreenDummy1,
    gNamingScreenDummy2,
};

static const int sPromptTextIndices[] = {
    NamingScreen_Text_PlayerPrompt,
    NamingScreen_Text_PokemonPrompt,
    NamingScreen_Text_BoxPrompt,
    NamingScreen_Text_FriendNamePrompt,
    NamingScreen_Text_FriendCodePrompt,
    NamingScreen_Text_GroupPrompt,
    NamingScreen_Text_ThanksPrompt,
    NamingScreen_Text_FriendNamePrompt,
};

const ApplicationManagerTemplate gNamingScreenAppTemplate = {
    .init = NamingScreen_Init,
    .main = NamingScreen_Main,
    .exit = NamingScreen_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

static NamingScreen *sNamingScreenDummy;

static BOOL NamingScreen_Init(ApplicationManager *appMan, int *state)
{
    NamingScreen *namingScreen;
    NARC *narc;

    switch (*state) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_NAMING_SCREEN_APP, 0x20000 + 0x8000);

        namingScreen = ApplicationManager_NewData(appMan, sizeof(NamingScreen), HEAP_ID_NAMING_SCREEN_APP);
        memset(namingScreen, 0, sizeof(NamingScreen));
        namingScreen->bgConfig = BgConfig_New(HEAP_ID_NAMING_SCREEN_APP);
        narc = NARC_ctor(NARC_INDEX_DATA__NAMEIN, HEAP_ID_NAMING_SCREEN_APP);

        namingScreen->strTemplate = StringTemplate_Default(HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->namingScreenMsgLoader = MessageLoader_Init(
            MSG_LOADER_PRELOAD_ENTIRE_BANK,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_NAMING_SCREEN,
            HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->genericNamesMsgLoader = MessageLoader_Init(
            MSG_LOADER_LOAD_ON_DEMAND,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_GENERIC_NAMES,
            HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->battleStringsMsgLoader = MessageLoader_Init(
            MSG_LOADER_LOAD_ON_DEMAND,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_BATTLE_STRINGS,
            HEAP_ID_NAMING_SCREEN_APP);

        SetAutorepeat(4, 8);
        NamingScreen_InitGraphicsBanks();
        NamingScreen_InitBgs(namingScreen->bgConfig);
        NamingScreen_CopyParamsFromArgs(namingScreen, (NamingScreenArgs *)ApplicationManager_Args(appMan));
        NamingScreen_LoadGraphicsFromNarc(namingScreen, narc);
        Font_InitManager(FONT_SUBSCREEN, HEAP_ID_NAMING_SCREEN_APP);
        SetVBlankCallback(NamingScreen_VBlankCallback, NULL);
        NamingScreen_InitCursorsAndChars(namingScreen, appMan);
        Font_UseImmediateGlyphAccess(FONT_SYSTEM, HEAP_ID_NAMING_SCREEN_APP);
        NamingScreen_TransferChars();
        NamingScreen_LoadObjectGfx(namingScreen, narc);
        NamingScreen_InitSprites(namingScreen);
        NamingScreen_InitWindows(namingScreen, appMan, narc);
        NamingScreen_PrintLastCharOfEntryBuf(
            &namingScreen->windows[NMS_WINDOW_UNK_0],
            namingScreen->entryBuf,
            namingScreen->textCursorPos,
            namingScreen->tmpBuf,
            namingScreen->pixelBuf,
            namingScreen->unkJapaneseString);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_52, SEQ_NONE, 0);
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            16,
            1,
            HEAP_ID_NAMING_SCREEN_APP);
        NamingScreen_ToggleEngineLayers(TRUE);

        gSystem.whichScreenIs3D = DS_SCREEN_SUB;
        GXLayers_SwapDisplay();

        NARC_dtor(narc);
        (*state)++;
        break;
    case 1:
        namingScreen = ApplicationManager_Data(appMan);

        if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
            NamingScreen_LoadMonIcon(
                namingScreen->monIconCharData,
                namingScreen->plttData,
                namingScreen->playerGenderOrMonSpecies,
                namingScreen->monForm);
        }

        sNamingScreenDummy = namingScreen;
        // sub_0201567C creates a systask which changes the palette from the current palette to
        // a single color (white in this case) and back at a regular interval, effectively
        // blinking the touchscreen icon.
        namingScreen->touchscreenIconBlinker = sub_0201567C(NULL, 1, 12, HEAP_ID_NAMING_SCREEN_APP);

        (*state) = NMS_APP_STATE_WAIT_FADE_IN;
        return TRUE;
        break;
    }

    return FALSE;
}

static void NamingScreen_LoadMonIcon(
    NNSG2dCharacterData *monIconCharData,
    NNSG2dPaletteData *plttData,
    enum Species monSpecies,
    int monForm)
{
    u8 *rawData;

    GX_LoadOBJ(monIconCharData->pRawData, (21 * 32 + 31) * 0x20, 0x20 * 4 * 4);
    rawData = (u8 *)plttData->pRawData;
    GX_LoadOBJPltt((void *)(rawData + PokeIconPaletteIndex(monSpecies, monForm, FALSE) * 0x20), 6 * 0x20, 0x20);
}

static BOOL NamingScreen_Main(ApplicationManager *appMan, int *state)
{
    NamingScreen *namingScreen = ApplicationManager_Data(appMan);

    switch (*state) {
    case NMS_APP_STATE_WAIT_FADE_IN:
        if (IsScreenFadeDone()) {
            *state = NMS_APP_STATE_INITIAL_DELAY;
            namingScreen->delayUpdateCounter = 0;
        }
        break;
    case NMS_APP_STATE_INITIAL_DELAY:
        namingScreen->delayUpdateCounter++;

        // these just process the animations.
        NamingScreen_PlaceCursorSprite(namingScreen);
        NamingScreen_UpdateSpriteAnimations(
            namingScreen->spritesToUpdate,
            namingScreen->uiSprites,
            namingScreen->currentCharsIdx);

        if (namingScreen->delayUpdateCounter > 5) {
            *state = NMS_APP_STATE_RUNNING;
            namingScreen->delayUpdateCounter = 0;
        }
        break;
    case NMS_APP_STATE_RUNNING:
        switch (namingScreen->state.main) {
        case NMS_STATE_PROCESS_INPUTS:
            *state = NamingScreen_ProcessInputs(namingScreen, *state);
            NamingScreen_PlaceCursorSprite(namingScreen);
            break;
        case NMS_STATE_PRINT_BATTLE_MESSAGE:
            NamingScreen_PrepareBattleMessage(namingScreen, appMan);
            Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_PROMPT], 0x0f);
            Window_DrawMessageBoxWithScrollCursor(&namingScreen->windows[NMS_WINDOW_PROMPT], 0, 32 * 8, 10);
            namingScreen->battleMessagePrinter = Text_AddPrinterWithParams(
                &namingScreen->windows[NMS_WINDOW_PROMPT],
                FONT_MESSAGE,
                namingScreen->battleMessageString,
                0,
                0,
                TEXT_SPEED_FAST,
                NULL);
            Window_CopyToVRAM(&namingScreen->windows[NMS_WINDOW_PROMPT]);
            namingScreen->state.main = NMS_STATE_WAIT_BATTLE_MESSAGE;
            break;
        case NMS_STATE_WAIT_BATTLE_MESSAGE:
            if (Text_IsPrinterActive(namingScreen->battleMessagePrinter) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
                namingScreen->spritesToUpdate[NMS_SPRITE_OK_BUTTON]++;
                namingScreen->delayUpdateCounter = 0;
                namingScreen->state.main = NMS_STATE_START_FADE_OUT;
            }
            break;
        case NMS_STATE_START_FADE_OUT:
            namingScreen->delayUpdateCounter++;

            if (namingScreen->delayUpdateCounter > 30) {
                StartScreenFade(
                    FADE_SUB_THEN_MAIN,
                    FADE_TYPE_BRIGHTNESS_OUT,
                    FADE_TYPE_BRIGHTNESS_OUT,
                    COLOR_BLACK,
                    16,
                    1,
                    HEAP_ID_NAMING_SCREEN_APP);
                *state = NMS_APP_STATE_WAIT_FADE_OUT;
            }
            break;
        }

        NamingScreen_AnimateChangeChars(
            namingScreen->bgConfig,
            &namingScreen->windows[NMS_WINDOW_KEYBOARD_0],
            &namingScreen->state.changeChars,
            namingScreen->currentCharsIdx,
            &namingScreen->freeCharsBgLayer,
            namingScreen->charsPosition,
            namingScreen->uiSprites,
            namingScreen->charData->pRawData);
        NamingScreen_UpdateSpriteAnimations(
            namingScreen->spritesToUpdate,
            namingScreen->uiSprites,
            namingScreen->currentCharsIdx);
        NamingScreen_PaletteGlowEffect(&namingScreen->plttGlowEffectAngle);
        break;
    case NMS_APP_STATE_WAIT_FADE_OUT:
        if (IsScreenFadeDone()) {
            return TRUE;
        }
        break;
    }

    SpriteList_Update(namingScreen->spriteList);

    return FALSE;
}

static enum NamingScreenAppState NamingScreen_ProcessInputs(
    NamingScreen *namingScreen,
    enum NamingScreenAppState appState)
{
    NamingScreen_ProcessDirectionInputs(namingScreen);

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        if (!Sprite_GetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR])) {
            Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
            return appState;
        }

        if (namingScreen->type != NAMING_SCREEN_TYPE_UNK4) {
            namingScreen->state.changeChars = CC_STATE_LOAD_GRAPHICS;
            namingScreen->currentCharsIdx++;

            if (namingScreen->currentCharsIdx >= 3) {
                namingScreen->currentCharsIdx = 0;
            }

            namingScreen->spritesToUpdate[namingScreen->currentCharsIdx]++;

            NamingScreen_LoadKeyboardLayout(namingScreen->keyboardChars, namingScreen->currentCharsIdx);
            Sound_PlayEffect(SEQ_SE_DP_SYU03);

            namingScreen->keyboardCursor.hasCharacterBeenEntered = TRUE;
        }

        namingScreen->spritesToUpdate[namingScreen->currentCharsIdx]++;

        NamingScreen_LoadKeyboardLayout(namingScreen->keyboardChars, namingScreen->currentCharsIdx);
        Sound_PlayEffect(SEQ_SE_DP_SYU03);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        appState = NamingScreen_ProcessCharacterInput(
            namingScreen,
            namingScreen->keyboardChars[namingScreen->keyboardCursor.y][namingScreen->keyboardCursor.x],
            TRUE);
        namingScreen->keyboardCursor.hasCharacterBeenEntered = TRUE;
    } else if (namingScreen->isTouchInput == TRUE) {
        appState = NamingScreen_ProcessCharacterInput(
            namingScreen,
            namingScreen->keyboardChars[namingScreen->keyboardCursor.y][namingScreen->keyboardCursor.x],
            FALSE);
        namingScreen->keyboardCursor.hasCharacterBeenEntered = FALSE;
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        appState = NamingScreen_ProcessCharacterInput(
            namingScreen,
            NMS_BUTTON_BACK,
            TRUE);
    } else if (gSystem.pressedKeys & PAD_BUTTON_R) {
        appState = NamingScreen_ProcessCharacterInput(
            namingScreen,
            NMS_BUTTON_PAGE_JP_UNUSED_2,
            TRUE);
    }

    return appState;
}

#define RANDOM_NAME(TYPE) (TYPE##_First + LCRNG_Next() % (TYPE##_Last - TYPE##_First + 1))

static void NamingScreen_UseDefaultName(NamingScreen *namingScreen, NamingScreenArgs *args)
{
    if (namingScreen->type == NAMING_SCREEN_TYPE_PLAYER) {
        String *string;

        if (namingScreen->playerGenderOrMonSpecies == GENDER_MALE) {
            string = MessageLoader_GetNewString(
                namingScreen->genericNamesMsgLoader,
                RANDOM_NAME(GenericNames_PlayerMale));
        } else if (namingScreen->playerGenderOrMonSpecies == GENDER_FEMALE) {
            string = MessageLoader_GetNewString(
                namingScreen->genericNamesMsgLoader,
                RANDOM_NAME(GenericNames_PlayerFemale));
        }

        String_Copy(args->textInputStr, string);
        String_Free(string);
        String_ToChars(args->textInputStr, args->nameInputRaw, 10);
    } else if (namingScreen->type == NAMING_SCREEN_TYPE_RIVAL) {
        String *string;

        string = MessageLoader_GetNewString(
            namingScreen->genericNamesMsgLoader,
            RANDOM_NAME(GenericNames_Rival));

        String_Copy(args->textInputStr, string);
        String_Free(string);
        String_ToChars(args->textInputStr, args->nameInputRaw, 10);
    } else {
        args->returnCode = NAMING_SCREEN_CODE_NO_INPUT;
    }
}

#undef RANDOM_NAME

static BOOL NamingScreen_IsRawStringAllSpaces(charcode_t *rawChars)
{
    BOOL isAllSpaces = TRUE;
    int i;

    for (i = 0;; i++) {
        if (rawChars[i] == CHAR_EOS) {
            break;
        }

        if (rawChars[i] != CHAR_SPACE) {
            isAllSpaces = FALSE;
        }
    }

    return isAllSpaces;
}

static BOOL NamingScreen_Exit(ApplicationManager *appMan, int *unusedState)
{
    NamingScreen *namingScreen = ApplicationManager_Data(appMan);
    NamingScreenArgs *namingScreenArgs = (NamingScreenArgs *)ApplicationManager_Args(appMan);
    int i;

    namingScreen->entryBuf[namingScreen->textCursorPos] = CHAR_EOS;

    if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
        Pokemon *mon;

        mon = Pokemon_New(HEAP_ID_NAMING_SCREEN_APP);
        Pokemon_InitWith(mon, namingScreen->playerGenderOrMonSpecies, 5, 10, 10, 10, 10, 10);
        Heap_Free(mon);
    }

    if (namingScreen->textCursorPos == 0
        || CharCode_Compare(namingScreen->entryBuf, namingScreen->entryBufBak) == 0
        || NamingScreen_IsRawStringAllSpaces(namingScreen->entryBuf)) {
        NamingScreen_UseDefaultName(namingScreen, namingScreenArgs);
    } else {
        CharCode_Copy(namingScreen->entryBufBak, namingScreen->entryBuf);
        CharCode_Copy(namingScreenArgs->nameInputRaw, namingScreen->entryBuf);
        String_CopyChars(namingScreenArgs->textInputStr, namingScreen->entryBuf);
    }

    String_Free(namingScreen->groupTextString);

    for (i = 0; i < NMS_SPRITE_OVERLAY; i++) {
        SysTask_FinishAndFreeParam(namingScreen->spriteFollowTasks[i]);
    }

    SpriteTransfer_ResetCharTransfer(namingScreen->spriteResources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetCharTransfer(namingScreen->spriteResources[1][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(namingScreen->spriteResources[0][SPRITE_RESOURCE_PLTT]);
    SpriteTransfer_ResetPlttTransfer(namingScreen->spriteResources[1][SPRITE_RESOURCE_PLTT]);

    for (i = 0; i < 4; i++) {
        SpriteResourceCollection_Delete(namingScreen->spriteResourceCollections[i]);
    }

    SpriteList_Delete(namingScreen->spriteList);
    RenderOam_Free();
    Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, namingScreen->charDataAlloc);

    if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
        Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, namingScreen->monIconRawCharData);
        Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, namingScreen->monIconRawPlttData);
    }

    Bg_FreeTilemapBuffer(namingScreen->bgConfig, BG_LAYER_SUB_3);
    CharTransfer_Free();
    PlttTransfer_Free();
    NamingScreen_FreeBgs(namingScreen->bgConfig, namingScreen->windows);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    Font_Free(FONT_SUBSCREEN);

    if (namingScreen->battleMessageString) {
        String_Free(namingScreen->battleMessageString);
    }

    String_Free(namingScreen->promptString);
    String_Free(namingScreen->unkJapaneseString);
    MessageLoader_Free(namingScreen->battleStringsMsgLoader);
    MessageLoader_Free(namingScreen->genericNamesMsgLoader);
    MessageLoader_Free(namingScreen->namingScreenMsgLoader);
    StringTemplate_Free(namingScreen->strTemplate);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_NAMING_SCREEN_APP);

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();

    return TRUE;
}

NamingScreenArgs *NamingScreenArgs_Init(
    enum HeapID heapID,
    enum NamingScreenType type,
    int playerGenderOrMonSpecies,
    int maxChars,
    Options *options)
{
    NamingScreenArgs *args = (NamingScreenArgs *)Heap_Alloc(heapID, sizeof(NamingScreenArgs));

    args->type = type;
    args->playerGenderOrMonSpecies = playerGenderOrMonSpecies;
    args->maxChars = maxChars;
    args->returnCode = NAMING_SCREEN_CODE_OK;
    args->nameInputRaw[0] = CHAR_EOS;
    args->textInputStr = String_Init(32, heapID);
    args->battleMsgID = 0;
    args->pcBoxes = NULL;
    args->monGender = GENDER_MALE;
    args->options = options;
    args->monForm = 0;

    return args;
}

void NamingScreenArgs_Free(NamingScreenArgs *args)
{
    GF_ASSERT(args->textInputStr != NULL);
    GF_ASSERT(args != NULL);

    String_Free(args->textInputStr);
    Heap_Free(args);
}

static void NamingScreen_VBlankCallback(void *unused)
{
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void NamingScreen_CopyParamsFromArgs(NamingScreen *namingScreen, NamingScreenArgs *namingScreenArgs)
{
    namingScreen->type = namingScreenArgs->type;
    namingScreen->playerGenderOrMonSpecies = namingScreenArgs->playerGenderOrMonSpecies;
    namingScreen->monForm = namingScreenArgs->monForm;
    namingScreen->maxChars = namingScreenArgs->maxChars;
    namingScreen->monGender = namingScreenArgs->monGender;
    namingScreen->options = namingScreenArgs->options;
}

static void NamingScreen_InitGraphicsBanks(void)
{
    GXBanks banks = {
        .unk_00 = GX_VRAM_BG_128_A,
        .unk_04 = GX_VRAM_BGEXTPLTT_NONE,
        .unk_08 = GX_VRAM_SUB_BG_128_C,
        .unk_0C = GX_VRAM_SUB_BGEXTPLTT_NONE,
        .unk_10 = GX_VRAM_OBJ_128_B,
        .unk_14 = GX_VRAM_OBJEXTPLTT_NONE,
        .unk_18 = GX_VRAM_SUB_OBJ_16_I,
        .unk_1C = GX_VRAM_SUB_OBJEXTPLTT_NONE,
        .unk_20 = GX_VRAM_TEX_NONE,
        .unk_24 = GX_VRAM_TEXPLTT_NONE,
    };

    GXLayers_SetBanks(&banks);
}

static void NamingScreen_InitBgs(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate layerMain0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &layerMain0Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate layerMain1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &layerMain1Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate layerMain2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &layerMain2Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate layerSub0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &layerSub0Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    NamingScreen_ToggleEngineLayers(FALSE);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_NAMING_SCREEN_APP);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_NAMING_SCREEN_APP);

    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd0Position(0, 0, 255, 64);
    G2S_BlendNone();
}

static void NamingScreen_ToggleEngineLayers(BOOL enable)
{
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG0, enable);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, enable);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG2, enable);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG3, FALSE);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_OBJ, enable);
    GXLayers_EngineBToggleLayers(GX_BLEND_PLANEMASK_BG0, enable);
    GXLayers_EngineBToggleLayers(GX_BLEND_PLANEMASK_BG1, FALSE);
    GXLayers_EngineBToggleLayers(GX_BLEND_PLANEMASK_OBJ, FALSE);
}

static void NamingScreen_InitCursorsAndChars(NamingScreen *namingScreen, ApplicationManager *appMan)
{
    NamingScreenArgs *namingScreenArgs = (NamingScreenArgs *)ApplicationManager_Args(appMan);

    namingScreen->state.main = NMS_STATE_PROCESS_INPUTS;

    NamingScreen_InitializeCharsPosition(namingScreen->charsPosition, BG_LAYER_MAIN_0);
    Bg_SetOffset(
        namingScreen->bgConfig,
        namingScreen->freeCharsBgLayer,
        BG_OFFSET_UPDATE_SET_X,
        namingScreen->charsPosition[namingScreen->freeCharsBgLayer].x);
    Bg_SetOffset(
        namingScreen->bgConfig,
        namingScreen->freeCharsBgLayer,
        BG_OFFSET_UPDATE_SET_Y,
        namingScreen->charsPosition[namingScreen->freeCharsBgLayer].y);
    Bg_SetOffset(
        namingScreen->bgConfig,
        ((namingScreen->freeCharsBgLayer) ^ 1),
        BG_OFFSET_UPDATE_SET_X,
        namingScreen->charsPosition[((namingScreen->freeCharsBgLayer) ^ 1)].x);
    Bg_SetOffset(
        namingScreen->bgConfig,
        ((namingScreen->freeCharsBgLayer) ^ 1),
        BG_OFFSET_UPDATE_SET_Y,
        namingScreen->charsPosition[((namingScreen->freeCharsBgLayer) ^ 1)].y);

    namingScreen->entryBufBak[0] = CHAR_EOS;

    if (namingScreenArgs->textInputStr) {
        String_ToChars(namingScreenArgs->textInputStr, namingScreen->entryBufBak, 32);
    }

    MI_CpuFill16(namingScreen->entryBuf, 1, 32 * 2);

    if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
        Pokemon *pkm;

        pkm = Pokemon_New(HEAP_ID_NAMING_SCREEN_APP);
        Pokemon_InitWith(pkm, namingScreen->playerGenderOrMonSpecies, 5, 10, 10, 10, 10, 10);
        StringTemplate_SetSpeciesName(namingScreen->strTemplate, 0, Pokemon_GetBoxPokemon(pkm));
        Heap_Free(pkm);
    }

    if (namingScreenArgs->battleMsgID != 0) {
        namingScreen->printedFromBattleGMM = TRUE;
    }

    namingScreen->promptString = MessageUtil_ExpandedString(
        namingScreen->strTemplate,
        namingScreen->namingScreenMsgLoader,
        sPromptTextIndices[namingScreen->type],
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->unkJapaneseString = MessageUtil_ExpandedString(
        namingScreen->strTemplate,
        namingScreen->namingScreenMsgLoader,
        NamingScreen_Text_Xs,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->groupTextString = MessageLoader_GetNewString(
        namingScreen->namingScreenMsgLoader,
        NamingScreen_Text_Group);
    namingScreen->textCursorPos = CharCode_Length(namingScreen->entryBufBak);
    namingScreen->keyboardCursor.x = 0;
    namingScreen->keyboardCursor.y = 1;
    namingScreen->keyboardCursor.prevX = -1;
    namingScreen->keyboardCursor.prevY = -1;
    namingScreen->keyboardCursor.hasCharacterBeenEntered = FALSE;
    namingScreen->keyboardCursor.ignoreInput = FALSE;
    namingScreen->dummy0 = -1;
    namingScreen->dummy1 = 0;
    namingScreen->dummy2 = 0;
    namingScreen->entryBuf[namingScreen->maxChars] = CHAR_EOS;

    int i;

    for (i = 0; i < 7; i++) {
        namingScreen->spritesToUpdate[i] = FALSE;
    }

    if (namingScreen->type == NAMING_SCREEN_TYPE_UNK4) {
        namingScreen->spritesToUpdate[NMS_SPRITE_JP_UNUSED_BUTTON] = TRUE;
    } else {
        namingScreen->spritesToUpdate[NMS_SPRITE_UPPER_BUTTON] = TRUE;
    }
}

static void NamingScreen_PrepareBattleMessage(NamingScreen *namingScreen, ApplicationManager *appMan)
{
    String *string = NULL;
    NamingScreenArgs *args = (NamingScreenArgs *)ApplicationManager_Args(appMan);

    if (args->battleMsgID != 0) {
        int boxID, nextBoxID;

        string = String_Init(200, HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->battleMessageString = NULL;
        boxID = PCBoxes_GetCurrentBoxID(args->pcBoxes);
        nextBoxID = PCBoxes_FirstEmptyBox(args->pcBoxes);

        StringTemplate_SetPCBoxName(namingScreen->strTemplate, 1, args->pcBoxes, boxID);

        if (boxID != nextBoxID) {
            StringTemplate_SetPCBoxName(namingScreen->strTemplate, 2, args->pcBoxes, nextBoxID);
            args->battleMsgID += 2;
        } else {
            StringTemplate_SetPCBoxName(namingScreen->strTemplate, 2, args->pcBoxes, boxID);
        }

        if (namingScreen->textCursorPos == 0 || NamingScreen_IsRawStringAllSpaces(namingScreen->entryBuf)) {
            Pokemon *mon = Pokemon_New(HEAP_ID_NAMING_SCREEN_APP);

            Pokemon_InitWith(mon, namingScreen->playerGenderOrMonSpecies, 1, 0, FALSE, 0, OTID_NOT_SET, 0);
            StringTemplate_SetSpeciesName(namingScreen->strTemplate, 0, Pokemon_GetBoxPokemon(mon));
            Heap_Free(mon);
        } else {
            namingScreen->entryBuf[namingScreen->textCursorPos] = CHAR_EOS;
            String_CopyChars(string, namingScreen->entryBuf);
            StringTemplate_SetString(namingScreen->strTemplate, 0, string, 0, 0, 0);
        }

        namingScreen->battleMessageString = MessageUtil_ExpandedString(
            namingScreen->strTemplate,
            namingScreen->battleStringsMsgLoader,
            args->battleMsgID,
            HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->printedFromBattleGMM = TRUE;

        String_Free(string);
    }
}

static void NamingScreen_FreeBgs(BgConfig *bgConfig, Window *windows)
{
    for (int i = 0; i < NMS_WINDOW_COUNT; i++) {
        Window_Remove(&windows[i]);
    }

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, bgConfig);
}

static void NamingScreen_LoadGraphicsFromNarc(NamingScreen *namingScreen, NARC *narc)
{
    BgConfig *bgConfig = namingScreen->bgConfig;

    Graphics_LoadPaletteFromOpenNARC(narc, naming_screen_NCLR, PAL_LOAD_MAIN_BG, 0, 16 * 3 * 2, HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__POKETCH, 12, PAL_LOAD_SUB_BG, 0, 16 * 2, HEAP_ID_NAMING_SCREEN_APP);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        naming_screen_main_tiles_NCGR_lz,
        bgConfig,
        BG_LAYER_MAIN_2,
        0,
        (32 * 8) * 0x20,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        naming_screen_bg_NSCR_lz,
        bgConfig,
        BG_LAYER_MAIN_2,
        0,
        32 * 24 * 2,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        naming_screen_main_tiles_NCGR_lz,
        bgConfig,
        BG_LAYER_MAIN_1,
        0,
        32 * 8 * 0x20,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        naming_screen_chars_bg_0_NSCR_lz,
        bgConfig,
        BG_LAYER_MAIN_1,
        0,
        32 * 14 * 2,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        naming_screen_chars_bg_1_NSCR_lz,
        bgConfig,
        BG_LAYER_MAIN_0,
        0,
        32 * 14 * 2,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, 12 * 32, HEAP_ID_NAMING_SCREEN_APP);
    LoadMessageBoxGraphics(
        namingScreen->bgConfig,
        BG_LAYER_SUB_0,
        32 * 8,
        10,
        Options_Frame(namingScreen->options),
        HEAP_ID_NAMING_SCREEN_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_SUB_BG, 12 * 32, HEAP_ID_NAMING_SCREEN_APP);

    namingScreen->charDataAlloc = Graphics_GetCharDataFromOpenNARC(
        narc,
        naming_screen_unk_tiles_NCGR_lz,
        TRUE,
        &namingScreen->charData,
        HEAP_ID_NAMING_SCREEN_APP);
}

void NamingScreen_TransferChars(void)
{
    CharTransferTemplate charTransferTemplate = {
        .maxTasks = 20,
        .sizeMain = 2048,
        .sizeSub = 2048,
        .heapID = HEAP_ID_NAMING_SCREEN_APP,
    };

    CharTransfer_Init(&charTransferTemplate);

    PlttTransfer_Init(20, HEAP_ID_NAMING_SCREEN_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void NamingScreen_LoadObjectGfx(NamingScreen *namingScreen, NARC *narc)
{
    int i;

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_NAMING_SCREEN_APP);

    namingScreen->spriteList = SpriteList_InitRendering(40 + 4, &namingScreen->g2dRenderer, HEAP_ID_NAMING_SCREEN_APP);

    SetSubScreenViewRect(&namingScreen->g2dRenderer, 0, 256 * FX32_ONE);

    for (i = 0; i < 4; i++) {
        namingScreen->spriteResourceCollections[i] = SpriteResourceCollection_New(2, i, HEAP_ID_NAMING_SCREEN_APP);
    }

    namingScreen->spriteResources[0][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CHAR],
        narc,
        naming_screen_sprites_NCGR_lz,
        TRUE,
        0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->spriteResources[0][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_PLTT],
        narc,
        naming_screen_sprites_NCLR,
        FALSE,
        0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        9,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->spriteResources[0][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CELL],
        narc,
        naming_screen_sprites_cell_NCER_lz,
        TRUE,
        0,
        SPRITE_RESOURCE_CELL,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->spriteResources[0][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_ANIM],
        narc,
        naming_screen_sprites_anim_NANR_lz,
        TRUE,
        0,
        SPRITE_RESOURCE_ANIM,
        HEAP_ID_NAMING_SCREEN_APP);

    if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
        namingScreen->monIconRawCharData = Graphics_GetCharData(
            NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON,
            PokeIconSpriteIndex(namingScreen->playerGenderOrMonSpecies, 0, namingScreen->monForm),
            FALSE,
            &namingScreen->monIconCharData,
            HEAP_ID_NAMING_SCREEN_APP);
        DC_FlushRange(namingScreen->monIconCharData, 0x20 * 4 * 4);

        namingScreen->monIconRawPlttData = Graphics_GetPlttData(
            NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON,
            PokeIconPalettesFileIndex(),
            &namingScreen->plttData,
            HEAP_ID_NAMING_SCREEN_APP);
        DC_FlushRange(namingScreen->plttData, 0x20 * 4);
    }

    namingScreen->spriteResources[1][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CHAR],
        narc,
        naming_screen_unk_sprite_NCGR_lz,
        TRUE,
        1,
        NNS_G2D_VRAM_TYPE_2DSUB,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->spriteResources[1][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_PLTT],
        narc,
        naming_screen_sprites_NCLR,
        FALSE,
        1,
        NNS_G2D_VRAM_TYPE_2DSUB,
        3,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->spriteResources[1][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CELL],
        narc,
        naming_screen_unk_sprite_cell_NCER_lz,
        TRUE,
        1,
        SPRITE_RESOURCE_CELL,
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->spriteResources[1][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_ANIM],
        narc,
        naming_screen_unk_sprite_anim_NANR_lz,
        TRUE,
        1,
        SPRITE_RESOURCE_ANIM,
        HEAP_ID_NAMING_SCREEN_APP);

    SpriteTransfer_RequestChar(namingScreen->spriteResources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestChar(namingScreen->spriteResources[1][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttWholeRange(namingScreen->spriteResources[0][SPRITE_RESOURCE_PLTT]);
    SpriteTransfer_RequestPlttWholeRange(namingScreen->spriteResources[1][SPRITE_RESOURCE_PLTT]);
}

static void NamingScreen_SubspritePosControllerTask(SysTask *task, void *paramsPtr)
{
    const VecFx32 *parentPos;
    VecFx32 pos;
    SubspritePosControllerParameters *params = (SubspritePosControllerParameters *)paramsPtr;

    parentPos = Sprite_GetPosition(params->parent);
    pos.x = parentPos->x + params->dx;
    pos.y = FX32_ONE * sSpriteAnimations[params->i].y;
    pos.z = 0;

    Sprite_SetPosition(params->child, &pos);
}

static void NamingScreen_InitSprites(NamingScreen *namingScreen)
{
    int i;

    SpriteResourcesHeader_Init(
        &namingScreen->mainSpriteResourceHeader,
        0,
        0,
        0,
        0,
        -1,
        -1,
        FALSE,
        1,
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CHAR],
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_PLTT],
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CELL],
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);
    SpriteResourcesHeader_Init(
        &namingScreen->subResourceSpriteHeader,
        1,
        1,
        1,
        1,
        -1,
        -1,
        FALSE,
        0,
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CHAR],
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_PLTT],
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_CELL],
        namingScreen->spriteResourceCollections[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);

    AffineSpriteListTemplate spriteTemplate;

    spriteTemplate.list = namingScreen->spriteList;
    spriteTemplate.resourceData = &namingScreen->mainSpriteResourceHeader;
    spriteTemplate.position.x = FX32_CONST(32);
    spriteTemplate.position.y = FX32_CONST(96);
    spriteTemplate.position.z = 0;
    spriteTemplate.affineScale.x = FX32_ONE;
    spriteTemplate.affineScale.y = FX32_ONE;
    spriteTemplate.affineScale.z = FX32_ONE;
    spriteTemplate.affineZRotation = 0;
    spriteTemplate.priority = 1;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.heapID = HEAP_ID_NAMING_SCREEN_APP;

    for (i = 0; i < NMS_SPRITE_COUNT; i++) {
        spriteTemplate.position.x = FX32_ONE * sSpriteAnimations[i].x;
        spriteTemplate.position.y = FX32_ONE * sSpriteAnimations[i].y;

        namingScreen->uiSprites[i] = SpriteList_AddAffine(&spriteTemplate);

        Sprite_SetAnimateFlag(namingScreen->uiSprites[i], TRUE);
        Sprite_SetAnim(namingScreen->uiSprites[i], sSpriteAnimations[i].anim);
        Sprite_SetPriority(namingScreen->uiSprites[i], sSpriteAnimations[i].priority);
    }

    Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_JP_UNUSED_2_BUTTON], FALSE);
    Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], FALSE);

    for (i = 0; i < NMS_SPRITE_OVERLAY; i++) {
        namingScreen->spriteFollowTasks[i] = SysTask_StartAndAllocateParam(
            NamingScreen_SubspritePosControllerTask,
            sizeof(SubspritePosControllerParameters),
            5,
            HEAP_ID_NAMING_SCREEN_APP);
        SubspritePosControllerParameters *taskData = SysTask_GetParam(namingScreen->spriteFollowTasks[i]);
        taskData->parent = namingScreen->uiSprites[NMS_SPRITE_OVERLAY];
        taskData->child = namingScreen->uiSprites[i];
        taskData->dx = FX32_ONE * sSpriteAnimations[i].x;
        taskData->i = i;
    }

    for (i = 0; i < namingScreen->maxChars; i++) {
        spriteTemplate.position.x = FX32_ONE * ((10 * 8) + i * 12);
        spriteTemplate.position.y = FX32_ONE * (4 * 8 + 7);

        namingScreen->textCursorSprites[i] = SpriteList_AddAffine(&spriteTemplate);

        Sprite_SetAnimateFlag(namingScreen->textCursorSprites[i], TRUE);
        Sprite_SetAnim(namingScreen->textCursorSprites[i], 43);
    }

    NamingScreen_UpdateTextCursors(
        namingScreen->textCursorSprites,
        namingScreen->textCursorPos,
        namingScreen->maxChars);
    NamingScreen_InitIconSprite(namingScreen, &spriteTemplate);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void NamingScreen_InitIconSprite(NamingScreen *namingScreen, AffineSpriteListTemplate *template)
{
    template->position.x = FX32_CONST(24);
    template->position.y = FX32_CONST(8);
    namingScreen->entitySprite[0] = SpriteList_AddAffine(template);

    Sprite_SetAnimateFlag(namingScreen->entitySprite[0], TRUE);

    switch (namingScreen->type) {
    case NAMING_SCREEN_TYPE_PLAYER:
        if (namingScreen->playerGenderOrMonSpecies == GENDER_MALE) {
            Sprite_SetAnim(namingScreen->entitySprite[0], 48);
        } else {
            Sprite_SetAnim(namingScreen->entitySprite[0], 49);
        }
        break;
    case NAMING_SCREEN_TYPE_RIVAL:
        Sprite_SetAnim(namingScreen->entitySprite[0], 51);
        break;
    case NAMING_SCREEN_TYPE_UNK6:
        Sprite_SetAnim(namingScreen->entitySprite[0], 55);
        break;
    case NAMING_SCREEN_TYPE_GROUP:
        Sprite_SetAnim(namingScreen->entitySprite[0], 54);
        break;
    case NAMING_SCREEN_TYPE_UNK4:
    case NAMING_SCREEN_TYPE_PAL_PAD:
        Sprite_SetAnim(namingScreen->entitySprite[0], 53);
        break;
    case NAMING_SCREEN_TYPE_BOX:
        Sprite_SetAnim(namingScreen->entitySprite[0], 47);
        break;
    case NAMING_SCREEN_TYPE_POKEMON:
        Sprite_SetAnim(namingScreen->entitySprite[0], 50);

        if (namingScreen->monGender != GENDER_NONE) {
            template->position.x = FX32_ONE * ((10 * 8) + namingScreen->maxChars * 13);
            template->position.y = FX32_CONST(27);
            namingScreen->entitySprite[1] = SpriteList_AddAffine(template);

            if (namingScreen->monGender == GENDER_MALE) {
                Sprite_SetAnim(namingScreen->entitySprite[1], 45);
            } else {
                Sprite_SetAnim(namingScreen->entitySprite[1], 46);
            }
        }
        break;
    }
}

static void NamingScreen_WiggleOverlayTask(SysTask *task, void *paramsPtr)
{
    OverlayWiggleParameters *params = (OverlayWiggleParameters *)paramsPtr;
    VecFx32 newPos;

    newPos.y = params->overlayYPosition;
    newPos.z = 0;

    switch (params->state) {
    case 0:
        newPos.x = params->overlayXPosition + 4 * FX32_ONE;
        Sprite_SetPosition(params->overlaySprite, &newPos);
        break;
    case 2:
        newPos.x = params->overlayXPosition - 3 * FX32_ONE;
        Sprite_SetPosition(params->overlaySprite, &newPos);
        break;
    case 4:
        newPos.x = params->overlayXPosition + 2 * FX32_ONE;
        Sprite_SetPosition(params->overlaySprite, &newPos);
        break;
    case 6:
        newPos.x = params->overlayXPosition;
        Sprite_SetPosition(params->overlaySprite, &newPos);
        SysTask_FinishAndFreeParam(task);
        break;
    }

    params->state++;
}

static void NamingScreen_AnimateChangeChars(
    BgConfig *bgConfig,
    Window *windows,
    enum ChangeCharsState *statePtr,
    int currentCharsIdx,
    enum BgLayer *bgLayerPtr,
    VecFx32 charsPosition[],
    Sprite **sprites,
    void *rawCharData)
{
    enum BgLayer bgLayer = *bgLayerPtr;
    enum BgLayer oldBgLayer = bgLayer ^ 1;

    switch (*statePtr) {
    case CC_STATE_LOAD_GRAPHICS: {
        u16 bgColor = sCharsBgColor[currentCharsIdx] | (sCharsBgColor[currentCharsIdx] << 4);

        Graphics_LoadTilemapToBgLayer(
            NARC_INDEX_DATA__NAMEIN,
            naming_screen_chars_bg_0_NSCR_lz + currentCharsIdx,
            bgConfig,
            bgLayer,
            0,
            32 * 14 * 2,
            TRUE,
            HEAP_ID_NAMING_SCREEN_APP);
        NamingScreen_InitializeCharsPosition(charsPosition, bgLayer);
        NamingScreen_InitializeCharsGraphics(
            &windows[bgLayer],
            bgColor,
            currentCharsIdx,
            TEXT_COLOR(14, 15, 0),
            rawCharData);
        (*statePtr)++;
    } break;
    case CC_STATE_SET_INITIAL_POSITION:
        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_X, 238);
        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_Y, -80);
        (*statePtr)++;
        break;
    case CC_STATE_SLIDE_IN:
        charsPosition[bgLayer].x -= 24;

        if (charsPosition[bgLayer].x < -11 + 10) {
            OverlayWiggleParameters *wiggleParam;
            SysTask *wiggleTask;

            wiggleTask = SysTask_StartAndAllocateParam(
                NamingScreen_WiggleOverlayTask,
                sizeof(OverlayWiggleParameters),
                0,
                HEAP_ID_NAMING_SCREEN_APP);
            wiggleParam = SysTask_GetParam(wiggleTask);
            wiggleParam->overlaySprite = sprites[NMS_SPRITE_OVERLAY];
            wiggleParam->state = 0;
            wiggleParam->overlayXPosition = Sprite_GetPosition(sprites[NMS_SPRITE_OVERLAY])->x;
            wiggleParam->overlayYPosition = Sprite_GetPosition(sprites[NMS_SPRITE_OVERLAY])->y;

            charsPosition[bgLayer].x = -11;
            (*statePtr)++;
        }

        charsPosition[oldBgLayer].y -= 10;

        if (charsPosition[oldBgLayer].y < -196) {
            charsPosition[oldBgLayer].y = -196;
        }

        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_X, charsPosition[bgLayer].x);
        Bg_SetOffset(bgConfig, oldBgLayer, BG_OFFSET_UPDATE_SET_Y, charsPosition[oldBgLayer].y);
        break;
    case CC_STATE_FINISH_SLIDING_OUT:
        charsPosition[oldBgLayer].y -= 10;

        if (charsPosition[oldBgLayer].y < -196) {
            charsPosition[oldBgLayer].y = -196;
        }

        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_X, charsPosition[bgLayer].x);
        Bg_SetOffset(bgConfig, oldBgLayer, BG_OFFSET_UPDATE_SET_Y, charsPosition[oldBgLayer].y);

        if ((charsPosition[bgLayer].x == -11) && (charsPosition[oldBgLayer].y == -196)) {
            (*statePtr)++;
            (*bgLayerPtr) ^= 1;
            NamingScreen_UpdateCharsPriorities(bgConfig, *bgLayerPtr, charsPosition);
            Sound_PlayEffect(SEQ_SE_DP_NAMEIN_01);
        }
        break;
    case CC_STATE_NOTHING:
        break;
    }
}

static void NamingScreen_PrintMessageOnWindowLeftAlign(Window *window, int unused, String *str)
{
    Window_DrawMessageBoxWithScrollCursor(window, FALSE, 32 * 8, PLTT_10);
    Text_AddPrinterWithParams(window, FONT_MESSAGE, str, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(window);
}

static void NamingScreen_PrintMessageOnWindow(Window *window, int param1, String *str)
{
    int xOffset = 16;
    int v1 = Font_CalcStringWidth(FONT_SYSTEM, str, 0);

    if (v1 > 130) {
        xOffset = 0;
    }

    Window_FillTilemap(window, 0x01);
    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        str,
        xOffset,
        0,
        TEXT_SPEED_INSTANT,
        TEXT_COLOR(14, 15, 1),
        NULL);
    Window_CopyToVRAM(window);
}

static void NamingScreen_InitWindows(NamingScreen *namingScreen, ApplicationManager *appMan, NARC *narc)
{
    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_KEYBOARD_0],
        BG_LAYER_MAIN_0,
        2,
        1,
        26,
        12,
        PLTT_1,
        32 * 8);
    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_KEYBOARD_1],
        BG_LAYER_MAIN_1,
        2,
        1,
        26,
        12,
        PLTT_1,
        (32 * 8) + (26 * 12));

    if (namingScreen->type == NAMING_SCREEN_TYPE_UNK4) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(
            narc,
            naming_screen_chars_bg_3_NSCR_lz,
            namingScreen->bgConfig,
            BG_LAYER_MAIN_1,
            0,
            32 * 14 * 2,
            TRUE,
            HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->currentCharsIdx = 4;
        NamingScreen_LoadKeyboardLayout(namingScreen->keyboardChars, 4);
        NamingScreen_InitializeCharsGraphics(
            &namingScreen->windows[NMS_WINDOW_KEYBOARD_1],
            0xa0a,
            4,
            TEXT_COLOR(14, 15, 0),
            namingScreen->charData->pRawData);
    } else {
        namingScreen->currentCharsIdx = 0;
        NamingScreen_LoadKeyboardLayout(namingScreen->keyboardChars, 0);
        NamingScreen_InitializeCharsGraphics(
            &namingScreen->windows[NMS_WINDOW_KEYBOARD_1],
            0x404,
            0,
            TEXT_COLOR(14, 15, 0),
            namingScreen->charData->pRawData);
    }

    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_DUMMY],
        BG_LAYER_MAIN_2,
        7,
        2,
        22,
        2,
        PLTT_0,
        ((32 * 8) + (26 * 12)) + (26 * 12));

    int width = ((namingScreen->maxChars * 12) / 8) + 1;

    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
        BG_LAYER_MAIN_2,
        10,
        3,
        width,
        2,
        PLTT_0,
        (((32 * 8) + (26 * 12)) + (26 * 12)) + 44);
    Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT], 0x01);
    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_GROUP_TEXT],
        BG_LAYER_MAIN_2,
        10 + width - 1,
        3,
        7,
        2,
        PLTT_0,
        ((((32 * 8) + (26 * 12)) + (26 * 12)) + 44) + 36);
    Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_GROUP_TEXT], 0x01);

    if (namingScreen->type == NAMING_SCREEN_TYPE_GROUP) {
        NamingScreen_PrintMessageOnWindow(
            &namingScreen->windows[NMS_WINDOW_GROUP_TEXT],
            namingScreen->type,
            namingScreen->groupTextString);
        Window_CopyToVRAM(&namingScreen->windows[NMS_WINDOW_GROUP_TEXT]);
    }

    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_PROMPT],
        BG_LAYER_SUB_0,
        2,
        19,
        27,
        4,
        PLTT_12,
        120 + (2 * 2 * 3));
    Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_PROMPT], 15);
    NamingScreen_PrintMessageOnWindowLeftAlign(
        &namingScreen->windows[NMS_WINDOW_PROMPT],
        namingScreen->type,
        namingScreen->promptString);

    ApplicationManager_Args(appMan);

    if (namingScreen->entryBufBak[0] != CHAR_EOS) {
        CharCode_Copy(namingScreen->entryBuf, namingScreen->entryBufBak);
        NamingScreen_PrintChars(
            &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
            namingScreen->entryBuf,
            0,
            0,
            12,
            TEXT_SPEED_INSTANT,
            TEXT_COLOR(14, 15, 1),
            NULL);
    }

    for (int i = 0; i < 3; i++) {
        Window_Add(
            namingScreen->bgConfig,
            &namingScreen->windows[NMS_WINDOW_UNK_0 + i],
            BG_LAYER_MAIN_2,
            0,
            0,
            2,
            2,
            PLTT_0,
            120);
        Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_UNK_0 + i], 0);
    }

    Window_Add(
        namingScreen->bgConfig,
        &namingScreen->windows[NMS_WINDOW_UNK_3],
        BG_LAYER_MAIN_2,
        0,
        0,
        16,
        2,
        PLTT_0,
        120 + (2 * 2 * 3));
    Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_UNK_3], 0);
}

static void NamingScreen_UpdateCharsPriorities(BgConfig *unused0, enum BgLayer oldBgLayer, VecFx32 unused1[])
{
    Bg_SetPriority(oldBgLayer, 1);
    Bg_SetPriority(oldBgLayer ^ 1, 2);
}

static void NamingScreen_InitializeCharsPosition(VecFx32 charsPosition[], enum BgLayer freeBgLayer)
{
    charsPosition[freeBgLayer].x = 238;
    charsPosition[freeBgLayer].y = -80;
    charsPosition[freeBgLayer ^ 1].x = -11;
    charsPosition[freeBgLayer ^ 1].y = -80;
}

static const DpadMovement sDpadMovementCoordDeltas[NMS_DPAD_MOVEMENT_COUNT] = {
    { .x = 0, .y = 0 },
    { .x = 0, .y = -1 },
    { .x = 0, .y = 1 },
    { .x = -1, .y = 0 },
    { .x = 1, .y = 0 }
};

static int NamingScreen_WrapAroundWithinInterval(int value, int lower, int upper)
{
    if (value >= upper) {
        value = lower;
    }

    if (value < lower) {
        value = upper - 1;
    }

    return value;
}

static void NamingScreen_MoveCursor(NamingScreen *namingScreen, enum NamingScreenDpadMovement dpadMovement)
{
    int newX, newY;
    u16 prevKey;

    if (dpadMovement == NMS_DPAD_MOVEMENT_NONE) {
        return;
    }

    prevKey = namingScreen->keyboardChars[namingScreen->keyboardCursor.y][namingScreen->keyboardCursor.x];
    newX = NamingScreen_WrapAroundWithinInterval(
        namingScreen->keyboardCursor.x + sDpadMovementCoordDeltas[dpadMovement].x,
        0,
        NMS_NUM_COLS);
    newY = NamingScreen_WrapAroundWithinInterval(
        namingScreen->keyboardCursor.y + sDpadMovementCoordDeltas[dpadMovement].y,
        0,
        NMS_NUM_ROWS);

    while (namingScreen->keyboardChars[newY][newX] == NMS_CONTROL_SKIP
        || namingScreen->keyboardChars[newY][newX] == prevKey
            && namingScreen->keyboardChars[newY][newX] > NMS_BUTTON_START) {
        if (namingScreen->keyboardCursor.prevY == 0
            && namingScreen->keyboardChars[newY][newX] == NMS_CONTROL_SKIP
            && sDpadMovementCoordDeltas[dpadMovement].y != 0) {
            newX += namingScreen->keyboardCursor.deltaX;
            newX = NamingScreen_WrapAroundWithinInterval(newX, 0, NMS_NUM_COLS);
        } else {
            newX += sDpadMovementCoordDeltas[dpadMovement].x;
            newX = NamingScreen_WrapAroundWithinInterval(newX, 0, NMS_NUM_COLS);
            newY += sDpadMovementCoordDeltas[dpadMovement].y;
            newY = NamingScreen_WrapAroundWithinInterval(newY, 0, NMS_NUM_ROWS);
        }
    }

    namingScreen->keyboardCursor.x = newX;
    namingScreen->keyboardCursor.y = newY;
}

static void NamingScreen_ProcessDirectionInputs(NamingScreen *namingScreen)
{
    BOOL didInput = FALSE;
    enum NamingScreenDpadMovement dpadMovement = NMS_DPAD_MOVEMENT_NONE;
    BOOL buttonInputIsTransition = FALSE;

    if (!Sprite_GetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR])) {
        buttonInputIsTransition = TRUE;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
        dpadMovement = NMS_DPAD_MOVEMENT_UP;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
        dpadMovement = NMS_DPAD_MOVEMENT_DOWN;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
        dpadMovement = NMS_DPAD_MOVEMENT_LEFT;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
        dpadMovement = NMS_DPAD_MOVEMENT_RIGHT;
        didInput++;
    }

    // start counts as a direction input, because it moves the cursor.
    if (gSystem.pressedKeys & PAD_BUTTON_START) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
        namingScreen->keyboardCursor.x = 12;
        namingScreen->keyboardCursor.y = 0;
        didInput++;
    }

    if ((namingScreen->isTouchInput = NamingScreen_ProcessTouchInputs(namingScreen)) == TRUE) {
        dpadMovement = NMS_DPAD_MOVEMENT_NONE;
        didInput++;
    }

    if (buttonInputIsTransition == TRUE) {
        didInput = 0;
        NamingScreen_UpdateCursorSpritePosition(namingScreen, dpadMovement);
    }

    if (didInput) {
        NamingScreen_MoveCursor(namingScreen, dpadMovement);
        NamingScreen_UpdateCursorSpritePosition(namingScreen, dpadMovement);
    }
}

static void NamingScreen_UpdateCursorSpritePosition(
    NamingScreen *namingScreen,
    enum NamingScreenDpadMovement dpadMovement)
{
    if (namingScreen->keyboardCursor.y != 0) {
        if (namingScreen->keyboardCursor.prevY == 0
            && namingScreen->keyboardCursor.prevY != namingScreen->keyboardCursor.y) {
            Sprite_SetAnim(namingScreen->uiSprites[NMS_SPRITE_CURSOR], 39);
        }

        VecFx32 vec;
        vec.x = FX32_ONE * (26 + namingScreen->keyboardCursor.x * 16);
        vec.y = FX32_ONE * ((111 - 20) + (namingScreen->keyboardCursor.y - 1) * 19);
        Sprite_SetPosition(namingScreen->uiSprites[NMS_SPRITE_CURSOR], &vec);
    } else {
        int buttonID = namingScreen->keyboardChars[namingScreen->keyboardCursor.y][namingScreen->keyboardCursor.x]
            - NMS_BUTTON_PAGE_UPPER;
        VecFx32 vec;

        vec.x = FX32_ONE * sHomeRowCursorXCoords[buttonID];
        vec.y = FX32_CONST(68);

        Sprite_SetAnim(namingScreen->uiSprites[NMS_SPRITE_CURSOR], sHomeRowCursorAnimIDs[buttonID]);
        Sprite_SetPosition(namingScreen->uiSprites[NMS_SPRITE_CURSOR], &vec);
    }

    namingScreen->plttGlowEffectAngle = 180;

    Sprite_SetAnimFrame(namingScreen->uiSprites[NMS_SPRITE_CURSOR], 0);

    namingScreen->keyboardCursor.prevX = namingScreen->keyboardCursor.x;
    namingScreen->keyboardCursor.prevY = namingScreen->keyboardCursor.y;

    if (sDpadMovementCoordDeltas[dpadMovement].x != NMS_DPAD_MOVEMENT_NONE) {
        namingScreen->keyboardCursor.deltaX = sDpadMovementCoordDeltas[dpadMovement].x;
    }
}

static void NamingScreen_PaletteGlowEffect(u16 *pSinArg)
{
    *pSinArg += 20;

    if (*pSinArg > 360) {
        *pSinArg = 0;
    }

    int val = ((CalcSineDegrees_Wraparound(*pSinArg) * 10) / FX32_ONE) + 15;
    GXRgb rgb = GX_RGB(29, val, 0);

    GX_LoadOBJPltt(&rgb, (16 + 13) * 2, 2);
}

static void NamingScreen_PrintChars(
    Window *window,
    const charcode_t *charCodes,
    int baseXOffset,
    int yOffset,
    int charSpacing,
    int renderDelay,
    TextColor textColor,
    void *rawCharData)
{
    int i = 0, charWidth, charXOffset;
    u16 charBuffer[2];
    String *string = String_Init(2, HEAP_ID_NAMING_SCREEN_APP);

    while (charCodes[i] != CHAR_EOS) {
        if (charCodes[i] == NMS_CONTROL_DAKU
            || charCodes[i] == NMS_CONTROL_HANDAKU
            || charCodes[i] == NMS_CONTROL_SPACE) {
            u16 v5 = charCodes[i] - NMS_CONTROL_DAKU;
            Window_BlitBitmapRect(
                window,
                (void *)&rawCharData[v5 * 8 * 8 * 4 / 2],
                0,
                0,
                12,
                12,
                baseXOffset + i * charSpacing,
                yOffset + 2,
                12,
                12);
        } else {
            if (charCodes[i] == NMS_CONTROL_SKIP) {
                i++;
                continue;
            }

            charBuffer[0] = charCodes[i];
            charBuffer[1] = CHAR_EOS;

            charWidth = Font_CalcCharArrayWidth(FONT_SYSTEM, charBuffer, 0);
            charXOffset = baseXOffset + i * charSpacing + ((charSpacing - charWidth) / 2);

            String_CopyChars(string, charBuffer);
            Text_AddPrinterWithParamsAndColor(
                window,
                FONT_SYSTEM,
                string,
                charXOffset,
                yOffset,
                renderDelay,
                textColor,
                NULL);
        }

        i++;
    }

    String_Free(string);
}

static const u8 sUnkGXObjOffsets1[] = {
    0x60,
    0x68,
    0x50,
    0x58
};

static void *NamingScreen_PrintStringOnWindowAndGetPixelBuffer(
    Window *window,
    String *string,
    u8 fontId,
    const TextColor color)
{
    Text_AddPrinterWithParamsAndColor(window, fontId, string, 0, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    return window->pixels;
}

static void NamingScreen_PrintCharOnWindowAndOBJ(
    Window *windows,
    const charcode_t *tmpBuf,
    u8 *pixelBuf,
    String *string)
{
    charcode_t curCharBuf[20 + 1];
    u16 i;
    void *ptr;
    String *string2;

    Window_FillTilemap(&windows[3], 0);
    ptr = NamingScreen_PrintStringOnWindowAndGetPixelBuffer(&windows[3], string, FONT_SUBSCREEN, TEXT_COLOR(13, 14, 15));
    DC_FlushRange(ptr, 0x20 * 4 * 16);

    for (i = 0; i < 4; i++) {
        sub_02012C60(&windows[3], 4, 2, 4 * i, 0, (char *)pixelBuf);
        DC_FlushRange(pixelBuf, 0x20 * 4 * 2);
        GXS_LoadOBJ(pixelBuf, sUnkGXObjOffsets1[i] * 0x20, 0x20 * 4 * 2);
    }

    string2 = String_Init(20 + 1, HEAP_ID_NAMING_SCREEN_APP);

    for (i = 0; i < 3; i++) {
        curCharBuf[0] = tmpBuf[i];
        curCharBuf[1] = CHAR_EOS;

        Window_FillTilemap(&windows[i], 0);
        String_CopyChars(string2, curCharBuf);

        ptr = NamingScreen_PrintStringOnWindowAndGetPixelBuffer(
            &windows[i],
            string2,
            FONT_SUBSCREEN,
            TEXT_COLOR(13, 14, 15));

        DC_FlushRange(ptr, 0x20 * 4);
        GXS_LoadOBJ(ptr, sUnkGXObjOffsets0[i] * 0x20, 0x20 * 4);
    }

    String_Free(string2);
}

static void NamingScreen_PrintLastCharOfEntryBuf(
    Window *windows,
    charcode_t *srcChars,
    int srcCharIdx,
    charcode_t *charCodeBuf,
    u8 *pixelBuf,
    String *string)
{
    int i, j;
    const u16 *dummy = NULL;
    u16 charCode;

    if (srcCharIdx == CHAR_NONE) {
        charCode = NMS_CONTROL_SPACE;
    } else {
        charCode = srcChars[srcCharIdx - 1];
    }

    switch (charCode) {
    case NMS_CONTROL_DAKU:
    case NMS_CONTROL_HANDAKU:
    case NMS_CONTROL_SPACE:
    case NMS_CONTROL_SKIP:
    case NMS_BUTTON_PAGE_UPPER:
    case NMS_BUTTON_PAGE_LOWER:
    case NMS_BUTTON_PAGE_OTHERS:
    case NMS_BUTTON_PAGE_JP_UNUSED:
    case NMS_BUTTON_PAGE_JP_UNUSED_2:
    case NMS_BUTTON_BACK:
    case NMS_BUTTON_OK:
        charCode = CHAR_WIDE_SPACE;
        break;
    }

    for (i = 0; i < 3; i++) {
        charCodeBuf[i] = CHAR_WIDE_SPACE;
    }

    charCodeBuf[0] = charCode;

    if (charCode != CHAR_WIDE_SPACE) {
        for (i = 0; i < NELEMS(sJPCharConversionTable); i++) {
            if (sJPCharConversionTable[i][0] == charCode) {
                for (j = 0; j < 3; j++) {
                    charCodeBuf[j] = sJPCharConversionTable[i][j];
                }
                break;
            }

            if (sJPCharConversionTable[i][2] == charCode) {
                for (j = 0; j < 3; j++) {
                    charCodeBuf[j] = sJPCharConversionTable[i][j];
                }
                break;
            }
        }
    }

    NamingScreen_PrintCharOnWindowAndOBJ(windows, charCodeBuf, pixelBuf, string);
}

static void NamingScreen_LoadKeyboardLayout(charcode_t out[][13], const int index)
{
    int i, j;

    for (i = 0; i < NMS_NUM_COLS; i++) {
        out[0][i] = sHomeRowLayouts[index][i];
    }

    for (j = 0; j < NMS_NUM_ROWS - 1; j++) {
        for (i = 0; i < NMS_NUM_COLS; i++) {
            out[1 + j][i] = sCharCodes[index][j][i];
        }
    }
}

static int NamingScreen_ProcessCharacterInput(NamingScreen *namingScreen, charcode_t charCode, BOOL isButtonInput)
{
    if (charCode == NMS_CONTROL_SPACE || charCode == NMS_CONTROL_SKIP) {
        charCode = CHAR_WIDE_SPACE;
    }

    if (namingScreen->type == NAMING_SCREEN_TYPE_UNK4) {
        if (charCode == NMS_BUTTON_PAGE_UPPER
            || charCode == NMS_BUTTON_PAGE_LOWER
            || charCode == NMS_BUTTON_PAGE_OTHERS
            || charCode == NMS_BUTTON_PAGE_JP_UNUSED) {
            charCode = CHAR_WIDE_SPACE;
        }
    }

    if (!Sprite_GetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR]) && !gSystem.touchPressed) {
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
        return NMS_APP_STATE_RUNNING;
    }

    switch (charCode) {
    case NMS_CONTROL_DAKU:
        if (NamingScreen_JPFlipDiacritic(
                42,
                NELEMS(sJPCharConversionTable),
                1,
                NMS_CONTROL_DAKU,
                namingScreen->entryBuf,
                namingScreen->textCursorPos)) {
            Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT], 1);
            NamingScreen_PrintChars(
                &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
                namingScreen->entryBuf,
                0,
                0,
                12,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(14, 15, 1),
                NULL);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case NMS_CONTROL_HANDAKU:
        if (NamingScreen_JPFlipDiacritic(
                72,
                NELEMS(sJPCharConversionTable),
                2,
                NMS_CONTROL_HANDAKU,
                namingScreen->entryBuf,
                namingScreen->textCursorPos)) {
            Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT], 1);
            NamingScreen_PrintChars(
                &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
                namingScreen->entryBuf,
                0,
                0,
                12,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(14, 15, 1),
                NULL);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case NMS_BUTTON_PAGE_JP_UNUSED_2:
        if (NamingScreen_JPFlipAlphaCase(
                0,
                NELEMS(sJPCharConversionTable),
                namingScreen->entryBuf,
                namingScreen->textCursorPos)) {
            Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT], 1);
            NamingScreen_PrintChars(
                &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
                namingScreen->entryBuf,
                0,
                0,
                12,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(14, 15, 1),
                NULL);
            namingScreen->spritesToUpdate[NMS_SPRITE_JP_UNUSED_2_BUTTON]++;
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case NMS_BUTTON_PAGE_UPPER:
    case NMS_BUTTON_PAGE_LOWER:
    case NMS_BUTTON_PAGE_OTHERS:
    case NMS_BUTTON_PAGE_JP_UNUSED:
        if (namingScreen->currentCharsIdx != charCode - NMS_BUTTON_PAGE_UPPER) {
            namingScreen->state.changeChars = CC_STATE_LOAD_GRAPHICS;
            namingScreen->currentCharsIdx = charCode - NMS_BUTTON_PAGE_UPPER;
            NamingScreen_LoadKeyboardLayout(namingScreen->keyboardChars, namingScreen->currentCharsIdx);
            namingScreen->spritesToUpdate[charCode - NMS_BUTTON_PAGE_UPPER]++;
            Sound_PlayEffect(SEQ_SE_DP_SYU03);
            Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], isButtonInput);
        }
        break;
    case NMS_BUTTON_BACK:
        if (namingScreen->textCursorPos != 0) {
            namingScreen->entryBuf[namingScreen->textCursorPos - 1] = CHAR_EOS;
            namingScreen->textCursorPos--;

            Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT], 1);

            if (namingScreen->textCursorPos == 0) {
                Window_CopyToVRAM(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT]);
            } else {
                NamingScreen_PrintChars(
                    &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
                    namingScreen->entryBuf,
                    0,
                    0,
                    12,
                    TEXT_SPEED_INSTANT,
                    TEXT_COLOR(14, 15, 1),
                    NULL);
            }

            NamingScreen_PrintLastCharOfEntryBuf(
                &namingScreen->windows[NMS_WINDOW_UNK_0],
                namingScreen->entryBuf,
                namingScreen->textCursorPos,
                namingScreen->tmpBuf,
                namingScreen->pixelBuf,
                namingScreen->unkJapaneseString);
            NamingScreen_UpdateTextCursors(
                namingScreen->textCursorSprites,
                namingScreen->textCursorPos,
                namingScreen->maxChars);

            namingScreen->spritesToUpdate[NMS_SPRITE_BACK_BUTTON]++;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], isButtonInput);
        }
        break;
    case NMS_BUTTON_OK:
        sub_02015760(namingScreen->touchscreenIconBlinker);
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], isButtonInput);

        if (!namingScreen->printedFromBattleGMM) {
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
            namingScreen->spritesToUpdate[NMS_SPRITE_OK_BUTTON]++;
            StartScreenFade(
                FADE_SUB_THEN_MAIN,
                FADE_TYPE_BRIGHTNESS_OUT,
                FADE_TYPE_BRIGHTNESS_OUT,
                COLOR_BLACK,
                16,
                1,
                HEAP_ID_NAMING_SCREEN_APP);
            return NMS_APP_STATE_WAIT_FADE_OUT;
        } else {
            namingScreen->state.main = NMS_STATE_PRINT_BATTLE_MESSAGE;
        }
        break;
    default:
        if (namingScreen->currentCharsIdx == 4 && charCode == CHAR_WIDE_SPACE) {
            return NMS_APP_STATE_RUNNING;
        }

        if (namingScreen->textCursorPos != namingScreen->maxChars) {
            namingScreen->entryBuf[namingScreen->textCursorPos] = charCode;

            Window_FillTilemap(&namingScreen->windows[NMS_WINDOW_ENTERED_TEXT], 1);
            NamingScreen_PrintChars(
                &namingScreen->windows[NMS_WINDOW_ENTERED_TEXT],
                namingScreen->entryBuf,
                0,
                0,
                12,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(14, 15, 1),
                NULL);

            namingScreen->textCursorPos++;

            NamingScreen_UpdateTextCursors(
                namingScreen->textCursorSprites,
                namingScreen->textCursorPos,
                namingScreen->maxChars);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], TRUE);
            Sprite_SetExplicitOAMMode(namingScreen->uiSprites[NMS_SPRITE_CURSOR], GX_OAM_MODE_XLU);

            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 8, 8);
            Sprite_SetAnim(namingScreen->uiSprites[NMS_SPRITE_CURSOR], 60);

            namingScreen->keyboardCursor.ignoreInput = TRUE;

            NamingScreen_PrintLastCharOfEntryBuf(
                &namingScreen->windows[NMS_WINDOW_UNK_0],
                namingScreen->entryBuf,
                namingScreen->textCursorPos,
                namingScreen->tmpBuf,
                namingScreen->pixelBuf,
                namingScreen->unkJapaneseString);
        }
    }

    return NMS_APP_STATE_RUNNING;
}

static charcode_t NamingScreen_SearchJPConvTableForNonSpace(const charcode_t *table, int pos)
{
    do {
        pos = NamingScreen_WrapAroundWithinInterval(++pos, 0, 3);
    } while (table[pos] == CHAR_WIDE_SPACE);

    return table[pos];
}

static BOOL NamingScreen_JPFlipAlphaCase(int tableStart, int tableEnd, charcode_t *charBuf, int cursorPos)
{
    int i, j;
    u16 charCode, v3;

    if (cursorPos == 0) {
        return FALSE;
    }

    charCode = charBuf[cursorPos - 1];

    for (i = tableStart; i < tableEnd; i++) {
        for (j = 0; j < 3; j++) {
            if (sJPCharConversionTable[i][j] == charCode && charCode != CHAR_WIDE_SPACE) {
                charBuf[cursorPos - 1] = NamingScreen_SearchJPConvTableForNonSpace(sJPCharConversionTable[i], j);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL NamingScreen_JPFlipDiacritic(
    int tableStart,
    int tableEnd,
    int convColNum,
    int mode,
    charcode_t *charBuf,
    int cursorPos)
{
    int i;
    charcode_t charCode;

    if (cursorPos == 0 || charBuf[cursorPos - 1] == CHAR_WIDE_SPACE) {
        return FALSE;
    }

    charCode = charBuf[cursorPos - 1];

    for (i = tableStart; i < tableEnd; i++) {
        if (sJPCharConversionTable[i][0] == charCode) {
            charBuf[cursorPos - 1] = sJPCharConversionTable[i][convColNum];
            return TRUE;
        }
    }

    for (i = tableStart; i < tableEnd; i++) {
        if (sJPCharConversionTable[i][convColNum] == charCode) {
            charBuf[cursorPos - 1] = sJPCharConversionTable[i][0];
            return TRUE;
        }
    }

    switch (mode) {
    case NMS_CONTROL_DAKU:
        for (i = 0; i < NELEMS(sDakutenTable); i++) {
            if (sDakutenTable[i][0] == charCode) {
                charBuf[cursorPos - 1] = sDakutenTable[i][1];
                return TRUE;
            }
        }
        break;
    case NMS_CONTROL_HANDAKU:
        for (i = 0; i < NELEMS(sHandakutenTable); i++) {
            if (sHandakutenTable[i][0] == charCode) {
                charBuf[cursorPos - 1] = sHandakutenTable[i][1];
                return TRUE;
            }
        }
        break;
    case NMS_BUTTON_PAGE_JP_UNUSED_2:
        if (charCode == CHAR_HIRAGANA_DZU) {
            charBuf[cursorPos - 1] = CHAR_HIRAGANA_SOKUON;
            return TRUE;
        }

        if (charCode == CHAR_KATAKANA_DZU) {
            charBuf[cursorPos - 1] = CHAR_KATAKANA_SOKUON;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void NamingScreen_UpdateTextCursors(Sprite **textCursorSprites, int textCursorPos, int maxChars)
{
    for (int i = 0; i < maxChars; i++) {
        Sprite_SetAnim(textCursorSprites[i], 43);
    }

    if (textCursorPos != maxChars) {
        Sprite_SetAnim(textCursorSprites[textCursorPos], 44);
    }
}

static const u8 sCharsAltBgColor[] = {
    0x3,
    0x6,
    0xC,
    0x9,
    0x9
};

static void NamingScreen_InitializeCharsGraphics(
    Window *window,
    u16 bgColor,
    int currentCharsIdx,
    TextColor textColor,
    void *rawCharData)
{
    int i;

    Window_FillTilemap(window, bgColor);

    // fill checkerboard
    for (i = 0; i < 6; i++) {
        Window_FillRectWithColor(window, sCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 0, 16, 19);
        Window_FillRectWithColor(window, sCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 19 * 2, 16, 19);
        Window_FillRectWithColor(window, sCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 19 * 4, 16, 19);
    }
    for (i = 0; i < 7; i++) {
        Window_FillRectWithColor(window, sCharsAltBgColor[currentCharsIdx], 32 * i, 19, 16, 19);
        Window_FillRectWithColor(window, sCharsAltBgColor[currentCharsIdx], 32 * i, 19 * 3, 16, 19);
    }

    for (i = 0; i < 5; i++) {
        NamingScreen_PrintChars(
            window,
            sCharCodes[currentCharsIdx][i],
            0,
            i * 19 + 4,
            16,
            TEXT_SPEED_NO_TRANSFER,
            textColor,
            rawCharData);
    }

    Window_CopyToVRAM(window);
}

static void NamingScreen_UpdateSpriteAnimations(BOOL spritesToUpdate[], Sprite **sprites, int unused)
{
    int i, j;

    for (i = NMS_SPRITE_PAGE_BUTTON_START; i < NMS_SPRITE_PAGE_BUTTON_END + 1; i++) {
        if (spritesToUpdate[i]) {
            for (j = NMS_SPRITE_PAGE_BUTTON_START; j < NMS_SPRITE_PAGE_BUTTON_END + 1; j++) {
                Sprite_SetAnim(sprites[j], sSpriteAnimations[j].anim);
            }

            Sprite_SetAnim(sprites[i], sSpriteAnimations[i].anim - 3);
            break;
        }
    }

    for (i = NMS_SPRITE_BUTTON_START; i < NMS_SPRITE_BUTTON_END + 1; i++) {
        if (spritesToUpdate[i]) {
            Sprite_SetAnim(sprites[i], sSpriteAnimations[i].anim + 1);
        }
    }

    for (i = 0; i < NMS_SPRITE_OVERLAY; i++) {
        spritesToUpdate[i] = FALSE;
    }
}

static void NamingScreen_PlaceCursorSprite(NamingScreen *namingScreen)
{
    if (Sprite_IsAnimated(namingScreen->uiSprites[NMS_SPRITE_CURSOR])) {
        return;
    }
    if (namingScreen->textCursorPos == namingScreen->maxChars) {
        namingScreen->keyboardCursor.x = 12;
        namingScreen->keyboardCursor.y = 0;
        Sprite_SetAnim(namingScreen->uiSprites[NMS_SPRITE_CURSOR], 39);
    } else {
        Sprite_SetAnim(namingScreen->uiSprites[NMS_SPRITE_CURSOR], 39);
    }

    if (!namingScreen->keyboardCursor.hasCharacterBeenEntered) {
        Sprite_SetDrawFlag(namingScreen->uiSprites[NMS_SPRITE_CURSOR], FALSE);
    } else {
        NamingScreen_UpdateCursorSpritePosition(namingScreen, 0);
    }

    namingScreen->keyboardCursor.ignoreInput = FALSE;

    Sprite_SetExplicitOAMMode(namingScreen->uiSprites[NMS_SPRITE_CURSOR], GX_OAM_MODE_NORMAL);
}

static const NamingScreenTouchHitbox sTouchHitboxes[] = {
    { .x = 0x19, .y = 0x3C, .sizeParam = 0x0, .cursorX = 0x0, .cursorY = 0x0 },
    { .x = 0x39, .y = 0x3C, .sizeParam = 0x0, .cursorX = 0x2, .cursorY = 0x0 },
    { .x = 0x59, .y = 0x3C, .sizeParam = 0x0, .cursorX = 0x4, .cursorY = 0x0 },
    { .x = 0x0, .y = 0xC0, .sizeParam = 0x0, .cursorX = 0x4, .cursorY = 0x0 },
    { .x = 0x9D, .y = 0x3C, .sizeParam = 0x1, .cursorX = 0x8, .cursorY = 0x0 },
    { .x = 0xC5, .y = 0x3C, .sizeParam = 0x1, .cursorX = 0xB, .cursorY = 0x0 },
    { .x = 0x1C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x0, .cursorY = 0x1 },
    { .x = 0x2C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x1, .cursorY = 0x1 },
    { .x = 0x3C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x2, .cursorY = 0x1 },
    { .x = 0x4C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x3, .cursorY = 0x1 },
    { .x = 0x5C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x4, .cursorY = 0x1 },
    { .x = 0x6C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x5, .cursorY = 0x1 },
    { .x = 0x7C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x6, .cursorY = 0x1 },
    { .x = 0x8C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x7, .cursorY = 0x1 },
    { .x = 0x9C, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x8, .cursorY = 0x1 },
    { .x = 0xAC, .y = 0x58, .sizeParam = 0x2, .cursorX = 0x9, .cursorY = 0x1 },
    { .x = 0xBC, .y = 0x58, .sizeParam = 0x2, .cursorX = 0xA, .cursorY = 0x1 },
    { .x = 0xCC, .y = 0x58, .sizeParam = 0x2, .cursorX = 0xB, .cursorY = 0x1 },
    { .x = 0xDC, .y = 0x58, .sizeParam = 0x2, .cursorX = 0xC, .cursorY = 0x1 },
    { .x = 0x1C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x0, .cursorY = 0x2 },
    { .x = 0x2C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x1, .cursorY = 0x2 },
    { .x = 0x3C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x2, .cursorY = 0x2 },
    { .x = 0x4C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x3, .cursorY = 0x2 },
    { .x = 0x5C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x4, .cursorY = 0x2 },
    { .x = 0x6C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x5, .cursorY = 0x2 },
    { .x = 0x7C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x6, .cursorY = 0x2 },
    { .x = 0x8C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x7, .cursorY = 0x2 },
    { .x = 0x9C, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x8, .cursorY = 0x2 },
    { .x = 0xAC, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0x9, .cursorY = 0x2 },
    { .x = 0xBC, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0xA, .cursorY = 0x2 },
    { .x = 0xCC, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0xB, .cursorY = 0x2 },
    { .x = 0xDC, .y = 0x6B, .sizeParam = 0x2, .cursorX = 0xC, .cursorY = 0x2 },
    { .x = 0x1C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x0, .cursorY = 0x3 },
    { .x = 0x2C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x1, .cursorY = 0x3 },
    { .x = 0x3C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x2, .cursorY = 0x3 },
    { .x = 0x4C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x3, .cursorY = 0x3 },
    { .x = 0x5C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x4, .cursorY = 0x3 },
    { .x = 0x6C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x5, .cursorY = 0x3 },
    { .x = 0x7C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x6, .cursorY = 0x3 },
    { .x = 0x8C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x7, .cursorY = 0x3 },
    { .x = 0x9C, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x8, .cursorY = 0x3 },
    { .x = 0xAC, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0x9, .cursorY = 0x3 },
    { .x = 0xBC, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0xA, .cursorY = 0x3 },
    { .x = 0xCC, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0xB, .cursorY = 0x3 },
    { .x = 0xDC, .y = 0x7E, .sizeParam = 0x2, .cursorX = 0xC, .cursorY = 0x3 },
    { .x = 0x1C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x0, .cursorY = 0x4 },
    { .x = 0x2C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x1, .cursorY = 0x4 },
    { .x = 0x3C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x2, .cursorY = 0x4 },
    { .x = 0x4C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x3, .cursorY = 0x4 },
    { .x = 0x5C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x4, .cursorY = 0x4 },
    { .x = 0x6C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x5, .cursorY = 0x4 },
    { .x = 0x7C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x6, .cursorY = 0x4 },
    { .x = 0x8C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x7, .cursorY = 0x4 },
    { .x = 0x9C, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x8, .cursorY = 0x4 },
    { .x = 0xAC, .y = 0x91, .sizeParam = 0x2, .cursorX = 0x9, .cursorY = 0x4 },
    { .x = 0xBC, .y = 0x91, .sizeParam = 0x2, .cursorX = 0xA, .cursorY = 0x4 },
    { .x = 0xCC, .y = 0x91, .sizeParam = 0x2, .cursorX = 0xB, .cursorY = 0x4 },
    { .x = 0xDC, .y = 0x91, .sizeParam = 0x2, .cursorX = 0xC, .cursorY = 0x4 },
    { .x = 0x1C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x0, .cursorY = 0x5 },
    { .x = 0x2C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x1, .cursorY = 0x5 },
    { .x = 0x3C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x2, .cursorY = 0x5 },
    { .x = 0x4C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x3, .cursorY = 0x5 },
    { .x = 0x5C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x4, .cursorY = 0x5 },
    { .x = 0x6C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x5, .cursorY = 0x5 },
    { .x = 0x7C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x6, .cursorY = 0x5 },
    { .x = 0x8C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x7, .cursorY = 0x5 },
    { .x = 0x9C, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x8, .cursorY = 0x5 },
    { .x = 0xAC, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0x9, .cursorY = 0x5 },
    { .x = 0xBC, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0xA, .cursorY = 0x5 },
    { .x = 0xCC, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0xB, .cursorY = 0x5 },
    { .x = 0xDC, .y = 0xA4, .sizeParam = 0x2, .cursorX = 0xC, .cursorY = 0x5 },
};

static BOOL NamingScreen_ProcessTouchInputs(NamingScreen *namingScreen)
{
    int i, start = 0;
    u8 x, y, x0, y0, dx, dy;

    if (namingScreen->type == NAMING_SCREEN_TYPE_UNK4) {
        start = 4;
    }

    if (gSystem.touchPressed) {
        x = gSystem.touchX;
        y = gSystem.touchY;

        for (i = start; i < (NELEMS(sTouchHitboxes)); i++) {
            x0 = sTouchHitboxes[i].x;
            y0 = sTouchHitboxes[i].y;

            switch (sTouchHitboxes[i].sizeParam) {
            case 0:
                dx = 32 - 1;
                dy = 22;
                break;
            case 1:
                dx = 32;
                dy = 22;
                break;
            case 2:
                dx = 16;
                dy = 19;
                break;
            }

            if (x >= x0 && y >= y0 && x <= x0 + dx && y <= y0 + dy) {
                namingScreen->keyboardCursor.x = sTouchHitboxes[i].cursorX;
                namingScreen->keyboardCursor.y = sTouchHitboxes[i].cursorY;
                return TRUE;
            }
        }
    }

    return FALSE;
}
