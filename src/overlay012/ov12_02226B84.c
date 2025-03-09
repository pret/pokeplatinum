#include "overlay012/ov12_02226B84.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02225D50.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226454.h"
#include "overlay012/struct_ov12_0222660C_decl.h"
#include "overlay012/struct_ov12_022267D4_decl.h"
#include "overlay012/struct_ov12_0222C7E0_sub1.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay012/struct_ov12_02235998.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "math.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "spl.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"
#include "unk_02014000.h"

typedef struct {
    int unk_00;
    UnkStruct_ov12_0223595C unk_04;
    UnkStruct_ov12_0222C7E0_sub1 unk_20;
    UnkStruct_ov12_02235998 unk_2C[4];
    UnkStruct_ov12_02225F6C unk_7C;
} UnkStruct_ov12_02226BA0;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    UnkStruct_ov12_0223595C unk_1C;
    UnkStruct_ov12_0222C7E0_sub1 unk_38;
    UnkStruct_ov12_02235998 unk_44[4];
    UnkStruct_ov12_02225F6C unk_94;
} UnkStruct_ov12_02226D38;

typedef struct {
    u8 unk_00;
    UnkStruct_ov12_0221FCDC *unk_04;
    PokemonSprite *unk_08;
    UnkStruct_ov12_02225D50 unk_0C;
    s32 unk_20;
    int unk_24;
    s16 unk_28;
    s16 unk_2A;
} UnkStruct_ov12_02227390;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    UnkStruct_ov12_02225F6C unk_04;
    PokemonSprite *unk_28;
    s16 unk_2C;
    s16 unk_2E;
} UnkStruct_ov12_022274E4;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    ManagedSprite *unk_14;
    UnkStruct_ov12_02225F6C unk_18;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    s16 unk_4C;
    s16 unk_4E;
} UnkStruct_ov12_02227620;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    PaletteData *unk_04;
} UnkStruct_ov12_02227808;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    PokemonSprite *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_ov12_022278D0;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    SpriteManager *unk_04;
    int unk_08;
    s16 unk_0C;
    s16 unk_0E;
    ManagedSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    BOOL unk_50;
} UnkStruct_ov12_02227B4C;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    int unk_04;
    s16 unk_08;
    s16 unk_0A;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
} UnkStruct_ov12_02227DE0;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    SpriteManager *unk_04;
    UnkStruct_ov12_02226454 unk_08;
} UnkStruct_ov12_0222813C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02235998 unk_0C;
    UnkStruct_ov12_0223595C unk_20;
    UnkStruct_ov12_0221FCDC *unk_3C;
} UnkStruct_ov12_02228268;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    UnkStruct_ov12_0223595C unk_1C;
    UnkStruct_ov12_0222C7E0_sub1 unk_38;
    UnkStruct_ov12_02235998 unk_44[4];
    UnkStruct_ov12_02225F6C unk_94;
} UnkStruct_ov12_02227064;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    s16 unk_0C;
    UnkStruct_ov12_02235998 unk_10;
    UnkStruct_ov12_0223595C unk_24;
    UnkStruct_ov12_02225F6C unk_40;
    UnkStruct_ov12_0221FCDC *unk_64;
} UnkStruct_ov12_0222830C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02235998 unk_0C;
    UnkStruct_ov12_0223595C unk_20;
    UnkStruct_ov12_02225F6C unk_3C;
    UnkStruct_ov12_0221FCDC *unk_60;
    s16 unk_64;
} UnkStruct_ov12_02228488;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    UnkStruct_ov12_0221FCDC *unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225F6C unk_38;
} UnkStruct_ov12_0222862C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    int unk_0C;
    int unk_10;
    int unk_14;
    UnkStruct_ov12_0221FCDC *unk_18;
    PokemonSprite *unk_1C;
    UnkStruct_ov12_02225F6C unk_20;
    UnkStruct_ov12_02225F6C unk_44;
} UnkStruct_ov12_02228868;

typedef struct {
    int unk_00;
    UnkStruct_ov12_0223595C unk_04;
    ManagedSprite *unk_20;
    ManagedSprite *unk_24;
} UnkStruct_ov12_02228B10;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02235998 unk_0C;
    UnkStruct_ov12_0223595C unk_20;
    UnkStruct_ov12_02225F6C unk_3C;
    UnkStruct_ov12_0221FCDC *unk_60;
    s16 unk_64;
    s16 unk_66;
} UnkStruct_ov12_02228BD0;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    UnkStruct_ov12_02225F6C unk_30;
} UnkStruct_ov12_02228DB8;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    UnkStruct_ov12_02225F6C unk_30;
    UnkStruct_ov12_02235350 unk_54;
    UnkStruct_ov12_02235350 unk_58;
} UnkStruct_ov12_02228E78;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    UnkStruct_ov12_022267D4 *unk_30;
} UnkStruct_ov12_02229184;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    s16 unk_40;
    s16 unk_42;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02229278;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    s16 unk_1C;
    int unk_20;
    int unk_24;
    UnkStruct_ov12_02235998 unk_28;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
} UnkStruct_ov12_022294AC;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    BgConfig *unk_28;
    UnkStruct_ov12_0221FCDC *unk_2C;
    SpriteManager *unk_30;
    UnkStruct_ov12_02235998 unk_34[4];
    UnkStruct_ov12_02235998 unk_84[4];
    UnkStruct_ov12_02225F6C unk_D4;
} UnkStruct_ov12_02229738;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C;
    s16 unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} UnkStruct_ov12_0222988C;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    int unk_08;
    UnkStruct_ov12_02235350 unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    UnkStruct_02014014 *unk_34;
    SPLEmitter *unk_38;
    UnkStruct_ov12_0223595C unk_3C;
    UnkStruct_ov12_02235998 unk_58[4];
    UnkStruct_ov12_02225F6C unk_A8[2];
    UnkStruct_ov12_02225D50 unk_F0;
} UnkStruct_ov12_02229980;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    UnkStruct_02014014 *unk_34;
    SPLEmitter *unk_38;
    UnkStruct_ov12_0223595C unk_3C;
    UnkStruct_ov12_02225F6C unk_58;
    VecFx32 unk_7C;
    VecFx32 unk_88;
} UnkStruct_ov12_02229F9C;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C;
} UnkStruct_ov12_0222A178;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C;
    UnkStruct_ov12_02225D50 unk_20;
    int unk_34;
} UnkStruct_ov12_0222A1F478;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C;
    UnkStruct_ov12_02225D50 unk_20;
} UnkStruct_ov12_0222A3DC;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C;
    u8 unk_20;
    u8 unk_21;
    UnkStruct_ov12_02225F6C unk_24[2];
} UnkStruct_ov12_0222A4A0;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
} UnkStruct_ov12_0222A624;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C[4];
    int unk_2C;
    int unk_30;
} UnkStruct_ov12_0222AB10;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov12_0223595C unk_08;
    UnkStruct_ov12_0222660C *unk_24;
} UnkStruct_ov12_0222ABBC;

static int ov12_02229454(UnkStruct_ov12_0221FCDC *param0, int param1);

static void ov12_02226B84(PokemonSprite *param0)
{
    PokemonSprite_SetAttribute(param0, MON_SPRITE_SCALE_X, 0x100);
    PokemonSprite_SetAttribute(param0, MON_SPRITE_SCALE_Y, 0x100);
}

static void ov12_02226BA0(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_02226BA0 *v1 = (UnkStruct_ov12_02226BA0 *)param1;

    switch (v1->unk_04.unk_00) {
    case 0:
        ov12_02226108(&v1->unk_7C, v1->unk_20.unk_00, v1->unk_20.unk_02, v1->unk_20.unk_04, v1->unk_20.unk_06);
        v1->unk_04.unk_00++;
        break;
    case 1:
        if (ov12_02226138(&v1->unk_7C) == 0) {
            v1->unk_04.unk_00++;
        } else {
            if (inline_ov12_02235998(v1->unk_20.unk_08, 0x100) == 1) {
                for (v0 = 0; v0 < v1->unk_00; v0++) {
                    if (v1->unk_2C[v0].unk_08 == NULL) {
                        continue;
                    }

                    PokemonSprite_SetAttribute(v1->unk_2C[v0].unk_08, MON_SPRITE_X_CENTER, v1->unk_2C[v0].unk_04.unk_00 + v1->unk_7C.unk_00);
                    PokemonSprite_SetAttribute(v1->unk_2C[v0].unk_08, MON_SPRITE_Y_CENTER, v1->unk_2C[v0].unk_04.unk_02 + v1->unk_7C.unk_02);
                }
            } else if (inline_ov12_02235998(v1->unk_20.unk_08, 0x200) == 1) {
                for (v0 = 0; v0 < v1->unk_00; v0++) {
                    if (v1->unk_2C[v0].unk_0C == NULL) {
                        continue;
                    }

                    ManagedSprite_SetPositionXY(v1->unk_2C[v0].unk_0C, v1->unk_2C[v0].unk_04.unk_00 + v1->unk_7C.unk_00, v1->unk_2C[v0].unk_04.unk_02 + v1->unk_7C.unk_02);
                    ManagedSprite_TickFrame(v1->unk_2C[v0].unk_0C);
                }

                SpriteSystem_DrawSprites(v1->unk_04.unk_0C);
            }

            if (inline_ov12_02235998(v1->unk_20.unk_08, 0x400) == 1) {
                Bg_SetOffset(v1->unk_04.unk_14, 3, 0, v1->unk_7C.unk_00);
            }
        }
        break;
    default:
        ov12_02220220(v1->unk_04.unk_04, param0);
        Heap_FreeToHeap(v1);
        break;
    }
}

void ov12_02226CB0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02226BA0 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02226BA0));
    int v1;

    ov12_0223595C(param0, &v0->unk_04);

    v0->unk_20.unk_00 = ov12_02220280(param0, 0);
    v0->unk_20.unk_02 = ov12_02220280(param0, 1);
    v0->unk_20.unk_04 = ov12_02220280(param0, 2);
    v0->unk_20.unk_06 = ov12_02220280(param0, 3);
    v0->unk_20.unk_08 = ov12_02220280(param0, 4);

    if (inline_ov12_02235998(v0->unk_20.unk_08, 0x100) == 1) {
        ov12_02235998(param0, v0->unk_20.unk_08, &(v0->unk_2C[0]), &v0->unk_00);
    } else if (inline_ov12_02235998(v0->unk_20.unk_08, 0x200) == 1) {
        ov12_02235D74(param0, v0->unk_20.unk_08, &(v0->unk_2C[0]), &v0->unk_00);
    }

    ov12_022201E8(v0->unk_04.unk_04, ov12_02226BA0, v0);
}

