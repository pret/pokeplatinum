#include "overlay012/ov12_0222E91C.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_0222D6B0.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_022267D4_decl.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay012/struct_ov12_02235998.h"
#include "overlay012/struct_ov12_022380DC.h"

#include "bg_window.h"
#include "heap.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    ManagedSprite *unk_30;
    UnkStruct_ov12_02225F6C unk_34;
    UnkStruct_ov12_02225F6C unk_58;
    UnkStruct_ov12_02225F6C unk_7C;
    u8 unk_A0;
    u8 unk_A1;
    u8 unk_A2;
    u8 unk_A3;
    s16 unk_A4;
} UnkStruct_ov12_0222E91C;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    s16 unk_1C;
    s16 unk_1E[8];
    ManagedSprite *unk_30[8];
    UnkStruct_ov12_02225F6C unk_50;
} UnkStruct_ov12_0222EC18;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    ManagedSprite *unk_1C[3];
    int unk_28;
    f32 unk_2C;
    f32 unk_30;
    u8 unk_34;
    u8 unk_35;
    s8 unk_36;
    UnkStruct_ov12_022267D4 *unk_38[2];
} UnkStruct_ov12_0222EE50;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_02235998 unk_1C;
    UnkStruct_ov12_02225F6C unk_30;
    s16 unk_54;
    int unk_58;
    UnkStruct_ov12_02235350 unk_5C[2];
    int unk_64;
    int unk_68;
    int unk_6C[3];
    int unk_78[3];
    int unk_84[3];
} UnkStruct_ov12_0222F208;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    PokemonSprite *unk_1C;
    UnkStruct_ov12_0223595C unk_20;
    UnkStruct_ov12_02235998 unk_3C;
} UnkStruct_ov12_0222F464;

static void ov12_0222E91C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222E91C *v0 = (UnkStruct_ov12_0222E91C *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if (v0->unk_A0 == 0) {
            ov12_02225BC8(&v0->unk_34, v0->unk_1C.unk_04.unk_00, v0->unk_1C.unk_04.unk_00 + 48, v0->unk_1C.unk_04.unk_02, v0->unk_1C.unk_04.unk_02, 3);
            ov12_02225BC8(&v0->unk_58, v0->unk_1C.unk_04.unk_00, v0->unk_1C.unk_04.unk_00 + 48, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, 6);
            ov12_02225BC8(&v0->unk_7C, v0->unk_1C.unk_04.unk_00, v0->unk_1C.unk_04.unk_00 + 48, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, 8);
        } else {
            ov12_02225BC8(&v0->unk_34, v0->unk_1C.unk_04.unk_00 + 48, v0->unk_1C.unk_04.unk_00, v0->unk_1C.unk_04.unk_02, v0->unk_1C.unk_04.unk_02, 3);
            ov12_02225BC8(&v0->unk_58, v0->unk_1C.unk_04.unk_00 + 48, v0->unk_1C.unk_04.unk_00, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, 6);
            ov12_02225BC8(&v0->unk_7C, v0->unk_1C.unk_04.unk_00 + 48, v0->unk_1C.unk_04.unk_00, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, v0->unk_1C.unk_04.unk_02 + v0->unk_A4, 9);
        }

        v0->unk_A0++;
        v0->unk_00.unk_00++;
        break;
    case 1: {
        int v1 = 0;

        if (ov12_02225C50(&v0->unk_58, v0->unk_1C.unk_0C) == 0) {
            v1++;
        }

        if (ov12_02225C74(&v0->unk_34, v0->unk_1C.unk_08) == 0) {
            v1++;
        }

        if (ov12_02225C50(&v0->unk_7C, v0->unk_30) == 0) {
            v1++;
        }

        if (v1 >= 3) {
            if (v0->unk_A0 == 1) {
                v0->unk_00.unk_00--;
            } else {
                v0->unk_00.unk_00++;
            }
        }
    } break;
    default:
        ov12_02220220(v0->unk_00.unk_04, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C.unk_0C);
    SpriteSystem_DrawSprites(v0->unk_00.unk_0C);
}

