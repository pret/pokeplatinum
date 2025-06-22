#include "overlay012/ov12_0222AC70.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02225D50.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226454.h"
#include "overlay012/struct_ov12_022267D4_decl.h"
#include "overlay012/struct_ov12_0222C7E0_sub1.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay012/struct_ov12_02235998.h"

#include "bg_window.h"
#include "heap.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    u8 unk_00;
    u8 unk_01[3];
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    UnkStruct_ov12_0221FCDC *unk_08;
    SpriteSystem *unk_0C;
    SpriteManager *unk_10;
    ManagedSprite *unk_14[3];
    UnkStruct_ov12_02225F6C unk_20;
} UnkStruct_ov12_0222AC70;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    u8 unk_08;
    UnkStruct_ov12_0221FCDC *unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225F6C unk_38;
} UnkStruct_ov12_0222AFA0;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    UnkStruct_ov12_0221FCDC *unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    UnkStruct_ov12_02225F6C unk_34;
} UnkStruct_ov12_0222B220;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    UnkStruct_ov12_0221FCDC *unk_0C;
    PokemonSprite *unk_10;
    SpriteManager *unk_14;
    ManagedSprite *unk_18[4];
    UnkStruct_ov12_02225F6C unk_28[4];
} UnkStruct_ov12_0222B4C8;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov12_0221FCDC *unk_04;
    PokemonSprite *unk_08;
    UnkStruct_ov12_02225F6C unk_0C;
} UnkStruct_ov12_0222B914;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    s16 unk_04;
    UnkStruct_ov12_0221FCDC *unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
} UnkStruct_ov12_0222BA18;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    UnkStruct_ov12_0221FCDC *unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
} UnkStruct_ov12_0222BB30;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    PaletteData *unk_04;
    UnkStruct_ov12_0221FCDC *unk_08;
    UnkStruct_ov12_022267D4 *unk_0C;
    PokemonSprite *unk_10;
} UnkStruct_ov12_0222BD48;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    s16 unk_04;
    s16 unk_06;
    UnkStruct_ov12_0221FCDC *unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    UnkStruct_ov12_02225F6C unk_34;
} UnkStruct_ov12_0222BE80;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    UnkStruct_ov12_0221FCDC *unk_04;
    SpriteManager *unk_08;
    ManagedSprite *unk_0C;
    ManagedSprite *unk_10;
} UnkStruct_ov12_0222BFF4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    ManagedSprite *unk_04;
    UnkStruct_ov12_02225F6C unk_08;
} UnkStruct_ov12_0222C1A4_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    s8 unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_0221FCDC *unk_10;
    SpriteManager *unk_14;
    UnkStruct_ov12_0222C1A4_sub1 unk_18[3];
} UnkStruct_ov12_0222C1A4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    BgConfig *unk_08;
    UnkStruct_ov12_0221FCDC *unk_0C;
    SpriteManager *unk_10;
    UnkStruct_ov12_02235998 unk_14[4];
    UnkStruct_ov12_02235998 unk_64[4];
    UnkStruct_ov12_02225F6C unk_B4;
} UnkStruct_ov12_0222C4A8;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_ov12_02235350 unk_04;
    BgConfig *unk_08;
    UnkStruct_ov12_0221FCDC *unk_0C;
    SpriteManager *unk_10;
    PokemonSprite *unk_14;
    ManagedSprite *unk_18;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02225F6C unk_40;
    UnkStruct_ov12_02226454 unk_64;
} UnkStruct_ov12_0222C678;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_0222C7E0_sub1 unk_1C;
    PokemonSprite *unk_28[2];
    s16 unk_30;
    s16 unk_32;
    s16 unk_34;
    s16 unk_36;
    UnkStruct_ov12_02225F6C unk_38;
    UnkStruct_ov12_02225D50 unk_5C;
} UnkStruct_ov12_0222C7E0;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_0222C7E0_sub1 unk_1C;
    UnkStruct_ov12_02235350 unk_28[4];
    PokemonSprite *unk_38[4];
    int unk_48;
    UnkStruct_ov12_02225F6C unk_4C;
} UnkStruct_ov12_0222C994;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_0222C7E0_sub1 unk_1C;
    UnkStruct_ov12_02235350 unk_28[2];
    PokemonSprite *unk_30[2];
    ManagedSprite *unk_38[2];
    UnkStruct_ov12_02225F6C unk_40[2];
} UnkStruct_ov12_0222CACC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02235350 unk_0C;
    UnkStruct_ov12_0223595C unk_10;
    UnkStruct_ov12_0222C7E0_sub1 unk_2C;
    ManagedSprite *unk_38;
    UnkStruct_ov12_02235998 unk_3C[4];
    UnkStruct_ov12_02225F6C unk_8C[2];
    UnkStruct_ov12_02225D50 unk_D4;
} UnkStruct_ov12_0222CBFC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    s16 unk_12;
    UnkStruct_ov12_02235350 unk_14;
    UnkStruct_ov12_0223595C unk_18;
    UnkStruct_ov12_0222C7E0_sub1 unk_34;
    ManagedSprite *unk_40;
    ManagedSprite *unk_44[2];
    UnkStruct_ov12_02235998 unk_4C[4];
    UnkStruct_ov12_02225F6C unk_9C;
    UnkStruct_ov12_02225D50 unk_C0;
} UnkStruct_ov12_0222CDF0;

typedef struct {
    ManagedSprite *unk_00;
    UnkStruct_ov12_02225F6C unk_04[2];
} UnkStruct_ov12_0222D128_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    int unk_04;
    int unk_08;
    u8 unk_0C;
    UnkStruct_ov12_0221FCDC *unk_10;
    SpriteSystem *unk_14;
    SpriteManager *unk_18;
    PokemonSprite *unk_1C;
    s16 unk_20;
    int unk_24;
    u16 unk_28;
    fx32 unk_2C;
    UnkStruct_ov12_0222D128_sub1 unk_30[2];
    s16 unk_C8;
    s16 unk_CA;
    UnkStruct_ov12_02225F6C unk_CC;
} UnkStruct_ov12_0222D128;

static const u8 Unk_ov12_0223A09E[][2] = {
    { 0x8, 0x2 },
    { 0xD, 0x1 },
    { 0x12, 0x3 }
};

static void ov12_0222AC70(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222AC70 *v1 = (UnkStruct_ov12_0222AC70 *)param1;

    switch (v1->unk_00) {
    case 0:
        v1->unk_04++;

        for (v0 = 0; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
            {
                s16 v2, v3;
                ManagedSprite_GetPositionXY(v1->unk_14[v0], &v2, &v3);
            }

            if (v1->unk_04 >= Unk_ov12_0223A09E[v0][0]) {
                v1->unk_01[v0]++;

                if (v1->unk_01[v0] >= Unk_ov12_0223A09E[v0][1]) {
                    v1->unk_01[v0] = 0;

                    if (ManagedSprite_GetDrawFlag(v1->unk_14[v0]) == 1) {
                        ManagedSprite_SetDrawFlag(v1->unk_14[v0], 0);
                    } else {
                        ManagedSprite_SetDrawFlag(v1->unk_14[v0], 1);
                    }
                }
            } else {
                ManagedSprite_SetDrawFlag(v1->unk_14[v0], 0);
            }
        }

        if (v1->unk_04 >= 45) {
            for (v0 = 0; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
                ManagedSprite_SetDrawFlag(v1->unk_14[v0], 1);
            }

            v1->unk_04 = 0;
            v1->unk_00++;
        }
        break;
    case 1:
        ov12_02225EF0(&v1->unk_20, 100, 60, 100, 100, 100, 10);
        v1->unk_00++;
        break;
    case 2:
        if (ov12_02225F6C(&v1->unk_20) == 1) {
            for (v0 = 0; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
                f32 v4, v5;

                ov12_02225FA4(&v1->unk_20, &v4, &v5);
                ManagedSprite_SetAffineScale(v1->unk_14[v0], v4, v5);
            }
        } else {
            if (++v1->unk_04 >= 45) {
                v1->unk_00++;
            }
        }
        break;
    case 3:
        if (v1->unk_05 > 0) {
            v1->unk_05--;
        }

        if (v1->unk_06 < 15) {
            v1->unk_06++;
        }

        if ((v1->unk_05 == 0) && (v1->unk_06 == 15)) {
            v1->unk_00++;
        }

        G2_ChangeBlendAlpha(v1->unk_05, v1->unk_06);
        break;
    default:
        for (v0 = 0; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
            Sprite_DeleteAndFreeResources(v1->unk_14[v0]);
        }

        ov12_02220220(v1->unk_08, param0);
        Heap_FreeToHeap(v1);
        return;
    }

    for (v0 = 0; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
        Sprite_TickFrame(v1->unk_14[v0]->sprite);
    }

    SpriteSystem_DrawSprites(v1->unk_10);
}