static void ov12_02226D38(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02226D38 *v0 = (UnkStruct_ov12_02226D38 *)param1;

    switch (v0->unk_1C.unk_00) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3, v0->unk_16, v0->unk_18);
        Bg_ToggleLayer(2, 1);
        v0->unk_1C.unk_00++;
    case 1: {
        int v1 = 0;

        if (v0->unk_16 < v0->unk_08 - 2) {
            v0->unk_16 += 2;
        } else {
            v1++;
        }

        if (v0->unk_18 > 7 + 2) {
            v0->unk_18 -= 2;
        } else {
            v1++;
        }

        if (v1 == 2) {
            v0->unk_16 = v0->unk_08;
            v0->unk_18 = 7;
            v0->unk_1C.unk_00++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    case 2:
        if (v0->unk_04) {
            v0->unk_1C.unk_00++;
        }
        break;
    case 3: {
        int v2 = 0;

        if (v0->unk_16 > 2) {
            v0->unk_16 -= 2;
        } else {
            v2++;
        }

        if (v0->unk_18 < 31 - 2) {
            v0->unk_18 += 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            v0->unk_16 = 0;
            v0->unk_18 = 31;
            v0->unk_1C.unk_00++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    default:
        Bg_ToggleLayer(2, 0);
        ov12_02220220(v0->unk_1C.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    if (((v0->unk_10 > 0) && (v0->unk_0C >= 512)) || ((v0->unk_10 < 0) && (v0->unk_0C <= -412))) {
        v0->unk_04 = 1;
    }

    v0->unk_0A += v0->unk_0E;
    v0->unk_0C += v0->unk_10;

    if (v0->unk_12 < v0->unk_14) {
        if (v0->unk_10 < 0) {
            v0->unk_10++;
        } else {
            v0->unk_10 = 0;
        }

        if (v0->unk_0E < 0) {
            v0->unk_0E++;
        } else {
            v0->unk_0E = 0;
        }

        v0->unk_14 = 0;
    } else {
        v0->unk_14++;
    }

    Bg_SetOffset(v0->unk_1C.unk_14, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.unk_14, 2, 3, v0->unk_0C);
}

void ov12_02226EB0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02226D38 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02226D38));
    int v1;

    ov12_0223595C(param0, &v0->unk_1C);

    v0->unk_0A = ov12_02220280(param0, 1);
    v0->unk_0C = ov12_02220280(param0, 2);
    v0->unk_0E = ov12_02220280(param0, 3);
    v0->unk_10 = ov12_02220280(param0, 4);
    v0->unk_00 = ov12_02220280(param0, 5);
    v0->unk_08 = ov12_02220280(param0, 6);
    v0->unk_12 = ov12_02220280(param0, 7);
    v0->unk_14 = 0;

    if ((v0->unk_00 != 0) && (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4)) {
        v0->unk_0A *= -1;
        v0->unk_0C *= -1;
        v0->unk_0E *= -1;
        v0->unk_10 *= -1;
        v0->unk_0C -= ((128 / 3) * 2);
    } else {
        v0->unk_0C += ((128 / 3) * 2);
    }

    if (ov12_0221FDD4(param0) == 1) {
        v0->unk_0E *= -1;
    }

    v0->unk_16 = 0;
    v0->unk_18 = 31;
    v0->unk_04 = 0;

    Bg_ToggleLayer(2, 0);

    {
        int v2 = ov12_02220280(param0, 0);

        Graphics_LoadTilesToBgLayer(7, ov12_022234E4(v2, HEAP_ID_SYSTEM), v0->unk_1C.unk_14, 2, 0, 0, 1, ov12_0221FDE4(param0));
        PaletteData_LoadBufferFromFileStart(v0->unk_1C.unk_18, 7, ov12_022234E4(v2, 1), ov12_0221FDE4(param0), 0, 0x20, (9 * 16));
        Bg_ClearTilemap(v0->unk_1C.unk_14, 2);

        {
            int v3 = 2;

            if (ov12_0221FDD4(param0) == 1) {
                v3 = 4;
            } else if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4) {
                v3 = 3;
            }

            Graphics_LoadTilemapToBgLayer(7, ov12_022234E4(v2, v3), v0->unk_1C.unk_14, 2, 0, 0, 1, ov12_0221FDE4(param0));
        }
    }

    Bg_SetOffset(v0->unk_1C.unk_14, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.unk_14, 2, 3, v0->unk_0C);

    ov12_022201E8(v0->unk_1C.unk_04, ov12_02226D38, v0);
}

static void ov12_02227064(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227064 *v0 = (UnkStruct_ov12_02227064 *)param1;

    switch (v0->unk_1C.unk_00) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3, v0->unk_16, v0->unk_18);
        Bg_ToggleLayer(2, 1);
        v0->unk_1C.unk_00++;
    case 1: {
        int v1 = 0;

        if (v0->unk_16 < 16) {
            v0->unk_16 += 2;
        } else {
            v1++;
        }

        if (v0->unk_18 > 4) {
            v0->unk_18 -= 2;
        } else {
            v1++;
        }

        if (v1 == 2) {
            v0->unk_16 = 16;
            v0->unk_18 = 4;
            v0->unk_1C.unk_00++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    case 2:
        if (v0->unk_04) {
            v0->unk_1C.unk_00++;
        }
        break;
    case 3: {
        int v2 = 0;

        if (v0->unk_16 > 2) {
            v0->unk_16 -= 2;
        } else {
            v2++;
        }

        if (v0->unk_18 < 16) {
            v0->unk_18 += 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            v0->unk_16 = 0;
            v0->unk_18 = 31;
            v0->unk_1C.unk_00++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    default:
        Bg_ToggleLayer(2, 0);
        ov12_02220220(v0->unk_1C.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    if (((v0->unk_10 > 0) && (v0->unk_0C >= 512)) || ((v0->unk_10 < 0) && (v0->unk_0C <= -412))) {
        v0->unk_04 = 1;
    }

    v0->unk_0A += v0->unk_0E;
    v0->unk_0C += v0->unk_10;

    if (v0->unk_12 < v0->unk_14) {
        if (v0->unk_10 < 0) {
            v0->unk_10++;
        } else {
            v0->unk_10 = 0;
        }

        if (v0->unk_0E < 0) {
            v0->unk_0E++;
        } else {
            v0->unk_0E = 0;
        }

        v0->unk_14 = 0;
    } else {
        v0->unk_14++;
    }

    Bg_SetOffset(v0->unk_1C.unk_14, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.unk_14, 2, 3, v0->unk_0C);
}

void ov12_022271D8(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02227064 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02227064));
    int v1;

    ov12_0223595C(param0, &v0->unk_1C);

    v0->unk_0A = ov12_02220280(param0, 1);
    v0->unk_0C = ov12_02220280(param0, 2);
    v0->unk_0E = ov12_02220280(param0, 3);
    v0->unk_10 = ov12_02220280(param0, 4);
    v0->unk_00 = ov12_02220280(param0, 5);
    v0->unk_08 = ov12_02220280(param0, 6);
    v0->unk_12 = ov12_02220280(param0, 7);
    v0->unk_14 = 0;

    if ((v0->unk_00 != 0) && (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4)) {
        v0->unk_0A *= -1;
        v0->unk_0C *= -1;
        v0->unk_0E *= -1;
        v0->unk_10 *= -1;
        v0->unk_0C -= ((128 / 3) * 2);
    } else {
        v0->unk_0C += ((128 / 3) * 2);
    }

    if (ov12_0221FDD4(param0) == 1) {
        v0->unk_0E *= -1;
    }

    v0->unk_16 = 4;
    v0->unk_18 = 16;
    v0->unk_16 = 0;
    v0->unk_18 = 16;
    v0->unk_04 = 0;

    Bg_ToggleLayer(2, 0);

    {
        int v2 = ov12_02220280(param0, 0);

        Graphics_LoadTilesToBgLayer(7, ov12_022234E4(v2, HEAP_ID_SYSTEM), v0->unk_1C.unk_14, 2, 0, 0, 1, ov12_0221FDE4(param0));
        PaletteData_LoadBufferFromFileStart(v0->unk_1C.unk_18, 7, ov12_022234E4(v2, 1), ov12_0221FDE4(param0), 0, 0x20, (9 * 16));
        Bg_ClearTilemap(v0->unk_1C.unk_14, 2);

        {
            int v3 = 2;

            if (ov12_0221FDD4(param0) == 1) {
                v3 = 4;
            } else if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4) {
                v3 = 3;
            }

            Graphics_LoadTilemapToBgLayer(7, ov12_022234E4(v2, v3), v0->unk_1C.unk_14, 2, 0, 0, 1, ov12_0221FDE4(param0));
        }
    }

    Bg_SetOffset(v0->unk_1C.unk_14, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.unk_14, 2, 3, v0->unk_0C);

    ov12_022201E8(v0->unk_1C.unk_04, ov12_02227064, v0);
}

static void ov12_02227390(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227390 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
    case 1:
        if (ov12_02225DA0(&v0->unk_0C) == 1) {
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_ROTATION_Z, (u16)v0->unk_0C.unk_00);
        } else {
            ov12_02225D50(&v0->unk_0C, v0->unk_0C.unk_00, v0->unk_20, v0->unk_24);
            v0->unk_00++;
        }
        break;
    case 2:
        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_PIVOT, 0);
        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_PIVOT, 0);
        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_ROTATION_Z, 0);
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02227408(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02227390 *v0;
    int v1;
    int v2;
    int v3;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_02227390));

    v0->unk_00 = 0;
    v0->unk_04 = param0;
    v0->unk_24 = ov12_02220280(param0, 2);
    v0->unk_20 = ov12_02220280(param0, 0);

    v2 = ov12_02220280(param0, 3);

    {
        if ((v2 == 0) || (v2 == 2)) {
            v3 = ov12_02220248(v0->unk_04);
        } else {
            v3 = ov12_02220240(v0->unk_04);
        }
    }

    ov12_02225D50(&v0->unk_0C, v0->unk_20, ov12_02220280(param0, 1), v0->unk_24);

    v1 = ov12_02225964(param0, v3);
    v0->unk_0C.unk_04[1] *= v1;

    if (v2 == 2) {
        v1 *= -1;
    }

    v0->unk_08 = ov12_022232FC(v0->unk_04, v3);

    if (ov12_02220280(param0, 3) == 1) {
        v0->unk_28 = ov12_02220280(param0, 4);
        v0->unk_2A = ov12_02220280(param0, 5);
    } else {
        v0->unk_28 = (80 / 2) * v1;
        v0->unk_2A = (80 / 2);
    }

    PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_PIVOT, v0->unk_28);
    PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_PIVOT, v0->unk_2A);

    ov12_022201E8(v0->unk_04, ov12_02227390, v0);
}

static void ov12_022274E4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022274E4 *v0 = param1;

    if (ov12_02225BA0(&v0->unk_04, v0->unk_2C, v0->unk_2E, v0->unk_28) == 0) {
        PokemonSprite_SetAttribute(v0->unk_28, MON_SPRITE_X_CENTER, v0->unk_2C);
        PokemonSprite_SetAttribute(v0->unk_28, MON_SPRITE_Y_CENTER, v0->unk_2E + ((-8 * FX32_ONE) >> FX32_SHIFT));
        PokemonSprite_SetAttribute(v0->unk_28, MON_SPRITE_ROTATION_Z, 0);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
    }
}

void ov12_02227534(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_022274E4 *v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_022274E4));
    v0->unk_00 = param0;

    ov12_022263A4(&v0->unk_04, ov12_02220280(param0, 0), ov12_02220280(param0, 1));

    switch (ov12_02220280(param0, 2)) {
    case 0x2:
        v0->unk_28 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
        v0->unk_04.unk_04[2] *= -1;
        break;
    case 0x4:
        v0->unk_28 = ov12_022232FC(v0->unk_00, ov12_022352AC(v0->unk_00, ov12_02220240(v0->unk_00)));
        v0->unk_04.unk_04[2] *= -1;
        break;
    case 0x8:
        v0->unk_28 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));
        break;
    case 0x10:
        v0->unk_28 = ov12_022232FC(v0->unk_00, ov12_022352AC(v0->unk_00, ov12_02220248(v0->unk_00)));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    v0->unk_2C = PokemonSprite_GetAttribute(v0->unk_28, MON_SPRITE_X_CENTER);
    v0->unk_2E = PokemonSprite_GetAttribute(v0->unk_28, MON_SPRITE_Y_CENTER);
    v0->unk_2E -= (-8 * FX32_ONE) >> FX32_SHIFT;

    ov12_022201E8(v0->unk_00, ov12_022274E4, v0);
}

static void ov12_02227620(UnkStruct_ov12_02227620 *param0, s16 param1, s16 param2)
{
    ManagedSprite_SetDrawFlag(param0->unk_14, 1);
    ManagedSprite_SetPositionXY(param0->unk_14, param1, param2);
    param0->unk_40 = 0;
    ov12_02225E68(&param0->unk_18, 10, 10, 14, 4);
}

static BOOL ov12_02227658(UnkStruct_ov12_02227620 *param0)
{
    if (ov12_022260A8(&param0->unk_18, param0->unk_14) == 0) {
        if (param0->unk_40) {
            ManagedSprite_SetDrawFlag(param0->unk_14, 0);
            return 1;
        } else {
            param0->unk_40 = 1;
            ov12_02225E68(&param0->unk_18, 14, 10, 12, 2);
        }
    }

    return 0;
}

static BOOL ov12_0222769C(UnkStruct_ov12_02227620 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_48) {
    case 0:
        ov12_02227620(param0, param0->unk_4C + (24 * param0->unk_3C), param0->unk_4E - 16);
        param0->unk_48++;
        break;
    case 1:
        if (ov12_02227658(param0)) {
            param0->unk_48++;
        }
        break;
    case 2:
        param0->unk_44--;

        if (param0->unk_44 < 0) {
            param0->unk_48++;
            ov12_02227620(param0, param0->unk_4C - (24 * param0->unk_3C), param0->unk_4E - 24);
        }
        break;
    case 3:
        if (ov12_02227658(param0)) {
            param0->unk_48++;
        }
        break;
    case 4:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02227738(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227620 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        if (ov12_0222769C(v0)) {
            v0->unk_0C++;
        }
        break;
    case 1:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_0222777C(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02227620 *v0;
    PokemonSprite *v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02227620));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_14 = param3;

    ManagedSprite_SetPriority(v0->unk_14, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_14, 1);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_14, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetDrawFlag(v0->unk_14, FALSE);

    v0->unk_44 = 4;
    v0->unk_3C = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));

    v1 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));

    v0->unk_4C = PokemonSprite_GetAttribute(v1, MON_SPRITE_X_CENTER);
    v0->unk_4E = PokemonSprite_GetAttribute(v1, MON_SPRITE_Y_CENTER);

    ov12_022201E8(v0->unk_00, ov12_02227738, v0);
}

