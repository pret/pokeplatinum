#include "overlay007/ov7_0224BE9C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay007/struct_ov7_0224BEFC_decl.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "bag.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_020298BC.h"
#include "unk_0205D8CC.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_ov7_0224F1B4;

static const UnkStruct_ov7_0224F1B4 Unk_ov7_0224F1B4[22] = {
    { 0x32, 0x0, 0x1 },
    { 0x33, 0x1, 0x1 },
    { 0x34, 0x2, 0x1 },
    { 0x35, 0x6, 0x1 },
    { 0x36, 0x3, 0x1 },
    { 0x37, 0x4, 0x1 },
    { 0x38, 0x5, 0x1 },
    { 0x39, 0x7, 0x1 },
    { 0x3A, 0xF, 0xA },
    { 0x3B, 0x10, 0xA },
    { 0x3C, 0x11, 0xA },
    { 0x3D, 0x12, 0xA },
    { 0x3E, 0x13, 0xA },
    { 0x3F, 0x1A, 0x32 },
    { 0x40, 0x1F, 0x64 },
    { 0x41, 0x1B, 0x32 },
    { 0x42, 0x20, 0x64 },
    { 0x43, 0x1C, 0x32 },
    { 0x44, 0x1D, 0x32 },
    { 0x45, 0x21, 0x64 },
    { 0x46, 0x1E, 0x64 },
    { 0x47, 0x22, 0x64 }
};

typedef struct {
    u32 unk_00;
    Window *unk_04;
    u32 unk_08;
    u32 unk_0C;
    Strbuf *unk_10;
} UnkStruct_ov7_0224C3EC;

typedef struct {
    u32 unk_00;
    Window *unk_04;
    StringTemplate *unk_08;
    Strbuf *unk_0C;
    Strbuf *unk_10[3];
} UnkStruct_ov7_0224C620;

typedef struct {
    u32 unk_00;
    Window *unk_04;
    BmpList *unk_08;
    ResourceMetadata unk_0C[23];
    Strbuf *unk_C4[23];
    s32 unk_120;
    StringTemplate *unk_124;
    Strbuf *unk_128;
    u16 unk_12C;
    u16 unk_12E;
    void *unk_130;
    void (*unk_134)(void *, u32);
    SpriteResourceCollection *unk_138[4];
    SpriteResource *unk_148[4];
    CellActor *unk_158[2];
} UnkStruct_ov7_0224C768;

typedef void (*UnkFuncPtr_ov7_0224C768)(void *, u32);

typedef struct {
    u32 unk_00;
    UIControlData *unk_04;
    u32 unk_08;
} UnkStruct_ov7_0224CC44;

typedef struct {
    u32 unk_00;
    BGL *unk_04;
    UnkStruct_ov7_0224C620 *unk_08;
    const UnkStruct_ov7_0224F1B4 *unk_0C;
    Bag *unk_10;
} UnkStruct_ov7_0224CBE4;

typedef struct UnkStruct_ov7_0224BEFC_t {
    u32 unk_00;
    u32 unk_04;
    SaveData *unk_08;
    UnkStruct_02029D04 *unk_0C;
    Bag *unk_10;
    BGL *unk_14;
    u32 unk_18;
    CellActorCollection *unk_1C;
    UnkStruct_0200C738 unk_20;
    MessageLoader *unk_1AC;
    u32 unk_1B0;
    u32 unk_1B4;
    UnkStruct_ov7_0224C3EC unk_1B8;
    UnkStruct_ov7_0224C620 unk_1CC;
    UnkStruct_ov7_0224C768 unk_1E8;
    UnkStruct_ov7_0224CC44 unk_348;
    UnkStruct_ov7_0224CBE4 unk_354;
};

