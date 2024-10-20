#include "overlay119/ov119_021D191C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200D0F4.h"

#include "overlay119/ov119_021D0D80.h"
#include "overlay119/struct_ov119_021D0FD0.h"
#include "overlay119/struct_ov119_021D1930.h"

#include "cell_actor.h"
#include "gx_layers.h"
#include "pokemon.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02015F84.h"
#include "unk_0201F834.h"

static BOOL ov119_021D1930(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1BD0(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1E38(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1E80(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1EF0(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1F48(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1FAC(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D21BC(UnkStruct_ov119_021D0FD0 *param0);

static BOOL (*const Unk_ov119_021D26AC[])(UnkStruct_ov119_021D0FD0 *) = {
    ov119_021D1930,
    ov119_021D1BD0,
};

BOOL ov119_021D191C(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0;

    v0 = Unk_ov119_021D26AC[param0->unk_5C](param0);
    return v0;
}

static BOOL ov119_021D1930(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = 1;

    switch (param0->unk_60) {
    case 0:
        ov119_021D1308(param0->unk_04.unk_00, param0->unk_04.unk_04);
        ov119_021D135C(param0->unk_04.unk_00, param0->unk_04.unk_04);

        ov119_021D1068(param0->unk_04.unk_00, param0->unk_04.unk_04, param0->unk_04.unk_10);
        ov119_021D10F0(param0->unk_04.unk_00, &param0->unk_04.unk_14[0], 1, 2, 19, 27, 4, ((20 + (18 + 12)) + 9), 14);

        ov119_021D1514(param0);
        ov119_021D161C(param0);

        ov119_021D1858(param0);
        ov119_021D190C(param0, 1);

        {
            UnkStruct_ov119_021D1930 v1;

            v1.unk_00 = 71;
            v1.unk_04 = 0;

            param0->unk_04.unk_40 = ov119_021D14AC(&v1);
        }

        param0->unk_60++;
        break;
    case 1:
        ov119_021D1028();
        param0->unk_60++;
    case 2:
        if (ScreenWipe_Done() == 1) {
            sub_0200569C();
            sub_02004550(13, 1141, 1);
            param0->unk_60++;
        }
        break;
    case 3: {
        BOOL v2;

        v2 = ov119_021D1E38(param0);

        if (v2 == 0) {
            param0->unk_60++;
        }
    } break;
    case 4: {
        BOOL v3;

        v3 = ov119_021D1E80(param0);

        if (v3 == 0) {
            param0->unk_60++;
        }
    } break;
    case 5: {
        BOOL v4;

        v4 = ov119_021D1EF0(param0);

        if (v4 == 0) {
            param0->unk_60++;
        }
    } break;
    case 6: {
        BOOL v5;

        v5 = ov119_021D1F48(param0);

        if (v5 == 0) {
            param0->unk_60++;
        }
    } break;
    case 7: {
        BOOL v6;

        v6 = ov119_021D1FAC(param0);

        if (v6 == 0) {
            ov119_021D18C0(param0);
            {
                int v7;
                int v8;

                v7 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
                v8 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_FORM, NULL);
                sub_02005844(v7, v8);
                param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 0, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
            }
            param0->unk_60++;
        }
    } break;
    case 8:
        if (sub_0200598C() != 0) {
            break;
        }

        sub_02006150(1156);
        param0->unk_60++;
    case 9:
        if (sub_020061E4() != 0) {
            break;
        }

        param0->unk_60++;
    case 10:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 1, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
        param0->unk_60++;
    case 11:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        if (sub_020160F4(param0->unk_04.unk_54, 0) != 1) {
            break;
        }

        if (sub_02007C24(param0->unk_70) != 0) {
            break;
        }

        ov119_021D11E4(param0, param0->unk_04.unk_00, &param0->unk_04.unk_14[1], 1, 25, 13, 6, 4, (((20 + (18 + 12)) + 9) + (27 * 4)), 14);
        param0->unk_60++;
        break;
    case 12: {
        u32 v9 = sub_02001BE0(param0->unk_04.unk_48);

        switch (v9) {
        case 0xfffffffe:
            param0->unk_00->unk_04 = 0;
            param0->unk_60++;
            break;
        case 0xffffffff:
            break;
        default:
            if (v9 == 0) {
                param0->unk_00->unk_04 = 1;
            } else {
                param0->unk_00->unk_04 = 0;
            }

            param0->unk_60++;
            break;
        }
    } break;
    case 13:
        ov119_021D12CC(param0);
        param0->unk_60++;
        break;
    case 14:
        param0->unk_60++;
        break;
    case 15:
        ov119_021D1048();
        param0->unk_60++;
    case 16:
        if (ScreenWipe_Done() == 1) {
            param0->unk_60++;
        }
        break;
    case 17:
    default:
        ov119_021D1900(param0);
        ov119_021D17A0(param0);
        ov119_021D12F8(&param0->unk_04.unk_14[0]);
        ov119_021D145C(param0->unk_04.unk_40->unk_0C);
        ov119_021D150C(param0->unk_04.unk_40);
        v0 = 0;
        break;
    }

    sub_0200C7EC(param0->unk_04.unk_4C);

    return v0;
}

static BOOL ov119_021D1BD0(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = 1;

    switch (param0->unk_60) {
    case 0:
        ov119_021D1308(param0->unk_04.unk_00, param0->unk_04.unk_04);
        ov119_021D135C(param0->unk_04.unk_00, param0->unk_04.unk_04);

        ov119_021D1068(param0->unk_04.unk_00, param0->unk_04.unk_04, param0->unk_04.unk_10);
        ov119_021D10F0(param0->unk_04.unk_00, &param0->unk_04.unk_14[0], 1, 2, 19, 27, 4, ((20 + (18 + 12)) + 9), 14);

        ov119_021D1514(param0);
        ov119_021D161C(param0);

        SpriteActor_EnableObject(param0->unk_74, 0);

        ov119_021D1858(param0);
        ov119_021D190C(param0, 1);

        {
            UnkStruct_ov119_021D1930 v1;

            v1.unk_00 = 71;
            v1.unk_04 = 1;
            param0->unk_04.unk_40 = ov119_021D14AC(&v1);
        }

        param0->unk_60++;
        break;
    case 1:
        ov119_021D1028();
        param0->unk_60++;
    case 2:
        if (ScreenWipe_Done() == 1) {
            sub_02004550(13, 1141, 1);
            param0->unk_60++;
        }
        break;
    case 3: {
        BOOL v2;

        v2 = ov119_021D21BC(param0);

        if (v2 == 0) {
            ov119_021D18C0(param0);
            {
                int v3;
                int v4;

                v3 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
                v4 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_FORM, NULL);
                sub_02005844(v3, v4);
                param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 0, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
            }

            param0->unk_60 = 8;
        }
    } break;
    case 4:
    case 5:
    case 6:
    case 7:
        GF_ASSERT(0);
        break;
    case 8:
        if (sub_0200598C() != 0) {
            break;
        }

        sub_02006150(1156);
        param0->unk_60++;
    case 9:
        if (sub_020061E4() != 0) {
            break;
        }

        param0->unk_60++;
    case 10:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 1, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
        param0->unk_60++;
    case 11:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        if (sub_020160F4(param0->unk_04.unk_54, 0) != 1) {
            break;
        }

        if (sub_02007C24(param0->unk_70) != 0) {
            break;
        }

        ov119_021D11E4(param0, param0->unk_04.unk_00, &param0->unk_04.unk_14[1], 1, 25, 13, 6, 4, (((20 + (18 + 12)) + 9) + (27 * 4)), 14);
        param0->unk_60++;
        break;
    case 12: {
        u32 v5 = sub_02001BE0(param0->unk_04.unk_48);

        switch (v5) {
        case 0xfffffffe:
            param0->unk_00->unk_04 = 0;
            param0->unk_60++;
            break;
        case 0xffffffff:
            break;
        default:
            if (v5 == 0) {
                param0->unk_00->unk_04 = 1;
            } else {
                param0->unk_00->unk_04 = 0;
            }

            param0->unk_60++;
            break;
        }
    } break;
    case 13:
        ov119_021D12CC(param0);
        param0->unk_60++;
        break;
    case 14:
        param0->unk_60++;
        break;
    case 15:
        ov119_021D1048();
        param0->unk_60++;
    case 16:
        if (ScreenWipe_Done() == 1) {
            param0->unk_60++;
        }
        break;
    case 17:
    default:
        ov119_021D1900(param0);
        ov119_021D17A0(param0);
        ov119_021D12F8(&param0->unk_04.unk_14[0]);
        ov119_021D145C(param0->unk_04.unk_40->unk_0C);
        ov119_021D150C(param0->unk_04.unk_40);
        v0 = 0;
        break;
    }

    sub_0200C7EC(param0->unk_04.unk_4C);

    return v0;
}

static BOOL ov119_021D1E38(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        sub_0200D3CC(param0->unk_74, 0);
        param0->unk_68++;
        break;
    case 1:
        if ((++param0->unk_64) >= 25) {
            Sound_PlayEffect(1812);

            param0->unk_68++;
        }
        break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1E80(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        sub_0200D3CC(param0->unk_74, 1);
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 0);

        if (v0 == 2) {
            Sound_PlayEffect(1812);

            sub_0200D3CC(param0->unk_74, 2);
            param0->unk_68++;
            param0->unk_64 = 0;
        }
    } break;
    default: {
        int v1;

        v1 = ov119_021D176C(param0, 0);

        if (v1 == 2) {
            sub_0200D3CC(param0->unk_74, 2);
            param0->unk_68 = 0;
            param0->unk_64 = 0;
            return 0;
        }
    } break;
    }

    return 1;
}

static BOOL ov119_021D1EF0(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 1);

        if (v0 == 1) {
            Sound_PlayEffect(1812);
            sub_0200D3CC(param0->unk_74, 3);
            ov119_021D14DC(param0->unk_04.unk_40, 0);
        }

        if (v0 == 2) {
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1F48(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 2);

        if (v0 == 1) {
            Sound_PlayEffect(1812);

            sub_0200D3CC(param0->unk_74, 4);
            ov119_021D14DC(param0->unk_04.unk_40, 1);
        }

        if (v0 == 2) {
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1FAC(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        sub_0200D3CC(param0->unk_74, 4);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 3);

        if (v0 == 1) {
            sub_0200D3CC(param0->unk_74, 5);
            Sound_PlayEffect(1799);
            ov119_021D14DC(param0->unk_04.unk_40, 2);
            ov119_021D14DC(param0->unk_04.unk_40, 3);
        }

        if (v0 == 2) {
            SpriteActor_EnableObject(param0->unk_74, 0);
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    case 2:
        if ((++param0->unk_64) >= 10) {
            param0->unk_64 = 0;

            sub_02003178(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 0, 16, 0xFFFF);

            {
                NNSG2dImagePaletteProxy *v1;
                int v2;

                v1 = CellActor_GetPaletteProxy(param0->unk_78->unk_00);
                v2 = sub_0201FAB4(v1, NNS_G2D_VRAM_TYPE_2DMAIN);

                sub_02003178(param0->unk_04.unk_04, 0x4, 0xFFFF ^ (1 << v2), 0, 0, 16, 0xFFFF);
            }

            sub_020086FC(param0->unk_70, 0, 16, 0, 0xFFFF);
            param0->unk_68++;
        }
        break;
    case 3: {
        s16 v3, v4;
        int v5 = 0;

        SpriteActor_GetSpritePositionXY(param0->unk_78, &v3, &v4);

        if (v4 > -48) {
            sub_0200D5DC(param0->unk_78, 0, -4);
        } else {
            v5++;
        }

        SpriteActor_GetSpritePositionXY(param0->unk_7C, &v3, &v4);

        if (v4 < 192) {
            sub_0200D5DC(param0->unk_7C, 0, +4);
        } else {
            v5++;
        }

        if ((sub_0200384C(param0->unk_04.unk_04) != 0) || (v5 != 2) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        ov119_021D190C(param0, 0);
        SpriteActor_EnableObject(param0->unk_74, 0);
        SpriteActor_EnableObject(param0->unk_78, 0);
        SpriteActor_EnableObject(param0->unk_7C, 0);

        param0->unk_68++;
    } break;
    case 4:
        if ((++param0->unk_64) >= 25) {
            param0->unk_64 = 0;

            sub_020086FC(param0->unk_70, 16, 0, 0, 0xFFFF);
            sub_02003178(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 16, 0, 0xFFFF);
            sub_02003178(param0->unk_04.unk_04, 0x4, 0xFFFF, 0, 16, 0, 0xFFFF);

            param0->unk_68++;
        }
        break;
    case 5:
        if ((sub_0200384C(param0->unk_04.unk_04) != 0) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        param0->unk_68++;
        break;
    default:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        param0->unk_68 = 0;
        param0->unk_64 = 0;

        return 0;
    }

    return 1;
}

static BOOL ov119_021D21BC(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        ov119_021D14DC(param0->unk_04.unk_40, 0);
        ov119_021D14DC(param0->unk_04.unk_40, 1);
        ov119_021D14DC(param0->unk_04.unk_40, 2);
        ov119_021D14DC(param0->unk_04.unk_40, 3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_68++;
        break;
    case 1:
        switch (param0->unk_64) {
        case 25:
            Sound_PlayEffect(2054);
            break;
        case 80:
            Sound_PlayEffect(1962);
            break;
        case 142:
            Sound_PlayEffect(2069);
            break;
        }

        if ((++param0->unk_64) >= 160) {
            param0->unk_64 = 0;
            sub_02003178(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 0, 16, 0xFFFF);

            {
                NNSG2dImagePaletteProxy *v0;
                int v1;

                v0 = CellActor_GetPaletteProxy(param0->unk_78->unk_00);
                v1 = sub_0201FAB4(v0, NNS_G2D_VRAM_TYPE_2DMAIN);

                sub_02003178(param0->unk_04.unk_04, 0x4, 0xFFFF ^ (1 << v1), 0, 0, 16, 0xFFFF);
            }

            sub_020086FC(param0->unk_70, 0, 16, 0, 0xFFFF);
            param0->unk_68++;
        }
        break;
    case 2: {
        s16 v2, v3;
        int v4 = 0;

        SpriteActor_GetSpritePositionXY(param0->unk_78, &v2, &v3);

        if (v3 > -48) {
            sub_0200D5DC(param0->unk_78, 0, -4);
        } else {
            v4++;
        }

        SpriteActor_GetSpritePositionXY(param0->unk_7C, &v2, &v3);

        if (v3 < 192) {
            sub_0200D5DC(param0->unk_7C, 0, +4);
        } else {
            v4++;
        }

        if ((sub_0200384C(param0->unk_04.unk_04) != 0) || (v4 != 2) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        ov119_021D190C(param0, 0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        SpriteActor_EnableObject(param0->unk_74, 0);
        SpriteActor_EnableObject(param0->unk_78, 0);
        SpriteActor_EnableObject(param0->unk_7C, 0);

        param0->unk_68++;
    } break;
    case 3:
        if ((++param0->unk_64) >= 25) {
            param0->unk_64 = 0;

            sub_020086FC(param0->unk_70, 16, 0, 0, 0xFFFF);
            sub_02003178(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 16, 0, 0xFFFF);
            sub_02003178(param0->unk_04.unk_04, 0x4, 0xFFFF, 0, 16, 0, 0xFFFF);

            param0->unk_68++;
        }
        break;
    case 4:
        if ((sub_0200384C(param0->unk_04.unk_04) != 0) || (sub_020087B4(param0->unk_70) != 0)) {
            break;
        }

        param0->unk_68++;
        break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}