static void ov12_02227808(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227808 *v0 = param1;

    if (PaletteData_GetSelectedBuffersMask(v0->unk_04) == 0) {
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
    }
}

void ov12_02227828(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02227808 *v0;
    u16 v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02227808));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_0222332C(v0->unk_00);

    switch (ov12_02220280(param0, 0)) {
    case 0:
        v1 = ov12_02222354(param0);
        break;
    case 1:
        v1 = (1 << 8);
        break;
    case 2:
        v1 = (1 << 9);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    PaletteData_StartFade(v0->unk_04, 0x1, v1, ov12_02220280(param0, 1), ov12_02220280(param0, 2), ov12_02220280(param0, 3), ov12_02220280(param0, 4));
    ov12_022201E8(v0->unk_00, ov12_02227808, v0);
}

static void ov12_022278D0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022278D0 *v0 = param1;

    switch (v0->unk_08) {
    case 0:
        PokemonSprite_StartFade(v0->unk_04, 0, v0->unk_18, v0->unk_10, v0->unk_14);
        v0->unk_08++;
        break;
    case 1:
        if (PokemonSprite_IsFadeActive(v0->unk_04) == 0) {
            v0->unk_08++;
        }
        break;
    case 2:
        if (v0->unk_1C == 0) {
            v0->unk_08++;
        } else {
            v0->unk_1C--;
            break;
        }
    case 3:
        PokemonSprite_StartFade(v0->unk_04, v0->unk_18, 0, v0->unk_10, v0->unk_14);
        v0->unk_08++;
        break;
    case 4:
        if (PokemonSprite_IsFadeActive(v0->unk_04) == 0) {
            v0->unk_0C--;

            if (v0->unk_0C <= 0) {
                v0->unk_08++;
            } else {
                v0->unk_08 = 0;
            }
        }
        break;
    case 5:
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }
}

void ov12_0222797C(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_022278D0 *v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022278D0));
    v0->unk_00 = param0;
    v0->unk_04 = NULL;

    switch (ov12_02220280(param0, 0)) {
    case 0x2:
        v0->unk_04 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
        break;
    case 0x4:
        if (ov12_02223364(param0) == 1) {
            v0->unk_04 = ov12_022232FC(v0->unk_00, ov12_022352AC(v0->unk_00, ov12_02220240(v0->unk_00)));
        }
        break;
    case 0x8:
        v0->unk_04 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));
        break;
    case 0x10:
        if (ov12_02223364(param0) == 1) {
            v0->unk_04 = ov12_022232FC(v0->unk_00, ov12_022352AC(v0->unk_00, ov12_02220248(v0->unk_00)));
        }
        break;
    case (0x2 | 0x800): {
        int v2;
        int v3;

        v1 = 0xFF;

        for (v2 = 0; v2 < 4; v2++) {
            v3 = ov12_022232B8(param0, v2);

            if ((v3 == 0) || (v3 == 2)) {
                v1 = v2;
                break;
            }
        }

        if (v1 == 0xFF) {
            v1 = 0;
        }

        v0->unk_04 = ov12_022232FC(v0->unk_00, v1);
    } break;
    case (0x4 | 0x800): {
        int v4;
        int v5;

        v1 = 0xFF;

        for (v4 = 0; v4 < 4; v4++) {
            v5 = ov12_022232B8(param0, v4);

            if (v5 == 4) {
                v1 = v4;
                break;
            }
        }

        if (v1 == 0xFF) {
            v1 = 0;
        }

        v0->unk_04 = ov12_022232FC(v0->unk_00, v1);
    } break;
    case (0x8 | 0x800): {
        int v6;
        int v7;

        v1 = 0xFF;

        for (v6 = 0; v6 < 4; v6++) {
            v7 = ov12_022232B8(param0, v6);

            if ((v7 == 1) || (v7 == 3)) {
                v1 = v6;
                break;
            }
        }

        if (v1 == 0xFF) {
            v1 = 0;
        }

        v0->unk_04 = ov12_022232FC(v0->unk_00, v1);
    } break;
    case (0x10 | 0x800): {
        int v8;
        int v9;

        v1 = 0xFF;

        for (v8 = 0; v8 < 4; v8++) {
            v9 = ov12_022232B8(param0, v8);

            if (v9 == 5) {
                v1 = v8;
                break;
            }
        }

        if (v1 == 0xFF) {
            v1 = 0;
        }

        v0->unk_04 = ov12_022232FC(v0->unk_00, v1);
    } break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0->unk_04 == NULL) {
        Heap_FreeToHeap(v0);
        return;
    }

    v0->unk_10 = ov12_02220280(param0, 1);
    v0->unk_0C = ov12_02220280(param0, 2);
    v0->unk_14 = ov12_02220280(param0, 3);
    v0->unk_18 = ov12_02220280(param0, 4);
    v0->unk_1C = ov12_02220280(param0, 5);

    ov12_022201E8(v0->unk_00, ov12_022278D0, v0);
}

static void ov12_02227B4C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227B4C *v0 = param1;
    f32 v1, v2;
    BOOL v3;

    switch (v0->unk_08) {
    case 0:
        ov12_02225E68(&v0->unk_14, v0->unk_3C, v0->unk_44, v0->unk_40, v0->unk_4C >> 16);
        ov12_02225FA4(&v0->unk_14, &v1, &v2);

        if (v0->unk_50 == 1) {
            v1 = -v1;
        }

        ManagedSprite_SetAffineScale(v0->unk_10, v1, v2);
        v0->unk_08++;
        break;
    case 1:
        v3 = ov12_02225EB8(&v0->unk_14);
        ov12_02225FA4(&v0->unk_14, &v1, &v2);

        if (v0->unk_50 == 1) {
            v1 = -v1;
        }

        ManagedSprite_SetAffineScale(v0->unk_10, v1, v2);

        if (v3) {
            ov12_0222605C(v0->unk_10, v0->unk_0C, v0->unk_0E, v0->unk_14.unk_04[4], 0);
        } else {
            v0->unk_08++;
        }
        break;
    case 2:
        ov12_02225E68(&v0->unk_14, v0->unk_40, v0->unk_44, v0->unk_3C, v0->unk_4C & 0xffff);
        v0->unk_08++;
        break;
    case 3:
        v3 = ov12_02225EB8(&v0->unk_14);
        ov12_02225FA4(&v0->unk_14, &v1, &v2);

        if (v0->unk_50 == 1) {
            v1 = -v1;
        }

        ManagedSprite_SetAffineScale(v0->unk_10, v1, v2);

        if (v3) {
            ov12_0222605C(v0->unk_10, v0->unk_0C, v0->unk_0E, v0->unk_14.unk_04[4], 0);
        } else {
            v0->unk_48--;

            if (v0->unk_48 <= 0) {
                v0->unk_08++;
            } else {
                v0->unk_08 = 0;
            }
        }
        break;
    case 4:
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_04);
}

void ov12_02227CBC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02227B4C *v0;
    PokemonSprite *v1;
    int v2;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02227B4C));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);

    if (ov12_02220280(param0, 0) == 0) {
        v1 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
        v0->unk_0E = ov12_02223354(v0->unk_00, ov12_02220240(v0->unk_00));
    } else {
        v1 = ov12_022232FC(v0->unk_00, ov12_02220248(v0->unk_00));
        v0->unk_0E = ov12_02223354(v0->unk_00, ov12_02220248(v0->unk_00));
    }

    v0->unk_0C = PokemonSprite_GetAttribute(v1, MON_SPRITE_Y_CENTER);
    v0->unk_0C -= PokemonSprite_GetAttribute(v1, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_38 = ov12_02220280(param0, 1);
    v0->unk_3C = ov12_02220280(param0, 2);
    v0->unk_40 = ov12_02220280(param0, 3);
    v0->unk_44 = ov12_02220280(param0, 4);
    v0->unk_48 = ov12_02220280(param0, 5);
    v0->unk_4C = ov12_02220280(param0, 6);
    v0->unk_10 = ov12_022202C0(v0->unk_00, ov12_02220280(param0, 7));

    ManagedSprite_SetPriority(v0->unk_10, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_10, 1);
    ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_10, AFFINE_OVERWRITE_MODE_DOUBLE);

    ov12_02235780(v0->unk_00, v0->unk_38, 16 - v0->unk_38);
    ov12_022201E8(v0->unk_00, ov12_02227B4C, v0);

    v2 = ov12_02220280(param0, 0);

    if (v2 == 0) {
        v2 = 0;
    } else {
        v2 = 1;
    }

    if (ov12_022234A8(v0->unk_00, v2) == 1) {
        v0->unk_50 = 1;
    }
}

static void ov12_02227DE0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227DE0 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        ov12_02225EF0(&v0->unk_10, v0->unk_34, v0->unk_38, v0->unk_3C, v0->unk_40, v0->unk_44, v0->unk_4C >> 16);
        ov12_022260C8(&v0->unk_10, v0->unk_0C);
        v0->unk_04++;
        break;
    case 1:
        if (ov12_022260E8(&v0->unk_10, v0->unk_0C)) {
            ov12_02226024(v0->unk_0C, v0->unk_08, v0->unk_0A, v0->unk_10.unk_04[4], 0);
        } else {
            v0->unk_04++;
        }
        break;
    case 2:
        if (v0->unk_50 == 0) {
            v0->unk_04++;
        } else {
            v0->unk_50--;
            break;
        }
    case 3:
        ov12_02225EF0(&v0->unk_10, v0->unk_38, v0->unk_34, v0->unk_40, v0->unk_3C, v0->unk_44, v0->unk_4C & 0xffff);
        ov12_022260E8(&v0->unk_10, v0->unk_0C);
        v0->unk_04++;
        break;
    case 4:
        if (ov12_022260E8(&v0->unk_10, v0->unk_0C)) {
            ov12_02226024(v0->unk_0C, v0->unk_08, v0->unk_0A, v0->unk_10.unk_04[4], 0);
        } else {
            v0->unk_48--;

            if (v0->unk_48 <= 0) {
                v0->unk_04++;
            } else {
                v0->unk_04 = 0;
            }
        }
        break;
    case 5:
        ov12_02226B84(v0->unk_0C);
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }
}

