#include <nitro.h>
#include <string.h>

#include "enums.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_0222660C_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay012/struct_ov12_02225D50.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226274.h"
#include "overlay012/struct_ov12_02226454.h"
#include "struct_defs/sprite_template.h"

#include "unk_02002F38.h"
#include "unk_0200762C.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "heap.h"
#include "unk_02018340.h"
#include "sys_task_manager.h"
#include "unk_020218BC.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_0222F700.h"
#include "overlay012/ov12_02235254.h"

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteGfxHandler * unk_04;
    Sprite * unk_08;
    UnkStruct_ov12_02225F6C unk_0C;
    CellActorData * unk_30[2];
    UnkStruct_ov12_02226274 unk_38;
    s16 unk_E8;
    s16 unk_EA;
    s16 unk_EC;
} UnkStruct_ov12_0222F700;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    s16 unk_08;
    Sprite * unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    UnkStruct_ov12_02225D50 unk_34;
    s16 unk_48;
    s16 unk_4A;
} UnkStruct_ov12_0222F888;

typedef struct {
    CellActorData * unk_00;
    UnkStruct_ov12_02225F6C unk_04;
    UnkStruct_ov12_02225D50 unk_28;
    s16 unk_3C;
    s16 unk_3E;
    s16 unk_40;
    int unk_44;
    BOOL unk_48;
} UnkStruct_ov12_0222FAFC;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    UnkStruct_ov12_0222FAFC unk_0C;
    UnkStruct_ov12_0222FAFC unk_58[2];
    int unk_EC;
    int unk_F0;
    int unk_F4;
    int unk_F8;
} UnkStruct_ov12_0222FC44;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteGfxHandler * unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    UnkStruct_ov12_02225F6C unk_34;
    CellActorData * unk_58;
    Sprite * unk_5C;
    s16 unk_60;
    s16 unk_62;
    s16 unk_64;
    s16 unk_66;
} UnkStruct_ov12_0222FF80;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    int unk_08;
    Sprite * unk_0C;
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16;
    UnkStruct_ov12_0222660C * unk_18;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02226454 unk_40;
} UnkStruct_ov12_02230194;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteGfxHandler * unk_04;
    int unk_08;
    int unk_0C;
    CellActorData * unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225D50 unk_38;
    BOOL unk_4C;
} UnkStruct_ov12_02230540;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    Sprite * unk_08;
    CellActorData * unk_0C;
    BOOL unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    s16 unk_38;
    s16 unk_3A;
    int unk_3C;
} UnkStruct_ov12_02230600;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    Sprite * unk_10;
    UnkStruct_ov12_0222660C * unk_14;
    PaletteData * unk_18;
    UnkStruct_ov12_02226454 unk_1C;
    int unk_44;
    CellActorData * unk_48;
} UnkStruct_ov12_02230910;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    CellActorData * unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225D50 unk_38;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02230BE0;

typedef struct {
    CellActorData * unk_00;
    UnkStruct_ov12_02225F6C unk_04;
    BOOL unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
} UnkStruct_ov12_02230E24;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    Sprite * unk_18;
    s16 unk_1C;
    s16 unk_1E;
    UnkStruct_ov12_02225F6C unk_20;
    UnkStruct_ov12_02230E24 unk_44[4];
    int unk_124;
} UnkStruct_ov12_02230F3C;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    Sprite * unk_10;
    s16 unk_14;
    s16 unk_16;
    UnkStruct_ov12_02225F6C unk_18;
    s32 unk_3C;
    Sprite * unk_40;
    s16 unk_44;
    s16 unk_46;
    CellActorData * unk_48;
    UnkStruct_ov12_02225F6C unk_4C;
    UnkStruct_ov12_02225F6C unk_70;
} UnkStruct_ov12_022310D4;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteGfxHandler * unk_04;
    int unk_08;
    int unk_0C;
    Sprite * unk_10;
    CellActorData * unk_14;
    s16 unk_18;
    s16 unk_1A;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02226454 unk_40;
    s16 unk_68;
} UnkStruct_ov12_02231390;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    Sprite * unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    int unk_38;
    CellActorData * unk_3C;
    int unk_40;
    UnkStruct_ov12_02225F6C unk_44;
    UnkStruct_ov12_02225F6C unk_68;
    UnkStruct_ov12_02226454 unk_8C;
    s16 unk_B4;
    s16 unk_B6;
} UnkStruct_ov12_02231508;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    Sprite * unk_10;
    CellActorData * unk_14;
    UnkStruct_ov12_02225F6C unk_18;
    UnkStruct_ov12_02226454 unk_3C;
    s16 unk_64;
    s16 unk_66;
    int unk_68;
    int unk_6C;
} UnkStruct_ov12_02231760;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    Sprite * unk_10;
    Sprite * unk_14[4];
    CellActorData * unk_24;
    UnkStruct_ov12_02225F6C unk_28;
    s16 unk_4C;
    s16 unk_4E;
    int unk_50;
    int unk_54;
    int unk_58;
} UnkStruct_ov12_022319AC;

typedef struct {
    int unk_00;
    UnkStruct_ov12_0221FCDC * unk_04;
    Sprite * unk_08;
    s16 unk_0C;
    s16 unk_0E;
    UnkStruct_ov12_02225D50 unk_10;
    UnkStruct_ov12_02225F6C unk_24;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02231CD4;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    int unk_08;
    Sprite * unk_0C;
    UnkStruct_ov12_02225F6C unk_10;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
} UnkStruct_ov12_02231F18;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    int unk_10;
    CellActorData * unk_14;
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
    UnkStruct_ov12_0221FCDC * unk_04;
    Sprite * unk_08;
    s16 unk_0C;
    s16 unk_0E;
    UnkStruct_ov12_02225F6C unk_10;
    int unk_34;
} UnkStruct_ov12_022323E4;

typedef struct {
    int unk_00;
    UnkStruct_ov12_0221FCDC * unk_04;
    int unk_08;
    Sprite * unk_0C;
    s16 unk_10;
    s16 unk_12;
    UnkStruct_ov12_02225F6C unk_14;
    Sprite * unk_38;
    s16 unk_3C;
    s16 unk_3E;
    UnkStruct_ov12_02225F6C unk_40;
} UnkStruct_ov12_022324E0;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    Sprite * unk_18;
    UnkStruct_ov12_02225F6C unk_1C;
    int unk_40;
    s16 unk_44;
    s16 unk_46;
    CellActorData * unk_48[6];
    int unk_60[6];
    int unk_78[6];
} UnkStruct_ov12_02232720;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    Sprite * unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    UnkStruct_ov12_02225F6C unk_38;
    CellActorData * unk_5C;
    UnkStruct_ov12_02225F6C unk_60;
    int unk_84;
    s16 unk_88;
    s16 unk_8A;
} UnkStruct_ov12_02232B40;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteGfxHandler * unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    CellActorData * unk_18;
    CellActorData * unk_1C;
    CellActorData * unk_20;
    CellActorData * unk_24;
    UnkStruct_ov12_02225F6C unk_28;
    UnkStruct_ov12_02225F6C unk_4C;
    UnkStruct_ov12_02225F6C unk_70;
    int unk_94;
    int unk_98;
    UnkStruct_ov12_02226454 unk_9C;
    PaletteData * unk_C4;
    BOOL unk_C8;
    BOOL unk_CC;
} UnkStruct_ov12_02232D38;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    Sprite * unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    s16 unk_38;
    s16 unk_3A;
    CellActorData * unk_3C[3];
    UnkStruct_ov12_02226274 unk_48;
    UnkStruct_ov12_02225F6C unk_F8;
} UnkStruct_ov12_022332E8;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    CellActorData * unk_18[6];
    UnkStruct_ov12_02225F6C unk_30[6];
    UnkStruct_ov12_02226454 unk_108;
    s16 unk_130;
    s16 unk_132;
} UnkStruct_ov12_0223351C;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    CellActorData * unk_18[15];
    UnkStruct_ov12_02225F6C unk_54[15];
    int unk_270;
    int unk_274;
} UnkStruct_ov12_02233900;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    UnkStruct_ov12_02226504 * unk_04;
    int unk_08;
    Sprite * unk_0C;
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
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02225F6C unk_0C;
} UnkStruct_ov12_02233DCC;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteRenderer * unk_04;
    SpriteGfxHandler * unk_08;
    int unk_0C;
    CellActorData * unk_10;
    UnkStruct_ov12_02226454 unk_14;
} UnkStruct_ov12_02233F4C;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    Sprite * unk_10;
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
    UnkStruct_ov12_0221FCDC * unk_00;
    SpriteGfxHandler * unk_04;
    UnkStruct_ov12_02225F6C unk_08;
    CellActorData * unk_2C;
} UnkStruct_ov12_02234290;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Sprite * unk_14;
    s16 unk_18;
    s16 unk_1A;
    UnkStruct_ov12_02225F6C unk_1C;
    UnkStruct_ov12_02225F6C unk_40;
} UnkStruct_ov12_022343A0;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    Sprite * unk_10;
    s16 unk_14;
    s16 unk_16;
    UnkStruct_ov12_02225F6C unk_18;
    UnkStruct_ov12_02225F6C unk_3C;
} UnkStruct_ov12_02234528;

static void ov12_0222F700 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222F700 * v0 = param1;
    BOOL v1[3];
    int v2;

    v1[0] = ov12_02225BA0(&v0->unk_0C, v0->unk_E8, v0->unk_EA, v0->unk_08);
    v1[1] = ov12_02226274(&v0->unk_38);
    v1[2] = 0;

    sub_0200C7EC(v0->unk_04);

    for (v2 = 0; v2 < 3; v2++) {
        if (v1[v2] == 1) {
            return;
        }
    }

    sub_02007DEC(v0->unk_08, 0, v0->unk_E8);
    sub_02007DEC(v0->unk_08, 1, v0->unk_EA + ((-8 * FX32_ONE) >> FX32_SHIFT));
    ov12_02220220(v0->unk_00, param0);
    Heap_FreeToHeap(v0);
}

void ov12_0222F770 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_0222F700 * v0;
    int v1;
    int v2;
    UnkStruct_ov12_02225F6C v3;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222F700));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);
    v0->unk_08 = ov12_022232FC(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_E8 = sub_020080C0(v0->unk_08, 0);
    v0->unk_EA = sub_020080C0(v0->unk_08, 1);
    v0->unk_EC = sub_020080C0(v0->unk_08, 41);
    v0->unk_EA -= (-8 * FX32_ONE) >> FX32_SHIFT;

    ov12_022263A4(&v0->unk_0C, 1, 8);
    ov12_022263A4(&v3, 1, 10);

    v2 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));

    v0->unk_0C.unk_04[2] *= v2;
    v3.unk_04[2] *= v2;

    for (v1 = 0; v1 < 2; v1++) {
        v0->unk_30[v1] = ov12_022202C0(v0->unk_00, v1);
        sub_0200D474(v0->unk_30[v1], 100);
        sub_0200D460(v0->unk_30[v1], 1);
        SpriteActor_SetOAMMode(v0->unk_30[v1], GX_OAM_MODE_XLU);
    }

    ov12_022261C4(&v0->unk_38, &v3, ov12_02225AE0, v0->unk_E8, v0->unk_EA - v0->unk_EC, 2, 2, 0, v0->unk_30[0], v0->unk_30[1], NULL, NULL);
    ov12_02235780(v0->unk_00, 0xffffffff, 0xffffffff);
    ov12_022201E8(v0->unk_00, ov12_0222F700, v0);
}