static void ov7_0224C35C(UnkStruct_ov7_0224BEFC *param0);
static void ov7_0224C3B8(UnkStruct_ov7_0224BEFC *param0);
static void ov7_0224C3CC(UnkStruct_ov7_0224BEFC *param0);
static void ov7_0224C3E0(UnkStruct_ov7_0224BEFC *param0);
static void ov7_0224C338(UnkStruct_ov7_0224BEFC *param0);
static void ov7_0224C3EC(UnkStruct_ov7_0224C3EC *param0, BGL *param1, u32 param2, u32 param3);
static void ov7_0224C444(UnkStruct_ov7_0224C3EC *param0);
static void ov7_0224C468(UnkStruct_ov7_0224C3EC *param0, Strbuf *param1, u32 param2);
static BOOL ov7_0224C4B8(UnkStruct_ov7_0224C3EC *param0);
static void ov7_0224C4E0(UnkStruct_ov7_0224C3EC *param0, MessageLoader *param1, u32 param2, const UnkStruct_ov7_0224F1B4 *param3, u32 param4);
static void ov7_0224C580(UnkStruct_ov7_0224C3EC *param0, MessageLoader *param1, u32 param2, const UnkStruct_ov7_0224F1B4 *param3, u32 param4);
static void ov7_0224C620(UnkStruct_ov7_0224C620 *param0, BGL *param1, MessageLoader *param2, u32 param3);
static void ov7_0224C698(UnkStruct_ov7_0224C620 *param0);
static void ov7_0224C6DC(UnkStruct_ov7_0224C620 *param0, u32 param1, u32 param2, u32 param3);
static void ov7_0224C768(UnkStruct_ov7_0224C768 *param0, BGL *param1, u32 param2, const UnkStruct_ov7_0224F1B4 *param3, u32 param4, MessageLoader *param5, void *param6, UnkFuncPtr_ov7_0224C768 param7, CellActorCollection *param8);
static void ov7_0224C934(UnkStruct_ov7_0224C768 *param0);
static u32 ov7_0224C9A4(UnkStruct_ov7_0224C768 *param0);
static void ov7_0224CA0C(UnkStruct_ov7_0224C768 *param0);
static void ov7_0224CA34(UnkStruct_ov7_0224C768 *param0);
static void ov7_0224CA54(CellActorResourceData *param0, UnkStruct_ov7_0224C768 *param1, u32 param2);
static void ov7_0224CB40(UnkStruct_ov7_0224C768 *param0);
static void ov7_0224CB70(UnkStruct_ov7_0224C768 *param0);
static void ov7_0224CC44(UnkStruct_ov7_0224CC44 *param0, BGL *param1, u32 param2);
static void ov7_0224CC6C(UnkStruct_ov7_0224CC44 *param0);
static u32 ov7_0224CC78(UnkStruct_ov7_0224CC44 *param0);
static void ov7_0224CBD0(UnkStruct_ov7_0224CBE4 *param0, UnkStruct_ov7_0224C620 *param1, const UnkStruct_ov7_0224F1B4 *param2, Bag *param3, u32 param4, BGL *param5);
static void ov7_0224CBE4(void *param0, u32 param1);
static BOOL ov7_0224CC88(const UnkStruct_02029D04 *param0, const UnkStruct_ov7_0224F1B4 *param1, u32 param2);
static BOOL ov7_0224CCB8(Bag *param0, const UnkStruct_ov7_0224F1B4 *param1, u32 param2, u32 param3);
static BOOL ov7_0224CCE4(const UnkStruct_02029D04 *param0, const UnkStruct_ov7_0224F1B4 *param1, u32 param2);
static void ov7_0224CCF4(UnkStruct_02029D04 *param0, Bag *param1, const UnkStruct_ov7_0224F1B4 *param2, u32 param3, u32 param4);

UnkStruct_ov7_0224BEFC *ov7_0224BE9C(u32 param0, SaveData *param1, BGL *param2)
{
    UnkStruct_ov7_0224BEFC *v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov7_0224BEFC));

    memset(v0, 0, sizeof(UnkStruct_ov7_0224BEFC));

    v0->unk_18 = param0;
    v0->unk_14 = param2;
    v0->unk_08 = param1;
    v0->unk_0C = sub_02029D04(sub_0202A750(v0->unk_08));
    v0->unk_10 = SaveData_GetBag(param1);
    v0->unk_1AC = MessageLoader_Init(0, 26, 572, v0->unk_18);

    ov7_0224C338(v0);
    ov7_0224C35C(v0);
    ov7_0224C3CC(v0);

    return v0;
}

