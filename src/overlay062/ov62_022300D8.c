#include "overlay062/ov62_022300D8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"
#include "struct_defs/struct_020F3DCC.h"

#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/struct_ov62_022307C0.h"
#include "overlay062/struct_ov62_022307C0_sub1.h"
#include "overlay062/struct_ov62_02230C28.h"
#include "overlay062/struct_ov62_0223118C.h"
#include "overlay062/struct_ov62_022312B0.h"

#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201E86C.h"
#include "unk_02030A80.h"
#include "unk_0208C010.h"

static const u8 Unk_ov62_022488A8[][5] = {
    { 0x5, 0xA, 0xF, 0x14, 0x19 },
    { 0x19, 0x14, 0xF, 0xA, 0x5 }
};

void ov62_022300D8(UnkStruct_0208C06C *param0)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;

    if (param0->unk_00 == 0) {
        sub_020070E8(v0, 67, v1, 1, 0, 0, 0, 102);
        sub_020070E8(v0, 67, v1, 5, 0, 0, 0, 102);
        sub_0200710C(v0, 69, v1, 5, 0, 0, 0, 102);
        PaletteSys_LoadPalette(v4, 162, ov62_02231710(param0, 3), 102, 0, 0x20 * (8 + 1), 0);
        PaletteSys_LoadPalette(v4, 162, ov62_02231710(param0, 3), 102, 1, 0x20 * (8 + 1), 0);
        PaletteSys_LoadPalette(v4, 162, ov62_02231710(param0, 0), 102, 0, 0x20, 14 * 16);
        PaletteSys_LoadPalette(v4, 162, ov62_02231710(param0, 0), 102, 1, 0x20, 14 * 16);
    } else {
        sub_020070E8(v0, 54, v1, 1, 0, 0, 0, 102);
        sub_020070E8(v0, 54, v1, 5, 0, 0, 0, 102);
        sub_0200710C(v0, 55, v1, 5, 0, 0, 0, 102);
        PaletteSys_LoadPalette(v4, 162, 53, 102, 0, 0x20 * (8 + 1), 0);
        PaletteSys_LoadPalette(v4, 162, 53, 102, 1, 0x20 * (8 + 1), 0);
        PaletteSys_LoadPalette(v4, 162, 52, 102, 0, 0x20, 14 * 16);
        PaletteSys_LoadPalette(v4, 162, 52, 102, 1, 0x20, 14 * 16);
    }

    sub_0200710C(v0, 70, v1, 5, 0, 0, 0, 102);
    sub_0200710C(v0, 70, v1, 1, 0, 0, 0, 102);
    sub_02003A2C(v4, 1, 0x2, 16, param0->unk_14.unk_44);
}

void ov62_022302A8(UnkStruct_0208C06C *param0, int param1, BOOL param2)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;
    int v5 = 2;

    if (param2) {
        v5 = 0;
    }

    sub_020070E8(v0, 45, v1, param1, 0, 0, 0, 102);
    sub_0200710C(v0, v5, v1, param1, 0, 0, 0, 102);
}

void ov62_022302F0(UnkStruct_0208C06C *param0, int param1)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;
    int v5 = 1;

    sub_020070E8(v0, 45, v1, param1, 0, 0, 0, 102);
    sub_0200710C(v0, v5, v1, param1, 0, 0, 0, 102);
}

void ov62_02230330(UnkStruct_0208C06C *param0)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;

    if (param0->unk_00 == 0) {
        SpriteRenderer_LoadPalette(v4, 2, v2, v3, v0, ov62_02231710(param0, 2), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 9999);
        SpriteRenderer_LoadPalette(v4, 3, v2, v3, v0, ov62_02231710(param0, 2), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 10000);
    } else {
        SpriteRenderer_LoadPalette(v4, 2, v2, v3, v0, 51, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 9999);
        SpriteRenderer_LoadPalette(v4, 3, v2, v3, v0, 51, 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 10000);
    }

    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, 65, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 9999);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, 65, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10000);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, 46, 0, 9999);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, 47, 0, 9999);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, 46, 0, 10000);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, 47, 0, 10000);
}

