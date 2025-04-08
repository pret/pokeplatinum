#include "overlay020/ov20_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "struct_defs/sentence.h"

#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D5044.h"
#include "overlay020/struct_ov20_021D2128_decl.h"

#include "heap.h"
#include "overlay_manager.h"
#include "sound.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "system.h"
#include "touch_screen.h"
#include "unk_02014A84.h"
#include "unk_02023FCC.h"
#include "unk_0209747C.h"
#include "unk_020998EC.h"

typedef int (*UnkFuncPtr_ov20_021D1034)(UnkStruct_ov20_021D16E8 *, int *);
typedef void (*UnkFuncPtr_ov20_021D1C4C)(UnkStruct_ov20_021D16E8 *, int *);

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov20_021D1F34;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    int unk_08;
} UnkStruct_ov20_021D18BC;

typedef struct {
    s16 unk_00;
    s8 unk_02;
    s8 unk_03;
} UnkStruct_ov20_021D0F64;

typedef struct UnkStruct_ov20_021D16E8_t {
    UnkStruct_0209747C *unk_00;
    u32 unk_04;
    Sentence unk_08;
    u16 unk_10[2];
    UnkStruct_ov20_021D2128 *unk_14;
    UnkStruct_020998EC *unk_18;
    int unk_1C;
    UnkFuncPtr_ov20_021D1034 unk_20;
    UnkFuncPtr_ov20_021D1034 unk_24;
    int unk_28;
    UnkFuncPtr_ov20_021D1C4C unk_2C;
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    int unk_38;
    int unk_3C;
    UnkStruct_02023FCC *unk_40;
    BOOL unk_44;
    BOOL unk_48;
    u16 unk_4C;
    u16 unk_4E;
    u16 unk_50;
    u16 unk_52;
    UnkStruct_ov20_021D18BC unk_54;
    UnkStruct_ov20_021D0F64 unk_60;
    u8 unk_64;
    u8 unk_65;
    UnkStruct_ov20_021D1F34 unk_66;
} UnkStruct_ov20_021D16E8;

static void ov20_021D0E38(u32 param0, u32 param1, void *param2);
static UnkStruct_ov20_021D16E8 *ov20_021D0EC8(OverlayManager *param0);
static void ov20_021D0F64(UnkStruct_ov20_021D0F64 *param0, Sentence *param1);
static void ov20_021D0F88(UnkStruct_ov20_021D0F64 *param0, Sentence *param1);
static void ov20_021D0FCC(UnkStruct_ov20_021D0F64 *param0, Sentence *param1);
static void ov20_021D1014(UnkStruct_ov20_021D16E8 *param0, OverlayManager *param1);
static void ov20_021D1034(UnkStruct_ov20_021D16E8 *param0, UnkFuncPtr_ov20_021D1034 param1);
static int ov20_021D103C(UnkStruct_ov20_021D16E8 *param0, int *param1);
static int ov20_021D1050(UnkStruct_ov20_021D16E8 *param0, int *param1);
static int ov20_021D1130(UnkStruct_ov20_021D16E8 *param0, int *param1);
static int ov20_021D1260(UnkStruct_ov20_021D16E8 *param0, int *param1);
static int ov20_021D1468(UnkStruct_ov20_021D16E8 *param0, int *param1);
static int ov20_021D15A0(UnkStruct_ov20_021D16E8 *param0, int *param1);
static BOOL ov20_021D16E8(UnkStruct_ov20_021D16E8 *param0);
static BOOL ov20_021D1720(UnkStruct_ov20_021D16E8 *param0);
static BOOL ov20_021D1738(UnkStruct_ov20_021D16E8 *param0);
static BOOL ov20_021D17F0(UnkStruct_ov20_021D16E8 *param0);
static void ov20_021D1884(UnkStruct_ov20_021D18BC *param0, UnkStruct_ov20_021D16E8 *param1);
static u32 ov20_021D18BC(const UnkStruct_ov20_021D18BC *param0);
static u32 ov20_021D18C8(const UnkStruct_ov20_021D18BC *param0);
static int ov20_021D18D8(const UnkStruct_ov20_021D18BC *param0);
static int ov20_021D18DC(const UnkStruct_ov20_021D18BC *param0);
static int ov20_021D18E0(const UnkStruct_ov20_021D18BC *param0);
static int ov20_021D18E4(UnkStruct_ov20_021D16E8 *param0, int *param1);
static int ov20_021D1A68(UnkStruct_ov20_021D18BC *param0, u16 param1);
static int ov20_021D1B48(UnkStruct_ov20_021D18BC *param0);
static int ov20_021D1B70(UnkStruct_ov20_021D18BC *param0);
static BOOL ov20_021D1BB0(UnkStruct_ov20_021D16E8 *param0);
static int ov20_021D1C18(UnkStruct_ov20_021D16E8 *param0, int *param1);
static void ov20_021D1C4C(UnkStruct_ov20_021D16E8 *param0, UnkFuncPtr_ov20_021D1C4C param1);
static void ov20_021D1C54(UnkStruct_ov20_021D16E8 *param0);
static void ov20_021D1C5C(UnkStruct_ov20_021D16E8 *param0, int *param1);
static void ov20_021D1C90(UnkStruct_ov20_021D16E8 *param0, int *param1);
static void ov20_021D1DBC(UnkStruct_ov20_021D16E8 *param0, int *param1);
static BOOL ov20_021D1E70(UnkStruct_ov20_021D16E8 *param0);
static BOOL ov20_021D1E8C(UnkStruct_ov20_021D16E8 *param0);
static void ov20_021D1ED4(UnkStruct_ov20_021D1F34 *param0, int param1, int param2);
static int ov20_021D1EDC(UnkStruct_ov20_021D1F34 *param0, u16 param1);
static u32 ov20_021D1F34(const UnkStruct_ov20_021D1F34 *param0);
static void ov20_021D1F38(UnkStruct_ov20_021D16E8 *param0, int *param1);