void ov7_0224BEFC(UnkStruct_ov7_0224BEFC *param0)
{
    MessageLoader_Free(param0->unk_1AC);

    ov7_0224C3B8(param0);
    ov7_0224C3E0(param0);

    memset(param0, 0, sizeof(UnkStruct_ov7_0224BEFC));
    Heap_FreeToHeap(param0);
}

BOOL ov7_0224BF2C(UnkStruct_ov7_0224BEFC *param0)
{
    Strbuf *v0;
    BOOL v1;

    switch (param0->unk_00) {
    case 0:
        ov7_0224C3EC(&param0->unk_1B8, param0->unk_14, param0->unk_18, param0->unk_1B4);
        v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 4);
        ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
        Strbuf_Free(v0);
        param0->unk_00 = 11;
        param0->unk_04 = 1;
        break;
    case 1:
        if (ov7_0224CC88(param0->unk_0C, Unk_ov7_0224F1B4, 22)) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 5);
            ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
            Strbuf_Free(v0);
            param0->unk_00 = 11;
            param0->unk_04 = 12;
        } else {
            param0->unk_00 = 2;
        }
        break;
    case 2:
        ov7_0224C620(&param0->unk_1CC, param0->unk_14, param0->unk_1AC, param0->unk_18);
        ov7_0224CBD0(&param0->unk_354, &param0->unk_1CC, Unk_ov7_0224F1B4, param0->unk_10, param0->unk_18, param0->unk_14);
        ov7_0224C768(&param0->unk_1E8, param0->unk_14, param0->unk_18, Unk_ov7_0224F1B4, 22, param0->unk_1AC, &param0->unk_354, ov7_0224CBE4, param0->unk_1C);
    case 3:
        ov7_0224CA0C(&param0->unk_1E8);
        v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 6);
        ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
        Strbuf_Free(v0);
        param0->unk_00 = 10;
        param0->unk_04 = 4;
        break;
    case 4:
        v1 = ov7_0224C9A4(&param0->unk_1E8);

        if ((v1 != 0xffffffff) && (v1 != 0xfffffffe)) {
            sub_02019CB8(param0->unk_14, 3, 0, 0, 0, 32, 18, 17);

            ov7_0224CA34(&param0->unk_1E8);
            ov7_0224C4E0(&param0->unk_1B8, param0->unk_1AC, param0->unk_18, Unk_ov7_0224F1B4, param0->unk_1E8.unk_12C);

            param0->unk_00 = 10;
            param0->unk_04 = 5;

            Sound_PlayEffect(1500);
        } else if (v1 == 0xfffffffe) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 11);
            ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
            Strbuf_Free(v0);
            param0->unk_00 = 11;
            param0->unk_04 = 12;
            Sound_PlayEffect(1500);
        }
        break;
    case 5:
        ov7_0224CC44(&param0->unk_348, param0->unk_14, param0->unk_18);
        param0->unk_00 = 6;
        break;
    case 6:
        v1 = ov7_0224CC78(&param0->unk_348);

        if (v1 == 0) {
            if (ov7_0224CCB8(param0->unk_10, Unk_ov7_0224F1B4, param0->unk_1E8.unk_12C, param0->unk_18) == 0) {
                v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 9);
                ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
                Strbuf_Free(v0);
                param0->unk_00 = 11;
                param0->unk_04 = 3;
                ov7_0224CC6C(&param0->unk_348);
                break;
            }

            if (ov7_0224CCE4(param0->unk_0C, Unk_ov7_0224F1B4, param0->unk_1E8.unk_12C) == 0) {
                v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 10);
                ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
                Strbuf_Free(v0);
                ov7_0224CC6C(&param0->unk_348);
                param0->unk_00 = 11;
                param0->unk_04 = 3;
                break;
            }

            v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 8);

            ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
            Strbuf_Free(v0);
            ov7_0224CC6C(&param0->unk_348);

            param0->unk_00 = 11;
            param0->unk_04 = 7;
        } else if (v1 == 0xfffffffe) {
            ov7_0224CC6C(&param0->unk_348);
            param0->unk_00 = 3;
        }
        break;
    case 7:
        ov7_0224CCF4(param0->unk_0C, param0->unk_10, Unk_ov7_0224F1B4, param0->unk_1E8.unk_12C, param0->unk_18);
        ov7_0224C580(&param0->unk_1B8, param0->unk_1AC, param0->unk_18, Unk_ov7_0224F1B4, param0->unk_1E8.unk_12C);

        if (ov7_0224CC88(param0->unk_0C, Unk_ov7_0224F1B4, 22)) {
            param0->unk_00 = 11;
            param0->unk_04 = 8;
        } else {
            param0->unk_00 = 11;
            param0->unk_04 = 3;
        }
        break;
    case 8:
        v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 13);
        ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
        Strbuf_Free(v0);
        param0->unk_00 = 11;
        param0->unk_04 = 9;
        break;
    case 9:
        v0 = MessageLoader_GetNewStrbuf(param0->unk_1AC, 5);
        ov7_0224C468(&param0->unk_1B8, v0, param0->unk_18);
        Strbuf_Free(v0);
        param0->unk_00 = 11;
        param0->unk_04 = 12;
        break;
    case 10:
        if (ov7_0224C4B8(&param0->unk_1B8)) {
            param0->unk_00 = param0->unk_04;
        }
        break;
    case 11:
        if (ov7_0224C4B8(&param0->unk_1B8)) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                param0->unk_00 = param0->unk_04;
            }
        }
        break;
    case 12:
        ov7_0224C444(&param0->unk_1B8);
        ov7_0224C698(&param0->unk_1CC);
        ov7_0224C934(&param0->unk_1E8);
        ov7_0224CC6C(&param0->unk_348);
        return 1;
    default:
        break;
    }

    CellActorCollection_Update(param0->unk_1C);

    return 0;
}