void ov12_02227F30(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02227DE0 *v0;
    UnkStruct_ov12_02235998 v1[4];
    SysTask *v2;
    int v3;
    int v4;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02227DE0));
    v0->unk_00 = param0;

    switch (ov12_02220280(param0, 0)) {
    case 0x2 | 0x100:
    case 0x4 | 0x100:
        v0->unk_0A = ov12_02223354(v0->unk_00, ov12_02220240(v0->unk_00));
        ov12_02235998(v0->unk_00, ov12_02220280(param0, 0), v1, &v3);
        v0->unk_0C = v1[0].unk_08;
        break;
    case 0x8 | 0x100:
    case 0x10 | 0x100:
        v0->unk_0A = ov12_02223354(v0->unk_00, ov12_02220248(v0->unk_00));
        ov12_02235998(v0->unk_00, ov12_02220280(param0, 0), v1, &v3);
        v0->unk_0C = v1[0].unk_08;
        break;
    case (0x2 | 0x800): {
        int v5;
        int v6;

        v4 = 0xFF;

        for (v5 = 0; v5 < 4; v5++) {
            v6 = ov12_022232B8(param0, v5);

            if ((v6 == 0) || (v6 == 2)) {
                v4 = v5;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = ov12_022232FC(v0->unk_00, v4);
    } break;
    case (0x4 | 0x800): {
        int v7;
        int v8;

        v4 = 0xFF;

        for (v7 = 0; v7 < 4; v7++) {
            v8 = ov12_022232B8(param0, v7);

            if (v8 == 4) {
                v4 = v7;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = ov12_022232FC(v0->unk_00, v4);
    } break;
    case (0x8 | 0x800): {
        int v9;
        int v10;

        v4 = 0xFF;

        for (v9 = 0; v9 < 4; v9++) {
            v10 = ov12_022232B8(param0, v9);

            if ((v10 == 1) || (v10 == 3)) {
                v4 = v9;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = ov12_022232FC(v0->unk_00, v4);
    } break;
    case (0x10 | 0x800): {
        int v11;
        int v12;

        v4 = 0xFF;

        for (v11 = 0; v11 < 4; v11++) {
            v12 = ov12_022232B8(param0, v11);

            if (v12 == 5) {
                v4 = v11;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = ov12_022232FC(v0->unk_00, v4);
    } break;
    }

    if (v0->unk_0C == NULL) {
        Heap_FreeToHeap(v0);
        return;
    }

    v0->unk_08 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_0A = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_0A += 16;
    v0->unk_34 = ov12_02220280(param0, 1);
    v0->unk_38 = ov12_02220280(param0, 2);
    v0->unk_3C = ov12_02220280(param0, 3);
    v0->unk_40 = ov12_02220280(param0, 4);
    v0->unk_44 = ov12_02220280(param0, 5);
    v0->unk_48 = ov12_02220280(param0, 6);
    v0->unk_4C = ov12_02220280(param0, 7);
    v0->unk_48 = ov12_02220280(param0, 6) & 0xffff;
    v0->unk_50 = ov12_02220280(param0, 6) >> 16;

    v2 = ov12_022201E8(v0->unk_00, ov12_02227DE0, v0);
    ov12_02227DE0(v2, v0);
}

static void ov12_0222813C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222813C *v0 = param1;

    if (ov12_02226454(&v0->unk_08)) {
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
    } else {
        SpriteSystem_DrawSprites(v0->unk_04);
    }
}

void ov12_02228168(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222813C *v0;
    int v1;
    int v2;
    ManagedSprite *v3;
    int v4;
    int v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222813C));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);

    v1 = ov12_02220280(param0, 0);

    for (v2 = 0; v2 < 4; v2++) {
        if (v1 & (1 << v2)) {
            v3 = ov12_022202C0(v0->unk_00, v2);
            ManagedSprite_SetExplicitOamMode(v3, GX_OAM_MODE_XLU);
        }
    }

    v4 = ov12_02220280(param0, 1);
    v5 = ov12_02220280(param0, 3);

    ov12_02235780(v0->unk_00, v4, v5);
    ov12_02226424(&v0->unk_08, v4, ov12_02220280(param0, 2), v5, ov12_02220280(param0, 4), ov12_02220280(param0, 5));
    ov12_022201E8(v0->unk_00, ov12_0222813C, v0);
}

void ov12_02228214(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02235998 v0;
    int v1;
    int v2;
    int v3 = ov12_02220280(param0, 1);

    ov12_02235998(param0, ov12_02220280(param0, 0), &v0, &v1);

    for (v2 = 0; v2 < v1; v2++) {
        if ((ov12_0222337C(param0, v0.unk_10) == 1) && (v3 == 0)) {
            continue;
        }

        PokemonSprite_SetAttribute(v0.unk_08, MON_SPRITE_HIDE, v3);
    }
}

static void ov12_02228268(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228268 *v0 = (UnkStruct_ov12_02228268 *)param1;

    if (v0->unk_04 >= v0->unk_08) {
        if (v0->unk_00 == 0) {
            PokemonSprite_SetAttribute(v0->unk_0C.unk_08, MON_SPRITE_HIDE, 0);
            Heap_FreeToHeap(v0);
            ov12_02220220(v0->unk_3C, param0);
        } else {
            int v1;

            v1 = PokemonSprite_GetAttribute(v0->unk_0C.unk_08, MON_SPRITE_HIDE);
            PokemonSprite_SetAttribute(v0->unk_0C.unk_08, MON_SPRITE_HIDE, v1 ^ 1);
            v0->unk_00--;
            v0->unk_04 = 0;
        }
    } else {
        v0->unk_04++;
    }
}

void ov12_022282BC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02228268 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228268));

    v0->unk_3C = param0;
    v0->unk_00 = ov12_02220280(param0, 0) * 2;
    v0->unk_08 = ov12_02220280(param0, 1);

    ov12_0223595C(param0, &v0->unk_20);
    v0->unk_0C.unk_08 = ov12_022232FC(param0, ov12_02220240(param0));
    ov12_022201E8(v0->unk_3C, ov12_02228268, v0);
}

static void ov12_0222830C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222830C *v0 = (UnkStruct_ov12_0222830C *)param1;

    switch (v0->unk_24.unk_00) {
    case 0:
        ov12_02225BC8(&v0->unk_40, v0->unk_10.unk_04.unk_00, v0->unk_10.unk_04.unk_00 + v0->unk_0C, v0->unk_10.unk_04.unk_02, v0->unk_10.unk_04.unk_02, v0->unk_08);
        v0->unk_24.unk_00++;
        break;
    case 1:
        if (ov12_02225C14(&v0->unk_40) == 0) {
            v0->unk_24.unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_10.unk_08, MON_SPRITE_X_CENTER, v0->unk_40.unk_00);
        break;
    default:
        ov12_02220220(v0->unk_64, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02228394(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_0222830C *v3 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222830C));

    v3->unk_64 = param0;
    v3->unk_08 = ov12_02220280(param0, 0);
    v3->unk_0C = ov12_02220280(param0, 1);

    v1 = ov12_02220280(param0, 2);
    v2 = 0xFF;

    switch (v1) {
    case 0x2 | 0x100:
        v2 = ov12_02220240(param0);
        break;
    case 0x4 | 0x100:
        if (ov12_02223364(param0) == 1) {
            v2 = ov12_022352AC(param0, ov12_02220240(param0));
        }
        break;
    case 0x8 | 0x100:
        v2 = ov12_02220248(param0);
        break;
    case 0x10 | 0x100:
        if (ov12_02223364(param0) == 1) {
            v2 = ov12_022352AC(param0, ov12_02220248(param0));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 0xFF) {
        Heap_FreeToHeap(v3);
        return;
    }

    ov12_0223595C(param0, &v3->unk_24);
    v3->unk_10.unk_08 = ov12_022232FC(param0, v2);

    ov12_02235918(v3->unk_10.unk_08, &v3->unk_10.unk_04);
    v0 = ov12_02225964(param0, v2);

    if (v0 > 0) {
        v3->unk_0C *= +1;
    } else {
        v3->unk_0C *= -1;
    }

    ov12_022201E8(v3->unk_64, ov12_0222830C, v3);
}

static void ov12_02228488(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228488 *v0 = (UnkStruct_ov12_02228488 *)param1;

    switch (v0->unk_20.unk_00) {
    case 0:
        if (v0->unk_0C.unk_08 == NULL) {
            v0->unk_20.unk_00 = 0xff;
            break;
        }

        ov12_02225BC8(&v0->unk_3C, v0->unk_0C.unk_04.unk_00, v0->unk_0C.unk_04.unk_00 + v0->unk_64, v0->unk_0C.unk_04.unk_02, v0->unk_0C.unk_04.unk_02, v0->unk_08);
        v0->unk_20.unk_00++;
    case 1:
        if (ov12_02225C14(&v0->unk_3C) == 0) {
            v0->unk_20.unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C.unk_08, MON_SPRITE_X_CENTER, v0->unk_3C.unk_00);
        break;
    default:
        ov12_02220220(v0->unk_60, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02228520(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_02228488 *v3 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228488));

    v3->unk_60 = param0;
    v3->unk_08 = ov12_02220280(param0, 0);
    v3->unk_64 = ov12_02220280(param0, 1);

    v1 = ov12_02220280(param0, 2);
    ov12_0223595C(param0, &v3->unk_20);
    v2 = 0xFF;

    switch (v1) {
    case 0x2 | 0x100:
        v2 = ov12_02220240(param0);
        break;
    case 0x4 | 0x100:
        if (ov12_02223364(param0) == 1) {
            v2 = ov12_022352AC(param0, ov12_02220240(param0));
        }
        break;
    case 0x8 | 0x100:
        v2 = ov12_02220248(param0);
        break;
    case 0x10 | 0x100:
        if (ov12_02223364(param0) == 1) {
            v2 = ov12_022352AC(param0, ov12_02220248(param0));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 0xFF) {
        Heap_FreeToHeap(v3);
        return;
    }

    v3->unk_0C.unk_08 = ov12_022232FC(param0, v2);
    ov12_02235918(v3->unk_0C.unk_08, &v3->unk_0C.unk_04);
    v0 = ov12_02225964(param0, v2);

    if (v0 > 0) {
        v3->unk_64 *= +1;
    } else {
        v3->unk_64 *= -1;
    }

    if (ov12_0221FDD4(param0) == 1) {
        (void)0;
    }

    {
        SysTask *v4;

        v4 = ov12_022201E8(v3->unk_60, ov12_02228488, v3);
        ov12_02228488(v4, v3);
    }
}

static void ov12_0222862C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222862C *v0 = (UnkStruct_ov12_0222862C *)param1;

    switch (v0->unk_00) {
    case 0:
        if (ov12_02225EB8(&v0->unk_14) == 1) {
            ov12_02226138(&v0->unk_38);

            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, v0->unk_14.unk_00);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, v0->unk_14.unk_02);
            PokemonSprite_AddAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_38.unk_00);

            {
                s16 v1 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_14.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02 + v1);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 1:
        if ((++v0->unk_09) > v0->unk_0A) {
            ov12_02225E68(&v0->unk_14, ov12_02220280(v0->unk_0C, 0), 100, ov12_02220280(v0->unk_0C, 1), ov12_02220280(v0->unk_0C, 3));
            v0->unk_00++;
        }
        break;
    case 2:
        if (ov12_02225EB8(&v0->unk_14) == 1) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, v0->unk_14.unk_00);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, v0->unk_14.unk_02);
            {
                s16 v2 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_14.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02 + v2);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 3:
        if (ov12_02225EB8(&v0->unk_14) == 1) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, v0->unk_14.unk_00);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, v0->unk_14.unk_02);

            {
                s16 v3 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_14.unk_04[4]);

                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02 + v3);
            }
        } else {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, 0x100);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02);
            v0->unk_00++;
        }
        break;
    default:
        ov12_02220220(v0->unk_0C, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_022287CC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222862C *v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222862C));

    v0->unk_08 = 0;
    v0->unk_00 = 0;
    v0->unk_0C = param0;
    v0->unk_10 = ov12_022232FC(v0->unk_0C, ov12_02220240(v0->unk_0C));
    v0->unk_09 = 0;
    v0->unk_0A = ov12_02220280(param0, 4);
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_04 = ov12_02223354(v0->unk_0C, ov12_02220240(v0->unk_0C));

    ov12_02225E68(&v0->unk_14, 100, 100, ov12_02220280(param0, 0), ov12_02220280(param0, 2));
    ov12_02226108(&v0->unk_38, 2, 0, 0, 10);
    ov12_022201E8(v0->unk_0C, ov12_0222862C, v0);
}

static void ov12_02228868(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228868 *v0 = (UnkStruct_ov12_02228868 *)param1;

    switch (v0->unk_00) {
    case 0:
        if (ov12_02225F6C(&v0->unk_20) == 1) {
            ov12_02226138(&v0->unk_44);

            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, v0->unk_20.unk_00);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, v0->unk_20.unk_02);
            PokemonSprite_AddAttribute(v0->unk_1C, MON_SPRITE_X_CENTER, v0->unk_44.unk_00);

            {
                s16 v1 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_20.unk_04[4]);

                PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02 + v1);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 1:
        if ((++v0->unk_09) > v0->unk_0A) {
            {
                s16 v2, v3;
                s16 v4, v5;

                v2 = v0->unk_0C >> 16;
                v4 = v0->unk_0C & 0xFF;
                v3 = v0->unk_10 >> 16;
                v5 = v0->unk_10 & 0xFF;

                ov12_02225EF0(&v0->unk_20, v2, v4, v3, v5, 100, v0->unk_14);
            }

            v0->unk_00++;
        }
        break;
    case 2:
        if (ov12_02225F6C(&v0->unk_20) == 1) {
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, v0->unk_20.unk_00);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, v0->unk_20.unk_02);

            {
                s16 v6 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_20.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02 + v6);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 3:
        if (ov12_02225F6C(&v0->unk_20) == 1) {
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, v0->unk_20.unk_00);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, v0->unk_20.unk_02);

            {
                s16 v7 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_20.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02 + v7);
            }
        } else {
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, 0x100);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02);
            v0->unk_00++;
        }
        break;
    default:
        ov12_02220220(v0->unk_18, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02228A0C(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02228868 *v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_02228868));

    v0->unk_08 = 0;
    v0->unk_00 = 0;
    v0->unk_18 = param0;
    v0->unk_1C = ov12_022232FC(v0->unk_18, ov12_02220240(v0->unk_18));
    v0->unk_09 = 0;
    v0->unk_0A = ov12_02220280(param0, 6);
    v0->unk_0C = ov12_02220280(v0->unk_18, 3);
    v0->unk_10 = ov12_02220280(v0->unk_18, 4);
    v0->unk_14 = ov12_02220280(v0->unk_18, 5);

    ov12_02225898(param0, ov12_02220240(v0->unk_18), NULL, &v0->unk_02);

    v0->unk_04 = ov12_02223354(v0->unk_18, ov12_02220240(v0->unk_18));
    v0->unk_02 += v0->unk_04;

    {
        s16 v1, v2;
        s16 v3, v4;
        s16 v5;

        v1 = ov12_02220280(param0, 0) >> 16;
        v3 = ov12_02220280(param0, 0) & 0xFF;
        v2 = ov12_02220280(param0, 1) >> 16;
        v4 = ov12_02220280(param0, 1) & 0xFF;

        ov12_02225EF0(&v0->unk_20, v1, v3, v2, v4, 100, ov12_02220280(param0, 2));
    }

    ov12_02226108(&v0->unk_44, 2, 0, 0, 10);
    ov12_022201E8(v0->unk_18, ov12_02228868, v0);
}

