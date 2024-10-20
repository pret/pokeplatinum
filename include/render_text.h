#ifndef POKEPLATINUM_RENDER_TEXT_H
#define POKEPLATINUM_RENDER_TEXT_H

#include "struct_defs/struct_0205AA50.h"

#include "charcode.h"
#include "strbuf.h"

#define COLOR_CACHE_OFFSET                100
#define COLOR_CACHE_RANGE                 7
#define COLOR_CACHE_MAX                   (COLOR_CACHE_OFFSET + COLOR_CACHE_RANGE)
#define COLOR_CACHE_IS_VALID(param)       (param >= COLOR_CACHE_OFFSET && param < COLOR_CACHE_MAX)
#define CHAR_CONTROL_SET_COLOR_FROM_CACHE 0xFF

typedef struct TextGlyph {
    u8 gfx[128];
    u8 width;
    u8 height;
} TextGlyph;

union StringToPrint {
    const charcode_t *raw;
    const Strbuf *strbuf;
};

typedef struct TextPrinterTemplate {
    union StringToPrint toPrint;
    Window *window;
    u8 dummy08;
    u8 fontID;
    u8 x;
    u8 y;
    u16 currX;
    u16 currY;
    u16 letterSpacing;
    u16 lineSpacing;
    u8 dummy14;
    u8 fgColor;
    u8 bgColor;
    u8 shadowColor;
    u16 glyphTable;
    u8 dummy1A;
    u8 cacheColor;
} TextPrinterTemplate;

typedef BOOL (*TextPrinterCallback)(TextPrinterTemplate *, u16);

typedef struct TextPrinterSubstruct {
    u8 fontID : 4;
    u8 speedUp : 1;
    u8 dummy : 3;
    u8 scrollArrowDelay : 5;
    u8 scrollArrowYPosIdx : 2;
    u8 fontIDSet : 1;
    u8 autoScrollDelay : 8;
} TextPrinterSubstruct;

typedef struct TextPrinter {
    TextPrinterTemplate template;
    TextPrinterCallback callback;
    u8 substruct[7];
    u8 active;
    u8 state;
    u8 textSpeedBottom : 7;
    u8 textSpeedTop : 1;
    u8 delayCounter;
    u8 scrollDistance;
    u8 id;
    u8 callbackResult;
    u16 callbackParam;
    void *iconGfx;
} TextPrinter;

enum RenderResult {
    RENDER_PRINT,
    RENDER_FINISH,
    RENDER_REPEAT, // Run render function again, if e.g. a control code is encountered.
    RENDER_UPDATE,
};

enum RenderResult RenderText(TextPrinter *printer);
void TextPrinter_SetScrollArrowBaseTile(u16 tile);
void TextPrinter_InitScrollArrowAnim(TextPrinter *printer);
void TextPrinter_DrawScrollArrow(TextPrinter *printer);
void TextPrinter_ClearScrollArrow(TextPrinter *printer);
BOOL TextPrinter_WaitAutoMode(TextPrinter *printer);
BOOL TextPrinter_WaitWithScrollArrow(TextPrinter *printer);
BOOL TextPrinter_Wait(TextPrinter *printer);
void RenderControlFlags_SetCanABSpeedUpPrint(BOOL val);
void RenderControlFlags_SetAutoScrollFlags(int flags);
void RenderControlFlags_SetSpeedUpOnTouch(BOOL val);
u8 RenderControlFlags_GetSpeedUpBattle(void);
void RenderControlFlags_ZeroSpeedUpBattle(void);
u8 RenderControlFlags_GetWaitBattle(void);
void RenderControlFlags_ZeroWaitBattle(void);

#endif // POKEPLATINUM_RENDER_TEXT_H
