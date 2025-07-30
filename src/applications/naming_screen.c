#include "applications/naming_screen.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
#include "constants/graphics.h"
#include "constants/heap.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "charcode.h"
#include "charcode_util.h"
#include "font.h"
#include "game_options.h"
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
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_0200679C.h"
#include "unk_02012744.h"
#include "unk_0201567C.h"
#include "vram_transfer.h"

#define NAMING_SCREEN_CONTROL_DAKU            0xD001
#define NAMING_SCREEN_CONTROL_HANDAKU         0xD002
#define NAMING_SCREEN_CONTROL_SPACE           0xD003
#define NAMING_SCREEN_CONTROL_SKIP            0xD004
#define NAMING_SCREEN_BUTTON_START            0xE001
#define NAMING_SCREEN_BUTTON_PAGE_UPPER       0xE002
#define NAMING_SCREEN_BUTTON_PAGE_LOWER       0xE003
#define NAMING_SCREEN_BUTTON_PAGE_OTHERS      0xE004
#define NAMING_SCREEN_BUTTON_PAGE_JP_UNUSED   0xE005
#define NAMING_SCREEN_BUTTON_PAGE_JP_UNUSED_2 0xE006
#define NAMING_SCREEN_BUTTON_BACK             0xE007
#define NAMING_SCREEN_BUTTON_OK               0xE008

enum NamingScreenAppState {
    NMS_APP_STATE_WAIT_FADE_IN = 0,
    NMS_APP_STATE_INITIAL_DELAY,
    NMS_APP_STATE_RUNNING,
    NMS_APP_STATE_WAIT_FADE_OUT,
};

enum NamingScreenState {
    NMS_STATE_PLACEHOLDER_4 = 4,
    NMS_STATE_PLACEHOLDER_5,
    NMS_STATE_PLACEHOLDER_6,
    NMS_STATE_PLACEHOLDER_7,
};

enum ChangeCharsState {
    CC_STATE_LOAD_GRAPHICS = 0,
    CC_STATE_SET_INITIAL_POSITION,
    CC_STATE_SLIDE_IN,
    CC_STATE_FINISH_SLIDING_OUT,
    CC_STATE_NOTHING,
};

enum NamingScreenSprite {
    NMS_SPRITE_OVERLAY = 7,
};

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    BOOL hasCharacterBeenEntered;
    int unk_18;
} UnkStruct_02087A10_sub1;

typedef struct NamingScreen {
    enum NamingScreenType type;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    Options *options;
    UnkStruct_02087A10_sub1 unk_1C;
    u16 unk_38;
    u16 unk_3A[6][13];
    u16 unk_D6;
    charcode_t entryBuf[32];
    charcode_t entryBufBak[32];
    u16 textCursorPos;
    u16 tmpBuf[3];
    BgConfig *bgConfig;
    BOOL unk_164;
    StringTemplate *strTemplate;
    MessageLoader *namingScreenMsgLoader;
    MessageLoader *genericNamesMsgLoader;
    MessageLoader *battleStringsMsgLoader;
    Strbuf *unk_178;
    Strbuf *unk_17C;
    Strbuf *unk_180;
    Strbuf *unk_184;
    SpriteList *unk_188;
    G2dRenderer unk_18C;
    SpriteResourceCollection *unk_318[4];
    SpriteResource *unk_328[2][4];
    SpriteResourcesHeader unk_348;
    SpriteResourcesHeader unk_36C;
    Sprite *miscSprites[14];
    Sprite *textCursorSprites[12];
    Sprite *entitySprite[2];
    SysTask *unk_400[7];
    Window unk_41C[10];
    int unk_4BC;
    union {
        enum NamingScreenState main;
        enum ChangeCharsState changeChars;
    } state;
    int currentCharsIdx;
    // initially set to 0 (in memset in init)
    // alternates between 0 and 1. (see NamingScreen_AnimateChangeChars)
    enum BgLayer freeCharsBgLayer;
    VecFx32 charsPosition[2];
    int unk_4E4;
    int unk_4E8;
    int unk_4EC;
    int unk_4F0;
    BOOL spritesToUpdate[7];
    void *charDataAlloc;
    NNSG2dCharacterData *charData;
    void *unk_518;
    NNSG2dCharacterData *unk_51C;
    void *unk_520;
    NNSG2dPaletteData *unk_524;
    u8 pixelBuf[256];
    UnkStruct_020157E4 *unk_628;
    BOOL unk_62C;
    int delayUpdateCounter;
} NamingScreen;

typedef struct {
    Sprite *unk_00;
    Sprite *unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_020879DC;

typedef struct {
    Sprite *overlaySprite;
    int state;
    fx32 overlayXPosition;
    fx32 overlayYPosition;
} OverlayWiggleParameters;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02_0 : 2;
    u8 unk_04_0 : 5;
    u8 unk_05_0 : 5;
} NamingScreenTouchHitbox;

static BOOL NamingScreen_Init(ApplicationManager *appMan, int *state);
static BOOL NamingScreen_Main(ApplicationManager *appMan, int *state);
static BOOL NamingScreen_Exit(ApplicationManager *appMan, int *state);
static void NamingScreen_VBlankCallback(void *unused);
static void NamingScreen_InitGraphicsBanks(void);
static void NamingScreen_InitBgs(BgConfig *bgConfig);
static void sub_0208765C(BgConfig *param0, Window *param1);
static void NamingScreen_LoadGraphicsFromNarc(NamingScreen *namingScreen, NARC *narc);
static void NamingScreen_AnimateChangeChars(
    BgConfig *bgConfig,
    Window *window,
    enum ChangeCharsState *statePtr,
    int currentCharsIdx,
    enum BgLayer *bgLayerPtr,
    VecFx32 charsPosition[],
    Sprite **param6,
    void *rawCharData);
static void NamingScreen_InitCursorsAndChars(NamingScreen *param0, ApplicationManager *appMan);
static void NamingScreen_UpdateCharsPriorities(BgConfig *unused0, enum BgLayer oldBgLayer, VecFx32 unused1[]);
static void NamingScreen_InitializeCharsPosition(VecFx32 param0[], enum BgLayer freeBgLayer);
static void sub_020877F4(NamingScreen *param0, NARC *param1);
static void NamingScreen_InitSprites(NamingScreen *param0);
static void NamingScreen_TransferChars(void);
static void sub_02087FC0(NamingScreen *param0, ApplicationManager *appMan, NARC *param2);
static void NamingScreen_ProcessDirectionInputs(NamingScreen *param0);
static void sub_02088514(u16 *param0);
static void NamingScreen_PrintChars(
    Window *window,
    const charcode_t *charCodes,
    int baseXOffset,
    int yOffset,
    int charSpacing,
    int renderDelay,
    TextColor textColor,
    void *rawCharData);
static void NamingScreen_PrintCharOnWindowAndOBJ(Window *param0, const charcode_t *param1, u8 *param2, Strbuf *param3);
static void sub_02088844(u16 param0[][13], const int param1);
static void sub_02088754(Window *param0, u16 *param1, int param2, u16 *param3, u8 *param4, Strbuf *param5);
static int sub_02088898(NamingScreen *param0, u16 param1, int param2);
static int sub_02088D08(int param0, int param1, int param2, int param3, u16 *param4, int param5);
static int sub_02088C9C(int param0, int param1, u16 *param2, int param3);
static void sub_02088E1C(Sprite **param0, int param1, int param2);
static void NamingScreen_CopyParamsFromArgs(NamingScreen *namingScreen, NamingScreenArgs *namingScreenArgs);
static void NamingScreen_InitializeCharsGraphics(
    Window *param0,
    u16 param1,
    int param2,
    TextColor param3,
    void *rawCharData);
static void NamingScreen_MoveCursor(NamingScreen *param0, int param1);
static void NamingScreen_UpdateSpriteAnimations(int param0[], Sprite **param1, int param2);
static void sub_020879DC(SysTask *param0, void *param1);
static void NamingScreen_WiggleOverlayTask(SysTask *param0, void *param1);
static void sub_02086B30(NNSG2dCharacterData *param0, NNSG2dPaletteData *param1, int param2, int param3);
static void NamingScreen_ToggleEngineLayers(BOOL enable);
static void sub_02087544(NamingScreen *param0, ApplicationManager *appMan);
static void sub_02087BE4(NamingScreen *param0, AffineSpriteListTemplate *param1);
static void sub_02086E6C(NamingScreen *param0, NamingScreenArgs *param1);
static void sub_02087F48(Window *param0, int param1, Strbuf *param2);
static void sub_02088FD0(NamingScreen *param0);
static enum NamingScreenAppState NamingScreen_ProcessInputs(NamingScreen *param0, enum NamingScreenAppState param1);
static int sub_02086F14(u16 *param0);
static void *NamingScreen_PrintStringOnWindowAndGetPixelBuffer(Window *param0, Strbuf *param1, u8 param2, TextColor param3);
static BOOL sub_0208903C(NamingScreen *param0);

static const int sNamingScreenSpriteAnimations[][4] = {
    { 0x4, 0x44, 0x3, 0x1 },
    { 0x24, 0x44, 0x8, 0x1 },
    { 0x44, 0x44, 0xD, 0x1 },
    { 0x0, 0xC8, 0x12, 0x1 },
    { 0x65, 0x44, 0x14, 0x1 },
    { 0x88, 0x44, 0x17, 0x1 },
    { 0xB0, 0x44, 0x19, 0x1 },
    { 0x16, 0x38, 0x25, 0x2 },
    { 0x1A, 0x5B, 0x27, 0x0 }
};

static const charcode_t sNamingScreenHomeRowAll[] = {
    NAMING_SCREEN_BUTTON_PAGE_UPPER,
    NAMING_SCREEN_BUTTON_PAGE_UPPER,
    NAMING_SCREEN_BUTTON_PAGE_LOWER,
    NAMING_SCREEN_BUTTON_PAGE_LOWER,
    NAMING_SCREEN_BUTTON_PAGE_OTHERS,
    NAMING_SCREEN_BUTTON_PAGE_OTHERS,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_BUTTON_BACK,
    NAMING_SCREEN_BUTTON_BACK,
    NAMING_SCREEN_BUTTON_BACK,
    NAMING_SCREEN_BUTTON_OK,
    NAMING_SCREEN_BUTTON_OK,
};

