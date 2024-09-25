#include "render_text.h"

#include <nitro.h>
#include <string.h>

#include "charcode.h"
#include "core_sys.h"
#include "render_text.h"
#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"

typedef struct RenderControlFlags {
    u8 canABSpeedUpPrint : 1;
    u8 : 1;
    u8 autoScroll : 1;
    u8 : 1;
    u8 speedUpOnTouch : 1;
    u8 speedUpAutoScroll : 1;
    u8 speedUpBattle : 1;
    u8 waitBattle : 1;
} RenderControlFlags;

static RenderControlFlags Unk_02101D44;

int sub_02002328(TextPrinter *param0)
{
    const TextGlyph *v0;
    TextPrinterSubstruct *v1;
    int v2, v3;
    u16 v4;

    v1 = (TextPrinterSubstruct *)&(param0->substruct[0]);

    switch (param0->state) {
    case 0:
        if (((gCoreSys.heldKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) && (v1->speedUp)) || ((gCoreSys.touchHeld) && (Unk_02101D44.speedUpOnTouch))) {
            param0->delayCounter = 0;

            if (param0->textSpeedLow != 0) {
                Unk_02101D44.speedUpBattle = 1;
            }
        }

        if ((param0->delayCounter) && (param0->textSpeedLow)) {
            (param0->delayCounter)--;

            if (Unk_02101D44.canABSpeedUpPrint) {
                if ((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || ((gCoreSys.touchPressed) && (Unk_02101D44.speedUpOnTouch))) {
                    v1->speedUp = 1;
                    param0->delayCounter = 0;
                }
            }

            return 3;
        }

        param0->delayCounter = param0->textSpeedLow;
        v4 = *(u16 *)(param0->template.toPrint.raw);
        param0->template.toPrint.raw++;

        GF_ASSERT(v4 != 0xF100);

        switch (v4) {
        case 0xffff:
            return 1;
        case 0xe000:
            param0->template.currX = param0->template.x;
            param0->template.currY += (sub_02002DF8(param0->template.fontID, 1) + param0->template.lineSpacing);
            return 2;
        case 0xf0fd:
            param0->template.toPrint.raw++;
            return 2;
        case 0xfffe:
            param0->template.toPrint.raw--;
            v4 = CharCode_FormatArgType(param0->template.toPrint.raw);

            switch (v4) {
            case 0xff00: {
                u16 v5 = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);

                if (v5 == 255) {
                    u8 v6 = param0->template.dummy1B;

                    param0->template.dummy1B = (param0->template.fgColor - 1) / 2 + 100;

                    if (!(v6 >= 100 && v6 < (100 + 7))) {
                        break;
                    }

                    v5 = v6 - 100;
                } else if (v5 >= 100) {
                    param0->template.dummy1B = v5;
                    break;
                }

                param0->template.fgColor = 1 + (v5 * 2);
                param0->template.shadowColor = 1 + (v5 * 2) + 1;

                sub_0201D9FC(param0->template.fgColor, param0->template.bgColor, param0->template.shadowColor);
            } break;
            case 0x200: {
                u16 v7 = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);
                sub_0201DB8C(param0, param0->template.currX, param0->template.currY, v7);
            }

                if (param0->textSpeedHigh != 0) {
                    sub_0201A954(param0->template.window);
                }
                break;
            case 0x201: {
                param0->delayCounter = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);
                param0->template.toPrint.raw = CharCode_SkipFormatArg(param0->template.toPrint.raw);
                param0->state = 6;
                return 3;
            } break;
            case 0x202:
                param0->callbackParam = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);
                param0->template.toPrint.raw = CharCode_SkipFormatArg(param0->template.toPrint.raw);
                return 3;
            case 0x203:
                param0->template.currX = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);
                break;
            case 0x204:
                param0->template.currY = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);
                break;
            case 0xff01: {
                u16 v8 = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);

                switch (v8) {
                case 0x64:
                    param0->template.glyphTable = 0;
                    param0->template.dummy1A = 0;
                    break;
                case 0xc8:
                    param0->template.glyphTable = 0xfffc;
                    param0->template.dummy1A = 0;
                    break;
                }
            } break;
            case 0xfe06: {
                u16 v9 = CharCode_FormatArgParam(param0->template.toPrint.raw, 0);

                switch (v9) {
                case 0xfe01:
                    param0->state = 2;
                    sub_020027B4(param0);
                    param0->template.toPrint.raw = CharCode_SkipFormatArg(param0->template.toPrint.raw);
                    return 3;
                case 0xfe00:
                    param0->state = 3;
                    sub_020027B4(param0);
                    param0->template.toPrint.raw = CharCode_SkipFormatArg(param0->template.toPrint.raw);
                    return 3;
                }
            } break;
            }

            param0->template.toPrint.raw = CharCode_SkipFormatArg(param0->template.toPrint.raw);
            return 2;
        case 0x25bc:
            param0->state = 2;
            sub_020027B4(param0);
            return 3;
        case 0x25bd:
            param0->state = 3;
            sub_020027B4(param0);
            return 3;
        }

        v0 = sub_02002CFC(v1->fontID, v4);

        sub_0201AED0(param0->template.window, v0->gfx, v0->width, v0->height, param0->template.currX, param0->template.currY, param0->template.glyphTable);
        param0->template.currX += (v0->width + param0->template.letterSpacing);

        return 0;
    case 1:
        if (sub_02002AA4(param0)) {
            sub_02002968(param0);
            param0->state = 0;
        }

        return 3;
    case 2:
        if (sub_02002A80(param0)) {
            sub_02002968(param0);
            BGL_FillWindow(param0->template.window, param0->template.bgColor);

            param0->template.currX = param0->template.x;
            param0->template.currY = param0->template.y;
            param0->state = 0;
        }

        return 3;
    case 3:
        if (sub_02002A80(param0)) {
            sub_02002968(param0);

            param0->scrollDistance = (sub_02002DF8(param0->template.fontID, 1) + param0->template.lineSpacing);
            param0->template.currX = param0->template.x;
            param0->state = 4;
        }

        return 3;
    case 4:
        if (param0->scrollDistance) {
            v3 = 0x4;

            if (param0->scrollDistance < v3) {
                sub_0201C04C(param0->template.window, 0, param0->scrollDistance, (param0->template.bgColor << 4) | param0->template.bgColor);
                param0->scrollDistance = 0;
            } else {
                sub_0201C04C(param0->template.window, 0, v3, (param0->template.bgColor << 4) | param0->template.bgColor);
                param0->scrollDistance -= v3;
            }

            sub_0201A954(param0->template.window);
        } else {
            param0->state = 0;
        }

        return 3;
    case 5:
        param0->state = 0;
        return 3;
    case 6:
        if (param0->delayCounter) {
            param0->delayCounter--;
        } else {
            param0->state = 0;
        }

        return 3;
    }

    return 1;
}

