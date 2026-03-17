#include "applications/pokedex/ov21_021D94BC.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_panel.h"
#include "applications/pokedex/pokedex_search.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    PokedexScreenManager *unk_08;
    PokedexScreenManager *unk_0C;
} UnkStruct_ov21_021D95B8;

typedef struct {
    PokedexGraphicData *unk_00;
    int unk_04;
    BOOL *unk_08;
} UnkStruct_ov21_021D95CC;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021D9D18;

typedef struct {
    TouchScreenActions *unk_00;
    TouchScreenHitTable *unk_04;
    TouchScreenActions *unk_08;
    TouchScreenHitTable *unk_0C;
    UnkStruct_ov21_021D9D18 unk_10;
    PokedexPanelData *unk_18;
    PokedexCursorData *unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C[6];
    int unk_44[15];
    int unk_80;
    int unk_84;
    int unk_88;
    BOOL unk_8C;
    BOOL unk_90;
    int unk_94;
    BOOL unk_98;
} UnkStruct_ov21_021D9B24;

typedef struct {
    Sprite *unk_00[6];
    PokedexTextData *unk_18[6];
    Sprite *unk_30[15];
    PokedexTextData *unk_6C[15];
    Sprite *unk_A8[15];
    SpriteResource *unk_E4[4];
    SpriteResource *unk_F4[4];
    int unk_104;
    int unk_108;
    SpriteTransformation unk_10C;
    int unk_12C;
    int unk_130;
    BOOL *unk_134;
} UnkStruct_ov21_021DC96C;

