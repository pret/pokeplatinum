#include <nitro.h>
#include <string.h>

#include "overlay080/struct_ov80_021D2A08.h"

#include "gx_layers.h"
#include "sprite_system.h"
#include "vram_transfer.h"

void ov80_021D2A08(UnkStruct_ov80_021D2A08 *param0);
void ov80_021D2AC0(UnkStruct_ov80_021D2A08 *param0);
void ov80_021D2AE0(UnkStruct_ov80_021D2A08 *param0);
void ov80_021D2AEC(UnkStruct_ov80_021D2A08 *param0);

void ov80_021D2A08(UnkStruct_ov80_021D2A08 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    VramTransfer_New(32, param0->unk_04);

    param0->unk_D8 = sub_0200C6E4(param0->unk_04);
    param0->unk_DC = sub_0200C704(param0->unk_D8);

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
            5,
            1024,
            1024,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        sub_0200C73C(param0->unk_D8, &v0, &v1, 32);
        sub_0200C7C0(param0->unk_D8, param0->unk_DC, (1 + 1 + 1 + 5 + 20));
    }

    {
        SpriteResourceDataPaths v2 = {
            "data/tmapn_chr.resdat",
            "data/tmapn_pal.resdat",
            "data/tmapn_cell.resdat",
            "data/tmapn_canm.resdat",
            NULL,
            NULL,
            "data/tmapn_celact.cldat"
        };

        sub_0200C8F0(param0->unk_D8, param0->unk_DC, &v2);
    }
}

void ov80_021D2AC0(UnkStruct_ov80_021D2A08 *param0)
{
    sub_0200C8B0(param0->unk_D8, param0->unk_DC);
    sub_0200C8D4(param0->unk_D8);
    VramTransfer_Free();
}

void ov80_021D2AE0(UnkStruct_ov80_021D2A08 *param0)
{
    sub_0200C7EC(param0->unk_DC);
}

void ov80_021D2AEC(UnkStruct_ov80_021D2A08 *param0)
{
    OAMManager_ApplyAndResetBuffers();
}
