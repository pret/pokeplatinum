#include "overlay012/ov12_0222F700.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226274.h"
#include "overlay012/struct_ov12_02226454.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_0222660C_decl.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "enums.h"
#include "heap.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    PokemonSprite *unk_08;
    UnkStruct_ov12_02225F6C unk_0C;
    ManagedSprite *unk_30[2];
    UnkStruct_ov12_02226274 unk_38;
    s16 unk_E8;
    s16 unk_EA;
    s16 unk_EC;
} UnkStruct_ov12_0222F700;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    s16 unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    AngleLerpContext unk_34;
    s16 unk_48;
    s16 unk_4A;
} UnkStruct_ov12_0222F888;

typedef struct {
    ManagedSprite *unk_00;
    UnkStruct_ov12_02225F6C unk_04;
    AngleLerpContext unk_28;
    s16 unk_3C;
    s16 unk_3E;
    s16 unk_40;
    int unk_44;
    BOOL unk_48;
} UnkStruct_ov12_0222FAFC;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    UnkStruct_ov12_0222FAFC unk_0C;
    UnkStruct_ov12_0222FAFC unk_58[2];
    int unk_EC;
    int unk_F0;
    int unk_F4;
    int unk_F8;
} UnkStruct_ov12_0222FC44;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    UnkStruct_ov12_02225F6C unk_34;
    ManagedSprite *unk_58;
    PokemonSprite *unk_5C;
    s16 unk_60;
    s16 unk_62;
    s16 unk_64;
    s16 unk_66;
} UnkStruct_ov12_0222FF80;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    int unk_08;
    PokemonSprite *unk_0C;
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16;
    UnkStruct_ov12_0222660C *unk_18;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02226454 unk_40;
} UnkStruct_ov12_02230194;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    int unk_08;
    int unk_0C;
    ManagedSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    AngleLerpContext unk_38;
    BOOL unk_4C;
} UnkStruct_ov12_02230540;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    PokemonSprite *unk_08;
    ManagedSprite *unk_0C;
    BOOL unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    s16 unk_38;
    s16 unk_3A;
    int unk_3C;
} UnkStruct_ov12_02230600;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_0222660C *unk_14;
    PaletteData *unk_18;
    UnkStruct_ov12_02226454 unk_1C;
    int unk_44;
    ManagedSprite *unk_48;
} UnkStruct_ov12_02230910;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    ManagedSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    AngleLerpContext unk_38;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02230BE0;

typedef struct {
    ManagedSprite *unk_00;
    UnkStruct_ov12_02225F6C unk_04;
    BOOL unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
} UnkStruct_ov12_02230E24;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    PokemonSprite *unk_18;
    s16 unk_1C;
    s16 unk_1E;
    UnkStruct_ov12_02225F6C unk_20;
    UnkStruct_ov12_02230E24 unk_44[4];
    int unk_124;
} UnkStruct_ov12_02230F3C;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    s16 unk_14;
    s16 unk_16;
    UnkStruct_ov12_02225F6C unk_18;
    s32 unk_3C;
    PokemonSprite *unk_40;
    s16 unk_44;
    s16 unk_46;
    ManagedSprite *unk_48;
    UnkStruct_ov12_02225F6C unk_4C;
    UnkStruct_ov12_02225F6C unk_70;
} UnkStruct_ov12_022310D4;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    int unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    ManagedSprite *unk_14;
    s16 unk_18;
    s16 unk_1A;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02226454 unk_40;
    s16 unk_68;
} UnkStruct_ov12_02231390;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    int unk_38;
    ManagedSprite *unk_3C;
    int unk_40;
    UnkStruct_ov12_02225F6C unk_44;
    UnkStruct_ov12_02225F6C unk_68;
    UnkStruct_ov12_02226454 unk_8C;
    s16 unk_B4;
    s16 unk_B6;
} UnkStruct_ov12_02231508;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    ManagedSprite *unk_14;
    UnkStruct_ov12_02225F6C unk_18;
    UnkStruct_ov12_02226454 unk_3C;
    s16 unk_64;
    s16 unk_66;
    int unk_68;
    int unk_6C;
} UnkStruct_ov12_02231760;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    PokemonSprite *unk_14[4];
    ManagedSprite *unk_24;
    UnkStruct_ov12_02225F6C unk_28;
    s16 unk_4C;
    s16 unk_4E;
    int unk_50;
    int unk_54;
    int unk_58;
} UnkStruct_ov12_022319AC;

typedef struct {
    int unk_00;
    BattleAnimSystem *unk_04;
    PokemonSprite *unk_08;
    s16 unk_0C;
    s16 unk_0E;
    AngleLerpContext unk_10;
    UnkStruct_ov12_02225F6C unk_24;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02231CD4;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    int unk_08;
    PokemonSprite *unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
} UnkStruct_ov12_02231F18;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    ManagedSprite *unk_14;
    UnkStruct_ov12_02225F6C unk_18;
    UnkStruct_ov12_02226454 unk_3C;
    int unk_64;
    int unk_68;
    int unk_6C;
    int unk_70;
    int unk_74;
    int unk_78;
    int unk_7C;
} UnkStruct_ov12_02232084;

typedef struct {
    int unk_00;
    BattleAnimSystem *unk_04;
    PokemonSprite *unk_08;
    s16 unk_0C;
    s16 unk_0E;
    UnkStruct_ov12_02225F6C unk_10;
    int unk_34;
} UnkStruct_ov12_022323E4;

typedef struct {
    int unk_00;
    BattleAnimSystem *unk_04;
    int unk_08;
    PokemonSprite *unk_0C;
    s16 unk_10;
    s16 unk_12;
    UnkStruct_ov12_02225F6C unk_14;
    PokemonSprite *unk_38;
    s16 unk_3C;
    s16 unk_3E;
    UnkStruct_ov12_02225F6C unk_40;
} UnkStruct_ov12_022324E0;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    PokemonSprite *unk_18;
    UnkStruct_ov12_02225F6C unk_1C;
    int unk_40;
    s16 unk_44;
    s16 unk_46;
    ManagedSprite *unk_48[6];
    int unk_60[6];
    int unk_78[6];
} UnkStruct_ov12_02232720;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225F6C unk_38;
    ManagedSprite *unk_5C;
    UnkStruct_ov12_02225F6C unk_60;
    int unk_84;
    s16 unk_88;
    s16 unk_8A;
} UnkStruct_ov12_02232B40;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    ManagedSprite *unk_18;
    ManagedSprite *unk_1C;
    ManagedSprite *unk_20;
    ManagedSprite *unk_24;
    UnkStruct_ov12_02225F6C unk_28;
    UnkStruct_ov12_02225F6C unk_4C;
    UnkStruct_ov12_02225F6C unk_70;
    int unk_94;
    int unk_98;
    UnkStruct_ov12_02226454 unk_9C;
    PaletteData *unk_C4;
    BOOL unk_C8;
    BOOL unk_CC;
} UnkStruct_ov12_02232D38;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    s16 unk_38;
    s16 unk_3A;
    ManagedSprite *unk_3C[3];
    UnkStruct_ov12_02226274 unk_48;
    UnkStruct_ov12_02225F6C unk_F8;
} UnkStruct_ov12_022332E8;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    ManagedSprite *unk_18[6];
    UnkStruct_ov12_02225F6C unk_30[6];
    UnkStruct_ov12_02226454 unk_108;
    s16 unk_130;
    s16 unk_132;
} UnkStruct_ov12_0223351C;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    ManagedSprite *unk_18[15];
    UnkStruct_ov12_02225F6C unk_54[15];
    int unk_270;
    int unk_274;
} UnkStruct_ov12_02233900;

typedef struct {
    BattleAnimSystem *unk_00;
    UnkStruct_ov12_02226504 *unk_04;
    int unk_08;
    PokemonSprite *unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    fx32 unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    u32 unk_30;
} UnkStruct_ov12_02233AA0;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02225F6C unk_0C;
} UnkStruct_ov12_02233DCC;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    ManagedSprite *unk_10;
    UnkStruct_ov12_02226454 unk_14;
} UnkStruct_ov12_02233F4C;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    PokemonSprite *unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225F6C unk_38;
    int unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
    int unk_6C;
    int unk_70;
    int unk_74;
} UnkStruct_ov12_02234044;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    UnkStruct_ov12_02225F6C unk_08;
    ManagedSprite *unk_2C;
} UnkStruct_ov12_02234290;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    PokemonSprite *unk_14;
    s16 unk_18;
    s16 unk_1A;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02225F6C unk_40;
} UnkStruct_ov12_022343A0;

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    s16 unk_14;
    s16 unk_16;
    UnkStruct_ov12_02225F6C unk_18;
    UnkStruct_ov12_02225F6C unk_3C;
} UnkStruct_ov12_02234528;

static void ov12_0222F700(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222F700 *v0 = param1;
    BOOL v1[3];
    int v2;

    v1[0] = ov12_02225BA0(&v0->unk_0C, v0->unk_E8, v0->unk_EA, v0->unk_08);
    v1[1] = ov12_02226274(&v0->unk_38);
    v1[2] = 0;

    SpriteSystem_DrawSprites(v0->unk_04);

    for (v2 = 0; v2 < 3; v2++) {
        if (v1[v2] == 1) {
            return;
        }
    }

    PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v0->unk_E8);
    PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER, v0->unk_EA + ((-8 * FX32_ONE) >> FX32_SHIFT));
    BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
    Heap_Free(v0);
}

void ov12_0222F770(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222F700 *v0;
    int v1;
    int v2;
    UnkStruct_ov12_02225F6C v3;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222F700));

    v0->unk_00 = param0;
    v0->unk_04 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_00);
    v0->unk_08 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_E8 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
    v0->unk_EA = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER);
    v0->unk_EC = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_EA -= (-8 * FX32_ONE) >> FX32_SHIFT;

    ov12_022263A4(&v0->unk_0C, 1, 8);
    ov12_022263A4(&v3, 1, 10);

    v2 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v0->unk_0C.unk_04[2] *= v2;
    v3.unk_04[2] *= v2;

    for (v1 = 0; v1 < 2; v1++) {
        v0->unk_30[v1] = BattleAnimSystem_GetPokemonSprite(v0->unk_00, v1);
        ManagedSprite_SetPriority(v0->unk_30[v1], 100);
        ManagedSprite_SetExplicitPriority(v0->unk_30[v1], 1);
        ManagedSprite_SetExplicitOamMode(v0->unk_30[v1], GX_OAM_MODE_XLU);
    }

    ov12_022261C4(&v0->unk_38, &v3, ov12_02225AE0, v0->unk_E8, v0->unk_EA - v0->unk_EC, 2, 2, 0, v0->unk_30[0], v0->unk_30[1], NULL, NULL);
    ov12_02235780(v0->unk_00, 0xffffffff, 0xffffffff);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0222F700, v0);
}

static void ov12_0222F888(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222F888 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        if (ov12_02225C14(&v0->unk_10)) {
            ov12_02225A18(&v0->unk_10, v0->unk_0C, v0->unk_48, v0->unk_4A);
        } else {
            ov12_02225BC8(&v0->unk_10, v0->unk_10.unk_00, 0, 0, 0, 2);
            v0->unk_04++;
        }
        break;
    case 1:
        if (AngleLerpContext_Update(&v0->unk_34)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_ROTATION_Z, v0->unk_34.angle);
        } else {
            AngleLerpContext_Init(&v0->unk_34, v0->unk_34.angle, 0, 4);
            v0->unk_04++;
            v0->unk_08 = 2;
        }
        break;
    case 2:
        v0->unk_08--;

        if (v0->unk_08 < 0) {
            v0->unk_04++;
        }
        break;
    case 3:
        if (ov12_02225C14(&v0->unk_10)) {
            ov12_02225A18(&v0->unk_10, v0->unk_0C, v0->unk_48, v0->unk_4A);
        } else {
            v0->unk_04++;
            v0->unk_08 = 32;
        }
        break;
    case 4:
        v0->unk_08--;

        if (v0->unk_08 < 0) {
            v0->unk_04++;
        }
        break;
    case 5:
        if (AngleLerpContext_Update(&v0->unk_34)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_ROTATION_Z, v0->unk_34.angle);
        } else {
            v0->unk_04++;
        }
        break;
    case 6:
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER, v0->unk_48);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_4A);
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_ROTATION_Z, 0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_0222F9E4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222F888 *v0;
    int v1;
    int v2;
    int v3;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222F700));

    v0->unk_00 = param0;
    v0->unk_04 = 0;
    v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_48 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER);
    v0->unk_4A = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);

    ov12_02225BC8(&v0->unk_10, 0, -32, 0, 0, 3);
    AngleLerpContext_Init(&v0->unk_34, 0, (20 * 0xffff) / 360, 8);

    v2 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v0->unk_10.unk_04[1] *= v2;
    v0->unk_34.data[1] *= v2;

    v3 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));

    {
        int v4 = BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(v0->unk_00));
        int v5 = BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetDefender(v0->unk_00));

        if ((v4 == 0x3) && (v5 == 0x3)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_PIVOT, (80 / 2) * -1);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_PIVOT, 80 / 2);
        } else if ((v4 == 0x4) && (v5 == 0x4)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_PIVOT, (80 / 2) * +1);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_PIVOT, 80 / 2);
        } else {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_PIVOT, (80 / 2) * v3);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_PIVOT, 80 / 2);
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0222F888, v0);
}

static void ov12_0222FAFC(UnkStruct_ov12_0222FAFC *param0, SpriteSystem *param1, SpriteManager *param2, const SpriteTemplate *param3, const UnkStruct_ov12_0222FAFC *param4)
{
    param0->unk_00 = SpriteSystem_NewSprite(param1, param2, param3);
    param0->unk_04 = param4->unk_04;
    param0->unk_28 = param4->unk_28;
    param0->unk_3C = param4->unk_3C;
    param0->unk_3E = param4->unk_3E;
    param0->unk_40 = param4->unk_40;
    param0->unk_44 = param4->unk_44;
    param0->unk_48 = 0;

    ManagedSprite_SetDrawFlag(param0->unk_00, 0);
    ManagedSprite_SetPriority(param0->unk_00, 100);
    ManagedSprite_SetExplicitPriority(param0->unk_00, 1);
}