static UnkStruct_ov21_021D95B8 *ov21_021D9534(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D95CC *ov21_021D957C(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021D95B4(enum HeapID heapID, PokedexApp *param1);
static void ov21_021D95B8(UnkStruct_ov21_021D95B8 *param0);
static void ov21_021D95CC(UnkStruct_ov21_021D95CC *param0);
static void ov21_021D95E0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D95E4(void);
static int ov21_021D95E8(PokedexDataManager *dataMan, void *data);
static int ov21_021D964C(PokedexDataManager *dataMan, void *data);
static int ov21_021D9780(PokedexDataManager *dataMan, void *data);
static int ov21_021D97A0(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021D9830(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021D9960(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021DC96C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2);
static void ov21_021D9A08(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2, const UnkStruct_ov21_021D9B24 *param3, enum HeapID heapID);
static void ov21_021D9A4C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021D9A74(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021DB50C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID);
static void ov21_021DB5DC(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021DB634(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID);
static void ov21_021DB6C8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021DC7C0(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021DC7F4(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DC8B4(UnkStruct_ov21_021DC96C *param0, int param1, int param2, int param3);
static void ov21_021DC8D0(UnkStruct_ov21_021DC96C *param0, int param1);
static void ov21_021DC90C(UnkStruct_ov21_021DC96C *param0, int param1);
static void ov21_021DC93C(UnkStruct_ov21_021DC96C *param0, int param1);
static void ov21_021DB708(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID);
static void ov21_021DB78C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DB81C(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1, int param2, int param3);
static void ov21_021DB79C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DB858(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1);
static void ov21_021DB90C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DB924(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DB944(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1);
static void ov21_021DB9B4(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1);
static void ov21_021DBA24(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1);
static void ov21_021DBAB8(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1);
static void ov21_021DBB74(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1);
static void ov21_021DBBE4(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID);
static void ov21_021DBDA0(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DBDC8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID);
static void ov21_021DBE2C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DBE98(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan, int param3, int param4);
static void ov21_021DBE3C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DBEC8(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan);
static void ov21_021DC04C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DC068(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DC088(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan);
static void ov21_021DC12C(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan);
static void ov21_021DC1E8(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan);
static void ov21_021DC2A4(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan);
static void ov21_021D9ADC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021D9B24(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9B34(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021D9B58(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID, int param3, int param4);
static void ov21_021D9B98(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9BB0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3);
static void ov21_021D9B04(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9BEC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021D9C90(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9D00(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9D18(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021D9CA8(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9CB8(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021D9D50(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9D68(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9D78(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021D9E08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9E90(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021D9EB4(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021D9F44(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9FF8(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021DA018(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021DA0BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA18C(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021DA0FC(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA1C8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021DA280(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA2C0(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021DA308(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID);
static void ov21_021DA41C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA514(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021DB3C8(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021DB3E0(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DB3EC(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID, int param2, int param3);
static void ov21_021DB428(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB2FC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3);
static void ov21_021DB468(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DA534(PokedexCursorData *param0, int param1);
static void ov21_021DA5A8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA6B0(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DA7B0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA888(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DA988(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DAAD4(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DAC08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DAD74(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DAED8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB02C(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID);
static void ov21_021DB12C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB480(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2);
static void ov21_021DB49C(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2);
static void ov21_021DB4D4(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1);
static BOOL ov21_021DB4E4(UnkStruct_ov21_021D95CC *param0, BOOL param1);
static void ov21_021DC35C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC368(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC380(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3);
static void ov21_021DC3BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC48C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC4F8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC57C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC600(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC67C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021DC720(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);

void ov21_021D94BC(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021D95B8 *v0 = ov21_021D9534(heapID, param1);
    UnkStruct_ov21_021D95CC *v1 = ov21_021D957C(heapID, param1);
    UnkStruct_ov21_021D4660 *v2 = ov21_021D95B4(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021D95E4();
    param0->dataFunc[0] = ov21_021D95E8;
    param0->dataFunc[1] = ov21_021D964C;
    param0->dataFunc[2] = ov21_021D9780;
    param0->graphicsFunc[0] = ov21_021D97A0;
    param0->graphicsFunc[1] = ov21_021D9830;
    param0->graphicsFunc[2] = ov21_021D9960;
}

void ov21_021D951C(PokedexScreenManager *param0)
{
    ov21_021D95B8(param0->pageData);
    ov21_021D95CC(param0->pageGraphics);
    ov21_021D95E0(param0->screenStates);
}

static UnkStruct_ov21_021D95B8 *ov21_021D9534(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021D95B8 *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D95B8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D95B8));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = PokedexMain_GetSortData(param1);
    v0->unk_08 = ov21_021D1410(param1, 1);
    v0->unk_0C = ov21_021D1430(param1, 1);

    return v0;
}

static UnkStruct_ov21_021D95CC *ov21_021D957C(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021D95CC *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D95CC));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D95CC));

    v0->unk_00 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021D95B4(enum HeapID heapID, PokedexApp *param1)
{
    return NULL;
}

static void ov21_021D95B8(UnkStruct_ov21_021D95B8 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021D95CC(UnkStruct_ov21_021D95CC *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021D95E0(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021D95E4(void)
{
    return 0;
}

static int ov21_021D95E8(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021D95B8 *v0 = data;
    UnkStruct_ov21_021D9B24 *v1;
    int v2;

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021D9B24));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021D9B24));
    dataMan->pageData = v1;

    v1->unk_80 = 0xffff;

    ov21_021DC35C(v1, v0);
    ov21_021D9ADC(v1, v0, dataMan->heapID);
    ov21_021DB3E0(v1, dataMan->heapID);
    ov21_021DB428(v1, v0);

    for (v2 = 0; v2 < 6; v2++) {
        v1->unk_2C[v2] = (3 + 1);
    }

    return 1;
}

static int ov21_021D964C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021D95B8 *v0 = data;
    UnkStruct_ov21_021D9B24 *v1 = dataMan->pageData;
    UnkStruct_ov21_021D95CC *v2 = v0->unk_0C->pageGraphics;
    int v3;
    int v4;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (PokedexSearch_GetScreenState(v0->unk_08) != 0) {
        return 0;
    }

    v3 = PokedexSearch_GetFilterMethod(v0->unk_08);

    switch (dataMan->state) {
    case 0:

        if ((v1->unk_24 != v3) || (v1->unk_28 != v1->unk_20)) {
            v1->unk_98 = 0;
            v2->unk_04 = 2;
            v2->unk_08 = &v1->unk_98;
            ov21_021D9CA8(v1);
            ov21_021D9CB8(v1, v3);
            dataMan->state++;
            break;
        }

        ov21_021D9B98(v1, v0);

        if (ov21_021D3998(v0->unk_04) == 2) {
            ov21_021DB2FC(v1, v0);
        }

        ov21_021DC368(v1, v0);
        break;
    case 1:
        if (v1->unk_98) {
            dataMan->state++;
        }
        break;
    case 2:
        v4 = v1->unk_24;
        v1->unk_24 = v3;
        v1->unk_28 = v1->unk_20;

        ov21_021D9B34(v1, v0, dataMan->heapID);
        ov21_021DB468(v1, dataMan->heapID);
        ov21_021DC35C(v1, v0);

        if (v4 != v1->unk_24) {
            ov21_021DB428(v1, v0);
        }

        v1->unk_98 = 0;
        v2->unk_04 = 1;
        v2->unk_08 = &v1->unk_98;

        ov21_021D9D68(v1);

        dataMan->state++;
        break;
    case 3:
        if (v1->unk_98) {
            dataMan->state++;
        }
        break;
    case 4:
        dataMan->state = 0;
        break;
    }

    return 0;
}

static int ov21_021D9780(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021D9B24 *v0 = dataMan->pageData;

    ov21_021D9B24(v0);
    ov21_021DB3C8(v0);
    Heap_Free(v0);

    dataMan->pageData = NULL;
    return 1;
}

static int ov21_021D97A0(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021D95B8 *v0 = data;
    const UnkStruct_ov21_021D9B24 *v1 = dataMan->pageData;
    UnkStruct_ov21_021D95CC *v2 = graphics;
    UnkStruct_ov21_021DC96C *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021DC96C));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021DC96C));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021D9A08(v3, v2, v0, v1, graphicsMan->heapID);
        BrightnessController_StartTransition(1, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        ov21_021DB480(v2, v1, v0);
        graphicsMan->state++;
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021D9830(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021D95B8 *v0 = data;
    const UnkStruct_ov21_021D9B24 *v1 = dataMan->pageData;
    UnkStruct_ov21_021D95CC *v2 = graphics;
    UnkStruct_ov21_021DC96C *v3 = graphicsMan->pageGraphics;
    int v4;
    int v5;
    int v6;
    int v7;

    if (PokedexSearch_GetScreenState(v0->unk_08) != 0) {
        ov21_021DC96C(v3, v2, v0);
    } else {
        ov21_021DC7C0(v3, v2);

        if ((v3->unk_104 != v1->unk_24) || (v3->unk_108 != v1->unk_28)) {
            v5 = v3->unk_104;
            v6 = v3->unk_108;
            v3->unk_104 = v1->unk_24;
            v3->unk_108 = v1->unk_28;

            if (v5 == 3) {
                ov21_021DB6C8(v3, v2);
                ov21_021DBDA0(v3);
            }

            ov21_021DB79C(v3, v2, graphicsMan->heapID);
            ov21_021DBE3C(v3, v2, graphicsMan->heapID);

            if (v3->unk_104 == 3) {
                ov21_021DB634(v3, v2, graphicsMan->heapID);
                ov21_021DBBE4(v3, v2, graphicsMan->heapID);
            }

            ov21_021DC8B4(v3, GX_OAM_MODE_XLU, v3->unk_104, v3->unk_108);
        }

        ov21_021DB49C(v2, v1, v0);
    }

    for (v4 = 0; v4 < 6; v4++) {
        ov21_021D144C(v3->unk_00[v4], v1->unk_2C[v4]);

        if (v3->unk_18[v4]) {
            if (v4 == 5) {
                v7 = 1;
            } else {
                v7 = 3;
            }

            ov21_021D1524(v3->unk_00[v4], v3->unk_18[v4], -6, v7, 5);
        }
    }

    for (v4 = 0; v4 < 15; v4++) {
        if (v3->unk_30[v4]) {
            ov21_021D144C(v3->unk_30[v4], v1->unk_44[v4]);
        }

        if (v3->unk_6C[v4]) {
            ov21_021D1524(v3->unk_30[v4], v3->unk_6C[v4], -6, 0xB, 6);
        }

        if (v3->unk_A8[v4]) {
            ov21_021D144C(v3->unk_A8[v4], v1->unk_44[v4]);
        }
    }

    return 0;
}

static int ov21_021D9960(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021D95B8 *v0 = data;
    const UnkStruct_ov21_021D9B24 *v1 = dataMan->pageData;
    UnkStruct_ov21_021D95CC *v2 = graphics;
    UnkStruct_ov21_021DC96C *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        if (PokedexSearch_GetFilteredState(v0->unk_08) == 1) {
            graphicsMan->state = 2;
        } else {
            BrightnessController_StartTransition(6, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
            graphicsMan->state++;
        }
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021D9A4C(v3, v2);

        if (v3->unk_104 == 3) {
            ov21_021DB6C8(v3, v2);
            ov21_021DBDA0(v3);
        }

        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021D9A08(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2, const UnkStruct_ov21_021D9B24 *param3, enum HeapID heapID)
{
    ov21_021D9A74(param1, param2, heapID);
    ov21_021DB50C(param0, param1, heapID);
    ov21_021DB708(param0, param1, heapID);
    ov21_021DBDC8(param0, param1, heapID);
    ov21_021DC8B4(param0, GX_OAM_MODE_XLU, param0->unk_104, param0->unk_108);
}

static void ov21_021D9A4C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    ov21_021DBE2C(param0);
    ov21_021DB78C(param0);
    ov21_021DB5DC(param0, param1);
    PokedexGraphics_SetDrawCursor(&param1->unk_00->cursorGraphics, 0);
}

static void ov21_021D9A74(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(param0->unk_00, scroll_sub_background_NCGR_lz, param0->unk_00->bgConfig, 6, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, search_main_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 6);
}

static void ov21_021D9ADC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    ov21_021D9BEC(param0, param1, heapID);
    ov21_021D9B58(param0, param1, heapID, param0->unk_24, param0->unk_28);
    ov21_021D9B04(param0);
}

static void ov21_021D9B04(UnkStruct_ov21_021D9B24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_2C[v0] = 3;
    }

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_44[v0] = 3;
    }
}

static void ov21_021D9B24(UnkStruct_ov21_021D9B24 *param0)
{
    ov21_021D9D00(param0);
    ov21_021D9D50(param0);
}

static void ov21_021D9B34(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    ov21_021D9D50(param0);
    ov21_021D9B58(param0, param1, heapID, param0->unk_24, param0->unk_28);
}

static void ov21_021D9B58(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID, int param3, int param4)
{
    switch (param3) {
    case 0:
        ov21_021D9D78(param0, param1, heapID);
        break;
    case 1:
        ov21_021D9EB4(param0, param1, heapID);
        break;
    case 2:
        if (param4 == 0) {
            ov21_021DA018(param0, param1, heapID);
        } else {
            ov21_021DA1C8(param0, param1, heapID);
        }
        break;
    case 3:
        ov21_021DA38C(param0, param1, heapID);
        break;
    default:
        break;
    }
}

static void ov21_021D9B98(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    ov21_021D9C90(param0, param1);
    ov21_021D9BB0(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021D9BB0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021D9E08(param0, param1);
        break;
    case 1:
        ov21_021D9F44(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DA0BC(param0, param1);
        } else {
            ov21_021DA280(param0, param1);
        }
        break;
    case 3:
        ov21_021DA41C(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021D9BEC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    param0->unk_04 = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 6);

    PokedexMain_SetHitTableRect(&param0->unk_04[1], 48 - (32 / 2), 48 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[0], 16 - (32 / 2), 16 + (32 / 2), 212 - (48 / 2), 212 + (48 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[2], 80 - (32 / 2), 80 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[3], 112 - (32 / 2), 112 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[4], 144 - (32 / 2), 144 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[5], 176 - (32 / 2), 176 + (32 / 2), 212 - (80 / 2), 212 + (80 / 2));

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_00 = TouchScreenActions_RegisterHandler(param0->unk_04, 6, ov21_021D9D18, &param0->unk_10, heapID);
}

static void ov21_021D9C90(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    ov21_021D9CA8(param0);
    TouchScreenActions_HandleAction(param0->unk_00);
    ov21_021D9CB8(param0, param0->unk_24);
}

static void ov21_021D9CA8(UnkStruct_ov21_021D9B24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_2C[v0] = 3;
    }
}

static void ov21_021D9CB8(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    switch (param1) {
    case 0:
        if (param0->unk_2C[1] != 2) {
            param0->unk_2C[1] = 1;
        }
        break;
    case 1:
        if (param0->unk_2C[2] != 2) {
            param0->unk_2C[2] = 1;
        }
        break;
    case 2:
        if (param0->unk_2C[3] != 2) {
            param0->unk_2C[3] = 1;
        }
        break;
    case 3:
        if (param0->unk_2C[4] != 2) {
            param0->unk_2C[4] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021D9D00(UnkStruct_ov21_021D9B24 *param0)
{
    TouchScreenActions_Free(param0->unk_00);
    Heap_Free(param0->unk_04);
    param0->unk_04 = NULL;
}

static void ov21_021D9D18(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_2C[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        PokedexPanel_Move(v2->unk_18, 4, param0);
        v2->unk_80 = param0;
        v2->unk_94++;
        break;
    default:
        v2->unk_94 = 0;
        break;
    }
}

static void ov21_021D9D50(UnkStruct_ov21_021D9B24 *param0)
{
    TouchScreenActions_Free(param0->unk_08);
    Heap_Free(param0->unk_0C);

    param0->unk_0C = NULL;
}

static void ov21_021D9D68(UnkStruct_ov21_021D9B24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_44[v0] = 3;
    }
}

static void ov21_021D9D78(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 6);

    for (v0 = 0; v0 < 3; v0++) {
        v3 = 48 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            PokedexMain_SetHitTableRect(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = TouchScreenActions_RegisterHandler(param0->unk_0C, 6, ov21_021D9E90, &param0->unk_10, heapID);
}

static void ov21_021D9E08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_44[v0] = 3;
    }

    TouchScreenActions_HandleAction(param0->unk_08);

    switch (PokedexSearch_GetSortOrder(param1->unk_08)) {
    case SO_NUMERICAL:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case SO_ALPHABETICAL:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case SO_HEAVIEST:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case SO_LIGHTEST:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case SO_TALLEST:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case SO_SMALLEST:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    }
}

static void ov21_021D9E90(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        PokedexPanel_Move(v2->unk_18, 4, 8 + param0);
        v2->unk_84 = param0;
        break;
    default:
        break;
    }
}

static void ov21_021D9EB4(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 10);

    for (v0 = 0; v0 < 5; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            PokedexMain_SetHitTableRect(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = TouchScreenActions_RegisterHandler(param0->unk_0C, 10, ov21_021D9FF8, &param0->unk_10, heapID);
}

static void ov21_021D9F44(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_44[v0] = 3;
    }

    TouchScreenActions_HandleAction(param0->unk_08);

    switch (PokedexSearch_GetFilterName(param1->unk_08)) {
    case 1:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 6:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 7:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 8:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    case 9:
        if (param0->unk_44[8] != 2) {
            param0->unk_44[8] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021D9FF8(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        PokedexPanel_Move(v2->unk_18, 4, 6 + param0);
        v2->unk_84 = param0;
        break;
    default:
        break;
    }
}

static void ov21_021DA018(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 11);

    for (v0 = 0; v0 < 5; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            PokedexMain_SetHitTableRect(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    v3 = 176;
    v2 = (48 - 24);

    PokedexMain_SetHitTableRect(&param0->unk_0C[10], v3 - (32 / 2), v3 + (32 / 2), v2 - (32 / 2), v2 + (32 / 2));

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = TouchScreenActions_RegisterHandler(param0->unk_0C, 11, ov21_021DA18C, &param0->unk_10, heapID);
}

static void ov21_021DA0BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 11; v0++) {
        param0->unk_44[v0] = 3;
    }

    TouchScreenActions_HandleAction(param0->unk_08);
    ov21_021DA0FC(param0, PokedexSearch_GetFilterType(param1->unk_08, 0));
    ov21_021DA0FC(param0, PokedexSearch_GetFilterType(param1->unk_08, 1));
}

static void ov21_021DA0FC(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    switch (param1) {
    case 1:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 6:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 7:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 8:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    case 9:
        if (param0->unk_44[8] != 2) {
            param0->unk_44[8] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021DA18C(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        if (v2->unk_90 == 0) {
            PokedexPanel_Move(v2->unk_18, 4, 6 + param0);
            v2->unk_84 = param0;
            v2->unk_90 = 1;
        }
        break;
    default:
        v2->unk_90 = 0;
        break;
    }
}

static void ov21_021DA1C8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 10);

    for (v0 = 0; v0 < 4; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            PokedexMain_SetHitTableRect(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    v3 = 144;
    v2 = 128;

    PokedexMain_SetHitTableRect(&param0->unk_0C[8], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));

    v3 = 176;
    v2 = (48 - 24);

    PokedexMain_SetHitTableRect(&param0->unk_0C[9], v3 - (32 / 2), v3 + (32 / 2), v2 - (32 / 2), v2 + (32 / 2));

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = TouchScreenActions_RegisterHandler(param0->unk_0C, 10, ov21_021DA2C0, &param0->unk_10, heapID);
}

static void ov21_021DA280(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_44[v0] = 3;
    }

    TouchScreenActions_HandleAction(param0->unk_08);
    ov21_021DA308(param0, PokedexSearch_GetFilterType(param1->unk_08, 0));
    ov21_021DA308(param0, PokedexSearch_GetFilterType(param1->unk_08, 1));
}

static void ov21_021DA2C0(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        if (v2->unk_90 == 0) {
            if (param0 == 8) {
                PokedexPanel_Move(v2->unk_18, 4, 6 + param0 + 1);
            } else {
                PokedexPanel_Move(v2->unk_18, 4, 6 + param0);
            }

            v2->unk_84 = param0;
            v2->unk_90 = 1;
        }
        break;
    default:
        v2->unk_90 = 0;
        break;
    }
}

static void ov21_021DA308(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    switch (param1) {
    case 10:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 11:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 12:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 13:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 14:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 15:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 16:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 17:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021DA38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 15);

    for (v0 = 0; v0 < 5; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 28 + (v1 * 56);

            PokedexMain_SetHitTableRect(&param0->unk_0C[(v0 * 3) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (48 / 2), v2 + (48 / 2));
        }
    }

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = TouchScreenActions_RegisterHandler(param0->unk_0C, 15, ov21_021DA514, &param0->unk_10, heapID);
}

static void ov21_021DA41C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_44[v0] = 3;
    }

    TouchScreenActions_HandleAction(param0->unk_08);

    switch (PokedexSearch_GetFilterForm(param1->unk_08)) {
    case 1:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[11] != 2) {
            param0->unk_44[11] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[12] != 2) {
            param0->unk_44[12] = 1;
        }
        break;
    case 6:
        if (param0->unk_44[8] != 2) {
            param0->unk_44[8] = 1;
        }
        break;
    case 7:
        if (param0->unk_44[13] != 2) {
            param0->unk_44[13] = 1;
        }
        break;
    case 8:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 9:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 10:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 11:
        if (param0->unk_44[9] != 2) {
            param0->unk_44[9] = 1;
        }
        break;
    case 12:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 13:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 14:
        if (param0->unk_44[10] != 2) {
            param0->unk_44[10] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021DA514(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        PokedexPanel_Move(v2->unk_18, 4, 6 + param0);
        v2->unk_84 = param0;
        break;
    default:
        break;
    }
}

static void ov21_021DA534(PokedexCursorData *param0, int param1)
{
    int v0, v1;
    int v2, v3;

    switch (param1) {
    case 0:
        v0 = 212;
        v1 = 16;
        v2 = 28;
        v3 = 16;
        break;
    case 1:
        v0 = 224;
        v1 = 48;
        v2 = 44;
        v3 = 16;
        break;
    case 2:
        v0 = 224;
        v1 = 80;
        v2 = 44;
        v3 = 16;
        break;
    case 3:
        v0 = 224;
        v1 = 112;
        v2 = 44;
        v3 = 16;
        break;
    case 4:
        v0 = 224;
        v1 = 144;
        v2 = 44;
        v3 = 16;
        break;
    case 5:
        v0 = 212;
        v1 = 176;
        v2 = 60;
        v3 = 16;
        break;
    }

    PokedexPanel_InitCursorData(param0, v0, v1, v2, v3, 0, 0, param1);
}

static void ov21_021DA5A8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (PokedexPanel_GetCurrentButton(param0->unk_18)) {
            case 1:
                param0->unk_80 = 1;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 2:
                param0->unk_80 = 2;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 3:
                param0->unk_80 = 3;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 4:
                param0->unk_80 = 4;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 5:
                param0->unk_80 = 5;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 0:
                param0->unk_80 = 0;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            default:
                break;
            }

            param0->unk_94++;
        }
    } else {
        param0->unk_94 = 0;
        param0->unk_8C = 0;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->unk_80 = 0;
        param0->unk_2C[param0->unk_80] = 2;
    }
}

static void ov21_021DA6B0(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;

    param0->unk_1C = Heap_Alloc(heapID, sizeof(PokedexCursorData) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v5 = 6 + (v0 * (3 - 1)) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v5 = 0;
                } else {
                    v4 = 1;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v5 = 1;
                } else {
                    v4 = 0;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v5 = 2;
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v5 = 3;
                } else {
                    v4 = 0;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v5 = 4;
                } else {
                    v4 = 1;
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v5 = 5;
                } else {
                    v4 = 1;
                }
                break;
            }

            if (v1 < (3 - 1)) {
                PokedexPanel_InitCursorData(&param0->unk_1C[(v0 * 3) + v1], v2, v3, 60, 16, v4, v4, v5);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v5);
            }
        }
    }

    param0->unk_18 = PokedexPanel_Alloc(heapID);
    PokedexPanel_New(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DA7B0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (PokedexPanel_GetCurrentButton(param0->unk_18)) {
            case 8:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DA888(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;

    param0->unk_1C = Heap_Alloc(heapID, sizeof(PokedexCursorData) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v5 = 6 + (v0 * 2) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v5 = 0;
                } else {
                    v4 = 0;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v5 = 1;
                } else {
                    v4 = 0;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v5 = 2;
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v5 = 3;
                } else {
                    v4 = 0;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v5 = 4;
                } else {
                    v4 = 0;
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v5 = 5;
                } else {
                    v4 = 1;
                }
                break;
            }

            if (v1 < (3 - 1)) {
                PokedexPanel_InitCursorData(&param0->unk_1C[(v0 * 3) + v1], v2, v3, 60, 16, v4, v4, v5);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v5);
            }
        }
    }

    param0->unk_18 = PokedexPanel_Alloc(heapID);
    PokedexPanel_New(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DA988(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (PokedexPanel_GetCurrentButton(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 14:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DAAD4(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6;
    int v7;

    param0->unk_1C = Heap_Alloc(heapID, sizeof(PokedexCursorData) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v7 = 6 + (v0 * 2) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v7 = 0;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v7 = 1;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v7 = 2;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v7 = 3;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v7 = 4;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v7 = 5;
                } else {
                    if (v1 == 0) {
                        v6 = 0;
                        v4 = 16;
                        v5 = 16;
                        v2 = (48 - 24);
                    } else {
                        v6 = 1;
                        v4 = 60;
                        v5 = 16;
                    }
                }
                break;
            }

            if (v1 < (3 - 1)) {
                PokedexPanel_InitCursorData(&param0->unk_1C[(v0 * 3) + v1], v2, v3, v4, v5, v6, v6, v7);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v7);
            }
        }
    }

    param0->unk_18 = PokedexPanel_Alloc(heapID);
    PokedexPanel_New(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DAC08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (PokedexPanel_GetCurrentButton(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 14:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                param0->unk_8C = 1;
                break;
            case 16:
                param0->unk_84 = 10;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DAD74(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6, v7;
    int v8;

    param0->unk_1C = Heap_Alloc(heapID, sizeof(PokedexCursorData) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v8 = 6 + (v0 * 2) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v8 = 0;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v8 = 1;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v8 = 2;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v8 = 3;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v8 = 4;
                } else {
                    if (v1 == 0) {
                        v6 = 1;
                        v7 = 2;
                        v4 = 60;
                        v5 = 16;
                    } else {
                        v6 = 0;
                        v7 = 0;
                        v4 = 60;
                        v5 = 16;
                    }
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v8 = 5;
                } else {
                    if (v1 == 0) {
                        v6 = 0;
                        v7 = 0;
                        v4 = 16;
                        v5 = 16;
                        v2 = (48 - 24);
                    } else {
                        v6 = 1;
                        v7 = 1;
                        v4 = 60;
                        v5 = 16;
                    }
                }
                break;
            }

            if (v1 < (3 - 1)) {
                PokedexPanel_InitCursorData(&param0->unk_1C[(v0 * 3) + v1], v2, v3, v4, v5, v6, v7, v8);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v8);
            }
        }
    }

    param0->unk_18 = PokedexPanel_Alloc(heapID);
    PokedexPanel_New(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DAED8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (PokedexPanel_GetCurrentButton(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                param0->unk_8C = 1;
                break;
            case 16:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DB02C(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;

    param0->unk_1C = Heap_Alloc(heapID, sizeof(PokedexCursorData) * (4 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 4; v1++) {
            v2 = 28 + (v1 * 56);
            v5 = 6 + (v0 * (4 - 1)) + v1;

            switch (v0) {
            case 0:
                if (v1 == (4 - 1)) {
                    v5 = 0;
                } else {
                    v4 = 0;
                }
                break;
            case 1:
                if (v1 == (4 - 1)) {
                    v5 = 1;
                } else {
                    v4 = 0;
                }
                break;
            case 2:
                if (v1 == (4 - 1)) {
                    v5 = 2;
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                if (v1 == (4 - 1)) {
                    v5 = 3;
                } else {
                    v4 = 0;
                }
                break;
            case 4:
                if (v1 == (4 - 1)) {
                    v5 = 4;
                } else {
                    v4 = 0;
                }
                break;
            case 5:
                if (v1 == (4 - 1)) {
                    v5 = 5;
                } else {
                    v4 = 1;
                }
                break;
            }

            if (v1 < (4 - 1)) {
                PokedexPanel_InitCursorData(&param0->unk_1C[(v0 * 4) + v1], v2, v3, 32, 20, v4, v4, v5);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 4) + v1], v5);
            }
        }
    }

    param0->unk_18 = PokedexPanel_Alloc(heapID);
    PokedexPanel_New(param0->unk_18, param0->unk_1C, 4, 6);
}

static void ov21_021DB12C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (PokedexPanel_GetCurrentButton(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 14:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 16:
                param0->unk_84 = 10;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 17:
                param0->unk_84 = 11;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 18:
                param0->unk_84 = 12;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 19:
                param0->unk_84 = 13;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 20:
                param0->unk_84 = 14;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DB2FC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        PokedexPanel_Move(param0->unk_18, 0, 1);
        param0->unk_8C = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        PokedexPanel_Move(param0->unk_18, 0, -1);
        param0->unk_8C = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        PokedexPanel_Move(param0->unk_18, 1, -1);
        param0->unk_8C = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        PokedexPanel_Move(param0->unk_18, 1, 1);
        param0->unk_8C = 1;
    }

    ov21_021DA5A8(param0, param1);
    ov21_021DB38C(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021DB38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DA7B0(param0, param1);
        break;
    case 1:
        ov21_021DA988(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DAC08(param0, param1);
        } else {
            ov21_021DAED8(param0, param1);
        }
        break;
    case 3:
        ov21_021DB12C(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DB3C8(UnkStruct_ov21_021D9B24 *param0)
{
    Heap_Free(param0->unk_1C);
    PokedexPanel_Free(param0->unk_18);
    param0->unk_18 = NULL;
    param0->unk_1C = NULL;
}

static void ov21_021DB3E0(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    ov21_021DB3EC(param0, heapID, param0->unk_24, param0->unk_28);
}

static void ov21_021DB3EC(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DA6B0(param0, heapID);
        break;
    case 1:
        ov21_021DA888(param0, heapID);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DAAD4(param0, heapID);
        } else {
            ov21_021DAD74(param0, heapID);
        }
        break;
    case 3:
        ov21_021DB02C(param0, heapID);
        break;
    default:
        break;
    }
}

static void ov21_021DB428(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    switch (param0->unk_24) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    PokedexPanel_Move(param0->unk_18, 4, v0);
}

static void ov21_021DB468(UnkStruct_ov21_021D9B24 *param0, enum HeapID heapID)
{
    ov21_021DB3C8(param0);
    ov21_021DB3EC(param0, heapID, param0->unk_24, param0->unk_28);
}

static void ov21_021DB480(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2)
{
    PokedexGraphics_GoToCurrentButton(param1->unk_18, param0->unk_00);
    ov21_021DB49C(param0, param1, param2);
}

static void ov21_021DB49C(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2)
{
    BOOL v0;

    if (ov21_021D3998(param2->unk_04) != 0) {
        v0 = ov21_021DB4E4(param0, 1);

        if (v0) {
            PokedexGraphics_GoToCurrentButton(param1->unk_18, param0->unk_00);
        }

        ov21_021DB4D4(param0, param1);
    } else {
        ov21_021DB4E4(param0, 0);
    }
}

static void ov21_021DB4D4(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1)
{
    PokedexGraphicData *v0 = param0->unk_00;
    PokedexGraphics_CurrentButtonTransformation(param1->unk_18, v0);
}

static BOOL ov21_021DB4E4(UnkStruct_ov21_021D95CC *param0, BOOL param1)
{
    PokedexGraphicData *v0 = param0->unk_00;

    if (PokedexGraphics_GetDrawCursor(&v0->cursorGraphics) != param1) {
        PokedexGraphics_SetDrawCursor(&v0->cursorGraphics, param1);
        return 1;
    }

    return 0;
}

static void ov21_021DB50C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = PokedexGraphics_GetNARC(param1->unk_00);

    param0->unk_E4[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, search_buttons_NCGR_lz, TRUE, search_buttons_NCGR_lz + 16000, NNS_G2D_VRAM_TYPE_2DSUB, heapID);

    SpriteTransfer_RequestCharAtEnd(param0->unk_E4[0]);
    SpriteResource_ReleaseData(param0->unk_E4[0]);

    param0->unk_E4[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, buttons_NCLR, FALSE, buttons_NCLR + 16000, NNS_G2D_VRAM_TYPE_2DSUB, 6, heapID);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_E4[1]);
    SpriteResource_ReleaseData(param0->unk_E4[1]);

    param0->unk_E4[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, search_buttons_cell_NCER_lz, TRUE, search_buttons_cell_NCER_lz + 16000, 2, heapID);
    param0->unk_E4[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, search_buttons_anim_NANR_lz, TRUE, search_buttons_anim_NANR_lz + 16000, 3, heapID);
}

static void ov21_021DB5DC(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_E4[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_E4[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_E4[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_E4[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_E4[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_E4[3]);
}

static void ov21_021DB634(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = PokedexGraphics_GetNARC(param1->unk_00);

    param0->unk_F4[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, search_button_forms_NCGR_lz, TRUE, search_button_forms_NCGR_lz + 16000, NNS_G2D_VRAM_TYPE_2DSUB, heapID);

    SpriteTransfer_RequestCharAtEnd(param0->unk_F4[0]);
    SpriteResource_ReleaseData(param0->unk_F4[0]);

    param0->unk_F4[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, search_button_forms_cell_NCER_lz, TRUE, search_button_forms_cell_NCER_lz + 16000, 2, heapID);
    param0->unk_F4[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, search_button_forms_anim_NANR_lz, TRUE, search_button_forms_anim_NANR_lz + 16000, 3, heapID);
}

static void ov21_021DB6C8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_F4[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_F4[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_F4[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_F4[3]);
}

static void ov21_021DB708(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3;

    SpriteResourcesHeader_Init(&v0, search_buttons_NCGR_lz + 16000, buttons_NCLR + 16000, search_buttons_cell_NCER_lz + 16000, search_buttons_anim_NANR_lz + 16000, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = heapID;

    ov21_021DB858(param0, &v1);
    ov21_021DB81C(param0, &v1, param0->unk_104, param0->unk_108);
}

static void ov21_021DB78C(UnkStruct_ov21_021DC96C *param0)
{
    ov21_021DB90C(param0);
    ov21_021DB924(param0);
}

static void ov21_021DB79C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3;

    SpriteResourcesHeader_Init(&v0, search_buttons_NCGR_lz + 16000, buttons_NCLR + 16000, search_buttons_cell_NCER_lz + 16000, search_buttons_anim_NANR_lz + 16000, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    ov21_021DB924(param0);
    ov21_021DB81C(param0, &v1, param0->unk_104, param0->unk_108);
}

static void ov21_021DB81C(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DB944(param0, param1);
        break;
    case 1:
        ov21_021DB9B4(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DBA24(param0, param1);
        } else {
            ov21_021DBAB8(param0, param1);
        }
        break;
    case 3:
        ov21_021DBB74(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DB858(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        switch (v0) {
        case 0:
            param1->position.y = (16 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 212 * FX32_ONE;
            break;
        case 1:
            param1->position.y = (48 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 2:
            param1->position.y = (80 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 3:
            param1->position.y = (112 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 4:
            param1->position.y = (144 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 5:
            param1->position.y = (176 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 212 * FX32_ONE;
            break;
        }

        param0->unk_00[v0] = SpriteList_Add(param1);

        switch (v0) {
        case 0:
            Sprite_SetAnim(param0->unk_00[v0], 3);
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            Sprite_SetAnim(param0->unk_00[v0], 2);
            break;
        case 5:
            Sprite_SetAnim(param0->unk_00[v0], 1);
            break;
        }
    }
}

static void ov21_021DB90C(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021DB924(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_30[v0]) {
            Sprite_Delete(param0->unk_30[v0]);
            param0->unk_30[v0] = NULL;
        }
    }
}

static void ov21_021DB944(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 3; v0++) {
        param1->position.y = 48 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = SpriteList_Add(param1);
            Sprite_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }
}

static void ov21_021DB9B4(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = SpriteList_Add(param1);
            Sprite_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }
}

static void ov21_021DBA24(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = SpriteList_Add(param1);
            Sprite_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }

    param1->position.y = 176;
    param1->position.x = (48 - 24);
    param1->position.x <<= FX32_SHIFT;
    param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);
    param0->unk_30[10] = SpriteList_Add(param1);

    Sprite_SetAnim(param0->unk_30[10], 5);
}

static void ov21_021DBAB8(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = SpriteList_Add(param1);
            Sprite_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }

    param1->position.y = 144;
    param1->position.x = 128;
    param1->position.x <<= FX32_SHIFT;
    param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);
    param0->unk_30[8] = SpriteList_Add(param1);

    Sprite_SetAnim(param0->unk_30[8], 0);

    param1->position.y = 176;
    param1->position.x = (48 - 24);
    param1->position.x <<= FX32_SHIFT;
    param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);
    param0->unk_30[9] = SpriteList_Add(param1);

    Sprite_SetAnim(param0->unk_30[9], 4);
}

static void ov21_021DBB74(UnkStruct_ov21_021DC96C *param0, SpriteListTemplate *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 3; v1++) {
            param1->position.x = 28 + (v1 * 56);
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 3) + v1] = SpriteList_Add(param1);

            Sprite_SetAnim(param0->unk_30[(v0 * 3) + v1], 6);
        }
    }
}

static void ov21_021DBBE4(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3, v4;

    SpriteResourcesHeader_Init(&v0, search_button_forms_NCGR_lz + 16000, buttons_NCLR + 16000, search_button_forms_cell_NCER_lz + 16000, search_button_forms_anim_NANR_lz + 16000, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 15;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = heapID;

    for (v3 = 0; v3 < 5; v3++) {
        v1.position.y = 16 + (v3 * (48 - 16));
        v1.position.y = (v1.position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v4 = 0; v4 < 3; v4++) {
            v1.position.x = 28 + (v4 * 56);
            v1.position.x <<= FX32_SHIFT;
            param0->unk_A8[(v3 * 3) + v4] = SpriteList_Add(&v1);

            switch ((v3 * 3) + v4) {
            case 0:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 0);
                break;
            case 1:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 5);
                break;
            case 2:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 10);
                break;
            case 3:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 1);
                break;
            case 4:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 6);
                break;
            case 5:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 11);
                break;
            case 6:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 2);
                break;
            case 7:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 9);
                break;
            case 8:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 12);
                break;
            case 9:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 3);
                break;
            case 10:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 8);
                break;
            case 11:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 13);
                break;
            case 12:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 4);
                break;
            case 13:
                Sprite_SetAnim(param0->unk_A8[(v3 * 3) + v4], 7);
                break;
            case 14:
                Sprite_SetDrawFlag(param0->unk_A8[(v3 * 3) + v4], FALSE);
                break;
            }
        }
    }
}

static void ov21_021DBDA0(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_A8[v0]) {
            Sprite_Delete(param0->unk_A8[v0]);
            param0->unk_A8[v0] = NULL;
        }
    }
}

static void ov21_021DBDC8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, enum HeapID heapID)
{
    PokedexDisplayBox displayBox;
    SpriteResource *v1;
    PokedexGraphicData *v2 = param1->unk_00;

    v1 = SpriteResourceCollection_Find(v2->spriteResourceCollection[1], buttons_NCLR + 16000);

    displayBox.textMan = v2->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v1, NULL);
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    displayBox.heapID = heapID;

    ov21_021DBEC8(param0, &displayBox, v2->textMan);
    ov21_021DBE98(param0, &displayBox, v2->textMan, param0->unk_104, param0->unk_108);
}

static void ov21_021DBE2C(UnkStruct_ov21_021DC96C *param0)
{
    ov21_021DC04C(param0);
    ov21_021DC068(param0);
}

static void ov21_021DBE3C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    PokedexDisplayBox displayBox;
    SpriteResource *v1;
    PokedexGraphicData *v2 = param1->unk_00;

    v1 = SpriteResourceCollection_Find(v2->spriteResourceCollection[1], buttons_NCLR + 16000);

    displayBox.textMan = v2->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v1, NULL);
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    displayBox.heapID = param2;

    ov21_021DC068(param0);
    ov21_021DBE98(param0, &displayBox, v2->textMan, param0->unk_104, param0->unk_108);
}

static void ov21_021DBE98(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan, int param3, int param4)
{
    switch (param3) {
    case 0:
        ov21_021DC088(param0, displayBox, textMan);
        break;
    case 1:
        ov21_021DC12C(param0, displayBox, textMan);
        break;
    case 2:
        if (param4 == 0) {
            ov21_021DC1E8(param0, displayBox, textMan);
        } else {
            ov21_021DC2A4(param0, displayBox, textMan);
        }
        break;
    default:
        break;
    }
}

static void ov21_021DBEC8(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan)
{
    Window *v0;
    int v1;
    u32 v2;

    v1 = PlttTransfer_GetPlttOffset(displayBox->paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = PokedexTextManager_NewWindow(textMan, 8, 2);
    v2 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_order, 0, 0);

    displayBox->window = v0;
    displayBox->sprite = param0->unk_00[1];
    displayBox->x = -v2 / 2;
    displayBox->y = -6;
    param0->unk_18[1] = PokedexTextManager_NextTextData(displayBox);

    sub_02012A60(param0->unk_18[1]->fontOAM, v1 + 3);
    PokedexTextManager_FreeWindow(v0);

    v0 = PokedexTextManager_NewWindow(textMan, 8, 2);
    v2 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_name, 0, 0);

    displayBox->window = v0;
    displayBox->sprite = param0->unk_00[2];
    displayBox->x = -v2 / 2;
    displayBox->y = -6;
    param0->unk_18[2] = PokedexTextManager_NextTextData(displayBox);

    sub_02012A60(param0->unk_18[2]->fontOAM, v1 + 3);
    PokedexTextManager_FreeWindow(v0);

    v0 = PokedexTextManager_NewWindow(textMan, 8, 2);
    v2 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_type, 0, 0);

    displayBox->window = v0;
    displayBox->sprite = param0->unk_00[3];
    displayBox->x = -v2 / 2;
    displayBox->y = -6;
    param0->unk_18[3] = PokedexTextManager_NextTextData(displayBox);

    sub_02012A60(param0->unk_18[3]->fontOAM, v1 + 3);
    PokedexTextManager_FreeWindow(v0);

    v0 = PokedexTextManager_NewWindow(textMan, 8, 2);
    v2 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_form, 0, 0);

    displayBox->window = v0;
    displayBox->sprite = param0->unk_00[4];
    displayBox->x = -v2 / 2;
    displayBox->y = -6;
    param0->unk_18[4] = PokedexTextManager_NextTextData(displayBox);

    sub_02012A60(param0->unk_18[4]->fontOAM, v1 + 3);
    PokedexTextManager_FreeWindow(v0);

    v0 = PokedexTextManager_NewWindow(textMan, 8, 2);
    v2 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_ok, 0, 0);

    displayBox->window = v0;
    displayBox->sprite = param0->unk_00[5];
    displayBox->x = -v2 / 2;
    displayBox->y = -6;
    param0->unk_18[5] = PokedexTextManager_NextTextData(displayBox);

    sub_02012A60(param0->unk_18[5]->fontOAM, v1 + 1);
    PokedexTextManager_FreeWindow(v0);
}

static void ov21_021DC04C(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_18[v0]) {
            PokedexTextManager_FreeTextData(param0->unk_18[v0]);
        }
    }
}

static void ov21_021DC068(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_6C[v0]) {
            PokedexTextManager_FreeTextData(param0->unk_6C[v0]);
            param0->unk_6C[v0] = NULL;
        }
    }
}