static void ov12_0222F888 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222F888 * v0 = param1;

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
        if (ov12_02225DA0(&v0->unk_34)) {
            sub_02007DEC(v0->unk_0C, 9, v0->unk_34.unk_00);
        } else {
            ov12_02225D50(&v0->unk_34, v0->unk_34.unk_00, 0, 4);
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
        if (ov12_02225DA0(&v0->unk_34)) {
            sub_02007DEC(v0->unk_0C, 9, v0->unk_34.unk_00);
        } else {
            v0->unk_04++;
        }
        break;
    case 6:
        sub_02007DEC(v0->unk_0C, 0, v0->unk_48);
        sub_02007DEC(v0->unk_0C, 1, v0->unk_4A);
        sub_02007DEC(v0->unk_0C, 9, 0);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0222F9E4 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_0222F888 * v0;
    int v1;
    int v2;
    int v3;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222F700));

    v0->unk_00 = param0;
    v0->unk_04 = 0;
    v0->unk_0C = ov12_022232FC(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_48 = sub_020080C0(v0->unk_0C, 0);
    v0->unk_4A = sub_020080C0(v0->unk_0C, 1);

    ov12_02225BC8(&v0->unk_10, 0, -32, 0, 0, 3);
    ov12_02225D50(&v0->unk_34, 0, ((20 * 0xffff) / 360), 8);

    v2 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));

    v0->unk_10.unk_04[1] *= v2;
    v0->unk_34.unk_04[1] *= v2;

    v3 = ov12_02225964(v0->unk_00, ov12_02220248(v0->unk_00));

    {
        int v4 = ov12_0223525C(param0, ov12_02220240(v0->unk_00));
        int v5 = ov12_0223525C(param0, ov12_02220248(v0->unk_00));

        if ((v4 == 0x3) && (v5 == 0x3)) {
            sub_02007DEC(v0->unk_0C, 10, (80 / 2) * -1);
            sub_02007DEC(v0->unk_0C, 11, 80 / 2);
        } else if ((v4 == 0x4) && (v5 == 0x4)) {
            sub_02007DEC(v0->unk_0C, 10, (80 / 2) * +1);
            sub_02007DEC(v0->unk_0C, 11, 80 / 2);
        } else {
            sub_02007DEC(v0->unk_0C, 10, (80 / 2) * v3);
            sub_02007DEC(v0->unk_0C, 11, 80 / 2);
        }
    }

    ov12_022201E8(v0->unk_00, ov12_0222F888, v0);
}

static void ov12_0222FAFC (UnkStruct_ov12_0222FAFC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, const SpriteTemplate * param3, const UnkStruct_ov12_0222FAFC * param4)
{
    param0->unk_00 = SpriteActor_LoadResources(param1, param2, param3);
    param0->unk_04 = param4->unk_04;
    param0->unk_28 = param4->unk_28;
    param0->unk_3C = param4->unk_3C;
    param0->unk_3E = param4->unk_3E;
    param0->unk_40 = param4->unk_40;
    param0->unk_44 = param4->unk_44;
    param0->unk_48 = 0;

    SpriteActor_EnableObject(param0->unk_00, 0);
    sub_0200D474(param0->unk_00, 100);
    sub_0200D460(param0->unk_00, 1);
}

static void ov12_0222FB6C (UnkStruct_ov12_0222FAFC * param0)
{
    sub_0200D0F4(param0->unk_00);
}

static void ov12_0222FB78 (UnkStruct_ov12_0222FAFC * param0, BOOL param1)
{
    SpriteActor_EnableObject(param0->unk_00, param1);
}

static BOOL ov12_0222FB84 (UnkStruct_ov12_0222FAFC * param0)
{
    if (param0->unk_48 == 0) {
        return 1;
    }

    switch (param0->unk_44) {
    case 0:
    case 1:
        if (ov12_02225AE0(&param0->unk_04)) {
            ov12_02225E0C(&param0->unk_28);
            param0->unk_04.unk_04[5] = param0->unk_3C + param0->unk_28.unk_00;
            SpriteActor_SetSpritePositionXY(param0->unk_00, param0->unk_3E + param0->unk_04.unk_00, param0->unk_40 + param0->unk_04.unk_02);
        } else {
            if (param0->unk_44 < 1) {
                if (param0->unk_44 == 0) {
                    ov12_02225A8C(&param0->unk_04, param0->unk_04.unk_04[1], (((180 * 0xffff) / 360)), param0->unk_04.unk_04[1], (((180 * 0xffff) / 360)), param0->unk_04.unk_04[2], param0->unk_04.unk_04[4], (((10 * 0xffff) / 360)));
                }

                ov12_02225DF4(&param0->unk_28, (((0 * 0xffff) / 360)), (((360 * 0xffff) / 360)), (-1 * FX32_ONE), param0->unk_04.unk_04[0]);
            }

            param0->unk_44++;
        }
        break;
    case 2:
        return 0;
    }

    return 1;
}

static void ov12_0222FC44 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222FC44 * v0 = param1;
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
        G2_ChangeBlendAlpha((v0->unk_F8 / 10), 31 - (v0->unk_F8 / 10));

        if (v0->unk_F8 >= 310) {
            SpriteActor_SetOAMMode(v0->unk_0C.unk_00, GX_OAM_MODE_NORMAL);

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
            SpriteActor_EnableObject(v0->unk_58[v0->unk_F4].unk_00, 1);
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
        sub_0200D330(v0->unk_0C.unk_00);

        if (sub_02021FD0(v0->unk_0C.unk_00->unk_00) == 0) {
            SpriteActor_SetOAMMode(v0->unk_0C.unk_00, GX_OAM_MODE_XLU);
            v0->unk_EC++;
        }
        break;
    case 5:
        v0->unk_F8 -= 10;
        G2_ChangeBlendAlpha((v0->unk_F8 / 10), 31 - (v0->unk_F8 / 10));

        if (v0->unk_F8 <= 0) {
            v0->unk_EC++;
        }
        break;
    case 6:
        for (v1 = 0; v1 < 2; v1++) {
            ov12_0222FB6C(&v0->unk_58[v1]);
        }

        sub_0200D0F4(v0->unk_0C.unk_00);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);

        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_0222FE30 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_0222FC44 * v0;
    SpriteTemplate v1;
    int v2;
    int v3;
    int v4;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222FC44));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_F0 = 8;
    v0->unk_F4 = 0;
    v0->unk_EC = 0;

    v3 = ov12_02220240(param0);
    v4 = ov12_02225964(param0, v3);
    v4 *= (-32 * FX32_ONE);

    v0->unk_0C.unk_00 = param3;
    v0->unk_0C.unk_44 = 0;

    ov12_02225A8C(&v0->unk_0C.unk_04, (((90 * 0xffff) / 360)), (((270 * 0xffff) / 360)), (((90 * 0xffff) / 360)), (((270 * 0xffff) / 360)), v4, (-8 * FX32_ONE), (((10 * 0xffff) / 360)));
    ov12_02225DF4(&v0->unk_0C.unk_28, (((0 * 0xffff) / 360)), (((360 * 0xffff) / 360)), (-1 * FX32_ONE), v0->unk_0C.unk_04.unk_04[0]);

    v0->unk_0C.unk_3C = v0->unk_0C.unk_04.unk_04[5];
    v0->unk_0C.unk_48 = 1;
    v0->unk_0C.unk_3E = ov12_022258E0(param0, v3, 0);
    v0->unk_0C.unk_40 = ov12_022258E0(param0, v3, 1);

    SpriteActor_SetSpritePositionXY(v0->unk_0C.unk_00, v0->unk_0C.unk_3E, v0->unk_0C.unk_40);
    sub_0200D474(v0->unk_0C.unk_00, 100);
    sub_0200D460(v0->unk_0C.unk_00, 1);

    v1 = ov12_0222329C(v0->unk_00);
    v1.x = v0->unk_0C.unk_3E;
    v1.y = v0->unk_0C.unk_40;

    for (v2 = 0; v2 < 2; v2++) {
        ov12_0222FAFC(&v0->unk_58[v2], v0->unk_04, v0->unk_08, &v1, &v0->unk_0C);
    }

    v0->unk_F8 = 0;

    ov12_02235780(v0->unk_00, 0, 31);
    SpriteActor_SetOAMMode(v0->unk_0C.unk_00, GX_OAM_MODE_XLU);

    for (v2 = 0; v2 < 2; v2++) {
        SpriteActor_SetOAMMode(v0->unk_58[v2].unk_00, GX_OAM_MODE_XLU);
    }

    ov12_022201E8(v0->unk_00, ov12_0222FC44, v0);
}

static void ov12_0222FF80 (UnkStruct_ov12_0222FF80 * param0)
{
    f32 v0, v1;

    sub_02007DEC(param0->unk_5C, 0, param0->unk_60 + param0->unk_10.unk_00);
    sub_02007DEC(param0->unk_5C, 1, param0->unk_62 + param0->unk_10.unk_02);
    SpriteActor_SetSpritePositionXY(param0->unk_58, param0->unk_60 + param0->unk_10.unk_00, param0->unk_62 + param0->unk_10.unk_02 - param0->unk_66);

    ov12_02225FA4(&param0->unk_34, &v0, &v1);
    v0 += (f32)(param0->unk_64 * (0.10f));
    sub_0200D6E8(param0->unk_58, v0, v1);

    param0->unk_64 *= -1;
}

static void ov12_02230018 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222FF80 * v0 = param1;
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
            sub_02007DEC(v0->unk_5C, 0, v0->unk_60);
            sub_02007DEC(v0->unk_5C, 1, v0->unk_62);
            v0->unk_08++;
        }
        break;
    case 2:
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_04);
}

void ov12_022300C4 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_0222FF80 * v0;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222FF80));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);
    v0->unk_08 = 0;
    v0->unk_0C = 0;
    v0->unk_5C = ov12_022232FC(v0->unk_00, ov12_02220248(v0->unk_00));
    v0->unk_60 = sub_020080C0(v0->unk_5C, 0);
    v0->unk_62 = sub_020080C0(v0->unk_5C, 1);
    v0->unk_66 = sub_020080C0(v0->unk_5C, 41);

    ov12_02226108(&v0->unk_10, 2, 0, 1, 6);
    v0->unk_58 = ov12_022202C0(v0->unk_00, 0);

    SpriteActor_SetOAMMode(v0->unk_58, GX_OAM_MODE_XLU);
    sub_0200D6A4(v0->unk_58, 2);
    sub_0200D474(v0->unk_58, 100);
    sub_0200D460(v0->unk_58, 1);

    ov12_02225EF0(&v0->unk_34, 10, 12, 10, 15, 10, 7);
    v0->unk_64 = 1;
    ov12_02235780(v0->unk_00, 28, 15);
    ov12_022201E8(v0->unk_00, ov12_02230018, v0);
}