static void ov12_0222FB6C(UnkStruct_ov12_0222FAFC *param0)
{
    Sprite_DeleteAndFreeResources(param0->unk_00);
}

static void ov12_0222FB78(UnkStruct_ov12_0222FAFC *param0, BOOL param1)
{
    ManagedSprite_SetDrawFlag(param0->unk_00, param1);
}

static BOOL ov12_0222FB84(UnkStruct_ov12_0222FAFC *param0)
{
    if (param0->unk_48 == 0) {
        return 1;
    }

    switch (param0->unk_44) {
    case 0:
    case 1:
        if (ov12_02225AE0(&param0->unk_04)) {
            AngleLerpContext_UpdateCos(&param0->unk_28);
            param0->unk_04.unk_04[5] = param0->unk_3C + param0->unk_28.angle;
            ManagedSprite_SetPositionXY(param0->unk_00, param0->unk_3E + param0->unk_04.unk_00, param0->unk_40 + param0->unk_04.unk_02);
        } else {
            if (param0->unk_44 < 1) {
                if (param0->unk_44 == 0) {
                    ov12_02225A8C(&param0->unk_04, param0->unk_04.unk_04[1], (180 * 0xffff) / 360, param0->unk_04.unk_04[1], (180 * 0xffff) / 360, param0->unk_04.unk_04[2], param0->unk_04.unk_04[4], (10 * 0xffff) / 360);
                }

                AngleLerpContext_InitCos(&param0->unk_28, (0 * 0xffff) / 360, (360 * 0xffff) / 360, -1 * FX32_ONE, param0->unk_04.unk_04[0]);
            }

            param0->unk_44++;
        }
        break;
    case 2:
        return 0;
    }

    return 1;
}

static void ov12_0222FC44(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222FC44 *v0 = param1;
    int v1;
    BOOL v2 = 0;
    BOOL v3;

    switch (v0->unk_EC) {
    case 0:
        ov12_0222FB84(&v0->unk_0C);
        v0->unk_EC++;
        break;
    case 1:
        v0->unk_F8 += 10;
        G2_ChangeBlendAlpha(v0->unk_F8 / 10, 31 - (v0->unk_F8 / 10));

        if (v0->unk_F8 >= 310) {
            ManagedSprite_SetExplicitOamMode(v0->unk_0C.unk_00, GX_OAM_MODE_NORMAL);

            v0->unk_EC++;
        }
        break;
    case 2:
        G2_ChangeBlendAlpha(0xffffffff, 0xffffffff);
        v0->unk_EC++;
        break;
    case 3:
        if (v0->unk_F0 <= 0) {
            v0->unk_58[v0->unk_F4].unk_48 = 1;
            ManagedSprite_SetDrawFlag(v0->unk_58[v0->unk_F4].unk_00, 1);
            v0->unk_F4++;
            v0->unk_F0 = 8;
        }

        if (v0->unk_F4 < 2) {
            v0->unk_F0--;
        }

        v2 = ov12_0222FB84(&v0->unk_0C);

        for (v1 = 0; v1 < 2; v1++) {
            v3 = ov12_0222FB84(&v0->unk_58[v1]);

            if (v3 == 0) {
                ov12_0222FB78(&v0->unk_58[v1], 0);
            }

            v2 |= v3;
        }

        if (v2 == 0) {
            v0->unk_EC++;
        }
        break;
    case 4:
        ManagedSprite_TickFrame(v0->unk_0C.unk_00);

        if (Sprite_IsAnimated(v0->unk_0C.unk_00->sprite) == 0) {
            ManagedSprite_SetExplicitOamMode(v0->unk_0C.unk_00, GX_OAM_MODE_XLU);
            v0->unk_EC++;
        }
        break;
    case 5:
        v0->unk_F8 -= 10;
        G2_ChangeBlendAlpha(v0->unk_F8 / 10, 31 - (v0->unk_F8 / 10));

        if (v0->unk_F8 <= 0) {
            v0->unk_EC++;
        }
        break;
    case 6:
        for (v1 = 0; v1 < 2; v1++) {
            ov12_0222FB6C(&v0->unk_58[v1]);
        }

        Sprite_DeleteAndFreeResources(v0->unk_0C.unk_00);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);

        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_0222FE30(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222FC44 *v0;
    SpriteTemplate v1;
    int v2;
    int v3;
    int v4;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222FC44));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_F0 = 8;
    v0->unk_F4 = 0;
    v0->unk_EC = 0;

    v3 = BattleAnimSystem_GetAttacker(param0);
    v4 = BattleAnimMath_GetRotationDirection(param0, v3);
    v4 *= (-32 * FX32_ONE);

    v0->unk_0C.unk_00 = param3;
    v0->unk_0C.unk_44 = 0;

    ov12_02225A8C(&v0->unk_0C.unk_04, (90 * 0xffff) / 360, (270 * 0xffff) / 360, (90 * 0xffff) / 360, (270 * 0xffff) / 360, v4, -8 * FX32_ONE, (10 * 0xffff) / 360);
    AngleLerpContext_InitCos(&v0->unk_0C.unk_28, (0 * 0xffff) / 360, (360 * 0xffff) / 360, -1 * FX32_ONE, v0->unk_0C.unk_04.unk_04[0]);

    v0->unk_0C.unk_3C = v0->unk_0C.unk_04.unk_04[5];
    v0->unk_0C.unk_48 = 1;
    v0->unk_0C.unk_3E = BattleAnimUtil_GetBattlerPos(param0, v3, 0);
    v0->unk_0C.unk_40 = BattleAnimUtil_GetBattlerPos(param0, v3, 1);

    ManagedSprite_SetPositionXY(v0->unk_0C.unk_00, v0->unk_0C.unk_3E, v0->unk_0C.unk_40);
    ManagedSprite_SetPriority(v0->unk_0C.unk_00, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_0C.unk_00, 1);

    v1 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00);
    v1.x = v0->unk_0C.unk_3E;
    v1.y = v0->unk_0C.unk_40;

    for (v2 = 0; v2 < 2; v2++) {
        ov12_0222FAFC(&v0->unk_58[v2], v0->unk_04, v0->unk_08, &v1, &v0->unk_0C);
    }

    v0->unk_F8 = 0;

    ov12_02235780(v0->unk_00, 0, 31);
    ManagedSprite_SetExplicitOamMode(v0->unk_0C.unk_00, GX_OAM_MODE_XLU);

    for (v2 = 0; v2 < 2; v2++) {
        ManagedSprite_SetExplicitOamMode(v0->unk_58[v2].unk_00, GX_OAM_MODE_XLU);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0222FC44, v0);
}

static void ov12_0222FF80(UnkStruct_ov12_0222FF80 *param0)
{
    f32 v0, v1;

    PokemonSprite_SetAttribute(param0->unk_5C, MON_SPRITE_X_CENTER, param0->unk_60 + param0->unk_10.unk_00);
    PokemonSprite_SetAttribute(param0->unk_5C, MON_SPRITE_Y_CENTER, param0->unk_62 + param0->unk_10.unk_02);
    ManagedSprite_SetPositionXY(param0->unk_58, param0->unk_60 + param0->unk_10.unk_00, param0->unk_62 + param0->unk_10.unk_02 - param0->unk_66);

    ov12_02225FA4(&param0->unk_34, &v0, &v1);
    v0 += (f32)(param0->unk_64 * (0.10f));
    ManagedSprite_SetAffineScale(param0->unk_58, v0, v1);

    param0->unk_64 *= -1;
}

static void ov12_02230018(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222FF80 *v0 = param1;
    BOOL v1;

    switch (v0->unk_08) {
    case 0:
        ov12_02226138(&v0->unk_10);
        v1 = ov12_02225F6C(&v0->unk_34);

        ov12_0222FF80(v0);

        if (v1 == 0) {
            ov12_02225EF0(&v0->unk_34, 12, 10, 15, 10, 10, 4);
            v0->unk_08++;
        }
        break;
    case 1:
        ov12_02226138(&v0->unk_10);
        v1 = ov12_02225F6C(&v0->unk_34);

        ov12_0222FF80(v0);

        if (v1 == 0) {
            PokemonSprite_SetAttribute(v0->unk_5C, MON_SPRITE_X_CENTER, v0->unk_60);
            PokemonSprite_SetAttribute(v0->unk_5C, MON_SPRITE_Y_CENTER, v0->unk_62);
            v0->unk_08++;
        }
        break;
    case 2:
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_04);
}

void ov12_022300C4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222FF80 *v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222FF80));

    v0->unk_00 = param0;
    v0->unk_04 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_00);
    v0->unk_08 = 0;
    v0->unk_0C = 0;
    v0->unk_5C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));
    v0->unk_60 = PokemonSprite_GetAttribute(v0->unk_5C, MON_SPRITE_X_CENTER);
    v0->unk_62 = PokemonSprite_GetAttribute(v0->unk_5C, MON_SPRITE_Y_CENTER);
    v0->unk_66 = PokemonSprite_GetAttribute(v0->unk_5C, MON_SPRITE_SHADOW_HEIGHT);

    ov12_02226108(&v0->unk_10, 2, 0, 1, 6);
    v0->unk_58 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 0);

    ManagedSprite_SetExplicitOamMode(v0->unk_58, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_58, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetPriority(v0->unk_58, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_58, 1);

    ov12_02225EF0(&v0->unk_34, 10, 12, 10, 15, 10, 7);
    v0->unk_64 = 1;
    ov12_02235780(v0->unk_00, 28, 15);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230018, v0);
}

static void ov12_02230194(UnkStruct_ov12_02230194 *param0, void *param1)
{
    u32 v0 = ((-param0->unk_12 & 0xffff) << 16) | (-param0->unk_10 & 0xffff);
    MI_CpuFill32(param1, v0, sizeof(u32) * 192);
}

static BOOL ov12_022301B4(UnkStruct_ov12_02230194 *param0)
{
    u32 *v0;
    int v1;
    BOOL v2;
    s16 v3, v4;
    int v5;

    v0 = ov12_022266C0(param0->unk_18);
    ov12_02230194(param0, v0);
    v2 = ov12_02225C14(&param0->unk_1C);

    for (v1 = param0->unk_14; v1 <= param0->unk_16; v1++) {
        v3 = v0[v1] & 0xffff;
        v4 = v0[v1] >> 16;

        v4 -= ((param0->unk_16 - v1) * (param0->unk_1C.unk_02)) / 100;
        v3 -= (((param0->unk_14 + (80 / 2)) - v1) * (param0->unk_1C.unk_00)) / 100;

        v5 = v1 - 1;

        if (v5 < 0) {
            v5 += 192;
        }

        v0[v5] = ov12_022266E8(v3, v4);
    }

    return v2;
}

static void ov12_0223025C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230194 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        if (ov12_022301B4(v0) == 0) {
            v0->unk_04++;
            ov12_022357EC(v0->unk_00, 31, 0);
            ov12_02226424(&v0->unk_40, 31, 0, 0, 31, 16);
        }
        break;
    case 1:
        ov12_022301B4(v0);

        if (ov12_02226454(&v0->unk_40)) {
            v0->unk_04++;

            ov12_022266D4(v0->unk_18);
            v0->unk_08 = 0;
        }
        break;
    case 2:
        Bg_SetOffset(BattleAnimSystem_GetBgConfig(v0->unk_00), 2, 0, -v0->unk_10);
        Bg_SetOffset(BattleAnimSystem_GetBgConfig(v0->unk_00), 2, 3, -v0->unk_12);

        v0->unk_08++;

        if (v0->unk_08 > 8) {
            ov12_02226424(&v0->unk_40, 0, 31, 31, 0, 16);
            v0->unk_04++;
        }
        break;
    case 3:
        if (ov12_02226454(&v0->unk_40)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_HIDE, 0);
            v0->unk_04++;
        }
        break;
    case 4:
        ov12_0222669C(v0->unk_18);

        Bg_SetPriority(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), BattleAnimSystem_GetBgPriority(v0->unk_00, 1));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00));

        Bg_ClearTilesRange(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), 0x4000, 0, BattleAnimSystem_GetHeapID(v0->unk_00));
        Bg_ClearTilemap(BattleAnimSystem_GetBgConfig(v0->unk_00), BattleAnimSystem_GetBgLayer(v0->unk_00, 1));

        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        break;
    default:
        break;
    }
}

void ov12_022303D0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02230194 *v0;
    int v1;
    SysTask *v2;
    int v3;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_02230194));
    memset(v0, 0, sizeof(UnkStruct_ov12_02230194));

    v0->unk_00 = param0;

    v2 = BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0223025C, v0);

    v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_10 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER);
    v0->unk_12 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_12 -= PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_10 -= 80 / 2;
    v0->unk_12 -= 80 / 2;

    PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_HIDE, 1);

    v1 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v0->unk_14 = v0->unk_12 + -8;
    v0->unk_16 = v0->unk_12 + 80 - -8;

    if (v0->unk_14 < 0) {
        v0->unk_14 = 0;
    }

    if (v0->unk_16 > 192) {
        v0->unk_16 = 192;
    }

    v0->unk_18 = ov12_0222662C(v0->unk_14, v0->unk_16, (5 * 0xffff) / 360, (8 * FX32_ONE) * v1, 80, BattleAnimSystem_GetBgID(param0, 1), SysTask_GetPriority(v2) + 1, ov12_022266E8(v0->unk_10, v0->unk_12), BattleAnimSystem_GetHeapID(param0));
    ov12_02225BC8(&v0->unk_1C, 0, 80, 0, 40, 24);
    v0->unk_1C.unk_04[1] *= v1;

    v3 = BattleAnimUtil_GetBattlerType(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    if ((v3 == 3) || (v3 == 4)) {
        Bg_SetPriority(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00) + 1);
    }

    ov12_0223025C(v2, v0);
}