static void ov7_0224C338(UnkStruct_ov7_0224BEFC *param0)
{
    Options *v0 = SaveData_Options(param0->unk_08);

    param0->unk_1B0 = Options_Frame(v0);
    param0->unk_1B4 = Options_TextFrameDelay(v0);
}

static void ov7_0224C35C(UnkStruct_ov7_0224BEFC *param0)
{
    sub_0200DD0C(param0->unk_14, 3, 1, 10, param0->unk_1B0, param0->unk_18);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, param0->unk_18);
    sub_0200DAA4(param0->unk_14, 3, (1 + (18 + 12)), 11, 0, param0->unk_18);
    Font_LoadTextPalette(0, 13 * 32, param0->unk_18);
    sub_02019EBC(param0->unk_14, 3);
}

static void ov7_0224C3B8(UnkStruct_ov7_0224BEFC *param0)
{
    sub_02019EBC(param0->unk_14, 3);
    sub_0205D8CC(0, 1);
}

static void ov7_0224C3CC(UnkStruct_ov7_0224BEFC *param0)
{
    param0->unk_1C = sub_020095C4(2, &param0->unk_20, param0->unk_18);
}

static void ov7_0224C3E0(UnkStruct_ov7_0224BEFC *param0)
{
    CellActorCollection_Delete(param0->unk_1C);
}