void ov62_02230464(UnkStruct_0208C06C *param0)
{
    SpriteTemplate v0;
    SpriteRenderer *v1 = param0->unk_14.unk_04;
    SpriteGfxHandler *v2 = param0->unk_14.unk_08;
    PaletteData *v3 = param0->unk_14.unk_14;

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.bgPriority = 2;
    v0.transferToVRAM = FALSE;
    v0.plttIdx = 0;
    v0.resources[0] = 9999;
    v0.resources[1] = 9999;
    v0.resources[2] = 9999;
    v0.resources[3] = 9999;
    v0.resources[4] = SPRITE_RESOURCE_NONE;
    v0.resources[5] = SPRITE_RESOURCE_NONE;

    {
        int v4, v5;
        const s16 v6[] = {
            82,
            178,
            118,
            42,
            150,
            210,
        };
        const f32 v7[] = {
            1.4f,
            1.8f,
            2.0f,
            1.6f,
            1.4f,
            1.6f,
        };
        const s8 v8[] = {
            -1,
            -3,
            +2,
            -1,
            -3,
            +2,
        };

        for (v5 = 0; v5 < (3 * 2); v5++) {
            for (v4 = 0; v4 < 2; v4++) {
                if (v4 == 0) {
                    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
                    v0.resources[0] = 9999;
                    v0.resources[1] = 9999;
                    v0.resources[2] = 9999;
                    v0.resources[3] = 9999;
                } else {
                    v0.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
                    v0.resources[0] = 10000;
                    v0.resources[1] = 10000;
                    v0.resources[2] = 10000;
                    v0.resources[3] = 10000;
                }

                param0->unk_6F8[v5].unk_00[v4] = SpriteActor_LoadResources(v1, v2, &v0);

                if (v4 == 0) {
                    ov62_02230E68(param0->unk_6F8[v5].unk_00[v4], v6[v5], 192 / 2);
                } else {
                    ov62_02230E68(param0->unk_6F8[v5].unk_00[v4], v6[v5], 192 / 2);
                }

                sub_0200D330(param0->unk_6F8[v5].unk_00[v4]);
                sub_0200D6A4(param0->unk_6F8[v5].unk_00[v4], 2);
                sub_0200D6E8(param0->unk_6F8[v5].unk_00[v4], v7[v5], 1.0f);

                param0->unk_6F8[v5].unk_28 = 0;
                param0->unk_6F8[v5].unk_19 = v5 % 3;
                param0->unk_6F8[v5].unk_2C = 0;
                param0->unk_6F8[v5].unk_10 = v7[v5];
                param0->unk_6F8[v5].unk_24 = 10 + (v8[v5] * 2);

                if (v5 < 3) {
                    param0->unk_6F8[v5].unk_20 = 0;
                    param0->unk_6F8[v5].unk_16 = 0 + (8 + v8[v5]);
                    param0->unk_6F8[v5].unk_18 = -1;
                } else {
                    param0->unk_6F8[v5].unk_20 = 0;
                    param0->unk_6F8[v5].unk_16 = 255 - (8 + v8[v5]);
                    param0->unk_6F8[v5].unk_18 = +1;
                }
            }

            param0->unk_6F8[v5].unk_08 = SysTask_ExecuteOnVBlank(ov62_02230C28, &param0->unk_6F8[v5], 5);
        }
        if (param0->unk_534.unk_1A4 != 0) {
            BOOL v9;

            do {
                v9 = 0;

                for (v5 = 0; v5 < (3 * 2); v5++) {
                    if (param0->unk_6F8[v5].unk_2C == 3) {
                        continue;
                    }

                    ov62_02230C28(param0->unk_6F8[v5].unk_08, &param0->unk_6F8[v5]);
                    v9 = 1;
                }
            } while (v9);
        }
    }
}

void ov62_0223066C(UnkStruct_0208C06C *param0)
{
    int v0, v1;

    for (v1 = 0; v1 < (3 * 2); v1++) {
        for (v0 = 0; v0 < 2; v0++) {
            sub_0200D0F4(param0->unk_6F8[v1].unk_00[v0]);
        }
    }
}

void ov62_0223069C(UnkStruct_0208C06C *param0)
{
    int v0;

    for (v0 = 0; v0 < (3 * 2); v0++) {
        SysTask_Done(param0->unk_6F8[v0].unk_08);
    }
}

