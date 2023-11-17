#include <nitro.h>
#include <dwc.h>
#include <string.h>

#include "core_sys.h"
#include "assert.h"

#include "struct_decls/struct_020067E8_decl.h"

#include "overlay077/const_ov77_021D742C.h"
#include "overlay057/const_ov57_021D0F70.h"

#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0208BE5C.h"

#include "unk_02000C88.h"
#include "unk_02002B7C.h"
#include "unk_02003B60.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "unk_0200A9DC.h"
#include "unk_0200F174.h"
#include "unk_0201378C.h"
#include "unk_02017428.h"
#include "unk_02017728.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "unk_0201E3D8.h"
#include "unk_02022844.h"
#include "unk_0202419C.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_0202CC64.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_02039814.h"
#include "unk_02039A64.h"
#include "unk_0209A74C.h"

FS_EXTERN_OVERLAY(overlay57);
FS_EXTERN_OVERLAY(overlay77);

typedef struct {
    FSOverlayID unk_00;
    UnkStruct_020067E8 * unk_04;
    FSOverlayID unk_08;
    const UnkStruct_0208BE5C * unk_0C;
    UnkStruct_0203CC84 unk_10;
} UnkStruct_02101D28;

static void sub_02000E3C(void);
static void sub_02000E54(void);
static void sub_02000EE4(void);
static void sub_02000F10(int param0);
static void sub_02000F60(int param0);
static void sub_02000F94(int param0, int param1);
static void sub_02000F30(void);

static UnkStruct_02101D28 Unk_02101D28;
static PMBackLightSwitch Unk_02101D20;
BOOL Unk_02101D24;
extern const UnkStruct_0208BE5C Unk_ov77_021D788C;

void NitroMain (void)
{
    sub_0201789C();
    sub_020179E4();
    sub_02017AF4();

    sub_02017B70(0);
    PM_GetBackLight(&Unk_02101D20, NULL);
    sub_0202419C();
    sub_0201378C();
    sub_02000E3C();
    sub_02002B7C();

    sub_02002BB8(0, 3);
    sub_02002BB8(1, 3);
    sub_02002BB8(3, 3);

    Unk_02101D28.unk_10.unk_00 = -1;
    Unk_02101D28.unk_10.unk_08 = sub_020244AC();

    sub_02003B60(GetChatotCryFromSave(Unk_02101D28.unk_10.unk_08), sub_02025E44(Unk_02101D28.unk_10.unk_08));
    sub_02022844();

    if (sub_02038FFC(3) == DWC_INIT_RESULT_DESTROY_OTHER_SETTING) {
        sub_02039A64(3, 0);
    }

    if (sub_020247B8(Unk_02101D28.unk_10.unk_08) == 0) {
        sub_0209A74C(0);
    } else {
        switch (OS_GetResetParameter()) {
        case 0:
            Unk_02101D28.unk_10.unk_04 = 0;
            sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D788C);
            break;
        case 1:
            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);
            Unk_02101D28.unk_10.unk_04 = 1;
            sub_02000EC4(FS_OVERLAY_ID(overlay57), &Unk_ov57_021D0F70);
            break;
        default:
            GF_ASSERT(0);
        }
    }

    gCoreSys.unk_6C = 1;
    gCoreSys.unk_30 = 0;

    sub_02001028();
    sub_0200AB84();
    sub_02017428();

    Unk_02101D24 = FALSE;

    while (TRUE) {
        sub_02000F30();
        sub_0200106C();
        sub_02017B9C();

        if ((gCoreSys.unk_38 & (PAD_BUTTON_START | PAD_BUTTON_SELECT | PAD_BUTTON_L | PAD_BUTTON_R)) == (PAD_BUTTON_START | PAD_BUTTON_SELECT | PAD_BUTTON_L | PAD_BUTTON_R)) {
            if (gCoreSys.unk_68 == 0) {
                sub_02000F60(0);
            }
        }

        if (sub_020349EC()) {
            sub_02000F30();
            sub_02000E54();
            sub_0201CDD4(gCoreSys.unk_18);
            sub_0201CDD4(gCoreSys.unk_24);

            if (!gCoreSys.unk_30) {
                OS_WaitIrq(1, OS_IE_V_BLANK);
                gCoreSys.unk_2C++;
            }
        }

        sub_020137C4();
        sub_02017458();
        sub_020241CC();
        sub_0201CDD4(gCoreSys.unk_24);

        OS_WaitIrq(1, OS_IE_V_BLANK);

        gCoreSys.unk_2C++;
        gCoreSys.unk_30 = 0;

        sub_0200ABF0();
        sub_0200F27C();

        if (gCoreSys.unk_00 != NULL) {
            gCoreSys.unk_00(gCoreSys.unk_04);
        }

        sub_02003BD8();
        sub_0201CDD4(gCoreSys.unk_20);
    }
}

static void sub_02000E3C (void)
{
    Unk_02101D28.unk_00 = 0xffffffff;
    Unk_02101D28.unk_04 = NULL;
    Unk_02101D28.unk_08 = 0xffffffff;
    Unk_02101D28.unk_0C = NULL;
}

