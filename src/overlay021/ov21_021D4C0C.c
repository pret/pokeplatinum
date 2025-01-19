#include "overlay021/ov21_021D4C0C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_020127E8.h"

#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02012744.h"
#include "unk_0201E86C.h"

typedef struct UnkStruct_ov21_021D4C0C_t {
    UnkStruct_02012744 *unk_00;
    CellActorCollection *unk_04;
    BgConfig *unk_08;
    UnkStruct_ov21_021D4CA0 *unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov21_021D4C0C;

static BOOL ov21_021D4EA4(UnkStruct_ov21_021D4CA0 *param0);
static UnkStruct_ov21_021D4CA0 *ov21_021D4EB4(UnkStruct_ov21_021D4C0C *param0);

UnkStruct_ov21_021D4C0C *ov21_021D4C0C(const UnkStruct_ov21_021D1FA4 *param0)
{
    UnkStruct_ov21_021D4C0C *v0;

    v0 = Heap_AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_ov21_021D4C0C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4C0C));

    v0->unk_00 = sub_02012744(param0->unk_08, param0->unk_0C);
    v0->unk_0C = Heap_AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_ov21_021D4CA0) * param0->unk_08);

    GF_ASSERT(v0->unk_0C);
    memset(v0->unk_0C, 0, sizeof(UnkStruct_ov21_021D4CA0) * param0->unk_08);

    v0->unk_10 = param0->unk_08;
    v0->unk_04 = param0->unk_00;
    v0->unk_08 = param0->unk_04;
    v0->unk_14 = param0->unk_0C;

    return v0;
}

void ov21_021D4C6C(UnkStruct_ov21_021D4C0C *param0)
{
    GF_ASSERT(param0);

    ov21_021D4D3C(param0);
    Heap_FreeToHeap(param0->unk_0C);
    sub_020127BC(param0->unk_00);

    memset(param0, 0, sizeof(UnkStruct_ov21_021D4C0C));

    Heap_FreeToHeap(param0);
}

UnkStruct_ov21_021D4CA0 *ov21_021D4CA0(const UnkStruct_ov21_021D4CB8 *param0)
{
    int v0;

    v0 = sub_02012898(param0->unk_04, param0->unk_20, param0->heapID);
    return ov21_021D4CB8(param0, v0);
}

UnkStruct_ov21_021D4CA0 *ov21_021D4CB8(const UnkStruct_ov21_021D4CB8 *param0, int param1)
{
    UnkStruct_020127E8 v0;
    UnkStruct_ov21_021D4CA0 *v1;

    v1 = ov21_021D4EB4(param0->unk_00);

    GF_ASSERT(v1);
    sub_0201ED94(param1, 1, param0->unk_20, &v1->unk_04);

    v0.unk_00 = param0->unk_00->unk_00;
    v0.unk_04 = param0->unk_04;
    v0.unk_08 = param0->unk_00->unk_04;
    v0.unk_0C = param0->unk_08;
    v0.unk_10 = param0->unk_0C;
    v0.unk_14 = v1->unk_04.unk_04;
    v0.unk_18 = param0->unk_10;
    v0.unk_1C = param0->unk_14;
    v0.unk_20 = param0->unk_18;
    v0.unk_24 = param0->unk_1C;
    v0.unk_28 = param0->unk_20;
    v0.unk_2C = param0->heapID;

    v1->unk_00 = sub_020127E8(&v0);

    return v1;
}

void ov21_021D4D1C(UnkStruct_ov21_021D4CA0 *param0)
{
    sub_02012870(param0->unk_00);
    sub_0201EE28(&param0->unk_04);

    memset(param0, 0, sizeof(UnkStruct_ov21_021D4CA0));
}

void ov21_021D4D3C(UnkStruct_ov21_021D4C0C *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        if (ov21_021D4EA4(&param0->unk_0C[v0])) {
            ov21_021D4D1C(&param0->unk_0C[v0]);
        }
    }
}

Window *ov21_021D4D6C(UnkStruct_ov21_021D4C0C *param0, int param1, int param2)
{
    Window *v0;

    v0 = Window_New(param0->unk_14, 1);

    Window_Init(v0);
    Window_AddToTopLeftCorner(param0->unk_08, v0, param1, param2, 0, 0);

    return v0;
}

void ov21_021D4DA0(Window *param0)
{
    Windows_Delete(param0, 1);
}

u32 Pokedex_DisplayMessage(UnkStruct_ov21_021D4C0C *param0, Window *window, u32 bankID, u32 entryID, int xOffset, int yOffset)
{
    MessageLoader *messageLoader;
    Strbuf *strbuf;
    u32 strWidth;

    messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, param0->unk_14);
    GF_ASSERT(messageLoader);

    strbuf = MessageLoader_GetNewStrbuf(messageLoader, entryID);
    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    strWidth = Font_CalcStrbufWidth(FONT_SUBSCREEN, strbuf, 0);

    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);

    return strWidth;
}

void ov21_021D4E10(UnkStruct_ov21_021D4C0C *param0, Window *param1, u32 param2, u32 param3)
{
    MessageLoader *v0;
    Strbuf *v1;
    int v2;
    int v3;

    v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, param2, param0->unk_14);
    GF_ASSERT(v0);

    v1 = MessageLoader_GetNewStrbuf(v0, param3);
    v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);
    v3 = Window_GetWidth(param1) * 8;
    v3 = v3 - v2;
    v3 /= 2;

    Text_AddPrinterWithParamsAndColor(param1, FONT_SUBSCREEN, v1, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}

void ov21_021D4E80(UnkStruct_ov21_021D4C0C *param0, Window *param1, Strbuf *param2, int param3, int param4)
{
    Text_AddPrinterWithParamsAndColor(param1, FONT_SUBSCREEN, param2, param3, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
}

static BOOL ov21_021D4EA4(UnkStruct_ov21_021D4CA0 *param0)
{
    if (param0->unk_00) {
        return 1;
    }

    return 0;
}

static UnkStruct_ov21_021D4CA0 *ov21_021D4EB4(UnkStruct_ov21_021D4C0C *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        if (ov21_021D4EA4(&param0->unk_0C[v0]) == 0) {
            return &param0->unk_0C[v0];
        }
    }

    return NULL;
}