void ov12_0222AE68(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    int v0;
    UnkStruct_ov12_0222AC70 *v1;
    SpriteTemplate v2;

    v1 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222AC70));

    GF_ASSERT(v1 != NULL);

    v1->unk_04 = 0;
    v1->unk_00 = 0;
    v1->unk_0C = param1;
    v1->unk_10 = param2;
    v1->unk_08 = param0;

    v2 = ov12_0222329C(param0);
    ov12_02235780(v1->unk_08, 0xffffffff, 0xffffffff);

    v1->unk_05 = 15;
    v1->unk_06 = 0;

    G2_ChangeBlendAlpha(v1->unk_05, v1->unk_06);

    v1->unk_14[0] = param3;

    {
        UnkStruct_ov12_02235350 v3;
        int v4 = ov12_0223525C(param0, ov12_02220248(param0));

        if (v4 == 0x3) {
            ov12_02235350(0, ov12_0221FDD4(param0), &v3);
        } else {
            ov12_02235350(1, ov12_0221FDD4(param0), &v3);
        }

        for (v0 = 1; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
            v1->unk_14[v0] = SpriteSystem_NewSprite(v1->unk_0C, v1->unk_10, &v2);
            ManagedSprite_SetPositionXY(v1->unk_14[v0], v3.unk_00, v3.unk_02);
        }

        ManagedSprite_SetPositionXY(v1->unk_14[0], v3.unk_00, v3.unk_02);
    }

    for (v0 = 0; v0 < ov12_02220280(v1->unk_08, 0); v0++) {
        v1->unk_01[v0] = 0;
        ManagedSprite_SetAffineOverwriteMode(v1->unk_14[v0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_OffsetPositionXY(v1->unk_14[v0], 0, 32 - (v0 * 4));
        ManagedSprite_SetExplicitOamMode(v1->unk_14[v0], GX_OAM_MODE_XLU);
    }

    ov12_022201CC(param0, ov12_0222AC70, v1, 0x1000);
}

static void ov12_0222AFA0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222AFA0 *v0 = (UnkStruct_ov12_0222AFA0 *)param1;

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
        PokemonSprite_StartFade(v0->unk_10, 0, 10, 0, 0x1F);
        v0->unk_00++;
        break;
    case 2:
        if (PokemonSprite_IsFadeActive(v0->unk_10) == 0) {
            PokemonSprite_StartFade(v0->unk_10, 10, 0, 0, 0x1F);
            v0->unk_00++;
        }
        break;
    case 3:
        if (PokemonSprite_IsFadeActive(v0->unk_10) == 0) {
            v0->unk_08++;

            if (v0->unk_08 >= 3) {
                ov12_02225E68(&v0->unk_14, ov12_02220280(v0->unk_0C, 0), 100, ov12_02220280(v0->unk_0C, 1), ov12_02220280(v0->unk_0C, 3));
                v0->unk_00++;
            } else {
                v0->unk_00 = 1;
            }
        }
        break;
    case 4:
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
    case 5:
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

void ov12_0222B194(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222AFA0 *v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222AFA0));

    v0->unk_08 = 0;
    v0->unk_00 = 0;
    v0->unk_0C = param0;
    v0->unk_10 = ov12_022232FC(v0->unk_0C, ov12_02220240(v0->unk_0C));
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_04 = ov12_02223354(v0->unk_0C, ov12_02220240(v0->unk_0C));

    ov12_02225E68(&v0->unk_14, 100, 100, ov12_02220280(param0, 0), ov12_02220280(param0, 2));
    ov12_02226108(&v0->unk_38, 2, 0, 0, 10);
    ov12_022201E8(v0->unk_0C, ov12_0222AFA0, v0);
}

static void ov12_0222B220(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222B220 *v0 = (UnkStruct_ov12_0222B220 *)param1;

    switch (v0->unk_00) {
    case 0:
        if (ov12_02225F6C(&v0->unk_10) == 1) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
            {
                s16 v1 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_10.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02 + v1);
            }
        } else {
            ov12_02225EF0(&v0->unk_10, 150, 50, 50, 150, 100, 10);
            v0->unk_00++;
        }
        break;
    case 1:
        if (ov12_02225F6C(&v0->unk_10) == 1) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
            {
                s16 v2 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_10.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02 + v2);
            }
        } else {
            ov12_02225EF0(&v0->unk_10, 50, 100, 150, 100, 100, 5);
            v0->unk_00++;
        }
        break;
    case 2:
        if (ov12_02225F6C(&v0->unk_10) == 1) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
            {
                s16 v3 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_10.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02 + v3);
            }
        } else {
            ov12_02225EF0(&v0->unk_10, 100, 150, 100, 150, 100, 5);
            v0->unk_00++;
        }
        break;
    case 3:
        if (ov12_02225F6C(&v0->unk_10) == 1) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
            {
                s16 v4 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_10.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02 + v4);
            }
        } else {
            ov12_02225EF0(&v0->unk_10, 150, 100, 150, 100, 100, 5);
            v0->unk_00++;
        }
        break;
    case 4:
        if (ov12_02225F6C(&v0->unk_10) == 1) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
            {
                s16 v5 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_10.unk_04[4]);
                PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02 + v5);
            }
        } else {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, 0x100);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02);
            v0->unk_00++;
        }
        break;
    default:
        ov12_02220220(v0->unk_08, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222B45C(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222B220 *v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222B220));

    v0->unk_00 = 0;
    v0->unk_08 = param0;
    v0->unk_0C = ov12_022232FC(v0->unk_08, ov12_02220240(v0->unk_08));
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_04 = ov12_02223354(v0->unk_08, ov12_02220240(v0->unk_08));

    ov12_02225EF0(&v0->unk_10, 100, 150, 100, 50, 100, 10);
    ov12_022201E8(v0->unk_08, ov12_0222B220, v0);
}

static const s16 Unk_ov12_0223A0FE[][3] = {
    { 0x0, 0x20, 0x7 },
    { 0x0, 0x20, 0xA },
    { 0x20, 0x0, 0x7 },
    { 0x20, 0x0, 0xA }
};

static void ov12_0222B4C8(SysTask *param0, void *param1)
{
    int v0;
    u8 v1;
    UnkStruct_ov12_0222B4C8 *v2 = (UnkStruct_ov12_0222B4C8 *)param1;

    switch (v2->unk_01) {
    case 0: {
        int v3 = (v2->unk_00 % 2) * 2;
        int v4 = (v2->unk_00 + 1) / 2;

        ov12_02225BC8(&v2->unk_28[0], v2->unk_08 + Unk_ov12_0223A0FE[v3][0], v2->unk_08 + Unk_ov12_0223A0FE[v3][1], v2->unk_0A, v2->unk_0A, Unk_ov12_0223A0FE[v3][2] - v4);
        ov12_02225BC8(&v2->unk_28[1], v2->unk_08 - Unk_ov12_0223A0FE[v3][0], v2->unk_08 - Unk_ov12_0223A0FE[v3][1], v2->unk_0A, v2->unk_0A, Unk_ov12_0223A0FE[v3][2] - v4);
        ov12_02225BC8(&v2->unk_28[2], v2->unk_08 + Unk_ov12_0223A0FE[v3 + 1][0], v2->unk_08 + Unk_ov12_0223A0FE[v3 + 1][1], v2->unk_0A, v2->unk_0A, Unk_ov12_0223A0FE[v3 + 1][2] - v4);
        ov12_02225BC8(&v2->unk_28[3], v2->unk_08 - Unk_ov12_0223A0FE[v3 + 1][0], v2->unk_08 - Unk_ov12_0223A0FE[v3 + 1][1], v2->unk_0A, v2->unk_0A, Unk_ov12_0223A0FE[v3 + 1][2] - v4);
    }
        v2->unk_00++;
        v2->unk_01++;
    case 1:
        v1 = 0;

        for (v0 = 0; v0 < 4; v0++) {
            if (ov12_02225C14(&v2->unk_28[v0]) == 0) {
                v1++;
            } else {
                ManagedSprite_SetPositionXY(v2->unk_18[v0], v2->unk_28[v0].unk_00, v2->unk_28[v0].unk_02);
            }

            ManagedSprite_TickFrame(v2->unk_18[v0]);
        }

        if (v1 == 4) {
            if (v2->unk_00 == 9) {
                v2->unk_01++;
            } else {
                v2->unk_01 = 0;
            }
        }
        break;
    case 2:
        if (v2->unk_04 > 0) {
            v2->unk_04--;
        }

        if (v2->unk_05 < 15) {
            v2->unk_05++;
        }

        if ((v2->unk_04 == 0) && (v2->unk_05 == 15)) {
            v2->unk_01++;
        }

        G2_ChangeBlendAlpha(v2->unk_04, v2->unk_05);
        break;
    default:
        ov12_02220220(v2->unk_0C, param0);
        Heap_FreeToHeap(v2);
        return;
    }

    SpriteSystem_DrawSprites(v2->unk_14);
}