void ov62_022306B8(UnkStruct_0208C06C *param0)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;
    int v5;
    int v6;
    int v7;

    switch (param0->unk_00) {
    case 0:
        v5 = 63;
        v6 = 24;
        v7 = 25;
        break;
    case 2:
        v5 = 17;
        v6 = 18;
        v7 = 19;
        break;
    case 5:
    case 6:
        v5 = 8;
        v6 = 9;
        v7 = 10;
        break;
    case 4:
        v5 = 11;
        v6 = 12;
        v7 = 13;
        break;
    case 3:
        v5 = 14;
        v6 = 15;
        v7 = 16;
        break;
    default:
        v5 = 48;
        v6 = 22;
        v7 = 23;
        break;
    }

    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, v5, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, v5, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10002);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, v6, 0, 10001);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, v6, 0, 10002);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, v7, 0, 10001);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, v7, 0, 10002);
}

void ov62_022307A0(UnkStruct_0208C06C *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 10001);
    SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 10002);
}

void ov62_022307C0(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_022307C0 *v1 = &param0->unk_534;

    for (v0 = 0; v0 < 5; v0++) {
        ov62_02230E68(v1->unk_00[v0].unk_00, 42 + 8, (25 + (36 * 4) + (16 * (5 - (param0->unk_534.unk_1AC)))) + 48);
        sub_020128C4(param0->unk_534.unk_00[v0].unk_14, 36, -8);
    }

    v0 = 0;

    do {
        s16 v2, v3;

        if (param0->unk_534.unk_1A4 == 0) {
            break;
        }

        ov62_02230E74(param0->unk_534.unk_00[v0].unk_00, &v2, &v3);

        if (param0->unk_534.unk_1A4 - 1 == v0) {
            v2 = v2;
            v3 = (25 + (36 * (5 - 1)));
            sub_0200D430(param0->unk_534.unk_00[v0].unk_00, (2 - 1));
        } else {
            v2 = v2 - (4 * (param0->unk_534.unk_1A4 - v0));
            v3 = (16 * (param0->unk_534.unk_1A4 - v0 - 1)) + (25 + (36 * (5 - (param0->unk_534.unk_1A4 - v0))));
            sub_0200D430(param0->unk_534.unk_00[v0].unk_00, (3 - 1));
        }

        ov62_02230E68(param0->unk_534.unk_00[v0].unk_00, v2, v3);

        v0++;
    } while (v0 < param0->unk_534.unk_1A4);
}

void ov62_0223088C(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_022307C0 *v1 = &param0->unk_534;
    SpriteTemplate v2;
    SpriteRenderer *v3 = param0->unk_14.unk_04;
    SpriteGfxHandler *v4 = param0->unk_14.unk_08;
    PaletteData *v5 = param0->unk_14.unk_14;

    v2.x = 42;
    v2.y = (25 + (36 * 4) + (16 * (5 - (param0->unk_534.unk_1AC)))) + 32;

    if (param0->unk_534.unk_1AC == 2) {
        v2.y = (25 + (36 * 4) + (16 * (4 - (param0->unk_534.unk_1AC)))) + 32;
    }

    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 0;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.bgPriority = 3;
    v2.transferToVRAM = FALSE;
    v2.plttIdx = (2 - 1);
    v2.resources[0] = 10001;
    v2.resources[1] = 9999;
    v2.resources[2] = 10001;
    v2.resources[3] = 10001;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;

    for (v0 = 0; v0 < 5; v0++) {
        v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v2.resources[0] = 10002;
        v2.resources[1] = 10000;
        v2.resources[2] = 10002;
        v2.resources[3] = 10002;
        v2.priority = Unk_ov62_022488A8[1][v0];
        v1->unk_00[v0].unk_00 = SpriteActor_LoadResources(v3, v4, &v2);

        sub_0200D330(v1->unk_00[v0].unk_00);
        SpriteActor_EnableObject(v1->unk_00[v0].unk_00, 1);
        ov62_02230E68(v1->unk_00[v0].unk_00, v2.x + 8, v2.y);

        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v2.resources[0] = 10001;
        v2.resources[1] = 9999;
        v2.resources[2] = 10001;
        v2.resources[3] = 10001;
        v2.priority = Unk_ov62_022488A8[0][v0];
        v1->unk_C8[v0].unk_00 = SpriteActor_LoadResources(v3, v4, &v2);

        sub_0200D330(v1->unk_C8[v0].unk_00);
        ov62_02230E68(v1->unk_C8[v0].unk_00, v2.x, v2.y);
        SpriteActor_EnableObject(v1->unk_C8[v0].unk_00, param0->unk_818[v0].unk_00);
    }

    v0 = 0;

    do {
        s16 v6, v7;

        if (param0->unk_534.unk_1A4 == 0) {
            break;
        }

        ov62_02230E74(param0->unk_534.unk_00[v0].unk_00, &v6, &v7);

        if (param0->unk_534.unk_1A4 - 1 == v0) {
            v6 = v6;
            v7 = (25 + (36 * (5 - 1)));
            sub_0200D430(param0->unk_534.unk_00[v0].unk_00, 2 - 1);
        } else {
            v6 = v6 - (4 * (param0->unk_534.unk_1A4 - v0));
            v7 = (16 * (param0->unk_534.unk_1A4 - v0 - 1)) + (25 + (36 * (5 - (param0->unk_534.unk_1A4 - v0))));
            sub_0200D430(param0->unk_534.unk_00[v0].unk_00, (3 - 1));
        }

        ov62_02230E68(param0->unk_534.unk_00[v0].unk_00, v6, v7);

        v0++;
    } while (v0 < param0->unk_534.unk_1A4);

    sub_02003A2C(v5, 2, 0xC, 16, param0->unk_14.unk_44);
}