static void ov21_021DC088(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan)
{
    Window *v0;
    int v1;
    int v2;
    int entryID;
    u32 v4;

    v1 = PlttTransfer_GetPlttOffset(displayBox->paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 6; v2++) {
        v0 = PokedexTextManager_NewWindow(textMan, 10, 2);

        switch (v2) {
        case 0:
            entryID = pl_msg_pokedex_numerical;
            break;
        case 1:
            entryID = pl_msg_pokedex_alphabetical;
            break;
        case 2:
            entryID = pl_msg_pokedex_heaviest;
            break;
        case 3:
            entryID = pl_msg_pokedex_lightest;
            break;
        case 4:
            entryID = pl_msg_pokedex_tallest;
            break;
        case 5:
            entryID = pl_msg_pokedex_smallest;
            break;
        }

        v4 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, entryID, 0, 0);

        displayBox->x = -v4 / 2;
        displayBox->window = v0;
        displayBox->sprite = param0->unk_30[v2];
        displayBox->y = -6;
        param0->unk_6C[v2] = PokedexTextManager_NextTextData(displayBox);

        sub_02012A60(param0->unk_6C[v2]->fontOAM, v1 + 0xB);
        PokedexTextManager_FreeWindow(v0);
    }
}

static void ov21_021DC12C(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan)
{
    Window *v0;
    int v1;
    int v2, v3;
    int entryID;
    u32 v5;

    v1 = PlttTransfer_GetPlttOffset(displayBox->paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 10; v2++) {
        v0 = PokedexTextManager_NewWindow(textMan, 10, 2);

        switch (v2) {
        case 0:
            entryID = pl_msg_pokedex_abc;
            break;
        case 1:
            entryID = pl_msg_pokedex_def;
            break;
        case 2:
            entryID = pl_msg_pokedex_ghi;
            break;
        case 3:
            entryID = pl_msg_pokedex_jkl;
            break;
        case 4:
            entryID = pl_msg_pokedex_mno;
            break;
        case 5:
            entryID = pl_msg_pokedex_pqr;
            break;
        case 6:
            entryID = pl_msg_pokedex_stu;
            break;
        case 7:
            entryID = pl_msg_pokedex_vwx;
            break;
        case 8:
            entryID = pl_msg_pokedex_yz;
            break;
        case 9:
            entryID = pl_msg_pokedex_nonealphabetical;
            break;
        }

        v5 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, entryID, 0, 0);

        displayBox->x = -v5 / 2;
        displayBox->window = v0;
        displayBox->sprite = param0->unk_30[v2];
        displayBox->y = -6;
        param0->unk_6C[v2] = PokedexTextManager_NextTextData(displayBox);

        sub_02012A60(param0->unk_6C[v2]->fontOAM, v1 + 0xB);
        PokedexTextManager_FreeWindow(v0);
    }
}