static const charcode_t sNamingScreenHomeRowNumpad[] = {
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_CONTROL_SKIP,
    NAMING_SCREEN_BUTTON_BACK,
    NAMING_SCREEN_BUTTON_BACK,
    NAMING_SCREEN_BUTTON_BACK,
    NAMING_SCREEN_BUTTON_OK,
    NAMING_SCREEN_BUTTON_OK,
};

static const charcode_t *sNamingScreenHomeRowLayouts[] = {
    sNamingScreenHomeRowAll,
    sNamingScreenHomeRowAll,
    sNamingScreenHomeRowAll,
    sNamingScreenHomeRowAll,
    sNamingScreenHomeRowNumpad
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

static const charcode_t sNamingScreenCharCodesUpper0[] = {
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

static const charcode_t sNamingScreenCharCodesUpper1[] = {
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

static const charcode_t sNamingScreenCharCodesUpper2[] = {
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

static const charcode_t sNamingScreenCharCodesUpper3[] = {
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

static const charcode_t sNamingScreenCharCodesUpper4[] = {
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

static const u16 sNamingScreenCharCodesLower0[] = {
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

static const charcode_t sNamingScreenCharCodesLower1[] = {
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

static const charcode_t sNamingScreenCharCodesLower2[] = {
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

static const charcode_t sNamingScreenCharCodesLower3[] = {
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

static const charcode_t sNamingScreenCharCodesLower4[] = {
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

static const charcode_t sNamingScreenCharCodesOthers0[] = {
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

static const charcode_t sNamingScreenCharCodesOthers1[] = {
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

static const charcode_t sNamingScreenCharCodesOthers2[] = {
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

static const charcode_t sNamingScreenCharCodesOthers3[] = {
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

static const charcode_t sNamingScreenCharCodesOthers4[] = {
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

static const charcode_t sNamingScreenCharCodesJpMisc0[] = {
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

static const charcode_t sNamingScreenCharCodesJpMisc1[] = {
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

static const charcode_t sNamingScreenCharCodesJpMisc2[] = {
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

static const charcode_t sNamingScreenCharCodesJpMisc3[] = {
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

static const charcode_t sNamingScreenCharCodesJpMisc4[] = {
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

static const charcode_t sNamingScreenCharCodesNumpad0[] = {
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

static const charcode_t sNamingScreenCharCodesNumpad1[] = {
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

static const charcode_t sNamingScreenCharCodesNumpad345[] = {
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

const charcode_t *sNamingScreenCharCodes[][5] = {
    {
        sNamingScreenCharCodesUpper0,
        sNamingScreenCharCodesUpper1,
        sNamingScreenCharCodesUpper2,
        sNamingScreenCharCodesUpper3,
        sNamingScreenCharCodesUpper4,
    },
    {
        sNamingScreenCharCodesLower0,
        sNamingScreenCharCodesLower1,
        sNamingScreenCharCodesLower2,
        sNamingScreenCharCodesLower3,
        sNamingScreenCharCodesLower4,
    },
    {
        sNamingScreenCharCodesOthers0,
        sNamingScreenCharCodesOthers1,
        sNamingScreenCharCodesOthers2,
        sNamingScreenCharCodesOthers3,
        sNamingScreenCharCodesOthers4,
    },
    {
        sNamingScreenCharCodesJpMisc0,
        sNamingScreenCharCodesJpMisc1,
        sNamingScreenCharCodesJpMisc2,
        sNamingScreenCharCodesJpMisc3,
        sNamingScreenCharCodesJpMisc4,
    },
    {
        sNamingScreenCharCodesNumpad0,
        sNamingScreenCharCodesNumpad1,
        sNamingScreenCharCodesNumpad345,
        sNamingScreenCharCodesNumpad345,
        sNamingScreenCharCodesNumpad345,
    }
};

static const u16 sUnkConversionTable[][3] = {
    { 0x3, 0x1, 0x2 },
    { 0x5, 0x1, 0x4 },
    { 0x7, 0x1, 0x6 },
    { 0x9, 0x1, 0x8 },
    { 0xB, 0x1, 0xA },
    { 0x53, 0x1, 0x52 },
    { 0x55, 0x1, 0x54 },
    { 0x57, 0x1, 0x56 },
    { 0x59, 0x1, 0x58 },
    { 0x5B, 0x1, 0x5A },
    { 0x45, 0x1, 0x44 },
    { 0x47, 0x1, 0x46 },
    { 0x49, 0x1, 0x48 },
    { 0x95, 0x1, 0x94 },
    { 0x97, 0x1, 0x96 },
    { 0x99, 0x1, 0x98 },
    { 0xAC, 0x1, 0xC6 },
    { 0xAD, 0x1, 0xC7 },
    { 0xAE, 0x1, 0xC8 },
    { 0xaf, 0x1, 0xC9 },
    { 0xB0, 0x1, 0xCA },
    { 0xB1, 0x1, 0xCB },
    { 0xB2, 0x1, 0xCC },
    { 0xB3, 0x1, 0xCD },
    { 0xB4, 0x1, 0xCE },
    { 0xB5, 0x1, 0xcf },
    { 0xB6, 0x1, 0xD0 },
    { 0xB7, 0x1, 0xD1 },
    { 0xB8, 0x1, 0xD2 },
    { 0xB9, 0x1, 0xD3 },
    { 0xBA, 0x1, 0xD4 },
    { 0xBB, 0x1, 0xD5 },
    { 0xBC, 0x1, 0xD6 },
    { 0xBD, 0x1, 0xD7 },
    { 0xBE, 0x1, 0xD8 },
    { 0xbf, 0x1, 0xD9 },
    { 0xC0, 0x1, 0xDA },
    { 0xC1, 0x1, 0xDB },
    { 0xC2, 0x1, 0xDC },
    { 0xC3, 0x1, 0xDD },
    { 0xC4, 0x1, 0xDE },
    { 0xC5, 0x1, 0xdf },
    { 0x25, 0x26, 0x24 },
    { 0x75, 0x76, 0x74 },
    { 0xC, 0xD, 0x1 },
    { 0xE, 0x0f, 0x1 },
    { 0x10, 0x11, 0x1 },
    { 0x12, 0x13, 0x1 },
    { 0x14, 0x15, 0x1 },
    { 0x16, 0x17, 0x1 },
    { 0x18, 0x19, 0x1 },
    { 0x1A, 0x1B, 0x1 },
    { 0x1C, 0x1D, 0x1 },
    { 0x1E, 0x1f, 0x1 },
    { 0x20, 0x21, 0x1 },
    { 0x22, 0x23, 0x1 },
    { 0x27, 0x28, 0x1 },
    { 0x29, 0x2A, 0x1 },
    { 0x5C, 0x5D, 0x1 },
    { 0x5E, 0x5f, 0x1 },
    { 0x60, 0x61, 0x1 },
    { 0x62, 0x63, 0x1 },
    { 0x64, 0x65, 0x1 },
    { 0x66, 0x67, 0x1 },
    { 0x68, 0x69, 0x1 },
    { 0x6A, 0x6B, 0x1 },
    { 0x6C, 0x6D, 0x1 },
    { 0x6E, 0x6f, 0x1 },
    { 0x70, 0x71, 0x1 },
    { 0x72, 0x73, 0x1 },
    { 0x77, 0x78, 0x1 },
    { 0x79, 0x7A, 0x1 },
    { 0x30, 0x31, 0x32 },
    { 0x33, 0x34, 0x35 },
    { 0x36, 0x37, 0x38 },
    { 0x39, 0x3A, 0x3B },
    { 0x3C, 0x3D, 0x3E },
    { 0x80, 0x81, 0x82 },
    { 0x83, 0x84, 0x85 },
    { 0x86, 0x87, 0x88 },
    { 0x89, 0x8A, 0x8B },
    { 0x8C, 0x8D, 0x8E }
};

static const u16 Unk_020F2954[][2] = {
    { 0x24, 0x26 },
    { 0x74, 0x76 },
    { 0x32, 0x31 },
    { 0x35, 0x34 },
    { 0x38, 0x37 },
    { 0x3B, 0x3A },
    { 0x3E, 0x3D },
    { 0x82, 0x81 },
    { 0x85, 0x84 },
    { 0x88, 0x87 },
    { 0x8B, 0x8A },
    { 0x8E, 0x8D }
};

static const u16 Unk_020F292C[][2] = {
    { 0x31, 0x32 },
    { 0x34, 0x35 },
    { 0x37, 0x38 },
    { 0x3A, 0x3B },
    { 0x3D, 0x3E },
    { 0x81, 0x82 },
    { 0x84, 0x85 },
    { 0x87, 0x88 },
    { 0x8A, 0x8B },
    { 0x8D, 0x8E }
};

static const int sUnkGXObjOffsets0[] = {
    0x70,
    0x4C,
    0x48
};

static const u8 sNamingScreenCharsBgColor[4] = {
    0x4,
    0x7,
    0xD,
    0xA
};

const charcode_t sDummy0[] = {
    0x3,
    0x2B,
    0x20,
    0x2f,
    0x1,
    0x2B,
    0x3f,
    0x9,
    0x30,
    0xE2,
    0xffff
};

const charcode_t sDummy1[] = {
    0x8E,
    0x62,
    0x93,
    0xA1,
    0x2f,
    0x1,
    0x7C,
    0x74,
    0x60,
    0x7E,
    0xf1,
    0x91,
    0x30,
    0xE2,
    0xffff
};

const charcode_t sDummy2[] = {
    0x8D,
    0x74,
    0x60,
    0x6A,
    0x2f,
    0x1,
    0x2B,
    0x3f,
    0x9,
    0x30,
    0xE2,
    0xffff
};

static const charcode_t *sDummy3[] = {
    sDummy0,
    sDummy1,
    sDummy2,
};

static const int Unk_020F2850[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x3
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
            MESSAGE_LOADER_BANK_HANDLE,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_NAMING_SCREEN,
            HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->genericNamesMsgLoader = MessageLoader_Init(
            MESSAGE_LOADER_NARC_HANDLE,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_GENERIC_NAMES,
            HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->battleStringsMsgLoader = MessageLoader_Init(
            MESSAGE_LOADER_NARC_HANDLE,
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
        sub_020877F4(namingScreen, narc);
        NamingScreen_InitSprites(namingScreen);
        sub_02087FC0(namingScreen, appMan, narc);
        sub_02088754(
            &namingScreen->unk_41C[4],
            namingScreen->entryBuf,
            namingScreen->textCursorPos,
            namingScreen->tmpBuf,
            namingScreen->pixelBuf,
            namingScreen->unk_17C);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_52, SEQ_NONE, 0);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_NAMING_SCREEN_APP);
        NamingScreen_ToggleEngineLayers(TRUE);

        {
            gSystem.whichScreenIs3D = DS_SCREEN_SUB;
            GXLayers_SwapDisplay();
        }

        NARC_dtor(narc);
        (*state)++;
        break;
    case 1:
        namingScreen = ApplicationManager_Data(appMan);

        if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
            sub_02086B30(namingScreen->unk_51C, namingScreen->unk_524, namingScreen->unk_04, namingScreen->unk_08);
        }

        sNamingScreenDummy = namingScreen;
        namingScreen->unk_628 = sub_0201567C(NULL, 1, 12, HEAP_ID_NAMING_SCREEN_APP);

        (*state) = NMS_APP_STATE_WAIT_FADE_IN;
        return TRUE;
        break;
    }

    return FALSE;
}

static void sub_02086B30(NNSG2dCharacterData *param0, NNSG2dPaletteData *param1, int param2, int param3)
{
    u8 *v0;

    GX_LoadOBJ(param0->pRawData, (21 * 32 + 31) * 0x20, 0x20 * 4 * 4);
    v0 = (u8 *)param1->pRawData;
    GX_LoadOBJPltt((void *)(v0 + PokeIconPaletteIndex(param2, param3, 0) * 0x20), 6 * 0x20, 0x20);
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
        sub_02088FD0(namingScreen);
        NamingScreen_UpdateSpriteAnimations(namingScreen->spritesToUpdate, namingScreen->miscSprites, namingScreen->currentCharsIdx);

        if (namingScreen->delayUpdateCounter > 5) {
            *state = NMS_APP_STATE_RUNNING;
            namingScreen->delayUpdateCounter = 0;
        }
        break;
    case NMS_APP_STATE_RUNNING:
        switch (namingScreen->state.main) {
        case NMS_STATE_PLACEHOLDER_4:
            *state = NamingScreen_ProcessInputs(namingScreen, *state);
            sub_02088FD0(namingScreen);
            break;
        case NMS_STATE_PLACEHOLDER_5:
            sub_02087544(namingScreen, appMan);
            Window_FillTilemap(&namingScreen->unk_41C[9], 0x0f);
            Window_DrawMessageBoxWithScrollCursor(&namingScreen->unk_41C[9], 0, 32 * 8, 10);
            namingScreen->unk_4BC = Text_AddPrinterWithParams(&namingScreen->unk_41C[9], FONT_MESSAGE, namingScreen->unk_180, 0, 0, TEXT_SPEED_FAST, NULL);
            Window_CopyToVRAM(&namingScreen->unk_41C[9]);
            namingScreen->state.main = NMS_STATE_PLACEHOLDER_6;
            break;
        case NMS_STATE_PLACEHOLDER_6:
            if (Text_IsPrinterActive(namingScreen->unk_4BC) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
                namingScreen->spritesToUpdate[6]++;
                namingScreen->delayUpdateCounter = 0;
                namingScreen->state.main = NMS_STATE_PLACEHOLDER_7;
            }
            break;
        case NMS_STATE_PLACEHOLDER_7:
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
            &namingScreen->unk_41C[0],
            &namingScreen->state.changeChars,
            namingScreen->currentCharsIdx,
            &namingScreen->freeCharsBgLayer,
            namingScreen->charsPosition,
            namingScreen->miscSprites,
            namingScreen->charData->pRawData);
        NamingScreen_UpdateSpriteAnimations(namingScreen->spritesToUpdate, namingScreen->miscSprites, namingScreen->currentCharsIdx);
        sub_02088514(&namingScreen->unk_38);
        break;
    case NMS_APP_STATE_WAIT_FADE_OUT:
        if (IsScreenFadeDone()) {
            return TRUE;
        }
        break;
    }

    SpriteList_Update(namingScreen->unk_188);

    return FALSE;
}

static enum NamingScreenAppState NamingScreen_ProcessInputs(NamingScreen *namingScreen, enum NamingScreenAppState appState)
{
    NamingScreen_ProcessDirectionInputs(namingScreen);

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        if (!Sprite_GetDrawFlag(namingScreen->miscSprites[8])) {
            Sprite_SetDrawFlag(namingScreen->miscSprites[8], TRUE);
            return appState;
        }

        if (namingScreen->type != NAMING_SCREEN_TYPE_UNK4) {
            namingScreen->state.changeChars = CC_STATE_LOAD_GRAPHICS;
            namingScreen->currentCharsIdx++;

            if (namingScreen->currentCharsIdx >= 3) {
                namingScreen->currentCharsIdx = 0;
            }

            namingScreen->spritesToUpdate[namingScreen->currentCharsIdx]++;

            sub_02088844(namingScreen->unk_3A, namingScreen->currentCharsIdx);
            Sound_PlayEffect(SEQ_SE_DP_SYU03);

            namingScreen->unk_1C.hasCharacterBeenEntered = TRUE;
        }

        namingScreen->spritesToUpdate[namingScreen->currentCharsIdx]++;

        sub_02088844(namingScreen->unk_3A, namingScreen->currentCharsIdx);
        Sound_PlayEffect(SEQ_SE_DP_SYU03);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        appState = sub_02088898(namingScreen, namingScreen->unk_3A[namingScreen->unk_1C.unk_04][namingScreen->unk_1C.unk_00], 1);
        namingScreen->unk_1C.hasCharacterBeenEntered = TRUE;
    } else if (namingScreen->unk_62C == 1) {
        appState = sub_02088898(namingScreen, namingScreen->unk_3A[namingScreen->unk_1C.unk_04][namingScreen->unk_1C.unk_00], 0);
        namingScreen->unk_1C.hasCharacterBeenEntered = FALSE;
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        appState = sub_02088898(namingScreen, 0xe001 + 6, 1);
    } else if (gSystem.pressedKeys & PAD_BUTTON_R) {
        appState = sub_02088898(namingScreen, 0xe001 + 5, 1);
    }

    return appState;
}

static void sub_02086E6C(NamingScreen *param0, NamingScreenArgs *param1)
{
    if (param0->type == NAMING_SCREEN_TYPE_PLAYER) {
        Strbuf *v0;

        if (param0->unk_04 == 0) {
            v0 = MessageLoader_GetNewStrbuf(param0->genericNamesMsgLoader, 0 + LCRNG_Next() % 18);
        } else if (param0->unk_04 == 1) {
            v0 = MessageLoader_GetNewStrbuf(param0->genericNamesMsgLoader, 18 + LCRNG_Next() % 18);
        }

        Strbuf_Copy(param1->textInputStr, v0);
        Strbuf_Free(v0);
        Strbuf_ToChars(param1->textInputStr, param1->unk_1C, 10);
    } else if (param0->type == NAMING_SCREEN_TYPE_RIVAL) {
        Strbuf *v1;

        v1 = MessageLoader_GetNewStrbuf(param0->genericNamesMsgLoader, 88 + (LCRNG_Next() % 2));

        Strbuf_Copy(param1->textInputStr, v1);
        Strbuf_Free(v1);
        Strbuf_ToChars(param1->textInputStr, param1->unk_1C, 10);
    } else {
        param1->unk_14 = 1;
    }
}

static int sub_02086F14(u16 *param0)
{
    int v0 = 1;
    int v1;

    for (v1 = 0;; v1++) {
        if (param0[v1] == 0xffff) {
            break;
        }

        if (param0[v1] != 0x1de) {
            v0 = 0;
        }
    }

    return v0;
}

static BOOL NamingScreen_Exit(ApplicationManager *appMan, int *unusedState)
{
    NamingScreen *naming_screen = ApplicationManager_Data(appMan);
    NamingScreenArgs *naming_screen_args = (NamingScreenArgs *)ApplicationManager_Args(appMan);
    int v2;

    naming_screen->entryBuf[naming_screen->textCursorPos] = CHAR_EOS;

    if (naming_screen->type == NAMING_SCREEN_TYPE_POKEMON) {
        u16 v3[10 + 1];
        Pokemon *v4;

        v4 = Pokemon_New(HEAP_ID_NAMING_SCREEN_APP);
        Pokemon_InitWith(v4, naming_screen->unk_04, 5, 10, 10, 10, 10, 10);
        Heap_Free(v4);
    }

    if ((naming_screen->textCursorPos == 0) || (CharCode_Compare(naming_screen->entryBuf, naming_screen->entryBufBak) == 0) || sub_02086F14(naming_screen->entryBuf)) {
        sub_02086E6C(naming_screen, naming_screen_args);
    } else {
        CharCode_Copy(naming_screen->entryBufBak, naming_screen->entryBuf);
        CharCode_Copy(naming_screen_args->unk_1C, naming_screen->entryBuf);
        Strbuf_CopyChars(naming_screen_args->textInputStr, naming_screen->entryBuf);
    }

    Strbuf_Free(naming_screen->unk_184);

    for (v2 = 0; v2 < 7; v2++) {
        SysTask_FinishAndFreeParam(naming_screen->unk_400[v2]);
    }

    SpriteTransfer_ResetCharTransfer(naming_screen->unk_328[0][0]);
    SpriteTransfer_ResetCharTransfer(naming_screen->unk_328[1][0]);
    SpriteTransfer_ResetPlttTransfer(naming_screen->unk_328[0][1]);
    SpriteTransfer_ResetPlttTransfer(naming_screen->unk_328[1][1]);

    for (v2 = 0; v2 < 4; v2++) {
        SpriteResourceCollection_Delete(naming_screen->unk_318[v2]);
    }

    SpriteList_Delete(naming_screen->unk_188);
    RenderOam_Free();
    Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, naming_screen->charDataAlloc);

    if (naming_screen->type == NAMING_SCREEN_TYPE_POKEMON) {
        Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, naming_screen->unk_518);
        Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, naming_screen->unk_520);
    }

    Bg_FreeTilemapBuffer(naming_screen->bgConfig, BG_LAYER_SUB_3);
    CharTransfer_Free();
    PlttTransfer_Free();
    sub_0208765C(naming_screen->bgConfig, naming_screen->unk_41C);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    Font_Free(FONT_SUBSCREEN);

    if (naming_screen->unk_180) {
        Strbuf_Free(naming_screen->unk_180);
    }

    Strbuf_Free(naming_screen->unk_178);
    Strbuf_Free(naming_screen->unk_17C);
    MessageLoader_Free(naming_screen->battleStringsMsgLoader);
    MessageLoader_Free(naming_screen->genericNamesMsgLoader);
    MessageLoader_Free(naming_screen->namingScreenMsgLoader);
    StringTemplate_Free(naming_screen->strTemplate);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_NAMING_SCREEN_APP);

    {
        gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
        GXLayers_SwapDisplay();
    }

    return TRUE;
}

NamingScreenArgs *NamingScreenArgs_Init(enum HeapId heapID, enum NamingScreenType type, int param2, int maxChars, Options *options)
{
    NamingScreenArgs *v0 = (NamingScreenArgs *)Heap_AllocFromHeap(heapID, sizeof(NamingScreenArgs));

    v0->type = type;
    v0->unk_04 = param2;
    v0->maxChars = maxChars;
    v0->unk_14 = 0;
    v0->unk_1C[0] = 0xffff;
    v0->textInputStr = Strbuf_Init(32, heapID);
    v0->unk_44 = 0;
    v0->pcBoxes = NULL;
    v0->unk_10 = 0;
    v0->options = options;
    v0->unk_08 = 0;

    return v0;
}

void NamingScreenArgs_Free(NamingScreenArgs *param0)
{
    GF_ASSERT((param0->textInputStr) != NULL);
    GF_ASSERT((param0) != NULL);

    Strbuf_Free(param0->textInputStr);
    Heap_Free(param0);
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
    namingScreen->unk_04 = namingScreenArgs->unk_04;
    namingScreen->unk_08 = namingScreenArgs->unk_08;
    namingScreen->unk_0C = namingScreenArgs->maxChars;
    namingScreen->unk_10 = namingScreenArgs->unk_10;
    namingScreen->options = namingScreenArgs->options;
}

static void NamingScreen_InitGraphicsBanks(void)
{
    UnkStruct_02099F80 banks = {
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
    {
        GraphicsModes graphicsModes = {
            .displayMode = GX_DISPMODE_GRAPHICS,
            .mainBgMode = GX_BGMODE_0,
            .subBgMode = GX_BGMODE_0,
            .bg0As2DOr3D = GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&graphicsModes);
    }

    {
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
    }

    {
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
    }

    {
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
    }

    {
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
    }

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

    namingScreen->state.main = NMS_STATE_PLACEHOLDER_4;

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
        Strbuf_ToChars(namingScreenArgs->textInputStr, namingScreen->entryBufBak, 32);
    }

    MI_CpuFill16(namingScreen->entryBuf, 1, 32 * 2);

    if (namingScreen->type == NAMING_SCREEN_TYPE_POKEMON) {
        Pokemon *pkm;

        pkm = Pokemon_New(HEAP_ID_NAMING_SCREEN_APP);
        Pokemon_InitWith(pkm, namingScreen->unk_04, 5, 10, 10, 10, 10, 10);
        StringTemplate_SetSpeciesName(namingScreen->strTemplate, 0, Pokemon_GetBoxPokemon(pkm));
        Heap_Free(pkm);
    }

    if (namingScreenArgs->unk_44 != 0) {
        namingScreen->unk_14 = 1;
    }

    namingScreen->unk_178 = MessageUtil_ExpandedStrbuf(
        namingScreen->strTemplate,
        namingScreen->namingScreenMsgLoader,
        Unk_020F2850[namingScreen->type],
        HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->unk_17C = MessageUtil_ExpandedStrbuf(namingScreen->strTemplate, namingScreen->namingScreenMsgLoader, 8, HEAP_ID_NAMING_SCREEN_APP);
    namingScreen->unk_184 = MessageLoader_GetNewStrbuf(namingScreen->namingScreenMsgLoader, 7);
    namingScreen->textCursorPos = CharCode_Length(namingScreen->entryBufBak);
    namingScreen->unk_1C.unk_00 = 0;
    namingScreen->unk_1C.unk_04 = 1;
    namingScreen->unk_1C.unk_08 = -1;
    namingScreen->unk_1C.unk_0C = -1;
    namingScreen->unk_1C.hasCharacterBeenEntered = FALSE;
    namingScreen->unk_1C.unk_18 = 0;
    namingScreen->unk_4E8 = 0xffffffff;
    namingScreen->unk_4EC = 0;
    namingScreen->unk_4F0 = 0;
    namingScreen->entryBuf[namingScreen->unk_0C] = CHAR_EOS;

    {
        int v2;

        for (v2 = 0; v2 < 7; v2++) {
            namingScreen->spritesToUpdate[v2] = 0;
        }

        switch (namingScreen->type) {
        case NAMING_SCREEN_TYPE_UNK4:
            namingScreen->spritesToUpdate[3] = 1;
            break;
        default:
            namingScreen->spritesToUpdate[0] = 1;
            break;
        }
    }
}

static void sub_02087544(NamingScreen *param0, ApplicationManager *appMan)
{
    Strbuf *v0 = NULL;
    NamingScreenArgs *v1 = (NamingScreenArgs *)ApplicationManager_Args(appMan);

    if (v1->unk_44 != 0) {
        int v2, v3;

        v0 = Strbuf_Init(200, HEAP_ID_NAMING_SCREEN_APP);
        param0->unk_180 = NULL;
        v2 = PCBoxes_GetCurrentBoxID(v1->pcBoxes);
        v3 = PCBoxes_FirstEmptyBox(v1->pcBoxes);

        StringTemplate_SetPCBoxName(param0->strTemplate, 1, v1->pcBoxes, v2);

        if (v2 != v3) {
            StringTemplate_SetPCBoxName(param0->strTemplate, 2, v1->pcBoxes, v3);
            v1->unk_44 += 2;
        } else {
            StringTemplate_SetPCBoxName(param0->strTemplate, 2, v1->pcBoxes, v2);
        }

        if ((param0->textCursorPos == 0) || sub_02086F14(param0->entryBuf)) {
            Pokemon *v4 = Pokemon_New(HEAP_ID_NAMING_SCREEN_APP);

            Pokemon_InitWith(v4, param0->unk_04, 1, 0, 0, 0, 0, 0);
            StringTemplate_SetSpeciesName(param0->strTemplate, 0, Pokemon_GetBoxPokemon(v4));
            Heap_Free(v4);
        } else {
            param0->entryBuf[param0->textCursorPos] = CHAR_EOS;
            Strbuf_CopyChars(v0, param0->entryBuf);
            StringTemplate_SetStrbuf(param0->strTemplate, 0, v0, 0, 0, 0);
        }

        param0->unk_180 = MessageUtil_ExpandedStrbuf(param0->strTemplate, param0->battleStringsMsgLoader, v1->unk_44, HEAP_ID_NAMING_SCREEN_APP);
        param0->unk_14 = 1;

        Strbuf_Free(v0);
    }
}

static void sub_0208765C(BgConfig *param0, Window *param1)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        Window_Remove(&param1[v0]);
    }

    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Heap_FreeExplicit(HEAP_ID_NAMING_SCREEN_APP, param0);
}

static void NamingScreen_LoadGraphicsFromNarc(NamingScreen *namingScreen, NARC *narc)
{
    BgConfig *bgConfig = namingScreen->bgConfig;

    Graphics_LoadPaletteFromOpenNARC(narc, 0, PAL_LOAD_MAIN_BG, 0, 16 * 3 * 2, HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__POKETCH, 12, PAL_LOAD_SUB_BG, 0, 16 * 2, HEAP_ID_NAMING_SCREEN_APP);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        2,
        bgConfig,
        BG_LAYER_MAIN_2,
        0,
        (32 * 8) * 0x20,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        4,
        bgConfig,
        BG_LAYER_MAIN_2,
        0,
        32 * 24 * 2,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        2,
        bgConfig,
        BG_LAYER_MAIN_1,
        0,
        32 * 8 * 0x20,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        6,
        bgConfig,
        BG_LAYER_MAIN_1,
        0,
        32 * 14 * 2,
        TRUE,
        HEAP_ID_NAMING_SCREEN_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        7,
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
        16,
        TRUE,
        &namingScreen->charData,
        HEAP_ID_NAMING_SCREEN_APP);
}

void NamingScreen_TransferChars(void)
{
    {
        CharTransferTemplate charTransferTemplate = {
            .maxTasks = 20,
            .sizeMain = 2048,
            .sizeSub = 2048,
            .heapID = HEAP_ID_NAMING_SCREEN_APP,
        };

        CharTransfer_Init(&charTransferTemplate);
    }

    PlttTransfer_Init(20, HEAP_ID_NAMING_SCREEN_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void sub_020877F4(NamingScreen *param0, NARC *param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_NAMING_SCREEN_APP);

    param0->unk_188 = SpriteList_InitRendering(40 + 4, &param0->unk_18C, HEAP_ID_NAMING_SCREEN_APP);

    SetSubScreenViewRect(&param0->unk_18C, 0, 256 * FX32_ONE);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_318[v0] = SpriteResourceCollection_New(2, v0, HEAP_ID_NAMING_SCREEN_APP);
    }

    param0->unk_328[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_318[0], param1, 10, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_NAMING_SCREEN_APP);
    param0->unk_328[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_318[1], param1, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 9, HEAP_ID_NAMING_SCREEN_APP);
    param0->unk_328[0][2] = SpriteResourceCollection_AddFrom(param0->unk_318[2], param1, 12, 1, 0, 2, HEAP_ID_NAMING_SCREEN_APP);
    param0->unk_328[0][3] = SpriteResourceCollection_AddFrom(param0->unk_318[3], param1, 14, 1, 0, 3, HEAP_ID_NAMING_SCREEN_APP);

    if (param0->type == NAMING_SCREEN_TYPE_POKEMON) {
        param0->unk_518 = Graphics_GetCharData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconSpriteIndex(param0->unk_04, 0, param0->unk_08), 0, &param0->unk_51C, HEAP_ID_NAMING_SCREEN_APP);
        DC_FlushRange(param0->unk_51C, 0x20 * 4 * 4);

        param0->unk_520 = Graphics_GetPlttData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), &param0->unk_524, HEAP_ID_NAMING_SCREEN_APP);
        DC_FlushRange(param0->unk_524, 0x20 * 4);
    }

    param0->unk_328[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_318[0], param1, 11, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_NAMING_SCREEN_APP);
    param0->unk_328[1][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_318[1], param1, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, HEAP_ID_NAMING_SCREEN_APP);
    param0->unk_328[1][2] = SpriteResourceCollection_AddFrom(param0->unk_318[2], param1, 13, 1, 1, 2, HEAP_ID_NAMING_SCREEN_APP);
    param0->unk_328[1][3] = SpriteResourceCollection_AddFrom(param0->unk_318[3], param1, 15, 1, 1, 3, HEAP_ID_NAMING_SCREEN_APP);

    SpriteTransfer_RequestChar(param0->unk_328[0][0]);
    SpriteTransfer_RequestChar(param0->unk_328[1][0]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_328[0][1]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_328[1][1]);
}

static void sub_020879DC(SysTask *param0, void *param1)
{
    const VecFx32 *v0;
    VecFx32 v1;
    UnkStruct_020879DC *v2 = (UnkStruct_020879DC *)param1;

    v0 = Sprite_GetPosition(v2->unk_00);
    v1.x = v0->x + v2->unk_08;
    v1.y = FX32_ONE * sNamingScreenSpriteAnimations[v2->unk_0C][1];
    v1.z = 0;

    Sprite_SetPosition(v2->unk_04, &v1);
}

static void NamingScreen_InitSprites(NamingScreen *namingScreen)
{
    int i;

    SpriteResourcesHeader_Init(
        &namingScreen->unk_348,
        0,
        0,
        0,
        0,
        0xffffffff,
        0xffffffff,
        0,
        1,
        namingScreen->unk_318[0],
        namingScreen->unk_318[1],
        namingScreen->unk_318[2],
        namingScreen->unk_318[3],
        NULL,
        NULL);
    SpriteResourcesHeader_Init(
        &namingScreen->unk_36C,
        1,
        1,
        1,
        1,
        0xffffffff,
        0xffffffff,
        0,
        0,
        namingScreen->unk_318[0],
        namingScreen->unk_318[1],
        namingScreen->unk_318[2],
        namingScreen->unk_318[3],
        NULL,
        NULL);

    {
        AffineSpriteListTemplate v1;

        v1.list = namingScreen->unk_188;
        v1.resourceData = &namingScreen->unk_348;
        v1.position.x = FX32_CONST(32);
        v1.position.y = FX32_CONST(96);
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.priority = 1;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.heapID = HEAP_ID_NAMING_SCREEN_APP;

        for (i = 0; i < 9; i++) {
            v1.position.x = FX32_ONE * sNamingScreenSpriteAnimations[i][0];
            v1.position.y = FX32_ONE * sNamingScreenSpriteAnimations[i][1];

            namingScreen->miscSprites[i] = SpriteList_AddAffine(&v1);

            Sprite_SetAnimateFlag(namingScreen->miscSprites[i], TRUE);
            Sprite_SetAnim(namingScreen->miscSprites[i], sNamingScreenSpriteAnimations[i][2]);
            Sprite_SetPriority(namingScreen->miscSprites[i], sNamingScreenSpriteAnimations[i][3]);
        }

        Sprite_SetDrawFlag(namingScreen->miscSprites[4], FALSE);
        Sprite_SetDrawFlag(namingScreen->miscSprites[8], FALSE);

        for (i = 0; i < 7; i++) {
            UnkStruct_020879DC *v2;

            namingScreen->unk_400[i] = SysTask_StartAndAllocateParam(sub_020879DC, 16, 5, HEAP_ID_NAMING_SCREEN_APP);
            v2 = SysTask_GetParam(namingScreen->unk_400[i]);
            v2->unk_00 = namingScreen->miscSprites[7];
            v2->unk_04 = namingScreen->miscSprites[i];
            v2->unk_08 = FX32_ONE * sNamingScreenSpriteAnimations[i][0];
            v2->unk_0C = i;
        }

        for (i = 0; i < namingScreen->unk_0C; i++) {
            v1.position.x = FX32_ONE * ((10 * 8) + i * 12);
            v1.position.y = FX32_ONE * (4 * 8 + 7);

            namingScreen->textCursorSprites[i] = SpriteList_AddAffine(&v1);

            Sprite_SetAnimateFlag(namingScreen->textCursorSprites[i], TRUE);
            Sprite_SetAnim(namingScreen->textCursorSprites[i], 43);
        }

        sub_02088E1C(namingScreen->textCursorSprites, namingScreen->textCursorPos, namingScreen->unk_0C);
        sub_02087BE4(namingScreen, &v1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_02087BE4(NamingScreen *param0, AffineSpriteListTemplate *param1)
{
    param1->position.x = FX32_ONE * 24;
    param1->position.y = FX32_ONE * (16 - 8);
    param0->entitySprite[0] = SpriteList_AddAffine(param1);

    Sprite_SetAnimateFlag(param0->entitySprite[0], TRUE);

    switch (param0->type) {
    case NAMING_SCREEN_TYPE_PLAYER:
        if (param0->unk_04 == 0) {
            Sprite_SetAnim(param0->entitySprite[0], 48);
        } else {
            Sprite_SetAnim(param0->entitySprite[0], 49);
        }
        break;
    case NAMING_SCREEN_TYPE_RIVAL:
        Sprite_SetAnim(param0->entitySprite[0], 51);
        break;
    case NAMING_SCREEN_TYPE_UNK6:
        Sprite_SetAnim(param0->entitySprite[0], 55);
        break;
    case NAMING_SCREEN_TYPE_GROUP:
        Sprite_SetAnim(param0->entitySprite[0], 54);
        break;
    case NAMING_SCREEN_TYPE_UNK4:
    case NAMING_SCREEN_TYPE_UNK7:
        Sprite_SetAnim(param0->entitySprite[0], 53);
        break;
    case NAMING_SCREEN_TYPE_BOX:
        Sprite_SetAnim(param0->entitySprite[0], 47);
        break;
    case NAMING_SCREEN_TYPE_POKEMON:
        Sprite_SetAnim(param0->entitySprite[0], 50);

        if (param0->unk_10 != 2) {
            param1->position.x = FX32_ONE * ((10 * 8) + param0->unk_0C * 13);
            param1->position.y = FX32_ONE * ((4 * 8 + 7) - 12);
            param0->entitySprite[1] = SpriteList_AddAffine(param1);

            if (param0->unk_10 == 0) {
                Sprite_SetAnim(param0->entitySprite[1], 45);
            } else {
                Sprite_SetAnim(param0->entitySprite[1], 46);
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
    Window *window,
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
        u16 bgColor = sNamingScreenCharsBgColor[currentCharsIdx] | (sNamingScreenCharsBgColor[currentCharsIdx] << 4);

        Graphics_LoadTilemapToBgLayer(
            NARC_INDEX_DATA__NAMEIN,
            6 + currentCharsIdx,
            bgConfig,
            bgLayer,
            0,
            32 * 14 * 2,
            TRUE,
            HEAP_ID_NAMING_SCREEN_APP);
        NamingScreen_InitializeCharsPosition(charsPosition, bgLayer);
        NamingScreen_InitializeCharsGraphics(
            &window[bgLayer],
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
            wiggleParam->overlayXPosition = Sprite_GetPosition(sprites[7])->x;
            wiggleParam->overlayYPosition = Sprite_GetPosition(sprites[7])->y;

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

static void sub_02087F48(Window *param0, int param1, Strbuf *param2)
{
    Window_DrawMessageBoxWithScrollCursor(param0, 0, 32 * 8, 10);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, param2, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(param0);
}

static void sub_02087F78(Window *param0, int param1, Strbuf *param2)
{
    int v0 = 16;
    int v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param2, 0);

    if (v1 > 130) {
        v0 = 0;
    }

    Window_FillTilemap(param0, 0x101);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param2, v0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
    Window_CopyToVRAM(param0);
}

static void sub_02087FC0(NamingScreen *namingScreen, ApplicationManager *appMan, NARC *param2)
{
    Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[0], 0, 2, 1, 26, 12, 1, 32 * 8);
    Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[1], 1, 2, 1, 26, 12, 1, (32 * 8) + (26 * 12));

    if (namingScreen->type == NAMING_SCREEN_TYPE_UNK4) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param2, 6 + 3, namingScreen->bgConfig, 1, 0, 32 * 14 * 2, 1, HEAP_ID_NAMING_SCREEN_APP);
        namingScreen->currentCharsIdx = 4;
        sub_02088844(namingScreen->unk_3A, 4);
        NamingScreen_InitializeCharsGraphics(&namingScreen->unk_41C[1], 0xa0a, 4, TEXT_COLOR(14, 15, 0), namingScreen->charData->pRawData);
    } else {
        namingScreen->currentCharsIdx = 0;
        sub_02088844(namingScreen->unk_3A, 0);
        NamingScreen_InitializeCharsGraphics(&namingScreen->unk_41C[1], 0x404, 0, TEXT_COLOR(14, 15, 0), namingScreen->charData->pRawData);
    }

    Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[2], 2, 7, 2, 22, 2, 0, ((32 * 8) + (26 * 12)) + (26 * 12));

    {
        int v0 = ((namingScreen->unk_0C * 12) / 8) + 1;

        Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[3], 2, 10, 3, v0, 2, 0, (((32 * 8) + (26 * 12)) + (26 * 12)) + 44);
        Window_FillTilemap(&namingScreen->unk_41C[3], 0x101);
        Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[8], 2, 10 + v0 - 1, 3, 7, 2, 0, ((((32 * 8) + (26 * 12)) + (26 * 12)) + 44) + 36);
        Window_FillTilemap(&namingScreen->unk_41C[8], 0x101);
    }

    if (namingScreen->type == NAMING_SCREEN_TYPE_GROUP) {
        sub_02087F78(&namingScreen->unk_41C[8], namingScreen->type, namingScreen->unk_184);
        Window_CopyToVRAM(&namingScreen->unk_41C[8]);
    }

    Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[9], 4, 2, 19, 27, 4, 12, 120 + (2 * 2 * 3));
    Window_FillTilemap(&namingScreen->unk_41C[9], 0x0f);
    sub_02087F48(&namingScreen->unk_41C[9], namingScreen->type, namingScreen->unk_178);

    {
        NamingScreenArgs *v1 = (NamingScreenArgs *)ApplicationManager_Args(appMan);

        if (namingScreen->entryBufBak[0] != CHAR_EOS) {
            CharCode_Copy(namingScreen->entryBuf, namingScreen->entryBufBak);
            NamingScreen_PrintChars(&namingScreen->unk_41C[3], namingScreen->entryBuf, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
        }
    }

    {
        int v2;

        for (v2 = 0; v2 < 3; v2++) {
            Window_Add(namingScreen->bgConfig, &namingScreen->unk_41C[4 + v2], 2, 0, 0, 2, 2, 0, 120);
            Window_FillTilemap(&namingScreen->unk_41C[4 + v2], 0);
        }

        Window_Add(
            namingScreen->bgConfig,
            &namingScreen->unk_41C[7],
            BG_LAYER_MAIN_2,
            0,
            0,
            16,
            2,
            0,
            120 + (2 * 2 * 3));
        Window_FillTilemap(&namingScreen->unk_41C[7], 0);
    }
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

static const int Unk_020F2904[][2] = {
    { 0x0, 0x0 },
    { 0x0, 0xFFFFFFFFFFFFFFFF },
    { 0x0, 0x1 },
    { 0xFFFFFFFFFFFFFFFF, 0x0 },
    { 0x1, 0x0 }
};

static int sub_02088288(int param0, int param1, int param2)
{
    if (param0 >= param2) {
        param0 = param1;
    }

    if (param0 < param1) {
        param0 = param2 - 1;
    }

    return param0;
}

static void sub_02088298(NamingScreen *param0, int param1)
{
    int v0, v1;
    u16 v2;

    if (param1 == 0) {
        return;
    }

    v2 = param0->unk_3A[param0->unk_1C.unk_04][param0->unk_1C.unk_00];
    v0 = sub_02088288(param0->unk_1C.unk_00 + Unk_020F2904[param1][0], 0, 13);
    v1 = sub_02088288(param0->unk_1C.unk_04 + Unk_020F2904[param1][1], 0, 6);

    while (param0->unk_3A[v1][v0] == (0xd001 + 3) || (param0->unk_3A[v1][v0] == v2 && param0->unk_3A[v1][v0] > 0xe001)) {
        if ((param0->unk_1C.unk_0C == 0) && (param0->unk_3A[v1][v0] == (0xd001 + 3)) && (Unk_020F2904[param1][1] != 0)) {
            v0 += param0->unk_1C.unk_10;
            v0 = sub_02088288(v0, 0, 13);
        } else {
            v0 += Unk_020F2904[param1][0];
            v0 = sub_02088288(v0, 0, 13);
            v1 += Unk_020F2904[param1][1];
            v1 = sub_02088288(v1, 0, 6);
        }
    }

    param0->unk_1C.unk_00 = v0;
    param0->unk_1C.unk_04 = v1;
}

static void NamingScreen_ProcessDirectionInputs(NamingScreen *namingScreen)
{
    BOOL didInput = FALSE;
    int v1 = 0;
    BOOL v2 = FALSE;

    if (Sprite_GetDrawFlag(namingScreen->miscSprites[8]) == 0) {
        v2 = TRUE;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->miscSprites[8], TRUE);
        v1 = 1;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->miscSprites[8], TRUE);
        v1 = 2;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->miscSprites[8], TRUE);
        v1 = 3;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->miscSprites[8], TRUE);
        v1 = 4;
        didInput++;
    }

    // start counts as a direction input, because it moves the cursor.
    if (gSystem.pressedKeys & PAD_BUTTON_START) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(namingScreen->miscSprites[8], TRUE);
        namingScreen->unk_1C.unk_00 = 12;
        namingScreen->unk_1C.unk_04 = 0;
        didInput++;
    }

    {
        if ((namingScreen->unk_62C = sub_0208903C(namingScreen)) == 1) {
            v1 = 0;
            didInput++;
        }
    }

    if (v2 == TRUE) {
        didInput = 0;
        NamingScreen_MoveCursor(namingScreen, v1);
    }

    if (didInput) {
        sub_02088298(namingScreen, v1);
        NamingScreen_MoveCursor(namingScreen, v1);
    }
}

static void NamingScreen_MoveCursor(NamingScreen *param0, int param1)
{
    if (param0->unk_1C.unk_04 != 0) {
        VecFx32 v0;

        if ((param0->unk_1C.unk_0C == 0) && (param0->unk_1C.unk_0C != param0->unk_1C.unk_04)) {
            Sprite_SetAnim(param0->miscSprites[8], 39);
        }

        v0.x = FX32_ONE * (26 + param0->unk_1C.unk_00 * 16);
        v0.y = FX32_ONE * ((111 - 20) + (param0->unk_1C.unk_04 - 1) * 19);
        Sprite_SetPosition(param0->miscSprites[8], &v0);
    } else {
        VecFx32 v1;
        int v2 = param0->unk_3A[param0->unk_1C.unk_04][param0->unk_1C.unk_00] - (0xe001 + 1);

        v1.x = FX32_ONE * sHomeRowCursorXCoords[v2];
        v1.y = FX32_ONE * (88 - 20);

        Sprite_SetAnim(param0->miscSprites[8], sHomeRowCursorAnimIDs[v2]);
        Sprite_SetPosition(param0->miscSprites[8], &v1);
    }

    param0->unk_38 = 180;

    Sprite_SetAnimFrame(param0->miscSprites[8], 0);

    param0->unk_1C.unk_08 = param0->unk_1C.unk_00;
    param0->unk_1C.unk_0C = param0->unk_1C.unk_04;

    if (Unk_020F2904[param1][0] != 0) {
        param0->unk_1C.unk_10 = Unk_020F2904[param1][0];
    }
}

static void sub_02088514(u16 *param0)
{
    fx32 v0;
    GXRgb v1;
    int v2, v3, v4;

    *param0 += 20;

    if (*param0 > 360) {
        *param0 = 0;
    }

    v0 = CalcSineDegrees_Wraparound(*param0);
    v3 = 15 + (v0 * 10) / FX32_ONE;
    v1 = GX_RGB(29, v3, 0);

    GX_LoadOBJPltt((u16 *)&v1, (16 + 13) * 2, 2);
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
    Strbuf *strBuf = Strbuf_Init(2, HEAP_ID_NAMING_SCREEN_APP);

    while (charCodes[i] != CHAR_EOS) {
        if ((charCodes[i] == 0xd001) || (charCodes[i] == (0xd001 + 1)) || (charCodes[i] == (0xd001 + 2))) {
            u16 v5 = charCodes[i] - 0xd001;
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
            if (charCodes[i] == (0xd001 + 3)) {
                i++;
                continue;
            }

            charBuffer[0] = charCodes[i];
            charBuffer[1] = CHAR_EOS;

            charWidth = Font_CalcStringWidth(FONT_SYSTEM, charBuffer, 0);
            charXOffset = baseXOffset + i * charSpacing + ((charSpacing - charWidth) / 2);

            Strbuf_CopyChars(strBuf, charBuffer);
            Text_AddPrinterWithParamsAndColor(
                window,
                FONT_SYSTEM,
                strBuf,
                charXOffset,
                yOffset,
                renderDelay,
                textColor,
                NULL);
        }

        i++;
    }

    Strbuf_Free(strBuf);
}

static const u8 sUnkGXObjOffsets1[] = {
    0x60,
    0x68,
    0x50,
    0x58
};

static void *NamingScreen_PrintStringOnWindowAndGetPixelBuffer(Window *window, Strbuf *string, u8 fontId, const TextColor color)
{
    Text_AddPrinterWithParamsAndColor(window, fontId, string, 0, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    return window->pixels;
}

static void NamingScreen_PrintCharOnWindowAndOBJ(Window *window, const charcode_t *tmpBuf, u8 *pixelBuf, Strbuf *string)
{
    charcode_t curCharBuf[20 + 1];
    u16 i;
    void *ptr;
    Strbuf *string2;

    Window_FillTilemap(&window[3], 0);
    ptr = NamingScreen_PrintStringOnWindowAndGetPixelBuffer(&window[3], string, FONT_SUBSCREEN, TEXT_COLOR(13, 14, 15));
    DC_FlushRange(ptr, 0x20 * 4 * 16);

    for (i = 0; i < 4; i++) {
        // copy rect of pixels from window 3
        sub_02012C60(&window[3], 4, 2, 4 * i, 0, (char *)pixelBuf);
        DC_FlushRange(pixelBuf, 0x20 * 4 * 2);
        GXS_LoadOBJ(pixelBuf, sUnkGXObjOffsets1[i] * 0x20, 0x20 * 4 * 2);
    }

    string2 = Strbuf_Init(20 + 1, HEAP_ID_NAMING_SCREEN_APP);

    for (i = 0; i < 3; i++) {
        curCharBuf[0] = tmpBuf[i];
        curCharBuf[1] = CHAR_EOS;

        Window_FillTilemap(&window[i], 0);
        Strbuf_CopyChars(string2, curCharBuf);

        ptr = NamingScreen_PrintStringOnWindowAndGetPixelBuffer(&window[i], string2, FONT_SUBSCREEN, TEXT_COLOR(13, 14, 15));

        DC_FlushRange(ptr, 0x20 * 4);
        GXS_LoadOBJ(ptr, sUnkGXObjOffsets0[i] * 0x20, 0x20 * 4);
    }

    Strbuf_Free(string2);
}

static void sub_02088754(
    Window *windows,
    charcode_t *srcChars,
    int srcCharIdx,
    charcode_t *charCodeBuf,
    u8 *pixelBuf,
    Strbuf *param5)
{
    int i, j;
    const u16 *v2 = NULL;
    u16 charCode;

    if (srcCharIdx == 0) {
        charCode = (0xd001 + 2);
    } else {
        charCode = srcChars[srcCharIdx - 1];
    }

    switch (charCode) {
    case 0xd001:
    case (0xd001 + 1):
    case (0xd001 + 2):
    case (0xd001 + 3):
    case (0xe001 + 1):
    case (0xe001 + 2):
    case (0xe001 + 3):
    case (0xe001 + 4):
    case (0xe001 + 5):
    case (0xe001 + 6):
    case (0xe001 + 7):
        charCode = CHAR_WIDE_SPACE;
        break;
    }

    for (i = 0; i < 3; i++) {
        charCodeBuf[i] = CHAR_WIDE_SPACE;
    }

    charCodeBuf[0] = charCode;

    if (charCode != CHAR_WIDE_SPACE) {
        for (i = 0; i < NELEMS(sUnkConversionTable); i++) {
            if (sUnkConversionTable[i][0] == charCode) {
                for (j = 0; j < 3; j++) {
                    charCodeBuf[j] = sUnkConversionTable[i][j];
                }
                break;
            }

            if (sUnkConversionTable[i][2] == charCode) {
                for (j = 0; j < 3; j++) {
                    charCodeBuf[j] = sUnkConversionTable[i][j];
                }
                break;
            }
        }
    }

    NamingScreen_PrintCharOnWindowAndOBJ(windows, charCodeBuf, pixelBuf, param5);
}

static void sub_02088844(u16 param0[][13], const int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 13; v0++) {
        param0[0][v0] = sNamingScreenHomeRowLayouts[param1][v0];
    }

    for (v1 = 0; v1 < 6 - 1; v1++) {
        for (v0 = 0; v0 < 13; v0++) {
            param0[1 + v1][v0] = sNamingScreenCharCodes[param1][v1][v0];
        }
    }
}

static int sub_02088898(NamingScreen *param0, u16 param1, int param2)
{
    if ((param1 == (0xd001 + 2)) || (param1 == (0xd001 + 3))) {
        param1 = 0x1;
    }

    if (param0->type == NAMING_SCREEN_TYPE_UNK4) {
        if ((param1 == (0xe001 + 1)) || (param1 == (0xe001 + 2)) || (param1 == (0xe001 + 3)) || (param1 == (0xe001 + 4))) {
            param1 = 0x1;
        }
    }

    if ((Sprite_GetDrawFlag(param0->miscSprites[8]) == 0) && (gSystem.touchPressed == 0)) {
        Sprite_SetDrawFlag(param0->miscSprites[8], TRUE);
        return NMS_APP_STATE_RUNNING;
    }

    switch (param1) {
    case 0xd001:
        if (sub_02088D08(42, 42 + 40, 1, 0xd001, param0->entryBuf, param0->textCursorPos)) {
            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            NamingScreen_PrintChars(&param0->unk_41C[3], param0->entryBuf, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case (0xd001 + 1):
        if (sub_02088D08(72, 72 + 10, 2, 0xd001 + 1, param0->entryBuf, param0->textCursorPos)) {
            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            NamingScreen_PrintChars(&param0->unk_41C[3], param0->entryBuf, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case (0xe001 + 5):
        if (sub_02088C9C(0, 72 + 10, param0->entryBuf, param0->textCursorPos)) {
            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            NamingScreen_PrintChars(
                &param0->unk_41C[3],
                param0->entryBuf,
                0,
                0,
                12,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(14, 15, 1),
                NULL);
            param0->spritesToUpdate[4]++;
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case (0xe001 + 1):
    case (0xe001 + 2):
    case (0xe001 + 3):
    case (0xe001 + 4):
        if (param0->currentCharsIdx != param1 - (0xe001 + 1)) {
            param0->state.changeChars = CC_STATE_LOAD_GRAPHICS;
            param0->currentCharsIdx = param1 - (0xe001 + 1);
            sub_02088844(param0->unk_3A, param0->currentCharsIdx);
            param0->spritesToUpdate[param1 - (0xe001 + 1)]++;
            Sound_PlayEffect(SEQ_SE_DP_SYU03);
            Sprite_SetDrawFlag(param0->miscSprites[8], param2);
        }
        break;
    case (0xe001 + 6):
        if (param0->textCursorPos != 0) {
            param0->entryBuf[param0->textCursorPos - 1] = 0xffff;
            param0->textCursorPos--;

            Window_FillTilemap(&param0->unk_41C[3], 0x101);

            if (param0->textCursorPos == 0) {
                Window_CopyToVRAM(&param0->unk_41C[3]);
            } else {
                NamingScreen_PrintChars(&param0->unk_41C[3], param0->entryBuf, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
            }

            sub_02088754(&param0->unk_41C[4], param0->entryBuf, param0->textCursorPos, param0->tmpBuf, param0->pixelBuf, param0->unk_17C);
            sub_02088E1C(param0->textCursorSprites, param0->textCursorPos, param0->unk_0C);

            param0->spritesToUpdate[5]++;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Sprite_SetDrawFlag(param0->miscSprites[8], param2);
        }
        break;
    case (0xe001 + 7):
        sub_02015760(param0->unk_628);
        Sprite_SetDrawFlag(param0->miscSprites[8], param2);

        if (param0->unk_14 == 0) {
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
            param0->spritesToUpdate[6]++;
            StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 16, 1, HEAP_ID_NAMING_SCREEN_APP);
            return NMS_APP_STATE_WAIT_FADE_OUT;
        } else {
            param0->state.main = NMS_STATE_PLACEHOLDER_5;
        }
        break;
    default:
        if ((param0->currentCharsIdx == 4) && (param1 == 0x1)) {
            return NMS_APP_STATE_RUNNING;
        }

        if (param0->textCursorPos != param0->unk_0C) {
            param0->entryBuf[param0->textCursorPos] = param1;

            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            NamingScreen_PrintChars(&param0->unk_41C[3], param0->entryBuf, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);

            param0->textCursorPos++;

            sub_02088E1C(param0->textCursorSprites, param0->textCursorPos, param0->unk_0C);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            Sprite_SetDrawFlag(param0->miscSprites[8], TRUE);
            Sprite_SetExplicitOAMMode(param0->miscSprites[8], GX_OAM_MODE_XLU);

            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 8, 8);
            Sprite_SetAnim(param0->miscSprites[8], 60);

            param0->unk_1C.unk_18 = 1;

            sub_02088754(&param0->unk_41C[4], param0->entryBuf, param0->textCursorPos, param0->tmpBuf, param0->pixelBuf, param0->unk_17C);
        }
    }

    return NMS_APP_STATE_RUNNING;
}

static u16 sub_02088C7C(const u16 *param0, int param1)
{
    do {
        param1 = sub_02088288(++param1, 0, 3);
    } while (param0[param1] == 0x1);

    return param0[param1];
}

static int sub_02088C9C(int param0, int param1, u16 *param2, int param3)
{
    int v0, v1;
    u16 v2, v3;

    if (param3 == 0) {
        return 0;
    }

    v2 = param2[param3 - 1];

    for (v0 = param0; v0 < param1; v0++) {
        for (v1 = 0; v1 < 3; v1++) {
            if ((sUnkConversionTable[v0][v1] == v2) && (v2 != 0x1)) {
                param2[param3 - 1] = sub_02088C7C(sUnkConversionTable[v0], v1);
                return 1;
            }
        }
    }

    return 0;
}

static int sub_02088D08(int param0, int param1, int param2, int param3, u16 *param4, int param5)
{
    int v0;
    u16 v1;

    if ((param5 == 0) || (param4[param5 - 1] == 0x1)) {
        return 0;
    }

    v1 = param4[param5 - 1];

    for (v0 = param0; v0 < param1; v0++) {
        if (sUnkConversionTable[v0][0] == v1) {
            param4[param5 - 1] = sUnkConversionTable[v0][param2];
            return 1;
        }
    }

    for (v0 = param0; v0 < param1; v0++) {
        if (sUnkConversionTable[v0][param2] == v1) {
            param4[param5 - 1] = sUnkConversionTable[v0][0];
            return 1;
        }
    }

    switch (param3) {
    case 0xd001:
        for (v0 = 0; v0 < NELEMS(Unk_020F2954); v0++) {
            if (Unk_020F2954[v0][0] == v1) {
                param4[param5 - 1] = Unk_020F2954[v0][1];
                return 1;
            }
        }
        break;
    case (0xd001 + 1):
        for (v0 = 0; v0 < NELEMS(Unk_020F292C); v0++) {
            if (Unk_020F292C[v0][0] == v1) {
                param4[param5 - 1] = Unk_020F292C[v0][1];
                return 1;
            }
        }
        break;
    case (0xe001 + 5):
        if (v1 == 0x26) {
            param4[param5 - 1] = 0x24;
            return 1;
        }

        if (v1 == 0x76) {
            param4[param5 - 1] = 0x74;
            return 1;
        }
        break;
    }

    return 0;
}

static void sub_02088E1C(Sprite **param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param2; v0++) {
        Sprite_SetAnim(param0[v0], 43);
    }

    if (param1 != param2) {
        Sprite_SetAnim(param0[param1], 44);
    }
}

static const u8 sNamingScreenCharsAltBgColor[] = {
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
        Window_FillRectWithColor(window, sNamingScreenCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 0, 16, 19);
        Window_FillRectWithColor(window, sNamingScreenCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 19 * 2, 16, 19);
        Window_FillRectWithColor(window, sNamingScreenCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 19 * 4, 16, 19);
    }
    for (i = 0; i < 7; i++) {
        Window_FillRectWithColor(window, sNamingScreenCharsAltBgColor[currentCharsIdx], 32 * i, 19, 16, 19);
        Window_FillRectWithColor(window, sNamingScreenCharsAltBgColor[currentCharsIdx], 32 * i, 19 * 3, 16, 19);
    }

    for (i = 0; i < 5; i++) {
        NamingScreen_PrintChars(
            window,
            sNamingScreenCharCodes[currentCharsIdx][i],
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

    for (i = 0; i < 3; i++) {
        if (spritesToUpdate[i]) {
            for (j = 0; j < 3; j++) {
                Sprite_SetAnim(sprites[j], sNamingScreenSpriteAnimations[j][2]);
            }

            Sprite_SetAnim(sprites[i], sNamingScreenSpriteAnimations[i][2] - 3);
            break;
        }
    }

    for (i = 5; i < 7; i++) {
        if (spritesToUpdate[i]) {
            Sprite_SetAnim(sprites[i], sNamingScreenSpriteAnimations[i][2] + 1);
        }
    }

    for (i = 0; i < 7; i++) {
        spritesToUpdate[i] = FALSE;
    }
}

static void sub_02088FD0(NamingScreen *namingScreen)
{
    if (!Sprite_IsAnimated(namingScreen->miscSprites[8])) {
        if (namingScreen->textCursorPos == namingScreen->unk_0C) {
            namingScreen->unk_1C.unk_00 = 12;
            namingScreen->unk_1C.unk_04 = 0;
            Sprite_SetAnim(namingScreen->miscSprites[8], 39);
        } else {
            Sprite_SetAnim(namingScreen->miscSprites[8], 39);
        }

        if (!namingScreen->unk_1C.hasCharacterBeenEntered) {
            Sprite_SetDrawFlag(namingScreen->miscSprites[8], FALSE);
        } else {
            NamingScreen_MoveCursor(namingScreen, 0);
        }

        namingScreen->unk_1C.unk_18 = 0;

        Sprite_SetExplicitOAMMode(namingScreen->miscSprites[8], GX_OAM_MODE_NORMAL);
    }
}

static const NamingScreenTouchHitbox Unk_020F2A14[] = {
    { 0x19, 0x3C, 0x0, 0x0, 0x0 },
    { 0x39, 0x3C, 0x0, 0x2, 0x0 },
    { 0x59, 0x3C, 0x0, 0x4, 0x0 },
    { 0x0, 0xC0, 0x0, 0x4, 0x0 },
    { 0x9D, 0x3C, 0x1, 0x8, 0x0 },
    { 0xC5, 0x3C, 0x1, 0xB, 0x0 },
    { 0x1C, 0x58, 0x2, 0x0, 0x1 },
    { 0x2C, 0x58, 0x2, 0x1, 0x1 },
    { 0x3C, 0x58, 0x2, 0x2, 0x1 },
    { 0x4C, 0x58, 0x2, 0x3, 0x1 },
    { 0x5C, 0x58, 0x2, 0x4, 0x1 },
    { 0x6C, 0x58, 0x2, 0x5, 0x1 },
    { 0x7C, 0x58, 0x2, 0x6, 0x1 },
    { 0x8C, 0x58, 0x2, 0x7, 0x1 },
    { 0x9C, 0x58, 0x2, 0x8, 0x1 },
    { 0xAC, 0x58, 0x2, 0x9, 0x1 },
    { 0xBC, 0x58, 0x2, 0xA, 0x1 },
    { 0xCC, 0x58, 0x2, 0xB, 0x1 },
    { 0xDC, 0x58, 0x2, 0xC, 0x1 },
    { 0x1C, 0x6B, 0x2, 0x0, 0x2 },
    { 0x2C, 0x6B, 0x2, 0x1, 0x2 },
    { 0x3C, 0x6B, 0x2, 0x2, 0x2 },
    { 0x4C, 0x6B, 0x2, 0x3, 0x2 },
    { 0x5C, 0x6B, 0x2, 0x4, 0x2 },
    { 0x6C, 0x6B, 0x2, 0x5, 0x2 },
    { 0x7C, 0x6B, 0x2, 0x6, 0x2 },
    { 0x8C, 0x6B, 0x2, 0x7, 0x2 },
    { 0x9C, 0x6B, 0x2, 0x8, 0x2 },
    { 0xAC, 0x6B, 0x2, 0x9, 0x2 },
    { 0xBC, 0x6B, 0x2, 0xA, 0x2 },
    { 0xCC, 0x6B, 0x2, 0xB, 0x2 },
    { 0xDC, 0x6B, 0x2, 0xC, 0x2 },
    { 0x1C, 0x7E, 0x2, 0x0, 0x3 },
    { 0x2C, 0x7E, 0x2, 0x1, 0x3 },
    { 0x3C, 0x7E, 0x2, 0x2, 0x3 },
    { 0x4C, 0x7E, 0x2, 0x3, 0x3 },
    { 0x5C, 0x7E, 0x2, 0x4, 0x3 },
    { 0x6C, 0x7E, 0x2, 0x5, 0x3 },
    { 0x7C, 0x7E, 0x2, 0x6, 0x3 },
    { 0x8C, 0x7E, 0x2, 0x7, 0x3 },
    { 0x9C, 0x7E, 0x2, 0x8, 0x3 },
    { 0xAC, 0x7E, 0x2, 0x9, 0x3 },
    { 0xBC, 0x7E, 0x2, 0xA, 0x3 },
    { 0xCC, 0x7E, 0x2, 0xB, 0x3 },
    { 0xDC, 0x7E, 0x2, 0xC, 0x3 },
    { 0x1C, 0x91, 0x2, 0x0, 0x4 },
    { 0x2C, 0x91, 0x2, 0x1, 0x4 },
    { 0x3C, 0x91, 0x2, 0x2, 0x4 },
    { 0x4C, 0x91, 0x2, 0x3, 0x4 },
    { 0x5C, 0x91, 0x2, 0x4, 0x4 },
    { 0x6C, 0x91, 0x2, 0x5, 0x4 },
    { 0x7C, 0x91, 0x2, 0x6, 0x4 },
    { 0x8C, 0x91, 0x2, 0x7, 0x4 },
    { 0x9C, 0x91, 0x2, 0x8, 0x4 },
    { 0xAC, 0x91, 0x2, 0x9, 0x4 },
    { 0xBC, 0x91, 0x2, 0xA, 0x4 },
    { 0xCC, 0x91, 0x2, 0xB, 0x4 },
    { 0xDC, 0x91, 0x2, 0xC, 0x4 },
    { 0x1C, 0xA4, 0x2, 0x0, 0x5 },
    { 0x2C, 0xA4, 0x2, 0x1, 0x5 },
    { 0x3C, 0xA4, 0x2, 0x2, 0x5 },
    { 0x4C, 0xA4, 0x2, 0x3, 0x5 },
    { 0x5C, 0xA4, 0x2, 0x4, 0x5 },
    { 0x6C, 0xA4, 0x2, 0x5, 0x5 },
    { 0x7C, 0xA4, 0x2, 0x6, 0x5 },
    { 0x8C, 0xA4, 0x2, 0x7, 0x5 },
    { 0x9C, 0xA4, 0x2, 0x8, 0x5 },
    { 0xAC, 0xA4, 0x2, 0x9, 0x5 },
    { 0xBC, 0xA4, 0x2, 0xA, 0x5 },
    { 0xCC, 0xA4, 0x2, 0xB, 0x5 },
    { 0xDC, 0xA4, 0x2, 0xC, 0x5 }
};

static BOOL sub_0208903C(NamingScreen *param0)
{
    int v0, v1 = 0;
    u8 v2, v3, v4, v5, v6, v7;

    if (param0->type == 4) {
        v1 = 4;
    }

    if (gSystem.touchPressed) {
        v2 = gSystem.touchX;
        v3 = gSystem.touchY;

        for (v0 = v1; v0 < (NELEMS(Unk_020F2A14)); v0++) {
            v4 = Unk_020F2A14[v0].unk_00;
            v5 = Unk_020F2A14[v0].unk_01;

            switch (Unk_020F2A14[v0].unk_02_0) {
            case 0:
                v6 = 32 - 1;
                v7 = 22;
                break;
            case 1:
                v6 = 32;
                v7 = 22;
                break;
            case 2:
                v6 = 16;
                v7 = 19;
                break;
            }

            if ((v2 >= v4) && (v3 >= v5) && (v2 <= (v4 + v6)) && (v3 <= (v5 + v7))) {
                param0->unk_1C.unk_00 = Unk_020F2A14[v0].unk_04_0;
                param0->unk_1C.unk_04 = Unk_020F2A14[v0].unk_05_0;
                return 1;
            }
        }
    }

    return 0;
}