void ov62_02230A5C(UnkStruct_0208C06C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        SpriteActor_EnableObject(param0->unk_534.unk_C8[v0].unk_00, param0->unk_818[v0].unk_00);

        if (param0->unk_818[v0].unk_00 == 0) {
            continue;
        }

        sub_0200D364(param0->unk_534.unk_C8[v0].unk_00, param0->unk_818[v0].unk_0C);
        ov62_02230FC8(param0, &param0->unk_534.unk_C8[v0], param0->unk_818[v0].unk_08, &param0->unk_818[v0]);
    }
}

void ov62_02230AB8(UnkStruct_0208C06C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_020131E0(param0->unk_534.unk_C8[v0].unk_14, param0->unk_534.unk_C8[v0].unk_00->unk_00);
        sub_020131E0(param0->unk_534.unk_00[v0].unk_14, param0->unk_534.unk_00[v0].unk_00->unk_00);
    }
}

void ov62_02230AF0(UnkStruct_0208C06C *param0)
{
    int v0;

    if (param0->unk_534.unk_1A4 == 0) {
        return;
    }

    for (v0 = 0; v0 < param0->unk_534.unk_1A4; v0++) {
        sub_0200D364(param0->unk_534.unk_00[v0].unk_00, param0->unk_534.unk_190[v0]->unk_0C);
        ov62_02230FC8(param0, &param0->unk_534.unk_00[v0], param0->unk_534.unk_190[v0]->unk_08, param0->unk_534.unk_190[v0]);
        sub_020128C4(param0->unk_534.unk_00[v0].unk_14, 36, -8);
        sub_020129D0(param0->unk_534.unk_00[v0].unk_14, 1);
        SpriteActor_EnableObject(param0->unk_534.unk_00[v0].unk_00, 1);
    }
}

void ov62_02230B74(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_022307C0 *v1 = &param0->unk_534;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D0F4(v1->unk_00[v0].unk_00);
        sub_0200D0F4(v1->unk_C8[v0].unk_00);
    }
}

void ov62_02230B9C(UnkStruct_0208C06C *param0, BOOL param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_534.unk_00[v0].unk_0C == 0) {
            sub_020129D0(param0->unk_534.unk_00[v0].unk_14, 0);
            SpriteActor_EnableObject(param0->unk_534.unk_00[v0].unk_00, 0);
        } else {
            sub_020129D0(param0->unk_534.unk_00[v0].unk_14, param1);
            SpriteActor_EnableObject(param0->unk_534.unk_00[v0].unk_00, param1);
        }

        if (param0->unk_534.unk_C8[v0].unk_0C == 0) {
            sub_020129D0(param0->unk_534.unk_C8[v0].unk_14, 0);
            SpriteActor_EnableObject(param0->unk_534.unk_C8[v0].unk_00, 0);
        } else {
            sub_020129D0(param0->unk_534.unk_C8[v0].unk_14, param1);
            SpriteActor_EnableObject(param0->unk_534.unk_C8[v0].unk_00, param1);
        }
    }
}