int ov20_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov20_021D16E8 *v0;

    switch (*param1) {
    case 0:
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_62, SEQ_NONE, 0);
        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_34, 32768);
        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_35, 163840);
        v0 = ov20_021D0EC8(param0);
        ov20_021D21A0(v0->unk_14, 0);
        (*param1)++;
        break;
    case 1:
        v0 = OverlayManager_Data(param0);

        if (ov20_021D21F8(v0->unk_14)) {
            if (v0->unk_04 == 2) {
                v0->unk_64 = ov20_021D2DF4(v0->unk_14);
            } else {
                v0->unk_64 = 0;
            }

            return 1;
        }
        break;
    }

    return 0;
}

int ov20_021D0DF8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov20_021D16E8 *v0 = OverlayManager_Data(param0);

    v0->unk_30 = gSystem.pressedKeys;
    v0->unk_32 = gSystem.heldKeys;
    v0->unk_34 = gSystem.pressedKeysRepeatable;

    sub_0202404C(v0->unk_40);

    if (v0->unk_2C != NULL) {
        v0->unk_2C(v0, &(v0->unk_28));
        return 0;
    } else {
        return v0->unk_20(v0, &(v0->unk_1C));
    }

    return 0;
}

static void ov20_021D0E38(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov20_021D16E8 *v0 = param2;

    switch (param1) {
    case 0:
        v0->unk_38 = param0;

        switch (param0) {
        case 2:
            ov20_021D21A0(v0->unk_14, 25);
            break;
        case 3:
            ov20_021D21A0(v0->unk_14, 26);
            break;
        }
        break;
    case 1:
    case 3:
        switch (param0) {
        case 2:
            ov20_021D21A0(v0->unk_14, 27);
            break;
        case 3:
            ov20_021D21A0(v0->unk_14, 28);
            break;
        }

        v0->unk_38 = 4;
        break;

    case 2:
        if ((param0 == 2) || (param0 == 3)) {
            v0->unk_38 = param0;
        }
        break;
    default:
        v0->unk_38 = 4;
        break;
    }
}

int ov20_021D0EA8(OverlayManager *param0, int *param1)
{
    ov20_021D1014(OverlayManager_Data(param0), param0);

    Heap_Destroy(HEAP_ID_34);
    Heap_Destroy(HEAP_ID_35);

    return 1;
}

static UnkStruct_ov20_021D16E8 *ov20_021D0EC8(OverlayManager *param0)
{
    static const TouchScreenHitTable v0[] = {
        { 24, 80, 24, 112 },
        { 112, 168, 24, 112 },
        { 40, 72, 176, 208 },
        { 120, 152, 176, 208 },
        { 0xff, 0, 0, 0 },
    };
    UnkStruct_ov20_021D16E8 *v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov20_021D16E8), HEAP_ID_34);

    v1->unk_00 = OverlayManager_Args(param0);
    v1->unk_04 = sub_02097550(v1->unk_00);

    sub_0209756C(v1->unk_00, v1->unk_10, &v1->unk_08);

    if (v1->unk_04 == 2) {
        ov20_021D0F64(&v1->unk_60, &v1->unk_08);
    }

    v1->unk_18 = sub_020998EC(HEAP_ID_34, v1->unk_00);
    v1->unk_14 = ov20_021D2098(v1, v1->unk_18);
    v1->unk_40 = sub_02023FCC(v0, NELEMS(v0), ov20_021D0E38, v1, HEAP_ID_34);
    v1->unk_44 = 0;
    v1->unk_48 = 0;
    v1->unk_65 = 0;
    v1->unk_2C = NULL;
    v1->unk_28 = 0;
    v1->unk_20 = ov20_021D103C;
    v1->unk_1C = 0;
    v1->unk_4E = 0;

    ov20_021D1C4C(v1, ov20_021D1C5C);

    return v1;
}