static void ov12_02230540(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230540 *v0 = param1;
    BOOL v1;
    f32 v2, v3;

    switch (v0->unk_08) {
    case 0:
        v1 = AngleLerpContext_UpdateFX32(&v0->unk_38);
        G2_ChangeBlendAlpha(v0->unk_38.angle, 31 - v0->unk_38.angle);

        if (v1 == 0) {
            v0->unk_08++;
            v0->unk_0C = 0;
        }
        break;
    case 1:
        v0->unk_0C++;

        if (v0->unk_0C > 32) {
            v0->unk_08++;
        }
        break;
    case 2:
        v1 = ov12_02225EB8(&v0->unk_14);
        ov12_02225FA4(&v0->unk_14, &v2, &v3);

        if (v0->unk_4C == 1) {
            v2 = -v2;
        }

        ManagedSprite_SetAffineScale(v0->unk_10, v2, v3);

        if (v1 == 0) {
            ManagedSprite_SetDrawFlag(v0->unk_10, 0);
            v0->unk_08++;
        }
        break;
    case 3:
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_04);
}

static void ov12_02230600(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230600 *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        ov12_02226138(&v0->unk_14);
        ov12_02225A18(&v0->unk_14, v0->unk_08, v0->unk_38, v0->unk_3A);

        if (v0->unk_10 == 1) {
            ov12_022259DC(&v0->unk_14, v0->unk_0C, v0->unk_38, v0->unk_3A - v0->unk_3C);
        }

        if (PokemonSprite_IsFadeActive(v0->unk_08) == 0) {
            PokemonSprite_StartFade(v0->unk_08, 16, 0, 0, 0);

            if (v0->unk_10 == 1) {
                int v2;

                v2 = 1 << ov12_02225950(v0->unk_0C);
                PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x4, v2, 0, 16, 0, 0);
            }

            v0->unk_04++;
        }
        break;
    case 1:
        v1 = ov12_02226138(&v0->unk_14);
        ov12_02225A18(&v0->unk_14, v0->unk_08, v0->unk_38, v0->unk_3A);

        if (v0->unk_10 == 1) {
            ov12_022259DC(&v0->unk_14, v0->unk_0C, v0->unk_38, v0->unk_3A - v0->unk_3C);
        }

        if (PokemonSprite_IsFadeActive(v0->unk_08) == 0) {
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_X_CENTER, v0->unk_38);
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER, v0->unk_3A);

            if (v0->unk_10 == 1) {
                if (BattleAnimSystem_IsBattlerSemiInvulnerable(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00)) == 0) {
                    PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_HIDE, 0);
                }

                ManagedSprite_SetPositionXY(v0->unk_0C, v0->unk_38, v0->unk_3A - v0->unk_3C);
            }

            v0->unk_04++;
        }
        break;
    case 2:
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }
}

void ov12_02230754(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02230540 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_02230540));
    memset(v0, 0, sizeof(UnkStruct_ov12_02230540));

    v0->unk_00 = param0;
    v0->unk_04 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_00);
    v0->unk_4C = BattleAnimSystem_IsContest(param0);
    v0->unk_10 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 0);

    ov12_02225E68(&v0->unk_14, 14, 10, 10, 8);
    AngleLerpContext_InitFX32(&v0->unk_38, 0, 16, 8);

    ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_XLU);
    ov12_02235780(v0->unk_00, 0, 31);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_10, AFFINE_OVERWRITE_MODE_DOUBLE);

    if (v0->unk_4C == 1) {
        ManagedSprite_SetAffineScale(v0->unk_10, -(14 / (f32)10), 14 / (f32)10);
    } else {
        ManagedSprite_SetAffineScale(v0->unk_10, 14 / (f32)10, 14 / (f32)10);
    }

    ManagedSprite_SetPriority(v0->unk_10, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_10, 1);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230540, v0);
}

void ov12_02230804(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02230600 *v0;
    int v1;
    int v2;
    int v3;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_02230600));
    memset(v0, 0, sizeof(UnkStruct_ov12_02230600));

    v0->unk_00 = param0;
    v0->unk_08 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));
    v0->unk_38 = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
    v0->unk_3A = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER);
    v0->unk_3C = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_SHADOW_HEIGHT);

    ov12_02226108(&v0->unk_14, 4, 0, 1, 4);

    v1 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));
    v0->unk_14.unk_00 += v1;

    PokemonSprite_StartFade(v0->unk_08, 0, 16, 0, 0);

    v0->unk_0C = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 1);
    v2 = BattleAnimUtil_GetBattlerType(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v3 = BattleAnimUtil_GetBattlerType(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));

    if (((v2 == 2) && (v3 == 4)) || ((v2 == 5) && (v3 == 3))) {
        int v4;

        v4 = 1 << ov12_02225950(v0->unk_0C);
        PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x4, v4, 0, 0, 16, 0);
        v0->unk_10 = 1;

        if (BattleAnimSystem_IsBattlerSemiInvulnerable(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00)) == 0) {
            PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_HIDE, 1);
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230600, v0);
}

static BOOL ov12_02230910(UnkStruct_ov12_02230910 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_08) {
    case 0:
        if (ov12_02226454(&param0->unk_1C) == 1) {
            param0->unk_08++;
            param0->unk_44 = 32;
        }
        break;
    case 1:
        param0->unk_44--;

        if (param0->unk_44 < 0) {
            param0->unk_08++;

            ov12_02226424(&param0->unk_1C, 8, 0, 8, 16, 24);
        }
        break;
    case 2:
        if (ov12_02226454(&param0->unk_1C) == 1) {
            param0->unk_08++;
            ov12_0222669C(param0->unk_14);
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02230994(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230910 *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        ov12_02230910(v0);

        if (ManagedSprite_GetDrawFlag(v0->unk_48) == 1) {
            if (BattleAnimSystem_IsBattlerSemiInvulnerable(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00)) == 0) {
                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 1);
            }
        }

        v0->unk_04++;
        break;
    case 1:
        v1 = ov12_02230910(v0);

        if (v1) {
            v0->unk_04++;
        }
        break;
    case 2:
        Bg_SetPriority(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), BattleAnimSystem_GetBgPriority(v0->unk_00, 1));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00));

        if (BattleAnimSystem_IsBattlerSemiInvulnerable(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00)) == 0) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 0);
        }

        Bg_ClearTilesRange(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), 0x4000, 0, BattleAnimSystem_GetHeapID(v0->unk_00));
        Bg_ClearTilemap(BattleAnimSystem_GetBgConfig(v0->unk_00), BattleAnimSystem_GetBgLayer(v0->unk_00, 1));

        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02230A8C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02230910 *v0;
    int v1;
    s16 v2, v3;
    int v4;
    int v5;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02230910));

    v0->unk_00 = param0;
    v0->unk_18 = BattleAnimSystem_GetPaletteData(v0->unk_00);

    ov12_022357EC(v0->unk_00, 0, 16);
    ov12_02226424(&v0->unk_1C, 0, 8, 16, 8, 24);

    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));

    v2 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v3 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v3 -= PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_SHADOW_HEIGHT);
    v2 -= (80 / 2);
    v3 -= (80 / 2);

    v0->unk_48 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 0);
    v5 = BattleAnimUtil_GetBattlerType(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));

    if ((v5 == 5) || (v5 == 2)) {
        ManagedSprite_SetDrawFlag(v0->unk_48, 1);
        ManagedSprite_SetExplicitPriority(v0->unk_48, 2);
    } else {
        Bg_SetPriority(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00) + 1);
        ManagedSprite_SetDrawFlag(v0->unk_48, 0);
    }

    v0->unk_14 = ov12_0222662C(v3, v3 + 80, (5 * 0xffff) / 360, 5 * FX32_ONE, 100, BattleAnimSystem_GetBgID(param0, 1), 0, ov12_022266E8(-v2, -v3), BattleAnimSystem_GetHeapID(param0));
    v4 = 1 << 8;

    PaletteData_BlendMulti(v0->unk_18, 0, v4, 8, 0x0);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230994, v0);
}

static void ov12_02230BE0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230BE0 *v0 = param1;
    BOOL v1;
    f32 v2, v3;
    int v4, v5;

    switch (v0->unk_0C) {
    case 0:
        v1 = ov12_02225EB8(&v0->unk_14);

        if (v1 == 1) {
            ov12_02225FA4(&v0->unk_14, &v2, &v3);
            ManagedSprite_SetAffineScale(v0->unk_10, v2 * v0->unk_54, v3);
        } else {
            v0->unk_0C++;
            v0->unk_4C = 5;

            ov12_02225E68(
                &v0->unk_14, 10, 10, 1, 8);
        }
        break;
    case 1:
        v1 = AngleLerpContext_Update(&v0->unk_38);
        ManagedSprite_SetAffineZRotation(v0->unk_10, v0->unk_38.angle);

        if (v1 == 0) {
            if (v0->unk_4C > 0) {
                v0->unk_4C--;

                v4 = v0->unk_38.angle;
                v5 = v0->unk_50;
                v0->unk_50 = v0->unk_38.angle;

                AngleLerpContext_Init(&v0->unk_38, v4, v5, 4);
            } else {
                v0->unk_0C++;
            }
        }
        break;
    case 2:
        v1 = ov12_02225EB8(&v0->unk_14);

        if (v1 == 1) {
            ov12_02225FA4(&v0->unk_14, &v2, &v3);
            ManagedSprite_SetAffineScale(v0->unk_10, v2 * v0->unk_54, v3);
        } else {
            v0->unk_0C++;
        }
        break;
    case 3:
        Sprite_DeleteAndFreeResources(v0->unk_10);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02230CEC(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02230BE0 *v0;
    int v1;
    int v2;
    s16 v3, v4;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02230BE0));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v1 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(v0->unk_00, 0) == 1) {
        v0->unk_54 = -1;
        v2 = v1 * -1;
    } else {
        v0->unk_54 = 1;
        v2 = v1;
    }

    v3 = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(v0->unk_00), 0);
    v4 = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(v0->unk_00), 1);

    v0->unk_10 = param3;

    ManagedSprite_SetAffineOverwriteMode(v0->unk_10, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(v0->unk_10, 1, 1);
    ManagedSprite_SetPositionXY(v0->unk_10, v3, v4);
    ManagedSprite_OffsetPositionXY(v0->unk_10, 40 * v1, 0);
    ManagedSprite_SetPriority(v0->unk_10, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_10, 1);
    ManagedSprite_SetAffineTranslation(v0->unk_10, -12 * v2, 12);

    if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4) {
        ManagedSprite_SetAnim(v0->unk_10, 1);
    } else {
        ManagedSprite_SetAnim(v0->unk_10, 0);
    }

    ov12_02225E68(&v0->unk_14, 1, 10, 10, 8);

    if (v2 >= 0) {
        AngleLerpContext_Init(&v0->unk_38, (359 * 0xffff) / 360, (320 * 0xffff) / 360, 4);
        v0->unk_50 = ((359 * 0xffff) / 360);
    } else {
        AngleLerpContext_Init(&v0->unk_38, (0 * 0xffff) / 360, (40 * 0xffff) / 360, 4);
        v0->unk_50 = ((0 * 0xffff) / 360);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230BE0, v0);
}

static void ov12_02230E24(UnkStruct_ov12_02230E24 *param0, ManagedSprite *param1, s16 param2, s16 param3, BOOL param4)
{
    param0->unk_00 = param1;

    ov12_02225E68(&param0->unk_04, 10, 10, 8, 8);

    param0->unk_2C = 3;
    param0->unk_30 = 8;
    param0->unk_34 = 10;
    param0->unk_28 = param4;

    ManagedSprite_SetPositionXY(param0->unk_00, param2, param3);
    ManagedSprite_SetPositionXY(param0->unk_00, param2, param3);
    ManagedSprite_SetAffineOverwriteMode(param0->unk_00, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetPriority(param0->unk_00, 100);
    ManagedSprite_SetExplicitPriority(param0->unk_00, 1);

    if (param4) {
        ManagedSprite_SetAffineScale(param0->unk_00, -1, 1);
    }

    ManagedSprite_SetDrawFlag(param0->unk_00, 0);
}

static void ov12_02230E9C(UnkStruct_ov12_02230E24 *param0)
{
    Sprite_DeleteAndFreeResources(param0->unk_00);
}

static void ov12_02230EA8(UnkStruct_ov12_02230E24 *param0)
{
    ManagedSprite_SetDrawFlag(param0->unk_00, 1);
    ManagedSprite_SetAnimateFlag(param0->unk_00, 1);
}

static BOOL ov12_02230EC0(UnkStruct_ov12_02230E24 *param0)
{
    BOOL v0;
    f32 v1, v2;
    int v3;

    v0 = ov12_02225EB8(&param0->unk_04);

    if (v0 == 1) {
        ov12_02225FA4(&param0->unk_04, &v1, &v2);

        if (param0->unk_28) {
            ManagedSprite_SetAffineScale(param0->unk_00, -v1, 1);
        } else {
            ManagedSprite_SetAffineScale(param0->unk_00, v1, 1);
        }
    } else {
        if (param0->unk_2C > 0) {
            param0->unk_2C--;
            ov12_02225E68(&param0->unk_04, param0->unk_30, 10, param0->unk_34, 8);
            v3 = param0->unk_30;
            param0->unk_30 = param0->unk_34;
            param0->unk_34 = v3;
        } else {
            return 0;
        }
    }

    return 1;
}

static void ov12_02230F3C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230F3C *v0 = param1;
    int v1;
    BOOL v2;

    switch (v0->unk_0C) {
    case 0:
        if (v0->unk_10 >= 4) {
            v0->unk_10 = 0;
            ov12_02230EA8(&v0->unk_44[v0->unk_14]);
            v0->unk_14++;

            if (v0->unk_14 >= 4) {
                v0->unk_0C++;
            }
        }

        v0->unk_10++;
        break;
    case 1:
        if (ov12_0222619C(&v0->unk_20, v0->unk_1C, v0->unk_1E, v0->unk_18) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        for (v1 = 0; v1 < 4; v1++) {
            v2 = ov12_02230EC0(v0->unk_44 + v1);
        }

        if (v2 == 0) {
            v0->unk_0C++;
        }
        break;
    case 3:
        PokemonSprite_SetAttribute(v0->unk_18, MON_SPRITE_X_CENTER, v0->unk_1C);
        PokemonSprite_SetAttribute(v0->unk_18, MON_SPRITE_Y_CENTER, v0->unk_1E);

        for (v1 = 0; v1 < 4; v1++) {
            ov12_02230E9C(v0->unk_44 + v1);
        }

        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231010(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02230F3C *v0;
    int v1;
    int v2;
    int v3;
    int v4;
    SpriteTemplate v5;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02230F3C));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = BattleAnimSystem_GetDefender(param0);

    v0->unk_18 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v2);
    v0->unk_1C = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_X_CENTER);
    v0->unk_1E = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_Y_CENTER);

    ov12_02226108(&v0->unk_20, 4, 0, 1, 1);

    v3 = v0->unk_1E + 16;
    v4 = 0;
    v5 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00);

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 == 0) {
            ov12_02230E24(&v0->unk_44[v1], param3, v0->unk_1C, v3, v4);
        } else {
            ov12_02230E24(&v0->unk_44[v1], SpriteSystem_NewSprite(param1, param2, &v5), v0->unk_1C, v3, v4);
        }

        v3 -= 10;
        v4 ^= 1;
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230F3C, v0);
}