static void ov12_02228B10(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228B10 *v0 = (UnkStruct_ov12_02228B10 *)param1;

    switch (v0->unk_04.unk_00) {
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        ov12_02222664(v0->unk_04.unk_04, 2);
        ov12_02220220(v0->unk_04.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_24);
    SpriteSystem_DrawSprites(v0->unk_04.unk_0C);
}

void ov12_02228B40(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_02228B10 *v1 = NULL;

    v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228B10));
    v0 = ov12_02220280(param0, 0);

    ov12_0223595C(param0, &v1->unk_04);
    ov12_02222590(v1->unk_04.unk_04, 2);

    v1->unk_24 = ov12_022202C0(v1->unk_04.unk_04, 0);

    ManagedSprite_SetExplicitOamMode(v1->unk_24, GX_OAM_MODE_OBJWND);
    ManagedSprite_SetAffineOverwriteMode(v1->unk_24, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(v1->unk_24, 1.2f, 1.2f);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 0);
    G2_SetWndOBJInsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2), 0);

    ov12_022201E8(v1->unk_04.unk_04, ov12_02228B10, v1);
}

static void ov12_02228BD0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228BD0 *v0 = (UnkStruct_ov12_02228BD0 *)param1;

    switch (v0->unk_20.unk_00) {
    case 0:
        ov12_02225BC8(&v0->unk_3C, v0->unk_0C.unk_04.unk_00, v0->unk_0C.unk_04.unk_00 + v0->unk_64, v0->unk_0C.unk_04.unk_02, v0->unk_0C.unk_04.unk_02 + v0->unk_66, v0->unk_08);
        v0->unk_20.unk_00++;
    case 1:
        if (ov12_02225C14(&v0->unk_3C) == 0) {
            v0->unk_20.unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C.unk_08, MON_SPRITE_X_CENTER, v0->unk_3C.unk_00);
        PokemonSprite_SetAttribute(v0->unk_0C.unk_08, MON_SPRITE_Y_CENTER, v0->unk_3C.unk_02);
        break;
    default:
        ov12_02220220(v0->unk_60, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02228C6C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_02228BD0 *v3 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228BD0));

    v3->unk_60 = param0;
    v3->unk_08 = ov12_02220280(param0, 0);
    v3->unk_64 = ov12_02220280(param0, 1);
    v3->unk_66 = ov12_02220280(param0, 2);

    v1 = ov12_02220280(param0, 3);
    ov12_0223595C(param0, &v3->unk_20);
    v2 = 0xFF;

    switch (v1) {
    case 0x2 | 0x100:
        v2 = ov12_02220240(param0);
        break;
    case 0x4 | 0x100:
        if (ov12_02223364(param0) == 1) {
            v2 = ov12_022352AC(param0, ov12_02220240(param0));
        }
        break;
    case 0x8 | 0x100:
        v2 = ov12_02220248(param0);
        break;
    case 0x10 | 0x100:
        if (ov12_02223364(param0) == 1) {
            v2 = ov12_022352AC(param0, ov12_02220248(param0));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 0xFF) {
        Heap_FreeToHeap(v3);
        return;
    }

    v3->unk_0C.unk_08 = ov12_022232FC(param0, v2);

    if (v3->unk_0C.unk_08 == NULL) {
        Heap_FreeToHeap(v3);
        return;
    }

    ov12_02235918(v3->unk_0C.unk_08, &v3->unk_0C.unk_04);
    v0 = ov12_02225964(param0, v2);

    if (v0 > 0) {
        v3->unk_64 *= +1;
        v3->unk_66 *= +1;
    } else {
        v3->unk_64 *= -1;
        v3->unk_66 *= -1;
    }

    if (ov12_0221FDD4(param0) == 1) {
        v3->unk_66 *= -1;
    }

    {
        SysTask *v4;

        v4 = ov12_022201E8(v3->unk_60, ov12_02228BD0, v3);
        ov12_02228BD0(v4, v3);
    }
}

static void ov12_02228DB8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_02228DB8 *v1 = (UnkStruct_ov12_02228DB8 *)param1;

    v0 = ov12_02225BA0(&v1->unk_30, v1->unk_1C.unk_04.unk_00, v1->unk_1C.unk_04.unk_02, v1->unk_1C.unk_08);

    if (v0 == 0) {
        PokemonSprite_SetAttribute(v1->unk_1C.unk_08, MON_SPRITE_X_CENTER, v1->unk_1C.unk_04.unk_00);
        PokemonSprite_SetAttribute(v1->unk_1C.unk_08, MON_SPRITE_Y_CENTER, v1->unk_1C.unk_04.unk_02 + ((-8 * FX32_ONE) >> FX32_SHIFT));
        ov12_02220220(v1->unk_00.unk_04, param0);
        Heap_FreeToHeap(v1);
    }
}

void ov12_02228E00(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_02228DB8 *v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228DB8));

    ov12_0223595C(param0, &v1->unk_00);
    ov12_02235998(param0, ov12_02220280(param0, 0), &(v1->unk_1C), &v0);

    v1->unk_1C.unk_04.unk_02 -= (-8 * FX32_ONE) >> FX32_SHIFT;

    ov12_022263A4(&v1->unk_30, ov12_02220280(param0, 1), ov12_02220280(param0, 2));

    {
        v1->unk_30.unk_04[2] /= 2;
        v1->unk_30.unk_04[4] /= 2;
    }

    ov12_022201E8(v1->unk_00.unk_04, ov12_02228DB8, v1);
}

static void ov12_02228E78(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228E78 *v0 = (UnkStruct_ov12_02228E78 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if (ov12_02225C14(&v0->unk_30) == 0) {
            v0->unk_00.unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_X_CENTER, v0->unk_30.unk_00);
        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Y_CENTER, v0->unk_30.unk_02);
        break;
    default:
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02228EC0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02235350 v0;
    int v1;
    int v2;
    int v3;
    int v4;
    UnkStruct_ov12_02228E78 *v5 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228E78));

    ov12_0223595C(param0, &v5->unk_00);

    v1 = ov12_02220280(param0, 0);
    v4 = ov12_02220280(param0, 1);

    switch (v1) {
    case 0x2:
        v2 = ov12_02220240(param0);
        break;
    case 0x4:
        v2 = ov12_022352AC(param0, ov12_02220240(param0));
        break;
    case 0x8:
        v2 = ov12_02220248(param0);
        break;
    case 0x10:
        v2 = ov12_022352AC(param0, ov12_02220248(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov12_022353AC(param0, v2, &v5->unk_54);
    ov12_02235998(param0, v1, &(v5->unk_1C), &v3);

    v5->unk_58.unk_00 = 0;
    v5->unk_58.unk_02 = 0;

    if (ov12_0223525C(v5->unk_00.unk_04, v2) == 0x3) {
        v5->unk_58.unk_00 = (0 - 80);
    } else {
        v5->unk_58.unk_00 = (256 + 80);
    }

    ov12_02225BC8(&v5->unk_30, v5->unk_1C.unk_04.unk_00, v5->unk_58.unk_00, v5->unk_1C.unk_04.unk_02, v5->unk_1C.unk_04.unk_02, v4);
    ov12_022201E8(v5->unk_00.unk_04, ov12_02228E78, v5);
}

void ov12_02228FB4(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02235350 v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    UnkStruct_ov12_02228E78 *v6 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02228E78));

    ov12_0223595C(param0, &v6->unk_00);

    v1 = ov12_02220280(param0, 0);
    v5 = ov12_02220280(param0, 1);
    v4 = ov12_02220280(param0, 2);

    switch (v5) {
    case 0x2:
        v2 = ov12_02220240(param0);
        break;
    case 0x4:
        v2 = ov12_022352AC(param0, ov12_02220240(param0));
        break;
    case 0x8:
        v2 = ov12_02220248(param0);
        break;
    case 0x10:
        v2 = ov12_022352AC(param0, ov12_02220248(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov12_022353AC(param0, v2, &v6->unk_54);
    ov12_02235998(param0, v5, &(v6->unk_1C), &v3);

    v6->unk_58.unk_00 = 0;
    v6->unk_58.unk_02 = 0;

    if (ov12_0223525C(v6->unk_00.unk_04, v2) == 0x3) {
        v6->unk_58.unk_00 = (0 - 80);
    } else {
        v6->unk_58.unk_00 = (256 + 80);
    }

    if (v1 == 0) {
        ov12_02225BC8(&v6->unk_30, v6->unk_1C.unk_04.unk_00, v6->unk_58.unk_00, v6->unk_1C.unk_04.unk_02, v6->unk_1C.unk_04.unk_02, v4);
    } else {
        s16 v7;

        v7 = ov12_022258E0(param0, v2, 0);
        ov12_02225BC8(&v6->unk_30, v6->unk_58.unk_00, v7, v6->unk_1C.unk_04.unk_02, v6->unk_1C.unk_04.unk_02, v4);
    }

    ov12_022201E8(v6->unk_00.unk_04, ov12_02228E78, v6);
}

void ov12_022290DC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_02235350 v3;
    UnkStruct_ov12_02235998 v4;

    v0 = ov12_02220280(param0, 0);

    switch (v0) {
    case 0x2:
        v1 = ov12_02220240(param0);
        break;
    case 0x4:
        v1 = ov12_022352AC(param0, ov12_02220240(param0));
        break;
    case 0x8:
        v1 = ov12_02220248(param0);
        break;
    case 0x10:
        v1 = ov12_022352AC(param0, ov12_02220248(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov12_022353AC(param0, v1, &v3);
    ov12_02235998(param0, v0, &v4, &v2);

    {
        s16 v5 = ov12_02223354(param0, v1);

        PokemonSprite_SetAttribute(v4.unk_08, MON_SPRITE_X_CENTER, v3.unk_00);
        PokemonSprite_SetAttribute(v4.unk_08, MON_SPRITE_Y_CENTER, v3.unk_02 + v5);
    }
}

static void ov12_02229184(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229184 *v0 = (UnkStruct_ov12_02229184 *)param1;

    if (ov12_02226848(v0->unk_30) == 0) {
        ov12_02226858(v0->unk_30);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
    }
}

void ov12_022291AC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_02229184 *v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229184));

    ov12_0223595C(param0, &v1->unk_00);

    {
        int v2;
        int v3 = ov12_02220280(param0, 0);
        int v4 = ov12_02220280(param0, 1);
        int v5 = ov12_02220280(param0, 2);
        int v6 = ov12_02220280(param0, 3);
        int v7 = ov12_02220280(param0, 4);
        int v8 = ov12_02220280(param0, 5);

        ov12_02235D74(param0, v3, &(v1->unk_1C), &v0);

        v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v1->unk_1C.unk_0C->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        v1->unk_30 = ov12_02226870(v1->unk_00.unk_18, ov12_0221FDE4(param0), 2, v2 * 16, 16, v4, v5, v6, v7, v8, 1100);
    }

    ov12_022201E8(v1->unk_00.unk_04, ov12_02229184, v1);
}

static void ov12_02229278(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229278 *v0 = (UnkStruct_ov12_02229278 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0: {
        if ((++v0->unk_4C) < v0->unk_44) {
            return;
        }

        v0->unk_4C = 0;

        if (v0->unk_48 == 0) {
            if (v0->unk_54 < 0) {
                v0->unk_54 = 0;
            }

            if (v0->unk_54 == 0) {
                v0->unk_00.unk_00++;
            }
        } else {
            if (v0->unk_54 > 80) {
                v0->unk_54 = 80;
            }

            if (v0->unk_54 == 80) {
                v0->unk_00.unk_00++;
            }
        }

        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_DRAW_HEIGHT, v0->unk_54);
        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Y_CENTER, v0->unk_50);

        v0->unk_50 -= v0->unk_42;
        v0->unk_54 += v0->unk_42;
    } break;
    default:
        ov12_02226B84(v0->unk_1C.unk_08);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02229304(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02229278 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229278));

    ov12_0223595C(param0, &v0->unk_00);

    {
        int v1 = ov12_02220280(param0, 0);
        int v2;
        int v3;

        ov12_02235998(param0, v1, &(v0->unk_1C), &v2);

        switch (v1) {
        case 0x2:
            v3 = ov12_02220240(param0);
            break;
        case 0x4:
            v3 = ov12_022352AC(param0, ov12_02220240(param0));
            break;
        case 0x8:
            v3 = ov12_02220248(param0);
            break;
        case 0x10:
            v3 = ov12_022352AC(param0, ov12_02220248(param0));
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        v0->unk_48 = ov12_02220280(param0, 1);

        if (v0->unk_48 == 0) {
            v0->unk_50 = PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Y_CENTER);
            v0->unk_54 = 80 - PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_DRAW_HEIGHT);
            v0->unk_40 = ov12_02220280(param0, 2);
            v0->unk_42 = ov12_02220280(param0, 3);
            v0->unk_42 *= -1;
        } else {
            v0->unk_50 = PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Y_CENTER);
            v0->unk_54 = PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_DRAW_HEIGHT);
            v0->unk_40 = ov12_02220280(param0, 2);
            v0->unk_42 = ov12_02220280(param0, 3);
        }

        v0->unk_30 = 0;
        v0->unk_34 = 0;
        v0->unk_38 = 80;
        v0->unk_3C = 80 - ov12_02223354(param0, v3);
        v0->unk_44 = ov12_02220280(param0, 4);
        v0->unk_4C = 0;

        PokemonSprite_SetPartialDraw(v0->unk_1C.unk_08, v0->unk_30, v0->unk_34, v0->unk_38, v0->unk_3C);
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_02229278, v0);
}