static void ov12_02230194 (UnkStruct_ov12_02230194 * param0, void * param1)
{
    u32 v0;

    v0 = ((-param0->unk_12 & 0xffff) << 16) | (-param0->unk_10 & 0xffff);
    MI_CpuFill32(param1, v0, sizeof(u32) * 192);
}

static BOOL ov12_022301B4 (UnkStruct_ov12_02230194 * param0)
{
    u32 * v0;
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

static void ov12_0223025C (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02230194 * v0 = param1;

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
        sub_02019184(ov12_02220278(v0->unk_00), 2, 0, -v0->unk_10);
        sub_02019184(ov12_02220278(v0->unk_00), 2, 3, -v0->unk_12);

        v0->unk_08++;

        if (v0->unk_08 > 8) {
            ov12_02226424(&v0->unk_40, 0, 31, 31, 0, 16);
            v0->unk_04++;
        }
        break;
    case 3:
        if (ov12_02226454(&v0->unk_40)) {
            sub_02007DEC(v0->unk_0C, 6, 0);
            v0->unk_04++;
        }
        break;
    case 4:
        ov12_0222669C(v0->unk_18);

        BGL_SetPriority(ov12_022233B0(v0->unk_00, 1), ov12_02223428(v0->unk_00, 1));
        BGL_SetPriority(0, ov12_0222339C(v0->unk_00));

        sub_02019690(ov12_022233B0(v0->unk_00, 1), 0x4000, 0, ov12_0221FDE4(v0->unk_00));
        sub_02019EBC(ov12_02220278(v0->unk_00), ov12_022233B0(v0->unk_00, 1));

        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        break;
    default:
        break;
    }
}

void ov12_022303D0 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02230194 * v0;
    int v1;
    SysTask * v2;
    int v3;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_02230194));
    memset(v0, 0, sizeof(UnkStruct_ov12_02230194));

    v0->unk_00 = param0;

    v2 = ov12_022201E8(v0->unk_00, ov12_0223025C, v0);

    v0->unk_0C = ov12_022232FC(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_10 = sub_020080C0(v0->unk_0C, 0);
    v0->unk_12 = sub_020080C0(v0->unk_0C, 1);
    v0->unk_12 -= sub_020080C0(v0->unk_0C, 41);
    v0->unk_10 -= 80 / 2;
    v0->unk_12 -= 80 / 2;

    sub_02007DEC(v0->unk_0C, 6, 1);

    v1 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));

    v0->unk_14 = v0->unk_12 + -8;
    v0->unk_16 = v0->unk_12 + 80 - -8;

    if (v0->unk_14 < 0) {
        v0->unk_14 = 0;
    }

    if (v0->unk_16 > 192) {
        v0->unk_16 = 192;
    }

    v0->unk_18 = ov12_0222662C(v0->unk_14, v0->unk_16, (((5 * 0xffff) / 360)), (8 * FX32_ONE) * v1, 80, ov12_022233EC(param0, 1), SysTask_GetPriority(v2) + 1, ov12_022266E8(v0->unk_10, v0->unk_12), ov12_0221FDE4(param0));
    ov12_02225BC8(&v0->unk_1C, 0, 80, 0, 40, 24);
    v0->unk_1C.unk_04[1] *= v1;

    v3 = ov12_02235254(v0->unk_00, ov12_02220240(param0));

    if ((v3 == 3) || (v3 == 4)) {
        BGL_SetPriority(ov12_022233B0(v0->unk_00, 1), ov12_0222339C(v0->unk_00));
        BGL_SetPriority(0, ov12_0222339C(v0->unk_00) + 1);
    }

    ov12_0223025C(v2, v0);
}

static void ov12_02230540 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02230540 * v0 = param1;
    BOOL v1;
    f32 v2, v3;

    switch (v0->unk_08) {
    case 0:
        v1 = ov12_02225DC8(&v0->unk_38);
        G2_ChangeBlendAlpha(v0->unk_38.unk_00, 31 - v0->unk_38.unk_00);

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

        sub_0200D6E8(v0->unk_10, v2, v3);

        if (v1 == 0) {
            SpriteActor_EnableObject(v0->unk_10, 0);
            v0->unk_08++;
        }
        break;
    case 3:
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_04);
}

static void ov12_02230600 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02230600 * v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        ov12_02226138(&v0->unk_14);
        ov12_02225A18(&v0->unk_14, v0->unk_08, v0->unk_38, v0->unk_3A);

        if (v0->unk_10 == 1) {
            ov12_022259DC(&v0->unk_14, v0->unk_0C, v0->unk_38, v0->unk_3A - v0->unk_3C);
        }

        if (sub_020087B4(v0->unk_08) == 0) {
            sub_020086FC(v0->unk_08, 16, 0, 0, 0);

            if (v0->unk_10 == 1) {
                int v2;

                v2 = 1 << ov12_02225950(v0->unk_0C);
                sub_02003178(ov12_0222332C(v0->unk_00), 0x4, v2, 0, 16, 0, 0);
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

        if (sub_020087B4(v0->unk_08) == 0) {
            sub_02007DEC(v0->unk_08, 0, v0->unk_38);
            sub_02007DEC(v0->unk_08, 1, v0->unk_3A);

            if (v0->unk_10 == 1) {
                if (ov12_0222337C(v0->unk_00, ov12_02220248(v0->unk_00)) == 0) {
                    sub_02007DEC(v0->unk_08, 6, 0);
                }

                SpriteActor_SetSpritePositionXY(v0->unk_0C, v0->unk_38, v0->unk_3A - v0->unk_3C);
            }

            v0->unk_04++;
        }
        break;
    case 2:
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }
}

void ov12_02230754 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02230540 * v0;
    int v1;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_02230540));
    memset(v0, 0, sizeof(UnkStruct_ov12_02230540));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);
    v0->unk_4C = ov12_0221FDD4(param0);
    v0->unk_10 = ov12_022202C0(v0->unk_00, 0);

    ov12_02225E68(&v0->unk_14, 14, 10, 10, 8);
    ov12_02225D78(&v0->unk_38, 0, 16, 8);

    SpriteActor_SetOAMMode(v0->unk_10, GX_OAM_MODE_XLU);
    ov12_02235780(v0->unk_00, 0, 31);
    sub_0200D6A4(v0->unk_10, 2);

    if (v0->unk_4C == 1) {
        sub_0200D6E8(v0->unk_10, -(14 / (f32)10), (14 / (f32)10));
    } else {
        sub_0200D6E8(v0->unk_10, (14 / (f32)10), (14 / (f32)10));
    }

    sub_0200D474(v0->unk_10, 100);
    sub_0200D460(v0->unk_10, 1);

    ov12_022201E8(v0->unk_00, ov12_02230540, v0);
}

void ov12_02230804 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02230600 * v0;
    int v1;
    int v2;
    int v3;

    v0 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_02230600));
    memset(v0, 0, sizeof(UnkStruct_ov12_02230600));

    v0->unk_00 = param0;
    v0->unk_08 = ov12_022232FC(v0->unk_00, ov12_02220248(v0->unk_00));
    v0->unk_38 = sub_020080C0(v0->unk_08, 0);
    v0->unk_3A = sub_020080C0(v0->unk_08, 1);
    v0->unk_3C = sub_020080C0(v0->unk_08, 41);

    ov12_02226108(&v0->unk_14, 4, 0, 1, 4);

    v1 = ov12_02225964(v0->unk_00, ov12_02220248(v0->unk_00));
    v0->unk_14.unk_00 += v1;

    sub_020086FC(v0->unk_08, 0, 16, 0, 0);

    v0->unk_0C = ov12_022202C0(v0->unk_00, 1);
    v2 = ov12_02235254(v0->unk_00, ov12_02220240(v0->unk_00));
    v3 = ov12_02235254(v0->unk_00, ov12_02220248(v0->unk_00));

    if (((v2 == 2) && (v3 == 4)) || ((v2 == 5) && (v3 == 3))) {
        int v4;

        v4 = 1 << ov12_02225950(v0->unk_0C);
        sub_02003178(ov12_0222332C(v0->unk_00), 0x4, v4, 0, 0, 16, 0);
        v0->unk_10 = 1;

        if (ov12_0222337C(v0->unk_00, ov12_02220248(v0->unk_00)) == 0) {
            sub_02007DEC(v0->unk_08, 6, 1);
        }
    }

    ov12_022201E8(v0->unk_00, ov12_02230600, v0);
}

static BOOL ov12_02230910 (UnkStruct_ov12_02230910 * param0)
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

static void ov12_02230994 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02230910 * v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        ov12_02230910(v0);

        if (sub_0200D408(v0->unk_48) == 1) {
            if (ov12_0222337C(v0->unk_00, ov12_02220248(v0->unk_00)) == 0) {
                sub_02007DEC(v0->unk_10, 6, 1);
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
        BGL_SetPriority(ov12_022233B0(v0->unk_00, 1), ov12_02223428(v0->unk_00, 1));
        BGL_SetPriority(0, ov12_0222339C(v0->unk_00));

        if (ov12_0222337C(v0->unk_00, ov12_02220248(v0->unk_00)) == 0) {
            sub_02007DEC(v0->unk_10, 6, 0);
        }

        sub_02019690(ov12_022233B0(v0->unk_00, 1), 0x4000, 0, ov12_0221FDE4(v0->unk_00));
        sub_02019EBC(ov12_02220278(v0->unk_00), ov12_022233B0(v0->unk_00, 1));

        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02230A8C (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02230910 * v0;
    int v1;
    s16 v2, v3;
    int v4;
    int v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02230910));

    v0->unk_00 = param0;
    v0->unk_18 = ov12_0222332C(v0->unk_00);

    ov12_022357EC(v0->unk_00, 0, 16);
    ov12_02226424(&v0->unk_1C, 0, 8, 16, 8, 24);

    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220248(v0->unk_00));

    v2 = sub_020080C0(v0->unk_10, 0);
    v3 = sub_020080C0(v0->unk_10, 1);
    v3 -= sub_020080C0(v0->unk_10, 41);
    v2 -= (80 / 2);
    v3 -= (80 / 2);

    v0->unk_48 = ov12_022202C0(v0->unk_00, 0);
    v5 = ov12_02235254(v0->unk_00, ov12_02220248(v0->unk_00));

    if ((v5 == 5) || (v5 == 2)) {
        SpriteActor_EnableObject(v0->unk_48, 1);
        sub_0200D460(v0->unk_48, 2);
    } else {
        BGL_SetPriority(ov12_022233B0(v0->unk_00, 1), ov12_0222339C(v0->unk_00));
        BGL_SetPriority(0, ov12_0222339C(v0->unk_00) + 1);
        SpriteActor_EnableObject(v0->unk_48, 0);
    }

    v0->unk_14 = ov12_0222662C(v3, v3 + 80, (((5 * 0xffff) / 360)), (5 * FX32_ONE), 100, ov12_022233EC(param0, 1), 0, ov12_022266E8(-v2, -v3), ov12_0221FDE4(param0));
    v4 = 1 << 8;

    sub_02003A2C(v0->unk_18, 0, v4, 8, 0x0);
    ov12_022201E8(v0->unk_00, ov12_02230994, v0);
}