static void ov7_0224C3EC(UnkStruct_ov7_0224C3EC *param0, BGL *param1, u32 param2, u32 param3)
{
    if (param0->unk_00 == 1) {
        return;
    }

    param0->unk_08 = param3;
    param0->unk_04 = sub_0201A778(param2, 1);

    BGL_AddWindow(param1, param0->unk_04, 3, 2, 19, 27, 4, 12, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(param0->unk_04, 15);
    sub_0200E060(param0->unk_04, 0, 1, 10);

    param0->unk_00 = 1;
}

static void ov7_0224C444(UnkStruct_ov7_0224C3EC *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    sub_0201ACF4(param0->unk_04);
    BGL_DeleteWindow(param0->unk_04);
    sub_0201A928(param0->unk_04, 1);

    param0->unk_00 = 0;
}

static void ov7_0224C468(UnkStruct_ov7_0224C3EC *param0, Strbuf *param1, u32 param2)
{
    GF_ASSERT(param0->unk_10 == NULL);

    BGL_FillWindow(param0->unk_04, 15);

    param0->unk_10 = Strbuf_Clone(param1, param2);
    param0->unk_0C = Text_AddPrinterWithParamsAndColor(param0->unk_04, FONT_MESSAGE, param0->unk_10, 0, 0, param0->unk_08, TEXT_COLOR(1, 2, 15), NULL);

    sub_0201A954(param0->unk_04);
}

static BOOL ov7_0224C4B8(UnkStruct_ov7_0224C3EC *param0)
{
    if (Text_IsPrinterActive(param0->unk_0C) == 0) {
        if (param0->unk_10 != NULL) {
            Strbuf_Free(param0->unk_10);
            param0->unk_10 = NULL;
        }

        return 1;
    }

    return 0;
}

static void ov7_0224C4E0(UnkStruct_ov7_0224C3EC *param0, MessageLoader *param1, u32 param2, const UnkStruct_ov7_0224F1B4 *param3, u32 param4)
{
    Strbuf *v0;
    Strbuf *v1;
    StringTemplate *v2;

    v2 = StringTemplate_Default(param2);
    v1 = Strbuf_Init(200, param2);
    v0 = MessageLoader_GetNewStrbuf(param1, 7);

    if (param3[param4].unk_08 == 1) {
        StringTemplate_SetItemName(v2, 0, param3[param4].unk_04 + 149);
    } else {
        StringTemplate_SetItemNamePlural(v2, 0, param3[param4].unk_04 + 149);
    }

    StringTemplate_SetNumber(v2, 1, param3[param4].unk_08, 3, 0, 1);
    StringTemplate_SetContestAccessoryName(v2, 2, param3[param4].unk_00);
    StringTemplate_Format(v2, v1, v0);

    ov7_0224C468(param0, v1, param2);

    StringTemplate_Free(v2);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
}

static void ov7_0224C580(UnkStruct_ov7_0224C3EC *param0, MessageLoader *param1, u32 param2, const UnkStruct_ov7_0224F1B4 *param3, u32 param4)
{
    Strbuf *v0;
    Strbuf *v1;
    StringTemplate *v2;

    v2 = StringTemplate_Default(param2);
    v1 = Strbuf_Init(200, param2);
    v0 = MessageLoader_GetNewStrbuf(param1, 12);

    if (param3[param4].unk_08 == 1) {
        StringTemplate_SetItemName(v2, 0, param3[param4].unk_04 + 149);
    } else {
        StringTemplate_SetItemNamePlural(v2, 0, param3[param4].unk_04 + 149);
    }

    StringTemplate_SetNumber(v2, 1, param3[param4].unk_08, 3, 0, 1);
    StringTemplate_SetContestAccessoryName(v2, 2, param3[param4].unk_00);
    StringTemplate_Format(v2, v1, v0);

    ov7_0224C468(param0, v1, param2);

    StringTemplate_Free(v2);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
}

static void ov7_0224C620(UnkStruct_ov7_0224C620 *param0, BGL *param1, MessageLoader *param2, u32 param3)
{
    int v0;

    if (param0->unk_00 == 1) {
        return;
    }

    param0->unk_04 = sub_0201A778(param3, 1);
    BGL_AddWindow(param1, param0->unk_04, 3, 1, 11, 14, 6, 13, (((1 + (18 + 12)) + 9) + (27 * 4)));
    param0->unk_08 = StringTemplate_Default(param3);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_10[v0] = MessageLoader_GetNewStrbuf(param2, 16 + v0);
    }

    param0->unk_0C = Strbuf_Init(32, param3);
    BGL_FillWindow(param0->unk_04, 15);
    param0->unk_00 = 1;
}

