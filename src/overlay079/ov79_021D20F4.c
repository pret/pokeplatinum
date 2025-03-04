#include "overlay079/ov79_021D20F4.h"

#include <nitro.h>
#include <string.h>

#include "overlay079/struct_ov79_021D0E1C.h"

#include "communication_system.h"
#include "gx_layers.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_system.h"
#include "unk_020393C8.h"
#include "unk_02098FFC.h"
#include "vram_transfer.h"

void ov79_021D20F4(UnkStruct_ov79_021D0E1C *param0);
void ov79_021D21CC(UnkStruct_ov79_021D0E1C *param0);
void ov79_021D21F8(UnkStruct_ov79_021D0E1C *param0);

void ov79_021D20F4(UnkStruct_ov79_021D0E1C *param0)
{
    VramTransfer_New(32, param0->heapID);

    param0->unk_1B8 = SpriteSystem_Alloc(param0->heapID);
    param0->unk_1BC = SpriteManager_New(param0->unk_1B8);

    {
        RenderOamTemplate v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        CharTransferTemplateWithModes v1 = {
            3,
            1024,
            1024,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        SpriteSystem_Init(param0->unk_1B8, &v0, &v1, 32);
        SpriteSystem_InitSprites(param0->unk_1B8, param0->unk_1BC, 3 + 5 + 6);

        RenderOam_ClearMain(param0->heapID);
        RenderOam_ClearSub(param0->heapID);
    }

    {
        SpriteResourceDataPaths v2 = {
            "data/porucase_chr.resdat",
            "data/porucase_pal.resdat",
            "data/porucase_cell.resdat",
            "data/porucase_canm.resdat",
            NULL,
            NULL,
            "data/porucase_celact.cldat"
        };

        SpriteSystem_LoadResourceDataFromFilepaths(param0->unk_1B8, param0->unk_1BC, &v2);
    }

    param0->unk_1F8 = sub_02098FFC(param0->heapID, 1, 1, (NNS_G2D_VRAM_TYPE_2DMAIN), 0);

    if (CommSys_IsInitialized()) {
        sub_02039734();
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov79_021D21CC(UnkStruct_ov79_021D0E1C *param0)
{
    sub_0209903C(param0->unk_1F8);
    SpriteSystem_DestroySpriteManager(param0->unk_1B8, param0->unk_1BC);
    SpriteSystem_Free(param0->unk_1B8);
    VramTransfer_Free();
}

void ov79_021D21F8(UnkStruct_ov79_021D0E1C *param0)
{
    SpriteSystem_DrawSprites(param0->unk_1BC);
    sub_02099160(param0->unk_1F8);
}

void ov79_021D2214(UnkStruct_ov79_021D0E1C *param0, BOOL param1)
{
    if (param1 == 0) {
        Sprite_SetExplicitPalette(param0->unk_1C0[0], 0);
        Sprite_SetAnimateFlag(param0->unk_1C0[1], 1);
        Sprite_SetAnimateFlag(param0->unk_1C0[2], 1);
    } else {
        Sprite_SetExplicitPalette(param0->unk_1C0[0], 9);
        Sprite_SetAnimateFlag(param0->unk_1C0[1], 0);
        Sprite_SetAnimateFlag(param0->unk_1C0[2], 0);
    }
}