void ov12_0222EAA0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222E91C *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222E91C));

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_A1 = 0;
    v0->unk_A2 = 8;
    v0->unk_A3 = 8;

    ov12_02235780(v0->unk_00.unk_04, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(v0->unk_A2, v0->unk_A3);

    v0->unk_1C.unk_08 = ov12_022232FC(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04));
    v0->unk_1C.unk_04.unk_00 = PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_X_CENTER);
    v0->unk_1C.unk_04.unk_02 = PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Y_CENTER);
    v0->unk_1C.unk_0C = ov12_022202C0(v0->unk_00.unk_04, 0);
    v0->unk_30 = ov12_022202C0(v0->unk_00.unk_04, 1);
    v0->unk_A4 = -PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_SHADOW_HEIGHT);

    {
        ManagedSprite *v1;
        int v2;
        int v3 = ov12_02223334(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04));
        int v4 = ov12_02223344(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04));

        v1 = v0->unk_1C.unk_0C;
        ManagedSprite_SetExplicitPriority(v1, ov12_0222339C(v0->unk_00.unk_04) + 1);
        v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v1->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_00.unk_04), v4, v3, ov12_0221FDE4(v0->unk_00.unk_04), 2, 0x20, v2 * 16, 196, 196, 196);
        ManagedSprite_SetExplicitOamMode(v1, GX_OAM_MODE_XLU);

        v1 = v0->unk_30;
        ManagedSprite_SetExplicitPriority(v1, ov12_0222339C(v0->unk_00.unk_04) + 1);
        v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v1->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStartWithTint(ov12_0222332C(v0->unk_00.unk_04), v4, v3, ov12_0221FDE4(v0->unk_00.unk_04), 2, 0x20, v2 * 16, 196, 196, 196);
        ManagedSprite_SetExplicitOamMode(v1, GX_OAM_MODE_XLU);
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222E91C, v0);
}

static void ov12_0222EC18(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222EC18 *v0 = (UnkStruct_ov12_0222EC18 *)param1;

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_1E[v1]++;

            if (v0->unk_1E[v1] < 32) {
                continue;
            }

            ov12_0222E248(v0->unk_30[v1]);

            if (v0->unk_1E[v1] >= 160) {
                ManagedSprite_SetDrawFlag(v0->unk_30[v1], 0);
                v2++;
            }
        }

        if (v2 == 8) {
            for (v1 = 0; v1 < 8; v1++) {
                Sprite_DeleteAndFreeResources(v0->unk_30[v1]);
            }

            ov12_02220220(v0->unk_00.unk_04, param0);
            Heap_FreeToHeap(v0);
            return;
        }
    }

    SpriteSystem_DrawSprites(v0->unk_00.unk_10);
}

void ov12_0222EC90(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222EC18 *v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222EC18));
    v0->unk_1C = 10;

    ov12_0223595C(param0, &v0->unk_00);

    {
        int v1;

        {
            s16 v2, v3;
            SpriteTemplate v4;

            v4 = ov12_0222329C(v0->unk_00.unk_04);
            v0->unk_30[0] = param3;

            for (v1 = 1; v1 < 8; v1++) {
                v0->unk_30[v1] = SpriteSystem_NewSprite(v0->unk_00.unk_08, v0->unk_00.unk_10, &v4);

                if (v1 % 2) {
                    ManagedSprite_SetFlipMode(v0->unk_30[v1], 1);
                }
            }
        }

        {
            PokemonSprite *v5;
            s16 v6, v7, v8, v9;

            v5 = ov12_022232FC(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04));
            v6 = PokemonSprite_GetAttribute(v5, MON_SPRITE_X_CENTER);
            v8 = PokemonSprite_GetAttribute(v5, MON_SPRITE_Y_CENTER);
            v5 = ov12_022232FC(v0->unk_00.unk_04, ov12_02220248(v0->unk_00.unk_04));
            v7 = PokemonSprite_GetAttribute(v5, MON_SPRITE_X_CENTER);
            v9 = PokemonSprite_GetAttribute(v5, MON_SPRITE_Y_CENTER);

            ov12_02225BC8(&v0->unk_50, v6, v7, v8, v9, (8 + 2) * 2);
        }

        {
            BOOL v10;
            int v11 = 0;
            int v12 = 0;
            int v13 = 0;

            if (ov12_0223525C(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04)) == 0x4) {
                v13 = 1;
            }

            do {
                v10 = ov12_02225C14(&v0->unk_50);

                if (v11 % 2) {
                    if (v13 == 0) {
                        if (v12 < 8) {
                            ManagedSprite_SetPositionXY(v0->unk_30[v12], v0->unk_50.unk_00, v0->unk_50.unk_02);
                            v12++;
                        }
                    } else {
                        v13 = 0;
                    }
                }

                v11++;
            } while (v10 == 1);
        }

        {
            int v14 = ov12_02223428(v0->unk_00.unk_04, 1);
            int v15 = ov12_02223428(v0->unk_00.unk_04, 2);

            for (v1 = 0; v1 < 8; v1++) {
                v0->unk_1E[v1] = (8 - v1) * 4;

                if (ov12_0221FDD4(v0->unk_00.unk_04) == 0) {
                    if (ov12_0223525C(v0->unk_00.unk_04, ov12_02220240(v0->unk_00.unk_04)) == 0x3) {
                        if (v1 < 4) {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                        } else {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v14);
                        }
                    } else {
                        if (v1 >= 4) {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                        } else {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v14);
                        }
                    }

                    ManagedSprite_SetPriority(v0->unk_30[v1], 8 - v1);
                } else {
                    ManagedSprite_SetPriority(v0->unk_30[v1], v1);
                    ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                }
            }
        }
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222EC18, v0);
}