static void ov20_021D0F64(UnkStruct_ov20_021D0F64 *param0, Sentence *param1)
{
    param0->unk_00 = sub_02014C80(param1);
    param0->unk_03 = sub_02014CD4(param0->unk_00);
    param0->unk_02 = sub_02014C84(param1);
}

static void ov20_021D0F88(UnkStruct_ov20_021D0F64 *param0, Sentence *param1)
{
    param0->unk_02++;

    if (param0->unk_02 >= param0->unk_03) {
        param0->unk_02 = 0;
        param0->unk_00++;

        if (param0->unk_00 >= 5) {
            param0->unk_00 = 0;
        }

        param0->unk_03 = sub_02014CD4(param0->unk_00);
    }

    sub_02014CE0(param1, param0->unk_00, param0->unk_02);
}

static void ov20_021D0FCC(UnkStruct_ov20_021D0F64 *param0, Sentence *param1)
{
    param0->unk_02--;

    if (param0->unk_02 < 0) {
        param0->unk_00--;

        if (param0->unk_00 < 0) {
            param0->unk_00 = (5 - 1);
        }

        param0->unk_03 = sub_02014CD4(param0->unk_00);
        param0->unk_02 = (param0->unk_03 - 1);
    }

    sub_02014CE0(param1, param0->unk_00, param0->unk_02);
}

static void ov20_021D1014(UnkStruct_ov20_021D16E8 *param0, OverlayManager *param1)
{
    sub_02024034(param0->unk_40);
    ov20_021D2128(param0->unk_14);
    sub_0209992C(param0->unk_18);
    OverlayManager_FreeData(param1);
}

static void ov20_021D1034(UnkStruct_ov20_021D16E8 *param0, UnkFuncPtr_ov20_021D1034 param1)
{
    param0->unk_20 = param1;
    param0->unk_1C = 0;
}

static int ov20_021D103C(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    static const UnkFuncPtr_ov20_021D1034 v0[] = {
        ov20_021D1050,
        ov20_021D1130,
        ov20_021D1260,
    };

    return v0[param0->unk_04](param0, param1);
}

static int ov20_021D1050(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if ((param0->unk_38 == 0) && (param0->unk_65 != 0) || (param0->unk_38 == 1) && (param0->unk_65 != 1) || (param0->unk_30 & PAD_BUTTON_SELECT)) {
            ov20_021D1C4C(param0, ov20_021D1F38);
            break;
        }

        if (param0->unk_30 & (PAD_KEY_DOWN | PAD_BUTTON_START)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_4C = 0;
            ov20_021D21A0(param0->unk_14, 4);
            (*param1) = 1;
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D1C4C(param0, ov20_021D1DBC);
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_50 = 0;
            ov20_021D21A0(param0->unk_14, 6);
            (*param1) = 2;
            break;
        }
        break;
    case 1:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D1468);
        }
        break;
    case 2:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D15A0);
        }
        break;
    }

    return 0;
}

static int ov20_021D1130(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if ((param0->unk_38 == 0) && (param0->unk_65 != 0) || (param0->unk_38 == 1) && (param0->unk_65 != 1) || (param0->unk_30 & PAD_BUTTON_SELECT)) {
            ov20_021D1C4C(param0, ov20_021D1F38);
            break;
        }

        if (param0->unk_30 & (PAD_KEY_DOWN | PAD_BUTTON_START)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_4C = 0;
            ov20_021D21A0(param0->unk_14, 4);
            (*param1) = 1;
            break;
        }

        if (param0->unk_30 & PAD_KEY_LEFT) {
            if (param0->unk_4E != 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_4E = 0;
                ov20_021D21A0(param0->unk_14, 12);
            }
            break;
        }

        if (param0->unk_30 & PAD_KEY_RIGHT) {
            if (param0->unk_4E == 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_4E = 1;
                ov20_021D21A0(param0->unk_14, 12);
            }
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D1C4C(param0, ov20_021D1DBC);
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_50 = 0;
            ov20_021D21A0(param0->unk_14, 6);
            (*param1) = 2;
            break;
        }
        break;
    case 1:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D1468);
        }
        break;
    case 2:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D15A0);
        }
        break;
    }

    return 0;
}