static void ov21_021DC1E8(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan)
{
    Window *v0;
    int v1;
    int v2, v3;
    int entryID;
    u32 v5;

    v1 = PlttTransfer_GetPlttOffset(displayBox->paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 10; v2++) {
        v0 = PokedexTextManager_NewWindow(textMan, 10, 2);

        switch (v2) {
        case 0:
            entryID = pl_msg_pokedex_normal;
            break;
        case 1:
            entryID = pl_msg_pokedex_fight;
            break;
        case 2:
            entryID = pl_msg_pokedex_flying;
            break;
        case 3:
            entryID = pl_msg_pokedex_poison;
            break;
        case 4:
            entryID = pl_msg_pokedex_ground;
            break;
        case 5:
            entryID = pl_msg_pokedex_rock;
            break;
        case 6:
            entryID = pl_msg_pokedex_bug;
            break;
        case 7:
            entryID = pl_msg_pokedex_ghost;
            break;
        case 8:
            entryID = pl_msg_pokedex_steel;
            break;
        case 9:
            entryID = pl_msg_pokedex_nonetype;
            break;
        }

        v5 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, entryID, 0, 0);

        displayBox->x = -v5 / 2;
        displayBox->window = v0;
        displayBox->sprite = param0->unk_30[v2];
        displayBox->y = -6;
        param0->unk_6C[v2] = PokedexTextManager_NextTextData(displayBox);

        sub_02012A60(param0->unk_6C[v2]->fontOAM, v1 + 0xB);
        PokedexTextManager_FreeWindow(v0);
    }
}