static void ov7_0224C698(UnkStruct_ov7_0224C620 *param0)
{
    int v0;

    if (param0->unk_00 == 0) {
        return;
    }

    for (v0 = 0; v0 < 3; v0++) {
        Strbuf_Free(param0->unk_10[v0]);
    }

    Strbuf_Free(param0->unk_0C);
    StringTemplate_Free(param0->unk_08);
    sub_0201ACF4(param0->unk_04);
    BGL_DeleteWindow(param0->unk_04);
    sub_0201A928(param0->unk_04, 1);

    param0->unk_00 = 0;
}

static void ov7_0224C6DC(UnkStruct_ov7_0224C620 *param0, u32 param1, u32 param2, u32 param3)
{
    int v0;

    StringTemplate_SetItemName(param0->unk_08, 0, param1 + 149);
    StringTemplate_SetNumber(param0->unk_08, 1, param2, 3, 1, 1);
    StringTemplate_SetNumber(param0->unk_08, 2, param3, 3, 1, 1);
    BGL_FillWindow(param0->unk_04, 15);

    for (v0 = 0; v0 < 3; v0++) {
        StringTemplate_Format(param0->unk_08, param0->unk_0C, param0->unk_10[v0]);
        Text_AddPrinterWithParamsAndColor(param0->unk_04, FONT_SYSTEM, param0->unk_0C, 0, 16 * v0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    }

    Window_Show(param0->unk_04, 0, (1 + (18 + 12)), 11);
}

static void ov7_0224C768(UnkStruct_ov7_0224C768 *param0, BGL *param1, u32 param2, const UnkStruct_ov7_0224F1B4 *param3, u32 param4, MessageLoader *param5, void *param6, UnkFuncPtr_ov7_0224C768 param7, CellActorCollection *param8)
{
    int v0;
    Strbuf *v1;
    CellActorResourceData v2;
    CellActorInitParams v3;
    static const u8 v4[2] = {
        8, 136
    };
    static UnkStruct_ov84_02240FA8 v5 = {
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        7,
        0,
        16,
        0,
        8,
        1,
        15,
        2,
        0,
        0,
        0,
        0,
        0,
        NULL
    };

    if (param0->unk_00 == 1) {
        return;
    }

    param0->unk_00 = 1;
    param0->unk_120 = param4 + 1;
    param0->unk_130 = param6;
    param0->unk_134 = param7;
    param0->unk_04 = sub_0201A778(param2, 1);

    BGL_AddWindow(param1, param0->unk_04, 3, 17, 1, 14, 16, 13, ((((1 + (18 + 12)) + 9) + (27 * 4)) + (14 * 6)));

    param0->unk_124 = StringTemplate_Default(param2);
    param0->unk_128 = Strbuf_Init(32, param2);

    v1 = MessageLoader_GetNewStrbuf(param5, 16);

    for (v0 = 0; v0 < param4; v0++) {
        StringTemplate_SetContestAccessoryName(param0->unk_124, 0, param3[v0].unk_00);
        StringTemplate_Format(param0->unk_124, param0->unk_128, v1);

        param0->unk_C4[v0] = Strbuf_Clone(param0->unk_128, param2);
        param0->unk_0C[v0].unk_00 = param0->unk_C4[v0];
        param0->unk_0C[v0].unk_04 = v0;
    }

    param0->unk_C4[param4] = MessageLoader_GetNewStrbuf(param5, 19);
    param0->unk_0C[param4].unk_00 = param0->unk_C4[param4];
    param0->unk_0C[param4].unk_04 = param4;

    StringTemplate_Free(param0->unk_124);
    Strbuf_Free(param0->unk_128);
    Strbuf_Free(v1);

    v5.unk_0C = param0->unk_04;
    v5.unk_10 = param0->unk_120;
    v5.unk_00 = param0->unk_0C;

    param0->unk_08 = sub_0200112C(&v5, 0, 0, param2);

    Window_Show(param0->unk_04, 0, (1 + (18 + 12)), 11);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_138[v0] = SpriteResourceCollection_New(1, v0, param2);
    }

    ov7_0224CA54(&v2, param0, param2);

    v3.collection = param8;
    v3.resourceData = &v2;
    v3.priority = 0;
    v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v3.heapID = param2;
    v3.position.x = 192 * FX32_ONE;

    for (v0 = 0; v0 < 2; v0++) {
        v3.position.y = v4[v0] * FX32_ONE;
        param0->unk_158[v0] = CellActorCollection_Add(&v3);

        CellActor_SetAnim(param0->unk_158[v0], v0);
        CellActor_SetAnimateFlag(param0->unk_158[v0], 1);
    }
}