static void ov12_0222EE50(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222EE50 *v0 = param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        if (v0->unk_28 > 14) {
            v0->unk_30 -= 0.2f;
            v0->unk_2C += 0.2f;

            if (v0->unk_30 <= 0.2) {
                v0->unk_00.unk_00++;
                ManagedSprite_SetDrawFlag(v0->unk_1C[0], 0);
            } else {
                ManagedSprite_SetAffineScale(v0->unk_1C[0], v0->unk_2C * v0->unk_36, v0->unk_30);
            }
        } else {
            v0->unk_34++;
            v0->unk_35--;
            G2_ChangeBlendAlpha(v0->unk_34, v0->unk_35);
            v0->unk_28++;
        }
        break;
    case 1:
        if (ov12_02226848(v0->unk_38[1]) == 0) {
            int v1;

            ov12_02226858(v0->unk_38[0]);
            ov12_02226858(v0->unk_38[1]);

            v1 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_1C[2]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

            v0->unk_38[1] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v1 * 16, 16, 0, 1, 15, 0, 0xFFFFFF, 1100);
            v0->unk_00.unk_00++;
        }
        break;
    case 2:
    default:
        if (ov12_02226848(v0->unk_38[1]) == 0) {
            ManagedSprite_TickFrame(v0->unk_1C[1]);
            ov12_02226858(v0->unk_38[1]);
            ov12_02220220(v0->unk_00.unk_04, param0);
            Heap_FreeToHeap(v0);
            return;
        }
        break;
    }

    ManagedSprite_TickFrame(v0->unk_1C[0]);
    ManagedSprite_TickFrame(v0->unk_1C[1]);
    ManagedSprite_TickFrame(v0->unk_1C[2]);
    SpriteSystem_DrawSprites(v0->unk_00.unk_0C);
}

void ov12_0222EFB0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222EE50 *v0;
    int v1;
    s16 v2, v3;
    s16 v4;
    s16 v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222EE50));
    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_1C[0] = ov12_022202C0(v0->unk_00.unk_04, 0);
    v0->unk_1C[1] = ov12_022202C0(v0->unk_00.unk_04, 1);
    v0->unk_1C[2] = ov12_022202C0(v0->unk_00.unk_04, 2);
    v0->unk_28 = 0;

    {
        v4 = -32;
        v5 = ov12_02225964(param0, ov12_02220240(param0));
        v4 *= v5;

        v0->unk_2C = 1.0f;
        v0->unk_30 = 1.0f;

        if (ov12_022234A8(param0, 1) == 1) {
            v0->unk_36 = -1;
        } else {
            v0->unk_36 = +1;
        }

        ManagedSprite_GetPositionXY(v0->unk_1C[1], &v2, &v3);
        ManagedSprite_SetPositionXY(v0->unk_1C[0], v2 + v4, v3);
        ManagedSprite_SetAffineOverwriteMode(v0->unk_1C[0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineScale(v0->unk_1C[0], v0->unk_2C * v0->unk_36, v0->unk_30);
    }

    {
        int v6;

        v6 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_1C[0]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        v0->unk_38[0] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(param0), 2, v6 * 16, 16, 0, 1, 0, 15, 0xFFFFFF, 1100);

        v6 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_1C[2]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        v0->unk_38[1] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(param0), 2, v6 * 16, 16, 0, 1, 0, 15, 0xFFFFFF, 1100);
    }

    {
        u8 v7;
        u8 v8;
        u8 v9;
        PokemonSprite *v10;
        UnkStruct_ov12_02235350 v11;
        UnkStruct_ov12_02235350 v12;

        v8 = ov12_02220240(v0->unk_00.unk_04);
        v9 = ov12_02235254(v0->unk_00.unk_04, v8);

        ov12_02235350(v9, ov12_0221FDD4(v0->unk_00.unk_04), &v11);
        ManagedSprite_GetPositionXY(v0->unk_1C[0], &v12.unk_00, &v12.unk_02);

        {
            int v13;

            if (ov12_0223525C(v0->unk_00.unk_04, v8) == 0x3) {
                v13 = 0;
                ManagedSprite_SetExplicitPriority(v0->unk_1C[0], 1);
                ManagedSprite_SetPriority(v0->unk_1C[0], 0);
            } else {
                ManagedSprite_SetExplicitPriority(v0->unk_1C[0], 2);
                ManagedSprite_SetPriority(v0->unk_1C[0], 0);
                v13 = 2;
            }

            v8 = ov12_02220248(v0->unk_00.unk_04);
            v7 = LoadPokemonSpriteYOffset(ov12_022232D0(v0->unk_00.unk_04, v8), ov12_022232C4(v0->unk_00.unk_04, v8), v13, ov12_022232E0(v0->unk_00.unk_04, v8), ov12_022232EC(v0->unk_00.unk_04, v8));
        }

        ManagedSprite_SetPositionXY(v0->unk_1C[0], v12.unk_00, v11.unk_02 + v7);
    }

    ManagedSprite_SetDrawFlag(v0->unk_1C[0], 1);

    v0->unk_34 = 0;
    v0->unk_35 = 15;

    ov12_02235780(v0->unk_00.unk_04, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(v0->unk_34, v0->unk_35);

    {
        SysTask *v14;

        v14 = ov12_022201E8(v0->unk_00.unk_04, ov12_0222EE50, v0);
        ov12_0222EE50(v14, v0);
    }
}