static int ov20_021D1260(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        param0->unk_64 = ov20_021D2DF4(param0->unk_14);
        (*param1) = 1;
    case 1:
        if ((param0->unk_38 == 0) && (param0->unk_65 != 0) || (param0->unk_38 == 1) && (param0->unk_65 != 1) || (param0->unk_30 & PAD_BUTTON_SELECT)) {
            ov20_021D1C4C(param0, ov20_021D1F38);
            break;
        }

        if (param0->unk_30 & PAD_KEY_UP) {
            if ((param0->unk_64) && (param0->unk_4E != 0)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_4E--;
                ov20_021D21A0(param0->unk_14, 12);
            }
            break;
        }

        if (param0->unk_30 & PAD_KEY_DOWN) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if ((param0->unk_64) && (param0->unk_4E < (param0->unk_64 - 1))) {
                param0->unk_4E++;
                ov20_021D21A0(param0->unk_14, 12);
            } else {
                param0->unk_4C = 0;
                ov20_021D21A0(param0->unk_14, 4);
                (*param1) = 3;
                break;
            }
        }

        if ((param0->unk_30 & PAD_BUTTON_START) || ((param0->unk_30 & PAD_BUTTON_A) && (param0->unk_64 == 0))) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_4C = 0;
            ov20_021D21A0(param0->unk_14, 4);
            (*param1) = 3;
            break;
        }

        if (param0->unk_34 & PAD_KEY_LEFT) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_4E = 0;
            ov20_021D0FCC(&param0->unk_60, &param0->unk_08);
            ov20_021D21A0(param0->unk_14, 3);
            (*param1) = 2;
            break;
        }

        if (param0->unk_34 & PAD_KEY_RIGHT) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_4E = 0;
            ov20_021D0F88(&param0->unk_60, &param0->unk_08);
            ov20_021D21A0(param0->unk_14, 3);
            (*param1) = 2;
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D1C4C(param0, ov20_021D1DBC);
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_50 = 0;
            ov20_021D21A0(param0->unk_14, 6);
            (*param1) = 4;
            break;
        }
        break;
    case 2:
        if (ov20_021D2210(param0->unk_14, 3)) {
            (*param1) = 0;
        }
        break;
    case 3:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D1468);
        }
        break;
    case 4:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D15A0);
        }
        break;
    }

    return 0;
}

static int ov20_021D1468(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if (ov20_021D21F8(param0->unk_14)) {
            if ((param0->unk_38 == 0) && (param0->unk_65 != 0) || (param0->unk_38 == 1) && (param0->unk_65 != 1) || (param0->unk_30 & PAD_BUTTON_SELECT)) {
                ov20_021D1C4C(param0, ov20_021D1F38);
                break;
            }

            if (param0->unk_30 & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_4C ^= 1;
                ov20_021D21A0(param0->unk_14, 13);
                break;
            }

            if (param0->unk_30 & PAD_BUTTON_START) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_4C = 0;
                ov20_021D21A0(param0->unk_14, 13);
                break;
            }

            if (param0->unk_30 & PAD_KEY_UP) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 5);
                (*param1) = 5;
                break;
            }

            if (param0->unk_30 & PAD_BUTTON_A) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                if (param0->unk_4C == 0) {
                    (*param1) = 1;
                    break;
                } else {
                    (*param1) = 2;
                    break;
                }
            }

            if (param0->unk_30 & PAD_BUTTON_B) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
                break;
            }
        }
        break;
    case 1:
        (*param1) = 3;
        ov20_021D1C4C(param0, ov20_021D1C90);
        break;
    case 2:
        (*param1) = 4;
        ov20_021D1C4C(param0, ov20_021D1DBC);
        break;
    case 3:
    case 4:
        (*param1) = 0;
        break;
    case 5:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, ov20_021D103C);
        }
        break;
    }

    return 0;
}