static void ov21_021DC2A4(UnkStruct_ov21_021DC96C *param0, PokedexDisplayBox *displayBox, PokedexTextManager *textMan)
{
    Window *v0;
    int v1;
    int v2, v3;
    int entryID;
    u32 v5;

    v1 = PlttTransfer_GetPlttOffset(displayBox->paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 9; v2++) {
        v0 = PokedexTextManager_NewWindow(textMan, 10, 2);

        switch (v2) {
        case 0:
            entryID = pl_msg_pokedex_fire;
            break;
        case 1:
            entryID = pl_msg_pokedex_water;
            break;
        case 2:
            entryID = pl_msg_pokedex_grass;
            break;
        case 3:
            entryID = pl_msg_pokedex_electric;
            break;
        case 4:
            entryID = pl_msg_pokedex_psychic;
            break;
        case 5:
            entryID = pl_msg_pokedex_ice;
            break;
        case 6:
            entryID = pl_msg_pokedex_dragon;
            break;
        case 7:
            entryID = pl_msg_pokedex_dark;
            break;
        case 8:
            entryID = pl_msg_pokedex_nonetype;
            break;
        }

        v5 = PokedexTextManager_DisplayMessage(textMan, v0, TEXT_BANK_POKEDEX, entryID, 0, 0);

        displayBox->x = -v5 / 2;
        displayBox->window = v0;
        displayBox->sprite = param0->unk_30[v2];
        displayBox->y = -6;
        param0->unk_6C[v2] = PokedexTextManager_NextTextData(displayBox);

        sub_02012A60(param0->unk_6C[v2]->fontOAM, v1 + 0xB);
        PokedexTextManager_FreeWindow(v0);
    }
}

