#include "charcode.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/charcode.h"
#include "constants/heap.h"

#include "struct_defs/struct_02099F80.h"

#include "applications/keyboard.h"
#include "bg_window.h"
#include "char_transfer.h"
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

enum KeyboardAppState {
    KBD_APP_STATE_WAIT_FADE_IN = 0,
    KBD_APP_STATE_INITIAL_DELAY,
    KBD_APP_STATE_RUNNING,
    KBD_APP_STATE_WAIT_FADE_OUT,
};

enum KeyboardState {
    KBD_STATE_PLACEHOLDER_4 = 4,
    KBD_STATE_PLACEHOLDER_5,
    KBD_STATE_PLACEHOLDER_6,
    KBD_STATE_PLACEHOLDER_7,
};

enum ChangeCharsState {
    CC_STATE_LOAD_GRAPHICS = 0,
    CC_STATE_SET_INITIAL_POSITION,
    CC_STATE_SLIDE_IN,
    CC_STATE_FINISH_SLIDING_OUT,
    CC_STATE_NOTHING,
};

enum KeyboardSprite {
    KBD_SPRITE_OVERLAY = 7,
};

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
} UnkStruct_02087A10_sub1;

typedef struct Keyboard {
    int unk_00;
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
    u16 unk_D8[32];
    u16 unk_118[32];
    u16 unk_158;
    u16 unk_15A[3];
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
        enum KeyboardState main;
        enum ChangeCharsState changeChars;
    } state;
    int currentCharsIdx;
    // initially set to 0 (in memset in init)
    // alternates between 0 and 1. (see Keyboard_AnimateChangeChars)
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
    u8 unk_528[256];
    UnkStruct_020157E4 *unk_628;
    BOOL unk_62C;
    int delayUpdateCounter;
} Keyboard;

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
    u16 : 14;
    u8 unk_04_0 : 5;
    u8 : 3;
    u8 unk_05_0 : 5;
    u8 : 3;
} UnkStruct_020F2A14;

static BOOL Keyboard_Init(ApplicationManager *appMan, int *state);
static BOOL Keyboard_Main(ApplicationManager *appMan, int *state);
static BOOL Keyboard_Exit(ApplicationManager *appMan, int *state);
static void Keyboard_VBlankCallback(void *unused);
static void Keyboard_InitGraphicsBanks(void);
static void Keyboard_InitBgs(BgConfig *bgConfig);
static void sub_0208765C(BgConfig *param0, Window *param1);
static void Keyboard_LoadGraphicsFromNarc(Keyboard *keyboard, NARC *narc);
static void Keyboard_AnimateChangeChars(
    BgConfig *bgConfig,
    Window *window,
    enum ChangeCharsState *statePtr,
    int currentCharsIdx,
    enum BgLayer *bgLayerPtr,
    VecFx32 charsPosition[],
    Sprite **param6,
    void *rawCharData
);
static void sub_0208737C(Keyboard *param0, ApplicationManager *appMan);
static void Keyboard_UpdateCharsPriorities(BgConfig *unused0, enum BgLayer oldBgLayer, VecFx32 unused1[]);
static void Keyboard_InitializeCharsPosition(VecFx32 param0[], enum BgLayer freeBgLayer);
static void sub_020877F4(Keyboard *param0, NARC *param1);
static void Keyboard_InitSprites(Keyboard *param0);
static void Keyboard_TransferChars(void);
static void sub_02087FC0(Keyboard *param0, ApplicationManager *appMan, NARC *param2);
static void Keyboard_ProcessDirectionInputs(Keyboard *param0);
static void sub_02088514(u16 *param0);
static void Keyboard_PrintChars(
    Window *window,
    const charcode_t *charCodes,
    int baseXOffset,
    int yOffset,
    int charSpacing,
    int renderDelay,
    TextColor textColor,
    void *rawCharData
);
static void sub_02088678(Window *param0, const u16 *param1, u8 *param2, Strbuf *param3);
static void sub_02088844(u16 param0[][13], const int param1);
static void sub_02088754(Window *param0, u16 *param1, int param2, u16 *param3, u8 *param4, Strbuf *param5);
static int sub_02088898(Keyboard *param0, u16 param1, int param2);
static int sub_02088D08(int param0, int param1, int param2, int param3, u16 *param4, int param5);
static int sub_02088C9C(int param0, int param1, u16 *param2, int param3);
static void sub_02088E1C(Sprite **param0, int param1, int param2);
static void Keyboard_CopyParamsFromArgs(Keyboard *keyboard, KeyboardArgs *keyboardArgs);
static void Keyboard_InitializeCharsGraphics(
    Window *param0,
    u16 param1,
    int param2,
    TextColor param3,
    void *rawCharData
);
static void Keyboard_MoveCursor(Keyboard *param0, int param1);
static void Keyboard_UpdateSpriteAnimations(int param0[], Sprite **param1, int param2);
static void sub_020879DC(SysTask *param0, void *param1);
static void Keyboard_WiggleOverlayTask(SysTask *param0, void *param1);
static void sub_02086B30(NNSG2dCharacterData *param0, NNSG2dPaletteData *param1, int param2, int param3);
static void Keyboard_ToggleEngineLayers(BOOL enable);
static void sub_02087544(Keyboard *param0, ApplicationManager *appMan);
static void sub_02087BE4(Keyboard *param0, AffineSpriteListTemplate *param1);
static void sub_02086E6C(Keyboard *param0, KeyboardArgs *param1);
static void sub_02087F48(Window *param0, int param1, Strbuf *param2);
static void sub_02088FD0(Keyboard *param0);
static enum KeyboardAppState Keyboard_ProcessInputs(Keyboard *param0, enum KeyboardAppState param1);
static int sub_02086F14(u16 *param0);
static void *sub_02088654(Window *param0, Strbuf *param1, u8 param2, TextColor param3);
static BOOL sub_0208903C(Keyboard *param0);

