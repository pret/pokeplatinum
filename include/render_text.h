#ifndef POKEPLATINUM_UNK_02002328_H
#define POKEPLATINUM_UNK_02002328_H

#include "struct_defs/struct_0205AA50.h"

#include "charcode.h"
#include "strbuf.h"

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
    u8 dummy1B;
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
    u8 textSpeedLow : 7;
    u8 textSpeedHigh : 1;
    u8 delayCounter;
    u8 scrollDistance;
    u8 id;
    u8 callbackResult;
    u16 callbackParam;
    void *iconGfx;
} TextPrinter;

int sub_02002328(TextPrinter *param0);
void sub_020027A8(u16 param0);
void sub_020027B4(TextPrinter *param0);
void sub_020027E0(TextPrinter *param0);
void sub_02002968(TextPrinter *param0);
BOOL sub_02002A44(TextPrinter *param0);
BOOL sub_02002A80(TextPrinter *param0);
BOOL sub_02002AA4(TextPrinter *param0);
void sub_02002AC8(int param0);
void sub_02002AE4(int param0);
void sub_02002B20(int param0);
u8 sub_02002B3C(void);
void sub_02002B4C(void);
u8 sub_02002B5C(void);
void sub_02002B6C(void);

#endif // POKEPLATINUM_UNK_02002328_H
