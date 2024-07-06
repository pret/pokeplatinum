#include "overlay024/ov24_02253CE0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "overlay097/struct_ov97_0222DB78.h"

#include "heap.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"

void ov24_02253CE0(BGL *param0)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x6000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, 0x18000);

    GXS_SetGraphicsMode(GX_BGMODE_0);
#ifdef SDK_ARM9
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
#endif // SDK_ARM9
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    sub_020183C4(param0, 4, &v0, 0);

    {
        NARC *v1;

        v1 = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, 8);

        sub_020070E8(v1, 10, param0, 4, 0, 0, 1, 8);
        sub_0200710C(v1, 11, param0, 4, 0, 0, 1, 8);
        sub_02007130(v1, 12, 4, 0, 0x20, 8);
        NARC_dtor(v1);
    }

    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisiblePlane(GX_PLANEMASK_BG0);
}

void ov24_02253DA4(BGL *param0)
{
    sub_02019044(param0, 4);
    Heap_Destroy(8);
}

BOOL ov24_02253DB4(BGL *param0)
{
    return 1;
}