static int ov12_02229454(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 0x2:
        v0 = ov12_02220240(param0);
        break;
    case 0x4:
        v0 = ov12_022352AC(param0, ov12_02220240(param0));
        break;
    case 0x8:
        v0 = ov12_02220248(param0);
        break;
    case 0x10:
        v0 = ov12_022352AC(param0, ov12_02220248(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

static void ov12_022294AC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022294AC *v0 = (UnkStruct_ov12_022294AC *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if ((++v0->unk_24) < v0->unk_20) {
            break;
        }

        v0->unk_24 = 0;
        v0->unk_44 += v0->unk_1C;
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_Y_CENTER, v0->unk_44);
        v0->unk_3C -= v0->unk_1C;

        if (v0->unk_3C > v0->unk_40) {
            v0->unk_3C = v0->unk_40;
            v0->unk_00.unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_DRAW_HEIGHT, v0->unk_3C);
        break;
    case 1:
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_PARTIAL_DRAW, 0);
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_Y_CENTER, v0->unk_48);
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_DRAW_HEIGHT, v0->unk_40);
        ov12_02226B84(v0->unk_28.unk_08);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

static void ov12_02229538(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022294AC *v0 = (UnkStruct_ov12_022294AC *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if ((++v0->unk_24) < v0->unk_20) {
            break;
        }

        v0->unk_24 = 0;
        v0->unk_44 += v0->unk_1C;
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_Y_CENTER, v0->unk_44);
        v0->unk_3C -= v0->unk_1C;

        if (v0->unk_3C < 0) {
            v0->unk_3C = 0;
            v0->unk_00.unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_DRAW_HEIGHT, v0->unk_3C);
        break;
    case 1:
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_PARTIAL_DRAW, 0);
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_Y_CENTER, v0->unk_48);
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_DRAW_HEIGHT, v0->unk_40);
        ov12_02226B84(v0->unk_28.unk_08);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

static void ov12_022295C4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022294AC *v0 = (UnkStruct_ov12_022294AC *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if ((++v0->unk_24) < v0->unk_20) {
            break;
        }

        v0->unk_24 = 0;
        v0->unk_3C -= v0->unk_1C;
        v0->unk_40 += v0->unk_1C;

        if (v0->unk_3C < 0) {
            v0->unk_3C = 0;
            v0->unk_00.unk_00++;
        }

        PokemonSprite_SetPartialDraw(v0->unk_28.unk_08, 0, v0->unk_3C, 80, v0->unk_40);
        break;
    case 1:
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_PARTIAL_DRAW, 0);
        ov12_02226B84(v0->unk_28.unk_08);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02229638(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_022294AC *v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022294AC));

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_1C = ov12_02220280(param0, 3);
    v0->unk_20 = ov12_02220280(param0, 4);

    {
        int v2 = ov12_02220280(param0, 0);
        int v3;

        ov12_02235998(param0, v2, &(v0->unk_28), &v3);
        v1 = ov12_02229454(param0, v2);
    }

    if (ov12_02220280(param0, 5) != 0) {
        v0->unk_3C = ov12_02223354(param0, v1);
        v0->unk_3C = 80 - v0->unk_3C;
        v0->unk_40 = 0;

        PokemonSprite_SetPartialDraw(v0->unk_28.unk_08, 0, v0->unk_3C, 80, v0->unk_40);
        ov12_022201E8(v0->unk_00.unk_04, ov12_022295C4, v0);

        return;
    }

    v0->unk_44 = PokemonSprite_GetAttribute(v0->unk_28.unk_08, MON_SPRITE_Y_CENTER);
    v0->unk_48 = v0->unk_44;
    v0->unk_3C = ov12_02223354(param0, v1);
    v0->unk_3C = 80 - v0->unk_3C;
    v0->unk_40 = v0->unk_3C;

    if (v0->unk_1C > 0) {
        PokemonSprite_SetPartialDraw(v0->unk_28.unk_08, 0, 0, 80, v0->unk_3C);
        ov12_022201E8(v0->unk_00.unk_04, ov12_02229538, v0);
    } else {
        v0->unk_3C = 0;
        v0->unk_44 += v0->unk_40;
        PokemonSprite_SetAttribute(v0->unk_28.unk_08, MON_SPRITE_Y_CENTER, v0->unk_44);
        PokemonSprite_SetPartialDraw(v0->unk_28.unk_08, 0, 0, 80, v0->unk_3C);
        ov12_022201E8(v0->unk_00.unk_04, ov12_022294AC, v0);
    }
}

static void ov12_02229738(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_02229738 *v1 = (UnkStruct_ov12_02229738 *)param1;

    switch (v1->unk_00) {
    case 0:
        ov12_02226108(&v1->unk_D4, v1->unk_04, v1->unk_08, v1->unk_0C, v1->unk_10);
        v1->unk_00++;
    case 1: {
        if (ov12_02226138(&v1->unk_D4) == 0) {
            if (v1->unk_01 >= v1->unk_18) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }

            if (v1->unk_20 != 0) {
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 0, 0);
            }

            if (v1->unk_24 != 0) {
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 3, 0);
            }

            v1->unk_01++;
        } else {
            if (v1->unk_D4.unk_00 != 0) {
                v1->unk_20 = 1;
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 0, v1->unk_D4.unk_00);
            }

            if (v1->unk_D4.unk_02 != 0) {
                v1->unk_24 = 1;
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 3, v1->unk_D4.unk_02);
            }
        }
    } break;
    default:
        ov12_02220220(v1->unk_2C, param0);
        Heap_FreeToHeap(v1);
        break;
    }
}

void ov12_02229810(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_02229738 *v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229738));

    v1->unk_00 = 0;
    v1->unk_01 = 0;
    v1->unk_2C = param0;
    v1->unk_30 = ov12_022202EC(v1->unk_2C);
    v1->unk_28 = ov12_02220278(v1->unk_2C);
    v1->unk_04 = ov12_02220280(param0, 0);
    v1->unk_08 = ov12_02220280(param0, 1);
    v1->unk_0C = ov12_02220280(param0, 2);
    v1->unk_10 = ov12_02220280(param0, 3);
    v1->unk_18 = ov12_02220280(param0, 4);

    if (ov12_02220280(param0, 5) == 0) {
        v1->unk_1C = 3;
    } else {
        v1->unk_1C = 2;
    }

    ov12_022201E8(v1->unk_2C, ov12_02229738, v1);
}

static void ov12_0222988C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222988C *v0 = param1;

    if ((v0->unk_24 == v0->unk_2C) || (v0->unk_28 == v0->unk_2C)) {
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    if (v0->unk_20 < 0) {
        if (v0->unk_24 + v0->unk_20 > 0) {
            v0->unk_24 += v0->unk_20;
            v0->unk_28 += v0->unk_20;
        } else {
            v0->unk_24 = v0->unk_2C;
            v0->unk_28 = v0->unk_2C;
        }
    } else {
        if (v0->unk_24 + v0->unk_20 < 15) {
            v0->unk_24 += v0->unk_20;
            v0->unk_28 += v0->unk_20;
        } else {
            v0->unk_24 = v0->unk_2C;
            v0->unk_28 = v0->unk_2C;
        }
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    G2_SetOBJMosaicSize(v0->unk_24, v0->unk_28);
    SpriteSystem_DrawSprites(v0->unk_00.unk_0C);
}

void ov12_02229908(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222988C *v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222988C));

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_20 = ov12_02220280(v0->unk_00.unk_04, 1);
    v0->unk_24 = ov12_02220280(v0->unk_00.unk_04, 2);
    v0->unk_28 = ov12_02220280(v0->unk_00.unk_04, 3);
    v0->unk_1C = ov12_022202C0(v0->unk_00.unk_04, ov12_02220280(v0->unk_00.unk_04, 0));

    ManagedSprite_SetDrawFlag(v0->unk_1C, 1);

    if (v0->unk_20 < 0) {
        v0->unk_2C = 0;
    } else {
        v0->unk_2C = 15;
    }

    ManagedSprite_SetMosaicFlag(v0->unk_1C, 1);

    {
        SysTask *v2;

        v2 = ov12_022201E8(v0->unk_00.unk_04, ov12_0222988C, v0);
        ov12_0222988C(v2, v0);
    }
}

static void ov12_02229980(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov12_02229980 *param1)
{
    param1->unk_00 = ov12_02220280(param0, 0);
    param1->unk_0C.unk_00 = ov12_02220280(param0, 1);
    param1->unk_0C.unk_02 = ov12_02220280(param0, 2);
    param1->unk_04 = ov12_02220280(param0, 3);
    param1->unk_06 = ov12_02220280(param0, 4);
    param1->unk_08 = ov12_02220280(param0, 5);
    param1->unk_10 = ov12_02220280(param0, 6);
    param1->unk_30 = ov12_02220280(param0, 8);

    {
        int v0 = ov12_02220280(param0, 7);

        param1->unk_1C = 0;
        param1->unk_20 = (v0 & 0xFFFF0000) >> 16;
        param1->unk_24 = (v0 & 0xFFFF);

        if (param1->unk_20 == 0) {
            param1->unk_20 = 0;
        }

        if (param1->unk_24 == 0) {
            param1->unk_24 = 0xFF;
        }
    }

    param1->unk_38 = ov12_0222026C(param0, param1->unk_00);
    param1->unk_34 = ov12_02220250(param0);

    if (param1->unk_10 == 0) {
        param1->unk_14 = ov12_02220240(param0);
        param1->unk_18 = ov12_02220248(param0);
    } else if (param1->unk_10 == 1) {
        param1->unk_14 = ov12_02220248(param0);
        param1->unk_18 = ov12_02220240(param0);
    } else {
        GF_ASSERT("FALSE");
    }

    if (param1->unk_38 == NULL) {
        GF_ASSERT(0);
    }
}