static void ov21_021DC35C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = param0->unk_24;
    param0->unk_84 = 0xffff;
}

static void ov21_021DC368(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    ov21_021DC3BC(param0, param1);
    ov21_021DC380(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021DC380(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DC48C(param0, param1);
        break;
    case 1:
        ov21_021DC4F8(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DC57C(param0, param1);
        } else {
            ov21_021DC600(param0, param1);
        }
        break;
    case 3:
        ov21_021DC720(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DC3BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    switch (param0->unk_80) {
    case 0:
        PokedexSearch_SetFilteredState(param1->unk_08, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    case 1:
        if (PokedexSearch_GetFilterMethod(param1->unk_08) != FM_ORDER) {
            PokedexSearch_SetFilterMethod(param1->unk_08, FM_ORDER);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }
        break;
    case 2:
        if (PokedexSearch_GetFilterMethod(param1->unk_08) != FM_NAME) {
            PokedexSearch_SetFilterMethod(param1->unk_08, FM_NAME);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }
        break;
    case 3:
        if (PokedexSearch_GetFilterMethod(param1->unk_08) != FM_TYPE) {
            PokedexSearch_SetFilterMethod(param1->unk_08, FM_TYPE);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_88 = 0;
        }
        break;
    case 4:
        if (PokedexSearch_GetFilterMethod(param1->unk_08) != FM_FORM) {
            PokedexSearch_SetFilterMethod(param1->unk_08, FM_FORM);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }
        break;
    case 5:
        if (param0->unk_94 <= 1) {
            PokedexSearch_SetFilteredState(param1->unk_08, TRUE);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }
        break;
    default:
        break;
    }

    param0->unk_80 = 0xffff;
}

static void ov21_021DC48C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int sortOrder = 100;

    switch (param0->unk_84) {
    case 0:
        sortOrder = SO_NUMERICAL;
        break;
    case 1:
        sortOrder = SO_ALPHABETICAL;
        break;
    case 2:
        sortOrder = SO_HEAVIEST;
        break;
    case 3:
        sortOrder = SO_LIGHTEST;
        break;
    case 4:
        sortOrder = SO_TALLEST;
        break;
    case 5:
        sortOrder = SO_SMALLEST;
        break;
    default:
        break;
    }

    if (sortOrder != 100) {
        if (PokedexSearch_GetSortOrder(param1->unk_08) != sortOrder) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            PokedexSearch_SetSortOrder(param1->unk_08, sortOrder);
        }
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC4F8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    case 4:
        v0 = 5;
        break;
    case 5:
        v0 = 6;
        break;
    case 6:
        v0 = 7;
        break;
    case 7:
        v0 = 8;
        break;
    case 8:
        v0 = 9;
        break;
    case 9:
        v0 = 0;
        break;
    default:
        break;
    }

    if (v0 != 100) {
        if (PokedexSearch_GetFilterName(param1->unk_08) != v0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);

            PokedexSearch_SetFilterName(param1->unk_08, v0);
        }
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC57C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    case 4:
        v0 = 5;
        break;
    case 5:
        v0 = 6;
        break;
    case 6:
        v0 = 7;
        break;
    case 7:
        v0 = 8;
        break;
    case 8:
        v0 = 9;
        break;
    case 9:
        v0 = 0;
        break;
    case 10:
        param0->unk_20 = 1;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    default:
        break;
    }

    if (v0 != 100) {
        ov21_021DC67C(param0, param1, v0);
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC600(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 10;
        break;
    case 1:
        v0 = 11;
        break;
    case 2:
        v0 = 12;
        break;
    case 3:
        v0 = 13;
        break;
    case 4:
        v0 = 14;
        break;
    case 5:
        v0 = 15;
        break;
    case 6:
        v0 = 16;
        break;
    case 7:
        v0 = 17;
        break;
    case 8:
        v0 = 0;
        break;
    case 9:
        param0->unk_20 = 0;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    default:
        break;
    }

    if (v0 != 100) {
        ov21_021DC67C(param0, param1, v0);
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC67C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    if (param2 != 0) {
        if ((PokedexSearch_GetFilterType(param1->unk_08, 0) != param2) && (PokedexSearch_GetFilterType(param1->unk_08, 1) != param2)) {
            if (PokedexSearch_GetFilterType(param1->unk_08, param0->unk_88) != param2) {
                PokedexSearch_SetFilterType(param1->unk_08, param2, param0->unk_88);
                param0->unk_88 = (param0->unk_88 + 1) % 2;
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            }
        }
    } else {
        if (PokedexSearch_GetFilterType(param1->unk_08, 0) != 0) {
            PokedexSearch_SetFilterType(param1->unk_08, param2, 0);

            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        } else {
            if (PokedexSearch_GetFilterType(param1->unk_08, 1) != 0) {
                PokedexSearch_SetFilterType(param1->unk_08, param2, 1);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            }
        }

        param0->unk_88 = 0;
    }
}

static void ov21_021DC720(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 13;
        break;
    case 1:
        v0 = 4;
        break;
    case 2:
        v0 = 12;
        break;
    case 3:
        v0 = 9;
        break;
    case 4:
        v0 = 8;
        break;
    case 5:
        v0 = 3;
        break;
    case 6:
        v0 = 10;
        break;
    case 7:
        v0 = 1;
        break;
    case 8:
        v0 = 6;
        break;
    case 9:
        v0 = 11;
        break;
    case 10:
        v0 = 14;
        break;
    case 11:
        v0 = 2;
        break;
    case 12:
        v0 = 5;
        break;
    case 13:
        v0 = 7;
        break;
    case 14:
        v0 = 0;
        break;
    default:
        break;
    }

    if (v0 != 100) {
        if (PokedexSearch_GetFilterForm(param1->unk_08) != v0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            PokedexSearch_SetFilterForm(param1->unk_08, v0);
        }
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC7C0(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    if (param0->unk_12C == 0) {
        if (param1->unk_04 > 0) {
            param0->unk_12C = param1->unk_04;
            param0->unk_130 = 0;
            param0->unk_134 = param1->unk_08;
            *param0->unk_134 = 0;
            param1->unk_04 = 0;
        }
    } else {
        ov21_021DC7F4(param0);
    }
}

static void ov21_021DC7F4(UnkStruct_ov21_021DC96C *param0)
{
    BOOL v0;

    if (param0->unk_12C == 0) {
        return;
    }

    switch (param0->unk_130) {
    case 0:

        if (param0->unk_12C == 1) {
            PokedexGraphics_InitTransformation(&param0->unk_10C, 0, 16, 0, 0, 2);
        } else {
            PokedexGraphics_InitTransformation(&param0->unk_10C, 16, 0, 0, 0, 2);
        }

        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG2, param0->unk_10C.currentX, 16 - param0->unk_10C.currentX);
        param0->unk_130++;
        break;
    case 1:
        v0 = PokedexGraphics_TakeTransformStep(&param0->unk_10C);
        G2S_ChangeBlendAlpha(param0->unk_10C.currentX, 16 - param0->unk_10C.currentX);

        if (v0 == 1) {
            if (param0->unk_12C == 1) {
                G2S_BlendNone();
            }

            *param0->unk_134 = 1;
            param0->unk_130 = 0;
            param0->unk_12C = 0;
        }
        break;
    }
}

static void ov21_021DC8B4(UnkStruct_ov21_021DC96C *param0, int param1, int param2, int param3)
{
    if (param2 == 2) {
        if (param3 == 0) {
            ov21_021DC90C(param0, param1);
        } else {
            ov21_021DC93C(param0, param1);
        }
    } else {
        ov21_021DC8D0(param0, param1);
    }
}

static void ov21_021DC8D0(UnkStruct_ov21_021DC96C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_30[v0]) {
            Sprite_SetExplicitOAMMode(param0->unk_30[v0], param1);
        }

        if (param0->unk_6C[v0]) {
            sub_02012AF0(param0->unk_6C[v0]->fontOAM, param1);
        }

        if (param0->unk_A8[v0]) {
            Sprite_SetExplicitOAMMode(param0->unk_A8[v0], param1);
        }
    }
}

static void ov21_021DC90C(UnkStruct_ov21_021DC96C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (v0 != 10) {
            if (param0->unk_30[v0]) {
                Sprite_SetExplicitOAMMode(param0->unk_30[v0], param1);
            }

            if (param0->unk_6C[v0]) {
                sub_02012AF0(param0->unk_6C[v0]->fontOAM, param1);
            }
        }
    }
}

static void ov21_021DC93C(UnkStruct_ov21_021DC96C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (v0 != 9) {
            if (param0->unk_30[v0]) {
                Sprite_SetExplicitOAMMode(param0->unk_30[v0], param1);
            }

            if (param0->unk_6C[v0]) {
                sub_02012AF0(param0->unk_6C[v0]->fontOAM, param1);
            }
        }
    }
}

static void ov21_021DC96C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2)
{
    if (PokedexSearch_GetScreenTimer(param2->unk_08) == 4) {
        if (PokedexSearch_GetScreenState(param2->unk_08) == 3) {
            BrightnessController_StartTransition(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        } else if (PokedexSearch_GetScreenState(param2->unk_08) == 1) {
            BrightnessController_StartTransition(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        }
    }
}