static void ov12_0222F208(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222F208 *v0 = (UnkStruct_ov12_0222F208 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        ov12_02225BC8(&v0->unk_30, v0->unk_1C.unk_04.unk_00, v0->unk_6C[v0->unk_68], v0->unk_78[v0->unk_68], v0->unk_78[v0->unk_68], 15);
        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Z_CENTER, v0->unk_84[v0->unk_68]);
        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 1);
        v0->unk_00.unk_00++;
    case 1:
        if (ov12_02225C14(&v0->unk_30) == 0) {
            v0->unk_68++;

            if (v0->unk_68 > 2) {
                v0->unk_00.unk_00++;
            } else {
                {
                    UnkStruct_ov12_022380DC v1;

                    if (v0->unk_58 == 0) {
                        ov12_02220590(v0->unk_00.unk_04, &v1, 3);

                        if (v0->unk_68 == 2) {
                            ov12_022382BC(&v1, ov12_0221FDE4(v0->unk_00.unk_04));
                        } else {
                            ov12_022380CC(&v1, ov12_0221FDE4(v0->unk_00.unk_04));
                        }
                    }
                }

                v0->unk_00.unk_00 = 0;
            }

            v0->unk_1C.unk_04.unk_00 = PokemonSprite_GetAttribute(v0->unk_1C.unk_08, MON_SPRITE_X_CENTER);
        }

        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_X_CENTER, v0->unk_30.unk_00);
        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_Y_CENTER, v0->unk_30.unk_02);
        break;
    default:
        PokemonSprite_SetAttribute(v0->unk_1C.unk_08, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
        ov12_02220220(v0->unk_00.unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222F2F8(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_0222F208 *v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222F208));
    ov12_0223595C(param0, &v1->unk_00);

    {
        int v2 = ov12_02220240(v1->unk_00.unk_04);

        ov12_022353AC(v1->unk_00.unk_04, ov12_02220240(v1->unk_00.unk_04), &v1->unk_5C[0]);
        ov12_022353AC(v1->unk_00.unk_04, ov12_02220248(v1->unk_00.unk_04), &v1->unk_5C[1]);

        if (ov12_0223525C(v1->unk_00.unk_04, v2) == 0x3) {
            v1->unk_54 = +1;
        } else {
            v1->unk_54 = -1;
        }
    }

    {
        int v3 = ov12_0223525C(v1->unk_00.unk_04, ov12_02220240(v1->unk_00.unk_04));
        int v4 = ov12_0223525C(v1->unk_00.unk_04, ov12_02220248(v1->unk_00.unk_04));

        if (v3 == v4) {
            v1->unk_58 = 1;
        } else {
            v1->unk_58 = 0;
        }
    }

    v1->unk_68 = 0;

    {
        int v5;
        ov12_02235998(param0, ov12_02220280(param0, 0), &(v1->unk_1C), &v5);
    }

    v0 = PokemonSprite_GetAttribute(v1->unk_1C.unk_08, MON_SPRITE_Y_CENTER) - v1->unk_5C[0].unk_02;

    if (v1->unk_54 > 0) {
        v1->unk_6C[0] = 255 + 80;
        v1->unk_6C[1] = 0 - 80;
        v1->unk_6C[2] = v1->unk_5C[0].unk_00;
        v1->unk_78[0] = v1->unk_5C[0].unk_02 + v0;
        v1->unk_78[1] = v1->unk_5C[1].unk_02 + v0;
        v1->unk_78[2] = v1->unk_5C[0].unk_02 + v0;
        v1->unk_84[0] = 0 + 10;
        v1->unk_84[1] = -0x280 - 10;
        v1->unk_84[2] = PokemonSprite_GetAttribute(v1->unk_1C.unk_08, MON_SPRITE_Z_CENTER);
    } else {
        v1->unk_6C[0] = 0 - 80;
        v1->unk_6C[1] = 255 + 80;
        v1->unk_6C[2] = v1->unk_5C[0].unk_00;
        v1->unk_78[0] = v1->unk_5C[0].unk_02 + v0;
        v1->unk_78[1] = v1->unk_5C[1].unk_02 + v0;
        v1->unk_78[2] = v1->unk_5C[0].unk_02 + v0;
        v1->unk_84[0] = -0x280 - 10;
        v1->unk_84[1] = 0 + 10;
        v1->unk_84[2] = PokemonSprite_GetAttribute(v1->unk_1C.unk_08, MON_SPRITE_Z_CENTER);
    }

    ov12_022201E8(v1->unk_00.unk_04, ov12_0222F208, v1);
}