static u16 Unk_02101D46 = 0;

void sub_020027A8(u16 param0)
{
    Unk_02101D46 = param0;
}

void sub_020027B4(TextPrinter *param0)
{
    TextPrinterSubstruct *v0;

    v0 = (TextPrinterSubstruct *)&(param0->substruct[0]);

    if (Unk_02101D44.autoScroll) {
        v0->autoScrollDelay = 0;
    } else {
        v0->scrollArrowYPosIdx = 0;
        v0->scrollArrowDelay = 0;
    }
}

static const u8 Unk_020E4CD0[] = {
    0x0,
    0x1,
    0x2,
    0x1
};

void sub_020027E0(TextPrinter *param0)
{
    TextPrinterSubstruct *v0;
    void *v1;

    v0 = (TextPrinterSubstruct *)&(param0->substruct[0]);

    if (Unk_02101D44.autoScroll) {
        return;
    }

    if (v0->scrollArrowDelay) {
        v0->scrollArrowDelay--;
        return;
    }

    {
        u16 v2;
        u8 v3, v4, v5, v6;

        v3 = sub_0201C290(param0->template.window);
        v4 = sub_0201C29C(param0->template.window);
        v5 = sub_0201C2A0(param0->template.window);
        v6 = sub_0201C294(param0->template.window);
        v2 = Unk_02101D46;

        sub_02019CB8(param0->template.window->unk_00, v3, v2 + 18 + (Unk_020E4CD0[v0->scrollArrowYPosIdx] * 4), v4 + v6 + 1, v5 + 2, 1, 1, 16);
        sub_02019CB8(param0->template.window->unk_00, v3, v2 + 19 + (Unk_020E4CD0[v0->scrollArrowYPosIdx] * 4), v4 + v6 + 2, v5 + 2, 1, 1, 16);
        sub_02019CB8(param0->template.window->unk_00, v3, v2 + 20 + (Unk_020E4CD0[v0->scrollArrowYPosIdx] * 4), v4 + v6 + 1, v5 + 3, 1, 1, 16);
        sub_02019CB8(param0->template.window->unk_00, v3, v2 + 21 + (Unk_020E4CD0[v0->scrollArrowYPosIdx] * 4), v4 + v6 + 2, v5 + 3, 1, 1, 16);
        sub_02019448(param0->template.window->unk_00, v3);

        v0->scrollArrowDelay = 8;
        v0->scrollArrowYPosIdx++;
    }
}