static void sub_02000E54 (void)
{
    BOOL v0;

    if (Unk_02101D28.unk_04 == NULL) {
        if (Unk_02101D28.unk_0C == NULL) {
            return;
        }

        if (Unk_02101D28.unk_08 != 0xffffffff) {
            Overlay_LoadByID(Unk_02101D28.unk_08, 0);
        }

        Unk_02101D28.unk_00 = Unk_02101D28.unk_08;
        Unk_02101D28.unk_04 = sub_020067E8(Unk_02101D28.unk_0C, &Unk_02101D28.unk_10, 0);
        Unk_02101D28.unk_08 = 0xffffffff;
        Unk_02101D28.unk_0C = NULL;
    }

    v0 = sub_02006844(Unk_02101D28.unk_04);

    if (v0) {
        sub_02006814(Unk_02101D28.unk_04);
        Unk_02101D28.unk_04 = NULL;

        if (Unk_02101D28.unk_00 != 0xffffffff) {
            Overlay_UnloadByID(Unk_02101D28.unk_00);
        }
    }
}

void sub_02000EC4 (FSOverlayID param0, const UnkStruct_0208BE5C * param1)
{
    GF_ASSERT(Unk_02101D28.unk_0C == NULL);

    Unk_02101D28.unk_08 = param0;
    Unk_02101D28.unk_0C = param1;
}

static void sub_02000EE4 (void)
{
    sub_020349EC();

    OS_WaitIrq(1, OS_IE_V_BLANK);

    gCoreSys.unk_2C++;
    gCoreSys.unk_30 = 0;

    if (gCoreSys.unk_00 != NULL) {
        gCoreSys.unk_00(gCoreSys.unk_04);
    }
}

static void sub_02000F10 (int param0)
{
    if (sub_02038AB8()) {
        if (CARD_TryWaitBackupAsync() == TRUE) {
            OS_ResetSystem(param0);
        }
    }

    sub_02000EE4();
}

static void sub_02000F30 (void)
{
    int v0 = sub_020389D8();

    switch (v0) {
    case 1:
        sub_02000F94(1, v0);
        break;
    case 2:
        sub_02000F94(0, v0);
        break;
    case 3:
        sub_02000F94(1, v0);
        break;
    }
}

static void sub_02000F60 (int param0)
{
    sub_0200F344(0, 0x7fff);
    sub_0200F344(1, 0x7fff);

    if (sub_02037DB0()) {
        sub_02024850(sub_020245A4());
    }

    while (TRUE) {
        sub_0200106C();
        sub_02000F10(param0);
    }
}

static void sub_02000F94 (int param0, int param1)
{
    int v0;
    BOOL v1;

    if (param1 == 3) {
        sub_02039834(0, 3, 0);
    } else if (0 == param0) {
        if (sub_020389B8() == TRUE) {
            sub_02039834(0, 6, 0);
        } else {
            sub_02039834(0, 2, 0);
        }
    } else {
        if (sub_020389B8() == TRUE) {
            sub_02039834(0, 5, 0);
        } else {
            sub_02039834(0, 0, 0);
        }
    }

    sub_02037DB0();
    sub_02000EE4();
    sub_02003BD8();

    v0 = 0;

    while (TRUE) {
        sub_0200106C();
        sub_02017B9C();

        if (v0 >= 30) {
            if (gCoreSys.padInput & PAD_BUTTON_A) {
                break;
            }
        }

        sub_02000EE4();

        if (v0 < 30) {
            v0++;
        }
    }

    sub_02000F60(param0);
}

void sub_02001028 (void)
{
    RTCDate v0;
    RTCTime v1;
    u32 v2;

    sub_0201384C(&v0, &v1);

    v2 = v0.year + v0.month * 0x100 * v0.day * 0x10000 + v1.hour * 0x10000 + (v1.minute + v1.second) * 0x1000000 + gCoreSys.unk_2C;

    MTRNG_SetSeed(v2);
    LCRNG_SetSeed(v2);
}

void sub_0200106C (void)
{
    PMBackLightSwitch v0, v1;
    PMWakeUpTrigger v2;

    if (PAD_DetectFold()) {
        if (gCoreSys.unk_67 == 0) {
            sub_0201E630();

            if (CTRDG_IsPulledOut() == TRUE) {
                Unk_02101D24 = TRUE;
            }

GOTOLABEL:
            v2 = PM_TRIGGER_COVER_OPEN | PM_TRIGGER_CARD;

            if (gCoreSys.unk_66 && (Unk_02101D24 == FALSE)) {
                v2 |= PM_TRIGGER_CARTRIDGE;
            }

            PM_GoSleepMode(v2, 0, 0);

            if (CARD_IsPulledOut()) {
                PM_ForceToPowerOff();
            } else {
                if (PAD_DetectFold()) {
                    Unk_02101D24 = TRUE;
                    goto GOTOLABEL;
                }
            }

            sub_0201E5FC();
        } else {
            PM_GetBackLight(&v0, &v1);

            if (v0 == PM_BACKLIGHT_ON) {
                PM_SetBackLight(PM_LCD_ALL, PM_BACKLIGHT_OFF);
            }
        }
    } else {
        PM_GetBackLight(&v0, &v1);

        if (v0 == PM_BACKLIGHT_OFF) {
            PM_SetBackLight(PM_LCD_ALL, Unk_02101D20);
        }
    }
}