void ov12_0222B68C(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222B4C8 *v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222B4C8));

    v0->unk_01 = 0;
    v0->unk_00 = 0;
    v0->unk_0C = param0;
    v0->unk_10 = ov12_022232FC(v0->unk_0C, ov12_02220240(v0->unk_0C));
    v0->unk_08 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_0A = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_0A -= PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_14 = ov12_022202EC(v0->unk_0C);
    v0->unk_04 = 8;
    v0->unk_05 = 6;

    ov12_02235780(v0->unk_0C, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(v0->unk_04, v0->unk_05);

    {
        int v1;
        u16 v2;
        int v3 = ov12_02223334(v0->unk_0C, ov12_02220240(v0->unk_0C));
        int v4 = ov12_0222339C(v0->unk_0C);
        int v5 = ov12_02223344(v0->unk_0C, ov12_02220240(v0->unk_0C));

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_18[v1] = ov12_022202C0(v0->unk_0C, v1);
            ManagedSprite_SetExplicitOamMode(v0->unk_18[v1], GX_OAM_MODE_XLU);
        }

        if (ov12_0223525C(v0->unk_0C, ov12_02220240(v0->unk_0C)) == 0x3) {
            ManagedSprite_SetPriority(v0->unk_18[0], 10);
            ManagedSprite_SetPriority(v0->unk_18[1], 10);
            ManagedSprite_SetPriority(v0->unk_18[2], 20);
            ManagedSprite_SetPriority(v0->unk_18[3], 20);
            ManagedSprite_SetExplicitPriority(v0->unk_18[0], v4);
            ManagedSprite_SetExplicitPriority(v0->unk_18[1], v4);
            ManagedSprite_SetExplicitPriority(v0->unk_18[2], v4);
            ManagedSprite_SetExplicitPriority(v0->unk_18[3], v4);

            v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_18[0]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
            PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_0C), v5, v3, ov12_0221FDE4(param0), 2, 0x20, v2 * 16, 128, 128, 128);

            v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_18[2]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
            PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_0C), v5, v3, ov12_0221FDE4(param0), 2, 0x20, v2 * 16, 196, 196, 196);
        } else {
            ManagedSprite_SetPriority(v0->unk_18[0], 20);
            ManagedSprite_SetPriority(v0->unk_18[1], 20);
            ManagedSprite_SetPriority(v0->unk_18[2], 10);
            ManagedSprite_SetPriority(v0->unk_18[3], 10);
            ManagedSprite_SetExplicitPriority(v0->unk_18[0], v4 + 1);
            ManagedSprite_SetExplicitPriority(v0->unk_18[1], v4 + 1);
            ManagedSprite_SetExplicitPriority(v0->unk_18[2], v4 + 1);
            ManagedSprite_SetExplicitPriority(v0->unk_18[3], v4 + 1);
            ManagedSprite_SetExplicitPriority(v0->unk_18[0], v4);
            ManagedSprite_SetExplicitPriority(v0->unk_18[1], v4);
            ManagedSprite_SetExplicitPriority(v0->unk_18[2], v4);
            ManagedSprite_SetExplicitPriority(v0->unk_18[3], v4);

            v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_18[0]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
            PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_0C), v5, v3, ov12_0221FDE4(param0), 2, 0x20, v2 * 16, 196, 196, 196);

            v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_18[2]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
            PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_0C), v5, v3, ov12_0221FDE4(param0), 2, 0x20, v2 * 16, 128, 128, 128);
        }
    }

    ov12_022201E8(v0->unk_0C, ov12_0222B4C8, v0);
}

static const u8 Unk_ov12_0223A098[][3] = {
    { 0x64, 0x73, 0x6 },
    { 0x73, 0x64, 0x6 }
};

static void ov12_0222B914(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222B914 *v0 = (UnkStruct_ov12_0222B914 *)param1;

    switch (v0->unk_00) {
    case 0:
        ov12_02225E68(&v0->unk_0C, Unk_ov12_0223A098[v0->unk_02][0], 100, Unk_ov12_0223A098[v0->unk_02][1], Unk_ov12_0223A098[v0->unk_02][2]);

        if (v0->unk_02 == 0) {
            PokemonSprite_StartFade(v0->unk_08, 0, 6, 0, 0x7FFF);
        } else {
            PokemonSprite_StartFade(v0->unk_08, 6, 0, 0, 0x7FFF);
        }

        v0->unk_02 ^= 1;
        v0->unk_01++;
        v0->unk_00++;
        break;
    case 1:
        if ((ov12_02225EB8(&v0->unk_0C) == 0) && (PokemonSprite_IsFadeActive(v0->unk_08) == 0)) {
            if (v0->unk_01 < 4) {
                v0->unk_00--;
            } else {
                v0->unk_00++;
            }
        }

        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SCALE_X, v0->unk_0C.unk_00);
        PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_SCALE_Y, v0->unk_0C.unk_02);
        break;
    default:
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222B9E0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222B914 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222B914));

    v0->unk_00 = 0;
    v0->unk_02 = 0;
    v0->unk_01 = 0;
    v0->unk_04 = param0;
    v0->unk_08 = ov12_022232FC(v0->unk_04, ov12_02220240(v0->unk_04));

    ov12_022201E8(v0->unk_04, ov12_0222B914, v0);
}

static const u8 Unk_ov12_0223A0DF[][5] = {
    { 0x64, 0x96, 0x64, 0x32, 0x8 },
    { 0x96, 0x32, 0x32, 0x96, 0x8 },
    { 0x32, 0x64, 0x96, 0x64, 0x8 }
};

static void ov12_0222BA18(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222BA18 *v0 = (UnkStruct_ov12_0222BA18 *)param1;

    switch (v0->unk_00) {
    case 0:
        ov12_02225EF0(&v0->unk_10, Unk_ov12_0223A0DF[v0->unk_01][0], Unk_ov12_0223A0DF[v0->unk_01][1], Unk_ov12_0223A0DF[v0->unk_01][2], Unk_ov12_0223A0DF[v0->unk_01][3], 100, Unk_ov12_0223A0DF[v0->unk_01][4]);
        v0->unk_01++;
        v0->unk_00++;
        break;
    case 1:
        if (ov12_02225F6C(&v0->unk_10) == 0) {
            if (v0->unk_01 < 3) {
                v0->unk_00--;
            } else {
                v0->unk_00++;
            }
        }

        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);

        {
            s16 v1 = ov12_02225FD4(v0->unk_02, v0->unk_04, v0->unk_10.unk_04[4]);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_02 + v1);
        }
        break;
    default:
        ov12_02220220(v0->unk_08, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222BAE4(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222BA18 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222BA18));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_08 = param0;
    v0->unk_0C = ov12_022232FC(v0->unk_08, ov12_02220240(v0->unk_08));
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_04 = ov12_02223354(v0->unk_08, ov12_02220240(v0->unk_08));

    ov12_022201E8(v0->unk_08, ov12_0222BA18, v0);
}

static const u8 Unk_ov12_0223A0B7[][5] = {
    { 0x64, 0xA, 0x64, 0xB4, 0xA },
    { 0xA, 0xA, 0xB4, 0x0, 0x5 }
};

static void ov12_0222BB30(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222BB30 *v0 = (UnkStruct_ov12_0222BB30 *)param1;

    switch (v0->unk_00) {
    case 0:
        ov12_02225EF0(&v0->unk_10, Unk_ov12_0223A0B7[v0->unk_01][0], Unk_ov12_0223A0B7[v0->unk_01][1], Unk_ov12_0223A0B7[v0->unk_01][2], Unk_ov12_0223A0B7[v0->unk_01][3], 100, Unk_ov12_0223A0B7[v0->unk_01][4]);
        v0->unk_01++;
        v0->unk_00++;
        break;
    case 1:
        if (ov12_02225F6C(&v0->unk_10) == 0) {
            v0->unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
        ov12_02226024(v0->unk_0C, v0->unk_02, v0->unk_06, v0->unk_10.unk_04[4], 0);
        break;
    case 2:
        ov12_02225BC8(&v0->unk_10, 0, 0, PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER), 0, 5);
        v0->unk_00++;
        break;
    case 3:
        if (ov12_02225C14(&v0->unk_10) == 0) {
            v0->unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_10.unk_02);
        break;
    case 4:
        ov12_02225EF0(&v0->unk_10, Unk_ov12_0223A0B7[v0->unk_01][0], Unk_ov12_0223A0B7[v0->unk_01][1], Unk_ov12_0223A0B7[v0->unk_01][2], Unk_ov12_0223A0B7[v0->unk_01][3], 100, Unk_ov12_0223A0B7[v0->unk_01][4]);
        v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
        v0->unk_00++;
        break;
    case 5:
        if (ov12_02225F6C(&v0->unk_10) == 0) {
            v0->unk_00++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
        ov12_02226024(v0->unk_0C, v0->unk_02, v0->unk_06, v0->unk_10.unk_04[4], 1);
        break;
    default:
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_04);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_HIDE, 1);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, 0x100);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, 0x100);
        ov12_02220220(v0->unk_08, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222BCF4(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222BB30 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222BB30));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_08 = param0;
    v0->unk_0C = ov12_022232FC(v0->unk_08, ov12_02220240(v0->unk_08));
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_04 = v0->unk_02;
    v0->unk_06 = ov12_02223354(v0->unk_08, ov12_02220240(v0->unk_08));

    ov12_022201E8(v0->unk_08, ov12_0222BB30, v0);
}