static void ov12_022310D4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022310D4 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        if (ov12_02225C14(&v0->unk_18)) {
            ov12_02225A18(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            ov12_02225BC8(
                &v0->unk_18, v0->unk_18.unk_00, 0, 0, 0, 2);
            v0->unk_0C++;
        }

        return;
    case 1:
        if (ov12_02225C14(&v0->unk_18)) {
            ov12_02225A18(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_14);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_16);
            ov12_02225BC8(&v0->unk_18, 0, -32 * v0->unk_3C, 0, 0, 4);
            v0->unk_0C++;
        }

        return;
    case 2:
        if (ov12_02225D2C(&v0->unk_4C, &v0->unk_70, v0->unk_48) == 0) {
            ov12_02225C98(&v0->unk_4C, &v0->unk_70, v0->unk_44, v0->unk_14, v0->unk_46, v0->unk_16, 10, -(32 * FX32_ONE));
            v0->unk_0C++;
        }
        break;
    case 3:
        if (ov12_02225D2C(&v0->unk_4C, &v0->unk_70, v0->unk_48) == 0) {
            ManagedSprite_SetDrawFlag(v0->unk_48, 0);
            v0->unk_0C++;
        }
        break;
    case 4:
        if (ov12_02225C14(&v0->unk_18)) {
            ov12_02225A18(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            ov12_02225BC8(&v0->unk_18, v0->unk_18.unk_00, 0, 0, 0, 4);
            v0->unk_0C++;
        }
        break;
    case 5:
        if (ov12_02225C14(&v0->unk_18)) {
            ov12_02225A18(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_14);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_16);

            v0->unk_0C++;
        }
        break;
    case 6:
        Sprite_DeleteAndFreeResources(v0->unk_48);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_022312A4(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022310D4 *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_022310D4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_3C = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));
    v0->unk_14 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_16 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);

    ov12_02225BC8(&v0->unk_18, 0, -16 * v0->unk_3C, 0, 0, 4);

    v0->unk_40 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v0->unk_44 = PokemonSprite_GetAttribute(v0->unk_40, MON_SPRITE_X_CENTER);
    v0->unk_46 = PokemonSprite_GetAttribute(v0->unk_40, MON_SPRITE_Y_CENTER);
    v0->unk_48 = param3;

    ManagedSprite_SetAnimateFlag(v0->unk_48, 1);
    ManagedSprite_SetPriority(v0->unk_48, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_48, 1);

    ov12_02225C98(&v0->unk_4C, &v0->unk_70, v0->unk_14, v0->unk_44, v0->unk_16, v0->unk_46, 10, 32 * FX32_ONE);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_022310D4, v0);
}

static void ov12_02231390(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231390 *v0 = param1;

    switch (v0->unk_08) {
    case 0:
        if (ov12_02225B78(&v0->unk_1C, v0->unk_18, v0->unk_1A - v0->unk_68, v0->unk_14) == 0) {
            v0->unk_08++;
            v0->unk_0C = 16;
        }
        break;
    case 1:
        v0->unk_0C--;

        if (v0->unk_0C < 0) {
            v0->unk_08++;

            ov12_02226424(
                &v0->unk_40, 0, 16, 16 - 0, 16 - 16, 32);
        }
        break;
    case 2:
        if (ov12_02226454(&v0->unk_40)) {
            ManagedSprite_SetDrawFlag(v0->unk_14, 1);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 0);
            v0->unk_08++;
        }
        break;
    case 3:
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_04);
}

void ov12_02231444(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02231390 *v0;
    int v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02231390));

    v0->unk_00 = param0;
    v0->unk_04 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_00);

    v1 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));
    v0->unk_18 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_1A = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_68 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_1A -= -8;
    v0->unk_14 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 0);

    ManagedSprite_SetExplicitOamMode(v0->unk_14, GX_OAM_MODE_XLU);
    PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 1);

    ov12_022263A4(&v0->unk_1C, 2, 16);
    ov12_02235780(v0->unk_00, 16, 16 - 16);
    ov12_02226424(&v0->unk_40, 16, 0, 16 - 16, 16 - 0, 32);

    v0->unk_1C.unk_04[2] *= v1;

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02231390, v0);
    SpriteSystem_DrawSprites(v0->unk_04);
}

static BOOL ov12_02231508(UnkStruct_ov12_02231508 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_38) {
    case 0:
        if (ov12_02225EB8(&param0->unk_14)) {
            PokemonSprite_SetAttribute(param0->unk_10, MON_SPRITE_SCALE_Y, param0->unk_14.unk_02);
        } else {
            param0->unk_38++;
            ov12_02225E68(
                &param0->unk_14, 15, 10, 10, 12);
        }
        break;
    case 1:
        if (ov12_02225EB8(&param0->unk_14)) {
            PokemonSprite_SetAttribute(param0->unk_10, MON_SPRITE_SCALE_Y, param0->unk_14.unk_02);
        } else {
            PokemonSprite_SetAttribute(param0->unk_10, MON_SPRITE_SCALE_Y, 0x100);
            param0->unk_38++;
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov12_02231584(UnkStruct_ov12_02231508 *param0)
{
    BOOL v0 = 0;
    BOOL v1;

    switch (param0->unk_40) {
    case 0:
        ov12_022260A8(&param0->unk_44, param0->unk_3C);
        v1 = ov12_02225C14(&param0->unk_68);

        if (v1) {
            ov12_022259DC(&param0->unk_68, param0->unk_3C, param0->unk_B4, param0->unk_B6);
        } else {
            param0->unk_40++;
            ov12_02226424(&param0->unk_8C, 16, 0, 14, 16, 8);
        }
        break;
    case 1:
        if (ov12_02226454(&param0->unk_8C)) {
            ManagedSprite_SetDrawFlag(param0->unk_3C, 0);
            param0->unk_40++;
        }
        break;

    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231608(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231508 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        ov12_02231508(v0);

        if (ov12_02231584(v0)) {
            v0->unk_0C++;
        }
        break;
    case 1:
        Sprite_DeleteAndFreeResources(v0->unk_3C);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231650(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02231508 *v0;
    int v1;
    int v2;
    s16 v3;
    s16 v4;
    int v5;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02231508));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v1 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v2 = ov12_0222598C(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    v3 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v4 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);

    ov12_02225E68(&v0->unk_14, 10, 10, 15, 12);
    v0->unk_3C = param3;

    ManagedSprite_SetAnimateFlag(v0->unk_3C, 1);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_3C, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(v0->unk_3C, GX_OAM_MODE_XLU);
    ManagedSprite_SetPriority(v0->unk_3C, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_3C, 1);

    v0->unk_B4 = v3 + (32 * v1);
    v0->unk_B6 = v4;

    if (v2 < 0) {
        v5 = -8;
    } else {
        v5 = -24;
    }

    ov12_02225BC8(&v0->unk_68, 0, 0 * v1, 0, v5 * v2, 32);
    ov12_02225E68(&v0->unk_44, 5, 10, 12, 32);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 26);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02231608, v0);
}

static void ov12_02231760(UnkStruct_ov12_02231760 *param0)
{
    switch (param0->unk_68) {
    case 0:
        ov12_02225BC8(&param0->unk_18, 0, 80 / 2, 0, 80 / 2, 8);
        break;
    case 1:
        ov12_02225BC8(&param0->unk_18, 0, 0, 0, -80, 8);
        break;
    case 2:
        ov12_02225BC8(&param0->unk_18, 0, -80, 0, 80, 8);
        break;
    case 3:
        ov12_02225BC8(&param0->unk_18, 0, 0, 0, -80, 8);
        break;
    case 4:
        ov12_02225BC8(&param0->unk_18, 0, 80, 0, 80, 8);
        break;
    case 5:
        ov12_02225BC8(&param0->unk_18, 0, -80 / 2, 0, -80 / 2, 8);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov12_0223181C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231760 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        v0->unk_6C++;

        if (v0->unk_6C > 4) {
            ov12_02231760(v0);
            v0->unk_0C++;
            v0->unk_6C = 0;
        }
        break;
    case 1:
        if (ov12_02225C14(&v0->unk_18)) {
            ov12_022259DC(&v0->unk_18, v0->unk_14, v0->unk_64, v0->unk_66);
        } else {
            v0->unk_68++;

            if (v0->unk_68 < 6) {
                v0->unk_0C = 0;
                v0->unk_64 += v0->unk_18.unk_00;
                v0->unk_66 += v0->unk_18.unk_02;
            } else {
                v0->unk_0C++;

                ManagedSprite_SetExplicitOamMode(v0->unk_14, GX_OAM_MODE_XLU);
                ov12_02226424(
                    &v0->unk_3C, 16, 0, 0, 16, 16);

                PokemonSprite_StartFade(v0->unk_10, 0, 10, 0, GX_RGB(31, 31, 31));
            }
        }
        break;
    case 2:
        if (ov12_02226454(&v0->unk_3C)) {
            ManagedSprite_SetDrawFlag(v0->unk_14, 0);
        }

        if (PokemonSprite_IsFadeActive(v0->unk_10) == 0) {
            v0->unk_0C++;
            PokemonSprite_StartFade(v0->unk_10, 10, 0, 0, GX_RGB(31, 31, 31));
        }
        break;
    case 3:
        if (PokemonSprite_IsFadeActive(v0->unk_10) == 0) {
            v0->unk_0C++;
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231950(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02231760 *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02231760));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v0->unk_14 = param3;

    ManagedSprite_SetPriority(v0->unk_14, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_14, 1);
    ManagedSprite_GetPositionXY(v0->unk_14, &v0->unk_64, &v0->unk_66);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0223181C, v0);
}

static void ov12_022319AC(UnkStruct_ov12_022319AC *param0)
{
    switch (param0->unk_50) {
    case 0:
        ov12_02225BC8(&param0->unk_28, 0, 80, 0, 80, 4);
        break;
    case 1:
        ov12_02225BC8(&param0->unk_28, 0, 0, 0, -80, 4);
        break;
    case 2:
        ov12_02225BC8(&param0->unk_28, 0, -80, 0, 80, 4);
        break;
    case 3:
        ov12_02225BC8(&param0->unk_28, 0, 80 / 2, 0, -80 / 2, 4);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov12_02231A38(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022319AC *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        v0->unk_54++;

        if (v0->unk_54 > 1) {
            ov12_022319AC(v0);
            v0->unk_0C++;
            v0->unk_54 = 0;
        }
        break;
    case 1:
        if (ov12_02225C14(&v0->unk_28)) {
            ov12_022259DC(&v0->unk_28, v0->unk_24, v0->unk_4C, v0->unk_4E);
        } else {
            v0->unk_50++;

            if (v0->unk_50 < 4) {
                v0->unk_0C = 0;
                v0->unk_4C += v0->unk_28.unk_00;
                v0->unk_4E += v0->unk_28.unk_02;
            } else {
                v0->unk_0C++;
                v0->unk_54 = 8;

                ManagedSprite_SetAnim(v0->unk_24, 1);
                ManagedSprite_SetAnimateFlag(v0->unk_24, 1);
            }
        }
        break;
    case 2:
        v0->unk_54--;

        if (v0->unk_54 < 0) {
            v0->unk_0C++;

            PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x1, BattleAnimSystem_GetBaseBgPalettes(v0->unk_00), -8, 0, 16, 0xffff);

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14[v1]) {
                    PokemonSprite_StartFade(v0->unk_14[v1], 14, 16, 0, 0xffff);
                }
            }
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v0->unk_00)) == 0) {
            v0->unk_0C++;
            PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x1, BattleAnimSystem_GetBaseBgPalettes(v0->unk_00), -8, 16, 0, 0xffff);

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14[v1]) {
                    PokemonSprite_StartFade(v0->unk_14[v1], 2, 0, 0, 0xffff);
                }
            }
        }
        break;
    case 4:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v0->unk_00)) == 0) {
            v0->unk_0C++;
            v0->unk_54 = 4;
            v0->unk_50 = 4;
            v0->unk_58 = 0;
        }
        break;
    case 5:
        v0->unk_54--;

        if (v0->unk_54 < 0) {
            v0->unk_54 = 4;
            v0->unk_50--;

            if (v0->unk_50 < 0) {
                v0->unk_0C++;
            } else {
                ManagedSprite_SetDrawFlag(v0->unk_24, v0->unk_58);
                v0->unk_58 ^= 1;
            }
        }
        break;
    case 6:
        Sprite_DeleteAndFreeResources(v0->unk_24);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231C1C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022319AC *v0;
    int v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_022319AC));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_14[v1] = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v1);
    }

    v0->unk_24 = param3;

    ManagedSprite_SetPriority(v0->unk_24, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_24, 1);
    ManagedSprite_GetPositionXY(v0->unk_24, &v0->unk_4C, &v0->unk_4E);

    v0->unk_4C -= 80 / 2;
    v0->unk_4E -= 80 / 2;

    ManagedSprite_SetPositionXY(v0->unk_24, v0->unk_4C, v0->unk_4E);
    ManagedSprite_SetExplicitOamMode(v0->unk_24, GX_OAM_MODE_XLU);

    v0->unk_54 = -16;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 26);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02231A38, v0);
}