static void ov7_0224C934(UnkStruct_ov7_0224C768 *param0)
{
    int v0;

    if (param0->unk_00 == 0) {
        return;
    }

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_Delete(param0->unk_158[v0]);
    }

    ov7_0224CB40(param0);

    for (v0 = 0; v0 < param0->unk_120; v0++) {
        Strbuf_Free(param0->unk_C4[v0]);
    }

    sub_02001384(param0->unk_08, NULL, NULL);
    sub_0201ACF4(param0->unk_04);
    BGL_DeleteWindow(param0->unk_04);
    sub_0201A928(param0->unk_04, 1);

    param0->unk_00 = 1;
}

static u32 ov7_0224C9A4(UnkStruct_ov7_0224C768 *param0)
{
    u32 v0;
    u16 v1;

    v0 = sub_02001288(param0->unk_08);

    if (v0 == 0xffffffff) {
        sub_020014D0(param0->unk_08, &v1);

        if (param0->unk_12C != v1) {
            param0->unk_12C = v1;
            param0->unk_134(param0->unk_130, param0->unk_12C);

            Sound_PlayEffect(1500);
            ov7_0224CB70(param0);
        }
    } else if (v0 != 0xfffffffe) {
        if (param0->unk_12C == (param0->unk_120 - 1)) {
            v0 = 0xfffffffe;
        }
    }

    return v0;
}

static void ov7_0224CA0C(UnkStruct_ov7_0224C768 *param0)
{
    param0->unk_134(param0->unk_130, param0->unk_12C);

    Window_Show(param0->unk_04, 0, (1 + (18 + 12)), 11);
    ov7_0224CB70(param0);
}

static void ov7_0224CA34(UnkStruct_ov7_0224C768 *param0)
{
    CellActor_SetDrawFlag(param0->unk_158[0], 0);
    CellActor_SetDrawFlag(param0->unk_158[1], 0);
}

static void ov7_0224CA54(CellActorResourceData *param0, UnkStruct_ov7_0224C768 *param1, u32 param2)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, param2);

    param1->unk_148[0] = SpriteResourceCollection_AddTilesFrom(param1->unk_138[0], v0, 4, 0, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);
    param1->unk_148[1] = SpriteResourceCollection_AddPaletteFrom(param1->unk_138[1], v0, 10, 0, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);
    param1->unk_148[2] = SpriteResourceCollection_AddFrom(param1->unk_138[2], v0, 5, 0, 5000, 2, param2);
    param1->unk_148[3] = SpriteResourceCollection_AddFrom(param1->unk_138[3], v0, 6, 0, 5000, 3, param2);

    NARC_dtor(v0);
    sub_0200A3DC(param1->unk_148[0]);
    sub_0200A640(param1->unk_148[1]);
    sub_020093B4(param0, 5000, 5000, 5000, 5000, 0xffffffff, 0xffffffff, 0, 0, param1->unk_138[0], param1->unk_138[1], param1->unk_138[2], param1->unk_138[3], NULL, NULL);
}

static void ov7_0224CB40(UnkStruct_ov7_0224C768 *param0)
{
    int v0;

    sub_0200A4E4(param0->unk_148[0]);
    sub_0200A6DC(param0->unk_148[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_138[v0]);
    }
}