static void ov12_0222BD48(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222BD48 *v0 = (UnkStruct_ov12_0222BD48 *)param1;

    switch (v0->unk_00) {
    case 0:
        PaletteData_StartFade(v0->unk_04, 0x1, ov12_02222354(v0->unk_08), -2, 0, 16, 0x7FFF);
        PokemonSprite_StartFade(v0->unk_10, 0, 16, 0, 0x0);
        v0->unk_00++;
        break;
    case 1:
        if ((PaletteData_GetSelectedBuffersMask(v0->unk_04) == 0) && (PokemonSprite_IsFadeActive(v0->unk_10) == 0)) {
            v0->unk_00++;
        }
        break;
    case 2:
        if ((++v0->unk_01) > 5) {
            v0->unk_00++;
        }
        break;
    case 3:
        PaletteData_StartFade(v0->unk_04, 0x1, ov12_02222354(v0->unk_08), -2, 16, 0, 0x7FFF);
        PokemonSprite_StartFade(v0->unk_10, 16, 0, 0, 0x0);
        v0->unk_00++;
        break;
    case 4:
        if ((PaletteData_GetSelectedBuffersMask(v0->unk_04) == 0) && (PokemonSprite_IsFadeActive(v0->unk_10) == 0)) {
            v0->unk_00++;
        }
        break;
    default:
        ov12_02220220(v0->unk_08, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222BE48(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222BD48 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222BD48));

    v0->unk_08 = param0;
    v0->unk_04 = ov12_0222332C(v0->unk_08);
    v0->unk_10 = ov12_022232FC(v0->unk_08, ov12_02220240(v0->unk_08));

    ov12_022201E8(v0->unk_08, ov12_0222BD48, v0);
}

static const u8 Unk_ov12_0223A0C1[][5] = {
    { 0x64, 0x78, 0x64, 0x50, 0x5 },
    { 0x78, 0x64, 0x50, 0x78, 0x5 },
    { 0x64, 0x64, 0x78, 0x64, 0x5 }
};

static const u8 Unk_ov12_0223A0A4[][3] = {
    { 0x0, 0x10, 0x5 },
    { 0x10, 0x0, 0x5 },
    { 0x0, 0x0, 0x5 }
};

static void ov12_0222BE80(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222BE80 *v0 = (UnkStruct_ov12_0222BE80 *)param1;

    switch (v0->unk_00) {
    case 0:
        ov12_02225EF0(&v0->unk_10, Unk_ov12_0223A0C1[v0->unk_01][0], Unk_ov12_0223A0C1[v0->unk_01][1], Unk_ov12_0223A0C1[v0->unk_01][2], Unk_ov12_0223A0C1[v0->unk_01][3], 100, Unk_ov12_0223A0C1[v0->unk_01][4]);
        ov12_02225BC8(&v0->unk_34, 0, 0, v0->unk_04 + Unk_ov12_0223A0A4[v0->unk_01][0], v0->unk_04 + Unk_ov12_0223A0A4[v0->unk_01][1], Unk_ov12_0223A0A4[v0->unk_01][2]);
        v0->unk_01++;
        v0->unk_00++;
        break;
    case 1: {
        int v1 = 0;

        if (ov12_02225F6C(&v0->unk_10) == 0) {
            v1++;
        }

        if (ov12_02225C14(&v0->unk_34) == 0) {
            v1++;
        }

        if (v1 >= 2) {
            if (v0->unk_01 >= 3) {
                v0->unk_02++;
                v0->unk_01 = 0;

                if (v0->unk_02 >= 3) {
                    v0->unk_00++;
                }
            } else {
                v0->unk_00 = 0;
            }
        }

        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_X, v0->unk_10.unk_00);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_SCALE_Y, v0->unk_10.unk_02);
        ov12_02226024(v0->unk_0C, v0->unk_34.unk_02, v0->unk_06, v0->unk_10.unk_04[4], 0);
    } break;
    default:
        ov12_02220220(v0->unk_08, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222BFA8(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222BE80 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222BE80));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_08 = param0;
    v0->unk_0C = ov12_022232FC(v0->unk_08, ov12_02220240(v0->unk_08));
    v0->unk_04 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_06 = ov12_02223354(v0->unk_08, ov12_02220240(v0->unk_08));

    ov12_022201E8(v0->unk_08, ov12_0222BE80, v0);
}

static void ov12_0222BFF4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222BFF4 *v0 = (UnkStruct_ov12_0222BFF4 *)param1;

    switch (v0->unk_00) {
    case 0:
        if ((++v0->unk_01) >= 10) {
            v0->unk_01 = 0;
            v0->unk_00++;
        }
        break;
    case 1:
        ManagedSprite_SetDrawFlag(v0->unk_0C, 1);
        ManagedSprite_SetDrawFlag(v0->unk_10, 1);
        ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_OBJWND);
        v0->unk_00++;
        break;
    case 2:
        if ((++v0->unk_01) >= 10) {
            G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 0);
            G2_SetWndOBJInsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 0);
            ManagedSprite_SetDrawFlag(v0->unk_0C, 0);
            ManagedSprite_SetDrawFlag(v0->unk_10, 0);
            v0->unk_01 = 0;
            v0->unk_00++;
        }
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_0C);
    ManagedSprite_TickFrame(v0->unk_10);
    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_0222C0C0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222BFF4 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222BFF4));

    v0->unk_04 = param0;
    v0->unk_08 = ov12_022202EC(v0->unk_04);
    v0->unk_0C = ov12_022202C0(v0->unk_04, 0);
    v0->unk_10 = ov12_022202C0(v0->unk_04, 1);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 0);
    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ, 0);

    {
        int v1;
        int v2 = ov12_02223334(v0->unk_04, ov12_02220240(v0->unk_04));
        int v3 = ov12_02223344(v0->unk_04, ov12_02220240(v0->unk_04));

        v1 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_0C->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_04), v3, v2, ov12_0221FDE4(param0), 2, 0x20, v1 * 16, 256, 256, 256);
    }

    ManagedSprite_SetDrawFlag(v0->unk_0C, 0);
    ManagedSprite_SetDrawFlag(v0->unk_10, 0);
    ov12_022201E8(v0->unk_04, ov12_0222BFF4, v0);
}

static const u8 Unk_ov12_0223A094[] = {
    0x2,
    0x7,
    0xD,
    0x12
};