void ov62_02230C28(SysTask *param0, void *param1)
{
    UnkStruct_ov62_02230C28 *v0 = param1;

    v0->unk_1C++;
    v0->unk_1C %= 2;

    if (v0->unk_1C) {
        return;
    }

    switch (v0->unk_2C) {
    case 0: {
        if (v0->unk_28 == 3) {
            v0->unk_2C++;
            v0->unk_28 = 0;
        } else {
            v0->unk_28++;
        }
    } break;
    case 1: {
        fx32 v1, v2;
        fx32 v3, v4;

        if (v0->unk_28 == 4) {
            v0->unk_2C++;
            v0->unk_28 = 0;
        } else {
            sub_0200D638(v0->unk_00[0], &v1, &v2);
            sub_0200D638(v0->unk_00[1], &v3, &v4);

            v1 = v1 + ((sub_0201D250((v0->unk_20 * 0xffff) / 360) * 1) * (v0->unk_18 * -1));
            v3 = v1;

            v0->unk_20 += 32;
            v0->unk_20 %= 360;

            sub_0200D614(v0->unk_00[0], v1, v2);
            sub_0200D614(v0->unk_00[1], v3, v4);

            v0->unk_28++;
        }
    } break;

    case 2: {
        s16 v5, v6, v7;
        int v8[] = {
            90,
            135,
            270,
            45,
            225,
            0,
        };

        SpriteActor_GetSpritePositionXY(v0->unk_00[0], &v5, &v6);
        SpriteActor_GetSpritePositionXY(v0->unk_00[1], &v5, &v7);

        if (v0->unk_28 == 0) {
            v0->unk_14 = v0->unk_16 - v5;
            v0->unk_14 /= v0->unk_24;
            v0->unk_28++;
        } else if (v0->unk_28 == v0->unk_24 + 1) {
            v5 = v0->unk_16;
            v0->unk_20 = v8[v0->unk_19];
            v0->unk_2C++;
            v0->unk_28 = 0;
        } else {
            v5 += v0->unk_14;
            v0->unk_28++;
        }

        SpriteActor_SetSpritePositionXY(v0->unk_00[0], v5, v6);
        SpriteActor_SetSpritePositionXY(v0->unk_00[1], v5, v7);
    } break;
    case 3: {
        fx32 v9, v10;
        fx32 v11, v12;

        if (v0->unk_28 == 0) {
            sub_0200D638(v0->unk_00[0], &v0->unk_0C, &v10);
            v0->unk_28++;
        }

        sub_0200D638(v0->unk_00[0], &v9, &v10);
        sub_0200D638(v0->unk_00[1], &v11, &v12);

        v9 = v0->unk_0C + ((sub_0201D250((v0->unk_20 * 0xffff) / 360) * 3) * (v0->unk_18 * -1));
        v11 = v9;

        if (v0->unk_19 % 2) {
            v0->unk_20 -= 4;
        } else {
            v0->unk_20 += 4;
        }

        v0->unk_20 %= 360;

        sub_0200D614(v0->unk_00[0], v9, v10);
        sub_0200D614(v0->unk_00[1], v11, v12);
    } break;
    }

    if ((v0->unk_2C >= 2) && (v0->unk_10 > 0.1f)) {
        v0->unk_10 -= 0.10f;

        sub_0200D6E8(v0->unk_00[0], v0->unk_10, 1.0f);
        sub_0200D6E8(v0->unk_00[1], v0->unk_10, 1.0f);
    }
}

void ov62_02230E68(CellActorData *param0, s16 param1, s16 param2)
{
    sub_0200D500(param0, param1, param2, (256 * FX32_ONE));
}

void ov62_02230E74(CellActorData *param0, s16 *param1, s16 *param2)
{
    sub_0200D5A0(param0, param1, param2, (256 * FX32_ONE));
}