static BOOL ov12_02229A50(SPLEmitter *param0)
{
    BOOL v0 = 0;

    {
        SPLParticle *v1;
        int v2;
        int v3;

        v1 = param0->particles.first;

        while (v1 != NULL) {
            v2 = v1->age;
            v3 = v1->lifeTime;
            v1 = v1->next;
        }

        if (v2 != v3) {
            v0 = 1;
        }
    }

    return v0;
}

static void ov12_02229A6C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229980 *v0 = param1;
    BOOL v1 = ov12_02229A50(v0->unk_38);

    if (v0->unk_28 < v0->unk_04) {
        v0->unk_28++;
        return;
    }

    if ((ov12_02225C14(&v0->unk_A8[0]) == 0) && (v1 == 0)) {
        sub_02014724(v0->unk_34, v0->unk_38);
        ov12_02220220(v0->unk_3C.unk_04, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    } else {
        if (((v0->unk_20 > v0->unk_1C) || (v0->unk_24 < v0->unk_1C)) && (v0->unk_24 != 255)) {
            return;
        }

        SPLEmitter_SetPosX(v0->unk_38, v0->unk_A8[0].unk_00 * 172);
        SPLEmitter_SetPosY(v0->unk_38, v0->unk_A8[0].unk_02 * 172);

        if (v0->unk_30) {
            v0->unk_2C += (360 / (v0->unk_06));
            SPLEmitter_SetPosY(v0->unk_38, (v0->unk_A8[0].unk_02 * 172) + CalcSineDegrees_Wraparound(v0->unk_2C));
        }
    }
}

void ov12_02229B28(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;
    UnkStruct_ov12_02229980 *v3 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229980));

    ov12_0223595C(param0, &v3->unk_3C);
    ov12_02229980(param0, v3);

    v0 = ov12_02225964(param0, ov12_02220240(param0));

    ov12_02235508(param0, v3->unk_14, &v1);
    ov12_02235508(param0, v3->unk_18, &v2);
    ov12_02225BC8(&v3->unk_A8[0], (v1.x / 172), (v2.x / 172) + (v3->unk_0C.unk_00 * v0), (v1.y / 172), (v2.y / 172) + (v3->unk_0C.unk_02 * v0), v3->unk_06);

    if (v0 > 0) {
        ov12_02225D50(&v3->unk_F0, ((20 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    } else {
        ov12_02225D50(&v3->unk_F0, ((90 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    }

    {
        int v4;

        for (v4 = 0; v4 < v3->unk_20; v4++) {
            ov12_02225C14(&v3->unk_A8[0]);
        }

        if (v3->unk_24 != 0xFF) {
            v3->unk_1C = v3->unk_24 + 1;
        }

        SPLEmitter_SetPosX(v3->unk_38, v3->unk_A8[0].unk_00 * 172);
        SPLEmitter_SetPosY(v3->unk_38, v3->unk_A8[0].unk_02 * 172);
    }

    ov12_022201E8(v3->unk_3C.unk_04, ov12_02229A6C, v3);
}

void ov12_02229C5C(UnkStruct_ov12_0221FCDC *param0)
{
    VecFx32 v0;
    VecFx32 v1;
    int v2;
    UnkStruct_ov12_02229980 *v3 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229980));
    ov12_0223595C(param0, &v3->unk_3C);

    v3->unk_00 = ov12_02220280(param0, 0);
    v3->unk_10 = ov12_02220280(param0, 1);

    v2 = ov12_02220280(param0, 2);

    v3->unk_06 = ov12_02220280(param0, 3);
    v3->unk_04 = ov12_02220280(param0, 4);
    v3->unk_28 = 0;

    {
        int v4 = ov12_02220280(param0, 5);

        v3->unk_1C = 0;
        v3->unk_20 = (v4 & 0xFFFF0000) >> 16;
        v3->unk_24 = (v4 & 0xFFFF);

        if (v3->unk_20 == 0) {
            v3->unk_20 = 0;
        }

        if (v3->unk_24 == 0) {
            v3->unk_24 = 0xFF;
        }
    }

    v3->unk_38 = ov12_0222026C(param0, v3->unk_00);
    v3->unk_34 = ov12_02220250(param0);

    if (v3->unk_10 == 0) {
        v3->unk_14 = ov12_02220240(param0);
        v3->unk_18 = ov12_02220240(param0);
    } else {
        v3->unk_14 = ov12_02220248(param0);
        v3->unk_18 = ov12_02220248(param0);
    }

    if (v3->unk_38 == NULL) {
        GF_ASSERT(0);
    }

    ov12_02235508(param0, v3->unk_14, &v0);
    ov12_02235508(param0, v3->unk_18, &v1);

    if (v2 == 0) {
        ov12_02235748(&v0);
        v0.x = v1.x;
    } else {
        ov12_02235748(&v1);
        v1.x = v0.x;
    }

    ov12_02225BC8(&v3->unk_A8[0], (v0.x / 172), (v1.x / 172), (v0.y / 172), (v1.y / 172), v3->unk_06);

    {
        int v5;

        for (v5 = 0; v5 < v3->unk_20; v5++) {
            ov12_02225C14(&v3->unk_A8[0]);
        }

        if (v3->unk_24 != 0xFF) {
            v3->unk_1C = v3->unk_24 + 1;
        }

        SPLEmitter_SetPosX(v3->unk_38, v3->unk_A8[0].unk_00 * 172);
        SPLEmitter_SetPosY(v3->unk_38, (v3->unk_A8[0].unk_02 * 172));
    }

    ov12_022201E8(v3->unk_3C.unk_04, ov12_02229A6C, v3);
}

static void ov12_02229DF0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229980 *v0 = param1;
    BOOL v1 = ov12_02229A50(v0->unk_38);

    if ((ov12_02225CE4(&v0->unk_A8[0], &v0->unk_A8[1]) == 0) && (v1 == 0)) {
        sub_02014724(v0->unk_34, v0->unk_38);
        ov12_02220220(v0->unk_3C.unk_04, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    } else {
        SPLEmitter_SetPosX(v0->unk_38, v0->unk_A8[0].unk_00 * 172);
        SPLEmitter_SetPosY(v0->unk_38, v0->unk_A8[0].unk_02 * 172);
    }
}

void ov12_02229E54(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;
    UnkStruct_ov12_02229980 *v3 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229980));

    ov12_0223595C(param0, &v3->unk_3C);
    ov12_02229980(param0, v3);

    v0 = ov12_02225964(param0, ov12_02220240(param0));

    ov12_02235508(param0, v3->unk_14, &v1);
    ov12_02235508(param0, v3->unk_18, &v2);
    ov12_02225C98(&v3->unk_A8[0], &v3->unk_A8[1], (v1.x / 172), (v2.x / 172) + (v3->unk_0C.unk_00 * v0), (v1.y / 172), (v2.y / 172) + (v3->unk_0C.unk_02 * v0), v3->unk_06, (v3->unk_08 * -FX32_ONE));

    if (v0 > 0) {
        ov12_02225D50(&v3->unk_F0, ((20 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    } else {
        ov12_02225D50(&v3->unk_F0, ((90 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    }

    {
        int v4;

        for (v4 = 0; v4 < v3->unk_20; v4++) {
            ov12_02225CE4(&v3->unk_A8[0], &v3->unk_A8[1]);
        }

        if (v3->unk_24 != 0xFF) {
            v3->unk_1C = v3->unk_24 + 1;
        }

        SPLEmitter_SetPosX(v3->unk_38, v3->unk_A8[0].unk_00 * 172);
        SPLEmitter_SetPosY(v3->unk_38, v3->unk_A8[0].unk_02 * 172);
    }

    ov12_022201E8(v3->unk_3C.unk_04, ov12_02229DF0, v3);
}

static void ov12_02229F9C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229F9C *v0 = param1;
    BOOL v1 = ov12_02229A50(v0->unk_38);

    if ((ov12_02225AE0(&v0->unk_58) == 0) && (v1 == 0)) {
        sub_02014724(v0->unk_34, v0->unk_38);
        ov12_02220220(v0->unk_3C.unk_04, param0);
        Heap_FreeToHeap(v0);
    } else {
        VecFx32 v2;

        v2.x = v0->unk_88.x + (v0->unk_58.unk_00 * 172);
        v2.y = v0->unk_88.y + (v0->unk_58.unk_02 * 172);

        SPLEmitter_SetPosX(v0->unk_38, v2.x);
        SPLEmitter_SetPosY(v0->unk_38, v2.y);
    }
}

void ov12_0222A00C(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02229F9C *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02229F9C));

    ov12_0223595C(param0, &v0->unk_3C);

    v0->unk_00 = ov12_02220280(param0, 0);
    v0->unk_04 = ov12_02220280(param0, 1);
    v0->unk_0C = ov12_02220280(param0, 2);
    v0->unk_08 = ov12_02220280(param0, 3);
    v0->unk_10 = ov12_02220280(param0, 4);
    v0->unk_14 = ov12_02220280(param0, 5);
    v0->unk_18 = ov12_02220280(param0, 6);
    v0->unk_1C = ov12_02220280(param0, 7);
    v0->unk_20 = ov12_02220280(param0, 8);

    if (v0->unk_20 == 0) {
        v0->unk_24 = ov12_02220240(param0);
    } else {
        v0->unk_24 = ov12_02220248(param0);
    }

    ov12_02235508(param0, v0->unk_24, &v0->unk_88);

    v0->unk_38 = ov12_0222026C(param0, v0->unk_00);
    v0->unk_34 = ov12_02220260(param0, ov12_02220280(param0, 9));

    ov12_02225A5C(&v0->unk_58, ((v0->unk_04 * 0xffff) / 360), ((v0->unk_0C * 0xffff) / 360), ((v0->unk_08 * 0xffff) / 360), ((v0->unk_10 * 0xffff) / 360), v0->unk_14 * FX32_ONE, v0->unk_18 * FX32_ONE, v0->unk_1C);

    {
        VecFx32 v1;

        ov12_02225AE0(&v0->unk_58);

        v1.x = v0->unk_88.x + (v0->unk_58.unk_00 * 172);
        v1.y = v0->unk_88.y + (v0->unk_58.unk_02 * 172);

        SPLEmitter_SetPosX(v0->unk_38, v1.x);
        SPLEmitter_SetPosY(v0->unk_38, v1.y);
    }

    ov12_022201E8(v0->unk_3C.unk_04, ov12_02229F9C, v0);
}

static void ov12_0222A178(SysTask *param0, void *param1)
{
    BOOL v0;
    UnkStruct_ov12_0222A178 *v1 = (UnkStruct_ov12_0222A178 *)param1;

    v0 = 1;
    v0 = ManagedSprite_IsAnimated(v1->unk_1C);

    if (v0 == 0) {
        Sprite_DeleteAndFreeResources(v1->unk_1C);
        ov12_02220220(v1->unk_00.unk_04, param0);
        Heap_FreeToHeap(v1);
        return;
    }

    ManagedSprite_TickFrame(v1->unk_1C);
    SpriteSystem_DrawSprites(v1->unk_00.unk_10);
}

void ov12_0222A1AC(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A178 *v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222A178));
    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_1C = param3;

    {
        s16 v1;
        s16 v2;

        v1 = ov12_02220280(param0, 0);
        v2 = ov12_02220280(param0, 1);

        ManagedSprite_OffsetPositionXY(param3, v1, v2);
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222A178, v0);
}

static const s16 Unk_ov12_0223A03C[] = {
    0x5,
    0x5,
    0x5,
    0x5,
    0x4,
    0x4,
    0x4,
    0x3,
    0x3,
    0x3,
    0x0,
    -3,
    -3,
    -3,
    -4,
    -4,
    -4,
    -5,
    -5,
    -5,
    -5,
    -5,
    -5,
    -5,
    -5,
    -4,
    -4,
    -4,
    -3,
    -3,
    -3,
    0x0,
    0x3,
    0x3,
    0x3,
    0x4,
    0x4,
    0x4,
    0x5,
    0x5,
    0x5,
    0x5,
    0xFF
};

static void ov12_0222A1F4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A1F478 *v0 = param1;

    switch (v0->unk_00.unk_00) {
    case 0: {
        s16 v1 = Unk_ov12_0223A03C[v0->unk_34];

        v0->unk_34++;

        if (v1 != 0xFF) {
            int v2;
            int v3;

            if (v1 == 0) {
                v2 = ManagedSprite_GetExplicitPriority(v0->unk_1C);

                if (v2 == ov12_0222339C(v0->unk_00.unk_04)) {
                    v3 = ov12_02223428(v0->unk_00.unk_04, 2);
                    ManagedSprite_SetExplicitPriority(v0->unk_1C, v3);
                } else {
                    v3 = ov12_0222339C(v0->unk_00.unk_04);
                    ManagedSprite_SetExplicitPriority(v0->unk_1C, v3);
                }
            }

            ManagedSprite_OffsetPositionXY(v0->unk_1C, v1, 0);
        } else {
            ManagedSprite_SetAffineOverwriteMode(v0->unk_1C, AFFINE_OVERWRITE_MODE_DOUBLE);
            ov12_02225D50(&v0->unk_20, 0, +((20 * 0xffff) / 360), 4);
            ManagedSprite_SetAffineTranslation(v0->unk_1C, -8, 16);
            v0->unk_34 = 0;
            v0->unk_00.unk_00++;
        }
    } break;
    case 1: {
        if (ov12_02225DA0(&v0->unk_20) == 1) {
            ManagedSprite_SetAffineZRotation(v0->unk_1C, v0->unk_20.unk_00);
        } else {
            if (v0->unk_34 > 5) {
                v0->unk_00.unk_00++;
            } else {
                v0->unk_34++;

                switch (v0->unk_34) {
                case 1:
                    ov12_02225D50(&v0->unk_20, +((20 * 0xffff) / 360), -((20 * 0xffff) / 360), 4);
                    break;
                case 2:
                    ov12_02225D50(&v0->unk_20, -((20 * 0xffff) / 360), +((20 * 0xffff) / 360), 4);
                    break;
                case 3:
                    ov12_02225D50(&v0->unk_20, +((20 * 0xffff) / 360), -((20 * 0xffff) / 360), 4);
                    break;
                case 4:
                    ov12_02225D50(&v0->unk_20, -((20 * 0xffff) / 360), +((20 * 0xffff) / 360), 4);
                    break;
                case 5:
                    ov12_02225D50(&v0->unk_20, +((20 * 0xffff) / 360), 0, 4 / 2);
                    break;
                }
            }
        }
    } break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.unk_10);
}

void ov12_0222A34C(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A1F478 *v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222A1F478));

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_1C = param3;
    v0->unk_34 = 0;

    {
        int v1 = ov12_02220248(param0);
        s16 v2 = ov12_022258E0(param0, v1, 0);
        s16 v3 = ov12_022258E0(param0, v1, 1);

        ManagedSprite_SetPositionXY(v0->unk_1C, v2, v3);
    }

    if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4) {
        ManagedSprite_SetAnim(v0->unk_1C, 1);
    } else {
        ManagedSprite_SetAnim(v0->unk_1C, 0);
    }

    ManagedSprite_SetExplicitPriority(v0->unk_1C, ov12_0222339C(v0->unk_00.unk_04));
    ManagedSprite_OffsetPositionXY(v0->unk_1C, 0, +12);

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222A1F4, v0);
}