static void ov12_0222C1A4(SysTask *param0, void *param1)
{
    int v0;
    int v1;
    UnkStruct_ov12_0222C1A4 *v2 = (UnkStruct_ov12_0222C1A4 *)param1;

    switch (v2->unk_00) {
    case 0:
        PokemonSprite_SetAttribute(v2->unk_0C, MON_SPRITE_PARTIAL_DRAW, 1);
        v2->unk_00++;
        break;
    case 1:
        v1 = 0;

        for (v0 = 0; v0 < 3; v0++) {
            switch (v2->unk_18[v0].unk_00) {
            case 0:
                if ((++v2->unk_18[v0].unk_01) >= Unk_ov12_0223A094[v0]) {
                    ov12_02225EF0(&v2->unk_18[v0].unk_08, 100, 5, 100, 5, 100, 5);
                    v2->unk_18[v0].unk_00++;
                }
                break;
            case 1:
                if (ov12_02225F6C(&v2->unk_18[v0].unk_08) == 0) {
                    v2->unk_18[v0].unk_00++;
                } else {
                    f32 v3, v4;

                    ov12_02225FA4(&v2->unk_18[v0].unk_08, &v3, &v4);
                    ManagedSprite_SetAffineScale(v2->unk_18[v0].unk_04, v3 * v2->unk_08, v4);
                    ov12_0222605C(v2->unk_18[v0].unk_04, v2->unk_02, v2->unk_04, v2->unk_18[v0].unk_08.unk_04[4], 0);
                }
                break;
            default:
                v1++;
                break;
            }

            ManagedSprite_TickFrame(v2->unk_18[v0].unk_04);
        }

        if (v1 >= 3) {
            v2->unk_01++;

            if (v2->unk_01 < 3) {
                for (v0 = 0; v0 < 3; v0++) {
                    {
                        s16 v5;
                        s16 v6;

                        ManagedSprite_GetPositionXY(v2->unk_18[v0].unk_04, &v5, &v6);
                        ManagedSprite_SetPositionXY(v2->unk_18[v0].unk_04, v5, v2->unk_02);
                        ManagedSprite_SetAffineScale(v2->unk_18[v0].unk_04, 1.0f * v2->unk_08, 1.0f);
                    }
                    v2->unk_18[v0].unk_00 = 0;
                    v2->unk_18[v0].unk_01 = 0;
                }

                v2->unk_00--;
            } else {
                v2->unk_00++;
            }
        }
        break;
    case 2:
        for (v0 = 0; v0 < 3; v0++) {
            ManagedSprite_SetExplicitOamMode(v2->unk_18[v0].unk_04, GX_OAM_MODE_NORMAL);
            ov12_02225EF0(&v2->unk_18[v0].unk_08, 5, 100, 5, 100, 100, 5);
        }

        v2->unk_00++;
        break;
    case 3:
        v1 = 0;

        for (v0 = 0; v0 < 3; v0++) {
            if (ov12_02225F6C(&v2->unk_18[v0].unk_08) == 0) {
                v1++;
            } else {
                f32 v7, v8;

                ov12_02225FA4(&v2->unk_18[v0].unk_08, &v7, &v8);
                ManagedSprite_SetAffineScale(v2->unk_18[v0].unk_04, v7 * v2->unk_08, v8);
                ov12_0222605C(v2->unk_18[v0].unk_04, v2->unk_02, v2->unk_04, v2->unk_18[v0].unk_08.unk_04[4], 0);
            }
        }

        if (v1 >= 3) {
            v2->unk_00++;
        }
        break;
    default:
        PokemonSprite_SetAttribute(v2->unk_0C, MON_SPRITE_PARTIAL_DRAW, 0);
        ov12_02220220(v2->unk_10, param0);
        Heap_FreeToHeap(v2);
        return;
    }

    SpriteSystem_DrawSprites(v2->unk_14);
}

void ov12_0222C3C0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222C1A4 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222C1A4));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_10 = param0;
    v0->unk_14 = ov12_022202EC(v0->unk_10);
    v0->unk_0C = ov12_022232FC(v0->unk_10, ov12_02220240(v0->unk_10));
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_02 -= PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_04 = ov12_02223354(v0->unk_10, ov12_02220240(v0->unk_10));

    ov12_02235780(v0->unk_10, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(12, 6);

    {
        int v1;

        for (v1 = 0; v1 < 3; v1++) {
            v0->unk_18[v1].unk_00 = 0;
            v0->unk_18[v1].unk_01 = 0;
            v0->unk_18[v1].unk_04 = ov12_022202C0(v0->unk_10, v1);

            ManagedSprite_SetAffineOverwriteMode(v0->unk_18[v1].unk_04, AFFINE_OVERWRITE_MODE_DOUBLE);
            ManagedSprite_SetExplicitOamMode(v0->unk_18[v1].unk_04, GX_OAM_MODE_XLU);
            ManagedSprite_SetPriority(v0->unk_18[v1].unk_04, v1 + 1);
        }
    }

    if (ov12_022234A8(param0, 0) == 1) {
        v0->unk_08 = -1;
    } else {
        v0->unk_08 = +1;
    }

    {
        int v2;

        for (v2 = 0; v2 < 3; v2++) {
            ManagedSprite_SetAffineScale(v0->unk_18[v2].unk_04, 1.0f * v0->unk_08, 1.0f);
        }
    }

    ov12_022201E8(v0->unk_10, ov12_0222C1A4, v0);
}

static const s16 Unk_ov12_0223A0EE[] = {
    0xC,
    0xA,
    0x8,
    0x6,
    0x4,
    0x2,
    0x1,
    0x0
};

static void ov12_0222C4A8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222C4A8 *v1 = (UnkStruct_ov12_0222C4A8 *)param1;

    switch (v1->unk_00) {
    case 0:
        PaletteData_StartFade(ov12_0222332C(v1->unk_0C), 0x1, ov12_02222354(v1->unk_0C), 1, 0, 10, 0x0);
        v1->unk_00++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(ov12_0222332C(v1->unk_0C)) != 0) {
            break;
        }

        v1->unk_00++;
    case 2:
        ov12_02226108(&v1->unk_B4, Unk_ov12_0223A0EE[v1->unk_01], 0, 0, 5);

        if (v1->unk_02 == 0) {
            PaletteData_BlendMulti(ov12_0222332C(v1->unk_0C), 0, 0xFF, 10, 0x0);
        } else {
            PaletteData_BlendMulti(ov12_0222332C(v1->unk_0C), 0, 0xFF, 10, 0x7FFF);
        }

        v1->unk_03 = 3;
        v1->unk_02 ^= 1;
        v1->unk_01++;
        v1->unk_00++;
    case 3:
        if (ov12_02226138(&v1->unk_B4) == 0) {
            if (v1->unk_01 >= (NELEMS(Unk_ov12_0223A0EE))) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }
        }

        if (v1->unk_03 > 0) {
            v1->unk_03--;

            if (v1->unk_03 == 0) {
                PaletteData_BlendMulti(ov12_0222332C(v1->unk_0C), 0, 0xFF, 0, 0);
            }
        }

        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_14[v0].unk_08 == NULL) {
                continue;
            }

            PokemonSprite_SetAttribute(v1->unk_14[v0].unk_08, MON_SPRITE_X_CENTER, v1->unk_14[v0].unk_00.unk_00 + v1->unk_B4.unk_00);
        }

        Bg_SetOffset(v1->unk_08, BG_LAYER_MAIN_3, 0, v1->unk_B4.unk_00);
        break;
    default:
        ov12_02220220(v1->unk_0C, param0);
        Heap_FreeToHeap(v1);
        break;
    }
}

void ov12_0222C5FC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_0222C4A8 *v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222C4A8));

    v1->unk_00 = 0;
    v1->unk_01 = 0;
    v1->unk_0C = param0;
    v1->unk_10 = ov12_022202EC(v1->unk_0C);
    v1->unk_08 = ov12_02220278(v1->unk_0C);

    {
        int v2;
        int v3;

        if (ov12_02223364(v1->unk_0C) == 1) {
            v2 = 0x40;
            v3 = (0x2 | 0x4 | 0x8 | 0x10);
        } else {
            v2 = (0x2 | 0x8);
            v3 = (0x2 | 0x4);
        }

        ov12_02235998(param0, v2, &(v1->unk_14[0]), &v1->unk_04);
    }

    for (v0 = 0; v0 < v1->unk_04; v0++) {
        v1->unk_14[v0].unk_00.unk_00 = PokemonSprite_GetAttribute(v1->unk_14[v0].unk_08, MON_SPRITE_X_CENTER);
        v1->unk_14[v0].unk_00.unk_02 = PokemonSprite_GetAttribute(v1->unk_14[v0].unk_08, MON_SPRITE_Y_CENTER);
    }

    ov12_022201E8(v1->unk_0C, ov12_0222C4A8, v1);
}