static int ov20_021D15A0(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if (ov20_021D2210(param0->unk_14, 15) == 0) {
            break;
        }

        if ((param0->unk_38 == 0) && (param0->unk_65 != 0) || (param0->unk_38 == 1) && (param0->unk_65 != 1) || (param0->unk_30 & PAD_BUTTON_SELECT)) {
            Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
            param0->unk_65 ^= 1;
            param0->unk_50 = 0;
            ov20_021D21A0(param0->unk_14, 24);
            (*param1) = 2;
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D21A0(param0->unk_14, 7);
            param0->unk_24 = ov20_021D103C;
            *param1 = 1;
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_A) {
            if (param0->unk_50 == 0xfe) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 7);
                param0->unk_24 = ov20_021D103C;
                *param1 = 1;
            } else if (ov20_021D16E8(param0)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D1884(&param0->unk_54, param0);
                param0->unk_24 = ov20_021D18E4;
                ov20_021D21A0(param0->unk_14, 8);
                *param1 = 1;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            }
            break;
        }

        if (ov20_021D1720(param0)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D21A0(param0->unk_14, 14);
            break;
        }
        break;
    case 1:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, param0->unk_24);
        }
        break;
    case 2:
        if (ov20_021D2210(param0->unk_14, 24)) {
            (*param1) = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov20_021D16E8(UnkStruct_ov20_021D16E8 *param0)
{
    if (param0->unk_65 == 0) {
        return sub_02099CA0(param0->unk_18, param0->unk_50) != 0;
    } else {
        return sub_02099CDC(param0->unk_18, param0->unk_50) != 0;
    }
}

static BOOL ov20_021D1720(UnkStruct_ov20_021D16E8 *param0)
{
    static BOOL (*const v0[])(UnkStruct_ov20_021D16E8 *) = {
        ov20_021D1738,
        ov20_021D17F0,
    };

    return v0[param0->unk_65](param0);
}

static BOOL ov20_021D1738(UnkStruct_ov20_021D16E8 *param0)
{
    static const struct {
        u8 unk_00;
        u8 unk_01;
        u8 unk_02;
        u8 unk_03;
    } v0[] = {
        { 0xfe, 3, 2, 1 },
        { 0xfe, 4, 0, 2 },
        { 0xfe, 5, 1, 0 },
        { 0, 6, 5, 4 },
        { 1, 7, 3, 5 },
        { 2, 8, 4, 3 },
        { 3, 9, 8, 7 },
        { 4, 10, 6, 8 },
        { 5, 11, 7, 6 },
        { 6, 0xfe, 11, 10 },
        { 7, 0xfe, 9, 11 },
        { 8, 0xfe, 10, 9 },
        { 9, 0, 0xfe, 0xfe },
    };
    u32 v1 = param0->unk_50;

    if (v1 == 0xfe) {
        v1 = 12;
    }

    if (param0->unk_50 != 0xfe) {
        param0->unk_52 = param0->unk_50;

        if (param0->unk_34 & PAD_KEY_UP) {
            param0->unk_50 = v0[v1].unk_00;
            return 1;
        }

        if (param0->unk_34 & PAD_KEY_DOWN) {
            param0->unk_50 = v0[v1].unk_01;
            return 1;
        }

        if (param0->unk_34 & PAD_KEY_LEFT) {
            param0->unk_50 = v0[v1].unk_02;
            return 1;
        }

        if (param0->unk_34 & PAD_KEY_RIGHT) {
            param0->unk_50 = v0[v1].unk_03;
            return 1;
        }
    } else {
        if (param0->unk_34 & PAD_KEY_UP) {
            param0->unk_50 = v0[12].unk_00 + (param0->unk_52 % 3);
            return 1;
        }

        if (param0->unk_34 & PAD_KEY_DOWN) {
            param0->unk_50 = v0[12].unk_01 + (param0->unk_52 % 3);
            return 1;
        }
    }

    return 0;
}

static BOOL ov20_021D17F0(UnkStruct_ov20_021D16E8 *param0)
{
    if (param0->unk_50 != 0xfe) {
        int v0 = 0xff;

        do {
            if (param0->unk_34 & PAD_KEY_UP) {
                v0 = ov20_021D5098(param0->unk_50);
                break;
            }

            if (param0->unk_34 & PAD_KEY_DOWN) {
                v0 = ov20_021D50B4(param0->unk_50);
                break;
            }

            if (param0->unk_34 & PAD_KEY_RIGHT) {
                v0 = ov20_021D50EC(param0->unk_50);
                break;
            }

            if (param0->unk_34 & PAD_KEY_LEFT) {
                v0 = ov20_021D50D0(param0->unk_50);
                break;
            }
        } while (0);

        if (v0 != 0xff) {
            param0->unk_52 = param0->unk_50;
            param0->unk_50 = v0;
            return 1;
        }
    } else {
        if (param0->unk_34 & PAD_KEY_UP) {
            param0->unk_50 = ov20_021D5124(param0->unk_52);
            return 1;
        }

        if (param0->unk_34 & PAD_KEY_DOWN) {
            param0->unk_50 = ov20_021D5108(param0->unk_52);
            return 1;
        }
    }

    return 0;
}

static void ov20_021D1884(UnkStruct_ov20_021D18BC *param0, UnkStruct_ov20_021D16E8 *param1)
{
    param0->unk_00 = 0;
    param0->unk_06 = 0;
    param0->unk_07 = 0;
    param0->unk_04 = ov20_021D1FE4(param1);
    param0->unk_08 = 0;

    if (param0->unk_04 > 10) {
        param0->unk_02 = ((param0->unk_04 - 10) / 2) + (param0->unk_04 & 1);
    } else {
        param0->unk_02 = 0;
    }
}

static u32 ov20_021D18BC(const UnkStruct_ov20_021D18BC *param0)
{
    return (param0->unk_07 * 2) + param0->unk_06;
}

static u32 ov20_021D18C8(const UnkStruct_ov20_021D18BC *param0)
{
    return (param0->unk_00 * 2) + ov20_021D18BC(param0);
}

static int ov20_021D18D8(const UnkStruct_ov20_021D18BC *param0)
{
    return param0->unk_08;
}

static int ov20_021D18DC(const UnkStruct_ov20_021D18BC *param0)
{
    return param0->unk_00;
}

static int ov20_021D18E0(const UnkStruct_ov20_021D18BC *param0)
{
    return param0->unk_02;
}

static int ov20_021D18E4(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:

        if ((param0->unk_38 == 0) && (param0->unk_65 != 0) || (param0->unk_38 == 1) && (param0->unk_65 != 1) || (param0->unk_30 & PAD_BUTTON_SELECT)) {
            Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
            param0->unk_50 = 0;
            param0->unk_65 ^= 1;
            ov20_021D21A0(param0->unk_14, 9);
            param0->unk_24 = ov20_021D15A0;
            *param1 = 3;
            break;
        }

        {
            int v0;

            if (param0->unk_38 == 2) {
                v0 = ov20_021D1B48(&(param0->unk_54));
            } else if (param0->unk_38 == 3) {
                v0 = ov20_021D1B70(&(param0->unk_54));
            } else {
                v0 = ov20_021D1A68(&(param0->unk_54), param0->unk_34);
            }

            switch (v0) {
            case 1:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 15);
                return 0;
            case 2:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 16);
                (*param1) = 1;
                return 0;
            case 3:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 16);
                (*param1) = 2;
                return 0;
            }
        }

        if (param0->unk_30 & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D21A0(param0->unk_14, 9);
            param0->unk_24 = ov20_021D15A0;
            *param1 = 3;
            break;
        }

        if (param0->unk_30 & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov20_021D1BB0(param0);
            param0->unk_24 = ov20_021D103C;
            ov20_021D21A0(param0->unk_14, 10);
            (*param1) = 3;
            break;
        }
        break;
    case 1:
        if (ov20_021D2210(param0->unk_14, 16)) {
            (*param1) = 0;
        }
        break;
    case 2:
        if (ov20_021D2210(param0->unk_14, 16)) {
            ov20_021D21A0(param0->unk_14, 15);
            (*param1) = 0;
        }
        break;
    case 3:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1034(param0, param0->unk_24);
            (*param1) = 0;
        }
        break;
    }

    return 0;
}