static void ov12_02230BE0 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02230BE0 * v0 = param1;
    BOOL v1;
    f32 v2, v3;
    int v4, v5;

    switch (v0->unk_0C) {
    case 0:
        v1 = ov12_02225EB8(&v0->unk_14);

        if (v1 == 1) {
            ov12_02225FA4(&v0->unk_14, &v2, &v3);
            sub_0200D6E8(v0->unk_10, v2 * v0->unk_54, v3);
        } else {
            v0->unk_0C++;
            v0->unk_4C = 5;

            ov12_02225E68(
                &v0->unk_14, 10, 10, 1, 8);
        }
        break;
    case 1:
        v1 = ov12_02225DA0(&v0->unk_38);
        sub_0200D79C(v0->unk_10, v0->unk_38.unk_00);

        if (v1 == 0) {
            if (v0->unk_4C > 0) {
                v0->unk_4C--;

                v4 = v0->unk_38.unk_00;
                v5 = v0->unk_50;
                v0->unk_50 = v0->unk_38.unk_00;

                ov12_02225D50(&v0->unk_38, v4, v5, 4);
            } else {
                v0->unk_0C++;
            }
        }
        break;
    case 2:
        v1 = ov12_02225EB8(&v0->unk_14);

        if (v1 == 1) {
            ov12_02225FA4(&v0->unk_14, &v2, &v3);
            sub_0200D6E8(v0->unk_10, v2 * v0->unk_54, v3);
        } else {
            v0->unk_0C++;
        }
        break;
    case 3:
        sub_0200D0F4(v0->unk_10);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02230CEC (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02230BE0 * v0;
    int v1;
    int v2;
    s16 v3, v4;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02230BE0));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v1 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));

    if (ov12_022234A8(v0->unk_00, 0) == 1) {
        v0->unk_54 = -1;
        v2 = v1 * -1;
    } else {
        v0->unk_54 = 1;
        v2 = v1;
    }

    v3 = ov12_022258E0(param0, ov12_02220240(v0->unk_00), 0);
    v4 = ov12_022258E0(param0, ov12_02220240(v0->unk_00), 1);

    v0->unk_10 = param3;

    sub_0200D6A4(v0->unk_10, 2);
    sub_0200D6E8(v0->unk_10, 1, 1);
    SpriteActor_SetSpritePositionXY(v0->unk_10, v3, v4);
    sub_0200D5DC(v0->unk_10, 40 * v1, 0);
    sub_0200D474(v0->unk_10, 100);
    sub_0200D460(v0->unk_10, 1);
    sub_0200D7E0(v0->unk_10, -12 * v2, 12);

    if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4) {
        sub_0200D364(v0->unk_10, 1);
    } else {
        sub_0200D364(v0->unk_10, 0);
    }

    ov12_02225E68(&v0->unk_14, 1, 10, 10, 8);

    if (v2 >= 0) {
        ov12_02225D50(&v0->unk_38, (((359 * 0xffff) / 360)), (((320 * 0xffff) / 360)), 4);
        v0->unk_50 = (((359 * 0xffff) / 360));
    } else {
        ov12_02225D50(&v0->unk_38, (((0 * 0xffff) / 360)), (((40 * 0xffff) / 360)), 4);
        v0->unk_50 = (((0 * 0xffff) / 360));
    }

    ov12_022201E8(v0->unk_00, ov12_02230BE0, v0);
}

static void ov12_02230E24 (UnkStruct_ov12_02230E24 * param0, CellActorData * param1, s16 param2, s16 param3, BOOL param4)
{
    param0->unk_00 = param1;

    ov12_02225E68(&param0->unk_04, 10, 10, 8, 8);

    param0->unk_2C = 3;
    param0->unk_30 = 8;
    param0->unk_34 = 10;
    param0->unk_28 = param4;

    SpriteActor_SetSpritePositionXY(param0->unk_00, param2, param3);
    SpriteActor_SetSpritePositionXY(param0->unk_00, param2, param3);
    sub_0200D6A4(param0->unk_00, 2);
    sub_0200D474(param0->unk_00, 100);
    sub_0200D460(param0->unk_00, 1);

    if (param4) {
        sub_0200D6E8(param0->unk_00, -1, 1);
    }

    SpriteActor_EnableObject(param0->unk_00, 0);
}

static void ov12_02230E9C (UnkStruct_ov12_02230E24 * param0)
{
    sub_0200D0F4(param0->unk_00);
}

static void ov12_02230EA8 (UnkStruct_ov12_02230E24 * param0)
{
    SpriteActor_EnableObject(param0->unk_00, 1);
    sub_0200D390(param0->unk_00, 1);
}

static BOOL ov12_02230EC0 (UnkStruct_ov12_02230E24 * param0)
{
    BOOL v0;
    f32 v1, v2;
    int v3;

    v0 = ov12_02225EB8(&param0->unk_04);

    if (v0 == 1) {
        ov12_02225FA4(&param0->unk_04, &v1, &v2);

        if (param0->unk_28) {
            sub_0200D6E8(param0->unk_00, -v1, 1);
        } else {
            sub_0200D6E8(param0->unk_00, v1, 1);
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

static void ov12_02230F3C (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02230F3C * v0 = param1;
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
        sub_02007DEC(v0->unk_18, 0, v0->unk_1C);
        sub_02007DEC(v0->unk_18, 1, v0->unk_1E);

        for (v1 = 0; v1 < 4; v1++) {
            ov12_02230E9C(v0->unk_44 + v1);
        }

        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02231010 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02230F3C * v0;
    int v1;
    int v2;
    int v3;
    int v4;
    SpriteTemplate v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02230F3C));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = ov12_02220248(param0);

    v0->unk_18 = ov12_022232FC(v0->unk_00, v2);
    v0->unk_1C = sub_020080C0(v0->unk_18, 0);
    v0->unk_1E = sub_020080C0(v0->unk_18, 1);

    ov12_02226108(&v0->unk_20, 4, 0, 1, 1);

    v3 = v0->unk_1E + 16;
    v4 = 0;
    v5 = ov12_0222329C(v0->unk_00);

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 == 0) {
            ov12_02230E24(&v0->unk_44[v1], param3, v0->unk_1C, v3, v4);
        } else {
            ov12_02230E24(&v0->unk_44[v1], SpriteActor_LoadResources(param1, param2, &v5), v0->unk_1C, v3, v4);
        }

        v3 -= 10;
        v4 ^= 1;
    }

    ov12_022201E8(v0->unk_00, ov12_02230F3C, v0);
}

static void ov12_022310D4 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022310D4 * v0 = param1;

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
            sub_02007DEC(v0->unk_10, 0, v0->unk_14);
            sub_02007DEC(v0->unk_10, 1, v0->unk_16);
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
            SpriteActor_EnableObject(v0->unk_48, 0);
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
            sub_02007DEC(v0->unk_10, 0, v0->unk_14);
            sub_02007DEC(v0->unk_10, 1, v0->unk_16);

            v0->unk_0C++;
        }
        break;
    case 6:
        sub_0200D0F4(v0->unk_48);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_022312A4 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_022310D4 * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022310D4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_3C = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
    v0->unk_14 = sub_020080C0(v0->unk_10, 0);
    v0->unk_16 = sub_020080C0(v0->unk_10, 1);

    ov12_02225BC8(&v0->unk_18, 0, -16 * v0->unk_3C, 0, 0, 4);

    v0->unk_40 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));
    v0->unk_44 = sub_020080C0(v0->unk_40, 0);
    v0->unk_46 = sub_020080C0(v0->unk_40, 1);
    v0->unk_48 = param3;

    sub_0200D390(v0->unk_48, 1);
    sub_0200D474(v0->unk_48, 100);
    sub_0200D460(v0->unk_48, 1);

    ov12_02225C98(&v0->unk_4C, &v0->unk_70, v0->unk_14, v0->unk_44, v0->unk_16, v0->unk_46, 10, (32 * FX32_ONE));
    ov12_022201E8(v0->unk_00, ov12_022310D4, v0);
}

static void ov12_02231390 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02231390 * v0 = param1;

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
            SpriteActor_EnableObject(v0->unk_14, 1);
            sub_02007DEC(v0->unk_10, 6, 0);
            v0->unk_08++;
        }
        break;
    case 3:
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_04);
}

void ov12_02231444 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02231390 * v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02231390));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);

    v1 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));

    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
    v0->unk_18 = sub_020080C0(v0->unk_10, 0);
    v0->unk_1A = sub_020080C0(v0->unk_10, 1);
    v0->unk_68 = sub_020080C0(v0->unk_10, 41);
    v0->unk_1A -= -8;
    v0->unk_14 = ov12_022202C0(v0->unk_00, 0);

    SpriteActor_SetOAMMode(v0->unk_14, GX_OAM_MODE_XLU);
    sub_02007DEC(v0->unk_10, 6, 1);

    ov12_022263A4(&v0->unk_1C, 2, 16);
    ov12_02235780(v0->unk_00, 16, 16 - 16);
    ov12_02226424(&v0->unk_40, 16, 0, 16 - 16, 16 - 0, 32);

    v0->unk_1C.unk_04[2] *= v1;

    ov12_022201E8(v0->unk_00, ov12_02231390, v0);
    sub_0200C7EC(v0->unk_04);
}

static BOOL ov12_02231508 (UnkStruct_ov12_02231508 * param0)
{
    BOOL v0 = 0;

    switch (param0->unk_38) {
    case 0:
        if (ov12_02225EB8(&param0->unk_14)) {
            sub_02007DEC(param0->unk_10, 13, param0->unk_14.unk_02);
        } else {
            param0->unk_38++;
            ov12_02225E68(
                &param0->unk_14, 15, 10, 10, 12);
        }
        break;
    case 1:
        if (ov12_02225EB8(&param0->unk_14)) {
            sub_02007DEC(param0->unk_10, 13, param0->unk_14.unk_02);
        } else {
            sub_02007DEC(param0->unk_10, 13, 0x100);
            param0->unk_38++;
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov12_02231584 (UnkStruct_ov12_02231508 * param0)
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
            SpriteActor_EnableObject(param0->unk_3C, 0);
            param0->unk_40++;
        }
        break;

    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231608 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02231508 * v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        ov12_02231508(v0);

        if (ov12_02231584(v0)) {
            v0->unk_0C++;
        }
        break;
    case 1:
        sub_0200D0F4(v0->unk_3C);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02231650 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02231508 * v0;
    int v1;
    int v2;
    s16 v3;
    s16 v4;
    int v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02231508));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v1 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));
    v2 = ov12_0222598C(v0->unk_00, ov12_02220240(v0->unk_00));

    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));

    v3 = sub_020080C0(v0->unk_10, 0);
    v4 = sub_020080C0(v0->unk_10, 1);

    ov12_02225E68(&v0->unk_14, 10, 10, 15, 12);
    v0->unk_3C = param3;

    sub_0200D390(v0->unk_3C, 1);
    sub_0200D6A4(v0->unk_3C, 2);
    SpriteActor_SetOAMMode(v0->unk_3C, GX_OAM_MODE_XLU);
    sub_0200D474(v0->unk_3C, 100);
    sub_0200D460(v0->unk_3C, 1);

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
    ov12_022201E8(v0->unk_00, ov12_02231608, v0);
}