static void ov12_0222C678(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222C678 *v0 = (UnkStruct_ov12_0222C678 *)param1;

    switch (v0->unk_00) {
    case 0:
        if (ov12_02225C14(&v0->unk_40) == 0) {
            v0->unk_00++;
        }

        ov12_02226138(&v0->unk_1C);
        ov12_02226454(&v0->unk_64);

        ManagedSprite_SetPositionXY(v0->unk_18, v0->unk_40.unk_00, v0->unk_40.unk_02);
        ManagedSprite_TickFrame(v0->unk_18);
        SpriteSystem_DrawSprites(v0->unk_10);
        break;
    default:
        ov12_02220220(v0->unk_0C, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222C6D4(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222C678 *v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222C678));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_0C = param0;
    v0->unk_10 = ov12_022202EC(v0->unk_0C);
    v0->unk_08 = ov12_02220278(v0->unk_0C);
    v0->unk_18 = ov12_022202C0(v0->unk_0C, 0);

    if (ov12_02220280(param0, 0) == 0) {
        v1 = ov12_02220248(v0->unk_0C);
    } else {
        v1 = ov12_02220240(v0->unk_0C);
    }

    v0->unk_14 = ov12_022232FC(v0->unk_0C, v1);
    ov12_02235918(v0->unk_14, &v0->unk_04);
    v0->unk_04.unk_02 -= PokemonSprite_GetAttribute(v0->unk_14, MON_SPRITE_SHADOW_HEIGHT);

    {
        int v2 = ov12_02225964(v0->unk_0C, v1);
        int v3 = ov12_0222598C(v0->unk_0C, v1);

        ov12_02225BC8(&v0->unk_40, v0->unk_04.unk_00, v0->unk_04.unk_00 + (-20 * v2), v0->unk_04.unk_02, v0->unk_04.unk_02 + ((+20) * v3), 20);
    }

    ov12_022357BC(v0->unk_0C, (1 << ov12_022233EC(param0, 2)) | GX_BLEND_PLANEMASK_BD | (1 << ov12_022233EC(param0, 1)) | GX_WND_PLANEMASK_BG0, 0xffffffff, 0xffffffff);
    ov12_02226424(&v0->unk_64, 31, 0, 0, 31, (20 - 5));

    ManagedSprite_SetExplicitOamMode(v0->unk_18, GX_OAM_MODE_XLU);
    ov12_022201E8(v0->unk_0C, ov12_0222C678, v0);
}

static const int Unk_ov12_0223A118[][2] = {
    { ((20 * 0xffff) / 360), 0x3 },
    { ((15 * 0xffff) / 360), 0x3 },
    { ((10 * 0xffff) / 360), 0x2 },
    { ((5 * 0xffff) / 360), 0x2 },
    { ((0 * 0xffff) / 360), 0x1 }
};

static void ov12_0222C7E0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222C7E0 *v0 = (UnkStruct_ov12_0222C7E0 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0: {
        int v1;
        int v2;

        if (v0->unk_00.unk_01 == 0) {
            v1 = -Unk_ov12_0223A118[v0->unk_00.unk_02][0];
            v2 = +Unk_ov12_0223A118[v0->unk_00.unk_02][0];
        } else {
            v1 = +Unk_ov12_0223A118[v0->unk_00.unk_02][0];
            v2 = -Unk_ov12_0223A118[v0->unk_00.unk_02][0];
        }

        ov12_02225D50(&v0->unk_5C, v1, v2, Unk_ov12_0223A118[v0->unk_00.unk_02][1]);

        if (v0->unk_00.unk_01 == 1) {
            v0->unk_00.unk_02++;
        }

        v0->unk_00.unk_01 ^= 1;
    }
        v0->unk_00.unk_00++;
    case 1:
        if (ov12_02225DA0(&v0->unk_5C) == 1) {
            PokemonSprite_SetAttribute(v0->unk_28[0], MON_SPRITE_ROTATION_Z, (u16)v0->unk_5C.unk_00);
        } else {
            if (v0->unk_00.unk_02 >= 5) {
                v0->unk_00.unk_00++;
            } else {
                v0->unk_00.unk_00--;
            }
        }
        break;
    default:
        PokemonSprite_SetAttribute(v0->unk_28[0], MON_SPRITE_ROTATION_Z, 0);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

static void ov12_0222C884(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222C7E0 *v0 = (UnkStruct_ov12_0222C7E0 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        ov12_02226108(&v0->unk_38, v0->unk_1C.unk_00, v0->unk_1C.unk_02, v0->unk_1C.unk_04, v0->unk_1C.unk_06);
        v0->unk_00.unk_00++;
        break;
    case 1: {
        UnkStruct_ov12_02235350 v1;

        ov12_02235918(v0->unk_28[1], &v1);

        if (ov12_0222619C(&v0->unk_38, v1.unk_00, v1.unk_02, v0->unk_28[1]) == 0) {
            v0->unk_00.unk_00++;
        }
    } break;
    default:
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222C8F8(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222C7E0 *v0;
    int v1 = 0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222C7E0));
    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_28[0] = ov12_022232FC(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04));
    v0->unk_28[1] = ov12_022232FC(v0->unk_00.unk_04, ov12_02220248(v0->unk_00.unk_04));

    PokemonSprite_SetAttribute(v0->unk_28[0], MON_SPRITE_Y_PIVOT, 100);

    v1 = ov12_02220280(param0, 0);

    v0->unk_1C.unk_00 = ov12_02220280(param0, 1);
    v0->unk_1C.unk_02 = ov12_02220280(param0, 2);
    v0->unk_1C.unk_04 = ov12_02220280(param0, 3);
    v0->unk_1C.unk_06 = ov12_02220280(param0, 4);
    v0->unk_1C.unk_08 = ov12_02220280(param0, 5);

    if (v1 == 0) {
        ov12_022201E8(v0->unk_00.unk_04, ov12_0222C7E0, v0);
    } else {
        ov12_022201E8(v0->unk_00.unk_04, ov12_0222C884, v0);
    }
}

static void ov12_0222C994(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222C994 *v1 = (UnkStruct_ov12_0222C994 *)param1;

    switch (v1->unk_00.unk_00) {
    case 0:
        ov12_02226108(&v1->unk_4C, 2 + v1->unk_48, v1->unk_48, 0, 10);
        v1->unk_00.unk_00++;
        break;
    case 1:
        if (ov12_02226138(&v1->unk_4C) == 0) {
            v1->unk_00.unk_00++;
        } else {
            for (v0 = 0; v0 < 4; v0++) {
                if (v1->unk_38[v0] == NULL) {
                    continue;
                }

                PokemonSprite_SetAttribute(v1->unk_38[v0], MON_SPRITE_X_CENTER, v1->unk_28[v0].unk_00 + v1->unk_4C.unk_00);
            }

            Bg_SetOffset(v1->unk_00.unk_14, 3, 0, v1->unk_4C.unk_00);
            Bg_SetOffset(v1->unk_00.unk_14, 3, 3, v1->unk_4C.unk_02);
        }
        break;
    default:
        ov12_02220220(v1->unk_00.unk_04, param0);
        Heap_FreeToHeap(v1);
        break;
    }
}

void ov12_0222CA2C(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222C994 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222C994));
    int v1;

    ov12_0223595C(param0, &v0->unk_00);

    {
        int v2 = ov12_02220540(v0->unk_00.unk_04, 1);

        switch (v2) {
        case 150:
            v0->unk_48 = 6;
            break;
        case 110:
            v0->unk_48 = 5;
            break;
        case 90:
            v0->unk_48 = 4;
            break;
        case 70:
            v0->unk_48 = 3;
            break;
        case 50:
            v0->unk_48 = 2;
            break;
        case 30:
            v0->unk_48 = 1;
            break;
        default:
            v0->unk_48 = 0;
            break;
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_38[v1] = ov12_022232FC(v0->unk_00.unk_04, v1);

        if (v0->unk_38[v1] == NULL) {
            continue;
        }

        ov12_02235918(v0->unk_38[v1], &v0->unk_28[v1]);
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222C994, v0);
}

static void ov12_0222CACC(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222CACC *v1 = (UnkStruct_ov12_0222CACC *)param1;

    switch (v1->unk_00.unk_00) {
    case 0:
        ov12_02226108(&v1->unk_40[0], 20, 0, 0, 10);
        ov12_02226108(&v1->unk_40[1], 2, 0, 0, 10);
        v1->unk_00.unk_00++;
        break;
    case 1:
        if (ov12_02226138(&v1->unk_40[0]) == 0) {
            v1->unk_00.unk_00++;
        } else {
            ManagedSprite_SetPositionXY(v1->unk_38[0], +v1->unk_28[1].unk_00 + v1->unk_40[0].unk_00, v1->unk_28[1].unk_02 + v1->unk_40[0].unk_02);
            ManagedSprite_SetPositionXY(v1->unk_38[1], -v1->unk_28[1].unk_00 + v1->unk_40[0].unk_00, v1->unk_28[1].unk_02 + v1->unk_40[0].unk_02);
            ManagedSprite_TickFrame(v1->unk_38[0]);
            ManagedSprite_TickFrame(v1->unk_38[1]);
        }

        SpriteSystem_DrawSprites(v1->unk_00.unk_0C);
        break;
    default:
        ov12_02220220(v1->unk_00.unk_04, param0);
        Heap_FreeToHeap(v1);
        break;
    }
}

void ov12_0222CB90(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222CACC *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222CACC));
    int v1;

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_38[0] = ov12_022202C0(v0->unk_00.unk_04, 0);
    v0->unk_38[1] = ov12_022202C0(v0->unk_00.unk_04, 1);
    v0->unk_30[0] = ov12_022232FC(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04));
    v0->unk_30[1] = ov12_022232FC(v0->unk_00.unk_04, ov12_02220248(v0->unk_00.unk_04));

    ov12_02235918(v0->unk_30[0], &v0->unk_28[0]);
    ov12_02235918(v0->unk_30[1], &v0->unk_28[1]);
    ov12_022201E8(v0->unk_00.unk_04, ov12_0222CACC, v0);
}