static void ov12_02231CD4(UnkStruct_ov12_02231CD4 *param0, BOOL param1)
{
    fx32 v0;

    AngleLerpContext_InitFX32(&param0->unk_10, 0, (15 * 0xffff) / 360, 3);

    if (param1) {
        param0->unk_10.data[1] *= -1;
        PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_X_PIVOT, 16);
    } else {
        PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_X_PIVOT, -16);
    }

    param0->unk_4C = 0;
    param0->unk_50 = 0;
}

static BOOL ov12_02231D18(UnkStruct_ov12_02231CD4 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_4C) {
    case 0:
        AngleLerpContext_UpdateFX32(&param0->unk_10);
        PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_ROTATION_Z, param0->unk_10.angle);

        param0->unk_50--;

        if (param0->unk_50 < 0) {
            param0->unk_4C++;

            ov12_02225BC8(&param0->unk_24, param0->unk_0C, param0->unk_0C, param0->unk_0E, param0->unk_0E + 2, 2);
        }
        break;
    case 1:
        if (AngleLerpContext_UpdateFX32(&param0->unk_10)) {
            PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_ROTATION_Z, param0->unk_10.angle);
        }

        if (ov12_02225C74(&param0->unk_24, param0->unk_08) == 0) {
            param0->unk_4C++;
            AngleLerpContext_InitFX32(&param0->unk_10, param0->unk_10.angle, 0, 3);
            ov12_02225BC8(&param0->unk_24, param0->unk_0C, param0->unk_0C, param0->unk_0E + 2, param0->unk_0E, 2);
        }
        break;
    case 2:
        ov12_02225C74(&param0->unk_24, param0->unk_08);

        if (AngleLerpContext_UpdateFX32(&param0->unk_10)) {
            PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_ROTATION_Z, param0->unk_10.angle);
        } else {
            PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_X_CENTER, param0->unk_0C);
            PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_Y_CENTER, param0->unk_0E);
            PokemonSprite_SetAttribute(param0->unk_08, MON_SPRITE_ROTATION_Z, 0);
            param0->unk_4C++;
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231E28(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231CD4 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        if (ov12_02231D18(v0)) {
            v0->unk_48++;

            if (v0->unk_48 < 4) {
                v0->unk_54 ^= 1;
                ov12_02231CD4(v0, v0->unk_54);
                ov12_02231D18(v0);
            } else {
                v0->unk_00++;
            }
        }
        break;
    case 1:
        BattleAnimSystem_EndAnimTask(v0->unk_04, param0);
        Heap_Free(v0);
        return;
    }
}

void ov12_02231E7C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02231CD4 *v0;
    int v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02231CD4));
    v0->unk_04 = param0;

    v1 = BattleAnimMath_GetRotationDirection(v0->unk_04, BattleAnimSystem_GetAttacker(v0->unk_04));

    if (BattleAnimSystem_GetScriptVar(param0, 0) == 0) {
        v0->unk_08 = BattleAnimSystem_GetBattlerSprite(v0->unk_04, BattleAnimSystem_GetAttacker(param0));
        v0->unk_0C = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
        v0->unk_0E = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER);
    } else {
        v0->unk_08 = BattleAnimSystem_GetBattlerSprite(v0->unk_04, BattleAnimSystem_GetDefender(param0));
        v0->unk_0C = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
        v0->unk_0E = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER);
    }

    PokemonSprite_SetAttribute(v0->unk_08, MON_SPRITE_Y_PIVOT, 50);

    if (v1 == 1) {
        v0->unk_54 = 0;
    } else {
        v0->unk_54 = 1;
    }

    ov12_02231CD4(v0, v0->unk_54);
    BattleAnimSystem_StartAnimTask(v0->unk_04, ov12_02231E28, v0);
}

static BOOL ov12_02231F18(UnkStruct_ov12_02231F18 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_38) {
    case 0:
        if (ov12_022260C8(&param0->unk_10, param0->unk_0C)) {
            ov12_02226024(param0->unk_0C, param0->unk_3C, param0->unk_40, param0->unk_10.unk_04[4], 0);
        } else {
            param0->unk_38++;
        }
        break;
    case 1:
        param0->unk_34--;

        if (param0->unk_34 < 0) {
            param0->unk_38++;
            ov12_02225E68(&param0->unk_10, 15, 10, 10, 8);
        }
        break;
    case 2:
        if (ov12_022260C8(&param0->unk_10, param0->unk_0C)) {
            ov12_02226024(param0->unk_0C, param0->unk_3C, param0->unk_40, param0->unk_10.unk_04[4], 0);
        } else {
            param0->unk_38++;
        }
        break;
    case 3:
        PokemonSprite_SetAttribute(param0->unk_0C, MON_SPRITE_SCALE_X, 0x100);
        PokemonSprite_SetAttribute(param0->unk_0C, MON_SPRITE_SCALE_Y, 0x100);
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231FD8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231F18 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        if (ov12_02231F18(v0)) {
            v0->unk_04++;
            v0->unk_08 = 16;
        }
        break;
    case 1:
        v0->unk_08--;

        if (v0->unk_08 < 0) {
            v0->unk_04++;
        }
        break;
    case 2:
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }
}

void ov12_02232024(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02231F18 *v0;
    PokemonSprite *v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02231F18));

    v0->unk_00 = param0;
    v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    ov12_02225E68(&v0->unk_10, 10, 10, 15, 8);

    v0->unk_34 = 4;
    v0->unk_40 = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_3C = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02231FD8, v0);
}

static void ov12_02232084(UnkStruct_ov12_02232084 *param0)
{
    ov12_02225E68(&param0->unk_18, param0->unk_74 / 100, 10, param0->unk_78 / 100, param0->unk_70 / 100);
    ov12_02235780(param0->unk_00, 16, 16 - 16);
    ov12_02226424(&param0->unk_3C, 16, 10, 16 - 16, 16 - 10, (param0->unk_70 / 100) * 2);

    param0->unk_64 = 0;
    param0->unk_68 = 0;
}

static BOOL ov12_022320EC(UnkStruct_ov12_02232084 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_64) {
    case 0:
        if (ov12_022260A8(&param0->unk_18, param0->unk_14) == 0) {
            ov12_02225E68(&param0->unk_18, param0->unk_78 / 100, 10, param0->unk_74 / 100, param0->unk_70 / 100);
            param0->unk_64++;
        }
        break;
    case 1:
        if (ov12_022260A8(&param0->unk_18, param0->unk_14) == 0) {
            param0->unk_68++;

            if (param0->unk_68 < 2) {
                param0->unk_64 = 0;
                ov12_02225E68(&param0->unk_18, param0->unk_74 / 100, 10, param0->unk_78 / 100, param0->unk_70 / 100);
            } else {
                param0->unk_64++;
            }
        }
        break;
    case 2:
        if (ov12_02226454(&param0->unk_3C)) {
            param0->unk_64++;
            v0 = 1;
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov12_022321C4(UnkStruct_ov12_02232084 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_7C) {
    case 0:
        ov12_02232084(param0);
        ov12_022320EC(param0);
        param0->unk_7C++;
        break;
    case 1:
        if (ov12_022320EC(param0)) {
            param0->unk_6C--;

            if (param0->unk_6C >= 0) {
                param0->unk_70 -= param0->unk_70 / 3;
                param0->unk_74 -= param0->unk_74 / 3;
                param0->unk_78 -= param0->unk_78 / 3;
                param0->unk_7C = 0;
            } else {
                param0->unk_7C++;
                v0 = 1;
            }
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_0223223C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232084 *v0 = param1;
    BOOL v1, v2;

    switch (v0->unk_0C) {
    case 0:
        if (ov12_022321C4(v0)) {
            v0->unk_0C++;
            v0->unk_10 = 30;

            ManagedSprite_SetAnim(v0->unk_14, 0);
            ManagedSprite_SetAnimateFlag(v0->unk_14, 1);
            ManagedSprite_SetAffineScale(v0->unk_14, 1, 1);

            ov12_02226424(&v0->unk_3C, 0, 16, 16, 0, 4);
        }
        break;
    case 1:
        if (v0->unk_10 == 0) {
            BrightnessController_StartTransition(8, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
            v0->unk_10 = -1;
        } else {
            if (v0->unk_10 > 0) {
                v0->unk_10--;
            }
        }

        if (v0->unk_10 == -1) {
            if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
                BrightnessController_StartTransition(8, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
                v0->unk_10 = -2;
            }
        }

        if (ManagedSprite_IsAnimated(v0->unk_14) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            v0->unk_0C++;
            ov12_02235780(v0->unk_00, 16, 0);
            ov12_02226424(&v0->unk_3C, 16, 0, 0, 16, 8);
        }
        break;
    case 3:
        if (ov12_02226454(&v0->unk_3C)) {
            ManagedSprite_SetDrawFlag(v0->unk_14, 0);
            v0->unk_0C++;
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02232378(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02232084 *v0;
    PokemonSprite *v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02232084));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_14 = param3;

    ManagedSprite_SetPriority(v0->unk_14, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_14, 1);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_14, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(v0->unk_14, GX_OAM_MODE_XLU);
    ManagedSprite_SetAnimationFrame(v0->unk_14, 4);

    v0->unk_6C = 3;
    v0->unk_70 = (4 * 100);
    v0->unk_74 = (15 * 100);
    v0->unk_78 = (10 * 100);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0223223C, v0);
}

static void ov12_022323E4(UnkStruct_ov12_022323E4 *param0)
{
    switch (param0->unk_34) {
    case 0:
    case 2:
        ov12_02225BC8(&param0->unk_10, 0, 0, 0, 32, 6);
        break;
    case 1:
    case 3:
        ov12_02225BC8(&param0->unk_10, 0, 0, 32, 0, 6);
        break;
    }
}

static void ov12_02232430(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022323E4 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        ov12_022323E4(v0);
        v0->unk_00++;
        break;
    case 1:
        if (ov12_02225C14(&v0->unk_10)) {
            ov12_02225A18(&v0->unk_10, v0->unk_08, v0->unk_0C, v0->unk_0E);
        } else {
            v0->unk_34++;

            if (v0->unk_34 < 4) {
                v0->unk_00 = 0;
            } else {
                v0->unk_00++;
            }
        }
        break;
    case 2:
        BattleAnimSystem_EndAnimTask(v0->unk_04, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_0223249C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_022323E4 *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_022323E4));

    v0->unk_04 = param0;
    v0->unk_08 = BattleAnimSystem_GetBattlerSprite(v0->unk_04, BattleAnimSystem_GetAttacker(param0));
    v0->unk_0C = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_X_CENTER);
    v0->unk_0E = PokemonSprite_GetAttribute(v0->unk_08, MON_SPRITE_Y_CENTER);
    v0->unk_34 = 0;

    BattleAnimSystem_StartAnimTask(v0->unk_04, ov12_02232430, v0);
}

static void ov12_022324E0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022324E0 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        ov12_022263A4(&v0->unk_14, 1, 64);
        v0->unk_14.unk_04[2] *= v0->unk_08;
        v0->unk_00++;
        break;
    case 1:
        if (ov12_02225BA0(&v0->unk_14, v0->unk_10, v0->unk_12 - -8, v0->unk_0C) == 0) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER, v0->unk_10);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER, v0->unk_12);

            ov12_02225BC8(&v0->unk_14, v0->unk_10, v0->unk_10 + 32, 0, 0, 2);

            v0->unk_14.unk_04[1] *= v0->unk_08;
            v0->unk_00++;

            ov12_02225C14(&v0->unk_14);
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER, v0->unk_14.unk_00);
        }
        break;
    case 2:
        if (ov12_02225C14(&v0->unk_14)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER, v0->unk_14.unk_00);
        } else {
            ov12_02225BC8(&v0->unk_40, v0->unk_3C, v0->unk_3C + (32 * v0->unk_08), 0, 0, 2);
            v0->unk_00++;
        }
        break;
    case 3:
        if (ov12_02225C14(&v0->unk_40)) {
            PokemonSprite_SetAttribute(v0->unk_38, MON_SPRITE_X_CENTER, v0->unk_40.unk_00);
        } else {
            ov12_02225BC8(&v0->unk_14, v0->unk_14.unk_00, v0->unk_10, 0, 0, 8);
            v0->unk_00++;
        }
        break;
    case 4:
        if (ov12_02225C14(&v0->unk_14)) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER, v0->unk_14.unk_00);
        } else {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER, v0->unk_10);
            ov12_02225BC8(&v0->unk_40, v0->unk_40.unk_00, v0->unk_3C, 0, 0, 8);
            v0->unk_00++;
        }
        break;
    case 5:
        if (ov12_02225C14(&v0->unk_40)) {
            PokemonSprite_SetAttribute(v0->unk_38, MON_SPRITE_X_CENTER, v0->unk_40.unk_00);
        } else {
            PokemonSprite_SetAttribute(v0->unk_38, MON_SPRITE_X_CENTER, v0->unk_3C);
            v0->unk_00++;
        }
        break;
    case 6:
        BattleAnimSystem_EndAnimTask(v0->unk_04, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_022326AC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_022324E0 *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_022324E0));

    v0->unk_04 = param0;
    v0->unk_08 = BattleAnimMath_GetRotationDirection(v0->unk_04, BattleAnimSystem_GetAttacker(v0->unk_04));
    v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_04, BattleAnimSystem_GetAttacker(param0));
    v0->unk_10 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER);
    v0->unk_12 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_38 = BattleAnimSystem_GetBattlerSprite(v0->unk_04, BattleAnimSystem_GetDefender(param0));
    v0->unk_3C = PokemonSprite_GetAttribute(v0->unk_38, MON_SPRITE_X_CENTER);
    v0->unk_3E = PokemonSprite_GetAttribute(v0->unk_38, MON_SPRITE_Y_CENTER);

    BattleAnimSystem_StartAnimTask(v0->unk_04, ov12_022324E0, v0);
}

