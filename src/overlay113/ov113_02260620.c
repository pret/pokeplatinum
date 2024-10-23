#include "overlay113/ov113_02260620.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "consts/pokemon.h"

#include "struct_defs/struct_0205AA50.h"

#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay113/footprint_data.h"
#include "overlay113/struct_ov113_02260818.h"

#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_02018340.h"

__attribute__((aligned(4))) static const u16 Unk_ov113_02260D6C[][2] = {
    { 0x4210, 0x6f7b },
    { 0x1A, 0x483C },
    { 0x221, 0x1746 },
    { 0x61A0, 0x7325 },
    { 0x17D, 0x7DE },
    { 0x3C70, 0x79D9 },
    { 0xC, 0x5f3d },
    { 0x3A80, 0x5400 },
    { 0x2D4A, 0x5651 }
};

#include "res/pokemon/footprint_data.h"

static const TouchScreenRect Unk_ov113_02260D4C[] = {
    { 0xA0, 0xC0, 0x0, 0x20 },
    { 0xA0, 0xC0, 0x20, 0x40 },
    { 0xA0, 0xC0, 0x40, 0x60 },
    { 0xA0, 0xC0, 0x60, 0x80 },
    { 0xA0, 0xC0, 0x80, 0xA0 },
    { 0xA0, 0xC0, 0xA0, 0xC0 },
    { 0xA0, 0xC0, 0xC0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

void ov113_02260620(MessageLoader *param0, StringTemplate *param1, Window param2[], UnkStruct_ov66_0222DFF8 *param3, s32 param4)
{
    const UnkStruct_ov66_0222E71C *v0;
    TrainerInfo *v1;
    Strbuf *v2;
    Strbuf *v3;
    Strbuf *v4;
    int v5 = 64;
    int v6;
    u32 v7, v8;
    TextColor v9;

    v7 = ov66_02232B8C(param4);

    if (v7 == 0xffffffff) {
        return;
    }

    v8 = ov66_02232B78(param4);

    if (v8 == 0xffffffff) {
        return;
    }

    v0 = ov66_0222E374(param3, v8);

    if (v0 == NULL) {
        return;
    }

    if (v7 >= 8) {
        GF_ASSERT(0);
        return;
    }

    v1 = TrainerInfo_New(118);
    ov66_0222E640(v0, v1, 118);

    v4 = TrainerInfo_NameNewStrbuf(v1, 118);
    v6 = TrainerInfo_Gender(v1);

    StringTemplate_SetStrbuf(param1, 0, v4, v6, 1, GAME_LANGUAGE);

    v2 = MessageLoader_GetNewStrbuf(param0, 0);
    v3 = Strbuf_Init(v5, 118);

    StringTemplate_Format(param1, v3, v2);
    BGL_FillWindow(&param2[v7], 0x0);

    if (ov66_0222E924(param3, v8) == 1) {
        v9 = TEXT_COLOR(7, 8, 0);
    } else {
        v9 = TEXT_COLOR(1, 2, 0);
    }

    Text_AddPrinterWithParamsAndColor(&param2[v7], FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_INSTANT, v9, NULL);
    sub_0201A954(&param2[v7]);
    Strbuf_Free(v4);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
    Heap_FreeToHeap(v1);
}

void ov113_02260714(Window param0[], u32 param1)
{
    if (param1 >= 8) {
        GF_ASSERT(0);
        return;
    }

    sub_0201ACF4(&param0[param1]);
}

u16 ov113_0226072C(int param0, u32 param1)
{
    return Unk_ov113_02260D6C[param1 % NELEMS(Unk_ov113_02260D6C)][param0];
}

int ov113_02260748(UnkStruct_ov113_02260818 *param0, int param1)
{
    int v0;
    int v1 = 0xff;

    v0 = sub_02022664(Unk_ov113_02260D4C);

    if (v0 < 6) {
        if ((param1 != v0) && (param0[v0].unk_02 != 0) && (param0[v0].unk_02 <= NATIONAL_DEX_COUNT)) {
            v1 = v0;
        }
    } else if (v0 == 6) {
        v1 = 0xfe;
    } else {
        return 0xff;
    }

    return v1;
}

// canShowArceus is a flag pulled from wifi room data that dictates whether or not Arceus is allowed to be seen.
// The contexts where Arceus is allowed to be seen is unclear. I haven't seen any case where this could be true
// Seems to be from a cut feature where you could have pokemon out walking around while being in a wifi room. Amity square?
BOOL PokemonHasOverworldFootprint(int species, int form, BOOL canShowArceus)
{
    if (species == SPECIES_GIRATINA && form > 0) {
        return FALSE;
    }

    if (species == SPECIES_ARCEUS && canShowArceus == FALSE) {
        return FALSE;
    }

    return sSpeciesFootprintData[species].hasFootprint;
}

int PokemonOverworldFootprintSize(int species, int form)
{
    if (species == SPECIES_GIRATINA && form > 0) {
        return FOOTPRINT_LARGE;
    }

    return sSpeciesFootprintData[species].footprintSize;
}