static void ov12_0222CBFC(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222CBFC *v1 = (UnkStruct_ov12_0222CBFC *)param1;

    if (ov12_02225D2C(&v1->unk_8C[0], &v1->unk_8C[1], v1->unk_38) == 0) {
        Sprite_DeleteAndFreeResources(v1->unk_38);
        ov12_02220220(v1->unk_10.unk_04, param0);
        ov12_02235E80(v1);
        (v1) = NULL;
        return;
    }

    if (ov12_02225DA0(&v1->unk_D4) == 1) {
        ManagedSprite_SetAffineZRotation(v1->unk_38, v1->unk_D4.unk_00);
    }

    ManagedSprite_TickFrame(v1->unk_38);
    SpriteSystem_DrawSprites(v1->unk_10.unk_10);
}

void ov12_0222CC54(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    int v0;
    int v1;
    UnkStruct_ov12_0222CBFC *v2 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222CBFC));
    ov12_0223595C(param0, &v2->unk_10);

    v2->unk_0C.unk_00 = ov12_02220280(param0, 0);
    v2->unk_0C.unk_02 = ov12_02220280(param0, 1);
    v2->unk_04 = ov12_02220280(param0, 2);
    v2->unk_08 = ov12_02220280(param0, 3);

    v1 = ov12_02225964(param0, ov12_02220240(param0));
    v2->unk_38 = param3;

    ManagedSprite_SetAffineOverwriteMode(v2->unk_38, AFFINE_OVERWRITE_MODE_DOUBLE);

    v2->unk_3C[0].unk_08 = ov12_022232FC(param0, ov12_02220240(param0));
    v2->unk_3C[1].unk_08 = ov12_022232FC(param0, ov12_02220248(param0));

    ov12_02235918(v2->unk_3C[0].unk_08, &v2->unk_3C[0].unk_04);
    ov12_02235918(v2->unk_3C[1].unk_08, &v2->unk_3C[1].unk_04);
    ov12_02225C98(&v2->unk_8C[0], &v2->unk_8C[1], v2->unk_3C[0].unk_04.unk_00, v2->unk_3C[1].unk_04.unk_00 + (v2->unk_0C.unk_00 * v1), v2->unk_3C[0].unk_04.unk_02, v2->unk_3C[1].unk_04.unk_02 + (v2->unk_0C.unk_02 * v1), v2->unk_04, v2->unk_08 * FX32_ONE);

    if ((ov12_022232B8(param0, ov12_02220240(param0)) == 4) && (ov12_022232B8(param0, ov12_02220248(param0)) == 2)) {
        v1 *= -1;
    }

    if ((ov12_022232B8(param0, ov12_02220240(param0)) == 5) && (ov12_022232B8(param0, ov12_02220248(param0)) == 3)) {
        v1 *= -1;
    }

    if (v1 > 0) {
        ov12_02225D50(&v2->unk_D4, ((20 * 0xffff) / 360) * v1, ((130 * 0xffff) / 360) * v1, 10);
    } else {
        ov12_02225D50(&v2->unk_D4, ((90 * 0xffff) / 360) * v1, ((130 * 0xffff) / 360) * v1, 10);
    }

    ManagedSprite_SetAffineZRotation(v2->unk_38, v2->unk_D4.unk_00);
    ov12_02225D2C(&v2->unk_8C[0], &v2->unk_8C[1], v2->unk_38);

    ManagedSprite_TickFrame(v2->unk_38);
    ov12_022201E8(v2->unk_10.unk_04, ov12_0222CBFC, v2);
}

static void ov12_0222CDF0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222CDF0 *v0 = (UnkStruct_ov12_0222CDF0 *)param1;

    switch (v0->unk_18.unk_00) {
    case 0:
        ov12_02225EF0(&v0->unk_9C, 100 * v0->unk_12, 60 * v0->unk_12, 5, 150, 100, 12);
        v0->unk_18.unk_00++;
        break;
    case 1:
        if (ov12_02225F6C(&v0->unk_9C) == 0) {
            ov12_02225EF0(&v0->unk_9C, 60 * v0->unk_12, 150 * v0->unk_12, 150, 10, 100, 12);
            v0->unk_18.unk_00++;
        } else {
            f32 v1, v2;
            s16 v3;

            ov12_02225FA4(&v0->unk_9C, &v1, &v2);
            ManagedSprite_SetAffineScale(v0->unk_40, v1, v2);
            v3 = ov12_02225FD4(v0->unk_14.unk_02, 16, v0->unk_9C.unk_04[4]);
            ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02 + v3);

            if (v0->unk_0C < v0->unk_10) {
                v0->unk_0C++;
            }

            if (v0->unk_0D > v0->unk_11) {
                v0->unk_0D--;
            }

            G2_ChangeBlendAlpha(v0->unk_0C, v0->unk_0D);
        }
        break;
    case 2:
        if (++v0->unk_04 >= 4) {
            v0->unk_18.unk_00++;
        }
        break;
    case 3:
        if (ov12_02225F6C(&v0->unk_9C) == 0) {
            v0->unk_18.unk_00++;
        } else {
            f32 v4, v5;
            s16 v6;

            ov12_02225FA4(&v0->unk_9C, &v4, &v5);
            ManagedSprite_SetAffineScale(v0->unk_40, v4, v5);
            v6 = ov12_02225FD4(v0->unk_14.unk_02, 16, v0->unk_9C.unk_04[4]);
            ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02 + v6);

            if (v0->unk_0C > v0->unk_0E) {
                v0->unk_0C--;
            }

            if (v0->unk_0D < v0->unk_0F) {
                v0->unk_0D++;
            }

            G2_ChangeBlendAlpha(v0->unk_0C, v0->unk_0D);
        }
        break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_44[0]);
        Sprite_DeleteAndFreeResources(v0->unk_44[1]);
        ov12_02220220(v0->unk_18.unk_04, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    }

    ManagedSprite_TickFrame(v0->unk_40);
    SpriteSystem_DrawSprites(v0->unk_18.unk_10);
}

void ov12_0222CFA0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222CDF0 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222CDF0));

    ov12_0223595C(param0, &v0->unk_18);

    v0->unk_44[0] = ov12_02220298(param0, 0);
    v0->unk_44[1] = ov12_02220298(param0, 1);

    ov12_02235780(v0->unk_18.unk_04, 0xffffffff, 0xffffffff);

    if (ov12_02220280(param0, 0) == 0) {
        v0->unk_0C = 0;
        v0->unk_0D = 31;
        v0->unk_0E = 0;
        v0->unk_0F = 31;
        v0->unk_10 = 31;
        v0->unk_11 = 4;
    } else {
        v0->unk_0C = 0;
        v0->unk_0D = 31;
        v0->unk_0E = 0;
        v0->unk_0F = 31;
        v0->unk_10 = 31;
        v0->unk_11 = 4;
    }

    if (ov12_0221FDD4(param0) == 1) {
        v0->unk_40 = v0->unk_44[0];
        ManagedSprite_SetDrawFlag(v0->unk_44[1], 0);
        ManagedSprite_SetAnim(v0->unk_40, 0);
        v0->unk_14.unk_00 = 255 - 76;
        v0->unk_14.unk_02 = 120;
        ManagedSprite_SetExplicitPriority(v0->unk_40, ov12_0222339C(param0) + 1);
        v0->unk_12 = -1;
    } else {
        if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4) {
            v0->unk_40 = v0->unk_44[1];
            ManagedSprite_SetDrawFlag(v0->unk_44[0], 0);
            ManagedSprite_SetAnim(v0->unk_40, 1);
            v0->unk_14.unk_00 = 144;
            v0->unk_14.unk_02 = 64;
        } else {
            v0->unk_40 = v0->unk_44[0];
            ManagedSprite_SetDrawFlag(v0->unk_44[1], 0);
            ManagedSprite_SetAnim(v0->unk_40, 0);
            v0->unk_14.unk_00 = 76;
            v0->unk_14.unk_02 = 120;
            ManagedSprite_SetExplicitPriority(v0->unk_40, ov12_0222339C(param0) + 1);
        }

        v0->unk_12 = +1;
    }

    ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_40, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(v0->unk_40, GX_OAM_MODE_XLU);

    {
        f32 v1, v2;
        s16 v3;

        ov12_02225EF0(&v0->unk_9C, 100 * v0->unk_12, 100 * v0->unk_12, 100, 5, 100, 1);
        ov12_02225F6C(&v0->unk_9C);

        ov12_02225FA4(&v0->unk_9C, &v1, &v2);
        ManagedSprite_SetAffineScale(v0->unk_40, v1, v2);

        v3 = ov12_02225FD4(v0->unk_14.unk_02, 16, v0->unk_9C.unk_04[4]);
        ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02 + v3);
    }

    ov12_022201E8(v0->unk_18.unk_04, ov12_0222CDF0, v0);
}