static const int sKeyboardSpriteAnimations[][4] = {
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

static const u16 Unk_020F255A[] = {
    0xE002,
    0xE002,
    0xE003,
    0xE003,
    0xE004,
    0xE004,
    0xD004,
    0xD004,
    0xE007,
    0xE007,
    0xE007,
    0xE008,
    0xE008
};

static const u16 Unk_020F2574[] = {
    0xD004,
    0xD004,
    0xD004,
    0xD004,
    0xD004,
    0xD004,
    0xD004,
    0xD004,
    0xE007,
    0xE007,
    0xE007,
    0xE008,
    0xE008
};

static const u16 *Unk_02100C40[] = {
    Unk_020F255A,
    Unk_020F255A,
    Unk_020F255A,
    Unk_020F255A,
    Unk_020F2574
};

static const u16 Unk_020F251C[] = {
    0x19,
    0x39,
    0x59,
    0x61,
    0x7A,
    0x9E,
    0xC6,
    0x0
};

static const u8 Unk_020F24E8[] = {
    0x28,
    0x28,
    0x28,
    0x28,
    0x29,
    0x29,
    0x29
};

static const charcode_t sKeyboardCharCodesUpper0[] = {
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

static const charcode_t sKeyboardCharCodesUpper1[] = {
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

static const charcode_t sKeyboardCharCodesUpper2[] = {
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

static const charcode_t sKeyboardCharCodesUpper3[] = {
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

static const charcode_t sKeyboardCharCodesUpper4[] = {
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

static const u16 sKeyboardCharCodesLower0[] = {
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

static const charcode_t sKeyboardCharCodesLower1[] = {
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

static const charcode_t sKeyboardCharCodesLower2[] = {
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

static const charcode_t sKeyboardCharCodesLower3[] = {
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

static const charcode_t sKeyboardCharCodesLower4[] = {
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

static const charcode_t sKeyboardCharCodesOthers0[] = {
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

static const charcode_t sKeyboardCharCodesOthers1[] = {
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

static const charcode_t sKeyboardCharCodesOthers2[] = {
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

static const charcode_t sKeyboardCharCodesOthers3[] = {
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

static const charcode_t sKeyboardCharCodesOthers4[] = {
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

static const u16 Unk_020F2718[] = {
    0xA2,
    0xA3,
    0xA4,
    0xA5,
    0xA6,
    0xA7,
    0xA8,
    0xA9,
    0xAA,
    0xAB,
    0x1,
    0xE1,
    0xE2,
    0xffff
};

static const u16 Unk_020F258E[] = {
    0xE3,
    0xE4,
    0xf9,
    0xf8,
    0xE5,
    0xE6,
    0xf5,
    0xf6,
    0xf7,
    0xE7,
    0x1,
    0xEE,
    0xef,
    0xffff
};

static const u16 Unk_020F26E0[] = {
    0xE8,
    0xE9,
    0xEA,
    0xEB,
    0xEC,
    0xED,
    0xf0,
    0xf1,
    0xf2,
    0xf3,
    0xf4,
    0x106,
    0x104,
    0xffff
};

static const u16 Unk_020F26C4[] = {
    0xff,
    0x100,
    0x101,
    0x102,
    0x103,
    0xfc,
    0xfa,
    0xfd,
    0xfb,
    0xfe,
    0x105,
    0x1,
    0x1,
    0xffff
};

static const u16 Unk_020F25E4[] = {
    0x107,
    0x108,
    0x109,
    0x10A,
    0x10B,
    0x10C,
    0x10D,
    0x10E,
    0x111,
    0x10f,
    0x110,
    0x1,
    0x1,
    0xffff
};

static const u16 Unk_020F2870[] = {
    0x121,
    0x122,
    0x123,
    0x124,
    0x125,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0xffff
};

static const u16 Unk_020F2894[] = {
    0x126,
    0x127,
    0x128,
    0x129,
    0x12A,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0xffff
};

static const u16 Unk_020F28B8[] = {
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0xffff
};

const charcode_t *sKeyboardCharCodes[][5] = {
    {
        sKeyboardCharCodesUpper0,
        sKeyboardCharCodesUpper1,
        sKeyboardCharCodesUpper2,
        sKeyboardCharCodesUpper3,
        sKeyboardCharCodesUpper4,
    },
    {
        sKeyboardCharCodesLower0,
        sKeyboardCharCodesLower1,
        sKeyboardCharCodesLower2,
        sKeyboardCharCodesLower3,
        sKeyboardCharCodesLower4,
    },
    {
        sKeyboardCharCodesOthers0,
        sKeyboardCharCodesOthers1,
        sKeyboardCharCodesOthers2,
        sKeyboardCharCodesOthers3,
        sKeyboardCharCodesOthers4,
    },
    {
        Unk_020F2718,
        Unk_020F258E,
        Unk_020F26E0,
        Unk_020F26C4,
        Unk_020F25E4,
    },
    {
        Unk_020F2870,
        Unk_020F2894,
        Unk_020F28B8,
        Unk_020F28B8,
        Unk_020F28B8,
    }
};

static const u16 Unk_020F2BBE[][3] = {
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

static const int Unk_020F24F0[] = {
    0x70,
    0x4C,
    0x48
};

static const u8 sKeyboardCharsBgColor[4] = {
    0x4,
    0x7,
    0xD,
    0xA
};

const u16 Unk_020F252C[] = {
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

const u16 Unk_020F2830[] = {
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

const u16 Unk_020F2542[] = {
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

static const u16 *dummy[] = {
    Unk_020F252C,
    Unk_020F2830,
    Unk_020F2542,
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

const ApplicationManagerTemplate gKeyboardAppTemplate = {
    .init = Keyboard_Init,
    .main = Keyboard_Main,
    .exit = Keyboard_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

static Keyboard *sKeyboardDummy;

static BOOL Keyboard_Init(ApplicationManager *appMan, int *state)
{
    Keyboard *keyboard;
    NARC *narc;

    switch (*state) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_KEYBOARD_APP, 0x20000 + 0x8000);

        keyboard = ApplicationManager_NewData(appMan, sizeof(Keyboard), HEAP_ID_KEYBOARD_APP);
        memset(keyboard, 0, sizeof(Keyboard));
        keyboard->bgConfig = BgConfig_New(HEAP_ID_KEYBOARD_APP);
        narc = NARC_ctor(NARC_INDEX_DATA__NAMEIN, HEAP_ID_KEYBOARD_APP);

        keyboard->strTemplate = StringTemplate_Default(HEAP_ID_KEYBOARD_APP);
        keyboard->namingScreenMsgLoader = MessageLoader_Init(
            MESSAGE_LOADER_BANK_HANDLE,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_NAMING_SCREEN,
            HEAP_ID_KEYBOARD_APP
        );
        keyboard->genericNamesMsgLoader = MessageLoader_Init(
            MESSAGE_LOADER_NARC_HANDLE,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_GENERIC_NAMES,
            HEAP_ID_KEYBOARD_APP
        );
        keyboard->battleStringsMsgLoader = MessageLoader_Init(
            MESSAGE_LOADER_NARC_HANDLE,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_BATTLE_STRINGS,
            HEAP_ID_KEYBOARD_APP
        );

        SetAutorepeat(4, 8);
        Keyboard_InitGraphicsBanks();
        Keyboard_InitBgs(keyboard->bgConfig);
        Keyboard_CopyParamsFromArgs(keyboard, (KeyboardArgs *)ApplicationManager_Args(appMan));
        Keyboard_LoadGraphicsFromNarc(keyboard, narc);
        Font_InitManager(FONT_SUBSCREEN, HEAP_ID_KEYBOARD_APP);
        SetVBlankCallback(Keyboard_VBlankCallback, NULL);
        sub_0208737C(keyboard, appMan);
        Font_UseImmediateGlyphAccess(FONT_SYSTEM, HEAP_ID_KEYBOARD_APP);
        Keyboard_TransferChars();
        sub_020877F4(keyboard, narc);
        Keyboard_InitSprites(keyboard);
        sub_02087FC0(keyboard, appMan, narc);
        sub_02088754(&keyboard->unk_41C[4], keyboard->unk_D8, keyboard->unk_158, keyboard->unk_15A, keyboard->unk_528, keyboard->unk_17C);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_52, SEQ_NONE, 0);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_KEYBOARD_APP);
        Keyboard_ToggleEngineLayers(TRUE);

        {
            gSystem.whichScreenIs3D = DS_SCREEN_SUB;
            GXLayers_SwapDisplay();
        }

        NARC_dtor(narc);
        (*state)++;
        break;
    case 1:
        keyboard = ApplicationManager_Data(appMan);

        if (keyboard->unk_00 == 1) {
            sub_02086B30(keyboard->unk_51C, keyboard->unk_524, keyboard->unk_04, keyboard->unk_08);
        }

        sKeyboardDummy = keyboard;
        keyboard->unk_628 = sub_0201567C(NULL, 1, 12, HEAP_ID_KEYBOARD_APP);

        (*state) = KBD_APP_STATE_WAIT_FADE_IN;
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

static BOOL Keyboard_Main(ApplicationManager *appMan, int *state)
{
    Keyboard *keyboard = ApplicationManager_Data(appMan);

    switch (*state) {
    case KBD_APP_STATE_WAIT_FADE_IN:
        if (IsScreenFadeDone()) {
            *state = KBD_APP_STATE_INITIAL_DELAY;
            keyboard->delayUpdateCounter = 0;
        }
        break;
    case KBD_APP_STATE_INITIAL_DELAY:
        keyboard->delayUpdateCounter++;

        // these just process the animations.
        sub_02088FD0(keyboard);
        Keyboard_UpdateSpriteAnimations(keyboard->spritesToUpdate, keyboard->miscSprites, keyboard->currentCharsIdx);

        if (keyboard->delayUpdateCounter > 5) {
            *state = KBD_APP_STATE_RUNNING;
            keyboard->delayUpdateCounter = 0;
        }
        break;
    case KBD_APP_STATE_RUNNING:
        switch (keyboard->state.main) {
        case KBD_STATE_PLACEHOLDER_4:
            *state = Keyboard_ProcessInputs(keyboard, *state);
            sub_02088FD0(keyboard);
            break;
        case KBD_STATE_PLACEHOLDER_5:
            sub_02087544(keyboard, appMan);
            Window_FillTilemap(&keyboard->unk_41C[9], 0x0f);
            Window_DrawMessageBoxWithScrollCursor(&keyboard->unk_41C[9], 0, 32 * 8, 10);
            keyboard->unk_4BC = Text_AddPrinterWithParams(&keyboard->unk_41C[9], FONT_MESSAGE, keyboard->unk_180, 0, 0, TEXT_SPEED_FAST, NULL);
            Window_CopyToVRAM(&keyboard->unk_41C[9]);
            keyboard->state.main = KBD_STATE_PLACEHOLDER_6;
            break;
        case KBD_STATE_PLACEHOLDER_6:
            if (Text_IsPrinterActive(keyboard->unk_4BC) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
                keyboard->spritesToUpdate[6]++;
                keyboard->delayUpdateCounter = 0;
                keyboard->state.main = KBD_STATE_PLACEHOLDER_7;
            }
            break;
        case KBD_STATE_PLACEHOLDER_7:
            keyboard->delayUpdateCounter++;

            if (keyboard->delayUpdateCounter > 30) {
                StartScreenFade(
                    FADE_SUB_THEN_MAIN,
                    FADE_TYPE_BRIGHTNESS_OUT,
                    FADE_TYPE_BRIGHTNESS_OUT,
                    COLOR_BLACK,
                    16,
                    1,
                    HEAP_ID_KEYBOARD_APP
                );
                *state = KBD_APP_STATE_WAIT_FADE_OUT;
            }
            break;
        }

        Keyboard_AnimateChangeChars(
            keyboard->bgConfig,
            &keyboard->unk_41C[0],
            &keyboard->state.changeChars,
            keyboard->currentCharsIdx,
            &keyboard->freeCharsBgLayer,
            keyboard->charsPosition,
            keyboard->miscSprites,
            keyboard->charData->pRawData
        );
        Keyboard_UpdateSpriteAnimations(keyboard->spritesToUpdate, keyboard->miscSprites, keyboard->currentCharsIdx);
        sub_02088514(&keyboard->unk_38);
        break;
    case KBD_APP_STATE_WAIT_FADE_OUT:
        if (IsScreenFadeDone()) {
            return TRUE;
        }
        break;
    }

    SpriteList_Update(keyboard->unk_188);

    return FALSE;
}

static enum KeyboardAppState Keyboard_ProcessInputs(Keyboard *keyboard, enum KeyboardAppState appState)
{
    Keyboard_ProcessDirectionInputs(keyboard);

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        if (!Sprite_GetDrawFlag(keyboard->miscSprites[8])) {
            Sprite_SetDrawFlag(keyboard->miscSprites[8], TRUE);
            return appState;
        }

        if (keyboard->unk_00 != 4) {
            keyboard->state.changeChars = CC_STATE_LOAD_GRAPHICS;
            keyboard->currentCharsIdx++;

            if (keyboard->currentCharsIdx >= 3) {
                keyboard->currentCharsIdx = 0;
            }

            keyboard->spritesToUpdate[keyboard->currentCharsIdx]++;

            sub_02088844(keyboard->unk_3A, keyboard->currentCharsIdx);
            Sound_PlayEffect(SEQ_SE_DP_SYU03);

            keyboard->unk_1C.unk_14 = 1;
        }

        keyboard->spritesToUpdate[keyboard->currentCharsIdx]++;

        sub_02088844(keyboard->unk_3A, keyboard->currentCharsIdx);
        Sound_PlayEffect(SEQ_SE_DP_SYU03);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        appState = sub_02088898(keyboard, keyboard->unk_3A[keyboard->unk_1C.unk_04][keyboard->unk_1C.unk_00], 1);
        keyboard->unk_1C.unk_14 = 1;
    } else if (keyboard->unk_62C == 1) {
        appState = sub_02088898(keyboard, keyboard->unk_3A[keyboard->unk_1C.unk_04][keyboard->unk_1C.unk_00], 0);
        keyboard->unk_1C.unk_14 = 0;
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        appState = sub_02088898(keyboard, 0xe001 + 6, 1);
    } else if (gSystem.pressedKeys & PAD_BUTTON_R) {
        appState = sub_02088898(keyboard, 0xe001 + 5, 1);
    }

    return appState;
}

static void sub_02086E6C(Keyboard *param0, KeyboardArgs *param1)
{
    if (param0->unk_00 == 0) {
        Strbuf *v0;

        if (param0->unk_04 == 0) {
            v0 = MessageLoader_GetNewStrbuf(param0->genericNamesMsgLoader, 0 + LCRNG_Next() % 18);
        } else if (param0->unk_04 == 1) {
            v0 = MessageLoader_GetNewStrbuf(param0->genericNamesMsgLoader, 18 + LCRNG_Next() % 18);
        }

        Strbuf_Copy(param1->textInputStr, v0);
        Strbuf_Free(v0);
        Strbuf_ToChars(param1->textInputStr, param1->unk_1C, 10);
    } else if (param0->unk_00 == 3) {
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

static BOOL Keyboard_Exit(ApplicationManager *appMan, int *unusedState)
{
    Keyboard *v0 = ApplicationManager_Data(appMan);
    KeyboardArgs *v1 = (KeyboardArgs *)ApplicationManager_Args(appMan);
    int v2;

    v0->unk_D8[v0->unk_158] = 0xffff;

    if (v0->unk_00 == 1) {
        u16 v3[10 + 1];
        Pokemon *v4;

        v4 = Pokemon_New(HEAP_ID_KEYBOARD_APP);
        Pokemon_InitWith(v4, v0->unk_04, 5, 10, 10, 10, 10, 10);
        Heap_Free(v4);
    }

    if ((v0->unk_158 == 0) || (CharCode_Compare(v0->unk_D8, v0->unk_118) == 0) || sub_02086F14(v0->unk_D8)) {
        sub_02086E6C(v0, v1);
    } else {
        CharCode_Copy(v0->unk_118, v0->unk_D8);
        CharCode_Copy(v1->unk_1C, v0->unk_D8);
        Strbuf_CopyChars(v1->textInputStr, v0->unk_D8);
    }

    Strbuf_Free(v0->unk_184);

    for (v2 = 0; v2 < 7; v2++) {
        SysTask_FinishAndFreeParam(v0->unk_400[v2]);
    }

    SpriteTransfer_ResetCharTransfer(v0->unk_328[0][0]);
    SpriteTransfer_ResetCharTransfer(v0->unk_328[1][0]);
    SpriteTransfer_ResetPlttTransfer(v0->unk_328[0][1]);
    SpriteTransfer_ResetPlttTransfer(v0->unk_328[1][1]);

    for (v2 = 0; v2 < 4; v2++) {
        SpriteResourceCollection_Delete(v0->unk_318[v2]);
    }

    SpriteList_Delete(v0->unk_188);
    RenderOam_Free();
    Heap_FreeExplicit(HEAP_ID_KEYBOARD_APP, v0->charDataAlloc);

    if (v0->unk_00 == 1) {
        Heap_FreeExplicit(HEAP_ID_KEYBOARD_APP, v0->unk_518);
        Heap_FreeExplicit(HEAP_ID_KEYBOARD_APP, v0->unk_520);
    }

    Bg_FreeTilemapBuffer(v0->bgConfig, BG_LAYER_SUB_3);
    CharTransfer_Free();
    PlttTransfer_Free();
    sub_0208765C(v0->bgConfig, v0->unk_41C);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    Font_Free(FONT_SUBSCREEN);

    if (v0->unk_180) {
        Strbuf_Free(v0->unk_180);
    }

    Strbuf_Free(v0->unk_178);
    Strbuf_Free(v0->unk_17C);
    MessageLoader_Free(v0->battleStringsMsgLoader);
    MessageLoader_Free(v0->genericNamesMsgLoader);
    MessageLoader_Free(v0->namingScreenMsgLoader);
    StringTemplate_Free(v0->strTemplate);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_KEYBOARD_APP);

    {
        gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
        GXLayers_SwapDisplay();
    }

    return TRUE;
}

KeyboardArgs *KeyboardArgs_Init(enum HeapId heapID, int param1, int param2, int maxChars, Options *options)
{
    KeyboardArgs *v0 = (KeyboardArgs *)Heap_AllocFromHeap(heapID, sizeof(KeyboardArgs));

    v0->unk_00 = param1;
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

void KeyboardArgs_Free(KeyboardArgs *param0)
{
    GF_ASSERT((param0->textInputStr) != NULL);
    GF_ASSERT((param0) != NULL);

    Strbuf_Free(param0->textInputStr);
    Heap_Free(param0);
}

static void Keyboard_VBlankCallback(void *unused)
{
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void Keyboard_CopyParamsFromArgs(Keyboard *keyboard, KeyboardArgs *keyboardArgs)
{
    keyboard->unk_00 = keyboardArgs->unk_00;
    keyboard->unk_04 = keyboardArgs->unk_04;
    keyboard->unk_08 = keyboardArgs->unk_08;
    keyboard->unk_0C = keyboardArgs->maxChars;
    keyboard->unk_10 = keyboardArgs->unk_10;
    keyboard->options = keyboardArgs->options;
}

static void Keyboard_InitGraphicsBanks(void)
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

static void Keyboard_InitBgs(BgConfig *bgConfig)
{
    {
        GraphicsModes graphicsModes = {
            .displayMode = GX_DISPMODE_GRAPHICS,
            .mainBgMode  = GX_BGMODE_0,
            .subBgMode   = GX_BGMODE_0,
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

    Keyboard_ToggleEngineLayers(FALSE);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_KEYBOARD_APP);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_KEYBOARD_APP);

    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd0Position(0, 0, 255, 64);
    G2S_BlendNone();
}

static void Keyboard_ToggleEngineLayers(BOOL enable)
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

static void sub_0208737C(Keyboard *keyboard, ApplicationManager *appMan)
{
    KeyboardArgs *keyboardArgs = (KeyboardArgs *)ApplicationManager_Args(appMan);

    keyboard->state.main = KBD_STATE_PLACEHOLDER_4;

    Keyboard_InitializeCharsPosition(keyboard->charsPosition, 0);
    Bg_SetOffset(keyboard->bgConfig, BG_LAYER_MAIN_0 + keyboard->freeCharsBgLayer, 0, keyboard->charsPosition[keyboard->freeCharsBgLayer].x);
    Bg_SetOffset(keyboard->bgConfig, BG_LAYER_MAIN_0 + keyboard->freeCharsBgLayer, 3, keyboard->charsPosition[keyboard->freeCharsBgLayer].y);
    Bg_SetOffset(keyboard->bgConfig, BG_LAYER_MAIN_0 + ((keyboard->freeCharsBgLayer) ^ 1), 0, keyboard->charsPosition[((keyboard->freeCharsBgLayer) ^ 1)].x);
    Bg_SetOffset(keyboard->bgConfig, BG_LAYER_MAIN_0 + ((keyboard->freeCharsBgLayer) ^ 1), 3, keyboard->charsPosition[((keyboard->freeCharsBgLayer) ^ 1)].y);

    keyboard->unk_118[0] = 0xffff;

    if (keyboardArgs->textInputStr) {
        Strbuf_ToChars(keyboardArgs->textInputStr, keyboard->unk_118, 32);
    }

    MI_CpuFill16(keyboard->unk_D8, 0x1, 32 * 2);

    if (keyboard->unk_00 == 1) {
        Pokemon *pkm;

        pkm = Pokemon_New(HEAP_ID_KEYBOARD_APP);
        Pokemon_InitWith(pkm, keyboard->unk_04, 5, 10, 10, 10, 10, 10);
        StringTemplate_SetSpeciesName(keyboard->strTemplate, 0, Pokemon_GetBoxPokemon(pkm));
        Heap_Free(pkm);
    }

    if (keyboardArgs->unk_44 != 0) {
        keyboard->unk_14 = 1;
    }

    keyboard->unk_178 = MessageUtil_ExpandedStrbuf(keyboard->strTemplate, keyboard->namingScreenMsgLoader, Unk_020F2850[keyboard->unk_00], HEAP_ID_KEYBOARD_APP);
    keyboard->unk_17C = MessageUtil_ExpandedStrbuf(keyboard->strTemplate, keyboard->namingScreenMsgLoader, 8, HEAP_ID_KEYBOARD_APP);
    keyboard->unk_184 = MessageLoader_GetNewStrbuf(keyboard->namingScreenMsgLoader, 7);
    keyboard->unk_158 = CharCode_Length(keyboard->unk_118);
    keyboard->unk_1C.unk_00 = 0;
    keyboard->unk_1C.unk_04 = 1;
    keyboard->unk_1C.unk_08 = -1;
    keyboard->unk_1C.unk_0C = -1;
    keyboard->unk_1C.unk_14 = 0;
    keyboard->unk_1C.unk_18 = 0;
    keyboard->unk_4E8 = 0xffffffff;
    keyboard->unk_4EC = 0;
    keyboard->unk_4F0 = 0;
    keyboard->unk_D8[keyboard->unk_0C] = 0xffff;

    {
        int v2;

        for (v2 = 0; v2 < 7; v2++) {
            keyboard->spritesToUpdate[v2] = 0;
        }

        switch (keyboard->unk_00) {
        case 4:
            keyboard->spritesToUpdate[3] = 1;
            break;
        default:
            keyboard->spritesToUpdate[0] = 1;
            break;
        }
    }
}

static void sub_02087544(Keyboard *param0, ApplicationManager *appMan)
{
    Strbuf *v0 = NULL;
    KeyboardArgs *v1 = (KeyboardArgs *)ApplicationManager_Args(appMan);

    if (v1->unk_44 != 0) {
        int v2, v3;

        v0 = Strbuf_Init(200, HEAP_ID_KEYBOARD_APP);
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

        if ((param0->unk_158 == 0) || sub_02086F14(param0->unk_D8)) {
            Pokemon *v4 = Pokemon_New(HEAP_ID_KEYBOARD_APP);

            Pokemon_InitWith(v4, param0->unk_04, 1, 0, 0, 0, 0, 0);
            StringTemplate_SetSpeciesName(param0->strTemplate, 0, Pokemon_GetBoxPokemon(v4));
            Heap_Free(v4);
        } else {
            param0->unk_D8[param0->unk_158] = 0xffff;
            Strbuf_CopyChars(v0, param0->unk_D8);
            StringTemplate_SetStrbuf(param0->strTemplate, 0, v0, 0, 0, 0);
        }

        param0->unk_180 = MessageUtil_ExpandedStrbuf(param0->strTemplate, param0->battleStringsMsgLoader, v1->unk_44, HEAP_ID_KEYBOARD_APP);
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
    Heap_FreeExplicit(HEAP_ID_KEYBOARD_APP, param0);
}

static void Keyboard_LoadGraphicsFromNarc(Keyboard *keyboard, NARC *narc)
{
    BgConfig *bgConfig = keyboard->bgConfig;

    Graphics_LoadPaletteFromOpenNARC(narc, 0, PAL_LOAD_MAIN_BG, 0, 16 * 3 * 2, HEAP_ID_KEYBOARD_APP);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__POKETCH, 12, PAL_LOAD_SUB_BG, 0, 16 * 2, HEAP_ID_KEYBOARD_APP);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        2,
        bgConfig,
        BG_LAYER_MAIN_2,
        0,
        (32 * 8) * 0x20,
        TRUE,
        HEAP_ID_KEYBOARD_APP
    );
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        4,
        bgConfig,
        BG_LAYER_MAIN_2,
        0,
        32 * 24 * 2,
        TRUE,
        HEAP_ID_KEYBOARD_APP
    );
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        2,
        bgConfig,
        BG_LAYER_MAIN_1,
        0,
        32 * 8 * 0x20,
        TRUE,
        HEAP_ID_KEYBOARD_APP
    );
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        6,
        bgConfig,
        BG_LAYER_MAIN_1,
        0,
        32 * 14 * 2,
        TRUE,
        HEAP_ID_KEYBOARD_APP
    );
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        7,
        bgConfig,
        BG_LAYER_MAIN_0,
        0,
        32 * 14 * 2,
        TRUE,
        HEAP_ID_KEYBOARD_APP
    );
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, 12 * 32, HEAP_ID_KEYBOARD_APP);
    LoadMessageBoxGraphics(
        keyboard->bgConfig,
        BG_LAYER_SUB_0,
        32 * 8,
        10,
        Options_Frame(keyboard->options),
        HEAP_ID_KEYBOARD_APP
    );
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_SUB_BG, 12 * 32, HEAP_ID_KEYBOARD_APP);

    keyboard->charDataAlloc = Graphics_GetCharDataFromOpenNARC(
        narc,
        16,
        TRUE,
        &keyboard->charData,
        HEAP_ID_KEYBOARD_APP
    );
}

void Keyboard_TransferChars(void)
{
    {
        CharTransferTemplate charTransferTemplate = {
            .maxTasks = 20,
            .sizeMain = 2048,
            .sizeSub  = 2048,
            .heapID   = HEAP_ID_KEYBOARD_APP,
        };

        CharTransfer_Init(&charTransferTemplate);
    }

    PlttTransfer_Init(20, HEAP_ID_KEYBOARD_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void sub_020877F4(Keyboard *param0, NARC *param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_KEYBOARD_APP);

    param0->unk_188 = SpriteList_InitRendering(40 + 4, &param0->unk_18C, HEAP_ID_KEYBOARD_APP);

    SetSubScreenViewRect(&param0->unk_18C, 0, 256 * FX32_ONE);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_318[v0] = SpriteResourceCollection_New(2, v0, HEAP_ID_KEYBOARD_APP);
    }

    param0->unk_328[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_318[0], param1, 10, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_KEYBOARD_APP);
    param0->unk_328[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_318[1], param1, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 9, HEAP_ID_KEYBOARD_APP);
    param0->unk_328[0][2] = SpriteResourceCollection_AddFrom(param0->unk_318[2], param1, 12, 1, 0, 2, HEAP_ID_KEYBOARD_APP);
    param0->unk_328[0][3] = SpriteResourceCollection_AddFrom(param0->unk_318[3], param1, 14, 1, 0, 3, HEAP_ID_KEYBOARD_APP);

    if (param0->unk_00 == 1) {
        param0->unk_518 = Graphics_GetCharData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconSpriteIndex(param0->unk_04, 0, param0->unk_08), 0, &param0->unk_51C, HEAP_ID_KEYBOARD_APP);
        DC_FlushRange(param0->unk_51C, 0x20 * 4 * 4);

        param0->unk_520 = Graphics_GetPlttData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), &param0->unk_524, HEAP_ID_KEYBOARD_APP);
        DC_FlushRange(param0->unk_524, 0x20 * 4);
    }

    param0->unk_328[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_318[0], param1, 11, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_KEYBOARD_APP);
    param0->unk_328[1][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_318[1], param1, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, HEAP_ID_KEYBOARD_APP);
    param0->unk_328[1][2] = SpriteResourceCollection_AddFrom(param0->unk_318[2], param1, 13, 1, 1, 2, HEAP_ID_KEYBOARD_APP);
    param0->unk_328[1][3] = SpriteResourceCollection_AddFrom(param0->unk_318[3], param1, 15, 1, 1, 3, HEAP_ID_KEYBOARD_APP);

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
    v1.y = FX32_ONE * sKeyboardSpriteAnimations[v2->unk_0C][1];
    v1.z = 0;

    Sprite_SetPosition(v2->unk_04, &v1);
}

static void Keyboard_InitSprites(Keyboard *keyboard)
{
    int i;

    SpriteResourcesHeader_Init(
        &keyboard->unk_348,
        0,
        0,
        0,
        0,
        0xffffffff,
        0xffffffff,
        0,
        1,
        keyboard->unk_318[0],
        keyboard->unk_318[1],
        keyboard->unk_318[2],
        keyboard->unk_318[3],
        NULL,
        NULL
    );
    SpriteResourcesHeader_Init(
        &keyboard->unk_36C,
        1,
        1,
        1,
        1,
        0xffffffff,
        0xffffffff,
        0,
        0,
        keyboard->unk_318[0],
        keyboard->unk_318[1],
        keyboard->unk_318[2],
        keyboard->unk_318[3],
        NULL,
        NULL
    );

    {
        AffineSpriteListTemplate v1;

        v1.list = keyboard->unk_188;
        v1.resourceData = &keyboard->unk_348;
        v1.position.x = FX32_CONST(32);
        v1.position.y = FX32_CONST(96);
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.priority = 1;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.heapID = HEAP_ID_KEYBOARD_APP;

        for (i = 0; i < 9; i++) {
            v1.position.x = FX32_ONE * sKeyboardSpriteAnimations[i][0];
            v1.position.y = FX32_ONE * sKeyboardSpriteAnimations[i][1];

            keyboard->miscSprites[i] = SpriteList_AddAffine(&v1);

            Sprite_SetAnimateFlag(keyboard->miscSprites[i], TRUE);
            Sprite_SetAnim(keyboard->miscSprites[i], sKeyboardSpriteAnimations[i][2]);
            Sprite_SetPriority(keyboard->miscSprites[i], sKeyboardSpriteAnimations[i][3]);
        }

        Sprite_SetDrawFlag(keyboard->miscSprites[4], FALSE);
        Sprite_SetDrawFlag(keyboard->miscSprites[8], FALSE);

        for (i = 0; i < 7; i++) {
            UnkStruct_020879DC *v2;

            keyboard->unk_400[i] = SysTask_StartAndAllocateParam(sub_020879DC, 16, 5, HEAP_ID_KEYBOARD_APP);
            v2 = SysTask_GetParam(keyboard->unk_400[i]);
            v2->unk_00 = keyboard->miscSprites[7];
            v2->unk_04 = keyboard->miscSprites[i];
            v2->unk_08 = FX32_ONE * sKeyboardSpriteAnimations[i][0];
            v2->unk_0C = i;
        }

        for (i = 0; i < keyboard->unk_0C; i++) {
            v1.position.x = FX32_ONE * ((10 * 8) + i * 12);
            v1.position.y = FX32_ONE * (4 * 8 + 7);

            keyboard->textCursorSprites[i] = SpriteList_AddAffine(&v1);

            Sprite_SetAnimateFlag(keyboard->textCursorSprites[i], TRUE);
            Sprite_SetAnim(keyboard->textCursorSprites[i], 43);
        }

        sub_02088E1C(keyboard->textCursorSprites, keyboard->unk_158, keyboard->unk_0C);
        sub_02087BE4(keyboard, &v1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_02087BE4(Keyboard *param0, AffineSpriteListTemplate *param1)
{
    param1->position.x = FX32_ONE * 24;
    param1->position.y = FX32_ONE * (16 - 8);
    param0->entitySprite[0] = SpriteList_AddAffine(param1);

    Sprite_SetAnimateFlag(param0->entitySprite[0], TRUE);

    switch (param0->unk_00) {
    case 0:
        if (param0->unk_04 == 0) {
            Sprite_SetAnim(param0->entitySprite[0], 48);
        } else {
            Sprite_SetAnim(param0->entitySprite[0], 49);
        }
        break;
    case 3:
        Sprite_SetAnim(param0->entitySprite[0], 51);
        break;
    case 6:
        Sprite_SetAnim(param0->entitySprite[0], 55);
        break;
    case 5:
        Sprite_SetAnim(param0->entitySprite[0], 54);
        break;
    case 4:
    case 7:
        Sprite_SetAnim(param0->entitySprite[0], 53);
        break;
    case 2:
        Sprite_SetAnim(param0->entitySprite[0], 47);
        break;
    case 1:
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

static void Keyboard_WiggleOverlayTask(SysTask *task, void *paramsPtr)
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

static void Keyboard_AnimateChangeChars(
    BgConfig *bgConfig,
    Window *window,
    enum ChangeCharsState *statePtr,
    int currentCharsIdx,
    enum BgLayer *bgLayerPtr,
    VecFx32 charsPosition[],
    Sprite **sprites,
    void *rawCharData
)
{
    enum BgLayer bgLayer = *bgLayerPtr;
    enum BgLayer oldBgLayer = bgLayer ^ 1;

    switch (*statePtr) {
    case CC_STATE_LOAD_GRAPHICS: {
        u16 bgColor = sKeyboardCharsBgColor[currentCharsIdx] | (sKeyboardCharsBgColor[currentCharsIdx] << 4);

        Graphics_LoadTilemapToBgLayer(
            NARC_INDEX_DATA__NAMEIN,
            6 + currentCharsIdx,
            bgConfig,
            bgLayer,
            0,
            32 * 14 * 2,
            TRUE,
            HEAP_ID_KEYBOARD_APP
        );
        Keyboard_InitializeCharsPosition(charsPosition, bgLayer);
        Keyboard_InitializeCharsGraphics(
            &window[bgLayer],
            bgColor,
            currentCharsIdx,
            TEXT_COLOR(14, 15, 0),
            rawCharData
        );
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
                Keyboard_WiggleOverlayTask,
                sizeof(OverlayWiggleParameters),
                0,
                HEAP_ID_KEYBOARD_APP
            );
            wiggleParam = SysTask_GetParam(wiggleTask);
            wiggleParam->overlaySprite = sprites[KBD_SPRITE_OVERLAY];
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
            Keyboard_UpdateCharsPriorities(bgConfig, *bgLayerPtr, charsPosition);
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

static void sub_02087FC0(Keyboard *param0, ApplicationManager *appMan, NARC *param2)
{
    Window_Add(param0->bgConfig, &param0->unk_41C[0], 0, 2, 1, 26, 12, 1, 32 * 8);
    Window_Add(param0->bgConfig, &param0->unk_41C[1], 1, 2, 1, 26, 12, 1, (32 * 8) + (26 * 12));

    if (param0->unk_00 == 4) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param2, 6 + 3, param0->bgConfig, 1, 0, 32 * 14 * 2, 1, HEAP_ID_KEYBOARD_APP);
        param0->currentCharsIdx = 4;
        sub_02088844(param0->unk_3A, 4);
        Keyboard_InitializeCharsGraphics(&param0->unk_41C[1], 0xa0a, 4, TEXT_COLOR(14, 15, 0), param0->charData->pRawData);
    } else {
        param0->currentCharsIdx = 0;
        sub_02088844(param0->unk_3A, 0);
        Keyboard_InitializeCharsGraphics(&param0->unk_41C[1], 0x404, 0, TEXT_COLOR(14, 15, 0), param0->charData->pRawData);
    }

    Window_Add(param0->bgConfig, &param0->unk_41C[2], 2, 7, 2, 22, 2, 0, ((32 * 8) + (26 * 12)) + (26 * 12));

    {
        int v0 = ((param0->unk_0C * 12) / 8) + 1;

        Window_Add(param0->bgConfig, &param0->unk_41C[3], 2, 10, 3, v0, 2, 0, (((32 * 8) + (26 * 12)) + (26 * 12)) + 44);
        Window_FillTilemap(&param0->unk_41C[3], 0x101);
        Window_Add(param0->bgConfig, &param0->unk_41C[8], 2, 10 + v0 - 1, 3, 7, 2, 0, ((((32 * 8) + (26 * 12)) + (26 * 12)) + 44) + 36);
        Window_FillTilemap(&param0->unk_41C[8], 0x101);
    }

    if (param0->unk_00 == 5) {
        sub_02087F78(&param0->unk_41C[8], param0->unk_00, param0->unk_184);
        Window_CopyToVRAM(&param0->unk_41C[8]);
    }

    Window_Add(param0->bgConfig, &param0->unk_41C[9], 4, 2, 19, 27, 4, 12, 120 + (2 * 2 * 3));
    Window_FillTilemap(&param0->unk_41C[9], 0xf0f);
    sub_02087F48(&param0->unk_41C[9], param0->unk_00, param0->unk_178);

    {
        KeyboardArgs *v1 = (KeyboardArgs *)ApplicationManager_Args(appMan);

        if (param0->unk_118[0] != 0xffff) {
            CharCode_Copy(param0->unk_D8, param0->unk_118);
            Keyboard_PrintChars(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
        }
    }

    {
        int v2;

        for (v2 = 0; v2 < 3; v2++) {
            Window_Add(param0->bgConfig, &param0->unk_41C[4 + v2], 2, 0, 0, 2, 2, 0, 120);
            Window_FillTilemap(&param0->unk_41C[4 + v2], 0);
        }

        Window_Add(param0->bgConfig, &param0->unk_41C[7], 2, 0, 0, 16, 2, 0, 120 + (2 * 2 * 3));
        Window_FillTilemap(&param0->unk_41C[7], 0);
    }
}

static void Keyboard_UpdateCharsPriorities(BgConfig *unused0, enum BgLayer oldBgLayer, VecFx32 unused1[])
{
    Bg_SetPriority(oldBgLayer, 1);
    Bg_SetPriority(oldBgLayer ^ 1, 2);
}

static void Keyboard_InitializeCharsPosition(VecFx32 charsPosition[], enum BgLayer freeBgLayer)
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

static void sub_02088298(Keyboard *param0, int param1)
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

static void Keyboard_ProcessDirectionInputs(Keyboard *keyboard)
{
    BOOL didInput = FALSE;
    int v1 = 0;
    BOOL v2 = FALSE;

    if (Sprite_GetDrawFlag(keyboard->miscSprites[8]) == 0) {
        v2 = TRUE;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(keyboard->miscSprites[8], TRUE);
        v1 = 1;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(keyboard->miscSprites[8], TRUE);
        v1 = 2;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(keyboard->miscSprites[8], TRUE);
        v1 = 3;
        didInput++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(keyboard->miscSprites[8], TRUE);
        v1 = 4;
        didInput++;
    }

    // start counts as a direction input, because it moves the cursor.
    if (gSystem.pressedKeys & PAD_BUTTON_START) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Sprite_SetDrawFlag(keyboard->miscSprites[8], TRUE);
        keyboard->unk_1C.unk_00 = 12;
        keyboard->unk_1C.unk_04 = 0;
        didInput++;
    }

    {
        if ((keyboard->unk_62C = sub_0208903C(keyboard)) == 1) {
            v1 = 0;
            didInput++;
        }
    }

    if (v2 == TRUE) {
        didInput = 0;
        Keyboard_MoveCursor(keyboard, v1);
    }

    if (didInput) {
        sub_02088298(keyboard, v1);
        Keyboard_MoveCursor(keyboard, v1);
    }
}

static void Keyboard_MoveCursor(Keyboard *param0, int param1)
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

        v1.x = FX32_ONE * Unk_020F251C[v2];
        v1.y = FX32_ONE * (88 - 20);

        Sprite_SetAnim(param0->miscSprites[8], Unk_020F24E8[v2]);
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

static void Keyboard_PrintChars(
    Window *window,
    const charcode_t *charCodes,
    int baseXOffset,
    int yOffset,
    int charSpacing,
    int renderDelay,
    TextColor textColor,
    void *rawCharData
)
{
    int i = 0, charWidth, charXOffset;
    u16 charBuffer[2];
    Strbuf *strBuf = Strbuf_Init(2, HEAP_ID_KEYBOARD_APP);

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
                12
            );
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
                NULL
            );
        }

        i++;
    }

    Strbuf_Free(strBuf);
}

static const u8 Unk_020F24D8[] = {
    0x60,
    0x68,
    0x50,
    0x58
};

static void *sub_02088654(Window *param0, Strbuf *param1, u8 param2, const TextColor param3)
{
    Text_AddPrinterWithParamsAndColor(param0, param2, param1, 0, 0, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    return param0->pixels;
}

static void sub_02088678(Window *param0, const u16 *param1, u8 *param2, Strbuf *param3)
{
    u16 v0[20 + 1], v1, v2;
    void *v3;
    Strbuf *v4;

    Window_FillTilemap(&param0[3], 0);
    v3 = sub_02088654(&param0[3], param3, FONT_SUBSCREEN, TEXT_COLOR(13, 14, 15));
    DC_FlushRange(v3, 0x20 * 4 * 16);

    for (v1 = 0; v1 < 4; v1++) {
        sub_02012C60(&param0[3], 4, 2, 4 * v1, 0, (char *)param2);
        DC_FlushRange(param2, 0x20 * 4 * 2);
        GXS_LoadOBJ(param2, Unk_020F24D8[v1] * 0x20, 0x20 * 4 * 2);
    }

    v4 = Strbuf_Init(20 + 1, HEAP_ID_KEYBOARD_APP);

    for (v1 = 0; v1 < 3; v1++) {
        v0[0] = param1[v1];
        v0[1] = 0xffff;

        Window_FillTilemap(&param0[v1], 0);
        Strbuf_CopyChars(v4, v0);

        v3 = sub_02088654(&param0[v1], v4, FONT_SUBSCREEN, TEXT_COLOR(13, 14, 15));

        DC_FlushRange(v3, 0x20 * 4);
        GXS_LoadOBJ(v3, Unk_020F24F0[v1] * 0x20, 0x20 * 4);
    }

    Strbuf_Free(v4);
}

static void sub_02088754(Window *param0, u16 *param1, int param2, u16 *param3, u8 *param4, Strbuf *param5)
{
    int v0, v1;
    const u16 *v2 = NULL;
    u16 v3;

    if (param2 == 0) {
        v3 = (0xd001 + 2);
    } else {
        v3 = param1[param2 - 1];
    }

    switch (v3) {
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
        v3 = 0x1;
        break;
    }

    for (v0 = 0; v0 < 3; v0++) {
        param3[v0] = 0x1;
    }

    param3[0] = v3;

    if (v3 != 0x1) {
        for (v0 = 0; v0 < sizeof(Unk_020F2BBE) / (3 * 2); v0++) {
            if (Unk_020F2BBE[v0][0] == v3) {
                for (v1 = 0; v1 < 3; v1++) {
                    param3[v1] = Unk_020F2BBE[v0][v1];
                }
                break;
            }

            if (Unk_020F2BBE[v0][2] == v3) {
                for (v1 = 0; v1 < 3; v1++) {
                    param3[v1] = Unk_020F2BBE[v0][v1];
                }
                break;
            }
        }
    }

    sub_02088678(param0, param3, param4, param5);
}

static void sub_02088844(u16 param0[][13], const int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 13; v0++) {
        param0[0][v0] = Unk_02100C40[param1][v0];
    }

    for (v1 = 0; v1 < 6 - 1; v1++) {
        for (v0 = 0; v0 < 13; v0++) {
            param0[1 + v1][v0] = sKeyboardCharCodes[param1][v1][v0];
        }
    }
}

static int sub_02088898(Keyboard *param0, u16 param1, int param2)
{
    if ((param1 == (0xd001 + 2)) || (param1 == (0xd001 + 3))) {
        param1 = 0x1;
    }

    if (param0->unk_00 == 4) {
        if ((param1 == (0xe001 + 1)) || (param1 == (0xe001 + 2)) || (param1 == (0xe001 + 3)) || (param1 == (0xe001 + 4))) {
            param1 = 0x1;
        }
    }

    if ((Sprite_GetDrawFlag(param0->miscSprites[8]) == 0) && (gSystem.touchPressed == 0)) {
        Sprite_SetDrawFlag(param0->miscSprites[8], TRUE);
        return KBD_APP_STATE_RUNNING;
    }

    switch (param1) {
    case 0xd001:
        if (sub_02088D08(42, 42 + 40, 1, 0xd001, param0->unk_D8, param0->unk_158)) {
            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            Keyboard_PrintChars(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case (0xd001 + 1):
        if (sub_02088D08(72, 72 + 10, 2, 0xd001 + 1, param0->unk_D8, param0->unk_158)) {
            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            Keyboard_PrintChars(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
        break;
    case (0xe001 + 5):
        if (sub_02088C9C(0, 72 + 10, param0->unk_D8, param0->unk_158)) {
            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            Keyboard_PrintChars(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
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
        if (param0->unk_158 != 0) {
            param0->unk_D8[param0->unk_158 - 1] = 0xffff;
            param0->unk_158--;

            Window_FillTilemap(&param0->unk_41C[3], 0x101);

            if (param0->unk_158 == 0) {
                Window_CopyToVRAM(&param0->unk_41C[3]);
            } else {
                Keyboard_PrintChars(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);
            }

            sub_02088754(&param0->unk_41C[4], param0->unk_D8, param0->unk_158, param0->unk_15A, param0->unk_528, param0->unk_17C);
            sub_02088E1C(param0->textCursorSprites, param0->unk_158, param0->unk_0C);

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
            StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 16, 1, HEAP_ID_KEYBOARD_APP);
            return KBD_APP_STATE_WAIT_FADE_OUT;
        } else {
            param0->state.main = KBD_STATE_PLACEHOLDER_5;
        }
        break;
    default:
        if ((param0->currentCharsIdx == 4) && (param1 == 0x1)) {
            return KBD_APP_STATE_RUNNING;
        }

        if (param0->unk_158 != param0->unk_0C) {
            param0->unk_D8[param0->unk_158] = param1;

            Window_FillTilemap(&param0->unk_41C[3], 0x101);
            Keyboard_PrintChars(&param0->unk_41C[3], param0->unk_D8, 0, 0, 12, TEXT_SPEED_INSTANT, TEXT_COLOR(14, 15, 1), NULL);

            param0->unk_158++;

            sub_02088E1C(param0->textCursorSprites, param0->unk_158, param0->unk_0C);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            Sprite_SetDrawFlag(param0->miscSprites[8], TRUE);
            Sprite_SetExplicitOAMMode(param0->miscSprites[8], GX_OAM_MODE_XLU);

            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 8, 8);
            Sprite_SetAnim(param0->miscSprites[8], 60);

            param0->unk_1C.unk_18 = 1;

            sub_02088754(&param0->unk_41C[4], param0->unk_D8, param0->unk_158, param0->unk_15A, param0->unk_528, param0->unk_17C);
        }
    }

    return KBD_APP_STATE_RUNNING;
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
            if ((Unk_020F2BBE[v0][v1] == v2) && (v2 != 0x1)) {
                param2[param3 - 1] = sub_02088C7C(Unk_020F2BBE[v0], v1);
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
        if (Unk_020F2BBE[v0][0] == v1) {
            param4[param5 - 1] = Unk_020F2BBE[v0][param2];
            return 1;
        }
    }

    for (v0 = param0; v0 < param1; v0++) {
        if (Unk_020F2BBE[v0][param2] == v1) {
            param4[param5 - 1] = Unk_020F2BBE[v0][0];
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

static const u8 sKeyboardCharsAltBgColor[] = {
    0x3,
    0x6,
    0xC,
    0x9,
    0x9
};

static void Keyboard_InitializeCharsGraphics(
    Window *window,
    u16 bgColor,
    int currentCharsIdx,
    TextColor textColor,
    void *rawCharData
)
{
    int i;

    Window_FillTilemap(window, bgColor);

    // fill checkerboard
    for (i = 0; i < 6; i++) {
        Window_FillRectWithColor(window, sKeyboardCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 0, 16, 19);
        Window_FillRectWithColor(window, sKeyboardCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 19 * 2, 16, 19);
        Window_FillRectWithColor(window, sKeyboardCharsAltBgColor[currentCharsIdx], 16 + 32 * i, 19 * 4, 16, 19);
    }
    for (i = 0; i < 7; i++) {
        Window_FillRectWithColor(window, sKeyboardCharsAltBgColor[currentCharsIdx], 32 * i, 19, 16, 19);
        Window_FillRectWithColor(window, sKeyboardCharsAltBgColor[currentCharsIdx], 32 * i, 19 * 3, 16, 19);
    }

    for (i = 0; i < 5; i++) {
        Keyboard_PrintChars(
            window,
            sKeyboardCharCodes[currentCharsIdx][i],
            0,
            i * 19 + 4,
            16,
            TEXT_SPEED_NO_TRANSFER,
            textColor,
            rawCharData
        );
    }

    Window_CopyToVRAM(window);
}

static void Keyboard_UpdateSpriteAnimations(BOOL spritesToUpdate[], Sprite **sprites, int unused)
{
    int i, j;

    for (i = 0; i < 3; i++) {
        if (spritesToUpdate[i]) {
            for (j = 0; j < 3; j++) {
                Sprite_SetAnim(sprites[j], sKeyboardSpriteAnimations[j][2]);
            }

            Sprite_SetAnim(sprites[i], sKeyboardSpriteAnimations[i][2] - 3);
            break;
        }
    }

    for (i = 5; i < 7; i++) {
        if (spritesToUpdate[i]) {
            Sprite_SetAnim(sprites[i], sKeyboardSpriteAnimations[i][2] + 1);
        }
    }

    for (i = 0; i < 7; i++) {
        spritesToUpdate[i] = FALSE;
    }
}

static void sub_02088FD0(Keyboard *param0)
{
    if (!Sprite_IsAnimated(param0->miscSprites[8])) {
        if (param0->unk_158 == param0->unk_0C) {
            param0->unk_1C.unk_00 = 12;
            param0->unk_1C.unk_04 = 0;
            Sprite_SetAnim(param0->miscSprites[8], 39);
        } else {
            Sprite_SetAnim(param0->miscSprites[8], 39);
        }

        if (param0->unk_1C.unk_14 == 0) {
            Sprite_SetDrawFlag(param0->miscSprites[8], FALSE);
        } else {
            Keyboard_MoveCursor(param0, 0);
        }

        param0->unk_1C.unk_18 = 0;

        Sprite_SetExplicitOAMMode(param0->miscSprites[8], GX_OAM_MODE_NORMAL);
    }
}

static const UnkStruct_020F2A14 Unk_020F2A14[] = {
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

static BOOL sub_0208903C(Keyboard *param0)
{
    int v0, v1 = 0;
    u8 v2, v3, v4, v5, v6, v7;

    if (param0->unk_00 == 4) {
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