static int ov20_021D1A68(UnkStruct_ov20_021D18BC *param0, u16 param1)
{
    if (param1 & PAD_KEY_DOWN) {
        if (param0->unk_07 < 4) {
            u32 v0;

            param0->unk_07++;
            v0 = ov20_021D18C8(param0);

            if (v0 < param0->unk_04) {
                return 1;
            }

            if (v0 == param0->unk_04) {
                if (v0 & 1) {
                    param0->unk_06 = 0;
                    return 1;
                }
            }

            param0->unk_07--;
            return 4;
        } else if (param0->unk_00 < param0->unk_02) {
            param0->unk_08 = 1;
            param0->unk_00++;

            if (ov20_021D18C8(param0) < param0->unk_04) {
                return 2;
            } else {
                param0->unk_06 = 0;
                return 3;
            }
        }

        return 4;
    }

    if (param1 & PAD_KEY_UP) {
        if (param0->unk_07) {
            param0->unk_07--;
            return 1;
        } else if (param0->unk_00) {
            param0->unk_08 = -1;
            param0->unk_00--;
            return 2;
        }

        return 4;
    }

    if (param1 & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
        param0->unk_06 ^= 1;

        if (ov20_021D18C8(param0) < param0->unk_04) {
            return 1;
        }

        param0->unk_06 ^= 1;
        return 4;
    }

    if (param1 & PAD_BUTTON_L) {
        return ov20_021D1B48(param0);
    }

    if (param1 & PAD_BUTTON_R) {
        return ov20_021D1B70(param0);
    }

    return 0;
}

static int ov20_021D1B48(UnkStruct_ov20_021D18BC *param0)
{
    if (param0->unk_00) {
        if (param0->unk_00 >= 5) {
            param0->unk_00 -= 5;
            param0->unk_08 = -5;
        } else {
            param0->unk_08 = -(param0->unk_00);
            param0->unk_00 = 0;
        }

        return 2;
    }

    return 4;
}