static void ov12_0222A3DC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A3DC *v0 = param1;
    BOOL v1 = ManagedSprite_IsAnimated(v0->unk_1C);

    if (v1 == 0) {
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.unk_10);
}

void ov12_0222A410(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A3DC *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222A1F478));
    ov12_0223595C(param0, &v0->unk_00);
    v0->unk_1C = param3;

    {
        int v1 = 0;
        int v2 = ov12_02220248(param0);
        s16 v3 = ov12_022258E0(param0, v2, 0);
        s16 v4 = ov12_022258E0(param0, v2, 1);

        if (ov12_0221FDD4(param0) == 1) {
            v3 = 72;
            v4 = 32;
            v1 = 0;
        } else {
            if (ov12_0223525C(v0->unk_00.unk_04, v2) == 0x3) {
                v4 = 190 - 32 - 32;
                v1 = 1;
            } else {
                v4 = 0 + 32;
                v1 = 0;
            }
        }

        ManagedSprite_SetPositionXY(v0->unk_1C, v3, v4);
        ManagedSprite_SetAnim(v0->unk_1C, v1);
    }

    ManagedSprite_SetExplicitPriority(v0->unk_1C, ov12_02223428(v0->unk_00.unk_04, 2));
    ov12_022201E8(v0->unk_00.unk_04, ov12_0222A3DC, v0);
}

static void ov12_0222A4A0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A4A0 *v0 = param1;
    BOOL v1;

    switch (v0->unk_00.unk_00) {
    case 0:
        ov12_02225C98(&v0->unk_24[0], &v0->unk_24[1], -30, 128 - 16, 160, 80 + 32, 21, 64 * FX32_ONE);
        v0->unk_00.unk_00++;
        break;
    case 1:
        if (ov12_02225D2C(&v0->unk_24[0], &v0->unk_24[1], v0->unk_1C) == 0) {
            v0->unk_00.unk_00++;
        }
        break;
    case 2: {
        BOOL v2 = ManagedSprite_IsAnimated(v0->unk_1C);

        if (v2 == 0) {
            ManagedSprite_SetExplicitOamMode(v0->unk_1C, GX_OAM_MODE_XLU);
            v0->unk_20 = 16;
            v0->unk_21 = 0;
            ov12_02235780(v0->unk_00.unk_04, v0->unk_20, v0->unk_21);
            v0->unk_00.unk_00++;
        }
    } break;
    case 3:
        if (v0->unk_20 > 0) {
            v0->unk_20--;
        }

        if (v0->unk_21 < 16) {
            v0->unk_21++;
        }

        G2_ChangeBlendAlpha(v0->unk_20, v0->unk_21);

        if (v0->unk_20 == 0) {
            v0->unk_00.unk_00++;
        }
        break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.unk_10);
}

void ov12_0222A5C0(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A4A0 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222A4A0));
    ov12_0223595C(param0, &v0->unk_00);
    v0->unk_1C = param3;

    ManagedSprite_SetPositionXY(v0->unk_1C, -30, 160);
    ManagedSprite_SetExplicitPriority(v0->unk_1C, ov12_02223428(v0->unk_00.unk_04, 2));

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222A4A0, v0);
}

void ov12_0222A604(UnkStruct_ov12_0221FCDC *param0)
{
    int v0 = ov12_02220280(param0, 0);

    if (v0 != 0) {
        ov12_02226924(param0);
    } else {
        ov12_02226954(param0);
    }
}

static void ov12_0222A624(UnkStruct_ov12_0222A624 *param0)
{
    switch (param0->unk_00.unk_00) {
    case 0:
        if (param0->unk_34 == 0) {
            GX_SetVisibleWnd(GX_WNDMASK_W0);
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(0, 160, 128, 192);
            param0->unk_3C = 35 + (LCRNG_Next() % 5);
        } else {
            GX_SetVisibleWnd(GX_WNDMASK_W0);
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(128, 96 - 10, 256, 192);
            param0->unk_3C = 35 + (LCRNG_Next() % 5);
        }
        break;
    case 5:
    case 6:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 0) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
            }
        }
        break;
    case 7:
        if (param0->unk_38 != 1) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
        }
        break;
    case 10:
    case 11:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 1) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
            }
        }
        break;
    case 12:
        if (param0->unk_38 != 2) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
        }
        break;
    case 15:
    case 16:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 2) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
            }
        }
        break;
    case 17:
        if (param0->unk_38 != 3) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
        }
        break;
    case 22:
    case 23:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 3) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +8);
            }
        }
        break;
    case 24:
        if (param0->unk_38 != 4) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +8);
        }
        break;
    default:
        if (param0->unk_00.unk_00 > param0->unk_3C) {
            if (param0->unk_38 < 20) {
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);

                {
                    s16 v0, v1;

                    ManagedSprite_GetPositionXY(param0->unk_1C, &v0, &v1);

                    if (v1 > 130) {
                        ManagedSprite_SetDrawFlag(param0->unk_1C, 0);
                    }
                }

                param0->unk_38++;
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_1C, 0);
            }
        }

        break;
    }
}

static void ov12_0222A878(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A624 *v0 = param1;

    if (v0->unk_30 != 0) {
        ov12_0222A624(v0);
    }

    v0->unk_00.unk_00++;

    if (v0->unk_00.unk_00 >= v0->unk_24) {
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWnd0Position(0, 0, 0, 0);

        ManagedSprite_SetDrawFlag(v0->unk_1C, 0);
        SpriteSystem_DrawSprites(v0->unk_00.unk_0C);

        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.unk_0C);
}

void ov12_0222A8F4(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222A624 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222A624));
    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_20 = ov12_02220280(param0, 0);
    v0->unk_24 = ov12_02220280(param0, 1);
    v0->unk_28 = ov12_02220280(param0, 2);
    v0->unk_2C = ov12_02220280(param0, 3);
    v0->unk_30 = ov12_02220280(param0, 5);
    v0->unk_34 = ov12_02220280(param0, 6);
    v0->unk_1C = ov12_022202C0(v0->unk_00.unk_04, v0->unk_20);
    v0->unk_38 = 0;

    {
        int v1;

        if (v0->unk_28 != 0xFF) {
            v1 = ov12_02223428(param0, v0->unk_28);
            ManagedSprite_SetExplicitPriority(v0->unk_1C, v1);
        }

        if (v0->unk_2C != 0xFF) {
            ManagedSprite_SetPriority(v0->unk_1C, v0->unk_2C);
        }
    }

    if (ov12_02223364(param0) != 1) {
        if ((ov12_02220280(param0, 4) == 2) || (ov12_02220280(param0, 4) == 3)) {
            ManagedSprite_SetDrawFlag(v0->unk_1C, 0);
            Heap_FreeToHeap(v0);
            return;
        }
    }

    {
        int v2 = ov12_02220280(param0, 4);
        int v3 = ov12_02220240(param0);
        int v4 = ov12_02220248(param0);
        int v5, v6;

        if (v0->unk_2C != 0xFF) {
            v5 = ov12_02235254(param0, v3);
            v6 = ov12_02235254(param0, v4);

            switch (v2) {
            case 0:
                switch (v5) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                }
                break;
            case 2:
                switch (v5) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                }
                break;
            case 1:
                switch (v6) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                }
                break;
            case 3:
                switch (v6) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                }
                break;
            }
        }
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222A878, v0);
}

static void ov12_0222AB10(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222AB10 *v1 = (UnkStruct_ov12_0222AB10 *)param1;

    if (v1->unk_2C == 0) {
        ov12_02220220(v1->unk_00.unk_04, param0);
        Heap_FreeToHeap(v1);
        return;
    }

    v1->unk_2C--;

    for (v0 = 0; v0 < 4; v0++) {
        if (v1->unk_1C[v0] == NULL) {
            continue;
        }

        ManagedSprite_TickFrame(v1->unk_1C[v0]);
    }

    SpriteSystem_DrawSprites(v1->unk_00.unk_0C);
}

void ov12_0222AB50(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222AB10 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222AB10));
    ov12_0223595C(param0, &v0->unk_00);

    if (ov12_02220280(param0, 0) == 0) {
        v0->unk_2C = 2 + 1;
    } else {
        v0->unk_2C = ov12_02220280(param0, 0);
    }

    {
        int v1;
        static int v2[4] = {
            20,
            10,
            10,
            20,
        };

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_1C[v1] = ov12_022202C0(v0->unk_00.unk_04, v1);

            if (v0->unk_1C[v1] != NULL) {
                ManagedSprite_SetPriority(v0->unk_1C[v1], v2[v1]);
            }
        }
    }

    {
        SysTask *v3 = ov12_022201E8(v0->unk_00.unk_04, ov12_0222AB10, v0);
        ov12_0222AB10(v3, v0);
    }
}

static void ov12_0222ABBC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222ABBC *v0 = (UnkStruct_ov12_0222ABBC *)param1;

    switch (v0->unk_08.unk_00) {
    case 0:
        v0->unk_00 = 0;
        v0->unk_24 = ov12_0222662C(0, 160, ((1 * 0xffff) / 360), (32 * FX32_ONE), (2 * 100), ov12_022233EC(v0->unk_08.unk_04, 2), 0, ov12_022266E8(0, 0), ov12_0221FDE4(v0->unk_08.unk_04));
        v0->unk_08.unk_00++;
        break;
    case 1:
        v0->unk_00++;

        if (v0->unk_00 < v0->unk_04) {
            break;
        }

        ov12_0222669C(v0->unk_24);
        v0->unk_08.unk_00++;
    default:
        ov12_02220220(v0->unk_08.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }
}

void ov12_0222AC40(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222ABBC *v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222ABBC));
    ov12_0223595C(param0, &v0->unk_08);
    v0->unk_04 = ov12_02220280(param0, 0);

    ov12_022201E8(v0->unk_08.unk_04, ov12_0222ABBC, v0);
}