static void ov7_0224CB70(UnkStruct_ov7_0224C768 *param0)
{
    u16 v0;

    sub_020014DC(param0->unk_08, &v0, NULL);

    if (v0 <= 0) {
        CellActor_SetDrawFlag(param0->unk_158[0], 0);
    } else {
        CellActor_SetDrawFlag(param0->unk_158[0], 1);
    }

    if (v0 >= (param0->unk_120 - 7)) {
        CellActor_SetDrawFlag(param0->unk_158[1], 0);
    } else {
        CellActor_SetDrawFlag(param0->unk_158[1], 1);
    }
}

static void ov7_0224CBD0(UnkStruct_ov7_0224CBE4 *param0, UnkStruct_ov7_0224C620 *param1, const UnkStruct_ov7_0224F1B4 *param2, Bag *param3, u32 param4, BGL *param5)
{
    param0->unk_04 = param5;
    param0->unk_08 = param1;
    param0->unk_0C = param2;
    param0->unk_10 = param3;
    param0->unk_00 = param4;
}

static void ov7_0224CBE4(void *param0, u32 param1)
{
    UnkStruct_ov7_0224CBE4 *v0 = param0;
    u32 v1;

    if (param1 < 22) {
        v1 = Bag_GetItemQuantity(v0->unk_10, v0->unk_0C[param1].unk_04 + 149, v0->unk_00);
        ov7_0224C6DC(v0->unk_08, v0->unk_0C[param1].unk_04, v0->unk_0C[param1].unk_08, v1);
    } else {
        sub_02019CB8(v0->unk_04, 3, 0, 1 - 1, 11 - 1, 14 + 2, 6 + 2, 17);
        sub_02019448(v0->unk_04, 3);
    }
}

static void ov7_0224CC44(UnkStruct_ov7_0224CC44 *param0, BGL *param1, u32 param2)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        3,
        24,
        13,
        7,
        4,
        13,
        (((((1 + (18 + 12)) + 9) + (27 * 4)) + (14 * 6)) + (14 * 16))
    };

    if (param0->unk_00 == 1) {
        return;
    }

    param0->unk_04 = sub_02002100(param1, &v0, (1 + (18 + 12)), 11, param2);
    param0->unk_08 = param2;
    param0->unk_00 = 1;
}

static void ov7_0224CC6C(UnkStruct_ov7_0224CC44 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    param0->unk_00 = 0;
}

static u32 ov7_0224CC78(UnkStruct_ov7_0224CC44 *param0)
{
    u32 v0;

    v0 = sub_02002114(param0->unk_04, param0->unk_08);
    return v0;
}

static BOOL ov7_0224CC88(const UnkStruct_02029D04 *param0, const UnkStruct_ov7_0224F1B4 *param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < param2; v0++) {
        if (sub_02029D50(param0, param1[v0].unk_00, 1) == 1) {
            return 0;
        }
    }

    return 1;
}

static BOOL ov7_0224CCB8(Bag *param0, const UnkStruct_ov7_0224F1B4 *param1, u32 param2, u32 param3)
{
    u32 v0;

    v0 = Bag_GetItemQuantity(param0, param1[param2].unk_04 + 149, param3);

    if (v0 >= param1[param2].unk_08) {
        return 1;
    }

    return 0;
}

static BOOL ov7_0224CCE4(const UnkStruct_02029D04 *param0, const UnkStruct_ov7_0224F1B4 *param1, u32 param2)
{
    return sub_02029D50(param0, param1[param2].unk_00, 1);
}

static void ov7_0224CCF4(UnkStruct_02029D04 *param0, Bag *param1, const UnkStruct_ov7_0224F1B4 *param2, u32 param3, u32 param4)
{
    u32 v0 = param2[param3].unk_00;
    u32 v1 = param2[param3].unk_04 + 149;
    u32 v2 = param2[param3].unk_08;
    BOOL v3;

    sub_02029E2C(param0, v0, 1);
    v3 = Bag_TryRemoveItem(param1, v1, v2, param4);

    GF_ASSERT(v3 == 1);
}