static void ov12_02231760 (UnkStruct_ov12_02231760 * param0)
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

static void ov12_0223181C (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02231760 * v0 = param1;

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

                SpriteActor_SetOAMMode(v0->unk_14, GX_OAM_MODE_XLU);
                ov12_02226424(
                    &v0->unk_3C, 16, 0, 0, 16, 16);

                sub_020086FC(v0->unk_10, 0, 10, 0, (GX_RGB(31, 31, 31)));
            }
        }
        break;
    case 2:
        if (ov12_02226454(&v0->unk_3C)) {
            SpriteActor_EnableObject(v0->unk_14, 0);
        }

        if (sub_020087B4(v0->unk_10) == 0) {
            v0->unk_0C++;
            sub_020086FC(v0->unk_10, 10, 0, 0, (GX_RGB(31, 31, 31)));
        }
        break;
    case 3:
        if (sub_020087B4(v0->unk_10) == 0) {
            v0->unk_0C++;
        }
        break;
    case 4:
        sub_0200D0F4(v0->unk_14);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02231950 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02231760 * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02231760));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));
    v0->unk_14 = param3;

    sub_0200D474(v0->unk_14, 100);
    sub_0200D460(v0->unk_14, 1);
    SpriteActor_GetSpritePositionXY(v0->unk_14, &v0->unk_64, &v0->unk_66);

    ov12_022201E8(v0->unk_00, ov12_0223181C, v0);
}

static void ov12_022319AC (UnkStruct_ov12_022319AC * param0)
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

static void ov12_02231A38 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022319AC * v0 = param1;
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

                sub_0200D364(v0->unk_24, 1);
                sub_0200D390(v0->unk_24, 1);
            }
        }
        break;
    case 2:
        v0->unk_54--;

        if (v0->unk_54 < 0) {
            v0->unk_0C++;

            sub_02003178(ov12_0222332C(v0->unk_00), 0x1, ov12_02222354(v0->unk_00), -8, 0, 16, 0xffff);

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14[v1]) {
                    sub_020086FC(v0->unk_14[v1], 14, 16, 0, 0xffff);
                }
            }
        }
        break;
    case 3:
        if (sub_0200384C(ov12_0222332C(v0->unk_00)) == 0) {
            v0->unk_0C++;
            sub_02003178(ov12_0222332C(v0->unk_00), 0x1, ov12_02222354(v0->unk_00), -8, 16, 0, 0xffff);

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14[v1]) {
                    sub_020086FC(v0->unk_14[v1], 2, 0, 0, 0xffff);
                }
            }
        }
        break;
    case 4:
        if (sub_0200384C(ov12_0222332C(v0->unk_00)) == 0) {
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
                SpriteActor_EnableObject(v0->unk_24, v0->unk_58);
                v0->unk_58 ^= 1;
            }
        }
        break;
    case 6:
        sub_0200D0F4(v0->unk_24);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02231C1C (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_022319AC * v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022319AC));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_14[v1] = ov12_022232FC(v0->unk_00, v1);
    }

    v0->unk_24 = param3;

    sub_0200D474(v0->unk_24, 100);
    sub_0200D460(v0->unk_24, 1);
    SpriteActor_GetSpritePositionXY(v0->unk_24, &v0->unk_4C, &v0->unk_4E);

    v0->unk_4C -= 80 / 2;
    v0->unk_4E -= 80 / 2;

    SpriteActor_SetSpritePositionXY(v0->unk_24, v0->unk_4C, v0->unk_4E);
    SpriteActor_SetOAMMode(v0->unk_24, GX_OAM_MODE_XLU);

    v0->unk_54 = -16;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 26);
    ov12_022201E8(v0->unk_00, ov12_02231A38, v0);
}

static void ov12_02231CD4 (UnkStruct_ov12_02231CD4 * param0, BOOL param1)
{
    fx32 v0;

    ov12_02225D78(&param0->unk_10, 0, (((15 * 0xffff) / 360)), 3);

    if (param1) {
        param0->unk_10.unk_04[1] *= -1;
        sub_02007DEC(param0->unk_08, 10, 16);
    } else {
        sub_02007DEC(param0->unk_08, 10, -16);
    }

    param0->unk_4C = 0;
    param0->unk_50 = 0;
}

static BOOL ov12_02231D18 (UnkStruct_ov12_02231CD4 * param0)
{
    BOOL v0 = 0;

    switch (param0->unk_4C) {
    case 0:
        ov12_02225DC8(&param0->unk_10);
        sub_02007DEC(param0->unk_08, 9, param0->unk_10.unk_00);

        param0->unk_50--;

        if (param0->unk_50 < 0) {
            param0->unk_4C++;

            ov12_02225BC8(&param0->unk_24, param0->unk_0C, param0->unk_0C, param0->unk_0E, param0->unk_0E + 2, 2);
        }
        break;
    case 1:
        if (ov12_02225DC8(&param0->unk_10)) {
            sub_02007DEC(param0->unk_08, 9, param0->unk_10.unk_00);
        }

        if (ov12_02225C74(&param0->unk_24, param0->unk_08) == 0) {
            param0->unk_4C++;
            ov12_02225D78(&param0->unk_10, param0->unk_10.unk_00, 0, 3);
            ov12_02225BC8(&param0->unk_24, param0->unk_0C, param0->unk_0C, param0->unk_0E + 2, param0->unk_0E, 2);
        }
        break;
    case 2:
        ov12_02225C74(&param0->unk_24, param0->unk_08);

        if (ov12_02225DC8(&param0->unk_10)) {
            sub_02007DEC(param0->unk_08, 9, param0->unk_10.unk_00);
        } else {
            sub_02007DEC(param0->unk_08, 0, param0->unk_0C);
            sub_02007DEC(param0->unk_08, 1, param0->unk_0E);
            sub_02007DEC(param0->unk_08, 9, 0);
            param0->unk_4C++;
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231E28 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02231CD4 * v0 = param1;

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
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }
}

void ov12_02231E7C (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02231CD4 * v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02231CD4));
    v0->unk_04 = param0;

    v1 = ov12_02225964(v0->unk_04, ov12_02220240(v0->unk_04));

    if (ov12_02220280(param0, 0) == 0) {
        v0->unk_08 = ov12_022232FC(v0->unk_04, ov12_02220240(param0));
        v0->unk_0C = sub_020080C0(v0->unk_08, 0);
        v0->unk_0E = sub_020080C0(v0->unk_08, 1);
    } else {
        v0->unk_08 = ov12_022232FC(v0->unk_04, ov12_02220248(param0));
        v0->unk_0C = sub_020080C0(v0->unk_08, 0);
        v0->unk_0E = sub_020080C0(v0->unk_08, 1);
    }

    sub_02007DEC(v0->unk_08, 11, 50);

    if (v1 == 1) {
        v0->unk_54 = 0;
    } else {
        v0->unk_54 = 1;
    }

    ov12_02231CD4(v0, v0->unk_54);
    ov12_022201E8(v0->unk_04, ov12_02231E28, v0);
}

static BOOL ov12_02231F18 (UnkStruct_ov12_02231F18 * param0)
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
        sub_02007DEC(param0->unk_0C, 12, 0x100);
        sub_02007DEC(param0->unk_0C, 13, 0x100);
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231FD8 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02231F18 * v0 = param1;

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
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }
}

void ov12_02232024 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02231F18 * v0;
    Sprite * v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02231F18));

    v0->unk_00 = param0;
    v0->unk_0C = ov12_022232FC(v0->unk_00, ov12_02220240(param0));

    ov12_02225E68(&v0->unk_10, 10, 10, 15, 8);

    v0->unk_34 = 4;
    v0->unk_40 = ov12_02223354(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_3C = sub_020080C0(v0->unk_0C, 1);

    ov12_022201E8(v0->unk_00, ov12_02231FD8, v0);
}

static void ov12_02232084 (UnkStruct_ov12_02232084 * param0)
{
    ov12_02225E68(&param0->unk_18, param0->unk_74 / 100, 10, param0->unk_78 / 100, param0->unk_70 / 100);
    ov12_02235780(param0->unk_00, 16, 16 - 16);
    ov12_02226424(&param0->unk_3C, 16, 10, 16 - 16, 16 - 10, (param0->unk_70 / 100) * 2);

    param0->unk_64 = 0;
    param0->unk_68 = 0;
}

static BOOL ov12_022320EC (UnkStruct_ov12_02232084 * param0)
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

static BOOL ov12_022321C4 (UnkStruct_ov12_02232084 * param0)
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

static void ov12_0223223C (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02232084 * v0 = param1;
    BOOL v1, v2;

    switch (v0->unk_0C) {
    case 0:
        if (ov12_022321C4(v0)) {
            v0->unk_0C++;
            v0->unk_10 = 30;

            sub_0200D364(v0->unk_14, 0);
            sub_0200D390(v0->unk_14, 1);
            sub_0200D6E8(v0->unk_14, 1, 1);

            ov12_02226424(&v0->unk_3C, 0, 16, 16, 0, 4);
        }
        break;
    case 1:
        if (v0->unk_10 == 0) {
            sub_0200AAE0(8, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 1);
            v0->unk_10 = -1;
        } else {
            if (v0->unk_10 > 0) {
                v0->unk_10--;
            }
        }

        if (v0->unk_10 == -1) {
            if (sub_0200AC1C(1)) {
                sub_0200AAE0(8, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 1);
                v0->unk_10 = -2;
            }
        }

        if (sub_0200D3B8(v0->unk_14) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        if (sub_0200AC1C(1)) {
            v0->unk_0C++;
            ov12_02235780(v0->unk_00, 16, 0);
            ov12_02226424(&v0->unk_3C, 16, 0, 0, 16, 8);
        }
        break;
    case 3:
        if (ov12_02226454(&v0->unk_3C)) {
            SpriteActor_EnableObject(v0->unk_14, 0);
            v0->unk_0C++;
        }
        break;
    case 4:
        sub_0200D0F4(v0->unk_14);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02232378 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02232084 * v0;
    Sprite * v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02232084));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_14 = param3;

    sub_0200D474(v0->unk_14, 100);
    sub_0200D460(v0->unk_14, 1);
    sub_0200D6A4(v0->unk_14, 2);
    SpriteActor_SetOAMMode(v0->unk_14, GX_OAM_MODE_XLU);
    sub_0200D3CC(v0->unk_14, 4);

    v0->unk_6C = 3;
    v0->unk_70 = (4 * 100);
    v0->unk_74 = (15 * 100);
    v0->unk_78 = (10 * 100);

    ov12_022201E8(v0->unk_00, ov12_0223223C, v0);
}