void ov62_02230E80(UnkStruct_0208C06C *param0)
{
    s16 v0, v1;
    UnkStruct_020127E8 v2;
    Strbuf *v3;
    int v4;
    MessageLoader *v5;
    Window v6;
    UnkStruct_ov62_022307C0_sub1 *v7[2];
    int v8[2] = { NNS_G2D_VRAM_TYPE_2DMAIN, NNS_G2D_VRAM_TYPE_2DSUB };
    int v9[2] = { 9999, 10000 };
    int v10, v11;

    for (v10 = 0; v10 < 5; v10++) {
        v7[0] = &param0->unk_534.unk_C8[v10];
        v7[1] = &param0->unk_534.unk_00[v10];

        for (v11 = 0; v11 < 2; v11++) {
            Window_Init(&v6);
            BGL_AddFramelessWindow(param0->unk_14.unk_10, &v6, 20, 2, 0, 0);

            v7[v11]->unk_18 = sub_02012B20(&v6, 102);
            v4 = sub_02012898(&v6, v8[v11], 102);

            sub_0201ED94(v4, 1, v8[v11], &v7[v11]->unk_1C);
            SpriteActor_GetSpritePositionXY(v7[v11]->unk_00, &v0, &v1);

            v2.unk_00 = param0->unk_14.unk_3C;
            v2.unk_04 = &v6;
            v2.unk_08 = sub_0200D9B0(param0->unk_14.unk_08);
            v2.unk_0C = sub_0200D04C(param0->unk_14.unk_08, v9[v11]);
            v2.unk_10 = v7[v11]->unk_00->unk_00;
            v2.unk_14 = v7[v11]->unk_1C.unk_04;
            v2.unk_18 = v0 + 36;
            v2.unk_1C = v1 + -8;
            v2.unk_20 = 3;
            v2.unk_24 = Unk_ov62_022488A8[v11][v10] - 1;
            v2.unk_28 = v8[v11];
            v2.unk_2C = 102;
            v7[v11]->unk_14 = sub_02012B60(&v2, v7[v11]->unk_18);

            sub_02012AC0(v7[v11]->unk_14, (2 - 1));
            BGL_DeleteWindow(&v6);
            sub_020129D0(v7[v11]->unk_14, 0);
        }
    }
}

void ov62_02230FC8(UnkStruct_0208C06C *param0, UnkStruct_ov62_022307C0_sub1 *param1, int param2, const UnkStruct_020F3DCC *param3)
{
    Strbuf *v0;
    MessageLoader *v1;
    Window v2;
    StringTemplate *v3;
    Strbuf *v4;
    Strbuf *v5;

    v1 = param0->unk_14.unk_34;

    if (param2 == 8) {
        if (param0->unk_88C[param3->unk_18] == NULL) {
            v0 = MessageLoader_GetNewStrbuf(v1, param2);
        } else {
            v3 = ov62_02231690(102);
            v4 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 7);
            v5 = sub_02030B94(param0->unk_88C[param3->unk_18], 102);
            ov62_022349A8(param0, v5);
            v0 = Strbuf_Init(255, 102);

            StringTemplate_SetStrbuf(v3, 0, v5, 0, 1, GAME_LANGUAGE);
            StringTemplate_Format(v3, v0, v4);
            Strbuf_Free(v4);
            Strbuf_Free(v5);
            StringTemplate_Free(v3);
        }
    } else if (param2 == 41) {
        if (param0->unk_88C[param3->unk_18] == NULL) {
            v0 = MessageLoader_GetNewStrbuf(v1, param2);
        } else {
            v3 = ov62_02231690(102);
            v4 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 7);
            v5 = sub_02030B94(param0->unk_88C[param3->unk_18], 102);
            ov62_022349A8(param0, v5);
            v0 = Strbuf_Init(255, 102);

            StringTemplate_SetStrbuf(v3, 0, v5, 0, 1, GAME_LANGUAGE);
            StringTemplate_Format(v3, v0, v4);
            Strbuf_Free(v4);
            Strbuf_Free(v5);
            StringTemplate_Free(v3);
        }
    } else {
        v0 = MessageLoader_GetNewStrbuf(v1, param2);
    }

    Window_Init(&v2);
    BGL_AddFramelessWindow(param0->unk_14.unk_10, &v2, 20, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(&v2, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 13, 0), NULL);
    sub_02012BE0(param1->unk_14, param1->unk_18, &v2, 102);
    Strbuf_Free(v0);
    BGL_DeleteWindow(&v2);
}