static int ov20_021D1B70(UnkStruct_ov20_021D18BC *param0)
{
    if (param0->unk_00 < param0->unk_02) {
        if ((param0->unk_00 + 5) <= param0->unk_02) {
            param0->unk_08 = 5;
            param0->unk_00 += 5;
        } else {
            param0->unk_08 = param0->unk_02 - param0->unk_00;
            param0->unk_00 = param0->unk_02;
        }

        if (ov20_021D18C8(param0) < param0->unk_04) {
            return 2;
        } else {
            param0->unk_06 = 0;
            return 3;
        }
    }

    return 4;
}

static BOOL ov20_021D1BB0(UnkStruct_ov20_021D16E8 *param0)
{
    u32 v0;
    u16 v1;

    v0 = ov20_021D18C8(&param0->unk_54);

    if (param0->unk_65 == 0) {
        v1 = sub_02099CC8(param0->unk_18, param0->unk_50, v0);
    } else {
        v1 = sub_02099D14(param0->unk_18, param0->unk_50, v0);
    }

    switch (param0->unk_04) {
    case 0:
        param0->unk_10[0] = v1;
        break;
    case 1:
        param0->unk_10[param0->unk_4E] = v1;
        break;
    case 2:
        sub_02014CF8(&param0->unk_08, param0->unk_4E, v1);
        break;
    }

    return ov20_021D1E8C(param0);
}

static int ov20_021D1C18(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        ov20_021D21A0(param0->unk_14, 1);
        (*param1)++;
        break;
    case 1:
        if (ov20_021D21F8(param0->unk_14)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov20_021D1C4C(UnkStruct_ov20_021D16E8 *param0, UnkFuncPtr_ov20_021D1C4C param1)
{
    param0->unk_2C = param1;
    param0->unk_28 = 0;
}

static void ov20_021D1C54(UnkStruct_ov20_021D16E8 *param0)
{
    param0->unk_2C = NULL;
}

static void ov20_021D1C5C(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        ov20_021D21A0(param0->unk_14, 2);
        (*param1)++;
        break;
    case 1:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1C54(param0);
        }
        break;
    }
}

static void ov20_021D1C90(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if (ov20_021D1E70(param0) || sub_02097568(param0->unk_00)) {
            if (ov20_021D1E8C(param0)) {
                ov20_021D1ED4(&param0->unk_66, 1, 0);
                ov20_021D21A0(param0->unk_14, 18);
                (*param1) = 1;
            } else {
                ov20_021D21A0(param0->unk_14, 20);
                (*param1) = 2;
            }
        } else {
            ov20_021D1C4C(param0, ov20_021D1DBC);
        }
        break;
    case 1:
        if (ov20_021D2210(param0->unk_14, 21)) {
            switch (ov20_021D1EDC(&(param0->unk_66), param0->unk_30)) {
            case -3:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 21);
                break;
            case 1:
            case -2:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 22);
                (*param1) = 3;
                break;

            case 0:
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                if (param0->unk_04 == 2) {
                    sub_02014D10(&(param0->unk_08));
                }

                sub_020975E4(param0->unk_00, param0->unk_10, &param0->unk_08);
                ov20_021D1034(param0, ov20_021D1C18);
                (*param1) = 3;
                break;
            }
        }
        break;
    case 2:
        if (param0->unk_30 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
            ov20_021D21A0(param0->unk_14, 17);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1C54(param0);
        }
        break;
    }
}

static void ov20_021D1DBC(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        ov20_021D1ED4(&param0->unk_66, 1, 1);
        ov20_021D21A0(param0->unk_14, 19);
        (*param1) = 1;
        break;
    case 1:
        if (ov20_021D2210(param0->unk_14, 21)) {
            switch (ov20_021D1EDC(&(param0->unk_66), param0->unk_30)) {
            case -3:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 21);
                break;
            case 1:
            case -2:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D21A0(param0->unk_14, 22);
                (*param1) = 2;
                break;
            case 0:
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov20_021D1034(param0, ov20_021D1C18);
                (*param1) = 2;
                break;
            }
        }
        break;
    case 2:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1C54(param0);
        }
        break;
    }
}

static BOOL ov20_021D1E70(UnkStruct_ov20_021D16E8 *param0)
{
    return sub_020975A0(param0->unk_00, param0->unk_10, &param0->unk_08) == 0;
}