static void ov12_022323E4 (UnkStruct_ov12_022323E4 * param0)
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

static void ov12_02232430 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022323E4 * v0 = param1;

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
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_0223249C (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_022323E4 * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022323E4));

    v0->unk_04 = param0;
    v0->unk_08 = ov12_022232FC(v0->unk_04, ov12_02220240(param0));
    v0->unk_0C = sub_020080C0(v0->unk_08, 0);
    v0->unk_0E = sub_020080C0(v0->unk_08, 1);
    v0->unk_34 = 0;

    ov12_022201E8(v0->unk_04, ov12_02232430, v0);
}

static void ov12_022324E0 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022324E0 * v0 = param1;

    switch (v0->unk_00) {
    case 0:
        ov12_022263A4(&v0->unk_14, 1, 64);
        v0->unk_14.unk_04[2] *= v0->unk_08;
        v0->unk_00++;
        break;
    case 1:
        if (ov12_02225BA0(&v0->unk_14, v0->unk_10, v0->unk_12 - -8, v0->unk_0C) == 0) {
            sub_02007DEC(v0->unk_0C, 0, v0->unk_10);
            sub_02007DEC(v0->unk_0C, 1, v0->unk_12);

            ov12_02225BC8(&v0->unk_14, v0->unk_10, v0->unk_10 + 32, 0, 0, 2);

            v0->unk_14.unk_04[1] *= v0->unk_08;
            v0->unk_00++;

            ov12_02225C14(&v0->unk_14);
            sub_02007DEC(v0->unk_0C, 0, v0->unk_14.unk_00);
        }
        break;
    case 2:
        if (ov12_02225C14(&v0->unk_14)) {
            sub_02007DEC(v0->unk_0C, 0, v0->unk_14.unk_00);
        } else {
            ov12_02225BC8(&v0->unk_40, v0->unk_3C, v0->unk_3C + (32 * v0->unk_08), 0, 0, 2);
            v0->unk_00++;
        }
        break;
    case 3:
        if (ov12_02225C14(&v0->unk_40)) {
            sub_02007DEC(v0->unk_38, 0, v0->unk_40.unk_00);
        } else {
            ov12_02225BC8(&v0->unk_14, v0->unk_14.unk_00, v0->unk_10, 0, 0, 8);
            v0->unk_00++;
        }
        break;
    case 4:
        if (ov12_02225C14(&v0->unk_14)) {
            sub_02007DEC(v0->unk_0C, 0, v0->unk_14.unk_00);
        } else {
            sub_02007DEC(v0->unk_0C, 0, v0->unk_10);
            ov12_02225BC8(&v0->unk_40, v0->unk_40.unk_00, v0->unk_3C, 0, 0, 8);
            v0->unk_00++;
        }
        break;
    case 5:
        if (ov12_02225C14(&v0->unk_40)) {
            sub_02007DEC(v0->unk_38, 0, v0->unk_40.unk_00);
        } else {
            sub_02007DEC(v0->unk_38, 0, v0->unk_3C);
            v0->unk_00++;
        }
        break;
    case 6:
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_022326AC (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_022324E0 * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022324E0));

    v0->unk_04 = param0;
    v0->unk_08 = ov12_02225964(v0->unk_04, ov12_02220240(v0->unk_04));
    v0->unk_0C = ov12_022232FC(v0->unk_04, ov12_02220240(param0));
    v0->unk_10 = sub_020080C0(v0->unk_0C, 0);
    v0->unk_12 = sub_020080C0(v0->unk_0C, 1);
    v0->unk_38 = ov12_022232FC(v0->unk_04, ov12_02220248(param0));
    v0->unk_3C = sub_020080C0(v0->unk_38, 0);
    v0->unk_3E = sub_020080C0(v0->unk_38, 1);

    ov12_022201E8(v0->unk_04, ov12_022324E0, v0);
}

static void ov12_02232720 (UnkStruct_ov12_02232720 * param0)
{
    param0->unk_40 = 0;
    ov12_02225EF0(&param0->unk_1C, 10, 9, 10, 8, 10, 2);
}

static BOOL ov12_02232744 (UnkStruct_ov12_02232720 * param0)
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
            sub_02007DEC(param0->unk_18, 12, 0x100);
            sub_02007DEC(param0->unk_18, 13, 0x100);
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

static void ov12_0223283C (CellActorData * param0, int * param1, fx32 param2)
{
    *param1 = 0;

    sub_0200D474(param0, 100);
    sub_0200D460(param0, 1);
    SpriteActor_EnableObject(param0, 1);
    sub_0200D390(param0, 1);
    sub_0200D3A4(param0, param2);
    sub_0200D364(param0, 0);
    sub_0200D3CC(param0, 0);
    sub_0200D34C(param0, 55 * FX32_ONE);
}

static BOOL ov12_02232888 (CellActorData * param0, int * param1)
{
    BOOL v0 = 0;

    switch (*param1) {
    case 0:
        if (sub_0200D3B8(param0) == 0) {
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

static void ov12_022328B8 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02232720 * v0 = param1;
    BOOL v1, v2;
    int v3;

    switch (v0->unk_0C) {
    case 0:
        ov12_02232720(v0);
        ov12_0223283C(v0->unk_48[v0->unk_10], &v0->unk_60[v0->unk_10], (FX32_ONE * 2));
        v0->unk_0C++;
        break;
    case 1:
        v1 = ov12_02232744(v0);
        v2 = ov12_02232888(v0->unk_48[v0->unk_10], &v0->unk_60[v0->unk_10]);

        if ((v1 == v2) && (v1 == 1)) {
            sub_0200D364(v0->unk_48[v0->unk_10], 1);
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
            ov12_0223283C(v0->unk_48[v3], &v0->unk_60[v3], (FX32_ONE * 2));
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
            sub_0200D0F4(v0->unk_48[v3]);
        }

        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_022329E0 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02232720 * v0;
    SpriteTemplate v1;
    int v2;
    s16 v3;
    s16 v4;
    s16 v5;
    s16 v6;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02232720));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_18 = ov12_022232FC(v0->unk_00, ov12_02220240(v0->unk_00));

    v3 = sub_020080C0(v0->unk_18, 0);
    v4 = sub_020080C0(v0->unk_18, 1);

    v0->unk_44 = v4;
    v0->unk_46 = ov12_02223354(v0->unk_00, ov12_02220240(v0->unk_00));

    v1 = ov12_0222329C(v0->unk_00);

    for (v2 = 0; v2 < 6; v2++) {
        if (v2 == 0) {
            v0->unk_48[v2] = param3;
        } else {
            v0->unk_48[v2] = SpriteActor_LoadResources(param1, param2, &v1);
        }

        SpriteActor_EnableObject(v0->unk_48[v2], 0);

        v5 = FX_Mul(FX_CosIdx((((90 * 0xffff) / 360) / (6 / 2)) * (v2 / 2)), (48 * FX32_ONE)) >> FX32_SHIFT;
        v6 = FX_Mul(FX_SinIdx((((90 * 0xffff) / 360) / (6 / 2)) * (v2 / 2)), (48 * FX32_ONE)) >> FX32_SHIFT;

        if ((v2 % 2) == 0) {
            v5 = v3 + v5;
            sub_0200D7D4(v0->unk_48[v2], 1);
        } else {
            v5 = v3 - v5;
        }

        v6 = v4 - v6;
        SpriteActor_SetSpritePositionXY(v0->unk_48[v2], v5, v6);

        if (v2 < 2) {
            v0->unk_78[v2] = 8;
        } else {
            v0->unk_78[v2] = 0;
        }
    }

    ov12_022201E8(v0->unk_00, ov12_022328B8, v0);
}

static void ov12_02232B40 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02232B40 * v0 = param1;
    int v1, v2;

    switch (v0->unk_0C) {
    case 0:
        sub_0200D390(v0->unk_5C, 1);
        v0->unk_0C++;
        break;
    case 1:
        if (sub_0200D3B8(v0->unk_5C) == 0) {
            sub_0200D390(v0->unk_5C, 0);
            v0->unk_0C++;
            ov12_02225E68(&v0->unk_14, 10, 10, 0, 8);
            v1 = sub_020080C0(v0->unk_10, 0);
            v2 = sub_020080C0(v0->unk_10, 1);
            ov12_02225BC8(&v0->unk_38, v1, v0->unk_88, v2, v0->unk_8A, 8);
        }
        break;
    case 2:
        ov12_02225C74(&v0->unk_38, v0->unk_10);

        if (ov12_022260C8(&v0->unk_14, v0->unk_10) == 0) {
            sub_02007DEC(v0->unk_10, 6, 1);
            sub_02007DEC(v0->unk_10, 12, 0x100);
            sub_02007DEC(v0->unk_10, 13, 0x100);
            sub_0200D364(v0->unk_5C, 1);
            sub_0200D3A4(v0->unk_5C, FX32_ONE);
            sub_0200D390(v0->unk_5C, 1);
            v0->unk_0C++;
        }
        break;
    case 3:
        if (sub_0200D3B8(v0->unk_5C) == 0) {
            sub_0200D390(v0->unk_5C, 0);
            v0->unk_0C++;
            ov12_02225BC8(&v0->unk_60, 0, 0, v0->unk_8A, 0, 8);
        }
        break;
    case 4:
        if (ov12_02225C14(&v0->unk_60)) {
            SpriteActor_SetSpritePositionXY(v0->unk_5C, v0->unk_88, v0->unk_60.unk_02);
        } else {
            v0->unk_0C++;
        }
        break;
    case 5:
        sub_0200D0F4(v0->unk_5C);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02232CA8 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02232B40 * v0;
    s16 v1, v2;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02232B40));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));

    sub_02007DEC(v0->unk_10, 6, 0);

    v0->unk_88 = ov12_022258E0(param0, ov12_02220240(param0), 0);
    v0->unk_8A = ov12_022258E0(param0, ov12_02220240(param0), 1);
    v0->unk_5C = param3;

    sub_0200D474(v0->unk_5C, 100);
    sub_0200D460(v0->unk_5C, 1);
    SpriteActor_SetSpritePositionXY(v0->unk_5C, v0->unk_88, v0->unk_8A);
    ov12_022201E8(v0->unk_00, ov12_02232B40, v0);
}

static const u16 Unk_ov12_0223A1CC[6] = {
    0x0,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1
};

static void ov12_02232D38 (UnkStruct_ov12_02232D38 * param0, CellActorData * param1)
{
    int v0;

    v0 = 1 << ov12_02225950(param1);
    sub_02003A2C(param0->unk_C4, 2, v0, 8, 0x0);
}