void sub_02002968(TextPrinter *param0)
{
    u16 v0;
    u8 v1, v2, v3, v4;

    v1 = sub_0201C290(param0->template.window);
    v2 = sub_0201C29C(param0->template.window);
    v3 = sub_0201C2A0(param0->template.window);
    v4 = sub_0201C294(param0->template.window);
    v0 = Unk_02101D46;

    sub_02019CB8(param0->template.window->unk_00, v1, v0 + 10, v2 + v4 + 1, v3 + 2, 1, 2, 16);
    sub_02019CB8(param0->template.window->unk_00, v1, v0 + 11, v2 + v4 + 2, v3 + 2, 1, 2, 16);
    sub_02019448(param0->template.window->unk_00, v1);
}

static BOOL sub_020029FC(TextPrinter *param0)
{
    if ((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || ((gCoreSys.touchPressed) && (Unk_02101D44.speedUpOnTouch))) {
        Sound_PlayEffect(1500);
        Unk_02101D44.waitBattle = 1;
        return 1;
    }

    return 0;
}

BOOL sub_02002A44(TextPrinter *param0)
{
    TextPrinterSubstruct *v0;
    u16 v1;

    v0 = (TextPrinterSubstruct *)&(param0->substruct[0]);
    v1 = 100;

    if (v0->autoScrollDelay == v1) {
        return 1;
    }

    v0->autoScrollDelay++;

    if (Unk_02101D44.speedUpAutoScroll) {
        return sub_020029FC(param0);
    }

    return 0;
}

BOOL sub_02002A80(TextPrinter *param0)
{
    BOOL v0 = 0;

    if (Unk_02101D44.autoScroll) {
        v0 = sub_02002A44(param0);
    } else {
        sub_020027E0(param0);
        v0 = sub_020029FC(param0);
    }

    return v0;
}

BOOL sub_02002AA4(TextPrinter *param0)
{
    u8 v0 = 0;

    if (Unk_02101D44.autoScroll) {
        v0 = sub_02002A44(param0);
    } else {
        v0 = sub_020029FC(param0);
    }

    return v0;
}

void sub_02002AC8(int param0)
{
    Unk_02101D44.canABSpeedUpPrint = param0;
}

void sub_02002AE4(int param0)
{
    Unk_02101D44.autoScroll = (param0 & 1);
    Unk_02101D44.speedUpAutoScroll = ((param0 >> 1) & 1);
}

void sub_02002B20(int param0)
{
    Unk_02101D44.speedUpOnTouch = param0;
}

u8 sub_02002B3C(void)
{
    return Unk_02101D44.speedUpBattle;
}

void sub_02002B4C(void)
{
    Unk_02101D44.speedUpBattle = 0;
}

u8 sub_02002B5C(void)
{
    return Unk_02101D44.waitBattle;
}

void sub_02002B6C(void)
{
    Unk_02101D44.waitBattle = 0;
}