static void ov12_02232720(UnkStruct_ov12_02232720 *param0)
{
    param0->unk_40 = 0;
    ov12_02225EF0(&param0->unk_1C, 10, 9, 10, 8, 10, 2);
}

static BOOL ov12_02232744(UnkStruct_ov12_02232720 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_40) {
    case 0:
        if (ov12_022260E8(&param0->unk_1C, param0->unk_18)) {
            ov12_02226024(param0->unk_18, param0->unk_44, param0->unk_46, param0->unk_1C.unk_04[4], 0);
        } else {
            param0->unk_40++;
            ov12_02225EF0(&param0->unk_1C, 9, 11, 8, 15, 10, 2);
        }
        break;
    case 1:
        if (ov12_022260E8(&param0->unk_1C, param0->unk_18)) {
            ov12_02226024(param0->unk_18, param0->unk_44, param0->unk_46, param0->unk_1C.unk_04[4], 0);
        } else {
            param0->unk_40++;
            ov12_02225EF0(&param0->unk_1C, 11, 10, 15, 10, 10, 2);
        }
        break;
    case 2:
        if (ov12_022260E8(&param0->unk_1C, param0->unk_18)) {
            ov12_02226024(param0->unk_18, param0->unk_44, param0->unk_46, param0->unk_1C.unk_04[4], 0);
        } else {
            PokemonSprite_SetAttribute(param0->unk_18, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(param0->unk_18, MON_SPRITE_SCALE_Y, 0x100);
            param0->unk_40++;
            v0 = 1;
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_0223283C(ManagedSprite *param0, int *param1, fx32 param2)
{
    *param1 = 0;

    ManagedSprite_SetPriority(param0, 100);
    ManagedSprite_SetExplicitPriority(param0, 1);
    ManagedSprite_SetDrawFlag(param0, 1);
    ManagedSprite_SetAnimateFlag(param0, 1);
    ManagedSprite_SetAnimationSpeed(param0, param2);
    ManagedSprite_SetAnim(param0, 0);
    ManagedSprite_SetAnimationFrame(param0, 0);
    ManagedSprite_TickNFrames(param0, 55 * FX32_ONE);
}

static BOOL ov12_02232888(ManagedSprite *param0, int *param1)
{
    BOOL v0 = 0;

    switch (*param1) {
    case 0:
        if (ManagedSprite_IsAnimated(param0) == 0) {
            (*param1)++;
            v0 = 1;
        }
        break;
    case 1:
        v0 = 1;
        break;
    default:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_022328B8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232720 *v0 = param1;
    BOOL v1, v2;
    int v3;

    switch (v0->unk_0C) {
    case 0:
        ov12_02232720(v0);
        ov12_0223283C(v0->unk_48[v0->unk_10], &v0->unk_60[v0->unk_10], FX32_ONE * 2);
        v0->unk_0C++;
        break;
    case 1:
        v1 = ov12_02232744(v0);
        v2 = ov12_02232888(v0->unk_48[v0->unk_10], &v0->unk_60[v0->unk_10]);

        if ((v1 == v2) && (v1 == 1)) {
            ManagedSprite_SetAnim(v0->unk_48[v0->unk_10], 1);
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_78[v0->unk_10]--;

        if (v0->unk_78[v0->unk_10] < 0) {
            v0->unk_10++;

            if (v0->unk_10 < 6) {
                v0->unk_0C = 0;
            } else {
                v0->unk_0C++;
            }
        }
        break;
    case 3:
        for (v3 = 0; v3 < 6; v3++) {
            ov12_0223283C(v0->unk_48[v3], &v0->unk_60[v3], FX32_ONE * 2);
        }

        v0->unk_0C++;
        break;
    case 4:
        for (v3 = 0; v3 < 6; v3++) {
            v1 = ov12_02232888(v0->unk_48[v3], &v0->unk_60[v3]);
        }

        if (v1 == 1) {
            v0->unk_0C++;
        }
        break;
    case 5:
        for (v3 = 0; v3 < 6; v3++) {
            Sprite_DeleteAndFreeResources(v0->unk_48[v3]);
        }

        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_022329E0(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02232720 *v0;
    SpriteTemplate v1;
    int v2;
    s16 v3;
    s16 v4;
    s16 v5;
    s16 v6;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02232720));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_18 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v3 = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_X_CENTER);
    v4 = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_Y_CENTER);

    v0->unk_44 = v4;
    v0->unk_46 = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v1 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00);

    for (v2 = 0; v2 < 6; v2++) {
        if (v2 == 0) {
            v0->unk_48[v2] = param3;
        } else {
            v0->unk_48[v2] = SpriteSystem_NewSprite(param1, param2, &v1);
        }

        ManagedSprite_SetDrawFlag(v0->unk_48[v2], 0);

        v5 = FX_Mul(FX_CosIdx((((90 * 0xffff) / 360) / (6 / 2)) * (v2 / 2)), 48 * FX32_ONE) >> FX32_SHIFT;
        v6 = FX_Mul(FX_SinIdx((((90 * 0xffff) / 360) / (6 / 2)) * (v2 / 2)), 48 * FX32_ONE) >> FX32_SHIFT;

        if ((v2 % 2) == 0) {
            v5 = v3 + v5;
            ManagedSprite_SetFlipMode(v0->unk_48[v2], 1);
        } else {
            v5 = v3 - v5;
        }

        v6 = v4 - v6;
        ManagedSprite_SetPositionXY(v0->unk_48[v2], v5, v6);

        if (v2 < 2) {
            v0->unk_78[v2] = 8;
        } else {
            v0->unk_78[v2] = 0;
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_022328B8, v0);
}

static void ov12_02232B40(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232B40 *v0 = param1;
    int v1, v2;

    switch (v0->unk_0C) {
    case 0:
        ManagedSprite_SetAnimateFlag(v0->unk_5C, 1);
        v0->unk_0C++;
        break;
    case 1:
        if (ManagedSprite_IsAnimated(v0->unk_5C) == 0) {
            ManagedSprite_SetAnimateFlag(v0->unk_5C, 0);
            v0->unk_0C++;
            ov12_02225E68(&v0->unk_14, 10, 10, 0, 8);
            v1 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
            v2 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
            ov12_02225BC8(&v0->unk_38, v1, v0->unk_88, v2, v0->unk_8A, 8);
        }
        break;
    case 2:
        ov12_02225C74(&v0->unk_38, v0->unk_10);

        if (ov12_022260C8(&v0->unk_14, v0->unk_10) == 0) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 1);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, 0x100);
            ManagedSprite_SetAnim(v0->unk_5C, 1);
            ManagedSprite_SetAnimationSpeed(v0->unk_5C, FX32_ONE);
            ManagedSprite_SetAnimateFlag(v0->unk_5C, 1);
            v0->unk_0C++;
        }
        break;
    case 3:
        if (ManagedSprite_IsAnimated(v0->unk_5C) == 0) {
            ManagedSprite_SetAnimateFlag(v0->unk_5C, 0);
            v0->unk_0C++;
            ov12_02225BC8(&v0->unk_60, 0, 0, v0->unk_8A, 0, 8);
        }
        break;
    case 4:
        if (ov12_02225C14(&v0->unk_60)) {
            ManagedSprite_SetPositionXY(v0->unk_5C, v0->unk_88, v0->unk_60.unk_02);
        } else {
            v0->unk_0C++;
        }
        break;
    case 5:
        Sprite_DeleteAndFreeResources(v0->unk_5C);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02232CA8(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02232B40 *v0;
    s16 v1, v2;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02232B40));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 0);

    v0->unk_88 = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(param0), 0);
    v0->unk_8A = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(param0), 1);
    v0->unk_5C = param3;

    ManagedSprite_SetPriority(v0->unk_5C, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_5C, 1);
    ManagedSprite_SetPositionXY(v0->unk_5C, v0->unk_88, v0->unk_8A);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02232B40, v0);
}

static const u16 Unk_ov12_0223A1CC[6] = {
    0x0,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1
};

static void ov12_02232D38(UnkStruct_ov12_02232D38 *param0, ManagedSprite *param1)
{
    int v0 = 1 << ov12_02225950(param1);
    PaletteData_BlendMulti(param0->unk_C4, 2, v0, 8, 0x0);
}

static void ov12_02232D64(UnkStruct_ov12_02232D38 *param0)
{
    int v0;
    f32 v1, v2;

    ov12_02225EF0(&param0->unk_28, 10, 10, 10, 20, 10, 8);
    ov12_02225E68(&param0->unk_4C, 10, 10, 1, 4);

    param0->unk_94 = 0;
    param0->unk_98 = 6;

    v0 = BattleAnimUtil_GetBattlerType(param0->unk_00, BattleAnimSystem_GetAttacker(param0->unk_00));

    ManagedSprite_SetDrawFlag(param0->unk_20, Unk_ov12_0223A1CC[v0]);
    ManagedSprite_SetDrawFlag(param0->unk_18, 1);

    ov12_02225FA4(&param0->unk_28, &v1, &v2);

    if (param0->unk_C8 == 1) {
        v1 = -v1;
    }

    ManagedSprite_SetAffineScale(param0->unk_18, v1, v2);
    ov12_02232D38(param0, param0->unk_18);
}

static BOOL ov12_02232E04(UnkStruct_ov12_02232D38 *param0)
{
    BOOL v0 = 0;
    f32 v1, v2;

    switch (param0->unk_94) {
    case 0:
        ov12_02225F6C(&param0->unk_28);
        ov12_02225FA4(&param0->unk_28, &v1, &v2);

        if (param0->unk_C8 == 1) {
            v1 = -v1;
        }

        ManagedSprite_SetAffineScale(param0->unk_18, v1, v2);
        ov12_0222605C(param0->unk_18, param0->unk_14, param0->unk_10, param0->unk_28.unk_04[4], 0);
        param0->unk_98--;

        if (param0->unk_98 < 0) {
            param0->unk_94++;
            ov12_02225EF0(&param0->unk_28, 10, 1, 20, 20, 10, 4);
        }
        break;
    case 1:
        ov12_02225F6C(&param0->unk_28);

        if (ov12_02225EB8(&param0->unk_4C)) {
            param0->unk_28.unk_00 = param0->unk_4C.unk_00;

            ov12_02225FA4(&param0->unk_28, &v1, &v2);

            if (param0->unk_C8 == 1) {
                v1 = -v1;
            }

            ManagedSprite_SetAffineScale(param0->unk_18, v1, v2);
            ov12_0222605C(param0->unk_18, param0->unk_14, param0->unk_10, param0->unk_28.unk_04[4], 0);
        } else {
            param0->unk_94++;

            ManagedSprite_SetDrawFlag(param0->unk_20, 0);
            ManagedSprite_SetDrawFlag(param0->unk_18, 0);

            v0 = 1;
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02232F30(UnkStruct_ov12_02232D38 *param0)
{
    s16 v0, v1;
    f32 v2, v3;
    int v4;

    ManagedSprite_GetPositionXY(param0->unk_1C, &v0, &v1);

    ov12_02225BC8(&param0->unk_70, v0, v0, v1 - 64, v1, 8);
    ov12_02225EF0(&param0->unk_28, 2, 10, 20, 10, 10, 8);
    ov12_02225FA4(&param0->unk_28, &v2, &v3);

    if (param0->unk_CC == 1) {
        v2 = -v2;
    }

    ManagedSprite_SetAffineScale(param0->unk_1C, v2, v3);
    ov12_02225C50(&param0->unk_70, param0->unk_1C);

    param0->unk_94 = 0;
    param0->unk_98 = 6;

    v4 = BattleAnimUtil_GetBattlerType(param0->unk_00, BattleAnimSystem_GetDefender(param0->unk_00));

    ManagedSprite_SetDrawFlag(param0->unk_24, Unk_ov12_0223A1CC[v4]);
    ManagedSprite_SetDrawFlag(param0->unk_1C, 1);

    ov12_02232D38(param0, param0->unk_1C);
}

static BOOL ov12_02232FF0(UnkStruct_ov12_02232D38 *param0)
{
    f32 v0, v1;
    BOOL v2 = 0;
    BOOL v3;

    switch (param0->unk_94) {
    case 0:
        param0->unk_98--;
        ov12_02225C50(&param0->unk_70, param0->unk_1C);

        if (param0->unk_98 < 0) {
            param0->unk_94++;
        }
        break;
    case 1:
        ov12_02225C50(&param0->unk_70, param0->unk_1C);

        v3 = ov12_02225F6C(&param0->unk_28);
        ov12_02225FA4(&param0->unk_28, &v0, &v1);

        if (param0->unk_CC == 1) {
            v0 = -v0;
        }

        ManagedSprite_SetAffineScale(param0->unk_1C, v0, v1);

        if (v3 == 0) {
            param0->unk_94++;
            v2 = 1;
        }
        break;
    case 2:
        v2 = 1;
        break;
    }

    return v2;
}

static void ov12_02233094(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232D38 *v0 = param1;

    switch (v0->unk_08) {
    case 0:
        ov12_02235780(v0->unk_00, 0, 16 - 0);
        ov12_02226424(&v0->unk_9C, 0, 8, 16 - 0, 16 - 8, 8);
        v0->unk_08++;
        break;
    case 1:
        if (ov12_02226454(&v0->unk_9C)) {
            v0->unk_08++;
            ov12_02232D64(v0);
        }
        break;
    case 2:
        if (ov12_02232E04(v0)) {
            v0->unk_08++;
            v0->unk_0C = 2;
        }
        break;
    case 3:
        v0->unk_0C--;

        if (v0->unk_0C < 0) {
            ov12_02232F30(v0);
            v0->unk_08++;
        }
        break;
    case 4:
        if (ov12_02232FF0(v0)) {
            v0->unk_08++;
            ov12_02226424(&v0->unk_9C, 8, 0, 16 - 8, 16 - 0, 8);
        }
        break;
    case 5:
        if (ov12_02226454(&v0->unk_9C)) {
            v0->unk_08++;
        }
        break;
    case 6:
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        break;
    }

    SpriteSystem_DrawSprites(v0->unk_04);
}

void ov12_02233178(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02232D38 *v0;
    PokemonSprite *v1;
    s16 v2, v3;
    s16 v4, v5;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02232D38));

    v0->unk_00 = param0;
    v0->unk_04 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_00);
    v0->unk_C4 = BattleAnimSystem_GetPaletteData(v0->unk_00);

    v1 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));
    v2 = PokemonSprite_GetAttribute(v1, MON_SPRITE_X_CENTER);
    v3 = PokemonSprite_GetAttribute(v1, MON_SPRITE_Y_CENTER);
    v3 -= PokemonSprite_GetAttribute(v1, MON_SPRITE_SHADOW_HEIGHT);

    v1 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v4 = PokemonSprite_GetAttribute(v1, MON_SPRITE_X_CENTER);
    v5 = PokemonSprite_GetAttribute(v1, MON_SPRITE_Y_CENTER);
    v5 -= PokemonSprite_GetAttribute(v1, MON_SPRITE_SHADOW_HEIGHT);

    v0->unk_14 = v3;
    v0->unk_10 = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_18 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 0);

    ManagedSprite_SetPriority(v0->unk_18, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_18, 1);
    ManagedSprite_SetPositionXY(v0->unk_18, v2, v3);
    ManagedSprite_SetDrawFlag(v0->unk_18, FALSE);
    ManagedSprite_SetExplicitOamMode(v0->unk_18, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_18, AFFINE_OVERWRITE_MODE_DOUBLE);

    v0->unk_1C = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 1);

    ManagedSprite_SetPriority(v0->unk_1C, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_1C, 1);
    ManagedSprite_SetPositionXY(v0->unk_1C, v4, v5);
    ManagedSprite_SetDrawFlag(v0->unk_1C, FALSE);
    ManagedSprite_SetExplicitOamMode(v0->unk_1C, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_1C, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineTranslation(v0->unk_1C, 0, 80 / 2);

    v0->unk_C8 = BattleAnimSystem_ShouldBattlerSpriteBeFlipped(v0->unk_00, 0);
    v0->unk_CC = BattleAnimSystem_ShouldBattlerSpriteBeFlipped(v0->unk_00, 1);
    v0->unk_20 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 2);
    v0->unk_24 = BattleAnimSystem_GetPokemonSprite(v0->unk_00, 3);

    ManagedSprite_SetDrawFlag(v0->unk_20, 0);
    ManagedSprite_SetDrawFlag(v0->unk_24, 0);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233094, v0);
}