static void ov12_0222F44C(PokemonSprite *param0, int param1, int param2, int param3, int param4)
{
    PokemonSprite_SetPartialDraw(param0, param1, 80 - param3, param2, param4);
}

static void ov12_0222F464(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222F464 *v0 = param1;

    switch (v0->unk_20.unk_00) {
    case 0:
        v0->unk_10 += 79;

        if (v0->unk_10 >= 80) {
            v0->unk_20.unk_00++;
            v0->unk_14 ^= 1;
            v0->unk_10 = 0;
        } else {
            if (v0->unk_14 == 0) {
                ov12_0222F44C(v0->unk_1C, 0, v0->unk_10, (v0->unk_00 + 2) * 2, 2);
            } else {
                ov12_0222F44C(v0->unk_1C, 80 - v0->unk_10, v0->unk_10, (v0->unk_00 + 2) * 2, 2);
            }
        }
        break;
    case 1:
        v0->unk_04 -= (2 / 2);
        v0->unk_0C += (2 / 2);
        G2_SetWnd0Position(v0->unk_08, v0->unk_04, v0->unk_08 + 80, v0->unk_0C);
        v0->unk_20.unk_00++;
        break;
    case 2:
        v0->unk_04 -= (2 / 2);
        v0->unk_0C += (2 / 2);
        G2_SetWnd0Position(v0->unk_08, v0->unk_04, v0->unk_08 + 80, v0->unk_0C);
        v0->unk_00++;

        if (v0->unk_00 > ((80 / 2) - 2)) {
            v0->unk_20.unk_00++;
        } else {
            v0->unk_20.unk_00 = 0;
        }
        break;
    case 3:
        PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_PARTIAL_DRAW, 0);
        v0->unk_20.unk_00++;
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWnd0Position(0, 0, 0, 0);
        ov12_02220220(v0->unk_20.unk_04, param0);
        PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_ALPHA, v0->unk_18);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222F5EC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_0222F464 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222F464));
    ov12_0223595C(param0, &v0->unk_20);

    v0->unk_1C = ov12_022232FC(param0, ov12_02220248(param0));
    v0->unk_00 = 0;

    {
        int v1;

        v1 = ov12_02235254(param0, ov12_02220248(param0));

        switch (v1) {
        case 3:
        case 4:
            Bg_SetPriority(BG_LAYER_MAIN_2, (ov12_0222339C(param0) - 1));
            break;
        }
    }

    {
        s16 v2, v3;

        v2 = PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_X_CENTER);
        v3 = PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER);
        v3 -= PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_SHADOW_HEIGHT);

        v0->unk_18 = PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_ALPHA);
        PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_ALPHA, 8);

        v0->unk_08 = v2 - 40;
        v0->unk_04 = v3 + 40;
        v0->unk_10 = 0;
        v0->unk_0C = v0->unk_04;
        v0->unk_14 = 0;

        GX_SetVisibleWnd(GX_WNDMASK_W0);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2_SetWnd0Position(v0->unk_08, v0->unk_04, v0->unk_08 + 80, v0->unk_0C);
    }

    ov12_022201E8(v0->unk_20.unk_04, ov12_0222F464, v0);
}