void ov62_0223113C(UnkStruct_0208C06C *param0)
{
    int v0, v1;
    UnkStruct_ov62_022307C0_sub1 *v2[2];

    for (v0 = 0; v0 < 5; v0++) {
        v2[0] = &param0->unk_534.unk_C8[v0];
        v2[1] = &param0->unk_534.unk_00[v0];

        for (v1 = 0; v1 < 2; v1++) {
            sub_02012B48(v2[v1]->unk_18);
            sub_02012BD8(v2[v1]->unk_14);
            sub_0201EE28(&v2[v1]->unk_1C);
        }
    }
}

void ov62_0223118C(UnkStruct_ov62_022312B0 *param0, UnkStruct_ov62_0223118C *param1, int param2)
{
    s16 v0, v1;
    UnkStruct_020127E8 v2;
    Strbuf *v3;
    int v4;
    MessageLoader *v5;
    Window v6;
    int v7 = 9999;

    if (param2 == NNS_G2D_VRAM_TYPE_2DSUB) {
        v7 = 10000;
    }

    Window_Init(&v6);
    BGL_AddFramelessWindow(param1->unk_10, &v6, 20, 2, 0, 0);

    param0->unk_10 = sub_02012B20(&v6, 102);
    v4 = sub_02012898(&v6, param2, 102);

    sub_0201ED94(v4, 1, param2, &param0->unk_14);
    SpriteActor_GetSpritePositionXY(param0->unk_08, &v0, &v1);

    v2.unk_00 = param1->unk_3C;
    v2.unk_04 = &v6;
    v2.unk_08 = sub_0200D9B0(param1->unk_08);
    v2.unk_0C = sub_0200D04C(param1->unk_08, v7);
    v2.unk_10 = param0->unk_08->unk_00;
    v2.unk_14 = param0->unk_14.unk_04;
    v2.unk_18 = v0 + 36;
    v2.unk_1C = v1 + -8;
    v2.unk_20 = 3;
    v2.unk_24 = 0;
    v2.unk_28 = param2;
    v2.unk_2C = 102;

    param0->unk_0C = sub_02012B60(&v2, param0->unk_10);

    sub_02012AC0(param0->unk_0C, (2 - 1));
    BGL_DeleteWindow(&v6);
    sub_020129D0(param0->unk_0C, 0);
}

void ov62_0223124C(UnkStruct_ov62_022312B0 *param0, UnkStruct_ov62_0223118C *param1, int param2)
{
    Strbuf *v0;
    MessageLoader *v1;
    Window v2;

    v1 = param1->unk_34;
    v0 = MessageLoader_GetNewStrbuf(v1, param2);

    Window_Init(&v2);
    BGL_AddFramelessWindow(param1->unk_10, &v2, 20, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(&v2, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 13, 0), NULL);
    sub_02012BE0(param0->unk_0C, param0->unk_10, &v2, 102);
    Strbuf_Free(v0);
    BGL_DeleteWindow(&v2);
}

void ov62_022312B0(UnkStruct_ov62_022312B0 *param0)
{
    sub_02012B48(param0->unk_10);
    sub_02012BD8(param0->unk_0C);
    sub_0201EE28(&param0->unk_14);
}

void ov62_022312CC(UnkStruct_0208C06C *param0, int param1)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, 49, 0, param1, 11924);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, 26, 0, 11924);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, 27, 0, 11924);
}

void ov62_0223131C(UnkStruct_0208C06C *param0, int param1)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, 122, 0, param1, 11924);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, 123, 0, 11924);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, 124, 0, 11924);
}

void ov62_0223136C(UnkStruct_0208C06C *param0, int param1)
{
    NARC *v0 = param0->unk_14.unk_00;
    BGL *v1 = param0->unk_14.unk_10;
    SpriteRenderer *v2 = param0->unk_14.unk_04;
    SpriteGfxHandler *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;
    int v5 = 30;
    int v6 = 32;
    int v7 = 31;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, v5, 0, param1, 11924);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, v6, 0, 11924);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, v7, 0, 11924);
}

void ov62_022313BC(UnkStruct_0208C06C *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 11924);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_14.unk_08, 11924);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_14.unk_08, 11924);
}

