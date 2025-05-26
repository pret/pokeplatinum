#include "screen_fade_funcs.h"

#include <nitro.h>
#include <string.h>

#include "enums.h"
#include "hardware_window.h"
#include "heap.h"
#include "screen_fade.h"
#include "string.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
} UnkStruct_02010318;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_020101B0;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_0200FD8C;

typedef struct {
    UnkStruct_020101B0 unk_00;
    UnkStruct_020101B0 unk_10;
    UnkStruct_020101B0 unk_20;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    HardwareWindowSettings *unk_48;
} UnkStruct_02010EA4;

typedef struct {
    UnkStruct_0200FD8C unk_00;
    UnkStruct_0200FD8C unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_0200F980;

typedef struct {
    UnkStruct_02010EA4 unk_00;
    UnkStruct_02010EA4 unk_4C;
} UnkStruct_02010D94;

typedef struct {
    short unk_00[2][192];
    short unk_300[2][192];
    int unk_600;
} UnkStruct_02010FC0;

typedef struct {
    UnkStruct_02010FC0 *unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_02010588;

typedef struct {
    UnkStruct_02010588 unk_00;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int heapID;
    int unk_2C;
    HardwareWindowSettings *unk_30;
    ScreenFadeHBlanks *unk_34;
} UnkStruct_0201109C;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_0200FB7C;

typedef struct {
    UnkStruct_02010588 unk_00;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    HardwareWindowSettings *unk_24;
    ScreenFadeHBlanks *unk_28;
    int heapID;
} UnkStruct_02011360;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_0200FC2C;

typedef struct {
    UnkStruct_02010588 unk_00;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    HardwareWindowSettings *unk_28;
    ScreenFadeHBlanks *unk_2C;
    int heapID;
} UnkStruct_02011568;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_0200FD34;

typedef struct {
    UnkStruct_020101B0 unk_00;
    UnkStruct_020101B0 unk_10;
    UnkStruct_020101B0 unk_20;
} UnkStruct_0201184C_sub1;

typedef struct {
    UnkStruct_02010588 unk_00;
    UnkStruct_0201184C_sub1 *unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    HardwareWindowSettings *unk_24;
    ScreenFadeHBlanks *unk_28;
    int heapID;
} UnkStruct_0201184C;

typedef struct {
    const UnkStruct_0200FD8C *unk_00;
    const UnkStruct_0200FD8C *unk_04;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u16 unk_0E;
} UnkStruct_02011738;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_02011C7C;

typedef struct {
    UnkStruct_02010588 unk_00;
    UnkStruct_02011C7C unk_0C;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int heapID;
    HardwareWindowSettings *unk_30;
    ScreenFadeHBlanks *unk_34;
} UnkStruct_02011AFC;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
} UnkStruct_0200FEA4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_02011F2C;

typedef struct {
    UnkStruct_02010588 unk_00;
    UnkStruct_02011F2C unk_0C;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int heapID;
    HardwareWindowSettings *unk_30;
    ScreenFadeHBlanks *unk_34;
} UnkStruct_02011E04;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
} UnkStruct_0200FF30;

typedef struct {
    u8 unk_00[192];
    u8 unk_C0[192];
    int unk_180;
} UnkStruct_02012174;

typedef struct {
    UnkStruct_02012174 unk_00[2];
    u8 unk_308;
    u8 unk_309;
} UnkStruct_0201076C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
} UnkStruct_0200F898;

typedef struct {
    UnkStruct_0201076C unk_00;
    const UnkStruct_0200F898 *unk_30C;
    int unk_310;
    int unk_314;
    int unk_318;
    int unk_31C;
    int unk_320;
    int unk_324;
    int heapID;
    HardwareWindowSettings *unk_32C;
    ScreenFadeHBlanks *unk_330;
} UnkStruct_020120D4;