static void ov12_02232D64 (UnkStruct_ov12_02232D38 * param0)
{
    int v0;
    f32 v1, v2;

    ov12_02225EF0(&param0->unk_28, 10, 10, 10, 20, 10, 8);
    ov12_02225E68(&param0->unk_4C, 10, 10, 1, 4);

    param0->unk_94 = 0;
    param0->unk_98 = 6;

    v0 = ov12_02235254(param0->unk_00, ov12_02220240(param0->unk_00));

    SpriteActor_EnableObject(param0->unk_20, Unk_ov12_0223A1CC[v0]);
    SpriteActor_EnableObject(param0->unk_18, 1);

    ov12_02225FA4(&param0->unk_28, &v1, &v2);

    if (param0->unk_C8 == 1) {
        v1 = -v1;
    }

    sub_0200D6E8(param0->unk_18, v1, v2);
    ov12_02232D38(param0, param0->unk_18);
}

static BOOL ov12_02232E04 (UnkStruct_ov12_02232D38 * param0)
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

        sub_0200D6E8(param0->unk_18, v1, v2);
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

            sub_0200D6E8(param0->unk_18, v1, v2);
            ov12_0222605C(param0->unk_18, param0->unk_14, param0->unk_10, param0->unk_28.unk_04[4], 0);
        } else {
            param0->unk_94++;

            SpriteActor_EnableObject(param0->unk_20, 0);
            SpriteActor_EnableObject(param0->unk_18, 0);

            v0 = 1;
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02232F30 (UnkStruct_ov12_02232D38 * param0)
{
    s16 v0, v1;
    f32 v2, v3;
    int v4;

    SpriteActor_GetSpritePositionXY(param0->unk_1C, &v0, &v1);

    ov12_02225BC8(&param0->unk_70, v0, v0, v1 - 64, v1, 8);
    ov12_02225EF0(&param0->unk_28, 2, 10, 20, 10, 10, 8);
    ov12_02225FA4(&param0->unk_28, &v2, &v3);

    if (param0->unk_CC == 1) {
        v2 = -v2;
    }

    sub_0200D6E8(param0->unk_1C, v2, v3);
    ov12_02225C50(&param0->unk_70, param0->unk_1C);

    param0->unk_94 = 0;
    param0->unk_98 = 6;

    v4 = ov12_02235254(param0->unk_00, ov12_02220248(param0->unk_00));

    SpriteActor_EnableObject(param0->unk_24, Unk_ov12_0223A1CC[v4]);
    SpriteActor_EnableObject(param0->unk_1C, 1);

    ov12_02232D38(param0, param0->unk_1C);
}

static BOOL ov12_02232FF0 (UnkStruct_ov12_02232D38 * param0)
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

        sub_0200D6E8(param0->unk_1C, v0, v1);

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

static void ov12_02233094 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02232D38 * v0 = param1;

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
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        break;
    }

    sub_0200C7EC(v0->unk_04);
}

void ov12_02233178 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02232D38 * v0;
    Sprite * v1;
    s16 v2, v3;
    s16 v4, v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02232D38));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_022202EC(v0->unk_00);
    v0->unk_C4 = ov12_0222332C(v0->unk_00);

    v1 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
    v2 = sub_020080C0(v1, 0);
    v3 = sub_020080C0(v1, 1);
    v3 -= sub_020080C0(v1, 41);

    v1 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));
    v4 = sub_020080C0(v1, 0);
    v5 = sub_020080C0(v1, 1);
    v5 -= sub_020080C0(v1, 41);

    v0->unk_14 = v3;
    v0->unk_10 = ov12_02223354(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_18 = ov12_022202C0(v0->unk_00, 0);

    sub_0200D474(v0->unk_18, 100);
    sub_0200D460(v0->unk_18, 1);
    SpriteActor_SetSpritePositionXY(v0->unk_18, v2, v3);
    SpriteActor_EnableObject(v0->unk_18, 0);
    SpriteActor_SetOAMMode(v0->unk_18, GX_OAM_MODE_XLU);
    sub_0200D6A4(v0->unk_18, 2);

    v0->unk_1C = ov12_022202C0(v0->unk_00, 1);

    sub_0200D474(v0->unk_1C, 100);
    sub_0200D460(v0->unk_1C, 1);
    SpriteActor_SetSpritePositionXY(v0->unk_1C, v4, v5);
    SpriteActor_EnableObject(v0->unk_1C, 0);
    SpriteActor_SetOAMMode(v0->unk_1C, GX_OAM_MODE_XLU);
    sub_0200D6A4(v0->unk_1C, 2);
    sub_0200D7E0(v0->unk_1C, 0, 80 / 2);

    v0->unk_C8 = ov12_022234A8(v0->unk_00, 0);
    v0->unk_CC = ov12_022234A8(v0->unk_00, 1);
    v0->unk_20 = ov12_022202C0(v0->unk_00, 2);
    v0->unk_24 = ov12_022202C0(v0->unk_00, 3);

    SpriteActor_EnableObject(v0->unk_20, 0);
    SpriteActor_EnableObject(v0->unk_24, 0);

    ov12_022201E8(v0->unk_00, ov12_02233094, v0);
}

static void ov12_022332E8 (UnkStruct_ov12_022332E8 * param0)
{
    ov12_02225E68(&param0->unk_F8, 25, 10, 10, 10);
    ov12_022261C4(&param0->unk_48, &param0->unk_F8, ov12_02225EB8, param0->unk_38, param0->unk_3A, 9, 3, 1, param0->unk_3C[2], param0->unk_3C[1], param0->unk_3C[0], NULL);
}

static void ov12_02233338 (UnkStruct_ov12_022332E8 * param0)
{
    ov12_02225E68(&param0->unk_F8, 10, 10, 25, 6);
    ov12_022261C4(&param0->unk_48, &param0->unk_F8, ov12_02225EB8, param0->unk_38, param0->unk_3A, 5, 3, 1, param0->unk_3C[0], param0->unk_3C[1], param0->unk_3C[2], NULL);
    SpriteActor_EnableObject(param0->unk_3C[0], 1);
}

static void ov12_02233394 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022332E8 * v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        ov12_022332E8(v0);
        v0->unk_0C++;
        break;
    case 1:
        if (ov12_02226274(&v0->unk_48) == 0) {
            SpriteActor_EnableObject(v0->unk_3C[0], 1);
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
            sub_0200D0F4(v0->unk_3C[v1]);
        }

        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02233454 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_022332E8 * v0;
    int v1;
    SpriteTemplate v2;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022332E8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220248(param0));
    v0->unk_38 = sub_020080C0(v0->unk_10, 0);
    v0->unk_3A = sub_020080C0(v0->unk_10, 1);
    v0->unk_3A -= sub_020080C0(v0->unk_10, 41);

    v2 = ov12_0222329C(param0);

    for (v1 = 0; v1 < 3; v1++) {
        if (v1 == 0) {
            v0->unk_3C[v1] = param3;
            sub_0200D364(v0->unk_3C[v1], 1);
        } else {
            v0->unk_3C[v1] = SpriteActor_LoadResources(v0->unk_04, v0->unk_08, &v2);
            SpriteActor_SetOAMMode(v0->unk_3C[v1], GX_OAM_MODE_XLU);
        }

        sub_0200D474(v0->unk_3C[v1], 100);
        sub_0200D460(v0->unk_3C[v1], 1);
        SpriteActor_SetSpritePositionXY(v0->unk_3C[v1], v0->unk_38, v0->unk_3A);
        SpriteActor_EnableObject(v0->unk_3C[v1], 0);
        sub_0200D6A4(v0->unk_3C[v1], 2);
    }

    ov12_022201E8(v0->unk_00, ov12_02233394, v0);
}

static void ov12_0223351C (UnkStruct_ov12_0223351C * param0, int param1)
{
    int v0;
    int v1;

    v1 = ((360 * 0xffff) / 360) / 6;

    for (v0 = 0; v0 < 6; v0++) {
        ov12_02225A5C(&param0->unk_30[v0], (((0 * 0xffff) / 360)), (((180 * 0xffff) / 360)), 0, 0, (FX32_ONE * 50), 0, 48);
        param0->unk_30[v0].unk_04[1] += (v1 * v0);
        param0->unk_30[v0].unk_04[5] *= param1;
    }
}

static void ov12_02233574 (UnkStruct_ov12_0223351C * param0)
{
    int v0;
    s16 v1;
    u16 v2;

    for (v0 = 0; v0 < 6; v0++) {
        ov12_02225AE0(&param0->unk_30[v0]);

        v2 = param0->unk_30[v0].unk_04[1] * 5;
        v1 = FX_Mul(FX_SinIdx(v2), (FX32_ONE * 10) * param0->unk_14) >> FX32_SHIFT;

        SpriteActor_SetSpritePositionXY(param0->unk_18[v0], param0->unk_130 + param0->unk_30[v0].unk_00, param0->unk_132 + v1);

        if ((param0->unk_30[v0].unk_04[1] >= ((90 * 0xffff) / 360)) && (param0->unk_30[v0].unk_04[1] <= ((269 * 0xffff) / 360))) {
            sub_0200D460(param0->unk_18[v0], 1);
        } else {
            sub_0200D460(param0->unk_18[v0], ov12_0222339C(param0->unk_00) + 1);
        }
    }
}

static void ov12_02233644 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0223351C * v0 = param1;
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
            sub_0200D0F4(v0->unk_18[v1]);
        }

        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02233734 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_0223351C * v0;
    int v1;
    Sprite * v2;
    SpriteTemplate v3;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0223351C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));

    v0->unk_130 = sub_020080C0(v2, 0);
    v0->unk_132 = sub_020080C0(v2, 1);

    v3 = ov12_0222329C(param0);

    for (v1 = 0; v1 < 6; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteActor_LoadResources(v0->unk_04, v0->unk_08, &v3);
        }

        sub_0200D474(v0->unk_18[v1], 100);
        SpriteActor_SetOAMMode(v0->unk_18[v1], GX_OAM_MODE_XLU);
        sub_0200D390(v0->unk_18[v1], 1);
    }

    v0->unk_14 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));
    ov12_022201E8(v0->unk_00, ov12_02233644, v0);
}

static void ov12_022337E0 (CellActorData * param0, UnkStruct_ov12_02225F6C * param1, int param2, int param3)
{
    s16 v0, v1;

    SpriteActor_GetSpritePositionXY(param0, &v0, &v1);
    ov12_02225BC8(param1, v0 + (0 * param2), v0 + (256 * param2), v1 + (0 * param3), v1 + (-128 * param3), 59);
    SpriteActor_EnableObject(param0, 1);
}

static BOOL ov12_02233834 (CellActorData * param0, UnkStruct_ov12_02225F6C * param1)
{
    s16 v0, v1;
    s16 v2;
    fx32 v3;
    f32 v4;
    u16 v5;

    if (ov12_02225C50(param1, param0)) {
        SpriteActor_GetSpritePositionXY(param0, &v0, &v1);

        v5 = v0 * (((2 * 0xffff) / 360));
        v2 = FX_Mul(FX_SinIdx(v5), (FX32_ONE * 14)) >> FX32_SHIFT;

        SpriteActor_SetSpritePositionXY(param0, v0, v1 + v2);

        v3 = FX_Mul(FX_SinIdx(v5), (FX32_CONST(0.17f)));
        v3 *= -1;
        v4 = (1.0f) + FX_FX32_TO_F32(v3);

        sub_0200D6E8(param0, v4, v4);
        return 0;
    }

    return 1;
}