CellActorData *ov62_022313E0(UnkStruct_0208C06C *param0, int param1)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1.x = 128;
    v1.y = 96;
    v1.z = 0;
    v1.animIdx = 0;
    v1.priority = 1;
    v1.plttIdx = 0;
    v1.vramType = param1;
    v1.bgPriority = 3;
    v1.transferToVRAM = FALSE;
    v1.resources[4] = SPRITE_RESOURCE_NONE;
    v1.resources[5] = SPRITE_RESOURCE_NONE;
    v1.resources[0] = 11924;
    v1.resources[2] = 11924;
    v1.resources[3] = 11924;

    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1.resources[1] = 9999;
    } else {
        v1.resources[1] = 10000;
    }

    v0 = SpriteActor_LoadResources(param0->unk_14.unk_04, param0->unk_14.unk_08, &v1);

    sub_0200D41C(v0, 2);
    sub_0200D364(v0, 0);
    sub_0200D330(v0);

    return v0;
}

void ov62_02231454(UnkStruct_0208C06C *param0)
{
    ov62_02230B9C(param0, 0);
    ov62_02230B74(param0);
    ov62_022307A0(param0);
}

void ov62_0223146C(UnkStruct_0208C06C *param0)
{
    ov62_022306B8(param0);
    ov62_02230060(param0);
    sub_0208C06C(param0);
    ov62_0223088C(param0);
    ov62_02230B9C(param0, 1);
    ov62_02230A5C(param0);
    ov62_02230AB8(param0);
    ov62_022307C0(param0);
    ov62_02230AF0(param0);
}

void ov62_022314A8(UnkStruct_0208C06C *param0)
{
    ov62_022306B8(param0);
    ov62_02230060(param0);
    sub_0208C06C(param0);
    ov62_0223088C(param0);
    ov62_02230B9C(param0, 1);
    ov62_02230A5C(param0);
    ov62_02230AB8(param0);
    ov62_022307C0(param0);
    ov62_02230AF0(param0);

    param0->unk_534.unk_1A4 += 1;
}

void ov62_022314F0(int *param0, int *param1, int param2, int param3, int param4, int param5, int param6)
{
    *param0 = 0;
    *param1 = 31;

    if (param6 == 0) {
        G2_SetBlendAlpha(param2, param3, *param0, *param1);
        G2S_SetBlendAlpha(param4, param5, *param0, *param1);
    }

    if (param6 == 1) {
        G2_SetBlendAlpha(param2, param3, *param0, *param1);
    }

    if (param6 == 2) {
        G2S_SetBlendAlpha(param4, param5, *param0, *param1);
    }
}

void ov62_02231560(int *param0, int *param1, int param2, int param3, int param4, int param5, int param6)
{
    if (param6 == 0) {
        G2_SetBlendAlpha(param2, param3, *param0, *param1);
        G2S_SetBlendAlpha(param4, param5, *param0, *param1);
    }

    if (param6 == 1) {
        G2_SetBlendAlpha(param2, param3, *param0, *param1);
    }

    if (param6 == 2) {
        G2S_SetBlendAlpha(param4, param5, *param0, *param1);
    }
}

void ov62_022315C8(int *param0, int *param1, int param2)
{
    ov62_022314F0(param0, param1, (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), (GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ), param2);
}

BOOL ov62_022315E0(int *param0, int *param1, int param2, int param3)
{
    BOOL v0 = 1;

    if (param2 == 0) {
        if (*param0 < 8) {
            *param0 += 1;
            v0 = 0;
        }
        if (*param1 > 7) {
            *param1 -= 3;
            v0 = 0;
        }
    } else {
        if (*param0 > 0) {
            *param0 -= 1;
            v0 = 0;
        }
        if (*param1 < 31) {
            *param1 += 3;
            v0 = 0;
        }
    }

    if (param3 == 0) {
        G2_ChangeBlendAlpha(*param0, *param1);
        G2S_ChangeBlendAlpha(*param0, *param1);
    }

    if (param3 == 1) {
        G2_ChangeBlendAlpha(*param0, *param1);
    }

    if (param3 == 2) {
        G2S_ChangeBlendAlpha(*param0, *param1);
    }

    return v0;
}

BOOL ov62_02231664(int *param0, int param1)
{
    BOOL v0 = 1;

    if (param1 == 1) {
        if (*param0 < 16) {
            *param0 += 2;
            v0 = 0;
        }
    } else {
        if (*param0 > 0) {
            *param0 -= 2;
            v0 = 0;
        }
    }

    return v0;
}

void ov62_02231688(int *param0)
{
    *param0 = 16;
}