typedef struct {
    const UnkStruct_0200F898 *unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_0200FE6C;

typedef struct {
    UnkStruct_0200F980 unk_00;
    UnkStruct_0200FE6C unk_0C;
    fx32 unk_14;
} UnkStruct_0201006C;

typedef struct {
    UnkStruct_02010EA4 unk_00;
    UnkStruct_020120D4 unk_4C;
    UnkStruct_0201006C *unk_380;
    u8 unk_384;
    u8 unk_385;
    u8 unk_386;
    u8 unk_387;
} UnkStruct_02012290;

static fx32 sub_020100E0(int param0);
static int sub_020100FC(int param0, int param1);
static void sub_02010124(int param0, int *param1, int param2, int param3);
static int sub_02010178(int param0, int param1);
static int sub_02010190(int param0, int param1, int param2);
static int sub_020101A0(int param0, int param1);
static void sub_020101B0(UnkStruct_020101B0 *param0, UnkStruct_020101B0 *param1);
static void sub_020101D4(UnkStruct_020101B0 *param0, UnkStruct_020101B0 *param1, UnkStruct_020101B0 *param2, const UnkStruct_0200FD8C *param3, const UnkStruct_0200FD8C *param4, int param5);
static void sub_02010658(int param0, HardwareWindowSettings *param1, int param2);
static void sub_0201035C(void *param0);
static void sub_02010588(UnkStruct_02010588 *param0, int param1, int param2, int heapID);
static void sub_020105EC(UnkStruct_02010588 *param0);
static void sub_020105F4(UnkStruct_02010588 *param0);
static UnkStruct_02010FC0 *sub_02010604(UnkStruct_02010588 *param0, int param1);
static void sub_02010624(SysTask *param0, void *param1);
static void sub_020106A8(HardwareWindowSettings *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void sub_02010710(HardwareWindowSettings *param0, int param1, int param2, int param3);
static void sub_02010728(UnkStruct_0201076C *param0, int param1, int param2, int param3, int param4);
static void sub_0201076C(UnkStruct_0201076C *param0);
static void sub_02010784(ScreenFadeHBlanks *param0, UnkStruct_0201076C *param1, u32 heapID);
static void sub_0201079C(ScreenFadeHBlanks *param0, UnkStruct_0201076C *param1, u32 param2);
static void sub_020107AC(SysTask *param0, void *param1);
static void sub_020107D8(void *param0);
static void sub_02010238(ScreenFade *param0, int param1);
static BOOL sub_020102D8(ScreenFade *param0);
static BOOL sub_02010318(UnkStruct_02010318 *param0);
static void sub_02010CF4(ScreenFade *param0, const UnkStruct_0200F980 *param1);
static BOOL sub_02010D44(ScreenFade *param0);
static void sub_02010D94(ScreenFade *param0, const UnkStruct_0200F980 *param1, const UnkStruct_0200F980 *param2);
static BOOL sub_02010DEC(ScreenFade *param0);
static void sub_02010E48(UnkStruct_02010EA4 *param0, const UnkStruct_0200F980 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5);
static BOOL sub_02010EA4(UnkStruct_02010EA4 *param0);
static void sub_02010F2C(ScreenFade *param0, const UnkStruct_0200FB7C *param1);
static BOOL sub_02010F64(ScreenFade *param0);
static void sub_02010FC0(UnkStruct_0201109C *param0, const UnkStruct_0200FB7C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_0201109C(UnkStruct_0201109C *param0);
static void sub_02011180(UnkStruct_0201109C *param0);
static void sub_02011204(ScreenFade *param0, const UnkStruct_0200FC2C *param1);
static BOOL sub_0201123C(ScreenFade *param0);
static void sub_02011298(UnkStruct_02011360 *param0, const UnkStruct_0200FC2C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_02011360(UnkStruct_02011360 *param0);
static void sub_020113B0(UnkStruct_02011360 *param0);
static void sub_02011408(ScreenFade *param0, const UnkStruct_0200FD34 *param1);
static BOOL sub_02011440(ScreenFade *param0);
static void sub_02011494(UnkStruct_02011568 *param0, const UnkStruct_0200FD34 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_02011568(UnkStruct_02011568 *param0);
static void sub_020115B8(UnkStruct_02011568 *param0);
static void sub_020116A0(ScreenFade *param0, const UnkStruct_02011738 *param1);
static BOOL sub_020116D8(ScreenFade *param0);
static BOOL sub_0201184C(UnkStruct_0201184C *param0);
static void sub_02011738(UnkStruct_0201184C *param0, const UnkStruct_02011738 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static void sub_0201189C(UnkStruct_0201184C *param0);
static void sub_020118AC(UnkStruct_0201184C *param0);
static void sub_02011938(UnkStruct_0201184C *param0);
static void sub_020118E0(UnkStruct_02010588 *param0, UnkStruct_020101B0 *param1);
static void sub_02011960(ScreenFade *param0, UnkStruct_0200FEA4 *param1);
static BOOL sub_020119A0(ScreenFade *param0);
static void sub_02011A00(UnkStruct_02011AFC *param0, UnkStruct_0200FEA4 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_02011AFC(UnkStruct_02011AFC *param0);
static void sub_02011B54(UnkStruct_02011AFC *param0);
static void sub_02011B58(UnkStruct_02011AFC *param0);
static void sub_02011C7C(UnkStruct_02011C7C *param0, int param1, int param2);
static void sub_02011C94(ScreenFade *param0, UnkStruct_0200FF30 *param1);
static BOOL sub_02011CD4(ScreenFade *param0);
static void sub_02011D34(UnkStruct_02011E04 *param0, UnkStruct_0200FF30 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_02011E04(UnkStruct_02011E04 *param0);
static void sub_02011E5C(UnkStruct_02011E04 *param0);
static void sub_02011E60(UnkStruct_02011E04 *param0);
static void sub_02011F2C(UnkStruct_02011F2C *param0, int param1, int param2);
static void sub_02011F44(ScreenFade *param0, UnkStruct_0200FE6C *param1);
static BOOL sub_02011F88(ScreenFade *param0);
static void sub_02011FE8(UnkStruct_020120D4 *param0, UnkStruct_0200FE6C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_020120D4(UnkStruct_020120D4 *param0);
static void sub_02012134(UnkStruct_020120D4 *param0);
static void sub_02012138(UnkStruct_020120D4 *param0);
static void sub_02012174(const UnkStruct_0200F898 *param0, UnkStruct_02012174 *param1, int param2, int param3);
static void sub_020121C4(ScreenFade *param0, UnkStruct_0201006C *param1);
static BOOL sub_02012228(ScreenFade *param0);
static void sub_02012290(UnkStruct_02012290 *param0, UnkStruct_0201006C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int param7);
static BOOL sub_02012310(UnkStruct_02012290 *param0, ScreenFade *param1);
static void sub_02012384(UnkStruct_02012290 *param0, UnkStruct_0201006C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID);
static BOOL sub_020123F4(UnkStruct_02012290 *param0, ScreenFade *param1);

BOOL sub_0200F85C(ScreenFade *param0)
{
    if (param0->state == 0) {
        param0->direction = FADE_OUT;
        param0->method = FADE_BRIGHTNESS;

        sub_02010238(param0, 1);
        return 0;
    }

    return sub_020102D8(param0);
}

BOOL sub_0200F878(ScreenFade *param0)
{
    if (param0->state == 0) {
        param0->direction = FADE_IN;
        param0->method = FADE_BRIGHTNESS;

        sub_02010238(param0, 0);
        return 0;
    }

    return sub_020102D8(param0);
}

BOOL sub_0200F898(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0 = {
            0, 192, 1
        };
        static UnkStruct_0200FE6C v1 = {
            NULL, 1, 1
        };

        v1.unk_00 = &v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200F8D4(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0 = {
            0, 192, 0
        };
        static UnkStruct_0200FE6C v1 = {
            NULL, 1, 0
        };

        v1.unk_00 = &v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200F90C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0 = {
            192,
            0,
            1
        };
        static UnkStruct_0200FE6C v1 = {
            NULL,
            1,
            1
        };

        v1.unk_00 = &v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200F948(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0 = {
            192,
            0,
            0
        };
        static UnkStruct_0200FE6C v1 = {
            NULL,
            1,
            0
        };

        v1.unk_00 = &v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200F980(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 255, 192 },
            { 0, 0, 0, 192 },
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200F9AC(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 0, 192 },
            { 0, 0, 255, 192 },
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200F9D8(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[2] = {
            { 0, 96, 1 },
            { 192, 96, 1 }
        };
        static UnkStruct_0200FE6C v1 = {
            NULL,
            2,
            1
        };

        v1.unk_00 = v0;
        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200FA14(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[2] = {
            { 96, 0, 0 },
            { 96, 192, 0 }
        };
        static UnkStruct_0200FE6C v1 = {
            NULL,
            2,
            0
        };

        v1.unk_00 = v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200FA4C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[2] = {
            { 96, 0, 1 },
            { 96, 192, 1 }
        };
        static UnkStruct_0200FE6C v1 = {
            NULL,
            2,
            1
        };

        v1.unk_00 = v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200FA88(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[2] = {
            { 0, 96, 0 },
            { 192, 96, 0 }
        };
        static UnkStruct_0200FE6C v1 = {
            NULL,
            2,
            0
        };

        v1.unk_00 = v0;

        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200FAC0(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 255, 192 },
            { 128, 0, 128, 192 },
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200FAEC(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 128, 0, 128, 192 },
            { 0, 0, 255, 192 },
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200FB18(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 128, 0, 128, 192 },
            { 0, 0, 128, 192 },
            0,
            GX_BLEND_PLANEMASK_BD,
            GX_BLEND_ALL,
            1
        };
        static const UnkStruct_0200F980 v1 = {
            { 128, 0, 128, 192 },
            { 128, 0, 255, 192 },
            1,
            GX_BLEND_PLANEMASK_BD,
            GX_BLEND_ALL,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010D94(param0, &v0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010DEC(param0);
}

BOOL sub_0200FB4C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 128, 192 },
            { 128, 0, 128, 192 },
            0,
            GX_BLEND_PLANEMASK_BD,
            GX_BLEND_ALL,
            0
        };
        static const UnkStruct_0200F980 v1 = {
            { 128, 0, 255, 192 },
            { 128, 0, 128, 192 },
            1,
            GX_BLEND_PLANEMASK_BD,
            GX_BLEND_ALL,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010D94(param0, &v0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010DEC(param0);
}

BOOL sub_0200FB7C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FB7C v0 = {
            256,
            0,
            128,
            96,
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010F2C(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010F64(param0);
}

BOOL sub_0200FBA8(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FB7C v0 = {
            0,
            256,
            128,
            96,
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010F2C(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010F64(param0);
}

BOOL sub_0200FBD4(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FB7C v0 = {
            512,
            0,
            128,
            288,
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010F2C(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010F64(param0);
}

BOOL sub_0200FC00(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FB7C v0 = {
            0,
            512,
            128,
            288,
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010F2C(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010F64(param0);
}

BOOL sub_0200FC2C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FC2C v0 = {
            ((0xffff * 90) / 360),
            0,
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011204(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_0201123C(param0);
}

BOOL sub_0200FC58(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FC2C v0 = {
            0,
            ((0xffff * 90) / 360),
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011204(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_0201123C(param0);
}

BOOL sub_0200FC84(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 255, 192 }, { 128, 96, 128, 96 }, 0, GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200FCB0(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 128, 96, 128, 96 }, { 0, 0, 255, 192 }, 0, GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200FCDC(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 128, 96, 128, 96 }, { 0, 0, 255, 192 }, 0, GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200FD08(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 255, 192 }, { 128, 96, 128, 96 }, 0, GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0200FD34(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FD34 v0 = {
            ((0xffff * 90) / 360),
            ((0xffff * 0) / 360),
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011408(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02011440(param0);
}

BOOL sub_0200FD60(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FD34 v0 = {
            ((0xffff * 0) / 360),
            ((0xffff * 90) / 360),
            0,
            GX_BLEND_ALL,
            GX_BLEND_PLANEMASK_BD,
            0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011408(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011440(param0);
}

BOOL sub_0200FD8C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FD8C v0[] = {
            { 0, 0, 255, 48 },
            { 0, 47, 255, 96 },
            { 0, 96, 255, 144 },
            { 0, 144, 255, 192 }
        };
        static const UnkStruct_0200FD8C v1[] = {
            { 0, 0, 0, 48 },
            { 255, 47, 255, 96 },
            { 0, 96, 0, 144 },
            { 255, 144, 255, 192 }
        };
        UnkStruct_02011738 v2;

        v2.unk_00 = v0;
        v2.unk_04 = v1;
        v2.unk_08 = 4;
        v2.unk_0A = 0;
        v2.unk_0C = GX_BLEND_ALL;
        v2.unk_0D = GX_BLEND_PLANEMASK_BD;
        v2.unk_0E = 1;

        SetScreenBackgroundColor(param0->color);
        sub_020116A0(param0, &v2);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_020116D8(param0);
}

BOOL sub_0200FDE0(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FD8C v0[] = {
            { 255, 0, 255, 48 }, { 0, 47, 0, 96 }, { 255, 96, 255, 144 }, { 0, 144, 0, 192 }
        };
        static const UnkStruct_0200FD8C v1[] = {
            { 0, 0, 255, 48 }, { 0, 47, 255, 96 }, { 0, 96, 255, 144 }, { 0, 144, 255, 192 }
        };
        UnkStruct_02011738 v2;

        v2.unk_00 = v0;
        v2.unk_04 = v1;
        v2.unk_08 = 4;
        v2.unk_0A = 0;
        v2.unk_0C = GX_BLEND_ALL;
        v2.unk_0D = GX_BLEND_PLANEMASK_BD;
        v2.unk_0E = 0;

        SetScreenBackgroundColor(param0->color);
        sub_020116A0(param0, &v2);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_020116D8(param0);
}

BOOL sub_0200FE30(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[3] = {
            { 0, 64, 1 },
            { 64, 128, 1 },
            { 128, 192, 1 },
        };
        static UnkStruct_0200FE6C v1 = {
            NULL, 3, 1
        };

        v1.unk_00 = v0;
        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200FE6C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[3] = {
            { 64, 0, 0 },
            { 128, 64, 0 },
            { 192, 128, 0 },
        };
        static UnkStruct_0200FE6C v1 = {
            NULL, 3, 0
        };

        v1.unk_00 = v0;
        SetScreenBackgroundColor(param0->color);
        sub_02011F44(param0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02011F88(param0);
}

BOOL sub_0200FEA4(ScreenFade *param0)
{
    if (param0->state == 0) {
        UnkStruct_0200FEA4 v0 = {
            ((0 * 0xffff) / 360), ((179 * 0xffff) / 360), GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011960(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_020119A0(param0);
}

BOOL sub_0200FEEC(ScreenFade *param0)
{
    if (param0->state == 0) {
        UnkStruct_0200FEA4 v0 = {
            ((0 * 0xffff) / 360), ((179 * 0xffff) / 360), GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011960(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_020119A0(param0);
}

BOOL sub_0200FF30(ScreenFade *param0)
{
    if (param0->state == 0) {
        UnkStruct_0200FF30 v0 = {
            ((0 * 0xffff) / 360), ((45 * 0xffff) / 360), GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011C94(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02011CD4(param0);
}

BOOL sub_0200FF78(ScreenFade *param0)
{
    if (param0->state == 0) {
        UnkStruct_0200FF30 v0 = {
            ((0 * 0xffff) / 360), ((45 * 0xffff) / 360), GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02011C94(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02011CD4(param0);
}

BOOL sub_0200FFBC(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FB7C v0 = {
            512, 0, 128, -80, 0, GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010F2C(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02010F64(param0);
}

BOOL sub_0200FFE8(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200FB7C v0 = {
            0, 512, 128, -80, 0, GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010F2C(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02010F64(param0);
}

BOOL sub_02010014(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 0, 192 }, { 0, 0, 255, 192 }, 0, GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 1
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_02010040(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F980 v0 = {
            { 0, 0, 255, 192 }, { 0, 0, 0, 192 }, 0, GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 0
        };

        SetScreenBackgroundColor(param0->color);
        sub_02010CF4(param0, &v0);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02010D44(param0);
}

BOOL sub_0201006C(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[2] = {
            { 0, 94, 1 },
            { 192, 98, 1 },
        };
        static UnkStruct_0201006C v1 = {
            {
                { 0, 94, 255, 98 },
                { 128, 96, 128, 96 },
                0,
                GX_BLEND_ALL,
                GX_BLEND_PLANEMASK_BD,
                1,
            },
            {
                NULL,
                2,
                1,
            },
            FX32_CONST(0.70f),
        };

        v1.unk_0C.unk_00 = v0;

        SetScreenBackgroundColor(param0->color);
        sub_020121C4(param0, &v1);

        param0->direction = FADE_OUT;
        param0->method = FADE_WINDOW;
        return 0;
    }

    return sub_02012228(param0);
}

BOOL sub_020100A8(ScreenFade *param0)
{
    if (param0->state == 0) {
        static const UnkStruct_0200F898 v0[2] = {
            { 94, 0, 0 },
            { 98, 192, 0 },
        };
        static UnkStruct_0201006C v1 = {
            {
                { 128, 96, 128, 96 },
                { 0, 94, 255, 98 },
                0,
                GX_BLEND_ALL,
                GX_BLEND_PLANEMASK_BD,
                0,
            },
            {
                NULL,
                2,
                0,
            },
            FX32_CONST(0.70f),
        };

        v1.unk_0C.unk_00 = v0;

        SetScreenBackgroundColor(param0->color);
        sub_020121C4(param0, &v1);

        param0->direction = FADE_IN;
        param0->method = FADE_WINDOW;

        return 0;
    }

    return sub_02012228(param0);
}

static fx32 sub_020100E0(int param0)
{
    return FX_Div(FX_SinIdx(param0), FX_CosIdx(param0));
}

static int sub_020100FC(int param0, int param1)
{
    fx32 v0;
    fx32 v1;

    v0 = sub_020100E0(param0);

    v1 = FX_Mul(v0, param1 << FX32_SHIFT);
    v1 >>= FX32_SHIFT;

    return v1;
}

static void sub_02010124(int param0, int *param1, int param2, int param3)
{
    int v0;
    fx32 v1;
    fx32 v2, v3;
    int v4, v5;

    v1 = sub_020100E0(param0);

    for (v0 = param3; v0 < param2; v0++) {
        v3 = v0 << FX32_SHIFT;
        v2 = FX_Mul(v1, v3);
        v2 >>= FX32_SHIFT;
        *(param1 + v0) = v2;
    }
}

static int sub_02010178(int param0, int param1)
{
    fx32 v0;
    fx32 v1;
    int v2;

    v0 = sub_020100E0(param0);
    v1 = (param1 / 2) << FX32_SHIFT;
    v2 = FX_Div(v1, v0);

    return v2;
}

static int sub_02010190(int param0, int param1, int param2)
{
    int v0 = param1 - param0;
    v0 *= 128;
    v0 /= param2;

    return v0;
}

static int sub_020101A0(int param0, int param1)
{
    int v0 = param0 + param1;

    if (v0 < 0) {
        v0 = 0;
    }

    if (v0 > 255) {
        v0 = 255;
    }

    return v0;
}

static void sub_020101B0(UnkStruct_020101B0 *param0, UnkStruct_020101B0 *param1)
{
    param0->unk_00 += param1->unk_00;
    param0->unk_04 += param1->unk_04;
    param0->unk_08 += param1->unk_08;
    param0->unk_0C += param1->unk_0C;
}

static void sub_020101D4(UnkStruct_020101B0 *param0, UnkStruct_020101B0 *param1, UnkStruct_020101B0 *param2, const UnkStruct_0200FD8C *param3, const UnkStruct_0200FD8C *param4, int param5)
{
    param0->unk_00 = param3->unk_00 * 128;
    param0->unk_04 = param3->unk_01 * 128;
    param0->unk_08 = param3->unk_02 * 128;
    param0->unk_0C = param3->unk_03 * 128;

    param1->unk_00 = param4->unk_00;
    param1->unk_04 = param4->unk_01;
    param1->unk_08 = param4->unk_02;
    param1->unk_0C = param4->unk_03;

    param2->unk_00 = sub_02010190(param3->unk_00, param4->unk_00, param5);
    param2->unk_04 = sub_02010190(param3->unk_01, param4->unk_01, param5);
    param2->unk_08 = sub_02010190(param3->unk_02, param4->unk_02, param5);
    param2->unk_0C = sub_02010190(param3->unk_03, param4->unk_03, param5);
}

static void sub_02010238(ScreenFade *param0, int param1)
{
    int v0, v1;
    UnkStruct_02010318 *v2;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02010318));
    memset(param0->data, 0, sizeof(UnkStruct_02010318));
    v2 = param0->data;

    if (param1 == 0) {
        if (param0->color == 0x7fff) {
            v0 = 16;
            v1 = 0;
        } else if (param0->color == 0x0) {
            v0 = -16;
            v1 = 0;
        } else {
            v0 = -16;
            v1 = 0;

            GF_ASSERT(0);
        }
    } else {
        if (param0->color == 0x7fff) {
            v0 = 0;
            v1 = 16;
        } else if (param0->color == 0x0) {
            v0 = 0;
            v1 = -16;
        } else {
            v0 = 0;
            v1 = -16;

            GF_ASSERT(0);
        }
    }

    SetScreenMasterBrightness(param0->screen, v0);

    v2->unk_00 = param0->steps;
    v2->unk_04 = param0->framesPerStep;
    v2->unk_08 = 0;
    v2->unk_0C = v0 * 128;
    v2->unk_10 = v1 * 128;
    v2->unk_14 = sub_02010190(v0, v1, param0->steps);
    v2->unk_18 = param0->screen;

    param0->state++;
}

static BOOL sub_020102D8(ScreenFade *param0)
{
    UnkStruct_02010318 *v0 = param0->data;
    BOOL v1;
    BOOL v2 = 0;

    switch (param0->state) {
    case 1:
        v1 = sub_02010318(v0);

        if (v1 == 1) {
            param0->state++;
        }
        break;
    case 2:
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        break;
    }

    return v2;
}

static BOOL sub_02010318(UnkStruct_02010318 *param0)
{
    BOOL v0 = 0;

    param0->unk_08++;

    if (param0->unk_08 >= param0->unk_04) {
        param0->unk_08 = 0;

        if ((param0->unk_00 - 1) > 0) {
            param0->unk_00--;

            param0->unk_0C += param0->unk_14;
        } else {
            param0->unk_0C = param0->unk_10;
            v0 = 1;
        }

        SetScreenMasterBrightness(param0->unk_18, param0->unk_0C / 128);
    }

    return v0;
}

static inline void inline_0201035C_sub(int param0, int param1, int param2, int param3, int param4, int param5)
{
    if (param4 == 0) {
        if (param5 == 0) {
            if (GX_IsHBlank()) {
                G2_SetWnd0Position(param0, param1, param2, param3);
            }
        } else {
            if (GX_IsHBlank()) {
                G2S_SetWnd0Position(param0, param1, param2, param3);
            }
        }
    } else {
        if (param5 == 0) {
            if (GX_IsHBlank()) {
                G2_SetWnd1Position(param0, param1, param2, param3);
            }
        } else {
            if (GX_IsHBlank()) {
                G2S_SetWnd1Position(param0, param1, param2, param3);
            }
        }
    }
}

static inline void inline_0201035C(UnkStruct_02010588 *param0, int param1, int param2)
{
    UnkStruct_02010FC0 *v0 = sub_02010604(param0, param2);
    inline_0201035C_sub(v0->unk_00[0][param1], 0, v0->unk_00[1][param1], 192, v0->unk_600, param0->unk_08);
}

static void sub_0201035C(void *param0)
{
    UnkStruct_02010588 *v0 = (UnkStruct_02010588 *)param0;
    int v1;
    int v2;

    GF_ASSERT(param0);

    v1 = GX_GetVCount();

    if (v1 < 192) {
        v1++;

        if (v1 > 191) {
            v1 -= 192;
        }

        if (v0->unk_04 == 1) {
            inline_0201035C(v0, v1, 0);
        } else {
            inline_0201035C(v0, v1, 0);
            inline_0201035C(v0, v1, 1);
        }
    }
}

static void sub_02010588(UnkStruct_02010588 *param0, int param1, int param2, int heapID)
{
    switch (param1) {
    case 0:
    case 1:
        param0->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02010FC0));
        param0->unk_04 = 1;
        param0->unk_08 = param2;
        param0->unk_00->unk_600 = param1;
        break;
    case 2: {
        int v0;

        param0->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02010FC0) * 2);
        param0->unk_04 = 2;
        param0->unk_08 = param2;

        for (v0 = 0; v0 < 2; v0++) {
            param0->unk_00[v0].unk_600 = v0;
        }
    } break;
    default:
        break;
    }
}

static void sub_020105EC(UnkStruct_02010588 *param0)
{
    sub_020105F4(param0);
}

static void sub_020105F4(UnkStruct_02010588 *param0)
{
    Heap_FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;
}

static UnkStruct_02010FC0 *sub_02010604(UnkStruct_02010588 *param0, int param1)
{
    GF_ASSERT(param0->unk_04 > param1);
    return param0->unk_00 + param1;
}

static void sub_02010624(SysTask *param0, void *param1)
{
    UnkStruct_02010588 *v0 = (UnkStruct_02010588 *)param1;
    UnkStruct_02010FC0 *v1;
    int v2;

    for (v2 = 0; v2 < v0->unk_04; v2++) {
        v1 = sub_02010604(v0, v2);
        memcpy(v1->unk_00, v1->unk_300, sizeof(short) * 2 * 192);
    }

    SysTask_Done(param0);
}

static void sub_02010658(int param0, HardwareWindowSettings *param1, int param2)
{
    if (param0 == 0) {
        RequestVisibleHardwareWindows(param1, GX_WNDMASK_NONE, param2);
    } else {
        RequestVisibleHardwareWindows(param1, GX_WNDMASK_W0, param2);
        RequestHardwareWindowMaskInsidePlane(param1, GX_BLEND_ALL, 0, 0, param2);
        RequestHardwareWindowDimensions(param1, 0, 0, 0, 0, 0, param2);
        RequestHardwareWindowMaskOutsidePlane(param1, GX_BLEND_PLANEMASK_BD, 0, param2);
    }
}

static void sub_020106A8(HardwareWindowSettings *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    if (param9 == 0) {
        SetHardwareWindowMaskInsidePlane(param1, 0, param3, param4);
        SetHardwareWindowMaskOutsidePlane(param2, 0, param4);
        SetHardwareWindowDimensions(param5, param6, param7, param8, param3, param4);
    } else {
        RequestHardwareWindowMaskInsidePlane(param0, param1, 0, param3, param4);
        RequestHardwareWindowMaskOutsidePlane(param0, param2, 0, param4);
        RequestHardwareWindowDimensions(param0, param5, param6, param7, param8, param3, param4);
    }
}

static void sub_02010710(HardwareWindowSettings *param0, int param1, int param2, int param3)
{
    if (param3 == 0) {
        SetVisibleHardwareWindows(param1, param2);
    } else {
        RequestVisibleHardwareWindows(param0, param1, param2);
    }
}

static void sub_02010728(UnkStruct_0201076C *param0, int param1, int param2, int param3, int param4)
{
    memset(param0, 0, sizeof(UnkStruct_0201076C));

    if (param2 == 1) {
        param0->unk_00[0].unk_180 = param3;
        param0->unk_308 = param2;
        param0->unk_309 = param1;
    } else {
        param0->unk_00[0].unk_180 = param3;
        param0->unk_00[1].unk_180 = param4;
        param0->unk_308 = param2;
        param0->unk_309 = param1;
    }
}

static void sub_0201076C(UnkStruct_0201076C *param0)
{
    SysTask_ExecuteAfterVBlank(sub_020107AC, param0, 1023);
}

static void sub_02010784(ScreenFadeHBlanks *param0, UnkStruct_0201076C *param1, u32 heapID)
{
    RequestEnableScreenHBlank(param0, param1, sub_020107D8, param1->unk_309, heapID);
}

static void sub_0201079C(ScreenFadeHBlanks *param0, UnkStruct_0201076C *param1, u32 heapID)
{
    RequestDisableScreenHBlank(param0, param1->unk_309, heapID);
}

static void sub_020107AC(SysTask *param0, void *param1)
{
    UnkStruct_0201076C *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        memcpy(v0->unk_00[v1].unk_C0, v0->unk_00[v1].unk_00, sizeof(u8) * 192);
    }

    SysTask_Done(param0);
}

static inline void inline_020107D8_sub(int param0, BOOL param1, int param2)
{
    if (param2 == 0) {
        if (GX_IsHBlank()) {
            G2_SetWndOutsidePlane(param0, param1);
        }
    } else {
        if (GX_IsHBlank()) {
            G2S_SetWndOutsidePlane(param0, param1);
        }
    }
}

static inline void inline_020107D8_sub_1(int param0, BOOL param1, int param4, int param3)
{
    if (param4 == 0) {
        if (param3 == 0) {
            if (GX_IsHBlank()) {
                G2_SetWnd0InsidePlane(param0, param1);
            }
        } else {
            if (GX_IsHBlank()) {
                G2S_SetWnd0InsidePlane(param0, param1);
            }
        }
    } else {
        if (param3 == 0) {
            if (GX_IsHBlank()) {
                G2_SetWnd1InsidePlane(param0, param1);
            }
        } else {
            if (GX_IsHBlank()) {
                G2S_SetWnd1InsidePlane(param0, param1);
            }
        }
    }
}

static inline void inline_020107D8(UnkStruct_0201076C *param0, int param1, int param2)
{
    UnkStruct_02012174 *v0 = &param0->unk_00[param2];

    if (v0->unk_C0[param1] == 0) {
        inline_020107D8_sub(GX_BLEND_ALL, 1, param0->unk_309);
        inline_020107D8_sub_1(GX_BLEND_PLANEMASK_BD, 1, v0->unk_180, param0->unk_309);
    } else {
        inline_020107D8_sub(GX_BLEND_PLANEMASK_BD, 1, param0->unk_309);
        inline_020107D8_sub_1(GX_BLEND_ALL, 1, v0->unk_180, param0->unk_309);
    }
}

static void sub_020107D8(void *param0)
{
    UnkStruct_0201076C *v0 = (UnkStruct_0201076C *)param0;
    int v1;
    int v2;

    GF_ASSERT(param0);

    v1 = GX_GetVCount();

    if (v1 < 192) {
        v1++;

        if (v1 > 191) {
            v1 -= 192;
        }

        if (v0->unk_308 == 1) {
            inline_020107D8(v0, v1, 0);
        } else {
            inline_020107D8(v0, v1, 0);
            inline_020107D8(v0, v1, 1);
        }
    }
}

static void sub_02010CF4(ScreenFade *param0, const UnkStruct_0200F980 *param1)
{
    UnkStruct_02010EA4 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02010EA4));

    v0 = (UnkStruct_02010EA4 *)param0->data;

    sub_02010E48(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings);

    if (param1->unk_08 == 0) {
        sub_02010710(param0->hwSettings, GX_WNDMASK_W0, v0->unk_30, v0->unk_44);
    } else {
        sub_02010710(param0->hwSettings, GX_WNDMASK_W1, v0->unk_30, v0->unk_44);
    }

    param0->state++;
}

static BOOL sub_02010D44(ScreenFade *param0)
{
    UnkStruct_02010EA4 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02010EA4 *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_02010EA4(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_44, param0->hwSettings, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;

    case 3:
        v2 = 1;
        break;

    default:
        break;
    }

    return v2;
}

static void sub_02010D94(ScreenFade *param0, const UnkStruct_0200F980 *param1, const UnkStruct_0200F980 *param2)
{
    UnkStruct_02010D94 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02010D94));
    v0 = (UnkStruct_02010D94 *)param0->data;

    sub_02010E48(&v0->unk_00, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings);
    sub_02010E48(&v0->unk_4C, param2, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings);
    sub_02010710(param0->hwSettings, GX_WNDMASK_W0 | GX_WNDMASK_W1, param0->screen, v0->unk_00.unk_44);

    param0->state++;
}

static BOOL sub_02010DEC(ScreenFade *param0)
{
    UnkStruct_02010D94 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02010D94 *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_02010EA4(&v0->unk_00);
        v1 += sub_02010EA4(&v0->unk_4C);

        if (v1 == 2) {
            sub_02010658(v0->unk_00.unk_44, param0->hwSettings, param0->screen);

            param0->state++;
        }
        break;
    case 2:
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    }

    return v2;
}

static void sub_02010E48(UnkStruct_02010EA4 *param0, const UnkStruct_0200F980 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5)
{
    sub_020101D4(&param0->unk_00, &param0->unk_20, &param0->unk_10, &param1->unk_00, &param1->unk_04, param2);

    param0->unk_30 = param4;
    param0->unk_34 = param1->unk_08;
    param0->unk_38 = param2;
    param0->unk_3C = param3;
    param0->unk_40 = 0;
    param0->unk_48 = param5;
    param0->unk_44 = param1->unk_0B;

    sub_020106A8(param5, param1->unk_09, param1->unk_0A, param1->unk_08, param4, param1->unk_00.unk_00, param1->unk_00.unk_01, param1->unk_00.unk_02, param1->unk_00.unk_03, param0->unk_44);
}

static BOOL sub_02010EA4(UnkStruct_02010EA4 *param0)
{
    param0->unk_40++;

    if (param0->unk_40 >= param0->unk_3C) {
        param0->unk_40 = 0;

        if ((param0->unk_38 - 1) > 0) {
            param0->unk_38--;
            sub_020101B0(&param0->unk_00, &param0->unk_10);
        } else {
            RequestHardwareWindowDimensions(param0->unk_48, param0->unk_20.unk_00, param0->unk_20.unk_04, param0->unk_20.unk_08, param0->unk_20.unk_0C, param0->unk_34, param0->unk_30);
            return 1;
        }

        RequestHardwareWindowDimensions(param0->unk_48, param0->unk_00.unk_00 / 128, param0->unk_00.unk_04 / 128, param0->unk_00.unk_08 / 128, param0->unk_00.unk_0C / 128, param0->unk_34, param0->unk_30);
    }

    return 0;
}

static void sub_02010F2C(ScreenFade *param0, const UnkStruct_0200FB7C *param1)
{
    UnkStruct_0201109C *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_0201109C));
    v0 = (UnkStruct_0201109C *)param0->data;

    sub_02010FC0(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);

    param0->state++;
}

static BOOL sub_02010F64(ScreenFade *param0)
{
    UnkStruct_0201109C *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_0201109C *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_0201109C(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_2C, v0->unk_30, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_020105EC(&v0->unk_00);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02010FC0(UnkStruct_0201109C *param0, const UnkStruct_0200FB7C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    int v0;
    UnkStruct_02010FC0 *v1;

    v0 = sub_02010190(param1->unk_00, param1->unk_02, param2);
    sub_02010588(&param0->unk_00, param1->unk_08, param4, heapID);

    param0->unk_0C = param1->unk_00 * 128;
    param0->unk_10 = param1->unk_04;
    param0->unk_14 = param1->unk_06;
    param0->unk_18 = v0;
    param0->unk_1C = param2;
    param0->unk_20 = param3;
    param0->unk_24 = 0;
    param0->unk_30 = param5;
    param0->unk_34 = param6;
    param0->heapID = heapID;
    param0->unk_2C = param1->unk_0B;

    sub_02011180(param0);
    SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);

    v1 = sub_02010604(&param0->unk_00, 0);
    sub_020106A8(param5, param1->unk_09, param1->unk_0A, param1->unk_08, param4, v1->unk_300[0][0], 0, v1->unk_300[1][0], 192, param0->unk_2C);

    if (param1->unk_08 == 0) {
        sub_02010710(param5, GX_WNDMASK_W0, param4, param0->unk_2C);
    } else {
        sub_02010710(param5, GX_WNDMASK_W1, param4, param0->unk_2C);
    }

    RequestEnableScreenHBlank(param0->unk_34, &param0->unk_00, sub_0201035C, param4, heapID);
}

static BOOL sub_0201109C(UnkStruct_0201109C *param0)
{
    param0->unk_24++;

    if (param0->unk_24 >= param0->unk_20) {
        param0->unk_24 = 0;

        if ((param0->unk_1C - 1) > 0) {
            param0->unk_1C--;
            param0->unk_0C += param0->unk_18;
            sub_02011180(param0);
            SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);
        } else {
            RequestDisableScreenHBlank(param0->unk_34, param0->unk_00.unk_08, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_020110EC(int param0, int param1, int param2, int param3, int *param4, int *param5)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;

    v0 = param0 / 128;
    v1 = param3 - param2;

    if (v1 < 0) {
        v1 = -v1;
    }

    if (v1 >= v0) {
        *param4 = 0;
        *param5 = 0;
    } else {
        v1 <<= FX32_SHIFT;
        v0 <<= FX32_SHIFT;
        v2 = FX_Sqrt(FX_Mul(v0, v0) - FX_Mul(v1, v1));
        v2 >>= FX32_SHIFT;

        *param4 = param1 - v2;

        if (*param4 < 0) {
            *param4 = 0;
        }

        *param5 = *param4 + (v2 * 2);

        if (*param5 > 255) {
            *param5 = 255;
        }
    }
}

static void sub_02011180(UnkStruct_0201109C *param0)
{
    UnkStruct_02010588 *v0 = &param0->unk_00;
    int v1;
    int v2;
    int v3;
    int v4;
    UnkStruct_02010FC0 *v5 = sub_02010604(v0, 0);

    for (v1 = 0; v1 < 192; v1++) {
        if (v1 <= param0->unk_14) {
            sub_020110EC(param0->unk_0C, param0->unk_10, param0->unk_14, v1, &v2, &v3);
        } else {
            if (v1 <= (param0->unk_14 * 2)) {
                v2 = v5->unk_300[0][(param0->unk_14 * 2) - v1];
                v3 = v5->unk_300[1][(param0->unk_14 * 2) - v1];
            } else {
                sub_020110EC(param0->unk_0C, param0->unk_10, param0->unk_14, v1, &v2, &v3);
            }
        }

        v5->unk_300[0][v1] = v2;
        v5->unk_300[1][v1] = v3;
    }
}

static void sub_02011204(ScreenFade *param0, const UnkStruct_0200FC2C *param1)
{
    UnkStruct_02011360 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02011360));
    v0 = (UnkStruct_02011360 *)param0->data;

    sub_02011298(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);
    param0->state++;
}

static BOOL sub_0201123C(ScreenFade *param0)
{
    UnkStruct_02011360 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02011360 *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_02011360(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_20, v0->unk_24, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_020105EC(&v0->unk_00);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02011298(UnkStruct_02011360 *param0, const UnkStruct_0200FC2C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    UnkStruct_02010FC0 *v0;

    param0->unk_10 = sub_02010190(param1->unk_00, param1->unk_02, param2);
    sub_02010588(&param0->unk_00, param1->unk_04, param4, heapID);

    param0->unk_0C = param1->unk_00 * 128;
    param0->unk_14 = param2;
    param0->unk_18 = param3;
    param0->unk_1C = 0;
    param0->unk_24 = param5;
    param0->unk_28 = param6;
    param0->heapID = heapID;
    param0->unk_20 = param1->unk_07;

    sub_020113B0(param0);
    SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);

    v0 = sub_02010604(&param0->unk_00, 0);
    sub_020106A8(param5, param1->unk_05, param1->unk_06, param1->unk_04, param4, v0->unk_300[0][0], 0, v0->unk_300[1][0], 192, param0->unk_20);

    if (param1->unk_04 == 0) {
        sub_02010710(param5, GX_WNDMASK_W0, param4, param0->unk_20);
    } else {
        sub_02010710(param5, GX_WNDMASK_W1, param4, param0->unk_20);
    }

    RequestEnableScreenHBlank(param0->unk_28, &param0->unk_00, sub_0201035C, param4, heapID);
}

static BOOL sub_02011360(UnkStruct_02011360 *param0)
{
    param0->unk_1C++;

    if (param0->unk_1C >= param0->unk_18) {
        param0->unk_1C = 0;

        if ((param0->unk_14 - 1) > 0) {
            param0->unk_14--;
            param0->unk_0C += param0->unk_10;
            sub_020113B0(param0);
            SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);
        } else {
            RequestDisableScreenHBlank(param0->unk_28, param0->unk_00.unk_08, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_020113B0(UnkStruct_02011360 *param0)
{
    int v0;
    int v1, v2;
    int v3[192];
    UnkStruct_02010FC0 *v4 = sub_02010604(&param0->unk_00, 0);
    sub_02010124(param0->unk_0C / 128, v3, 192, 0);

    for (v0 = 0; v0 < 192; v0++) {
        v4->unk_300[0][v0] = sub_020101A0(128, -v3[v0]);
        v4->unk_300[1][v0] = sub_020101A0(128, v3[v0]);
    }
}

static void sub_02011408(ScreenFade *param0, const UnkStruct_0200FD34 *param1)
{
    UnkStruct_02011568 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02011568));
    v0 = (UnkStruct_02011568 *)param0->data;

    sub_02011494(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);
    param0->state++;
}

static BOOL sub_02011440(ScreenFade *param0)
{
    UnkStruct_02011568 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02011568 *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_02011568(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_24, v0->unk_28, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_020105EC(&v0->unk_00);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    }

    return v2;
}

static void sub_02011494(UnkStruct_02011568 *param0, const UnkStruct_0200FD34 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    int v0;
    UnkStruct_02010FC0 *v1;

    v0 = (param1->unk_02 - param1->unk_00);
    v0 /= param2;

    sub_02010588(&param0->unk_00, param1->unk_04, param4, heapID);

    param0->unk_0C = 128 * FX32_ONE;
    param0->unk_10 = param1->unk_00;
    param0->unk_14 = v0;
    param0->unk_18 = param2;
    param0->unk_1C = param3;
    param0->unk_20 = 0;
    param0->unk_28 = param5;
    param0->unk_2C = param6;
    param0->heapID = heapID;
    param0->unk_24 = param1->unk_07;

    sub_020115B8(param0);
    SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);

    v1 = sub_02010604(&param0->unk_00, 0);
    sub_020106A8(param5, param1->unk_05, param1->unk_06, param1->unk_04, param4, v1->unk_300[0][96], 0, v1->unk_300[1][96], 192, param0->unk_24);

    if (param1->unk_04 == 0) {
        sub_02010710(param5, GX_WNDMASK_W0, param4, param0->unk_24);
    } else {
        sub_02010710(param5, GX_WNDMASK_W1, param4, param0->unk_24);
    }

    RequestEnableScreenHBlank(param0->unk_2C, &param0->unk_00, sub_0201035C, param4, heapID);
}

static BOOL sub_02011568(UnkStruct_02011568 *param0)
{
    param0->unk_20++;

    if (param0->unk_20 >= param0->unk_1C) {
        param0->unk_20 = 0;

        if ((param0->unk_18 - 1) > 0) {
            param0->unk_18--;
            param0->unk_10 += param0->unk_14;
            sub_020115B8(param0);
            SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);
        } else {
            RequestDisableScreenHBlank(param0->unk_2C, param0->unk_00.unk_08, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_020115B8(UnkStruct_02011568 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3[192];
    int v4;
    int v5;
    int v6;
    int v7, v8;
    UnkStruct_02010FC0 *v9 = sub_02010604(&param0->unk_00, 0);
    v5 = FX_Mul(FX_SinIdx(param0->unk_10), param0->unk_0C);

    v5 >>= FX32_SHIFT;

    v2 = v5 * 2;
    v2 = v2 / 21;
    v2 += 1;
    v2 = 180 - (v2 * 2);
    v2 = ((0xffff * (v2)) / 360);
    v2 /= 2;
    v1 = sub_02010178(v2, 256);
    v1 >>= FX32_SHIFT;

    GF_ASSERT(v1 < 192);

    sub_02010124(v2, v3, v1, 0);

    for (v0 = 0; v0 < 96; v0++) {
        v4 = v1 - (v0 + 1);
        v6 = v5;

        if (v4 > 0) {
            if (v3[v4] > v6) {
                v6 = v3[v4];
            }
        }

        v7 = sub_020101A0(128, -v6);
        v8 = sub_020101A0(128, v6);

        v9->unk_300[0][v0] = v7;
        v9->unk_300[1][v0] = v8;
        v9->unk_300[0][191 - v0] = v7;
        v9->unk_300[1][191 - v0] = v8;
    }
}

static void sub_020116A0(ScreenFade *param0, const UnkStruct_02011738 *param1)
{
    UnkStruct_0201184C *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_0201184C));
    v0 = (UnkStruct_0201184C *)param0->data;

    sub_02011738(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);
    param0->state++;
}

static BOOL sub_020116D8(ScreenFade *param0)
{
    UnkStruct_0201184C *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_0201184C *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_0201184C(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_20, v0->unk_24, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_0201189C(v0);
        sub_020105EC(&v0->unk_00);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02011738(UnkStruct_0201184C *param0, const UnkStruct_02011738 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    int v0;
    UnkStruct_02010FC0 *v1;

    param0->unk_0C = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0201184C_sub1) * param1->unk_08);
    GF_ASSERT(param0->unk_0C != NULL);
    param0->unk_10 = param1->unk_08;

    for (v0 = 0; v0 < param1->unk_08; v0++) {
        sub_020101D4(&param0->unk_0C[v0].unk_00, &param0->unk_0C[v0].unk_20, &param0->unk_0C[v0].unk_10, (param1->unk_00 + v0), (param1->unk_04 + v0), param2);
    }

    sub_02010588(&param0->unk_00, param1->unk_0A, param4, heapID);

    param0->unk_14 = param2;
    param0->unk_18 = param3;
    param0->unk_1C = 0;
    param0->unk_24 = param5;
    param0->unk_28 = param6;
    param0->heapID = heapID;
    param0->unk_20 = param1->unk_0E;

    sub_020118AC(param0);
    SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);

    v1 = sub_02010604(&param0->unk_00, 0);
    sub_020106A8(param5, param1->unk_0C, param1->unk_0D, param1->unk_0A, param4, v1->unk_300[0][0], 0, v1->unk_300[1][0], 192, param0->unk_20);

    if (param1->unk_0A == 0) {
        sub_02010710(param0->unk_24, GX_WNDMASK_W0, param4, param0->unk_20);
    } else {
        sub_02010710(param0->unk_24, GX_WNDMASK_W1, param4, param0->unk_20);
    }

    RequestEnableScreenHBlank(param0->unk_28, &param0->unk_00, sub_0201035C, param4, heapID);
}

static BOOL sub_0201184C(UnkStruct_0201184C *param0)
{
    param0->unk_1C++;

    if (param0->unk_1C >= param0->unk_18) {
        param0->unk_1C = 0;

        if ((param0->unk_14 - 1) > 0) {
            param0->unk_14--;
            sub_02011938(param0);
            sub_020118AC(param0);
            SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);
        } else {
            RequestDisableScreenHBlank(param0->unk_28, param0->unk_00.unk_08, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_0201189C(UnkStruct_0201184C *param0)
{
    Heap_FreeToHeap(param0->unk_0C);
    param0->unk_0C = NULL;
}

static void sub_020118AC(UnkStruct_0201184C *param0)
{
    int v0;
    UnkStruct_02010FC0 *v1 = sub_02010604(&param0->unk_00, 0);
    memset(v1->unk_300, 0, 768);

    for (v0 = (param0->unk_10 - 1); v0 >= 0; v0--) {
        sub_020118E0(&param0->unk_00, &param0->unk_0C[v0].unk_00);
    }
}

static void sub_020118E0(UnkStruct_02010588 *param0, UnkStruct_020101B0 *param1)
{
    int v0;
    UnkStruct_02010FC0 *v1;
    UnkStruct_020101B0 v2;

    v1 = sub_02010604(param0, 0);

    v2.unk_00 = param1->unk_00 / 128;
    v2.unk_04 = param1->unk_04 / 128;
    v2.unk_08 = param1->unk_08 / 128;
    v2.unk_0C = param1->unk_0C / 128;

    for (v0 = v2.unk_04; v0 < v2.unk_0C; v0++) {
        v1->unk_300[0][v0] = v2.unk_00;
        v1->unk_300[1][v0] = v2.unk_08;
    }
}

static void sub_02011938(UnkStruct_0201184C *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        sub_020101B0(&param0->unk_0C[v0].unk_00, &param0->unk_0C[v0].unk_10);
    }
}

static void sub_02011960(ScreenFade *param0, UnkStruct_0200FEA4 *param1)
{
    UnkStruct_02011AFC *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02011AFC));
    memset(param0->data, 0, sizeof(UnkStruct_02011AFC));

    v0 = param0->data;
    sub_02011A00(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);

    param0->state++;
}

static BOOL sub_020119A0(ScreenFade *param0)
{
    UnkStruct_02011AFC *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02011AFC *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_02011AFC(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_28, v0->unk_30, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_02011B54(v0);
        sub_020105EC(&v0->unk_00);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02011A00(UnkStruct_02011AFC *param0, UnkStruct_0200FEA4 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    UnkStruct_02010FC0 *v0;
    UnkStruct_02010FC0 *v1;

    param0->unk_0C.unk_00 = 0;
    param0->unk_0C.unk_04 = param1->unk_00;
    param0->unk_0C.unk_08 = param1->unk_02 - param1->unk_00;

    sub_02010588(&param0->unk_00, 2, param4, heapID);

    param0->unk_18 = param2;
    param0->unk_1C = 0;
    param0->unk_20 = param3;
    param0->unk_24 = 0;
    param0->unk_30 = param5;
    param0->unk_34 = param6;
    param0->heapID = heapID;
    param0->unk_28 = param1->unk_06;

    sub_02011C7C(&param0->unk_0C, param0->unk_1C, param0->unk_18);
    sub_02011B58(param0);
    SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);

    v0 = sub_02010604(&param0->unk_00, 0);
    v1 = sub_02010604(&param0->unk_00, 1);

    sub_020106A8(param5, param1->unk_04, param1->unk_05, 0, param4, v0->unk_300[0][0], 0, v0->unk_300[1][0], 192, param0->unk_28);
    sub_020106A8(param5, param1->unk_04, param1->unk_05, 1, param4, v1->unk_300[0][0], 0, v1->unk_300[1][0], 192, param0->unk_28);
    sub_02010710(param5, GX_WNDMASK_W0 | GX_WNDMASK_W1, param4, param0->unk_28);
    RequestEnableScreenHBlank(param0->unk_34, &param0->unk_00, sub_0201035C, param4, heapID);
}

static BOOL sub_02011AFC(UnkStruct_02011AFC *param0)
{
    param0->unk_24++;

    if (param0->unk_24 >= param0->unk_20) {
        param0->unk_24 = 0;

        if ((param0->unk_1C + 1) <= param0->unk_18) {
            param0->unk_1C++;

            sub_02011C7C(&param0->unk_0C, param0->unk_1C, param0->unk_18);
            sub_02011B58(param0);
            SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);
        } else {
            RequestDisableScreenHBlank(param0->unk_34, param0->unk_00.unk_08, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_02011B54(UnkStruct_02011AFC *param0)
{
    return;
}

static void sub_02011B58(UnkStruct_02011AFC *param0)
{
    UnkStruct_02010FC0 *v0;
    UnkStruct_02010FC0 *v1;
    u16 v2;
    int v3, v4;
    int v5;

    v2 = param0->unk_0C.unk_00 % ((90 * 0xffff) / 360);
    v0 = sub_02010604(&param0->unk_00, 0);
    v1 = sub_02010604(&param0->unk_00, 1);

    for (v5 = 0; v5 < 96; v5++) {
        if (param0->unk_0C.unk_00 < ((90 * 0xffff) / 360)) {
            v3 = 128;
            v4 = sub_020100FC(v2, (96 - v5));

            if (v4 > 127) {
                v4 = 127;
            }

            v0->unk_300[0][191 - v5] = v3 - v4;
            v0->unk_300[1][191 - v5] = v3;

            v1->unk_300[0][v5] = v3;
            v1->unk_300[1][v5] = v3 + v4;
        } else {
            v0->unk_300[0][191 - v5] = 0;
            v0->unk_300[1][191 - v5] = 128;

            v1->unk_300[0][v5] = 128;
            v1->unk_300[1][v5] = 255;
        }
    }

    for (v5 = 96; v5 < 192; v5++) {
        if (param0->unk_0C.unk_00 < ((90 * 0xffff) / 360)) {
            v0->unk_300[0][191 - v5] = 128;
            v0->unk_300[1][191 - v5] = 128;

            v1->unk_300[0][v5] = 128;
            v1->unk_300[1][v5] = 128;
        } else {
            v3 = sub_020100FC(((90 * 0xffff) / 360) - v2, (v5 - 96));

            if (v3 > 127) {
                v3 = 127;
            }

            v0->unk_300[0][191 - v5] = 0;
            v0->unk_300[1][191 - v5] = 128 - v3;

            v1->unk_300[0][v5] = 128 + v3;
            v1->unk_300[1][v5] = 255;
        }
    }
}

static void sub_02011C7C(UnkStruct_02011C7C *param0, int param1, int param2)
{
    int v0 = param0->unk_08 * param1;
    v0 = v0 / param2;

    param0->unk_00 = v0 + param0->unk_04;
}

static void sub_02011C94(ScreenFade *param0, UnkStruct_0200FF30 *param1)
{
    UnkStruct_02011E04 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02011E04));
    memset(param0->data, 0, sizeof(UnkStruct_02011E04));

    v0 = param0->data;
    sub_02011D34(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);

    param0->state++;
}

static BOOL sub_02011CD4(ScreenFade *param0)
{
    UnkStruct_02011E04 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02011E04 *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_02011E04(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_28, v0->unk_30, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_02011E5C(v0);
        sub_020105EC(&v0->unk_00);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02011D34(UnkStruct_02011E04 *param0, UnkStruct_0200FF30 *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    UnkStruct_02010FC0 *v0;
    UnkStruct_02010FC0 *v1;

    param0->unk_0C.unk_00 = param1->unk_00;
    param0->unk_0C.unk_04 = param1->unk_00;
    param0->unk_0C.unk_08 = param1->unk_02 - param1->unk_00;

    sub_02010588(&param0->unk_00, 2, param4, heapID);

    param0->unk_18 = param2;
    param0->unk_1C = 0;
    param0->unk_20 = param3;
    param0->unk_24 = 0;
    param0->unk_30 = param5;
    param0->unk_34 = param6;
    param0->heapID = heapID;
    param0->unk_28 = param1->unk_06;

    sub_02011E60(param0);
    SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);

    v0 = sub_02010604(&param0->unk_00, 0);
    v1 = sub_02010604(&param0->unk_00, 1);

    sub_020106A8(param5, param1->unk_04, param1->unk_05, 0, param4, 0, 0, 255, 192, param0->unk_28);
    sub_020106A8(param5, param1->unk_04, param1->unk_05, 1, param4, 0, 0, 255, 192, param0->unk_28);
    sub_02010710(param5, GX_WNDMASK_W0 | GX_WNDMASK_W1, param4, param0->unk_28);
    RequestEnableScreenHBlank(param0->unk_34, &param0->unk_00, sub_0201035C, param4, heapID);
}

static BOOL sub_02011E04(UnkStruct_02011E04 *param0)
{
    param0->unk_24++;

    if (param0->unk_24 >= param0->unk_20) {
        param0->unk_24 = 0;

        if ((param0->unk_1C + 1) <= param0->unk_18) {
            param0->unk_1C++;

            sub_02011F2C(&param0->unk_0C, param0->unk_1C, param0->unk_18);
            sub_02011E60(param0);
            SysTask_ExecuteAfterVBlank(sub_02010624, &param0->unk_00, 1023);
        } else {
            RequestDisableScreenHBlank(param0->unk_34, param0->unk_00.unk_08, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_02011E5C(UnkStruct_02011E04 *param0)
{
    return;
}

static void sub_02011E60(UnkStruct_02011E04 *param0)
{
    UnkStruct_02010FC0 *v0;
    UnkStruct_02010FC0 *v1;
    u16 v2;
    int v3, v4;
    int v5;

    v2 = param0->unk_0C.unk_00;
    v0 = sub_02010604(&param0->unk_00, 0);
    v1 = sub_02010604(&param0->unk_00, 1);

    for (v5 = 0; v5 < 96; v5++) {
        v3 = sub_020100FC(v2, (96 - v5));
        v4 = sub_020100FC(((90 * 0xffff) / 360) - v2, (96 - v5));

        if (v3 > 127) {
            v3 = 127;
        }

        if (v4 > 127) {
            v4 = 127;
        }

        v0->unk_300[0][v5] = 128 - v4;
        v0->unk_300[1][v5] = 128 - v3;

        v0->unk_300[0][191 - v5] = 128 - v4;
        v0->unk_300[1][191 - v5] = 128 - v3;

        v1->unk_300[0][v5] = 128 + v3;
        v1->unk_300[1][v5] = 128 + v4;

        v1->unk_300[0][191 - v5] = 128 + v3;
        v1->unk_300[1][191 - v5] = 128 + v4;
    }
}

static void sub_02011F2C(UnkStruct_02011F2C *param0, int param1, int param2)
{
    int v0 = param0->unk_08 * param1;
    v0 = v0 / param2;

    param0->unk_00 = v0 + param0->unk_04;
}

static void sub_02011F44(ScreenFade *param0, UnkStruct_0200FE6C *param1)
{
    UnkStruct_020120D4 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_020120D4));
    memset(param0->data, 0, sizeof(UnkStruct_020120D4));

    v0 = param0->data;
    sub_02011FE8(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);

    param0->state++;
}

static BOOL sub_02011F88(ScreenFade *param0)
{
    UnkStruct_020120D4 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_020120D4 *)param0->data;

    switch (param0->state) {
    case 1:
        v1 = sub_020120D4(v0);

        if (v1 == 1) {
            sub_02010658(v0->unk_324, v0->unk_32C, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        sub_02012134(v0);
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02011FE8(UnkStruct_020120D4 *param0, UnkStruct_0200FE6C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    sub_02010728(&param0->unk_00, param4, 1, 0, 0);

    if (param1->unk_06 == 0) {
        memset(param0->unk_00.unk_00[0].unk_00, 1, sizeof(u8) * 192);
        memset(param0->unk_00.unk_00[0].unk_C0, 1, sizeof(u8) * 192);
    } else {
        memset(param0->unk_00.unk_00[0].unk_00, 0, sizeof(u8) * 192);
        memset(param0->unk_00.unk_00[0].unk_C0, 0, sizeof(u8) * 192);
    }

    param0->unk_30C = param1->unk_00;
    param0->unk_310 = param1->unk_04;
    param0->unk_324 = param1->unk_06;
    param0->heapID = heapID;
    param0->unk_314 = param2;
    param0->unk_318 = 0;
    param0->unk_31C = param3;
    param0->unk_320 = 0;
    param0->unk_32C = param5;
    param0->unk_330 = param6;

    sub_02010784(param6, &param0->unk_00, heapID);

    if (param1->unk_06 == 1) {
        sub_020106A8(param5, GX_BLEND_PLANEMASK_BD, GX_BLEND_ALL, 0, param4, 0, 0, 0, 0, param1->unk_06);
    } else {
        sub_020106A8(param5, GX_BLEND_ALL, GX_BLEND_PLANEMASK_BD, 0, param4, 0, 0, 0, 0, param1->unk_06);
    }

    sub_02010710(param5, GX_WNDMASK_W0, param4, param0->unk_324);
}

static BOOL sub_020120D4(UnkStruct_020120D4 *param0)
{
    param0->unk_320++;

    if (param0->unk_320 >= param0->unk_31C) {
        param0->unk_320 = 0;

        if ((param0->unk_318 + 1) <= param0->unk_314) {
            param0->unk_318++;

            sub_02012138(param0);
            sub_0201076C(&param0->unk_00);
        } else {
            sub_0201079C(param0->unk_330, &param0->unk_00, param0->heapID);
            return 1;
        }
    }

    return 0;
}

static void sub_02012134(UnkStruct_020120D4 *param0)
{
    return;
}

static void sub_02012138(UnkStruct_020120D4 *param0)
{
    int v0;
    UnkStruct_02012174 *v1;
    const UnkStruct_0200F898 *v2;

    v1 = &param0->unk_00.unk_00[0];

    for (v0 = 0; v0 < param0->unk_310; v0++) {
        v2 = &param0->unk_30C[v0];
        sub_02012174(v2, v1, param0->unk_318, param0->unk_314);
    }
}

static void sub_02012174(const UnkStruct_0200F898 *param0, UnkStruct_02012174 *param1, int param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v1 = (param0->unk_01 - param0->unk_00) * param2;
    v2 = v1 / param3;

    v2 += param0->unk_00;

    if (param0->unk_00 <= param0->unk_01) {
        v3 = param0->unk_00;
        v4 = param0->unk_01;
        v5 = param0->unk_02;
    } else {
        v3 = param0->unk_01;
        v4 = param0->unk_00;

        if (param0->unk_02 == 0) {
            v5 = 1;
        } else {
            v5 = 0;
        }
    }

    for (v0 = v3; v0 < v4; v0++) {
        if (v0 == v2) {
            if (v5 == 0) {
                v5 = 1;
            } else {
                v5 = 0;
            }
        }

        param1->unk_00[v0] = v5;
    }
}

static void sub_020121C4(ScreenFade *param0, UnkStruct_0201006C *param1)
{
    UnkStruct_02012290 *v0;

    param0->data = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02012290));
    memset(param0->data, 0, sizeof(UnkStruct_02012290));

    v0 = param0->data;

    if (param1->unk_00.unk_0B == 0) {
        sub_02012290(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);
    } else {
        sub_02012384(v0, param1, param0->steps, param0->framesPerStep, param0->screen, param0->hwSettings, param0->hblanks, param0->heapID);
    }

    param0->state++;
}

static BOOL sub_02012228(ScreenFade *param0)
{
    UnkStruct_02012290 *v0;
    BOOL v1;
    BOOL v2 = 0;

    v0 = (UnkStruct_02012290 *)param0->data;

    switch (param0->state) {
    case 1:
        if (v0->unk_386 == 0) {
            v1 = sub_02012310(v0, param0);
        } else {
            v1 = sub_020123F4(v0, param0);
        }

        if (v1 == 1) {
            sub_02010658(param0->direction, param0->hwSettings, param0->screen);
            param0->state++;
        }
        break;
    case 2:
        Heap_FreeToHeap(param0->data);
        param0->data = NULL;
        param0->state++;
        v2 = 1;
        break;
    case 3:
        v2 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void sub_02012290(UnkStruct_02012290 *param0, UnkStruct_0201006C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int param7)
{
    int v0 = FX_Mul(param2 * FX32_ONE, param1->unk_14) >> FX32_SHIFT;

    param0->unk_384 = param2 - v0;
    param0->unk_380 = param1;
    param0->unk_386 = param1->unk_00.unk_0B;

    sub_02010E48(&param0->unk_00, &param1->unk_00, v0, param3, param4, param5);

    if (param1->unk_00.unk_08 == 0) {
        sub_02010710(param5, GX_WNDMASK_W0, param4, param1->unk_00.unk_0B);
    } else {
        sub_02010710(param5, GX_WNDMASK_W1, param4, param1->unk_00.unk_0B);
    }

    param0->unk_385 = 0;
}

static BOOL sub_02012310(UnkStruct_02012290 *param0, ScreenFade *param1)
{
    BOOL v0;
    BOOL v1 = 0;

    switch (param0->unk_385) {
    case 0:
        v0 = sub_02010EA4(&param0->unk_00);

        if (v0 == 1) {
            param0->unk_385++;

            sub_02011FE8(&param0->unk_4C, &param0->unk_380->unk_0C, param0->unk_384, param1->framesPerStep, param1->screen, param1->hwSettings, param1->hblanks, param1->heapID);
        }
        break;
    case 1:
        v0 = sub_020120D4(&param0->unk_4C);

        if (v0 == 1) {
            v1 = 1;
            param0->unk_385++;
        }
        break;
    case 2:
        v1 = 1;
        break;
    }

    return v1;
}

static void sub_02012384(UnkStruct_02012290 *param0, UnkStruct_0201006C *param1, int param2, int param3, int param4, HardwareWindowSettings *param5, ScreenFadeHBlanks *param6, int heapID)
{
    int v0;

    param0->unk_384 = FX_Mul(param2 * FX32_ONE, param1->unk_14) >> FX32_SHIFT;

    v0 = param2 - param0->unk_384;

    param0->unk_380 = param1;
    param0->unk_386 = param1->unk_00.unk_0B;

    sub_02011FE8(&param0->unk_4C, &param0->unk_380->unk_0C, v0, param3, param4, param5, param6, heapID);

    param0->unk_385 = 0;
}

static BOOL sub_020123F4(UnkStruct_02012290 *param0, ScreenFade *param1)
{
    BOOL v0;
    BOOL v1 = 0;

    switch (param0->unk_385) {
    case 0:
        v0 = sub_020120D4(&param0->unk_4C);

        if (v0 == 1) {
            param0->unk_385++;
            sub_02010E48(&param0->unk_00, &param0->unk_380->unk_00, param0->unk_384, param1->framesPerStep, param1->screen, param1->hwSettings);

            if (param0->unk_380->unk_00.unk_08 == 0) {
                sub_02010710(param1->hwSettings, GX_WNDMASK_W0, param1->screen, param0->unk_380->unk_00.unk_0B);
            } else {
                sub_02010710(param1->hwSettings, GX_WNDMASK_W1, param1->screen, param0->unk_380->unk_00.unk_0B);
            }
        }
        break;
    case 1:
        v0 = sub_02010EA4(&param0->unk_00);

        if (v0 == 1) {
            v1 = 1;
            param0->unk_385++;
        }
        break;
    case 2:
        v1 = 1;
        break;
    }

    return v1;
}