static void ov12_022332E8(UnkStruct_ov12_022332E8 *param0)
{
    ov12_02225E68(&param0->unk_F8, 25, 10, 10, 10);
    ov12_022261C4(&param0->unk_48, &param0->unk_F8, ov12_02225EB8, param0->unk_38, param0->unk_3A, 9, 3, 1, param0->unk_3C[2], param0->unk_3C[1], param0->unk_3C[0], NULL);
}

static void ov12_02233338(UnkStruct_ov12_022332E8 *param0)
{
    ov12_02225E68(&param0->unk_F8, 10, 10, 25, 6);
    ov12_022261C4(&param0->unk_48, &param0->unk_F8, ov12_02225EB8, param0->unk_38, param0->unk_3A, 5, 3, 1, param0->unk_3C[0], param0->unk_3C[1], param0->unk_3C[2], NULL);
    ManagedSprite_SetDrawFlag(param0->unk_3C[0], 1);
}

static void ov12_02233394(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022332E8 *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        ov12_022332E8(v0);
        v0->unk_0C++;
        break;
    case 1:
        if (ov12_02226274(&v0->unk_48) == 0) {
            ManagedSprite_SetDrawFlag(v0->unk_3C[0], 1);
            v0->unk_0C++;
            ov12_02226108(&v0->unk_14, 4, 0, 1, 6);
        }
        break;
    case 2:
        if (ov12_0222619C(&v0->unk_14, v0->unk_38, v0->unk_3A, v0->unk_10) == 0) {
            v0->unk_0C++;
            ov12_02233338(v0);
        }
        break;
    case 3:
        if (ov12_02226274(&v0->unk_48) == 0) {
            v0->unk_0C++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 3; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_3C[v1]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02233454(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022332E8 *v0;
    int v1;
    SpriteTemplate v2;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_022332E8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v0->unk_38 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_3A = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_3A -= PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_SHADOW_HEIGHT);

    v2 = BattleAnimSystem_GetLastSpriteTemplate(param0);

    for (v1 = 0; v1 < 3; v1++) {
        if (v1 == 0) {
            v0->unk_3C[v1] = param3;
            ManagedSprite_SetAnim(v0->unk_3C[v1], 1);
        } else {
            v0->unk_3C[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v2);
            ManagedSprite_SetExplicitOamMode(v0->unk_3C[v1], GX_OAM_MODE_XLU);
        }

        ManagedSprite_SetPriority(v0->unk_3C[v1], 100);
        ManagedSprite_SetExplicitPriority(v0->unk_3C[v1], 1);
        ManagedSprite_SetPositionXY(v0->unk_3C[v1], v0->unk_38, v0->unk_3A);
        ManagedSprite_SetDrawFlag(v0->unk_3C[v1], FALSE);
        ManagedSprite_SetAffineOverwriteMode(v0->unk_3C[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233394, v0);
}

static void ov12_0223351C(UnkStruct_ov12_0223351C *param0, int param1)
{
    int v0;
    int v1 = ((360 * 0xffff) / 360) / 6;

    for (v0 = 0; v0 < 6; v0++) {
        ov12_02225A5C(&param0->unk_30[v0], (0 * 0xffff) / 360, (180 * 0xffff) / 360, 0, 0, FX32_ONE * 50, 0, 48);
        param0->unk_30[v0].unk_04[1] += (v1 * v0);
        param0->unk_30[v0].unk_04[5] *= param1;
    }
}

static void ov12_02233574(UnkStruct_ov12_0223351C *param0)
{
    int v0;
    s16 v1;
    u16 v2;

    for (v0 = 0; v0 < 6; v0++) {
        ov12_02225AE0(&param0->unk_30[v0]);

        v2 = param0->unk_30[v0].unk_04[1] * 5;
        v1 = FX_Mul(FX_SinIdx(v2), (FX32_ONE * 10) * param0->unk_14) >> FX32_SHIFT;

        ManagedSprite_SetPositionXY(param0->unk_18[v0], param0->unk_130 + param0->unk_30[v0].unk_00, param0->unk_132 + v1);

        if ((param0->unk_30[v0].unk_04[1] >= ((90 * 0xffff) / 360)) && (param0->unk_30[v0].unk_04[1] <= ((269 * 0xffff) / 360))) {
            ManagedSprite_SetExplicitPriority(param0->unk_18[v0], 1);
        } else {
            ManagedSprite_SetExplicitPriority(param0->unk_18[v0], BattleAnimSystem_GetPokemonSpritePriority(param0->unk_00) + 1);
        }
    }
}

static void ov12_02233644(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0223351C *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        ov12_02235780(v0->unk_00, 1, 16 - 1);
        ov12_02226424(&v0->unk_108, 1, 16, 16 - 1, 16 - 16, 10);
        ov12_0223351C(v0, v0->unk_14);
        ov12_02233574(v0);
        v0->unk_0C++;
        break;
    case 1:
        ov12_02233574(v0);

        if (ov12_02226454(&v0->unk_108)) {
            v0->unk_0C++;
            v0->unk_10 = (48 - (10 * 2));
        }
        break;
    case 2:
        ov12_02233574(v0);
        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v0->unk_0C++;
            ov12_02226424(&v0->unk_108, 16, 1, 16 - 16, 16 - 1, 10);
        }
        break;
    case 3:
        ov12_02233574(v0);

        if (ov12_02226454(&v0->unk_108)) {
            v0->unk_0C++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 6; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_18[v1]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02233734(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0223351C *v0;
    int v1;
    PokemonSprite *v2;
    SpriteTemplate v3;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_0223351C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    v0->unk_130 = PokemonSprite_GetAttribute(v2, MON_SPRITE_X_CENTER);
    v0->unk_132 = PokemonSprite_GetAttribute(v2, MON_SPRITE_Y_CENTER);

    v3 = BattleAnimSystem_GetLastSpriteTemplate(param0);

    for (v1 = 0; v1 < 6; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v3);
        }

        ManagedSprite_SetPriority(v0->unk_18[v1], 100);
        ManagedSprite_SetExplicitOamMode(v0->unk_18[v1], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(v0->unk_18[v1], 1);
    }

    v0->unk_14 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233644, v0);
}

static void ov12_022337E0(ManagedSprite *param0, UnkStruct_ov12_02225F6C *param1, int param2, int param3)
{
    s16 v0, v1;

    ManagedSprite_GetPositionXY(param0, &v0, &v1);
    ov12_02225BC8(param1, v0 + (0 * param2), v0 + (256 * param2), v1 + (0 * param3), v1 + (-128 * param3), 59);
    ManagedSprite_SetDrawFlag(param0, 1);
}

static BOOL ov12_02233834(ManagedSprite *param0, UnkStruct_ov12_02225F6C *param1)
{
    s16 v0, v1;
    s16 v2;
    fx32 v3;
    f32 v4;
    u16 v5;

    if (ov12_02225C50(param1, param0)) {
        ManagedSprite_GetPositionXY(param0, &v0, &v1);

        v5 = v0 * ((2 * 0xffff) / 360);
        v2 = FX_Mul(FX_SinIdx(v5), FX32_ONE * 14) >> FX32_SHIFT;

        ManagedSprite_SetPositionXY(param0, v0, v1 + v2);

        v3 = FX_Mul(FX_SinIdx(v5), FX32_CONST(0.17f));
        v3 *= -1;
        v4 = (1.0f) + FX_FX32_TO_F32(v3);

        ManagedSprite_SetAffineScale(param0, v4, v4);
        return 0;
    }

    return 1;
}

static BOOL ov12_02233900(UnkStruct_ov12_02233900 *param0)
{
    int v0;
    BOOL v1;

    if (param0->unk_274 < 15) {
        param0->unk_270++;

        if (param0->unk_270 > 6) {
            param0->unk_270 = 0;

            ov12_022337E0(param0->unk_18[param0->unk_274], &param0->unk_54[param0->unk_274], param0->unk_10, param0->unk_14);
            param0->unk_274++;
        }
    }

    for (v0 = 0; v0 < param0->unk_274; v0++) {
        v1 = ov12_02233834(param0->unk_18[v0], &param0->unk_54[v0]);
    }

    if (param0->unk_274 >= 15) {
        if (v1 == 1) {
            return 1;
        }
    }

    return 0;
}

static void ov12_02233988(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02233900 *v0 = param1;
    int v1;

    if (ov12_02233900(v0)) {
        for (v1 = 0; v1 < 15; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_18[v1]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
    } else {
        SpriteSystem_DrawSprites(v0->unk_08);
    }
}

void ov12_022339C4(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02233900 *v0;
    int v1;
    s16 v2, v3;
    PokemonSprite *v4;
    SpriteTemplate v5;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02233900));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v4 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));
    v2 = PokemonSprite_GetAttribute(v4, MON_SPRITE_X_CENTER);
    v3 = PokemonSprite_GetAttribute(v4, MON_SPRITE_Y_CENTER);
    v5 = BattleAnimSystem_GetLastSpriteTemplate(param0);

    for (v1 = 0; v1 < 15; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v5);
        }

        ManagedSprite_SetPriority(v0->unk_18[v1], 100);
        ManagedSprite_SetExplicitPriority(v0->unk_18[v1], 1);
        ManagedSprite_SetAffineOverwriteMode(v0->unk_18[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetDrawFlag(v0->unk_18[v1], FALSE);
        ManagedSprite_SetPositionXY(v0->unk_18[v1], v2, v3);
        ManagedSprite_SetAnim(v0->unk_18[v1], v1 % 3);
    }

    v0->unk_10 = BattleAnimMath_GetRotationDirection(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_14 = ov12_0222598C(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233988, v0);
}

static void ov12_02233AA0(UnkStruct_ov12_02233AA0 *param0)
{
    switch (param0->unk_2C) {
    case 0:
        param0->unk_18 = ((180 * 0xffff) / 360);
        param0->unk_24 = 5;
        param0->unk_1C = (16 * FX32_ONE);
        param0->unk_28 = 16;
        break;
    case 1:
        param0->unk_18 = ((180 * 0xffff) / 360);
        param0->unk_24 = -5;
        param0->unk_1C = (-16 * FX32_ONE);
        param0->unk_28 = 16;
        break;
    case 2:
        param0->unk_18 = ((180 * 0xffff) / 360);
        param0->unk_24 = 10;
        param0->unk_1C = (20 * FX32_ONE);
        param0->unk_28 = 16;
        param0->unk_28 = 16;
        break;
    }
}

static void ov12_02233AF4(UnkStruct_ov12_02233AA0 *param0)
{
    u32 *v0 = ov12_022265E4(param0->unk_04);
    int v1;
    s16 v2;
    s16 v3;
    s16 v4;
    u16 v5;
    int v6;
    int v7 = param0->unk_10 + -8;
    int v8 = param0->unk_10 + 80 - -8;
    int v9;

    if (v7 < 0) {
        v7 = 0;
    }

    if (v8 > 192) {
        v8 = 192;
    }

    param0->unk_20 *= -1;

    for (v1 = v7; v1 < v8; v1++) {
        if (v1 & 2) {
            v6 = param0->unk_1C + ((1 * FX32_ONE) * param0->unk_20);
        } else {
            v6 = param0->unk_1C - ((1 * FX32_ONE) * param0->unk_20);
        }

        v5 = param0->unk_18 + (((180 * 0xffff) / 360) / 80) * (v1 - v7);
        v2 = FX_Mul(FX_SinIdx(v5), v6) >> FX32_SHIFT;
        v2 += ((v1 - param0->unk_14) * param0->unk_24) / 10;
        v3 = param0->unk_30 & 0xffff;
        v4 = param0->unk_30 >> 16;
        v9 = v1 - 1;

        if (v9 < 0) {
            v9 += 192;
        }

        v0[v9] = ov12_022266E8(v3 + v2, v4);
    }
}

static void ov12_02233BD8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02233AA0 *v0 = param1;

    switch (v0->unk_08) {
    case 0:
        ov12_02233AA0(v0);
        ov12_02233AF4(v0);
        v0->unk_08++;
        break;
    case 1:
        v0->unk_28--;
        ov12_02233AF4(v0);

        if (v0->unk_28 < 0) {
            v0->unk_2C++;

            if (v0->unk_2C < 3) {
                v0->unk_08 = 0;
            } else {
                v0->unk_08++;
            }
        }
        break;
    case 2:
        if (BattleAnimSystem_IsBattlerSemiInvulnerable(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00)) == 0) {
            PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_HIDE, 0);
        }

        ov12_022265F8(v0->unk_04);
        ov12_022265C0(v0->unk_04);

        Bg_SetPriority(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), BattleAnimSystem_GetBgPriority(v0->unk_00, 1));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00));

        Bg_ClearTilesRange(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), 0x4000, 0, BattleAnimSystem_GetHeapID(v0->unk_00));
        Bg_ClearTilemap(BattleAnimSystem_GetBgConfig(v0->unk_00), BattleAnimSystem_GetBgLayer(v0->unk_00, 1));

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        break;
    }
}