static const u8 Unk_ov12_0223A0D0[][5] = {
    { 0x64, 0x64, 0x64, 0x46, 0x8 },
    { 0x64, 0x64, 0x46, 0x78, 0x3 },
    { 0x64, 0x64, 0x78, 0x64, 0x3 }
};

static void ov12_0222D128(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222D128 *v1 = (UnkStruct_ov12_0222D128 *)param1;

    switch (v1->unk_00) {
    case 0:
        ov12_02225EF0(&v1->unk_CC, Unk_ov12_0223A0D0[v1->unk_0C][0], Unk_ov12_0223A0D0[v1->unk_0C][1], Unk_ov12_0223A0D0[v1->unk_0C][2], Unk_ov12_0223A0D0[v1->unk_0C][3], 100, Unk_ov12_0223A0D0[v1->unk_0C][4]);
        v1->unk_0C++;
        v1->unk_00++;
        break;
    case 1:
        if (ov12_02225F6C(&v1->unk_CC) == 1) {
            PokemonSprite_SetAttribute(v1->unk_1C, MON_SPRITE_SCALE_X, v1->unk_CC.unk_00);
            PokemonSprite_SetAttribute(v1->unk_1C, MON_SPRITE_SCALE_Y, v1->unk_CC.unk_02);
            {
                s16 v2 = ov12_02225FD4(v1->unk_20, v1->unk_24, v1->unk_CC.unk_04[4]);
                PokemonSprite_SetAttribute(v1->unk_1C, MON_SPRITE_Y_CENTER, v1->unk_20 + v2);
            }
        } else {
            if (v1->unk_0C >= 3) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }
        }
        break;
    case 2:
        if ((++v1->unk_01) >= 1) {
            v1->unk_01 = 0;
            v1->unk_0C = 0;
            v1->unk_00++;
        }
        break;
    case 3: {
        s16 v3, v4;

        ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v3, &v4);

        if (v4 <= ((40 - 16 + 20 + 10) + 50)) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[0].unk_00, 0, 2);
            ManagedSprite_OffsetPositionXY(v1->unk_30[1].unk_00, 0, 2);
        } else {
            v1->unk_00++;
        }
    } break;
    case 4: {
        s16 v5, v6;

        ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v5, &v6);

        if (v6 <= ((40 - 16 + 20 + 10) + 50)) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[0].unk_00, 0, 2);
            ManagedSprite_OffsetPositionXY(v1->unk_30[1].unk_00, 0, 2);
        } else {
            G2_ChangeBlendAlpha(16, 0);
            v1->unk_00++;
        }
    }
        v1->unk_01++;

        ov12_022267A8(&v1->unk_04, 16, +16);
        ov12_022267A8(&v1->unk_08, 0, -16);

        G2_ChangeBlendAlpha(v1->unk_04, v1->unk_08);

        if (v1->unk_01 == 10) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[0].unk_00, 0, 16);
        }

        if (v1->unk_01 == 12) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[1].unk_00, 0, 16);
        }
        break;
    case 5:
        if ((++v1->unk_01) < 1) {
            break;
        }

        v1->unk_01 = 0;

        {
            s16 v7, v8, v9, v10;

            ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v7, &v8);
            ManagedSprite_GetPositionXY(v1->unk_30[1].unk_00, &v9, &v10);

            ov12_02226728(v7, v8, v9, v10, &v1->unk_C8, &v1->unk_CA);
            ov12_02226744(v7, v8, v1->unk_C8, v1->unk_CA, &v1->unk_2C);
            ov12_0222676C(v7, v8, v1->unk_C8, v1->unk_CA, &v1->unk_28);

            v1->unk_2C = (40 * FX32_ONE);
        }
        v1->unk_00++;
        break;

    case 6: {
        s16 v11, v12, v13, v14;
        s8 v15[][2] = {
            { +1, -1 },
            { -1, +1 },
            { +1, -1 },
            { +1, -1 },
            { +1, -1 },
        };

        ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v11, &v12);
        ManagedSprite_GetPositionXY(v1->unk_30[1].unk_00, &v13, &v14);

        ov12_02225C98(&v1->unk_30[0].unk_04[0], &v1->unk_30[0].unk_04[1], v11, v13, v12, v14, 10, v1->unk_2C * v15[v1->unk_0C][0]);
        ov12_02225C98(&v1->unk_30[1].unk_04[0], &v1->unk_30[1].unk_04[1], v13, v11, v14, v12, 10, v1->unk_2C * v15[v1->unk_0C][1]);
    }
        v1->unk_0C++;
        v1->unk_00++;
        break;
    case 7: {
        u8 v16 = 0;

        if (ov12_02225D2C(&v1->unk_30[0].unk_04[0], &v1->unk_30[0].unk_04[1], v1->unk_30[0].unk_00) == 0) {
            v16++;
        }

        if (ov12_02225D2C(&v1->unk_30[1].unk_04[0], &v1->unk_30[1].unk_04[1], v1->unk_30[1].unk_00) == 0) {
            v16++;
        }

        if (v16 == 2) {
            if (v1->unk_0C == 5) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }
        }
    } break;
    case 8: {
        int v17 = 0;

        if (ov12_022267A8(&v1->unk_04, 0, -2) == 1) {
            v17++;
        }

        if (ov12_022267A8(&v1->unk_08, 16, +2) == 1) {
            v17++;
        }

        G2_ChangeBlendAlpha(v1->unk_04, v1->unk_08);

        if (v17 == 2) {
            v1->unk_00++;
        }
    } break;
    default:
        for (v0 = 0; v0 < ov12_02220280(v1->unk_10, 0); v0++) {
            Sprite_DeleteAndFreeResources(v1->unk_30[v0].unk_00);
        }

        ov12_02220220(v1->unk_10, param0);
        Heap_FreeToHeap(v1);
        return;
    }

    {
        s16 v18, v19;

        for (v0 = 0; v0 < ov12_02220280(v1->unk_10, 0); v0++) {
            ManagedSprite_GetPositionXY(v1->unk_30[v0].unk_00, &v18, &v19);

            if (v19 < 80) {
                ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, ov12_0222339C(v1->unk_10));
            } else {
                if (v18 > 128) {
                    ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, ov12_0222339C(v1->unk_10));
                } else {
                    ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, ov12_0222339C(v1->unk_10) + 1);
                }
            }
        }
    }

    if (v1->unk_00 < 4) {
        return;
    }

    for (v0 = 0; v0 < ov12_02220280(v1->unk_10, 0); v0++) {
        ManagedSprite_TickFrame(v1->unk_30[v0].unk_00);
    }

    SpriteSystem_DrawSprites(v1->unk_18);
}

void ov12_0222D56C(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    int v0;
    UnkStruct_ov12_0222D128 *v1;
    SpriteTemplate v2;

    v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222D128));

    v1->unk_00 = 0;
    v1->unk_01 = 0;
    v1->unk_10 = param0;
    v1->unk_18 = param2;
    v1->unk_14 = param1;
    v1->unk_04 = 0;
    v1->unk_08 = 16;
    v1->unk_1C = ov12_022232FC(v1->unk_10, ov12_02220240(v1->unk_10));
    v1->unk_20 = PokemonSprite_GetAttribute(v1->unk_1C, MON_SPRITE_Y_CENTER);
    v1->unk_24 = ov12_02223354(v1->unk_10, ov12_02220240(v1->unk_10));

    ov12_022357BC(v1->unk_10, (1 << ov12_022233EC(param0, 2)) | (1 << ov12_022233EC(param0, 1)) | GX_WND_PLANEMASK_BG0, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(v1->unk_04, v1->unk_08);

    v2 = ov12_0222329C(param0);
    v1->unk_30[0].unk_00 = param3;

    {
        for (v0 = 1; v0 < ov12_02220280(v1->unk_10, 0); v0++) {
            v1->unk_30[v0].unk_00 = SpriteSystem_NewSprite(v1->unk_14, v1->unk_18, &v2);
        }
    }

    for (v0 = 0; v0 < ov12_02220280(v1->unk_10, 0); v0++) {
        ManagedSprite_SetExplicitOamMode(v1->unk_30[v0].unk_00, GX_OAM_MODE_XLU);
        ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, ov12_0222339C(v1->unk_10) + 1);
    }

    if (ov12_0221FDD4(param0) == 1) {
        ManagedSprite_SetPositionXY(v1->unk_30[0].unk_00, 180 - 20, (40 - 16 + 20 + 10));
        ManagedSprite_SetPositionXY(v1->unk_30[1].unk_00, 100 - 20, (25 - 16 + 20 + 10));
    } else {
        ManagedSprite_SetPositionXY(v1->unk_30[0].unk_00, 100, (40 - 16 + 20 + 10));
        ManagedSprite_SetPositionXY(v1->unk_30[1].unk_00, 180, (25 - 16 + 20 + 10));
    }

    ov12_022201E8(v1->unk_10, ov12_0222D128, v1);
}