static BOOL ov12_02233900 (UnkStruct_ov12_02233900 * param0)
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

static void ov12_02233988 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02233900 * v0 = param1;
    int v1;

    if (ov12_02233900(v0)) {
        for (v1 = 0; v1 < 15; v1++) {
            sub_0200D0F4(v0->unk_18[v1]);
        }

        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
    } else {
        sub_0200C7EC(v0->unk_08);
    }
}

void ov12_022339C4 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02233900 * v0;
    int v1;
    s16 v2, v3;
    Sprite * v4;
    SpriteTemplate v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02233900));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v4 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));
    v2 = sub_020080C0(v4, 0);
    v3 = sub_020080C0(v4, 1);
    v5 = ov12_0222329C(param0);

    for (v1 = 0; v1 < 15; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteActor_LoadResources(v0->unk_04, v0->unk_08, &v5);
        }

        sub_0200D474(v0->unk_18[v1], 100);
        sub_0200D460(v0->unk_18[v1], 1);
        sub_0200D6A4(v0->unk_18[v1], 2);
        SpriteActor_EnableObject(v0->unk_18[v1], 0);
        SpriteActor_SetSpritePositionXY(v0->unk_18[v1], v2, v3);
        sub_0200D364(v0->unk_18[v1], v1 % 3);
    }

    v0->unk_10 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));
    v0->unk_14 = ov12_0222598C(v0->unk_00, ov12_02220240(v0->unk_00));

    ov12_022201E8(v0->unk_00, ov12_02233988, v0);
}

static void ov12_02233AA0 (UnkStruct_ov12_02233AA0 * param0)
{
    switch (param0->unk_2C) {
    case 0:
        param0->unk_18 = (((180 * 0xffff) / 360));
        param0->unk_24 = 5;
        param0->unk_1C = (16 * FX32_ONE);
        param0->unk_28 = 16;
        break;
    case 1:
        param0->unk_18 = (((180 * 0xffff) / 360));
        param0->unk_24 = -5;
        param0->unk_1C = (-16 * FX32_ONE);
        param0->unk_28 = 16;
        break;
    case 2:
        param0->unk_18 = (((180 * 0xffff) / 360));
        param0->unk_24 = 10;
        param0->unk_1C = (20 * FX32_ONE);
        param0->unk_28 = 16;
        param0->unk_28 = 16;
        break;
    }
}

static void ov12_02233AF4 (UnkStruct_ov12_02233AA0 * param0)
{
    u32 * v0 = ov12_022265E4(param0->unk_04);
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

static void ov12_02233BD8 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02233AA0 * v0 = param1;

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
        if (ov12_0222337C(v0->unk_00, ov12_02220248(v0->unk_00)) == 0) {
            sub_02007DEC(v0->unk_0C, 6, 0);
        }

        ov12_022265F8(v0->unk_04);
        ov12_022265C0(v0->unk_04);

        BGL_SetPriority(ov12_022233B0(v0->unk_00, 1), ov12_02223428(v0->unk_00, 1));
        BGL_SetPriority(0, ov12_0222339C(v0->unk_00));

        sub_02019690(ov12_022233B0(v0->unk_00, 1), 0x4000, 0, ov12_0221FDE4(v0->unk_00));
        sub_02019EBC(ov12_02220278(v0->unk_00), ov12_022233B0(v0->unk_00, 1));

        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        break;
    }
}

void ov12_02233CD4 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02233AA0 * v0;
    Sprite * v1;
    s16 v2, v3;
    int v4;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02233AA0));

    v0->unk_00 = param0;
    v0->unk_0C = ov12_022232FC(v0->unk_00, ov12_02220248(param0));

    v2 = sub_020080C0(v0->unk_0C, 0);
    v3 = sub_020080C0(v0->unk_0C, 1);
    v3 -= sub_020080C0(v0->unk_0C, 41);

    if (ov12_0222337C(v0->unk_00, ov12_02220248(v0->unk_00)) == 0) {
        sub_02007DEC(v0->unk_0C, 6, 1);
    }

    v0->unk_14 = v3;
    v2 = v2 - (80 / 2);

    v0->unk_10 = v3 - (80 / 2);
    v0->unk_30 = ov12_022266E8(-v2, -v0->unk_10);
    v0->unk_04 = ov12_02226544(ov12_022266F0(ov12_022233EC(v0->unk_00, 1)), v0->unk_30, ov12_0221FDE4(v0->unk_00));
    v0->unk_20 = 1;

    v4 = ov12_02235254(v0->unk_00, ov12_02220248(param0));

    if ((v4 == 3) || (v4 == 4)) {
        BGL_SetPriority(ov12_022233B0(v0->unk_00, 1), ov12_0222339C(v0->unk_00));
        BGL_SetPriority(0, ov12_0222339C(v0->unk_00) + 1);
    }

    ov12_022201E8(v0->unk_00, ov12_02233BD8, v0);
}

static void ov12_02233DCC (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02233DCC * v0 = param1;

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
            sub_02003178(ov12_0222332C(v0->unk_00), 0x1, ov12_02222354(v0->unk_00), 0, 0, 16, 0xffff);
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
        if (sub_0200384C(ov12_0222332C(v0->unk_00)) == 0) {
            v0->unk_04++;
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            sub_02003178(ov12_0222332C(v0->unk_00), 0x1, ov12_02222354(v0->unk_00), 0, 16, 0, 0xffff);
        }
        break;
    case 4:
        if (sub_0200384C(ov12_0222332C(v0->unk_00)) == 0) {
            v0->unk_04++;
        }
        break;
    case 5:
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        break;
    }
}

void ov12_02233F30 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02233DCC * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02233AA0));
    v0->unk_00 = param0;

    ov12_022201E8(v0->unk_00, ov12_02233DCC, v0);
}

static void ov12_02233F4C (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02233F4C * v0 = param1;

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
        if (sub_0200D3B8(v0->unk_10) == 0) {
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
        sub_0200D0F4(v0->unk_10);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200C7EC(v0->unk_08);
}

void ov12_02234008 (UnkStruct_ov12_0221FCDC * param0, SpriteRenderer * param1, SpriteGfxHandler * param2, CellActorData * param3)
{
    UnkStruct_ov12_02233F4C * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02233F4C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = param3;

    sub_0200D390(v0->unk_10, 1);
    SpriteActor_SetOAMMode(v0->unk_10, GX_OAM_MODE_XLU);

    ov12_022201E8(v0->unk_00, ov12_02233F4C, v0);
}

static void ov12_02234044 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02234044 * v0 = param1;
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
        sub_02007DEC(v0->unk_10, 0, v0->unk_0A);
        sub_02007DEC(v0->unk_10, 1, v0->unk_08);

        sub_02007DEC(v0->unk_10, 12, 0x100);
        sub_02007DEC(v0->unk_10, 13, 0x100);

        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }
}

void ov12_02234214 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02234044 * v0;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02234044));

    v0->unk_00 = param0;
    v0->unk_0C = ov12_02223354(v0->unk_00, ov12_02220248(v0->unk_00));
    v0->unk_10 = ov12_022232FC(v0->unk_00, ov12_02220248(v0->unk_00));
    v0->unk_08 = sub_020080C0(v0->unk_10, 1);
    v0->unk_0A = sub_020080C0(v0->unk_10, 0);
    v0->unk_5C = 10;
    v0->unk_60 = 7;
    v0->unk_64 = 10;
    v0->unk_68 = 30;
    v0->unk_6C = 10;
    v0->unk_70 = 1;
    v0->unk_74 = ((4 << 16) | 3);

    ov12_02226108(&v0->unk_38, 2, 0, 1, 2);
    ov12_022201E8(v0->unk_00, ov12_02234044, v0);
}

static void ov12_02234290 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02234290 * v0 = param1;

    if (ov12_02225C50(&v0->unk_08, v0->unk_2C) == 0) {
        sub_0200D0F4(v0->unk_2C);
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }

    sub_0200C7EC(v0->unk_04);
}

void ov12_022342C4 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02234290 * v0;
    int v1;
    int v2, v3;
    int v4, v5;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02234290));

    v0->unk_00 = param0;
    v0->unk_04 = ov12_02220300(param0);

    v1 = ov12_02220240(param0);

    if (ov12_0223525C(param0, v1) == 0x3) {
        v0->unk_2C = ov12_02220298(param0, 0);
        sub_0200D0F4(ov12_02220298(param0, 1));
    } else {
        v0->unk_2C = ov12_02220298(param0, 1);
        sub_0200D0F4(ov12_02220298(param0, 0));
    }

    v2 = ov12_02225964(param0, v1);
    v3 = ov12_0222598C(param0, v1);
    v4 = ov12_022258E0(param0, v1, 0);
    v5 = ov12_022258E0(param0, v1, 1);

    v4 += 64 * v2;
    v5 += -16 * v3;

    SpriteActor_SetSpritePositionXY(v0->unk_2C, v4, v5);

    ov12_02225BC8(&v0->unk_08, v4, v4 + (48 * v2), v5, v5 + (-16 * v3), 6);
    ov12_022201E8(v0->unk_00, ov12_02234290, v0);
}

static void ov12_022343A0 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022343A0 * v0 = param1;

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
        sub_02007DEC(v0->unk_14, 0, v0->unk_18);
        sub_02007DEC(v0->unk_14, 1, v0->unk_1A);
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        break;
    }
}

void ov12_022344D0 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_022343A0 * v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022343A0));
    v0->unk_00 = param0;

    v1 = ov12_02220240(param0);

    v0->unk_14 = ov12_022232FC(param0, v1);
    v0->unk_18 = sub_020080C0(v0->unk_14, 0);
    v0->unk_1A = sub_020080C0(v0->unk_14, 1);
    v0->unk_0C = ov12_02225964(param0, v1);
    v0->unk_10 = ov12_0222598C(param0, v1);

    ov12_022201E8(v0->unk_00, ov12_022343A0, v0);
}

static void ov12_02234528 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02234528 * v0 = param1;
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
        v1 = sub_020080C0(v0->unk_10, 0);
        v2 = sub_020080C0(v0->unk_10, 1);

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
        sub_02007DEC(v0->unk_10, 0, v0->unk_14);
        sub_02007DEC(v0->unk_10, 1, v0->unk_16);
        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        break;
    }
}

void ov12_0223464C (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02234528 * v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02234528));
    v0->unk_00 = param0;

    v1 = ov12_02220248(param0);

    v0->unk_10 = ov12_022232FC(param0, v1);
    v0->unk_14 = sub_020080C0(v0->unk_10, 0);
    v0->unk_16 = sub_020080C0(v0->unk_10, 1);
    v0->unk_08 = ov12_02225964(param0, v1);
    v0->unk_0C = ov12_0222598C(param0, v1);

    ov12_022201E8(v0->unk_00, ov12_02234528, v0);
}