void ov12_02233CD4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02233AA0 *v0;
    PokemonSprite *v1;
    s16 v2, v3;
    int v4;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02233AA0));

    v0->unk_00 = param0;
    v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));

    v2 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_X_CENTER);
    v3 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v3 -= PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_SHADOW_HEIGHT);

    if (BattleAnimSystem_IsBattlerSemiInvulnerable(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00)) == 0) {
        PokemonSprite_SetAttribute(v0->unk_0C, MON_SPRITE_HIDE, 1);
    }

    v0->unk_14 = v3;
    v2 = v2 - (80 / 2);

    v0->unk_10 = v3 - (80 / 2);
    v0->unk_30 = ov12_022266E8(-v2, -v0->unk_10);
    v0->unk_04 = ov12_02226544(BattleAnimUtil_GetHOffsetRegisterForBg(BattleAnimSystem_GetBgID(v0->unk_00, 1)), v0->unk_30, BattleAnimSystem_GetHeapID(v0->unk_00));
    v0->unk_20 = 1;

    v4 = BattleAnimUtil_GetBattlerType(v0->unk_00, BattleAnimSystem_GetDefender(param0));

    if ((v4 == 3) || (v4 == 4)) {
        Bg_SetPriority(BattleAnimSystem_GetBgLayer(v0->unk_00, 1), BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00) + 1);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233BD8, v0);
}

static void ov12_02233DCC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02233DCC *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        ov12_02225BC8(&v0->unk_0C, 127, 0, 0, 0, 8);
        GX_SetVisibleWnd(GX_WNDMASK_W0);
        ov12_02235838(v0->unk_00, 0, 0);
        G2_SetWnd0Position(0, 0, 255, 191);
        v0->unk_08 = 7;
        v0->unk_04++;
        break;
    case 1:
        v0->unk_08--;

        if (v0->unk_08 < 0) {
            PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x1, BattleAnimSystem_GetBaseBgPalettes(v0->unk_00), 0, 0, 16, 0xffff);
            v0->unk_04++;
        }
        break;
    case 2:
        if (ov12_02225C14(&v0->unk_0C)) {
            G2_SetWnd0Position(127 - v0->unk_0C.unk_00, 0, 128 + v0->unk_0C.unk_00, 191);
        } else {
            v0->unk_04++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v0->unk_00)) == 0) {
            v0->unk_04++;
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x1, BattleAnimSystem_GetBaseBgPalettes(v0->unk_00), 0, 16, 0, 0xffff);
        }
        break;
    case 4:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v0->unk_00)) == 0) {
            v0->unk_04++;
        }
        break;
    case 5:
        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        break;
    }
}

void ov12_02233F30(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02233DCC *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02233AA0));
    v0->unk_00 = param0;

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233DCC, v0);
}

static void ov12_02233F4C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02233F4C *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        ov12_02235780(v0->unk_00, 0, 16 - 0);
        ov12_02226424(&v0->unk_14, 0, 16, 16 - 0, 16 - 16, 8);
        v0->unk_0C++;
        break;
    case 1:
        if (ov12_02226454(&v0->unk_14)) {
            v0->unk_0C++;
        }
        break;
    case 2:
        if (ManagedSprite_IsAnimated(v0->unk_10) == 0) {
            v0->unk_0C++;
            ov12_02226424(&v0->unk_14, 16, 0, 16 - 16, 16 - 0, 8);
        }
        break;
    case 3:
        if (ov12_02226454(&v0->unk_14)) {
            v0->unk_0C++;
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_10);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02234008(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02233F4C *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02233F4C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = param3;

    ManagedSprite_SetAnimateFlag(v0->unk_10, 1);
    ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_XLU);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233F4C, v0);
}

static void ov12_02234044(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02234044 *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        ov12_02225EF0(&v0->unk_14, v0->unk_5C, v0->unk_60, v0->unk_64, v0->unk_68, v0->unk_6C, v0->unk_74 >> 16);
        ov12_0222619C(&v0->unk_38, v0->unk_0A, v0->unk_08, v0->unk_10);
        ov12_022260E8(&v0->unk_14, v0->unk_10);
        ov12_02226024(v0->unk_10, v0->unk_08, v0->unk_0C, v0->unk_14.unk_04[4], 0);
        v0->unk_04++;
        break;
    case 1:
        ov12_0222619C(&v0->unk_38, v0->unk_0A, v0->unk_08, v0->unk_10);
        v1 = ov12_022260E8(&v0->unk_14, v0->unk_10);
        ov12_02226024(v0->unk_10, v0->unk_08, v0->unk_0C, v0->unk_14.unk_04[4], 0);

        if (v1 == 0) {
            v0->unk_04++;
        }
        break;
    case 2:
        ov12_02225EF0(&v0->unk_14, v0->unk_60, v0->unk_5C, v0->unk_68, v0->unk_64, v0->unk_6C, v0->unk_74 & 0xffff);
        ov12_0222619C(&v0->unk_38, v0->unk_0A, v0->unk_08, v0->unk_10);
        ov12_022260E8(&v0->unk_14, v0->unk_10);
        ov12_02226024(v0->unk_10, v0->unk_08, v0->unk_0C, v0->unk_14.unk_04[4], 0);
        v0->unk_04++;
        break;
    case 3:
        ov12_0222619C(&v0->unk_38, v0->unk_0A, v0->unk_08, v0->unk_10);
        v1 = ov12_022260E8(&v0->unk_14, v0->unk_10);
        ov12_02226024(v0->unk_10, v0->unk_08, v0->unk_0C, v0->unk_14.unk_04[4], 0);

        if (v1 == 0) {
            v0->unk_70--;

            if (v0->unk_70 <= 0) {
                v0->unk_04++;
            } else {
                v0->unk_04 = 0;
            }
        }
        break;
    case 4:
        PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_0A);
        PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_08);

        PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, 0x100);
        PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, 0x100);

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }
}

void ov12_02234214(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234044 *v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02234044));

    v0->unk_00 = param0;
    v0->unk_0C = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));
    v0->unk_08 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_0A = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_5C = 10;
    v0->unk_60 = 7;
    v0->unk_64 = 10;
    v0->unk_68 = 30;
    v0->unk_6C = 10;
    v0->unk_70 = 1;
    v0->unk_74 = ((4 << 16) | 3);

    ov12_02226108(&v0->unk_38, 2, 0, 1, 2);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02234044, v0);
}

static void ov12_02234290(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02234290 *v0 = param1;

    if (ov12_02225C50(&v0->unk_08, v0->unk_2C) == 0) {
        Sprite_DeleteAndFreeResources(v0->unk_2C);
        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_04);
}

void ov12_022342C4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234290 *v0;
    int v1;
    int v2, v3;
    int v4, v5;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02234290));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_02220300(param0);

    v1 = BattleAnimSystem_GetAttacker(param0);

    if (BattleAnimUtil_GetBattlerSide(param0, v1) == 0x3) {
        v0->unk_2C = BattleAnimSystem_GetSprite(param0, 0);
        Sprite_DeleteAndFreeResources(BattleAnimSystem_GetSprite(param0, 1));
    } else {
        v0->unk_2C = BattleAnimSystem_GetSprite(param0, 1);
        Sprite_DeleteAndFreeResources(BattleAnimSystem_GetSprite(param0, 0));
    }

    v2 = BattleAnimMath_GetRotationDirection(param0, v1);
    v3 = ov12_0222598C(param0, v1);
    v4 = BattleAnimUtil_GetBattlerPos(param0, v1, 0);
    v5 = BattleAnimUtil_GetBattlerPos(param0, v1, 1);

    v4 += 64 * v2;
    v5 += -16 * v3;

    ManagedSprite_SetPositionXY(v0->unk_2C, v4, v5);

    ov12_02225BC8(&v0->unk_08, v4, v4 + (48 * v2), v5, v5 + (-16 * v3), 6);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02234290, v0);
}

static void ov12_022343A0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022343A0 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        ov12_02226108(&v0->unk_40, 4, 0, 1, 4);
        v0->unk_04++;
        break;
    case 1:
        if (ov12_0222619C(&v0->unk_40, v0->unk_18, v0->unk_1A, v0->unk_14) == 0) {
            v0->unk_04++;
            ov12_02225BC8(&v0->unk_1C, v0->unk_18, v0->unk_18 + (40 * v0->unk_0C), v0->unk_1A, v0->unk_1A + (-7 * v0->unk_10), 4);
        }
        break;
    case 2:
        if (ov12_02225C74(&v0->unk_1C, v0->unk_14) == 0) {
            v0->unk_04++;
            v0->unk_08 = 8;
        }
        break;
    case 3:
        v0->unk_08--;

        if (v0->unk_08 < 0) {
            v0->unk_04++;
            ov12_02225BC8(&v0->unk_1C, v0->unk_18 + (40 * v0->unk_0C), v0->unk_18, v0->unk_1A + (-7 * v0->unk_10), v0->unk_1A, 4);
        }
        break;
    case 4:
        if (ov12_02225C74(&v0->unk_1C, v0->unk_14) == 0) {
            v0->unk_04++;
        }
        break;
    case 5:
        PokemonSprite_SetAttribute(v0->unk_14, MON_SPRITE_X_CENTER, v0->unk_18);
        PokemonSprite_SetAttribute(v0->unk_14, MON_SPRITE_Y_CENTER, v0->unk_1A);
        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        break;
    }
}

void ov12_022344D0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_022343A0 *v0;
    int v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_022343A0));
    v0->unk_00 = param0;

    v1 = BattleAnimSystem_GetAttacker(param0);

    v0->unk_14 = BattleAnimSystem_GetBattlerSprite(param0, v1);
    v0->unk_18 = PokemonSprite_GetAttribute(v0->unk_14, MON_SPRITE_X_CENTER);
    v0->unk_1A = PokemonSprite_GetAttribute(v0->unk_14, MON_SPRITE_Y_CENTER);
    v0->unk_0C = BattleAnimMath_GetRotationDirection(param0, v1);
    v0->unk_10 = ov12_0222598C(param0, v1);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_022343A0, v0);
}

static void ov12_02234528(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02234528 *v0 = param1;
    s16 v1, v2;

    switch (v0->unk_04) {
    case 0:
        ov12_02225BC8(&v0->unk_18, v0->unk_14, v0->unk_14 + (-40 * v0->unk_08), v0->unk_16, v0->unk_16 + (16 * v0->unk_0C), 4);
        v0->unk_04++;
        break;
    case 1:
        if (ov12_02225C74(&v0->unk_18, v0->unk_10) == 0) {
            v0->unk_04++;
            ov12_02226108(&v0->unk_3C, 4, 0, 1, 4);
        }
        break;
    case 2:
        v1 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
        v2 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);

        if (ov12_0222619C(&v0->unk_3C, v1, v2, v0->unk_10) == 0) {
            v0->unk_04++;
            ov12_02225BC8(&v0->unk_18, v0->unk_14 + (-40 * v0->unk_08), v0->unk_14, v0->unk_16 + (16 * v0->unk_0C), v0->unk_16, 4);
        }
        break;
    case 3:
        if (ov12_02225C74(&v0->unk_18, v0->unk_10) == 0) {
            v0->unk_04++;
        }
        break;
    case 4:
        PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_14);
        PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_16);
        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        break;
    }
}

void ov12_0223464C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234528 *v0;
    int v1;

    v0 = ov12_02235E50(param0, sizeof(UnkStruct_ov12_02234528));
    v0->unk_00 = param0;

    v1 = BattleAnimSystem_GetDefender(param0);

    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(param0, v1);
    v0->unk_14 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_16 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_08 = BattleAnimMath_GetRotationDirection(param0, v1);
    v0->unk_0C = ov12_0222598C(param0, v1);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02234528, v0);
}