static BOOL ov20_021D1E8C(UnkStruct_ov20_021D16E8 *param0)
{
    switch (param0->unk_04) {
    case 0:
        return param0->unk_10[0] != 0xffff;
    case 1:
        return (param0->unk_10[0] != 0xffff) && (param0->unk_10[1] != 0xffff);
    case 2:
        return sub_02014BD0(&param0->unk_08);
    }

    return 0;
}

static void ov20_021D1ED4(UnkStruct_ov20_021D1F34 *param0, int param1, int param2)
{
    param0->unk_00 = param2;
    param0->unk_01 = param1;
}

static int ov20_021D1EDC(UnkStruct_ov20_021D1F34 *param0, u16 param1)
{
    if (param1 & PAD_KEY_UP) {
        if (param0->unk_00 == 0) {
            return -4;
        } else {
            param0->unk_00--;
            return -3;
        }
    }

    if (param1 & PAD_KEY_DOWN) {
        if (param0->unk_00 == param0->unk_01) {
            return -4;
        } else {
            param0->unk_00++;
            return -3;
        }
    }

    if (param1 & PAD_BUTTON_A) {
        return param0->unk_00;
    }

    if (param1 & PAD_BUTTON_B) {
        return -2;
    }

    return -1;
}

static u32 ov20_021D1F34(const UnkStruct_ov20_021D1F34 *param0)
{
    return param0->unk_00;
}

static void ov20_021D1F38(UnkStruct_ov20_021D16E8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        param0->unk_65 ^= 1;
        ov20_021D21A0(param0->unk_14, 23);
        (*param1) = 1;
        break;

    case 1:
        if (ov20_021D21F8(param0->unk_14)) {
            ov20_021D1C54(param0);
        }

        break;
    }
}

u32 ov20_021D1F84(const UnkStruct_ov20_021D16E8 *param0)
{
    return param0->unk_04;
}

u32 ov20_021D1F88(const UnkStruct_ov20_021D16E8 *param0)
{
    return sub_02097554(param0->unk_00);
}

u32 ov20_021D1F94(const UnkStruct_ov20_021D16E8 *param0)
{
    return param0->unk_65;
}

u32 ov20_021D1F9C(const UnkStruct_ov20_021D16E8 *param0)
{
    return sub_02014C80(&param0->unk_08);
}

u16 ov20_021D1FA8(const UnkStruct_ov20_021D16E8 *param0, int param1)
{
    if (param0->unk_04 == 2) {
        return sub_02014C78(&param0->unk_08, param1);
    } else {
        return param0->unk_10[param1];
    }
}

Strbuf *ov20_021D1FC0(const UnkStruct_ov20_021D16E8 *param0, u32 param1)
{
    return sub_02014BA0(&(param0->unk_08), param1);
}

u32 ov20_021D1FCC(const UnkStruct_ov20_021D16E8 *param0)
{
    return param0->unk_4E;
}

u32 ov20_021D1FD4(const UnkStruct_ov20_021D16E8 *param0)
{
    return param0->unk_4C;
}

u32 ov20_021D1FDC(const UnkStruct_ov20_021D16E8 *param0)
{
    return param0->unk_50;
}

u32 ov20_021D1FE4(const UnkStruct_ov20_021D16E8 *param0)
{
    if (param0->unk_65 == 0) {
        return sub_02099CA0(param0->unk_18, param0->unk_50);
    } else {
        return sub_02099CDC(param0->unk_18, param0->unk_50);
    }
}

void ov20_021D2008(const UnkStruct_ov20_021D16E8 *param0, u32 param1, Strbuf *param2)
{
    if (param0->unk_65 == 0) {
        sub_02099CA8(param0->unk_18, param0->unk_50, param1, param2);
    } else {
        sub_02099CEC(param0->unk_18, param0->unk_50, param1, param2);
    }
}

u32 ov20_021D2034(const UnkStruct_ov20_021D16E8 *param0)
{
    return ov20_021D18BC(&(param0->unk_54));
}

int ov20_021D2040(const UnkStruct_ov20_021D16E8 *param0)
{
    return ov20_021D18D8(&(param0->unk_54));
}

BOOL ov20_021D204C(const UnkStruct_ov20_021D16E8 *param0)
{
    return ov20_021D18DC(&(param0->unk_54)) != 0;
}

BOOL ov20_021D2060(const UnkStruct_ov20_021D16E8 *param0)
{
    int v0 = ov20_021D18DC(&(param0->unk_54));
    int v1 = ov20_021D18E0(&(param0->unk_54));

    return v0 < v1;
}

int ov20_021D2080(const UnkStruct_ov20_021D16E8 *param0)
{
    return sub_02097558(param0->unk_00);
}

u32 ov20_021D208C(const UnkStruct_ov20_021D16E8 *param0)
{
    return ov20_021D1F34(&param0->unk_66);
}
